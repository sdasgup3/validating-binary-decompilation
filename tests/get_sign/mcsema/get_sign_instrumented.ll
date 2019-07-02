; ModuleID = 'get_sign_instrumented.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4f8__init_type = type <{ [23 x i8] }>
%seg_510__plt_type = type <{ [16 x i8] }>
%seg_520__plt_got_type = type <{ [8 x i8] }>
%seg_530__text_type = type <{ [562 x i8] }>
%seg_764__fini_type = type <{ [9 x i8] }>
%seg_770__rodata_type = type <{ [4 x i8] }>
%seg_774__eh_frame_hdr_type = type <{ [76 x i8] }>
%seg_7c0__eh_frame_type = type <{ [332 x i8] }>
%seg_200de0__init_array_type = type <{ i64, i64 }>
%seg_200df0__jcr_type = type <{ [8 x i8] }>
%seg_200fb8__got_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64 }>
%seg_201000__data_type = type <{ [8 x i8], i64 }>
%__bss_start_type = type <{ [8 x i8] }>
%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, %union.anon, %struct.Segments, %struct.AddressSpace, %struct.GPR, %struct.X87Stack, %struct.MMX, %struct.FPUStatusFlags, %union.anon, %union.FPU }
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
@CR0 = external global %union.anon, align 1
@CR1 = external global %union.anon, align 1
@CR2 = external global %union.anon, align 1
@CR3 = external global %union.anon, align 1
@CR4 = external global %union.anon, align 1
@CR8 = external global %union.anon, align 1
@seg_4f8__init = internal constant %seg_4f8__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\DD\0A \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_510__plt = internal constant %seg_510__plt_type <{ [16 x i8] c"\FF5\AA\0A \00\FF%\AC\0A \00\0F\1F@\00" }>
@seg_520__plt_got = internal constant %seg_520__plt_got_type <{ [8 x i8] c"\FF%\D2\0A \00f\90" }>
@seg_530__text = internal constant %seg_530__text_type <{ [562 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTL\8D\05\1A\02\00\00H\8D\0D\A3\01\00\00H\8D=v\01\00\00\FF\15~\0A \00\F4\0F\1FD\00\00H\8D=\A9\0A \00H\8D\05\A9\0A \00UH)\F8H\89\E5H\83\F8\0Ev\15H\8B\05N\0A \00H\85\C0t\09]\FF\E0f\0F\1FD\00\00]\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00H\8D=i\0A \00H\8D5b\0A \00UH)\FEH\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\18H\8B\05!\0A \00H\85\C0t\0C]\FF\E0f\0F\1F\84\00\00\00\00\00]\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00\80=\19\0A \00\00u'H\83=\F7\09 \00\00UH\89\E5t\0CH\8B=\FA\09 \00\E8\0D\FF\FF\FF\E8H\FF\FF\FF]\C6\05\F0\09 \00\01\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00H\8D=\B9\07 \00H\83?\00u\0B\E9^\FF\FF\FFf\0F\1FD\00\00H\8B\05\99\09 \00H\85\C0t\E9UH\89\E5\FF\D0]\E9@\FF\FF\FFUH\89\E5\89}\FC\83}\FC\00\7F\07\B8\01\00\00\00\EB\05\B8\00\00\00\00]\C3UH\89\E5PH\C7\C0\0A\00\00\00XSH\C7\C3\14\00\00\00[QH\C7\C1\1E\00\00\00YRH\C7\C2(\00\00\00ZVH\C7\C62\00\00\00^WH\C7\C7<\00\00\00_TH\C7\C4F\00\00\00\5CUH\C7\C5P\00\00\00]\90]\C3UH\89\E5\B8\00\00\00\00\E8\A3\FF\FF\FF\BF\0A\00\00\00\E8~\FF\FF\FF]\C3f.\0F\1F\84\00\00\00\00\00f\90AWAVA\89\FFAUATL\8D%\DE\06 \00UH\8D-\DE\06 \00SI\89\F6I\89\D5L)\E5H\83\EC\08H\C1\FD\03\E8\D7\FD\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\EAL\89\F6D\89\FFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_764__fini = internal constant %seg_764__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_770__rodata = internal constant %seg_770__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_774__eh_frame_hdr = internal constant %seg_774__eh_frame_hdr_type <{ [76 x i8] c"\01\1B\03;H\00\00\00\08\00\00\00\9C\FD\FF\FF\94\00\00\00\AC\FD\FF\FF\BC\00\00\00\BC\FD\FF\FFd\00\00\00\EC\FE\FF\FF\D4\00\00\00\07\FF\FF\FF\F4\00\00\00V\FF\FF\FF\14\01\00\00|\FF\FF\FF4\01\00\00\EC\FF\FF\FF|\01\00\00" }>
@seg_7c0__eh_frame = internal constant %seg_7c0__eh_frame_type <{ [332 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\14\00\00\00\1C\00\00\00P\FD\FF\FF+\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00$\00\00\00\1C\00\00\00\00\FD\FF\FF\10\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\14\00\00\00D\00\00\00\E8\FC\FF\FF\08\00\00\00\00\00\00\00\00\00\00\00\1C\00\00\00\5C\00\00\00\10\FE\FF\FF\1B\00\00\00\00A\0E\10\86\02C\0D\06V\0C\07\08\00\00\00\1C\00\00\00|\00\00\00\0B\FE\FF\FFO\00\00\00\00A\0E\10\86\02C\0D\06\02J\0C\07\08\00\00\1C\00\00\00\9C\00\00\00:\FE\FF\FF\1A\00\00\00\00A\0E\10\86\02C\0D\06U\0C\07\08\00\00\00D\00\00\00\BC\00\00\00@\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\14\00\00\00\04\01\00\00h\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_200de0__init_array = internal global %seg_200de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_630_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_5f0___do_global_dtors_aux to i64) }>
@seg_200df0__jcr = internal global %seg_200df0__jcr_type zeroinitializer
@seg_200fb8__got = internal global %seg_200fb8__got_type <{ [24 x i8] c"\F8\0D \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64)* @_ITM_deregisterTMCloneTable to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64), i64 ptrtoint (i64 (i64)* @_Jv_RegisterClasses to i64), i64 ptrtoint (i64 (i64, i64)* @_ITM_registerTMCloneTable to i64), i64 ptrtoint (i64 (i64)* @__cxa_finalize to i64) }>
@seg_201000__data = internal global %seg_201000__data_type <{ [8 x i8] zeroinitializer, i64 add (i64 ptrtoint (%seg_201000__data_type* @seg_201000__data to i64), i64 8) }>
@__bss_start = dllexport global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_630_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_5f0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_760___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_6f0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @init_var_correspondence_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @get_sign_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@llvm.global_ctors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @__remill_sync_hyper_call(%struct.State* dereferenceable(3280), %struct.Memory*, i32) #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare zeroext i8 @__remill_read_memory_8(%struct.Memory*, i64) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_8(%struct.Memory*, i64, i8 zeroext) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare zeroext i16 @__remill_read_memory_16(%struct.Memory*, i64) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_16(%struct.Memory*, i64, i16 zeroext) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i32 @__remill_read_memory_32(%struct.Memory*, i64) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_32(%struct.Memory*, i64, i32) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i64 @__remill_read_memory_64(%struct.Memory*, i64) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_64(%struct.Memory*, i64, i64) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare float @__remill_read_memory_f32(%struct.Memory*, i64) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare double @__remill_read_memory_f64(%struct.Memory*, i64) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare zeroext i8 @__remill_undefined_8() #1

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3280), i64, %struct.Memory*) #3

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind readnone
declare i32 @llvm.cttz.i32(i32, i1) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.cttz.i64(i64, i1) #2

; Function Attrs: nounwind readnone
declare i32 @llvm.ctlz.i32(i32, i1) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.ctlz.i64(i64, i1) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind readnone
declare double @llvm.nearbyint.f64(double) #2

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #2

; Function Attrs: nounwind readnone
declare float @llvm.nearbyint.f32(float) #2

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #2

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_f32(%struct.Memory*, i64, float) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_f64(%struct.Memory*, i64, double) #1

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
declare %struct.Memory* @__remill_barrier_store_load(%struct.Memory*) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_barrier_store_store(%struct.Memory*) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_barrier_load_load(%struct.Memory*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i64 @__remill_undefined_64() #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare double @__remill_undefined_f64() #1

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
declare double @__remill_read_memory_f80(%struct.Memory*, i64) #1

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
declare %struct.Memory* @__remill_write_memory_f80(%struct.Memory*, i64, double) #1

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
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3280), i64, %struct.Memory*) #10

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_return(%struct.State* dereferenceable(3280), i64, %struct.Memory*) #10

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_jump(%struct.State* dereferenceable(3280), i64, %struct.Memory*) #10

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_missing_block(%struct.State* dereferenceable(3280), i64, %struct.Memory*) #10

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_async_hyper_call(%struct.State* dereferenceable(3280), i64, %struct.Memory*) #10

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare zeroext i16 @__remill_undefined_16() #8

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i32 @__remill_undefined_32() #8

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare float @__remill_undefined_f32() #8

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_ITM_deregisterTMCloneTable(i64) #11

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_Jv_RegisterClasses(i64) #11

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #11

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #11

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__cxa_finalize(i64) #11

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_ITM_registerTMCloneTable(i64, i64) #11

; Function Attrs: noinline
define %struct.Memory* @sub_6f0___libc_csu_init(%struct.State* noalias dereferenceable(3280), i64, %struct.Memory* noalias) #12 {
block_6f0:
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
  store i64 ptrtoint (%seg_200de0__init_array_type* @seg_200de0__init_array to i64), i64* %R12, align 8, !tbaa !1256
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
  store i64 add (i64 ptrtoint (%seg_200de0__init_array_type* @seg_200de0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !1256
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
  store i8 %122, i8* %123, align 1, !tbaa !1271
  %124 = xor i64 %110, %109
  %125 = xor i64 %124, %113
  %126 = lshr i64 %125, 4
  %127 = trunc i64 %126 to i8
  %128 = and i8 %127, 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %128, i8* %129, align 1, !tbaa !1272
  %130 = icmp eq i64 %113, 0
  %131 = zext i1 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %131, i8* %132, align 1, !tbaa !1273
  %133 = lshr i64 %113, 63
  %134 = trunc i64 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %134, i8* %135, align 1, !tbaa !1274
  %136 = lshr i64 %109, 63
  %137 = lshr i64 %110, 63
  %138 = xor i64 %137, %136
  %139 = xor i64 %133, %136
  %140 = add nuw nsw i64 %139, %138
  %141 = icmp eq i64 %140, 2
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %142, i8* %143, align 1, !tbaa !1275
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
  store i8 %156, i8* %157, align 1, !tbaa !1271
  %158 = xor i64 8, %144
  %159 = xor i64 %158, %147
  %160 = lshr i64 %159, 4
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %162, i8* %163, align 1, !tbaa !1272
  %164 = icmp eq i64 %147, 0
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %165, i8* %166, align 1, !tbaa !1273
  %167 = lshr i64 %147, 63
  %168 = trunc i64 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %168, i8* %169, align 1, !tbaa !1274
  %170 = lshr i64 %144, 63
  %171 = xor i64 %167, %170
  %172 = add nuw nsw i64 %171, %170
  %173 = icmp eq i64 %172, 2
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %174, i8* %175, align 1, !tbaa !1275
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
  store i8 %183, i8* %185, align 1, !tbaa !1276
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %187 = trunc i64 %184 to i32
  %188 = and i32 %187, 255
  %189 = call i32 @llvm.ctpop.i32(i32 %188) #14
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %186, align 1, !tbaa !1276
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %193, align 1, !tbaa !1276
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %195 = icmp eq i64 %184, 0
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %194, align 1, !tbaa !1276
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %198 = lshr i64 %184, 63
  %199 = trunc i64 %198 to i8
  store i8 %199, i8* %197, align 1, !tbaa !1276
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %181, i8* %200, align 1, !tbaa !1276
  %201 = load i64, i64* %PC
  %202 = sub i64 %201, 548
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
  %213 = call %struct.Memory* @sub_4f8__init_proc(%struct.State* %0, i64 %212, %struct.Memory* %2)
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
  store i8 %225, i8* %226, align 1, !tbaa !1271
  %227 = icmp eq i64 %218, 0
  %228 = zext i1 %227 to i8
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %228, i8* %229, align 1, !tbaa !1273
  %230 = lshr i64 %218, 63
  %231 = trunc i64 %230 to i8
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %231, i8* %232, align 1, !tbaa !1274
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %233, align 1, !tbaa !1275
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %234, align 1, !tbaa !1272
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 34
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 2
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 2
  store i64 %240, i64* %PC
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %242 = load i8, i8* %241, align 1, !tbaa !1273
  store i8 %242, i8* %BRANCH_TAKEN, align 1, !tbaa !1276
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %244 = icmp ne i8 %242, 0
  %245 = select i1 %244, i64 %236, i64 %238
  store i64 %245, i64* %243, align 8, !tbaa !1256
  %246 = load i8, i8* %BRANCH_TAKEN
  %247 = icmp eq i8 %246, 1
  br i1 %247, label %block_746, label %block_726

block_746:                                        ; preds = %block_730, %block_6f0
  %MEMORY.0 = phi %struct.Memory* [ %213, %block_6f0 ], [ %389, %block_730 ]
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
  store i8 %262, i8* %263, align 1, !tbaa !1271
  %264 = xor i64 8, %248
  %265 = xor i64 %264, %251
  %266 = lshr i64 %265, 4
  %267 = trunc i64 %266 to i8
  %268 = and i8 %267, 1
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %268, i8* %269, align 1, !tbaa !1272
  %270 = icmp eq i64 %251, 0
  %271 = zext i1 %270 to i8
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %271, i8* %272, align 1, !tbaa !1273
  %273 = lshr i64 %251, 63
  %274 = trunc i64 %273 to i8
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %274, i8* %275, align 1, !tbaa !1274
  %276 = lshr i64 %248, 63
  %277 = xor i64 %273, %276
  %278 = add nuw nsw i64 %277, %273
  %279 = icmp eq i64 %278, 2
  %280 = zext i1 %279 to i8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %280, i8* %281, align 1, !tbaa !1275
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

block_726:                                        ; preds = %block_6f0
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
  store i8 %345, i8* %346, align 1, !tbaa !1271
  %347 = icmp eq i32 %338, 0
  %348 = zext i1 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %348, i8* %349, align 1, !tbaa !1273
  %350 = lshr i32 %338, 31
  %351 = trunc i32 %350 to i8
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %351, i8* %352, align 1, !tbaa !1274
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %353, align 1, !tbaa !1275
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %354, align 1, !tbaa !1272
  %355 = load i64, i64* %RAX
  %356 = load i64, i64* %RAX
  %357 = add i64 %356, %355
  %358 = load i32, i32* %EAX
  %359 = zext i32 %358 to i64
  %360 = load i64, i64* %PC
  %361 = add i64 %360, 8
  store i64 %361, i64* %PC
  br label %block_730

block_730:                                        ; preds = %block_730, %block_726
  %MEMORY.1 = phi %struct.Memory* [ %213, %block_726 ], [ %389, %block_730 ]
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
  store i8 %404, i8* %405, align 1, !tbaa !1271
  %406 = xor i64 1, %390
  %407 = xor i64 %406, %393
  %408 = lshr i64 %407, 4
  %409 = trunc i64 %408 to i8
  %410 = and i8 %409, 1
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %410, i8* %411, align 1, !tbaa !1272
  %412 = icmp eq i64 %393, 0
  %413 = zext i1 %412 to i8
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %413, i8* %414, align 1, !tbaa !1273
  %415 = lshr i64 %393, 63
  %416 = trunc i64 %415 to i8
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %416, i8* %417, align 1, !tbaa !1274
  %418 = lshr i64 %390, 63
  %419 = xor i64 %415, %418
  %420 = add nuw nsw i64 %419, %415
  %421 = icmp eq i64 %420, 2
  %422 = zext i1 %421 to i8
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %422, i8* %423, align 1, !tbaa !1275
  %424 = load i64, i64* %RBP
  %425 = load i64, i64* %RBX
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
  store i8 %437, i8* %438, align 1, !tbaa !1271
  %439 = xor i64 %425, %424
  %440 = xor i64 %439, %428
  %441 = lshr i64 %440, 4
  %442 = trunc i64 %441 to i8
  %443 = and i8 %442, 1
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %443, i8* %444, align 1, !tbaa !1272
  %445 = icmp eq i64 %428, 0
  %446 = zext i1 %445 to i8
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %446, i8* %447, align 1, !tbaa !1273
  %448 = lshr i64 %428, 63
  %449 = trunc i64 %448 to i8
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %449, i8* %450, align 1, !tbaa !1274
  %451 = lshr i64 %424, 63
  %452 = lshr i64 %425, 63
  %453 = xor i64 %452, %451
  %454 = xor i64 %448, %451
  %455 = add nuw nsw i64 %454, %453
  %456 = icmp eq i64 %455, 2
  %457 = zext i1 %456 to i8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %457, i8* %458, align 1, !tbaa !1275
  %459 = load i64, i64* %PC
  %460 = sub i64 %459, 20
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 2
  %463 = load i64, i64* %PC
  %464 = add i64 %463, 2
  store i64 %464, i64* %PC
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %466 = load i8, i8* %465, align 1, !tbaa !1273
  %467 = icmp eq i8 %466, 0
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %BRANCH_TAKEN, align 1, !tbaa !1276
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %470 = select i1 %467, i64 %460, i64 %462
  store i64 %470, i64* %469, align 8, !tbaa !1256
  %471 = load i8, i8* %BRANCH_TAKEN
  %472 = icmp eq i8 %471, 1
  br i1 %472, label %block_730, label %block_746
}

; Function Attrs: noinline
define %struct.Memory* @sub_67b_init_var_correspondence(%struct.State* noalias dereferenceable(3280), i64, %struct.Memory* noalias) #12 {
block_67b:
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBX = bitcast %union.anon* %11 to i64*
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
  %30 = load i64, i64* %RBP
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 1
  store i64 %32, i64* %PC
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %34 = load i64, i64* %33, align 8, !tbaa !1256
  %35 = add i64 %34, -8
  %36 = inttoptr i64 %35 to i64*
  store i64 %30, i64* %36
  store i64 %35, i64* %33, align 8, !tbaa !1256
  %37 = load i64, i64* %RSP
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 3
  store i64 %39, i64* %PC
  store i64 %37, i64* %RBP, align 8, !tbaa !1256
  %40 = load i64, i64* %RAX
  %41 = load i64, i64* %PC
  %42 = add i64 %41, 1
  store i64 %42, i64* %PC
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %44 = load i64, i64* %43, align 8, !tbaa !1256
  %45 = add i64 %44, -8
  %46 = inttoptr i64 %45 to i64*
  store i64 %40, i64* %46
  store i64 %45, i64* %43, align 8, !tbaa !1256
  %47 = load i64, i64* %PC
  %48 = add i64 %47, 7
  store i64 %48, i64* %PC
  store i64 10, i64* %RAX, align 8, !tbaa !1256
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 1
  store i64 %50, i64* %PC
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8, !tbaa !1256
  %53 = add i64 %52, 8
  %54 = inttoptr i64 %52 to i64*
  %55 = load i64, i64* %54
  store i64 %55, i64* %RAX, align 8, !tbaa !1256
  store i64 %53, i64* %51, align 8, !tbaa !1256
  %56 = load i64, i64* %RBX
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 1
  store i64 %58, i64* %PC
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %60 = load i64, i64* %59, align 8, !tbaa !1256
  %61 = add i64 %60, -8
  %62 = inttoptr i64 %61 to i64*
  store i64 %56, i64* %62
  store i64 %61, i64* %59, align 8, !tbaa !1256
  %63 = load i64, i64* %PC
  %64 = add i64 %63, 7
  store i64 %64, i64* %PC
  store i64 20, i64* %RBX, align 8, !tbaa !1256
  %65 = load i64, i64* %PC
  %66 = add i64 %65, 1
  store i64 %66, i64* %PC
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %68 = load i64, i64* %67, align 8, !tbaa !1256
  %69 = add i64 %68, 8
  %70 = inttoptr i64 %68 to i64*
  %71 = load i64, i64* %70
  store i64 %71, i64* %RBX, align 8, !tbaa !1256
  store i64 %69, i64* %67, align 8, !tbaa !1256
  %72 = load i64, i64* %RCX
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 1
  store i64 %74, i64* %PC
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %76 = load i64, i64* %75, align 8, !tbaa !1256
  %77 = add i64 %76, -8
  %78 = inttoptr i64 %77 to i64*
  store i64 %72, i64* %78
  store i64 %77, i64* %75, align 8, !tbaa !1256
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC
  store i64 30, i64* %RCX, align 8, !tbaa !1256
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 1
  store i64 %82, i64* %PC
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %84 = load i64, i64* %83, align 8, !tbaa !1256
  %85 = add i64 %84, 8
  %86 = inttoptr i64 %84 to i64*
  %87 = load i64, i64* %86
  store i64 %87, i64* %RCX, align 8, !tbaa !1256
  store i64 %85, i64* %83, align 8, !tbaa !1256
  %88 = load i64, i64* %RDX
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 1
  store i64 %90, i64* %PC
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %92 = load i64, i64* %91, align 8, !tbaa !1256
  %93 = add i64 %92, -8
  %94 = inttoptr i64 %93 to i64*
  store i64 %88, i64* %94
  store i64 %93, i64* %91, align 8, !tbaa !1256
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 7
  store i64 %96, i64* %PC
  store i64 40, i64* %RDX, align 8, !tbaa !1256
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 1
  store i64 %98, i64* %PC
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %100 = load i64, i64* %99, align 8, !tbaa !1256
  %101 = add i64 %100, 8
  %102 = inttoptr i64 %100 to i64*
  %103 = load i64, i64* %102
  store i64 %103, i64* %RDX, align 8, !tbaa !1256
  store i64 %101, i64* %99, align 8, !tbaa !1256
  %104 = load i64, i64* %RSI
  %105 = load i64, i64* %PC
  %106 = add i64 %105, 1
  store i64 %106, i64* %PC
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %108 = load i64, i64* %107, align 8, !tbaa !1256
  %109 = add i64 %108, -8
  %110 = inttoptr i64 %109 to i64*
  store i64 %104, i64* %110
  store i64 %109, i64* %107, align 8, !tbaa !1256
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 7
  store i64 %112, i64* %PC
  store i64 50, i64* %RSI, align 8, !tbaa !1256
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 1
  store i64 %114, i64* %PC
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %116 = load i64, i64* %115, align 8, !tbaa !1256
  %117 = add i64 %116, 8
  %118 = inttoptr i64 %116 to i64*
  %119 = load i64, i64* %118
  store i64 %119, i64* %RSI, align 8, !tbaa !1256
  store i64 %117, i64* %115, align 8, !tbaa !1256
  %120 = load i64, i64* %RDI
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 1
  store i64 %122, i64* %PC
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %124 = load i64, i64* %123, align 8, !tbaa !1256
  %125 = add i64 %124, -8
  %126 = inttoptr i64 %125 to i64*
  store i64 %120, i64* %126
  store i64 %125, i64* %123, align 8, !tbaa !1256
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 7
  store i64 %128, i64* %PC
  store i64 60, i64* %RDI, align 8, !tbaa !1256
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 1
  store i64 %130, i64* %PC
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %132 = load i64, i64* %131, align 8, !tbaa !1256
  %133 = add i64 %132, 8
  %134 = inttoptr i64 %132 to i64*
  %135 = load i64, i64* %134
  store i64 %135, i64* %RDI, align 8, !tbaa !1256
  store i64 %133, i64* %131, align 8, !tbaa !1256
  %136 = load i64, i64* %RSP
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 1
  store i64 %138, i64* %PC
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %140 = load i64, i64* %139, align 8, !tbaa !1256
  %141 = add i64 %140, -8
  %142 = inttoptr i64 %141 to i64*
  store i64 %136, i64* %142
  store i64 %141, i64* %139, align 8, !tbaa !1256
  %143 = load i64, i64* %PC
  %144 = add i64 %143, 7
  store i64 %144, i64* %PC
  store i64 70, i64* %RSP, align 8, !tbaa !1256
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 1
  store i64 %146, i64* %PC
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %148 = load i64, i64* %147, align 8, !tbaa !1256
  %149 = add i64 %148, 8
  %150 = inttoptr i64 %148 to i64*
  %151 = load i64, i64* %150
  store i64 %151, i64* %RSP, align 8, !tbaa !1256
  store i64 %149, i64* %147, align 8, !tbaa !1256
  %152 = load i64, i64* %RBP
  %153 = load i64, i64* %PC
  %154 = add i64 %153, 1
  store i64 %154, i64* %PC
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %156 = load i64, i64* %155, align 8, !tbaa !1256
  %157 = add i64 %156, -8
  %158 = inttoptr i64 %157 to i64*
  store i64 %152, i64* %158
  store i64 %157, i64* %155, align 8, !tbaa !1256
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 7
  store i64 %160, i64* %PC
  store i64 80, i64* %RBP, align 8, !tbaa !1256
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 1
  store i64 %162, i64* %PC
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %164 = load i64, i64* %163, align 8, !tbaa !1256
  %165 = add i64 %164, 8
  %166 = inttoptr i64 %164 to i64*
  %167 = load i64, i64* %166
  store i64 %167, i64* %RBP, align 8, !tbaa !1256
  store i64 %165, i64* %163, align 8, !tbaa !1256
  %168 = load i64, i64* %PC
  %169 = add i64 %168, 1
  store i64 %169, i64* %PC
  %170 = load i64, i64* %PC
  %171 = add i64 %170, 1
  store i64 %171, i64* %PC
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %173 = load i64, i64* %172, align 8, !tbaa !1256
  %174 = add i64 %173, 8
  %175 = inttoptr i64 %173 to i64*
  %176 = load i64, i64* %175
  store i64 %176, i64* %RBP, align 8, !tbaa !1256
  store i64 %174, i64* %172, align 8, !tbaa !1256
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 1
  store i64 %178, i64* %PC
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %181 = load i64, i64* %180, align 8, !tbaa !1256
  %182 = inttoptr i64 %181 to i64*
  %183 = load i64, i64* %182
  store i64 %183, i64* %179, align 8, !tbaa !1256
  %184 = add i64 %181, 8
  store i64 %184, i64* %180, align 8, !tbaa !1256
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_660_get_sign(%struct.State* noalias dereferenceable(3280), i64, %struct.Memory* noalias) #12 {
block_660:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 13
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSP = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 15
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RBP = bitcast %union.anon* %17 to i64*
  %18 = load i64, i64* %RBP
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 1
  store i64 %20, i64* %PC
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %22 = load i64, i64* %21, align 8, !tbaa !1256
  %23 = add i64 %22, -8
  %24 = inttoptr i64 %23 to i64*
  store i64 %18, i64* %24
  store i64 %23, i64* %21, align 8, !tbaa !1256
  %25 = load i64, i64* %RSP
  %26 = load i64, i64* %PC
  %27 = add i64 %26, 3
  store i64 %27, i64* %PC
  store i64 %25, i64* %RBP, align 8, !tbaa !1256
  %28 = load i64, i64* %RBP
  %29 = sub i64 %28, 4
  %30 = load i32, i32* %EDI
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 3
  store i64 %33, i64* %PC
  %34 = inttoptr i64 %29 to i32*
  store i32 %30, i32* %34
  %35 = load i64, i64* %RBP
  %36 = sub i64 %35, 4
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 4
  store i64 %38, i64* %PC
  %39 = inttoptr i64 %36 to i32*
  %40 = load i32, i32* %39
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %41, align 1, !tbaa !1260
  %42 = and i32 %40, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42) #14
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %46, i8* %47, align 1, !tbaa !1271
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %48, align 1, !tbaa !1272
  %49 = icmp eq i32 %40, 0
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %50, i8* %51, align 1, !tbaa !1273
  %52 = lshr i32 %40, 31
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %53, i8* %54, align 1, !tbaa !1274
  %55 = lshr i32 %40, 31
  %56 = xor i32 %52, %55
  %57 = add nuw nsw i32 %56, %55
  %58 = icmp eq i32 %57, 2
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %59, i8* %60, align 1, !tbaa !1275
  %61 = load i64, i64* %PC
  %62 = add i64 %61, 9
  %63 = load i64, i64* %PC
  %64 = add i64 %63, 2
  %65 = load i64, i64* %PC
  %66 = add i64 %65, 2
  store i64 %66, i64* %PC
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %68 = load i8, i8* %67, align 1, !tbaa !1273
  %69 = icmp eq i8 %68, 0
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %71 = load i8, i8* %70, align 1, !tbaa !1274
  %72 = icmp ne i8 %71, 0
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %74 = load i8, i8* %73, align 1, !tbaa !1275
  %75 = icmp ne i8 %74, 0
  %76 = xor i1 %72, %75
  %77 = xor i1 %76, true
  %78 = and i1 %69, %77
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %BRANCH_TAKEN, align 1, !tbaa !1276
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %81 = select i1 %78, i64 %62, i64 %64
  store i64 %81, i64* %80, align 8, !tbaa !1256
  %82 = load i8, i8* %BRANCH_TAKEN
  %83 = icmp eq i8 %82, 1
  %84 = load i64, i64* %PC
  %85 = add i64 %84, 5
  store i64 %85, i64* %PC
  br i1 %83, label %block_674, label %block_66d

block_66d:                                        ; preds = %block_660
  store i64 1, i64* %RAX, align 8, !tbaa !1256
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 7
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 2
  store i64 %89, i64* %PC
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %87, i64* %90, align 8, !tbaa !1256
  br label %block_679

block_674:                                        ; preds = %block_660
  store i64 0, i64* %RAX, align 8, !tbaa !1256
  br label %block_679

block_679:                                        ; preds = %block_674, %block_66d
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_674 ], [ %2, %block_66d ]
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 1
  store i64 %92, i64* %PC
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %94 = load i64, i64* %93, align 8, !tbaa !1256
  %95 = add i64 %94, 8
  %96 = inttoptr i64 %94 to i64*
  %97 = load i64, i64* %96
  store i64 %97, i64* %RBP, align 8, !tbaa !1256
  store i64 %95, i64* %93, align 8, !tbaa !1256
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 1
  store i64 %99, i64* %PC
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %102 = load i64, i64* %101, align 8, !tbaa !1256
  %103 = inttoptr i64 %102 to i64*
  %104 = load i64, i64* %103
  store i64 %104, i64* %100, align 8, !tbaa !1256
  %105 = add i64 %102, 8
  store i64 %105, i64* %101, align 8, !tbaa !1256
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_4f8__init_proc(%struct.State* noalias dereferenceable(3280), i64, %struct.Memory* noalias) #12 {
block_4f8:
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
  store i8 %24, i8* %25, align 1, !tbaa !1271
  %26 = xor i64 8, %12
  %27 = xor i64 %26, %15
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1, !tbaa !1272
  %32 = icmp eq i64 %15, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1, !tbaa !1273
  %35 = lshr i64 %15, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1, !tbaa !1274
  %38 = lshr i64 %12, 63
  %39 = xor i64 %35, %38
  %40 = add nuw nsw i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1, !tbaa !1275
  %44 = load i64, i64* %PC
  %45 = add i64 %44, 7
  store i64 %45, i64* %PC
  %46 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_200fb8__got_type* @seg_200fb8__got to i64), i64 40) to i64*)
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
  store i8 %58, i8* %59, align 1, !tbaa !1271
  %60 = icmp eq i64 %51, 0
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %61, i8* %62, align 1, !tbaa !1273
  %63 = lshr i64 %51, 63
  %64 = trunc i64 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %64, i8* %65, align 1, !tbaa !1274
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %66, align 1, !tbaa !1275
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %67, align 1, !tbaa !1272
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 4
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 2
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 2
  store i64 %73, i64* %PC
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %75 = load i8, i8* %74, align 1, !tbaa !1273
  store i8 %75, i8* %BRANCH_TAKEN, align 1, !tbaa !1276
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %77 = icmp ne i8 %75, 0
  %78 = select i1 %77, i64 %69, i64 %71
  store i64 %78, i64* %76, align 8, !tbaa !1256
  %79 = load i8, i8* %BRANCH_TAKEN
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %block_50a, label %block_508

block_50a:                                        ; preds = %block_508, %block_4f8
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4f8 ], [ %134, %block_508 ]
  %81 = load i64, i64* %RSP
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC
  %84 = add i64 8, %81
  store i64 %84, i64* %RSP, align 8, !tbaa !1256
  %85 = icmp ult i64 %84, %81
  %86 = icmp ult i64 %84, 8
  %87 = or i1 %85, %86
  %88 = zext i1 %87 to i8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %88, i8* %89, align 1, !tbaa !1260
  %90 = trunc i64 %84 to i32
  %91 = and i32 %90, 255
  %92 = call i32 @llvm.ctpop.i32(i32 %91) #14
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %95 = xor i8 %94, 1
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %95, i8* %96, align 1, !tbaa !1271
  %97 = xor i64 8, %81
  %98 = xor i64 %97, %84
  %99 = lshr i64 %98, 4
  %100 = trunc i64 %99 to i8
  %101 = and i8 %100, 1
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %101, i8* %102, align 1, !tbaa !1272
  %103 = icmp eq i64 %84, 0
  %104 = zext i1 %103 to i8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %104, i8* %105, align 1, !tbaa !1273
  %106 = lshr i64 %84, 63
  %107 = trunc i64 %106 to i8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %107, i8* %108, align 1, !tbaa !1274
  %109 = lshr i64 %81, 63
  %110 = xor i64 %106, %109
  %111 = add nuw nsw i64 %110, %106
  %112 = icmp eq i64 %111, 2
  %113 = zext i1 %112 to i8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %113, i8* %114, align 1, !tbaa !1275
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 1
  store i64 %116, i64* %PC
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %119 = load i64, i64* %118, align 8, !tbaa !1256
  %120 = inttoptr i64 %119 to i64*
  %121 = load i64, i64* %120
  store i64 %121, i64* %117, align 8, !tbaa !1256
  %122 = add i64 %119, 8
  store i64 %122, i64* %118, align 8, !tbaa !1256
  ret %struct.Memory* %MEMORY.0

block_508:                                        ; preds = %block_4f8
  %123 = load i64, i64* %RAX
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 2
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 2
  store i64 %127, i64* %PC
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %129 = load i64, i64* %128, align 8, !tbaa !1256
  %130 = add i64 %129, -8
  %131 = inttoptr i64 %130 to i64*
  store i64 %125, i64* %131
  store i64 %130, i64* %128, align 8, !tbaa !1256
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %123, i64* %132, align 8, !tbaa !1256
  %133 = load i64, i64* %PC
  %134 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %133, %struct.Memory* %2)
  br label %block_50a
}

; Function Attrs: noinline
define %struct.Memory* @sub_560_deregister_tm_clones(%struct.State* noalias dereferenceable(3280), i64, %struct.Memory* noalias) #12 {
block_560:
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
  %25 = add i64 %24, 7
  store i64 %25, i64* %PC
  store i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64* %RDI, align 8, !tbaa !1256
  %26 = load i64, i64* %PC
  %27 = add i64 %26, 7
  store i64 %27, i64* %PC
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 7), i64* %RAX, align 8, !tbaa !1256
  %28 = load i64, i64* %RBP
  %29 = load i64, i64* %PC
  %30 = add i64 %29, 1
  store i64 %30, i64* %PC
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %32 = load i64, i64* %31, align 8, !tbaa !1256
  %33 = add i64 %32, -8
  %34 = inttoptr i64 %33 to i64*
  store i64 %28, i64* %34
  store i64 %33, i64* %31, align 8, !tbaa !1256
  %35 = load i64, i64* %RAX
  %36 = load i64, i64* %RDI
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 3
  store i64 %38, i64* %PC
  %39 = sub i64 %35, %36
  store i64 %39, i64* %RAX, align 8, !tbaa !1256
  %40 = icmp ult i64 %35, %36
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
  store i8 %48, i8* %49, align 1, !tbaa !1271
  %50 = xor i64 %36, %35
  %51 = xor i64 %50, %39
  %52 = lshr i64 %51, 4
  %53 = trunc i64 %52 to i8
  %54 = and i8 %53, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %54, i8* %55, align 1, !tbaa !1272
  %56 = icmp eq i64 %39, 0
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %57, i8* %58, align 1, !tbaa !1273
  %59 = lshr i64 %39, 63
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %60, i8* %61, align 1, !tbaa !1274
  %62 = lshr i64 %35, 63
  %63 = lshr i64 %36, 63
  %64 = xor i64 %63, %62
  %65 = xor i64 %59, %62
  %66 = add nuw nsw i64 %65, %64
  %67 = icmp eq i64 %66, 2
  %68 = zext i1 %67 to i8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %68, i8* %69, align 1, !tbaa !1275
  %70 = load i64, i64* %RSP
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 3
  store i64 %72, i64* %PC
  store i64 %70, i64* %RBP, align 8, !tbaa !1256
  %73 = load i64, i64* %RAX
  %74 = load i64, i64* %PC
  %75 = add i64 %74, 4
  store i64 %75, i64* %PC
  %76 = sub i64 %73, 14
  %77 = icmp ult i64 %73, 14
  %78 = zext i1 %77 to i8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %78, i8* %79, align 1, !tbaa !1260
  %80 = trunc i64 %76 to i32
  %81 = and i32 %80, 255
  %82 = call i32 @llvm.ctpop.i32(i32 %81) #14
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %85, i8* %86, align 1, !tbaa !1271
  %87 = xor i64 14, %73
  %88 = xor i64 %87, %76
  %89 = lshr i64 %88, 4
  %90 = trunc i64 %89 to i8
  %91 = and i8 %90, 1
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %91, i8* %92, align 1, !tbaa !1272
  %93 = icmp eq i64 %76, 0
  %94 = zext i1 %93 to i8
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %94, i8* %95, align 1, !tbaa !1273
  %96 = lshr i64 %76, 63
  %97 = trunc i64 %96 to i8
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %97, i8* %98, align 1, !tbaa !1274
  %99 = lshr i64 %73, 63
  %100 = xor i64 %96, %99
  %101 = add nuw nsw i64 %100, %99
  %102 = icmp eq i64 %101, 2
  %103 = zext i1 %102 to i8
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %103, i8* %104, align 1, !tbaa !1275
  %105 = load i64, i64* %PC
  %106 = add i64 %105, 23
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 2
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 2
  store i64 %110, i64* %PC
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %112 = load i8, i8* %111, align 1, !tbaa !1260
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %114 = load i8, i8* %113, align 1, !tbaa !1273
  %115 = or i8 %114, %112
  %116 = icmp ne i8 %115, 0
  %117 = zext i1 %116 to i8
  store i8 %117, i8* %BRANCH_TAKEN, align 1, !tbaa !1276
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %119 = select i1 %116, i64 %106, i64 %108
  store i64 %119, i64* %118, align 8, !tbaa !1256
  %120 = load i8, i8* %BRANCH_TAKEN
  %121 = icmp eq i8 %120, 1
  br i1 %121, label %block_590, label %block_57b

block_592:                                        ; preds = %block_587
  %122 = load i64, i64* %RAX
  %123 = load i32, i32* %EAX
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 4
  store i64 %126, i64* %PC
  %127 = load i64, i64* %RAX
  %128 = load i64, i64* %RAX
  %129 = add i64 %128, %127
  %130 = load i16, i16* %AX
  %131 = zext i16 %130 to i64
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 10
  store i64 %133, i64* %PC
  %134 = load i64, i64* %PC
  %135 = tail call %struct.Memory* @sub_5a0_register_tm_clones(%struct.State* %0, i64 %134, %struct.Memory* %2)
  ret %struct.Memory* %135

block_57b:                                        ; preds = %block_560
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 7
  store i64 %137, i64* %PC
  %138 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_200fb8__got_type* @seg_200fb8__got to i64), i64 24) to i64*)
  store i64 %138, i64* %RAX, align 8, !tbaa !1256
  %139 = load i64, i64* %RAX
  %140 = load i64, i64* %RAX
  %141 = load i64, i64* %PC
  %142 = add i64 %141, 3
  store i64 %142, i64* %PC
  %143 = and i64 %140, %139
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %144, align 1, !tbaa !1260
  %145 = trunc i64 %143 to i32
  %146 = and i32 %145, 255
  %147 = call i32 @llvm.ctpop.i32(i32 %146) #14
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %150, i8* %151, align 1, !tbaa !1271
  %152 = icmp eq i64 %143, 0
  %153 = zext i1 %152 to i8
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %153, i8* %154, align 1, !tbaa !1273
  %155 = lshr i64 %143, 63
  %156 = trunc i64 %155 to i8
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %156, i8* %157, align 1, !tbaa !1274
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %158, align 1, !tbaa !1275
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %159, align 1, !tbaa !1272
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 11
  %162 = load i64, i64* %PC
  %163 = add i64 %162, 2
  %164 = load i64, i64* %PC
  %165 = add i64 %164, 2
  store i64 %165, i64* %PC
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %167 = load i8, i8* %166, align 1, !tbaa !1273
  store i8 %167, i8* %BRANCH_TAKEN, align 1, !tbaa !1276
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %169 = icmp ne i8 %167, 0
  %170 = select i1 %169, i64 %161, i64 %163
  store i64 %170, i64* %168, align 8, !tbaa !1256
  %171 = load i8, i8* %BRANCH_TAKEN
  %172 = icmp eq i8 %171, 1
  br i1 %172, label %block_590, label %block_587

block_590:                                        ; preds = %block_58a, %block_57b, %block_560
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_560 ], [ %2, %block_57b ], [ %2, %block_58a ]
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 1
  store i64 %174, i64* %PC
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %176 = load i64, i64* %175, align 8, !tbaa !1256
  %177 = add i64 %176, 8
  %178 = inttoptr i64 %176 to i64*
  %179 = load i64, i64* %178
  store i64 %179, i64* %RBP, align 8, !tbaa !1256
  store i64 %177, i64* %175, align 8, !tbaa !1256
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 1
  store i64 %181, i64* %PC
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %184 = load i64, i64* %183, align 8, !tbaa !1256
  %185 = inttoptr i64 %184 to i64*
  %186 = load i64, i64* %185
  store i64 %186, i64* %182, align 8, !tbaa !1256
  %187 = add i64 %184, 8
  store i64 %187, i64* %183, align 8, !tbaa !1256
  ret %struct.Memory* %MEMORY.0

block_587:                                        ; preds = %block_57b
  %188 = load i64, i64* %PC
  %189 = add i64 %188, 1
  store i64 %189, i64* %PC
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %191 = load i64, i64* %190, align 8, !tbaa !1256
  %192 = add i64 %191, 8
  %193 = inttoptr i64 %191 to i64*
  %194 = load i64, i64* %193
  store i64 %194, i64* %RBP, align 8, !tbaa !1256
  store i64 %192, i64* %190, align 8, !tbaa !1256
  %195 = load i64, i64* %RAX
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 2
  store i64 %197, i64* %PC
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %195, i64* %198, align 8, !tbaa !1256
  %199 = load i64, i64* %PC
  switch i64 %199, label %207 [
    i64 1426, label %block_592
    i64 1418, label %block_58a
  ]

block_58a:                                        ; preds = %block_587
  %200 = load i64, i64* %RAX
  %201 = load i64, i64* %RAX
  %202 = add i64 %201, %200
  %203 = load i16, i16* %AX
  %204 = zext i16 %203 to i64
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 6
  store i64 %206, i64* %PC
  br label %block_590

; <label>:207:                                    ; preds = %block_587
  %208 = load i64, i64* %PC
  %209 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %208, %struct.Memory* %2)
  ret %struct.Memory* %209
}

; Function Attrs: noinline
define %struct.Memory* @sub_6ca_main(%struct.State* noalias dereferenceable(3280), i64, %struct.Memory* noalias) #12 {
block_6ca:
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
  %18 = load i64, i64* %RBP
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 1
  store i64 %20, i64* %PC
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %22 = load i64, i64* %21, align 8, !tbaa !1256
  %23 = add i64 %22, -8
  %24 = inttoptr i64 %23 to i64*
  store i64 %18, i64* %24
  store i64 %23, i64* %21, align 8, !tbaa !1256
  %25 = load i64, i64* %RSP
  %26 = load i64, i64* %PC
  %27 = add i64 %26, 3
  store i64 %27, i64* %PC
  store i64 %25, i64* %RBP, align 8, !tbaa !1256
  %28 = load i64, i64* %PC
  %29 = add i64 %28, 5
  store i64 %29, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !1256
  %30 = load i64, i64* %PC
  %31 = sub i64 %30, 88
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 5
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 5
  store i64 %35, i64* %PC
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %37 = load i64, i64* %36, align 8, !tbaa !1256
  %38 = add i64 %37, -8
  %39 = inttoptr i64 %38 to i64*
  store i64 %33, i64* %39
  store i64 %38, i64* %36, align 8, !tbaa !1256
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %31, i64* %40, align 8, !tbaa !1256
  %41 = load i64, i64* %PC
  %42 = call %struct.Memory* @sub_67b_init_var_correspondence(%struct.State* %0, i64 %41, %struct.Memory* %2)
  %43 = load i64, i64* %PC
  %44 = add i64 %43, 5
  store i64 %44, i64* %PC
  store i64 10, i64* %RDI, align 8, !tbaa !1256
  %45 = load i64, i64* %PC
  %46 = sub i64 %45, 125
  %47 = load i64, i64* %PC
  %48 = add i64 %47, 5
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 5
  store i64 %50, i64* %PC
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8, !tbaa !1256
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %48, i64* %54
  store i64 %53, i64* %51, align 8, !tbaa !1256
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %46, i64* %55, align 8, !tbaa !1256
  %56 = load i64, i64* %PC
  %57 = call %struct.Memory* @sub_660_get_sign(%struct.State* %0, i64 %56, %struct.Memory* %42)
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 1
  store i64 %59, i64* %PC
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %61 = load i64, i64* %60, align 8, !tbaa !1256
  %62 = add i64 %61, 8
  %63 = inttoptr i64 %61 to i64*
  %64 = load i64, i64* %63
  store i64 %64, i64* %RBP, align 8, !tbaa !1256
  store i64 %62, i64* %60, align 8, !tbaa !1256
  %65 = load i64, i64* %PC
  %66 = add i64 %65, 1
  store i64 %66, i64* %PC
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %69 = load i64, i64* %68, align 8, !tbaa !1256
  %70 = inttoptr i64 %69 to i64*
  %71 = load i64, i64* %70
  store i64 %71, i64* %67, align 8, !tbaa !1256
  %72 = add i64 %69, 8
  store i64 %72, i64* %68, align 8, !tbaa !1256
  ret %struct.Memory* %57
}

; Function Attrs: noinline
define %struct.Memory* @sub_5f0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3280), i64, %struct.Memory* noalias) #12 {
block_5f0:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = load i8, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %18, align 1, !tbaa !1260
  %19 = zext i8 %17 to i32
  %20 = call i32 @llvm.ctpop.i32(i32 %19) #14
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1, !tbaa !1271
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1, !tbaa !1272
  %26 = icmp eq i8 %17, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1, !tbaa !1273
  %29 = lshr i8 %17, 7
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1, !tbaa !1274
  %31 = lshr i8 %17, 7
  %32 = xor i8 %29, %31
  %33 = add nuw nsw i8 %32, %31
  %34 = icmp eq i8 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1, !tbaa !1275
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 41
  %39 = load i64, i64* %PC
  %40 = add i64 %39, 2
  %41 = load i64, i64* %PC
  %42 = add i64 %41, 2
  store i64 %42, i64* %PC
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %44 = load i8, i8* %43, align 1, !tbaa !1273
  %45 = icmp eq i8 %44, 0
  %46 = zext i1 %45 to i8
  store i8 %46, i8* %BRANCH_TAKEN, align 1, !tbaa !1276
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %48 = select i1 %45, i64 %38, i64 %40
  store i64 %48, i64* %47, align 8, !tbaa !1256
  %49 = load i8, i8* %BRANCH_TAKEN
  %50 = icmp eq i8 %49, 1
  br i1 %50, label %block_620, label %block_5f9

block_613:                                        ; preds = %block_607, %block_5f9
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_5f9 ], [ %135, %block_607 ]
  %51 = load i64, i64* %PC
  %52 = sub i64 %51, 179
  %53 = load i64, i64* %PC
  %54 = add i64 %53, 5
  %55 = load i64, i64* %PC
  %56 = add i64 %55, 5
  store i64 %56, i64* %PC
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %58 = load i64, i64* %57, align 8, !tbaa !1256
  %59 = add i64 %58, -8
  %60 = inttoptr i64 %59 to i64*
  store i64 %54, i64* %60
  store i64 %59, i64* %57, align 8, !tbaa !1256
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %52, i64* %61, align 8, !tbaa !1256
  %62 = load i64, i64* %PC
  %63 = call %struct.Memory* @sub_560_deregister_tm_clones(%struct.State* %0, i64 %62, %struct.Memory* %MEMORY.0)
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 1
  store i64 %65, i64* %PC
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %67 = load i64, i64* %66, align 8, !tbaa !1256
  %68 = add i64 %67, 8
  %69 = inttoptr i64 %67 to i64*
  %70 = load i64, i64* %69
  store i64 %70, i64* %RBP, align 8, !tbaa !1256
  store i64 %68, i64* %66, align 8, !tbaa !1256
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 7
  store i64 %72, i64* %PC
  store i8 1, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)
  br label %block_620

block_5f9:                                        ; preds = %block_5f0
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 8
  store i64 %74, i64* %PC
  %75 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_200fb8__got_type* @seg_200fb8__got to i64), i64 64) to i64*)
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %76, align 1, !tbaa !1260
  %77 = trunc i64 %75 to i32
  %78 = and i32 %77, 255
  %79 = call i32 @llvm.ctpop.i32(i32 %78) #14
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = xor i8 %81, 1
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %82, i8* %83, align 1, !tbaa !1271
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %84, align 1, !tbaa !1272
  %85 = icmp eq i64 %75, 0
  %86 = zext i1 %85 to i8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %86, i8* %87, align 1, !tbaa !1273
  %88 = lshr i64 %75, 63
  %89 = trunc i64 %88 to i8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %89, i8* %90, align 1, !tbaa !1274
  %91 = lshr i64 %75, 63
  %92 = xor i64 %88, %91
  %93 = add nuw nsw i64 %92, %91
  %94 = icmp eq i64 %93, 2
  %95 = zext i1 %94 to i8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %95, i8* %96, align 1, !tbaa !1275
  %97 = load i64, i64* %RBP
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 1
  store i64 %99, i64* %PC
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %101 = load i64, i64* %100, align 8, !tbaa !1256
  %102 = add i64 %101, -8
  %103 = inttoptr i64 %102 to i64*
  store i64 %97, i64* %103
  store i64 %102, i64* %100, align 8, !tbaa !1256
  %104 = load i64, i64* %RSP
  %105 = load i64, i64* %PC
  %106 = add i64 %105, 3
  store i64 %106, i64* %PC
  store i64 %104, i64* %RBP, align 8, !tbaa !1256
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 14
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 2
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 2
  store i64 %112, i64* %PC
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %114 = load i8, i8* %113, align 1, !tbaa !1273
  store i8 %114, i8* %BRANCH_TAKEN, align 1, !tbaa !1276
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %116 = icmp ne i8 %114, 0
  %117 = select i1 %116, i64 %108, i64 %110
  store i64 %117, i64* %115, align 8, !tbaa !1256
  %118 = load i8, i8* %BRANCH_TAKEN
  %119 = icmp eq i8 %118, 1
  br i1 %119, label %block_613, label %block_607

block_607:                                        ; preds = %block_5f9
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 7
  store i64 %121, i64* %PC
  %122 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_201000__data_type* @seg_201000__data to i64), i64 8) to i64*)
  store i64 %122, i64* %RDI, align 8, !tbaa !1256
  %123 = load i64, i64* %PC
  %124 = sub i64 %123, 238
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 5
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 5
  store i64 %128, i64* %PC
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %130 = load i64, i64* %129, align 8, !tbaa !1256
  %131 = add i64 %130, -8
  %132 = inttoptr i64 %131 to i64*
  store i64 %126, i64* %132
  store i64 %131, i64* %129, align 8, !tbaa !1256
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %124, i64* %133, align 8, !tbaa !1256
  %134 = load i64, i64* %PC
  %135 = call %struct.Memory* @sub_520___cxa_finalize(%struct.State* %0, i64 %134, %struct.Memory* %2)
  br label %block_613

block_620:                                        ; preds = %block_613, %block_5f0
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_5f0 ], [ %63, %block_613 ]
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 2
  store i64 %137, i64* %PC
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %140 = load i64, i64* %139, align 8, !tbaa !1256
  %141 = inttoptr i64 %140 to i64*
  %142 = load i64, i64* %141
  store i64 %142, i64* %138, align 8, !tbaa !1256
  %143 = add i64 %140, 8
  store i64 %143, i64* %139, align 8, !tbaa !1256
  ret %struct.Memory* %MEMORY.1
}

; Function Attrs: noinline
define %struct.Memory* @sub_760___libc_csu_fini(%struct.State* noalias dereferenceable(3280), i64, %struct.Memory* noalias) #12 {
block_760:
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
define %struct.Memory* @sub_764__term_proc(%struct.State* noalias dereferenceable(3280), i64, %struct.Memory* noalias) #12 {
block_764:
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
  store i8 %21, i8* %22, align 1, !tbaa !1271
  %23 = xor i64 8, %9
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !1272
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !1273
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !1274
  %35 = lshr i64 %9, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !1275
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
  store i8 %55, i8* %56, align 1, !tbaa !1271
  %57 = xor i64 8, %41
  %58 = xor i64 %57, %44
  %59 = lshr i64 %58, 4
  %60 = trunc i64 %59 to i8
  %61 = and i8 %60, 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %61, i8* %62, align 1, !tbaa !1272
  %63 = icmp eq i64 %44, 0
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %64, i8* %65, align 1, !tbaa !1273
  %66 = lshr i64 %44, 63
  %67 = trunc i64 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %67, i8* %68, align 1, !tbaa !1274
  %69 = lshr i64 %41, 63
  %70 = xor i64 %66, %69
  %71 = add nuw nsw i64 %70, %66
  %72 = icmp eq i64 %71, 2
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %73, i8* %74, align 1, !tbaa !1275
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
define %struct.Memory* @sub_5a0_register_tm_clones(%struct.State* noalias dereferenceable(3280), i64, %struct.Memory* noalias) #12 {
block_5a0:
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
  %28 = add i64 %27, 7
  store i64 %28, i64* %PC
  store i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64* %RDI, align 8, !tbaa !1256
  %29 = load i64, i64* %PC
  %30 = add i64 %29, 7
  store i64 %30, i64* %PC
  store i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64* %RSI, align 8, !tbaa !1256
  %31 = load i64, i64* %RBP
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 1
  store i64 %33, i64* %PC
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %35 = load i64, i64* %34, align 8, !tbaa !1256
  %36 = add i64 %35, -8
  %37 = inttoptr i64 %36 to i64*
  store i64 %31, i64* %37
  store i64 %36, i64* %34, align 8, !tbaa !1256
  %38 = load i64, i64* %RSI
  %39 = load i64, i64* %RDI
  %40 = load i64, i64* %PC
  %41 = add i64 %40, 3
  store i64 %41, i64* %PC
  %42 = sub i64 %38, %39
  store i64 %42, i64* %RSI, align 8, !tbaa !1256
  %43 = icmp ult i64 %38, %39
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %44, i8* %45, align 1, !tbaa !1260
  %46 = trunc i64 %42 to i32
  %47 = and i32 %46, 255
  %48 = call i32 @llvm.ctpop.i32(i32 %47) #14
  %49 = trunc i32 %48 to i8
  %50 = and i8 %49, 1
  %51 = xor i8 %50, 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %51, i8* %52, align 1, !tbaa !1271
  %53 = xor i64 %39, %38
  %54 = xor i64 %53, %42
  %55 = lshr i64 %54, 4
  %56 = trunc i64 %55 to i8
  %57 = and i8 %56, 1
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %57, i8* %58, align 1, !tbaa !1272
  %59 = icmp eq i64 %42, 0
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %60, i8* %61, align 1, !tbaa !1273
  %62 = lshr i64 %42, 63
  %63 = trunc i64 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %63, i8* %64, align 1, !tbaa !1274
  %65 = lshr i64 %38, 63
  %66 = lshr i64 %39, 63
  %67 = xor i64 %66, %65
  %68 = xor i64 %62, %65
  %69 = add nuw nsw i64 %68, %67
  %70 = icmp eq i64 %69, 2
  %71 = zext i1 %70 to i8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %71, i8* %72, align 1, !tbaa !1275
  %73 = load i64, i64* %RSP
  %74 = load i64, i64* %PC
  %75 = add i64 %74, 3
  store i64 %75, i64* %PC
  store i64 %73, i64* %RBP, align 8, !tbaa !1256
  %76 = load i64, i64* %RSI
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 4
  store i64 %78, i64* %PC
  %79 = ashr i64 %76, 2
  %80 = icmp ne i8 0, 0
  %81 = zext i1 %80 to i8
  %82 = trunc i64 %79 to i8
  %83 = and i8 %82, 1
  %84 = ashr i64 %79, 1
  store i64 %84, i64* %RSI, align 8, !tbaa !1256
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %83, i8* %85, align 1, !tbaa !1276
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %87 = trunc i64 %84 to i32
  %88 = and i32 %87, 255
  %89 = call i32 @llvm.ctpop.i32(i32 %88) #14
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %86, align 1, !tbaa !1276
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %93, align 1, !tbaa !1276
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %95 = icmp eq i64 %84, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %94, align 1, !tbaa !1276
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %98 = lshr i64 %84, 63
  %99 = trunc i64 %98 to i8
  store i8 %99, i8* %97, align 1, !tbaa !1276
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %81, i8* %100, align 1, !tbaa !1276
  %101 = load i64, i64* %RSI
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 3
  store i64 %103, i64* %PC
  store i64 %101, i64* %RAX, align 8, !tbaa !1256
  %104 = load i64, i64* %RAX
  %105 = load i64, i64* %PC
  %106 = add i64 %105, 4
  store i64 %106, i64* %PC
  %107 = lshr i64 %104, 62
  %108 = icmp ne i8 0, 0
  %109 = zext i1 %108 to i8
  %110 = trunc i64 %107 to i8
  %111 = and i8 %110, 1
  %112 = lshr i64 %107, 1
  store i64 %112, i64* %RAX, align 8, !tbaa !1256
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %111, i8* %113, align 1, !tbaa !1276
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %115 = trunc i64 %112 to i32
  %116 = and i32 %115, 255
  %117 = call i32 @llvm.ctpop.i32(i32 %116) #14
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  store i8 %120, i8* %114, align 1, !tbaa !1276
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %121, align 1, !tbaa !1276
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %123 = icmp eq i64 %112, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %122, align 1, !tbaa !1276
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %125, align 1, !tbaa !1276
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %109, i8* %126, align 1, !tbaa !1276
  %127 = load i64, i64* %RSI
  %128 = load i64, i64* %RAX
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 3
  store i64 %130, i64* %PC
  %131 = add i64 %128, %127
  store i64 %131, i64* %RSI, align 8, !tbaa !1256
  %132 = icmp ult i64 %131, %127
  %133 = icmp ult i64 %131, %128
  %134 = or i1 %132, %133
  %135 = zext i1 %134 to i8
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %135, i8* %136, align 1, !tbaa !1260
  %137 = trunc i64 %131 to i32
  %138 = and i32 %137, 255
  %139 = call i32 @llvm.ctpop.i32(i32 %138) #14
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %142, i8* %143, align 1, !tbaa !1271
  %144 = xor i64 %128, %127
  %145 = xor i64 %144, %131
  %146 = lshr i64 %145, 4
  %147 = trunc i64 %146 to i8
  %148 = and i8 %147, 1
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %148, i8* %149, align 1, !tbaa !1272
  %150 = icmp eq i64 %131, 0
  %151 = zext i1 %150 to i8
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %151, i8* %152, align 1, !tbaa !1273
  %153 = lshr i64 %131, 63
  %154 = trunc i64 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %154, i8* %155, align 1, !tbaa !1274
  %156 = lshr i64 %127, 63
  %157 = lshr i64 %128, 63
  %158 = xor i64 %153, %156
  %159 = xor i64 %153, %157
  %160 = add nuw nsw i64 %158, %159
  %161 = icmp eq i64 %160, 2
  %162 = zext i1 %161 to i8
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %162, i8* %163, align 1, !tbaa !1275
  %164 = load i64, i64* %RSI
  %165 = load i64, i64* %PC
  %166 = add i64 %165, 3
  store i64 %166, i64* %PC
  %167 = trunc i64 %164 to i8
  %168 = and i8 %167, 1
  %169 = ashr i64 %164, 1
  store i64 %169, i64* %RSI, align 8, !tbaa !1256
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %168, i8* %170, align 1, !tbaa !1276
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %172 = trunc i64 %169 to i32
  %173 = and i32 %172, 255
  %174 = call i32 @llvm.ctpop.i32(i32 %173) #14
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %171, align 1, !tbaa !1276
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %178, align 1, !tbaa !1276
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %180 = icmp eq i64 %169, 0
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %179, align 1, !tbaa !1276
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %183 = lshr i64 %169, 63
  %184 = trunc i64 %183 to i8
  store i8 %184, i8* %182, align 1, !tbaa !1276
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %185, align 1, !tbaa !1276
  %186 = load i64, i64* %PC
  %187 = add i64 %186, 26
  %188 = load i64, i64* %PC
  %189 = add i64 %188, 2
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 2
  store i64 %191, i64* %PC
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %193 = load i8, i8* %192, align 1, !tbaa !1273
  store i8 %193, i8* %BRANCH_TAKEN, align 1, !tbaa !1276
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %195 = icmp ne i8 %193, 0
  %196 = select i1 %195, i64 %187, i64 %189
  store i64 %196, i64* %194, align 8, !tbaa !1256
  %197 = load i8, i8* %BRANCH_TAKEN
  %198 = icmp eq i8 %197, 1
  br i1 %198, label %block_5e0, label %block_5c8

block_5d7:                                        ; preds = %block_5d4
  %199 = load i64, i64* %RAX
  %200 = load i64, i64* %RAX
  %201 = add i64 %200, %199
  %202 = load i16, i16* %AX
  %203 = zext i16 %202 to i64
  %204 = load i64, i64* %PC
  %205 = add i64 %204, 9
  store i64 %205, i64* %PC
  br label %block_5e0

block_5c8:                                        ; preds = %block_5a0
  %206 = load i64, i64* %PC
  %207 = add i64 %206, 7
  store i64 %207, i64* %PC
  %208 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_200fb8__got_type* @seg_200fb8__got to i64), i64 56) to i64*)
  store i64 %208, i64* %RAX, align 8, !tbaa !1256
  %209 = load i64, i64* %RAX
  %210 = load i64, i64* %RAX
  %211 = load i64, i64* %PC
  %212 = add i64 %211, 3
  store i64 %212, i64* %PC
  %213 = and i64 %210, %209
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %214, align 1, !tbaa !1260
  %215 = trunc i64 %213 to i32
  %216 = and i32 %215, 255
  %217 = call i32 @llvm.ctpop.i32(i32 %216) #14
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %220, i8* %221, align 1, !tbaa !1271
  %222 = icmp eq i64 %213, 0
  %223 = zext i1 %222 to i8
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %223, i8* %224, align 1, !tbaa !1273
  %225 = lshr i64 %213, 63
  %226 = trunc i64 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %226, i8* %227, align 1, !tbaa !1274
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %228, align 1, !tbaa !1275
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %229, align 1, !tbaa !1272
  %230 = load i64, i64* %PC
  %231 = add i64 %230, 14
  %232 = load i64, i64* %PC
  %233 = add i64 %232, 2
  %234 = load i64, i64* %PC
  %235 = add i64 %234, 2
  store i64 %235, i64* %PC
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %237 = load i8, i8* %236, align 1, !tbaa !1273
  store i8 %237, i8* %BRANCH_TAKEN, align 1, !tbaa !1276
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %239 = icmp ne i8 %237, 0
  %240 = select i1 %239, i64 %231, i64 %233
  store i64 %240, i64* %238, align 8, !tbaa !1256
  %241 = load i8, i8* %BRANCH_TAKEN
  %242 = icmp eq i8 %241, 1
  br i1 %242, label %block_5e0, label %block_5d4

block_5d4:                                        ; preds = %block_5c8
  %243 = load i64, i64* %PC
  %244 = add i64 %243, 1
  store i64 %244, i64* %PC
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %246 = load i64, i64* %245, align 8, !tbaa !1256
  %247 = add i64 %246, 8
  %248 = inttoptr i64 %246 to i64*
  %249 = load i64, i64* %248
  store i64 %249, i64* %RBP, align 8, !tbaa !1256
  store i64 %247, i64* %245, align 8, !tbaa !1256
  %250 = load i64, i64* %RAX
  %251 = load i64, i64* %PC
  %252 = add i64 %251, 2
  store i64 %252, i64* %PC
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %250, i64* %253, align 8, !tbaa !1256
  %254 = load i64, i64* %PC
  switch i64 %254, label %284 [
    i64 1506, label %block_5e2
    i64 1495, label %block_5d7
  ]

block_5e2:                                        ; preds = %block_5d4
  %255 = load i64, i64* %RAX
  %256 = load i32, i32* %EAX
  %257 = zext i32 %256 to i64
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 4
  store i64 %259, i64* %PC
  %260 = load i64, i64* %RAX
  %261 = load i64, i64* %RAX
  %262 = add i64 %261, %260
  %263 = load i16, i16* %AX
  %264 = zext i16 %263 to i64
  %265 = load i64, i64* %PC
  %266 = add i64 %265, 10
  store i64 %266, i64* %PC
  %267 = load i64, i64* %PC
  %268 = tail call %struct.Memory* @sub_5f0___do_global_dtors_aux(%struct.State* %0, i64 %267, %struct.Memory* %2)
  ret %struct.Memory* %268

block_5e0:                                        ; preds = %block_5c8, %block_5d7, %block_5a0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_5a0 ], [ %2, %block_5c8 ], [ %2, %block_5d7 ]
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 1
  store i64 %270, i64* %PC
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %272 = load i64, i64* %271, align 8, !tbaa !1256
  %273 = add i64 %272, 8
  %274 = inttoptr i64 %272 to i64*
  %275 = load i64, i64* %274
  store i64 %275, i64* %RBP, align 8, !tbaa !1256
  store i64 %273, i64* %271, align 8, !tbaa !1256
  %276 = load i64, i64* %PC
  %277 = add i64 %276, 1
  store i64 %277, i64* %PC
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %280 = load i64, i64* %279, align 8, !tbaa !1256
  %281 = inttoptr i64 %280 to i64*
  %282 = load i64, i64* %281
  store i64 %282, i64* %278, align 8, !tbaa !1256
  %283 = add i64 %280, 8
  store i64 %283, i64* %279, align 8, !tbaa !1256
  ret %struct.Memory* %MEMORY.0

; <label>:284:                                    ; preds = %block_5d4
  %285 = load i64, i64* %PC
  %286 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %285, %struct.Memory* %2)
  ret %struct.Memory* %286
}

; Function Attrs: noinline
define %struct.Memory* @sub_630_frame_dummy(%struct.State* noalias dereferenceable(3280), i64, %struct.Memory* noalias) #12 {
block_630:
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
  %19 = add i64 %18, 7
  store i64 %19, i64* %PC
  store i64 ptrtoint (%seg_200df0__jcr_type* @seg_200df0__jcr to i64), i64* %RDI, align 8, !tbaa !1256
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
  store i8 %31, i8* %32, align 1, !tbaa !1271
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1, !tbaa !1272
  %34 = icmp eq i64 %24, 0
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %35, i8* %36, align 1, !tbaa !1273
  %37 = lshr i64 %24, 63
  %38 = trunc i64 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1, !tbaa !1274
  %40 = lshr i64 %24, 63
  %41 = xor i64 %37, %40
  %42 = add nuw nsw i64 %41, %40
  %43 = icmp eq i64 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1, !tbaa !1275
  %46 = load i64, i64* %PC
  %47 = add i64 %46, 13
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 2
  %50 = load i64, i64* %PC
  %51 = add i64 %50, 2
  store i64 %51, i64* %PC
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %53 = load i8, i8* %52, align 1, !tbaa !1273
  %54 = icmp eq i8 %53, 0
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %BRANCH_TAKEN, align 1, !tbaa !1276
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %57 = select i1 %54, i64 %47, i64 %49
  store i64 %57, i64* %56, align 8, !tbaa !1256
  %58 = load i8, i8* %BRANCH_TAKEN
  %59 = icmp eq i8 %58, 1
  br i1 %59, label %block_648, label %block_63d

block_63d:                                        ; preds = %block_648, %block_630
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_648 ], [ %2, %block_630 ]
  %60 = load i64, i64* %PC
  %61 = sub i64 %60, 157
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 5
  store i64 %63, i64* %PC
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %61, i64* %64, align 8, !tbaa !1256
  br label %block_5a0

block_654:                                        ; preds = %block_648
  %65 = load i64, i64* %RBP
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 1
  store i64 %67, i64* %PC
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %69 = load i64, i64* %68, align 8, !tbaa !1256
  %70 = add i64 %69, -8
  %71 = inttoptr i64 %70 to i64*
  store i64 %65, i64* %71
  store i64 %70, i64* %68, align 8, !tbaa !1256
  %72 = load i64, i64* %RSP
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 3
  store i64 %74, i64* %PC
  store i64 %72, i64* %RBP, align 8, !tbaa !1256
  %75 = load i64, i64* %RAX
  %76 = load i64, i64* %PC
  %77 = add i64 %76, 2
  %78 = load i64, i64* %PC
  %79 = add i64 %78, 2
  store i64 %79, i64* %PC
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %81 = load i64, i64* %80, align 8, !tbaa !1256
  %82 = add i64 %81, -8
  %83 = inttoptr i64 %82 to i64*
  store i64 %77, i64* %83
  store i64 %82, i64* %80, align 8, !tbaa !1256
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %75, i64* %84, align 8, !tbaa !1256
  %85 = load i64, i64* %PC
  %86 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %85, %struct.Memory* %2)
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 1
  store i64 %88, i64* %PC
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %90 = load i64, i64* %89, align 8, !tbaa !1256
  %91 = add i64 %90, 8
  %92 = inttoptr i64 %90 to i64*
  %93 = load i64, i64* %92
  store i64 %93, i64* %RBP, align 8, !tbaa !1256
  store i64 %91, i64* %89, align 8, !tbaa !1256
  %94 = load i64, i64* %PC
  %95 = sub i64 %94, 187
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 5
  store i64 %97, i64* %PC
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %95, i64* %98, align 8, !tbaa !1256
  br label %block_5a0

block_648:                                        ; preds = %block_630
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 7
  store i64 %100, i64* %PC
  %101 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_200fb8__got_type* @seg_200fb8__got to i64), i64 48) to i64*)
  store i64 %101, i64* %RAX, align 8, !tbaa !1256
  %102 = load i64, i64* %RAX
  %103 = load i64, i64* %RAX
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC
  %106 = and i64 %103, %102
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %107, align 1, !tbaa !1260
  %108 = trunc i64 %106 to i32
  %109 = and i32 %108, 255
  %110 = call i32 @llvm.ctpop.i32(i32 %109) #14
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %113, i8* %114, align 1, !tbaa !1271
  %115 = icmp eq i64 %106, 0
  %116 = zext i1 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %116, i8* %117, align 1, !tbaa !1273
  %118 = lshr i64 %106, 63
  %119 = trunc i64 %118 to i8
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %119, i8* %120, align 1, !tbaa !1274
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %121, align 1, !tbaa !1275
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %122, align 1, !tbaa !1272
  %123 = load i64, i64* %PC
  %124 = sub i64 %123, 21
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 2
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 2
  store i64 %128, i64* %PC
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %130 = load i8, i8* %129, align 1, !tbaa !1273
  store i8 %130, i8* %BRANCH_TAKEN, align 1, !tbaa !1276
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %132 = icmp ne i8 %130, 0
  %133 = select i1 %132, i64 %124, i64 %126
  store i64 %133, i64* %131, align 8, !tbaa !1256
  %134 = load i8, i8* %BRANCH_TAKEN
  %135 = icmp eq i8 %134, 1
  br i1 %135, label %block_63d, label %block_654

block_5a0:                                        ; preds = %block_654, %block_63d
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_63d ], [ %86, %block_654 ]
  %136 = load i64, i64* %PC
  %137 = tail call %struct.Memory* @sub_5a0_register_tm_clones(%struct.State* %0, i64 %136, %struct.Memory* %MEMORY.1)
  ret %struct.Memory* %137
}

; Function Attrs: noinline
define %struct.Memory* @sub_520___cxa_finalize(%struct.State* noalias dereferenceable(3280), i64, %struct.Memory* noalias) #12 {
block_520:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_200fb8__got_type* @seg_200fb8__got to i64), i64 64) to i64*)
  store i64 %9, i64* %8, align 8, !tbaa !1256
  %10 = load i64, i64* %PC
  %11 = tail call %struct.Memory* @ext_201030___cxa_finalize(%struct.State* %0, i64 %10, %struct.Memory* %2)
  ret %struct.Memory* %11
}

; Function Attrs: noinline
define %struct.Memory* @sub_530__start(%struct.State* noalias dereferenceable(3280), i64, %struct.Memory* noalias) #12 {
block_530:
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
  store i8 %49, i8* %50, align 1, !tbaa !1271
  %51 = icmp eq i32 %42, 0
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %52, i8* %53, align 1, !tbaa !1273
  %54 = lshr i32 %42, 31
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %55, i8* %56, align 1, !tbaa !1274
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %57, align 1, !tbaa !1275
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %58, align 1, !tbaa !1272
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
  store i8 %82, i8* %83, align 1, !tbaa !1271
  %84 = icmp eq i64 %75, 0
  %85 = zext i1 %84 to i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %85, i8* %86, align 1, !tbaa !1273
  %87 = lshr i64 %75, 63
  %88 = trunc i64 %87 to i8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %88, i8* %89, align 1, !tbaa !1274
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %90, align 1, !tbaa !1275
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %91, align 1, !tbaa !1272
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
  store i64 ptrtoint (void ()* @callback_sub_760___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !1256
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_6f0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !1256
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 7
  store i64 %111, i64* %PC
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !1256
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 6
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 6
  store i64 %115, i64* %PC
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %117 = load i64, i64* %116, align 8, !tbaa !1256
  %118 = add i64 %117, -8
  %119 = inttoptr i64 %118 to i64*
  store i64 %113, i64* %119
  store i64 %118, i64* %116, align 8, !tbaa !1256
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %121 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_200fb8__got_type* @seg_200fb8__got to i64), i64 32) to i64*)
  store i64 %121, i64* %120, align 8, !tbaa !1256
  %122 = load i64, i64* %PC
  %123 = call %struct.Memory* @ext_201018___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #11

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_630_frame_dummy() #13 {
  call void asm sideeffect "pushq $0;pushq $$0x630;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_630_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_630_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_5f0___do_global_dtors_aux() #13 {
  call void asm sideeffect "pushq $0;pushq $$0x5f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_5f0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_5f0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_201030___cxa_finalize(%struct.State*, i64, %struct.Memory*) #11 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @__cxa_finalize to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_760___libc_csu_fini() #13 {
  call void asm sideeffect "pushq $0;pushq $$0x760;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_760___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_760___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_6f0___libc_csu_init() #13 {
  call void asm sideeffect "pushq $0;pushq $$0x6f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_6f0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_6f0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #13 {
  call void asm sideeffect "pushq $0;pushq $$0x6ca;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_6ca_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_201018___libc_start_main(%struct.State*, i64, %struct.Memory*) #11 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @init_var_correspondence() #13 {
  call void asm sideeffect "pushq $0;pushq $$0x67b;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
  ret void
}

define internal %struct.Memory* @init_var_correspondence_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_67b_init_var_correspondence(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @get_sign() #13 {
  call void asm sideeffect "pushq $0;pushq $$0x660;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
  ret void
}

define internal %struct.Memory* @get_sign_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_660_get_sign(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #13 {
  call void asm sideeffect "pushq $0;pushq $$0x4f8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4f8__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #13 {
  call void asm sideeffect "pushq $0;pushq $$0x764;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_764__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
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
  call void @callback_sub_6f0___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_760___libc_csu_fini()
  ret void
}

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noduplicate noinline nounwind optnone readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
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
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !66, imports: !69)
!2 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/X86/Runtime/BasicBlock.cpp", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!3 = !{!4, !25, !34, !38, !44, !50, !54, !60}
!4 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Name", scope: !6, file: !5, line: 70, baseType: !8, size: 32, elements: !11, identifier: "_ZTSN14AsyncHyperCall4NameE")
!5 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/HyperCall.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncHyperCall", file: !5, line: 68, size: 8, elements: !7, identifier: "_ZTS14AsyncHyperCall")
!7 = !{}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 183, baseType: !10)
!9 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stdint.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
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
!23 = !DIEnumerator(name: "kAArch64SupervisorCall", value: 11)
!24 = !DIEnumerator(name: "kInvalidInstruction", value: 12)
!25 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "RequestPrivilegeLevel", file: !26, line: 64, baseType: !27, size: 16, elements: !29, identifier: "_ZTS21RequestPrivilegeLevel")
!26 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/X86/Runtime/State.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !9, line: 218, baseType: !28)
!28 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "kRPLRingZero", value: 0)
!31 = !DIEnumerator(name: "kRPLRingOne", value: 1)
!32 = !DIEnumerator(name: "kRPLRingTwo", value: 2)
!33 = !DIEnumerator(name: "kRPLRingThree", value: 3)
!34 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "TableIndicator", file: !26, line: 71, baseType: !27, size: 16, elements: !35, identifier: "_ZTS14TableIndicator")
!35 = !{!36, !37}
!36 = !DIEnumerator(name: "kGlobalDescriptorTable", value: 0)
!37 = !DIEnumerator(name: "kLocalDescriptorTable", value: 1)
!38 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUPrecisionControl", file: !26, line: 111, baseType: !27, size: 16, elements: !39, identifier: "_ZTS19FPUPrecisionControl")
!39 = !{!40, !41, !42, !43}
!40 = !DIEnumerator(name: "kPrecisionSingle", value: 0)
!41 = !DIEnumerator(name: "kPrecisionReserved", value: 1)
!42 = !DIEnumerator(name: "kPrecisionDouble", value: 2)
!43 = !DIEnumerator(name: "kPrecisionExtended", value: 3)
!44 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPURoundingControl", file: !26, line: 118, baseType: !27, size: 16, elements: !45, identifier: "_ZTS18FPURoundingControl")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "kFPURoundToNearestEven", value: 0)
!47 = !DIEnumerator(name: "kFPURoundDownNegInf", value: 1)
!48 = !DIEnumerator(name: "kFPURoundUpInf", value: 2)
!49 = !DIEnumerator(name: "kFPURoundToZero", value: 3)
!50 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUInfinityControl", file: !26, line: 125, baseType: !27, size: 16, elements: !51, identifier: "_ZTS18FPUInfinityControl")
!51 = !{!52, !53}
!52 = !DIEnumerator(name: "kInfinityProjective", value: 0)
!53 = !DIEnumerator(name: "kInfinityAffine", value: 1)
!54 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUTag", file: !26, line: 202, baseType: !27, size: 16, elements: !55, identifier: "_ZTS6FPUTag")
!55 = !{!56, !57, !58, !59}
!56 = !DIEnumerator(name: "kFPUTagNonZero", value: 0)
!57 = !DIEnumerator(name: "kFPUTagZero", value: 1)
!58 = !DIEnumerator(name: "kFPUTagSpecial", value: 2)
!59 = !DIEnumerator(name: "kFPUTagEmpty", value: 3)
!60 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUAbridgedTag", file: !26, line: 209, baseType: !61, size: 8, elements: !63, identifier: "_ZTS14FPUAbridgedTag")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !9, line: 237, baseType: !62)
!62 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !{!64, !65}
!64 = !DIEnumerator(name: "kFPUAbridgedTagEmpty", value: 0)
!65 = !DIEnumerator(name: "kFPUAbridgedTagValid", value: 1)
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!69 = !{!70, !76, !82, !85, !92, !96, !101, !103, !111, !115, !119, !131, !135, !139, !143, !147, !152, !156, !160, !164, !168, !176, !180, !184, !186, !190, !194, !198, !204, !208, !212, !214, !222, !226, !234, !236, !240, !244, !248, !252, !257, !262, !267, !268, !269, !270, !273, !274, !275, !276, !277, !278, !279, !334, !338, !353, !355, !359, !367, !372, !376, !380, !384, !388, !390, !392, !396, !402, !406, !412, !418, !420, !424, !428, !432, !436, !447, !449, !453, !457, !461, !463, !467, !471, !475, !477, !479, !483, !491, !495, !499, !503, !505, !511, !513, !519, !523, !527, !531, !535, !539, !543, !545, !547, !551, !555, !559, !561, !565, !569, !571, !573, !577, !581, !585, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !603, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !631, !632, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !662, !666, !671, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !707, !712, !716, !718, !720, !722, !724, !731, !735, !739, !743, !747, !751, !756, !760, !762, !766, !772, !776, !781, !783, !785, !789, !793, !797, !799, !801, !803, !805, !809, !811, !813, !817, !821, !825, !829, !833, !835, !837, !841, !845, !849, !853, !855, !857, !861, !865, !866, !867, !868, !869, !870, !875, !877, !879, !883, !885, !887, !889, !891, !893, !895, !897, !902, !906, !908, !910, !915, !917, !919, !921, !923, !925, !927, !930, !932, !934, !938, !942, !944, !946, !948, !950, !952, !954, !956, !958, !960, !962, !966, !970, !972, !974, !976, !978, !980, !982, !984, !986, !988, !990, !992, !994, !996, !998, !1000, !1004, !1008, !1012, !1014, !1016, !1018, !1020, !1022, !1024, !1026, !1028, !1030, !1034, !1038, !1042, !1044, !1046, !1048, !1052, !1056, !1060, !1062, !1064, !1066, !1068, !1070, !1072, !1074, !1076, !1078, !1080, !1082, !1084, !1088, !1092, !1096, !1098, !1100, !1102, !1104, !1108, !1112, !1114, !1116, !1118, !1120, !1122, !1124, !1128, !1132, !1134, !1136, !1138, !1140, !1144, !1148, !1152, !1154, !1156, !1158, !1160, !1162, !1164, !1168, !1172, !1176, !1178, !1182, !1186, !1188, !1190, !1192, !1194, !1196, !1198, !1202, !1204, !1207, !1212, !1214, !1220, !1222, !1224, !1226, !1231, !1233, !1239, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253}
!70 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !71, entity: !73, line: 58)
!71 = !DINamespace(name: "__gnu_debug", scope: null, file: !72, line: 56)
!72 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/debug/debug.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!73 = !DINamespace(name: "__debug", scope: !74, file: !72, line: 50)
!74 = !DINamespace(name: "std", scope: null, file: !75, line: 229)
!75 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/x86_64-linux-gnu/c++/7.0.1/bits/c++config.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !77, line: 52)
!77 = !DISubprogram(name: "abs", scope: !78, file: !78, line: 735, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!78 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!79 = !DISubroutineType(types: !80)
!80 = !{!81, !81}
!81 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !83, line: 124)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !78, line: 62, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!85 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !86, line: 125)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !78, line: 70, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 66, size: 128, elements: !88, identifier: "_ZTS6ldiv_t")
!88 = !{!89, !91}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !87, file: !78, line: 68, baseType: !90, size: 64)
!90 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !87, file: !78, line: 69, baseType: !90, size: 64, offset: 64)
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !93, line: 127)
!93 = !DISubprogram(name: "abort", scope: !78, file: !78, line: 476, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!94 = !DISubroutineType(types: !95)
!95 = !{null}
!96 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !97, line: 128)
!97 = !DISubprogram(name: "atexit", scope: !78, file: !78, line: 480, type: !98, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!98 = !DISubroutineType(types: !99)
!99 = !{!81, !100}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !102, line: 131)
!102 = !DISubprogram(name: "at_quick_exit", scope: !78, file: !78, line: 485, type: !98, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !104, line: 134)
!104 = !DISubprogram(name: "atof", scope: !78, file: !78, line: 105, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !108}
!107 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !112, line: 135)
!112 = !DISubprogram(name: "atoi", scope: !78, file: !78, line: 108, type: !113, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!113 = !DISubroutineType(types: !114)
!114 = !{!81, !108}
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !116, line: 136)
!116 = !DISubprogram(name: "atol", scope: !78, file: !78, line: 111, type: !117, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!117 = !DISubroutineType(types: !118)
!118 = !{!90, !108}
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !120, line: 137)
!120 = !DISubprogram(name: "bsearch", scope: !78, file: !78, line: 715, type: !121, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !67, !67, !124, !124, !127}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !125, line: 62, baseType: !126)
!125 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!126 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !78, line: 702, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!81, !67, !67}
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !132, line: 138)
!132 = !DISubprogram(name: "calloc", scope: !78, file: !78, line: 429, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DISubroutineType(types: !134)
!134 = !{!123, !124, !124}
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !136, line: 139)
!136 = !DISubprogram(name: "div", scope: !78, file: !78, line: 749, type: !137, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DISubroutineType(types: !138)
!138 = !{!83, !81, !81}
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !140, line: 140)
!140 = !DISubprogram(name: "exit", scope: !78, file: !78, line: 504, type: !141, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !81}
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !144, line: 141)
!144 = !DISubprogram(name: "free", scope: !78, file: !78, line: 444, type: !145, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !123}
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !148, line: 142)
!148 = !DISubprogram(name: "getenv", scope: !78, file: !78, line: 525, type: !149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DISubroutineType(types: !150)
!150 = !{!151, !108}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !153, line: 143)
!153 = !DISubprogram(name: "labs", scope: !78, file: !78, line: 736, type: !154, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!154 = !DISubroutineType(types: !155)
!155 = !{!90, !90}
!156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !157, line: 144)
!157 = !DISubprogram(name: "ldiv", scope: !78, file: !78, line: 751, type: !158, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!158 = !DISubroutineType(types: !159)
!159 = !{!86, !90, !90}
!160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !161, line: 145)
!161 = !DISubprogram(name: "malloc", scope: !78, file: !78, line: 427, type: !162, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!162 = !DISubroutineType(types: !163)
!163 = !{!123, !124}
!164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !165, line: 147)
!165 = !DISubprogram(name: "mblen", scope: !78, file: !78, line: 823, type: !166, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!166 = !DISubroutineType(types: !167)
!167 = !{!81, !108, !124}
!168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !169, line: 148)
!169 = !DISubprogram(name: "mbstowcs", scope: !78, file: !78, line: 834, type: !170, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!170 = !DISubroutineType(types: !171)
!171 = !{!124, !172, !175, !124}
!172 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !108)
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !177, line: 149)
!177 = !DISubprogram(name: "mbtowc", scope: !78, file: !78, line: 826, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!178 = !DISubroutineType(types: !179)
!179 = !{!81, !172, !175, !124}
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !181, line: 151)
!181 = !DISubprogram(name: "qsort", scope: !78, file: !78, line: 725, type: !182, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !123, !124, !124, !127}
!184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !185, line: 154)
!185 = !DISubprogram(name: "quick_exit", scope: !78, file: !78, line: 510, type: !141, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !187, line: 157)
!187 = !DISubprogram(name: "rand", scope: !78, file: !78, line: 335, type: !188, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!188 = !DISubroutineType(types: !189)
!189 = !{!81}
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !191, line: 158)
!191 = !DISubprogram(name: "realloc", scope: !78, file: !78, line: 441, type: !192, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!192 = !DISubroutineType(types: !193)
!193 = !{!123, !123, !124}
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !195, line: 159)
!195 = !DISubprogram(name: "srand", scope: !78, file: !78, line: 337, type: !196, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !10}
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !199, line: 160)
!199 = !DISubprogram(name: "strtod", scope: !78, file: !78, line: 125, type: !200, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!200 = !DISubroutineType(types: !201)
!201 = !{!107, !175, !202}
!202 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !205, line: 161)
!205 = !DISubprogram(name: "strtol", scope: !78, file: !78, line: 144, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!206 = !DISubroutineType(types: !207)
!207 = !{!90, !175, !202, !81}
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !209, line: 162)
!209 = !DISubprogram(name: "strtoul", scope: !78, file: !78, line: 148, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!210 = !DISubroutineType(types: !211)
!211 = !{!126, !175, !202, !81}
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !213, line: 163)
!213 = !DISubprogram(name: "system", scope: !78, file: !78, line: 677, type: !113, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !215, line: 165)
!215 = !DISubprogram(name: "wcstombs", scope: !78, file: !78, line: 837, type: !216, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!216 = !DISubroutineType(types: !217)
!217 = !{!124, !218, !219, !124}
!218 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !151)
!219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !223, line: 166)
!223 = !DISubprogram(name: "wctomb", scope: !78, file: !78, line: 830, type: !224, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!224 = !DISubroutineType(types: !225)
!225 = !{!81, !151, !174}
!226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !228, line: 194)
!227 = !DINamespace(name: "__gnu_cxx", scope: null, file: !75, line: 255)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !78, line: 82, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 78, size: 128, elements: !230, identifier: "_ZTS7lldiv_t")
!230 = !{!231, !233}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !229, file: !78, line: 80, baseType: !232, size: 64)
!232 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !229, file: !78, line: 81, baseType: !232, size: 64, offset: 64)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !235, line: 200)
!235 = !DISubprogram(name: "_Exit", scope: !78, file: !78, line: 518, type: !141, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !237, line: 204)
!237 = !DISubprogram(name: "llabs", scope: !78, file: !78, line: 740, type: !238, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!238 = !DISubroutineType(types: !239)
!239 = !{!232, !232}
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !241, line: 210)
!241 = !DISubprogram(name: "lldiv", scope: !78, file: !78, line: 757, type: !242, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!242 = !DISubroutineType(types: !243)
!243 = !{!228, !232, !232}
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !245, line: 221)
!245 = !DISubprogram(name: "atoll", scope: !78, file: !78, line: 118, type: !246, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!246 = !DISubroutineType(types: !247)
!247 = !{!232, !108}
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !249, line: 222)
!249 = !DISubprogram(name: "strtoll", scope: !78, file: !78, line: 170, type: !250, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!250 = !DISubroutineType(types: !251)
!251 = !{!232, !175, !202, !81}
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !253, line: 223)
!253 = !DISubprogram(name: "strtoull", scope: !78, file: !78, line: 175, type: !254, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !175, !202, !81}
!256 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !258, line: 225)
!258 = !DISubprogram(name: "strtof", scope: !78, file: !78, line: 133, type: !259, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !175, !202}
!261 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !263, line: 226)
!263 = !DISubprogram(name: "strtold", scope: !78, file: !78, line: 136, type: !264, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !175, !202}
!266 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !228, line: 234)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !235, line: 236)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !237, line: 238)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !271, line: 239)
!271 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !227, file: !272, line: 207, type: !242, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!272 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/cstdlib", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !241, line: 240)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !245, line: 242)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !258, line: 243)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !249, line: 244)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !253, line: 245)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !263, line: 246)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !280, line: 57)
!280 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !282, file: !281, line: 79, size: 64, elements: !283, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!281 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/bits/exception_ptr.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!282 = !DINamespace(name: "__exception_ptr", scope: !74, file: !281, line: 52)
!283 = !{!284, !285, !289, !292, !293, !298, !299, !303, !308, !312, !316, !319, !320, !323, !327}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !280, file: !281, line: 81, baseType: !123, size: 64)
!285 = !DISubprogram(name: "exception_ptr", scope: !280, file: !281, line: 83, type: !286, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !288, !123}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!289 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !280, file: !281, line: 85, type: !290, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !288}
!292 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !280, file: !281, line: 86, type: !290, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!293 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !280, file: !281, line: 88, type: !294, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DISubroutineType(types: !295)
!295 = !{!123, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!298 = !DISubprogram(name: "exception_ptr", scope: !280, file: !281, line: 96, type: !290, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!299 = !DISubprogram(name: "exception_ptr", scope: !280, file: !281, line: 98, type: !300, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !288, !302}
!302 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !297, size: 64)
!303 = !DISubprogram(name: "exception_ptr", scope: !280, file: !281, line: 101, type: !304, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !288, !306}
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !74, file: !75, line: 235, baseType: !307)
!307 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!308 = !DISubprogram(name: "exception_ptr", scope: !280, file: !281, line: 105, type: !309, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !288, !311}
!311 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !280, size: 64)
!312 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !280, file: !281, line: 118, type: !313, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!313 = !DISubroutineType(types: !314)
!314 = !{!315, !288, !302}
!315 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !280, size: 64)
!316 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !280, file: !281, line: 122, type: !317, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!317 = !DISubroutineType(types: !318)
!318 = !{!315, !288, !311}
!319 = !DISubprogram(name: "~exception_ptr", scope: !280, file: !281, line: 129, type: !290, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!320 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !280, file: !281, line: 132, type: !321, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !288, !315}
!323 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !280, file: !281, line: 144, type: !324, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !296}
!326 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!327 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !280, file: !281, line: 153, type: !328, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!328 = !DISubroutineType(types: !329)
!329 = !{!330, !296}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !74, file: !333, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!333 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/typeinfo", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !282, entity: !335, line: 73)
!335 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !74, file: !281, line: 69, type: !336, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !280}
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !339, line: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !340, line: 106, baseType: !341)
!340 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !340, line: 94, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 82, size: 64, elements: !343, identifier: "_ZTS11__mbstate_t")
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !342, file: !340, line: 84, baseType: !81, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !342, file: !340, line: 93, baseType: !346, size: 32, offset: 32)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !340, line: 85, size: 32, elements: !347, identifier: "_ZTSN11__mbstate_tUt_E")
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !346, file: !340, line: 88, baseType: !10, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !346, file: !340, line: 92, baseType: !350, size: 32)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 32, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 4)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !354, line: 139)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !125, line: 132, baseType: !10)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !356, line: 141)
!356 = !DISubprogram(name: "btowc", scope: !340, file: !340, line: 356, type: !357, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!357 = !DISubroutineType(types: !358)
!358 = !{!354, !81}
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !360, line: 142)
!360 = !DISubprogram(name: "fgetwc", scope: !340, file: !340, line: 748, type: !361, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!361 = !DISubroutineType(types: !362)
!362 = !{!354, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !365, line: 64, baseType: !366)
!365 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !365, line: 44, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !368, line: 143)
!368 = !DISubprogram(name: "fgetws", scope: !340, file: !340, line: 777, type: !369, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!369 = !DISubroutineType(types: !370)
!370 = !{!173, !172, !81, !371}
!371 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !363)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !373, line: 144)
!373 = !DISubprogram(name: "fputwc", scope: !340, file: !340, line: 762, type: !374, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!374 = !DISubroutineType(types: !375)
!375 = !{!354, !174, !363}
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !377, line: 145)
!377 = !DISubprogram(name: "fputws", scope: !340, file: !340, line: 784, type: !378, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!378 = !DISubroutineType(types: !379)
!379 = !{!81, !219, !371}
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !381, line: 146)
!381 = !DISubprogram(name: "fwide", scope: !340, file: !340, line: 590, type: !382, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!382 = !DISubroutineType(types: !383)
!383 = !{!81, !363, !81}
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !385, line: 147)
!385 = !DISubprogram(name: "fwprintf", scope: !340, file: !340, line: 597, type: !386, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!386 = !DISubroutineType(types: !387)
!387 = !{!81, !371, !219, null}
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !389, line: 148)
!389 = !DISubprogram(name: "fwscanf", scope: !340, file: !340, line: 638, type: !386, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !391, line: 149)
!391 = !DISubprogram(name: "getwc", scope: !340, file: !340, line: 749, type: !361, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !393, line: 150)
!393 = !DISubprogram(name: "getwchar", scope: !340, file: !340, line: 755, type: !394, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!394 = !DISubroutineType(types: !395)
!395 = !{!354}
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !397, line: 151)
!397 = !DISubprogram(name: "mbrlen", scope: !340, file: !340, line: 379, type: !398, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!398 = !DISubroutineType(types: !399)
!399 = !{!124, !175, !124, !400}
!400 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !403, line: 152)
!403 = !DISubprogram(name: "mbrtowc", scope: !340, file: !340, line: 368, type: !404, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!404 = !DISubroutineType(types: !405)
!405 = !{!124, !172, !175, !124, !400}
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !407, line: 153)
!407 = !DISubprogram(name: "mbsinit", scope: !340, file: !340, line: 364, type: !408, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!408 = !DISubroutineType(types: !409)
!409 = !{!81, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !413, line: 154)
!413 = !DISubprogram(name: "mbsrtowcs", scope: !340, file: !340, line: 411, type: !414, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!414 = !DISubroutineType(types: !415)
!415 = !{!124, !172, !416, !124, !400}
!416 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !419, line: 155)
!419 = !DISubprogram(name: "putwc", scope: !340, file: !340, line: 763, type: !374, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !421, line: 156)
!421 = !DISubprogram(name: "putwchar", scope: !340, file: !340, line: 769, type: !422, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!422 = !DISubroutineType(types: !423)
!423 = !{!354, !174}
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !425, line: 158)
!425 = !DISubprogram(name: "swprintf", scope: !340, file: !340, line: 607, type: !426, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!426 = !DISubroutineType(types: !427)
!427 = !{!81, !172, !124, !219, null}
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !429, line: 160)
!429 = !DISubprogram(name: "swscanf", scope: !340, file: !340, line: 648, type: !430, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!430 = !DISubroutineType(types: !431)
!431 = !{!81, !219, !219, null}
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !433, line: 161)
!433 = !DISubprogram(name: "ungetwc", scope: !340, file: !340, line: 792, type: !434, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!434 = !DISubroutineType(types: !435)
!435 = !{!354, !354, !363}
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !437, line: 162)
!437 = !DISubprogram(name: "vfwprintf", scope: !340, file: !340, line: 615, type: !438, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!438 = !DISubroutineType(types: !439)
!439 = !{!81, !371, !219, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !2, size: 192, elements: !442, identifier: "_ZTS13__va_list_tag")
!442 = !{!443, !444, !445, !446}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !441, file: !2, baseType: !10, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !441, file: !2, baseType: !10, size: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !441, file: !2, baseType: !123, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !441, file: !2, baseType: !123, size: 64, offset: 128)
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !448, line: 164)
!448 = !DISubprogram(name: "vfwscanf", scope: !340, file: !340, line: 692, type: !438, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !450, line: 167)
!450 = !DISubprogram(name: "vswprintf", scope: !340, file: !340, line: 628, type: !451, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!451 = !DISubroutineType(types: !452)
!452 = !{!81, !172, !124, !219, !440}
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !454, line: 170)
!454 = !DISubprogram(name: "vswscanf", scope: !340, file: !340, line: 704, type: !455, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!455 = !DISubroutineType(types: !456)
!456 = !{!81, !219, !219, !440}
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !458, line: 172)
!458 = !DISubprogram(name: "vwprintf", scope: !340, file: !340, line: 623, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!459 = !DISubroutineType(types: !460)
!460 = !{!81, !219, !440}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !462, line: 174)
!462 = !DISubprogram(name: "vwscanf", scope: !340, file: !340, line: 700, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !464, line: 176)
!464 = !DISubprogram(name: "wcrtomb", scope: !340, file: !340, line: 373, type: !465, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!465 = !DISubroutineType(types: !466)
!466 = !{!124, !218, !174, !400}
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !468, line: 177)
!468 = !DISubprogram(name: "wcscat", scope: !340, file: !340, line: 157, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!469 = !DISubroutineType(types: !470)
!470 = !{!173, !172, !219}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !472, line: 178)
!472 = !DISubprogram(name: "wcscmp", scope: !340, file: !340, line: 166, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!473 = !DISubroutineType(types: !474)
!474 = !{!81, !220, !220}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !476, line: 179)
!476 = !DISubprogram(name: "wcscoll", scope: !340, file: !340, line: 195, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !478, line: 180)
!478 = !DISubprogram(name: "wcscpy", scope: !340, file: !340, line: 147, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !480, line: 181)
!480 = !DISubprogram(name: "wcscspn", scope: !340, file: !340, line: 255, type: !481, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!481 = !DISubroutineType(types: !482)
!482 = !{!124, !220, !220}
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !484, line: 182)
!484 = !DISubprogram(name: "wcsftime", scope: !340, file: !340, line: 858, type: !485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DISubroutineType(types: !486)
!486 = !{!124, !172, !124, !219, !487}
!487 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !340, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !492, line: 183)
!492 = !DISubprogram(name: "wcslen", scope: !340, file: !340, line: 290, type: !493, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!493 = !DISubroutineType(types: !494)
!494 = !{!124, !220}
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !496, line: 184)
!496 = !DISubprogram(name: "wcsncat", scope: !340, file: !340, line: 161, type: !497, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!497 = !DISubroutineType(types: !498)
!498 = !{!173, !172, !219, !124}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !500, line: 185)
!500 = !DISubprogram(name: "wcsncmp", scope: !340, file: !340, line: 169, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!501 = !DISubroutineType(types: !502)
!502 = !{!81, !220, !220, !124}
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !504, line: 186)
!504 = !DISubprogram(name: "wcsncpy", scope: !340, file: !340, line: 152, type: !497, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !506, line: 187)
!506 = !DISubprogram(name: "wcsrtombs", scope: !340, file: !340, line: 417, type: !507, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!507 = !DISubroutineType(types: !508)
!508 = !{!124, !218, !509, !124, !400}
!509 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !512, line: 188)
!512 = !DISubprogram(name: "wcsspn", scope: !340, file: !340, line: 259, type: !481, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !514, line: 189)
!514 = !DISubprogram(name: "wcstod", scope: !340, file: !340, line: 453, type: !515, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!515 = !DISubroutineType(types: !516)
!516 = !{!107, !219, !517}
!517 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !520, line: 191)
!520 = !DISubprogram(name: "wcstof", scope: !340, file: !340, line: 460, type: !521, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!521 = !DISubroutineType(types: !522)
!522 = !{!261, !219, !517}
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !524, line: 193)
!524 = !DISubprogram(name: "wcstok", scope: !340, file: !340, line: 285, type: !525, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!525 = !DISubroutineType(types: !526)
!526 = !{!173, !172, !219, !517}
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !528, line: 194)
!528 = !DISubprogram(name: "wcstol", scope: !340, file: !340, line: 471, type: !529, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!529 = !DISubroutineType(types: !530)
!530 = !{!90, !219, !517, !81}
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !532, line: 195)
!532 = !DISubprogram(name: "wcstoul", scope: !340, file: !340, line: 476, type: !533, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!533 = !DISubroutineType(types: !534)
!534 = !{!126, !219, !517, !81}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !536, line: 196)
!536 = !DISubprogram(name: "wcsxfrm", scope: !340, file: !340, line: 199, type: !537, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!537 = !DISubroutineType(types: !538)
!538 = !{!124, !172, !219, !124}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !540, line: 197)
!540 = !DISubprogram(name: "wctob", scope: !340, file: !340, line: 360, type: !541, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!541 = !DISubroutineType(types: !542)
!542 = !{!81, !354}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !544, line: 198)
!544 = !DISubprogram(name: "wmemcmp", scope: !340, file: !340, line: 328, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !546, line: 199)
!546 = !DISubprogram(name: "wmemcpy", scope: !340, file: !340, line: 332, type: !497, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !548, line: 200)
!548 = !DISubprogram(name: "wmemmove", scope: !340, file: !340, line: 337, type: !549, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!549 = !DISubroutineType(types: !550)
!550 = !{!173, !173, !220, !124}
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !552, line: 201)
!552 = !DISubprogram(name: "wmemset", scope: !340, file: !340, line: 341, type: !553, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!553 = !DISubroutineType(types: !554)
!554 = !{!173, !173, !174, !124}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !556, line: 202)
!556 = !DISubprogram(name: "wprintf", scope: !340, file: !340, line: 604, type: !557, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!557 = !DISubroutineType(types: !558)
!558 = !{!81, !219, null}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !560, line: 203)
!560 = !DISubprogram(name: "wscanf", scope: !340, file: !340, line: 645, type: !557, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !562, line: 204)
!562 = !DISubprogram(name: "wcschr", scope: !340, file: !340, line: 230, type: !563, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!563 = !DISubroutineType(types: !564)
!564 = !{!173, !220, !174}
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !566, line: 205)
!566 = !DISubprogram(name: "wcspbrk", scope: !340, file: !340, line: 269, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!567 = !DISubroutineType(types: !568)
!568 = !{!173, !220, !220}
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !570, line: 206)
!570 = !DISubprogram(name: "wcsrchr", scope: !340, file: !340, line: 240, type: !563, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !572, line: 207)
!572 = !DISubprogram(name: "wcsstr", scope: !340, file: !340, line: 280, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !574, line: 208)
!574 = !DISubprogram(name: "wmemchr", scope: !340, file: !340, line: 323, type: !575, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!575 = !DISubroutineType(types: !576)
!576 = !{!173, !220, !174, !124}
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !578, line: 248)
!578 = !DISubprogram(name: "wcstold", scope: !340, file: !340, line: 462, type: !579, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!579 = !DISubroutineType(types: !580)
!580 = !{!266, !219, !517}
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !582, line: 257)
!582 = !DISubprogram(name: "wcstoll", scope: !340, file: !340, line: 486, type: !583, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!583 = !DISubroutineType(types: !584)
!584 = !{!232, !219, !517, !81}
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !586, line: 258)
!586 = !DISubprogram(name: "wcstoull", scope: !340, file: !340, line: 493, type: !587, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!587 = !DISubroutineType(types: !588)
!588 = !{!256, !219, !517, !81}
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !578, line: 264)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !582, line: 265)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !586, line: 266)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !520, line: 280)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !448, line: 283)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !454, line: 286)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !462, line: 289)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !578, line: 293)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !582, line: 294)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !586, line: 295)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !600, line: 48)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !601, line: 194, baseType: !602)
!601 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!602 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !604, line: 49)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !601, line: 195, baseType: !605)
!605 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !607, line: 50)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !601, line: 196, baseType: !81)
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !609, line: 51)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !601, line: 197, baseType: !90)
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !611, line: 53)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !9, line: 245, baseType: !600)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !613, line: 54)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !9, line: 228, baseType: !604)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !615, line: 55)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !9, line: 197, baseType: !607)
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !617, line: 56)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !9, line: 123, baseType: !609)
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !619, line: 58)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !9, line: 243, baseType: !600)
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !621, line: 59)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !9, line: 226, baseType: !604)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !623, line: 60)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !9, line: 195, baseType: !607)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !625, line: 61)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !9, line: 121, baseType: !609)
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !627, line: 63)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !9, line: 276, baseType: !90)
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !629, line: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !9, line: 263, baseType: !609)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !61, line: 66)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !27, line: 67)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !8, line: 68)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !634, line: 69)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 109, baseType: !126)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !636, line: 71)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !9, line: 246, baseType: !61)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !638, line: 72)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !9, line: 229, baseType: !27)
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !640, line: 73)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !9, line: 198, baseType: !8)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !642, line: 74)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !9, line: 124, baseType: !634)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !644, line: 76)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !9, line: 244, baseType: !61)
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !646, line: 77)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !9, line: 227, baseType: !27)
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !648, line: 78)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !9, line: 196, baseType: !8)
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !650, line: 79)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !9, line: 122, baseType: !634)
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !652, line: 81)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !9, line: 277, baseType: !126)
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !654, line: 82)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 270, baseType: !634)
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !656, line: 44)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !74, file: !75, line: 231, baseType: !126)
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !658, line: 45)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !74, file: !75, line: 232, baseType: !90)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !660, line: 53)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !661, line: 53, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!661 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !663, line: 54)
!663 = !DISubprogram(name: "setlocale", scope: !661, file: !661, line: 124, type: !664, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!664 = !DISubroutineType(types: !665)
!665 = !{!151, !81, !108}
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !667, line: 55)
!667 = !DISubprogram(name: "localeconv", scope: !661, file: !661, line: 127, type: !668, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!668 = !DISubroutineType(types: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !672, line: 64)
!672 = !DISubprogram(name: "isalnum", scope: !673, file: !673, line: 110, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!673 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !675, line: 65)
!675 = !DISubprogram(name: "isalpha", scope: !673, file: !673, line: 111, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !677, line: 66)
!677 = !DISubprogram(name: "iscntrl", scope: !673, file: !673, line: 112, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !679, line: 67)
!679 = !DISubprogram(name: "isdigit", scope: !673, file: !673, line: 113, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !681, line: 68)
!681 = !DISubprogram(name: "isgraph", scope: !673, file: !673, line: 115, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !683, line: 69)
!683 = !DISubprogram(name: "islower", scope: !673, file: !673, line: 114, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !685, line: 70)
!685 = !DISubprogram(name: "isprint", scope: !673, file: !673, line: 116, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !687, line: 71)
!687 = !DISubprogram(name: "ispunct", scope: !673, file: !673, line: 117, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !689, line: 72)
!689 = !DISubprogram(name: "isspace", scope: !673, file: !673, line: 118, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !691, line: 73)
!691 = !DISubprogram(name: "isupper", scope: !673, file: !673, line: 119, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !693, line: 74)
!693 = !DISubprogram(name: "isxdigit", scope: !673, file: !673, line: 120, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !695, line: 75)
!695 = !DISubprogram(name: "tolower", scope: !673, file: !673, line: 124, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !697, line: 76)
!697 = !DISubprogram(name: "toupper", scope: !673, file: !673, line: 127, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !699, line: 87)
!699 = !DISubprogram(name: "isblank", scope: !673, file: !673, line: 136, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !701, line: 98)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !365, line: 48, baseType: !366)
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !703, line: 99)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !365, line: 112, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !705, line: 25, baseType: !706)
!705 = !DIFile(filename: "/usr/include/_G_config.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !705, line: 21, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !708, line: 101)
!708 = !DISubprogram(name: "clearerr", scope: !365, file: !365, line: 828, type: !709, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !713, line: 102)
!713 = !DISubprogram(name: "fclose", scope: !365, file: !365, line: 239, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!714 = !DISubroutineType(types: !715)
!715 = !{!81, !711}
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !717, line: 103)
!717 = !DISubprogram(name: "feof", scope: !365, file: !365, line: 830, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !719, line: 104)
!719 = !DISubprogram(name: "ferror", scope: !365, file: !365, line: 832, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !721, line: 105)
!721 = !DISubprogram(name: "fflush", scope: !365, file: !365, line: 244, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !723, line: 106)
!723 = !DISubprogram(name: "fgetc", scope: !365, file: !365, line: 533, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !725, line: 107)
!725 = !DISubprogram(name: "fgetpos", scope: !365, file: !365, line: 800, type: !726, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!726 = !DISubroutineType(types: !727)
!727 = !{!81, !728, !729}
!728 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !711)
!729 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !732, line: 108)
!732 = !DISubprogram(name: "fgets", scope: !365, file: !365, line: 624, type: !733, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!733 = !DISubroutineType(types: !734)
!734 = !{!151, !218, !81, !728}
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !736, line: 109)
!736 = !DISubprogram(name: "fopen", scope: !365, file: !365, line: 274, type: !737, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!737 = !DISubroutineType(types: !738)
!738 = !{!711, !175, !175}
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !740, line: 110)
!740 = !DISubprogram(name: "fprintf", scope: !365, file: !365, line: 358, type: !741, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!741 = !DISubroutineType(types: !742)
!742 = !{!81, !728, !175, null}
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !744, line: 111)
!744 = !DISubprogram(name: "fputc", scope: !365, file: !365, line: 575, type: !745, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!745 = !DISubroutineType(types: !746)
!746 = !{!81, !81, !711}
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !748, line: 112)
!748 = !DISubprogram(name: "fputs", scope: !365, file: !365, line: 691, type: !749, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!749 = !DISubroutineType(types: !750)
!750 = !{!81, !175, !728}
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !752, line: 113)
!752 = !DISubprogram(name: "fread", scope: !365, file: !365, line: 711, type: !753, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!753 = !DISubroutineType(types: !754)
!754 = !{!124, !755, !124, !124, !728}
!755 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !123)
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !757, line: 114)
!757 = !DISubprogram(name: "freopen", scope: !365, file: !365, line: 280, type: !758, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!758 = !DISubroutineType(types: !759)
!759 = !{!711, !175, !175, !728}
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !761, line: 115)
!761 = !DISubprogram(name: "fscanf", scope: !365, file: !365, line: 427, type: !741, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !763, line: 116)
!763 = !DISubprogram(name: "fseek", scope: !365, file: !365, line: 751, type: !764, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!764 = !DISubroutineType(types: !765)
!765 = !{!81, !711, !90, !81}
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !767, line: 117)
!767 = !DISubprogram(name: "fsetpos", scope: !365, file: !365, line: 805, type: !768, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!768 = !DISubroutineType(types: !769)
!769 = !{!81, !711, !770}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !773, line: 118)
!773 = !DISubprogram(name: "ftell", scope: !365, file: !365, line: 756, type: !774, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!774 = !DISubroutineType(types: !775)
!775 = !{!90, !711}
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !777, line: 119)
!777 = !DISubprogram(name: "fwrite", scope: !365, file: !365, line: 717, type: !778, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!778 = !DISubroutineType(types: !779)
!779 = !{!124, !780, !124, !124, !728}
!780 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !782, line: 120)
!782 = !DISubprogram(name: "getc", scope: !365, file: !365, line: 534, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !784, line: 121)
!784 = !DISubprogram(name: "getchar", scope: !365, file: !365, line: 540, type: !188, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !786, line: 124)
!786 = !DISubprogram(name: "gets", scope: !365, file: !365, line: 640, type: !787, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!787 = !DISubroutineType(types: !788)
!788 = !{!151, !151}
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !790, line: 126)
!790 = !DISubprogram(name: "perror", scope: !365, file: !365, line: 848, type: !791, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !108}
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !794, line: 127)
!794 = !DISubprogram(name: "printf", scope: !365, file: !365, line: 364, type: !795, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!795 = !DISubroutineType(types: !796)
!796 = !{!81, !175, null}
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !798, line: 128)
!798 = !DISubprogram(name: "putc", scope: !365, file: !365, line: 576, type: !745, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !800, line: 129)
!800 = !DISubprogram(name: "putchar", scope: !365, file: !365, line: 582, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !802, line: 130)
!802 = !DISubprogram(name: "puts", scope: !365, file: !365, line: 697, type: !113, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !804, line: 131)
!804 = !DISubprogram(name: "remove", scope: !365, file: !365, line: 180, type: !113, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !806, line: 132)
!806 = !DISubprogram(name: "rename", scope: !365, file: !365, line: 182, type: !807, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!807 = !DISubroutineType(types: !808)
!808 = !{!81, !108, !108}
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !810, line: 133)
!810 = !DISubprogram(name: "rewind", scope: !365, file: !365, line: 761, type: !709, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !812, line: 134)
!812 = !DISubprogram(name: "scanf", scope: !365, file: !365, line: 433, type: !795, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !814, line: 135)
!814 = !DISubprogram(name: "setbuf", scope: !365, file: !365, line: 334, type: !815, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !728, !218}
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !818, line: 136)
!818 = !DISubprogram(name: "setvbuf", scope: !365, file: !365, line: 338, type: !819, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!819 = !DISubroutineType(types: !820)
!820 = !{!81, !728, !218, !81, !124}
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !822, line: 137)
!822 = !DISubprogram(name: "sprintf", scope: !365, file: !365, line: 366, type: !823, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!823 = !DISubroutineType(types: !824)
!824 = !{!81, !218, !175, null}
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !826, line: 138)
!826 = !DISubprogram(name: "sscanf", scope: !365, file: !365, line: 435, type: !827, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!827 = !DISubroutineType(types: !828)
!828 = !{!81, !175, !175, null}
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !830, line: 139)
!830 = !DISubprogram(name: "tmpfile", scope: !365, file: !365, line: 197, type: !831, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!831 = !DISubroutineType(types: !832)
!832 = !{!711}
!833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !834, line: 141)
!834 = !DISubprogram(name: "tmpnam", scope: !365, file: !365, line: 211, type: !787, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !836, line: 143)
!836 = !DISubprogram(name: "ungetc", scope: !365, file: !365, line: 704, type: !745, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !838, line: 144)
!838 = !DISubprogram(name: "vfprintf", scope: !365, file: !365, line: 373, type: !839, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!839 = !DISubroutineType(types: !840)
!840 = !{!81, !728, !175, !440}
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !842, line: 145)
!842 = !DISubprogram(name: "vprintf", scope: !365, file: !365, line: 379, type: !843, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!843 = !DISubroutineType(types: !844)
!844 = !{!81, !175, !440}
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !846, line: 146)
!846 = !DISubprogram(name: "vsprintf", scope: !365, file: !365, line: 381, type: !847, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!847 = !DISubroutineType(types: !848)
!848 = !{!81, !218, !175, !440}
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !850, line: 175)
!850 = !DISubprogram(name: "snprintf", scope: !365, file: !365, line: 388, type: !851, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!851 = !DISubroutineType(types: !852)
!852 = !{!81, !218, !124, !175, null}
!853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !854, line: 176)
!854 = !DISubprogram(name: "vfscanf", scope: !365, file: !365, line: 473, type: !839, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !856, line: 177)
!856 = !DISubprogram(name: "vscanf", scope: !365, file: !365, line: 481, type: !843, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !858, line: 178)
!858 = !DISubprogram(name: "vsnprintf", scope: !365, file: !365, line: 392, type: !859, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!859 = !DISubroutineType(types: !860)
!860 = !{!81, !218, !124, !175, !440}
!861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !227, entity: !862, line: 179)
!862 = !DISubprogram(name: "vsscanf", scope: !365, file: !365, line: 485, type: !863, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!863 = !DISubroutineType(types: !864)
!864 = !{!81, !175, !175, !440}
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !850, line: 185)
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !854, line: 186)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !856, line: 187)
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !858, line: 188)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !862, line: 189)
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !871, line: 83)
!871 = !DISubprogram(name: "acos", scope: !872, file: !872, line: 54, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!872 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!873 = !DISubroutineType(types: !874)
!874 = !{!107, !107}
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !876, line: 102)
!876 = !DISubprogram(name: "asin", scope: !872, file: !872, line: 56, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !878, line: 121)
!878 = !DISubprogram(name: "atan", scope: !872, file: !872, line: 58, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !880, line: 140)
!880 = !DISubprogram(name: "atan2", scope: !872, file: !872, line: 60, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!881 = !DISubroutineType(types: !882)
!882 = !{!107, !107, !107}
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !884, line: 161)
!884 = !DISubprogram(name: "ceil", scope: !872, file: !872, line: 178, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !886, line: 180)
!886 = !DISubprogram(name: "cos", scope: !872, file: !872, line: 63, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !888, line: 199)
!888 = !DISubprogram(name: "cosh", scope: !872, file: !872, line: 72, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !890, line: 218)
!890 = !DISubprogram(name: "exp", scope: !872, file: !872, line: 100, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !892, line: 237)
!892 = !DISubprogram(name: "fabs", scope: !872, file: !872, line: 181, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !894, line: 256)
!894 = !DISubprogram(name: "floor", scope: !872, file: !872, line: 184, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !896, line: 275)
!896 = !DISubprogram(name: "fmod", scope: !872, file: !872, line: 187, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !898, line: 296)
!898 = !DISubprogram(name: "frexp", scope: !872, file: !872, line: 103, type: !899, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!899 = !DISubroutineType(types: !900)
!900 = !{!107, !107, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !903, line: 315)
!903 = !DISubprogram(name: "ldexp", scope: !872, file: !872, line: 106, type: !904, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!904 = !DISubroutineType(types: !905)
!905 = !{!107, !107, !81}
!906 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !907, line: 334)
!907 = !DISubprogram(name: "log", scope: !872, file: !872, line: 109, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !909, line: 353)
!909 = !DISubprogram(name: "log10", scope: !872, file: !872, line: 112, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !911, line: 372)
!911 = !DISubprogram(name: "modf", scope: !872, file: !872, line: 115, type: !912, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!912 = !DISubroutineType(types: !913)
!913 = !{!107, !107, !914}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !916, line: 384)
!916 = !DISubprogram(name: "pow", scope: !872, file: !872, line: 153, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !918, line: 421)
!918 = !DISubprogram(name: "sin", scope: !872, file: !872, line: 65, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !920, line: 440)
!920 = !DISubprogram(name: "sinh", scope: !872, file: !872, line: 74, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !922, line: 459)
!922 = !DISubprogram(name: "sqrt", scope: !872, file: !872, line: 156, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !924, line: 478)
!924 = !DISubprogram(name: "tan", scope: !872, file: !872, line: 67, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !926, line: 497)
!926 = !DISubprogram(name: "tanh", scope: !872, file: !872, line: 76, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !928, line: 1080)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !929, line: 29, baseType: !107)
!929 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathdef.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !931, line: 1081)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !929, line: 28, baseType: !261)
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !933, line: 1084)
!933 = !DISubprogram(name: "acosh", scope: !872, file: !872, line: 88, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !935, line: 1085)
!935 = !DISubprogram(name: "acoshf", scope: !872, file: !872, line: 88, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!936 = !DISubroutineType(types: !937)
!937 = !{!261, !261}
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !939, line: 1086)
!939 = !DISubprogram(name: "acoshl", scope: !872, file: !872, line: 88, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!940 = !DISubroutineType(types: !941)
!941 = !{!266, !266}
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !943, line: 1088)
!943 = !DISubprogram(name: "asinh", scope: !872, file: !872, line: 90, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !945, line: 1089)
!945 = !DISubprogram(name: "asinhf", scope: !872, file: !872, line: 90, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !947, line: 1090)
!947 = !DISubprogram(name: "asinhl", scope: !872, file: !872, line: 90, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !949, line: 1092)
!949 = !DISubprogram(name: "atanh", scope: !872, file: !872, line: 92, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !951, line: 1093)
!951 = !DISubprogram(name: "atanhf", scope: !872, file: !872, line: 92, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !953, line: 1094)
!953 = !DISubprogram(name: "atanhl", scope: !872, file: !872, line: 92, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !955, line: 1096)
!955 = !DISubprogram(name: "cbrt", scope: !872, file: !872, line: 169, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !957, line: 1097)
!957 = !DISubprogram(name: "cbrtf", scope: !872, file: !872, line: 169, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !959, line: 1098)
!959 = !DISubprogram(name: "cbrtl", scope: !872, file: !872, line: 169, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !961, line: 1100)
!961 = !DISubprogram(name: "copysign", scope: !872, file: !872, line: 221, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !963, line: 1101)
!963 = !DISubprogram(name: "copysignf", scope: !872, file: !872, line: 221, type: !964, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!964 = !DISubroutineType(types: !965)
!965 = !{!261, !261, !261}
!966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !967, line: 1102)
!967 = !DISubprogram(name: "copysignl", scope: !872, file: !872, line: 221, type: !968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!968 = !DISubroutineType(types: !969)
!969 = !{!266, !266, !266}
!970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !971, line: 1104)
!971 = !DISubprogram(name: "erf", scope: !872, file: !872, line: 259, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!972 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !973, line: 1105)
!973 = !DISubprogram(name: "erff", scope: !872, file: !872, line: 259, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !975, line: 1106)
!975 = !DISubprogram(name: "erfl", scope: !872, file: !872, line: 259, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !977, line: 1108)
!977 = !DISubprogram(name: "erfc", scope: !872, file: !872, line: 260, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!978 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !979, line: 1109)
!979 = !DISubprogram(name: "erfcf", scope: !872, file: !872, line: 260, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!980 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !981, line: 1110)
!981 = !DISubprogram(name: "erfcl", scope: !872, file: !872, line: 260, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!982 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !983, line: 1112)
!983 = !DISubprogram(name: "exp2", scope: !872, file: !872, line: 141, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !985, line: 1113)
!985 = !DISubprogram(name: "exp2f", scope: !872, file: !872, line: 141, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!986 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !987, line: 1114)
!987 = !DISubprogram(name: "exp2l", scope: !872, file: !872, line: 141, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !989, line: 1116)
!989 = !DISubprogram(name: "expm1", scope: !872, file: !872, line: 128, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !991, line: 1117)
!991 = !DISubprogram(name: "expm1f", scope: !872, file: !872, line: 128, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !993, line: 1118)
!993 = !DISubprogram(name: "expm1l", scope: !872, file: !872, line: 128, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !995, line: 1120)
!995 = !DISubprogram(name: "fdim", scope: !872, file: !872, line: 354, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !997, line: 1121)
!997 = !DISubprogram(name: "fdimf", scope: !872, file: !872, line: 354, type: !964, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !999, line: 1122)
!999 = !DISubprogram(name: "fdiml", scope: !872, file: !872, line: 354, type: !968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1001, line: 1124)
!1001 = !DISubprogram(name: "fma", scope: !872, file: !872, line: 373, type: !1002, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!107, !107, !107, !107}
!1004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1005, line: 1125)
!1005 = !DISubprogram(name: "fmaf", scope: !872, file: !872, line: 373, type: !1006, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!261, !261, !261, !261}
!1008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1009, line: 1126)
!1009 = !DISubprogram(name: "fmal", scope: !872, file: !872, line: 373, type: !1010, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!266, !266, !266, !266}
!1012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1013, line: 1128)
!1013 = !DISubprogram(name: "fmax", scope: !872, file: !872, line: 357, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1015, line: 1129)
!1015 = !DISubprogram(name: "fmaxf", scope: !872, file: !872, line: 357, type: !964, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1017, line: 1130)
!1017 = !DISubprogram(name: "fmaxl", scope: !872, file: !872, line: 357, type: !968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1019, line: 1132)
!1019 = !DISubprogram(name: "fmin", scope: !872, file: !872, line: 360, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1021, line: 1133)
!1021 = !DISubprogram(name: "fminf", scope: !872, file: !872, line: 360, type: !964, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1023, line: 1134)
!1023 = !DISubprogram(name: "fminl", scope: !872, file: !872, line: 360, type: !968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1025, line: 1136)
!1025 = !DISubprogram(name: "hypot", scope: !872, file: !872, line: 162, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1027, line: 1137)
!1027 = !DISubprogram(name: "hypotf", scope: !872, file: !872, line: 162, type: !964, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1029, line: 1138)
!1029 = !DISubprogram(name: "hypotl", scope: !872, file: !872, line: 162, type: !968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1031, line: 1140)
!1031 = !DISubprogram(name: "ilogb", scope: !872, file: !872, line: 313, type: !1032, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!81, !107}
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1035, line: 1141)
!1035 = !DISubprogram(name: "ilogbf", scope: !872, file: !872, line: 313, type: !1036, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!81, !261}
!1038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1039, line: 1142)
!1039 = !DISubprogram(name: "ilogbl", scope: !872, file: !872, line: 313, type: !1040, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!81, !266}
!1042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1043, line: 1144)
!1043 = !DISubprogram(name: "lgamma", scope: !872, file: !872, line: 261, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1045, line: 1145)
!1045 = !DISubprogram(name: "lgammaf", scope: !872, file: !872, line: 261, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1046 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1047, line: 1146)
!1047 = !DISubprogram(name: "lgammal", scope: !872, file: !872, line: 261, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1049, line: 1149)
!1049 = !DISubprogram(name: "llrint", scope: !872, file: !872, line: 344, type: !1050, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!232, !107}
!1052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1053, line: 1150)
!1053 = !DISubprogram(name: "llrintf", scope: !872, file: !872, line: 344, type: !1054, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!232, !261}
!1056 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1057, line: 1151)
!1057 = !DISubprogram(name: "llrintl", scope: !872, file: !872, line: 344, type: !1058, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!232, !266}
!1060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1061, line: 1153)
!1061 = !DISubprogram(name: "llround", scope: !872, file: !872, line: 350, type: !1050, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1062 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1063, line: 1154)
!1063 = !DISubprogram(name: "llroundf", scope: !872, file: !872, line: 350, type: !1054, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1064 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1065, line: 1155)
!1065 = !DISubprogram(name: "llroundl", scope: !872, file: !872, line: 350, type: !1058, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1066 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1067, line: 1158)
!1067 = !DISubprogram(name: "log1p", scope: !872, file: !872, line: 131, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1069, line: 1159)
!1069 = !DISubprogram(name: "log1pf", scope: !872, file: !872, line: 131, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1070 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1071, line: 1160)
!1071 = !DISubprogram(name: "log1pl", scope: !872, file: !872, line: 131, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1073, line: 1162)
!1073 = !DISubprogram(name: "log2", scope: !872, file: !872, line: 144, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1075, line: 1163)
!1075 = !DISubprogram(name: "log2f", scope: !872, file: !872, line: 144, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1076 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1077, line: 1164)
!1077 = !DISubprogram(name: "log2l", scope: !872, file: !872, line: 144, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1079, line: 1166)
!1079 = !DISubprogram(name: "logb", scope: !872, file: !872, line: 134, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1080 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1081, line: 1167)
!1081 = !DISubprogram(name: "logbf", scope: !872, file: !872, line: 134, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1083, line: 1168)
!1083 = !DISubprogram(name: "logbl", scope: !872, file: !872, line: 134, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1085, line: 1170)
!1085 = !DISubprogram(name: "lrint", scope: !872, file: !872, line: 342, type: !1086, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!90, !107}
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1089, line: 1171)
!1089 = !DISubprogram(name: "lrintf", scope: !872, file: !872, line: 342, type: !1090, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!90, !261}
!1092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1093, line: 1172)
!1093 = !DISubprogram(name: "lrintl", scope: !872, file: !872, line: 342, type: !1094, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!90, !266}
!1096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1097, line: 1174)
!1097 = !DISubprogram(name: "lround", scope: !872, file: !872, line: 348, type: !1086, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1098 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1099, line: 1175)
!1099 = !DISubprogram(name: "lroundf", scope: !872, file: !872, line: 348, type: !1090, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1101, line: 1176)
!1101 = !DISubprogram(name: "lroundl", scope: !872, file: !872, line: 348, type: !1094, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1103, line: 1178)
!1103 = !DISubprogram(name: "nan", scope: !872, file: !872, line: 228, type: !105, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1105, line: 1179)
!1105 = !DISubprogram(name: "nanf", scope: !872, file: !872, line: 228, type: !1106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!261, !108}
!1108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1109, line: 1180)
!1109 = !DISubprogram(name: "nanl", scope: !872, file: !872, line: 228, type: !1110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!266, !108}
!1112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1113, line: 1182)
!1113 = !DISubprogram(name: "nearbyint", scope: !872, file: !872, line: 322, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1115, line: 1183)
!1115 = !DISubprogram(name: "nearbyintf", scope: !872, file: !872, line: 322, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1117, line: 1184)
!1117 = !DISubprogram(name: "nearbyintl", scope: !872, file: !872, line: 322, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1119, line: 1186)
!1119 = !DISubprogram(name: "nextafter", scope: !872, file: !872, line: 292, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1121, line: 1187)
!1121 = !DISubprogram(name: "nextafterf", scope: !872, file: !872, line: 292, type: !964, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1123, line: 1188)
!1123 = !DISubprogram(name: "nextafterl", scope: !872, file: !872, line: 292, type: !968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1125, line: 1190)
!1125 = !DISubprogram(name: "nexttoward", scope: !872, file: !872, line: 294, type: !1126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!107, !107, !266}
!1128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1129, line: 1191)
!1129 = !DISubprogram(name: "nexttowardf", scope: !872, file: !872, line: 294, type: !1130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!261, !261, !266}
!1132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1133, line: 1192)
!1133 = !DISubprogram(name: "nexttowardl", scope: !872, file: !872, line: 294, type: !968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1135, line: 1194)
!1135 = !DISubprogram(name: "remainder", scope: !872, file: !872, line: 305, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1137, line: 1195)
!1137 = !DISubprogram(name: "remainderf", scope: !872, file: !872, line: 305, type: !964, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1139, line: 1196)
!1139 = !DISubprogram(name: "remainderl", scope: !872, file: !872, line: 305, type: !968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1141, line: 1198)
!1141 = !DISubprogram(name: "remquo", scope: !872, file: !872, line: 335, type: !1142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!107, !107, !107, !901}
!1144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1145, line: 1199)
!1145 = !DISubprogram(name: "remquof", scope: !872, file: !872, line: 335, type: !1146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!261, !261, !261, !901}
!1148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1149, line: 1200)
!1149 = !DISubprogram(name: "remquol", scope: !872, file: !872, line: 335, type: !1150, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!266, !266, !266, !901}
!1152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1153, line: 1202)
!1153 = !DISubprogram(name: "rint", scope: !872, file: !872, line: 289, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1155, line: 1203)
!1155 = !DISubprogram(name: "rintf", scope: !872, file: !872, line: 289, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1157, line: 1204)
!1157 = !DISubprogram(name: "rintl", scope: !872, file: !872, line: 289, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1159, line: 1206)
!1159 = !DISubprogram(name: "round", scope: !872, file: !872, line: 326, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1161, line: 1207)
!1161 = !DISubprogram(name: "roundf", scope: !872, file: !872, line: 326, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1163, line: 1208)
!1163 = !DISubprogram(name: "roundl", scope: !872, file: !872, line: 326, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1165, line: 1210)
!1165 = !DISubprogram(name: "scalbln", scope: !872, file: !872, line: 318, type: !1166, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!107, !107, !90}
!1168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1169, line: 1211)
!1169 = !DISubprogram(name: "scalblnf", scope: !872, file: !872, line: 318, type: !1170, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!261, !261, !90}
!1172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1173, line: 1212)
!1173 = !DISubprogram(name: "scalblnl", scope: !872, file: !872, line: 318, type: !1174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!266, !266, !90}
!1176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1177, line: 1214)
!1177 = !DISubprogram(name: "scalbn", scope: !872, file: !872, line: 309, type: !904, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1179, line: 1215)
!1179 = !DISubprogram(name: "scalbnf", scope: !872, file: !872, line: 309, type: !1180, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!261, !261, !81}
!1182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1183, line: 1216)
!1183 = !DISubprogram(name: "scalbnl", scope: !872, file: !872, line: 309, type: !1184, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!266, !266, !81}
!1186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1187, line: 1218)
!1187 = !DISubprogram(name: "tgamma", scope: !872, file: !872, line: 268, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1189, line: 1219)
!1189 = !DISubprogram(name: "tgammaf", scope: !872, file: !872, line: 268, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1191, line: 1220)
!1191 = !DISubprogram(name: "tgammal", scope: !872, file: !872, line: 268, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1193, line: 1222)
!1193 = !DISubprogram(name: "trunc", scope: !872, file: !872, line: 330, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1195, line: 1223)
!1195 = !DISubprogram(name: "truncf", scope: !872, file: !872, line: 330, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1197, line: 1224)
!1197 = !DISubprogram(name: "truncl", scope: !872, file: !872, line: 330, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1199, line: 58)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !1200, line: 94, baseType: !1201)
!1200 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1200, line: 75, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")
!1202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1203, line: 59)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !1200, line: 68, baseType: !28)
!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1205, line: 62)
!1205 = !DISubprogram(name: "feclearexcept", scope: !1206, file: !1206, line: 64, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1206 = !DIFile(filename: "/usr/include/fenv.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1208, line: 63)
!1208 = !DISubprogram(name: "fegetexceptflag", scope: !1206, file: !1206, line: 68, type: !1209, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!81, !1211, !81}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1213, line: 64)
!1213 = !DISubprogram(name: "feraiseexcept", scope: !1206, file: !1206, line: 71, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1215, line: 65)
!1215 = !DISubprogram(name: "fesetexceptflag", scope: !1206, file: !1206, line: 75, type: !1216, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!81, !1218, !81}
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1203)
!1220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1221, line: 66)
!1221 = !DISubprogram(name: "fetestexcept", scope: !1206, file: !1206, line: 79, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1223, line: 68)
!1223 = !DISubprogram(name: "fegetround", scope: !1206, file: !1206, line: 85, type: !188, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1225, line: 69)
!1225 = !DISubprogram(name: "fesetround", scope: !1206, file: !1206, line: 88, type: !79, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1227, line: 71)
!1227 = !DISubprogram(name: "fegetenv", scope: !1206, file: !1206, line: 95, type: !1228, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!81, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1232, line: 72)
!1232 = !DISubprogram(name: "feholdexcept", scope: !1206, file: !1206, line: 100, type: !1228, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1234, line: 73)
!1234 = !DISubprogram(name: "fesetenv", scope: !1206, file: !1206, line: 104, type: !1235, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!81, !1237}
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1199)
!1239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1240, line: 74)
!1240 = !DISubprogram(name: "feupdateenv", scope: !1206, file: !1206, line: 109, type: !1235, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1199, line: 61)
!1242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1203, line: 62)
!1243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1205, line: 65)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1208, line: 66)
!1245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1213, line: 67)
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1215, line: 68)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1221, line: 69)
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1223, line: 71)
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1225, line: 72)
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1227, line: 74)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1232, line: 75)
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1234, line: 76)
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1240, line: 77)
!1254 = !{i32 2, !"Dwarf Version", i32 4}
!1255 = !{i32 2, !"Debug Info Version", i32 3}
!1256 = !{!1257, !1257, i64 0}
!1257 = !{!"long", !1258, i64 0}
!1258 = !{!"omnipotent char", !1259, i64 0}
!1259 = !{!"Simple C++ TBAA"}
!1260 = !{!1261, !1258, i64 2065}
!1261 = !{!"_ZTS5State", !1258, i64 16, !1262, i64 2064, !1258, i64 2080, !1263, i64 2088, !1265, i64 2112, !1267, i64 2208, !1268, i64 2480, !1269, i64 2608, !1270, i64 2736, !1258, i64 2760, !1258, i64 2768}
!1262 = !{!"_ZTS10ArithFlags", !1258, i64 0, !1258, i64 1, !1258, i64 2, !1258, i64 3, !1258, i64 4, !1258, i64 5, !1258, i64 6, !1258, i64 7, !1258, i64 8, !1258, i64 9, !1258, i64 10, !1258, i64 11, !1258, i64 12, !1258, i64 13, !1258, i64 14, !1258, i64 15}
!1263 = !{!"_ZTS8Segments", !1264, i64 0, !1258, i64 2, !1264, i64 4, !1258, i64 6, !1264, i64 8, !1258, i64 10, !1264, i64 12, !1258, i64 14, !1264, i64 16, !1258, i64 18, !1264, i64 20, !1258, i64 22}
!1264 = !{!"short", !1258, i64 0}
!1265 = !{!"_ZTS12AddressSpace", !1257, i64 0, !1266, i64 8, !1257, i64 16, !1266, i64 24, !1257, i64 32, !1266, i64 40, !1257, i64 48, !1266, i64 56, !1257, i64 64, !1266, i64 72, !1257, i64 80, !1266, i64 88}
!1266 = !{!"_ZTS3Reg", !1258, i64 0}
!1267 = !{!"_ZTS3GPR", !1257, i64 0, !1266, i64 8, !1257, i64 16, !1266, i64 24, !1257, i64 32, !1266, i64 40, !1257, i64 48, !1266, i64 56, !1257, i64 64, !1266, i64 72, !1257, i64 80, !1266, i64 88, !1257, i64 96, !1266, i64 104, !1257, i64 112, !1266, i64 120, !1257, i64 128, !1266, i64 136, !1257, i64 144, !1266, i64 152, !1257, i64 160, !1266, i64 168, !1257, i64 176, !1266, i64 184, !1257, i64 192, !1266, i64 200, !1257, i64 208, !1266, i64 216, !1257, i64 224, !1266, i64 232, !1257, i64 240, !1266, i64 248, !1257, i64 256, !1266, i64 264}
!1268 = !{!"_ZTS8X87Stack", !1258, i64 0}
!1269 = !{!"_ZTS3MMX", !1258, i64 0}
!1270 = !{!"_ZTS14FPUStatusFlags", !1258, i64 0, !1258, i64 1, !1258, i64 2, !1258, i64 3, !1258, i64 4, !1258, i64 5, !1258, i64 6, !1258, i64 7, !1258, i64 8, !1258, i64 9, !1258, i64 10, !1258, i64 11, !1258, i64 12, !1258, i64 13, !1258, i64 14, !1258, i64 15, !1258, i64 16, !1258, i64 17, !1258, i64 18, !1258, i64 19, !1258, i64 20}
!1271 = !{!1261, !1258, i64 2067}
!1272 = !{!1261, !1258, i64 2069}
!1273 = !{!1261, !1258, i64 2071}
!1274 = !{!1261, !1258, i64 2073}
!1275 = !{!1261, !1258, i64 2077}
!1276 = !{!1258, !1258, i64 0}
