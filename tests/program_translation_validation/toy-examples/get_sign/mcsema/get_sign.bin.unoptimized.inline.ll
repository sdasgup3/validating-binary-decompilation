; ModuleID = 'get_sign.bin.unoptimized.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4f8__init_type = type <{ [23 x i8] }>
%seg_510__plt_type = type <{ [16 x i8] }>
%seg_520__plt_got_type = type <{ [8 x i8] }>
%seg_530__text_type = type <{ [546 x i8] }>
%seg_754__fini_type = type <{ [9 x i8] }>
%seg_760__rodata_type = type <{ [4 x i8] }>
%seg_764__eh_frame_hdr_type = type <{ [76 x i8] }>
%seg_7b0__eh_frame_type = type <{ [332 x i8] }>
%seg_200de0__init_array_type = type <{ i64, i64 }>
%seg_200df0__jcr_type = type <{ [8 x i8] }>
%seg_200fb8__got_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64 }>
%seg_201000__data_type = type <{ [8 x i8], i64 }>
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
%struct.anon.2 = type { i8, i8 }

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
@seg_4f8__init = internal constant %seg_4f8__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\DD\0A \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_510__plt = internal constant %seg_510__plt_type <{ [16 x i8] c"\FF5\AA\0A \00\FF%\AC\0A \00\0F\1F@\00" }>
@seg_520__plt_got = internal constant %seg_520__plt_got_type <{ [8 x i8] c"\FF%\D2\0A \00f\90" }>
@seg_530__text = internal constant %seg_530__text_type <{ [546 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTL\8D\05\0A\02\00\00H\8D\0D\93\01\00\00H\8D=]\01\00\00\FF\15~\0A \00\F4\0F\1FD\00\00H\8D=\A9\0A \00H\8D\05\A9\0A \00UH)\F8H\89\E5H\83\F8\0Ev\15H\8B\05N\0A \00H\85\C0t\09]\FF\E0f\0F\1FD\00\00]\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00H\8D=i\0A \00H\8D5b\0A \00UH)\FEH\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\18H\8B\05!\0A \00H\85\C0t\0C]\FF\E0f\0F\1F\84\00\00\00\00\00]\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00\80=\19\0A \00\00u'H\83=\F7\09 \00\00UH\89\E5t\0CH\8B=\FA\09 \00\E8\0D\FF\FF\FF\E8H\FF\FF\FF]\C6\05\F0\09 \00\01\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00H\8D=\B9\07 \00H\83?\00u\0B\E9^\FF\FF\FFf\0F\1FD\00\00H\8B\05\99\09 \00H\85\C0t\E9UH\89\E5\FF\D0]\E9@\FF\FF\FFUH\89\E5\89}\FC\83}\FC\00\7F\07\B8\01\00\00\00\EB\05\B8\00\00\00\00]\C3UH\89\E5H\C7\C0\0A\00\00\00H\C7\C3\14\00\00\00H\C7\C1\1E\00\00\00H\C7\C2(\00\00\00H\C7\C62\00\00\00\BFZ\00\00\00H\C7\C7<\00\00\00\90]\C3UH\89\E5PSQRVW\B8\00\00\00\00\E8\B6\FF\FF\FFX[YZ^_\BF\0A\00\00\00\E8\8B\FF\FF\FF]\C3f\0F\1F\84\00\00\00\00\00AWAVA\89\FFAUATL\8D%\EE\06 \00UH\8D-\EE\06 \00SI\89\F6I\89\D5L)\E5H\83\EC\08H\C1\FD\03\E8\E7\FD\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\EAL\89\F6D\89\FFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_754__fini = internal constant %seg_754__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_760__rodata = internal constant %seg_760__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_764__eh_frame_hdr = internal constant %seg_764__eh_frame_hdr_type <{ [76 x i8] c"\01\1B\03;H\00\00\00\08\00\00\00\AC\FD\FF\FF\94\00\00\00\BC\FD\FF\FF\BC\00\00\00\CC\FD\FF\FFd\00\00\00\FC\FE\FF\FF\D4\00\00\00\17\FF\FF\FF\F4\00\00\00M\FF\FF\FF\14\01\00\00|\FF\FF\FF4\01\00\00\EC\FF\FF\FF|\01\00\00" }>
@seg_7b0__eh_frame = internal constant %seg_7b0__eh_frame_type <{ [332 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\14\00\00\00\1C\00\00\00`\FD\FF\FF+\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00$\00\00\00\1C\00\00\00\10\FD\FF\FF\10\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\14\00\00\00D\00\00\00\F8\FC\FF\FF\08\00\00\00\00\00\00\00\00\00\00\00\1C\00\00\00\5C\00\00\00 \FE\FF\FF\1B\00\00\00\00A\0E\10\86\02C\0D\06V\0C\07\08\00\00\00\1C\00\00\00|\00\00\00\1B\FE\FF\FF6\00\00\00\00A\0E\10\86\02C\0D\06q\0C\07\08\00\00\00\1C\00\00\00\9C\00\00\001\FE\FF\FF&\00\00\00\00A\0E\10\86\02C\0D\06a\0C\07\08\00\00\00D\00\00\00\BC\00\00\00@\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\14\00\00\00\04\01\00\00h\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_200de0__init_array = internal global %seg_200de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_630_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_5f0___do_global_dtors_aux to i64) }>
@seg_200df0__jcr = internal global %seg_200df0__jcr_type zeroinitializer
@seg_200fb8__got = internal global %seg_200fb8__got_type <{ [24 x i8] c"\F8\0D \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64)* @_ITM_deregisterTMCloneTable to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64), i64 ptrtoint (i64 (i64)* @_Jv_RegisterClasses to i64), i64 ptrtoint (i64 (i64, i64)* @_ITM_registerTMCloneTable to i64), i64 ptrtoint (i64 (i64)* @__cxa_finalize to i64) }>
@seg_201000__data = internal global %seg_201000__data_type <{ [8 x i8] zeroinitializer, i64 add (i64 ptrtoint (%seg_201000__data_type* @seg_201000__data to i64), i64 8) }>
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_630_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_5f0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_750___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_6e0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @get_sign_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @init_var_correspondence_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @__remill_sync_hyper_call(%struct.State*, %struct.Memory*, i32)

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i8 @__remill_read_memory_8(%struct.Memory*, i64) #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_8(%struct.Memory*, i64, i8) #0

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i16 @__remill_read_memory_16(%struct.Memory*, i64) #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_16(%struct.Memory*, i64, i16) #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i32 @__remill_read_memory_32(%struct.Memory*, i64) #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_32(%struct.Memory*, i64, i32) #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i64 @__remill_read_memory_64(%struct.Memory*, i64) #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_64(%struct.Memory*, i64, i64) #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare float @__remill_read_memory_f32(%struct.Memory*, i64) #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare double @__remill_read_memory_f64(%struct.Memory*, i64) #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i8 @__remill_undefined_8() #0

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State*, i64, %struct.Memory*) #2

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.cttz.i32(i32, i1) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.cttz.i64(i64, i1) #1

; Function Attrs: nounwind readnone
declare i32 @llvm.ctlz.i32(i32, i1) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.ctlz.i64(i64, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind readnone
declare double @llvm.nearbyint.f64(double) #1

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #1

; Function Attrs: nounwind readnone
declare float @llvm.nearbyint.f32(float) #1

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_f32(%struct.Memory*, i64, float) #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_f64(%struct.Memory*, i64, double) #0

declare i8 @__remill_read_io_port_8(%struct.Memory*, i64) local_unnamed_addr

declare i16 @__remill_read_io_port_16(%struct.Memory*, i64) local_unnamed_addr

declare i32 @__remill_read_io_port_32(%struct.Memory*, i64) local_unnamed_addr

declare %struct.Memory* @__remill_write_io_port_8(%struct.Memory*, i64, i8) local_unnamed_addr

declare %struct.Memory* @__remill_write_io_port_16(%struct.Memory*, i64, i16) local_unnamed_addr

declare %struct.Memory* @__remill_write_io_port_32(%struct.Memory*, i64, i32) local_unnamed_addr

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_barrier_store_load(%struct.Memory*) #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_barrier_store_store(%struct.Memory*) #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_barrier_load_load(%struct.Memory*) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i64 @__remill_undefined_64() #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare double @__remill_undefined_f64() #0

declare %struct.Memory* @__remill_compare_exchange_memory_8(%struct.Memory*, i64, i8*, i8)

declare %struct.Memory* @__remill_compare_exchange_memory_16(%struct.Memory*, i64, i16*, i16)

declare %struct.Memory* @__remill_compare_exchange_memory_32(%struct.Memory*, i64, i32*, i32)

declare %struct.Memory* @__remill_compare_exchange_memory_64(%struct.Memory*, i64, i64*, i64)

declare %struct.Memory* @__remill_compare_exchange_memory_128(%struct.Memory*, i64, i128*, i128*) local_unnamed_addr

declare %struct.Memory* @__remill_fetch_and_add_8(%struct.Memory*, i64, i8*)

declare %struct.Memory* @__remill_fetch_and_add_16(%struct.Memory*, i64, i16*)

declare %struct.Memory* @__remill_fetch_and_add_32(%struct.Memory*, i64, i32*)

declare %struct.Memory* @__remill_fetch_and_add_64(%struct.Memory*, i64, i64*)

declare float @sqrtf(float) local_unnamed_addr

declare double @sqrt(double) local_unnamed_addr

declare i32 @fesetround(i32) local_unnamed_addr

declare i32 @fegetround() local_unnamed_addr

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare double @__remill_read_memory_f80(%struct.Memory*, i64) #0

declare i32 @fetestexcept(i32) local_unnamed_addr

declare i32 @feraiseexcept(i32) local_unnamed_addr

declare i32 @feclearexcept(i32) local_unnamed_addr

declare i32 @__remill_fpu_exception_test_and_clear(i32, i32)

declare double @cos(double) local_unnamed_addr

declare double @sin(double) local_unnamed_addr

declare double @tan(double) local_unnamed_addr

declare double @atan(double) local_unnamed_addr

declare double @exp2(double) local_unnamed_addr

declare double @remainder(double, double) local_unnamed_addr

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_f80(%struct.Memory*, i64, double) #0

declare double @log2(double) local_unnamed_addr

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @__remill_basic_block(%struct.State* noalias, i64, %struct.Memory* noalias) #4 !dbg !1257 {
entry:
  %state1 = alloca %struct.State*, align 8
  %curr_pc2 = alloca i64, align 8
  %memory3 = alloca %struct.Memory*, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  %SS_BASE = alloca i64, align 8
  %ES_BASE = alloca i64, align 8
  %DS_BASE = alloca i64, align 8
  %CS_BASE = alloca i64, align 8
  %STATE = alloca %struct.State*, align 8
  %MEMORY = alloca %struct.Memory*, align 8
  %_DR0 = alloca i64*, align 8
  %_DR1 = alloca i64*, align 8
  %_DR2 = alloca i64*, align 8
  %_DR3 = alloca i64*, align 8
  %_DR4 = alloca i64*, align 8
  %_DR5 = alloca i64*, align 8
  %_DR6 = alloca i64*, align 8
  %_DR7 = alloca i64*, align 8
  %CR0 = alloca i64*, align 8
  %CR1 = alloca i64*, align 8
  %CR2 = alloca i64*, align 8
  %CR3 = alloca i64*, align 8
  %CR4 = alloca i64*, align 8
  %CR8 = alloca i64*, align 8
  store %struct.State* %0, %struct.State** %state1, align 8
  store i64 %1, i64* %curr_pc2, align 8
  store %struct.Memory* %2, %struct.Memory** %memory3, align 8
  store i8 0, i8* %BRANCH_TAKEN, align 1, !dbg !1948
  store i64 0, i64* %SS_BASE, align 8, !dbg !1949
  store i64 0, i64* %ES_BASE, align 8, !dbg !1950
  store i64 0, i64* %DS_BASE, align 8, !dbg !1951
  store i64 0, i64* %CS_BASE, align 8, !dbg !1952
  store %struct.State* %0, %struct.State** %STATE, align 8, !dbg !1953
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8, !dbg !1954
  %gpr = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1955
  %rip = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr, i32 0, i32 33, !dbg !1956
  %3 = getelementptr inbounds %struct.Reg, %struct.Reg* %rip, i32 0, i32 0, !dbg !1957
  %PC = bitcast %union.anon* %3 to i64*, !dbg !1957
  store i64 %1, i64* %PC, align 8, !dbg !1958
  %gpr1 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1959
  %rax = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr1, i32 0, i32 1, !dbg !1960
  %4 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax, i32 0, i32 0, !dbg !1961
  %byte = bitcast %union.anon* %4 to %struct.anon.2*, !dbg !1961
  %AH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte, i32 0, i32 1, !dbg !1962
  %gpr2 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1963
  %rbx = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr2, i32 0, i32 3, !dbg !1964
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbx, i32 0, i32 0, !dbg !1965
  %byte3 = bitcast %union.anon* %5 to %struct.anon.2*, !dbg !1965
  %BH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte3, i32 0, i32 1, !dbg !1966
  %gpr5 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1967
  %rcx = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr5, i32 0, i32 5, !dbg !1968
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %rcx, i32 0, i32 0, !dbg !1969
  %byte6 = bitcast %union.anon* %6 to %struct.anon.2*, !dbg !1969
  %CH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte6, i32 0, i32 1, !dbg !1970
  %gpr8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1971
  %rdx = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr8, i32 0, i32 7, !dbg !1972
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdx, i32 0, i32 0, !dbg !1973
  %byte9 = bitcast %union.anon* %7 to %struct.anon.2*, !dbg !1973
  %DH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte9, i32 0, i32 1, !dbg !1974
  %gpr11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1975
  %rax12 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr11, i32 0, i32 1, !dbg !1976
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax12, i32 0, i32 0, !dbg !1977
  %byte13 = bitcast %union.anon* %8 to %struct.anon.2*, !dbg !1977
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte13, i32 0, i32 0, !dbg !1978
  %gpr14 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1979
  %rbx15 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr14, i32 0, i32 3, !dbg !1980
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbx15, i32 0, i32 0, !dbg !1981
  %byte16 = bitcast %union.anon* %9 to %struct.anon.2*, !dbg !1981
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte16, i32 0, i32 0, !dbg !1982
  %gpr18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1983
  %rcx19 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr18, i32 0, i32 5, !dbg !1984
  %10 = getelementptr inbounds %struct.Reg, %struct.Reg* %rcx19, i32 0, i32 0, !dbg !1985
  %byte20 = bitcast %union.anon* %10 to %struct.anon.2*, !dbg !1985
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte20, i32 0, i32 0, !dbg !1986
  %gpr22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1987
  %rdx23 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr22, i32 0, i32 7, !dbg !1988
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdx23, i32 0, i32 0, !dbg !1989
  %byte24 = bitcast %union.anon* %11 to %struct.anon.2*, !dbg !1989
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte24, i32 0, i32 0, !dbg !1990
  %gpr26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1991
  %rsi = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr26, i32 0, i32 9, !dbg !1992
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsi, i32 0, i32 0, !dbg !1993
  %byte27 = bitcast %union.anon* %12 to %struct.anon.2*, !dbg !1993
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte27, i32 0, i32 0, !dbg !1994
  %gpr29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1995
  %rdi = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr29, i32 0, i32 11, !dbg !1996
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdi, i32 0, i32 0, !dbg !1997
  %byte30 = bitcast %union.anon* %13 to %struct.anon.2*, !dbg !1997
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte30, i32 0, i32 0, !dbg !1998
  %gpr32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1999
  %rsp = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr32, i32 0, i32 13, !dbg !2000
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsp, i32 0, i32 0, !dbg !2001
  %byte33 = bitcast %union.anon* %14 to %struct.anon.2*, !dbg !2001
  %SPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte33, i32 0, i32 0, !dbg !2002
  %gpr35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2003
  %rbp = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr35, i32 0, i32 15, !dbg !2004
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbp, i32 0, i32 0, !dbg !2005
  %byte36 = bitcast %union.anon* %15 to %struct.anon.2*, !dbg !2005
  %BPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte36, i32 0, i32 0, !dbg !2006
  %gpr38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2007
  %r8 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr38, i32 0, i32 17, !dbg !2008
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %r8, i32 0, i32 0, !dbg !2009
  %byte39 = bitcast %union.anon* %16 to %struct.anon.2*, !dbg !2009
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte39, i32 0, i32 0, !dbg !2010
  %gpr41 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2011
  %r9 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr41, i32 0, i32 19, !dbg !2012
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %r9, i32 0, i32 0, !dbg !2013
  %byte42 = bitcast %union.anon* %17 to %struct.anon.2*, !dbg !2013
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte42, i32 0, i32 0, !dbg !2014
  %gpr44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2015
  %r10 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr44, i32 0, i32 21, !dbg !2016
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %r10, i32 0, i32 0, !dbg !2017
  %byte45 = bitcast %union.anon* %18 to %struct.anon.2*, !dbg !2017
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte45, i32 0, i32 0, !dbg !2018
  %gpr47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2019
  %r11 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr47, i32 0, i32 23, !dbg !2020
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %r11, i32 0, i32 0, !dbg !2021
  %byte48 = bitcast %union.anon* %19 to %struct.anon.2*, !dbg !2021
  %R11B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte48, i32 0, i32 0, !dbg !2022
  %gpr50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2023
  %r12 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr50, i32 0, i32 25, !dbg !2024
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %r12, i32 0, i32 0, !dbg !2025
  %byte51 = bitcast %union.anon* %20 to %struct.anon.2*, !dbg !2025
  %R12B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte51, i32 0, i32 0, !dbg !2026
  %gpr53 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2027
  %r13 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr53, i32 0, i32 27, !dbg !2028
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %r13, i32 0, i32 0, !dbg !2029
  %byte54 = bitcast %union.anon* %21 to %struct.anon.2*, !dbg !2029
  %R13B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte54, i32 0, i32 0, !dbg !2030
  %gpr56 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2031
  %r14 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr56, i32 0, i32 29, !dbg !2032
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %r14, i32 0, i32 0, !dbg !2033
  %byte57 = bitcast %union.anon* %22 to %struct.anon.2*, !dbg !2033
  %R14B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte57, i32 0, i32 0, !dbg !2034
  %gpr59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2035
  %r15 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr59, i32 0, i32 31, !dbg !2036
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %r15, i32 0, i32 0, !dbg !2037
  %byte60 = bitcast %union.anon* %23 to %struct.anon.2*, !dbg !2037
  %R15B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %byte60, i32 0, i32 0, !dbg !2038
  %gpr62 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2039
  %rax63 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr62, i32 0, i32 1, !dbg !2040
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax63, i32 0, i32 0, !dbg !2041
  %AX = bitcast %union.anon* %24 to i16*, !dbg !2041
  %gpr64 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2042
  %rbx65 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr64, i32 0, i32 3, !dbg !2043
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbx65, i32 0, i32 0, !dbg !2044
  %BX = bitcast %union.anon* %25 to i16*, !dbg !2044
  %gpr67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2045
  %rcx68 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr67, i32 0, i32 5, !dbg !2046
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %rcx68, i32 0, i32 0, !dbg !2047
  %CX = bitcast %union.anon* %26 to i16*, !dbg !2047
  %gpr70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2048
  %rdx71 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr70, i32 0, i32 7, !dbg !2049
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdx71, i32 0, i32 0, !dbg !2050
  %DX = bitcast %union.anon* %27 to i16*, !dbg !2050
  %gpr73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2051
  %rsi74 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr73, i32 0, i32 9, !dbg !2052
  %28 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsi74, i32 0, i32 0, !dbg !2053
  %SI = bitcast %union.anon* %28 to i16*, !dbg !2053
  %gpr76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2054
  %rdi77 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr76, i32 0, i32 11, !dbg !2055
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdi77, i32 0, i32 0, !dbg !2056
  %DI = bitcast %union.anon* %29 to i16*, !dbg !2056
  %gpr79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2057
  %rsp80 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr79, i32 0, i32 13, !dbg !2058
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsp80, i32 0, i32 0, !dbg !2059
  %SP = bitcast %union.anon* %30 to i16*, !dbg !2059
  %gpr82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2060
  %rbp83 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr82, i32 0, i32 15, !dbg !2061
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbp83, i32 0, i32 0, !dbg !2062
  %BP = bitcast %union.anon* %31 to i16*, !dbg !2062
  %gpr85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2063
  %r886 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr85, i32 0, i32 17, !dbg !2064
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %r886, i32 0, i32 0, !dbg !2065
  %R8W = bitcast %union.anon* %32 to i16*, !dbg !2065
  %gpr88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2066
  %r989 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr88, i32 0, i32 19, !dbg !2067
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %r989, i32 0, i32 0, !dbg !2068
  %R9W = bitcast %union.anon* %33 to i16*, !dbg !2068
  %gpr91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2069
  %r1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr91, i32 0, i32 21, !dbg !2070
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %r1092, i32 0, i32 0, !dbg !2071
  %R10W = bitcast %union.anon* %34 to i16*, !dbg !2071
  %gpr94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2072
  %r1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr94, i32 0, i32 23, !dbg !2073
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %r1195, i32 0, i32 0, !dbg !2074
  %R11W = bitcast %union.anon* %35 to i16*, !dbg !2074
  %gpr97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2075
  %r1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr97, i32 0, i32 25, !dbg !2076
  %36 = getelementptr inbounds %struct.Reg, %struct.Reg* %r1298, i32 0, i32 0, !dbg !2077
  %R12W = bitcast %union.anon* %36 to i16*, !dbg !2077
  %gpr100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2078
  %r13101 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr100, i32 0, i32 27, !dbg !2079
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %r13101, i32 0, i32 0, !dbg !2080
  %R13W = bitcast %union.anon* %37 to i16*, !dbg !2080
  %gpr103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2081
  %r14104 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr103, i32 0, i32 29, !dbg !2082
  %38 = getelementptr inbounds %struct.Reg, %struct.Reg* %r14104, i32 0, i32 0, !dbg !2083
  %R14W = bitcast %union.anon* %38 to i16*, !dbg !2083
  %gpr106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2084
  %r15107 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr106, i32 0, i32 31, !dbg !2085
  %39 = getelementptr inbounds %struct.Reg, %struct.Reg* %r15107, i32 0, i32 0, !dbg !2086
  %R15W = bitcast %union.anon* %39 to i16*, !dbg !2086
  %gpr109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2087
  %rip110 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr109, i32 0, i32 33, !dbg !2088
  %40 = getelementptr inbounds %struct.Reg, %struct.Reg* %rip110, i32 0, i32 0, !dbg !2089
  %IP = bitcast %union.anon* %40 to i16*, !dbg !2089
  %gpr112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2090
  %rax113 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr112, i32 0, i32 1, !dbg !2091
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax113, i32 0, i32 0, !dbg !2092
  %EAX = bitcast %union.anon* %41 to i32*, !dbg !2092
  %gpr114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2093
  %rbx115 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr114, i32 0, i32 3, !dbg !2094
  %42 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbx115, i32 0, i32 0, !dbg !2095
  %EBX = bitcast %union.anon* %42 to i32*, !dbg !2095
  %gpr117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2096
  %rcx118 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr117, i32 0, i32 5, !dbg !2097
  %43 = getelementptr inbounds %struct.Reg, %struct.Reg* %rcx118, i32 0, i32 0, !dbg !2098
  %ECX = bitcast %union.anon* %43 to i32*, !dbg !2098
  %gpr120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2099
  %rdx121 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr120, i32 0, i32 7, !dbg !2100
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdx121, i32 0, i32 0, !dbg !2101
  %EDX = bitcast %union.anon* %44 to i32*, !dbg !2101
  %gpr123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2102
  %rsi124 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr123, i32 0, i32 9, !dbg !2103
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsi124, i32 0, i32 0, !dbg !2104
  %ESI = bitcast %union.anon* %45 to i32*, !dbg !2104
  %gpr126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2105
  %rdi127 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr126, i32 0, i32 11, !dbg !2106
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdi127, i32 0, i32 0, !dbg !2107
  %EDI = bitcast %union.anon* %46 to i32*, !dbg !2107
  %gpr129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2108
  %rsp130 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr129, i32 0, i32 13, !dbg !2109
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsp130, i32 0, i32 0, !dbg !2110
  %ESP = bitcast %union.anon* %47 to i32*, !dbg !2110
  %gpr132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2111
  %rbp133 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr132, i32 0, i32 15, !dbg !2112
  %48 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbp133, i32 0, i32 0, !dbg !2113
  %EBP = bitcast %union.anon* %48 to i32*, !dbg !2113
  %gpr135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2114
  %rip136 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr135, i32 0, i32 33, !dbg !2115
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %rip136, i32 0, i32 0, !dbg !2116
  %EIP = bitcast %union.anon* %49 to i32*, !dbg !2116
  %gpr138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2117
  %r8139 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr138, i32 0, i32 17, !dbg !2118
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %r8139, i32 0, i32 0, !dbg !2119
  %R8D = bitcast %union.anon* %50 to i32*, !dbg !2119
  %gpr141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2120
  %r9142 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr141, i32 0, i32 19, !dbg !2121
  %51 = getelementptr inbounds %struct.Reg, %struct.Reg* %r9142, i32 0, i32 0, !dbg !2122
  %R9D = bitcast %union.anon* %51 to i32*, !dbg !2122
  %gpr144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2123
  %r10145 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr144, i32 0, i32 21, !dbg !2124
  %52 = getelementptr inbounds %struct.Reg, %struct.Reg* %r10145, i32 0, i32 0, !dbg !2125
  %R10D = bitcast %union.anon* %52 to i32*, !dbg !2125
  %gpr147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2126
  %r11148 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr147, i32 0, i32 23, !dbg !2127
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %r11148, i32 0, i32 0, !dbg !2128
  %R11D = bitcast %union.anon* %53 to i32*, !dbg !2128
  %gpr150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2129
  %r12151 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr150, i32 0, i32 25, !dbg !2130
  %54 = getelementptr inbounds %struct.Reg, %struct.Reg* %r12151, i32 0, i32 0, !dbg !2131
  %R12D = bitcast %union.anon* %54 to i32*, !dbg !2131
  %gpr153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2132
  %r13154 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr153, i32 0, i32 27, !dbg !2133
  %55 = getelementptr inbounds %struct.Reg, %struct.Reg* %r13154, i32 0, i32 0, !dbg !2134
  %R13D = bitcast %union.anon* %55 to i32*, !dbg !2134
  %gpr156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2135
  %r14157 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr156, i32 0, i32 29, !dbg !2136
  %56 = getelementptr inbounds %struct.Reg, %struct.Reg* %r14157, i32 0, i32 0, !dbg !2137
  %R14D = bitcast %union.anon* %56 to i32*, !dbg !2137
  %gpr159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2138
  %r15160 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr159, i32 0, i32 31, !dbg !2139
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %r15160, i32 0, i32 0, !dbg !2140
  %R15D = bitcast %union.anon* %57 to i32*, !dbg !2140
  %gpr162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2141
  %rax163 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr162, i32 0, i32 1, !dbg !2142
  %58 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax163, i32 0, i32 0, !dbg !2143
  %RAX = bitcast %union.anon* %58 to i64*, !dbg !2143
  %gpr165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2144
  %rbx166 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr165, i32 0, i32 3, !dbg !2145
  %59 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbx166, i32 0, i32 0, !dbg !2146
  %RBX = bitcast %union.anon* %59 to i64*, !dbg !2146
  %gpr168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2147
  %rcx169 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr168, i32 0, i32 5, !dbg !2148
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %rcx169, i32 0, i32 0, !dbg !2149
  %RCX = bitcast %union.anon* %60 to i64*, !dbg !2149
  %gpr171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2150
  %rdx172 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr171, i32 0, i32 7, !dbg !2151
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdx172, i32 0, i32 0, !dbg !2152
  %RDX = bitcast %union.anon* %61 to i64*, !dbg !2152
  %gpr174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2153
  %rsi175 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr174, i32 0, i32 9, !dbg !2154
  %62 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsi175, i32 0, i32 0, !dbg !2155
  %RSI = bitcast %union.anon* %62 to i64*, !dbg !2155
  %gpr177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2156
  %rdi178 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr177, i32 0, i32 11, !dbg !2157
  %63 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdi178, i32 0, i32 0, !dbg !2158
  %RDI = bitcast %union.anon* %63 to i64*, !dbg !2158
  %gpr180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2159
  %rsp181 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr180, i32 0, i32 13, !dbg !2160
  %64 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsp181, i32 0, i32 0, !dbg !2161
  %RSP = bitcast %union.anon* %64 to i64*, !dbg !2161
  %gpr183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2162
  %rbp184 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr183, i32 0, i32 15, !dbg !2163
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbp184, i32 0, i32 0, !dbg !2164
  %RBP = bitcast %union.anon* %65 to i64*, !dbg !2164
  %gpr186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2165
  %r8187 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr186, i32 0, i32 17, !dbg !2166
  %66 = getelementptr inbounds %struct.Reg, %struct.Reg* %r8187, i32 0, i32 0, !dbg !2167
  %R8 = bitcast %union.anon* %66 to i64*, !dbg !2167
  %gpr189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2168
  %r9190 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr189, i32 0, i32 19, !dbg !2169
  %67 = getelementptr inbounds %struct.Reg, %struct.Reg* %r9190, i32 0, i32 0, !dbg !2170
  %R9 = bitcast %union.anon* %67 to i64*, !dbg !2170
  %gpr192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2171
  %r10193 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr192, i32 0, i32 21, !dbg !2172
  %68 = getelementptr inbounds %struct.Reg, %struct.Reg* %r10193, i32 0, i32 0, !dbg !2173
  %R10 = bitcast %union.anon* %68 to i64*, !dbg !2173
  %gpr195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2174
  %r11196 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr195, i32 0, i32 23, !dbg !2175
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %r11196, i32 0, i32 0, !dbg !2176
  %R11 = bitcast %union.anon* %69 to i64*, !dbg !2176
  %gpr198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2177
  %r12199 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr198, i32 0, i32 25, !dbg !2178
  %70 = getelementptr inbounds %struct.Reg, %struct.Reg* %r12199, i32 0, i32 0, !dbg !2179
  %R12 = bitcast %union.anon* %70 to i64*, !dbg !2179
  %gpr201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2180
  %r13202 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr201, i32 0, i32 27, !dbg !2181
  %71 = getelementptr inbounds %struct.Reg, %struct.Reg* %r13202, i32 0, i32 0, !dbg !2182
  %R13 = bitcast %union.anon* %71 to i64*, !dbg !2182
  %gpr204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2183
  %r14205 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr204, i32 0, i32 29, !dbg !2184
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %r14205, i32 0, i32 0, !dbg !2185
  %R14 = bitcast %union.anon* %72 to i64*, !dbg !2185
  %gpr207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2186
  %r15208 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr207, i32 0, i32 31, !dbg !2187
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %r15208, i32 0, i32 0, !dbg !2188
  %R15 = bitcast %union.anon* %73 to i64*, !dbg !2188
  %gpr210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2189
  %rip211 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr210, i32 0, i32 33, !dbg !2190
  %74 = getelementptr inbounds %struct.Reg, %struct.Reg* %rip211, i32 0, i32 0, !dbg !2191
  %RIP = bitcast %union.anon* %74 to i64*, !dbg !2191
  %seg = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2192
  %ss = getelementptr inbounds %struct.Segments, %struct.Segments* %seg, i32 0, i32 1, !dbg !2193
  %SS = bitcast %union.SegmentSelector* %ss to i16*, !dbg !2194
  %seg213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2195
  %es = getelementptr inbounds %struct.Segments, %struct.Segments* %seg213, i32 0, i32 3, !dbg !2196
  %ES = bitcast %union.SegmentSelector* %es to i16*, !dbg !2197
  %seg215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2198
  %gs = getelementptr inbounds %struct.Segments, %struct.Segments* %seg215, i32 0, i32 5, !dbg !2199
  %GS = bitcast %union.SegmentSelector* %gs to i16*, !dbg !2200
  %seg217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2201
  %fs = getelementptr inbounds %struct.Segments, %struct.Segments* %seg217, i32 0, i32 7, !dbg !2202
  %FS = bitcast %union.SegmentSelector* %fs to i16*, !dbg !2203
  %seg219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2204
  %ds = getelementptr inbounds %struct.Segments, %struct.Segments* %seg219, i32 0, i32 9, !dbg !2205
  %DS = bitcast %union.SegmentSelector* %ds to i16*, !dbg !2206
  %seg221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2207
  %cs = getelementptr inbounds %struct.Segments, %struct.Segments* %seg221, i32 0, i32 11, !dbg !2208
  %CS = bitcast %union.SegmentSelector* %cs to i16*, !dbg !2209
  %addr = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5, !dbg !2210
  %gs_base = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %addr, i32 0, i32 5, !dbg !2211
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %gs_base, i32 0, i32 0, !dbg !2212
  %GS_BASE = bitcast %union.anon* %75 to i64*, !dbg !2212
  %addr224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5, !dbg !2213
  %fs_base = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %addr224, i32 0, i32 7, !dbg !2214
  %76 = getelementptr inbounds %struct.Reg, %struct.Reg* %fs_base, i32 0, i32 0, !dbg !2215
  %FS_BASE = bitcast %union.anon* %76 to i64*, !dbg !2215
  %vec = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2216
  %arrayidx = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vec, i64 0, i64 0, !dbg !2217
  %XMM0 = bitcast %union.VectorReg* %arrayidx to %union.vec128_t*, !dbg !2218
  %vec226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2219
  %arrayidx227 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vec226, i64 0, i64 1, !dbg !2220
  %XMM1 = bitcast %union.VectorReg* %arrayidx227 to %union.vec128_t*, !dbg !2221
  %vec229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2222
  %arrayidx230 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vec229, i64 0, i64 2, !dbg !2223
  %XMM2 = bitcast %union.VectorReg* %arrayidx230 to %union.vec128_t*, !dbg !2224
  %vec232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2225
  %arrayidx233 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vec232, i64 0, i64 3, !dbg !2226
  %XMM3 = bitcast %union.VectorReg* %arrayidx233 to %union.vec128_t*, !dbg !2227
  %vec235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2228
  %arrayidx236 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vec235, i64 0, i64 4, !dbg !2229
  %XMM4 = bitcast %union.VectorReg* %arrayidx236 to %union.vec128_t*, !dbg !2230
  %vec238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2231
  %arrayidx239 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vec238, i64 0, i64 5, !dbg !2232
  %XMM5 = bitcast %union.VectorReg* %arrayidx239 to %union.vec128_t*, !dbg !2233
  %vec241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2234
  %arrayidx242 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vec241, i64 0, i64 6, !dbg !2235
  %XMM6 = bitcast %union.VectorReg* %arrayidx242 to %union.vec128_t*, !dbg !2236
  %vec244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2237
  %arrayidx245 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vec244, i64 0, i64 7, !dbg !2238
  %XMM7 = bitcast %union.VectorReg* %arrayidx245 to %union.vec128_t*, !dbg !2239
  %vec247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2240
  %arrayidx248 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vec247, i64 0, i64 8, !dbg !2241
  %XMM8 = bitcast %union.VectorReg* %arrayidx248 to %union.vec128_t*, !dbg !2242
  %vec250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2243
  %arrayidx251 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vec250, i64 0, i64 9, !dbg !2244
  %XMM9 = bitcast %union.VectorReg* %arrayidx251 to %union.vec128_t*, !dbg !2245
  %vec253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2246
  %arrayidx254 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vec253, i64 0, i64 10, !dbg !2247
  %XMM10 = bitcast %union.VectorReg* %arrayidx254 to %union.vec128_t*, !dbg !2248
  %vec256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2249
  %arrayidx257 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vec256, i64 0, i64 11, !dbg !2250
  %XMM11 = bitcast %union.VectorReg* %arrayidx257 to %union.vec128_t*, !dbg !2251
  %vec259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2252
  %arrayidx260 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vec259, i64 0, i64 12, !dbg !2253
  %XMM12 = bitcast %union.VectorReg* %arrayidx260 to %union.vec128_t*, !dbg !2254
  %vec262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2255
  %arrayidx263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vec262, i64 0, i64 13, !dbg !2256
  %XMM13 = bitcast %union.VectorReg* %arrayidx263 to %union.vec128_t*, !dbg !2257
  %vec265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2258
  %arrayidx266 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vec265, i64 0, i64 14, !dbg !2259
  %XMM14 = bitcast %union.VectorReg* %arrayidx266 to %union.vec128_t*, !dbg !2260
  %vec268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2261
  %arrayidx269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vec268, i64 0, i64 15, !dbg !2262
  %XMM15 = bitcast %union.VectorReg* %arrayidx269 to %union.vec128_t*, !dbg !2263
  %st = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2264
  %elems = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %st, i32 0, i32 0, !dbg !2265
  %arrayidx271 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %elems, i64 0, i64 0, !dbg !2266
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx271, i32 0, i32 1, !dbg !2267
  %st272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2268
  %elems273 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %st272, i32 0, i32 0, !dbg !2269
  %arrayidx274 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %elems273, i64 0, i64 1, !dbg !2270
  %ST1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx274, i32 0, i32 1, !dbg !2271
  %st276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2272
  %elems277 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %st276, i32 0, i32 0, !dbg !2273
  %arrayidx278 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %elems277, i64 0, i64 2, !dbg !2274
  %ST2 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx278, i32 0, i32 1, !dbg !2275
  %st280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2276
  %elems281 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %st280, i32 0, i32 0, !dbg !2277
  %arrayidx282 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %elems281, i64 0, i64 3, !dbg !2278
  %ST3 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx282, i32 0, i32 1, !dbg !2279
  %st284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2280
  %elems285 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %st284, i32 0, i32 0, !dbg !2281
  %arrayidx286 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %elems285, i64 0, i64 4, !dbg !2282
  %ST4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx286, i32 0, i32 1, !dbg !2283
  %st288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2284
  %elems289 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %st288, i32 0, i32 0, !dbg !2285
  %arrayidx290 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %elems289, i64 0, i64 5, !dbg !2286
  %ST5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx290, i32 0, i32 1, !dbg !2287
  %st292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2288
  %elems293 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %st292, i32 0, i32 0, !dbg !2289
  %arrayidx294 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %elems293, i64 0, i64 6, !dbg !2290
  %ST6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx294, i32 0, i32 1, !dbg !2291
  %st296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2292
  %elems297 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %st296, i32 0, i32 0, !dbg !2293
  %arrayidx298 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %elems297, i64 0, i64 7, !dbg !2294
  %ST7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx298, i32 0, i32 1, !dbg !2295
  %mmx = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2296
  %elems300 = getelementptr inbounds %struct.MMX, %struct.MMX* %mmx, i32 0, i32 0, !dbg !2297
  %arrayidx301 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %elems300, i64 0, i64 0, !dbg !2298
  %val302 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %arrayidx301, i32 0, i32 1, !dbg !2299
  %qwords = bitcast %union.vec64_t* %val302 to %struct.uint64v1_t*, !dbg !2300
  %elems303 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %qwords, i32 0, i32 0, !dbg !2301
  %MM0 = getelementptr inbounds [1 x i64], [1 x i64]* %elems303, i64 0, i64 0, !dbg !2298
  %mmx305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2302
  %elems306 = getelementptr inbounds %struct.MMX, %struct.MMX* %mmx305, i32 0, i32 0, !dbg !2303
  %arrayidx307 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %elems306, i64 0, i64 1, !dbg !2304
  %val308 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %arrayidx307, i32 0, i32 1, !dbg !2305
  %qwords309 = bitcast %union.vec64_t* %val308 to %struct.uint64v1_t*, !dbg !2306
  %elems310 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %qwords309, i32 0, i32 0, !dbg !2307
  %MM1 = getelementptr inbounds [1 x i64], [1 x i64]* %elems310, i64 0, i64 0, !dbg !2304
  %mmx312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2308
  %elems313 = getelementptr inbounds %struct.MMX, %struct.MMX* %mmx312, i32 0, i32 0, !dbg !2309
  %arrayidx314 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %elems313, i64 0, i64 2, !dbg !2310
  %val315 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %arrayidx314, i32 0, i32 1, !dbg !2311
  %qwords316 = bitcast %union.vec64_t* %val315 to %struct.uint64v1_t*, !dbg !2312
  %elems317 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %qwords316, i32 0, i32 0, !dbg !2313
  %MM2 = getelementptr inbounds [1 x i64], [1 x i64]* %elems317, i64 0, i64 0, !dbg !2310
  %mmx319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2314
  %elems320 = getelementptr inbounds %struct.MMX, %struct.MMX* %mmx319, i32 0, i32 0, !dbg !2315
  %arrayidx321 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %elems320, i64 0, i64 3, !dbg !2316
  %val322 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %arrayidx321, i32 0, i32 1, !dbg !2317
  %qwords323 = bitcast %union.vec64_t* %val322 to %struct.uint64v1_t*, !dbg !2318
  %elems324 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %qwords323, i32 0, i32 0, !dbg !2319
  %MM3 = getelementptr inbounds [1 x i64], [1 x i64]* %elems324, i64 0, i64 0, !dbg !2316
  %mmx326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2320
  %elems327 = getelementptr inbounds %struct.MMX, %struct.MMX* %mmx326, i32 0, i32 0, !dbg !2321
  %arrayidx328 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %elems327, i64 0, i64 4, !dbg !2322
  %val329 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %arrayidx328, i32 0, i32 1, !dbg !2323
  %qwords330 = bitcast %union.vec64_t* %val329 to %struct.uint64v1_t*, !dbg !2324
  %elems331 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %qwords330, i32 0, i32 0, !dbg !2325
  %MM4 = getelementptr inbounds [1 x i64], [1 x i64]* %elems331, i64 0, i64 0, !dbg !2322
  %mmx333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2326
  %elems334 = getelementptr inbounds %struct.MMX, %struct.MMX* %mmx333, i32 0, i32 0, !dbg !2327
  %arrayidx335 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %elems334, i64 0, i64 5, !dbg !2328
  %val336 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %arrayidx335, i32 0, i32 1, !dbg !2329
  %qwords337 = bitcast %union.vec64_t* %val336 to %struct.uint64v1_t*, !dbg !2330
  %elems338 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %qwords337, i32 0, i32 0, !dbg !2331
  %MM5 = getelementptr inbounds [1 x i64], [1 x i64]* %elems338, i64 0, i64 0, !dbg !2328
  %mmx340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2332
  %elems341 = getelementptr inbounds %struct.MMX, %struct.MMX* %mmx340, i32 0, i32 0, !dbg !2333
  %arrayidx342 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %elems341, i64 0, i64 6, !dbg !2334
  %val343 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %arrayidx342, i32 0, i32 1, !dbg !2335
  %qwords344 = bitcast %union.vec64_t* %val343 to %struct.uint64v1_t*, !dbg !2336
  %elems345 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %qwords344, i32 0, i32 0, !dbg !2337
  %MM6 = getelementptr inbounds [1 x i64], [1 x i64]* %elems345, i64 0, i64 0, !dbg !2334
  %mmx347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2338
  %elems348 = getelementptr inbounds %struct.MMX, %struct.MMX* %mmx347, i32 0, i32 0, !dbg !2339
  %arrayidx349 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %elems348, i64 0, i64 7, !dbg !2340
  %val350 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %arrayidx349, i32 0, i32 1, !dbg !2341
  %qwords351 = bitcast %union.vec64_t* %val350 to %struct.uint64v1_t*, !dbg !2342
  %elems352 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %qwords351, i32 0, i32 0, !dbg !2343
  %MM7 = getelementptr inbounds [1 x i64], [1 x i64]* %elems352, i64 0, i64 0, !dbg !2340
  %aflag = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2344
  %AF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %aflag, i32 0, i32 5, !dbg !2345
  %aflag354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2346
  %CF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %aflag354, i32 0, i32 1, !dbg !2347
  %aflag355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2348
  %DF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %aflag355, i32 0, i32 11, !dbg !2349
  %aflag356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2350
  %OF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %aflag356, i32 0, i32 13, !dbg !2351
  %aflag357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2352
  %PF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %aflag357, i32 0, i32 3, !dbg !2353
  %aflag358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2354
  %SF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %aflag358, i32 0, i32 9, !dbg !2355
  %aflag359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2356
  %ZF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %aflag359, i32 0, i32 7, !dbg !2357
  store i64* @DR0, i64** %_DR0, align 8, !dbg !2358
  store i64* @DR1, i64** %_DR1, align 8, !dbg !2359
  store i64* @DR2, i64** %_DR2, align 8, !dbg !2360
  store i64* @DR3, i64** %_DR3, align 8, !dbg !2361
  store i64* @DR4, i64** %_DR4, align 8, !dbg !2362
  store i64* @DR5, i64** %_DR5, align 8, !dbg !2363
  store i64* @DR6, i64** %_DR6, align 8, !dbg !2364
  store i64* @DR7, i64** %_DR7, align 8, !dbg !2365
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0, align 8, !dbg !2366
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1, align 8, !dbg !2367
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2, align 8, !dbg !2368
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3, align 8, !dbg !2369
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4, align 8, !dbg !2370
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8, align 8, !dbg !2371
  ret %struct.Memory* %2, !dbg !2372
}

; Function Attrs: noduplicate noinline nounwind optnone
define void @__remill_intrinsics() #2 !dbg !2373 {
entry:
  ret void, !dbg !2375
}

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_barrier_load_store(%struct.Memory*) #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_atomic_begin(%struct.Memory*) #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_atomic_end(%struct.Memory*) #0

declare %struct.Memory* @__remill_fetch_and_sub_8(%struct.Memory*, i64, i8*)

declare %struct.Memory* @__remill_fetch_and_sub_16(%struct.Memory*, i64, i16*)

declare %struct.Memory* @__remill_fetch_and_sub_32(%struct.Memory*, i64, i32*)

declare %struct.Memory* @__remill_fetch_and_sub_64(%struct.Memory*, i64, i64*)

declare %struct.Memory* @__remill_fetch_and_or_8(%struct.Memory*, i64, i8*)

declare %struct.Memory* @__remill_fetch_and_or_16(%struct.Memory*, i64, i16*)

declare %struct.Memory* @__remill_fetch_and_or_32(%struct.Memory*, i64, i32*)

declare %struct.Memory* @__remill_fetch_and_or_64(%struct.Memory*, i64, i64*)

declare %struct.Memory* @__remill_fetch_and_and_8(%struct.Memory*, i64, i8*)

declare %struct.Memory* @__remill_fetch_and_and_16(%struct.Memory*, i64, i16*)

declare %struct.Memory* @__remill_fetch_and_and_32(%struct.Memory*, i64, i32*)

declare %struct.Memory* @__remill_fetch_and_and_64(%struct.Memory*, i64, i64*)

declare %struct.Memory* @__remill_fetch_and_xor_8(%struct.Memory*, i64, i8*)

declare %struct.Memory* @__remill_fetch_and_xor_16(%struct.Memory*, i64, i16*)

declare %struct.Memory* @__remill_fetch_and_xor_32(%struct.Memory*, i64, i32*)

declare %struct.Memory* @__remill_fetch_and_xor_64(%struct.Memory*, i64, i64*)

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State*, i64, %struct.Memory*) #2

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_return(%struct.State*, i64, %struct.Memory*) #2

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_jump(%struct.State*, i64, %struct.Memory*) #2

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_missing_block(%struct.State*, i64, %struct.Memory*) #2

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_async_hyper_call(%struct.State*, i64, %struct.Memory*) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i16 @__remill_undefined_16() #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i32 @__remill_undefined_32() #0

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare float @__remill_undefined_f32() #0

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_ITM_deregisterTMCloneTable(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_Jv_RegisterClasses(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__cxa_finalize(i64) #5

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_ITM_registerTMCloneTable(i64, i64) #5

; Function Attrs: noinline
define %struct.Memory* @sub_6e0___libc_csu_init(%struct.State* noalias, i64, %struct.Memory* noalias) #5 {
entry:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %gpr = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rip = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr, i32 0, i32 33
  %3 = getelementptr inbounds %struct.Reg, %struct.Reg* %rip, i32 0, i32 0
  %PC = bitcast %union.anon* %3 to i64*
  store i64 %1, i64* %PC, align 8
  %gpr112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rax113 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr112, i32 0, i32 1
  %4 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax113, i32 0, i32 0
  %EAX = bitcast %union.anon* %4 to i32*
  %gpr114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rbx115 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr114, i32 0, i32 3
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbx115, i32 0, i32 0
  %EBX = bitcast %union.anon* %5 to i32*
  %gpr126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rdi127 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr126, i32 0, i32 11
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdi127, i32 0, i32 0
  %EDI = bitcast %union.anon* %6 to i32*
  %gpr159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %r15160 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr159, i32 0, i32 31
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %r15160, i32 0, i32 0
  %R15D = bitcast %union.anon* %7 to i32*
  %gpr162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rax163 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr162, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax163, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %gpr165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rbx166 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr165, i32 0, i32 3
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbx166, i32 0, i32 0
  %RBX = bitcast %union.anon* %9 to i64*
  %gpr171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rdx172 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr171, i32 0, i32 7
  %10 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdx172, i32 0, i32 0
  %RDX = bitcast %union.anon* %10 to i64*
  %gpr174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rsi175 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr174, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsi175, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %gpr177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rdi178 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr177, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdi178, i32 0, i32 0
  %RDI = bitcast %union.anon* %12 to i64*
  %gpr180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rsp181 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr180, i32 0, i32 13
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsp181, i32 0, i32 0
  %RSP = bitcast %union.anon* %13 to i64*
  %gpr183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rbp184 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr183, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbp184, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %gpr198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %r12199 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr198, i32 0, i32 25
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %r12199, i32 0, i32 0
  %R12 = bitcast %union.anon* %15 to i64*
  %gpr201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %r13202 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr201, i32 0, i32 27
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %r13202, i32 0, i32 0
  %R13 = bitcast %union.anon* %16 to i64*
  %gpr204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %r14205 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr204, i32 0, i32 29
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %r14205, i32 0, i32 0
  %R14 = bitcast %union.anon* %17 to i64*
  %gpr207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %r15208 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr207, i32 0, i32 31
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %r15208, i32 0, i32 0
  %R15 = bitcast %union.anon* %18 to i64*
  %19 = load i64, i64* %R15
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 2
  store i64 %21, i64* %PC
  %qword.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %22 = load i64, i64* %qword.i.i, align 8, !tbaa !2376
  %sub.i.i.i = add i64 %22, -8
  %23 = inttoptr i64 %sub.i.i.i to i64*
  store i64 %19, i64* %23
  store i64 %sub.i.i.i, i64* %qword.i.i, align 8, !tbaa !2376
  %24 = load i64, i64* %R14
  %25 = load i64, i64* %PC
  %26 = add i64 %25, 2
  store i64 %26, i64* %PC
  %qword.i.i77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %27 = load i64, i64* %qword.i.i77, align 8, !tbaa !2376
  %sub.i.i.i78 = add i64 %27, -8
  %28 = inttoptr i64 %sub.i.i.i78 to i64*
  store i64 %24, i64* %28
  store i64 %sub.i.i.i78, i64* %qword.i.i77, align 8, !tbaa !2376
  %29 = bitcast i32* %R15D to i64*
  %30 = load i32, i32* %EDI
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 3
  store i64 %33, i64* %PC
  %conv.i11.i139 = and i64 %31, 4294967295
  store i64 %conv.i11.i139, i64* %29, align 8, !tbaa !2376
  %34 = load i64, i64* %R13
  %35 = load i64, i64* %PC
  %36 = add i64 %35, 2
  store i64 %36, i64* %PC
  %qword.i.i137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %37 = load i64, i64* %qword.i.i137, align 8, !tbaa !2376
  %sub.i.i.i138 = add i64 %37, -8
  %38 = inttoptr i64 %sub.i.i.i138 to i64*
  store i64 %34, i64* %38
  store i64 %sub.i.i.i138, i64* %qword.i.i137, align 8, !tbaa !2376
  %39 = load i64, i64* %R12
  %40 = load i64, i64* %PC
  %41 = add i64 %40, 2
  store i64 %41, i64* %PC
  %qword.i.i135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %42 = load i64, i64* %qword.i.i135, align 8, !tbaa !2376
  %sub.i.i.i136 = add i64 %42, -8
  %43 = inttoptr i64 %sub.i.i.i136 to i64*
  store i64 %39, i64* %43
  store i64 %sub.i.i.i136, i64* %qword.i.i135, align 8, !tbaa !2376
  %44 = load i64, i64* %PC
  %45 = add i64 %44, 7
  store i64 %45, i64* %PC
  store i64 ptrtoint (%seg_200de0__init_array_type* @seg_200de0__init_array to i64), i64* %R12, align 8, !tbaa !2376
  %46 = load i64, i64* %RBP
  %47 = load i64, i64* %PC
  %48 = add i64 %47, 1
  store i64 %48, i64* %PC
  %qword.i.i133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %49 = load i64, i64* %qword.i.i133, align 8, !tbaa !2376
  %sub.i.i.i134 = add i64 %49, -8
  %50 = inttoptr i64 %sub.i.i.i134 to i64*
  store i64 %46, i64* %50
  store i64 %sub.i.i.i134, i64* %qword.i.i133, align 8, !tbaa !2376
  %51 = load i64, i64* %PC
  %52 = add i64 %51, 7
  store i64 %52, i64* %PC
  store i64 add (i64 ptrtoint (%seg_200de0__init_array_type* @seg_200de0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2376
  %53 = load i64, i64* %RBX
  %54 = load i64, i64* %PC
  %55 = add i64 %54, 1
  store i64 %55, i64* %PC
  %qword.i.i131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %56 = load i64, i64* %qword.i.i131, align 8, !tbaa !2376
  %sub.i.i.i132 = add i64 %56, -8
  %57 = inttoptr i64 %sub.i.i.i132 to i64*
  store i64 %53, i64* %57
  store i64 %sub.i.i.i132, i64* %qword.i.i131, align 8, !tbaa !2376
  %58 = load i64, i64* %RSI
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 3
  store i64 %60, i64* %PC
  store i64 %58, i64* %R14, align 8, !tbaa !2376
  %61 = load i64, i64* %RDX
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 3
  store i64 %63, i64* %PC
  store i64 %61, i64* %R13, align 8, !tbaa !2376
  %64 = load i64, i64* %RBP
  %65 = load i64, i64* %R12
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 3
  store i64 %67, i64* %PC
  %sub.i.i107 = sub i64 %64, %65
  store i64 %sub.i.i107, i64* %RBP, align 8, !tbaa !2376
  %cmp.i.i.i108 = icmp ult i64 %64, %65
  %conv.i.i109 = zext i1 %cmp.i.i.i108 to i8
  %cf.i.i110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %conv.i.i109, i8* %cf.i.i110, align 1, !tbaa !2380
  %conv.i.i.i.i111 = trunc i64 %sub.i.i107 to i32
  %conv.i.i.i.i.i112 = and i32 %conv.i.i.i.i111, 255
  %68 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i112)
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  %pf.i.i.i113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %71, i8* %pf.i.i.i113, align 1, !tbaa !2394
  %xor.i25.i.i.i114 = xor i64 %65, %64
  %xor1.i.i.i.i115 = xor i64 %xor.i25.i.i.i114, %sub.i.i107
  %and.i.i.i.i116 = lshr i64 %xor1.i.i.i.i115, 4
  %72 = trunc i64 %and.i.i.i.i116 to i8
  %73 = and i8 %72, 1
  %af.i.i.i117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %73, i8* %af.i.i.i117, align 1, !tbaa !2395
  %cmp.i24.i.i.i118 = icmp eq i64 %sub.i.i107, 0
  %conv5.i.i.i119 = zext i1 %cmp.i24.i.i.i118 to i8
  %zf.i.i.i120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv5.i.i.i119, i8* %zf.i.i.i120, align 1, !tbaa !2396
  %res.lobit.i.i.i121 = lshr i64 %sub.i.i107, 63
  %74 = trunc i64 %res.lobit.i.i.i121 to i8
  %sf.i.i.i122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %74, i8* %sf.i.i.i122, align 1, !tbaa !2397
  %shr.i.i.i.i123 = lshr i64 %64, 63
  %shr1.i.i.i.i124 = lshr i64 %65, 63
  %xor.i.i.i.i125 = xor i64 %shr1.i.i.i.i124, %shr.i.i.i.i123
  %xor3.i.i.i.i126 = xor i64 %res.lobit.i.i.i121, %shr.i.i.i.i123
  %add.i.i.i.i127 = add nuw nsw i64 %xor3.i.i.i.i126, %xor.i.i.i.i125
  %cmp.i.i.i.i128 = icmp eq i64 %add.i.i.i.i127, 2
  %conv11.i.i.i129 = zext i1 %cmp.i.i.i.i128 to i8
  %of.i.i.i130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %conv11.i.i.i129, i8* %of.i.i.i130, align 1, !tbaa !2398
  %75 = load i64, i64* %RSP
  %76 = load i64, i64* %PC
  %77 = add i64 %76, 4
  store i64 %77, i64* %PC
  %sub.i.i85 = sub i64 %75, 8
  store i64 %sub.i.i85, i64* %RSP, align 8, !tbaa !2376
  %cmp.i.i.i86 = icmp ult i64 %75, 8
  %conv.i.i87 = zext i1 %cmp.i.i.i86 to i8
  %cf.i.i88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %conv.i.i87, i8* %cf.i.i88, align 1, !tbaa !2380
  %conv.i.i.i.i89 = trunc i64 %sub.i.i85 to i32
  %conv.i.i.i.i.i90 = and i32 %conv.i.i.i.i89, 255
  %78 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i90)
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  %81 = xor i8 %80, 1
  %pf.i.i.i91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %81, i8* %pf.i.i.i91, align 1, !tbaa !2394
  %xor.i25.i.i.i92 = xor i64 8, %75
  %xor1.i.i.i.i93 = xor i64 %xor.i25.i.i.i92, %sub.i.i85
  %and.i.i.i.i94 = lshr i64 %xor1.i.i.i.i93, 4
  %82 = trunc i64 %and.i.i.i.i94 to i8
  %83 = and i8 %82, 1
  %af.i.i.i95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %83, i8* %af.i.i.i95, align 1, !tbaa !2395
  %cmp.i24.i.i.i96 = icmp eq i64 %sub.i.i85, 0
  %conv5.i.i.i97 = zext i1 %cmp.i24.i.i.i96 to i8
  %zf.i.i.i98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv5.i.i.i97, i8* %zf.i.i.i98, align 1, !tbaa !2396
  %res.lobit.i.i.i99 = lshr i64 %sub.i.i85, 63
  %84 = trunc i64 %res.lobit.i.i.i99 to i8
  %sf.i.i.i100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %84, i8* %sf.i.i.i100, align 1, !tbaa !2397
  %shr.i.i.i.i101 = lshr i64 %75, 63
  %xor3.i.i.i.i102 = xor i64 %res.lobit.i.i.i99, %shr.i.i.i.i101
  %add.i.i.i.i103 = add nuw nsw i64 %xor3.i.i.i.i102, %shr.i.i.i.i101
  %cmp.i.i.i.i104 = icmp eq i64 %add.i.i.i.i103, 2
  %conv11.i.i.i105 = zext i1 %cmp.i.i.i.i104 to i8
  %of.i.i.i106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %conv11.i.i.i105, i8* %of.i.i.i106, align 1, !tbaa !2398
  %85 = load i64, i64* %RBP
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 4
  store i64 %87, i64* %PC
  %shr.i150.i = ashr i64 %85, 2
  %88 = trunc i64 %shr.i150.i to i8
  %89 = and i8 %88, 1
  %shr.i.i = ashr i64 %shr.i150.i, 1
  store i64 %shr.i.i, i64* %RBP, align 8, !tbaa !2376
  %cf.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %89, i8* %cf.i, align 1, !tbaa !2399
  %pf.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %conv.i.i82 = trunc i64 %shr.i.i to i32
  %conv.i.i.i83 = and i32 %conv.i.i82, 255
  %90 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i83)
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = xor i8 %92, 1
  store i8 %93, i8* %pf.i, align 1, !tbaa !2399
  %af.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %af.i, align 1, !tbaa !2399
  %zf.i84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %cmp.i147.i = icmp eq i64 %shr.i.i, 0
  %conv78.i = zext i1 %cmp.i147.i to i8
  store i8 %conv78.i, i8* %zf.i84, align 1, !tbaa !2399
  %sf.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %new_val.0.lobit.i = lshr i64 %shr.i.i, 63
  %94 = trunc i64 %new_val.0.lobit.i to i8
  store i8 %94, i8* %sf.i, align 1, !tbaa !2399
  %of.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %of.i, align 1, !tbaa !2399
  %95 = load i64, i64* %PC
  %96 = sub i64 %95, 532
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 5
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 5
  store i64 %100, i64* %PC
  %qword.i79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %101 = load i64, i64* %qword.i79, align 8, !tbaa !2376
  %sub.i.i80 = add i64 %101, -8
  %102 = inttoptr i64 %sub.i.i80 to i64*
  store i64 %98, i64* %102
  store i64 %sub.i.i80, i64* %qword.i79, align 8, !tbaa !2376
  %qword18.i81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %96, i64* %qword18.i81, align 8, !tbaa !2376
  %103 = load i64, i64* %PC
  %104 = call %struct.Memory* @sub_4f8__init_proc(%struct.State* %0, i64 %103, %struct.Memory* %2)
  %105 = load i64, i64* %RBP
  %106 = load i64, i64* %RBP
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 3
  store i64 %108, i64* %PC
  %and.i.i = and i64 %106, %105
  %cf.i.i67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %cf.i.i67, align 1, !tbaa !2380
  %conv.i.i.i = trunc i64 %and.i.i to i32
  %conv.i.i.i.i68 = and i32 %conv.i.i.i, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i68)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  %pf.i.i69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %112, i8* %pf.i.i69, align 1, !tbaa !2394
  %cmp.i1.i.i70 = icmp eq i64 %and.i.i, 0
  %conv3.i.i71 = zext i1 %cmp.i1.i.i70 to i8
  %zf.i.i72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv3.i.i71, i8* %zf.i.i72, align 1, !tbaa !2396
  %res.lobit.i.i73 = lshr i64 %and.i.i, 63
  %113 = trunc i64 %res.lobit.i.i73 to i8
  %sf.i.i74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %113, i8* %sf.i.i74, align 1, !tbaa !2397
  %of.i.i75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %of.i.i75, align 1, !tbaa !2398
  %af.i.i76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %af.i.i76, align 1, !tbaa !2395
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 34
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 2
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 2
  store i64 %119, i64* %PC
  %zf.i64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %120 = load i8, i8* %zf.i64, align 1, !tbaa !2396
  store i8 %120, i8* %BRANCH_TAKEN, align 1, !tbaa !2399
  %qword.i65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %tobool.i = icmp ne i8 %120, 0
  %cond1.i.i66 = select i1 %tobool.i, i64 %115, i64 %117
  store i64 %cond1.i.i66, i64* %qword.i65, align 8, !tbaa !2376
  %121 = load i8, i8* %BRANCH_TAKEN
  %122 = icmp eq i8 %121, 1
  br i1 %122, label %block_736, label %block_716

block_736:                                        ; preds = %block_720, %entry
  %MEMORY.0 = phi %struct.Memory* [ %104, %entry ], [ %208, %block_720 ]
  %123 = load i64, i64* %RSP
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 4
  store i64 %125, i64* %PC
  %add.i.i40 = add i64 8, %123
  store i64 %add.i.i40, i64* %RSP, align 8, !tbaa !2376
  %cmp.i.i.i41 = icmp ult i64 %add.i.i40, %123
  %cmp1.i.i.i42 = icmp ult i64 %add.i.i40, 8
  %.cmp1.i.i.i43 = or i1 %cmp.i.i.i41, %cmp1.i.i.i42
  %conv.i.i44 = zext i1 %.cmp1.i.i.i43 to i8
  %cf.i.i45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %conv.i.i44, i8* %cf.i.i45, align 1, !tbaa !2380
  %conv.i.i.i.i46 = trunc i64 %add.i.i40 to i32
  %conv.i.i.i.i.i47 = and i32 %conv.i.i.i.i46, 255
  %126 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i47)
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = xor i8 %128, 1
  %pf.i.i.i48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %129, i8* %pf.i.i.i48, align 1, !tbaa !2394
  %xor.i25.i.i.i49 = xor i64 8, %123
  %xor1.i.i.i.i50 = xor i64 %xor.i25.i.i.i49, %add.i.i40
  %and.i.i.i.i51 = lshr i64 %xor1.i.i.i.i50, 4
  %130 = trunc i64 %and.i.i.i.i51 to i8
  %131 = and i8 %130, 1
  %af.i.i.i52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %131, i8* %af.i.i.i52, align 1, !tbaa !2395
  %cmp.i24.i.i.i53 = icmp eq i64 %add.i.i40, 0
  %conv5.i.i.i54 = zext i1 %cmp.i24.i.i.i53 to i8
  %zf.i.i.i55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv5.i.i.i54, i8* %zf.i.i.i55, align 1, !tbaa !2396
  %res.lobit.i.i.i56 = lshr i64 %add.i.i40, 63
  %132 = trunc i64 %res.lobit.i.i.i56 to i8
  %sf.i.i.i57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %132, i8* %sf.i.i.i57, align 1, !tbaa !2397
  %shr.i.i.i.i58 = lshr i64 %123, 63
  %xor.i.i.i.i59 = xor i64 %res.lobit.i.i.i56, %shr.i.i.i.i58
  %add.i.i.i.i60 = add nuw nsw i64 %xor.i.i.i.i59, %res.lobit.i.i.i56
  %cmp.i.i.i.i61 = icmp eq i64 %add.i.i.i.i60, 2
  %conv11.i.i.i62 = zext i1 %cmp.i.i.i.i61 to i8
  %of.i.i.i63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %conv11.i.i.i62, i8* %of.i.i.i63, align 1, !tbaa !2398
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 1
  store i64 %134, i64* %PC
  %qword.i38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %135 = load i64, i64* %qword.i38, align 8, !tbaa !2376
  %add.i.i39 = add i64 %135, 8
  %136 = inttoptr i64 %135 to i64*
  %137 = load i64, i64* %136
  store i64 %137, i64* %RBX, align 8, !tbaa !2376
  store i64 %add.i.i39, i64* %qword.i38, align 8, !tbaa !2376
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 1
  store i64 %139, i64* %PC
  %qword.i36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %140 = load i64, i64* %qword.i36, align 8, !tbaa !2376
  %add.i.i37 = add i64 %140, 8
  %141 = inttoptr i64 %140 to i64*
  %142 = load i64, i64* %141
  store i64 %142, i64* %RBP, align 8, !tbaa !2376
  store i64 %add.i.i37, i64* %qword.i36, align 8, !tbaa !2376
  %143 = load i64, i64* %PC
  %144 = add i64 %143, 2
  store i64 %144, i64* %PC
  %qword.i34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %145 = load i64, i64* %qword.i34, align 8, !tbaa !2376
  %add.i.i35 = add i64 %145, 8
  %146 = inttoptr i64 %145 to i64*
  %147 = load i64, i64* %146
  store i64 %147, i64* %R12, align 8, !tbaa !2376
  store i64 %add.i.i35, i64* %qword.i34, align 8, !tbaa !2376
  %148 = load i64, i64* %PC
  %149 = add i64 %148, 2
  store i64 %149, i64* %PC
  %qword.i32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %150 = load i64, i64* %qword.i32, align 8, !tbaa !2376
  %add.i.i33 = add i64 %150, 8
  %151 = inttoptr i64 %150 to i64*
  %152 = load i64, i64* %151
  store i64 %152, i64* %R13, align 8, !tbaa !2376
  store i64 %add.i.i33, i64* %qword.i32, align 8, !tbaa !2376
  %153 = load i64, i64* %PC
  %154 = add i64 %153, 2
  store i64 %154, i64* %PC
  %qword.i30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %155 = load i64, i64* %qword.i30, align 8, !tbaa !2376
  %add.i.i31 = add i64 %155, 8
  %156 = inttoptr i64 %155 to i64*
  %157 = load i64, i64* %156
  store i64 %157, i64* %R14, align 8, !tbaa !2376
  store i64 %add.i.i31, i64* %qword.i30, align 8, !tbaa !2376
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 2
  store i64 %159, i64* %PC
  %qword.i28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %160 = load i64, i64* %qword.i28, align 8, !tbaa !2376
  %add.i.i29 = add i64 %160, 8
  %161 = inttoptr i64 %160 to i64*
  %162 = load i64, i64* %161
  store i64 %162, i64* %R15, align 8, !tbaa !2376
  store i64 %add.i.i29, i64* %qword.i28, align 8, !tbaa !2376
  %163 = load i64, i64* %PC
  %164 = add i64 %163, 1
  store i64 %164, i64* %PC
  %qword.i26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %qword2.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %165 = load i64, i64* %qword2.i, align 8, !tbaa !2376
  %166 = inttoptr i64 %165 to i64*
  %167 = load i64, i64* %166
  store i64 %167, i64* %qword.i26, align 8, !tbaa !2376
  %add.i.i27 = add i64 %165, 8
  store i64 %add.i.i27, i64* %qword2.i, align 8, !tbaa !2376
  ret %struct.Memory* %MEMORY.0

block_716:                                        ; preds = %entry
  %168 = load i64, i64* %RBX
  %169 = load i32, i32* %EBX
  %170 = zext i32 %169 to i64
  %171 = load i64, i64* %PC
  %172 = add i64 %171, 2
  store i64 %172, i64* %PC
  %xor3.i26.i = xor i64 %170, %168
  %xor3.i.i = trunc i64 %xor3.i26.i to i32
  %conv.i24.i = and i64 %xor3.i26.i, 4294967295
  store i64 %conv.i24.i, i64* %RBX, align 8, !tbaa !2376
  %cf.i.i24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %cf.i.i24, align 1, !tbaa !2380
  %conv.i.i.i.i25 = and i32 %xor3.i.i, 255
  %173 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i25)
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  %pf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %176, i8* %pf.i.i, align 1, !tbaa !2394
  %cmp.i1.i.i = icmp eq i32 %xor3.i.i, 0
  %conv3.i.i = zext i1 %cmp.i1.i.i to i8
  %zf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv3.i.i, i8* %zf.i.i, align 1, !tbaa !2396
  %res.lobit.i.i = lshr i32 %xor3.i.i, 31
  %177 = trunc i32 %res.lobit.i.i to i8
  %sf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %177, i8* %sf.i.i, align 1, !tbaa !2397
  %of.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %of.i.i, align 1, !tbaa !2398
  %af.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %af.i.i, align 1, !tbaa !2395
  %178 = load i64, i64* %RAX
  %179 = load i64, i64* %RAX
  %180 = add i64 %179, %178
  %181 = load i32, i32* %EAX
  %182 = zext i32 %181 to i64
  %183 = load i64, i64* %PC
  %184 = add i64 %183, 8
  store i64 %184, i64* %PC
  br label %block_720

block_720:                                        ; preds = %block_720, %block_716
  %MEMORY.1 = phi %struct.Memory* [ %104, %block_716 ], [ %208, %block_720 ]
  %185 = load i64, i64* %R13
  %186 = load i64, i64* %PC
  %187 = add i64 %186, 3
  store i64 %187, i64* %PC
  store i64 %185, i64* %RDX, align 8, !tbaa !2376
  %188 = load i64, i64* %R14
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 3
  store i64 %190, i64* %PC
  store i64 %188, i64* %RSI, align 8, !tbaa !2376
  %191 = load i32, i32* %R15D
  %192 = zext i32 %191 to i64
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 3
  store i64 %194, i64* %PC
  %conv.i11.i = and i64 %192, 4294967295
  store i64 %conv.i11.i, i64* %RDI, align 8, !tbaa !2376
  %195 = load i64, i64* %R12
  %196 = load i64, i64* %RBX
  %197 = mul i64 %196, 8
  %198 = add i64 %197, %195
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 4
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 4
  store i64 %202, i64* %PC
  %qword.i22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %203 = load i64, i64* %qword.i22, align 8, !tbaa !2376
  %sub.i.i23 = add i64 %203, -8
  %204 = inttoptr i64 %sub.i.i23 to i64*
  store i64 %200, i64* %204
  store i64 %sub.i.i23, i64* %qword.i22, align 8, !tbaa !2376
  %qword18.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %205 = inttoptr i64 %198 to i64*
  %206 = load i64, i64* %205
  store i64 %206, i64* %qword18.i, align 8, !tbaa !2376
  %207 = load i64, i64* %PC
  %208 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %207, %struct.Memory* %MEMORY.1)
  %209 = load i64, i64* %RBX
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 4
  store i64 %211, i64* %PC
  %add.i.i = add i64 1, %209
  store i64 %add.i.i, i64* %RBX, align 8, !tbaa !2376
  %cmp.i.i.i1 = icmp ult i64 %add.i.i, %209
  %cmp1.i.i.i = icmp ult i64 %add.i.i, 1
  %.cmp1.i.i.i = or i1 %cmp.i.i.i1, %cmp1.i.i.i
  %conv.i.i2 = zext i1 %.cmp1.i.i.i to i8
  %cf.i.i3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %conv.i.i2, i8* %cf.i.i3, align 1, !tbaa !2380
  %conv.i.i.i.i4 = trunc i64 %add.i.i to i32
  %conv.i.i.i.i.i5 = and i32 %conv.i.i.i.i4, 255
  %212 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i5)
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  %pf.i.i.i6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %215, i8* %pf.i.i.i6, align 1, !tbaa !2394
  %xor.i25.i.i.i7 = xor i64 1, %209
  %xor1.i.i.i.i8 = xor i64 %xor.i25.i.i.i7, %add.i.i
  %and.i.i.i.i9 = lshr i64 %xor1.i.i.i.i8, 4
  %216 = trunc i64 %and.i.i.i.i9 to i8
  %217 = and i8 %216, 1
  %af.i.i.i10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %217, i8* %af.i.i.i10, align 1, !tbaa !2395
  %cmp.i24.i.i.i11 = icmp eq i64 %add.i.i, 0
  %conv5.i.i.i12 = zext i1 %cmp.i24.i.i.i11 to i8
  %zf.i.i.i13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv5.i.i.i12, i8* %zf.i.i.i13, align 1, !tbaa !2396
  %res.lobit.i.i.i14 = lshr i64 %add.i.i, 63
  %218 = trunc i64 %res.lobit.i.i.i14 to i8
  %sf.i.i.i15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %218, i8* %sf.i.i.i15, align 1, !tbaa !2397
  %shr.i.i.i.i16 = lshr i64 %209, 63
  %xor.i.i.i.i17 = xor i64 %res.lobit.i.i.i14, %shr.i.i.i.i16
  %add.i.i.i.i18 = add nuw nsw i64 %xor.i.i.i.i17, %res.lobit.i.i.i14
  %cmp.i.i.i.i19 = icmp eq i64 %add.i.i.i.i18, 2
  %conv11.i.i.i20 = zext i1 %cmp.i.i.i.i19 to i8
  %of.i.i.i21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %conv11.i.i.i20, i8* %of.i.i.i21, align 1, !tbaa !2398
  %219 = load i64, i64* %RBP
  %220 = load i64, i64* %RBX
  %221 = load i64, i64* %PC
  %222 = add i64 %221, 3
  store i64 %222, i64* %PC
  %sub.i.i = sub i64 %219, %220
  %cmp.i.i.i = icmp ult i64 %219, %220
  %conv.i.i = zext i1 %cmp.i.i.i to i8
  %cf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %conv.i.i, i8* %cf.i.i, align 1, !tbaa !2380
  %conv.i.i.i.i = trunc i64 %sub.i.i to i32
  %conv.i.i.i.i.i = and i32 %conv.i.i.i.i, 255
  %223 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i)
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  %pf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %226, i8* %pf.i.i.i, align 1, !tbaa !2394
  %xor.i25.i.i.i = xor i64 %220, %219
  %xor1.i.i.i.i = xor i64 %xor.i25.i.i.i, %sub.i.i
  %and.i.i.i.i = lshr i64 %xor1.i.i.i.i, 4
  %227 = trunc i64 %and.i.i.i.i to i8
  %228 = and i8 %227, 1
  %af.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %228, i8* %af.i.i.i, align 1, !tbaa !2395
  %cmp.i24.i.i.i = icmp eq i64 %sub.i.i, 0
  %conv5.i.i.i = zext i1 %cmp.i24.i.i.i to i8
  %zf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv5.i.i.i, i8* %zf.i.i.i, align 1, !tbaa !2396
  %res.lobit.i.i.i = lshr i64 %sub.i.i, 63
  %229 = trunc i64 %res.lobit.i.i.i to i8
  %sf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %229, i8* %sf.i.i.i, align 1, !tbaa !2397
  %shr.i.i.i.i = lshr i64 %219, 63
  %shr1.i.i.i.i = lshr i64 %220, 63
  %xor.i.i.i.i = xor i64 %shr1.i.i.i.i, %shr.i.i.i.i
  %xor3.i.i.i.i = xor i64 %res.lobit.i.i.i, %shr.i.i.i.i
  %add.i.i.i.i = add nuw nsw i64 %xor3.i.i.i.i, %xor.i.i.i.i
  %cmp.i.i.i.i = icmp eq i64 %add.i.i.i.i, 2
  %conv11.i.i.i = zext i1 %cmp.i.i.i.i to i8
  %of.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %conv11.i.i.i, i8* %of.i.i.i, align 1, !tbaa !2398
  %230 = load i64, i64* %PC
  %231 = sub i64 %230, 20
  %232 = load i64, i64* %PC
  %233 = add i64 %232, 2
  %234 = load i64, i64* %PC
  %235 = add i64 %234, 2
  store i64 %235, i64* %PC
  %zf.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %236 = load i8, i8* %zf.i, align 1, !tbaa !2396
  %lnot.i.i = icmp eq i8 %236, 0
  %frombool.i = zext i1 %lnot.i.i to i8
  store i8 %frombool.i, i8* %BRANCH_TAKEN, align 1, !tbaa !2399
  %qword.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %cond1.i.i = select i1 %lnot.i.i, i64 %231, i64 %233
  store i64 %cond1.i.i, i64* %qword.i, align 8, !tbaa !2376
  %237 = load i8, i8* %BRANCH_TAKEN
  %238 = icmp eq i8 %237, 1
  br i1 %238, label %block_720, label %block_736
}

; Function Attrs: noinline
define %struct.Memory* @sub_67b_init_var_correspondence(%struct.State* noalias, i64, %struct.Memory* noalias) #5 {
entry:
  %gpr = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rip = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr, i32 0, i32 33
  %3 = getelementptr inbounds %struct.Reg, %struct.Reg* %rip, i32 0, i32 0
  %PC = bitcast %union.anon* %3 to i64*
  store i64 %1, i64* %PC, align 8
  %gpr162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rax163 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr162, i32 0, i32 1
  %4 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax163, i32 0, i32 0
  %RAX = bitcast %union.anon* %4 to i64*
  %gpr165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rbx166 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr165, i32 0, i32 3
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbx166, i32 0, i32 0
  %RBX = bitcast %union.anon* %5 to i64*
  %gpr168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rcx169 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr168, i32 0, i32 5
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %rcx169, i32 0, i32 0
  %RCX = bitcast %union.anon* %6 to i64*
  %gpr171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rdx172 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr171, i32 0, i32 7
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdx172, i32 0, i32 0
  %RDX = bitcast %union.anon* %7 to i64*
  %gpr174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rsi175 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr174, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsi175, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %gpr177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rdi178 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr177, i32 0, i32 11
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdi178, i32 0, i32 0
  %RDI = bitcast %union.anon* %9 to i64*
  %gpr180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rsp181 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr180, i32 0, i32 13
  %10 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsp181, i32 0, i32 0
  %RSP = bitcast %union.anon* %10 to i64*
  %gpr183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rbp184 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr183, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbp184, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 1
  store i64 %14, i64* %PC
  %qword.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %15 = load i64, i64* %qword.i.i, align 8, !tbaa !2376
  %sub.i.i.i = add i64 %15, -8
  %16 = inttoptr i64 %sub.i.i.i to i64*
  store i64 %12, i64* %16
  store i64 %sub.i.i.i, i64* %qword.i.i, align 8, !tbaa !2376
  %17 = load i64, i64* %RSP
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 3
  store i64 %19, i64* %PC
  store i64 %17, i64* %RBP, align 8, !tbaa !2376
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  store i64 10, i64* %RAX, align 8, !tbaa !2376
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  store i64 20, i64* %RBX, align 8, !tbaa !2376
  %24 = load i64, i64* %PC
  %25 = add i64 %24, 7
  store i64 %25, i64* %PC
  store i64 30, i64* %RCX, align 8, !tbaa !2376
  %26 = load i64, i64* %PC
  %27 = add i64 %26, 7
  store i64 %27, i64* %PC
  store i64 40, i64* %RDX, align 8, !tbaa !2376
  %28 = load i64, i64* %PC
  %29 = add i64 %28, 7
  store i64 %29, i64* %PC
  store i64 50, i64* %RSI, align 8, !tbaa !2376
  %30 = load i64, i64* %PC
  %31 = add i64 %30, 5
  store i64 %31, i64* %PC
  store i64 90, i64* %RDI, align 8, !tbaa !2376
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 7
  store i64 %33, i64* %PC
  store i64 60, i64* %RDI, align 8, !tbaa !2376
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 1
  store i64 %35, i64* %PC
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 1
  store i64 %37, i64* %PC
  %qword.i1 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %38 = load i64, i64* %qword.i1, align 8, !tbaa !2376
  %add.i.i2 = add i64 %38, 8
  %39 = inttoptr i64 %38 to i64*
  %40 = load i64, i64* %39
  store i64 %40, i64* %RBP, align 8, !tbaa !2376
  store i64 %add.i.i2, i64* %qword.i1, align 8, !tbaa !2376
  %41 = load i64, i64* %PC
  %42 = add i64 %41, 1
  store i64 %42, i64* %PC
  %qword.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %qword2.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %43 = load i64, i64* %qword2.i, align 8, !tbaa !2376
  %44 = inttoptr i64 %43 to i64*
  %45 = load i64, i64* %44
  store i64 %45, i64* %qword.i, align 8, !tbaa !2376
  %add.i.i = add i64 %43, 8
  store i64 %add.i.i, i64* %qword2.i, align 8, !tbaa !2376
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_660_get_sign(%struct.State* noalias, i64, %struct.Memory* noalias) #5 {
entry:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %gpr = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rip = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr, i32 0, i32 33
  %3 = getelementptr inbounds %struct.Reg, %struct.Reg* %rip, i32 0, i32 0
  %PC = bitcast %union.anon* %3 to i64*
  store i64 %1, i64* %PC, align 8
  %gpr126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rdi127 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr126, i32 0, i32 11
  %4 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdi127, i32 0, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %gpr162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rax163 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr162, i32 0, i32 1
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax163, i32 0, i32 0
  %RAX = bitcast %union.anon* %5 to i64*
  %gpr180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rsp181 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr180, i32 0, i32 13
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsp181, i32 0, i32 0
  %RSP = bitcast %union.anon* %6 to i64*
  %gpr183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rbp184 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr183, i32 0, i32 15
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbp184, i32 0, i32 0
  %RBP = bitcast %union.anon* %7 to i64*
  %8 = load i64, i64* %RBP
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %qword.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = load i64, i64* %qword.i.i, align 8, !tbaa !2376
  %sub.i.i.i = add i64 %11, -8
  %12 = inttoptr i64 %sub.i.i.i to i64*
  store i64 %8, i64* %12
  store i64 %sub.i.i.i, i64* %qword.i.i, align 8, !tbaa !2376
  %13 = load i64, i64* %RSP
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  store i64 %13, i64* %RBP, align 8, !tbaa !2376
  %16 = load i64, i64* %RBP
  %17 = sub i64 %16, 4
  %18 = load i32, i32* %EDI
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %17 to i32*
  store i32 %18, i32* %22
  %23 = load i64, i64* %RBP
  %24 = sub i64 %23, 4
  %25 = load i64, i64* %PC
  %26 = add i64 %25, 4
  store i64 %26, i64* %PC
  %27 = inttoptr i64 %24 to i32*
  %28 = load i32, i32* %27
  %cf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %cf.i.i, align 1, !tbaa !2380
  %conv.i.i.i.i.i = and i32 %28, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %pf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %pf.i.i.i, align 1, !tbaa !2394
  %af.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %af.i.i.i, align 1, !tbaa !2395
  %cmp.i24.i.i.i = icmp eq i32 %28, 0
  %conv5.i.i.i = zext i1 %cmp.i24.i.i.i to i8
  %zf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv5.i.i.i, i8* %zf.i.i.i, align 1, !tbaa !2396
  %res.lobit.i.i.i = lshr i32 %28, 31
  %33 = trunc i32 %res.lobit.i.i.i to i8
  %sf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %sf.i.i.i, align 1, !tbaa !2397
  %shr.i.i.i.i = lshr i32 %28, 31
  %xor3.i.i.i.i = xor i32 %res.lobit.i.i.i, %shr.i.i.i.i
  %add.i.i.i.i = add nuw nsw i32 %xor3.i.i.i.i, %shr.i.i.i.i
  %cmp.i.i.i.i = icmp eq i32 %add.i.i.i.i, 2
  %conv11.i.i.i = zext i1 %cmp.i.i.i.i to i8
  %of.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %conv11.i.i.i, i8* %of.i.i.i, align 1, !tbaa !2398
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 9
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 2
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 2
  store i64 %39, i64* %PC
  %zf.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = load i8, i8* %zf.i, align 1, !tbaa !2396
  %lnot.i.i = icmp eq i8 %40, 0
  %sf.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %41 = load i8, i8* %sf.i, align 1, !tbaa !2397
  %tobool9.i = icmp ne i8 %41, 0
  %of.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %42 = load i8, i8* %of.i, align 1, !tbaa !2398
  %tobool11.i = icmp ne i8 %42, 0
  %cmptmp.i.i = xor i1 %tobool9.i, %tobool11.i
  %cmp.i.i = xor i1 %cmptmp.i.i, true
  %43 = and i1 %lnot.i.i, %cmp.i.i
  %frombool.i = zext i1 %43 to i8
  store i8 %frombool.i, i8* %BRANCH_TAKEN, align 1, !tbaa !2399
  %qword.i4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %cond1.i.i = select i1 %43, i64 %35, i64 %37
  store i64 %cond1.i.i, i64* %qword.i4, align 8, !tbaa !2376
  %44 = load i8, i8* %BRANCH_TAKEN
  %45 = icmp eq i8 %44, 1
  %46 = load i64, i64* %PC
  %47 = add i64 %46, 5
  store i64 %47, i64* %PC
  br i1 %45, label %block_674, label %block_66d

block_66d:                                        ; preds = %entry
  store i64 1, i64* %RAX, align 8, !tbaa !2376
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 7
  %50 = load i64, i64* %PC
  %51 = add i64 %50, 2
  store i64 %51, i64* %PC
  %qword.i3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %49, i64* %qword.i3, align 8, !tbaa !2376
  br label %block_679

block_674:                                        ; preds = %entry
  store i64 0, i64* %RAX, align 8, !tbaa !2376
  br label %block_679

block_679:                                        ; preds = %block_674, %block_66d
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_674 ], [ %2, %block_66d ]
  %52 = load i64, i64* %PC
  %53 = add i64 %52, 1
  store i64 %53, i64* %PC
  %qword.i1 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %54 = load i64, i64* %qword.i1, align 8, !tbaa !2376
  %add.i.i2 = add i64 %54, 8
  %55 = inttoptr i64 %54 to i64*
  %56 = load i64, i64* %55
  store i64 %56, i64* %RBP, align 8, !tbaa !2376
  store i64 %add.i.i2, i64* %qword.i1, align 8, !tbaa !2376
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 1
  store i64 %58, i64* %PC
  %qword.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %qword2.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %59 = load i64, i64* %qword2.i, align 8, !tbaa !2376
  %60 = inttoptr i64 %59 to i64*
  %61 = load i64, i64* %60
  store i64 %61, i64* %qword.i, align 8, !tbaa !2376
  %add.i.i = add i64 %59, 8
  store i64 %add.i.i, i64* %qword2.i, align 8, !tbaa !2376
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_4f8__init_proc(%struct.State* noalias, i64, %struct.Memory* noalias) #5 {
entry:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %gpr = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rip = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr, i32 0, i32 33
  %3 = getelementptr inbounds %struct.Reg, %struct.Reg* %rip, i32 0, i32 0
  %PC = bitcast %union.anon* %3 to i64*
  store i64 %1, i64* %PC, align 8
  %gpr162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rax163 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr162, i32 0, i32 1
  %4 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax163, i32 0, i32 0
  %RAX = bitcast %union.anon* %4 to i64*
  %gpr180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rsp181 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr180, i32 0, i32 13
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsp181, i32 0, i32 0
  %RSP = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %RSP
  %7 = load i64, i64* %PC
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC
  %sub.i.i = sub i64 %6, 8
  store i64 %sub.i.i, i64* %RSP, align 8, !tbaa !2376
  %cmp.i.i.i = icmp ult i64 %6, 8
  %conv.i.i = zext i1 %cmp.i.i.i to i8
  %cf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %conv.i.i, i8* %cf.i.i, align 1, !tbaa !2380
  %conv.i.i.i.i = trunc i64 %sub.i.i to i32
  %conv.i.i.i.i.i = and i32 %conv.i.i.i.i, 255
  %9 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %pf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %pf.i.i.i, align 1, !tbaa !2394
  %xor.i25.i.i.i = xor i64 8, %6
  %xor1.i.i.i.i = xor i64 %xor.i25.i.i.i, %sub.i.i
  %and.i.i.i.i = lshr i64 %xor1.i.i.i.i, 4
  %13 = trunc i64 %and.i.i.i.i to i8
  %14 = and i8 %13, 1
  %af.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %14, i8* %af.i.i.i, align 1, !tbaa !2395
  %cmp.i24.i.i.i = icmp eq i64 %sub.i.i, 0
  %conv5.i.i.i = zext i1 %cmp.i24.i.i.i to i8
  %zf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv5.i.i.i, i8* %zf.i.i.i, align 1, !tbaa !2396
  %res.lobit.i.i.i = lshr i64 %sub.i.i, 63
  %15 = trunc i64 %res.lobit.i.i.i to i8
  %sf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %15, i8* %sf.i.i.i, align 1, !tbaa !2397
  %shr.i.i.i.i = lshr i64 %6, 63
  %xor3.i.i.i.i = xor i64 %res.lobit.i.i.i, %shr.i.i.i.i
  %add.i.i.i.i = add nuw nsw i64 %xor3.i.i.i.i, %shr.i.i.i.i
  %cmp.i.i.i.i = icmp eq i64 %add.i.i.i.i, 2
  %conv11.i.i.i = zext i1 %cmp.i.i.i.i to i8
  %of.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %conv11.i.i.i, i8* %of.i.i.i, align 1, !tbaa !2398
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_200fb8__got_type* @seg_200fb8__got to i64), i64 40) to i64*)
  store i64 %18, i64* %RAX, align 8, !tbaa !2376
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %RAX
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %and.i.i = and i64 %20, %19
  %cf.i.i25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %cf.i.i25, align 1, !tbaa !2380
  %conv.i.i.i = trunc i64 %and.i.i to i32
  %conv.i.i.i.i26 = and i32 %conv.i.i.i, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i26)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %pf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %pf.i.i, align 1, !tbaa !2394
  %cmp.i1.i.i = icmp eq i64 %and.i.i, 0
  %conv3.i.i = zext i1 %cmp.i1.i.i to i8
  %zf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv3.i.i, i8* %zf.i.i, align 1, !tbaa !2396
  %res.lobit.i.i = lshr i64 %and.i.i, 63
  %27 = trunc i64 %res.lobit.i.i to i8
  %sf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %sf.i.i, align 1, !tbaa !2397
  %of.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %of.i.i, align 1, !tbaa !2398
  %af.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %af.i.i, align 1, !tbaa !2395
  %28 = load i64, i64* %PC
  %29 = add i64 %28, 4
  %30 = load i64, i64* %PC
  %31 = add i64 %30, 2
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 2
  store i64 %33, i64* %PC
  %zf.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %34 = load i8, i8* %zf.i, align 1, !tbaa !2396
  store i8 %34, i8* %BRANCH_TAKEN, align 1, !tbaa !2399
  %qword.i24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %tobool.i = icmp ne i8 %34, 0
  %cond1.i.i = select i1 %tobool.i, i64 %29, i64 %31
  store i64 %cond1.i.i, i64* %qword.i24, align 8, !tbaa !2376
  %35 = load i8, i8* %BRANCH_TAKEN
  %36 = icmp eq i8 %35, 1
  br i1 %36, label %block_50a, label %block_508

block_50a:                                        ; preds = %block_508, %entry
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %60, %block_508 ]
  %37 = load i64, i64* %RSP
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 4
  store i64 %39, i64* %PC
  %add.i.i3 = add i64 8, %37
  store i64 %add.i.i3, i64* %RSP, align 8, !tbaa !2376
  %cmp.i.i.i4 = icmp ult i64 %add.i.i3, %37
  %cmp1.i.i.i = icmp ult i64 %add.i.i3, 8
  %.cmp1.i.i.i = or i1 %cmp.i.i.i4, %cmp1.i.i.i
  %conv.i.i5 = zext i1 %.cmp1.i.i.i to i8
  %cf.i.i6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %conv.i.i5, i8* %cf.i.i6, align 1, !tbaa !2380
  %conv.i.i.i.i7 = trunc i64 %add.i.i3 to i32
  %conv.i.i.i.i.i8 = and i32 %conv.i.i.i.i7, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i8)
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = xor i8 %42, 1
  %pf.i.i.i9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %43, i8* %pf.i.i.i9, align 1, !tbaa !2394
  %xor.i25.i.i.i10 = xor i64 8, %37
  %xor1.i.i.i.i11 = xor i64 %xor.i25.i.i.i10, %add.i.i3
  %and.i.i.i.i12 = lshr i64 %xor1.i.i.i.i11, 4
  %44 = trunc i64 %and.i.i.i.i12 to i8
  %45 = and i8 %44, 1
  %af.i.i.i13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %45, i8* %af.i.i.i13, align 1, !tbaa !2395
  %cmp.i24.i.i.i14 = icmp eq i64 %add.i.i3, 0
  %conv5.i.i.i15 = zext i1 %cmp.i24.i.i.i14 to i8
  %zf.i.i.i16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv5.i.i.i15, i8* %zf.i.i.i16, align 1, !tbaa !2396
  %res.lobit.i.i.i17 = lshr i64 %add.i.i3, 63
  %46 = trunc i64 %res.lobit.i.i.i17 to i8
  %sf.i.i.i18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %46, i8* %sf.i.i.i18, align 1, !tbaa !2397
  %shr.i.i.i.i19 = lshr i64 %37, 63
  %xor.i.i.i.i = xor i64 %res.lobit.i.i.i17, %shr.i.i.i.i19
  %add.i.i.i.i20 = add nuw nsw i64 %xor.i.i.i.i, %res.lobit.i.i.i17
  %cmp.i.i.i.i21 = icmp eq i64 %add.i.i.i.i20, 2
  %conv11.i.i.i22 = zext i1 %cmp.i.i.i.i21 to i8
  %of.i.i.i23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %conv11.i.i.i22, i8* %of.i.i.i23, align 1, !tbaa !2398
  %47 = load i64, i64* %PC
  %48 = add i64 %47, 1
  store i64 %48, i64* %PC
  %qword.i2 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %qword2.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %49 = load i64, i64* %qword2.i, align 8, !tbaa !2376
  %50 = inttoptr i64 %49 to i64*
  %51 = load i64, i64* %50
  store i64 %51, i64* %qword.i2, align 8, !tbaa !2376
  %add.i.i = add i64 %49, 8
  store i64 %add.i.i, i64* %qword2.i, align 8, !tbaa !2376
  ret %struct.Memory* %MEMORY.0

block_508:                                        ; preds = %entry
  %52 = load i64, i64* %RAX
  %53 = load i64, i64* %PC
  %54 = add i64 %53, 2
  %55 = load i64, i64* %PC
  %56 = add i64 %55, 2
  store i64 %56, i64* %PC
  %qword.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %57 = load i64, i64* %qword.i, align 8, !tbaa !2376
  %sub.i.i1 = add i64 %57, -8
  %58 = inttoptr i64 %sub.i.i1 to i64*
  store i64 %54, i64* %58
  store i64 %sub.i.i1, i64* %qword.i, align 8, !tbaa !2376
  %qword18.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %52, i64* %qword18.i, align 8, !tbaa !2376
  %59 = load i64, i64* %PC
  %60 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %59, %struct.Memory* %2)
  br label %block_50a
}

; Function Attrs: noinline
define %struct.Memory* @sub_754__term_proc(%struct.State* noalias, i64, %struct.Memory* noalias) #5 {
entry:
  %gpr = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rip = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr, i32 0, i32 33
  %3 = getelementptr inbounds %struct.Reg, %struct.Reg* %rip, i32 0, i32 0
  %PC = bitcast %union.anon* %3 to i64*
  store i64 %1, i64* %PC, align 8
  %gpr180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rsp181 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr180, i32 0, i32 13
  %4 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsp181, i32 0, i32 0
  %RSP = bitcast %union.anon* %4 to i64*
  %5 = load i64, i64* %RSP
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC
  %sub.i.i = sub i64 %5, 8
  store i64 %sub.i.i, i64* %RSP, align 8, !tbaa !2376
  %cmp.i.i.i = icmp ult i64 %5, 8
  %conv.i.i = zext i1 %cmp.i.i.i to i8
  %cf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %conv.i.i, i8* %cf.i.i, align 1, !tbaa !2380
  %conv.i.i.i.i = trunc i64 %sub.i.i to i32
  %conv.i.i.i.i.i = and i32 %conv.i.i.i.i, 255
  %8 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %pf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %pf.i.i.i, align 1, !tbaa !2394
  %xor.i25.i.i.i = xor i64 8, %5
  %xor1.i.i.i.i = xor i64 %xor.i25.i.i.i, %sub.i.i
  %and.i.i.i.i = lshr i64 %xor1.i.i.i.i, 4
  %12 = trunc i64 %and.i.i.i.i to i8
  %13 = and i8 %12, 1
  %af.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %13, i8* %af.i.i.i, align 1, !tbaa !2395
  %cmp.i24.i.i.i = icmp eq i64 %sub.i.i, 0
  %conv5.i.i.i = zext i1 %cmp.i24.i.i.i to i8
  %zf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv5.i.i.i, i8* %zf.i.i.i, align 1, !tbaa !2396
  %res.lobit.i.i.i = lshr i64 %sub.i.i, 63
  %14 = trunc i64 %res.lobit.i.i.i to i8
  %sf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %14, i8* %sf.i.i.i, align 1, !tbaa !2397
  %shr.i.i.i.i = lshr i64 %5, 63
  %xor3.i.i.i.i = xor i64 %res.lobit.i.i.i, %shr.i.i.i.i
  %add.i.i.i.i = add nuw nsw i64 %xor3.i.i.i.i, %shr.i.i.i.i
  %cmp.i.i.i.i = icmp eq i64 %add.i.i.i.i, 2
  %conv11.i.i.i = zext i1 %cmp.i.i.i.i to i8
  %of.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %conv11.i.i.i, i8* %of.i.i.i, align 1, !tbaa !2398
  %15 = load i64, i64* %RSP
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %add.i.i1 = add i64 8, %15
  store i64 %add.i.i1, i64* %RSP, align 8, !tbaa !2376
  %cmp.i.i.i2 = icmp ult i64 %add.i.i1, %15
  %cmp1.i.i.i = icmp ult i64 %add.i.i1, 8
  %.cmp1.i.i.i = or i1 %cmp.i.i.i2, %cmp1.i.i.i
  %conv.i.i3 = zext i1 %.cmp1.i.i.i to i8
  %cf.i.i4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %conv.i.i3, i8* %cf.i.i4, align 1, !tbaa !2380
  %conv.i.i.i.i5 = trunc i64 %add.i.i1 to i32
  %conv.i.i.i.i.i6 = and i32 %conv.i.i.i.i5, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i6)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %pf.i.i.i7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %pf.i.i.i7, align 1, !tbaa !2394
  %xor.i25.i.i.i8 = xor i64 8, %15
  %xor1.i.i.i.i9 = xor i64 %xor.i25.i.i.i8, %add.i.i1
  %and.i.i.i.i10 = lshr i64 %xor1.i.i.i.i9, 4
  %22 = trunc i64 %and.i.i.i.i10 to i8
  %23 = and i8 %22, 1
  %af.i.i.i11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %af.i.i.i11, align 1, !tbaa !2395
  %cmp.i24.i.i.i12 = icmp eq i64 %add.i.i1, 0
  %conv5.i.i.i13 = zext i1 %cmp.i24.i.i.i12 to i8
  %zf.i.i.i14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv5.i.i.i13, i8* %zf.i.i.i14, align 1, !tbaa !2396
  %res.lobit.i.i.i15 = lshr i64 %add.i.i1, 63
  %24 = trunc i64 %res.lobit.i.i.i15 to i8
  %sf.i.i.i16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %sf.i.i.i16, align 1, !tbaa !2397
  %shr.i.i.i.i17 = lshr i64 %15, 63
  %xor.i.i.i.i = xor i64 %res.lobit.i.i.i15, %shr.i.i.i.i17
  %add.i.i.i.i18 = add nuw nsw i64 %xor.i.i.i.i, %res.lobit.i.i.i15
  %cmp.i.i.i.i19 = icmp eq i64 %add.i.i.i.i18, 2
  %conv11.i.i.i20 = zext i1 %cmp.i.i.i.i19 to i8
  %of.i.i.i21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %conv11.i.i.i20, i8* %of.i.i.i21, align 1, !tbaa !2398
  %25 = load i64, i64* %PC
  %26 = add i64 %25, 1
  store i64 %26, i64* %PC
  %qword.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %qword2.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %27 = load i64, i64* %qword2.i, align 8, !tbaa !2376
  %28 = inttoptr i64 %27 to i64*
  %29 = load i64, i64* %28
  store i64 %29, i64* %qword.i, align 8, !tbaa !2376
  %add.i.i = add i64 %27, 8
  store i64 %add.i.i, i64* %qword2.i, align 8, !tbaa !2376
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_560_deregister_tm_clones(%struct.State* noalias, i64, %struct.Memory* noalias) #5 {
entry:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %gpr = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rip = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr, i32 0, i32 33
  %3 = getelementptr inbounds %struct.Reg, %struct.Reg* %rip, i32 0, i32 0
  %PC = bitcast %union.anon* %3 to i64*
  store i64 %1, i64* %PC, align 8
  %gpr62 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rax63 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr62, i32 0, i32 1
  %4 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax63, i32 0, i32 0
  %AX = bitcast %union.anon* %4 to i16*
  %gpr112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rax113 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr112, i32 0, i32 1
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax113, i32 0, i32 0
  %EAX = bitcast %union.anon* %5 to i32*
  %gpr162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rax163 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr162, i32 0, i32 1
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax163, i32 0, i32 0
  %RAX = bitcast %union.anon* %6 to i64*
  %gpr177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rdi178 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr177, i32 0, i32 11
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdi178, i32 0, i32 0
  %RDI = bitcast %union.anon* %7 to i64*
  %gpr180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rsp181 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr180, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsp181, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %gpr183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rbp184 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr183, i32 0, i32 15
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbp184, i32 0, i32 0
  %RBP = bitcast %union.anon* %9 to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  store i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64* %RDI, align 8, !tbaa !2376
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 7
  store i64 %13, i64* %PC
  store i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 7), i64* %RAX, align 8, !tbaa !2376
  %14 = load i64, i64* %RBP
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 1
  store i64 %16, i64* %PC
  %qword.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %17 = load i64, i64* %qword.i.i, align 8, !tbaa !2376
  %sub.i.i.i = add i64 %17, -8
  %18 = inttoptr i64 %sub.i.i.i to i64*
  store i64 %14, i64* %18
  store i64 %sub.i.i.i, i64* %qword.i.i, align 8, !tbaa !2376
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %RDI
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %sub.i.i = sub i64 %19, %20
  store i64 %sub.i.i, i64* %RAX, align 8, !tbaa !2376
  %cmp.i.i.i = icmp ult i64 %19, %20
  %conv.i.i = zext i1 %cmp.i.i.i to i8
  %cf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %conv.i.i, i8* %cf.i.i, align 1, !tbaa !2380
  %conv.i.i.i.i = trunc i64 %sub.i.i to i32
  %conv.i.i.i.i.i = and i32 %conv.i.i.i.i, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %pf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %pf.i.i.i, align 1, !tbaa !2394
  %xor.i25.i.i.i = xor i64 %20, %19
  %xor1.i.i.i.i = xor i64 %xor.i25.i.i.i, %sub.i.i
  %and.i.i.i.i = lshr i64 %xor1.i.i.i.i, 4
  %27 = trunc i64 %and.i.i.i.i to i8
  %28 = and i8 %27, 1
  %af.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %af.i.i.i, align 1, !tbaa !2395
  %cmp.i24.i.i.i = icmp eq i64 %sub.i.i, 0
  %conv5.i.i.i = zext i1 %cmp.i24.i.i.i to i8
  %zf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv5.i.i.i, i8* %zf.i.i.i, align 1, !tbaa !2396
  %res.lobit.i.i.i = lshr i64 %sub.i.i, 63
  %29 = trunc i64 %res.lobit.i.i.i to i8
  %sf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %sf.i.i.i, align 1, !tbaa !2397
  %shr.i.i.i.i = lshr i64 %19, 63
  %shr1.i.i.i.i = lshr i64 %20, 63
  %xor.i.i.i.i = xor i64 %shr1.i.i.i.i, %shr.i.i.i.i
  %xor3.i.i.i.i = xor i64 %res.lobit.i.i.i, %shr.i.i.i.i
  %add.i.i.i.i = add nuw nsw i64 %xor3.i.i.i.i, %xor.i.i.i.i
  %cmp.i.i.i.i = icmp eq i64 %add.i.i.i.i, 2
  %conv11.i.i.i = zext i1 %cmp.i.i.i.i to i8
  %of.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %conv11.i.i.i, i8* %of.i.i.i, align 1, !tbaa !2398
  %30 = load i64, i64* %RSP
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 3
  store i64 %32, i64* %PC
  store i64 %30, i64* %RBP, align 8, !tbaa !2376
  %33 = load i64, i64* %RAX
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 4
  store i64 %35, i64* %PC
  %sub.i.i1 = sub i64 %33, 14
  %cmp.i.i.i2 = icmp ult i64 %33, 14
  %conv.i.i3 = zext i1 %cmp.i.i.i2 to i8
  %cf.i.i4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %conv.i.i3, i8* %cf.i.i4, align 1, !tbaa !2380
  %conv.i.i.i.i5 = trunc i64 %sub.i.i1 to i32
  %conv.i.i.i.i.i6 = and i32 %conv.i.i.i.i5, 255
  %36 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i6)
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = xor i8 %38, 1
  %pf.i.i.i7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %39, i8* %pf.i.i.i7, align 1, !tbaa !2394
  %xor.i25.i.i.i8 = xor i64 14, %33
  %xor1.i.i.i.i9 = xor i64 %xor.i25.i.i.i8, %sub.i.i1
  %and.i.i.i.i10 = lshr i64 %xor1.i.i.i.i9, 4
  %40 = trunc i64 %and.i.i.i.i10 to i8
  %41 = and i8 %40, 1
  %af.i.i.i11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %41, i8* %af.i.i.i11, align 1, !tbaa !2395
  %cmp.i24.i.i.i12 = icmp eq i64 %sub.i.i1, 0
  %conv5.i.i.i13 = zext i1 %cmp.i24.i.i.i12 to i8
  %zf.i.i.i14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv5.i.i.i13, i8* %zf.i.i.i14, align 1, !tbaa !2396
  %res.lobit.i.i.i15 = lshr i64 %sub.i.i1, 63
  %42 = trunc i64 %res.lobit.i.i.i15 to i8
  %sf.i.i.i16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %sf.i.i.i16, align 1, !tbaa !2397
  %shr.i.i.i.i17 = lshr i64 %33, 63
  %xor3.i.i.i.i18 = xor i64 %res.lobit.i.i.i15, %shr.i.i.i.i17
  %add.i.i.i.i19 = add nuw nsw i64 %xor3.i.i.i.i18, %shr.i.i.i.i17
  %cmp.i.i.i.i20 = icmp eq i64 %add.i.i.i.i19, 2
  %conv11.i.i.i21 = zext i1 %cmp.i.i.i.i20 to i8
  %of.i.i.i22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %conv11.i.i.i21, i8* %of.i.i.i22, align 1, !tbaa !2398
  %43 = load i64, i64* %PC
  %44 = add i64 %43, 23
  %45 = load i64, i64* %PC
  %46 = add i64 %45, 2
  %47 = load i64, i64* %PC
  %48 = add i64 %47, 2
  store i64 %48, i64* %PC
  %cf.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %49 = load i8, i8* %cf.i, align 1, !tbaa !2380
  %zf.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %50 = load i8, i8* %zf.i, align 1, !tbaa !2396
  %51 = or i8 %50, %49
  %52 = icmp ne i8 %51, 0
  %frombool.i = zext i1 %52 to i8
  store i8 %frombool.i, i8* %BRANCH_TAKEN, align 1, !tbaa !2399
  %qword.i23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %cond1.i.i = select i1 %52, i64 %44, i64 %46
  store i64 %cond1.i.i, i64* %qword.i23, align 8, !tbaa !2376
  %53 = load i8, i8* %BRANCH_TAKEN
  %54 = icmp eq i8 %53, 1
  br i1 %54, label %block_590, label %block_57b

block_592:                                        ; preds = %block_587
  %55 = load i64, i64* %RAX
  %56 = load i32, i32* %EAX
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 4
  store i64 %59, i64* %PC
  %60 = load i64, i64* %RAX
  %61 = load i64, i64* %RAX
  %62 = add i64 %61, %60
  %63 = load i16, i16* %AX
  %64 = zext i16 %63 to i64
  %65 = load i64, i64* %PC
  %66 = add i64 %65, 10
  store i64 %66, i64* %PC
  %67 = load i64, i64* %PC
  %68 = tail call %struct.Memory* @sub_5a0_register_tm_clones(%struct.State* %0, i64 %67, %struct.Memory* %2)
  ret %struct.Memory* %68

block_57b:                                        ; preds = %entry
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 7
  store i64 %70, i64* %PC
  %71 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_200fb8__got_type* @seg_200fb8__got to i64), i64 24) to i64*)
  store i64 %71, i64* %RAX, align 8, !tbaa !2376
  %72 = load i64, i64* %RAX
  %73 = load i64, i64* %RAX
  %74 = load i64, i64* %PC
  %75 = add i64 %74, 3
  store i64 %75, i64* %PC
  %and.i.i = and i64 %73, %72
  %cf.i.i25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %cf.i.i25, align 1, !tbaa !2380
  %conv.i.i.i = trunc i64 %and.i.i to i32
  %conv.i.i.i.i26 = and i32 %conv.i.i.i, 255
  %76 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i26)
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  %pf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %79, i8* %pf.i.i, align 1, !tbaa !2394
  %cmp.i1.i.i = icmp eq i64 %and.i.i, 0
  %conv3.i.i = zext i1 %cmp.i1.i.i to i8
  %zf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv3.i.i, i8* %zf.i.i, align 1, !tbaa !2396
  %res.lobit.i.i = lshr i64 %and.i.i, 63
  %80 = trunc i64 %res.lobit.i.i to i8
  %sf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %80, i8* %sf.i.i, align 1, !tbaa !2397
  %of.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %of.i.i, align 1, !tbaa !2398
  %af.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %af.i.i, align 1, !tbaa !2395
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 11
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 2
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 2
  store i64 %86, i64* %PC
  %zf.i27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %87 = load i8, i8* %zf.i27, align 1, !tbaa !2396
  store i8 %87, i8* %BRANCH_TAKEN, align 1, !tbaa !2399
  %qword.i28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %tobool.i = icmp ne i8 %87, 0
  %cond1.i.i29 = select i1 %tobool.i, i64 %82, i64 %84
  store i64 %cond1.i.i29, i64* %qword.i28, align 8, !tbaa !2376
  %88 = load i8, i8* %BRANCH_TAKEN
  %89 = icmp eq i8 %88, 1
  br i1 %89, label %block_590, label %block_587

block_590:                                        ; preds = %block_58a, %block_57b, %entry
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %2, %block_57b ], [ %2, %block_58a ]
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 1
  store i64 %91, i64* %PC
  %qword.i30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %92 = load i64, i64* %qword.i30, align 8, !tbaa !2376
  %add.i.i31 = add i64 %92, 8
  %93 = inttoptr i64 %92 to i64*
  %94 = load i64, i64* %93
  store i64 %94, i64* %RBP, align 8, !tbaa !2376
  store i64 %add.i.i31, i64* %qword.i30, align 8, !tbaa !2376
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 1
  store i64 %96, i64* %PC
  %qword.i32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %qword2.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %97 = load i64, i64* %qword2.i, align 8, !tbaa !2376
  %98 = inttoptr i64 %97 to i64*
  %99 = load i64, i64* %98
  store i64 %99, i64* %qword.i32, align 8, !tbaa !2376
  %add.i.i33 = add i64 %97, 8
  store i64 %add.i.i33, i64* %qword2.i, align 8, !tbaa !2376
  ret %struct.Memory* %MEMORY.0

block_587:                                        ; preds = %block_57b
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 1
  store i64 %101, i64* %PC
  %qword.i24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %102 = load i64, i64* %qword.i24, align 8, !tbaa !2376
  %add.i.i = add i64 %102, 8
  %103 = inttoptr i64 %102 to i64*
  %104 = load i64, i64* %103
  store i64 %104, i64* %RBP, align 8, !tbaa !2376
  store i64 %add.i.i, i64* %qword.i24, align 8, !tbaa !2376
  %105 = load i64, i64* %RAX
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 2
  store i64 %107, i64* %PC
  %qword.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %105, i64* %qword.i, align 8, !tbaa !2376
  %108 = load i64, i64* %PC
  switch i64 %108, label %116 [
    i64 1426, label %block_592
    i64 1418, label %block_58a
  ]

block_58a:                                        ; preds = %block_587
  %109 = load i64, i64* %RAX
  %110 = load i64, i64* %RAX
  %111 = add i64 %110, %109
  %112 = load i16, i16* %AX
  %113 = zext i16 %112 to i64
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 6
  store i64 %115, i64* %PC
  br label %block_590

; <label>:116:                                    ; preds = %block_587
  %117 = load i64, i64* %PC
  %118 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %117, %struct.Memory* %2)
  ret %struct.Memory* %118
}

; Function Attrs: noinline
define %struct.Memory* @sub_5f0___do_global_dtors_aux(%struct.State* noalias, i64, %struct.Memory* noalias) #5 {
entry:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %gpr = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rip = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr, i32 0, i32 33
  %3 = getelementptr inbounds %struct.Reg, %struct.Reg* %rip, i32 0, i32 0
  %PC = bitcast %union.anon* %3 to i64*
  store i64 %1, i64* %PC, align 8
  %gpr177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rdi178 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr177, i32 0, i32 11
  %4 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdi178, i32 0, i32 0
  %RDI = bitcast %union.anon* %4 to i64*
  %gpr180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rsp181 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr180, i32 0, i32 13
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsp181, i32 0, i32 0
  %RSP = bitcast %union.anon* %5 to i64*
  %gpr183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rbp184 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr183, i32 0, i32 15
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbp184, i32 0, i32 0
  %RBP = bitcast %union.anon* %6 to i64*
  %7 = load i64, i64* %PC
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC
  %9 = load i8, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)
  %cf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %cf.i.i, align 1, !tbaa !2380
  %conv.i.i.i.i = zext i8 %9 to i32
  %10 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %pf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %pf.i.i.i, align 1, !tbaa !2394
  %af.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %af.i.i.i, align 1, !tbaa !2395
  %cmp.i24.i.i.i = icmp eq i8 %9, 0
  %conv5.i.i.i = zext i1 %cmp.i24.i.i.i to i8
  %zf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv5.i.i.i, i8* %zf.i.i.i, align 1, !tbaa !2396
  %res.lobit.i.i.i = lshr i8 %9, 7
  %sf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %res.lobit.i.i.i, i8* %sf.i.i.i, align 1, !tbaa !2397
  %shr14.i.i.i.i = lshr i8 %9, 7
  %xor1218.i.i.i.i = xor i8 %res.lobit.i.i.i, %shr14.i.i.i.i
  %addconv.i.i.i.i = add nuw nsw i8 %xor1218.i.i.i.i, %shr14.i.i.i.i
  %cmp.i.i.i.i = icmp eq i8 %addconv.i.i.i.i, 2
  %conv11.i.i.i = zext i1 %cmp.i.i.i.i to i8
  %of.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %conv11.i.i.i, i8* %of.i.i.i, align 1, !tbaa !2398
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 41
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 2
  store i64 %19, i64* %PC
  %zf.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = load i8, i8* %zf.i, align 1, !tbaa !2396
  %lnot.i.i = icmp eq i8 %20, 0
  %frombool.i = zext i1 %lnot.i.i to i8
  store i8 %frombool.i, i8* %BRANCH_TAKEN, align 1, !tbaa !2399
  %qword.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %cond1.i.i = select i1 %lnot.i.i, i64 %15, i64 %17
  store i64 %cond1.i.i, i64* %qword.i, align 8, !tbaa !2376
  %21 = load i8, i8* %BRANCH_TAKEN
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %block_620, label %block_5f9

block_613:                                        ; preds = %block_607, %block_5f9
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_5f9 ], [ %77, %block_607 ]
  %23 = load i64, i64* %PC
  %24 = sub i64 %23, 179
  %25 = load i64, i64* %PC
  %26 = add i64 %25, 5
  %27 = load i64, i64* %PC
  %28 = add i64 %27, 5
  store i64 %28, i64* %PC
  %qword.i1 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %29 = load i64, i64* %qword.i1, align 8, !tbaa !2376
  %sub.i.i = add i64 %29, -8
  %30 = inttoptr i64 %sub.i.i to i64*
  store i64 %26, i64* %30
  store i64 %sub.i.i, i64* %qword.i1, align 8, !tbaa !2376
  %qword18.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %24, i64* %qword18.i, align 8, !tbaa !2376
  %31 = load i64, i64* %PC
  %32 = call %struct.Memory* @sub_560_deregister_tm_clones(%struct.State* %0, i64 %31, %struct.Memory* %MEMORY.0)
  %33 = load i64, i64* %PC
  %34 = add i64 %33, 1
  store i64 %34, i64* %PC
  %qword.i2 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %35 = load i64, i64* %qword.i2, align 8, !tbaa !2376
  %add.i.i = add i64 %35, 8
  %36 = inttoptr i64 %35 to i64*
  %37 = load i64, i64* %36
  store i64 %37, i64* %RBP, align 8, !tbaa !2376
  store i64 %add.i.i, i64* %qword.i2, align 8, !tbaa !2376
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 7
  store i64 %39, i64* %PC
  store i8 1, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)
  br label %block_620

block_5f9:                                        ; preds = %entry
  %40 = load i64, i64* %PC
  %41 = add i64 %40, 8
  store i64 %41, i64* %PC
  %42 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_200fb8__got_type* @seg_200fb8__got to i64), i64 64) to i64*)
  %cf.i.i3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %cf.i.i3, align 1, !tbaa !2380
  %conv.i.i.i.i4 = trunc i64 %42 to i32
  %conv.i.i.i.i.i = and i32 %conv.i.i.i.i4, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i)
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  %pf.i.i.i5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %46, i8* %pf.i.i.i5, align 1, !tbaa !2394
  %af.i.i.i6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %af.i.i.i6, align 1, !tbaa !2395
  %cmp.i24.i.i.i7 = icmp eq i64 %42, 0
  %conv5.i.i.i8 = zext i1 %cmp.i24.i.i.i7 to i8
  %zf.i.i.i9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv5.i.i.i8, i8* %zf.i.i.i9, align 1, !tbaa !2396
  %res.lobit.i.i.i10 = lshr i64 %42, 63
  %47 = trunc i64 %res.lobit.i.i.i10 to i8
  %sf.i.i.i11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %47, i8* %sf.i.i.i11, align 1, !tbaa !2397
  %shr.i.i.i.i = lshr i64 %42, 63
  %xor3.i.i.i.i = xor i64 %res.lobit.i.i.i10, %shr.i.i.i.i
  %add.i.i.i.i = add nuw nsw i64 %xor3.i.i.i.i, %shr.i.i.i.i
  %cmp.i.i.i.i12 = icmp eq i64 %add.i.i.i.i, 2
  %conv11.i.i.i13 = zext i1 %cmp.i.i.i.i12 to i8
  %of.i.i.i14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %conv11.i.i.i13, i8* %of.i.i.i14, align 1, !tbaa !2398
  %48 = load i64, i64* %RBP
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 1
  store i64 %50, i64* %PC
  %qword.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %51 = load i64, i64* %qword.i.i, align 8, !tbaa !2376
  %sub.i.i.i = add i64 %51, -8
  %52 = inttoptr i64 %sub.i.i.i to i64*
  store i64 %48, i64* %52
  store i64 %sub.i.i.i, i64* %qword.i.i, align 8, !tbaa !2376
  %53 = load i64, i64* %RSP
  %54 = load i64, i64* %PC
  %55 = add i64 %54, 3
  store i64 %55, i64* %PC
  store i64 %53, i64* %RBP, align 8, !tbaa !2376
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 14
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 2
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 2
  store i64 %61, i64* %PC
  %zf.i15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %62 = load i8, i8* %zf.i15, align 1, !tbaa !2396
  store i8 %62, i8* %BRANCH_TAKEN, align 1, !tbaa !2399
  %qword.i16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %tobool.i = icmp ne i8 %62, 0
  %cond1.i.i17 = select i1 %tobool.i, i64 %57, i64 %59
  store i64 %cond1.i.i17, i64* %qword.i16, align 8, !tbaa !2376
  %63 = load i8, i8* %BRANCH_TAKEN
  %64 = icmp eq i8 %63, 1
  br i1 %64, label %block_613, label %block_607

block_607:                                        ; preds = %block_5f9
  %65 = load i64, i64* %PC
  %66 = add i64 %65, 7
  store i64 %66, i64* %PC
  %67 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_201000__data_type* @seg_201000__data to i64), i64 8) to i64*)
  store i64 %67, i64* %RDI, align 8, !tbaa !2376
  %68 = load i64, i64* %PC
  %69 = sub i64 %68, 238
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 5
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 5
  store i64 %73, i64* %PC
  %qword.i18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %74 = load i64, i64* %qword.i18, align 8, !tbaa !2376
  %sub.i.i19 = add i64 %74, -8
  %75 = inttoptr i64 %sub.i.i19 to i64*
  store i64 %71, i64* %75
  store i64 %sub.i.i19, i64* %qword.i18, align 8, !tbaa !2376
  %qword18.i20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %69, i64* %qword18.i20, align 8, !tbaa !2376
  %76 = load i64, i64* %PC
  %77 = call %struct.Memory* @sub_520___cxa_finalize(%struct.State* %0, i64 %76, %struct.Memory* %2)
  br label %block_613

block_620:                                        ; preds = %block_613, %entry
  %MEMORY.1 = phi %struct.Memory* [ %2, %entry ], [ %32, %block_613 ]
  %78 = load i64, i64* %PC
  %79 = add i64 %78, 2
  store i64 %79, i64* %PC
  %qword.i21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %qword2.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %80 = load i64, i64* %qword2.i, align 8, !tbaa !2376
  %81 = inttoptr i64 %80 to i64*
  %82 = load i64, i64* %81
  store i64 %82, i64* %qword.i21, align 8, !tbaa !2376
  %add.i.i22 = add i64 %80, 8
  store i64 %add.i.i22, i64* %qword2.i, align 8, !tbaa !2376
  ret %struct.Memory* %MEMORY.1
}

; Function Attrs: noinline
define %struct.Memory* @sub_6b1_main(%struct.State* noalias, i64, %struct.Memory* noalias) #5 {
entry:
  %gpr = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rip = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr, i32 0, i32 33
  %3 = getelementptr inbounds %struct.Reg, %struct.Reg* %rip, i32 0, i32 0
  %PC = bitcast %union.anon* %3 to i64*
  store i64 %1, i64* %PC, align 8
  %gpr162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rax163 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr162, i32 0, i32 1
  %4 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax163, i32 0, i32 0
  %RAX = bitcast %union.anon* %4 to i64*
  %gpr165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rbx166 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr165, i32 0, i32 3
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbx166, i32 0, i32 0
  %RBX = bitcast %union.anon* %5 to i64*
  %gpr168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rcx169 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr168, i32 0, i32 5
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %rcx169, i32 0, i32 0
  %RCX = bitcast %union.anon* %6 to i64*
  %gpr171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rdx172 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr171, i32 0, i32 7
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdx172, i32 0, i32 0
  %RDX = bitcast %union.anon* %7 to i64*
  %gpr174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rsi175 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr174, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsi175, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %gpr177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rdi178 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr177, i32 0, i32 11
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdi178, i32 0, i32 0
  %RDI = bitcast %union.anon* %9 to i64*
  %gpr180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rsp181 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr180, i32 0, i32 13
  %10 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsp181, i32 0, i32 0
  %RSP = bitcast %union.anon* %10 to i64*
  %gpr183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rbp184 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr183, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbp184, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 1
  store i64 %14, i64* %PC
  %qword.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %15 = load i64, i64* %qword.i.i, align 8, !tbaa !2376
  %sub.i.i.i = add i64 %15, -8
  %16 = inttoptr i64 %sub.i.i.i to i64*
  store i64 %12, i64* %16
  store i64 %sub.i.i.i, i64* %qword.i.i, align 8, !tbaa !2376
  %17 = load i64, i64* %RSP
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 3
  store i64 %19, i64* %PC
  store i64 %17, i64* %RBP, align 8, !tbaa !2376
  %20 = load i64, i64* %RAX
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 1
  store i64 %22, i64* %PC
  %qword.i.i16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %23 = load i64, i64* %qword.i.i16, align 8, !tbaa !2376
  %sub.i.i.i17 = add i64 %23, -8
  %24 = inttoptr i64 %sub.i.i.i17 to i64*
  store i64 %20, i64* %24
  store i64 %sub.i.i.i17, i64* %qword.i.i16, align 8, !tbaa !2376
  %25 = load i64, i64* %RBX
  %26 = load i64, i64* %PC
  %27 = add i64 %26, 1
  store i64 %27, i64* %PC
  %qword.i.i29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %28 = load i64, i64* %qword.i.i29, align 8, !tbaa !2376
  %sub.i.i.i30 = add i64 %28, -8
  %29 = inttoptr i64 %sub.i.i.i30 to i64*
  store i64 %25, i64* %29
  store i64 %sub.i.i.i30, i64* %qword.i.i29, align 8, !tbaa !2376
  %30 = load i64, i64* %RCX
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 1
  store i64 %32, i64* %PC
  %qword.i.i27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %33 = load i64, i64* %qword.i.i27, align 8, !tbaa !2376
  %sub.i.i.i28 = add i64 %33, -8
  %34 = inttoptr i64 %sub.i.i.i28 to i64*
  store i64 %30, i64* %34
  store i64 %sub.i.i.i28, i64* %qword.i.i27, align 8, !tbaa !2376
  %35 = load i64, i64* %RDX
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 1
  store i64 %37, i64* %PC
  %qword.i.i25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %38 = load i64, i64* %qword.i.i25, align 8, !tbaa !2376
  %sub.i.i.i26 = add i64 %38, -8
  %39 = inttoptr i64 %sub.i.i.i26 to i64*
  store i64 %35, i64* %39
  store i64 %sub.i.i.i26, i64* %qword.i.i25, align 8, !tbaa !2376
  %40 = load i64, i64* %RSI
  %41 = load i64, i64* %PC
  %42 = add i64 %41, 1
  store i64 %42, i64* %PC
  %qword.i.i23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %43 = load i64, i64* %qword.i.i23, align 8, !tbaa !2376
  %sub.i.i.i24 = add i64 %43, -8
  %44 = inttoptr i64 %sub.i.i.i24 to i64*
  store i64 %40, i64* %44
  store i64 %sub.i.i.i24, i64* %qword.i.i23, align 8, !tbaa !2376
  %45 = load i64, i64* %RDI
  %46 = load i64, i64* %PC
  %47 = add i64 %46, 1
  store i64 %47, i64* %PC
  %qword.i.i21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %48 = load i64, i64* %qword.i.i21, align 8, !tbaa !2376
  %sub.i.i.i22 = add i64 %48, -8
  %49 = inttoptr i64 %sub.i.i.i22 to i64*
  store i64 %45, i64* %49
  store i64 %sub.i.i.i22, i64* %qword.i.i21, align 8, !tbaa !2376
  %50 = load i64, i64* %PC
  %51 = add i64 %50, 5
  store i64 %51, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2376
  %52 = load i64, i64* %PC
  %53 = sub i64 %52, 69
  %54 = load i64, i64* %PC
  %55 = add i64 %54, 5
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 5
  store i64 %57, i64* %PC
  %qword.i18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %58 = load i64, i64* %qword.i18, align 8, !tbaa !2376
  %sub.i.i19 = add i64 %58, -8
  %59 = inttoptr i64 %sub.i.i19 to i64*
  store i64 %55, i64* %59
  store i64 %sub.i.i19, i64* %qword.i18, align 8, !tbaa !2376
  %qword18.i20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %53, i64* %qword18.i20, align 8, !tbaa !2376
  %60 = load i64, i64* %PC
  %61 = call %struct.Memory* @sub_67b_init_var_correspondence(%struct.State* %0, i64 %60, %struct.Memory* %2)
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC
  %qword.i14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %64 = load i64, i64* %qword.i14, align 8, !tbaa !2376
  %add.i.i15 = add i64 %64, 8
  %65 = inttoptr i64 %64 to i64*
  %66 = load i64, i64* %65
  store i64 %66, i64* %RAX, align 8, !tbaa !2376
  store i64 %add.i.i15, i64* %qword.i14, align 8, !tbaa !2376
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 1
  store i64 %68, i64* %PC
  %qword.i12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %69 = load i64, i64* %qword.i12, align 8, !tbaa !2376
  %add.i.i13 = add i64 %69, 8
  %70 = inttoptr i64 %69 to i64*
  %71 = load i64, i64* %70
  store i64 %71, i64* %RBX, align 8, !tbaa !2376
  store i64 %add.i.i13, i64* %qword.i12, align 8, !tbaa !2376
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 1
  store i64 %73, i64* %PC
  %qword.i10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %74 = load i64, i64* %qword.i10, align 8, !tbaa !2376
  %add.i.i11 = add i64 %74, 8
  %75 = inttoptr i64 %74 to i64*
  %76 = load i64, i64* %75
  store i64 %76, i64* %RCX, align 8, !tbaa !2376
  store i64 %add.i.i11, i64* %qword.i10, align 8, !tbaa !2376
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 1
  store i64 %78, i64* %PC
  %qword.i8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %79 = load i64, i64* %qword.i8, align 8, !tbaa !2376
  %add.i.i9 = add i64 %79, 8
  %80 = inttoptr i64 %79 to i64*
  %81 = load i64, i64* %80
  store i64 %81, i64* %RDX, align 8, !tbaa !2376
  store i64 %add.i.i9, i64* %qword.i8, align 8, !tbaa !2376
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 1
  store i64 %83, i64* %PC
  %qword.i6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %84 = load i64, i64* %qword.i6, align 8, !tbaa !2376
  %add.i.i7 = add i64 %84, 8
  %85 = inttoptr i64 %84 to i64*
  %86 = load i64, i64* %85
  store i64 %86, i64* %RSI, align 8, !tbaa !2376
  store i64 %add.i.i7, i64* %qword.i6, align 8, !tbaa !2376
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 1
  store i64 %88, i64* %PC
  %qword.i4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %89 = load i64, i64* %qword.i4, align 8, !tbaa !2376
  %add.i.i5 = add i64 %89, 8
  %90 = inttoptr i64 %89 to i64*
  %91 = load i64, i64* %90
  store i64 %91, i64* %RDI, align 8, !tbaa !2376
  store i64 %add.i.i5, i64* %qword.i4, align 8, !tbaa !2376
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 5
  store i64 %93, i64* %PC
  store i64 10, i64* %RDI, align 8, !tbaa !2376
  %94 = load i64, i64* %PC
  %95 = sub i64 %94, 112
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 5
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 5
  store i64 %99, i64* %PC
  %qword.i3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %100 = load i64, i64* %qword.i3, align 8, !tbaa !2376
  %sub.i.i = add i64 %100, -8
  %101 = inttoptr i64 %sub.i.i to i64*
  store i64 %97, i64* %101
  store i64 %sub.i.i, i64* %qword.i3, align 8, !tbaa !2376
  %qword18.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %95, i64* %qword18.i, align 8, !tbaa !2376
  %102 = load i64, i64* %PC
  %103 = call %struct.Memory* @sub_660_get_sign(%struct.State* %0, i64 %102, %struct.Memory* %61)
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 1
  store i64 %105, i64* %PC
  %qword.i1 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %106 = load i64, i64* %qword.i1, align 8, !tbaa !2376
  %add.i.i2 = add i64 %106, 8
  %107 = inttoptr i64 %106 to i64*
  %108 = load i64, i64* %107
  store i64 %108, i64* %RBP, align 8, !tbaa !2376
  store i64 %add.i.i2, i64* %qword.i1, align 8, !tbaa !2376
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 1
  store i64 %110, i64* %PC
  %qword.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %qword2.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %111 = load i64, i64* %qword2.i, align 8, !tbaa !2376
  %112 = inttoptr i64 %111 to i64*
  %113 = load i64, i64* %112
  store i64 %113, i64* %qword.i, align 8, !tbaa !2376
  %add.i.i = add i64 %111, 8
  store i64 %add.i.i, i64* %qword2.i, align 8, !tbaa !2376
  ret %struct.Memory* %103
}

; Function Attrs: noinline
define %struct.Memory* @sub_750___libc_csu_fini(%struct.State* noalias, i64, %struct.Memory* noalias) #5 {
entry:
  %gpr = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rip = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr, i32 0, i32 33
  %3 = getelementptr inbounds %struct.Reg, %struct.Reg* %rip, i32 0, i32 0
  %PC = bitcast %union.anon* %3 to i64*
  store i64 %1, i64* %PC, align 8
  %4 = load i64, i64* %PC
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC
  %qword.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %qword2.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %qword2.i, align 8, !tbaa !2376
  %7 = inttoptr i64 %6 to i64*
  %8 = load i64, i64* %7
  store i64 %8, i64* %qword.i, align 8, !tbaa !2376
  %add.i.i = add i64 %6, 8
  store i64 %add.i.i, i64* %qword2.i, align 8, !tbaa !2376
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_5a0_register_tm_clones(%struct.State* noalias, i64, %struct.Memory* noalias) #5 {
entry:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %gpr = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rip = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr, i32 0, i32 33
  %3 = getelementptr inbounds %struct.Reg, %struct.Reg* %rip, i32 0, i32 0
  %PC = bitcast %union.anon* %3 to i64*
  store i64 %1, i64* %PC, align 8
  %gpr62 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rax63 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr62, i32 0, i32 1
  %4 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax63, i32 0, i32 0
  %AX = bitcast %union.anon* %4 to i16*
  %gpr112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rax113 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr112, i32 0, i32 1
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax113, i32 0, i32 0
  %EAX = bitcast %union.anon* %5 to i32*
  %gpr162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rax163 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr162, i32 0, i32 1
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax163, i32 0, i32 0
  %RAX = bitcast %union.anon* %6 to i64*
  %gpr174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rsi175 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr174, i32 0, i32 9
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsi175, i32 0, i32 0
  %RSI = bitcast %union.anon* %7 to i64*
  %gpr177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rdi178 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr177, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdi178, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %gpr180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rsp181 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr180, i32 0, i32 13
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsp181, i32 0, i32 0
  %RSP = bitcast %union.anon* %9 to i64*
  %gpr183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rbp184 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr183, i32 0, i32 15
  %10 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbp184, i32 0, i32 0
  %RBP = bitcast %union.anon* %10 to i64*
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  store i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64* %RDI, align 8, !tbaa !2376
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 7
  store i64 %14, i64* %PC
  store i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64* %RSI, align 8, !tbaa !2376
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 1
  store i64 %17, i64* %PC
  %qword.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %18 = load i64, i64* %qword.i.i, align 8, !tbaa !2376
  %sub.i.i.i = add i64 %18, -8
  %19 = inttoptr i64 %sub.i.i.i to i64*
  store i64 %15, i64* %19
  store i64 %sub.i.i.i, i64* %qword.i.i, align 8, !tbaa !2376
  %20 = load i64, i64* %RSI
  %21 = load i64, i64* %RDI
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 3
  store i64 %23, i64* %PC
  %sub.i.i = sub i64 %20, %21
  store i64 %sub.i.i, i64* %RSI, align 8, !tbaa !2376
  %cmp.i.i.i = icmp ult i64 %20, %21
  %conv.i.i = zext i1 %cmp.i.i.i to i8
  %cf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %conv.i.i, i8* %cf.i.i, align 1, !tbaa !2380
  %conv.i.i.i.i = trunc i64 %sub.i.i to i32
  %conv.i.i.i.i.i = and i32 %conv.i.i.i.i, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %pf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %pf.i.i.i, align 1, !tbaa !2394
  %xor.i25.i.i.i = xor i64 %21, %20
  %xor1.i.i.i.i = xor i64 %xor.i25.i.i.i, %sub.i.i
  %and.i.i.i.i = lshr i64 %xor1.i.i.i.i, 4
  %28 = trunc i64 %and.i.i.i.i to i8
  %29 = and i8 %28, 1
  %af.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %af.i.i.i, align 1, !tbaa !2395
  %cmp.i24.i.i.i = icmp eq i64 %sub.i.i, 0
  %conv5.i.i.i = zext i1 %cmp.i24.i.i.i to i8
  %zf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv5.i.i.i, i8* %zf.i.i.i, align 1, !tbaa !2396
  %res.lobit.i.i.i = lshr i64 %sub.i.i, 63
  %30 = trunc i64 %res.lobit.i.i.i to i8
  %sf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %sf.i.i.i, align 1, !tbaa !2397
  %shr.i.i.i.i = lshr i64 %20, 63
  %shr1.i.i.i.i = lshr i64 %21, 63
  %xor.i.i.i.i = xor i64 %shr1.i.i.i.i, %shr.i.i.i.i
  %xor3.i.i.i.i = xor i64 %res.lobit.i.i.i, %shr.i.i.i.i
  %add.i.i.i.i = add nuw nsw i64 %xor3.i.i.i.i, %xor.i.i.i.i
  %cmp.i.i.i.i = icmp eq i64 %add.i.i.i.i, 2
  %conv11.i.i.i = zext i1 %cmp.i.i.i.i to i8
  %of.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %conv11.i.i.i, i8* %of.i.i.i, align 1, !tbaa !2398
  %31 = load i64, i64* %RSP
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 3
  store i64 %33, i64* %PC
  store i64 %31, i64* %RBP, align 8, !tbaa !2376
  %34 = load i64, i64* %RSI
  %35 = load i64, i64* %PC
  %36 = add i64 %35, 4
  store i64 %36, i64* %PC
  %shr.i150.i = ashr i64 %34, 2
  %37 = trunc i64 %shr.i150.i to i8
  %38 = and i8 %37, 1
  %shr.i.i = ashr i64 %shr.i150.i, 1
  store i64 %shr.i.i, i64* %RSI, align 8, !tbaa !2376
  %cf.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %38, i8* %cf.i, align 1, !tbaa !2399
  %pf.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %conv.i.i1 = trunc i64 %shr.i.i to i32
  %conv.i.i.i = and i32 %conv.i.i1, 255
  %39 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i)
  %40 = trunc i32 %39 to i8
  %41 = and i8 %40, 1
  %42 = xor i8 %41, 1
  store i8 %42, i8* %pf.i, align 1, !tbaa !2399
  %af.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %af.i, align 1, !tbaa !2399
  %zf.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %cmp.i147.i = icmp eq i64 %shr.i.i, 0
  %conv78.i = zext i1 %cmp.i147.i to i8
  store i8 %conv78.i, i8* %zf.i, align 1, !tbaa !2399
  %sf.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %new_val.0.lobit.i = lshr i64 %shr.i.i, 63
  %43 = trunc i64 %new_val.0.lobit.i to i8
  store i8 %43, i8* %sf.i, align 1, !tbaa !2399
  %of.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %of.i, align 1, !tbaa !2399
  %44 = load i64, i64* %RSI
  %45 = load i64, i64* %PC
  %46 = add i64 %45, 3
  store i64 %46, i64* %PC
  store i64 %44, i64* %RAX, align 8, !tbaa !2376
  %47 = load i64, i64* %RAX
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 4
  store i64 %49, i64* %PC
  %shr.i129.i = lshr i64 %47, 62
  %50 = trunc i64 %shr.i129.i to i8
  %51 = and i8 %50, 1
  %shr.i.i2 = lshr i64 %shr.i129.i, 1
  store i64 %shr.i.i2, i64* %RAX, align 8, !tbaa !2376
  %cf.i3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %51, i8* %cf.i3, align 1, !tbaa !2399
  %pf.i4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %conv.i.i5 = trunc i64 %shr.i.i2 to i32
  %conv.i.i.i6 = and i32 %conv.i.i5, 255
  %52 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i6)
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  store i8 %55, i8* %pf.i4, align 1, !tbaa !2399
  %af.i7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %af.i7, align 1, !tbaa !2399
  %zf.i8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %cmp.i.i = icmp eq i64 %shr.i.i2, 0
  %conv70.i = zext i1 %cmp.i.i to i8
  store i8 %conv70.i, i8* %zf.i8, align 1, !tbaa !2399
  %sf.i9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %sf.i9, align 1, !tbaa !2399
  %of.i10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %of.i10, align 1, !tbaa !2399
  %56 = load i64, i64* %RSI
  %57 = load i64, i64* %RAX
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC
  %add.i.i = add i64 %57, %56
  store i64 %add.i.i, i64* %RSI, align 8, !tbaa !2376
  %cmp.i.i.i11 = icmp ult i64 %add.i.i, %56
  %cmp1.i.i.i = icmp ult i64 %add.i.i, %57
  %.cmp1.i.i.i = or i1 %cmp.i.i.i11, %cmp1.i.i.i
  %conv.i.i12 = zext i1 %.cmp1.i.i.i to i8
  %cf.i.i13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %conv.i.i12, i8* %cf.i.i13, align 1, !tbaa !2380
  %conv.i.i.i.i14 = trunc i64 %add.i.i to i32
  %conv.i.i.i.i.i15 = and i32 %conv.i.i.i.i14, 255
  %60 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i15)
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  %pf.i.i.i16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %63, i8* %pf.i.i.i16, align 1, !tbaa !2394
  %xor.i25.i.i.i17 = xor i64 %57, %56
  %xor1.i.i.i.i18 = xor i64 %xor.i25.i.i.i17, %add.i.i
  %and.i.i.i.i19 = lshr i64 %xor1.i.i.i.i18, 4
  %64 = trunc i64 %and.i.i.i.i19 to i8
  %65 = and i8 %64, 1
  %af.i.i.i20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %65, i8* %af.i.i.i20, align 1, !tbaa !2395
  %cmp.i24.i.i.i21 = icmp eq i64 %add.i.i, 0
  %conv5.i.i.i22 = zext i1 %cmp.i24.i.i.i21 to i8
  %zf.i.i.i23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv5.i.i.i22, i8* %zf.i.i.i23, align 1, !tbaa !2396
  %res.lobit.i.i.i24 = lshr i64 %add.i.i, 63
  %66 = trunc i64 %res.lobit.i.i.i24 to i8
  %sf.i.i.i25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %66, i8* %sf.i.i.i25, align 1, !tbaa !2397
  %shr.i.i.i.i26 = lshr i64 %56, 63
  %shr1.i.i.i.i27 = lshr i64 %57, 63
  %xor.i.i.i.i28 = xor i64 %res.lobit.i.i.i24, %shr.i.i.i.i26
  %xor3.i.i.i.i29 = xor i64 %res.lobit.i.i.i24, %shr1.i.i.i.i27
  %add.i.i.i.i30 = add nuw nsw i64 %xor.i.i.i.i28, %xor3.i.i.i.i29
  %cmp.i.i.i.i31 = icmp eq i64 %add.i.i.i.i30, 2
  %conv11.i.i.i32 = zext i1 %cmp.i.i.i.i31 to i8
  %of.i.i.i33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %conv11.i.i.i32, i8* %of.i.i.i33, align 1, !tbaa !2398
  %67 = load i64, i64* %RSI
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 3
  store i64 %69, i64* %PC
  %70 = trunc i64 %67 to i8
  %71 = and i8 %70, 1
  %shr.i.i34 = ashr i64 %67, 1
  store i64 %shr.i.i34, i64* %RSI, align 8, !tbaa !2376
  %cf.i35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %71, i8* %cf.i35, align 1, !tbaa !2399
  %pf.i36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %conv.i.i37 = trunc i64 %shr.i.i34 to i32
  %conv.i.i.i38 = and i32 %conv.i.i37, 255
  %72 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i38)
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %pf.i36, align 1, !tbaa !2399
  %af.i39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %af.i39, align 1, !tbaa !2399
  %zf.i40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %cmp.i147.i41 = icmp eq i64 %shr.i.i34, 0
  %conv78.i42 = zext i1 %cmp.i147.i41 to i8
  store i8 %conv78.i42, i8* %zf.i40, align 1, !tbaa !2399
  %sf.i43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %new_val.0.lobit.i44 = lshr i64 %shr.i.i34, 63
  %76 = trunc i64 %new_val.0.lobit.i44 to i8
  store i8 %76, i8* %sf.i43, align 1, !tbaa !2399
  %of.i45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %of.i45, align 1, !tbaa !2399
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 26
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 2
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 2
  store i64 %82, i64* %PC
  %zf.i46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %83 = load i8, i8* %zf.i46, align 1, !tbaa !2396
  store i8 %83, i8* %BRANCH_TAKEN, align 1, !tbaa !2399
  %qword.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %tobool.i = icmp ne i8 %83, 0
  %cond1.i.i = select i1 %tobool.i, i64 %78, i64 %80
  store i64 %cond1.i.i, i64* %qword.i, align 8, !tbaa !2376
  %84 = load i8, i8* %BRANCH_TAKEN
  %85 = icmp eq i8 %84, 1
  br i1 %85, label %block_5e0, label %block_5c8

block_5d7:                                        ; preds = %block_5d4
  %86 = load i64, i64* %RAX
  %87 = load i64, i64* %RAX
  %88 = add i64 %87, %86
  %89 = load i16, i16* %AX
  %90 = zext i16 %89 to i64
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 9
  store i64 %92, i64* %PC
  br label %block_5e0

block_5c8:                                        ; preds = %entry
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 7
  store i64 %94, i64* %PC
  %95 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_200fb8__got_type* @seg_200fb8__got to i64), i64 56) to i64*)
  store i64 %95, i64* %RAX, align 8, !tbaa !2376
  %96 = load i64, i64* %RAX
  %97 = load i64, i64* %RAX
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 3
  store i64 %99, i64* %PC
  %and.i.i = and i64 %97, %96
  %cf.i.i47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %cf.i.i47, align 1, !tbaa !2380
  %conv.i.i.i48 = trunc i64 %and.i.i to i32
  %conv.i.i.i.i49 = and i32 %conv.i.i.i48, 255
  %100 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i49)
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  %103 = xor i8 %102, 1
  %pf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %103, i8* %pf.i.i, align 1, !tbaa !2394
  %cmp.i1.i.i = icmp eq i64 %and.i.i, 0
  %conv3.i.i = zext i1 %cmp.i1.i.i to i8
  %zf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv3.i.i, i8* %zf.i.i, align 1, !tbaa !2396
  %res.lobit.i.i = lshr i64 %and.i.i, 63
  %104 = trunc i64 %res.lobit.i.i to i8
  %sf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %104, i8* %sf.i.i, align 1, !tbaa !2397
  %of.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %of.i.i, align 1, !tbaa !2398
  %af.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %af.i.i, align 1, !tbaa !2395
  %105 = load i64, i64* %PC
  %106 = add i64 %105, 14
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 2
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 2
  store i64 %110, i64* %PC
  %zf.i50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %111 = load i8, i8* %zf.i50, align 1, !tbaa !2396
  store i8 %111, i8* %BRANCH_TAKEN, align 1, !tbaa !2399
  %qword.i51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %tobool.i52 = icmp ne i8 %111, 0
  %cond1.i.i53 = select i1 %tobool.i52, i64 %106, i64 %108
  store i64 %cond1.i.i53, i64* %qword.i51, align 8, !tbaa !2376
  %112 = load i8, i8* %BRANCH_TAKEN
  %113 = icmp eq i8 %112, 1
  br i1 %113, label %block_5e0, label %block_5d4

block_5d4:                                        ; preds = %block_5c8
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 1
  store i64 %115, i64* %PC
  %qword.i54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %116 = load i64, i64* %qword.i54, align 8, !tbaa !2376
  %add.i.i55 = add i64 %116, 8
  %117 = inttoptr i64 %116 to i64*
  %118 = load i64, i64* %117
  store i64 %118, i64* %RBP, align 8, !tbaa !2376
  store i64 %add.i.i55, i64* %qword.i54, align 8, !tbaa !2376
  %119 = load i64, i64* %RAX
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 2
  store i64 %121, i64* %PC
  %qword.i56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %119, i64* %qword.i56, align 8, !tbaa !2376
  %122 = load i64, i64* %PC
  switch i64 %122, label %147 [
    i64 1506, label %block_5e2
    i64 1495, label %block_5d7
  ]

block_5e2:                                        ; preds = %block_5d4
  %123 = load i64, i64* %RAX
  %124 = load i32, i32* %EAX
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 4
  store i64 %127, i64* %PC
  %128 = load i64, i64* %RAX
  %129 = load i64, i64* %RAX
  %130 = add i64 %129, %128
  %131 = load i16, i16* %AX
  %132 = zext i16 %131 to i64
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 10
  store i64 %134, i64* %PC
  %135 = load i64, i64* %PC
  %136 = tail call %struct.Memory* @sub_5f0___do_global_dtors_aux(%struct.State* %0, i64 %135, %struct.Memory* %2)
  ret %struct.Memory* %136

block_5e0:                                        ; preds = %block_5c8, %block_5d7, %entry
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %2, %block_5c8 ], [ %2, %block_5d7 ]
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 1
  store i64 %138, i64* %PC
  %qword.i57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %139 = load i64, i64* %qword.i57, align 8, !tbaa !2376
  %add.i.i58 = add i64 %139, 8
  %140 = inttoptr i64 %139 to i64*
  %141 = load i64, i64* %140
  store i64 %141, i64* %RBP, align 8, !tbaa !2376
  store i64 %add.i.i58, i64* %qword.i57, align 8, !tbaa !2376
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 1
  store i64 %143, i64* %PC
  %qword.i59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %qword2.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %144 = load i64, i64* %qword2.i, align 8, !tbaa !2376
  %145 = inttoptr i64 %144 to i64*
  %146 = load i64, i64* %145
  store i64 %146, i64* %qword.i59, align 8, !tbaa !2376
  %add.i.i60 = add i64 %144, 8
  store i64 %add.i.i60, i64* %qword2.i, align 8, !tbaa !2376
  ret %struct.Memory* %MEMORY.0

; <label>:147:                                    ; preds = %block_5d4
  %148 = load i64, i64* %PC
  %149 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %148, %struct.Memory* %2)
  ret %struct.Memory* %149
}

; Function Attrs: noinline
define %struct.Memory* @sub_630_frame_dummy(%struct.State* noalias, i64, %struct.Memory* noalias) #5 {
entry:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %gpr = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rip = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr, i32 0, i32 33
  %3 = getelementptr inbounds %struct.Reg, %struct.Reg* %rip, i32 0, i32 0
  %PC = bitcast %union.anon* %3 to i64*
  store i64 %1, i64* %PC, align 8
  %gpr162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rax163 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr162, i32 0, i32 1
  %4 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax163, i32 0, i32 0
  %RAX = bitcast %union.anon* %4 to i64*
  %gpr177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rdi178 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr177, i32 0, i32 11
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdi178, i32 0, i32 0
  %RDI = bitcast %union.anon* %5 to i64*
  %gpr180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rsp181 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr180, i32 0, i32 13
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsp181, i32 0, i32 0
  %RSP = bitcast %union.anon* %6 to i64*
  %gpr183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rbp184 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr183, i32 0, i32 15
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbp184, i32 0, i32 0
  %RBP = bitcast %union.anon* %7 to i64*
  %8 = load i64, i64* %PC
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC
  store i64 ptrtoint (%seg_200df0__jcr_type* @seg_200df0__jcr to i64), i64* %RDI, align 8, !tbaa !2376
  %10 = load i64, i64* %RDI
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %cf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %cf.i.i, align 1, !tbaa !2380
  %conv.i.i.i.i = trunc i64 %14 to i32
  %conv.i.i.i.i.i = and i32 %conv.i.i.i.i, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i.i)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %pf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %pf.i.i.i, align 1, !tbaa !2394
  %af.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %af.i.i.i, align 1, !tbaa !2395
  %cmp.i24.i.i.i = icmp eq i64 %14, 0
  %conv5.i.i.i = zext i1 %cmp.i24.i.i.i to i8
  %zf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv5.i.i.i, i8* %zf.i.i.i, align 1, !tbaa !2396
  %res.lobit.i.i.i = lshr i64 %14, 63
  %19 = trunc i64 %res.lobit.i.i.i to i8
  %sf.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %sf.i.i.i, align 1, !tbaa !2397
  %shr.i.i.i.i = lshr i64 %14, 63
  %xor3.i.i.i.i = xor i64 %res.lobit.i.i.i, %shr.i.i.i.i
  %add.i.i.i.i = add nuw nsw i64 %xor3.i.i.i.i, %shr.i.i.i.i
  %cmp.i.i.i.i = icmp eq i64 %add.i.i.i.i, 2
  %conv11.i.i.i = zext i1 %cmp.i.i.i.i to i8
  %of.i.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %conv11.i.i.i, i8* %of.i.i.i, align 1, !tbaa !2398
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 13
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 2
  %24 = load i64, i64* %PC
  %25 = add i64 %24, 2
  store i64 %25, i64* %PC
  %zf.i7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = load i8, i8* %zf.i7, align 1, !tbaa !2396
  %lnot.i.i = icmp eq i8 %26, 0
  %frombool.i = zext i1 %lnot.i.i to i8
  store i8 %frombool.i, i8* %BRANCH_TAKEN, align 1, !tbaa !2399
  %qword.i8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %cond1.i.i9 = select i1 %lnot.i.i, i64 %21, i64 %23
  store i64 %cond1.i.i9, i64* %qword.i8, align 8, !tbaa !2376
  %27 = load i8, i8* %BRANCH_TAKEN
  %28 = icmp eq i8 %27, 1
  br i1 %28, label %block_648, label %block_63d

block_63d:                                        ; preds = %block_648, %entry
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_648 ], [ %2, %entry ]
  %29 = load i64, i64* %PC
  %30 = sub i64 %29, 157
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 5
  store i64 %32, i64* %PC
  %qword.i6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %30, i64* %qword.i6, align 8, !tbaa !2376
  br label %block_5a0

block_654:                                        ; preds = %block_648
  %33 = load i64, i64* %RBP
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 1
  store i64 %35, i64* %PC
  %qword.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %36 = load i64, i64* %qword.i.i, align 8, !tbaa !2376
  %sub.i.i.i = add i64 %36, -8
  %37 = inttoptr i64 %sub.i.i.i to i64*
  store i64 %33, i64* %37
  store i64 %sub.i.i.i, i64* %qword.i.i, align 8, !tbaa !2376
  %38 = load i64, i64* %RSP
  %39 = load i64, i64* %PC
  %40 = add i64 %39, 3
  store i64 %40, i64* %PC
  store i64 %38, i64* %RBP, align 8, !tbaa !2376
  %41 = load i64, i64* %RAX
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 2
  %44 = load i64, i64* %PC
  %45 = add i64 %44, 2
  store i64 %45, i64* %PC
  %qword.i5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %46 = load i64, i64* %qword.i5, align 8, !tbaa !2376
  %sub.i.i = add i64 %46, -8
  %47 = inttoptr i64 %sub.i.i to i64*
  store i64 %43, i64* %47
  store i64 %sub.i.i, i64* %qword.i5, align 8, !tbaa !2376
  %qword18.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %41, i64* %qword18.i, align 8, !tbaa !2376
  %48 = load i64, i64* %PC
  %49 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %48, %struct.Memory* %2)
  %50 = load i64, i64* %PC
  %51 = add i64 %50, 1
  store i64 %51, i64* %PC
  %qword.i4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %qword.i4, align 8, !tbaa !2376
  %add.i.i = add i64 %52, 8
  %53 = inttoptr i64 %52 to i64*
  %54 = load i64, i64* %53
  store i64 %54, i64* %RBP, align 8, !tbaa !2376
  store i64 %add.i.i, i64* %qword.i4, align 8, !tbaa !2376
  %55 = load i64, i64* %PC
  %56 = sub i64 %55, 187
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 5
  store i64 %58, i64* %PC
  %qword.i3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %56, i64* %qword.i3, align 8, !tbaa !2376
  br label %block_5a0

block_648:                                        ; preds = %entry
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 7
  store i64 %60, i64* %PC
  %61 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_200fb8__got_type* @seg_200fb8__got to i64), i64 48) to i64*)
  store i64 %61, i64* %RAX, align 8, !tbaa !2376
  %62 = load i64, i64* %RAX
  %63 = load i64, i64* %RAX
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 3
  store i64 %65, i64* %PC
  %and.i.i = and i64 %63, %62
  %cf.i.i1 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %cf.i.i1, align 1, !tbaa !2380
  %conv.i.i.i = trunc i64 %and.i.i to i32
  %conv.i.i.i.i2 = and i32 %conv.i.i.i, 255
  %66 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i2)
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  %pf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %69, i8* %pf.i.i, align 1, !tbaa !2394
  %cmp.i1.i.i = icmp eq i64 %and.i.i, 0
  %conv3.i.i = zext i1 %cmp.i1.i.i to i8
  %zf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv3.i.i, i8* %zf.i.i, align 1, !tbaa !2396
  %res.lobit.i.i = lshr i64 %and.i.i, 63
  %70 = trunc i64 %res.lobit.i.i to i8
  %sf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %70, i8* %sf.i.i, align 1, !tbaa !2397
  %of.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %of.i.i, align 1, !tbaa !2398
  %af.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %af.i.i, align 1, !tbaa !2395
  %71 = load i64, i64* %PC
  %72 = sub i64 %71, 21
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 2
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 2
  store i64 %76, i64* %PC
  %zf.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %77 = load i8, i8* %zf.i, align 1, !tbaa !2396
  store i8 %77, i8* %BRANCH_TAKEN, align 1, !tbaa !2399
  %qword.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %tobool.i = icmp ne i8 %77, 0
  %cond1.i.i = select i1 %tobool.i, i64 %72, i64 %74
  store i64 %cond1.i.i, i64* %qword.i, align 8, !tbaa !2376
  %78 = load i8, i8* %BRANCH_TAKEN
  %79 = icmp eq i8 %78, 1
  br i1 %79, label %block_63d, label %block_654

block_5a0:                                        ; preds = %block_654, %block_63d
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_63d ], [ %49, %block_654 ]
  %80 = load i64, i64* %PC
  %81 = tail call %struct.Memory* @sub_5a0_register_tm_clones(%struct.State* %0, i64 %80, %struct.Memory* %MEMORY.1)
  ret %struct.Memory* %81
}

; Function Attrs: noinline
define %struct.Memory* @sub_530__start(%struct.State* noalias, i64, %struct.Memory* noalias) #5 {
entry:
  %gpr = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rip = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr, i32 0, i32 33
  %3 = getelementptr inbounds %struct.Reg, %struct.Reg* %rip, i32 0, i32 0
  %PC = bitcast %union.anon* %3 to i64*
  store i64 %1, i64* %PC, align 8
  %gpr132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rbp133 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr132, i32 0, i32 15
  %4 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbp133, i32 0, i32 0
  %EBP = bitcast %union.anon* %4 to i32*
  %gpr162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rax163 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr162, i32 0, i32 1
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %rax163, i32 0, i32 0
  %RAX = bitcast %union.anon* %5 to i64*
  %gpr168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rcx169 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr168, i32 0, i32 5
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %rcx169, i32 0, i32 0
  %RCX = bitcast %union.anon* %6 to i64*
  %gpr171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rdx172 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr171, i32 0, i32 7
  %7 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdx172, i32 0, i32 0
  %RDX = bitcast %union.anon* %7 to i64*
  %gpr174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rsi175 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr174, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsi175, i32 0, i32 0
  %RSI = bitcast %union.anon* %8 to i64*
  %gpr177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rdi178 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr177, i32 0, i32 11
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %rdi178, i32 0, i32 0
  %RDI = bitcast %union.anon* %9 to i64*
  %gpr180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rsp181 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr180, i32 0, i32 13
  %10 = getelementptr inbounds %struct.Reg, %struct.Reg* %rsp181, i32 0, i32 0
  %RSP = bitcast %union.anon* %10 to i64*
  %gpr183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rbp184 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr183, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %rbp184, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %gpr186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %r8187 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr186, i32 0, i32 17
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %r8187, i32 0, i32 0
  %R8 = bitcast %union.anon* %12 to i64*
  %gpr189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %r9190 = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr189, i32 0, i32 19
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %r9190, i32 0, i32 0
  %R9 = bitcast %union.anon* %13 to i64*
  %14 = load i64, i64* %RBP
  %15 = load i32, i32* %EBP
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 2
  store i64 %18, i64* %PC
  %xor3.i26.i = xor i64 %16, %14
  %xor3.i.i = trunc i64 %xor3.i26.i to i32
  %conv.i24.i = and i64 %xor3.i26.i, 4294967295
  store i64 %conv.i24.i, i64* %RBP, align 8, !tbaa !2376
  %cf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %cf.i.i, align 1, !tbaa !2380
  %conv.i.i.i.i = and i32 %xor3.i.i, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %pf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %pf.i.i, align 1, !tbaa !2394
  %cmp.i1.i.i = icmp eq i32 %xor3.i.i, 0
  %conv3.i.i = zext i1 %cmp.i1.i.i to i8
  %zf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv3.i.i, i8* %zf.i.i, align 1, !tbaa !2396
  %res.lobit.i.i = lshr i32 %xor3.i.i, 31
  %23 = trunc i32 %res.lobit.i.i to i8
  %sf.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %sf.i.i, align 1, !tbaa !2397
  %of.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %of.i.i, align 1, !tbaa !2398
  %af.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %af.i.i, align 1, !tbaa !2395
  %24 = load i64, i64* %RDX
  %25 = load i64, i64* %PC
  %26 = add i64 %25, 3
  store i64 %26, i64* %PC
  store i64 %24, i64* %R9, align 8, !tbaa !2376
  %27 = load i64, i64* %PC
  %28 = add i64 %27, 1
  store i64 %28, i64* %PC
  %qword.i13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %29 = load i64, i64* %qword.i13, align 8, !tbaa !2376
  %add.i.i = add i64 %29, 8
  %30 = inttoptr i64 %29 to i64*
  %31 = load i64, i64* %30
  store i64 %31, i64* %RSI, align 8, !tbaa !2376
  store i64 %add.i.i, i64* %qword.i13, align 8, !tbaa !2376
  %32 = load i64, i64* %RSP
  %33 = load i64, i64* %PC
  %34 = add i64 %33, 3
  store i64 %34, i64* %PC
  store i64 %32, i64* %RDX, align 8, !tbaa !2376
  %35 = load i64, i64* %RSP
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC
  %and.i.i = and i64 -16, %35
  store i64 %and.i.i, i64* %RSP, align 8, !tbaa !2376
  %cf.i.i3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %cf.i.i3, align 1, !tbaa !2380
  %conv.i.i.i = trunc i64 %and.i.i to i32
  %conv.i.i.i.i4 = and i32 %conv.i.i.i, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %conv.i.i.i.i4)
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = xor i8 %40, 1
  %pf.i.i5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %41, i8* %pf.i.i5, align 1, !tbaa !2394
  %cmp.i1.i.i6 = icmp eq i64 %and.i.i, 0
  %conv3.i.i7 = zext i1 %cmp.i1.i.i6 to i8
  %zf.i.i8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %conv3.i.i7, i8* %zf.i.i8, align 1, !tbaa !2396
  %res.lobit.i.i9 = lshr i64 %and.i.i, 63
  %42 = trunc i64 %res.lobit.i.i9 to i8
  %sf.i.i10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %sf.i.i10, align 1, !tbaa !2397
  %of.i.i11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %of.i.i11, align 1, !tbaa !2398
  %af.i.i12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %af.i.i12, align 1, !tbaa !2395
  %43 = load i64, i64* %RAX
  %44 = load i64, i64* %PC
  %45 = add i64 %44, 1
  store i64 %45, i64* %PC
  %qword.i.i1 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %46 = load i64, i64* %qword.i.i1, align 8, !tbaa !2376
  %sub.i.i.i2 = add i64 %46, -8
  %47 = inttoptr i64 %sub.i.i.i2 to i64*
  store i64 %43, i64* %47
  store i64 %sub.i.i.i2, i64* %qword.i.i1, align 8, !tbaa !2376
  %48 = load i64, i64* %RSP
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 1
  store i64 %50, i64* %PC
  %qword.i.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %51 = load i64, i64* %qword.i.i, align 8, !tbaa !2376
  %sub.i.i.i = add i64 %51, -8
  %52 = inttoptr i64 %sub.i.i.i to i64*
  store i64 %48, i64* %52
  store i64 %sub.i.i.i, i64* %qword.i.i, align 8, !tbaa !2376
  %53 = load i64, i64* %PC
  %54 = add i64 %53, 7
  store i64 %54, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_750___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2376
  %55 = load i64, i64* %PC
  %56 = add i64 %55, 7
  store i64 %56, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_6e0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2376
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 7
  store i64 %58, i64* %PC
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2376
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 6
  %61 = load i64, i64* %PC
  %62 = add i64 %61, 6
  store i64 %62, i64* %PC
  %qword.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %63 = load i64, i64* %qword.i, align 8, !tbaa !2376
  %sub.i.i = add i64 %63, -8
  %64 = inttoptr i64 %sub.i.i to i64*
  store i64 %60, i64* %64
  store i64 %sub.i.i, i64* %qword.i, align 8, !tbaa !2376
  %qword18.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %65 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_200fb8__got_type* @seg_200fb8__got to i64), i64 32) to i64*)
  store i64 %65, i64* %qword18.i, align 8, !tbaa !2376
  %66 = load i64, i64* %PC
  %67 = call %struct.Memory* @ext_201018___libc_start_main(%struct.State* %0, i64 %66, %struct.Memory* %2)
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 1
  store i64 %69, i64* %PC
  %70 = load i64, i64* %PC
  %71 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %70, %struct.Memory* %67)
  ret %struct.Memory* %71
}

; Function Attrs: noinline
define %struct.Memory* @sub_520___cxa_finalize(%struct.State* noalias, i64, %struct.Memory* noalias) #5 {
entry:
  %gpr = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %rip = getelementptr inbounds %struct.GPR, %struct.GPR* %gpr, i32 0, i32 33
  %3 = getelementptr inbounds %struct.Reg, %struct.Reg* %rip, i32 0, i32 0
  %PC = bitcast %union.anon* %3 to i64*
  store i64 %1, i64* %PC, align 8
  %4 = load i64, i64* %PC
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC
  %qword.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_200fb8__got_type* @seg_200fb8__got to i64), i64 64) to i64*)
  store i64 %6, i64* %qword.i, align 8, !tbaa !2376
  %7 = load i64, i64* %PC
  %8 = tail call %struct.Memory* @ext_201030___cxa_finalize(%struct.State* %0, i64 %7, %struct.Memory* %2)
  ret %struct.Memory* %8
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #5

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_630_frame_dummy() #6 {
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
define internal void @callback_sub_5f0___do_global_dtors_aux() #6 {
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

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_750___libc_csu_fini() #6 {
  call void asm sideeffect "pushq $0;pushq $$0x750;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_750___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_750___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_6e0___libc_csu_init() #6 {
  call void asm sideeffect "pushq $0;pushq $$0x6e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_6e0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_6e0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #6 {
  call void asm sideeffect "pushq $0;pushq $$0x6b1;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_6b1_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_201018___libc_start_main(%struct.State*, i64, %struct.Memory*) #5 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_201030___cxa_finalize(%struct.State*, i64, %struct.Memory*) #5 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @__cxa_finalize to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @get_sign() #6 {
  call void asm sideeffect "pushq $0;pushq $$0x660;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
define dllexport void @.init_proc() #6 {
  call void asm sideeffect "pushq $0;pushq $$0x4f8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
define dllexport void @init_var_correspondence() #6 {
  call void asm sideeffect "pushq $0;pushq $$0x67b;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
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
define dllexport void @.term_proc() #6 {
  call void asm sideeffect "pushq $0;pushq $$0x754;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_754__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
  call void @callback_sub_6e0___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_750___libc_csu_fini()
  ret void
}

attributes #0 = { noduplicate noinline nounwind optnone readnone }
attributes #1 = { nounwind readnone }
attributes #2 = { noduplicate noinline nounwind optnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noinline nounwind optnone }
attributes #5 = { noinline }
attributes #6 = { naked nobuiltin noinline }

!llvm.ident = !{!0, !0}
!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!1255, !1256}

!0 = !{!"clang version 4.0.0 (tags/RELEASE_400/final)"}
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.0 (tags/RELEASE_400/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !67, imports: !70)
!2 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/X86/Runtime/BasicBlock.cpp", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!3 = !{!4, !26, !35, !39, !45, !51, !55, !61}
!4 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Name", scope: !6, file: !5, line: 70, baseType: !8, size: 32, elements: !11, identifier: "_ZTSN14AsyncHyperCall4NameE")
!5 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/HyperCall.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncHyperCall", file: !5, line: 68, size: 8, elements: !7, identifier: "_ZTS14AsyncHyperCall")
!7 = !{}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 183, baseType: !10)
!9 = !DIFile(filename: "/home/sdasgup3/Install/llvm/llvm.4.0.0.install/bin/../lib/clang/4.0.0/include/stdint.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
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
!70 = !{!71, !77, !83, !86, !93, !97, !102, !104, !112, !116, !120, !132, !136, !140, !144, !148, !153, !157, !161, !165, !169, !177, !181, !185, !187, !191, !195, !199, !205, !209, !213, !215, !223, !227, !235, !237, !241, !245, !249, !253, !258, !263, !268, !269, !270, !271, !274, !275, !276, !277, !278, !279, !280, !335, !339, !354, !356, !360, !368, !373, !377, !381, !385, !389, !391, !393, !397, !403, !407, !413, !419, !421, !425, !429, !433, !437, !448, !450, !454, !458, !462, !464, !468, !472, !476, !478, !480, !484, !492, !496, !500, !504, !506, !512, !514, !520, !524, !528, !532, !536, !540, !544, !546, !548, !552, !556, !560, !562, !566, !570, !572, !574, !578, !582, !586, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !604, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !632, !633, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !663, !667, !672, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !708, !713, !717, !719, !721, !723, !725, !732, !736, !740, !744, !748, !752, !757, !761, !763, !767, !773, !777, !782, !784, !786, !790, !794, !798, !800, !802, !804, !806, !810, !812, !814, !818, !822, !826, !830, !834, !836, !838, !842, !846, !850, !854, !856, !858, !862, !866, !867, !868, !869, !870, !871, !876, !878, !880, !884, !886, !888, !890, !892, !894, !896, !898, !903, !907, !909, !911, !916, !918, !920, !922, !924, !926, !928, !931, !933, !935, !939, !943, !945, !947, !949, !951, !953, !955, !957, !959, !961, !963, !967, !971, !973, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !999, !1001, !1005, !1009, !1013, !1015, !1017, !1019, !1021, !1023, !1025, !1027, !1029, !1031, !1035, !1039, !1043, !1045, !1047, !1049, !1053, !1057, !1061, !1063, !1065, !1067, !1069, !1071, !1073, !1075, !1077, !1079, !1081, !1083, !1085, !1089, !1093, !1097, !1099, !1101, !1103, !1105, !1109, !1113, !1115, !1117, !1119, !1121, !1123, !1125, !1129, !1133, !1135, !1137, !1139, !1141, !1145, !1149, !1153, !1155, !1157, !1159, !1161, !1163, !1165, !1169, !1173, !1177, !1179, !1183, !1187, !1189, !1191, !1193, !1195, !1197, !1199, !1203, !1205, !1208, !1213, !1215, !1221, !1223, !1225, !1227, !1232, !1234, !1240, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254}
!71 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !72, entity: !74, line: 58)
!72 = !DINamespace(name: "__gnu_debug", scope: null, file: !73, line: 56)
!73 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/debug/debug.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!74 = !DINamespace(name: "__debug", scope: !75, file: !73, line: 50)
!75 = !DINamespace(name: "std", scope: null, file: !76, line: 229)
!76 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/x86_64-linux-gnu/c++/7.0.1/bits/c++config.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !78, line: 52)
!78 = !DISubprogram(name: "abs", scope: !79, file: !79, line: 735, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!79 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !82}
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !84, line: 124)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !79, line: 62, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !87, line: 125)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !79, line: 70, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 66, size: 128, elements: !89, identifier: "_ZTS6ldiv_t")
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !88, file: !79, line: 68, baseType: !91, size: 64)
!91 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !88, file: !79, line: 69, baseType: !91, size: 64, offset: 64)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !94, line: 127)
!94 = !DISubprogram(name: "abort", scope: !79, file: !79, line: 476, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !98, line: 128)
!98 = !DISubprogram(name: "atexit", scope: !79, file: !79, line: 480, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DISubroutineType(types: !100)
!100 = !{!82, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !103, line: 131)
!103 = !DISubprogram(name: "at_quick_exit", scope: !79, file: !79, line: 485, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !105, line: 134)
!105 = !DISubprogram(name: "atof", scope: !79, file: !79, line: 105, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !109}
!108 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !113, line: 135)
!113 = !DISubprogram(name: "atoi", scope: !79, file: !79, line: 108, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!114 = !DISubroutineType(types: !115)
!115 = !{!82, !109}
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !117, line: 136)
!117 = !DISubprogram(name: "atol", scope: !79, file: !79, line: 111, type: !118, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DISubroutineType(types: !119)
!119 = !{!91, !109}
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !121, line: 137)
!121 = !DISubprogram(name: "bsearch", scope: !79, file: !79, line: 715, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !68, !68, !125, !125, !128}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 62, baseType: !127)
!126 = !DIFile(filename: "/home/sdasgup3/Install/llvm/llvm.4.0.0.install/bin/../lib/clang/4.0.0/include/stddef.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!127 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !79, line: 702, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!82, !68, !68}
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !133, line: 138)
!133 = !DISubprogram(name: "calloc", scope: !79, file: !79, line: 429, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!134 = !DISubroutineType(types: !135)
!135 = !{!124, !125, !125}
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !137, line: 139)
!137 = !DISubprogram(name: "div", scope: !79, file: !79, line: 749, type: !138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DISubroutineType(types: !139)
!139 = !{!84, !82, !82}
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !141, line: 140)
!141 = !DISubprogram(name: "exit", scope: !79, file: !79, line: 504, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !82}
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !145, line: 141)
!145 = !DISubprogram(name: "free", scope: !79, file: !79, line: 444, type: !146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !124}
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !149, line: 142)
!149 = !DISubprogram(name: "getenv", scope: !79, file: !79, line: 525, type: !150, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !109}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !154, line: 143)
!154 = !DISubprogram(name: "labs", scope: !79, file: !79, line: 736, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubroutineType(types: !156)
!156 = !{!91, !91}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !158, line: 144)
!158 = !DISubprogram(name: "ldiv", scope: !79, file: !79, line: 751, type: !159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DISubroutineType(types: !160)
!160 = !{!87, !91, !91}
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !162, line: 145)
!162 = !DISubprogram(name: "malloc", scope: !79, file: !79, line: 427, type: !163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{!124, !125}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !166, line: 147)
!166 = !DISubprogram(name: "mblen", scope: !79, file: !79, line: 823, type: !167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{!82, !109, !125}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !170, line: 148)
!170 = !DISubprogram(name: "mbstowcs", scope: !79, file: !79, line: 834, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!125, !173, !176, !125}
!173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !178, line: 149)
!178 = !DISubprogram(name: "mbtowc", scope: !79, file: !79, line: 826, type: !179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DISubroutineType(types: !180)
!180 = !{!82, !173, !176, !125}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !182, line: 151)
!182 = !DISubprogram(name: "qsort", scope: !79, file: !79, line: 725, type: !183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !124, !125, !125, !128}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !186, line: 154)
!186 = !DISubprogram(name: "quick_exit", scope: !79, file: !79, line: 510, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !188, line: 157)
!188 = !DISubprogram(name: "rand", scope: !79, file: !79, line: 335, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DISubroutineType(types: !190)
!190 = !{!82}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !192, line: 158)
!192 = !DISubprogram(name: "realloc", scope: !79, file: !79, line: 441, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!124, !124, !125}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !196, line: 159)
!196 = !DISubprogram(name: "srand", scope: !79, file: !79, line: 337, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !10}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !200, line: 160)
!200 = !DISubprogram(name: "strtod", scope: !79, file: !79, line: 125, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!108, !176, !203}
!203 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !206, line: 161)
!206 = !DISubprogram(name: "strtol", scope: !79, file: !79, line: 144, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DISubroutineType(types: !208)
!208 = !{!91, !176, !203, !82}
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !210, line: 162)
!210 = !DISubprogram(name: "strtoul", scope: !79, file: !79, line: 148, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DISubroutineType(types: !212)
!212 = !{!127, !176, !203, !82}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !214, line: 163)
!214 = !DISubprogram(name: "system", scope: !79, file: !79, line: 677, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !216, line: 165)
!216 = !DISubprogram(name: "wcstombs", scope: !79, file: !79, line: 837, type: !217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DISubroutineType(types: !218)
!218 = !{!125, !219, !220, !125}
!219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !152)
!220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !224, line: 166)
!224 = !DISubprogram(name: "wctomb", scope: !79, file: !79, line: 830, type: !225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DISubroutineType(types: !226)
!226 = !{!82, !152, !175}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !229, line: 194)
!228 = !DINamespace(name: "__gnu_cxx", scope: null, file: !76, line: 255)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !79, line: 82, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 78, size: 128, elements: !231, identifier: "_ZTS7lldiv_t")
!231 = !{!232, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !230, file: !79, line: 80, baseType: !233, size: 64)
!233 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !230, file: !79, line: 81, baseType: !233, size: 64, offset: 64)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !236, line: 200)
!236 = !DISubprogram(name: "_Exit", scope: !79, file: !79, line: 518, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !238, line: 204)
!238 = !DISubprogram(name: "llabs", scope: !79, file: !79, line: 740, type: !239, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DISubroutineType(types: !240)
!240 = !{!233, !233}
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !242, line: 210)
!242 = !DISubprogram(name: "lldiv", scope: !79, file: !79, line: 757, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!229, !233, !233}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !246, line: 221)
!246 = !DISubprogram(name: "atoll", scope: !79, file: !79, line: 118, type: !247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubroutineType(types: !248)
!248 = !{!233, !109}
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !250, line: 222)
!250 = !DISubprogram(name: "strtoll", scope: !79, file: !79, line: 170, type: !251, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DISubroutineType(types: !252)
!252 = !{!233, !176, !203, !82}
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !254, line: 223)
!254 = !DISubprogram(name: "strtoull", scope: !79, file: !79, line: 175, type: !255, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !176, !203, !82}
!257 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !259, line: 225)
!259 = !DISubprogram(name: "strtof", scope: !79, file: !79, line: 133, type: !260, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !176, !203}
!262 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !264, line: 226)
!264 = !DISubprogram(name: "strtold", scope: !79, file: !79, line: 136, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DISubroutineType(types: !266)
!266 = !{!267, !176, !203}
!267 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !229, line: 234)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !236, line: 236)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !238, line: 238)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !272, line: 239)
!272 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !228, file: !273, line: 207, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/cstdlib", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !242, line: 240)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !246, line: 242)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !259, line: 243)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !250, line: 244)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !254, line: 245)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !264, line: 246)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !281, line: 57)
!281 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !283, file: !282, line: 79, size: 64, elements: !284, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!282 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/bits/exception_ptr.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!283 = !DINamespace(name: "__exception_ptr", scope: !75, file: !282, line: 52)
!284 = !{!285, !286, !290, !293, !294, !299, !300, !304, !309, !313, !317, !320, !321, !324, !328}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !281, file: !282, line: 81, baseType: !124, size: 64)
!286 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 83, type: !287, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !289, !124}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!290 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !281, file: !282, line: 85, type: !291, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !289}
!293 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !281, file: !282, line: 86, type: !291, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !281, file: !282, line: 88, type: !295, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false)
!295 = !DISubroutineType(types: !296)
!296 = !{!124, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!299 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 96, type: !291, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!300 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 98, type: !301, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !289, !303}
!303 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !298, size: 64)
!304 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 101, type: !305, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !289, !307}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !75, file: !76, line: 235, baseType: !308)
!308 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!309 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 105, type: !310, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !289, !312}
!312 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !281, size: 64)
!313 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !281, file: !282, line: 118, type: !314, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !289, !303}
!316 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !281, size: 64)
!317 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !281, file: !282, line: 122, type: !318, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!318 = !DISubroutineType(types: !319)
!319 = !{!316, !289, !312}
!320 = !DISubprogram(name: "~exception_ptr", scope: !281, file: !282, line: 129, type: !291, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!321 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !281, file: !282, line: 132, type: !322, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !289, !316}
!324 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !281, file: !282, line: 144, type: !325, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !297}
!327 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!328 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !281, file: !282, line: 153, type: !329, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !297}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !75, file: !334, line: 88, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!334 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.0.1/../../../../include/c++/7.0.1/typeinfo", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !283, entity: !336, line: 73)
!336 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !75, file: !282, line: 69, type: !337, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !281}
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !340, line: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !341, line: 106, baseType: !342)
!341 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !341, line: 94, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !341, line: 82, size: 64, elements: !344, identifier: "_ZTS11__mbstate_t")
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !343, file: !341, line: 84, baseType: !82, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !343, file: !341, line: 93, baseType: !347, size: 32, offset: 32)
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !341, line: 85, size: 32, elements: !348, identifier: "_ZTSN11__mbstate_tUt_E")
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !347, file: !341, line: 88, baseType: !10, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !347, file: !341, line: 92, baseType: !351, size: 32)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 32, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 4)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !355, line: 139)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !126, line: 132, baseType: !10)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !357, line: 141)
!357 = !DISubprogram(name: "btowc", scope: !341, file: !341, line: 356, type: !358, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!358 = !DISubroutineType(types: !359)
!359 = !{!355, !82}
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !361, line: 142)
!361 = !DISubprogram(name: "fgetwc", scope: !341, file: !341, line: 748, type: !362, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!362 = !DISubroutineType(types: !363)
!363 = !{!355, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !366, line: 64, baseType: !367)
!366 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !366, line: 44, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !369, line: 143)
!369 = !DISubprogram(name: "fgetws", scope: !341, file: !341, line: 777, type: !370, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!370 = !DISubroutineType(types: !371)
!371 = !{!174, !173, !82, !372}
!372 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !364)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !374, line: 144)
!374 = !DISubprogram(name: "fputwc", scope: !341, file: !341, line: 762, type: !375, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!375 = !DISubroutineType(types: !376)
!376 = !{!355, !175, !364}
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !378, line: 145)
!378 = !DISubprogram(name: "fputws", scope: !341, file: !341, line: 784, type: !379, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!379 = !DISubroutineType(types: !380)
!380 = !{!82, !220, !372}
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !382, line: 146)
!382 = !DISubprogram(name: "fwide", scope: !341, file: !341, line: 590, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!383 = !DISubroutineType(types: !384)
!384 = !{!82, !364, !82}
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !386, line: 147)
!386 = !DISubprogram(name: "fwprintf", scope: !341, file: !341, line: 597, type: !387, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!387 = !DISubroutineType(types: !388)
!388 = !{!82, !372, !220, null}
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !390, line: 148)
!390 = !DISubprogram(name: "fwscanf", scope: !341, file: !341, line: 638, type: !387, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !392, line: 149)
!392 = !DISubprogram(name: "getwc", scope: !341, file: !341, line: 749, type: !362, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !394, line: 150)
!394 = !DISubprogram(name: "getwchar", scope: !341, file: !341, line: 755, type: !395, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!395 = !DISubroutineType(types: !396)
!396 = !{!355}
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !398, line: 151)
!398 = !DISubprogram(name: "mbrlen", scope: !341, file: !341, line: 379, type: !399, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!399 = !DISubroutineType(types: !400)
!400 = !{!125, !176, !125, !401}
!401 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !404, line: 152)
!404 = !DISubprogram(name: "mbrtowc", scope: !341, file: !341, line: 368, type: !405, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!405 = !DISubroutineType(types: !406)
!406 = !{!125, !173, !176, !125, !401}
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !408, line: 153)
!408 = !DISubprogram(name: "mbsinit", scope: !341, file: !341, line: 364, type: !409, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!409 = !DISubroutineType(types: !410)
!410 = !{!82, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !414, line: 154)
!414 = !DISubprogram(name: "mbsrtowcs", scope: !341, file: !341, line: 411, type: !415, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!415 = !DISubroutineType(types: !416)
!416 = !{!125, !173, !417, !125, !401}
!417 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !420, line: 155)
!420 = !DISubprogram(name: "putwc", scope: !341, file: !341, line: 763, type: !375, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !422, line: 156)
!422 = !DISubprogram(name: "putwchar", scope: !341, file: !341, line: 769, type: !423, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!423 = !DISubroutineType(types: !424)
!424 = !{!355, !175}
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !426, line: 158)
!426 = !DISubprogram(name: "swprintf", scope: !341, file: !341, line: 607, type: !427, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!427 = !DISubroutineType(types: !428)
!428 = !{!82, !173, !125, !220, null}
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !430, line: 160)
!430 = !DISubprogram(name: "swscanf", scope: !341, file: !341, line: 648, type: !431, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!431 = !DISubroutineType(types: !432)
!432 = !{!82, !220, !220, null}
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !434, line: 161)
!434 = !DISubprogram(name: "ungetwc", scope: !341, file: !341, line: 792, type: !435, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!435 = !DISubroutineType(types: !436)
!436 = !{!355, !355, !364}
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !438, line: 162)
!438 = !DISubprogram(name: "vfwprintf", scope: !341, file: !341, line: 615, type: !439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!439 = !DISubroutineType(types: !440)
!440 = !{!82, !372, !220, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !2, size: 192, elements: !443, identifier: "_ZTS13__va_list_tag")
!443 = !{!444, !445, !446, !447}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !442, file: !2, baseType: !10, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !442, file: !2, baseType: !10, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !442, file: !2, baseType: !124, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !442, file: !2, baseType: !124, size: 64, offset: 128)
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !449, line: 164)
!449 = !DISubprogram(name: "vfwscanf", scope: !341, file: !341, line: 692, type: !439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !451, line: 167)
!451 = !DISubprogram(name: "vswprintf", scope: !341, file: !341, line: 628, type: !452, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!452 = !DISubroutineType(types: !453)
!453 = !{!82, !173, !125, !220, !441}
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !455, line: 170)
!455 = !DISubprogram(name: "vswscanf", scope: !341, file: !341, line: 704, type: !456, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!456 = !DISubroutineType(types: !457)
!457 = !{!82, !220, !220, !441}
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !459, line: 172)
!459 = !DISubprogram(name: "vwprintf", scope: !341, file: !341, line: 623, type: !460, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!460 = !DISubroutineType(types: !461)
!461 = !{!82, !220, !441}
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !463, line: 174)
!463 = !DISubprogram(name: "vwscanf", scope: !341, file: !341, line: 700, type: !460, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !465, line: 176)
!465 = !DISubprogram(name: "wcrtomb", scope: !341, file: !341, line: 373, type: !466, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!466 = !DISubroutineType(types: !467)
!467 = !{!125, !219, !175, !401}
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !469, line: 177)
!469 = !DISubprogram(name: "wcscat", scope: !341, file: !341, line: 157, type: !470, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!470 = !DISubroutineType(types: !471)
!471 = !{!174, !173, !220}
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !473, line: 178)
!473 = !DISubprogram(name: "wcscmp", scope: !341, file: !341, line: 166, type: !474, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!474 = !DISubroutineType(types: !475)
!475 = !{!82, !221, !221}
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !477, line: 179)
!477 = !DISubprogram(name: "wcscoll", scope: !341, file: !341, line: 195, type: !474, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !479, line: 180)
!479 = !DISubprogram(name: "wcscpy", scope: !341, file: !341, line: 147, type: !470, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !481, line: 181)
!481 = !DISubprogram(name: "wcscspn", scope: !341, file: !341, line: 255, type: !482, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!482 = !DISubroutineType(types: !483)
!483 = !{!125, !221, !221}
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !485, line: 182)
!485 = !DISubprogram(name: "wcsftime", scope: !341, file: !341, line: 858, type: !486, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!486 = !DISubroutineType(types: !487)
!487 = !{!125, !173, !125, !220, !488}
!488 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !341, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !493, line: 183)
!493 = !DISubprogram(name: "wcslen", scope: !341, file: !341, line: 290, type: !494, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!494 = !DISubroutineType(types: !495)
!495 = !{!125, !221}
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !497, line: 184)
!497 = !DISubprogram(name: "wcsncat", scope: !341, file: !341, line: 161, type: !498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!498 = !DISubroutineType(types: !499)
!499 = !{!174, !173, !220, !125}
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !501, line: 185)
!501 = !DISubprogram(name: "wcsncmp", scope: !341, file: !341, line: 169, type: !502, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!502 = !DISubroutineType(types: !503)
!503 = !{!82, !221, !221, !125}
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !505, line: 186)
!505 = !DISubprogram(name: "wcsncpy", scope: !341, file: !341, line: 152, type: !498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !507, line: 187)
!507 = !DISubprogram(name: "wcsrtombs", scope: !341, file: !341, line: 417, type: !508, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!508 = !DISubroutineType(types: !509)
!509 = !{!125, !219, !510, !125, !401}
!510 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !513, line: 188)
!513 = !DISubprogram(name: "wcsspn", scope: !341, file: !341, line: 259, type: !482, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !515, line: 189)
!515 = !DISubprogram(name: "wcstod", scope: !341, file: !341, line: 453, type: !516, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!516 = !DISubroutineType(types: !517)
!517 = !{!108, !220, !518}
!518 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!520 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !521, line: 191)
!521 = !DISubprogram(name: "wcstof", scope: !341, file: !341, line: 460, type: !522, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!522 = !DISubroutineType(types: !523)
!523 = !{!262, !220, !518}
!524 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !525, line: 193)
!525 = !DISubprogram(name: "wcstok", scope: !341, file: !341, line: 285, type: !526, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!526 = !DISubroutineType(types: !527)
!527 = !{!174, !173, !220, !518}
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !529, line: 194)
!529 = !DISubprogram(name: "wcstol", scope: !341, file: !341, line: 471, type: !530, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!530 = !DISubroutineType(types: !531)
!531 = !{!91, !220, !518, !82}
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !533, line: 195)
!533 = !DISubprogram(name: "wcstoul", scope: !341, file: !341, line: 476, type: !534, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!534 = !DISubroutineType(types: !535)
!535 = !{!127, !220, !518, !82}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !537, line: 196)
!537 = !DISubprogram(name: "wcsxfrm", scope: !341, file: !341, line: 199, type: !538, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!538 = !DISubroutineType(types: !539)
!539 = !{!125, !173, !220, !125}
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !541, line: 197)
!541 = !DISubprogram(name: "wctob", scope: !341, file: !341, line: 360, type: !542, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!542 = !DISubroutineType(types: !543)
!543 = !{!82, !355}
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !545, line: 198)
!545 = !DISubprogram(name: "wmemcmp", scope: !341, file: !341, line: 328, type: !502, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !547, line: 199)
!547 = !DISubprogram(name: "wmemcpy", scope: !341, file: !341, line: 332, type: !498, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !549, line: 200)
!549 = !DISubprogram(name: "wmemmove", scope: !341, file: !341, line: 337, type: !550, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!550 = !DISubroutineType(types: !551)
!551 = !{!174, !174, !221, !125}
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !553, line: 201)
!553 = !DISubprogram(name: "wmemset", scope: !341, file: !341, line: 341, type: !554, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!554 = !DISubroutineType(types: !555)
!555 = !{!174, !174, !175, !125}
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !557, line: 202)
!557 = !DISubprogram(name: "wprintf", scope: !341, file: !341, line: 604, type: !558, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!558 = !DISubroutineType(types: !559)
!559 = !{!82, !220, null}
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !561, line: 203)
!561 = !DISubprogram(name: "wscanf", scope: !341, file: !341, line: 645, type: !558, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !563, line: 204)
!563 = !DISubprogram(name: "wcschr", scope: !341, file: !341, line: 230, type: !564, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!564 = !DISubroutineType(types: !565)
!565 = !{!174, !221, !175}
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !567, line: 205)
!567 = !DISubprogram(name: "wcspbrk", scope: !341, file: !341, line: 269, type: !568, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!568 = !DISubroutineType(types: !569)
!569 = !{!174, !221, !221}
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !571, line: 206)
!571 = !DISubprogram(name: "wcsrchr", scope: !341, file: !341, line: 240, type: !564, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !573, line: 207)
!573 = !DISubprogram(name: "wcsstr", scope: !341, file: !341, line: 280, type: !568, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !575, line: 208)
!575 = !DISubprogram(name: "wmemchr", scope: !341, file: !341, line: 323, type: !576, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!576 = !DISubroutineType(types: !577)
!577 = !{!174, !221, !175, !125}
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !579, line: 248)
!579 = !DISubprogram(name: "wcstold", scope: !341, file: !341, line: 462, type: !580, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!580 = !DISubroutineType(types: !581)
!581 = !{!267, !220, !518}
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !583, line: 257)
!583 = !DISubprogram(name: "wcstoll", scope: !341, file: !341, line: 486, type: !584, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!584 = !DISubroutineType(types: !585)
!585 = !{!233, !220, !518, !82}
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !587, line: 258)
!587 = !DISubprogram(name: "wcstoull", scope: !341, file: !341, line: 493, type: !588, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!588 = !DISubroutineType(types: !589)
!589 = !{!257, !220, !518, !82}
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !579, line: 264)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !583, line: 265)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !587, line: 266)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !521, line: 280)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !449, line: 283)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !455, line: 286)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !463, line: 289)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !579, line: 293)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !583, line: 294)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !587, line: 295)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !601, line: 48)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !602, line: 194, baseType: !603)
!602 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!603 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !605, line: 49)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !602, line: 195, baseType: !606)
!606 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !608, line: 50)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !602, line: 196, baseType: !82)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !610, line: 51)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !602, line: 197, baseType: !91)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !612, line: 53)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !9, line: 245, baseType: !601)
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !614, line: 54)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !9, line: 228, baseType: !605)
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !616, line: 55)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !9, line: 197, baseType: !608)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !618, line: 56)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !9, line: 123, baseType: !610)
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !620, line: 58)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !9, line: 243, baseType: !601)
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !622, line: 59)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !9, line: 226, baseType: !605)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !624, line: 60)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !9, line: 195, baseType: !608)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !626, line: 61)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !9, line: 121, baseType: !610)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !628, line: 63)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !9, line: 276, baseType: !91)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !630, line: 64)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !9, line: 263, baseType: !610)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !62, line: 66)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !28, line: 67)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !8, line: 68)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !635, line: 69)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 109, baseType: !127)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !637, line: 71)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !9, line: 246, baseType: !62)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !639, line: 72)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !9, line: 229, baseType: !28)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !641, line: 73)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !9, line: 198, baseType: !8)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !643, line: 74)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !9, line: 124, baseType: !635)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !645, line: 76)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !9, line: 244, baseType: !62)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !647, line: 77)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !9, line: 227, baseType: !28)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !649, line: 78)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !9, line: 196, baseType: !8)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !651, line: 79)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !9, line: 122, baseType: !635)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !653, line: 81)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !9, line: 277, baseType: !127)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !655, line: 82)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 270, baseType: !635)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !657, line: 44)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !75, file: !76, line: 231, baseType: !127)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !659, line: 45)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !75, file: !76, line: 232, baseType: !91)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !661, line: 53)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !662, line: 53, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!662 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !664, line: 54)
!664 = !DISubprogram(name: "setlocale", scope: !662, file: !662, line: 124, type: !665, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!665 = !DISubroutineType(types: !666)
!666 = !{!152, !82, !109}
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !668, line: 55)
!668 = !DISubprogram(name: "localeconv", scope: !662, file: !662, line: 127, type: !669, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!669 = !DISubroutineType(types: !670)
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !673, line: 64)
!673 = !DISubprogram(name: "isalnum", scope: !674, file: !674, line: 110, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!674 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !676, line: 65)
!676 = !DISubprogram(name: "isalpha", scope: !674, file: !674, line: 111, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !678, line: 66)
!678 = !DISubprogram(name: "iscntrl", scope: !674, file: !674, line: 112, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !680, line: 67)
!680 = !DISubprogram(name: "isdigit", scope: !674, file: !674, line: 113, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !682, line: 68)
!682 = !DISubprogram(name: "isgraph", scope: !674, file: !674, line: 115, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !684, line: 69)
!684 = !DISubprogram(name: "islower", scope: !674, file: !674, line: 114, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !686, line: 70)
!686 = !DISubprogram(name: "isprint", scope: !674, file: !674, line: 116, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !688, line: 71)
!688 = !DISubprogram(name: "ispunct", scope: !674, file: !674, line: 117, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !690, line: 72)
!690 = !DISubprogram(name: "isspace", scope: !674, file: !674, line: 118, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !692, line: 73)
!692 = !DISubprogram(name: "isupper", scope: !674, file: !674, line: 119, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !694, line: 74)
!694 = !DISubprogram(name: "isxdigit", scope: !674, file: !674, line: 120, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !696, line: 75)
!696 = !DISubprogram(name: "tolower", scope: !674, file: !674, line: 124, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !698, line: 76)
!698 = !DISubprogram(name: "toupper", scope: !674, file: !674, line: 127, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !700, line: 87)
!700 = !DISubprogram(name: "isblank", scope: !674, file: !674, line: 136, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !702, line: 98)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !366, line: 48, baseType: !367)
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !704, line: 99)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !366, line: 112, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !706, line: 25, baseType: !707)
!706 = !DIFile(filename: "/usr/include/_G_config.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !706, line: 21, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !709, line: 101)
!709 = !DISubprogram(name: "clearerr", scope: !366, file: !366, line: 828, type: !710, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !712}
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !714, line: 102)
!714 = !DISubprogram(name: "fclose", scope: !366, file: !366, line: 239, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!715 = !DISubroutineType(types: !716)
!716 = !{!82, !712}
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !718, line: 103)
!718 = !DISubprogram(name: "feof", scope: !366, file: !366, line: 830, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !720, line: 104)
!720 = !DISubprogram(name: "ferror", scope: !366, file: !366, line: 832, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !722, line: 105)
!722 = !DISubprogram(name: "fflush", scope: !366, file: !366, line: 244, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !724, line: 106)
!724 = !DISubprogram(name: "fgetc", scope: !366, file: !366, line: 533, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !726, line: 107)
!726 = !DISubprogram(name: "fgetpos", scope: !366, file: !366, line: 800, type: !727, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!727 = !DISubroutineType(types: !728)
!728 = !{!82, !729, !730}
!729 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !712)
!730 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !733, line: 108)
!733 = !DISubprogram(name: "fgets", scope: !366, file: !366, line: 624, type: !734, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!734 = !DISubroutineType(types: !735)
!735 = !{!152, !219, !82, !729}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !737, line: 109)
!737 = !DISubprogram(name: "fopen", scope: !366, file: !366, line: 274, type: !738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!738 = !DISubroutineType(types: !739)
!739 = !{!712, !176, !176}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !741, line: 110)
!741 = !DISubprogram(name: "fprintf", scope: !366, file: !366, line: 358, type: !742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!742 = !DISubroutineType(types: !743)
!743 = !{!82, !729, !176, null}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !745, line: 111)
!745 = !DISubprogram(name: "fputc", scope: !366, file: !366, line: 575, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!746 = !DISubroutineType(types: !747)
!747 = !{!82, !82, !712}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !749, line: 112)
!749 = !DISubprogram(name: "fputs", scope: !366, file: !366, line: 691, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!750 = !DISubroutineType(types: !751)
!751 = !{!82, !176, !729}
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !753, line: 113)
!753 = !DISubprogram(name: "fread", scope: !366, file: !366, line: 711, type: !754, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!754 = !DISubroutineType(types: !755)
!755 = !{!125, !756, !125, !125, !729}
!756 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!757 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !758, line: 114)
!758 = !DISubprogram(name: "freopen", scope: !366, file: !366, line: 280, type: !759, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!759 = !DISubroutineType(types: !760)
!760 = !{!712, !176, !176, !729}
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !762, line: 115)
!762 = !DISubprogram(name: "fscanf", scope: !366, file: !366, line: 427, type: !742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!763 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !764, line: 116)
!764 = !DISubprogram(name: "fseek", scope: !366, file: !366, line: 751, type: !765, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!765 = !DISubroutineType(types: !766)
!766 = !{!82, !712, !91, !82}
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !768, line: 117)
!768 = !DISubprogram(name: "fsetpos", scope: !366, file: !366, line: 805, type: !769, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!769 = !DISubroutineType(types: !770)
!770 = !{!82, !712, !771}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!773 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !774, line: 118)
!774 = !DISubprogram(name: "ftell", scope: !366, file: !366, line: 756, type: !775, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!775 = !DISubroutineType(types: !776)
!776 = !{!91, !712}
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !778, line: 119)
!778 = !DISubprogram(name: "fwrite", scope: !366, file: !366, line: 717, type: !779, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!779 = !DISubroutineType(types: !780)
!780 = !{!125, !781, !125, !125, !729}
!781 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !783, line: 120)
!783 = !DISubprogram(name: "getc", scope: !366, file: !366, line: 534, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !785, line: 121)
!785 = !DISubprogram(name: "getchar", scope: !366, file: !366, line: 540, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !787, line: 124)
!787 = !DISubprogram(name: "gets", scope: !366, file: !366, line: 640, type: !788, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!788 = !DISubroutineType(types: !789)
!789 = !{!152, !152}
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !791, line: 126)
!791 = !DISubprogram(name: "perror", scope: !366, file: !366, line: 848, type: !792, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !109}
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !795, line: 127)
!795 = !DISubprogram(name: "printf", scope: !366, file: !366, line: 364, type: !796, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!796 = !DISubroutineType(types: !797)
!797 = !{!82, !176, null}
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !799, line: 128)
!799 = !DISubprogram(name: "putc", scope: !366, file: !366, line: 576, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !801, line: 129)
!801 = !DISubprogram(name: "putchar", scope: !366, file: !366, line: 582, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !803, line: 130)
!803 = !DISubprogram(name: "puts", scope: !366, file: !366, line: 697, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !805, line: 131)
!805 = !DISubprogram(name: "remove", scope: !366, file: !366, line: 180, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !807, line: 132)
!807 = !DISubprogram(name: "rename", scope: !366, file: !366, line: 182, type: !808, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!808 = !DISubroutineType(types: !809)
!809 = !{!82, !109, !109}
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !811, line: 133)
!811 = !DISubprogram(name: "rewind", scope: !366, file: !366, line: 761, type: !710, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!812 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !813, line: 134)
!813 = !DISubprogram(name: "scanf", scope: !366, file: !366, line: 433, type: !796, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !815, line: 135)
!815 = !DISubprogram(name: "setbuf", scope: !366, file: !366, line: 334, type: !816, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !729, !219}
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !819, line: 136)
!819 = !DISubprogram(name: "setvbuf", scope: !366, file: !366, line: 338, type: !820, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!820 = !DISubroutineType(types: !821)
!821 = !{!82, !729, !219, !82, !125}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !823, line: 137)
!823 = !DISubprogram(name: "sprintf", scope: !366, file: !366, line: 366, type: !824, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!824 = !DISubroutineType(types: !825)
!825 = !{!82, !219, !176, null}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !827, line: 138)
!827 = !DISubprogram(name: "sscanf", scope: !366, file: !366, line: 435, type: !828, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!828 = !DISubroutineType(types: !829)
!829 = !{!82, !176, !176, null}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !831, line: 139)
!831 = !DISubprogram(name: "tmpfile", scope: !366, file: !366, line: 197, type: !832, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!832 = !DISubroutineType(types: !833)
!833 = !{!712}
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !835, line: 141)
!835 = !DISubprogram(name: "tmpnam", scope: !366, file: !366, line: 211, type: !788, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !837, line: 143)
!837 = !DISubprogram(name: "ungetc", scope: !366, file: !366, line: 704, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !839, line: 144)
!839 = !DISubprogram(name: "vfprintf", scope: !366, file: !366, line: 373, type: !840, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!840 = !DISubroutineType(types: !841)
!841 = !{!82, !729, !176, !441}
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !843, line: 145)
!843 = !DISubprogram(name: "vprintf", scope: !366, file: !366, line: 379, type: !844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!844 = !DISubroutineType(types: !845)
!845 = !{!82, !176, !441}
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !847, line: 146)
!847 = !DISubprogram(name: "vsprintf", scope: !366, file: !366, line: 381, type: !848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!848 = !DISubroutineType(types: !849)
!849 = !{!82, !219, !176, !441}
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !851, line: 175)
!851 = !DISubprogram(name: "snprintf", scope: !366, file: !366, line: 388, type: !852, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!852 = !DISubroutineType(types: !853)
!853 = !{!82, !219, !125, !176, null}
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !855, line: 176)
!855 = !DISubprogram(name: "vfscanf", scope: !366, file: !366, line: 473, type: !840, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!856 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !857, line: 177)
!857 = !DISubprogram(name: "vscanf", scope: !366, file: !366, line: 481, type: !844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !859, line: 178)
!859 = !DISubprogram(name: "vsnprintf", scope: !366, file: !366, line: 392, type: !860, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!860 = !DISubroutineType(types: !861)
!861 = !{!82, !219, !125, !176, !441}
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !863, line: 179)
!863 = !DISubprogram(name: "vsscanf", scope: !366, file: !366, line: 485, type: !864, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!864 = !DISubroutineType(types: !865)
!865 = !{!82, !176, !176, !441}
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !851, line: 185)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !855, line: 186)
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !857, line: 187)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !859, line: 188)
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !863, line: 189)
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !872, line: 83)
!872 = !DISubprogram(name: "acos", scope: !873, file: !873, line: 54, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!873 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!874 = !DISubroutineType(types: !875)
!875 = !{!108, !108}
!876 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !877, line: 102)
!877 = !DISubprogram(name: "asin", scope: !873, file: !873, line: 56, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !879, line: 121)
!879 = !DISubprogram(name: "atan", scope: !873, file: !873, line: 58, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !881, line: 140)
!881 = !DISubprogram(name: "atan2", scope: !873, file: !873, line: 60, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!882 = !DISubroutineType(types: !883)
!883 = !{!108, !108, !108}
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !885, line: 161)
!885 = !DISubprogram(name: "ceil", scope: !873, file: !873, line: 178, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!886 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !887, line: 180)
!887 = !DISubprogram(name: "cos", scope: !873, file: !873, line: 63, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !889, line: 199)
!889 = !DISubprogram(name: "cosh", scope: !873, file: !873, line: 72, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !891, line: 218)
!891 = !DISubprogram(name: "exp", scope: !873, file: !873, line: 100, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !893, line: 237)
!893 = !DISubprogram(name: "fabs", scope: !873, file: !873, line: 181, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !895, line: 256)
!895 = !DISubprogram(name: "floor", scope: !873, file: !873, line: 184, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !897, line: 275)
!897 = !DISubprogram(name: "fmod", scope: !873, file: !873, line: 187, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !899, line: 296)
!899 = !DISubprogram(name: "frexp", scope: !873, file: !873, line: 103, type: !900, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!900 = !DISubroutineType(types: !901)
!901 = !{!108, !108, !902}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!903 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !904, line: 315)
!904 = !DISubprogram(name: "ldexp", scope: !873, file: !873, line: 106, type: !905, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!905 = !DISubroutineType(types: !906)
!906 = !{!108, !108, !82}
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !908, line: 334)
!908 = !DISubprogram(name: "log", scope: !873, file: !873, line: 109, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!909 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !910, line: 353)
!910 = !DISubprogram(name: "log10", scope: !873, file: !873, line: 112, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !912, line: 372)
!912 = !DISubprogram(name: "modf", scope: !873, file: !873, line: 115, type: !913, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!913 = !DISubroutineType(types: !914)
!914 = !{!108, !108, !915}
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!916 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !917, line: 384)
!917 = !DISubprogram(name: "pow", scope: !873, file: !873, line: 153, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!918 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !919, line: 421)
!919 = !DISubprogram(name: "sin", scope: !873, file: !873, line: 65, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !921, line: 440)
!921 = !DISubprogram(name: "sinh", scope: !873, file: !873, line: 74, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !923, line: 459)
!923 = !DISubprogram(name: "sqrt", scope: !873, file: !873, line: 156, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !925, line: 478)
!925 = !DISubprogram(name: "tan", scope: !873, file: !873, line: 67, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !927, line: 497)
!927 = !DISubprogram(name: "tanh", scope: !873, file: !873, line: 76, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !929, line: 1080)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !930, line: 29, baseType: !108)
!930 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathdef.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!931 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !932, line: 1081)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !930, line: 28, baseType: !262)
!933 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !934, line: 1084)
!934 = !DISubprogram(name: "acosh", scope: !873, file: !873, line: 88, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !936, line: 1085)
!936 = !DISubprogram(name: "acoshf", scope: !873, file: !873, line: 88, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!937 = !DISubroutineType(types: !938)
!938 = !{!262, !262}
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !940, line: 1086)
!940 = !DISubprogram(name: "acoshl", scope: !873, file: !873, line: 88, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!941 = !DISubroutineType(types: !942)
!942 = !{!267, !267}
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !944, line: 1088)
!944 = !DISubprogram(name: "asinh", scope: !873, file: !873, line: 90, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!945 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !946, line: 1089)
!946 = !DISubprogram(name: "asinhf", scope: !873, file: !873, line: 90, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !948, line: 1090)
!948 = !DISubprogram(name: "asinhl", scope: !873, file: !873, line: 90, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !950, line: 1092)
!950 = !DISubprogram(name: "atanh", scope: !873, file: !873, line: 92, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !952, line: 1093)
!952 = !DISubprogram(name: "atanhf", scope: !873, file: !873, line: 92, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !954, line: 1094)
!954 = !DISubprogram(name: "atanhl", scope: !873, file: !873, line: 92, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !956, line: 1096)
!956 = !DISubprogram(name: "cbrt", scope: !873, file: !873, line: 169, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !958, line: 1097)
!958 = !DISubprogram(name: "cbrtf", scope: !873, file: !873, line: 169, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !960, line: 1098)
!960 = !DISubprogram(name: "cbrtl", scope: !873, file: !873, line: 169, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !962, line: 1100)
!962 = !DISubprogram(name: "copysign", scope: !873, file: !873, line: 221, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !964, line: 1101)
!964 = !DISubprogram(name: "copysignf", scope: !873, file: !873, line: 221, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!965 = !DISubroutineType(types: !966)
!966 = !{!262, !262, !262}
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !968, line: 1102)
!968 = !DISubprogram(name: "copysignl", scope: !873, file: !873, line: 221, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!969 = !DISubroutineType(types: !970)
!970 = !{!267, !267, !267}
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !972, line: 1104)
!972 = !DISubprogram(name: "erf", scope: !873, file: !873, line: 259, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !974, line: 1105)
!974 = !DISubprogram(name: "erff", scope: !873, file: !873, line: 259, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !976, line: 1106)
!976 = !DISubprogram(name: "erfl", scope: !873, file: !873, line: 259, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !978, line: 1108)
!978 = !DISubprogram(name: "erfc", scope: !873, file: !873, line: 260, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !980, line: 1109)
!980 = !DISubprogram(name: "erfcf", scope: !873, file: !873, line: 260, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !982, line: 1110)
!982 = !DISubprogram(name: "erfcl", scope: !873, file: !873, line: 260, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !984, line: 1112)
!984 = !DISubprogram(name: "exp2", scope: !873, file: !873, line: 141, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !986, line: 1113)
!986 = !DISubprogram(name: "exp2f", scope: !873, file: !873, line: 141, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !988, line: 1114)
!988 = !DISubprogram(name: "exp2l", scope: !873, file: !873, line: 141, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !990, line: 1116)
!990 = !DISubprogram(name: "expm1", scope: !873, file: !873, line: 128, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !992, line: 1117)
!992 = !DISubprogram(name: "expm1f", scope: !873, file: !873, line: 128, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !994, line: 1118)
!994 = !DISubprogram(name: "expm1l", scope: !873, file: !873, line: 128, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !996, line: 1120)
!996 = !DISubprogram(name: "fdim", scope: !873, file: !873, line: 354, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !998, line: 1121)
!998 = !DISubprogram(name: "fdimf", scope: !873, file: !873, line: 354, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1000, line: 1122)
!1000 = !DISubprogram(name: "fdiml", scope: !873, file: !873, line: 354, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1002, line: 1124)
!1002 = !DISubprogram(name: "fma", scope: !873, file: !873, line: 373, type: !1003, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!108, !108, !108, !108}
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1006, line: 1125)
!1006 = !DISubprogram(name: "fmaf", scope: !873, file: !873, line: 373, type: !1007, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!262, !262, !262, !262}
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1010, line: 1126)
!1010 = !DISubprogram(name: "fmal", scope: !873, file: !873, line: 373, type: !1011, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!267, !267, !267, !267}
!1013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1014, line: 1128)
!1014 = !DISubprogram(name: "fmax", scope: !873, file: !873, line: 357, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1015 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1016, line: 1129)
!1016 = !DISubprogram(name: "fmaxf", scope: !873, file: !873, line: 357, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1018, line: 1130)
!1018 = !DISubprogram(name: "fmaxl", scope: !873, file: !873, line: 357, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1020, line: 1132)
!1020 = !DISubprogram(name: "fmin", scope: !873, file: !873, line: 360, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1022, line: 1133)
!1022 = !DISubprogram(name: "fminf", scope: !873, file: !873, line: 360, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1024, line: 1134)
!1024 = !DISubprogram(name: "fminl", scope: !873, file: !873, line: 360, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1026, line: 1136)
!1026 = !DISubprogram(name: "hypot", scope: !873, file: !873, line: 162, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1028, line: 1137)
!1028 = !DISubprogram(name: "hypotf", scope: !873, file: !873, line: 162, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1030, line: 1138)
!1030 = !DISubprogram(name: "hypotl", scope: !873, file: !873, line: 162, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1032, line: 1140)
!1032 = !DISubprogram(name: "ilogb", scope: !873, file: !873, line: 313, type: !1033, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!82, !108}
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1036, line: 1141)
!1036 = !DISubprogram(name: "ilogbf", scope: !873, file: !873, line: 313, type: !1037, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!82, !262}
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1040, line: 1142)
!1040 = !DISubprogram(name: "ilogbl", scope: !873, file: !873, line: 313, type: !1041, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!82, !267}
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1044, line: 1144)
!1044 = !DISubprogram(name: "lgamma", scope: !873, file: !873, line: 261, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1045 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1046, line: 1145)
!1046 = !DISubprogram(name: "lgammaf", scope: !873, file: !873, line: 261, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1048, line: 1146)
!1048 = !DISubprogram(name: "lgammal", scope: !873, file: !873, line: 261, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1050, line: 1149)
!1050 = !DISubprogram(name: "llrint", scope: !873, file: !873, line: 344, type: !1051, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!233, !108}
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1054, line: 1150)
!1054 = !DISubprogram(name: "llrintf", scope: !873, file: !873, line: 344, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!233, !262}
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1058, line: 1151)
!1058 = !DISubprogram(name: "llrintl", scope: !873, file: !873, line: 344, type: !1059, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!233, !267}
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1062, line: 1153)
!1062 = !DISubprogram(name: "llround", scope: !873, file: !873, line: 350, type: !1051, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1064, line: 1154)
!1064 = !DISubprogram(name: "llroundf", scope: !873, file: !873, line: 350, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1066, line: 1155)
!1066 = !DISubprogram(name: "llroundl", scope: !873, file: !873, line: 350, type: !1059, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1068, line: 1158)
!1068 = !DISubprogram(name: "log1p", scope: !873, file: !873, line: 131, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1070, line: 1159)
!1070 = !DISubprogram(name: "log1pf", scope: !873, file: !873, line: 131, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1072, line: 1160)
!1072 = !DISubprogram(name: "log1pl", scope: !873, file: !873, line: 131, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1074, line: 1162)
!1074 = !DISubprogram(name: "log2", scope: !873, file: !873, line: 144, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1076, line: 1163)
!1076 = !DISubprogram(name: "log2f", scope: !873, file: !873, line: 144, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1078, line: 1164)
!1078 = !DISubprogram(name: "log2l", scope: !873, file: !873, line: 144, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1080, line: 1166)
!1080 = !DISubprogram(name: "logb", scope: !873, file: !873, line: 134, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1082, line: 1167)
!1082 = !DISubprogram(name: "logbf", scope: !873, file: !873, line: 134, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1084, line: 1168)
!1084 = !DISubprogram(name: "logbl", scope: !873, file: !873, line: 134, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1086, line: 1170)
!1086 = !DISubprogram(name: "lrint", scope: !873, file: !873, line: 342, type: !1087, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!91, !108}
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1090, line: 1171)
!1090 = !DISubprogram(name: "lrintf", scope: !873, file: !873, line: 342, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!91, !262}
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1094, line: 1172)
!1094 = !DISubprogram(name: "lrintl", scope: !873, file: !873, line: 342, type: !1095, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!91, !267}
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1098, line: 1174)
!1098 = !DISubprogram(name: "lround", scope: !873, file: !873, line: 348, type: !1087, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1100, line: 1175)
!1100 = !DISubprogram(name: "lroundf", scope: !873, file: !873, line: 348, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1102, line: 1176)
!1102 = !DISubprogram(name: "lroundl", scope: !873, file: !873, line: 348, type: !1095, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1104, line: 1178)
!1104 = !DISubprogram(name: "nan", scope: !873, file: !873, line: 228, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1106, line: 1179)
!1106 = !DISubprogram(name: "nanf", scope: !873, file: !873, line: 228, type: !1107, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!262, !109}
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1110, line: 1180)
!1110 = !DISubprogram(name: "nanl", scope: !873, file: !873, line: 228, type: !1111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!267, !109}
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1114, line: 1182)
!1114 = !DISubprogram(name: "nearbyint", scope: !873, file: !873, line: 322, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1116, line: 1183)
!1116 = !DISubprogram(name: "nearbyintf", scope: !873, file: !873, line: 322, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1118, line: 1184)
!1118 = !DISubprogram(name: "nearbyintl", scope: !873, file: !873, line: 322, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1120, line: 1186)
!1120 = !DISubprogram(name: "nextafter", scope: !873, file: !873, line: 292, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1122, line: 1187)
!1122 = !DISubprogram(name: "nextafterf", scope: !873, file: !873, line: 292, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1124, line: 1188)
!1124 = !DISubprogram(name: "nextafterl", scope: !873, file: !873, line: 292, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1126, line: 1190)
!1126 = !DISubprogram(name: "nexttoward", scope: !873, file: !873, line: 294, type: !1127, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!108, !108, !267}
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1130, line: 1191)
!1130 = !DISubprogram(name: "nexttowardf", scope: !873, file: !873, line: 294, type: !1131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!262, !262, !267}
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1134, line: 1192)
!1134 = !DISubprogram(name: "nexttowardl", scope: !873, file: !873, line: 294, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1136, line: 1194)
!1136 = !DISubprogram(name: "remainder", scope: !873, file: !873, line: 305, type: !882, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1138, line: 1195)
!1138 = !DISubprogram(name: "remainderf", scope: !873, file: !873, line: 305, type: !965, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1140, line: 1196)
!1140 = !DISubprogram(name: "remainderl", scope: !873, file: !873, line: 305, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1142, line: 1198)
!1142 = !DISubprogram(name: "remquo", scope: !873, file: !873, line: 335, type: !1143, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!108, !108, !108, !902}
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1146, line: 1199)
!1146 = !DISubprogram(name: "remquof", scope: !873, file: !873, line: 335, type: !1147, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!262, !262, !262, !902}
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1150, line: 1200)
!1150 = !DISubprogram(name: "remquol", scope: !873, file: !873, line: 335, type: !1151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!267, !267, !267, !902}
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1154, line: 1202)
!1154 = !DISubprogram(name: "rint", scope: !873, file: !873, line: 289, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1156, line: 1203)
!1156 = !DISubprogram(name: "rintf", scope: !873, file: !873, line: 289, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1158, line: 1204)
!1158 = !DISubprogram(name: "rintl", scope: !873, file: !873, line: 289, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1160, line: 1206)
!1160 = !DISubprogram(name: "round", scope: !873, file: !873, line: 326, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1162, line: 1207)
!1162 = !DISubprogram(name: "roundf", scope: !873, file: !873, line: 326, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1164, line: 1208)
!1164 = !DISubprogram(name: "roundl", scope: !873, file: !873, line: 326, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1166, line: 1210)
!1166 = !DISubprogram(name: "scalbln", scope: !873, file: !873, line: 318, type: !1167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!108, !108, !91}
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1170, line: 1211)
!1170 = !DISubprogram(name: "scalblnf", scope: !873, file: !873, line: 318, type: !1171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!262, !262, !91}
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1174, line: 1212)
!1174 = !DISubprogram(name: "scalblnl", scope: !873, file: !873, line: 318, type: !1175, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!267, !267, !91}
!1177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1178, line: 1214)
!1178 = !DISubprogram(name: "scalbn", scope: !873, file: !873, line: 309, type: !905, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1180, line: 1215)
!1180 = !DISubprogram(name: "scalbnf", scope: !873, file: !873, line: 309, type: !1181, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!262, !262, !82}
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1184, line: 1216)
!1184 = !DISubprogram(name: "scalbnl", scope: !873, file: !873, line: 309, type: !1185, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!267, !267, !82}
!1187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1188, line: 1218)
!1188 = !DISubprogram(name: "tgamma", scope: !873, file: !873, line: 268, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1190, line: 1219)
!1190 = !DISubprogram(name: "tgammaf", scope: !873, file: !873, line: 268, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1192, line: 1220)
!1192 = !DISubprogram(name: "tgammal", scope: !873, file: !873, line: 268, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1194, line: 1222)
!1194 = !DISubprogram(name: "trunc", scope: !873, file: !873, line: 330, type: !874, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1196, line: 1223)
!1196 = !DISubprogram(name: "truncf", scope: !873, file: !873, line: 330, type: !937, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1198, line: 1224)
!1198 = !DISubprogram(name: "truncl", scope: !873, file: !873, line: 330, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1200, line: 58)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !1201, line: 94, baseType: !1202)
!1201 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1201, line: 75, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1204, line: 59)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !1201, line: 68, baseType: !29)
!1205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1206, line: 62)
!1206 = !DISubprogram(name: "feclearexcept", scope: !1207, file: !1207, line: 64, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1207 = !DIFile(filename: "/usr/include/fenv.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1209, line: 63)
!1209 = !DISubprogram(name: "fegetexceptflag", scope: !1207, file: !1207, line: 68, type: !1210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!82, !1212, !82}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1214, line: 64)
!1214 = !DISubprogram(name: "feraiseexcept", scope: !1207, file: !1207, line: 71, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1216, line: 65)
!1216 = !DISubprogram(name: "fesetexceptflag", scope: !1207, file: !1207, line: 75, type: !1217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!82, !1219, !82}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1204)
!1221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1222, line: 66)
!1222 = !DISubprogram(name: "fetestexcept", scope: !1207, file: !1207, line: 79, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1224, line: 68)
!1224 = !DISubprogram(name: "fegetround", scope: !1207, file: !1207, line: 85, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1226, line: 69)
!1226 = !DISubprogram(name: "fesetround", scope: !1207, file: !1207, line: 88, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1228, line: 71)
!1228 = !DISubprogram(name: "fegetenv", scope: !1207, file: !1207, line: 95, type: !1229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!82, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1232 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1233, line: 72)
!1233 = !DISubprogram(name: "feholdexcept", scope: !1207, file: !1207, line: 100, type: !1229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1235, line: 73)
!1235 = !DISubprogram(name: "fesetenv", scope: !1207, file: !1207, line: 104, type: !1236, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!82, !1238}
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1200)
!1240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1241, line: 74)
!1241 = !DISubprogram(name: "feupdateenv", scope: !1207, file: !1207, line: 109, type: !1236, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1200, line: 61)
!1243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1204, line: 62)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1206, line: 65)
!1245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1209, line: 66)
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1214, line: 67)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1216, line: 68)
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1222, line: 69)
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1224, line: 71)
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1226, line: 72)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1228, line: 74)
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1233, line: 75)
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1235, line: 76)
!1254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1241, line: 77)
!1255 = !{i32 2, !"Dwarf Version", i32 4}
!1256 = !{i32 2, !"Debug Info Version", i32 3}
!1257 = distinct !DISubprogram(name: "__remill_basic_block", scope: !2, file: !2, line: 52, type: !1258, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !1, variables: !7)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{!1260, !1263, !1946, !1260}
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Memory", file: !1262, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS6Memory")
!1262 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/Types.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1263 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "State", file: !27, line: 742, size: 27008, align: 128, elements: !1265, identifier: "_ZTS5State")
!1265 = !{!1266, !1278, !1487, !1507, !1537, !1562, !1591, !1628, !1638, !1699, !1724, !1748, !1928}
!1266 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1264, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArchState", file: !1268, line: 21, size: 128, elements: !1269, identifier: "_ZTS9ArchState")
!1268 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/State.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1269 = !{!1270, !1271, !1272}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_call", scope: !1267, file: !1268, line: 23, baseType: !4, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1267, file: !1268, line: 25, baseType: !8, size: 32, offset: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1267, file: !1268, line: 31, baseType: !1273, size: 64, offset: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1267, file: !1268, line: 31, size: 64, elements: !1274, identifier: "_ZTSN9ArchStateUt_E")
!1274 = !{!1275, !1276, !1277}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_load", scope: !1273, file: !1268, line: 32, baseType: !635, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_store", scope: !1273, file: !1268, line: 33, baseType: !635, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_call_vector", scope: !1273, file: !1268, line: 34, baseType: !8, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1264, file: !27, line: 747, baseType: !1279, size: 16384, offset: 128)
!1279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1280, size: 16384, elements: !1365)
!1280 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "VectorReg", file: !27, line: 636, size: 512, align: 128, elements: !1281, identifier: "_ZTS9VectorReg")
!1281 = !{!1282, !1357, !1422}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1280, file: !27, line: 637, baseType: !1283, size: 128, align: 128)
!1283 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec128_t", file: !1262, line: 317, size: 128, elements: !1284, identifier: "_ZTS8vec128_t")
!1284 = !{!1285, !1294, !1301, !1308, !1313, !1320, !1325, !1330, !1335, !1340, !1345, !1350}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1283, file: !1262, line: 321, baseType: !1286, size: 128)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v1_t", file: !1262, line: 205, size: 128, elements: !1287, identifier: "_ZTS11uint128v1_t")
!1287 = !{!1288}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1286, file: !1262, line: 205, baseType: !1289, size: 128)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1290, size: 128, elements: !1292)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !1262, line: 46, baseType: !1291)
!1291 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!1292 = !{!1293}
!1293 = !DISubrange(count: 1)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1283, file: !1262, line: 323, baseType: !1295, size: 128)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v16_t", file: !1262, line: 182, size: 128, elements: !1296, identifier: "_ZTS10uint8v16_t")
!1296 = !{!1297}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1295, file: !1262, line: 182, baseType: !1298, size: 128)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 128, elements: !1299)
!1299 = !{!1300}
!1300 = !DISubrange(count: 16)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1283, file: !1262, line: 324, baseType: !1302, size: 128)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v8_t", file: !1262, line: 189, size: 128, elements: !1303, identifier: "_ZTS10uint16v8_t")
!1303 = !{!1304}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1302, file: !1262, line: 189, baseType: !1305, size: 128)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 128, elements: !1306)
!1306 = !{!1307}
!1307 = !DISubrange(count: 8)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1283, file: !1262, line: 325, baseType: !1309, size: 128)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v4_t", file: !1262, line: 195, size: 128, elements: !1310, identifier: "_ZTS10uint32v4_t")
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1309, file: !1262, line: 195, baseType: !1312, size: 128)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 128, elements: !352)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1283, file: !1262, line: 326, baseType: !1314, size: 128)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v2_t", file: !1262, line: 200, size: 128, elements: !1315, identifier: "_ZTS10uint64v2_t")
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1314, file: !1262, line: 200, baseType: !1317, size: 128)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 128, elements: !1318)
!1318 = !{!1319}
!1319 = !DISubrange(count: 2)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1283, file: !1262, line: 327, baseType: !1321, size: 128)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v4_t", file: !1262, line: 242, size: 128, elements: !1322, identifier: "_ZTS11float32v4_t")
!1322 = !{!1323}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1321, file: !1262, line: 242, baseType: !1324, size: 128)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 128, elements: !352)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1283, file: !1262, line: 328, baseType: !1326, size: 128)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v2_t", file: !1262, line: 247, size: 128, elements: !1327, identifier: "_ZTS11float64v2_t")
!1327 = !{!1328}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1326, file: !1262, line: 247, baseType: !1329, size: 128)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !1318)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1283, file: !1262, line: 330, baseType: !1331, size: 128)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v16_t", file: !1262, line: 213, size: 128, elements: !1332, identifier: "_ZTS9int8v16_t")
!1332 = !{!1333}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1331, file: !1262, line: 213, baseType: !1334, size: 128)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 128, elements: !1299)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1283, file: !1262, line: 331, baseType: !1336, size: 128)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v8_t", file: !1262, line: 220, size: 128, elements: !1337, identifier: "_ZTS9int16v8_t")
!1337 = !{!1338}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1336, file: !1262, line: 220, baseType: !1339, size: 128)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 128, elements: !1306)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1283, file: !1262, line: 332, baseType: !1341, size: 128)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v4_t", file: !1262, line: 226, size: 128, elements: !1342, identifier: "_ZTS9int32v4_t")
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1341, file: !1262, line: 226, baseType: !1344, size: 128)
!1344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 128, elements: !352)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1283, file: !1262, line: 333, baseType: !1346, size: 128)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v2_t", file: !1262, line: 231, size: 128, elements: !1347, identifier: "_ZTS9int64v2_t")
!1347 = !{!1348}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1346, file: !1262, line: 231, baseType: !1349, size: 128)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 128, elements: !1318)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1283, file: !1262, line: 334, baseType: !1351, size: 128)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v1_t", file: !1262, line: 236, size: 128, elements: !1352, identifier: "_ZTS10int128v1_t")
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1351, file: !1262, line: 236, baseType: !1354, size: 128)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 128, elements: !1292)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "int128_t", file: !1262, line: 47, baseType: !1356)
!1356 = !DIBasicType(name: "__int128", size: 128, encoding: DW_ATE_signed)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ymm", scope: !1280, file: !27, line: 638, baseType: !1358, size: 256, align: 128)
!1358 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec256_t", file: !1262, line: 340, size: 256, elements: !1359, identifier: "_ZTS8vec256_t")
!1359 = !{!1360, !1367, !1372, !1377, !1382, !1387, !1392, !1397, !1402, !1407, !1412, !1417}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1358, file: !1262, line: 341, baseType: !1361, size: 256)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v32_t", file: !1262, line: 183, size: 256, elements: !1362, identifier: "_ZTS10uint8v32_t")
!1362 = !{!1363}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1361, file: !1262, line: 183, baseType: !1364, size: 256)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !1365)
!1365 = !{!1366}
!1366 = !DISubrange(count: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1358, file: !1262, line: 342, baseType: !1368, size: 256)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v16_t", file: !1262, line: 190, size: 256, elements: !1369, identifier: "_ZTS11uint16v16_t")
!1369 = !{!1370}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1368, file: !1262, line: 190, baseType: !1371, size: 256)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !1299)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1358, file: !1262, line: 343, baseType: !1373, size: 256)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v8_t", file: !1262, line: 196, size: 256, elements: !1374, identifier: "_ZTS10uint32v8_t")
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1373, file: !1262, line: 196, baseType: !1376, size: 256)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !1306)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1358, file: !1262, line: 344, baseType: !1378, size: 256)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v4_t", file: !1262, line: 201, size: 256, elements: !1379, identifier: "_ZTS10uint64v4_t")
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1378, file: !1262, line: 201, baseType: !1381, size: 256)
!1381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 256, elements: !352)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1358, file: !1262, line: 345, baseType: !1383, size: 256)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v2_t", file: !1262, line: 206, size: 256, elements: !1384, identifier: "_ZTS11uint128v2_t")
!1384 = !{!1385}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1383, file: !1262, line: 206, baseType: !1386, size: 256)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1290, size: 256, elements: !1318)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1358, file: !1262, line: 346, baseType: !1388, size: 256)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v8_t", file: !1262, line: 243, size: 256, elements: !1389, identifier: "_ZTS11float32v8_t")
!1389 = !{!1390}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1388, file: !1262, line: 243, baseType: !1391, size: 256)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 256, elements: !1306)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1358, file: !1262, line: 347, baseType: !1393, size: 256)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v4_t", file: !1262, line: 248, size: 256, elements: !1394, identifier: "_ZTS11float64v4_t")
!1394 = !{!1395}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1393, file: !1262, line: 248, baseType: !1396, size: 256)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !352)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1358, file: !1262, line: 349, baseType: !1398, size: 256)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v32_t", file: !1262, line: 214, size: 256, elements: !1399, identifier: "_ZTS9int8v32_t")
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1398, file: !1262, line: 214, baseType: !1401, size: 256)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 256, elements: !1365)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1358, file: !1262, line: 350, baseType: !1403, size: 256)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v16_t", file: !1262, line: 221, size: 256, elements: !1404, identifier: "_ZTS10int16v16_t")
!1404 = !{!1405}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1403, file: !1262, line: 221, baseType: !1406, size: 256)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 256, elements: !1299)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1358, file: !1262, line: 351, baseType: !1408, size: 256)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v8_t", file: !1262, line: 227, size: 256, elements: !1409, identifier: "_ZTS9int32v8_t")
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1408, file: !1262, line: 227, baseType: !1411, size: 256)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 256, elements: !1306)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1358, file: !1262, line: 352, baseType: !1413, size: 256)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v4_t", file: !1262, line: 232, size: 256, elements: !1414, identifier: "_ZTS9int64v4_t")
!1414 = !{!1415}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1413, file: !1262, line: 232, baseType: !1416, size: 256)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 256, elements: !352)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1358, file: !1262, line: 353, baseType: !1418, size: 256)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v2_t", file: !1262, line: 237, size: 256, elements: !1419, identifier: "_ZTS10int128v2_t")
!1419 = !{!1420}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1418, file: !1262, line: 237, baseType: !1421, size: 256)
!1421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 256, elements: !1318)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "zmm", scope: !1280, file: !27, line: 639, baseType: !1423, size: 512, align: 128)
!1423 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec512_t", file: !1262, line: 359, size: 512, elements: !1424, identifier: "_ZTS8vec512_t")
!1424 = !{!1425, !1432, !1437, !1442, !1447, !1452, !1457, !1462, !1467, !1472, !1477, !1482}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1423, file: !1262, line: 360, baseType: !1426, size: 512)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v64_t", file: !1262, line: 184, size: 512, elements: !1427, identifier: "_ZTS10uint8v64_t")
!1427 = !{!1428}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1426, file: !1262, line: 184, baseType: !1429, size: 512)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 512, elements: !1430)
!1430 = !{!1431}
!1431 = !DISubrange(count: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1423, file: !1262, line: 361, baseType: !1433, size: 512)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v32_t", file: !1262, line: 191, size: 512, elements: !1434, identifier: "_ZTS11uint16v32_t")
!1434 = !{!1435}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1433, file: !1262, line: 191, baseType: !1436, size: 512)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 512, elements: !1365)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1423, file: !1262, line: 362, baseType: !1438, size: 512)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v16_t", file: !1262, line: 197, size: 512, elements: !1439, identifier: "_ZTS11uint32v16_t")
!1439 = !{!1440}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1438, file: !1262, line: 197, baseType: !1441, size: 512)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !1299)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1423, file: !1262, line: 363, baseType: !1443, size: 512)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v8_t", file: !1262, line: 202, size: 512, elements: !1444, identifier: "_ZTS10uint64v8_t")
!1444 = !{!1445}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1443, file: !1262, line: 202, baseType: !1446, size: 512)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 512, elements: !1306)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1423, file: !1262, line: 364, baseType: !1448, size: 512)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v4_t", file: !1262, line: 207, size: 512, elements: !1449, identifier: "_ZTS11uint128v4_t")
!1449 = !{!1450}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1448, file: !1262, line: 207, baseType: !1451, size: 512)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1290, size: 512, elements: !352)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1423, file: !1262, line: 365, baseType: !1453, size: 512)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v16_t", file: !1262, line: 244, size: 512, elements: !1454, identifier: "_ZTS12float32v16_t")
!1454 = !{!1455}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1453, file: !1262, line: 244, baseType: !1456, size: 512)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 512, elements: !1299)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1423, file: !1262, line: 366, baseType: !1458, size: 512)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v8_t", file: !1262, line: 249, size: 512, elements: !1459, identifier: "_ZTS11float64v8_t")
!1459 = !{!1460}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1458, file: !1262, line: 249, baseType: !1461, size: 512)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 512, elements: !1306)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1423, file: !1262, line: 368, baseType: !1463, size: 512)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v64_t", file: !1262, line: 215, size: 512, elements: !1464, identifier: "_ZTS9int8v64_t")
!1464 = !{!1465}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1463, file: !1262, line: 215, baseType: !1466, size: 512)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 512, elements: !1430)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1423, file: !1262, line: 369, baseType: !1468, size: 512)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v32_t", file: !1262, line: 222, size: 512, elements: !1469, identifier: "_ZTS10int16v32_t")
!1469 = !{!1470}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1468, file: !1262, line: 222, baseType: !1471, size: 512)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 512, elements: !1365)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1423, file: !1262, line: 370, baseType: !1473, size: 512)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v16_t", file: !1262, line: 228, size: 512, elements: !1474, identifier: "_ZTS10int32v16_t")
!1474 = !{!1475}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1473, file: !1262, line: 228, baseType: !1476, size: 512)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 512, elements: !1299)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1423, file: !1262, line: 371, baseType: !1478, size: 512)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v8_t", file: !1262, line: 233, size: 512, elements: !1479, identifier: "_ZTS9int64v8_t")
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1478, file: !1262, line: 233, baseType: !1481, size: 512)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 512, elements: !1306)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1423, file: !1262, line: 372, baseType: !1483, size: 512)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v4_t", file: !1262, line: 238, size: 512, elements: !1484, identifier: "_ZTS10int128v4_t")
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1483, file: !1262, line: 238, baseType: !1486, size: 512)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 512, elements: !352)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "aflag", scope: !1264, file: !27, line: 751, baseType: !1488, size: 128, align: 64, offset: 16512)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArithFlags", file: !27, line: 402, size: 128, align: 64, elements: !1489, identifier: "_ZTS10ArithFlags")
!1489 = !{!1490, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1488, file: !27, line: 404, baseType: !1491, size: 8)
!1491 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !1488, file: !27, line: 405, baseType: !62, size: 8, offset: 8)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1488, file: !27, line: 406, baseType: !1491, size: 8, offset: 16)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !1488, file: !27, line: 407, baseType: !62, size: 8, offset: 24)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1488, file: !27, line: 408, baseType: !1491, size: 8, offset: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1488, file: !27, line: 409, baseType: !62, size: 8, offset: 40)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1488, file: !27, line: 410, baseType: !1491, size: 8, offset: 48)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "zf", scope: !1488, file: !27, line: 411, baseType: !62, size: 8, offset: 56)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1488, file: !27, line: 412, baseType: !1491, size: 8, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1488, file: !27, line: 413, baseType: !62, size: 8, offset: 72)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1488, file: !27, line: 414, baseType: !1491, size: 8, offset: 80)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !1488, file: !27, line: 415, baseType: !62, size: 8, offset: 88)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1488, file: !27, line: 416, baseType: !1491, size: 8, offset: 96)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !1488, file: !27, line: 417, baseType: !62, size: 8, offset: 104)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1488, file: !27, line: 418, baseType: !1491, size: 8, offset: 112)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1488, file: !27, line: 419, baseType: !1491, size: 8, offset: 120)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "rflag", scope: !1264, file: !27, line: 752, baseType: !1508, size: 64, align: 64, offset: 16640)
!1508 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Flags", file: !27, line: 366, size: 64, align: 64, elements: !1509, identifier: "_ZTS5Flags")
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1508, file: !27, line: 367, baseType: !635, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !27, line: 368, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1508, file: !27, line: 368, size: 64, elements: !1513, identifier: "_ZTSN5FlagsUt_E")
!1513 = !{!1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !1512, file: !27, line: 369, baseType: !8, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_1", scope: !1512, file: !27, line: 370, baseType: !8, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !1512, file: !27, line: 371, baseType: !8, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0a", scope: !1512, file: !27, line: 372, baseType: !8, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1512, file: !27, line: 374, baseType: !8, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0b", scope: !1512, file: !27, line: 375, baseType: !8, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "zf", scope: !1512, file: !27, line: 376, baseType: !8, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1512, file: !27, line: 377, baseType: !8, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "tf", scope: !1512, file: !27, line: 379, baseType: !8, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_if", scope: !1512, file: !27, line: 380, baseType: !8, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !1512, file: !27, line: 381, baseType: !8, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !1512, file: !27, line: 382, baseType: !8, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "iopl", scope: !1512, file: !27, line: 384, baseType: !8, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "nt", scope: !1512, file: !27, line: 385, baseType: !8, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0c", scope: !1512, file: !27, line: 386, baseType: !8, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !1512, file: !27, line: 388, baseType: !8, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "vm", scope: !1512, file: !27, line: 389, baseType: !8, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ac", scope: !1512, file: !27, line: 390, baseType: !8, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "vif", scope: !1512, file: !27, line: 391, baseType: !8, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !1512, file: !27, line: 393, baseType: !8, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1512, file: !27, line: 394, baseType: !8, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_eflags", scope: !1512, file: !27, line: 395, baseType: !8, size: 10, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_rflags", scope: !1512, file: !27, line: 396, baseType: !8, size: 32, offset: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "seg", scope: !1264, file: !27, line: 753, baseType: !1538, size: 192, align: 64, offset: 16704)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Segments", file: !27, line: 451, size: 192, align: 64, elements: !1539, identifier: "_ZTS8Segments")
!1539 = !{!1540, !1542, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1538, file: !27, line: 452, baseType: !1541, size: 16)
!1541 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1538, file: !27, line: 453, baseType: !1543, size: 16, offset: 16)
!1543 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "SegmentSelector", file: !27, line: 76, size: 16, elements: !1544, identifier: "_ZTS15SegmentSelector")
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1543, file: !27, line: 77, baseType: !28, size: 16)
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1543, file: !27, line: 78, baseType: !1547, size: 16)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1543, file: !27, line: 78, size: 16, elements: !1548, identifier: "_ZTSN15SegmentSelectorUt_E")
!1548 = !{!1549, !1550, !1551}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "rpi", scope: !1547, file: !27, line: 79, baseType: !26, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ti", scope: !1547, file: !27, line: 80, baseType: !35, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1547, file: !27, line: 81, baseType: !28, size: 13, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1538, file: !27, line: 454, baseType: !1541, size: 16, offset: 32)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1538, file: !27, line: 455, baseType: !1543, size: 16, offset: 48)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1538, file: !27, line: 456, baseType: !1541, size: 16, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1538, file: !27, line: 457, baseType: !1543, size: 16, offset: 80)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1538, file: !27, line: 458, baseType: !1541, size: 16, offset: 96)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1538, file: !27, line: 459, baseType: !1543, size: 16, offset: 112)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1538, file: !27, line: 460, baseType: !1541, size: 16, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1538, file: !27, line: 461, baseType: !1543, size: 16, offset: 144)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1538, file: !27, line: 462, baseType: !1541, size: 16, offset: 160)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1538, file: !27, line: 463, baseType: !1543, size: 16, offset: 176)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1264, file: !27, line: 754, baseType: !1563, size: 768, align: 64, offset: 16896)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AddressSpace", file: !27, line: 654, size: 768, align: 64, elements: !1564, identifier: "_ZTS12AddressSpace")
!1564 = !{!1565, !1567, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1563, file: !27, line: 655, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !635)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ss_base", scope: !1563, file: !27, line: 656, baseType: !1568, size: 64, offset: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Reg", file: !27, line: 610, size: 64, elements: !1569, identifier: "_ZTS3Reg")
!1569 = !{!1570}
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !27, line: 611, baseType: !1571, size: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1568, file: !27, line: 611, size: 64, elements: !1572, identifier: "_ZTSN3RegUt_E")
!1572 = !{!1573, !1578, !1579, !1580}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !1571, file: !27, line: 615, baseType: !1574, size: 16, align: 8)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !27, line: 612, size: 16, elements: !1575, identifier: "_ZTSN3RegUt_Ut_E")
!1575 = !{!1576, !1577}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1574, file: !27, line: 613, baseType: !62, size: 8)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1574, file: !27, line: 614, baseType: !62, size: 8, offset: 8)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !1571, file: !27, line: 616, baseType: !28, size: 16, align: 16)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !1571, file: !27, line: 617, baseType: !8, size: 32, align: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "qword", scope: !1571, file: !27, line: 618, baseType: !635, size: 64, align: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1563, file: !27, line: 657, baseType: !1566, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "es_base", scope: !1563, file: !27, line: 658, baseType: !1568, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1563, file: !27, line: 659, baseType: !1566, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "gs_base", scope: !1563, file: !27, line: 660, baseType: !1568, size: 64, offset: 320)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1563, file: !27, line: 661, baseType: !1566, size: 64, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "fs_base", scope: !1563, file: !27, line: 662, baseType: !1568, size: 64, offset: 448)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1563, file: !27, line: 663, baseType: !1566, size: 64, offset: 512)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ds_base", scope: !1563, file: !27, line: 664, baseType: !1568, size: 64, offset: 576)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1563, file: !27, line: 665, baseType: !1566, size: 64, offset: 640)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "cs_base", scope: !1563, file: !27, line: 666, baseType: !1568, size: 64, offset: 704)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "gpr", scope: !1264, file: !27, line: 755, baseType: !1592, size: 2176, align: 64, offset: 17664)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GPR", file: !27, line: 677, size: 2176, align: 64, elements: !1593, identifier: "_ZTS3GPR")
!1593 = !{!1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1592, file: !27, line: 679, baseType: !1566, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !1592, file: !27, line: 680, baseType: !1568, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1592, file: !27, line: 681, baseType: !1566, size: 64, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "rbx", scope: !1592, file: !27, line: 682, baseType: !1568, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1592, file: !27, line: 683, baseType: !1566, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rcx", scope: !1592, file: !27, line: 684, baseType: !1568, size: 64, offset: 320)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1592, file: !27, line: 685, baseType: !1566, size: 64, offset: 384)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "rdx", scope: !1592, file: !27, line: 686, baseType: !1568, size: 64, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1592, file: !27, line: 687, baseType: !1566, size: 64, offset: 512)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rsi", scope: !1592, file: !27, line: 688, baseType: !1568, size: 64, offset: 576)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1592, file: !27, line: 689, baseType: !1566, size: 64, offset: 640)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rdi", scope: !1592, file: !27, line: 690, baseType: !1568, size: 64, offset: 704)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1592, file: !27, line: 691, baseType: !1566, size: 64, offset: 768)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !1592, file: !27, line: 692, baseType: !1568, size: 64, offset: 832)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1592, file: !27, line: 693, baseType: !1566, size: 64, offset: 896)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rbp", scope: !1592, file: !27, line: 694, baseType: !1568, size: 64, offset: 960)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1592, file: !27, line: 695, baseType: !1566, size: 64, offset: 1024)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1592, file: !27, line: 696, baseType: !1568, size: 64, offset: 1088)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_9", scope: !1592, file: !27, line: 697, baseType: !1566, size: 64, offset: 1152)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1592, file: !27, line: 698, baseType: !1568, size: 64, offset: 1216)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_10", scope: !1592, file: !27, line: 699, baseType: !1566, size: 64, offset: 1280)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1592, file: !27, line: 700, baseType: !1568, size: 64, offset: 1344)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_11", scope: !1592, file: !27, line: 701, baseType: !1566, size: 64, offset: 1408)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1592, file: !27, line: 702, baseType: !1568, size: 64, offset: 1472)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_12", scope: !1592, file: !27, line: 703, baseType: !1566, size: 64, offset: 1536)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1592, file: !27, line: 704, baseType: !1568, size: 64, offset: 1600)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_13", scope: !1592, file: !27, line: 705, baseType: !1566, size: 64, offset: 1664)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1592, file: !27, line: 706, baseType: !1568, size: 64, offset: 1728)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_14", scope: !1592, file: !27, line: 707, baseType: !1566, size: 64, offset: 1792)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1592, file: !27, line: 708, baseType: !1568, size: 64, offset: 1856)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_15", scope: !1592, file: !27, line: 709, baseType: !1566, size: 64, offset: 1920)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1592, file: !27, line: 710, baseType: !1568, size: 64, offset: 1984)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_16", scope: !1592, file: !27, line: 711, baseType: !1566, size: 64, offset: 2048)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1592, file: !27, line: 714, baseType: !1568, size: 64, offset: 2112)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1264, file: !27, line: 756, baseType: !1629, size: 1024, align: 64, offset: 19840)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X87Stack", file: !27, line: 719, size: 1024, align: 64, elements: !1630, identifier: "_ZTS8X87Stack")
!1630 = !{!1631}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1629, file: !27, line: 723, baseType: !1632, size: 1024)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1633, size: 1024, elements: !1306)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1629, file: !27, line: 720, size: 128, align: 64, elements: !1634, identifier: "_ZTSN8X87StackUt_E")
!1634 = !{!1635, !1636}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1633, file: !27, line: 721, baseType: !635, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1633, file: !27, line: 722, baseType: !1637, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "float64_t", file: !1262, line: 61, baseType: !108)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !1264, file: !27, line: 757, baseType: !1639, size: 1024, align: 64, offset: 20864)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MMX", file: !27, line: 729, size: 1024, align: 64, elements: !1640, identifier: "_ZTS3MMX")
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1639, file: !27, line: 733, baseType: !1642, size: 1024)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1643, size: 1024, elements: !1306)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1639, file: !27, line: 730, size: 128, align: 64, elements: !1644, identifier: "_ZTSN3MMXUt_E")
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1643, file: !27, line: 731, baseType: !635, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1643, file: !27, line: 732, baseType: !1647, size: 64, offset: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec64_t", file: !1262, line: 294, size: 64, elements: !1648, identifier: "_ZTS7vec64_t")
!1648 = !{!1649, !1654, !1659, !1664, !1669, !1674, !1679, !1684, !1689, !1694}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1647, file: !1262, line: 298, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v1_t", file: !1262, line: 199, size: 64, elements: !1651, identifier: "_ZTS10uint64v1_t")
!1651 = !{!1652}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1650, file: !1262, line: 199, baseType: !1653, size: 64)
!1653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 64, elements: !1292)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1647, file: !1262, line: 300, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v8_t", file: !1262, line: 181, size: 64, elements: !1656, identifier: "_ZTS9uint8v8_t")
!1656 = !{!1657}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1655, file: !1262, line: 181, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !1306)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1647, file: !1262, line: 301, baseType: !1660, size: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v4_t", file: !1262, line: 188, size: 64, elements: !1661, identifier: "_ZTS10uint16v4_t")
!1661 = !{!1662}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1660, file: !1262, line: 188, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !352)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1647, file: !1262, line: 302, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v2_t", file: !1262, line: 194, size: 64, elements: !1666, identifier: "_ZTS10uint32v2_t")
!1666 = !{!1667}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1665, file: !1262, line: 194, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !1318)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1647, file: !1262, line: 303, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v2_t", file: !1262, line: 241, size: 64, elements: !1671, identifier: "_ZTS11float32v2_t")
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1670, file: !1262, line: 241, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 64, elements: !1318)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1647, file: !1262, line: 304, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v1_t", file: !1262, line: 246, size: 64, elements: !1676, identifier: "_ZTS11float64v1_t")
!1676 = !{!1677}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1675, file: !1262, line: 246, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !1292)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1647, file: !1262, line: 306, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v8_t", file: !1262, line: 212, size: 64, elements: !1681, identifier: "_ZTS8int8v8_t")
!1681 = !{!1682}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1680, file: !1262, line: 212, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 64, elements: !1306)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1647, file: !1262, line: 307, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v4_t", file: !1262, line: 219, size: 64, elements: !1686, identifier: "_ZTS9int16v4_t")
!1686 = !{!1687}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1685, file: !1262, line: 219, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 64, elements: !352)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1647, file: !1262, line: 308, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v2_t", file: !1262, line: 225, size: 64, elements: !1691, identifier: "_ZTS9int32v2_t")
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1690, file: !1262, line: 225, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 64, elements: !1318)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1647, file: !1262, line: 309, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v1_t", file: !1262, line: 230, size: 64, elements: !1696, identifier: "_ZTS9int64v1_t")
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1695, file: !1262, line: 230, baseType: !1698, size: 64)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 64, elements: !1292)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !1264, file: !27, line: 758, baseType: !1700, size: 192, offset: 21888)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPUStatusFlags", file: !27, line: 332, size: 192, elements: !1701, identifier: "_ZTS14FPUStatusFlags")
!1701 = !{!1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1700, file: !27, line: 333, baseType: !62, size: 8)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "c0", scope: !1700, file: !27, line: 334, baseType: !62, size: 8, offset: 8)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1700, file: !27, line: 335, baseType: !62, size: 8, offset: 16)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !1700, file: !27, line: 336, baseType: !62, size: 8, offset: 24)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1700, file: !27, line: 337, baseType: !62, size: 8, offset: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !1700, file: !27, line: 338, baseType: !62, size: 8, offset: 40)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1700, file: !27, line: 339, baseType: !62, size: 8, offset: 48)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !1700, file: !27, line: 340, baseType: !62, size: 8, offset: 56)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1700, file: !27, line: 342, baseType: !62, size: 8, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1700, file: !27, line: 343, baseType: !62, size: 8, offset: 72)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1700, file: !27, line: 345, baseType: !62, size: 8, offset: 80)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1700, file: !27, line: 346, baseType: !62, size: 8, offset: 88)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1700, file: !27, line: 348, baseType: !62, size: 8, offset: 96)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1700, file: !27, line: 349, baseType: !62, size: 8, offset: 104)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1700, file: !27, line: 351, baseType: !62, size: 8, offset: 112)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1700, file: !27, line: 352, baseType: !62, size: 8, offset: 120)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1700, file: !27, line: 354, baseType: !62, size: 8, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1700, file: !27, line: 355, baseType: !62, size: 8, offset: 136)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_9", scope: !1700, file: !27, line: 357, baseType: !62, size: 8, offset: 144)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1700, file: !27, line: 358, baseType: !62, size: 8, offset: 152)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_padding", scope: !1700, file: !27, line: 360, baseType: !1723, size: 32, offset: 160)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 32, elements: !352)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "xcr0", scope: !1264, file: !27, line: 759, baseType: !1725, size: 64, offset: 22080)
!1725 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "XCR0", file: !27, line: 424, size: 64, elements: !1726, identifier: "_ZTS4XCR0")
!1726 = !{!1727, !1728, !1733}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1725, file: !27, line: 425, baseType: !635, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !27, line: 427, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !27, line: 427, size: 64, elements: !1730, identifier: "_ZTSN4XCR0Ut_E")
!1730 = !{!1731, !1732}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !1729, file: !27, line: 428, baseType: !8, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !1729, file: !27, line: 429, baseType: !8, size: 32, offset: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !27, line: 433, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !27, line: 433, size: 64, elements: !1735, identifier: "_ZTSN4XCR0Ut0_E")
!1735 = !{!1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "x87_fpu_mmx", scope: !1734, file: !27, line: 434, baseType: !635, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1734, file: !27, line: 435, baseType: !635, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ymm", scope: !1734, file: !27, line: 436, baseType: !635, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "bndreg", scope: !1734, file: !27, line: 437, baseType: !635, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "bndcsr", scope: !1734, file: !27, line: 438, baseType: !635, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "opmask", scope: !1734, file: !27, line: 439, baseType: !635, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "zmm_hi256", scope: !1734, file: !27, line: 440, baseType: !635, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "hi16_zmm", scope: !1734, file: !27, line: 441, baseType: !635, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1734, file: !27, line: 442, baseType: !635, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved0", scope: !1734, file: !27, line: 443, baseType: !635, size: 53, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "lwp", scope: !1734, file: !27, line: 444, baseType: !635, size: 1, offset: 62, flags: DIFlagBitField, extraData: i64 0)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved1", scope: !1734, file: !27, line: 445, baseType: !635, size: 1, offset: 63, flags: DIFlagBitField, extraData: i64 0)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "x87", scope: !1264, file: !27, line: 760, baseType: !1749, size: 4096, align: 128, offset: 22144)
!1749 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPU", file: !27, line: 314, size: 4096, align: 128, elements: !1750, identifier: "_ZTS3FPU")
!1750 = !{!1751, !1847, !1910}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1749, file: !27, line: 317, baseType: !1752, size: 4096)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !27, line: 315, size: 4096, elements: !1753, identifier: "_ZTSN3FPUUt_E")
!1753 = !{!1754, !1843}
!1754 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1752, baseType: !1755)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFSAVE", file: !27, line: 263, size: 1248, elements: !1756, identifier: "_ZTS8FpuFSAVE")
!1756 = !{!1757, !1775, !1776, !1797, !1798, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1755, file: !27, line: 264, baseType: !1758, size: 16)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUControlWord", file: !27, line: 142, size: 16, elements: !1759, identifier: "_ZTS14FPUControlWord")
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1758, file: !27, line: 143, baseType: !28, size: 16)
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !27, line: 144, baseType: !1762, size: 16)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1758, file: !27, line: 144, size: 16, elements: !1763, identifier: "_ZTSN14FPUControlWordUt_E")
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "im", scope: !1762, file: !27, line: 145, baseType: !28, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "dm", scope: !1762, file: !27, line: 146, baseType: !28, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "zm", scope: !1762, file: !27, line: 147, baseType: !28, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "om", scope: !1762, file: !27, line: 148, baseType: !28, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "um", scope: !1762, file: !27, line: 149, baseType: !28, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1762, file: !27, line: 150, baseType: !28, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1762, file: !27, line: 151, baseType: !28, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !1762, file: !27, line: 152, baseType: !39, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !1762, file: !27, line: 153, baseType: !45, size: 2, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1762, file: !27, line: 154, baseType: !51, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1762, file: !27, line: 155, baseType: !28, size: 3, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1755, file: !27, line: 265, baseType: !28, size: 16, offset: 16)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1755, file: !27, line: 266, baseType: !1777, size: 16, offset: 32)
!1777 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUStatusWord", file: !27, line: 100, size: 16, elements: !1778, identifier: "_ZTS13FPUStatusWord")
!1778 = !{!1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1777, file: !27, line: 101, baseType: !28, size: 16)
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1777, file: !27, line: 102, baseType: !1781, size: 16)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1777, file: !27, line: 102, size: 16, elements: !1782, identifier: "_ZTSN13FPUStatusWordUt_E")
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1781, file: !27, line: 103, baseType: !28, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1781, file: !27, line: 104, baseType: !28, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1781, file: !27, line: 105, baseType: !28, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1781, file: !27, line: 106, baseType: !28, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1781, file: !27, line: 107, baseType: !28, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1781, file: !27, line: 108, baseType: !28, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1781, file: !27, line: 109, baseType: !28, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1781, file: !27, line: 110, baseType: !28, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "c0", scope: !1781, file: !27, line: 111, baseType: !28, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !1781, file: !27, line: 112, baseType: !28, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !1781, file: !27, line: 113, baseType: !28, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !1781, file: !27, line: 114, baseType: !28, size: 3, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !1781, file: !27, line: 115, baseType: !28, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1781, file: !27, line: 116, baseType: !28, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1755, file: !27, line: 267, baseType: !28, size: 16, offset: 48)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1755, file: !27, line: 268, baseType: !1799, size: 16, offset: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUTagWord", file: !27, line: 227, size: 16, elements: !1800, identifier: "_ZTS10FPUTagWord")
!1800 = !{!1801, !1802}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1799, file: !27, line: 228, baseType: !28, size: 16)
!1802 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !27, line: 229, baseType: !1803, size: 16)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1799, file: !27, line: 229, size: 16, elements: !1804, identifier: "_ZTSN10FPUTagWordUt_E")
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "tag0", scope: !1803, file: !27, line: 230, baseType: !55, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "tag1", scope: !1803, file: !27, line: 231, baseType: !55, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "tag2", scope: !1803, file: !27, line: 232, baseType: !55, size: 2, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "tag3", scope: !1803, file: !27, line: 233, baseType: !55, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "tag4", scope: !1803, file: !27, line: 234, baseType: !55, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "tag5", scope: !1803, file: !27, line: 235, baseType: !55, size: 2, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "tag6", scope: !1803, file: !27, line: 236, baseType: !55, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "tag7", scope: !1803, file: !27, line: 237, baseType: !55, size: 2, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1755, file: !27, line: 269, baseType: !28, size: 16, offset: 80)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1755, file: !27, line: 270, baseType: !8, size: 32, offset: 96)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1755, file: !27, line: 271, baseType: !1543, size: 16, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd2", scope: !1755, file: !27, line: 272, baseType: !28, size: 16, offset: 144)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1755, file: !27, line: 273, baseType: !8, size: 32, offset: 160)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1755, file: !27, line: 274, baseType: !1543, size: 16, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd3", scope: !1755, file: !27, line: 275, baseType: !28, size: 16, offset: 208)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1755, file: !27, line: 276, baseType: !1821, size: 1024, offset: 224)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1822, size: 1024, elements: !1306)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPUStackElem", file: !27, line: 162, size: 128, elements: !1823, identifier: "_ZTS12FPUStackElem")
!1823 = !{!1824, !1839}
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !27, line: 163, baseType: !1825, size: 80)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1822, file: !27, line: 163, size: 80, elements: !1826, identifier: "_ZTSN12FPUStackElemUt_E")
!1826 = !{!1827, !1834}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1825, file: !27, line: 164, baseType: !1828, size: 80)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float80_t", file: !1262, line: 65, size: 80, elements: !1829, identifier: "_ZTS9float80_t")
!1829 = !{!1830}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1828, file: !1262, line: 66, baseType: !1831, size: 80)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 80, elements: !1832)
!1832 = !{!1833}
!1833 = !DISubrange(count: 10)
!1834 = !DIDerivedType(tag: DW_TAG_member, scope: !1825, file: !27, line: 165, baseType: !1835, size: 80)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1825, file: !27, line: 165, size: 80, elements: !1836, identifier: "_ZTSN12FPUStackElemUt_Ut_E")
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !1835, file: !27, line: 166, baseType: !635, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "infinity", scope: !1835, file: !27, line: 167, baseType: !28, size: 16, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd", scope: !1822, file: !27, line: 170, baseType: !1840, size: 48, offset: 80)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 48, elements: !1841)
!1841 = !{!1842}
!1842 = !DISubrange(count: 6)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1752, file: !27, line: 316, baseType: !1844, size: 2848, offset: 1248)
!1844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 2848, elements: !1845)
!1845 = !{!1846}
!1846 = !DISubrange(count: 356)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave32", scope: !1749, file: !27, line: 321, baseType: !1848, size: 4096)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !27, line: 319, size: 4096, elements: !1849, identifier: "_ZTSN3FPUUt0_E")
!1849 = !{!1850, !1906}
!1850 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1848, baseType: !1851)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFXSAVE", file: !27, line: 280, size: 3328, elements: !1852, identifier: "_ZTS9FpuFXSAVE")
!1852 = !{!1853, !1854, !1855, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1902, !1903, !1904}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1851, file: !27, line: 281, baseType: !1758, size: 16)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1851, file: !27, line: 282, baseType: !1777, size: 16, offset: 16)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1851, file: !27, line: 283, baseType: !1856, size: 8, offset: 32)
!1856 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUAbridgedTagWord", file: !27, line: 245, size: 8, elements: !1857, identifier: "_ZTS18FPUAbridgedTagWord")
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1856, file: !27, line: 246, baseType: !62, size: 8)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1856, file: !27, line: 247, baseType: !1860, size: 8)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1856, file: !27, line: 247, size: 8, elements: !1861, identifier: "_ZTSN18FPUAbridgedTagWordUt_E")
!1861 = !{!1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "r0", scope: !1860, file: !27, line: 248, baseType: !61, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "r1", scope: !1860, file: !27, line: 249, baseType: !61, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "r2", scope: !1860, file: !27, line: 250, baseType: !61, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "r3", scope: !1860, file: !27, line: 251, baseType: !61, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "r4", scope: !1860, file: !27, line: 252, baseType: !61, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "r5", scope: !1860, file: !27, line: 253, baseType: !61, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "r6", scope: !1860, file: !27, line: 254, baseType: !61, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "r7", scope: !1860, file: !27, line: 255, baseType: !61, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1851, file: !27, line: 284, baseType: !62, size: 8, offset: 40)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1851, file: !27, line: 285, baseType: !28, size: 16, offset: 48)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1851, file: !27, line: 286, baseType: !8, size: 32, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1851, file: !27, line: 287, baseType: !1543, size: 16, offset: 96)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1851, file: !27, line: 288, baseType: !28, size: 16, offset: 112)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1851, file: !27, line: 289, baseType: !8, size: 32, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1851, file: !27, line: 290, baseType: !1543, size: 16, offset: 160)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd2", scope: !1851, file: !27, line: 291, baseType: !28, size: 16, offset: 176)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1851, file: !27, line: 292, baseType: !1879, size: 32, offset: 192)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUControlStatus", file: !27, line: 188, size: 32, elements: !1880, identifier: "_ZTS16FPUControlStatus")
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1879, file: !27, line: 189, baseType: !8, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !27, line: 190, baseType: !1883, size: 32)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !27, line: 190, size: 32, elements: !1884, identifier: "_ZTSN16FPUControlStatusUt_E")
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1883, file: !27, line: 191, baseType: !8, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1883, file: !27, line: 192, baseType: !8, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1883, file: !27, line: 193, baseType: !8, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1883, file: !27, line: 194, baseType: !8, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1883, file: !27, line: 195, baseType: !8, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1883, file: !27, line: 196, baseType: !8, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "daz", scope: !1883, file: !27, line: 197, baseType: !8, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "im", scope: !1883, file: !27, line: 198, baseType: !8, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "dm", scope: !1883, file: !27, line: 199, baseType: !8, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "zm", scope: !1883, file: !27, line: 200, baseType: !8, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "om", scope: !1883, file: !27, line: 201, baseType: !8, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "um", scope: !1883, file: !27, line: 202, baseType: !8, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1883, file: !27, line: 203, baseType: !8, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "rn", scope: !1883, file: !27, line: 204, baseType: !8, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !1883, file: !27, line: 205, baseType: !8, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "fz", scope: !1883, file: !27, line: 206, baseType: !8, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd", scope: !1883, file: !27, line: 207, baseType: !8, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1851, file: !27, line: 293, baseType: !1879, size: 32, offset: 224)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1851, file: !27, line: 294, baseType: !1821, size: 1024, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1851, file: !27, line: 295, baseType: !1905, size: 2048, offset: 1280)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1283, size: 2048, elements: !1299)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1848, file: !27, line: 320, baseType: !1907, size: 768, offset: 3328)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 768, elements: !1908)
!1908 = !{!1909}
!1909 = !DISubrange(count: 96)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave64", scope: !1749, file: !27, line: 325, baseType: !1911, size: 4096)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1749, file: !27, line: 323, size: 4096, elements: !1912, identifier: "_ZTSN3FPUUt1_E")
!1912 = !{!1913, !1927}
!1913 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1911, baseType: !1914)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFXSAVE64", file: !27, line: 299, size: 3328, elements: !1915, identifier: "_ZTS11FpuFXSAVE64")
!1915 = !{!1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1914, file: !27, line: 300, baseType: !1758, size: 16)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1914, file: !27, line: 301, baseType: !1777, size: 16, offset: 16)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1914, file: !27, line: 302, baseType: !1856, size: 8, offset: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1914, file: !27, line: 303, baseType: !62, size: 8, offset: 40)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1914, file: !27, line: 304, baseType: !28, size: 16, offset: 48)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1914, file: !27, line: 305, baseType: !635, size: 64, offset: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1914, file: !27, line: 306, baseType: !635, size: 64, offset: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1914, file: !27, line: 307, baseType: !1879, size: 32, offset: 192)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1914, file: !27, line: 308, baseType: !1879, size: 32, offset: 224)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1914, file: !27, line: 309, baseType: !1821, size: 1024, offset: 256)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1914, file: !27, line: 310, baseType: !1905, size: 2048, offset: 1280)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1911, file: !27, line: 324, baseType: !1907, size: 768, offset: 3328)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "seg_caches", scope: !1264, file: !27, line: 761, baseType: !1929, size: 768, align: 64, offset: 26240)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SegmentCaches", file: !27, line: 468, size: 768, align: 64, elements: !1930, identifier: "_ZTS13SegmentCaches")
!1930 = !{!1931, !1941, !1942, !1943, !1944, !1945}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1929, file: !27, line: 469, baseType: !1932, size: 128)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SegmentShadow", file: !27, line: 88, size: 128, elements: !1933, identifier: "_ZTS13SegmentShadow")
!1933 = !{!1934, !1939, !1940}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1932, file: !27, line: 92, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1932, file: !27, line: 89, size: 64, elements: !1936, identifier: "_ZTSN13SegmentShadowUt_E")
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !1935, file: !27, line: 90, baseType: !8, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "qword", scope: !1935, file: !27, line: 91, baseType: !635, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1932, file: !27, line: 93, baseType: !8, size: 32, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1932, file: !27, line: 94, baseType: !8, size: 32, offset: 96)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1929, file: !27, line: 470, baseType: !1932, size: 128, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1929, file: !27, line: 471, baseType: !1932, size: 128, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1929, file: !27, line: 472, baseType: !1932, size: 128, offset: 384)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1929, file: !27, line: 473, baseType: !1932, size: 128, offset: 512)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1929, file: !27, line: 474, baseType: !1932, size: 128, offset: 640)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !1262, line: 42, baseType: !1947)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr64_t", file: !1262, line: 41, baseType: !635)
!1948 = !DILocation(line: 54, column: 8, scope: !1257)
!1949 = !DILocation(line: 55, column: 10, scope: !1257)
!1950 = !DILocation(line: 56, column: 10, scope: !1257)
!1951 = !DILocation(line: 57, column: 10, scope: !1257)
!1952 = !DILocation(line: 58, column: 10, scope: !1257)
!1953 = !DILocation(line: 61, column: 9, scope: !1257)
!1954 = !DILocation(line: 62, column: 9, scope: !1257)
!1955 = !DILocation(line: 63, column: 20, scope: !1257)
!1956 = !DILocation(line: 63, column: 24, scope: !1257)
!1957 = !DILocation(line: 63, column: 28, scope: !1257)
!1958 = !DILocation(line: 69, column: 6, scope: !1257)
!1959 = !DILocation(line: 74, column: 20, scope: !1257)
!1960 = !DILocation(line: 74, column: 24, scope: !1257)
!1961 = !DILocation(line: 74, column: 28, scope: !1257)
!1962 = !DILocation(line: 74, column: 33, scope: !1257)
!1963 = !DILocation(line: 75, column: 20, scope: !1257)
!1964 = !DILocation(line: 75, column: 24, scope: !1257)
!1965 = !DILocation(line: 75, column: 28, scope: !1257)
!1966 = !DILocation(line: 75, column: 33, scope: !1257)
!1967 = !DILocation(line: 76, column: 20, scope: !1257)
!1968 = !DILocation(line: 76, column: 24, scope: !1257)
!1969 = !DILocation(line: 76, column: 28, scope: !1257)
!1970 = !DILocation(line: 76, column: 33, scope: !1257)
!1971 = !DILocation(line: 77, column: 20, scope: !1257)
!1972 = !DILocation(line: 77, column: 24, scope: !1257)
!1973 = !DILocation(line: 77, column: 28, scope: !1257)
!1974 = !DILocation(line: 77, column: 33, scope: !1257)
!1975 = !DILocation(line: 78, column: 20, scope: !1257)
!1976 = !DILocation(line: 78, column: 24, scope: !1257)
!1977 = !DILocation(line: 78, column: 28, scope: !1257)
!1978 = !DILocation(line: 78, column: 33, scope: !1257)
!1979 = !DILocation(line: 79, column: 20, scope: !1257)
!1980 = !DILocation(line: 79, column: 24, scope: !1257)
!1981 = !DILocation(line: 79, column: 28, scope: !1257)
!1982 = !DILocation(line: 79, column: 33, scope: !1257)
!1983 = !DILocation(line: 80, column: 20, scope: !1257)
!1984 = !DILocation(line: 80, column: 24, scope: !1257)
!1985 = !DILocation(line: 80, column: 28, scope: !1257)
!1986 = !DILocation(line: 80, column: 33, scope: !1257)
!1987 = !DILocation(line: 81, column: 20, scope: !1257)
!1988 = !DILocation(line: 81, column: 24, scope: !1257)
!1989 = !DILocation(line: 81, column: 28, scope: !1257)
!1990 = !DILocation(line: 81, column: 33, scope: !1257)
!1991 = !DILocation(line: 83, column: 21, scope: !1257)
!1992 = !DILocation(line: 83, column: 25, scope: !1257)
!1993 = !DILocation(line: 83, column: 29, scope: !1257)
!1994 = !DILocation(line: 83, column: 34, scope: !1257)
!1995 = !DILocation(line: 84, column: 21, scope: !1257)
!1996 = !DILocation(line: 84, column: 25, scope: !1257)
!1997 = !DILocation(line: 84, column: 29, scope: !1257)
!1998 = !DILocation(line: 84, column: 34, scope: !1257)
!1999 = !DILocation(line: 85, column: 21, scope: !1257)
!2000 = !DILocation(line: 85, column: 25, scope: !1257)
!2001 = !DILocation(line: 85, column: 29, scope: !1257)
!2002 = !DILocation(line: 85, column: 34, scope: !1257)
!2003 = !DILocation(line: 86, column: 21, scope: !1257)
!2004 = !DILocation(line: 86, column: 25, scope: !1257)
!2005 = !DILocation(line: 86, column: 29, scope: !1257)
!2006 = !DILocation(line: 86, column: 34, scope: !1257)
!2007 = !DILocation(line: 87, column: 21, scope: !1257)
!2008 = !DILocation(line: 87, column: 25, scope: !1257)
!2009 = !DILocation(line: 87, column: 28, scope: !1257)
!2010 = !DILocation(line: 87, column: 33, scope: !1257)
!2011 = !DILocation(line: 88, column: 21, scope: !1257)
!2012 = !DILocation(line: 88, column: 25, scope: !1257)
!2013 = !DILocation(line: 88, column: 28, scope: !1257)
!2014 = !DILocation(line: 88, column: 33, scope: !1257)
!2015 = !DILocation(line: 89, column: 22, scope: !1257)
!2016 = !DILocation(line: 89, column: 26, scope: !1257)
!2017 = !DILocation(line: 89, column: 30, scope: !1257)
!2018 = !DILocation(line: 89, column: 35, scope: !1257)
!2019 = !DILocation(line: 90, column: 22, scope: !1257)
!2020 = !DILocation(line: 90, column: 26, scope: !1257)
!2021 = !DILocation(line: 90, column: 30, scope: !1257)
!2022 = !DILocation(line: 90, column: 35, scope: !1257)
!2023 = !DILocation(line: 91, column: 22, scope: !1257)
!2024 = !DILocation(line: 91, column: 26, scope: !1257)
!2025 = !DILocation(line: 91, column: 30, scope: !1257)
!2026 = !DILocation(line: 91, column: 35, scope: !1257)
!2027 = !DILocation(line: 92, column: 22, scope: !1257)
!2028 = !DILocation(line: 92, column: 26, scope: !1257)
!2029 = !DILocation(line: 92, column: 30, scope: !1257)
!2030 = !DILocation(line: 92, column: 35, scope: !1257)
!2031 = !DILocation(line: 93, column: 22, scope: !1257)
!2032 = !DILocation(line: 93, column: 26, scope: !1257)
!2033 = !DILocation(line: 93, column: 30, scope: !1257)
!2034 = !DILocation(line: 93, column: 35, scope: !1257)
!2035 = !DILocation(line: 94, column: 22, scope: !1257)
!2036 = !DILocation(line: 94, column: 26, scope: !1257)
!2037 = !DILocation(line: 94, column: 30, scope: !1257)
!2038 = !DILocation(line: 94, column: 35, scope: !1257)
!2039 = !DILocation(line: 96, column: 20, scope: !1257)
!2040 = !DILocation(line: 96, column: 24, scope: !1257)
!2041 = !DILocation(line: 96, column: 28, scope: !1257)
!2042 = !DILocation(line: 97, column: 20, scope: !1257)
!2043 = !DILocation(line: 97, column: 24, scope: !1257)
!2044 = !DILocation(line: 97, column: 28, scope: !1257)
!2045 = !DILocation(line: 98, column: 20, scope: !1257)
!2046 = !DILocation(line: 98, column: 24, scope: !1257)
!2047 = !DILocation(line: 98, column: 28, scope: !1257)
!2048 = !DILocation(line: 99, column: 20, scope: !1257)
!2049 = !DILocation(line: 99, column: 24, scope: !1257)
!2050 = !DILocation(line: 99, column: 28, scope: !1257)
!2051 = !DILocation(line: 100, column: 20, scope: !1257)
!2052 = !DILocation(line: 100, column: 24, scope: !1257)
!2053 = !DILocation(line: 100, column: 28, scope: !1257)
!2054 = !DILocation(line: 101, column: 20, scope: !1257)
!2055 = !DILocation(line: 101, column: 24, scope: !1257)
!2056 = !DILocation(line: 101, column: 28, scope: !1257)
!2057 = !DILocation(line: 102, column: 20, scope: !1257)
!2058 = !DILocation(line: 102, column: 24, scope: !1257)
!2059 = !DILocation(line: 102, column: 28, scope: !1257)
!2060 = !DILocation(line: 103, column: 20, scope: !1257)
!2061 = !DILocation(line: 103, column: 24, scope: !1257)
!2062 = !DILocation(line: 103, column: 28, scope: !1257)
!2063 = !DILocation(line: 105, column: 21, scope: !1257)
!2064 = !DILocation(line: 105, column: 25, scope: !1257)
!2065 = !DILocation(line: 105, column: 28, scope: !1257)
!2066 = !DILocation(line: 106, column: 21, scope: !1257)
!2067 = !DILocation(line: 106, column: 25, scope: !1257)
!2068 = !DILocation(line: 106, column: 28, scope: !1257)
!2069 = !DILocation(line: 107, column: 22, scope: !1257)
!2070 = !DILocation(line: 107, column: 26, scope: !1257)
!2071 = !DILocation(line: 107, column: 30, scope: !1257)
!2072 = !DILocation(line: 108, column: 22, scope: !1257)
!2073 = !DILocation(line: 108, column: 26, scope: !1257)
!2074 = !DILocation(line: 108, column: 30, scope: !1257)
!2075 = !DILocation(line: 109, column: 22, scope: !1257)
!2076 = !DILocation(line: 109, column: 26, scope: !1257)
!2077 = !DILocation(line: 109, column: 30, scope: !1257)
!2078 = !DILocation(line: 110, column: 22, scope: !1257)
!2079 = !DILocation(line: 110, column: 26, scope: !1257)
!2080 = !DILocation(line: 110, column: 30, scope: !1257)
!2081 = !DILocation(line: 111, column: 22, scope: !1257)
!2082 = !DILocation(line: 111, column: 26, scope: !1257)
!2083 = !DILocation(line: 111, column: 30, scope: !1257)
!2084 = !DILocation(line: 112, column: 22, scope: !1257)
!2085 = !DILocation(line: 112, column: 26, scope: !1257)
!2086 = !DILocation(line: 112, column: 30, scope: !1257)
!2087 = !DILocation(line: 114, column: 20, scope: !1257)
!2088 = !DILocation(line: 114, column: 24, scope: !1257)
!2089 = !DILocation(line: 114, column: 28, scope: !1257)
!2090 = !DILocation(line: 116, column: 21, scope: !1257)
!2091 = !DILocation(line: 116, column: 25, scope: !1257)
!2092 = !DILocation(line: 116, column: 29, scope: !1257)
!2093 = !DILocation(line: 117, column: 21, scope: !1257)
!2094 = !DILocation(line: 117, column: 25, scope: !1257)
!2095 = !DILocation(line: 117, column: 29, scope: !1257)
!2096 = !DILocation(line: 118, column: 21, scope: !1257)
!2097 = !DILocation(line: 118, column: 25, scope: !1257)
!2098 = !DILocation(line: 118, column: 29, scope: !1257)
!2099 = !DILocation(line: 119, column: 21, scope: !1257)
!2100 = !DILocation(line: 119, column: 25, scope: !1257)
!2101 = !DILocation(line: 119, column: 29, scope: !1257)
!2102 = !DILocation(line: 120, column: 21, scope: !1257)
!2103 = !DILocation(line: 120, column: 25, scope: !1257)
!2104 = !DILocation(line: 120, column: 29, scope: !1257)
!2105 = !DILocation(line: 121, column: 21, scope: !1257)
!2106 = !DILocation(line: 121, column: 25, scope: !1257)
!2107 = !DILocation(line: 121, column: 29, scope: !1257)
!2108 = !DILocation(line: 122, column: 21, scope: !1257)
!2109 = !DILocation(line: 122, column: 25, scope: !1257)
!2110 = !DILocation(line: 122, column: 29, scope: !1257)
!2111 = !DILocation(line: 123, column: 21, scope: !1257)
!2112 = !DILocation(line: 123, column: 25, scope: !1257)
!2113 = !DILocation(line: 123, column: 29, scope: !1257)
!2114 = !DILocation(line: 124, column: 21, scope: !1257)
!2115 = !DILocation(line: 124, column: 25, scope: !1257)
!2116 = !DILocation(line: 124, column: 29, scope: !1257)
!2117 = !DILocation(line: 127, column: 21, scope: !1257)
!2118 = !DILocation(line: 127, column: 25, scope: !1257)
!2119 = !DILocation(line: 127, column: 28, scope: !1257)
!2120 = !DILocation(line: 128, column: 21, scope: !1257)
!2121 = !DILocation(line: 128, column: 25, scope: !1257)
!2122 = !DILocation(line: 128, column: 28, scope: !1257)
!2123 = !DILocation(line: 129, column: 22, scope: !1257)
!2124 = !DILocation(line: 129, column: 26, scope: !1257)
!2125 = !DILocation(line: 129, column: 30, scope: !1257)
!2126 = !DILocation(line: 130, column: 22, scope: !1257)
!2127 = !DILocation(line: 130, column: 26, scope: !1257)
!2128 = !DILocation(line: 130, column: 30, scope: !1257)
!2129 = !DILocation(line: 131, column: 22, scope: !1257)
!2130 = !DILocation(line: 131, column: 26, scope: !1257)
!2131 = !DILocation(line: 131, column: 30, scope: !1257)
!2132 = !DILocation(line: 132, column: 22, scope: !1257)
!2133 = !DILocation(line: 132, column: 26, scope: !1257)
!2134 = !DILocation(line: 132, column: 30, scope: !1257)
!2135 = !DILocation(line: 133, column: 22, scope: !1257)
!2136 = !DILocation(line: 133, column: 26, scope: !1257)
!2137 = !DILocation(line: 133, column: 30, scope: !1257)
!2138 = !DILocation(line: 134, column: 22, scope: !1257)
!2139 = !DILocation(line: 134, column: 26, scope: !1257)
!2140 = !DILocation(line: 134, column: 30, scope: !1257)
!2141 = !DILocation(line: 136, column: 21, scope: !1257)
!2142 = !DILocation(line: 136, column: 25, scope: !1257)
!2143 = !DILocation(line: 136, column: 29, scope: !1257)
!2144 = !DILocation(line: 137, column: 21, scope: !1257)
!2145 = !DILocation(line: 137, column: 25, scope: !1257)
!2146 = !DILocation(line: 137, column: 29, scope: !1257)
!2147 = !DILocation(line: 138, column: 21, scope: !1257)
!2148 = !DILocation(line: 138, column: 25, scope: !1257)
!2149 = !DILocation(line: 138, column: 29, scope: !1257)
!2150 = !DILocation(line: 139, column: 21, scope: !1257)
!2151 = !DILocation(line: 139, column: 25, scope: !1257)
!2152 = !DILocation(line: 139, column: 29, scope: !1257)
!2153 = !DILocation(line: 140, column: 21, scope: !1257)
!2154 = !DILocation(line: 140, column: 25, scope: !1257)
!2155 = !DILocation(line: 140, column: 29, scope: !1257)
!2156 = !DILocation(line: 141, column: 21, scope: !1257)
!2157 = !DILocation(line: 141, column: 25, scope: !1257)
!2158 = !DILocation(line: 141, column: 29, scope: !1257)
!2159 = !DILocation(line: 142, column: 21, scope: !1257)
!2160 = !DILocation(line: 142, column: 25, scope: !1257)
!2161 = !DILocation(line: 142, column: 29, scope: !1257)
!2162 = !DILocation(line: 143, column: 21, scope: !1257)
!2163 = !DILocation(line: 143, column: 25, scope: !1257)
!2164 = !DILocation(line: 143, column: 29, scope: !1257)
!2165 = !DILocation(line: 144, column: 20, scope: !1257)
!2166 = !DILocation(line: 144, column: 24, scope: !1257)
!2167 = !DILocation(line: 144, column: 27, scope: !1257)
!2168 = !DILocation(line: 145, column: 20, scope: !1257)
!2169 = !DILocation(line: 145, column: 24, scope: !1257)
!2170 = !DILocation(line: 145, column: 27, scope: !1257)
!2171 = !DILocation(line: 146, column: 21, scope: !1257)
!2172 = !DILocation(line: 146, column: 25, scope: !1257)
!2173 = !DILocation(line: 146, column: 29, scope: !1257)
!2174 = !DILocation(line: 147, column: 21, scope: !1257)
!2175 = !DILocation(line: 147, column: 25, scope: !1257)
!2176 = !DILocation(line: 147, column: 29, scope: !1257)
!2177 = !DILocation(line: 148, column: 21, scope: !1257)
!2178 = !DILocation(line: 148, column: 25, scope: !1257)
!2179 = !DILocation(line: 148, column: 29, scope: !1257)
!2180 = !DILocation(line: 149, column: 21, scope: !1257)
!2181 = !DILocation(line: 149, column: 25, scope: !1257)
!2182 = !DILocation(line: 149, column: 29, scope: !1257)
!2183 = !DILocation(line: 150, column: 21, scope: !1257)
!2184 = !DILocation(line: 150, column: 25, scope: !1257)
!2185 = !DILocation(line: 150, column: 29, scope: !1257)
!2186 = !DILocation(line: 151, column: 21, scope: !1257)
!2187 = !DILocation(line: 151, column: 25, scope: !1257)
!2188 = !DILocation(line: 151, column: 29, scope: !1257)
!2189 = !DILocation(line: 152, column: 21, scope: !1257)
!2190 = !DILocation(line: 152, column: 25, scope: !1257)
!2191 = !DILocation(line: 152, column: 29, scope: !1257)
!2192 = !DILocation(line: 155, column: 20, scope: !1257)
!2193 = !DILocation(line: 155, column: 24, scope: !1257)
!2194 = !DILocation(line: 155, column: 27, scope: !1257)
!2195 = !DILocation(line: 156, column: 20, scope: !1257)
!2196 = !DILocation(line: 156, column: 24, scope: !1257)
!2197 = !DILocation(line: 156, column: 27, scope: !1257)
!2198 = !DILocation(line: 157, column: 20, scope: !1257)
!2199 = !DILocation(line: 157, column: 24, scope: !1257)
!2200 = !DILocation(line: 157, column: 27, scope: !1257)
!2201 = !DILocation(line: 158, column: 20, scope: !1257)
!2202 = !DILocation(line: 158, column: 24, scope: !1257)
!2203 = !DILocation(line: 158, column: 27, scope: !1257)
!2204 = !DILocation(line: 159, column: 20, scope: !1257)
!2205 = !DILocation(line: 159, column: 24, scope: !1257)
!2206 = !DILocation(line: 159, column: 27, scope: !1257)
!2207 = !DILocation(line: 160, column: 20, scope: !1257)
!2208 = !DILocation(line: 160, column: 24, scope: !1257)
!2209 = !DILocation(line: 160, column: 27, scope: !1257)
!2210 = !DILocation(line: 164, column: 25, scope: !1257)
!2211 = !DILocation(line: 164, column: 30, scope: !1257)
!2212 = !DILocation(line: 164, column: 38, scope: !1257)
!2213 = !DILocation(line: 165, column: 25, scope: !1257)
!2214 = !DILocation(line: 165, column: 30, scope: !1257)
!2215 = !DILocation(line: 165, column: 38, scope: !1257)
!2216 = !DILocation(line: 245, column: 22, scope: !1257)
!2217 = !DILocation(line: 245, column: 16, scope: !1257)
!2218 = !DILocation(line: 245, column: 29, scope: !1257)
!2219 = !DILocation(line: 246, column: 22, scope: !1257)
!2220 = !DILocation(line: 246, column: 16, scope: !1257)
!2221 = !DILocation(line: 246, column: 29, scope: !1257)
!2222 = !DILocation(line: 247, column: 22, scope: !1257)
!2223 = !DILocation(line: 247, column: 16, scope: !1257)
!2224 = !DILocation(line: 247, column: 29, scope: !1257)
!2225 = !DILocation(line: 248, column: 22, scope: !1257)
!2226 = !DILocation(line: 248, column: 16, scope: !1257)
!2227 = !DILocation(line: 248, column: 29, scope: !1257)
!2228 = !DILocation(line: 249, column: 22, scope: !1257)
!2229 = !DILocation(line: 249, column: 16, scope: !1257)
!2230 = !DILocation(line: 249, column: 29, scope: !1257)
!2231 = !DILocation(line: 250, column: 22, scope: !1257)
!2232 = !DILocation(line: 250, column: 16, scope: !1257)
!2233 = !DILocation(line: 250, column: 29, scope: !1257)
!2234 = !DILocation(line: 251, column: 22, scope: !1257)
!2235 = !DILocation(line: 251, column: 16, scope: !1257)
!2236 = !DILocation(line: 251, column: 29, scope: !1257)
!2237 = !DILocation(line: 252, column: 22, scope: !1257)
!2238 = !DILocation(line: 252, column: 16, scope: !1257)
!2239 = !DILocation(line: 252, column: 29, scope: !1257)
!2240 = !DILocation(line: 255, column: 22, scope: !1257)
!2241 = !DILocation(line: 255, column: 16, scope: !1257)
!2242 = !DILocation(line: 255, column: 29, scope: !1257)
!2243 = !DILocation(line: 256, column: 22, scope: !1257)
!2244 = !DILocation(line: 256, column: 16, scope: !1257)
!2245 = !DILocation(line: 256, column: 29, scope: !1257)
!2246 = !DILocation(line: 257, column: 23, scope: !1257)
!2247 = !DILocation(line: 257, column: 17, scope: !1257)
!2248 = !DILocation(line: 257, column: 31, scope: !1257)
!2249 = !DILocation(line: 258, column: 23, scope: !1257)
!2250 = !DILocation(line: 258, column: 17, scope: !1257)
!2251 = !DILocation(line: 258, column: 31, scope: !1257)
!2252 = !DILocation(line: 259, column: 23, scope: !1257)
!2253 = !DILocation(line: 259, column: 17, scope: !1257)
!2254 = !DILocation(line: 259, column: 31, scope: !1257)
!2255 = !DILocation(line: 260, column: 23, scope: !1257)
!2256 = !DILocation(line: 260, column: 17, scope: !1257)
!2257 = !DILocation(line: 260, column: 31, scope: !1257)
!2258 = !DILocation(line: 261, column: 23, scope: !1257)
!2259 = !DILocation(line: 261, column: 17, scope: !1257)
!2260 = !DILocation(line: 261, column: 31, scope: !1257)
!2261 = !DILocation(line: 262, column: 23, scope: !1257)
!2262 = !DILocation(line: 262, column: 17, scope: !1257)
!2263 = !DILocation(line: 262, column: 31, scope: !1257)
!2264 = !DILocation(line: 285, column: 21, scope: !1257)
!2265 = !DILocation(line: 285, column: 24, scope: !1257)
!2266 = !DILocation(line: 285, column: 15, scope: !1257)
!2267 = !DILocation(line: 285, column: 33, scope: !1257)
!2268 = !DILocation(line: 286, column: 21, scope: !1257)
!2269 = !DILocation(line: 286, column: 24, scope: !1257)
!2270 = !DILocation(line: 286, column: 15, scope: !1257)
!2271 = !DILocation(line: 286, column: 33, scope: !1257)
!2272 = !DILocation(line: 287, column: 21, scope: !1257)
!2273 = !DILocation(line: 287, column: 24, scope: !1257)
!2274 = !DILocation(line: 287, column: 15, scope: !1257)
!2275 = !DILocation(line: 287, column: 33, scope: !1257)
!2276 = !DILocation(line: 288, column: 21, scope: !1257)
!2277 = !DILocation(line: 288, column: 24, scope: !1257)
!2278 = !DILocation(line: 288, column: 15, scope: !1257)
!2279 = !DILocation(line: 288, column: 33, scope: !1257)
!2280 = !DILocation(line: 289, column: 21, scope: !1257)
!2281 = !DILocation(line: 289, column: 24, scope: !1257)
!2282 = !DILocation(line: 289, column: 15, scope: !1257)
!2283 = !DILocation(line: 289, column: 33, scope: !1257)
!2284 = !DILocation(line: 290, column: 21, scope: !1257)
!2285 = !DILocation(line: 290, column: 24, scope: !1257)
!2286 = !DILocation(line: 290, column: 15, scope: !1257)
!2287 = !DILocation(line: 290, column: 33, scope: !1257)
!2288 = !DILocation(line: 291, column: 21, scope: !1257)
!2289 = !DILocation(line: 291, column: 24, scope: !1257)
!2290 = !DILocation(line: 291, column: 15, scope: !1257)
!2291 = !DILocation(line: 291, column: 33, scope: !1257)
!2292 = !DILocation(line: 292, column: 21, scope: !1257)
!2293 = !DILocation(line: 292, column: 24, scope: !1257)
!2294 = !DILocation(line: 292, column: 15, scope: !1257)
!2295 = !DILocation(line: 292, column: 33, scope: !1257)
!2296 = !DILocation(line: 318, column: 21, scope: !1257)
!2297 = !DILocation(line: 318, column: 25, scope: !1257)
!2298 = !DILocation(line: 318, column: 15, scope: !1257)
!2299 = !DILocation(line: 318, column: 34, scope: !1257)
!2300 = !DILocation(line: 318, column: 38, scope: !1257)
!2301 = !DILocation(line: 318, column: 45, scope: !1257)
!2302 = !DILocation(line: 319, column: 21, scope: !1257)
!2303 = !DILocation(line: 319, column: 25, scope: !1257)
!2304 = !DILocation(line: 319, column: 15, scope: !1257)
!2305 = !DILocation(line: 319, column: 34, scope: !1257)
!2306 = !DILocation(line: 319, column: 38, scope: !1257)
!2307 = !DILocation(line: 319, column: 45, scope: !1257)
!2308 = !DILocation(line: 320, column: 21, scope: !1257)
!2309 = !DILocation(line: 320, column: 25, scope: !1257)
!2310 = !DILocation(line: 320, column: 15, scope: !1257)
!2311 = !DILocation(line: 320, column: 34, scope: !1257)
!2312 = !DILocation(line: 320, column: 38, scope: !1257)
!2313 = !DILocation(line: 320, column: 45, scope: !1257)
!2314 = !DILocation(line: 321, column: 21, scope: !1257)
!2315 = !DILocation(line: 321, column: 25, scope: !1257)
!2316 = !DILocation(line: 321, column: 15, scope: !1257)
!2317 = !DILocation(line: 321, column: 34, scope: !1257)
!2318 = !DILocation(line: 321, column: 38, scope: !1257)
!2319 = !DILocation(line: 321, column: 45, scope: !1257)
!2320 = !DILocation(line: 322, column: 21, scope: !1257)
!2321 = !DILocation(line: 322, column: 25, scope: !1257)
!2322 = !DILocation(line: 322, column: 15, scope: !1257)
!2323 = !DILocation(line: 322, column: 34, scope: !1257)
!2324 = !DILocation(line: 322, column: 38, scope: !1257)
!2325 = !DILocation(line: 322, column: 45, scope: !1257)
!2326 = !DILocation(line: 323, column: 21, scope: !1257)
!2327 = !DILocation(line: 323, column: 25, scope: !1257)
!2328 = !DILocation(line: 323, column: 15, scope: !1257)
!2329 = !DILocation(line: 323, column: 34, scope: !1257)
!2330 = !DILocation(line: 323, column: 38, scope: !1257)
!2331 = !DILocation(line: 323, column: 45, scope: !1257)
!2332 = !DILocation(line: 324, column: 21, scope: !1257)
!2333 = !DILocation(line: 324, column: 25, scope: !1257)
!2334 = !DILocation(line: 324, column: 15, scope: !1257)
!2335 = !DILocation(line: 324, column: 34, scope: !1257)
!2336 = !DILocation(line: 324, column: 38, scope: !1257)
!2337 = !DILocation(line: 324, column: 45, scope: !1257)
!2338 = !DILocation(line: 325, column: 21, scope: !1257)
!2339 = !DILocation(line: 325, column: 25, scope: !1257)
!2340 = !DILocation(line: 325, column: 15, scope: !1257)
!2341 = !DILocation(line: 325, column: 34, scope: !1257)
!2342 = !DILocation(line: 325, column: 38, scope: !1257)
!2343 = !DILocation(line: 325, column: 45, scope: !1257)
!2344 = !DILocation(line: 328, column: 20, scope: !1257)
!2345 = !DILocation(line: 328, column: 26, scope: !1257)
!2346 = !DILocation(line: 329, column: 20, scope: !1257)
!2347 = !DILocation(line: 329, column: 26, scope: !1257)
!2348 = !DILocation(line: 330, column: 20, scope: !1257)
!2349 = !DILocation(line: 330, column: 26, scope: !1257)
!2350 = !DILocation(line: 331, column: 20, scope: !1257)
!2351 = !DILocation(line: 331, column: 26, scope: !1257)
!2352 = !DILocation(line: 332, column: 20, scope: !1257)
!2353 = !DILocation(line: 332, column: 26, scope: !1257)
!2354 = !DILocation(line: 333, column: 20, scope: !1257)
!2355 = !DILocation(line: 333, column: 26, scope: !1257)
!2356 = !DILocation(line: 334, column: 20, scope: !1257)
!2357 = !DILocation(line: 334, column: 26, scope: !1257)
!2358 = !DILocation(line: 337, column: 9, scope: !1257)
!2359 = !DILocation(line: 338, column: 9, scope: !1257)
!2360 = !DILocation(line: 339, column: 9, scope: !1257)
!2361 = !DILocation(line: 340, column: 9, scope: !1257)
!2362 = !DILocation(line: 341, column: 9, scope: !1257)
!2363 = !DILocation(line: 342, column: 9, scope: !1257)
!2364 = !DILocation(line: 343, column: 9, scope: !1257)
!2365 = !DILocation(line: 344, column: 9, scope: !1257)
!2366 = !DILocation(line: 347, column: 9, scope: !1257)
!2367 = !DILocation(line: 348, column: 9, scope: !1257)
!2368 = !DILocation(line: 349, column: 9, scope: !1257)
!2369 = !DILocation(line: 350, column: 9, scope: !1257)
!2370 = !DILocation(line: 351, column: 9, scope: !1257)
!2371 = !DILocation(line: 353, column: 9, scope: !1257)
!2372 = !DILocation(line: 357, column: 3, scope: !1257)
!2373 = distinct !DISubprogram(name: "__remill_intrinsics", scope: !2374, file: !2374, line: 35, type: !95, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !1, variables: !7)
!2374 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/Intrinsics.cpp", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!2375 = !DILocation(line: 116, column: 1, scope: !2373)
!2376 = !{!2377, !2377, i64 0}
!2377 = !{!"long", !2378, i64 0}
!2378 = !{!"omnipotent char", !2379, i64 0}
!2379 = !{!"Simple C++ TBAA"}
!2380 = !{!2381, !2378, i64 2065}
!2381 = !{!"_ZTS5State", !2378, i64 16, !2382, i64 2064, !2378, i64 2080, !2383, i64 2088, !2385, i64 2112, !2387, i64 2208, !2388, i64 2480, !2389, i64 2608, !2390, i64 2736, !2378, i64 2760, !2378, i64 2768, !2391, i64 3280}
!2382 = !{!"_ZTS10ArithFlags", !2378, i64 0, !2378, i64 1, !2378, i64 2, !2378, i64 3, !2378, i64 4, !2378, i64 5, !2378, i64 6, !2378, i64 7, !2378, i64 8, !2378, i64 9, !2378, i64 10, !2378, i64 11, !2378, i64 12, !2378, i64 13, !2378, i64 14, !2378, i64 15}
!2383 = !{!"_ZTS8Segments", !2384, i64 0, !2378, i64 2, !2384, i64 4, !2378, i64 6, !2384, i64 8, !2378, i64 10, !2384, i64 12, !2378, i64 14, !2384, i64 16, !2378, i64 18, !2384, i64 20, !2378, i64 22}
!2384 = !{!"short", !2378, i64 0}
!2385 = !{!"_ZTS12AddressSpace", !2377, i64 0, !2386, i64 8, !2377, i64 16, !2386, i64 24, !2377, i64 32, !2386, i64 40, !2377, i64 48, !2386, i64 56, !2377, i64 64, !2386, i64 72, !2377, i64 80, !2386, i64 88}
!2386 = !{!"_ZTS3Reg", !2378, i64 0}
!2387 = !{!"_ZTS3GPR", !2377, i64 0, !2386, i64 8, !2377, i64 16, !2386, i64 24, !2377, i64 32, !2386, i64 40, !2377, i64 48, !2386, i64 56, !2377, i64 64, !2386, i64 72, !2377, i64 80, !2386, i64 88, !2377, i64 96, !2386, i64 104, !2377, i64 112, !2386, i64 120, !2377, i64 128, !2386, i64 136, !2377, i64 144, !2386, i64 152, !2377, i64 160, !2386, i64 168, !2377, i64 176, !2386, i64 184, !2377, i64 192, !2386, i64 200, !2377, i64 208, !2386, i64 216, !2377, i64 224, !2386, i64 232, !2377, i64 240, !2386, i64 248, !2377, i64 256, !2386, i64 264}
!2388 = !{!"_ZTS8X87Stack", !2378, i64 0}
!2389 = !{!"_ZTS3MMX", !2378, i64 0}
!2390 = !{!"_ZTS14FPUStatusFlags", !2378, i64 0, !2378, i64 1, !2378, i64 2, !2378, i64 3, !2378, i64 4, !2378, i64 5, !2378, i64 6, !2378, i64 7, !2378, i64 8, !2378, i64 9, !2378, i64 10, !2378, i64 11, !2378, i64 12, !2378, i64 13, !2378, i64 14, !2378, i64 15, !2378, i64 16, !2378, i64 17, !2378, i64 18, !2378, i64 19, !2378, i64 20}
!2391 = !{!"_ZTS13SegmentCaches", !2392, i64 0, !2392, i64 16, !2392, i64 32, !2392, i64 48, !2392, i64 64, !2392, i64 80}
!2392 = !{!"_ZTS13SegmentShadow", !2378, i64 0, !2393, i64 8, !2393, i64 12}
!2393 = !{!"int", !2378, i64 0}
!2394 = !{!2381, !2378, i64 2067}
!2395 = !{!2381, !2378, i64 2069}
!2396 = !{!2381, !2378, i64 2071}
!2397 = !{!2381, !2378, i64 2073}
!2398 = !{!2381, !2378, i64 2077}
!2399 = !{!2378, !2378, i64 0}
