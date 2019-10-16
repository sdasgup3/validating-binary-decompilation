; ModuleID = '../binary/test.mcsema.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400448__init_type = type <{ [23 x i8] }>
%seg_400460__plt_type = type <{ [64 x i8] }>
%seg_4004a0__text_type = type <{ [1154 x i8] }>
%seg_400924__fini_type = type <{ [9 x i8] }>
%seg_400930__rodata_type = type <{ [192 x i8], [3 x i8], [40 x i8], [11 x i8], [10 x i8], [19 x i8], [10 x i8] }>
%seg_400a50__eh_frame_hdr_type = type <{ [68 x i8] }>
%seg_400a98__eh_frame_type = type <{ [280 x i8] }>
%seg_600e00__init_array_type = type <{ i64, i64 }>
%seg_600ff0__got_type = type <{ i64, i64 }>
%seg_601000__got_plt_type = type <{ [24 x i8], i64, i64, i64 }>
%seg_601030__data_type = type <{ [16 x i8] }>
%maze_type = type <{ [77 x i8] }>
%__bss_start_type = type <{ [3 x i8] }>
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
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.uint64v4_t = type { [4 x i64] }

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
@seg_400448__init = internal constant %seg_400448__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\A5\0B \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400460__plt = internal constant %seg_400460__plt_type <{ [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\A2\0B \00\00\00\00\00\00\00\00\00\00\00\FF%\9A\0B \00\00\00\00\00\00\00\00\00\00\00\FF%\92\0B \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_4004a0__text = internal constant %seg_4004a0__text_type <{ [1154 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0 \09@\00H\C7\C1\B0\08@\00H\C7\C7@\06@\00\FF\15&\0B \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8\90\10`\00H=\90\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF\90\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE\90\10`\00UH\81\EE\90\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF\90\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=6\0B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05$\0B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \C7E\FC\00\00\00\00\83}\FC\07\0F\8Dr\00\00\00\C7E\F8\00\00\00\00\83}\F8\0B\0F\8D?\00\00\00H\BF\F0\09@\00\00\00\00\00H\B8@\10`\00\00\00\00\00HcM\FCHk\C9\0BH\01\C8HcM\F8\0F\BE4\08\B0\00\E8\88\FE\FF\FF\89E\F4\8BE\F8\83\C0\01\89E\F8\E9\B7\FF\FF\FFH\BFA\0A@\00\00\00\00\00\B0\00\E8f\FE\FF\FF\89E\F0\8BE\FC\83\C0\01\89E\FC\E9\84\FF\FF\FFH\BFA\0A@\00\00\00\00\00\B0\00\E8D\FE\FF\FF\89E\ECH\83\C4 ]\C3ff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\ECp1\C0\B9\1C\00\00\00\89\CAL\8DE\C0I\B9@\10`\00\00\00\00\00\C7E\FC\00\00\00\00\89}\F8H\89u\F0\C7E\DC\00\00\00\00\C7E\EC\01\00\00\00\C7E\E8\01\00\00\00Hcu\E8Hk\F6\0BI\01\F1Hcu\ECA\C6\041X\89\C7L\89\C6\E8\E0\FD\FF\FFH\89E\B8\83}\DC\1C\0F\8D\D9\01\00\00\8BE\EC\89E\E4\8BE\E8\89E\E0HcM\DC\0F\BED\0D\C0\83\C0\9F\89\C1\83\E8\16H\89M\B0\89E\AC\0F\87F\00\00\00H\8BE\B0H\8B\0C\C58\09@\00\FF\E1\8BE\E8\83\C0\FF\89E\E8\E9\5C\00\00\00\8BE\E8\83\C0\01\89E\E8\E9N\00\00\00\8BE\EC\83\C0\FF\89E\EC\E9@\00\00\00\8BE\EC\83\C0\01\89E\EC\E92\00\00\00H\BF\F3\09@\00\00\00\00\00\B0\00\E8A\FD\FF\FFH\BF\1B\0A@\00\00\00\00\00\89E\A8\B0\00\E8-\FD\FF\FF\BF\FF\FF\FF\FF\89E\A4\E8@\FD\FF\FFH\B8@\10`\00\00\00\00\00HcM\E8Hk\C9\0BH\01\C8HcM\EC\0F\BE\14\08\83\FA#\0F\853\00\00\00H\BF&\0A@\00\00\00\00\00\B0\00\E8\E9\FC\FF\FFH\BF0\0A@\00\00\00\00\00H\8Du\C0\89E\A0\B0\00\E8\D1\FC\FF\FF1\FF\89E\9C\E8\E7\FC\FF\FFH\B8@\10`\00\00\00\00\00HcM\E8Hk\C9\0BH\01\C8HcM\EC\0F\BE\14\08\83\FA \0F\84P\00\00\00\83}\E8\02\0F\85:\00\00\00H\B8@\10`\00\00\00\00\00HcM\E8Hk\C9\0BH\01\C8HcM\EC\0F\BE\14\08\83\FA|\0F\85\14\00\00\00\83}\EC\00\0F\8E\0A\00\00\00\83}\EC\0B\0F\8C\0C\00\00\00\8BE\E4\89E\EC\8BE\E0\89E\E8\8BE\E4;E\EC\0F\85,\00\00\00\8BE\E0;E\E8\0F\85 \00\00\00H\BFC\0A@\00\00\00\00\00\B0\00\E8(\FC\FF\FF\C7E\FC\02\00\00\00\89E\98\E9K\00\00\00H\B8@\10`\00\00\00\00\00HcM\E8Hk\C9\0BH\01\C8HcM\EC\C6\04\08X\E8\17\FD\FF\FF\8BU\DC\83\C2\01\89U\DC\E9\1D\FE\FF\FFH\BFC\0A@\00\00\00\00\00\B0\00\E8\D8\FB\FF\FF\C7E\FC\01\00\00\00\89E\94\8BE\FCH\83\C4p]\C3\0F\1FD\00\00AWAVI\89\D7AUATL\8D%>\05 \00UH\8D->\05 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8g\FB\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_400924__fini = internal constant %seg_400924__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400930__rodata = internal constant %seg_400930__rodata_type <{ [192 x i8] c"\01\00\02\00\00\00\00\00\02\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\10\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\F4\06@\00\00\00\00\00\1E\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\1E\07@\00\00\00\00\00\E6\06@\00\00\00\00\00", [3 x i8] c"%c\00", [40 x i8] c"Wrong command!(only w,s,a,d accepted!)\0A\00", [11 x i8] c"You lose!\0A\00", [10 x i8] c"You win!\0A\00", [19 x i8] c"Your solution:%s \0A\00", [10 x i8] c"You lose\0A\00" }>
@seg_400a50__eh_frame_hdr = internal constant %seg_400a50__eh_frame_hdr_type <{ [68 x i8] c"\01\1B\03;D\00\00\00\07\00\00\00\10\FA\FF\FF\A0\00\00\00P\FA\FF\FF`\00\00\00\80\FA\FF\FF\8C\00\00\00@\FB\FF\FF\C8\00\00\00\F0\FB\FF\FF\E4\00\00\00`\FE\FF\FF\00\01\00\00\D0\FE\FF\FFH\01\00\00" }>
@seg_400a98__eh_frame = internal constant %seg_400a98__eh_frame_type <{ [280 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00\E8\F9\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00\EC\F9\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00h\F9\FF\FF@\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00p\FA\FF\FF\A5\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\04\FB\FF\FFk\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00D\00\00\00\90\00\00\00X\FD\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\D8\00\00\00\80\FD\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_600e00__init_array = internal global %seg_600e00__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400580_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400550___do_global_dtors_aux to i64) }>
@seg_600ff0__got = internal global %seg_600ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_601000__got_plt = internal global %seg_601000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 ptrtoint (i64 (i64, i64, i64)* @read to i64), i64 ptrtoint (i64 (i64)* @exit to i64) }>
@seg_601030__data = internal global %seg_601030__data_type zeroinitializer
@maze = global %maze_type <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400580_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400550___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400920___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4008b0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @draw_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

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

; Function Attrs: noinline nounwind optnone
define %struct.Memory* @__remill_basic_block(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #8 !dbg !1261 {
  %state = alloca %struct.State*, align 8
  %curr_pc = alloca i64, align 8
  %memory = alloca %struct.Memory*, align 8
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
  store %struct.State* %0, %struct.State** %state, align 8
  store i64 %1, i64* %curr_pc, align 8
  store %struct.Memory* %2, %struct.Memory** %memory, align 8
  store i8 0, i8* %BRANCH_TAKEN, align 1, !dbg !1952
  store i64 0, i64* %SS_BASE, align 8, !dbg !1953
  store i64 0, i64* %ES_BASE, align 8, !dbg !1954
  store i64 0, i64* %DS_BASE, align 8, !dbg !1955
  store i64 0, i64* %CS_BASE, align 8, !dbg !1956
  store %struct.State* %0, %struct.State** %STATE, align 8, !dbg !1957
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8, !dbg !1958
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1959
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33, !dbg !1960
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0, !dbg !1961
  %PC = bitcast %union.anon* %6 to i64*, !dbg !1961
  store i64 %1, i64* %PC, align 8, !dbg !1962
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1963
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 1, !dbg !1964
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0, !dbg !1965
  %10 = bitcast %union.anon* %9 to %struct.anon.2*, !dbg !1965
  %AH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 1, !dbg !1966
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1967
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 3, !dbg !1968
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0, !dbg !1969
  %14 = bitcast %union.anon* %13 to %struct.anon.2*, !dbg !1969
  %BH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %14, i32 0, i32 1, !dbg !1970
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1971
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 5, !dbg !1972
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0, !dbg !1973
  %18 = bitcast %union.anon* %17 to %struct.anon.2*, !dbg !1973
  %CH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 1, !dbg !1974
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1975
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 7, !dbg !1976
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0, !dbg !1977
  %22 = bitcast %union.anon* %21 to %struct.anon.2*, !dbg !1977
  %DH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %22, i32 0, i32 1, !dbg !1978
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1979
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 1, !dbg !1980
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0, !dbg !1981
  %26 = bitcast %union.anon* %25 to %struct.anon.2*, !dbg !1981
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %26, i32 0, i32 0, !dbg !1982
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1983
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 3, !dbg !1984
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0, !dbg !1985
  %30 = bitcast %union.anon* %29 to %struct.anon.2*, !dbg !1985
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %30, i32 0, i32 0, !dbg !1986
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1987
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 5, !dbg !1988
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0, !dbg !1989
  %34 = bitcast %union.anon* %33 to %struct.anon.2*, !dbg !1989
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %34, i32 0, i32 0, !dbg !1990
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1991
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 7, !dbg !1992
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0, !dbg !1993
  %38 = bitcast %union.anon* %37 to %struct.anon.2*, !dbg !1993
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %38, i32 0, i32 0, !dbg !1994
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1995
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 9, !dbg !1996
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0, !dbg !1997
  %42 = bitcast %union.anon* %41 to %struct.anon.2*, !dbg !1997
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %42, i32 0, i32 0, !dbg !1998
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1999
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 11, !dbg !2000
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0, !dbg !2001
  %46 = bitcast %union.anon* %45 to %struct.anon.2*, !dbg !2001
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %46, i32 0, i32 0, !dbg !2002
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2003
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 13, !dbg !2004
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0, !dbg !2005
  %50 = bitcast %union.anon* %49 to %struct.anon.2*, !dbg !2005
  %SPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %50, i32 0, i32 0, !dbg !2006
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2007
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15, !dbg !2008
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0, !dbg !2009
  %54 = bitcast %union.anon* %53 to %struct.anon.2*, !dbg !2009
  %BPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %54, i32 0, i32 0, !dbg !2010
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2011
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 17, !dbg !2012
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0, !dbg !2013
  %58 = bitcast %union.anon* %57 to %struct.anon.2*, !dbg !2013
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %58, i32 0, i32 0, !dbg !2014
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2015
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 19, !dbg !2016
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0, !dbg !2017
  %62 = bitcast %union.anon* %61 to %struct.anon.2*, !dbg !2017
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %62, i32 0, i32 0, !dbg !2018
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2019
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 21, !dbg !2020
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0, !dbg !2021
  %66 = bitcast %union.anon* %65 to %struct.anon.2*, !dbg !2021
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %66, i32 0, i32 0, !dbg !2022
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2023
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 23, !dbg !2024
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0, !dbg !2025
  %70 = bitcast %union.anon* %69 to %struct.anon.2*, !dbg !2025
  %R11B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %70, i32 0, i32 0, !dbg !2026
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2027
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 25, !dbg !2028
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0, !dbg !2029
  %74 = bitcast %union.anon* %73 to %struct.anon.2*, !dbg !2029
  %R12B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %74, i32 0, i32 0, !dbg !2030
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2031
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 27, !dbg !2032
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0, !dbg !2033
  %78 = bitcast %union.anon* %77 to %struct.anon.2*, !dbg !2033
  %R13B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %78, i32 0, i32 0, !dbg !2034
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2035
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 29, !dbg !2036
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0, !dbg !2037
  %82 = bitcast %union.anon* %81 to %struct.anon.2*, !dbg !2037
  %R14B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %82, i32 0, i32 0, !dbg !2038
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2039
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 31, !dbg !2040
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0, !dbg !2041
  %86 = bitcast %union.anon* %85 to %struct.anon.2*, !dbg !2041
  %R15B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %86, i32 0, i32 0, !dbg !2042
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2043
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 1, !dbg !2044
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0, !dbg !2045
  %AX = bitcast %union.anon* %89 to i16*, !dbg !2045
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2046
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 3, !dbg !2047
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0, !dbg !2048
  %BX = bitcast %union.anon* %92 to i16*, !dbg !2048
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2049
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 5, !dbg !2050
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0, !dbg !2051
  %CX = bitcast %union.anon* %95 to i16*, !dbg !2051
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2052
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 7, !dbg !2053
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0, !dbg !2054
  %DX = bitcast %union.anon* %98 to i16*, !dbg !2054
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2055
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 9, !dbg !2056
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0, !dbg !2057
  %SI = bitcast %union.anon* %101 to i16*, !dbg !2057
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2058
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 11, !dbg !2059
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0, !dbg !2060
  %DI = bitcast %union.anon* %104 to i16*, !dbg !2060
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2061
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 13, !dbg !2062
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0, !dbg !2063
  %SP = bitcast %union.anon* %107 to i16*, !dbg !2063
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2064
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15, !dbg !2065
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0, !dbg !2066
  %BP = bitcast %union.anon* %110 to i16*, !dbg !2066
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2067
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 17, !dbg !2068
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0, !dbg !2069
  %R8W = bitcast %union.anon* %113 to i16*, !dbg !2069
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2070
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 19, !dbg !2071
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0, !dbg !2072
  %R9W = bitcast %union.anon* %116 to i16*, !dbg !2072
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2073
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 21, !dbg !2074
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0, !dbg !2075
  %R10W = bitcast %union.anon* %119 to i16*, !dbg !2075
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2076
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 23, !dbg !2077
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0, !dbg !2078
  %R11W = bitcast %union.anon* %122 to i16*, !dbg !2078
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2079
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 25, !dbg !2080
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0, !dbg !2081
  %R12W = bitcast %union.anon* %125 to i16*, !dbg !2081
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2082
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 27, !dbg !2083
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0, !dbg !2084
  %R13W = bitcast %union.anon* %128 to i16*, !dbg !2084
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2085
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 29, !dbg !2086
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0, !dbg !2087
  %R14W = bitcast %union.anon* %131 to i16*, !dbg !2087
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2088
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 31, !dbg !2089
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0, !dbg !2090
  %R15W = bitcast %union.anon* %134 to i16*, !dbg !2090
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2091
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33, !dbg !2092
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0, !dbg !2093
  %IP = bitcast %union.anon* %137 to i16*, !dbg !2093
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2094
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 1, !dbg !2095
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0, !dbg !2096
  %EAX = bitcast %union.anon* %140 to i32*, !dbg !2096
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2097
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 3, !dbg !2098
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0, !dbg !2099
  %EBX = bitcast %union.anon* %143 to i32*, !dbg !2099
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2100
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 5, !dbg !2101
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0, !dbg !2102
  %ECX = bitcast %union.anon* %146 to i32*, !dbg !2102
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2103
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 7, !dbg !2104
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0, !dbg !2105
  %EDX = bitcast %union.anon* %149 to i32*, !dbg !2105
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2106
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 9, !dbg !2107
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0, !dbg !2108
  %ESI = bitcast %union.anon* %152 to i32*, !dbg !2108
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2109
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 11, !dbg !2110
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0, !dbg !2111
  %EDI = bitcast %union.anon* %155 to i32*, !dbg !2111
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2112
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 13, !dbg !2113
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0, !dbg !2114
  %ESP = bitcast %union.anon* %158 to i32*, !dbg !2114
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2115
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15, !dbg !2116
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0, !dbg !2117
  %EBP = bitcast %union.anon* %161 to i32*, !dbg !2117
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2118
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33, !dbg !2119
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0, !dbg !2120
  %EIP = bitcast %union.anon* %164 to i32*, !dbg !2120
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2121
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 17, !dbg !2122
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0, !dbg !2123
  %R8D = bitcast %union.anon* %167 to i32*, !dbg !2123
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2124
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 19, !dbg !2125
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0, !dbg !2126
  %R9D = bitcast %union.anon* %170 to i32*, !dbg !2126
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2127
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 21, !dbg !2128
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0, !dbg !2129
  %R10D = bitcast %union.anon* %173 to i32*, !dbg !2129
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2130
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 23, !dbg !2131
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0, !dbg !2132
  %R11D = bitcast %union.anon* %176 to i32*, !dbg !2132
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2133
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 25, !dbg !2134
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0, !dbg !2135
  %R12D = bitcast %union.anon* %179 to i32*, !dbg !2135
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2136
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 27, !dbg !2137
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0, !dbg !2138
  %R13D = bitcast %union.anon* %182 to i32*, !dbg !2138
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2139
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 29, !dbg !2140
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0, !dbg !2141
  %R14D = bitcast %union.anon* %185 to i32*, !dbg !2141
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2142
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 31, !dbg !2143
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0, !dbg !2144
  %R15D = bitcast %union.anon* %188 to i32*, !dbg !2144
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2145
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 1, !dbg !2146
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0, !dbg !2147
  %RAX = bitcast %union.anon* %191 to i64*, !dbg !2147
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2148
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 3, !dbg !2149
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0, !dbg !2150
  %RBX = bitcast %union.anon* %194 to i64*, !dbg !2150
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2151
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 5, !dbg !2152
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0, !dbg !2153
  %RCX = bitcast %union.anon* %197 to i64*, !dbg !2153
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2154
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 7, !dbg !2155
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0, !dbg !2156
  %RDX = bitcast %union.anon* %200 to i64*, !dbg !2156
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2157
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 9, !dbg !2158
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0, !dbg !2159
  %RSI = bitcast %union.anon* %203 to i64*, !dbg !2159
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2160
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 11, !dbg !2161
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0, !dbg !2162
  %RDI = bitcast %union.anon* %206 to i64*, !dbg !2162
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2163
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 13, !dbg !2164
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0, !dbg !2165
  %RSP = bitcast %union.anon* %209 to i64*, !dbg !2165
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2166
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15, !dbg !2167
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0, !dbg !2168
  %RBP = bitcast %union.anon* %212 to i64*, !dbg !2168
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2169
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 17, !dbg !2170
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0, !dbg !2171
  %R8 = bitcast %union.anon* %215 to i64*, !dbg !2171
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2172
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 19, !dbg !2173
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0, !dbg !2174
  %R9 = bitcast %union.anon* %218 to i64*, !dbg !2174
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2175
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 21, !dbg !2176
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0, !dbg !2177
  %R10 = bitcast %union.anon* %221 to i64*, !dbg !2177
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2178
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 23, !dbg !2179
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0, !dbg !2180
  %R11 = bitcast %union.anon* %224 to i64*, !dbg !2180
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2181
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 25, !dbg !2182
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0, !dbg !2183
  %R12 = bitcast %union.anon* %227 to i64*, !dbg !2183
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2184
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 27, !dbg !2185
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0, !dbg !2186
  %R13 = bitcast %union.anon* %230 to i64*, !dbg !2186
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2187
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 29, !dbg !2188
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0, !dbg !2189
  %R14 = bitcast %union.anon* %233 to i64*, !dbg !2189
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2190
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 31, !dbg !2191
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0, !dbg !2192
  %R15 = bitcast %union.anon* %236 to i64*, !dbg !2192
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2193
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33, !dbg !2194
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0, !dbg !2195
  %RIP = bitcast %union.anon* %239 to i64*, !dbg !2195
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2196
  %241 = getelementptr inbounds %struct.Segments, %struct.Segments* %240, i32 0, i32 1, !dbg !2197
  %SS = bitcast %union.SegmentSelector* %241 to i16*, !dbg !2198
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2199
  %243 = getelementptr inbounds %struct.Segments, %struct.Segments* %242, i32 0, i32 3, !dbg !2200
  %ES = bitcast %union.SegmentSelector* %243 to i16*, !dbg !2201
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2202
  %245 = getelementptr inbounds %struct.Segments, %struct.Segments* %244, i32 0, i32 5, !dbg !2203
  %GS = bitcast %union.SegmentSelector* %245 to i16*, !dbg !2204
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2205
  %247 = getelementptr inbounds %struct.Segments, %struct.Segments* %246, i32 0, i32 7, !dbg !2206
  %FS = bitcast %union.SegmentSelector* %247 to i16*, !dbg !2207
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2208
  %249 = getelementptr inbounds %struct.Segments, %struct.Segments* %248, i32 0, i32 9, !dbg !2209
  %DS = bitcast %union.SegmentSelector* %249 to i16*, !dbg !2210
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2211
  %251 = getelementptr inbounds %struct.Segments, %struct.Segments* %250, i32 0, i32 11, !dbg !2212
  %CS = bitcast %union.SegmentSelector* %251 to i16*, !dbg !2213
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5, !dbg !2214
  %253 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %252, i32 0, i32 5, !dbg !2215
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0, !dbg !2216
  %GS_BASE = bitcast %union.anon* %254 to i64*, !dbg !2216
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5, !dbg !2217
  %256 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %255, i32 0, i32 7, !dbg !2218
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0, !dbg !2219
  %FS_BASE = bitcast %union.anon* %257 to i64*, !dbg !2219
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2220
  %259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %258, i64 0, i64 0, !dbg !2221
  %YMM0 = bitcast %union.VectorReg* %259 to %"class.std::bitset"*, !dbg !2222
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2223
  %261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %260, i64 0, i64 1, !dbg !2224
  %YMM1 = bitcast %union.VectorReg* %261 to %"class.std::bitset"*, !dbg !2225
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2226
  %263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %262, i64 0, i64 2, !dbg !2227
  %YMM2 = bitcast %union.VectorReg* %263 to %"class.std::bitset"*, !dbg !2228
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2229
  %265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %264, i64 0, i64 3, !dbg !2230
  %YMM3 = bitcast %union.VectorReg* %265 to %"class.std::bitset"*, !dbg !2231
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2232
  %267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %266, i64 0, i64 4, !dbg !2233
  %YMM4 = bitcast %union.VectorReg* %267 to %"class.std::bitset"*, !dbg !2234
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2235
  %269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %268, i64 0, i64 5, !dbg !2236
  %YMM5 = bitcast %union.VectorReg* %269 to %"class.std::bitset"*, !dbg !2237
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2238
  %271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %270, i64 0, i64 6, !dbg !2239
  %YMM6 = bitcast %union.VectorReg* %271 to %"class.std::bitset"*, !dbg !2240
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2241
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %272, i64 0, i64 7, !dbg !2242
  %YMM7 = bitcast %union.VectorReg* %273 to %"class.std::bitset"*, !dbg !2243
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2244
  %275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %274, i64 0, i64 8, !dbg !2245
  %YMM8 = bitcast %union.VectorReg* %275 to %"class.std::bitset"*, !dbg !2246
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2247
  %277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %276, i64 0, i64 9, !dbg !2248
  %YMM9 = bitcast %union.VectorReg* %277 to %"class.std::bitset"*, !dbg !2249
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2250
  %279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %278, i64 0, i64 10, !dbg !2251
  %YMM10 = bitcast %union.VectorReg* %279 to %"class.std::bitset"*, !dbg !2252
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2253
  %281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %280, i64 0, i64 11, !dbg !2254
  %YMM11 = bitcast %union.VectorReg* %281 to %"class.std::bitset"*, !dbg !2255
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2256
  %283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %282, i64 0, i64 12, !dbg !2257
  %YMM12 = bitcast %union.VectorReg* %283 to %"class.std::bitset"*, !dbg !2258
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2259
  %285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %284, i64 0, i64 13, !dbg !2260
  %YMM13 = bitcast %union.VectorReg* %285 to %"class.std::bitset"*, !dbg !2261
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2262
  %287 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %286, i64 0, i64 14, !dbg !2263
  %YMM14 = bitcast %union.VectorReg* %287 to %"class.std::bitset"*, !dbg !2264
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2265
  %289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %288, i64 0, i64 15, !dbg !2266
  %YMM15 = bitcast %union.VectorReg* %289 to %"class.std::bitset"*, !dbg !2267
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2268
  %291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %290, i64 0, i64 0, !dbg !2269
  %XMM0 = bitcast %union.VectorReg* %291 to %union.vec128_t*, !dbg !2270
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2271
  %293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %292, i64 0, i64 1, !dbg !2272
  %XMM1 = bitcast %union.VectorReg* %293 to %union.vec128_t*, !dbg !2273
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2274
  %295 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %294, i64 0, i64 2, !dbg !2275
  %XMM2 = bitcast %union.VectorReg* %295 to %union.vec128_t*, !dbg !2276
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2277
  %297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %296, i64 0, i64 3, !dbg !2278
  %XMM3 = bitcast %union.VectorReg* %297 to %union.vec128_t*, !dbg !2279
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2280
  %299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %298, i64 0, i64 4, !dbg !2281
  %XMM4 = bitcast %union.VectorReg* %299 to %union.vec128_t*, !dbg !2282
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2283
  %301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %300, i64 0, i64 5, !dbg !2284
  %XMM5 = bitcast %union.VectorReg* %301 to %union.vec128_t*, !dbg !2285
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2286
  %303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 6, !dbg !2287
  %XMM6 = bitcast %union.VectorReg* %303 to %union.vec128_t*, !dbg !2288
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2289
  %305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %304, i64 0, i64 7, !dbg !2290
  %XMM7 = bitcast %union.VectorReg* %305 to %union.vec128_t*, !dbg !2291
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2292
  %307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %306, i64 0, i64 8, !dbg !2293
  %XMM8 = bitcast %union.VectorReg* %307 to %union.vec128_t*, !dbg !2294
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2295
  %309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %308, i64 0, i64 9, !dbg !2296
  %XMM9 = bitcast %union.VectorReg* %309 to %union.vec128_t*, !dbg !2297
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2298
  %311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %310, i64 0, i64 10, !dbg !2299
  %XMM10 = bitcast %union.VectorReg* %311 to %union.vec128_t*, !dbg !2300
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2301
  %313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %312, i64 0, i64 11, !dbg !2302
  %XMM11 = bitcast %union.VectorReg* %313 to %union.vec128_t*, !dbg !2303
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2304
  %315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %314, i64 0, i64 12, !dbg !2305
  %XMM12 = bitcast %union.VectorReg* %315 to %union.vec128_t*, !dbg !2306
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2307
  %317 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %316, i64 0, i64 13, !dbg !2308
  %XMM13 = bitcast %union.VectorReg* %317 to %union.vec128_t*, !dbg !2309
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2310
  %319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %318, i64 0, i64 14, !dbg !2311
  %XMM14 = bitcast %union.VectorReg* %319 to %union.vec128_t*, !dbg !2312
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2313
  %321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %320, i64 0, i64 15, !dbg !2314
  %XMM15 = bitcast %union.VectorReg* %321 to %union.vec128_t*, !dbg !2315
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2316
  %323 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %322, i32 0, i32 0, !dbg !2317
  %324 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %323, i64 0, i64 0, !dbg !2318
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %324, i32 0, i32 1, !dbg !2319
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2320
  %326 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %325, i32 0, i32 0, !dbg !2321
  %327 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %326, i64 0, i64 1, !dbg !2322
  %ST1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %327, i32 0, i32 1, !dbg !2323
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2324
  %329 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %328, i32 0, i32 0, !dbg !2325
  %330 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %329, i64 0, i64 2, !dbg !2326
  %ST2 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %330, i32 0, i32 1, !dbg !2327
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2328
  %332 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %331, i32 0, i32 0, !dbg !2329
  %333 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %332, i64 0, i64 3, !dbg !2330
  %ST3 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %333, i32 0, i32 1, !dbg !2331
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2332
  %335 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %334, i32 0, i32 0, !dbg !2333
  %336 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %335, i64 0, i64 4, !dbg !2334
  %ST4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %336, i32 0, i32 1, !dbg !2335
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2336
  %338 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %337, i32 0, i32 0, !dbg !2337
  %339 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %338, i64 0, i64 5, !dbg !2338
  %ST5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %339, i32 0, i32 1, !dbg !2339
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2340
  %341 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %340, i32 0, i32 0, !dbg !2341
  %342 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %341, i64 0, i64 6, !dbg !2342
  %ST6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %342, i32 0, i32 1, !dbg !2343
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2344
  %344 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %343, i32 0, i32 0, !dbg !2345
  %345 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %344, i64 0, i64 7, !dbg !2346
  %ST7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %345, i32 0, i32 1, !dbg !2347
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2348
  %347 = getelementptr inbounds %struct.MMX, %struct.MMX* %346, i32 0, i32 0, !dbg !2349
  %348 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %347, i64 0, i64 0, !dbg !2350
  %349 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %348, i32 0, i32 1, !dbg !2351
  %350 = bitcast %union.vec64_t* %349 to %struct.uint64v1_t*, !dbg !2352
  %351 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %350, i32 0, i32 0, !dbg !2353
  %MM0 = getelementptr inbounds [1 x i64], [1 x i64]* %351, i64 0, i64 0, !dbg !2350
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2354
  %353 = getelementptr inbounds %struct.MMX, %struct.MMX* %352, i32 0, i32 0, !dbg !2355
  %354 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %353, i64 0, i64 1, !dbg !2356
  %355 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %354, i32 0, i32 1, !dbg !2357
  %356 = bitcast %union.vec64_t* %355 to %struct.uint64v1_t*, !dbg !2358
  %357 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %356, i32 0, i32 0, !dbg !2359
  %MM1 = getelementptr inbounds [1 x i64], [1 x i64]* %357, i64 0, i64 0, !dbg !2356
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2360
  %359 = getelementptr inbounds %struct.MMX, %struct.MMX* %358, i32 0, i32 0, !dbg !2361
  %360 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %359, i64 0, i64 2, !dbg !2362
  %361 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %360, i32 0, i32 1, !dbg !2363
  %362 = bitcast %union.vec64_t* %361 to %struct.uint64v1_t*, !dbg !2364
  %363 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %362, i32 0, i32 0, !dbg !2365
  %MM2 = getelementptr inbounds [1 x i64], [1 x i64]* %363, i64 0, i64 0, !dbg !2362
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2366
  %365 = getelementptr inbounds %struct.MMX, %struct.MMX* %364, i32 0, i32 0, !dbg !2367
  %366 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %365, i64 0, i64 3, !dbg !2368
  %367 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %366, i32 0, i32 1, !dbg !2369
  %368 = bitcast %union.vec64_t* %367 to %struct.uint64v1_t*, !dbg !2370
  %369 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %368, i32 0, i32 0, !dbg !2371
  %MM3 = getelementptr inbounds [1 x i64], [1 x i64]* %369, i64 0, i64 0, !dbg !2368
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2372
  %371 = getelementptr inbounds %struct.MMX, %struct.MMX* %370, i32 0, i32 0, !dbg !2373
  %372 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %371, i64 0, i64 4, !dbg !2374
  %373 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %372, i32 0, i32 1, !dbg !2375
  %374 = bitcast %union.vec64_t* %373 to %struct.uint64v1_t*, !dbg !2376
  %375 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %374, i32 0, i32 0, !dbg !2377
  %MM4 = getelementptr inbounds [1 x i64], [1 x i64]* %375, i64 0, i64 0, !dbg !2374
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2378
  %377 = getelementptr inbounds %struct.MMX, %struct.MMX* %376, i32 0, i32 0, !dbg !2379
  %378 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %377, i64 0, i64 5, !dbg !2380
  %379 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %378, i32 0, i32 1, !dbg !2381
  %380 = bitcast %union.vec64_t* %379 to %struct.uint64v1_t*, !dbg !2382
  %381 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %380, i32 0, i32 0, !dbg !2383
  %MM5 = getelementptr inbounds [1 x i64], [1 x i64]* %381, i64 0, i64 0, !dbg !2380
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2384
  %383 = getelementptr inbounds %struct.MMX, %struct.MMX* %382, i32 0, i32 0, !dbg !2385
  %384 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %383, i64 0, i64 6, !dbg !2386
  %385 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %384, i32 0, i32 1, !dbg !2387
  %386 = bitcast %union.vec64_t* %385 to %struct.uint64v1_t*, !dbg !2388
  %387 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %386, i32 0, i32 0, !dbg !2389
  %MM6 = getelementptr inbounds [1 x i64], [1 x i64]* %387, i64 0, i64 0, !dbg !2386
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2390
  %389 = getelementptr inbounds %struct.MMX, %struct.MMX* %388, i32 0, i32 0, !dbg !2391
  %390 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %389, i64 0, i64 7, !dbg !2392
  %391 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %390, i32 0, i32 1, !dbg !2393
  %392 = bitcast %union.vec64_t* %391 to %struct.uint64v1_t*, !dbg !2394
  %393 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %392, i32 0, i32 0, !dbg !2395
  %MM7 = getelementptr inbounds [1 x i64], [1 x i64]* %393, i64 0, i64 0, !dbg !2392
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2396
  %AF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %394, i32 0, i32 5, !dbg !2397
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2398
  %CF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %395, i32 0, i32 1, !dbg !2399
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2400
  %DF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %396, i32 0, i32 11, !dbg !2401
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2402
  %OF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %397, i32 0, i32 13, !dbg !2403
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2404
  %PF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %398, i32 0, i32 3, !dbg !2405
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2406
  %SF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %399, i32 0, i32 9, !dbg !2407
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2408
  %ZF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %400, i32 0, i32 7, !dbg !2409
  store i64* @DR0, i64** %_DR0, align 8, !dbg !2410
  store i64* @DR1, i64** %_DR1, align 8, !dbg !2411
  store i64* @DR2, i64** %_DR2, align 8, !dbg !2412
  store i64* @DR3, i64** %_DR3, align 8, !dbg !2413
  store i64* @DR4, i64** %_DR4, align 8, !dbg !2414
  store i64* @DR5, i64** %_DR5, align 8, !dbg !2415
  store i64* @DR6, i64** %_DR6, align 8, !dbg !2416
  store i64* @DR7, i64** %_DR7, align 8, !dbg !2417
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0, align 8, !dbg !2418
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1, align 8, !dbg !2419
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2, align 8, !dbg !2420
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3, align 8, !dbg !2421
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4, align 8, !dbg !2422
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8, align 8, !dbg !2423
  ret %struct.Memory* %2, !dbg !2424
}

; Function Attrs: noduplicate noinline nounwind optnone
define void @__remill_intrinsics() #9 !dbg !2425 {
  ret void, !dbg !2427
}

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_barrier_load_store(%struct.Memory*) #10

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_atomic_begin(%struct.Memory*) #10

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_atomic_end(%struct.Memory*) #10

declare %struct.Memory* @__remill_fetch_and_sub_8(%struct.Memory*, i64, i8* dereferenceable(1)) #11

declare %struct.Memory* @__remill_fetch_and_sub_16(%struct.Memory*, i64, i16* dereferenceable(2)) #11

declare %struct.Memory* @__remill_fetch_and_sub_32(%struct.Memory*, i64, i32* dereferenceable(4)) #11

declare %struct.Memory* @__remill_fetch_and_sub_64(%struct.Memory*, i64, i64* dereferenceable(8)) #11

declare %struct.Memory* @__remill_fetch_and_or_8(%struct.Memory*, i64, i8* dereferenceable(1)) #11

declare %struct.Memory* @__remill_fetch_and_or_16(%struct.Memory*, i64, i16* dereferenceable(2)) #11

declare %struct.Memory* @__remill_fetch_and_or_32(%struct.Memory*, i64, i32* dereferenceable(4)) #11

declare %struct.Memory* @__remill_fetch_and_or_64(%struct.Memory*, i64, i64* dereferenceable(8)) #11

declare %struct.Memory* @__remill_fetch_and_and_8(%struct.Memory*, i64, i8* dereferenceable(1)) #11

declare %struct.Memory* @__remill_fetch_and_and_16(%struct.Memory*, i64, i16* dereferenceable(2)) #11

declare %struct.Memory* @__remill_fetch_and_and_32(%struct.Memory*, i64, i32* dereferenceable(4)) #11

declare %struct.Memory* @__remill_fetch_and_and_64(%struct.Memory*, i64, i64* dereferenceable(8)) #11

declare %struct.Memory* @__remill_fetch_and_xor_8(%struct.Memory*, i64, i8* dereferenceable(1)) #11

declare %struct.Memory* @__remill_fetch_and_xor_16(%struct.Memory*, i64, i16* dereferenceable(2)) #11

declare %struct.Memory* @__remill_fetch_and_xor_32(%struct.Memory*, i64, i32* dereferenceable(4)) #11

declare %struct.Memory* @__remill_fetch_and_xor_64(%struct.Memory*, i64, i64* dereferenceable(8)) #11

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #12

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_return(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #12

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_jump(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #12

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_missing_block(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #12

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_async_hyper_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #12

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare zeroext i16 @__remill_undefined_16() #10

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i32 @__remill_undefined_32() #10

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare float @__remill_undefined_f32() #10

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @read(i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_400710(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0
  %PC = bitcast %union.anon* %6 to i64*
  store i64 %1, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %10 = bitcast %union.anon* %9 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0
  %EAX = bitcast %union.anon* %13 to i32*
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %15 = getelementptr inbounds %struct.GPR, %struct.GPR* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %15, i32 0, i32 0
  %EDX = bitcast %union.anon* %16 to i32*
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 11
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %EDI = bitcast %union.anon* %19 to i32*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RAX = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RCX = bitcast %union.anon* %25 to i64*
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %27 = getelementptr inbounds %struct.GPR, %struct.GPR* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.Reg, %struct.Reg* %27, i32 0, i32 0
  %RDX = bitcast %union.anon* %28 to i64*
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 9
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %RSI = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RDI = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 13
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RSP = bitcast %union.anon* %37 to i64*
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %39 = getelementptr inbounds %struct.GPR, %struct.GPR* %38, i32 0, i32 15
  %40 = getelementptr inbounds %struct.Reg, %struct.Reg* %39, i32 0, i32 0
  %RBP = bitcast %union.anon* %40 to i64*
  br label %block_400710

block_4007ff:                                     ; preds = %block_4007d9
  %41 = load i64, i64* %RBP
  %42 = sub i64 %41, 20
  %43 = load i64, i64* %PC
  %44 = add i64 %43, 4
  store i64 %44, i64* %PC
  %45 = inttoptr i64 %42 to i32*
  %46 = load i32, i32* %45
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %47, align 1, !tbaa !2428
  %48 = and i32 %46, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %48) #16
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %52 = xor i8 %51, 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %52, i8* %53, align 1, !tbaa !2445
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %54, align 1, !tbaa !2446
  %55 = icmp eq i32 %46, 0
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %56, i8* %57, align 1, !tbaa !2447
  %58 = lshr i32 %46, 31
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %59, i8* %60, align 1, !tbaa !2448
  %61 = lshr i32 %46, 31
  %62 = xor i32 %58, %61
  %63 = add nuw nsw i32 %62, %61
  %64 = icmp eq i32 %63, 2
  %65 = zext i1 %64 to i8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %65, i8* %66, align 1, !tbaa !2449
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 16
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 6
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 6
  store i64 %72, i64* %PC
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %74 = load i8, i8* %73, align 1, !tbaa !2447
  %75 = icmp ne i8 %74, 0
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %77 = load i8, i8* %76, align 1, !tbaa !2448
  %78 = icmp ne i8 %77, 0
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %80 = load i8, i8* %79, align 1, !tbaa !2449
  %81 = icmp ne i8 %80, 0
  %82 = xor i1 %78, %81
  %83 = or i1 %75, %82
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %86 = select i1 %83, i64 %68, i64 %70
  store i64 %86, i64* %85, align 8, !tbaa !2451
  %87 = load i8, i8* %BRANCH_TAKEN
  %88 = icmp eq i8 %87, 1
  br i1 %88, label %block_400813, label %block_400809

block_4007d9:                                     ; preds = %block_4007cf
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 10
  store i64 %90, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %91 = load i64, i64* %RBP
  %92 = sub i64 %91, 24
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC
  %95 = inttoptr i64 %92 to i32*
  %96 = load i32, i32* %95
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %RCX, align 8, !tbaa !2451
  %98 = load i64, i64* %RCX
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 4
  store i64 %100, i64* %PC
  %101 = sext i64 %98 to i128
  %102 = and i128 %101, -18446744073709551616
  %103 = zext i64 %98 to i128
  %104 = or i128 %102, %103
  %105 = mul nsw i128 11, %104
  %106 = trunc i128 %105 to i64
  store i64 %106, i64* %RCX, align 8, !tbaa !2451
  %107 = sext i64 %106 to i128
  %108 = icmp ne i128 %107, %105
  %109 = zext i1 %108 to i8
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %109, i8* %110, align 1, !tbaa !2428
  %111 = trunc i128 %105 to i32
  %112 = and i32 %111, 255
  %113 = call i32 @llvm.ctpop.i32(i32 %112) #16
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %116, i8* %117, align 1, !tbaa !2445
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %118, align 1, !tbaa !2446
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %119, align 1, !tbaa !2447
  %120 = lshr i64 %106, 63
  %121 = trunc i64 %120 to i8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %121, i8* %122, align 1, !tbaa !2448
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %109, i8* %123, align 1, !tbaa !2449
  %124 = load i64, i64* %RAX
  %125 = load i64, i64* %RCX
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 3
  store i64 %127, i64* %PC
  %128 = add i64 %125, %124
  store i64 %128, i64* %RAX, align 8, !tbaa !2451
  %129 = icmp ult i64 %128, %124
  %130 = icmp ult i64 %128, %125
  %131 = or i1 %129, %130
  %132 = zext i1 %131 to i8
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %132, i8* %133, align 1, !tbaa !2428
  %134 = trunc i64 %128 to i32
  %135 = and i32 %134, 255
  %136 = call i32 @llvm.ctpop.i32(i32 %135) #16
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %139, i8* %140, align 1, !tbaa !2445
  %141 = xor i64 %125, %124
  %142 = xor i64 %141, %128
  %143 = lshr i64 %142, 4
  %144 = trunc i64 %143 to i8
  %145 = and i8 %144, 1
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %145, i8* %146, align 1, !tbaa !2446
  %147 = icmp eq i64 %128, 0
  %148 = zext i1 %147 to i8
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %148, i8* %149, align 1, !tbaa !2447
  %150 = lshr i64 %128, 63
  %151 = trunc i64 %150 to i8
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %151, i8* %152, align 1, !tbaa !2448
  %153 = lshr i64 %124, 63
  %154 = lshr i64 %125, 63
  %155 = xor i64 %150, %153
  %156 = xor i64 %150, %154
  %157 = add nuw nsw i64 %155, %156
  %158 = icmp eq i64 %157, 2
  %159 = zext i1 %158 to i8
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %159, i8* %160, align 1, !tbaa !2449
  %161 = load i64, i64* %RBP
  %162 = sub i64 %161, 20
  %163 = load i64, i64* %PC
  %164 = add i64 %163, 4
  store i64 %164, i64* %PC
  %165 = inttoptr i64 %162 to i32*
  %166 = load i32, i32* %165
  %167 = sext i32 %166 to i64
  store i64 %167, i64* %RCX, align 8, !tbaa !2451
  %168 = load i64, i64* %RAX
  %169 = load i64, i64* %RCX
  %170 = add i64 %169, %168
  %171 = load i64, i64* %PC
  %172 = add i64 %171, 4
  store i64 %172, i64* %PC
  %173 = inttoptr i64 %170 to i8*
  %174 = load i8, i8* %173
  %175 = sext i8 %174 to i64
  %176 = and i64 %175, 4294967295
  store i64 %176, i64* %RDX, align 8, !tbaa !2451
  %177 = load i32, i32* %EDX
  %178 = zext i32 %177 to i64
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 3
  store i64 %180, i64* %PC
  %181 = sub i32 %177, 124
  %182 = icmp ult i32 %177, 124
  %183 = zext i1 %182 to i8
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %183, i8* %184, align 1, !tbaa !2428
  %185 = and i32 %181, 255
  %186 = call i32 @llvm.ctpop.i32(i32 %185) #16
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  %189 = xor i8 %188, 1
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %189, i8* %190, align 1, !tbaa !2445
  %191 = xor i64 124, %178
  %192 = trunc i64 %191 to i32
  %193 = xor i32 %192, %181
  %194 = lshr i32 %193, 4
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %196, i8* %197, align 1, !tbaa !2446
  %198 = icmp eq i32 %181, 0
  %199 = zext i1 %198 to i8
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %199, i8* %200, align 1, !tbaa !2447
  %201 = lshr i32 %181, 31
  %202 = trunc i32 %201 to i8
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %202, i8* %203, align 1, !tbaa !2448
  %204 = lshr i32 %177, 31
  %205 = xor i32 %201, %204
  %206 = add nuw nsw i32 %205, %204
  %207 = icmp eq i32 %206, 2
  %208 = zext i1 %207 to i8
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %208, i8* %209, align 1, !tbaa !2449
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 26
  %212 = load i64, i64* %PC
  %213 = add i64 %212, 6
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 6
  store i64 %215, i64* %PC
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %217 = load i8, i8* %216, align 1, !tbaa !2447
  %218 = icmp eq i8 %217, 0
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %221 = select i1 %218, i64 %211, i64 %213
  store i64 %221, i64* %220, align 8, !tbaa !2451
  %222 = load i8, i8* %BRANCH_TAKEN
  %223 = icmp eq i8 %222, 1
  br i1 %223, label %block_400813, label %block_4007ff

block_400857:                                     ; preds = %block_40081f, %block_40082b
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.3, %block_40081f ], [ %MEMORY.3, %block_40082b ]
  %224 = load i64, i64* %PC
  %225 = add i64 %224, 10
  store i64 %225, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %226 = load i64, i64* %RBP
  %227 = sub i64 %226, 24
  %228 = load i64, i64* %PC
  %229 = add i64 %228, 4
  store i64 %229, i64* %PC
  %230 = inttoptr i64 %227 to i32*
  %231 = load i32, i32* %230
  %232 = sext i32 %231 to i64
  store i64 %232, i64* %RCX, align 8, !tbaa !2451
  %233 = load i64, i64* %RCX
  %234 = load i64, i64* %PC
  %235 = add i64 %234, 4
  store i64 %235, i64* %PC
  %236 = sext i64 %233 to i128
  %237 = and i128 %236, -18446744073709551616
  %238 = zext i64 %233 to i128
  %239 = or i128 %237, %238
  %240 = mul nsw i128 11, %239
  %241 = trunc i128 %240 to i64
  store i64 %241, i64* %RCX, align 8, !tbaa !2451
  %242 = sext i64 %241 to i128
  %243 = icmp ne i128 %242, %240
  %244 = zext i1 %243 to i8
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %244, i8* %245, align 1, !tbaa !2428
  %246 = trunc i128 %240 to i32
  %247 = and i32 %246, 255
  %248 = call i32 @llvm.ctpop.i32(i32 %247) #16
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  %251 = xor i8 %250, 1
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %251, i8* %252, align 1, !tbaa !2445
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %253, align 1, !tbaa !2446
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %254, align 1, !tbaa !2447
  %255 = lshr i64 %241, 63
  %256 = trunc i64 %255 to i8
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %256, i8* %257, align 1, !tbaa !2448
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %244, i8* %258, align 1, !tbaa !2449
  %259 = load i64, i64* %RAX
  %260 = load i64, i64* %RCX
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 3
  store i64 %262, i64* %PC
  %263 = add i64 %260, %259
  store i64 %263, i64* %RAX, align 8, !tbaa !2451
  %264 = icmp ult i64 %263, %259
  %265 = icmp ult i64 %263, %260
  %266 = or i1 %264, %265
  %267 = zext i1 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %267, i8* %268, align 1, !tbaa !2428
  %269 = trunc i64 %263 to i32
  %270 = and i32 %269, 255
  %271 = call i32 @llvm.ctpop.i32(i32 %270) #16
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  %274 = xor i8 %273, 1
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %274, i8* %275, align 1, !tbaa !2445
  %276 = xor i64 %260, %259
  %277 = xor i64 %276, %263
  %278 = lshr i64 %277, 4
  %279 = trunc i64 %278 to i8
  %280 = and i8 %279, 1
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %280, i8* %281, align 1, !tbaa !2446
  %282 = icmp eq i64 %263, 0
  %283 = zext i1 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %283, i8* %284, align 1, !tbaa !2447
  %285 = lshr i64 %263, 63
  %286 = trunc i64 %285 to i8
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %286, i8* %287, align 1, !tbaa !2448
  %288 = lshr i64 %259, 63
  %289 = lshr i64 %260, 63
  %290 = xor i64 %285, %288
  %291 = xor i64 %285, %289
  %292 = add nuw nsw i64 %290, %291
  %293 = icmp eq i64 %292, 2
  %294 = zext i1 %293 to i8
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %294, i8* %295, align 1, !tbaa !2449
  %296 = load i64, i64* %RBP
  %297 = sub i64 %296, 20
  %298 = load i64, i64* %PC
  %299 = add i64 %298, 4
  store i64 %299, i64* %PC
  %300 = inttoptr i64 %297 to i32*
  %301 = load i32, i32* %300
  %302 = sext i32 %301 to i64
  store i64 %302, i64* %RCX, align 8, !tbaa !2451
  %303 = load i64, i64* %RAX
  %304 = load i64, i64* %RCX
  %305 = add i64 %304, %303
  %306 = load i64, i64* %PC
  %307 = add i64 %306, 4
  store i64 %307, i64* %PC
  %308 = inttoptr i64 %305 to i8*
  store i8 88, i8* %308
  %309 = load i64, i64* %PC
  %310 = sub i64 %309, 740
  %311 = load i64, i64* %PC
  %312 = add i64 %311, 5
  %313 = load i64, i64* %PC
  %314 = add i64 %313, 5
  store i64 %314, i64* %PC
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %316 = load i64, i64* %315, align 8, !tbaa !2451
  %317 = add i64 %316, -8
  %318 = inttoptr i64 %317 to i64*
  store i64 %312, i64* %318
  store i64 %317, i64* %315, align 8, !tbaa !2451
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %310, i64* %319, align 8, !tbaa !2451
  %320 = load i64, i64* %PC
  %321 = call %struct.Memory* @sub_400590_draw(%struct.State* %0, i64 %320, %struct.Memory* %MEMORY.0)
  %322 = load i64, i64* %RBP
  %323 = sub i64 %322, 36
  %324 = load i64, i64* %PC
  %325 = add i64 %324, 3
  store i64 %325, i64* %PC
  %326 = inttoptr i64 %323 to i32*
  %327 = load i32, i32* %326
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RDX, align 8, !tbaa !2451
  %329 = load i64, i64* %RDX
  %330 = load i64, i64* %PC
  %331 = add i64 %330, 3
  store i64 %331, i64* %PC
  %332 = trunc i64 %329 to i32
  %333 = add i32 1, %332
  %334 = zext i32 %333 to i64
  store i64 %334, i64* %RDX, align 8, !tbaa !2451
  %335 = icmp ult i32 %333, %332
  %336 = icmp ult i32 %333, 1
  %337 = or i1 %335, %336
  %338 = zext i1 %337 to i8
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %338, i8* %339, align 1, !tbaa !2428
  %340 = and i32 %333, 255
  %341 = call i32 @llvm.ctpop.i32(i32 %340) #16
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  %344 = xor i8 %343, 1
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %344, i8* %345, align 1, !tbaa !2445
  %346 = xor i64 1, %329
  %347 = trunc i64 %346 to i32
  %348 = xor i32 %347, %333
  %349 = lshr i32 %348, 4
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %351, i8* %352, align 1, !tbaa !2446
  %353 = icmp eq i32 %333, 0
  %354 = zext i1 %353 to i8
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %354, i8* %355, align 1, !tbaa !2447
  %356 = lshr i32 %333, 31
  %357 = trunc i32 %356 to i8
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %357, i8* %358, align 1, !tbaa !2448
  %359 = lshr i32 %332, 31
  %360 = xor i32 %356, %359
  %361 = add nuw nsw i32 %360, %356
  %362 = icmp eq i32 %361, 2
  %363 = zext i1 %362 to i8
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %363, i8* %364, align 1, !tbaa !2449
  %365 = load i64, i64* %RBP
  %366 = sub i64 %365, 36
  %367 = load i32, i32* %EDX
  %368 = zext i32 %367 to i64
  %369 = load i64, i64* %PC
  %370 = add i64 %369, 3
  store i64 %370, i64* %PC
  %371 = inttoptr i64 %366 to i32*
  store i32 %367, i32* %371
  %372 = load i64, i64* %PC
  %373 = sub i64 %372, 478
  %374 = load i64, i64* %PC
  %375 = add i64 %374, 5
  store i64 %375, i64* %PC
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %373, i64* %376, align 8, !tbaa !2451
  %377 = load i64, i64* %RBP
  %378 = sub i64 %377, 36
  %379 = load i64, i64* %PC
  %380 = add i64 %379, 4
  store i64 %380, i64* %PC
  %381 = inttoptr i64 %378 to i32*
  %382 = load i32, i32* %381
  %383 = sub i32 %382, 28
  %384 = icmp ult i32 %382, 28
  %385 = zext i1 %384 to i8
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %385, i8* %386, align 1, !tbaa !2428
  %387 = and i32 %383, 255
  %388 = call i32 @llvm.ctpop.i32(i32 %387) #16
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  %391 = xor i8 %390, 1
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %391, i8* %392, align 1, !tbaa !2445
  %393 = xor i32 %382, 28
  %394 = xor i32 %393, %383
  %395 = lshr i32 %394, 4
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %397, i8* %398, align 1, !tbaa !2446
  %399 = icmp eq i32 %383, 0
  %400 = zext i1 %399 to i8
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %400, i8* %401, align 1, !tbaa !2447
  %402 = lshr i32 %383, 31
  %403 = trunc i32 %402 to i8
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %403, i8* %404, align 1, !tbaa !2448
  %405 = lshr i32 %382, 31
  %406 = xor i32 %402, %405
  %407 = add nuw nsw i32 %406, %405
  %408 = icmp eq i32 %407, 2
  %409 = zext i1 %408 to i8
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %409, i8* %410, align 1, !tbaa !2449
  %411 = load i64, i64* %PC
  %412 = add i64 %411, 479
  %413 = load i64, i64* %PC
  %414 = add i64 %413, 6
  %415 = load i64, i64* %PC
  %416 = add i64 %415, 6
  store i64 %416, i64* %PC
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %418 = load i8, i8* %417, align 1, !tbaa !2448
  %419 = icmp ne i8 %418, 0
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %421 = load i8, i8* %420, align 1, !tbaa !2449
  %422 = icmp ne i8 %421, 0
  %423 = xor i1 %419, %422
  %424 = xor i1 %423, true
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %427 = select i1 %423, i64 %414, i64 %412
  store i64 %427, i64* %426, align 8, !tbaa !2451
  %428 = load i8, i8* %BRANCH_TAKEN
  %429 = icmp eq i8 %428, 1
  br i1 %429, label %block_400887, label %block_4006ae

block_400776:                                     ; preds = %block_400750
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2451
  %430 = load i64, i64* %PC
  %431 = add i64 %430, 2
  store i64 %431, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %432 = load i64, i64* %PC
  %433 = sub i64 %432, 786
  %434 = load i64, i64* %PC
  %435 = add i64 %434, 5
  %436 = load i64, i64* %PC
  %437 = add i64 %436, 5
  store i64 %437, i64* %PC
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %439 = load i64, i64* %438, align 8, !tbaa !2451
  %440 = add i64 %439, -8
  %441 = inttoptr i64 %440 to i64*
  store i64 %435, i64* %441
  store i64 %440, i64* %438, align 8, !tbaa !2451
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %433, i64* %442, align 8, !tbaa !2451
  %443 = load i64, i64* %PC
  %444 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %443, %struct.Memory* %MEMORY.1)
  %445 = load i64, i64* %PC
  %446 = add i64 %445, 10
  store i64 %446, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2451
  %447 = load i64, i64* %RBP
  %448 = sub i64 %447, 64
  %449 = load i64, i64* %PC
  %450 = add i64 %449, 4
  store i64 %450, i64* %PC
  store i64 %448, i64* %RSI, align 8, !tbaa !2451
  %451 = load i64, i64* %RBP
  %452 = sub i64 %451, 96
  %453 = load i32, i32* %EAX
  %454 = zext i32 %453 to i64
  %455 = load i64, i64* %PC
  %456 = add i64 %455, 3
  store i64 %456, i64* %PC
  %457 = inttoptr i64 %452 to i32*
  store i32 %453, i32* %457
  %458 = load i64, i64* %PC
  %459 = add i64 %458, 2
  store i64 %459, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %460 = load i64, i64* %PC
  %461 = sub i64 %460, 810
  %462 = load i64, i64* %PC
  %463 = add i64 %462, 5
  %464 = load i64, i64* %PC
  %465 = add i64 %464, 5
  store i64 %465, i64* %PC
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %467 = load i64, i64* %466, align 8, !tbaa !2451
  %468 = add i64 %467, -8
  %469 = inttoptr i64 %468 to i64*
  store i64 %463, i64* %469
  store i64 %468, i64* %466, align 8, !tbaa !2451
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %461, i64* %470, align 8, !tbaa !2451
  %471 = load i64, i64* %PC
  %472 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %471, %struct.Memory* %444)
  %473 = load i64, i64* %RDI
  %474 = load i32, i32* %EDI
  %475 = zext i32 %474 to i64
  %476 = load i64, i64* %PC
  %477 = add i64 %476, 2
  store i64 %477, i64* %PC
  %478 = xor i64 %475, %473
  %479 = trunc i64 %478 to i32
  %480 = and i64 %478, 4294967295
  store i64 %480, i64* %RDI, align 8, !tbaa !2451
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %481, align 1, !tbaa !2428
  %482 = and i32 %479, 255
  %483 = call i32 @llvm.ctpop.i32(i32 %482) #16
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %486, i8* %487, align 1, !tbaa !2445
  %488 = icmp eq i32 %479, 0
  %489 = zext i1 %488 to i8
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %489, i8* %490, align 1, !tbaa !2447
  %491 = lshr i32 %479, 31
  %492 = trunc i32 %491 to i8
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %492, i8* %493, align 1, !tbaa !2448
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %494, align 1, !tbaa !2449
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %495, align 1, !tbaa !2446
  %496 = load i64, i64* %RBP
  %497 = sub i64 %496, 100
  %498 = load i32, i32* %EAX
  %499 = zext i32 %498 to i64
  %500 = load i64, i64* %PC
  %501 = add i64 %500, 3
  store i64 %501, i64* %PC
  %502 = inttoptr i64 %497 to i32*
  store i32 %498, i32* %502
  %503 = load i64, i64* %PC
  %504 = sub i64 %503, 788
  %505 = load i64, i64* %PC
  %506 = add i64 %505, 5
  %507 = load i64, i64* %PC
  %508 = add i64 %507, 5
  store i64 %508, i64* %PC
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %510 = load i64, i64* %509, align 8, !tbaa !2451
  %511 = add i64 %510, -8
  %512 = inttoptr i64 %511 to i64*
  store i64 %506, i64* %512
  store i64 %511, i64* %509, align 8, !tbaa !2451
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %504, i64* %513, align 8, !tbaa !2451
  %514 = load i64, i64* %PC
  %515 = call %struct.Memory* @ext_6010c8_exit(%struct.State* %0, i64 %514, %struct.Memory* %472)
  %516 = load i64, i64* %PC
  %517 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %516, %struct.Memory* %515)
  ret %struct.Memory* %517

block_400750:                                     ; preds = %block_400710, %block_4006f4
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.5, %block_400710 ], [ %321, %block_4006f4 ]
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 10
  store i64 %519, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %520 = load i64, i64* %RBP
  %521 = sub i64 %520, 24
  %522 = load i64, i64* %PC
  %523 = add i64 %522, 4
  store i64 %523, i64* %PC
  %524 = inttoptr i64 %521 to i32*
  %525 = load i32, i32* %524
  %526 = sext i32 %525 to i64
  store i64 %526, i64* %RCX, align 8, !tbaa !2451
  %527 = load i64, i64* %RCX
  %528 = load i64, i64* %PC
  %529 = add i64 %528, 4
  store i64 %529, i64* %PC
  %530 = sext i64 %527 to i128
  %531 = and i128 %530, -18446744073709551616
  %532 = zext i64 %527 to i128
  %533 = or i128 %531, %532
  %534 = mul nsw i128 11, %533
  %535 = trunc i128 %534 to i64
  store i64 %535, i64* %RCX, align 8, !tbaa !2451
  %536 = sext i64 %535 to i128
  %537 = icmp ne i128 %536, %534
  %538 = zext i1 %537 to i8
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %538, i8* %539, align 1, !tbaa !2428
  %540 = trunc i128 %534 to i32
  %541 = and i32 %540, 255
  %542 = call i32 @llvm.ctpop.i32(i32 %541) #16
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  %545 = xor i8 %544, 1
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %545, i8* %546, align 1, !tbaa !2445
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %547, align 1, !tbaa !2446
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %548, align 1, !tbaa !2447
  %549 = lshr i64 %535, 63
  %550 = trunc i64 %549 to i8
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %550, i8* %551, align 1, !tbaa !2448
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %538, i8* %552, align 1, !tbaa !2449
  %553 = load i64, i64* %RAX
  %554 = load i64, i64* %RCX
  %555 = load i64, i64* %PC
  %556 = add i64 %555, 3
  store i64 %556, i64* %PC
  %557 = add i64 %554, %553
  store i64 %557, i64* %RAX, align 8, !tbaa !2451
  %558 = icmp ult i64 %557, %553
  %559 = icmp ult i64 %557, %554
  %560 = or i1 %558, %559
  %561 = zext i1 %560 to i8
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %561, i8* %562, align 1, !tbaa !2428
  %563 = trunc i64 %557 to i32
  %564 = and i32 %563, 255
  %565 = call i32 @llvm.ctpop.i32(i32 %564) #16
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  %568 = xor i8 %567, 1
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %568, i8* %569, align 1, !tbaa !2445
  %570 = xor i64 %554, %553
  %571 = xor i64 %570, %557
  %572 = lshr i64 %571, 4
  %573 = trunc i64 %572 to i8
  %574 = and i8 %573, 1
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %574, i8* %575, align 1, !tbaa !2446
  %576 = icmp eq i64 %557, 0
  %577 = zext i1 %576 to i8
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %577, i8* %578, align 1, !tbaa !2447
  %579 = lshr i64 %557, 63
  %580 = trunc i64 %579 to i8
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %580, i8* %581, align 1, !tbaa !2448
  %582 = lshr i64 %553, 63
  %583 = lshr i64 %554, 63
  %584 = xor i64 %579, %582
  %585 = xor i64 %579, %583
  %586 = add nuw nsw i64 %584, %585
  %587 = icmp eq i64 %586, 2
  %588 = zext i1 %587 to i8
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %588, i8* %589, align 1, !tbaa !2449
  %590 = load i64, i64* %RBP
  %591 = sub i64 %590, 20
  %592 = load i64, i64* %PC
  %593 = add i64 %592, 4
  store i64 %593, i64* %PC
  %594 = inttoptr i64 %591 to i32*
  %595 = load i32, i32* %594
  %596 = sext i32 %595 to i64
  store i64 %596, i64* %RCX, align 8, !tbaa !2451
  %597 = load i64, i64* %RAX
  %598 = load i64, i64* %RCX
  %599 = add i64 %598, %597
  %600 = load i64, i64* %PC
  %601 = add i64 %600, 4
  store i64 %601, i64* %PC
  %602 = inttoptr i64 %599 to i8*
  %603 = load i8, i8* %602
  %604 = sext i8 %603 to i64
  %605 = and i64 %604, 4294967295
  store i64 %605, i64* %RDX, align 8, !tbaa !2451
  %606 = load i32, i32* %EDX
  %607 = zext i32 %606 to i64
  %608 = load i64, i64* %PC
  %609 = add i64 %608, 3
  store i64 %609, i64* %PC
  %610 = sub i32 %606, 35
  %611 = icmp ult i32 %606, 35
  %612 = zext i1 %611 to i8
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %612, i8* %613, align 1, !tbaa !2428
  %614 = and i32 %610, 255
  %615 = call i32 @llvm.ctpop.i32(i32 %614) #16
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  %618 = xor i8 %617, 1
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %618, i8* %619, align 1, !tbaa !2445
  %620 = xor i64 35, %607
  %621 = trunc i64 %620 to i32
  %622 = xor i32 %621, %610
  %623 = lshr i32 %622, 4
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %625, i8* %626, align 1, !tbaa !2446
  %627 = icmp eq i32 %610, 0
  %628 = zext i1 %627 to i8
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %628, i8* %629, align 1, !tbaa !2447
  %630 = lshr i32 %610, 31
  %631 = trunc i32 %630 to i8
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %631, i8* %632, align 1, !tbaa !2448
  %633 = lshr i32 %606, 31
  %634 = xor i32 %630, %633
  %635 = add nuw nsw i32 %634, %633
  %636 = icmp eq i32 %635, 2
  %637 = zext i1 %636 to i8
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %637, i8* %638, align 1, !tbaa !2449
  %639 = load i64, i64* %PC
  %640 = add i64 %639, 57
  %641 = load i64, i64* %PC
  %642 = add i64 %641, 6
  %643 = load i64, i64* %PC
  %644 = add i64 %643, 6
  store i64 %644, i64* %PC
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %646 = load i8, i8* %645, align 1, !tbaa !2447
  %647 = icmp eq i8 %646, 0
  %648 = zext i1 %647 to i8
  store i8 %648, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %650 = select i1 %647, i64 %640, i64 %642
  store i64 %650, i64* %649, align 8, !tbaa !2451
  %651 = load i8, i8* %BRANCH_TAKEN
  %652 = icmp eq i8 %651, 1
  %653 = load i64, i64* %PC
  %654 = add i64 %653, 10
  store i64 %654, i64* %PC
  br i1 %652, label %block_4007a9, label %block_400776

block_4006f4:                                     ; preds = %block_4006d8
  %655 = load i64, i64* %RBP
  %656 = sub i64 %655, 24
  %657 = load i64, i64* %PC
  %658 = add i64 %657, 3
  store i64 %658, i64* %PC
  %659 = inttoptr i64 %656 to i32*
  %660 = load i32, i32* %659
  %661 = zext i32 %660 to i64
  store i64 %661, i64* %RAX, align 8, !tbaa !2451
  %662 = load i64, i64* %RAX
  %663 = load i64, i64* %PC
  %664 = add i64 %663, 3
  store i64 %664, i64* %PC
  %665 = trunc i64 %662 to i32
  %666 = add i32 1, %665
  %667 = zext i32 %666 to i64
  store i64 %667, i64* %RAX, align 8, !tbaa !2451
  %668 = icmp ult i32 %666, %665
  %669 = icmp ult i32 %666, 1
  %670 = or i1 %668, %669
  %671 = zext i1 %670 to i8
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %671, i8* %672, align 1, !tbaa !2428
  %673 = and i32 %666, 255
  %674 = call i32 @llvm.ctpop.i32(i32 %673) #16
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  %677 = xor i8 %676, 1
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %677, i8* %678, align 1, !tbaa !2445
  %679 = xor i64 1, %662
  %680 = trunc i64 %679 to i32
  %681 = xor i32 %680, %666
  %682 = lshr i32 %681, 4
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %684, i8* %685, align 1, !tbaa !2446
  %686 = icmp eq i32 %666, 0
  %687 = zext i1 %686 to i8
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %687, i8* %688, align 1, !tbaa !2447
  %689 = lshr i32 %666, 31
  %690 = trunc i32 %689 to i8
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %690, i8* %691, align 1, !tbaa !2448
  %692 = lshr i32 %665, 31
  %693 = xor i32 %689, %692
  %694 = add nuw nsw i32 %693, %689
  %695 = icmp eq i32 %694, 2
  %696 = zext i1 %695 to i8
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %696, i8* %697, align 1, !tbaa !2449
  %698 = load i64, i64* %RBP
  %699 = sub i64 %698, 24
  %700 = load i32, i32* %EAX
  %701 = zext i32 %700 to i64
  %702 = load i64, i64* %PC
  %703 = add i64 %702, 3
  store i64 %703, i64* %PC
  %704 = inttoptr i64 %699 to i32*
  store i32 %700, i32* %704
  %705 = load i64, i64* %PC
  %706 = add i64 %705, 83
  %707 = load i64, i64* %PC
  %708 = add i64 %707, 5
  store i64 %708, i64* %PC
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %706, i64* %709, align 8, !tbaa !2451
  br label %block_400750

block_400837:                                     ; preds = %block_40082b
  %710 = load i64, i64* %PC
  %711 = add i64 %710, 10
  store i64 %711, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2451
  %712 = load i64, i64* %PC
  %713 = add i64 %712, 2
  store i64 %713, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %714 = load i64, i64* %PC
  %715 = sub i64 %714, 979
  %716 = load i64, i64* %PC
  %717 = add i64 %716, 5
  %718 = load i64, i64* %PC
  %719 = add i64 %718, 5
  store i64 %719, i64* %PC
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %721 = load i64, i64* %720, align 8, !tbaa !2451
  %722 = add i64 %721, -8
  %723 = inttoptr i64 %722 to i64*
  store i64 %717, i64* %723
  store i64 %722, i64* %720, align 8, !tbaa !2451
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %715, i64* %724, align 8, !tbaa !2451
  %725 = load i64, i64* %PC
  %726 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %725, %struct.Memory* %MEMORY.3)
  %727 = load i64, i64* %RBP
  %728 = sub i64 %727, 4
  %729 = load i64, i64* %PC
  %730 = add i64 %729, 7
  store i64 %730, i64* %PC
  %731 = inttoptr i64 %728 to i32*
  store i32 2, i32* %731
  %732 = load i64, i64* %RBP
  %733 = sub i64 %732, 104
  %734 = load i32, i32* %EAX
  %735 = zext i32 %734 to i64
  %736 = load i64, i64* %PC
  %737 = add i64 %736, 3
  store i64 %737, i64* %PC
  %738 = inttoptr i64 %733 to i32*
  store i32 %734, i32* %738
  %739 = load i64, i64* %PC
  %740 = add i64 %739, 80
  %741 = load i64, i64* %PC
  %742 = add i64 %741, 5
  store i64 %742, i64* %PC
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %740, i64* %743, align 8, !tbaa !2451
  br label %block_4008a2

block_4006ae:                                     ; preds = %block_400857
  %744 = load i64, i64* %RBP
  %745 = sub i64 %744, 20
  %746 = load i64, i64* %PC
  %747 = add i64 %746, 3
  store i64 %747, i64* %PC
  %748 = inttoptr i64 %745 to i32*
  %749 = load i32, i32* %748
  %750 = zext i32 %749 to i64
  store i64 %750, i64* %RAX, align 8, !tbaa !2451
  %751 = load i64, i64* %RBP
  %752 = sub i64 %751, 28
  %753 = load i32, i32* %EAX
  %754 = zext i32 %753 to i64
  %755 = load i64, i64* %PC
  %756 = add i64 %755, 3
  store i64 %756, i64* %PC
  %757 = inttoptr i64 %752 to i32*
  store i32 %753, i32* %757
  %758 = load i64, i64* %RBP
  %759 = sub i64 %758, 24
  %760 = load i64, i64* %PC
  %761 = add i64 %760, 3
  store i64 %761, i64* %PC
  %762 = inttoptr i64 %759 to i32*
  %763 = load i32, i32* %762
  %764 = zext i32 %763 to i64
  store i64 %764, i64* %RAX, align 8, !tbaa !2451
  %765 = load i64, i64* %RBP
  %766 = sub i64 %765, 32
  %767 = load i32, i32* %EAX
  %768 = zext i32 %767 to i64
  %769 = load i64, i64* %PC
  %770 = add i64 %769, 3
  store i64 %770, i64* %PC
  %771 = inttoptr i64 %766 to i32*
  store i32 %767, i32* %771
  %772 = load i64, i64* %RBP
  %773 = sub i64 %772, 36
  %774 = load i64, i64* %PC
  %775 = add i64 %774, 4
  store i64 %775, i64* %PC
  %776 = inttoptr i64 %773 to i32*
  %777 = load i32, i32* %776
  %778 = sext i32 %777 to i64
  store i64 %778, i64* %RCX, align 8, !tbaa !2451
  %779 = load i64, i64* %RBP
  %780 = load i64, i64* %RCX
  %781 = add i64 %779, -64
  %782 = add i64 %781, %780
  %783 = load i64, i64* %PC
  %784 = add i64 %783, 5
  store i64 %784, i64* %PC
  %785 = inttoptr i64 %782 to i8*
  %786 = load i8, i8* %785
  %787 = sext i8 %786 to i64
  %788 = and i64 %787, 4294967295
  store i64 %788, i64* %RAX, align 8, !tbaa !2451
  %789 = load i64, i64* %RAX
  %790 = load i64, i64* %PC
  %791 = add i64 %790, 3
  store i64 %791, i64* %PC
  %792 = trunc i64 %789 to i32
  %793 = add i32 -97, %792
  %794 = zext i32 %793 to i64
  store i64 %794, i64* %RAX, align 8, !tbaa !2451
  %795 = icmp ult i32 %793, %792
  %796 = icmp ult i32 %793, -97
  %797 = or i1 %795, %796
  %798 = zext i1 %797 to i8
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %798, i8* %799, align 1, !tbaa !2428
  %800 = and i32 %793, 255
  %801 = call i32 @llvm.ctpop.i32(i32 %800) #16
  %802 = trunc i32 %801 to i8
  %803 = and i8 %802, 1
  %804 = xor i8 %803, 1
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %804, i8* %805, align 1, !tbaa !2445
  %806 = xor i64 -97, %789
  %807 = trunc i64 %806 to i32
  %808 = xor i32 %807, %793
  %809 = lshr i32 %808, 4
  %810 = trunc i32 %809 to i8
  %811 = and i8 %810, 1
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %811, i8* %812, align 1, !tbaa !2446
  %813 = icmp eq i32 %793, 0
  %814 = zext i1 %813 to i8
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %814, i8* %815, align 1, !tbaa !2447
  %816 = lshr i32 %793, 31
  %817 = trunc i32 %816 to i8
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %817, i8* %818, align 1, !tbaa !2448
  %819 = lshr i32 %792, 31
  %820 = xor i32 %816, %819
  %821 = xor i32 %816, 1
  %822 = add nuw nsw i32 %820, %821
  %823 = icmp eq i32 %822, 2
  %824 = zext i1 %823 to i8
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %824, i8* %825, align 1, !tbaa !2449
  %826 = load i32, i32* %EAX
  %827 = zext i32 %826 to i64
  %828 = load i64, i64* %PC
  %829 = add i64 %828, 2
  store i64 %829, i64* %PC
  %830 = and i64 %827, 4294967295
  store i64 %830, i64* %RCX, align 8, !tbaa !2451
  %831 = load i64, i64* %RAX
  %832 = load i64, i64* %PC
  %833 = add i64 %832, 3
  store i64 %833, i64* %PC
  %834 = trunc i64 %831 to i32
  %835 = sub i32 %834, 22
  %836 = zext i32 %835 to i64
  store i64 %836, i64* %RAX, align 8, !tbaa !2451
  %837 = icmp ult i32 %834, 22
  %838 = zext i1 %837 to i8
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %838, i8* %839, align 1, !tbaa !2428
  %840 = and i32 %835, 255
  %841 = call i32 @llvm.ctpop.i32(i32 %840) #16
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %844, i8* %845, align 1, !tbaa !2445
  %846 = xor i64 22, %831
  %847 = trunc i64 %846 to i32
  %848 = xor i32 %847, %835
  %849 = lshr i32 %848, 4
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %851, i8* %852, align 1, !tbaa !2446
  %853 = icmp eq i32 %835, 0
  %854 = zext i1 %853 to i8
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %854, i8* %855, align 1, !tbaa !2447
  %856 = lshr i32 %835, 31
  %857 = trunc i32 %856 to i8
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %857, i8* %858, align 1, !tbaa !2448
  %859 = lshr i32 %834, 31
  %860 = xor i32 %856, %859
  %861 = add nuw nsw i32 %860, %859
  %862 = icmp eq i32 %861, 2
  %863 = zext i1 %862 to i8
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %863, i8* %864, align 1, !tbaa !2449
  %865 = load i64, i64* %RBP
  %866 = sub i64 %865, 80
  %867 = load i64, i64* %RCX
  %868 = load i64, i64* %PC
  %869 = add i64 %868, 4
  store i64 %869, i64* %PC
  %870 = inttoptr i64 %866 to i64*
  store i64 %867, i64* %870
  %871 = load i64, i64* %RBP
  %872 = sub i64 %871, 84
  %873 = load i32, i32* %EAX
  %874 = zext i32 %873 to i64
  %875 = load i64, i64* %PC
  %876 = add i64 %875, 3
  store i64 %876, i64* %PC
  %877 = inttoptr i64 %872 to i32*
  store i32 %873, i32* %877
  %878 = load i64, i64* %PC
  %879 = add i64 %878, 76
  %880 = load i64, i64* %PC
  %881 = add i64 %880, 6
  %882 = load i64, i64* %PC
  %883 = add i64 %882, 6
  store i64 %883, i64* %PC
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %885 = load i8, i8* %884, align 1, !tbaa !2428
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %887 = load i8, i8* %886, align 1, !tbaa !2447
  %888 = or i8 %887, %885
  %889 = icmp eq i8 %888, 0
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %892 = select i1 %889, i64 %879, i64 %881
  store i64 %892, i64* %891, align 8, !tbaa !2451
  %893 = load i8, i8* %BRANCH_TAKEN
  %894 = icmp eq i8 %893, 1
  br i1 %894, label %block_40071e, label %block_4006d8

block_40082b:                                     ; preds = %block_40081f
  %895 = load i64, i64* %RBP
  %896 = sub i64 %895, 32
  %897 = load i64, i64* %PC
  %898 = add i64 %897, 3
  store i64 %898, i64* %PC
  %899 = inttoptr i64 %896 to i32*
  %900 = load i32, i32* %899
  %901 = zext i32 %900 to i64
  store i64 %901, i64* %RAX, align 8, !tbaa !2451
  %902 = load i32, i32* %EAX
  %903 = zext i32 %902 to i64
  %904 = load i64, i64* %RBP
  %905 = sub i64 %904, 24
  %906 = load i64, i64* %PC
  %907 = add i64 %906, 3
  store i64 %907, i64* %PC
  %908 = inttoptr i64 %905 to i32*
  %909 = load i32, i32* %908
  %910 = sub i32 %902, %909
  %911 = icmp ult i32 %902, %909
  %912 = zext i1 %911 to i8
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %912, i8* %913, align 1, !tbaa !2428
  %914 = and i32 %910, 255
  %915 = call i32 @llvm.ctpop.i32(i32 %914) #16
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %918, i8* %919, align 1, !tbaa !2445
  %920 = xor i32 %909, %902
  %921 = xor i32 %920, %910
  %922 = lshr i32 %921, 4
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %924, i8* %925, align 1, !tbaa !2446
  %926 = icmp eq i32 %910, 0
  %927 = zext i1 %926 to i8
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %927, i8* %928, align 1, !tbaa !2447
  %929 = lshr i32 %910, 31
  %930 = trunc i32 %929 to i8
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %930, i8* %931, align 1, !tbaa !2448
  %932 = lshr i32 %902, 31
  %933 = lshr i32 %909, 31
  %934 = xor i32 %933, %932
  %935 = xor i32 %929, %932
  %936 = add nuw nsw i32 %935, %934
  %937 = icmp eq i32 %936, 2
  %938 = zext i1 %937 to i8
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %938, i8* %939, align 1, !tbaa !2449
  %940 = load i64, i64* %PC
  %941 = add i64 %940, 38
  %942 = load i64, i64* %PC
  %943 = add i64 %942, 6
  %944 = load i64, i64* %PC
  %945 = add i64 %944, 6
  store i64 %945, i64* %PC
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %947 = load i8, i8* %946, align 1, !tbaa !2447
  %948 = icmp eq i8 %947, 0
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %951 = select i1 %948, i64 %941, i64 %943
  store i64 %951, i64* %950, align 8, !tbaa !2451
  %952 = load i8, i8* %BRANCH_TAKEN
  %953 = icmp eq i8 %952, 1
  br i1 %953, label %block_400857, label %block_400837

block_4006d8:                                     ; preds = %block_4006ae
  %954 = load i64, i64* %RBP
  %955 = sub i64 %954, 80
  %956 = load i64, i64* %PC
  %957 = add i64 %956, 4
  store i64 %957, i64* %PC
  %958 = inttoptr i64 %955 to i64*
  %959 = load i64, i64* %958
  store i64 %959, i64* %RAX, align 8, !tbaa !2451
  %960 = load i64, i64* %RAX
  %961 = mul i64 %960, 8
  %962 = add i64 %961, add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 8)
  %963 = load i64, i64* %PC
  %964 = add i64 %963, 8
  store i64 %964, i64* %PC
  %965 = inttoptr i64 %962 to i64*
  %966 = load i64, i64* %965
  store i64 %966, i64* %RCX, align 8, !tbaa !2451
  %967 = load i64, i64* %RCX
  %968 = load i64, i64* %PC
  %969 = add i64 %968, 2
  store i64 %969, i64* %PC
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %967, i64* %970, align 8, !tbaa !2451
  %971 = load i64, i64* %PC
  switch i64 %971, label %1437 [
    i64 4196098, label %block_400702
    i64 4196112, label %block_400710
    i64 4196084, label %block_4006f4
    i64 4196126, label %block_40071e
    i64 4196070, label %block_4006e6
  ]

block_4007cf:                                     ; preds = %block_4007a9
  %972 = load i64, i64* %RBP
  %973 = sub i64 %972, 24
  %974 = load i64, i64* %PC
  %975 = add i64 %974, 4
  store i64 %975, i64* %PC
  %976 = inttoptr i64 %973 to i32*
  %977 = load i32, i32* %976
  %978 = sub i32 %977, 2
  %979 = icmp ult i32 %977, 2
  %980 = zext i1 %979 to i8
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %980, i8* %981, align 1, !tbaa !2428
  %982 = and i32 %978, 255
  %983 = call i32 @llvm.ctpop.i32(i32 %982) #16
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  %986 = xor i8 %985, 1
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %986, i8* %987, align 1, !tbaa !2445
  %988 = xor i32 %977, 2
  %989 = xor i32 %988, %978
  %990 = lshr i32 %989, 4
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %992, i8* %993, align 1, !tbaa !2446
  %994 = icmp eq i32 %978, 0
  %995 = zext i1 %994 to i8
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %995, i8* %996, align 1, !tbaa !2447
  %997 = lshr i32 %978, 31
  %998 = trunc i32 %997 to i8
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %998, i8* %999, align 1, !tbaa !2448
  %1000 = lshr i32 %977, 31
  %1001 = xor i32 %997, %1000
  %1002 = add nuw nsw i32 %1001, %1000
  %1003 = icmp eq i32 %1002, 2
  %1004 = zext i1 %1003 to i8
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1004, i8* %1005, align 1, !tbaa !2449
  %1006 = load i64, i64* %PC
  %1007 = add i64 %1006, 64
  %1008 = load i64, i64* %PC
  %1009 = add i64 %1008, 6
  %1010 = load i64, i64* %PC
  %1011 = add i64 %1010, 6
  store i64 %1011, i64* %PC
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1013 = load i8, i8* %1012, align 1, !tbaa !2447
  %1014 = icmp eq i8 %1013, 0
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1017 = select i1 %1014, i64 %1007, i64 %1009
  store i64 %1017, i64* %1016, align 8, !tbaa !2451
  %1018 = load i8, i8* %BRANCH_TAKEN
  %1019 = icmp eq i8 %1018, 1
  br i1 %1019, label %block_400813, label %block_4007d9

block_4007a9:                                     ; preds = %block_400750
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %1020 = load i64, i64* %RBP
  %1021 = sub i64 %1020, 24
  %1022 = load i64, i64* %PC
  %1023 = add i64 %1022, 4
  store i64 %1023, i64* %PC
  %1024 = inttoptr i64 %1021 to i32*
  %1025 = load i32, i32* %1024
  %1026 = sext i32 %1025 to i64
  store i64 %1026, i64* %RCX, align 8, !tbaa !2451
  %1027 = load i64, i64* %RCX
  %1028 = load i64, i64* %PC
  %1029 = add i64 %1028, 4
  store i64 %1029, i64* %PC
  %1030 = sext i64 %1027 to i128
  %1031 = and i128 %1030, -18446744073709551616
  %1032 = zext i64 %1027 to i128
  %1033 = or i128 %1031, %1032
  %1034 = mul nsw i128 11, %1033
  %1035 = trunc i128 %1034 to i64
  store i64 %1035, i64* %RCX, align 8, !tbaa !2451
  %1036 = sext i64 %1035 to i128
  %1037 = icmp ne i128 %1036, %1034
  %1038 = zext i1 %1037 to i8
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1038, i8* %1039, align 1, !tbaa !2428
  %1040 = trunc i128 %1034 to i32
  %1041 = and i32 %1040, 255
  %1042 = call i32 @llvm.ctpop.i32(i32 %1041) #16
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  %1045 = xor i8 %1044, 1
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1045, i8* %1046, align 1, !tbaa !2445
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1047, align 1, !tbaa !2446
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1048, align 1, !tbaa !2447
  %1049 = lshr i64 %1035, 63
  %1050 = trunc i64 %1049 to i8
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1050, i8* %1051, align 1, !tbaa !2448
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1038, i8* %1052, align 1, !tbaa !2449
  %1053 = load i64, i64* %RAX
  %1054 = load i64, i64* %RCX
  %1055 = load i64, i64* %PC
  %1056 = add i64 %1055, 3
  store i64 %1056, i64* %PC
  %1057 = add i64 %1054, %1053
  store i64 %1057, i64* %RAX, align 8, !tbaa !2451
  %1058 = icmp ult i64 %1057, %1053
  %1059 = icmp ult i64 %1057, %1054
  %1060 = or i1 %1058, %1059
  %1061 = zext i1 %1060 to i8
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1061, i8* %1062, align 1, !tbaa !2428
  %1063 = trunc i64 %1057 to i32
  %1064 = and i32 %1063, 255
  %1065 = call i32 @llvm.ctpop.i32(i32 %1064) #16
  %1066 = trunc i32 %1065 to i8
  %1067 = and i8 %1066, 1
  %1068 = xor i8 %1067, 1
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1068, i8* %1069, align 1, !tbaa !2445
  %1070 = xor i64 %1054, %1053
  %1071 = xor i64 %1070, %1057
  %1072 = lshr i64 %1071, 4
  %1073 = trunc i64 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1074, i8* %1075, align 1, !tbaa !2446
  %1076 = icmp eq i64 %1057, 0
  %1077 = zext i1 %1076 to i8
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1077, i8* %1078, align 1, !tbaa !2447
  %1079 = lshr i64 %1057, 63
  %1080 = trunc i64 %1079 to i8
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1080, i8* %1081, align 1, !tbaa !2448
  %1082 = lshr i64 %1053, 63
  %1083 = lshr i64 %1054, 63
  %1084 = xor i64 %1079, %1082
  %1085 = xor i64 %1079, %1083
  %1086 = add nuw nsw i64 %1084, %1085
  %1087 = icmp eq i64 %1086, 2
  %1088 = zext i1 %1087 to i8
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1088, i8* %1089, align 1, !tbaa !2449
  %1090 = load i64, i64* %RBP
  %1091 = sub i64 %1090, 20
  %1092 = load i64, i64* %PC
  %1093 = add i64 %1092, 4
  store i64 %1093, i64* %PC
  %1094 = inttoptr i64 %1091 to i32*
  %1095 = load i32, i32* %1094
  %1096 = sext i32 %1095 to i64
  store i64 %1096, i64* %RCX, align 8, !tbaa !2451
  %1097 = load i64, i64* %RAX
  %1098 = load i64, i64* %RCX
  %1099 = add i64 %1098, %1097
  %1100 = load i64, i64* %PC
  %1101 = add i64 %1100, 4
  store i64 %1101, i64* %PC
  %1102 = inttoptr i64 %1099 to i8*
  %1103 = load i8, i8* %1102
  %1104 = sext i8 %1103 to i64
  %1105 = and i64 %1104, 4294967295
  store i64 %1105, i64* %RDX, align 8, !tbaa !2451
  %1106 = load i32, i32* %EDX
  %1107 = zext i32 %1106 to i64
  %1108 = load i64, i64* %PC
  %1109 = add i64 %1108, 3
  store i64 %1109, i64* %PC
  %1110 = sub i32 %1106, 32
  %1111 = icmp ult i32 %1106, 32
  %1112 = zext i1 %1111 to i8
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1112, i8* %1113, align 1, !tbaa !2428
  %1114 = and i32 %1110, 255
  %1115 = call i32 @llvm.ctpop.i32(i32 %1114) #16
  %1116 = trunc i32 %1115 to i8
  %1117 = and i8 %1116, 1
  %1118 = xor i8 %1117, 1
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1118, i8* %1119, align 1, !tbaa !2445
  %1120 = xor i64 32, %1107
  %1121 = trunc i64 %1120 to i32
  %1122 = xor i32 %1121, %1110
  %1123 = lshr i32 %1122, 4
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1125, i8* %1126, align 1, !tbaa !2446
  %1127 = icmp eq i32 %1110, 0
  %1128 = zext i1 %1127 to i8
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1128, i8* %1129, align 1, !tbaa !2447
  %1130 = lshr i32 %1110, 31
  %1131 = trunc i32 %1130 to i8
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1131, i8* %1132, align 1, !tbaa !2448
  %1133 = lshr i32 %1106, 31
  %1134 = xor i32 %1130, %1133
  %1135 = add nuw nsw i32 %1134, %1133
  %1136 = icmp eq i32 %1135, 2
  %1137 = zext i1 %1136 to i8
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1137, i8* %1138, align 1, !tbaa !2449
  %1139 = load i64, i64* %PC
  %1140 = add i64 %1139, 86
  %1141 = load i64, i64* %PC
  %1142 = add i64 %1141, 6
  %1143 = load i64, i64* %PC
  %1144 = add i64 %1143, 6
  store i64 %1144, i64* %PC
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1146 = load i8, i8* %1145, align 1, !tbaa !2447
  store i8 %1146, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1148 = icmp ne i8 %1146, 0
  %1149 = select i1 %1148, i64 %1140, i64 %1142
  store i64 %1149, i64* %1147, align 8, !tbaa !2451
  %1150 = load i8, i8* %BRANCH_TAKEN
  %1151 = icmp eq i8 %1150, 1
  br i1 %1151, label %block_40081f, label %block_4007cf

block_4008a2:                                     ; preds = %block_400887, %block_400837
  %MEMORY.2 = phi %struct.Memory* [ %1418, %block_400887 ], [ %726, %block_400837 ]
  %1152 = load i64, i64* %RBP
  %1153 = sub i64 %1152, 4
  %1154 = load i64, i64* %PC
  %1155 = add i64 %1154, 3
  store i64 %1155, i64* %PC
  %1156 = inttoptr i64 %1153 to i32*
  %1157 = load i32, i32* %1156
  %1158 = zext i32 %1157 to i64
  store i64 %1158, i64* %RAX, align 8, !tbaa !2451
  %1159 = load i64, i64* %RSP
  %1160 = load i64, i64* %PC
  %1161 = add i64 %1160, 4
  store i64 %1161, i64* %PC
  %1162 = add i64 112, %1159
  store i64 %1162, i64* %RSP, align 8, !tbaa !2451
  %1163 = icmp ult i64 %1162, %1159
  %1164 = icmp ult i64 %1162, 112
  %1165 = or i1 %1163, %1164
  %1166 = zext i1 %1165 to i8
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1166, i8* %1167, align 1, !tbaa !2428
  %1168 = trunc i64 %1162 to i32
  %1169 = and i32 %1168, 255
  %1170 = call i32 @llvm.ctpop.i32(i32 %1169) #16
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = xor i8 %1172, 1
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1173, i8* %1174, align 1, !tbaa !2445
  %1175 = xor i64 112, %1159
  %1176 = xor i64 %1175, %1162
  %1177 = lshr i64 %1176, 4
  %1178 = trunc i64 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1179, i8* %1180, align 1, !tbaa !2446
  %1181 = icmp eq i64 %1162, 0
  %1182 = zext i1 %1181 to i8
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1182, i8* %1183, align 1, !tbaa !2447
  %1184 = lshr i64 %1162, 63
  %1185 = trunc i64 %1184 to i8
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1185, i8* %1186, align 1, !tbaa !2448
  %1187 = lshr i64 %1159, 63
  %1188 = xor i64 %1184, %1187
  %1189 = add nuw nsw i64 %1188, %1184
  %1190 = icmp eq i64 %1189, 2
  %1191 = zext i1 %1190 to i8
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1191, i8* %1192, align 1, !tbaa !2449
  %1193 = load i64, i64* %PC
  %1194 = add i64 %1193, 1
  store i64 %1194, i64* %PC
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1196 = load i64, i64* %1195, align 8, !tbaa !2451
  %1197 = add i64 %1196, 8
  %1198 = inttoptr i64 %1196 to i64*
  %1199 = load i64, i64* %1198
  store i64 %1199, i64* %RBP, align 8, !tbaa !2451
  store i64 %1197, i64* %1195, align 8, !tbaa !2451
  %1200 = load i64, i64* %PC
  %1201 = add i64 %1200, 1
  store i64 %1201, i64* %PC
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1204 = load i64, i64* %1203, align 8, !tbaa !2451
  %1205 = inttoptr i64 %1204 to i64*
  %1206 = load i64, i64* %1205
  store i64 %1206, i64* %1202, align 8, !tbaa !2451
  %1207 = add i64 %1204, 8
  store i64 %1207, i64* %1203, align 8, !tbaa !2451
  ret %struct.Memory* %MEMORY.2

block_40081f:                                     ; preds = %block_400809, %block_400813, %block_4007a9
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.1, %block_4007a9 ], [ %MEMORY.4, %block_400813 ], [ %MEMORY.1, %block_400809 ]
  %1208 = load i64, i64* %RBP
  %1209 = sub i64 %1208, 28
  %1210 = load i64, i64* %PC
  %1211 = add i64 %1210, 3
  store i64 %1211, i64* %PC
  %1212 = inttoptr i64 %1209 to i32*
  %1213 = load i32, i32* %1212
  %1214 = zext i32 %1213 to i64
  store i64 %1214, i64* %RAX, align 8, !tbaa !2451
  %1215 = load i32, i32* %EAX
  %1216 = zext i32 %1215 to i64
  %1217 = load i64, i64* %RBP
  %1218 = sub i64 %1217, 20
  %1219 = load i64, i64* %PC
  %1220 = add i64 %1219, 3
  store i64 %1220, i64* %PC
  %1221 = inttoptr i64 %1218 to i32*
  %1222 = load i32, i32* %1221
  %1223 = sub i32 %1215, %1222
  %1224 = icmp ult i32 %1215, %1222
  %1225 = zext i1 %1224 to i8
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1225, i8* %1226, align 1, !tbaa !2428
  %1227 = and i32 %1223, 255
  %1228 = call i32 @llvm.ctpop.i32(i32 %1227) #16
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = xor i8 %1230, 1
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1231, i8* %1232, align 1, !tbaa !2445
  %1233 = xor i32 %1222, %1215
  %1234 = xor i32 %1233, %1223
  %1235 = lshr i32 %1234, 4
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1237, i8* %1238, align 1, !tbaa !2446
  %1239 = icmp eq i32 %1223, 0
  %1240 = zext i1 %1239 to i8
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1240, i8* %1241, align 1, !tbaa !2447
  %1242 = lshr i32 %1223, 31
  %1243 = trunc i32 %1242 to i8
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1243, i8* %1244, align 1, !tbaa !2448
  %1245 = lshr i32 %1215, 31
  %1246 = lshr i32 %1222, 31
  %1247 = xor i32 %1246, %1245
  %1248 = xor i32 %1242, %1245
  %1249 = add nuw nsw i32 %1248, %1247
  %1250 = icmp eq i32 %1249, 2
  %1251 = zext i1 %1250 to i8
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1251, i8* %1252, align 1, !tbaa !2449
  %1253 = load i64, i64* %PC
  %1254 = add i64 %1253, 50
  %1255 = load i64, i64* %PC
  %1256 = add i64 %1255, 6
  %1257 = load i64, i64* %PC
  %1258 = add i64 %1257, 6
  store i64 %1258, i64* %PC
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1260 = load i8, i8* %1259, align 1, !tbaa !2447
  %1261 = icmp eq i8 %1260, 0
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1264 = select i1 %1261, i64 %1254, i64 %1256
  store i64 %1264, i64* %1263, align 8, !tbaa !2451
  %1265 = load i8, i8* %BRANCH_TAKEN
  %1266 = icmp eq i8 %1265, 1
  br i1 %1266, label %block_400857, label %block_40082b

block_400813:                                     ; preds = %block_400809, %block_4007cf, %block_4007d9, %block_4007ff
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.1, %block_4007cf ], [ %MEMORY.1, %block_4007d9 ], [ %MEMORY.1, %block_4007ff ], [ %MEMORY.1, %block_400809 ]
  %1267 = load i64, i64* %RBP
  %1268 = sub i64 %1267, 28
  %1269 = load i64, i64* %PC
  %1270 = add i64 %1269, 3
  store i64 %1270, i64* %PC
  %1271 = inttoptr i64 %1268 to i32*
  %1272 = load i32, i32* %1271
  %1273 = zext i32 %1272 to i64
  store i64 %1273, i64* %RAX, align 8, !tbaa !2451
  %1274 = load i64, i64* %RBP
  %1275 = sub i64 %1274, 20
  %1276 = load i32, i32* %EAX
  %1277 = zext i32 %1276 to i64
  %1278 = load i64, i64* %PC
  %1279 = add i64 %1278, 3
  store i64 %1279, i64* %PC
  %1280 = inttoptr i64 %1275 to i32*
  store i32 %1276, i32* %1280
  %1281 = load i64, i64* %RBP
  %1282 = sub i64 %1281, 32
  %1283 = load i64, i64* %PC
  %1284 = add i64 %1283, 3
  store i64 %1284, i64* %PC
  %1285 = inttoptr i64 %1282 to i32*
  %1286 = load i32, i32* %1285
  %1287 = zext i32 %1286 to i64
  store i64 %1287, i64* %RAX, align 8, !tbaa !2451
  %1288 = load i64, i64* %RBP
  %1289 = sub i64 %1288, 24
  %1290 = load i32, i32* %EAX
  %1291 = zext i32 %1290 to i64
  %1292 = load i64, i64* %PC
  %1293 = add i64 %1292, 3
  store i64 %1293, i64* %PC
  %1294 = inttoptr i64 %1289 to i32*
  store i32 %1290, i32* %1294
  br label %block_40081f

block_400710:                                     ; preds = %block_4006d8, %3
  %MEMORY.5 = phi %struct.Memory* [ %2, %3 ], [ %321, %block_4006d8 ]
  %1295 = load i64, i64* %RBP
  %1296 = sub i64 %1295, 20
  %1297 = load i64, i64* %PC
  %1298 = add i64 %1297, 3
  store i64 %1298, i64* %PC
  %1299 = inttoptr i64 %1296 to i32*
  %1300 = load i32, i32* %1299
  %1301 = zext i32 %1300 to i64
  store i64 %1301, i64* %RAX, align 8, !tbaa !2451
  %1302 = load i64, i64* %RAX
  %1303 = load i64, i64* %PC
  %1304 = add i64 %1303, 3
  store i64 %1304, i64* %PC
  %1305 = trunc i64 %1302 to i32
  %1306 = add i32 1, %1305
  %1307 = zext i32 %1306 to i64
  store i64 %1307, i64* %RAX, align 8, !tbaa !2451
  %1308 = icmp ult i32 %1306, %1305
  %1309 = icmp ult i32 %1306, 1
  %1310 = or i1 %1308, %1309
  %1311 = zext i1 %1310 to i8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1311, i8* %1312, align 1, !tbaa !2428
  %1313 = and i32 %1306, 255
  %1314 = call i32 @llvm.ctpop.i32(i32 %1313) #16
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  %1317 = xor i8 %1316, 1
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1317, i8* %1318, align 1, !tbaa !2445
  %1319 = xor i64 1, %1302
  %1320 = trunc i64 %1319 to i32
  %1321 = xor i32 %1320, %1306
  %1322 = lshr i32 %1321, 4
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1324, i8* %1325, align 1, !tbaa !2446
  %1326 = icmp eq i32 %1306, 0
  %1327 = zext i1 %1326 to i8
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1327, i8* %1328, align 1, !tbaa !2447
  %1329 = lshr i32 %1306, 31
  %1330 = trunc i32 %1329 to i8
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1330, i8* %1331, align 1, !tbaa !2448
  %1332 = lshr i32 %1305, 31
  %1333 = xor i32 %1329, %1332
  %1334 = add nuw nsw i32 %1333, %1329
  %1335 = icmp eq i32 %1334, 2
  %1336 = zext i1 %1335 to i8
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1336, i8* %1337, align 1, !tbaa !2449
  %1338 = load i64, i64* %RBP
  %1339 = sub i64 %1338, 20
  %1340 = load i32, i32* %EAX
  %1341 = zext i32 %1340 to i64
  %1342 = load i64, i64* %PC
  %1343 = add i64 %1342, 3
  store i64 %1343, i64* %PC
  %1344 = inttoptr i64 %1339 to i32*
  store i32 %1340, i32* %1344
  %1345 = load i64, i64* %PC
  %1346 = add i64 %1345, 55
  %1347 = load i64, i64* %PC
  %1348 = add i64 %1347, 5
  store i64 %1348, i64* %PC
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1346, i64* %1349, align 8, !tbaa !2451
  br label %block_400750

block_400809:                                     ; preds = %block_4007ff
  %1350 = load i64, i64* %RBP
  %1351 = sub i64 %1350, 20
  %1352 = load i64, i64* %PC
  %1353 = add i64 %1352, 4
  store i64 %1353, i64* %PC
  %1354 = inttoptr i64 %1351 to i32*
  %1355 = load i32, i32* %1354
  %1356 = sub i32 %1355, 11
  %1357 = icmp ult i32 %1355, 11
  %1358 = zext i1 %1357 to i8
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1358, i8* %1359, align 1, !tbaa !2428
  %1360 = and i32 %1356, 255
  %1361 = call i32 @llvm.ctpop.i32(i32 %1360) #16
  %1362 = trunc i32 %1361 to i8
  %1363 = and i8 %1362, 1
  %1364 = xor i8 %1363, 1
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1364, i8* %1365, align 1, !tbaa !2445
  %1366 = xor i32 %1355, 11
  %1367 = xor i32 %1366, %1356
  %1368 = lshr i32 %1367, 4
  %1369 = trunc i32 %1368 to i8
  %1370 = and i8 %1369, 1
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1370, i8* %1371, align 1, !tbaa !2446
  %1372 = icmp eq i32 %1356, 0
  %1373 = zext i1 %1372 to i8
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1373, i8* %1374, align 1, !tbaa !2447
  %1375 = lshr i32 %1356, 31
  %1376 = trunc i32 %1375 to i8
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1376, i8* %1377, align 1, !tbaa !2448
  %1378 = lshr i32 %1355, 31
  %1379 = xor i32 %1375, %1378
  %1380 = add nuw nsw i32 %1379, %1378
  %1381 = icmp eq i32 %1380, 2
  %1382 = zext i1 %1381 to i8
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1382, i8* %1383, align 1, !tbaa !2449
  %1384 = load i64, i64* %PC
  %1385 = add i64 %1384, 18
  %1386 = load i64, i64* %PC
  %1387 = add i64 %1386, 6
  %1388 = load i64, i64* %PC
  %1389 = add i64 %1388, 6
  store i64 %1389, i64* %PC
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1391 = load i8, i8* %1390, align 1, !tbaa !2448
  %1392 = icmp ne i8 %1391, 0
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1394 = load i8, i8* %1393, align 1, !tbaa !2449
  %1395 = icmp ne i8 %1394, 0
  %1396 = xor i1 %1392, %1395
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1399 = select i1 %1396, i64 %1385, i64 %1387
  store i64 %1399, i64* %1398, align 8, !tbaa !2451
  %1400 = load i8, i8* %BRANCH_TAKEN
  %1401 = icmp eq i8 %1400, 1
  br i1 %1401, label %block_40081f, label %block_400813

block_400887:                                     ; preds = %block_400857
  %1402 = load i64, i64* %PC
  %1403 = add i64 %1402, 10
  store i64 %1403, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2451
  %1404 = load i64, i64* %PC
  %1405 = add i64 %1404, 2
  store i64 %1405, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %1406 = load i64, i64* %PC
  %1407 = sub i64 %1406, 1059
  %1408 = load i64, i64* %PC
  %1409 = add i64 %1408, 5
  %1410 = load i64, i64* %PC
  %1411 = add i64 %1410, 5
  store i64 %1411, i64* %PC
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1413 = load i64, i64* %1412, align 8, !tbaa !2451
  %1414 = add i64 %1413, -8
  %1415 = inttoptr i64 %1414 to i64*
  store i64 %1409, i64* %1415
  store i64 %1414, i64* %1412, align 8, !tbaa !2451
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1407, i64* %1416, align 8, !tbaa !2451
  %1417 = load i64, i64* %PC
  %1418 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1417, %struct.Memory* %321)
  %1419 = load i64, i64* %RBP
  %1420 = sub i64 %1419, 4
  %1421 = load i64, i64* %PC
  %1422 = add i64 %1421, 7
  store i64 %1422, i64* %PC
  %1423 = inttoptr i64 %1420 to i32*
  store i32 1, i32* %1423
  %1424 = load i64, i64* %RBP
  %1425 = sub i64 %1424, 108
  %1426 = load i32, i32* %EAX
  %1427 = zext i32 %1426 to i64
  %1428 = load i64, i64* %PC
  %1429 = add i64 %1428, 3
  store i64 %1429, i64* %PC
  %1430 = inttoptr i64 %1425 to i32*
  store i32 %1426, i32* %1430
  br label %block_4008a2

block_40071e:                                     ; preds = %block_4006d8, %block_4006ae
  %MEMORY.6 = phi %struct.Memory* [ %321, %block_4006ae ], [ %321, %block_4006d8 ]
  %1431 = load i64, i64* %PC
  %1432 = tail call %struct.Memory* @sub_40071e(%struct.State* %0, i64 %1431, %struct.Memory* %MEMORY.6)
  ret %struct.Memory* %1432

block_4006e6:                                     ; preds = %block_4006d8
  %1433 = load i64, i64* %PC
  %1434 = tail call %struct.Memory* @sub_4006e6(%struct.State* %0, i64 %1433, %struct.Memory* %321)
  ret %struct.Memory* %1434

block_400702:                                     ; preds = %block_4006d8
  %1435 = load i64, i64* %PC
  %1436 = tail call %struct.Memory* @sub_400702(%struct.State* %0, i64 %1435, %struct.Memory* %321)
  ret %struct.Memory* %1436

; <label>:1437:                                   ; preds = %block_4006d8
  %1438 = load i64, i64* %PC
  %1439 = tail call %struct.Memory* @__remill_missing_block(%struct.State* %0, i64 %1438, %struct.Memory* %321)
  ret %struct.Memory* %1439
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006e6(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0
  %PC = bitcast %union.anon* %6 to i64*
  store i64 %1, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %10 = bitcast %union.anon* %9 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0
  %EAX = bitcast %union.anon* %13 to i32*
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %15 = getelementptr inbounds %struct.GPR, %struct.GPR* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %15, i32 0, i32 0
  %EDX = bitcast %union.anon* %16 to i32*
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 11
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %EDI = bitcast %union.anon* %19 to i32*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RAX = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RCX = bitcast %union.anon* %25 to i64*
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %27 = getelementptr inbounds %struct.GPR, %struct.GPR* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.Reg, %struct.Reg* %27, i32 0, i32 0
  %RDX = bitcast %union.anon* %28 to i64*
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 9
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %RSI = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RDI = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 13
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RSP = bitcast %union.anon* %37 to i64*
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %39 = getelementptr inbounds %struct.GPR, %struct.GPR* %38, i32 0, i32 15
  %40 = getelementptr inbounds %struct.Reg, %struct.Reg* %39, i32 0, i32 0
  %RBP = bitcast %union.anon* %40 to i64*
  br label %block_4006e6

block_4007ff:                                     ; preds = %block_4007d9
  %41 = load i64, i64* %RBP
  %42 = sub i64 %41, 20
  %43 = load i64, i64* %PC
  %44 = add i64 %43, 4
  store i64 %44, i64* %PC
  %45 = inttoptr i64 %42 to i32*
  %46 = load i32, i32* %45
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %47, align 1, !tbaa !2428
  %48 = and i32 %46, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %48) #16
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %52 = xor i8 %51, 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %52, i8* %53, align 1, !tbaa !2445
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %54, align 1, !tbaa !2446
  %55 = icmp eq i32 %46, 0
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %56, i8* %57, align 1, !tbaa !2447
  %58 = lshr i32 %46, 31
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %59, i8* %60, align 1, !tbaa !2448
  %61 = lshr i32 %46, 31
  %62 = xor i32 %58, %61
  %63 = add nuw nsw i32 %62, %61
  %64 = icmp eq i32 %63, 2
  %65 = zext i1 %64 to i8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %65, i8* %66, align 1, !tbaa !2449
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 16
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 6
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 6
  store i64 %72, i64* %PC
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %74 = load i8, i8* %73, align 1, !tbaa !2447
  %75 = icmp ne i8 %74, 0
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %77 = load i8, i8* %76, align 1, !tbaa !2448
  %78 = icmp ne i8 %77, 0
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %80 = load i8, i8* %79, align 1, !tbaa !2449
  %81 = icmp ne i8 %80, 0
  %82 = xor i1 %78, %81
  %83 = or i1 %75, %82
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %86 = select i1 %83, i64 %68, i64 %70
  store i64 %86, i64* %85, align 8, !tbaa !2451
  %87 = load i8, i8* %BRANCH_TAKEN
  %88 = icmp eq i8 %87, 1
  br i1 %88, label %block_400813, label %block_400809

block_400776:                                     ; preds = %block_400750
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2451
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 2
  store i64 %90, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %91 = load i64, i64* %PC
  %92 = sub i64 %91, 786
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 5
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 5
  store i64 %96, i64* %PC
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %98 = load i64, i64* %97, align 8, !tbaa !2451
  %99 = add i64 %98, -8
  %100 = inttoptr i64 %99 to i64*
  store i64 %94, i64* %100
  store i64 %99, i64* %97, align 8, !tbaa !2451
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %92, i64* %101, align 8, !tbaa !2451
  %102 = load i64, i64* %PC
  %103 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %102, %struct.Memory* %MEMORY.3)
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 10
  store i64 %105, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2451
  %106 = load i64, i64* %RBP
  %107 = sub i64 %106, 64
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 4
  store i64 %109, i64* %PC
  store i64 %107, i64* %RSI, align 8, !tbaa !2451
  %110 = load i64, i64* %RBP
  %111 = sub i64 %110, 96
  %112 = load i32, i32* %EAX
  %113 = zext i32 %112 to i64
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 3
  store i64 %115, i64* %PC
  %116 = inttoptr i64 %111 to i32*
  store i32 %112, i32* %116
  %117 = load i64, i64* %PC
  %118 = add i64 %117, 2
  store i64 %118, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %119 = load i64, i64* %PC
  %120 = sub i64 %119, 810
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 5
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 5
  store i64 %124, i64* %PC
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %126 = load i64, i64* %125, align 8, !tbaa !2451
  %127 = add i64 %126, -8
  %128 = inttoptr i64 %127 to i64*
  store i64 %122, i64* %128
  store i64 %127, i64* %125, align 8, !tbaa !2451
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %120, i64* %129, align 8, !tbaa !2451
  %130 = load i64, i64* %PC
  %131 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %130, %struct.Memory* %103)
  %132 = load i64, i64* %RDI
  %133 = load i32, i32* %EDI
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* %PC
  %136 = add i64 %135, 2
  store i64 %136, i64* %PC
  %137 = xor i64 %134, %132
  %138 = trunc i64 %137 to i32
  %139 = and i64 %137, 4294967295
  store i64 %139, i64* %RDI, align 8, !tbaa !2451
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %140, align 1, !tbaa !2428
  %141 = and i32 %138, 255
  %142 = call i32 @llvm.ctpop.i32(i32 %141) #16
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %145, i8* %146, align 1, !tbaa !2445
  %147 = icmp eq i32 %138, 0
  %148 = zext i1 %147 to i8
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %148, i8* %149, align 1, !tbaa !2447
  %150 = lshr i32 %138, 31
  %151 = trunc i32 %150 to i8
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %151, i8* %152, align 1, !tbaa !2448
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %153, align 1, !tbaa !2449
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %154, align 1, !tbaa !2446
  %155 = load i64, i64* %RBP
  %156 = sub i64 %155, 100
  %157 = load i32, i32* %EAX
  %158 = zext i32 %157 to i64
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 3
  store i64 %160, i64* %PC
  %161 = inttoptr i64 %156 to i32*
  store i32 %157, i32* %161
  %162 = load i64, i64* %PC
  %163 = sub i64 %162, 788
  %164 = load i64, i64* %PC
  %165 = add i64 %164, 5
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 5
  store i64 %167, i64* %PC
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %169 = load i64, i64* %168, align 8, !tbaa !2451
  %170 = add i64 %169, -8
  %171 = inttoptr i64 %170 to i64*
  store i64 %165, i64* %171
  store i64 %170, i64* %168, align 8, !tbaa !2451
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %163, i64* %172, align 8, !tbaa !2451
  %173 = load i64, i64* %PC
  %174 = call %struct.Memory* @ext_6010c8_exit(%struct.State* %0, i64 %173, %struct.Memory* %131)
  %175 = load i64, i64* %PC
  %176 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %175, %struct.Memory* %174)
  ret %struct.Memory* %176

block_4006e6:                                     ; preds = %block_4006d8, %3
  %MEMORY.0 = phi %struct.Memory* [ %2, %3 ], [ %348, %block_4006d8 ]
  %177 = load i64, i64* %RBP
  %178 = sub i64 %177, 24
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 3
  store i64 %180, i64* %PC
  %181 = inttoptr i64 %178 to i32*
  %182 = load i32, i32* %181
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RAX, align 8, !tbaa !2451
  %184 = load i64, i64* %RAX
  %185 = load i64, i64* %PC
  %186 = add i64 %185, 3
  store i64 %186, i64* %PC
  %187 = trunc i64 %184 to i32
  %188 = add i32 -1, %187
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RAX, align 8, !tbaa !2451
  %190 = icmp ult i32 %188, %187
  %191 = icmp ult i32 %188, -1
  %192 = or i1 %190, %191
  %193 = zext i1 %192 to i8
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %193, i8* %194, align 1, !tbaa !2428
  %195 = and i32 %188, 255
  %196 = call i32 @llvm.ctpop.i32(i32 %195) #16
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %199, i8* %200, align 1, !tbaa !2445
  %201 = xor i64 -1, %184
  %202 = trunc i64 %201 to i32
  %203 = xor i32 %202, %188
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %206, i8* %207, align 1, !tbaa !2446
  %208 = icmp eq i32 %188, 0
  %209 = zext i1 %208 to i8
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %209, i8* %210, align 1, !tbaa !2447
  %211 = lshr i32 %188, 31
  %212 = trunc i32 %211 to i8
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %212, i8* %213, align 1, !tbaa !2448
  %214 = lshr i32 %187, 31
  %215 = xor i32 %211, %214
  %216 = xor i32 %211, 1
  %217 = add nuw nsw i32 %215, %216
  %218 = icmp eq i32 %217, 2
  %219 = zext i1 %218 to i8
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %219, i8* %220, align 1, !tbaa !2449
  %221 = load i64, i64* %RBP
  %222 = sub i64 %221, 24
  %223 = load i32, i32* %EAX
  %224 = zext i32 %223 to i64
  %225 = load i64, i64* %PC
  %226 = add i64 %225, 3
  store i64 %226, i64* %PC
  %227 = inttoptr i64 %222 to i32*
  store i32 %223, i32* %227
  %228 = load i64, i64* %PC
  %229 = add i64 %228, 97
  %230 = load i64, i64* %PC
  %231 = add i64 %230, 5
  store i64 %231, i64* %PC
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %229, i64* %232, align 8, !tbaa !2451
  br label %block_400750

block_4006d8:                                     ; preds = %block_4006ae
  %233 = load i64, i64* %RBP
  %234 = sub i64 %233, 80
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 4
  store i64 %236, i64* %PC
  %237 = inttoptr i64 %234 to i64*
  %238 = load i64, i64* %237
  store i64 %238, i64* %RAX, align 8, !tbaa !2451
  %239 = load i64, i64* %RAX
  %240 = mul i64 %239, 8
  %241 = add i64 %240, add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 8)
  %242 = load i64, i64* %PC
  %243 = add i64 %242, 8
  store i64 %243, i64* %PC
  %244 = inttoptr i64 %241 to i64*
  %245 = load i64, i64* %244
  store i64 %245, i64* %RCX, align 8, !tbaa !2451
  %246 = load i64, i64* %RCX
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 2
  store i64 %248, i64* %PC
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %246, i64* %249, align 8, !tbaa !2451
  %250 = load i64, i64* %PC
  switch i64 %250, label %1491 [
    i64 4196098, label %block_400702
    i64 4196112, label %block_400710
    i64 4196084, label %block_4006f4
    i64 4196126, label %block_40071e
    i64 4196070, label %block_4006e6
  ]

block_400857:                                     ; preds = %block_40082b, %block_40081f
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.4, %block_40081f ], [ %MEMORY.4, %block_40082b ]
  %251 = load i64, i64* %PC
  %252 = add i64 %251, 10
  store i64 %252, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %253 = load i64, i64* %RBP
  %254 = sub i64 %253, 24
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 4
  store i64 %256, i64* %PC
  %257 = inttoptr i64 %254 to i32*
  %258 = load i32, i32* %257
  %259 = sext i32 %258 to i64
  store i64 %259, i64* %RCX, align 8, !tbaa !2451
  %260 = load i64, i64* %RCX
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 4
  store i64 %262, i64* %PC
  %263 = sext i64 %260 to i128
  %264 = and i128 %263, -18446744073709551616
  %265 = zext i64 %260 to i128
  %266 = or i128 %264, %265
  %267 = mul nsw i128 11, %266
  %268 = trunc i128 %267 to i64
  store i64 %268, i64* %RCX, align 8, !tbaa !2451
  %269 = sext i64 %268 to i128
  %270 = icmp ne i128 %269, %267
  %271 = zext i1 %270 to i8
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %271, i8* %272, align 1, !tbaa !2428
  %273 = trunc i128 %267 to i32
  %274 = and i32 %273, 255
  %275 = call i32 @llvm.ctpop.i32(i32 %274) #16
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  %278 = xor i8 %277, 1
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %278, i8* %279, align 1, !tbaa !2445
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %280, align 1, !tbaa !2446
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %281, align 1, !tbaa !2447
  %282 = lshr i64 %268, 63
  %283 = trunc i64 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %283, i8* %284, align 1, !tbaa !2448
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %271, i8* %285, align 1, !tbaa !2449
  %286 = load i64, i64* %RAX
  %287 = load i64, i64* %RCX
  %288 = load i64, i64* %PC
  %289 = add i64 %288, 3
  store i64 %289, i64* %PC
  %290 = add i64 %287, %286
  store i64 %290, i64* %RAX, align 8, !tbaa !2451
  %291 = icmp ult i64 %290, %286
  %292 = icmp ult i64 %290, %287
  %293 = or i1 %291, %292
  %294 = zext i1 %293 to i8
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %294, i8* %295, align 1, !tbaa !2428
  %296 = trunc i64 %290 to i32
  %297 = and i32 %296, 255
  %298 = call i32 @llvm.ctpop.i32(i32 %297) #16
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %301, i8* %302, align 1, !tbaa !2445
  %303 = xor i64 %287, %286
  %304 = xor i64 %303, %290
  %305 = lshr i64 %304, 4
  %306 = trunc i64 %305 to i8
  %307 = and i8 %306, 1
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %307, i8* %308, align 1, !tbaa !2446
  %309 = icmp eq i64 %290, 0
  %310 = zext i1 %309 to i8
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %310, i8* %311, align 1, !tbaa !2447
  %312 = lshr i64 %290, 63
  %313 = trunc i64 %312 to i8
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %313, i8* %314, align 1, !tbaa !2448
  %315 = lshr i64 %286, 63
  %316 = lshr i64 %287, 63
  %317 = xor i64 %312, %315
  %318 = xor i64 %312, %316
  %319 = add nuw nsw i64 %317, %318
  %320 = icmp eq i64 %319, 2
  %321 = zext i1 %320 to i8
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %321, i8* %322, align 1, !tbaa !2449
  %323 = load i64, i64* %RBP
  %324 = sub i64 %323, 20
  %325 = load i64, i64* %PC
  %326 = add i64 %325, 4
  store i64 %326, i64* %PC
  %327 = inttoptr i64 %324 to i32*
  %328 = load i32, i32* %327
  %329 = sext i32 %328 to i64
  store i64 %329, i64* %RCX, align 8, !tbaa !2451
  %330 = load i64, i64* %RAX
  %331 = load i64, i64* %RCX
  %332 = add i64 %331, %330
  %333 = load i64, i64* %PC
  %334 = add i64 %333, 4
  store i64 %334, i64* %PC
  %335 = inttoptr i64 %332 to i8*
  store i8 88, i8* %335
  %336 = load i64, i64* %PC
  %337 = sub i64 %336, 740
  %338 = load i64, i64* %PC
  %339 = add i64 %338, 5
  %340 = load i64, i64* %PC
  %341 = add i64 %340, 5
  store i64 %341, i64* %PC
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %343 = load i64, i64* %342, align 8, !tbaa !2451
  %344 = add i64 %343, -8
  %345 = inttoptr i64 %344 to i64*
  store i64 %339, i64* %345
  store i64 %344, i64* %342, align 8, !tbaa !2451
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %337, i64* %346, align 8, !tbaa !2451
  %347 = load i64, i64* %PC
  %348 = call %struct.Memory* @sub_400590_draw(%struct.State* %0, i64 %347, %struct.Memory* %MEMORY.1)
  %349 = load i64, i64* %RBP
  %350 = sub i64 %349, 36
  %351 = load i64, i64* %PC
  %352 = add i64 %351, 3
  store i64 %352, i64* %PC
  %353 = inttoptr i64 %350 to i32*
  %354 = load i32, i32* %353
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RDX, align 8, !tbaa !2451
  %356 = load i64, i64* %RDX
  %357 = load i64, i64* %PC
  %358 = add i64 %357, 3
  store i64 %358, i64* %PC
  %359 = trunc i64 %356 to i32
  %360 = add i32 1, %359
  %361 = zext i32 %360 to i64
  store i64 %361, i64* %RDX, align 8, !tbaa !2451
  %362 = icmp ult i32 %360, %359
  %363 = icmp ult i32 %360, 1
  %364 = or i1 %362, %363
  %365 = zext i1 %364 to i8
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %365, i8* %366, align 1, !tbaa !2428
  %367 = and i32 %360, 255
  %368 = call i32 @llvm.ctpop.i32(i32 %367) #16
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = xor i8 %370, 1
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %371, i8* %372, align 1, !tbaa !2445
  %373 = xor i64 1, %356
  %374 = trunc i64 %373 to i32
  %375 = xor i32 %374, %360
  %376 = lshr i32 %375, 4
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %378, i8* %379, align 1, !tbaa !2446
  %380 = icmp eq i32 %360, 0
  %381 = zext i1 %380 to i8
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %381, i8* %382, align 1, !tbaa !2447
  %383 = lshr i32 %360, 31
  %384 = trunc i32 %383 to i8
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %384, i8* %385, align 1, !tbaa !2448
  %386 = lshr i32 %359, 31
  %387 = xor i32 %383, %386
  %388 = add nuw nsw i32 %387, %383
  %389 = icmp eq i32 %388, 2
  %390 = zext i1 %389 to i8
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %390, i8* %391, align 1, !tbaa !2449
  %392 = load i64, i64* %RBP
  %393 = sub i64 %392, 36
  %394 = load i32, i32* %EDX
  %395 = zext i32 %394 to i64
  %396 = load i64, i64* %PC
  %397 = add i64 %396, 3
  store i64 %397, i64* %PC
  %398 = inttoptr i64 %393 to i32*
  store i32 %394, i32* %398
  %399 = load i64, i64* %PC
  %400 = sub i64 %399, 478
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 5
  store i64 %402, i64* %PC
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %400, i64* %403, align 8, !tbaa !2451
  %404 = load i64, i64* %RBP
  %405 = sub i64 %404, 36
  %406 = load i64, i64* %PC
  %407 = add i64 %406, 4
  store i64 %407, i64* %PC
  %408 = inttoptr i64 %405 to i32*
  %409 = load i32, i32* %408
  %410 = sub i32 %409, 28
  %411 = icmp ult i32 %409, 28
  %412 = zext i1 %411 to i8
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %412, i8* %413, align 1, !tbaa !2428
  %414 = and i32 %410, 255
  %415 = call i32 @llvm.ctpop.i32(i32 %414) #16
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  %418 = xor i8 %417, 1
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %418, i8* %419, align 1, !tbaa !2445
  %420 = xor i32 %409, 28
  %421 = xor i32 %420, %410
  %422 = lshr i32 %421, 4
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %424, i8* %425, align 1, !tbaa !2446
  %426 = icmp eq i32 %410, 0
  %427 = zext i1 %426 to i8
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %427, i8* %428, align 1, !tbaa !2447
  %429 = lshr i32 %410, 31
  %430 = trunc i32 %429 to i8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %430, i8* %431, align 1, !tbaa !2448
  %432 = lshr i32 %409, 31
  %433 = xor i32 %429, %432
  %434 = add nuw nsw i32 %433, %432
  %435 = icmp eq i32 %434, 2
  %436 = zext i1 %435 to i8
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %436, i8* %437, align 1, !tbaa !2449
  %438 = load i64, i64* %PC
  %439 = add i64 %438, 479
  %440 = load i64, i64* %PC
  %441 = add i64 %440, 6
  %442 = load i64, i64* %PC
  %443 = add i64 %442, 6
  store i64 %443, i64* %PC
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %445 = load i8, i8* %444, align 1, !tbaa !2448
  %446 = icmp ne i8 %445, 0
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %448 = load i8, i8* %447, align 1, !tbaa !2449
  %449 = icmp ne i8 %448, 0
  %450 = xor i1 %446, %449
  %451 = xor i1 %450, true
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %454 = select i1 %450, i64 %441, i64 %439
  store i64 %454, i64* %453, align 8, !tbaa !2451
  %455 = load i8, i8* %BRANCH_TAKEN
  %456 = icmp eq i8 %455, 1
  br i1 %456, label %block_400887, label %block_4006ae

block_4007d9:                                     ; preds = %block_4007cf
  %457 = load i64, i64* %PC
  %458 = add i64 %457, 10
  store i64 %458, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %459 = load i64, i64* %RBP
  %460 = sub i64 %459, 24
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 4
  store i64 %462, i64* %PC
  %463 = inttoptr i64 %460 to i32*
  %464 = load i32, i32* %463
  %465 = sext i32 %464 to i64
  store i64 %465, i64* %RCX, align 8, !tbaa !2451
  %466 = load i64, i64* %RCX
  %467 = load i64, i64* %PC
  %468 = add i64 %467, 4
  store i64 %468, i64* %PC
  %469 = sext i64 %466 to i128
  %470 = and i128 %469, -18446744073709551616
  %471 = zext i64 %466 to i128
  %472 = or i128 %470, %471
  %473 = mul nsw i128 11, %472
  %474 = trunc i128 %473 to i64
  store i64 %474, i64* %RCX, align 8, !tbaa !2451
  %475 = sext i64 %474 to i128
  %476 = icmp ne i128 %475, %473
  %477 = zext i1 %476 to i8
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %477, i8* %478, align 1, !tbaa !2428
  %479 = trunc i128 %473 to i32
  %480 = and i32 %479, 255
  %481 = call i32 @llvm.ctpop.i32(i32 %480) #16
  %482 = trunc i32 %481 to i8
  %483 = and i8 %482, 1
  %484 = xor i8 %483, 1
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %484, i8* %485, align 1, !tbaa !2445
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %486, align 1, !tbaa !2446
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %487, align 1, !tbaa !2447
  %488 = lshr i64 %474, 63
  %489 = trunc i64 %488 to i8
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %489, i8* %490, align 1, !tbaa !2448
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %477, i8* %491, align 1, !tbaa !2449
  %492 = load i64, i64* %RAX
  %493 = load i64, i64* %RCX
  %494 = load i64, i64* %PC
  %495 = add i64 %494, 3
  store i64 %495, i64* %PC
  %496 = add i64 %493, %492
  store i64 %496, i64* %RAX, align 8, !tbaa !2451
  %497 = icmp ult i64 %496, %492
  %498 = icmp ult i64 %496, %493
  %499 = or i1 %497, %498
  %500 = zext i1 %499 to i8
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %500, i8* %501, align 1, !tbaa !2428
  %502 = trunc i64 %496 to i32
  %503 = and i32 %502, 255
  %504 = call i32 @llvm.ctpop.i32(i32 %503) #16
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  %507 = xor i8 %506, 1
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %507, i8* %508, align 1, !tbaa !2445
  %509 = xor i64 %493, %492
  %510 = xor i64 %509, %496
  %511 = lshr i64 %510, 4
  %512 = trunc i64 %511 to i8
  %513 = and i8 %512, 1
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %513, i8* %514, align 1, !tbaa !2446
  %515 = icmp eq i64 %496, 0
  %516 = zext i1 %515 to i8
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %516, i8* %517, align 1, !tbaa !2447
  %518 = lshr i64 %496, 63
  %519 = trunc i64 %518 to i8
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %519, i8* %520, align 1, !tbaa !2448
  %521 = lshr i64 %492, 63
  %522 = lshr i64 %493, 63
  %523 = xor i64 %518, %521
  %524 = xor i64 %518, %522
  %525 = add nuw nsw i64 %523, %524
  %526 = icmp eq i64 %525, 2
  %527 = zext i1 %526 to i8
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %527, i8* %528, align 1, !tbaa !2449
  %529 = load i64, i64* %RBP
  %530 = sub i64 %529, 20
  %531 = load i64, i64* %PC
  %532 = add i64 %531, 4
  store i64 %532, i64* %PC
  %533 = inttoptr i64 %530 to i32*
  %534 = load i32, i32* %533
  %535 = sext i32 %534 to i64
  store i64 %535, i64* %RCX, align 8, !tbaa !2451
  %536 = load i64, i64* %RAX
  %537 = load i64, i64* %RCX
  %538 = add i64 %537, %536
  %539 = load i64, i64* %PC
  %540 = add i64 %539, 4
  store i64 %540, i64* %PC
  %541 = inttoptr i64 %538 to i8*
  %542 = load i8, i8* %541
  %543 = sext i8 %542 to i64
  %544 = and i64 %543, 4294967295
  store i64 %544, i64* %RDX, align 8, !tbaa !2451
  %545 = load i32, i32* %EDX
  %546 = zext i32 %545 to i64
  %547 = load i64, i64* %PC
  %548 = add i64 %547, 3
  store i64 %548, i64* %PC
  %549 = sub i32 %545, 124
  %550 = icmp ult i32 %545, 124
  %551 = zext i1 %550 to i8
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %551, i8* %552, align 1, !tbaa !2428
  %553 = and i32 %549, 255
  %554 = call i32 @llvm.ctpop.i32(i32 %553) #16
  %555 = trunc i32 %554 to i8
  %556 = and i8 %555, 1
  %557 = xor i8 %556, 1
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %557, i8* %558, align 1, !tbaa !2445
  %559 = xor i64 124, %546
  %560 = trunc i64 %559 to i32
  %561 = xor i32 %560, %549
  %562 = lshr i32 %561, 4
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %564, i8* %565, align 1, !tbaa !2446
  %566 = icmp eq i32 %549, 0
  %567 = zext i1 %566 to i8
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %567, i8* %568, align 1, !tbaa !2447
  %569 = lshr i32 %549, 31
  %570 = trunc i32 %569 to i8
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %570, i8* %571, align 1, !tbaa !2448
  %572 = lshr i32 %545, 31
  %573 = xor i32 %569, %572
  %574 = add nuw nsw i32 %573, %572
  %575 = icmp eq i32 %574, 2
  %576 = zext i1 %575 to i8
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %576, i8* %577, align 1, !tbaa !2449
  %578 = load i64, i64* %PC
  %579 = add i64 %578, 26
  %580 = load i64, i64* %PC
  %581 = add i64 %580, 6
  %582 = load i64, i64* %PC
  %583 = add i64 %582, 6
  store i64 %583, i64* %PC
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %585 = load i8, i8* %584, align 1, !tbaa !2447
  %586 = icmp eq i8 %585, 0
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %589 = select i1 %586, i64 %579, i64 %581
  store i64 %589, i64* %588, align 8, !tbaa !2451
  %590 = load i8, i8* %BRANCH_TAKEN
  %591 = icmp eq i8 %590, 1
  br i1 %591, label %block_400813, label %block_4007ff

block_4006ae:                                     ; preds = %block_400857
  %592 = load i64, i64* %RBP
  %593 = sub i64 %592, 20
  %594 = load i64, i64* %PC
  %595 = add i64 %594, 3
  store i64 %595, i64* %PC
  %596 = inttoptr i64 %593 to i32*
  %597 = load i32, i32* %596
  %598 = zext i32 %597 to i64
  store i64 %598, i64* %RAX, align 8, !tbaa !2451
  %599 = load i64, i64* %RBP
  %600 = sub i64 %599, 28
  %601 = load i32, i32* %EAX
  %602 = zext i32 %601 to i64
  %603 = load i64, i64* %PC
  %604 = add i64 %603, 3
  store i64 %604, i64* %PC
  %605 = inttoptr i64 %600 to i32*
  store i32 %601, i32* %605
  %606 = load i64, i64* %RBP
  %607 = sub i64 %606, 24
  %608 = load i64, i64* %PC
  %609 = add i64 %608, 3
  store i64 %609, i64* %PC
  %610 = inttoptr i64 %607 to i32*
  %611 = load i32, i32* %610
  %612 = zext i32 %611 to i64
  store i64 %612, i64* %RAX, align 8, !tbaa !2451
  %613 = load i64, i64* %RBP
  %614 = sub i64 %613, 32
  %615 = load i32, i32* %EAX
  %616 = zext i32 %615 to i64
  %617 = load i64, i64* %PC
  %618 = add i64 %617, 3
  store i64 %618, i64* %PC
  %619 = inttoptr i64 %614 to i32*
  store i32 %615, i32* %619
  %620 = load i64, i64* %RBP
  %621 = sub i64 %620, 36
  %622 = load i64, i64* %PC
  %623 = add i64 %622, 4
  store i64 %623, i64* %PC
  %624 = inttoptr i64 %621 to i32*
  %625 = load i32, i32* %624
  %626 = sext i32 %625 to i64
  store i64 %626, i64* %RCX, align 8, !tbaa !2451
  %627 = load i64, i64* %RBP
  %628 = load i64, i64* %RCX
  %629 = add i64 %627, -64
  %630 = add i64 %629, %628
  %631 = load i64, i64* %PC
  %632 = add i64 %631, 5
  store i64 %632, i64* %PC
  %633 = inttoptr i64 %630 to i8*
  %634 = load i8, i8* %633
  %635 = sext i8 %634 to i64
  %636 = and i64 %635, 4294967295
  store i64 %636, i64* %RAX, align 8, !tbaa !2451
  %637 = load i64, i64* %RAX
  %638 = load i64, i64* %PC
  %639 = add i64 %638, 3
  store i64 %639, i64* %PC
  %640 = trunc i64 %637 to i32
  %641 = add i32 -97, %640
  %642 = zext i32 %641 to i64
  store i64 %642, i64* %RAX, align 8, !tbaa !2451
  %643 = icmp ult i32 %641, %640
  %644 = icmp ult i32 %641, -97
  %645 = or i1 %643, %644
  %646 = zext i1 %645 to i8
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %646, i8* %647, align 1, !tbaa !2428
  %648 = and i32 %641, 255
  %649 = call i32 @llvm.ctpop.i32(i32 %648) #16
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  %652 = xor i8 %651, 1
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %652, i8* %653, align 1, !tbaa !2445
  %654 = xor i64 -97, %637
  %655 = trunc i64 %654 to i32
  %656 = xor i32 %655, %641
  %657 = lshr i32 %656, 4
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %659, i8* %660, align 1, !tbaa !2446
  %661 = icmp eq i32 %641, 0
  %662 = zext i1 %661 to i8
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %662, i8* %663, align 1, !tbaa !2447
  %664 = lshr i32 %641, 31
  %665 = trunc i32 %664 to i8
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %665, i8* %666, align 1, !tbaa !2448
  %667 = lshr i32 %640, 31
  %668 = xor i32 %664, %667
  %669 = xor i32 %664, 1
  %670 = add nuw nsw i32 %668, %669
  %671 = icmp eq i32 %670, 2
  %672 = zext i1 %671 to i8
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %672, i8* %673, align 1, !tbaa !2449
  %674 = load i32, i32* %EAX
  %675 = zext i32 %674 to i64
  %676 = load i64, i64* %PC
  %677 = add i64 %676, 2
  store i64 %677, i64* %PC
  %678 = and i64 %675, 4294967295
  store i64 %678, i64* %RCX, align 8, !tbaa !2451
  %679 = load i64, i64* %RAX
  %680 = load i64, i64* %PC
  %681 = add i64 %680, 3
  store i64 %681, i64* %PC
  %682 = trunc i64 %679 to i32
  %683 = sub i32 %682, 22
  %684 = zext i32 %683 to i64
  store i64 %684, i64* %RAX, align 8, !tbaa !2451
  %685 = icmp ult i32 %682, 22
  %686 = zext i1 %685 to i8
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %686, i8* %687, align 1, !tbaa !2428
  %688 = and i32 %683, 255
  %689 = call i32 @llvm.ctpop.i32(i32 %688) #16
  %690 = trunc i32 %689 to i8
  %691 = and i8 %690, 1
  %692 = xor i8 %691, 1
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %692, i8* %693, align 1, !tbaa !2445
  %694 = xor i64 22, %679
  %695 = trunc i64 %694 to i32
  %696 = xor i32 %695, %683
  %697 = lshr i32 %696, 4
  %698 = trunc i32 %697 to i8
  %699 = and i8 %698, 1
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %699, i8* %700, align 1, !tbaa !2446
  %701 = icmp eq i32 %683, 0
  %702 = zext i1 %701 to i8
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %702, i8* %703, align 1, !tbaa !2447
  %704 = lshr i32 %683, 31
  %705 = trunc i32 %704 to i8
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %705, i8* %706, align 1, !tbaa !2448
  %707 = lshr i32 %682, 31
  %708 = xor i32 %704, %707
  %709 = add nuw nsw i32 %708, %707
  %710 = icmp eq i32 %709, 2
  %711 = zext i1 %710 to i8
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %711, i8* %712, align 1, !tbaa !2449
  %713 = load i64, i64* %RBP
  %714 = sub i64 %713, 80
  %715 = load i64, i64* %RCX
  %716 = load i64, i64* %PC
  %717 = add i64 %716, 4
  store i64 %717, i64* %PC
  %718 = inttoptr i64 %714 to i64*
  store i64 %715, i64* %718
  %719 = load i64, i64* %RBP
  %720 = sub i64 %719, 84
  %721 = load i32, i32* %EAX
  %722 = zext i32 %721 to i64
  %723 = load i64, i64* %PC
  %724 = add i64 %723, 3
  store i64 %724, i64* %PC
  %725 = inttoptr i64 %720 to i32*
  store i32 %721, i32* %725
  %726 = load i64, i64* %PC
  %727 = add i64 %726, 76
  %728 = load i64, i64* %PC
  %729 = add i64 %728, 6
  %730 = load i64, i64* %PC
  %731 = add i64 %730, 6
  store i64 %731, i64* %PC
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %733 = load i8, i8* %732, align 1, !tbaa !2428
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %735 = load i8, i8* %734, align 1, !tbaa !2447
  %736 = or i8 %735, %733
  %737 = icmp eq i8 %736, 0
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %740 = select i1 %737, i64 %727, i64 %729
  store i64 %740, i64* %739, align 8, !tbaa !2451
  %741 = load i8, i8* %BRANCH_TAKEN
  %742 = icmp eq i8 %741, 1
  br i1 %742, label %block_40071e, label %block_4006d8

block_4007a9:                                     ; preds = %block_400750
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %743 = load i64, i64* %RBP
  %744 = sub i64 %743, 24
  %745 = load i64, i64* %PC
  %746 = add i64 %745, 4
  store i64 %746, i64* %PC
  %747 = inttoptr i64 %744 to i32*
  %748 = load i32, i32* %747
  %749 = sext i32 %748 to i64
  store i64 %749, i64* %RCX, align 8, !tbaa !2451
  %750 = load i64, i64* %RCX
  %751 = load i64, i64* %PC
  %752 = add i64 %751, 4
  store i64 %752, i64* %PC
  %753 = sext i64 %750 to i128
  %754 = and i128 %753, -18446744073709551616
  %755 = zext i64 %750 to i128
  %756 = or i128 %754, %755
  %757 = mul nsw i128 11, %756
  %758 = trunc i128 %757 to i64
  store i64 %758, i64* %RCX, align 8, !tbaa !2451
  %759 = sext i64 %758 to i128
  %760 = icmp ne i128 %759, %757
  %761 = zext i1 %760 to i8
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %761, i8* %762, align 1, !tbaa !2428
  %763 = trunc i128 %757 to i32
  %764 = and i32 %763, 255
  %765 = call i32 @llvm.ctpop.i32(i32 %764) #16
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = xor i8 %767, 1
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %768, i8* %769, align 1, !tbaa !2445
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %770, align 1, !tbaa !2446
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %771, align 1, !tbaa !2447
  %772 = lshr i64 %758, 63
  %773 = trunc i64 %772 to i8
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %773, i8* %774, align 1, !tbaa !2448
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %761, i8* %775, align 1, !tbaa !2449
  %776 = load i64, i64* %RAX
  %777 = load i64, i64* %RCX
  %778 = load i64, i64* %PC
  %779 = add i64 %778, 3
  store i64 %779, i64* %PC
  %780 = add i64 %777, %776
  store i64 %780, i64* %RAX, align 8, !tbaa !2451
  %781 = icmp ult i64 %780, %776
  %782 = icmp ult i64 %780, %777
  %783 = or i1 %781, %782
  %784 = zext i1 %783 to i8
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %784, i8* %785, align 1, !tbaa !2428
  %786 = trunc i64 %780 to i32
  %787 = and i32 %786, 255
  %788 = call i32 @llvm.ctpop.i32(i32 %787) #16
  %789 = trunc i32 %788 to i8
  %790 = and i8 %789, 1
  %791 = xor i8 %790, 1
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %791, i8* %792, align 1, !tbaa !2445
  %793 = xor i64 %777, %776
  %794 = xor i64 %793, %780
  %795 = lshr i64 %794, 4
  %796 = trunc i64 %795 to i8
  %797 = and i8 %796, 1
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %797, i8* %798, align 1, !tbaa !2446
  %799 = icmp eq i64 %780, 0
  %800 = zext i1 %799 to i8
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %800, i8* %801, align 1, !tbaa !2447
  %802 = lshr i64 %780, 63
  %803 = trunc i64 %802 to i8
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %803, i8* %804, align 1, !tbaa !2448
  %805 = lshr i64 %776, 63
  %806 = lshr i64 %777, 63
  %807 = xor i64 %802, %805
  %808 = xor i64 %802, %806
  %809 = add nuw nsw i64 %807, %808
  %810 = icmp eq i64 %809, 2
  %811 = zext i1 %810 to i8
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %811, i8* %812, align 1, !tbaa !2449
  %813 = load i64, i64* %RBP
  %814 = sub i64 %813, 20
  %815 = load i64, i64* %PC
  %816 = add i64 %815, 4
  store i64 %816, i64* %PC
  %817 = inttoptr i64 %814 to i32*
  %818 = load i32, i32* %817
  %819 = sext i32 %818 to i64
  store i64 %819, i64* %RCX, align 8, !tbaa !2451
  %820 = load i64, i64* %RAX
  %821 = load i64, i64* %RCX
  %822 = add i64 %821, %820
  %823 = load i64, i64* %PC
  %824 = add i64 %823, 4
  store i64 %824, i64* %PC
  %825 = inttoptr i64 %822 to i8*
  %826 = load i8, i8* %825
  %827 = sext i8 %826 to i64
  %828 = and i64 %827, 4294967295
  store i64 %828, i64* %RDX, align 8, !tbaa !2451
  %829 = load i32, i32* %EDX
  %830 = zext i32 %829 to i64
  %831 = load i64, i64* %PC
  %832 = add i64 %831, 3
  store i64 %832, i64* %PC
  %833 = sub i32 %829, 32
  %834 = icmp ult i32 %829, 32
  %835 = zext i1 %834 to i8
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %835, i8* %836, align 1, !tbaa !2428
  %837 = and i32 %833, 255
  %838 = call i32 @llvm.ctpop.i32(i32 %837) #16
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  %841 = xor i8 %840, 1
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %841, i8* %842, align 1, !tbaa !2445
  %843 = xor i64 32, %830
  %844 = trunc i64 %843 to i32
  %845 = xor i32 %844, %833
  %846 = lshr i32 %845, 4
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %848, i8* %849, align 1, !tbaa !2446
  %850 = icmp eq i32 %833, 0
  %851 = zext i1 %850 to i8
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %851, i8* %852, align 1, !tbaa !2447
  %853 = lshr i32 %833, 31
  %854 = trunc i32 %853 to i8
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %854, i8* %855, align 1, !tbaa !2448
  %856 = lshr i32 %829, 31
  %857 = xor i32 %853, %856
  %858 = add nuw nsw i32 %857, %856
  %859 = icmp eq i32 %858, 2
  %860 = zext i1 %859 to i8
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %860, i8* %861, align 1, !tbaa !2449
  %862 = load i64, i64* %PC
  %863 = add i64 %862, 86
  %864 = load i64, i64* %PC
  %865 = add i64 %864, 6
  %866 = load i64, i64* %PC
  %867 = add i64 %866, 6
  store i64 %867, i64* %PC
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %869 = load i8, i8* %868, align 1, !tbaa !2447
  store i8 %869, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %871 = icmp ne i8 %869, 0
  %872 = select i1 %871, i64 %863, i64 %865
  store i64 %872, i64* %870, align 8, !tbaa !2451
  %873 = load i8, i8* %BRANCH_TAKEN
  %874 = icmp eq i8 %873, 1
  br i1 %874, label %block_40081f, label %block_4007cf

block_4008a2:                                     ; preds = %block_400887, %block_400837
  %MEMORY.2 = phi %struct.Memory* [ %1474, %block_400887 ], [ %1281, %block_400837 ]
  %875 = load i64, i64* %RBP
  %876 = sub i64 %875, 4
  %877 = load i64, i64* %PC
  %878 = add i64 %877, 3
  store i64 %878, i64* %PC
  %879 = inttoptr i64 %876 to i32*
  %880 = load i32, i32* %879
  %881 = zext i32 %880 to i64
  store i64 %881, i64* %RAX, align 8, !tbaa !2451
  %882 = load i64, i64* %RSP
  %883 = load i64, i64* %PC
  %884 = add i64 %883, 4
  store i64 %884, i64* %PC
  %885 = add i64 112, %882
  store i64 %885, i64* %RSP, align 8, !tbaa !2451
  %886 = icmp ult i64 %885, %882
  %887 = icmp ult i64 %885, 112
  %888 = or i1 %886, %887
  %889 = zext i1 %888 to i8
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %889, i8* %890, align 1, !tbaa !2428
  %891 = trunc i64 %885 to i32
  %892 = and i32 %891, 255
  %893 = call i32 @llvm.ctpop.i32(i32 %892) #16
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  %896 = xor i8 %895, 1
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %896, i8* %897, align 1, !tbaa !2445
  %898 = xor i64 112, %882
  %899 = xor i64 %898, %885
  %900 = lshr i64 %899, 4
  %901 = trunc i64 %900 to i8
  %902 = and i8 %901, 1
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %902, i8* %903, align 1, !tbaa !2446
  %904 = icmp eq i64 %885, 0
  %905 = zext i1 %904 to i8
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %905, i8* %906, align 1, !tbaa !2447
  %907 = lshr i64 %885, 63
  %908 = trunc i64 %907 to i8
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %908, i8* %909, align 1, !tbaa !2448
  %910 = lshr i64 %882, 63
  %911 = xor i64 %907, %910
  %912 = add nuw nsw i64 %911, %907
  %913 = icmp eq i64 %912, 2
  %914 = zext i1 %913 to i8
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %914, i8* %915, align 1, !tbaa !2449
  %916 = load i64, i64* %PC
  %917 = add i64 %916, 1
  store i64 %917, i64* %PC
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %919 = load i64, i64* %918, align 8, !tbaa !2451
  %920 = add i64 %919, 8
  %921 = inttoptr i64 %919 to i64*
  %922 = load i64, i64* %921
  store i64 %922, i64* %RBP, align 8, !tbaa !2451
  store i64 %920, i64* %918, align 8, !tbaa !2451
  %923 = load i64, i64* %PC
  %924 = add i64 %923, 1
  store i64 %924, i64* %PC
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %927 = load i64, i64* %926, align 8, !tbaa !2451
  %928 = inttoptr i64 %927 to i64*
  %929 = load i64, i64* %928
  store i64 %929, i64* %925, align 8, !tbaa !2451
  %930 = add i64 %927, 8
  store i64 %930, i64* %926, align 8, !tbaa !2451
  ret %struct.Memory* %MEMORY.2

block_4006f4:                                     ; preds = %block_4006d8
  %931 = load i64, i64* %RBP
  %932 = sub i64 %931, 24
  %933 = load i64, i64* %PC
  %934 = add i64 %933, 3
  store i64 %934, i64* %PC
  %935 = inttoptr i64 %932 to i32*
  %936 = load i32, i32* %935
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RAX, align 8, !tbaa !2451
  %938 = load i64, i64* %RAX
  %939 = load i64, i64* %PC
  %940 = add i64 %939, 3
  store i64 %940, i64* %PC
  %941 = trunc i64 %938 to i32
  %942 = add i32 1, %941
  %943 = zext i32 %942 to i64
  store i64 %943, i64* %RAX, align 8, !tbaa !2451
  %944 = icmp ult i32 %942, %941
  %945 = icmp ult i32 %942, 1
  %946 = or i1 %944, %945
  %947 = zext i1 %946 to i8
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %947, i8* %948, align 1, !tbaa !2428
  %949 = and i32 %942, 255
  %950 = call i32 @llvm.ctpop.i32(i32 %949) #16
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  %953 = xor i8 %952, 1
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %953, i8* %954, align 1, !tbaa !2445
  %955 = xor i64 1, %938
  %956 = trunc i64 %955 to i32
  %957 = xor i32 %956, %942
  %958 = lshr i32 %957, 4
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %960, i8* %961, align 1, !tbaa !2446
  %962 = icmp eq i32 %942, 0
  %963 = zext i1 %962 to i8
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %963, i8* %964, align 1, !tbaa !2447
  %965 = lshr i32 %942, 31
  %966 = trunc i32 %965 to i8
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %966, i8* %967, align 1, !tbaa !2448
  %968 = lshr i32 %941, 31
  %969 = xor i32 %965, %968
  %970 = add nuw nsw i32 %969, %965
  %971 = icmp eq i32 %970, 2
  %972 = zext i1 %971 to i8
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %972, i8* %973, align 1, !tbaa !2449
  %974 = load i64, i64* %RBP
  %975 = sub i64 %974, 24
  %976 = load i32, i32* %EAX
  %977 = zext i32 %976 to i64
  %978 = load i64, i64* %PC
  %979 = add i64 %978, 3
  store i64 %979, i64* %PC
  %980 = inttoptr i64 %975 to i32*
  store i32 %976, i32* %980
  %981 = load i64, i64* %PC
  %982 = add i64 %981, 83
  %983 = load i64, i64* %PC
  %984 = add i64 %983, 5
  store i64 %984, i64* %PC
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %982, i64* %985, align 8, !tbaa !2451
  br label %block_400750

block_400750:                                     ; preds = %block_400710, %block_4006f4, %block_4006e6
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_4006e6 ], [ %348, %block_4006f4 ], [ %348, %block_400710 ]
  %986 = load i64, i64* %PC
  %987 = add i64 %986, 10
  store i64 %987, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %988 = load i64, i64* %RBP
  %989 = sub i64 %988, 24
  %990 = load i64, i64* %PC
  %991 = add i64 %990, 4
  store i64 %991, i64* %PC
  %992 = inttoptr i64 %989 to i32*
  %993 = load i32, i32* %992
  %994 = sext i32 %993 to i64
  store i64 %994, i64* %RCX, align 8, !tbaa !2451
  %995 = load i64, i64* %RCX
  %996 = load i64, i64* %PC
  %997 = add i64 %996, 4
  store i64 %997, i64* %PC
  %998 = sext i64 %995 to i128
  %999 = and i128 %998, -18446744073709551616
  %1000 = zext i64 %995 to i128
  %1001 = or i128 %999, %1000
  %1002 = mul nsw i128 11, %1001
  %1003 = trunc i128 %1002 to i64
  store i64 %1003, i64* %RCX, align 8, !tbaa !2451
  %1004 = sext i64 %1003 to i128
  %1005 = icmp ne i128 %1004, %1002
  %1006 = zext i1 %1005 to i8
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1006, i8* %1007, align 1, !tbaa !2428
  %1008 = trunc i128 %1002 to i32
  %1009 = and i32 %1008, 255
  %1010 = call i32 @llvm.ctpop.i32(i32 %1009) #16
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  %1013 = xor i8 %1012, 1
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1013, i8* %1014, align 1, !tbaa !2445
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1015, align 1, !tbaa !2446
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1016, align 1, !tbaa !2447
  %1017 = lshr i64 %1003, 63
  %1018 = trunc i64 %1017 to i8
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1018, i8* %1019, align 1, !tbaa !2448
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1006, i8* %1020, align 1, !tbaa !2449
  %1021 = load i64, i64* %RAX
  %1022 = load i64, i64* %RCX
  %1023 = load i64, i64* %PC
  %1024 = add i64 %1023, 3
  store i64 %1024, i64* %PC
  %1025 = add i64 %1022, %1021
  store i64 %1025, i64* %RAX, align 8, !tbaa !2451
  %1026 = icmp ult i64 %1025, %1021
  %1027 = icmp ult i64 %1025, %1022
  %1028 = or i1 %1026, %1027
  %1029 = zext i1 %1028 to i8
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1029, i8* %1030, align 1, !tbaa !2428
  %1031 = trunc i64 %1025 to i32
  %1032 = and i32 %1031, 255
  %1033 = call i32 @llvm.ctpop.i32(i32 %1032) #16
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1036, i8* %1037, align 1, !tbaa !2445
  %1038 = xor i64 %1022, %1021
  %1039 = xor i64 %1038, %1025
  %1040 = lshr i64 %1039, 4
  %1041 = trunc i64 %1040 to i8
  %1042 = and i8 %1041, 1
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1042, i8* %1043, align 1, !tbaa !2446
  %1044 = icmp eq i64 %1025, 0
  %1045 = zext i1 %1044 to i8
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1045, i8* %1046, align 1, !tbaa !2447
  %1047 = lshr i64 %1025, 63
  %1048 = trunc i64 %1047 to i8
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1048, i8* %1049, align 1, !tbaa !2448
  %1050 = lshr i64 %1021, 63
  %1051 = lshr i64 %1022, 63
  %1052 = xor i64 %1047, %1050
  %1053 = xor i64 %1047, %1051
  %1054 = add nuw nsw i64 %1052, %1053
  %1055 = icmp eq i64 %1054, 2
  %1056 = zext i1 %1055 to i8
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1056, i8* %1057, align 1, !tbaa !2449
  %1058 = load i64, i64* %RBP
  %1059 = sub i64 %1058, 20
  %1060 = load i64, i64* %PC
  %1061 = add i64 %1060, 4
  store i64 %1061, i64* %PC
  %1062 = inttoptr i64 %1059 to i32*
  %1063 = load i32, i32* %1062
  %1064 = sext i32 %1063 to i64
  store i64 %1064, i64* %RCX, align 8, !tbaa !2451
  %1065 = load i64, i64* %RAX
  %1066 = load i64, i64* %RCX
  %1067 = add i64 %1066, %1065
  %1068 = load i64, i64* %PC
  %1069 = add i64 %1068, 4
  store i64 %1069, i64* %PC
  %1070 = inttoptr i64 %1067 to i8*
  %1071 = load i8, i8* %1070
  %1072 = sext i8 %1071 to i64
  %1073 = and i64 %1072, 4294967295
  store i64 %1073, i64* %RDX, align 8, !tbaa !2451
  %1074 = load i32, i32* %EDX
  %1075 = zext i32 %1074 to i64
  %1076 = load i64, i64* %PC
  %1077 = add i64 %1076, 3
  store i64 %1077, i64* %PC
  %1078 = sub i32 %1074, 35
  %1079 = icmp ult i32 %1074, 35
  %1080 = zext i1 %1079 to i8
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1080, i8* %1081, align 1, !tbaa !2428
  %1082 = and i32 %1078, 255
  %1083 = call i32 @llvm.ctpop.i32(i32 %1082) #16
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  %1086 = xor i8 %1085, 1
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1086, i8* %1087, align 1, !tbaa !2445
  %1088 = xor i64 35, %1075
  %1089 = trunc i64 %1088 to i32
  %1090 = xor i32 %1089, %1078
  %1091 = lshr i32 %1090, 4
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1093, i8* %1094, align 1, !tbaa !2446
  %1095 = icmp eq i32 %1078, 0
  %1096 = zext i1 %1095 to i8
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1096, i8* %1097, align 1, !tbaa !2447
  %1098 = lshr i32 %1078, 31
  %1099 = trunc i32 %1098 to i8
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1099, i8* %1100, align 1, !tbaa !2448
  %1101 = lshr i32 %1074, 31
  %1102 = xor i32 %1098, %1101
  %1103 = add nuw nsw i32 %1102, %1101
  %1104 = icmp eq i32 %1103, 2
  %1105 = zext i1 %1104 to i8
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1105, i8* %1106, align 1, !tbaa !2449
  %1107 = load i64, i64* %PC
  %1108 = add i64 %1107, 57
  %1109 = load i64, i64* %PC
  %1110 = add i64 %1109, 6
  %1111 = load i64, i64* %PC
  %1112 = add i64 %1111, 6
  store i64 %1112, i64* %PC
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1114 = load i8, i8* %1113, align 1, !tbaa !2447
  %1115 = icmp eq i8 %1114, 0
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1118 = select i1 %1115, i64 %1108, i64 %1110
  store i64 %1118, i64* %1117, align 8, !tbaa !2451
  %1119 = load i8, i8* %BRANCH_TAKEN
  %1120 = icmp eq i8 %1119, 1
  %1121 = load i64, i64* %PC
  %1122 = add i64 %1121, 10
  store i64 %1122, i64* %PC
  br i1 %1120, label %block_4007a9, label %block_400776

block_40081f:                                     ; preds = %block_400809, %block_400813, %block_4007a9
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_4007a9 ], [ %MEMORY.5, %block_400813 ], [ %MEMORY.3, %block_400809 ]
  %1123 = load i64, i64* %RBP
  %1124 = sub i64 %1123, 28
  %1125 = load i64, i64* %PC
  %1126 = add i64 %1125, 3
  store i64 %1126, i64* %PC
  %1127 = inttoptr i64 %1124 to i32*
  %1128 = load i32, i32* %1127
  %1129 = zext i32 %1128 to i64
  store i64 %1129, i64* %RAX, align 8, !tbaa !2451
  %1130 = load i32, i32* %EAX
  %1131 = zext i32 %1130 to i64
  %1132 = load i64, i64* %RBP
  %1133 = sub i64 %1132, 20
  %1134 = load i64, i64* %PC
  %1135 = add i64 %1134, 3
  store i64 %1135, i64* %PC
  %1136 = inttoptr i64 %1133 to i32*
  %1137 = load i32, i32* %1136
  %1138 = sub i32 %1130, %1137
  %1139 = icmp ult i32 %1130, %1137
  %1140 = zext i1 %1139 to i8
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1140, i8* %1141, align 1, !tbaa !2428
  %1142 = and i32 %1138, 255
  %1143 = call i32 @llvm.ctpop.i32(i32 %1142) #16
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  %1146 = xor i8 %1145, 1
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1146, i8* %1147, align 1, !tbaa !2445
  %1148 = xor i32 %1137, %1130
  %1149 = xor i32 %1148, %1138
  %1150 = lshr i32 %1149, 4
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1152, i8* %1153, align 1, !tbaa !2446
  %1154 = icmp eq i32 %1138, 0
  %1155 = zext i1 %1154 to i8
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1155, i8* %1156, align 1, !tbaa !2447
  %1157 = lshr i32 %1138, 31
  %1158 = trunc i32 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1158, i8* %1159, align 1, !tbaa !2448
  %1160 = lshr i32 %1130, 31
  %1161 = lshr i32 %1137, 31
  %1162 = xor i32 %1161, %1160
  %1163 = xor i32 %1157, %1160
  %1164 = add nuw nsw i32 %1163, %1162
  %1165 = icmp eq i32 %1164, 2
  %1166 = zext i1 %1165 to i8
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1166, i8* %1167, align 1, !tbaa !2449
  %1168 = load i64, i64* %PC
  %1169 = add i64 %1168, 50
  %1170 = load i64, i64* %PC
  %1171 = add i64 %1170, 6
  %1172 = load i64, i64* %PC
  %1173 = add i64 %1172, 6
  store i64 %1173, i64* %PC
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1175 = load i8, i8* %1174, align 1, !tbaa !2447
  %1176 = icmp eq i8 %1175, 0
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1179 = select i1 %1176, i64 %1169, i64 %1171
  store i64 %1179, i64* %1178, align 8, !tbaa !2451
  %1180 = load i8, i8* %BRANCH_TAKEN
  %1181 = icmp eq i8 %1180, 1
  br i1 %1181, label %block_400857, label %block_40082b

block_400813:                                     ; preds = %block_4007cf, %block_400809, %block_4007d9, %block_4007ff
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.3, %block_4007cf ], [ %MEMORY.3, %block_4007d9 ], [ %MEMORY.3, %block_4007ff ], [ %MEMORY.3, %block_400809 ]
  %1182 = load i64, i64* %RBP
  %1183 = sub i64 %1182, 28
  %1184 = load i64, i64* %PC
  %1185 = add i64 %1184, 3
  store i64 %1185, i64* %PC
  %1186 = inttoptr i64 %1183 to i32*
  %1187 = load i32, i32* %1186
  %1188 = zext i32 %1187 to i64
  store i64 %1188, i64* %RAX, align 8, !tbaa !2451
  %1189 = load i64, i64* %RBP
  %1190 = sub i64 %1189, 20
  %1191 = load i32, i32* %EAX
  %1192 = zext i32 %1191 to i64
  %1193 = load i64, i64* %PC
  %1194 = add i64 %1193, 3
  store i64 %1194, i64* %PC
  %1195 = inttoptr i64 %1190 to i32*
  store i32 %1191, i32* %1195
  %1196 = load i64, i64* %RBP
  %1197 = sub i64 %1196, 32
  %1198 = load i64, i64* %PC
  %1199 = add i64 %1198, 3
  store i64 %1199, i64* %PC
  %1200 = inttoptr i64 %1197 to i32*
  %1201 = load i32, i32* %1200
  %1202 = zext i32 %1201 to i64
  store i64 %1202, i64* %RAX, align 8, !tbaa !2451
  %1203 = load i64, i64* %RBP
  %1204 = sub i64 %1203, 24
  %1205 = load i32, i32* %EAX
  %1206 = zext i32 %1205 to i64
  %1207 = load i64, i64* %PC
  %1208 = add i64 %1207, 3
  store i64 %1208, i64* %PC
  %1209 = inttoptr i64 %1204 to i32*
  store i32 %1205, i32* %1209
  br label %block_40081f

block_400710:                                     ; preds = %block_4006d8
  %1210 = load i64, i64* %RBP
  %1211 = sub i64 %1210, 20
  %1212 = load i64, i64* %PC
  %1213 = add i64 %1212, 3
  store i64 %1213, i64* %PC
  %1214 = inttoptr i64 %1211 to i32*
  %1215 = load i32, i32* %1214
  %1216 = zext i32 %1215 to i64
  store i64 %1216, i64* %RAX, align 8, !tbaa !2451
  %1217 = load i64, i64* %RAX
  %1218 = load i64, i64* %PC
  %1219 = add i64 %1218, 3
  store i64 %1219, i64* %PC
  %1220 = trunc i64 %1217 to i32
  %1221 = add i32 1, %1220
  %1222 = zext i32 %1221 to i64
  store i64 %1222, i64* %RAX, align 8, !tbaa !2451
  %1223 = icmp ult i32 %1221, %1220
  %1224 = icmp ult i32 %1221, 1
  %1225 = or i1 %1223, %1224
  %1226 = zext i1 %1225 to i8
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1226, i8* %1227, align 1, !tbaa !2428
  %1228 = and i32 %1221, 255
  %1229 = call i32 @llvm.ctpop.i32(i32 %1228) #16
  %1230 = trunc i32 %1229 to i8
  %1231 = and i8 %1230, 1
  %1232 = xor i8 %1231, 1
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1232, i8* %1233, align 1, !tbaa !2445
  %1234 = xor i64 1, %1217
  %1235 = trunc i64 %1234 to i32
  %1236 = xor i32 %1235, %1221
  %1237 = lshr i32 %1236, 4
  %1238 = trunc i32 %1237 to i8
  %1239 = and i8 %1238, 1
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1239, i8* %1240, align 1, !tbaa !2446
  %1241 = icmp eq i32 %1221, 0
  %1242 = zext i1 %1241 to i8
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1242, i8* %1243, align 1, !tbaa !2447
  %1244 = lshr i32 %1221, 31
  %1245 = trunc i32 %1244 to i8
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1245, i8* %1246, align 1, !tbaa !2448
  %1247 = lshr i32 %1220, 31
  %1248 = xor i32 %1244, %1247
  %1249 = add nuw nsw i32 %1248, %1244
  %1250 = icmp eq i32 %1249, 2
  %1251 = zext i1 %1250 to i8
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1251, i8* %1252, align 1, !tbaa !2449
  %1253 = load i64, i64* %RBP
  %1254 = sub i64 %1253, 20
  %1255 = load i32, i32* %EAX
  %1256 = zext i32 %1255 to i64
  %1257 = load i64, i64* %PC
  %1258 = add i64 %1257, 3
  store i64 %1258, i64* %PC
  %1259 = inttoptr i64 %1254 to i32*
  store i32 %1255, i32* %1259
  %1260 = load i64, i64* %PC
  %1261 = add i64 %1260, 55
  %1262 = load i64, i64* %PC
  %1263 = add i64 %1262, 5
  store i64 %1263, i64* %PC
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1261, i64* %1264, align 8, !tbaa !2451
  br label %block_400750

block_400837:                                     ; preds = %block_40082b
  %1265 = load i64, i64* %PC
  %1266 = add i64 %1265, 10
  store i64 %1266, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2451
  %1267 = load i64, i64* %PC
  %1268 = add i64 %1267, 2
  store i64 %1268, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %1269 = load i64, i64* %PC
  %1270 = sub i64 %1269, 979
  %1271 = load i64, i64* %PC
  %1272 = add i64 %1271, 5
  %1273 = load i64, i64* %PC
  %1274 = add i64 %1273, 5
  store i64 %1274, i64* %PC
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1276 = load i64, i64* %1275, align 8, !tbaa !2451
  %1277 = add i64 %1276, -8
  %1278 = inttoptr i64 %1277 to i64*
  store i64 %1272, i64* %1278
  store i64 %1277, i64* %1275, align 8, !tbaa !2451
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1270, i64* %1279, align 8, !tbaa !2451
  %1280 = load i64, i64* %PC
  %1281 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1280, %struct.Memory* %MEMORY.4)
  %1282 = load i64, i64* %RBP
  %1283 = sub i64 %1282, 4
  %1284 = load i64, i64* %PC
  %1285 = add i64 %1284, 7
  store i64 %1285, i64* %PC
  %1286 = inttoptr i64 %1283 to i32*
  store i32 2, i32* %1286
  %1287 = load i64, i64* %RBP
  %1288 = sub i64 %1287, 104
  %1289 = load i32, i32* %EAX
  %1290 = zext i32 %1289 to i64
  %1291 = load i64, i64* %PC
  %1292 = add i64 %1291, 3
  store i64 %1292, i64* %PC
  %1293 = inttoptr i64 %1288 to i32*
  store i32 %1289, i32* %1293
  %1294 = load i64, i64* %PC
  %1295 = add i64 %1294, 80
  %1296 = load i64, i64* %PC
  %1297 = add i64 %1296, 5
  store i64 %1297, i64* %PC
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1295, i64* %1298, align 8, !tbaa !2451
  br label %block_4008a2

block_400809:                                     ; preds = %block_4007ff
  %1299 = load i64, i64* %RBP
  %1300 = sub i64 %1299, 20
  %1301 = load i64, i64* %PC
  %1302 = add i64 %1301, 4
  store i64 %1302, i64* %PC
  %1303 = inttoptr i64 %1300 to i32*
  %1304 = load i32, i32* %1303
  %1305 = sub i32 %1304, 11
  %1306 = icmp ult i32 %1304, 11
  %1307 = zext i1 %1306 to i8
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1307, i8* %1308, align 1, !tbaa !2428
  %1309 = and i32 %1305, 255
  %1310 = call i32 @llvm.ctpop.i32(i32 %1309) #16
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  %1313 = xor i8 %1312, 1
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1313, i8* %1314, align 1, !tbaa !2445
  %1315 = xor i32 %1304, 11
  %1316 = xor i32 %1315, %1305
  %1317 = lshr i32 %1316, 4
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1319, i8* %1320, align 1, !tbaa !2446
  %1321 = icmp eq i32 %1305, 0
  %1322 = zext i1 %1321 to i8
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1322, i8* %1323, align 1, !tbaa !2447
  %1324 = lshr i32 %1305, 31
  %1325 = trunc i32 %1324 to i8
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1325, i8* %1326, align 1, !tbaa !2448
  %1327 = lshr i32 %1304, 31
  %1328 = xor i32 %1324, %1327
  %1329 = add nuw nsw i32 %1328, %1327
  %1330 = icmp eq i32 %1329, 2
  %1331 = zext i1 %1330 to i8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1331, i8* %1332, align 1, !tbaa !2449
  %1333 = load i64, i64* %PC
  %1334 = add i64 %1333, 18
  %1335 = load i64, i64* %PC
  %1336 = add i64 %1335, 6
  %1337 = load i64, i64* %PC
  %1338 = add i64 %1337, 6
  store i64 %1338, i64* %PC
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1340 = load i8, i8* %1339, align 1, !tbaa !2448
  %1341 = icmp ne i8 %1340, 0
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1343 = load i8, i8* %1342, align 1, !tbaa !2449
  %1344 = icmp ne i8 %1343, 0
  %1345 = xor i1 %1341, %1344
  %1346 = zext i1 %1345 to i8
  store i8 %1346, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1348 = select i1 %1345, i64 %1334, i64 %1336
  store i64 %1348, i64* %1347, align 8, !tbaa !2451
  %1349 = load i8, i8* %BRANCH_TAKEN
  %1350 = icmp eq i8 %1349, 1
  br i1 %1350, label %block_40081f, label %block_400813

block_4007cf:                                     ; preds = %block_4007a9
  %1351 = load i64, i64* %RBP
  %1352 = sub i64 %1351, 24
  %1353 = load i64, i64* %PC
  %1354 = add i64 %1353, 4
  store i64 %1354, i64* %PC
  %1355 = inttoptr i64 %1352 to i32*
  %1356 = load i32, i32* %1355
  %1357 = sub i32 %1356, 2
  %1358 = icmp ult i32 %1356, 2
  %1359 = zext i1 %1358 to i8
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1359, i8* %1360, align 1, !tbaa !2428
  %1361 = and i32 %1357, 255
  %1362 = call i32 @llvm.ctpop.i32(i32 %1361) #16
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  %1365 = xor i8 %1364, 1
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1365, i8* %1366, align 1, !tbaa !2445
  %1367 = xor i32 %1356, 2
  %1368 = xor i32 %1367, %1357
  %1369 = lshr i32 %1368, 4
  %1370 = trunc i32 %1369 to i8
  %1371 = and i8 %1370, 1
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1371, i8* %1372, align 1, !tbaa !2446
  %1373 = icmp eq i32 %1357, 0
  %1374 = zext i1 %1373 to i8
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1374, i8* %1375, align 1, !tbaa !2447
  %1376 = lshr i32 %1357, 31
  %1377 = trunc i32 %1376 to i8
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1377, i8* %1378, align 1, !tbaa !2448
  %1379 = lshr i32 %1356, 31
  %1380 = xor i32 %1376, %1379
  %1381 = add nuw nsw i32 %1380, %1379
  %1382 = icmp eq i32 %1381, 2
  %1383 = zext i1 %1382 to i8
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1383, i8* %1384, align 1, !tbaa !2449
  %1385 = load i64, i64* %PC
  %1386 = add i64 %1385, 64
  %1387 = load i64, i64* %PC
  %1388 = add i64 %1387, 6
  %1389 = load i64, i64* %PC
  %1390 = add i64 %1389, 6
  store i64 %1390, i64* %PC
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1392 = load i8, i8* %1391, align 1, !tbaa !2447
  %1393 = icmp eq i8 %1392, 0
  %1394 = zext i1 %1393 to i8
  store i8 %1394, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1396 = select i1 %1393, i64 %1386, i64 %1388
  store i64 %1396, i64* %1395, align 8, !tbaa !2451
  %1397 = load i8, i8* %BRANCH_TAKEN
  %1398 = icmp eq i8 %1397, 1
  br i1 %1398, label %block_400813, label %block_4007d9

block_40082b:                                     ; preds = %block_40081f
  %1399 = load i64, i64* %RBP
  %1400 = sub i64 %1399, 32
  %1401 = load i64, i64* %PC
  %1402 = add i64 %1401, 3
  store i64 %1402, i64* %PC
  %1403 = inttoptr i64 %1400 to i32*
  %1404 = load i32, i32* %1403
  %1405 = zext i32 %1404 to i64
  store i64 %1405, i64* %RAX, align 8, !tbaa !2451
  %1406 = load i32, i32* %EAX
  %1407 = zext i32 %1406 to i64
  %1408 = load i64, i64* %RBP
  %1409 = sub i64 %1408, 24
  %1410 = load i64, i64* %PC
  %1411 = add i64 %1410, 3
  store i64 %1411, i64* %PC
  %1412 = inttoptr i64 %1409 to i32*
  %1413 = load i32, i32* %1412
  %1414 = sub i32 %1406, %1413
  %1415 = icmp ult i32 %1406, %1413
  %1416 = zext i1 %1415 to i8
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1416, i8* %1417, align 1, !tbaa !2428
  %1418 = and i32 %1414, 255
  %1419 = call i32 @llvm.ctpop.i32(i32 %1418) #16
  %1420 = trunc i32 %1419 to i8
  %1421 = and i8 %1420, 1
  %1422 = xor i8 %1421, 1
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1422, i8* %1423, align 1, !tbaa !2445
  %1424 = xor i32 %1413, %1406
  %1425 = xor i32 %1424, %1414
  %1426 = lshr i32 %1425, 4
  %1427 = trunc i32 %1426 to i8
  %1428 = and i8 %1427, 1
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1428, i8* %1429, align 1, !tbaa !2446
  %1430 = icmp eq i32 %1414, 0
  %1431 = zext i1 %1430 to i8
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1431, i8* %1432, align 1, !tbaa !2447
  %1433 = lshr i32 %1414, 31
  %1434 = trunc i32 %1433 to i8
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1434, i8* %1435, align 1, !tbaa !2448
  %1436 = lshr i32 %1406, 31
  %1437 = lshr i32 %1413, 31
  %1438 = xor i32 %1437, %1436
  %1439 = xor i32 %1433, %1436
  %1440 = add nuw nsw i32 %1439, %1438
  %1441 = icmp eq i32 %1440, 2
  %1442 = zext i1 %1441 to i8
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1442, i8* %1443, align 1, !tbaa !2449
  %1444 = load i64, i64* %PC
  %1445 = add i64 %1444, 38
  %1446 = load i64, i64* %PC
  %1447 = add i64 %1446, 6
  %1448 = load i64, i64* %PC
  %1449 = add i64 %1448, 6
  store i64 %1449, i64* %PC
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1451 = load i8, i8* %1450, align 1, !tbaa !2447
  %1452 = icmp eq i8 %1451, 0
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1455 = select i1 %1452, i64 %1445, i64 %1447
  store i64 %1455, i64* %1454, align 8, !tbaa !2451
  %1456 = load i8, i8* %BRANCH_TAKEN
  %1457 = icmp eq i8 %1456, 1
  br i1 %1457, label %block_400857, label %block_400837

block_400887:                                     ; preds = %block_400857
  %1458 = load i64, i64* %PC
  %1459 = add i64 %1458, 10
  store i64 %1459, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2451
  %1460 = load i64, i64* %PC
  %1461 = add i64 %1460, 2
  store i64 %1461, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %1462 = load i64, i64* %PC
  %1463 = sub i64 %1462, 1059
  %1464 = load i64, i64* %PC
  %1465 = add i64 %1464, 5
  %1466 = load i64, i64* %PC
  %1467 = add i64 %1466, 5
  store i64 %1467, i64* %PC
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1469 = load i64, i64* %1468, align 8, !tbaa !2451
  %1470 = add i64 %1469, -8
  %1471 = inttoptr i64 %1470 to i64*
  store i64 %1465, i64* %1471
  store i64 %1470, i64* %1468, align 8, !tbaa !2451
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1463, i64* %1472, align 8, !tbaa !2451
  %1473 = load i64, i64* %PC
  %1474 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1473, %struct.Memory* %348)
  %1475 = load i64, i64* %RBP
  %1476 = sub i64 %1475, 4
  %1477 = load i64, i64* %PC
  %1478 = add i64 %1477, 7
  store i64 %1478, i64* %PC
  %1479 = inttoptr i64 %1476 to i32*
  store i32 1, i32* %1479
  %1480 = load i64, i64* %RBP
  %1481 = sub i64 %1480, 108
  %1482 = load i32, i32* %EAX
  %1483 = zext i32 %1482 to i64
  %1484 = load i64, i64* %PC
  %1485 = add i64 %1484, 3
  store i64 %1485, i64* %PC
  %1486 = inttoptr i64 %1481 to i32*
  store i32 %1482, i32* %1486
  br label %block_4008a2

block_40071e:                                     ; preds = %block_4006ae, %block_4006d8
  %MEMORY.6 = phi %struct.Memory* [ %348, %block_4006ae ], [ %348, %block_4006d8 ]
  %1487 = load i64, i64* %PC
  %1488 = tail call %struct.Memory* @sub_40071e(%struct.State* %0, i64 %1487, %struct.Memory* %MEMORY.6)
  ret %struct.Memory* %1488

block_400702:                                     ; preds = %block_4006d8
  %1489 = load i64, i64* %PC
  %1490 = tail call %struct.Memory* @sub_400702(%struct.State* %0, i64 %1489, %struct.Memory* %348)
  ret %struct.Memory* %1490

; <label>:1491:                                   ; preds = %block_4006d8
  %1492 = load i64, i64* %PC
  %1493 = tail call %struct.Memory* @__remill_missing_block(%struct.State* %0, i64 %1492, %struct.Memory* %348)
  ret %struct.Memory* %1493
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004e0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004e0:
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
  %24 = load i64, i64* %RBP
  %25 = load i64, i64* %PC
  %26 = add i64 %25, 1
  store i64 %26, i64* %PC
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %28 = load i64, i64* %27, align 8, !tbaa !2451
  %29 = add i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %24, i64* %30
  store i64 %29, i64* %27, align 8, !tbaa !2451
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 5
  store i64 %32, i64* %PC
  store i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2451
  %33 = load i64, i64* %RAX
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 6
  store i64 %35, i64* %PC
  %36 = sub i64 %33, ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)
  %37 = icmp ult i64 %33, ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %38, i8* %39, align 1, !tbaa !2428
  %40 = trunc i64 %36 to i32
  %41 = and i32 %40, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41) #16
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = xor i8 %44, 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %45, i8* %46, align 1, !tbaa !2445
  %47 = xor i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %33
  %48 = xor i64 %47, %36
  %49 = lshr i64 %48, 4
  %50 = trunc i64 %49 to i8
  %51 = and i8 %50, 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %51, i8* %52, align 1, !tbaa !2446
  %53 = icmp eq i64 %36, 0
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %54, i8* %55, align 1, !tbaa !2447
  %56 = lshr i64 %36, 63
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %57, i8* %58, align 1, !tbaa !2448
  %59 = lshr i64 %33, 63
  %60 = xor i64 lshr (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 63), %59
  %61 = xor i64 %56, %59
  %62 = add nuw nsw i64 %61, %60
  %63 = icmp eq i64 %62, 2
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %64, i8* %65, align 1, !tbaa !2449
  %66 = load i64, i64* %RSP
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 3
  store i64 %68, i64* %PC
  store i64 %66, i64* %RBP, align 8, !tbaa !2451
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 25
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 2
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 2
  store i64 %74, i64* %PC
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %76 = load i8, i8* %75, align 1, !tbaa !2447
  store i8 %76, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = icmp ne i8 %76, 0
  %79 = select i1 %78, i64 %70, i64 %72
  store i64 %79, i64* %77, align 8, !tbaa !2451
  %80 = load i8, i8* %BRANCH_TAKEN
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %block_400508, label %block_4004f1

block_4004fb:                                     ; preds = %block_4004f1
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 1
  store i64 %83, i64* %PC
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %85 = load i64, i64* %84, align 8, !tbaa !2451
  %86 = add i64 %85, 8
  %87 = inttoptr i64 %85 to i64*
  %88 = load i64, i64* %87
  store i64 %88, i64* %RBP, align 8, !tbaa !2451
  store i64 %86, i64* %84, align 8, !tbaa !2451
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 5
  store i64 %90, i64* %PC
  store i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !2451
  %91 = load i64, i64* %RAX
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 2
  store i64 %93, i64* %PC
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %91, i64* %94, align 8, !tbaa !2451
  %95 = load i64, i64* %PC
  switch i64 %95, label %163 [
    i64 4195594, label %block_40050a
    i64 4195587, label %block_400503
  ]

block_4004f1:                                     ; preds = %block_4004e0
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 5
  store i64 %97, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2451
  %98 = load i64, i64* %RAX
  %99 = load i64, i64* %RAX
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 3
  store i64 %101, i64* %PC
  %102 = and i64 %99, %98
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %103, align 1, !tbaa !2428
  %104 = trunc i64 %102 to i32
  %105 = and i32 %104, 255
  %106 = call i32 @llvm.ctpop.i32(i32 %105) #16
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %109, i8* %110, align 1, !tbaa !2445
  %111 = icmp eq i64 %102, 0
  %112 = zext i1 %111 to i8
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %112, i8* %113, align 1, !tbaa !2447
  %114 = lshr i64 %102, 63
  %115 = trunc i64 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %115, i8* %116, align 1, !tbaa !2448
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %117, align 1, !tbaa !2449
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %118, align 1, !tbaa !2446
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 15
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 2
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 2
  store i64 %124, i64* %PC
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %126 = load i8, i8* %125, align 1, !tbaa !2447
  store i8 %126, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %128 = icmp ne i8 %126, 0
  %129 = select i1 %128, i64 %120, i64 %122
  store i64 %129, i64* %127, align 8, !tbaa !2451
  %130 = load i8, i8* %BRANCH_TAKEN
  %131 = icmp eq i8 %130, 1
  br i1 %131, label %block_400508, label %block_4004fb

block_400508:                                     ; preds = %block_400503, %block_4004f1, %block_4004e0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4004e0 ], [ %2, %block_4004f1 ], [ %2, %block_400503 ]
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 1
  store i64 %133, i64* %PC
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %135 = load i64, i64* %134, align 8, !tbaa !2451
  %136 = add i64 %135, 8
  %137 = inttoptr i64 %135 to i64*
  %138 = load i64, i64* %137
  store i64 %138, i64* %RBP, align 8, !tbaa !2451
  store i64 %136, i64* %134, align 8, !tbaa !2451
  %139 = load i64, i64* %PC
  %140 = add i64 %139, 1
  store i64 %140, i64* %PC
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %143 = load i64, i64* %142, align 8, !tbaa !2451
  %144 = inttoptr i64 %143 to i64*
  %145 = load i64, i64* %144
  store i64 %145, i64* %141, align 8, !tbaa !2451
  %146 = add i64 %143, 8
  store i64 %146, i64* %142, align 8, !tbaa !2451
  ret %struct.Memory* %MEMORY.0

block_40050a:                                     ; preds = %block_4004fb
  %147 = load i64, i64* %RAX
  %148 = load i64, i64* %RAX
  %149 = add i64 %148, %147
  %150 = load i16, i16* %AX
  %151 = zext i16 %150 to i64
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 6
  store i64 %153, i64* %PC
  %154 = load i64, i64* %PC
  %155 = tail call %struct.Memory* @sub_400510_register_tm_clones(%struct.State* %0, i64 %154, %struct.Memory* %2)
  ret %struct.Memory* %155

block_400503:                                     ; preds = %block_4004fb
  %156 = load i64, i64* %RAX
  %157 = load i64, i64* %RAX
  %158 = add i64 %157, %156
  %159 = load i32, i32* %EAX
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 5
  store i64 %162, i64* %PC
  br label %block_400508

; <label>:163:                                    ; preds = %block_4004fb
  %164 = load i64, i64* %PC
  %165 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %164, %struct.Memory* %2)
  ret %struct.Memory* %165
}

; Function Attrs: noinline
define %struct.Memory* @sub_400590_draw(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400590:
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
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %EAX = bitcast %union.anon* %12 to i32*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RAX = bitcast %union.anon* %15 to i64*
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %RCX = bitcast %union.anon* %18 to i64*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 9
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %RSI = bitcast %union.anon* %21 to i64*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 11
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %RDI = bitcast %union.anon* %24 to i64*
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 13
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %RSP = bitcast %union.anon* %27 to i64*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.GPR, %struct.GPR* %28, i32 0, i32 15
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %29, i32 0, i32 0
  %RBP = bitcast %union.anon* %30 to i64*
  %31 = load i64, i64* %RBP
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 1
  store i64 %33, i64* %PC
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %35 = load i64, i64* %34, align 8, !tbaa !2451
  %36 = add i64 %35, -8
  %37 = inttoptr i64 %36 to i64*
  store i64 %31, i64* %37
  store i64 %36, i64* %34, align 8, !tbaa !2451
  %38 = load i64, i64* %RSP
  %39 = load i64, i64* %PC
  %40 = add i64 %39, 3
  store i64 %40, i64* %PC
  store i64 %38, i64* %RBP, align 8, !tbaa !2451
  %41 = load i64, i64* %RSP
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC
  %44 = sub i64 %41, 32
  store i64 %44, i64* %RSP, align 8, !tbaa !2451
  %45 = icmp ult i64 %41, 32
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %46, i8* %47, align 1, !tbaa !2428
  %48 = trunc i64 %44 to i32
  %49 = and i32 %48, 255
  %50 = call i32 @llvm.ctpop.i32(i32 %49) #16
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  %53 = xor i8 %52, 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %53, i8* %54, align 1, !tbaa !2445
  %55 = xor i64 32, %41
  %56 = xor i64 %55, %44
  %57 = lshr i64 %56, 4
  %58 = trunc i64 %57 to i8
  %59 = and i8 %58, 1
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %59, i8* %60, align 1, !tbaa !2446
  %61 = icmp eq i64 %44, 0
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %62, i8* %63, align 1, !tbaa !2447
  %64 = lshr i64 %44, 63
  %65 = trunc i64 %64 to i8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %65, i8* %66, align 1, !tbaa !2448
  %67 = lshr i64 %41, 63
  %68 = xor i64 %64, %67
  %69 = add nuw nsw i64 %68, %67
  %70 = icmp eq i64 %69, 2
  %71 = zext i1 %70 to i8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %71, i8* %72, align 1, !tbaa !2449
  %73 = load i64, i64* %RBP
  %74 = sub i64 %73, 4
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 7
  store i64 %76, i64* %PC
  %77 = inttoptr i64 %74 to i32*
  store i32 0, i32* %77
  br label %block_40059f

block_40059f:                                     ; preds = %block_4005f9, %block_400590
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400590 ], [ %383, %block_4005f9 ]
  %78 = load i64, i64* %RBP
  %79 = sub i64 %78, 4
  %80 = load i64, i64* %PC
  %81 = add i64 %80, 4
  store i64 %81, i64* %PC
  %82 = inttoptr i64 %79 to i32*
  %83 = load i32, i32* %82
  %84 = sub i32 %83, 7
  %85 = icmp ult i32 %83, 7
  %86 = zext i1 %85 to i8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %86, i8* %87, align 1, !tbaa !2428
  %88 = and i32 %84, 255
  %89 = call i32 @llvm.ctpop.i32(i32 %88) #16
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %92, i8* %93, align 1, !tbaa !2445
  %94 = xor i32 %83, 7
  %95 = xor i32 %94, %84
  %96 = lshr i32 %95, 4
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %98, i8* %99, align 1, !tbaa !2446
  %100 = icmp eq i32 %84, 0
  %101 = zext i1 %100 to i8
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %101, i8* %102, align 1, !tbaa !2447
  %103 = lshr i32 %84, 31
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %104, i8* %105, align 1, !tbaa !2448
  %106 = lshr i32 %83, 31
  %107 = xor i32 %103, %106
  %108 = add nuw nsw i32 %107, %106
  %109 = icmp eq i32 %108, 2
  %110 = zext i1 %109 to i8
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %110, i8* %111, align 1, !tbaa !2449
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 120
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 6
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 6
  store i64 %117, i64* %PC
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %119 = load i8, i8* %118, align 1, !tbaa !2448
  %120 = icmp ne i8 %119, 0
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %122 = load i8, i8* %121, align 1, !tbaa !2449
  %123 = icmp ne i8 %122, 0
  %124 = xor i1 %120, %123
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %128 = select i1 %124, i64 %115, i64 %113
  store i64 %128, i64* %127, align 8, !tbaa !2451
  %129 = load i8, i8* %BRANCH_TAKEN
  %130 = icmp eq i8 %129, 1
  br i1 %130, label %block_40061b, label %block_4005a9

block_40061b:                                     ; preds = %block_40059f
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 10
  store i64 %132, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 273), i64* %RDI, align 8, !tbaa !2451
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 2
  store i64 %134, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %135 = load i64, i64* %PC
  %136 = sub i64 %135, 439
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 5
  %139 = load i64, i64* %PC
  %140 = add i64 %139, 5
  store i64 %140, i64* %PC
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %142 = load i64, i64* %141, align 8, !tbaa !2451
  %143 = add i64 %142, -8
  %144 = inttoptr i64 %143 to i64*
  store i64 %138, i64* %144
  store i64 %143, i64* %141, align 8, !tbaa !2451
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %136, i64* %145, align 8, !tbaa !2451
  %146 = load i64, i64* %PC
  %147 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %146, %struct.Memory* %MEMORY.0)
  %148 = load i64, i64* %RBP
  %149 = sub i64 %148, 20
  %150 = load i32, i32* %EAX
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 3
  store i64 %153, i64* %PC
  %154 = inttoptr i64 %149 to i32*
  store i32 %150, i32* %154
  %155 = load i64, i64* %RSP
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 4
  store i64 %157, i64* %PC
  %158 = add i64 32, %155
  store i64 %158, i64* %RSP, align 8, !tbaa !2451
  %159 = icmp ult i64 %158, %155
  %160 = icmp ult i64 %158, 32
  %161 = or i1 %159, %160
  %162 = zext i1 %161 to i8
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %162, i8* %163, align 1, !tbaa !2428
  %164 = trunc i64 %158 to i32
  %165 = and i32 %164, 255
  %166 = call i32 @llvm.ctpop.i32(i32 %165) #16
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %169, i8* %170, align 1, !tbaa !2445
  %171 = xor i64 32, %155
  %172 = xor i64 %171, %158
  %173 = lshr i64 %172, 4
  %174 = trunc i64 %173 to i8
  %175 = and i8 %174, 1
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %175, i8* %176, align 1, !tbaa !2446
  %177 = icmp eq i64 %158, 0
  %178 = zext i1 %177 to i8
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %178, i8* %179, align 1, !tbaa !2447
  %180 = lshr i64 %158, 63
  %181 = trunc i64 %180 to i8
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %181, i8* %182, align 1, !tbaa !2448
  %183 = lshr i64 %155, 63
  %184 = xor i64 %180, %183
  %185 = add nuw nsw i64 %184, %180
  %186 = icmp eq i64 %185, 2
  %187 = zext i1 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %187, i8* %188, align 1, !tbaa !2449
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 1
  store i64 %190, i64* %PC
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %192 = load i64, i64* %191, align 8, !tbaa !2451
  %193 = add i64 %192, 8
  %194 = inttoptr i64 %192 to i64*
  %195 = load i64, i64* %194
  store i64 %195, i64* %RBP, align 8, !tbaa !2451
  store i64 %193, i64* %191, align 8, !tbaa !2451
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 1
  store i64 %197, i64* %PC
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %200 = load i64, i64* %199, align 8, !tbaa !2451
  %201 = inttoptr i64 %200 to i64*
  %202 = load i64, i64* %201
  store i64 %202, i64* %198, align 8, !tbaa !2451
  %203 = add i64 %200, 8
  store i64 %203, i64* %199, align 8, !tbaa !2451
  ret %struct.Memory* %147

block_4005ba:                                     ; preds = %block_4005b0
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 192), i64* %RDI, align 8, !tbaa !2451
  %204 = load i64, i64* %PC
  %205 = add i64 %204, 10
  store i64 %205, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %206 = load i64, i64* %RBP
  %207 = sub i64 %206, 4
  %208 = load i64, i64* %PC
  %209 = add i64 %208, 4
  store i64 %209, i64* %PC
  %210 = inttoptr i64 %207 to i32*
  %211 = load i32, i32* %210
  %212 = sext i32 %211 to i64
  store i64 %212, i64* %RCX, align 8, !tbaa !2451
  %213 = load i64, i64* %RCX
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 4
  store i64 %215, i64* %PC
  %216 = sext i64 %213 to i128
  %217 = and i128 %216, -18446744073709551616
  %218 = zext i64 %213 to i128
  %219 = or i128 %217, %218
  %220 = mul nsw i128 11, %219
  %221 = trunc i128 %220 to i64
  store i64 %221, i64* %RCX, align 8, !tbaa !2451
  %222 = sext i64 %221 to i128
  %223 = icmp ne i128 %222, %220
  %224 = zext i1 %223 to i8
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %224, i8* %225, align 1, !tbaa !2428
  %226 = trunc i128 %220 to i32
  %227 = and i32 %226, 255
  %228 = call i32 @llvm.ctpop.i32(i32 %227) #16
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %231, i8* %232, align 1, !tbaa !2445
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %233, align 1, !tbaa !2446
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %234, align 1, !tbaa !2447
  %235 = lshr i64 %221, 63
  %236 = trunc i64 %235 to i8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %236, i8* %237, align 1, !tbaa !2448
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %224, i8* %238, align 1, !tbaa !2449
  %239 = load i64, i64* %RAX
  %240 = load i64, i64* %RCX
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 3
  store i64 %242, i64* %PC
  %243 = add i64 %240, %239
  store i64 %243, i64* %RAX, align 8, !tbaa !2451
  %244 = icmp ult i64 %243, %239
  %245 = icmp ult i64 %243, %240
  %246 = or i1 %244, %245
  %247 = zext i1 %246 to i8
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %247, i8* %248, align 1, !tbaa !2428
  %249 = trunc i64 %243 to i32
  %250 = and i32 %249, 255
  %251 = call i32 @llvm.ctpop.i32(i32 %250) #16
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %254, i8* %255, align 1, !tbaa !2445
  %256 = xor i64 %240, %239
  %257 = xor i64 %256, %243
  %258 = lshr i64 %257, 4
  %259 = trunc i64 %258 to i8
  %260 = and i8 %259, 1
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %260, i8* %261, align 1, !tbaa !2446
  %262 = icmp eq i64 %243, 0
  %263 = zext i1 %262 to i8
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %263, i8* %264, align 1, !tbaa !2447
  %265 = lshr i64 %243, 63
  %266 = trunc i64 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %266, i8* %267, align 1, !tbaa !2448
  %268 = lshr i64 %239, 63
  %269 = lshr i64 %240, 63
  %270 = xor i64 %265, %268
  %271 = xor i64 %265, %269
  %272 = add nuw nsw i64 %270, %271
  %273 = icmp eq i64 %272, 2
  %274 = zext i1 %273 to i8
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %274, i8* %275, align 1, !tbaa !2449
  %276 = load i64, i64* %RBP
  %277 = sub i64 %276, 8
  %278 = load i64, i64* %PC
  %279 = add i64 %278, 4
  store i64 %279, i64* %PC
  %280 = inttoptr i64 %277 to i32*
  %281 = load i32, i32* %280
  %282 = sext i32 %281 to i64
  store i64 %282, i64* %RCX, align 8, !tbaa !2451
  %283 = load i64, i64* %RAX
  %284 = load i64, i64* %RCX
  %285 = add i64 %284, %283
  %286 = load i64, i64* %PC
  %287 = add i64 %286, 4
  store i64 %287, i64* %PC
  %288 = inttoptr i64 %285 to i8*
  %289 = load i8, i8* %288
  %290 = sext i8 %289 to i64
  %291 = and i64 %290, 4294967295
  store i64 %291, i64* %RSI, align 8, !tbaa !2451
  %292 = load i64, i64* %PC
  %293 = add i64 %292, 2
  store i64 %293, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %294 = load i64, i64* %PC
  %295 = sub i64 %294, 371
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 5
  %298 = load i64, i64* %PC
  %299 = add i64 %298, 5
  store i64 %299, i64* %PC
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %301 = load i64, i64* %300, align 8, !tbaa !2451
  %302 = add i64 %301, -8
  %303 = inttoptr i64 %302 to i64*
  store i64 %297, i64* %303
  store i64 %302, i64* %300, align 8, !tbaa !2451
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %295, i64* %304, align 8, !tbaa !2451
  %305 = load i64, i64* %PC
  %306 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %305, %struct.Memory* %MEMORY.1)
  %307 = load i64, i64* %RBP
  %308 = sub i64 %307, 12
  %309 = load i32, i32* %EAX
  %310 = zext i32 %309 to i64
  %311 = load i64, i64* %PC
  %312 = add i64 %311, 3
  store i64 %312, i64* %PC
  %313 = inttoptr i64 %308 to i32*
  store i32 %309, i32* %313
  %314 = load i64, i64* %RBP
  %315 = sub i64 %314, 8
  %316 = load i64, i64* %PC
  %317 = add i64 %316, 3
  store i64 %317, i64* %PC
  %318 = inttoptr i64 %315 to i32*
  %319 = load i32, i32* %318
  %320 = zext i32 %319 to i64
  store i64 %320, i64* %RAX, align 8, !tbaa !2451
  %321 = load i64, i64* %RAX
  %322 = load i64, i64* %PC
  %323 = add i64 %322, 3
  store i64 %323, i64* %PC
  %324 = trunc i64 %321 to i32
  %325 = add i32 1, %324
  %326 = zext i32 %325 to i64
  store i64 %326, i64* %RAX, align 8, !tbaa !2451
  %327 = icmp ult i32 %325, %324
  %328 = icmp ult i32 %325, 1
  %329 = or i1 %327, %328
  %330 = zext i1 %329 to i8
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %330, i8* %331, align 1, !tbaa !2428
  %332 = and i32 %325, 255
  %333 = call i32 @llvm.ctpop.i32(i32 %332) #16
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %336, i8* %337, align 1, !tbaa !2445
  %338 = xor i64 1, %321
  %339 = trunc i64 %338 to i32
  %340 = xor i32 %339, %325
  %341 = lshr i32 %340, 4
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %343, i8* %344, align 1, !tbaa !2446
  %345 = icmp eq i32 %325, 0
  %346 = zext i1 %345 to i8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %346, i8* %347, align 1, !tbaa !2447
  %348 = lshr i32 %325, 31
  %349 = trunc i32 %348 to i8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %349, i8* %350, align 1, !tbaa !2448
  %351 = lshr i32 %324, 31
  %352 = xor i32 %348, %351
  %353 = add nuw nsw i32 %352, %348
  %354 = icmp eq i32 %353, 2
  %355 = zext i1 %354 to i8
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %355, i8* %356, align 1, !tbaa !2449
  %357 = load i64, i64* %RBP
  %358 = sub i64 %357, 8
  %359 = load i32, i32* %EAX
  %360 = zext i32 %359 to i64
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 3
  store i64 %362, i64* %PC
  %363 = inttoptr i64 %358 to i32*
  store i32 %359, i32* %363
  %364 = load i64, i64* %PC
  %365 = sub i64 %364, 68
  %366 = load i64, i64* %PC
  %367 = add i64 %366, 5
  store i64 %367, i64* %PC
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %365, i64* %368, align 8, !tbaa !2451
  br label %block_4005b0

block_4005f9:                                     ; preds = %block_4005b0
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 273), i64* %RDI, align 8, !tbaa !2451
  %369 = load i64, i64* %PC
  %370 = add i64 %369, 2
  store i64 %370, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %371 = load i64, i64* %PC
  %372 = sub i64 %371, 405
  %373 = load i64, i64* %PC
  %374 = add i64 %373, 5
  %375 = load i64, i64* %PC
  %376 = add i64 %375, 5
  store i64 %376, i64* %PC
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %378 = load i64, i64* %377, align 8, !tbaa !2451
  %379 = add i64 %378, -8
  %380 = inttoptr i64 %379 to i64*
  store i64 %374, i64* %380
  store i64 %379, i64* %377, align 8, !tbaa !2451
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %372, i64* %381, align 8, !tbaa !2451
  %382 = load i64, i64* %PC
  %383 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %382, %struct.Memory* %MEMORY.1)
  %384 = load i64, i64* %RBP
  %385 = sub i64 %384, 16
  %386 = load i32, i32* %EAX
  %387 = zext i32 %386 to i64
  %388 = load i64, i64* %PC
  %389 = add i64 %388, 3
  store i64 %389, i64* %PC
  %390 = inttoptr i64 %385 to i32*
  store i32 %386, i32* %390
  %391 = load i64, i64* %RBP
  %392 = sub i64 %391, 4
  %393 = load i64, i64* %PC
  %394 = add i64 %393, 3
  store i64 %394, i64* %PC
  %395 = inttoptr i64 %392 to i32*
  %396 = load i32, i32* %395
  %397 = zext i32 %396 to i64
  store i64 %397, i64* %RAX, align 8, !tbaa !2451
  %398 = load i64, i64* %RAX
  %399 = load i64, i64* %PC
  %400 = add i64 %399, 3
  store i64 %400, i64* %PC
  %401 = trunc i64 %398 to i32
  %402 = add i32 1, %401
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RAX, align 8, !tbaa !2451
  %404 = icmp ult i32 %402, %401
  %405 = icmp ult i32 %402, 1
  %406 = or i1 %404, %405
  %407 = zext i1 %406 to i8
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %407, i8* %408, align 1, !tbaa !2428
  %409 = and i32 %402, 255
  %410 = call i32 @llvm.ctpop.i32(i32 %409) #16
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %413, i8* %414, align 1, !tbaa !2445
  %415 = xor i64 1, %398
  %416 = trunc i64 %415 to i32
  %417 = xor i32 %416, %402
  %418 = lshr i32 %417, 4
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %420, i8* %421, align 1, !tbaa !2446
  %422 = icmp eq i32 %402, 0
  %423 = zext i1 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %423, i8* %424, align 1, !tbaa !2447
  %425 = lshr i32 %402, 31
  %426 = trunc i32 %425 to i8
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %426, i8* %427, align 1, !tbaa !2448
  %428 = lshr i32 %401, 31
  %429 = xor i32 %425, %428
  %430 = add nuw nsw i32 %429, %425
  %431 = icmp eq i32 %430, 2
  %432 = zext i1 %431 to i8
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %432, i8* %433, align 1, !tbaa !2449
  %434 = load i64, i64* %RBP
  %435 = sub i64 %434, 4
  %436 = load i32, i32* %EAX
  %437 = zext i32 %436 to i64
  %438 = load i64, i64* %PC
  %439 = add i64 %438, 3
  store i64 %439, i64* %PC
  %440 = inttoptr i64 %435 to i32*
  store i32 %436, i32* %440
  %441 = load i64, i64* %PC
  %442 = sub i64 %441, 119
  %443 = load i64, i64* %PC
  %444 = add i64 %443, 5
  store i64 %444, i64* %PC
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %442, i64* %445, align 8, !tbaa !2451
  br label %block_40059f

block_4005b0:                                     ; preds = %block_4005a9, %block_4005ba
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_4005a9 ], [ %306, %block_4005ba ]
  %446 = load i64, i64* %RBP
  %447 = sub i64 %446, 8
  %448 = load i64, i64* %PC
  %449 = add i64 %448, 4
  store i64 %449, i64* %PC
  %450 = inttoptr i64 %447 to i32*
  %451 = load i32, i32* %450
  %452 = sub i32 %451, 11
  %453 = icmp ult i32 %451, 11
  %454 = zext i1 %453 to i8
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %454, i8* %455, align 1, !tbaa !2428
  %456 = and i32 %452, 255
  %457 = call i32 @llvm.ctpop.i32(i32 %456) #16
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %460, i8* %461, align 1, !tbaa !2445
  %462 = xor i32 %451, 11
  %463 = xor i32 %462, %452
  %464 = lshr i32 %463, 4
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %466, i8* %467, align 1, !tbaa !2446
  %468 = icmp eq i32 %452, 0
  %469 = zext i1 %468 to i8
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %469, i8* %470, align 1, !tbaa !2447
  %471 = lshr i32 %452, 31
  %472 = trunc i32 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %472, i8* %473, align 1, !tbaa !2448
  %474 = lshr i32 %451, 31
  %475 = xor i32 %471, %474
  %476 = add nuw nsw i32 %475, %474
  %477 = icmp eq i32 %476, 2
  %478 = zext i1 %477 to i8
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %478, i8* %479, align 1, !tbaa !2449
  %480 = load i64, i64* %PC
  %481 = add i64 %480, 69
  %482 = load i64, i64* %PC
  %483 = add i64 %482, 6
  %484 = load i64, i64* %PC
  %485 = add i64 %484, 6
  store i64 %485, i64* %PC
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %487 = load i8, i8* %486, align 1, !tbaa !2448
  %488 = icmp ne i8 %487, 0
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %490 = load i8, i8* %489, align 1, !tbaa !2449
  %491 = icmp ne i8 %490, 0
  %492 = xor i1 %488, %491
  %493 = xor i1 %492, true
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %496 = select i1 %492, i64 %483, i64 %481
  store i64 %496, i64* %495, align 8, !tbaa !2451
  %497 = load i8, i8* %BRANCH_TAKEN
  %498 = icmp eq i8 %497, 1
  %499 = load i64, i64* %PC
  %500 = add i64 %499, 10
  store i64 %500, i64* %PC
  br i1 %498, label %block_4005f9, label %block_4005ba

block_4005a9:                                     ; preds = %block_40059f
  %501 = load i64, i64* %RBP
  %502 = sub i64 %501, 8
  %503 = load i64, i64* %PC
  %504 = add i64 %503, 7
  store i64 %504, i64* %PC
  %505 = inttoptr i64 %502 to i32*
  store i32 0, i32* %505
  br label %block_4005b0
}

; Function Attrs: noinline
define %struct.Memory* @sub_40071e(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_40071e:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %EAX = bitcast %union.anon* %12 to i32*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 11
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDI = bitcast %union.anon* %15 to i64*
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 15
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %RBP = bitcast %union.anon* %18 to i64*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 10
  store i64 %20, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 195), i64* %RDI, align 8, !tbaa !2451
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 2
  store i64 %22, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %23 = load i64, i64* %PC
  %24 = sub i64 %23, 698
  %25 = load i64, i64* %PC
  %26 = add i64 %25, 5
  %27 = load i64, i64* %PC
  %28 = add i64 %27, 5
  store i64 %28, i64* %PC
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %30 = load i64, i64* %29, align 8, !tbaa !2451
  %31 = add i64 %30, -8
  %32 = inttoptr i64 %31 to i64*
  store i64 %26, i64* %32
  store i64 %31, i64* %29, align 8, !tbaa !2451
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %24, i64* %33, align 8, !tbaa !2451
  %34 = load i64, i64* %PC
  %35 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %34, %struct.Memory* %2)
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 10
  store i64 %37, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 235), i64* %RDI, align 8, !tbaa !2451
  %38 = load i64, i64* %RBP
  %39 = sub i64 %38, 88
  %40 = load i32, i32* %EAX
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 3
  store i64 %43, i64* %PC
  %44 = inttoptr i64 %39 to i32*
  store i32 %40, i32* %44
  %45 = load i64, i64* %PC
  %46 = add i64 %45, 2
  store i64 %46, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %47 = load i64, i64* %PC
  %48 = sub i64 %47, 718
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 5
  %51 = load i64, i64* %PC
  %52 = add i64 %51, 5
  store i64 %52, i64* %PC
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %54 = load i64, i64* %53, align 8, !tbaa !2451
  %55 = add i64 %54, -8
  %56 = inttoptr i64 %55 to i64*
  store i64 %50, i64* %56
  store i64 %55, i64* %53, align 8, !tbaa !2451
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %48, i64* %57, align 8, !tbaa !2451
  %58 = load i64, i64* %PC
  %59 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %58, %struct.Memory* %35)
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 5
  store i64 %61, i64* %PC
  store i64 4294967295, i64* %RDI, align 8, !tbaa !2451
  %62 = load i64, i64* %RBP
  %63 = sub i64 %62, 92
  %64 = load i32, i32* %EAX
  %65 = zext i32 %64 to i64
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 3
  store i64 %67, i64* %PC
  %68 = inttoptr i64 %63 to i32*
  store i32 %64, i32* %68
  %69 = load i64, i64* %PC
  %70 = sub i64 %69, 699
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 5
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %76 = load i64, i64* %75, align 8, !tbaa !2451
  %77 = add i64 %76, -8
  %78 = inttoptr i64 %77 to i64*
  store i64 %72, i64* %78
  store i64 %77, i64* %75, align 8, !tbaa !2451
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %70, i64* %79, align 8, !tbaa !2451
  %80 = load i64, i64* %PC
  %81 = call %struct.Memory* @ext_6010c8_exit(%struct.State* %0, i64 %80, %struct.Memory* %59)
  %82 = load i64, i64* %PC
  %83 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %82, %struct.Memory* %81)
  ret %struct.Memory* %83
}

; Function Attrs: noinline
define %struct.Memory* @sub_400924__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400924:
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
  store i64 %12, i64* %RSP, align 8, !tbaa !2451
  %13 = icmp ult i64 %9, 8
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1, !tbaa !2428
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17) #16
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1, !tbaa !2445
  %23 = xor i64 8, %9
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !2446
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2447
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2448
  %35 = lshr i64 %9, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2449
  %41 = load i64, i64* %RSP
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC
  %44 = add i64 8, %41
  store i64 %44, i64* %RSP, align 8, !tbaa !2451
  %45 = icmp ult i64 %44, %41
  %46 = icmp ult i64 %44, 8
  %47 = or i1 %45, %46
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %48, i8* %49, align 1, !tbaa !2428
  %50 = trunc i64 %44 to i32
  %51 = and i32 %50, 255
  %52 = call i32 @llvm.ctpop.i32(i32 %51) #16
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %55, i8* %56, align 1, !tbaa !2445
  %57 = xor i64 8, %41
  %58 = xor i64 %57, %44
  %59 = lshr i64 %58, 4
  %60 = trunc i64 %59 to i8
  %61 = and i8 %60, 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %61, i8* %62, align 1, !tbaa !2446
  %63 = icmp eq i64 %44, 0
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %64, i8* %65, align 1, !tbaa !2447
  %66 = lshr i64 %44, 63
  %67 = trunc i64 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %67, i8* %68, align 1, !tbaa !2448
  %69 = lshr i64 %41, 63
  %70 = xor i64 %66, %69
  %71 = add nuw nsw i64 %70, %66
  %72 = icmp eq i64 %71, 2
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %73, i8* %74, align 1, !tbaa !2449
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 1
  store i64 %76, i64* %PC
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %79 = load i64, i64* %78, align 8, !tbaa !2451
  %80 = inttoptr i64 %79 to i64*
  %81 = load i64, i64* %80
  store i64 %81, i64* %77, align 8, !tbaa !2451
  %82 = add i64 %79, 8
  store i64 %82, i64* %78, align 8, !tbaa !2451
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400702(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0
  %PC = bitcast %union.anon* %6 to i64*
  store i64 %1, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %10 = bitcast %union.anon* %9 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0
  %EAX = bitcast %union.anon* %13 to i32*
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %15 = getelementptr inbounds %struct.GPR, %struct.GPR* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %15, i32 0, i32 0
  %EDX = bitcast %union.anon* %16 to i32*
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 11
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %EDI = bitcast %union.anon* %19 to i32*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RAX = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RCX = bitcast %union.anon* %25 to i64*
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %27 = getelementptr inbounds %struct.GPR, %struct.GPR* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.Reg, %struct.Reg* %27, i32 0, i32 0
  %RDX = bitcast %union.anon* %28 to i64*
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 9
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %RSI = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RDI = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 13
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RSP = bitcast %union.anon* %37 to i64*
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %39 = getelementptr inbounds %struct.GPR, %struct.GPR* %38, i32 0, i32 15
  %40 = getelementptr inbounds %struct.Reg, %struct.Reg* %39, i32 0, i32 0
  %RBP = bitcast %union.anon* %40 to i64*
  br label %block_400702

block_400776:                                     ; preds = %block_400750
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2451
  %41 = load i64, i64* %PC
  %42 = add i64 %41, 2
  store i64 %42, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %43 = load i64, i64* %PC
  %44 = sub i64 %43, 786
  %45 = load i64, i64* %PC
  %46 = add i64 %45, 5
  %47 = load i64, i64* %PC
  %48 = add i64 %47, 5
  store i64 %48, i64* %PC
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %50 = load i64, i64* %49, align 8, !tbaa !2451
  %51 = add i64 %50, -8
  %52 = inttoptr i64 %51 to i64*
  store i64 %46, i64* %52
  store i64 %51, i64* %49, align 8, !tbaa !2451
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %44, i64* %53, align 8, !tbaa !2451
  %54 = load i64, i64* %PC
  %55 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %54, %struct.Memory* %MEMORY.2)
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 10
  store i64 %57, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2451
  %58 = load i64, i64* %RBP
  %59 = sub i64 %58, 64
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 4
  store i64 %61, i64* %PC
  store i64 %59, i64* %RSI, align 8, !tbaa !2451
  %62 = load i64, i64* %RBP
  %63 = sub i64 %62, 96
  %64 = load i32, i32* %EAX
  %65 = zext i32 %64 to i64
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 3
  store i64 %67, i64* %PC
  %68 = inttoptr i64 %63 to i32*
  store i32 %64, i32* %68
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 2
  store i64 %70, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %71 = load i64, i64* %PC
  %72 = sub i64 %71, 810
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 5
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 5
  store i64 %76, i64* %PC
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %78 = load i64, i64* %77, align 8, !tbaa !2451
  %79 = add i64 %78, -8
  %80 = inttoptr i64 %79 to i64*
  store i64 %74, i64* %80
  store i64 %79, i64* %77, align 8, !tbaa !2451
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %72, i64* %81, align 8, !tbaa !2451
  %82 = load i64, i64* %PC
  %83 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %82, %struct.Memory* %55)
  %84 = load i64, i64* %RDI
  %85 = load i32, i32* %EDI
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 2
  store i64 %88, i64* %PC
  %89 = xor i64 %86, %84
  %90 = trunc i64 %89 to i32
  %91 = and i64 %89, 4294967295
  store i64 %91, i64* %RDI, align 8, !tbaa !2451
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %92, align 1, !tbaa !2428
  %93 = and i32 %90, 255
  %94 = call i32 @llvm.ctpop.i32(i32 %93) #16
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  %97 = xor i8 %96, 1
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %97, i8* %98, align 1, !tbaa !2445
  %99 = icmp eq i32 %90, 0
  %100 = zext i1 %99 to i8
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %100, i8* %101, align 1, !tbaa !2447
  %102 = lshr i32 %90, 31
  %103 = trunc i32 %102 to i8
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %103, i8* %104, align 1, !tbaa !2448
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %105, align 1, !tbaa !2449
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %106, align 1, !tbaa !2446
  %107 = load i64, i64* %RBP
  %108 = sub i64 %107, 100
  %109 = load i32, i32* %EAX
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC
  %113 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %113
  %114 = load i64, i64* %PC
  %115 = sub i64 %114, 788
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 5
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 5
  store i64 %119, i64* %PC
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %121 = load i64, i64* %120, align 8, !tbaa !2451
  %122 = add i64 %121, -8
  %123 = inttoptr i64 %122 to i64*
  store i64 %117, i64* %123
  store i64 %122, i64* %120, align 8, !tbaa !2451
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %115, i64* %124, align 8, !tbaa !2451
  %125 = load i64, i64* %PC
  %126 = call %struct.Memory* @ext_6010c8_exit(%struct.State* %0, i64 %125, %struct.Memory* %83)
  %127 = load i64, i64* %PC
  %128 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %127, %struct.Memory* %126)
  ret %struct.Memory* %128

block_4006e6:                                     ; preds = %block_4006d8
  %129 = load i64, i64* %RBP
  %130 = sub i64 %129, 24
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 3
  store i64 %132, i64* %PC
  %133 = inttoptr i64 %130 to i32*
  %134 = load i32, i32* %133
  %135 = zext i32 %134 to i64
  store i64 %135, i64* %RAX, align 8, !tbaa !2451
  %136 = load i64, i64* %RAX
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 3
  store i64 %138, i64* %PC
  %139 = trunc i64 %136 to i32
  %140 = add i32 -1, %139
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %RAX, align 8, !tbaa !2451
  %142 = icmp ult i32 %140, %139
  %143 = icmp ult i32 %140, -1
  %144 = or i1 %142, %143
  %145 = zext i1 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %145, i8* %146, align 1, !tbaa !2428
  %147 = and i32 %140, 255
  %148 = call i32 @llvm.ctpop.i32(i32 %147) #16
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %151, i8* %152, align 1, !tbaa !2445
  %153 = xor i64 -1, %136
  %154 = trunc i64 %153 to i32
  %155 = xor i32 %154, %140
  %156 = lshr i32 %155, 4
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %158, i8* %159, align 1, !tbaa !2446
  %160 = icmp eq i32 %140, 0
  %161 = zext i1 %160 to i8
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %161, i8* %162, align 1, !tbaa !2447
  %163 = lshr i32 %140, 31
  %164 = trunc i32 %163 to i8
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %164, i8* %165, align 1, !tbaa !2448
  %166 = lshr i32 %139, 31
  %167 = xor i32 %163, %166
  %168 = xor i32 %163, 1
  %169 = add nuw nsw i32 %167, %168
  %170 = icmp eq i32 %169, 2
  %171 = zext i1 %170 to i8
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %171, i8* %172, align 1, !tbaa !2449
  %173 = load i64, i64* %RBP
  %174 = sub i64 %173, 24
  %175 = load i32, i32* %EAX
  %176 = zext i32 %175 to i64
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 3
  store i64 %178, i64* %PC
  %179 = inttoptr i64 %174 to i32*
  store i32 %175, i32* %179
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 97
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 5
  store i64 %183, i64* %PC
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %181, i64* %184, align 8, !tbaa !2451
  br label %block_400750

block_4006d8:                                     ; preds = %block_4006ae
  %185 = load i64, i64* %RBP
  %186 = sub i64 %185, 80
  %187 = load i64, i64* %PC
  %188 = add i64 %187, 4
  store i64 %188, i64* %PC
  %189 = inttoptr i64 %186 to i64*
  %190 = load i64, i64* %189
  store i64 %190, i64* %RAX, align 8, !tbaa !2451
  %191 = load i64, i64* %RAX
  %192 = mul i64 %191, 8
  %193 = add i64 %192, add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 8)
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 8
  store i64 %195, i64* %PC
  %196 = inttoptr i64 %193 to i64*
  %197 = load i64, i64* %196
  store i64 %197, i64* %RCX, align 8, !tbaa !2451
  %198 = load i64, i64* %RCX
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 2
  store i64 %200, i64* %PC
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %198, i64* %201, align 8, !tbaa !2451
  %202 = load i64, i64* %PC
  switch i64 %202, label %1545 [
    i64 4196098, label %block_400702
    i64 4196112, label %block_400710
    i64 4196084, label %block_4006f4
    i64 4196126, label %block_40071e
    i64 4196070, label %block_4006e6
  ]

block_400857:                                     ; preds = %block_40082b, %block_40081f
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.3, %block_40081f ], [ %MEMORY.3, %block_40082b ]
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 10
  store i64 %204, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %205 = load i64, i64* %RBP
  %206 = sub i64 %205, 24
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 4
  store i64 %208, i64* %PC
  %209 = inttoptr i64 %206 to i32*
  %210 = load i32, i32* %209
  %211 = sext i32 %210 to i64
  store i64 %211, i64* %RCX, align 8, !tbaa !2451
  %212 = load i64, i64* %RCX
  %213 = load i64, i64* %PC
  %214 = add i64 %213, 4
  store i64 %214, i64* %PC
  %215 = sext i64 %212 to i128
  %216 = and i128 %215, -18446744073709551616
  %217 = zext i64 %212 to i128
  %218 = or i128 %216, %217
  %219 = mul nsw i128 11, %218
  %220 = trunc i128 %219 to i64
  store i64 %220, i64* %RCX, align 8, !tbaa !2451
  %221 = sext i64 %220 to i128
  %222 = icmp ne i128 %221, %219
  %223 = zext i1 %222 to i8
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %223, i8* %224, align 1, !tbaa !2428
  %225 = trunc i128 %219 to i32
  %226 = and i32 %225, 255
  %227 = call i32 @llvm.ctpop.i32(i32 %226) #16
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %230, i8* %231, align 1, !tbaa !2445
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %232, align 1, !tbaa !2446
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %233, align 1, !tbaa !2447
  %234 = lshr i64 %220, 63
  %235 = trunc i64 %234 to i8
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %235, i8* %236, align 1, !tbaa !2448
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %223, i8* %237, align 1, !tbaa !2449
  %238 = load i64, i64* %RAX
  %239 = load i64, i64* %RCX
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 3
  store i64 %241, i64* %PC
  %242 = add i64 %239, %238
  store i64 %242, i64* %RAX, align 8, !tbaa !2451
  %243 = icmp ult i64 %242, %238
  %244 = icmp ult i64 %242, %239
  %245 = or i1 %243, %244
  %246 = zext i1 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %246, i8* %247, align 1, !tbaa !2428
  %248 = trunc i64 %242 to i32
  %249 = and i32 %248, 255
  %250 = call i32 @llvm.ctpop.i32(i32 %249) #16
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  %253 = xor i8 %252, 1
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %253, i8* %254, align 1, !tbaa !2445
  %255 = xor i64 %239, %238
  %256 = xor i64 %255, %242
  %257 = lshr i64 %256, 4
  %258 = trunc i64 %257 to i8
  %259 = and i8 %258, 1
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %259, i8* %260, align 1, !tbaa !2446
  %261 = icmp eq i64 %242, 0
  %262 = zext i1 %261 to i8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %262, i8* %263, align 1, !tbaa !2447
  %264 = lshr i64 %242, 63
  %265 = trunc i64 %264 to i8
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %265, i8* %266, align 1, !tbaa !2448
  %267 = lshr i64 %238, 63
  %268 = lshr i64 %239, 63
  %269 = xor i64 %264, %267
  %270 = xor i64 %264, %268
  %271 = add nuw nsw i64 %269, %270
  %272 = icmp eq i64 %271, 2
  %273 = zext i1 %272 to i8
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %273, i8* %274, align 1, !tbaa !2449
  %275 = load i64, i64* %RBP
  %276 = sub i64 %275, 20
  %277 = load i64, i64* %PC
  %278 = add i64 %277, 4
  store i64 %278, i64* %PC
  %279 = inttoptr i64 %276 to i32*
  %280 = load i32, i32* %279
  %281 = sext i32 %280 to i64
  store i64 %281, i64* %RCX, align 8, !tbaa !2451
  %282 = load i64, i64* %RAX
  %283 = load i64, i64* %RCX
  %284 = add i64 %283, %282
  %285 = load i64, i64* %PC
  %286 = add i64 %285, 4
  store i64 %286, i64* %PC
  %287 = inttoptr i64 %284 to i8*
  store i8 88, i8* %287
  %288 = load i64, i64* %PC
  %289 = sub i64 %288, 740
  %290 = load i64, i64* %PC
  %291 = add i64 %290, 5
  %292 = load i64, i64* %PC
  %293 = add i64 %292, 5
  store i64 %293, i64* %PC
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %295 = load i64, i64* %294, align 8, !tbaa !2451
  %296 = add i64 %295, -8
  %297 = inttoptr i64 %296 to i64*
  store i64 %291, i64* %297
  store i64 %296, i64* %294, align 8, !tbaa !2451
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %289, i64* %298, align 8, !tbaa !2451
  %299 = load i64, i64* %PC
  %300 = call %struct.Memory* @sub_400590_draw(%struct.State* %0, i64 %299, %struct.Memory* %MEMORY.0)
  %301 = load i64, i64* %RBP
  %302 = sub i64 %301, 36
  %303 = load i64, i64* %PC
  %304 = add i64 %303, 3
  store i64 %304, i64* %PC
  %305 = inttoptr i64 %302 to i32*
  %306 = load i32, i32* %305
  %307 = zext i32 %306 to i64
  store i64 %307, i64* %RDX, align 8, !tbaa !2451
  %308 = load i64, i64* %RDX
  %309 = load i64, i64* %PC
  %310 = add i64 %309, 3
  store i64 %310, i64* %PC
  %311 = trunc i64 %308 to i32
  %312 = add i32 1, %311
  %313 = zext i32 %312 to i64
  store i64 %313, i64* %RDX, align 8, !tbaa !2451
  %314 = icmp ult i32 %312, %311
  %315 = icmp ult i32 %312, 1
  %316 = or i1 %314, %315
  %317 = zext i1 %316 to i8
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %317, i8* %318, align 1, !tbaa !2428
  %319 = and i32 %312, 255
  %320 = call i32 @llvm.ctpop.i32(i32 %319) #16
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %323, i8* %324, align 1, !tbaa !2445
  %325 = xor i64 1, %308
  %326 = trunc i64 %325 to i32
  %327 = xor i32 %326, %312
  %328 = lshr i32 %327, 4
  %329 = trunc i32 %328 to i8
  %330 = and i8 %329, 1
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %330, i8* %331, align 1, !tbaa !2446
  %332 = icmp eq i32 %312, 0
  %333 = zext i1 %332 to i8
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %333, i8* %334, align 1, !tbaa !2447
  %335 = lshr i32 %312, 31
  %336 = trunc i32 %335 to i8
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %336, i8* %337, align 1, !tbaa !2448
  %338 = lshr i32 %311, 31
  %339 = xor i32 %335, %338
  %340 = add nuw nsw i32 %339, %335
  %341 = icmp eq i32 %340, 2
  %342 = zext i1 %341 to i8
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %342, i8* %343, align 1, !tbaa !2449
  %344 = load i64, i64* %RBP
  %345 = sub i64 %344, 36
  %346 = load i32, i32* %EDX
  %347 = zext i32 %346 to i64
  %348 = load i64, i64* %PC
  %349 = add i64 %348, 3
  store i64 %349, i64* %PC
  %350 = inttoptr i64 %345 to i32*
  store i32 %346, i32* %350
  %351 = load i64, i64* %PC
  %352 = sub i64 %351, 478
  %353 = load i64, i64* %PC
  %354 = add i64 %353, 5
  store i64 %354, i64* %PC
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %352, i64* %355, align 8, !tbaa !2451
  %356 = load i64, i64* %RBP
  %357 = sub i64 %356, 36
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 4
  store i64 %359, i64* %PC
  %360 = inttoptr i64 %357 to i32*
  %361 = load i32, i32* %360
  %362 = sub i32 %361, 28
  %363 = icmp ult i32 %361, 28
  %364 = zext i1 %363 to i8
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %364, i8* %365, align 1, !tbaa !2428
  %366 = and i32 %362, 255
  %367 = call i32 @llvm.ctpop.i32(i32 %366) #16
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  %370 = xor i8 %369, 1
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %370, i8* %371, align 1, !tbaa !2445
  %372 = xor i32 %361, 28
  %373 = xor i32 %372, %362
  %374 = lshr i32 %373, 4
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %376, i8* %377, align 1, !tbaa !2446
  %378 = icmp eq i32 %362, 0
  %379 = zext i1 %378 to i8
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %379, i8* %380, align 1, !tbaa !2447
  %381 = lshr i32 %362, 31
  %382 = trunc i32 %381 to i8
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %382, i8* %383, align 1, !tbaa !2448
  %384 = lshr i32 %361, 31
  %385 = xor i32 %381, %384
  %386 = add nuw nsw i32 %385, %384
  %387 = icmp eq i32 %386, 2
  %388 = zext i1 %387 to i8
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %388, i8* %389, align 1, !tbaa !2449
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 479
  %392 = load i64, i64* %PC
  %393 = add i64 %392, 6
  %394 = load i64, i64* %PC
  %395 = add i64 %394, 6
  store i64 %395, i64* %PC
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %397 = load i8, i8* %396, align 1, !tbaa !2448
  %398 = icmp ne i8 %397, 0
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %400 = load i8, i8* %399, align 1, !tbaa !2449
  %401 = icmp ne i8 %400, 0
  %402 = xor i1 %398, %401
  %403 = xor i1 %402, true
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %406 = select i1 %402, i64 %393, i64 %391
  store i64 %406, i64* %405, align 8, !tbaa !2451
  %407 = load i8, i8* %BRANCH_TAKEN
  %408 = icmp eq i8 %407, 1
  br i1 %408, label %block_400887, label %block_4006ae

block_4007d9:                                     ; preds = %block_4007cf
  %409 = load i64, i64* %PC
  %410 = add i64 %409, 10
  store i64 %410, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %411 = load i64, i64* %RBP
  %412 = sub i64 %411, 24
  %413 = load i64, i64* %PC
  %414 = add i64 %413, 4
  store i64 %414, i64* %PC
  %415 = inttoptr i64 %412 to i32*
  %416 = load i32, i32* %415
  %417 = sext i32 %416 to i64
  store i64 %417, i64* %RCX, align 8, !tbaa !2451
  %418 = load i64, i64* %RCX
  %419 = load i64, i64* %PC
  %420 = add i64 %419, 4
  store i64 %420, i64* %PC
  %421 = sext i64 %418 to i128
  %422 = and i128 %421, -18446744073709551616
  %423 = zext i64 %418 to i128
  %424 = or i128 %422, %423
  %425 = mul nsw i128 11, %424
  %426 = trunc i128 %425 to i64
  store i64 %426, i64* %RCX, align 8, !tbaa !2451
  %427 = sext i64 %426 to i128
  %428 = icmp ne i128 %427, %425
  %429 = zext i1 %428 to i8
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %429, i8* %430, align 1, !tbaa !2428
  %431 = trunc i128 %425 to i32
  %432 = and i32 %431, 255
  %433 = call i32 @llvm.ctpop.i32(i32 %432) #16
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %436, i8* %437, align 1, !tbaa !2445
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %438, align 1, !tbaa !2446
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %439, align 1, !tbaa !2447
  %440 = lshr i64 %426, 63
  %441 = trunc i64 %440 to i8
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %441, i8* %442, align 1, !tbaa !2448
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %429, i8* %443, align 1, !tbaa !2449
  %444 = load i64, i64* %RAX
  %445 = load i64, i64* %RCX
  %446 = load i64, i64* %PC
  %447 = add i64 %446, 3
  store i64 %447, i64* %PC
  %448 = add i64 %445, %444
  store i64 %448, i64* %RAX, align 8, !tbaa !2451
  %449 = icmp ult i64 %448, %444
  %450 = icmp ult i64 %448, %445
  %451 = or i1 %449, %450
  %452 = zext i1 %451 to i8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %452, i8* %453, align 1, !tbaa !2428
  %454 = trunc i64 %448 to i32
  %455 = and i32 %454, 255
  %456 = call i32 @llvm.ctpop.i32(i32 %455) #16
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %459, i8* %460, align 1, !tbaa !2445
  %461 = xor i64 %445, %444
  %462 = xor i64 %461, %448
  %463 = lshr i64 %462, 4
  %464 = trunc i64 %463 to i8
  %465 = and i8 %464, 1
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %465, i8* %466, align 1, !tbaa !2446
  %467 = icmp eq i64 %448, 0
  %468 = zext i1 %467 to i8
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %468, i8* %469, align 1, !tbaa !2447
  %470 = lshr i64 %448, 63
  %471 = trunc i64 %470 to i8
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %471, i8* %472, align 1, !tbaa !2448
  %473 = lshr i64 %444, 63
  %474 = lshr i64 %445, 63
  %475 = xor i64 %470, %473
  %476 = xor i64 %470, %474
  %477 = add nuw nsw i64 %475, %476
  %478 = icmp eq i64 %477, 2
  %479 = zext i1 %478 to i8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %479, i8* %480, align 1, !tbaa !2449
  %481 = load i64, i64* %RBP
  %482 = sub i64 %481, 20
  %483 = load i64, i64* %PC
  %484 = add i64 %483, 4
  store i64 %484, i64* %PC
  %485 = inttoptr i64 %482 to i32*
  %486 = load i32, i32* %485
  %487 = sext i32 %486 to i64
  store i64 %487, i64* %RCX, align 8, !tbaa !2451
  %488 = load i64, i64* %RAX
  %489 = load i64, i64* %RCX
  %490 = add i64 %489, %488
  %491 = load i64, i64* %PC
  %492 = add i64 %491, 4
  store i64 %492, i64* %PC
  %493 = inttoptr i64 %490 to i8*
  %494 = load i8, i8* %493
  %495 = sext i8 %494 to i64
  %496 = and i64 %495, 4294967295
  store i64 %496, i64* %RDX, align 8, !tbaa !2451
  %497 = load i32, i32* %EDX
  %498 = zext i32 %497 to i64
  %499 = load i64, i64* %PC
  %500 = add i64 %499, 3
  store i64 %500, i64* %PC
  %501 = sub i32 %497, 124
  %502 = icmp ult i32 %497, 124
  %503 = zext i1 %502 to i8
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %503, i8* %504, align 1, !tbaa !2428
  %505 = and i32 %501, 255
  %506 = call i32 @llvm.ctpop.i32(i32 %505) #16
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  %509 = xor i8 %508, 1
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %509, i8* %510, align 1, !tbaa !2445
  %511 = xor i64 124, %498
  %512 = trunc i64 %511 to i32
  %513 = xor i32 %512, %501
  %514 = lshr i32 %513, 4
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %516, i8* %517, align 1, !tbaa !2446
  %518 = icmp eq i32 %501, 0
  %519 = zext i1 %518 to i8
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %519, i8* %520, align 1, !tbaa !2447
  %521 = lshr i32 %501, 31
  %522 = trunc i32 %521 to i8
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %522, i8* %523, align 1, !tbaa !2448
  %524 = lshr i32 %497, 31
  %525 = xor i32 %521, %524
  %526 = add nuw nsw i32 %525, %524
  %527 = icmp eq i32 %526, 2
  %528 = zext i1 %527 to i8
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %528, i8* %529, align 1, !tbaa !2449
  %530 = load i64, i64* %PC
  %531 = add i64 %530, 26
  %532 = load i64, i64* %PC
  %533 = add i64 %532, 6
  %534 = load i64, i64* %PC
  %535 = add i64 %534, 6
  store i64 %535, i64* %PC
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %537 = load i8, i8* %536, align 1, !tbaa !2447
  %538 = icmp eq i8 %537, 0
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %541 = select i1 %538, i64 %531, i64 %533
  store i64 %541, i64* %540, align 8, !tbaa !2451
  %542 = load i8, i8* %BRANCH_TAKEN
  %543 = icmp eq i8 %542, 1
  br i1 %543, label %block_400813, label %block_4007ff

block_4006ae:                                     ; preds = %block_400857
  %544 = load i64, i64* %RBP
  %545 = sub i64 %544, 20
  %546 = load i64, i64* %PC
  %547 = add i64 %546, 3
  store i64 %547, i64* %PC
  %548 = inttoptr i64 %545 to i32*
  %549 = load i32, i32* %548
  %550 = zext i32 %549 to i64
  store i64 %550, i64* %RAX, align 8, !tbaa !2451
  %551 = load i64, i64* %RBP
  %552 = sub i64 %551, 28
  %553 = load i32, i32* %EAX
  %554 = zext i32 %553 to i64
  %555 = load i64, i64* %PC
  %556 = add i64 %555, 3
  store i64 %556, i64* %PC
  %557 = inttoptr i64 %552 to i32*
  store i32 %553, i32* %557
  %558 = load i64, i64* %RBP
  %559 = sub i64 %558, 24
  %560 = load i64, i64* %PC
  %561 = add i64 %560, 3
  store i64 %561, i64* %PC
  %562 = inttoptr i64 %559 to i32*
  %563 = load i32, i32* %562
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %RAX, align 8, !tbaa !2451
  %565 = load i64, i64* %RBP
  %566 = sub i64 %565, 32
  %567 = load i32, i32* %EAX
  %568 = zext i32 %567 to i64
  %569 = load i64, i64* %PC
  %570 = add i64 %569, 3
  store i64 %570, i64* %PC
  %571 = inttoptr i64 %566 to i32*
  store i32 %567, i32* %571
  %572 = load i64, i64* %RBP
  %573 = sub i64 %572, 36
  %574 = load i64, i64* %PC
  %575 = add i64 %574, 4
  store i64 %575, i64* %PC
  %576 = inttoptr i64 %573 to i32*
  %577 = load i32, i32* %576
  %578 = sext i32 %577 to i64
  store i64 %578, i64* %RCX, align 8, !tbaa !2451
  %579 = load i64, i64* %RBP
  %580 = load i64, i64* %RCX
  %581 = add i64 %579, -64
  %582 = add i64 %581, %580
  %583 = load i64, i64* %PC
  %584 = add i64 %583, 5
  store i64 %584, i64* %PC
  %585 = inttoptr i64 %582 to i8*
  %586 = load i8, i8* %585
  %587 = sext i8 %586 to i64
  %588 = and i64 %587, 4294967295
  store i64 %588, i64* %RAX, align 8, !tbaa !2451
  %589 = load i64, i64* %RAX
  %590 = load i64, i64* %PC
  %591 = add i64 %590, 3
  store i64 %591, i64* %PC
  %592 = trunc i64 %589 to i32
  %593 = add i32 -97, %592
  %594 = zext i32 %593 to i64
  store i64 %594, i64* %RAX, align 8, !tbaa !2451
  %595 = icmp ult i32 %593, %592
  %596 = icmp ult i32 %593, -97
  %597 = or i1 %595, %596
  %598 = zext i1 %597 to i8
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %598, i8* %599, align 1, !tbaa !2428
  %600 = and i32 %593, 255
  %601 = call i32 @llvm.ctpop.i32(i32 %600) #16
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  %604 = xor i8 %603, 1
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %604, i8* %605, align 1, !tbaa !2445
  %606 = xor i64 -97, %589
  %607 = trunc i64 %606 to i32
  %608 = xor i32 %607, %593
  %609 = lshr i32 %608, 4
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %611, i8* %612, align 1, !tbaa !2446
  %613 = icmp eq i32 %593, 0
  %614 = zext i1 %613 to i8
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %614, i8* %615, align 1, !tbaa !2447
  %616 = lshr i32 %593, 31
  %617 = trunc i32 %616 to i8
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %617, i8* %618, align 1, !tbaa !2448
  %619 = lshr i32 %592, 31
  %620 = xor i32 %616, %619
  %621 = xor i32 %616, 1
  %622 = add nuw nsw i32 %620, %621
  %623 = icmp eq i32 %622, 2
  %624 = zext i1 %623 to i8
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %624, i8* %625, align 1, !tbaa !2449
  %626 = load i32, i32* %EAX
  %627 = zext i32 %626 to i64
  %628 = load i64, i64* %PC
  %629 = add i64 %628, 2
  store i64 %629, i64* %PC
  %630 = and i64 %627, 4294967295
  store i64 %630, i64* %RCX, align 8, !tbaa !2451
  %631 = load i64, i64* %RAX
  %632 = load i64, i64* %PC
  %633 = add i64 %632, 3
  store i64 %633, i64* %PC
  %634 = trunc i64 %631 to i32
  %635 = sub i32 %634, 22
  %636 = zext i32 %635 to i64
  store i64 %636, i64* %RAX, align 8, !tbaa !2451
  %637 = icmp ult i32 %634, 22
  %638 = zext i1 %637 to i8
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %638, i8* %639, align 1, !tbaa !2428
  %640 = and i32 %635, 255
  %641 = call i32 @llvm.ctpop.i32(i32 %640) #16
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %644, i8* %645, align 1, !tbaa !2445
  %646 = xor i64 22, %631
  %647 = trunc i64 %646 to i32
  %648 = xor i32 %647, %635
  %649 = lshr i32 %648, 4
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %651, i8* %652, align 1, !tbaa !2446
  %653 = icmp eq i32 %635, 0
  %654 = zext i1 %653 to i8
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %654, i8* %655, align 1, !tbaa !2447
  %656 = lshr i32 %635, 31
  %657 = trunc i32 %656 to i8
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %657, i8* %658, align 1, !tbaa !2448
  %659 = lshr i32 %634, 31
  %660 = xor i32 %656, %659
  %661 = add nuw nsw i32 %660, %659
  %662 = icmp eq i32 %661, 2
  %663 = zext i1 %662 to i8
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %663, i8* %664, align 1, !tbaa !2449
  %665 = load i64, i64* %RBP
  %666 = sub i64 %665, 80
  %667 = load i64, i64* %RCX
  %668 = load i64, i64* %PC
  %669 = add i64 %668, 4
  store i64 %669, i64* %PC
  %670 = inttoptr i64 %666 to i64*
  store i64 %667, i64* %670
  %671 = load i64, i64* %RBP
  %672 = sub i64 %671, 84
  %673 = load i32, i32* %EAX
  %674 = zext i32 %673 to i64
  %675 = load i64, i64* %PC
  %676 = add i64 %675, 3
  store i64 %676, i64* %PC
  %677 = inttoptr i64 %672 to i32*
  store i32 %673, i32* %677
  %678 = load i64, i64* %PC
  %679 = add i64 %678, 76
  %680 = load i64, i64* %PC
  %681 = add i64 %680, 6
  %682 = load i64, i64* %PC
  %683 = add i64 %682, 6
  store i64 %683, i64* %PC
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %685 = load i8, i8* %684, align 1, !tbaa !2428
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %687 = load i8, i8* %686, align 1, !tbaa !2447
  %688 = or i8 %687, %685
  %689 = icmp eq i8 %688, 0
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %692 = select i1 %689, i64 %679, i64 %681
  store i64 %692, i64* %691, align 8, !tbaa !2451
  %693 = load i8, i8* %BRANCH_TAKEN
  %694 = icmp eq i8 %693, 1
  br i1 %694, label %block_40071e, label %block_4006d8

block_4007a9:                                     ; preds = %block_400750
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %695 = load i64, i64* %RBP
  %696 = sub i64 %695, 24
  %697 = load i64, i64* %PC
  %698 = add i64 %697, 4
  store i64 %698, i64* %PC
  %699 = inttoptr i64 %696 to i32*
  %700 = load i32, i32* %699
  %701 = sext i32 %700 to i64
  store i64 %701, i64* %RCX, align 8, !tbaa !2451
  %702 = load i64, i64* %RCX
  %703 = load i64, i64* %PC
  %704 = add i64 %703, 4
  store i64 %704, i64* %PC
  %705 = sext i64 %702 to i128
  %706 = and i128 %705, -18446744073709551616
  %707 = zext i64 %702 to i128
  %708 = or i128 %706, %707
  %709 = mul nsw i128 11, %708
  %710 = trunc i128 %709 to i64
  store i64 %710, i64* %RCX, align 8, !tbaa !2451
  %711 = sext i64 %710 to i128
  %712 = icmp ne i128 %711, %709
  %713 = zext i1 %712 to i8
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %713, i8* %714, align 1, !tbaa !2428
  %715 = trunc i128 %709 to i32
  %716 = and i32 %715, 255
  %717 = call i32 @llvm.ctpop.i32(i32 %716) #16
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  %720 = xor i8 %719, 1
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %720, i8* %721, align 1, !tbaa !2445
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %722, align 1, !tbaa !2446
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %723, align 1, !tbaa !2447
  %724 = lshr i64 %710, 63
  %725 = trunc i64 %724 to i8
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %725, i8* %726, align 1, !tbaa !2448
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %713, i8* %727, align 1, !tbaa !2449
  %728 = load i64, i64* %RAX
  %729 = load i64, i64* %RCX
  %730 = load i64, i64* %PC
  %731 = add i64 %730, 3
  store i64 %731, i64* %PC
  %732 = add i64 %729, %728
  store i64 %732, i64* %RAX, align 8, !tbaa !2451
  %733 = icmp ult i64 %732, %728
  %734 = icmp ult i64 %732, %729
  %735 = or i1 %733, %734
  %736 = zext i1 %735 to i8
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %736, i8* %737, align 1, !tbaa !2428
  %738 = trunc i64 %732 to i32
  %739 = and i32 %738, 255
  %740 = call i32 @llvm.ctpop.i32(i32 %739) #16
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  %743 = xor i8 %742, 1
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %743, i8* %744, align 1, !tbaa !2445
  %745 = xor i64 %729, %728
  %746 = xor i64 %745, %732
  %747 = lshr i64 %746, 4
  %748 = trunc i64 %747 to i8
  %749 = and i8 %748, 1
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %749, i8* %750, align 1, !tbaa !2446
  %751 = icmp eq i64 %732, 0
  %752 = zext i1 %751 to i8
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %752, i8* %753, align 1, !tbaa !2447
  %754 = lshr i64 %732, 63
  %755 = trunc i64 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %755, i8* %756, align 1, !tbaa !2448
  %757 = lshr i64 %728, 63
  %758 = lshr i64 %729, 63
  %759 = xor i64 %754, %757
  %760 = xor i64 %754, %758
  %761 = add nuw nsw i64 %759, %760
  %762 = icmp eq i64 %761, 2
  %763 = zext i1 %762 to i8
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %763, i8* %764, align 1, !tbaa !2449
  %765 = load i64, i64* %RBP
  %766 = sub i64 %765, 20
  %767 = load i64, i64* %PC
  %768 = add i64 %767, 4
  store i64 %768, i64* %PC
  %769 = inttoptr i64 %766 to i32*
  %770 = load i32, i32* %769
  %771 = sext i32 %770 to i64
  store i64 %771, i64* %RCX, align 8, !tbaa !2451
  %772 = load i64, i64* %RAX
  %773 = load i64, i64* %RCX
  %774 = add i64 %773, %772
  %775 = load i64, i64* %PC
  %776 = add i64 %775, 4
  store i64 %776, i64* %PC
  %777 = inttoptr i64 %774 to i8*
  %778 = load i8, i8* %777
  %779 = sext i8 %778 to i64
  %780 = and i64 %779, 4294967295
  store i64 %780, i64* %RDX, align 8, !tbaa !2451
  %781 = load i32, i32* %EDX
  %782 = zext i32 %781 to i64
  %783 = load i64, i64* %PC
  %784 = add i64 %783, 3
  store i64 %784, i64* %PC
  %785 = sub i32 %781, 32
  %786 = icmp ult i32 %781, 32
  %787 = zext i1 %786 to i8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %787, i8* %788, align 1, !tbaa !2428
  %789 = and i32 %785, 255
  %790 = call i32 @llvm.ctpop.i32(i32 %789) #16
  %791 = trunc i32 %790 to i8
  %792 = and i8 %791, 1
  %793 = xor i8 %792, 1
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %793, i8* %794, align 1, !tbaa !2445
  %795 = xor i64 32, %782
  %796 = trunc i64 %795 to i32
  %797 = xor i32 %796, %785
  %798 = lshr i32 %797, 4
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %800, i8* %801, align 1, !tbaa !2446
  %802 = icmp eq i32 %785, 0
  %803 = zext i1 %802 to i8
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %803, i8* %804, align 1, !tbaa !2447
  %805 = lshr i32 %785, 31
  %806 = trunc i32 %805 to i8
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %806, i8* %807, align 1, !tbaa !2448
  %808 = lshr i32 %781, 31
  %809 = xor i32 %805, %808
  %810 = add nuw nsw i32 %809, %808
  %811 = icmp eq i32 %810, 2
  %812 = zext i1 %811 to i8
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %812, i8* %813, align 1, !tbaa !2449
  %814 = load i64, i64* %PC
  %815 = add i64 %814, 86
  %816 = load i64, i64* %PC
  %817 = add i64 %816, 6
  %818 = load i64, i64* %PC
  %819 = add i64 %818, 6
  store i64 %819, i64* %PC
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %821 = load i8, i8* %820, align 1, !tbaa !2447
  store i8 %821, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %823 = icmp ne i8 %821, 0
  %824 = select i1 %823, i64 %815, i64 %817
  store i64 %824, i64* %822, align 8, !tbaa !2451
  %825 = load i8, i8* %BRANCH_TAKEN
  %826 = icmp eq i8 %825, 1
  br i1 %826, label %block_40081f, label %block_4007cf

block_4008a2:                                     ; preds = %block_400887, %block_400837
  %MEMORY.1 = phi %struct.Memory* [ %1426, %block_400887 ], [ %1233, %block_400837 ]
  %827 = load i64, i64* %RBP
  %828 = sub i64 %827, 4
  %829 = load i64, i64* %PC
  %830 = add i64 %829, 3
  store i64 %830, i64* %PC
  %831 = inttoptr i64 %828 to i32*
  %832 = load i32, i32* %831
  %833 = zext i32 %832 to i64
  store i64 %833, i64* %RAX, align 8, !tbaa !2451
  %834 = load i64, i64* %RSP
  %835 = load i64, i64* %PC
  %836 = add i64 %835, 4
  store i64 %836, i64* %PC
  %837 = add i64 112, %834
  store i64 %837, i64* %RSP, align 8, !tbaa !2451
  %838 = icmp ult i64 %837, %834
  %839 = icmp ult i64 %837, 112
  %840 = or i1 %838, %839
  %841 = zext i1 %840 to i8
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %841, i8* %842, align 1, !tbaa !2428
  %843 = trunc i64 %837 to i32
  %844 = and i32 %843, 255
  %845 = call i32 @llvm.ctpop.i32(i32 %844) #16
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  %848 = xor i8 %847, 1
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %848, i8* %849, align 1, !tbaa !2445
  %850 = xor i64 112, %834
  %851 = xor i64 %850, %837
  %852 = lshr i64 %851, 4
  %853 = trunc i64 %852 to i8
  %854 = and i8 %853, 1
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %854, i8* %855, align 1, !tbaa !2446
  %856 = icmp eq i64 %837, 0
  %857 = zext i1 %856 to i8
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %857, i8* %858, align 1, !tbaa !2447
  %859 = lshr i64 %837, 63
  %860 = trunc i64 %859 to i8
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %860, i8* %861, align 1, !tbaa !2448
  %862 = lshr i64 %834, 63
  %863 = xor i64 %859, %862
  %864 = add nuw nsw i64 %863, %859
  %865 = icmp eq i64 %864, 2
  %866 = zext i1 %865 to i8
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %866, i8* %867, align 1, !tbaa !2449
  %868 = load i64, i64* %PC
  %869 = add i64 %868, 1
  store i64 %869, i64* %PC
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %871 = load i64, i64* %870, align 8, !tbaa !2451
  %872 = add i64 %871, 8
  %873 = inttoptr i64 %871 to i64*
  %874 = load i64, i64* %873
  store i64 %874, i64* %RBP, align 8, !tbaa !2451
  store i64 %872, i64* %870, align 8, !tbaa !2451
  %875 = load i64, i64* %PC
  %876 = add i64 %875, 1
  store i64 %876, i64* %PC
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %879 = load i64, i64* %878, align 8, !tbaa !2451
  %880 = inttoptr i64 %879 to i64*
  %881 = load i64, i64* %880
  store i64 %881, i64* %877, align 8, !tbaa !2451
  %882 = add i64 %879, 8
  store i64 %882, i64* %878, align 8, !tbaa !2451
  ret %struct.Memory* %MEMORY.1

block_4006f4:                                     ; preds = %block_4006d8
  %883 = load i64, i64* %RBP
  %884 = sub i64 %883, 24
  %885 = load i64, i64* %PC
  %886 = add i64 %885, 3
  store i64 %886, i64* %PC
  %887 = inttoptr i64 %884 to i32*
  %888 = load i32, i32* %887
  %889 = zext i32 %888 to i64
  store i64 %889, i64* %RAX, align 8, !tbaa !2451
  %890 = load i64, i64* %RAX
  %891 = load i64, i64* %PC
  %892 = add i64 %891, 3
  store i64 %892, i64* %PC
  %893 = trunc i64 %890 to i32
  %894 = add i32 1, %893
  %895 = zext i32 %894 to i64
  store i64 %895, i64* %RAX, align 8, !tbaa !2451
  %896 = icmp ult i32 %894, %893
  %897 = icmp ult i32 %894, 1
  %898 = or i1 %896, %897
  %899 = zext i1 %898 to i8
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %899, i8* %900, align 1, !tbaa !2428
  %901 = and i32 %894, 255
  %902 = call i32 @llvm.ctpop.i32(i32 %901) #16
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = xor i8 %904, 1
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %905, i8* %906, align 1, !tbaa !2445
  %907 = xor i64 1, %890
  %908 = trunc i64 %907 to i32
  %909 = xor i32 %908, %894
  %910 = lshr i32 %909, 4
  %911 = trunc i32 %910 to i8
  %912 = and i8 %911, 1
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %912, i8* %913, align 1, !tbaa !2446
  %914 = icmp eq i32 %894, 0
  %915 = zext i1 %914 to i8
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %915, i8* %916, align 1, !tbaa !2447
  %917 = lshr i32 %894, 31
  %918 = trunc i32 %917 to i8
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %918, i8* %919, align 1, !tbaa !2448
  %920 = lshr i32 %893, 31
  %921 = xor i32 %917, %920
  %922 = add nuw nsw i32 %921, %917
  %923 = icmp eq i32 %922, 2
  %924 = zext i1 %923 to i8
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %924, i8* %925, align 1, !tbaa !2449
  %926 = load i64, i64* %RBP
  %927 = sub i64 %926, 24
  %928 = load i32, i32* %EAX
  %929 = zext i32 %928 to i64
  %930 = load i64, i64* %PC
  %931 = add i64 %930, 3
  store i64 %931, i64* %PC
  %932 = inttoptr i64 %927 to i32*
  store i32 %928, i32* %932
  %933 = load i64, i64* %PC
  %934 = add i64 %933, 83
  %935 = load i64, i64* %PC
  %936 = add i64 %935, 5
  store i64 %936, i64* %PC
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %934, i64* %937, align 8, !tbaa !2451
  br label %block_400750

block_400750:                                     ; preds = %block_400702, %block_400710, %block_4006f4, %block_4006e6
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.5, %block_400702 ], [ %300, %block_4006e6 ], [ %300, %block_4006f4 ], [ %300, %block_400710 ]
  %938 = load i64, i64* %PC
  %939 = add i64 %938, 10
  store i64 %939, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %940 = load i64, i64* %RBP
  %941 = sub i64 %940, 24
  %942 = load i64, i64* %PC
  %943 = add i64 %942, 4
  store i64 %943, i64* %PC
  %944 = inttoptr i64 %941 to i32*
  %945 = load i32, i32* %944
  %946 = sext i32 %945 to i64
  store i64 %946, i64* %RCX, align 8, !tbaa !2451
  %947 = load i64, i64* %RCX
  %948 = load i64, i64* %PC
  %949 = add i64 %948, 4
  store i64 %949, i64* %PC
  %950 = sext i64 %947 to i128
  %951 = and i128 %950, -18446744073709551616
  %952 = zext i64 %947 to i128
  %953 = or i128 %951, %952
  %954 = mul nsw i128 11, %953
  %955 = trunc i128 %954 to i64
  store i64 %955, i64* %RCX, align 8, !tbaa !2451
  %956 = sext i64 %955 to i128
  %957 = icmp ne i128 %956, %954
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %958, i8* %959, align 1, !tbaa !2428
  %960 = trunc i128 %954 to i32
  %961 = and i32 %960, 255
  %962 = call i32 @llvm.ctpop.i32(i32 %961) #16
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  %965 = xor i8 %964, 1
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %965, i8* %966, align 1, !tbaa !2445
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %967, align 1, !tbaa !2446
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %968, align 1, !tbaa !2447
  %969 = lshr i64 %955, 63
  %970 = trunc i64 %969 to i8
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %970, i8* %971, align 1, !tbaa !2448
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %958, i8* %972, align 1, !tbaa !2449
  %973 = load i64, i64* %RAX
  %974 = load i64, i64* %RCX
  %975 = load i64, i64* %PC
  %976 = add i64 %975, 3
  store i64 %976, i64* %PC
  %977 = add i64 %974, %973
  store i64 %977, i64* %RAX, align 8, !tbaa !2451
  %978 = icmp ult i64 %977, %973
  %979 = icmp ult i64 %977, %974
  %980 = or i1 %978, %979
  %981 = zext i1 %980 to i8
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %981, i8* %982, align 1, !tbaa !2428
  %983 = trunc i64 %977 to i32
  %984 = and i32 %983, 255
  %985 = call i32 @llvm.ctpop.i32(i32 %984) #16
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  %988 = xor i8 %987, 1
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %988, i8* %989, align 1, !tbaa !2445
  %990 = xor i64 %974, %973
  %991 = xor i64 %990, %977
  %992 = lshr i64 %991, 4
  %993 = trunc i64 %992 to i8
  %994 = and i8 %993, 1
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %994, i8* %995, align 1, !tbaa !2446
  %996 = icmp eq i64 %977, 0
  %997 = zext i1 %996 to i8
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %997, i8* %998, align 1, !tbaa !2447
  %999 = lshr i64 %977, 63
  %1000 = trunc i64 %999 to i8
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1000, i8* %1001, align 1, !tbaa !2448
  %1002 = lshr i64 %973, 63
  %1003 = lshr i64 %974, 63
  %1004 = xor i64 %999, %1002
  %1005 = xor i64 %999, %1003
  %1006 = add nuw nsw i64 %1004, %1005
  %1007 = icmp eq i64 %1006, 2
  %1008 = zext i1 %1007 to i8
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1008, i8* %1009, align 1, !tbaa !2449
  %1010 = load i64, i64* %RBP
  %1011 = sub i64 %1010, 20
  %1012 = load i64, i64* %PC
  %1013 = add i64 %1012, 4
  store i64 %1013, i64* %PC
  %1014 = inttoptr i64 %1011 to i32*
  %1015 = load i32, i32* %1014
  %1016 = sext i32 %1015 to i64
  store i64 %1016, i64* %RCX, align 8, !tbaa !2451
  %1017 = load i64, i64* %RAX
  %1018 = load i64, i64* %RCX
  %1019 = add i64 %1018, %1017
  %1020 = load i64, i64* %PC
  %1021 = add i64 %1020, 4
  store i64 %1021, i64* %PC
  %1022 = inttoptr i64 %1019 to i8*
  %1023 = load i8, i8* %1022
  %1024 = sext i8 %1023 to i64
  %1025 = and i64 %1024, 4294967295
  store i64 %1025, i64* %RDX, align 8, !tbaa !2451
  %1026 = load i32, i32* %EDX
  %1027 = zext i32 %1026 to i64
  %1028 = load i64, i64* %PC
  %1029 = add i64 %1028, 3
  store i64 %1029, i64* %PC
  %1030 = sub i32 %1026, 35
  %1031 = icmp ult i32 %1026, 35
  %1032 = zext i1 %1031 to i8
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1032, i8* %1033, align 1, !tbaa !2428
  %1034 = and i32 %1030, 255
  %1035 = call i32 @llvm.ctpop.i32(i32 %1034) #16
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = xor i8 %1037, 1
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1038, i8* %1039, align 1, !tbaa !2445
  %1040 = xor i64 35, %1027
  %1041 = trunc i64 %1040 to i32
  %1042 = xor i32 %1041, %1030
  %1043 = lshr i32 %1042, 4
  %1044 = trunc i32 %1043 to i8
  %1045 = and i8 %1044, 1
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1045, i8* %1046, align 1, !tbaa !2446
  %1047 = icmp eq i32 %1030, 0
  %1048 = zext i1 %1047 to i8
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1048, i8* %1049, align 1, !tbaa !2447
  %1050 = lshr i32 %1030, 31
  %1051 = trunc i32 %1050 to i8
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1051, i8* %1052, align 1, !tbaa !2448
  %1053 = lshr i32 %1026, 31
  %1054 = xor i32 %1050, %1053
  %1055 = add nuw nsw i32 %1054, %1053
  %1056 = icmp eq i32 %1055, 2
  %1057 = zext i1 %1056 to i8
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1057, i8* %1058, align 1, !tbaa !2449
  %1059 = load i64, i64* %PC
  %1060 = add i64 %1059, 57
  %1061 = load i64, i64* %PC
  %1062 = add i64 %1061, 6
  %1063 = load i64, i64* %PC
  %1064 = add i64 %1063, 6
  store i64 %1064, i64* %PC
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1066 = load i8, i8* %1065, align 1, !tbaa !2447
  %1067 = icmp eq i8 %1066, 0
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1070 = select i1 %1067, i64 %1060, i64 %1062
  store i64 %1070, i64* %1069, align 8, !tbaa !2451
  %1071 = load i8, i8* %BRANCH_TAKEN
  %1072 = icmp eq i8 %1071, 1
  %1073 = load i64, i64* %PC
  %1074 = add i64 %1073, 10
  store i64 %1074, i64* %PC
  br i1 %1072, label %block_4007a9, label %block_400776

block_40081f:                                     ; preds = %block_400809, %block_400813, %block_4007a9
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_4007a9 ], [ %MEMORY.4, %block_400813 ], [ %MEMORY.2, %block_400809 ]
  %1075 = load i64, i64* %RBP
  %1076 = sub i64 %1075, 28
  %1077 = load i64, i64* %PC
  %1078 = add i64 %1077, 3
  store i64 %1078, i64* %PC
  %1079 = inttoptr i64 %1076 to i32*
  %1080 = load i32, i32* %1079
  %1081 = zext i32 %1080 to i64
  store i64 %1081, i64* %RAX, align 8, !tbaa !2451
  %1082 = load i32, i32* %EAX
  %1083 = zext i32 %1082 to i64
  %1084 = load i64, i64* %RBP
  %1085 = sub i64 %1084, 20
  %1086 = load i64, i64* %PC
  %1087 = add i64 %1086, 3
  store i64 %1087, i64* %PC
  %1088 = inttoptr i64 %1085 to i32*
  %1089 = load i32, i32* %1088
  %1090 = sub i32 %1082, %1089
  %1091 = icmp ult i32 %1082, %1089
  %1092 = zext i1 %1091 to i8
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1092, i8* %1093, align 1, !tbaa !2428
  %1094 = and i32 %1090, 255
  %1095 = call i32 @llvm.ctpop.i32(i32 %1094) #16
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  %1098 = xor i8 %1097, 1
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1098, i8* %1099, align 1, !tbaa !2445
  %1100 = xor i32 %1089, %1082
  %1101 = xor i32 %1100, %1090
  %1102 = lshr i32 %1101, 4
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1104, i8* %1105, align 1, !tbaa !2446
  %1106 = icmp eq i32 %1090, 0
  %1107 = zext i1 %1106 to i8
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1107, i8* %1108, align 1, !tbaa !2447
  %1109 = lshr i32 %1090, 31
  %1110 = trunc i32 %1109 to i8
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1110, i8* %1111, align 1, !tbaa !2448
  %1112 = lshr i32 %1082, 31
  %1113 = lshr i32 %1089, 31
  %1114 = xor i32 %1113, %1112
  %1115 = xor i32 %1109, %1112
  %1116 = add nuw nsw i32 %1115, %1114
  %1117 = icmp eq i32 %1116, 2
  %1118 = zext i1 %1117 to i8
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1118, i8* %1119, align 1, !tbaa !2449
  %1120 = load i64, i64* %PC
  %1121 = add i64 %1120, 50
  %1122 = load i64, i64* %PC
  %1123 = add i64 %1122, 6
  %1124 = load i64, i64* %PC
  %1125 = add i64 %1124, 6
  store i64 %1125, i64* %PC
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1127 = load i8, i8* %1126, align 1, !tbaa !2447
  %1128 = icmp eq i8 %1127, 0
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1131 = select i1 %1128, i64 %1121, i64 %1123
  store i64 %1131, i64* %1130, align 8, !tbaa !2451
  %1132 = load i8, i8* %BRANCH_TAKEN
  %1133 = icmp eq i8 %1132, 1
  br i1 %1133, label %block_400857, label %block_40082b

block_400813:                                     ; preds = %block_4007ff, %block_4007cf, %block_400809, %block_4007d9
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.2, %block_4007cf ], [ %MEMORY.2, %block_4007d9 ], [ %MEMORY.2, %block_4007ff ], [ %MEMORY.2, %block_400809 ]
  %1134 = load i64, i64* %RBP
  %1135 = sub i64 %1134, 28
  %1136 = load i64, i64* %PC
  %1137 = add i64 %1136, 3
  store i64 %1137, i64* %PC
  %1138 = inttoptr i64 %1135 to i32*
  %1139 = load i32, i32* %1138
  %1140 = zext i32 %1139 to i64
  store i64 %1140, i64* %RAX, align 8, !tbaa !2451
  %1141 = load i64, i64* %RBP
  %1142 = sub i64 %1141, 20
  %1143 = load i32, i32* %EAX
  %1144 = zext i32 %1143 to i64
  %1145 = load i64, i64* %PC
  %1146 = add i64 %1145, 3
  store i64 %1146, i64* %PC
  %1147 = inttoptr i64 %1142 to i32*
  store i32 %1143, i32* %1147
  %1148 = load i64, i64* %RBP
  %1149 = sub i64 %1148, 32
  %1150 = load i64, i64* %PC
  %1151 = add i64 %1150, 3
  store i64 %1151, i64* %PC
  %1152 = inttoptr i64 %1149 to i32*
  %1153 = load i32, i32* %1152
  %1154 = zext i32 %1153 to i64
  store i64 %1154, i64* %RAX, align 8, !tbaa !2451
  %1155 = load i64, i64* %RBP
  %1156 = sub i64 %1155, 24
  %1157 = load i32, i32* %EAX
  %1158 = zext i32 %1157 to i64
  %1159 = load i64, i64* %PC
  %1160 = add i64 %1159, 3
  store i64 %1160, i64* %PC
  %1161 = inttoptr i64 %1156 to i32*
  store i32 %1157, i32* %1161
  br label %block_40081f

block_400710:                                     ; preds = %block_4006d8
  %1162 = load i64, i64* %RBP
  %1163 = sub i64 %1162, 20
  %1164 = load i64, i64* %PC
  %1165 = add i64 %1164, 3
  store i64 %1165, i64* %PC
  %1166 = inttoptr i64 %1163 to i32*
  %1167 = load i32, i32* %1166
  %1168 = zext i32 %1167 to i64
  store i64 %1168, i64* %RAX, align 8, !tbaa !2451
  %1169 = load i64, i64* %RAX
  %1170 = load i64, i64* %PC
  %1171 = add i64 %1170, 3
  store i64 %1171, i64* %PC
  %1172 = trunc i64 %1169 to i32
  %1173 = add i32 1, %1172
  %1174 = zext i32 %1173 to i64
  store i64 %1174, i64* %RAX, align 8, !tbaa !2451
  %1175 = icmp ult i32 %1173, %1172
  %1176 = icmp ult i32 %1173, 1
  %1177 = or i1 %1175, %1176
  %1178 = zext i1 %1177 to i8
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1178, i8* %1179, align 1, !tbaa !2428
  %1180 = and i32 %1173, 255
  %1181 = call i32 @llvm.ctpop.i32(i32 %1180) #16
  %1182 = trunc i32 %1181 to i8
  %1183 = and i8 %1182, 1
  %1184 = xor i8 %1183, 1
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1184, i8* %1185, align 1, !tbaa !2445
  %1186 = xor i64 1, %1169
  %1187 = trunc i64 %1186 to i32
  %1188 = xor i32 %1187, %1173
  %1189 = lshr i32 %1188, 4
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1191, i8* %1192, align 1, !tbaa !2446
  %1193 = icmp eq i32 %1173, 0
  %1194 = zext i1 %1193 to i8
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1194, i8* %1195, align 1, !tbaa !2447
  %1196 = lshr i32 %1173, 31
  %1197 = trunc i32 %1196 to i8
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1197, i8* %1198, align 1, !tbaa !2448
  %1199 = lshr i32 %1172, 31
  %1200 = xor i32 %1196, %1199
  %1201 = add nuw nsw i32 %1200, %1196
  %1202 = icmp eq i32 %1201, 2
  %1203 = zext i1 %1202 to i8
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1203, i8* %1204, align 1, !tbaa !2449
  %1205 = load i64, i64* %RBP
  %1206 = sub i64 %1205, 20
  %1207 = load i32, i32* %EAX
  %1208 = zext i32 %1207 to i64
  %1209 = load i64, i64* %PC
  %1210 = add i64 %1209, 3
  store i64 %1210, i64* %PC
  %1211 = inttoptr i64 %1206 to i32*
  store i32 %1207, i32* %1211
  %1212 = load i64, i64* %PC
  %1213 = add i64 %1212, 55
  %1214 = load i64, i64* %PC
  %1215 = add i64 %1214, 5
  store i64 %1215, i64* %PC
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1213, i64* %1216, align 8, !tbaa !2451
  br label %block_400750

block_400837:                                     ; preds = %block_40082b
  %1217 = load i64, i64* %PC
  %1218 = add i64 %1217, 10
  store i64 %1218, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2451
  %1219 = load i64, i64* %PC
  %1220 = add i64 %1219, 2
  store i64 %1220, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %1221 = load i64, i64* %PC
  %1222 = sub i64 %1221, 979
  %1223 = load i64, i64* %PC
  %1224 = add i64 %1223, 5
  %1225 = load i64, i64* %PC
  %1226 = add i64 %1225, 5
  store i64 %1226, i64* %PC
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1228 = load i64, i64* %1227, align 8, !tbaa !2451
  %1229 = add i64 %1228, -8
  %1230 = inttoptr i64 %1229 to i64*
  store i64 %1224, i64* %1230
  store i64 %1229, i64* %1227, align 8, !tbaa !2451
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1222, i64* %1231, align 8, !tbaa !2451
  %1232 = load i64, i64* %PC
  %1233 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1232, %struct.Memory* %MEMORY.3)
  %1234 = load i64, i64* %RBP
  %1235 = sub i64 %1234, 4
  %1236 = load i64, i64* %PC
  %1237 = add i64 %1236, 7
  store i64 %1237, i64* %PC
  %1238 = inttoptr i64 %1235 to i32*
  store i32 2, i32* %1238
  %1239 = load i64, i64* %RBP
  %1240 = sub i64 %1239, 104
  %1241 = load i32, i32* %EAX
  %1242 = zext i32 %1241 to i64
  %1243 = load i64, i64* %PC
  %1244 = add i64 %1243, 3
  store i64 %1244, i64* %PC
  %1245 = inttoptr i64 %1240 to i32*
  store i32 %1241, i32* %1245
  %1246 = load i64, i64* %PC
  %1247 = add i64 %1246, 80
  %1248 = load i64, i64* %PC
  %1249 = add i64 %1248, 5
  store i64 %1249, i64* %PC
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1247, i64* %1250, align 8, !tbaa !2451
  br label %block_4008a2

block_400809:                                     ; preds = %block_4007ff
  %1251 = load i64, i64* %RBP
  %1252 = sub i64 %1251, 20
  %1253 = load i64, i64* %PC
  %1254 = add i64 %1253, 4
  store i64 %1254, i64* %PC
  %1255 = inttoptr i64 %1252 to i32*
  %1256 = load i32, i32* %1255
  %1257 = sub i32 %1256, 11
  %1258 = icmp ult i32 %1256, 11
  %1259 = zext i1 %1258 to i8
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1259, i8* %1260, align 1, !tbaa !2428
  %1261 = and i32 %1257, 255
  %1262 = call i32 @llvm.ctpop.i32(i32 %1261) #16
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  %1265 = xor i8 %1264, 1
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1265, i8* %1266, align 1, !tbaa !2445
  %1267 = xor i32 %1256, 11
  %1268 = xor i32 %1267, %1257
  %1269 = lshr i32 %1268, 4
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1271, i8* %1272, align 1, !tbaa !2446
  %1273 = icmp eq i32 %1257, 0
  %1274 = zext i1 %1273 to i8
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1274, i8* %1275, align 1, !tbaa !2447
  %1276 = lshr i32 %1257, 31
  %1277 = trunc i32 %1276 to i8
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1277, i8* %1278, align 1, !tbaa !2448
  %1279 = lshr i32 %1256, 31
  %1280 = xor i32 %1276, %1279
  %1281 = add nuw nsw i32 %1280, %1279
  %1282 = icmp eq i32 %1281, 2
  %1283 = zext i1 %1282 to i8
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1283, i8* %1284, align 1, !tbaa !2449
  %1285 = load i64, i64* %PC
  %1286 = add i64 %1285, 18
  %1287 = load i64, i64* %PC
  %1288 = add i64 %1287, 6
  %1289 = load i64, i64* %PC
  %1290 = add i64 %1289, 6
  store i64 %1290, i64* %PC
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1292 = load i8, i8* %1291, align 1, !tbaa !2448
  %1293 = icmp ne i8 %1292, 0
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1295 = load i8, i8* %1294, align 1, !tbaa !2449
  %1296 = icmp ne i8 %1295, 0
  %1297 = xor i1 %1293, %1296
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1300 = select i1 %1297, i64 %1286, i64 %1288
  store i64 %1300, i64* %1299, align 8, !tbaa !2451
  %1301 = load i8, i8* %BRANCH_TAKEN
  %1302 = icmp eq i8 %1301, 1
  br i1 %1302, label %block_40081f, label %block_400813

block_4007cf:                                     ; preds = %block_4007a9
  %1303 = load i64, i64* %RBP
  %1304 = sub i64 %1303, 24
  %1305 = load i64, i64* %PC
  %1306 = add i64 %1305, 4
  store i64 %1306, i64* %PC
  %1307 = inttoptr i64 %1304 to i32*
  %1308 = load i32, i32* %1307
  %1309 = sub i32 %1308, 2
  %1310 = icmp ult i32 %1308, 2
  %1311 = zext i1 %1310 to i8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1311, i8* %1312, align 1, !tbaa !2428
  %1313 = and i32 %1309, 255
  %1314 = call i32 @llvm.ctpop.i32(i32 %1313) #16
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  %1317 = xor i8 %1316, 1
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1317, i8* %1318, align 1, !tbaa !2445
  %1319 = xor i32 %1308, 2
  %1320 = xor i32 %1319, %1309
  %1321 = lshr i32 %1320, 4
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1323, i8* %1324, align 1, !tbaa !2446
  %1325 = icmp eq i32 %1309, 0
  %1326 = zext i1 %1325 to i8
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1326, i8* %1327, align 1, !tbaa !2447
  %1328 = lshr i32 %1309, 31
  %1329 = trunc i32 %1328 to i8
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1329, i8* %1330, align 1, !tbaa !2448
  %1331 = lshr i32 %1308, 31
  %1332 = xor i32 %1328, %1331
  %1333 = add nuw nsw i32 %1332, %1331
  %1334 = icmp eq i32 %1333, 2
  %1335 = zext i1 %1334 to i8
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1335, i8* %1336, align 1, !tbaa !2449
  %1337 = load i64, i64* %PC
  %1338 = add i64 %1337, 64
  %1339 = load i64, i64* %PC
  %1340 = add i64 %1339, 6
  %1341 = load i64, i64* %PC
  %1342 = add i64 %1341, 6
  store i64 %1342, i64* %PC
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1344 = load i8, i8* %1343, align 1, !tbaa !2447
  %1345 = icmp eq i8 %1344, 0
  %1346 = zext i1 %1345 to i8
  store i8 %1346, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1348 = select i1 %1345, i64 %1338, i64 %1340
  store i64 %1348, i64* %1347, align 8, !tbaa !2451
  %1349 = load i8, i8* %BRANCH_TAKEN
  %1350 = icmp eq i8 %1349, 1
  br i1 %1350, label %block_400813, label %block_4007d9

block_40082b:                                     ; preds = %block_40081f
  %1351 = load i64, i64* %RBP
  %1352 = sub i64 %1351, 32
  %1353 = load i64, i64* %PC
  %1354 = add i64 %1353, 3
  store i64 %1354, i64* %PC
  %1355 = inttoptr i64 %1352 to i32*
  %1356 = load i32, i32* %1355
  %1357 = zext i32 %1356 to i64
  store i64 %1357, i64* %RAX, align 8, !tbaa !2451
  %1358 = load i32, i32* %EAX
  %1359 = zext i32 %1358 to i64
  %1360 = load i64, i64* %RBP
  %1361 = sub i64 %1360, 24
  %1362 = load i64, i64* %PC
  %1363 = add i64 %1362, 3
  store i64 %1363, i64* %PC
  %1364 = inttoptr i64 %1361 to i32*
  %1365 = load i32, i32* %1364
  %1366 = sub i32 %1358, %1365
  %1367 = icmp ult i32 %1358, %1365
  %1368 = zext i1 %1367 to i8
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1368, i8* %1369, align 1, !tbaa !2428
  %1370 = and i32 %1366, 255
  %1371 = call i32 @llvm.ctpop.i32(i32 %1370) #16
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  %1374 = xor i8 %1373, 1
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1374, i8* %1375, align 1, !tbaa !2445
  %1376 = xor i32 %1365, %1358
  %1377 = xor i32 %1376, %1366
  %1378 = lshr i32 %1377, 4
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1380, i8* %1381, align 1, !tbaa !2446
  %1382 = icmp eq i32 %1366, 0
  %1383 = zext i1 %1382 to i8
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1383, i8* %1384, align 1, !tbaa !2447
  %1385 = lshr i32 %1366, 31
  %1386 = trunc i32 %1385 to i8
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1386, i8* %1387, align 1, !tbaa !2448
  %1388 = lshr i32 %1358, 31
  %1389 = lshr i32 %1365, 31
  %1390 = xor i32 %1389, %1388
  %1391 = xor i32 %1385, %1388
  %1392 = add nuw nsw i32 %1391, %1390
  %1393 = icmp eq i32 %1392, 2
  %1394 = zext i1 %1393 to i8
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1394, i8* %1395, align 1, !tbaa !2449
  %1396 = load i64, i64* %PC
  %1397 = add i64 %1396, 38
  %1398 = load i64, i64* %PC
  %1399 = add i64 %1398, 6
  %1400 = load i64, i64* %PC
  %1401 = add i64 %1400, 6
  store i64 %1401, i64* %PC
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1403 = load i8, i8* %1402, align 1, !tbaa !2447
  %1404 = icmp eq i8 %1403, 0
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1407 = select i1 %1404, i64 %1397, i64 %1399
  store i64 %1407, i64* %1406, align 8, !tbaa !2451
  %1408 = load i8, i8* %BRANCH_TAKEN
  %1409 = icmp eq i8 %1408, 1
  br i1 %1409, label %block_400857, label %block_400837

block_400887:                                     ; preds = %block_400857
  %1410 = load i64, i64* %PC
  %1411 = add i64 %1410, 10
  store i64 %1411, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2451
  %1412 = load i64, i64* %PC
  %1413 = add i64 %1412, 2
  store i64 %1413, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %1414 = load i64, i64* %PC
  %1415 = sub i64 %1414, 1059
  %1416 = load i64, i64* %PC
  %1417 = add i64 %1416, 5
  %1418 = load i64, i64* %PC
  %1419 = add i64 %1418, 5
  store i64 %1419, i64* %PC
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1421 = load i64, i64* %1420, align 8, !tbaa !2451
  %1422 = add i64 %1421, -8
  %1423 = inttoptr i64 %1422 to i64*
  store i64 %1417, i64* %1423
  store i64 %1422, i64* %1420, align 8, !tbaa !2451
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1415, i64* %1424, align 8, !tbaa !2451
  %1425 = load i64, i64* %PC
  %1426 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1425, %struct.Memory* %300)
  %1427 = load i64, i64* %RBP
  %1428 = sub i64 %1427, 4
  %1429 = load i64, i64* %PC
  %1430 = add i64 %1429, 7
  store i64 %1430, i64* %PC
  %1431 = inttoptr i64 %1428 to i32*
  store i32 1, i32* %1431
  %1432 = load i64, i64* %RBP
  %1433 = sub i64 %1432, 108
  %1434 = load i32, i32* %EAX
  %1435 = zext i32 %1434 to i64
  %1436 = load i64, i64* %PC
  %1437 = add i64 %1436, 3
  store i64 %1437, i64* %PC
  %1438 = inttoptr i64 %1433 to i32*
  store i32 %1434, i32* %1438
  br label %block_4008a2

block_4007ff:                                     ; preds = %block_4007d9
  %1439 = load i64, i64* %RBP
  %1440 = sub i64 %1439, 20
  %1441 = load i64, i64* %PC
  %1442 = add i64 %1441, 4
  store i64 %1442, i64* %PC
  %1443 = inttoptr i64 %1440 to i32*
  %1444 = load i32, i32* %1443
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1445, align 1, !tbaa !2428
  %1446 = and i32 %1444, 255
  %1447 = call i32 @llvm.ctpop.i32(i32 %1446) #16
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  %1450 = xor i8 %1449, 1
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1450, i8* %1451, align 1, !tbaa !2445
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1452, align 1, !tbaa !2446
  %1453 = icmp eq i32 %1444, 0
  %1454 = zext i1 %1453 to i8
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1454, i8* %1455, align 1, !tbaa !2447
  %1456 = lshr i32 %1444, 31
  %1457 = trunc i32 %1456 to i8
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1457, i8* %1458, align 1, !tbaa !2448
  %1459 = lshr i32 %1444, 31
  %1460 = xor i32 %1456, %1459
  %1461 = add nuw nsw i32 %1460, %1459
  %1462 = icmp eq i32 %1461, 2
  %1463 = zext i1 %1462 to i8
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1463, i8* %1464, align 1, !tbaa !2449
  %1465 = load i64, i64* %PC
  %1466 = add i64 %1465, 16
  %1467 = load i64, i64* %PC
  %1468 = add i64 %1467, 6
  %1469 = load i64, i64* %PC
  %1470 = add i64 %1469, 6
  store i64 %1470, i64* %PC
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1472 = load i8, i8* %1471, align 1, !tbaa !2447
  %1473 = icmp ne i8 %1472, 0
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1475 = load i8, i8* %1474, align 1, !tbaa !2448
  %1476 = icmp ne i8 %1475, 0
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1478 = load i8, i8* %1477, align 1, !tbaa !2449
  %1479 = icmp ne i8 %1478, 0
  %1480 = xor i1 %1476, %1479
  %1481 = or i1 %1473, %1480
  %1482 = zext i1 %1481 to i8
  store i8 %1482, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1484 = select i1 %1481, i64 %1466, i64 %1468
  store i64 %1484, i64* %1483, align 8, !tbaa !2451
  %1485 = load i8, i8* %BRANCH_TAKEN
  %1486 = icmp eq i8 %1485, 1
  br i1 %1486, label %block_400813, label %block_400809

block_400702:                                     ; preds = %block_4006d8, %3
  %MEMORY.5 = phi %struct.Memory* [ %2, %3 ], [ %300, %block_4006d8 ]
  %1487 = load i64, i64* %RBP
  %1488 = sub i64 %1487, 20
  %1489 = load i64, i64* %PC
  %1490 = add i64 %1489, 3
  store i64 %1490, i64* %PC
  %1491 = inttoptr i64 %1488 to i32*
  %1492 = load i32, i32* %1491
  %1493 = zext i32 %1492 to i64
  store i64 %1493, i64* %RAX, align 8, !tbaa !2451
  %1494 = load i64, i64* %RAX
  %1495 = load i64, i64* %PC
  %1496 = add i64 %1495, 3
  store i64 %1496, i64* %PC
  %1497 = trunc i64 %1494 to i32
  %1498 = add i32 -1, %1497
  %1499 = zext i32 %1498 to i64
  store i64 %1499, i64* %RAX, align 8, !tbaa !2451
  %1500 = icmp ult i32 %1498, %1497
  %1501 = icmp ult i32 %1498, -1
  %1502 = or i1 %1500, %1501
  %1503 = zext i1 %1502 to i8
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1503, i8* %1504, align 1, !tbaa !2428
  %1505 = and i32 %1498, 255
  %1506 = call i32 @llvm.ctpop.i32(i32 %1505) #16
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  %1509 = xor i8 %1508, 1
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1509, i8* %1510, align 1, !tbaa !2445
  %1511 = xor i64 -1, %1494
  %1512 = trunc i64 %1511 to i32
  %1513 = xor i32 %1512, %1498
  %1514 = lshr i32 %1513, 4
  %1515 = trunc i32 %1514 to i8
  %1516 = and i8 %1515, 1
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1516, i8* %1517, align 1, !tbaa !2446
  %1518 = icmp eq i32 %1498, 0
  %1519 = zext i1 %1518 to i8
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1519, i8* %1520, align 1, !tbaa !2447
  %1521 = lshr i32 %1498, 31
  %1522 = trunc i32 %1521 to i8
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1522, i8* %1523, align 1, !tbaa !2448
  %1524 = lshr i32 %1497, 31
  %1525 = xor i32 %1521, %1524
  %1526 = xor i32 %1521, 1
  %1527 = add nuw nsw i32 %1525, %1526
  %1528 = icmp eq i32 %1527, 2
  %1529 = zext i1 %1528 to i8
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1529, i8* %1530, align 1, !tbaa !2449
  %1531 = load i64, i64* %RBP
  %1532 = sub i64 %1531, 20
  %1533 = load i32, i32* %EAX
  %1534 = zext i32 %1533 to i64
  %1535 = load i64, i64* %PC
  %1536 = add i64 %1535, 3
  store i64 %1536, i64* %PC
  %1537 = inttoptr i64 %1532 to i32*
  store i32 %1533, i32* %1537
  %1538 = load i64, i64* %PC
  %1539 = add i64 %1538, 69
  %1540 = load i64, i64* %PC
  %1541 = add i64 %1540, 5
  store i64 %1541, i64* %PC
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1539, i64* %1542, align 8, !tbaa !2451
  br label %block_400750

block_40071e:                                     ; preds = %block_4006ae, %block_4006d8
  %MEMORY.6 = phi %struct.Memory* [ %300, %block_4006ae ], [ %300, %block_4006d8 ]
  %1543 = load i64, i64* %PC
  %1544 = tail call %struct.Memory* @sub_40071e(%struct.State* %0, i64 %1543, %struct.Memory* %MEMORY.6)
  ret %struct.Memory* %1544

; <label>:1545:                                   ; preds = %block_4006d8
  %1546 = load i64, i64* %PC
  %1547 = tail call %struct.Memory* @__remill_missing_block(%struct.State* %0, i64 %1546, %struct.Memory* %300)
  ret %struct.Memory* %1547
}

; Function Attrs: noinline
define %struct.Memory* @sub_400550___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400550:
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
  store i8 0, i8* %15, align 1, !tbaa !2428
  %16 = zext i8 %14 to i32
  %17 = call i32 @llvm.ctpop.i32(i32 %16) #16
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1, !tbaa !2445
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1, !tbaa !2446
  %23 = icmp eq i8 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1, !tbaa !2447
  %26 = lshr i8 %14, 7
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1, !tbaa !2448
  %28 = lshr i8 %14, 7
  %29 = xor i8 %26, %28
  %30 = add nuw nsw i8 %29, %28
  %31 = icmp eq i8 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1, !tbaa !2449
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 25
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 2
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 2
  store i64 %39, i64* %PC
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %41 = load i8, i8* %40, align 1, !tbaa !2447
  %42 = icmp eq i8 %41, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %45 = select i1 %42, i64 %35, i64 %37
  store i64 %45, i64* %44, align 8, !tbaa !2451
  %46 = load i8, i8* %BRANCH_TAKEN
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %block_400570, label %block_400559

block_400570:                                     ; preds = %block_400550
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 2
  store i64 %49, i64* %PC
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8, !tbaa !2451
  %53 = inttoptr i64 %52 to i64*
  %54 = load i64, i64* %53
  store i64 %54, i64* %50, align 8, !tbaa !2451
  %55 = add i64 %52, 8
  store i64 %55, i64* %51, align 8, !tbaa !2451
  ret %struct.Memory* %2

block_400559:                                     ; preds = %block_400550
  %56 = load i64, i64* %RBP
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 1
  store i64 %58, i64* %PC
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %60 = load i64, i64* %59, align 8, !tbaa !2451
  %61 = add i64 %60, -8
  %62 = inttoptr i64 %61 to i64*
  store i64 %56, i64* %62
  store i64 %61, i64* %59, align 8, !tbaa !2451
  %63 = load i64, i64* %RSP
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 3
  store i64 %65, i64* %PC
  store i64 %63, i64* %RBP, align 8, !tbaa !2451
  %66 = load i64, i64* %PC
  %67 = sub i64 %66, 125
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 5
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 5
  store i64 %71, i64* %PC
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %73 = load i64, i64* %72, align 8, !tbaa !2451
  %74 = add i64 %73, -8
  %75 = inttoptr i64 %74 to i64*
  store i64 %69, i64* %75
  store i64 %74, i64* %72, align 8, !tbaa !2451
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %67, i64* %76, align 8, !tbaa !2451
  %77 = load i64, i64* %PC
  %78 = call %struct.Memory* @sub_4004e0_deregister_tm_clones(%struct.State* %0, i64 %77, %struct.Memory* %2)
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC
  store i8 1, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 1
  store i64 %82, i64* %PC
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %84 = load i64, i64* %83, align 8, !tbaa !2451
  %85 = add i64 %84, 8
  %86 = inttoptr i64 %84 to i64*
  %87 = load i64, i64* %86
  store i64 %87, i64* %RBP, align 8, !tbaa !2451
  store i64 %85, i64* %83, align 8, !tbaa !2451
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 1
  store i64 %89, i64* %PC
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %92 = load i64, i64* %91, align 8, !tbaa !2451
  %93 = inttoptr i64 %92 to i64*
  %94 = load i64, i64* %93
  store i64 %94, i64* %90, align 8, !tbaa !2451
  %95 = add i64 %92, 8
  store i64 %95, i64* %91, align 8, !tbaa !2451
  ret %struct.Memory* %78
}

; Function Attrs: noinline
define %struct.Memory* @sub_400510_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400510:
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
  store i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2451
  %29 = load i64, i64* %RBP
  %30 = load i64, i64* %PC
  %31 = add i64 %30, 1
  store i64 %31, i64* %PC
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %33 = load i64, i64* %32, align 8, !tbaa !2451
  %34 = add i64 %33, -8
  %35 = inttoptr i64 %34 to i64*
  store i64 %29, i64* %35
  store i64 %34, i64* %32, align 8, !tbaa !2451
  %36 = load i64, i64* %RSI
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 7
  store i64 %38, i64* %PC
  %39 = sub i64 %36, ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)
  store i64 %39, i64* %RSI, align 8, !tbaa !2451
  %40 = icmp ult i64 %36, ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %41, i8* %42, align 1, !tbaa !2428
  %43 = trunc i64 %39 to i32
  %44 = and i32 %43, 255
  %45 = call i32 @llvm.ctpop.i32(i32 %44) #16
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = xor i8 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %48, i8* %49, align 1, !tbaa !2445
  %50 = xor i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %36
  %51 = xor i64 %50, %39
  %52 = lshr i64 %51, 4
  %53 = trunc i64 %52 to i8
  %54 = and i8 %53, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %54, i8* %55, align 1, !tbaa !2446
  %56 = icmp eq i64 %39, 0
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %57, i8* %58, align 1, !tbaa !2447
  %59 = lshr i64 %39, 63
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %60, i8* %61, align 1, !tbaa !2448
  %62 = lshr i64 %36, 63
  %63 = xor i64 lshr (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 63), %62
  %64 = xor i64 %59, %62
  %65 = add nuw nsw i64 %64, %63
  %66 = icmp eq i64 %65, 2
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %67, i8* %68, align 1, !tbaa !2449
  %69 = load i64, i64* %RSP
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 3
  store i64 %71, i64* %PC
  store i64 %69, i64* %RBP, align 8, !tbaa !2451
  %72 = load i64, i64* %RSI
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC
  %75 = ashr i64 %72, 2
  %76 = trunc i64 %75 to i8
  %77 = and i8 %76, 1
  %78 = ashr i64 %75, 1
  store i64 %78, i64* %RSI, align 8, !tbaa !2451
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %77, i8* %79, align 1, !tbaa !2450
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %81 = trunc i64 %78 to i32
  %82 = and i32 %81, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82) #16
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %80, align 1, !tbaa !2450
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %87, align 1, !tbaa !2450
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %89 = icmp eq i64 %78, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %88, align 1, !tbaa !2450
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %92 = lshr i64 %78, 63
  %93 = trunc i64 %92 to i8
  store i8 %93, i8* %91, align 1, !tbaa !2450
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %94, align 1, !tbaa !2450
  %95 = load i64, i64* %RSI
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC
  store i64 %95, i64* %RAX, align 8, !tbaa !2451
  %98 = load i64, i64* %RAX
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 4
  store i64 %100, i64* %PC
  %101 = lshr i64 %98, 62
  %102 = trunc i64 %101 to i8
  %103 = and i8 %102, 1
  %104 = lshr i64 %101, 1
  store i64 %104, i64* %RAX, align 8, !tbaa !2451
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %103, i8* %105, align 1, !tbaa !2450
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %107 = trunc i64 %104 to i32
  %108 = and i32 %107, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108) #16
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %106, align 1, !tbaa !2450
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %113, align 1, !tbaa !2450
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %115 = icmp eq i64 %104, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %114, align 1, !tbaa !2450
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %117, align 1, !tbaa !2450
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %118, align 1, !tbaa !2450
  %119 = load i64, i64* %RSI
  %120 = load i64, i64* %RAX
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 3
  store i64 %122, i64* %PC
  %123 = add i64 %120, %119
  store i64 %123, i64* %RSI, align 8, !tbaa !2451
  %124 = icmp ult i64 %123, %119
  %125 = icmp ult i64 %123, %120
  %126 = or i1 %124, %125
  %127 = zext i1 %126 to i8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %127, i8* %128, align 1, !tbaa !2428
  %129 = trunc i64 %123 to i32
  %130 = and i32 %129, 255
  %131 = call i32 @llvm.ctpop.i32(i32 %130) #16
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %134, i8* %135, align 1, !tbaa !2445
  %136 = xor i64 %120, %119
  %137 = xor i64 %136, %123
  %138 = lshr i64 %137, 4
  %139 = trunc i64 %138 to i8
  %140 = and i8 %139, 1
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %140, i8* %141, align 1, !tbaa !2446
  %142 = icmp eq i64 %123, 0
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %143, i8* %144, align 1, !tbaa !2447
  %145 = lshr i64 %123, 63
  %146 = trunc i64 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %146, i8* %147, align 1, !tbaa !2448
  %148 = lshr i64 %119, 63
  %149 = lshr i64 %120, 63
  %150 = xor i64 %145, %148
  %151 = xor i64 %145, %149
  %152 = add nuw nsw i64 %150, %151
  %153 = icmp eq i64 %152, 2
  %154 = zext i1 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %154, i8* %155, align 1, !tbaa !2449
  %156 = load i64, i64* %RSI
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 3
  store i64 %158, i64* %PC
  %159 = trunc i64 %156 to i8
  %160 = and i8 %159, 1
  %161 = ashr i64 %156, 1
  store i64 %161, i64* %RSI, align 8, !tbaa !2451
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %160, i8* %162, align 1, !tbaa !2450
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %164 = trunc i64 %161 to i32
  %165 = and i32 %164, 255
  %166 = call i32 @llvm.ctpop.i32(i32 %165) #16
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %163, align 1, !tbaa !2450
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %170, align 1, !tbaa !2450
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %172 = icmp eq i64 %161, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %171, align 1, !tbaa !2450
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %175 = lshr i64 %161, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %174, align 1, !tbaa !2450
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %177, align 1, !tbaa !2450
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 23
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 2
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 2
  store i64 %183, i64* %PC
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %185 = load i8, i8* %184, align 1, !tbaa !2447
  store i8 %185, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %187 = icmp ne i8 %185, 0
  %188 = select i1 %187, i64 %179, i64 %181
  store i64 %188, i64* %186, align 8, !tbaa !2451
  %189 = load i8, i8* %BRANCH_TAKEN
  %190 = icmp eq i8 %189, 1
  br i1 %190, label %block_400548, label %block_400533

block_40053d:                                     ; preds = %block_400533
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 1
  store i64 %192, i64* %PC
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %194 = load i64, i64* %193, align 8, !tbaa !2451
  %195 = add i64 %194, 8
  %196 = inttoptr i64 %194 to i64*
  %197 = load i64, i64* %196
  store i64 %197, i64* %RBP, align 8, !tbaa !2451
  store i64 %195, i64* %193, align 8, !tbaa !2451
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 5
  store i64 %199, i64* %PC
  store i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !2451
  %200 = load i64, i64* %RAX
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 2
  store i64 %202, i64* %PC
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %200, i64* %203, align 8, !tbaa !2451
  %204 = load i64, i64* %PC
  switch i64 %204, label %270 [
    i64 4195658, label %block_40054a
    i64 4195653, label %block_400545
  ]

block_40054a:                                     ; preds = %block_40053d
  %205 = load i64, i64* %RAX
  %206 = load i64, i64* %RAX
  %207 = add i64 %206, %205
  %208 = load i16, i16* %AX
  %209 = zext i16 %208 to i64
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 6
  store i64 %211, i64* %PC
  %212 = load i64, i64* %PC
  %213 = tail call %struct.Memory* @sub_400550___do_global_dtors_aux(%struct.State* %0, i64 %212, %struct.Memory* %2)
  ret %struct.Memory* %213

block_400533:                                     ; preds = %block_400510
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 5
  store i64 %215, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2451
  %216 = load i64, i64* %RAX
  %217 = load i64, i64* %RAX
  %218 = load i64, i64* %PC
  %219 = add i64 %218, 3
  store i64 %219, i64* %PC
  %220 = and i64 %217, %216
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %221, align 1, !tbaa !2428
  %222 = trunc i64 %220 to i32
  %223 = and i32 %222, 255
  %224 = call i32 @llvm.ctpop.i32(i32 %223) #16
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %227, i8* %228, align 1, !tbaa !2445
  %229 = icmp eq i64 %220, 0
  %230 = zext i1 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %230, i8* %231, align 1, !tbaa !2447
  %232 = lshr i64 %220, 63
  %233 = trunc i64 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %233, i8* %234, align 1, !tbaa !2448
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %235, align 1, !tbaa !2449
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %236, align 1, !tbaa !2446
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 13
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 2
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 2
  store i64 %242, i64* %PC
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %244 = load i8, i8* %243, align 1, !tbaa !2447
  store i8 %244, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %246 = icmp ne i8 %244, 0
  %247 = select i1 %246, i64 %238, i64 %240
  store i64 %247, i64* %245, align 8, !tbaa !2451
  %248 = load i8, i8* %BRANCH_TAKEN
  %249 = icmp eq i8 %248, 1
  br i1 %249, label %block_400548, label %block_40053d

block_400548:                                     ; preds = %block_400545, %block_400533, %block_400510
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400510 ], [ %2, %block_400533 ], [ %2, %block_400545 ]
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 1
  store i64 %251, i64* %PC
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %253 = load i64, i64* %252, align 8, !tbaa !2451
  %254 = add i64 %253, 8
  %255 = inttoptr i64 %253 to i64*
  %256 = load i64, i64* %255
  store i64 %256, i64* %RBP, align 8, !tbaa !2451
  store i64 %254, i64* %252, align 8, !tbaa !2451
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 1
  store i64 %258, i64* %PC
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %261 = load i64, i64* %260, align 8, !tbaa !2451
  %262 = inttoptr i64 %261 to i64*
  %263 = load i64, i64* %262
  store i64 %263, i64* %259, align 8, !tbaa !2451
  %264 = add i64 %261, 8
  store i64 %264, i64* %260, align 8, !tbaa !2451
  ret %struct.Memory* %MEMORY.0

block_400545:                                     ; preds = %block_40053d
  %265 = load i64, i64* %RAX
  %266 = load i32, i32* %EAX
  %267 = zext i32 %266 to i64
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC
  br label %block_400548

; <label>:270:                                    ; preds = %block_40053d
  %271 = load i64, i64* %PC
  %272 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %271, %struct.Memory* %2)
  ret %struct.Memory* %272
}

; Function Attrs: noinline
define %struct.Memory* @sub_400640_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400640:
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
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %EAX = bitcast %union.anon* %12 to i32*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %ECX = bitcast %union.anon* %15 to i32*
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %EDX = bitcast %union.anon* %18 to i32*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 11
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %EDI = bitcast %union.anon* %21 to i32*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %RAX = bitcast %union.anon* %24 to i64*
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %RCX = bitcast %union.anon* %27 to i64*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.GPR, %struct.GPR* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %29, i32 0, i32 0
  %RDX = bitcast %union.anon* %30 to i64*
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 9
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0
  %RSI = bitcast %union.anon* %33 to i64*
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %35 = getelementptr inbounds %struct.GPR, %struct.GPR* %34, i32 0, i32 11
  %36 = getelementptr inbounds %struct.Reg, %struct.Reg* %35, i32 0, i32 0
  %RDI = bitcast %union.anon* %36 to i64*
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %38 = getelementptr inbounds %struct.GPR, %struct.GPR* %37, i32 0, i32 13
  %39 = getelementptr inbounds %struct.Reg, %struct.Reg* %38, i32 0, i32 0
  %RSP = bitcast %union.anon* %39 to i64*
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %41 = getelementptr inbounds %struct.GPR, %struct.GPR* %40, i32 0, i32 15
  %42 = getelementptr inbounds %struct.Reg, %struct.Reg* %41, i32 0, i32 0
  %RBP = bitcast %union.anon* %42 to i64*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 17
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0
  %R8 = bitcast %union.anon* %45 to i64*
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %47 = getelementptr inbounds %struct.GPR, %struct.GPR* %46, i32 0, i32 19
  %48 = getelementptr inbounds %struct.Reg, %struct.Reg* %47, i32 0, i32 0
  %R9 = bitcast %union.anon* %48 to i64*
  %49 = load i64, i64* %RBP
  %50 = load i64, i64* %PC
  %51 = add i64 %50, 1
  store i64 %51, i64* %PC
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %53 = load i64, i64* %52, align 8, !tbaa !2451
  %54 = add i64 %53, -8
  %55 = inttoptr i64 %54 to i64*
  store i64 %49, i64* %55
  store i64 %54, i64* %52, align 8, !tbaa !2451
  %56 = load i64, i64* %RSP
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 3
  store i64 %58, i64* %PC
  store i64 %56, i64* %RBP, align 8, !tbaa !2451
  %59 = load i64, i64* %RSP
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 4
  store i64 %61, i64* %PC
  %62 = sub i64 %59, 112
  store i64 %62, i64* %RSP, align 8, !tbaa !2451
  %63 = icmp ult i64 %59, 112
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %64, i8* %65, align 1, !tbaa !2428
  %66 = trunc i64 %62 to i32
  %67 = and i32 %66, 255
  %68 = call i32 @llvm.ctpop.i32(i32 %67) #16
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %71, i8* %72, align 1, !tbaa !2445
  %73 = xor i64 112, %59
  %74 = xor i64 %73, %62
  %75 = lshr i64 %74, 4
  %76 = trunc i64 %75 to i8
  %77 = and i8 %76, 1
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %77, i8* %78, align 1, !tbaa !2446
  %79 = icmp eq i64 %62, 0
  %80 = zext i1 %79 to i8
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %80, i8* %81, align 1, !tbaa !2447
  %82 = lshr i64 %62, 63
  %83 = trunc i64 %82 to i8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %83, i8* %84, align 1, !tbaa !2448
  %85 = lshr i64 %59, 63
  %86 = xor i64 %82, %85
  %87 = add nuw nsw i64 %86, %85
  %88 = icmp eq i64 %87, 2
  %89 = zext i1 %88 to i8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %89, i8* %90, align 1, !tbaa !2449
  %91 = load i64, i64* %RAX
  %92 = load i32, i32* %EAX
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 2
  store i64 %95, i64* %PC
  %96 = xor i64 %93, %91
  %97 = trunc i64 %96 to i32
  %98 = and i64 %96, 4294967295
  store i64 %98, i64* %RAX, align 8, !tbaa !2451
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %99, align 1, !tbaa !2428
  %100 = and i32 %97, 255
  %101 = call i32 @llvm.ctpop.i32(i32 %100) #16
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %104, i8* %105, align 1, !tbaa !2445
  %106 = icmp eq i32 %97, 0
  %107 = zext i1 %106 to i8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %107, i8* %108, align 1, !tbaa !2447
  %109 = lshr i32 %97, 31
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %110, i8* %111, align 1, !tbaa !2448
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %112, align 1, !tbaa !2449
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %113, align 1, !tbaa !2446
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 5
  store i64 %115, i64* %PC
  store i64 28, i64* %RCX, align 8, !tbaa !2451
  %116 = load i32, i32* %ECX
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 2
  store i64 %119, i64* %PC
  %120 = and i64 %117, 4294967295
  store i64 %120, i64* %RDX, align 8, !tbaa !2451
  %121 = load i64, i64* %RBP
  %122 = sub i64 %121, 64
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 4
  store i64 %124, i64* %PC
  store i64 %122, i64* %R8, align 8, !tbaa !2451
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 10
  store i64 %126, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %R9, align 8, !tbaa !2451
  %127 = load i64, i64* %RBP
  %128 = sub i64 %127, 4
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 7
  store i64 %130, i64* %PC
  %131 = inttoptr i64 %128 to i32*
  store i32 0, i32* %131
  %132 = load i64, i64* %RBP
  %133 = sub i64 %132, 8
  %134 = load i32, i32* %EDI
  %135 = zext i32 %134 to i64
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 3
  store i64 %137, i64* %PC
  %138 = inttoptr i64 %133 to i32*
  store i32 %134, i32* %138
  %139 = load i64, i64* %RBP
  %140 = sub i64 %139, 16
  %141 = load i64, i64* %RSI
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 4
  store i64 %143, i64* %PC
  %144 = inttoptr i64 %140 to i64*
  store i64 %141, i64* %144
  %145 = load i64, i64* %RBP
  %146 = sub i64 %145, 36
  %147 = load i64, i64* %PC
  %148 = add i64 %147, 7
  store i64 %148, i64* %PC
  %149 = inttoptr i64 %146 to i32*
  store i32 0, i32* %149
  %150 = load i64, i64* %RBP
  %151 = sub i64 %150, 20
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 7
  store i64 %153, i64* %PC
  %154 = inttoptr i64 %151 to i32*
  store i32 1, i32* %154
  %155 = load i64, i64* %RBP
  %156 = sub i64 %155, 24
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 7
  store i64 %158, i64* %PC
  %159 = inttoptr i64 %156 to i32*
  store i32 1, i32* %159
  %160 = load i64, i64* %RBP
  %161 = sub i64 %160, 24
  %162 = load i64, i64* %PC
  %163 = add i64 %162, 4
  store i64 %163, i64* %PC
  %164 = inttoptr i64 %161 to i32*
  %165 = load i32, i32* %164
  %166 = sext i32 %165 to i64
  store i64 %166, i64* %RSI, align 8, !tbaa !2451
  %167 = load i64, i64* %RSI
  %168 = load i64, i64* %PC
  %169 = add i64 %168, 4
  store i64 %169, i64* %PC
  %170 = sext i64 %167 to i128
  %171 = and i128 %170, -18446744073709551616
  %172 = zext i64 %167 to i128
  %173 = or i128 %171, %172
  %174 = mul nsw i128 11, %173
  %175 = trunc i128 %174 to i64
  store i64 %175, i64* %RSI, align 8, !tbaa !2451
  %176 = sext i64 %175 to i128
  %177 = icmp ne i128 %176, %174
  %178 = zext i1 %177 to i8
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %178, i8* %179, align 1, !tbaa !2428
  %180 = trunc i128 %174 to i32
  %181 = and i32 %180, 255
  %182 = call i32 @llvm.ctpop.i32(i32 %181) #16
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = xor i8 %184, 1
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %185, i8* %186, align 1, !tbaa !2445
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %187, align 1, !tbaa !2446
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %188, align 1, !tbaa !2447
  %189 = lshr i64 %175, 63
  %190 = trunc i64 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %190, i8* %191, align 1, !tbaa !2448
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %178, i8* %192, align 1, !tbaa !2449
  %193 = load i64, i64* %R9
  %194 = load i64, i64* %RSI
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 3
  store i64 %196, i64* %PC
  %197 = add i64 %194, %193
  store i64 %197, i64* %R9, align 8, !tbaa !2451
  %198 = icmp ult i64 %197, %193
  %199 = icmp ult i64 %197, %194
  %200 = or i1 %198, %199
  %201 = zext i1 %200 to i8
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %201, i8* %202, align 1, !tbaa !2428
  %203 = trunc i64 %197 to i32
  %204 = and i32 %203, 255
  %205 = call i32 @llvm.ctpop.i32(i32 %204) #16
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  %208 = xor i8 %207, 1
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %208, i8* %209, align 1, !tbaa !2445
  %210 = xor i64 %194, %193
  %211 = xor i64 %210, %197
  %212 = lshr i64 %211, 4
  %213 = trunc i64 %212 to i8
  %214 = and i8 %213, 1
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %214, i8* %215, align 1, !tbaa !2446
  %216 = icmp eq i64 %197, 0
  %217 = zext i1 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %217, i8* %218, align 1, !tbaa !2447
  %219 = lshr i64 %197, 63
  %220 = trunc i64 %219 to i8
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %220, i8* %221, align 1, !tbaa !2448
  %222 = lshr i64 %193, 63
  %223 = lshr i64 %194, 63
  %224 = xor i64 %219, %222
  %225 = xor i64 %219, %223
  %226 = add nuw nsw i64 %224, %225
  %227 = icmp eq i64 %226, 2
  %228 = zext i1 %227 to i8
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %228, i8* %229, align 1, !tbaa !2449
  %230 = load i64, i64* %RBP
  %231 = sub i64 %230, 20
  %232 = load i64, i64* %PC
  %233 = add i64 %232, 4
  store i64 %233, i64* %PC
  %234 = inttoptr i64 %231 to i32*
  %235 = load i32, i32* %234
  %236 = sext i32 %235 to i64
  store i64 %236, i64* %RSI, align 8, !tbaa !2451
  %237 = load i64, i64* %R9
  %238 = load i64, i64* %RSI
  %239 = add i64 %238, %237
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 5
  store i64 %241, i64* %PC
  %242 = inttoptr i64 %239 to i8*
  store i8 88, i8* %242
  %243 = load i32, i32* %EAX
  %244 = zext i32 %243 to i64
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 2
  store i64 %246, i64* %PC
  %247 = and i64 %244, 4294967295
  store i64 %247, i64* %RDI, align 8, !tbaa !2451
  %248 = load i64, i64* %R8
  %249 = load i64, i64* %PC
  %250 = add i64 %249, 3
  store i64 %250, i64* %PC
  store i64 %248, i64* %RSI, align 8, !tbaa !2451
  %251 = load i64, i64* %PC
  %252 = sub i64 %251, 539
  %253 = load i64, i64* %PC
  %254 = add i64 %253, 5
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 5
  store i64 %256, i64* %PC
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %258 = load i64, i64* %257, align 8, !tbaa !2451
  %259 = add i64 %258, -8
  %260 = inttoptr i64 %259 to i64*
  store i64 %254, i64* %260
  store i64 %259, i64* %257, align 8, !tbaa !2451
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %252, i64* %261, align 8, !tbaa !2451
  %262 = load i64, i64* %PC
  %263 = call %struct.Memory* @ext_601098_read(%struct.State* %0, i64 %262, %struct.Memory* %2)
  %264 = load i64, i64* %RBP
  %265 = sub i64 %264, 72
  %266 = load i64, i64* %RAX
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 4
  store i64 %268, i64* %PC
  %269 = inttoptr i64 %265 to i64*
  store i64 %266, i64* %269
  br label %block_4006a4

block_4007ff:                                     ; preds = %block_4007d9
  %270 = load i64, i64* %RBP
  %271 = sub i64 %270, 20
  %272 = load i64, i64* %PC
  %273 = add i64 %272, 4
  store i64 %273, i64* %PC
  %274 = inttoptr i64 %271 to i32*
  %275 = load i32, i32* %274
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %276, align 1, !tbaa !2428
  %277 = and i32 %275, 255
  %278 = call i32 @llvm.ctpop.i32(i32 %277) #16
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  %281 = xor i8 %280, 1
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %281, i8* %282, align 1, !tbaa !2445
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %283, align 1, !tbaa !2446
  %284 = icmp eq i32 %275, 0
  %285 = zext i1 %284 to i8
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %285, i8* %286, align 1, !tbaa !2447
  %287 = lshr i32 %275, 31
  %288 = trunc i32 %287 to i8
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %288, i8* %289, align 1, !tbaa !2448
  %290 = lshr i32 %275, 31
  %291 = xor i32 %287, %290
  %292 = add nuw nsw i32 %291, %290
  %293 = icmp eq i32 %292, 2
  %294 = zext i1 %293 to i8
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %294, i8* %295, align 1, !tbaa !2449
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 16
  %298 = load i64, i64* %PC
  %299 = add i64 %298, 6
  %300 = load i64, i64* %PC
  %301 = add i64 %300, 6
  store i64 %301, i64* %PC
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %303 = load i8, i8* %302, align 1, !tbaa !2447
  %304 = icmp ne i8 %303, 0
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %306 = load i8, i8* %305, align 1, !tbaa !2448
  %307 = icmp ne i8 %306, 0
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %309 = load i8, i8* %308, align 1, !tbaa !2449
  %310 = icmp ne i8 %309, 0
  %311 = xor i1 %307, %310
  %312 = or i1 %304, %311
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %315 = select i1 %312, i64 %297, i64 %299
  store i64 %315, i64* %314, align 8, !tbaa !2451
  %316 = load i8, i8* %BRANCH_TAKEN
  %317 = icmp eq i8 %316, 1
  br i1 %317, label %block_400813, label %block_400809

block_4006f4:                                     ; preds = %block_4006d8
  %318 = load i64, i64* %RBP
  %319 = sub i64 %318, 24
  %320 = load i64, i64* %PC
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC
  %322 = inttoptr i64 %319 to i32*
  %323 = load i32, i32* %322
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RAX, align 8, !tbaa !2451
  %325 = load i64, i64* %RAX
  %326 = load i64, i64* %PC
  %327 = add i64 %326, 3
  store i64 %327, i64* %PC
  %328 = trunc i64 %325 to i32
  %329 = add i32 1, %328
  %330 = zext i32 %329 to i64
  store i64 %330, i64* %RAX, align 8, !tbaa !2451
  %331 = icmp ult i32 %329, %328
  %332 = icmp ult i32 %329, 1
  %333 = or i1 %331, %332
  %334 = zext i1 %333 to i8
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %334, i8* %335, align 1, !tbaa !2428
  %336 = and i32 %329, 255
  %337 = call i32 @llvm.ctpop.i32(i32 %336) #16
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %340, i8* %341, align 1, !tbaa !2445
  %342 = xor i64 1, %325
  %343 = trunc i64 %342 to i32
  %344 = xor i32 %343, %329
  %345 = lshr i32 %344, 4
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %347, i8* %348, align 1, !tbaa !2446
  %349 = icmp eq i32 %329, 0
  %350 = zext i1 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %350, i8* %351, align 1, !tbaa !2447
  %352 = lshr i32 %329, 31
  %353 = trunc i32 %352 to i8
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %353, i8* %354, align 1, !tbaa !2448
  %355 = lshr i32 %328, 31
  %356 = xor i32 %352, %355
  %357 = add nuw nsw i32 %356, %352
  %358 = icmp eq i32 %357, 2
  %359 = zext i1 %358 to i8
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %359, i8* %360, align 1, !tbaa !2449
  %361 = load i64, i64* %RBP
  %362 = sub i64 %361, 24
  %363 = load i32, i32* %EAX
  %364 = zext i32 %363 to i64
  %365 = load i64, i64* %PC
  %366 = add i64 %365, 3
  store i64 %366, i64* %PC
  %367 = inttoptr i64 %362 to i32*
  store i32 %363, i32* %367
  %368 = load i64, i64* %PC
  %369 = add i64 %368, 83
  %370 = load i64, i64* %PC
  %371 = add i64 %370, 5
  store i64 %371, i64* %PC
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %369, i64* %372, align 8, !tbaa !2451
  br label %block_400750

block_4006e6:                                     ; preds = %block_4006d8
  %373 = load i64, i64* %RBP
  %374 = sub i64 %373, 24
  %375 = load i64, i64* %PC
  %376 = add i64 %375, 3
  store i64 %376, i64* %PC
  %377 = inttoptr i64 %374 to i32*
  %378 = load i32, i32* %377
  %379 = zext i32 %378 to i64
  store i64 %379, i64* %RAX, align 8, !tbaa !2451
  %380 = load i64, i64* %RAX
  %381 = load i64, i64* %PC
  %382 = add i64 %381, 3
  store i64 %382, i64* %PC
  %383 = trunc i64 %380 to i32
  %384 = add i32 -1, %383
  %385 = zext i32 %384 to i64
  store i64 %385, i64* %RAX, align 8, !tbaa !2451
  %386 = icmp ult i32 %384, %383
  %387 = icmp ult i32 %384, -1
  %388 = or i1 %386, %387
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %389, i8* %390, align 1, !tbaa !2428
  %391 = and i32 %384, 255
  %392 = call i32 @llvm.ctpop.i32(i32 %391) #16
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  %395 = xor i8 %394, 1
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %395, i8* %396, align 1, !tbaa !2445
  %397 = xor i64 -1, %380
  %398 = trunc i64 %397 to i32
  %399 = xor i32 %398, %384
  %400 = lshr i32 %399, 4
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %402, i8* %403, align 1, !tbaa !2446
  %404 = icmp eq i32 %384, 0
  %405 = zext i1 %404 to i8
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %405, i8* %406, align 1, !tbaa !2447
  %407 = lshr i32 %384, 31
  %408 = trunc i32 %407 to i8
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %408, i8* %409, align 1, !tbaa !2448
  %410 = lshr i32 %383, 31
  %411 = xor i32 %407, %410
  %412 = xor i32 %407, 1
  %413 = add nuw nsw i32 %411, %412
  %414 = icmp eq i32 %413, 2
  %415 = zext i1 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %415, i8* %416, align 1, !tbaa !2449
  %417 = load i64, i64* %RBP
  %418 = sub i64 %417, 24
  %419 = load i32, i32* %EAX
  %420 = zext i32 %419 to i64
  %421 = load i64, i64* %PC
  %422 = add i64 %421, 3
  store i64 %422, i64* %PC
  %423 = inttoptr i64 %418 to i32*
  store i32 %419, i32* %423
  %424 = load i64, i64* %PC
  %425 = add i64 %424, 97
  %426 = load i64, i64* %PC
  %427 = add i64 %426, 5
  store i64 %427, i64* %PC
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %425, i64* %428, align 8, !tbaa !2451
  br label %block_400750

block_4006d8:                                     ; preds = %block_4006ae
  %429 = load i64, i64* %RBP
  %430 = sub i64 %429, 80
  %431 = load i64, i64* %PC
  %432 = add i64 %431, 4
  store i64 %432, i64* %PC
  %433 = inttoptr i64 %430 to i64*
  %434 = load i64, i64* %433
  store i64 %434, i64* %RAX, align 8, !tbaa !2451
  %435 = load i64, i64* %RAX
  %436 = mul i64 %435, 8
  %437 = add i64 %436, add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 8)
  %438 = load i64, i64* %PC
  %439 = add i64 %438, 8
  store i64 %439, i64* %PC
  %440 = inttoptr i64 %437 to i64*
  %441 = load i64, i64* %440
  store i64 %441, i64* %RCX, align 8, !tbaa !2451
  %442 = load i64, i64* %RCX
  %443 = load i64, i64* %PC
  %444 = add i64 %443, 2
  store i64 %444, i64* %PC
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %442, i64* %445, align 8, !tbaa !2451
  %446 = load i64, i64* %PC
  switch i64 %446, label %1837 [
    i64 4196098, label %block_400702
    i64 4196112, label %block_400710
    i64 4196084, label %block_4006f4
    i64 4196126, label %block_40071e
    i64 4196070, label %block_4006e6
  ]

block_400750:                                     ; preds = %block_400702, %block_400710, %block_4006e6, %block_4006f4
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_4006e6 ], [ %MEMORY.2, %block_4006f4 ], [ %MEMORY.2, %block_400710 ], [ %MEMORY.2, %block_400702 ]
  %447 = load i64, i64* %PC
  %448 = add i64 %447, 10
  store i64 %448, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %449 = load i64, i64* %RBP
  %450 = sub i64 %449, 24
  %451 = load i64, i64* %PC
  %452 = add i64 %451, 4
  store i64 %452, i64* %PC
  %453 = inttoptr i64 %450 to i32*
  %454 = load i32, i32* %453
  %455 = sext i32 %454 to i64
  store i64 %455, i64* %RCX, align 8, !tbaa !2451
  %456 = load i64, i64* %RCX
  %457 = load i64, i64* %PC
  %458 = add i64 %457, 4
  store i64 %458, i64* %PC
  %459 = sext i64 %456 to i128
  %460 = and i128 %459, -18446744073709551616
  %461 = zext i64 %456 to i128
  %462 = or i128 %460, %461
  %463 = mul nsw i128 11, %462
  %464 = trunc i128 %463 to i64
  store i64 %464, i64* %RCX, align 8, !tbaa !2451
  %465 = sext i64 %464 to i128
  %466 = icmp ne i128 %465, %463
  %467 = zext i1 %466 to i8
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %467, i8* %468, align 1, !tbaa !2428
  %469 = trunc i128 %463 to i32
  %470 = and i32 %469, 255
  %471 = call i32 @llvm.ctpop.i32(i32 %470) #16
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %474, i8* %475, align 1, !tbaa !2445
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %476, align 1, !tbaa !2446
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %477, align 1, !tbaa !2447
  %478 = lshr i64 %464, 63
  %479 = trunc i64 %478 to i8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %479, i8* %480, align 1, !tbaa !2448
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %467, i8* %481, align 1, !tbaa !2449
  %482 = load i64, i64* %RAX
  %483 = load i64, i64* %RCX
  %484 = load i64, i64* %PC
  %485 = add i64 %484, 3
  store i64 %485, i64* %PC
  %486 = add i64 %483, %482
  store i64 %486, i64* %RAX, align 8, !tbaa !2451
  %487 = icmp ult i64 %486, %482
  %488 = icmp ult i64 %486, %483
  %489 = or i1 %487, %488
  %490 = zext i1 %489 to i8
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %490, i8* %491, align 1, !tbaa !2428
  %492 = trunc i64 %486 to i32
  %493 = and i32 %492, 255
  %494 = call i32 @llvm.ctpop.i32(i32 %493) #16
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  %497 = xor i8 %496, 1
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %497, i8* %498, align 1, !tbaa !2445
  %499 = xor i64 %483, %482
  %500 = xor i64 %499, %486
  %501 = lshr i64 %500, 4
  %502 = trunc i64 %501 to i8
  %503 = and i8 %502, 1
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %503, i8* %504, align 1, !tbaa !2446
  %505 = icmp eq i64 %486, 0
  %506 = zext i1 %505 to i8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %506, i8* %507, align 1, !tbaa !2447
  %508 = lshr i64 %486, 63
  %509 = trunc i64 %508 to i8
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %509, i8* %510, align 1, !tbaa !2448
  %511 = lshr i64 %482, 63
  %512 = lshr i64 %483, 63
  %513 = xor i64 %508, %511
  %514 = xor i64 %508, %512
  %515 = add nuw nsw i64 %513, %514
  %516 = icmp eq i64 %515, 2
  %517 = zext i1 %516 to i8
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %517, i8* %518, align 1, !tbaa !2449
  %519 = load i64, i64* %RBP
  %520 = sub i64 %519, 20
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 4
  store i64 %522, i64* %PC
  %523 = inttoptr i64 %520 to i32*
  %524 = load i32, i32* %523
  %525 = sext i32 %524 to i64
  store i64 %525, i64* %RCX, align 8, !tbaa !2451
  %526 = load i64, i64* %RAX
  %527 = load i64, i64* %RCX
  %528 = add i64 %527, %526
  %529 = load i64, i64* %PC
  %530 = add i64 %529, 4
  store i64 %530, i64* %PC
  %531 = inttoptr i64 %528 to i8*
  %532 = load i8, i8* %531
  %533 = sext i8 %532 to i64
  %534 = and i64 %533, 4294967295
  store i64 %534, i64* %RDX, align 8, !tbaa !2451
  %535 = load i32, i32* %EDX
  %536 = zext i32 %535 to i64
  %537 = load i64, i64* %PC
  %538 = add i64 %537, 3
  store i64 %538, i64* %PC
  %539 = sub i32 %535, 35
  %540 = icmp ult i32 %535, 35
  %541 = zext i1 %540 to i8
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %541, i8* %542, align 1, !tbaa !2428
  %543 = and i32 %539, 255
  %544 = call i32 @llvm.ctpop.i32(i32 %543) #16
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = xor i8 %546, 1
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %547, i8* %548, align 1, !tbaa !2445
  %549 = xor i64 35, %536
  %550 = trunc i64 %549 to i32
  %551 = xor i32 %550, %539
  %552 = lshr i32 %551, 4
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %554, i8* %555, align 1, !tbaa !2446
  %556 = icmp eq i32 %539, 0
  %557 = zext i1 %556 to i8
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %557, i8* %558, align 1, !tbaa !2447
  %559 = lshr i32 %539, 31
  %560 = trunc i32 %559 to i8
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %560, i8* %561, align 1, !tbaa !2448
  %562 = lshr i32 %535, 31
  %563 = xor i32 %559, %562
  %564 = add nuw nsw i32 %563, %562
  %565 = icmp eq i32 %564, 2
  %566 = zext i1 %565 to i8
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %566, i8* %567, align 1, !tbaa !2449
  %568 = load i64, i64* %PC
  %569 = add i64 %568, 57
  %570 = load i64, i64* %PC
  %571 = add i64 %570, 6
  %572 = load i64, i64* %PC
  %573 = add i64 %572, 6
  store i64 %573, i64* %PC
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %575 = load i8, i8* %574, align 1, !tbaa !2447
  %576 = icmp eq i8 %575, 0
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %579 = select i1 %576, i64 %569, i64 %571
  store i64 %579, i64* %578, align 8, !tbaa !2451
  %580 = load i8, i8* %BRANCH_TAKEN
  %581 = icmp eq i8 %580, 1
  %582 = load i64, i64* %PC
  %583 = add i64 %582, 10
  store i64 %583, i64* %PC
  br i1 %581, label %block_4007a9, label %block_400776

block_4006ae:                                     ; preds = %block_4006a4
  %584 = load i64, i64* %RBP
  %585 = sub i64 %584, 20
  %586 = load i64, i64* %PC
  %587 = add i64 %586, 3
  store i64 %587, i64* %PC
  %588 = inttoptr i64 %585 to i32*
  %589 = load i32, i32* %588
  %590 = zext i32 %589 to i64
  store i64 %590, i64* %RAX, align 8, !tbaa !2451
  %591 = load i64, i64* %RBP
  %592 = sub i64 %591, 28
  %593 = load i32, i32* %EAX
  %594 = zext i32 %593 to i64
  %595 = load i64, i64* %PC
  %596 = add i64 %595, 3
  store i64 %596, i64* %PC
  %597 = inttoptr i64 %592 to i32*
  store i32 %593, i32* %597
  %598 = load i64, i64* %RBP
  %599 = sub i64 %598, 24
  %600 = load i64, i64* %PC
  %601 = add i64 %600, 3
  store i64 %601, i64* %PC
  %602 = inttoptr i64 %599 to i32*
  %603 = load i32, i32* %602
  %604 = zext i32 %603 to i64
  store i64 %604, i64* %RAX, align 8, !tbaa !2451
  %605 = load i64, i64* %RBP
  %606 = sub i64 %605, 32
  %607 = load i32, i32* %EAX
  %608 = zext i32 %607 to i64
  %609 = load i64, i64* %PC
  %610 = add i64 %609, 3
  store i64 %610, i64* %PC
  %611 = inttoptr i64 %606 to i32*
  store i32 %607, i32* %611
  %612 = load i64, i64* %RBP
  %613 = sub i64 %612, 36
  %614 = load i64, i64* %PC
  %615 = add i64 %614, 4
  store i64 %615, i64* %PC
  %616 = inttoptr i64 %613 to i32*
  %617 = load i32, i32* %616
  %618 = sext i32 %617 to i64
  store i64 %618, i64* %RCX, align 8, !tbaa !2451
  %619 = load i64, i64* %RBP
  %620 = load i64, i64* %RCX
  %621 = add i64 %619, -64
  %622 = add i64 %621, %620
  %623 = load i64, i64* %PC
  %624 = add i64 %623, 5
  store i64 %624, i64* %PC
  %625 = inttoptr i64 %622 to i8*
  %626 = load i8, i8* %625
  %627 = sext i8 %626 to i64
  %628 = and i64 %627, 4294967295
  store i64 %628, i64* %RAX, align 8, !tbaa !2451
  %629 = load i64, i64* %RAX
  %630 = load i64, i64* %PC
  %631 = add i64 %630, 3
  store i64 %631, i64* %PC
  %632 = trunc i64 %629 to i32
  %633 = add i32 -97, %632
  %634 = zext i32 %633 to i64
  store i64 %634, i64* %RAX, align 8, !tbaa !2451
  %635 = icmp ult i32 %633, %632
  %636 = icmp ult i32 %633, -97
  %637 = or i1 %635, %636
  %638 = zext i1 %637 to i8
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %638, i8* %639, align 1, !tbaa !2428
  %640 = and i32 %633, 255
  %641 = call i32 @llvm.ctpop.i32(i32 %640) #16
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %644, i8* %645, align 1, !tbaa !2445
  %646 = xor i64 -97, %629
  %647 = trunc i64 %646 to i32
  %648 = xor i32 %647, %633
  %649 = lshr i32 %648, 4
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %651, i8* %652, align 1, !tbaa !2446
  %653 = icmp eq i32 %633, 0
  %654 = zext i1 %653 to i8
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %654, i8* %655, align 1, !tbaa !2447
  %656 = lshr i32 %633, 31
  %657 = trunc i32 %656 to i8
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %657, i8* %658, align 1, !tbaa !2448
  %659 = lshr i32 %632, 31
  %660 = xor i32 %656, %659
  %661 = xor i32 %656, 1
  %662 = add nuw nsw i32 %660, %661
  %663 = icmp eq i32 %662, 2
  %664 = zext i1 %663 to i8
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %664, i8* %665, align 1, !tbaa !2449
  %666 = load i32, i32* %EAX
  %667 = zext i32 %666 to i64
  %668 = load i64, i64* %PC
  %669 = add i64 %668, 2
  store i64 %669, i64* %PC
  %670 = and i64 %667, 4294967295
  store i64 %670, i64* %RCX, align 8, !tbaa !2451
  %671 = load i64, i64* %RAX
  %672 = load i64, i64* %PC
  %673 = add i64 %672, 3
  store i64 %673, i64* %PC
  %674 = trunc i64 %671 to i32
  %675 = sub i32 %674, 22
  %676 = zext i32 %675 to i64
  store i64 %676, i64* %RAX, align 8, !tbaa !2451
  %677 = icmp ult i32 %674, 22
  %678 = zext i1 %677 to i8
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %678, i8* %679, align 1, !tbaa !2428
  %680 = and i32 %675, 255
  %681 = call i32 @llvm.ctpop.i32(i32 %680) #16
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  %684 = xor i8 %683, 1
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %684, i8* %685, align 1, !tbaa !2445
  %686 = xor i64 22, %671
  %687 = trunc i64 %686 to i32
  %688 = xor i32 %687, %675
  %689 = lshr i32 %688, 4
  %690 = trunc i32 %689 to i8
  %691 = and i8 %690, 1
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %691, i8* %692, align 1, !tbaa !2446
  %693 = icmp eq i32 %675, 0
  %694 = zext i1 %693 to i8
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %694, i8* %695, align 1, !tbaa !2447
  %696 = lshr i32 %675, 31
  %697 = trunc i32 %696 to i8
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %697, i8* %698, align 1, !tbaa !2448
  %699 = lshr i32 %674, 31
  %700 = xor i32 %696, %699
  %701 = add nuw nsw i32 %700, %699
  %702 = icmp eq i32 %701, 2
  %703 = zext i1 %702 to i8
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %703, i8* %704, align 1, !tbaa !2449
  %705 = load i64, i64* %RBP
  %706 = sub i64 %705, 80
  %707 = load i64, i64* %RCX
  %708 = load i64, i64* %PC
  %709 = add i64 %708, 4
  store i64 %709, i64* %PC
  %710 = inttoptr i64 %706 to i64*
  store i64 %707, i64* %710
  %711 = load i64, i64* %RBP
  %712 = sub i64 %711, 84
  %713 = load i32, i32* %EAX
  %714 = zext i32 %713 to i64
  %715 = load i64, i64* %PC
  %716 = add i64 %715, 3
  store i64 %716, i64* %PC
  %717 = inttoptr i64 %712 to i32*
  store i32 %713, i32* %717
  %718 = load i64, i64* %PC
  %719 = add i64 %718, 76
  %720 = load i64, i64* %PC
  %721 = add i64 %720, 6
  %722 = load i64, i64* %PC
  %723 = add i64 %722, 6
  store i64 %723, i64* %PC
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %725 = load i8, i8* %724, align 1, !tbaa !2428
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %727 = load i8, i8* %726, align 1, !tbaa !2447
  %728 = or i8 %727, %725
  %729 = icmp eq i8 %728, 0
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %732 = select i1 %729, i64 %719, i64 %721
  store i64 %732, i64* %731, align 8, !tbaa !2451
  %733 = load i8, i8* %BRANCH_TAKEN
  %734 = icmp eq i8 %733, 1
  br i1 %734, label %block_40071e, label %block_4006d8

block_40082b:                                     ; preds = %block_40081f
  %735 = load i64, i64* %RBP
  %736 = sub i64 %735, 32
  %737 = load i64, i64* %PC
  %738 = add i64 %737, 3
  store i64 %738, i64* %PC
  %739 = inttoptr i64 %736 to i32*
  %740 = load i32, i32* %739
  %741 = zext i32 %740 to i64
  store i64 %741, i64* %RAX, align 8, !tbaa !2451
  %742 = load i32, i32* %EAX
  %743 = zext i32 %742 to i64
  %744 = load i64, i64* %RBP
  %745 = sub i64 %744, 24
  %746 = load i64, i64* %PC
  %747 = add i64 %746, 3
  store i64 %747, i64* %PC
  %748 = inttoptr i64 %745 to i32*
  %749 = load i32, i32* %748
  %750 = sub i32 %742, %749
  %751 = icmp ult i32 %742, %749
  %752 = zext i1 %751 to i8
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %752, i8* %753, align 1, !tbaa !2428
  %754 = and i32 %750, 255
  %755 = call i32 @llvm.ctpop.i32(i32 %754) #16
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = xor i8 %757, 1
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %758, i8* %759, align 1, !tbaa !2445
  %760 = xor i32 %749, %742
  %761 = xor i32 %760, %750
  %762 = lshr i32 %761, 4
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %764, i8* %765, align 1, !tbaa !2446
  %766 = icmp eq i32 %750, 0
  %767 = zext i1 %766 to i8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %767, i8* %768, align 1, !tbaa !2447
  %769 = lshr i32 %750, 31
  %770 = trunc i32 %769 to i8
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %770, i8* %771, align 1, !tbaa !2448
  %772 = lshr i32 %742, 31
  %773 = lshr i32 %749, 31
  %774 = xor i32 %773, %772
  %775 = xor i32 %769, %772
  %776 = add nuw nsw i32 %775, %774
  %777 = icmp eq i32 %776, 2
  %778 = zext i1 %777 to i8
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %778, i8* %779, align 1, !tbaa !2449
  %780 = load i64, i64* %PC
  %781 = add i64 %780, 38
  %782 = load i64, i64* %PC
  %783 = add i64 %782, 6
  %784 = load i64, i64* %PC
  %785 = add i64 %784, 6
  store i64 %785, i64* %PC
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %787 = load i8, i8* %786, align 1, !tbaa !2447
  %788 = icmp eq i8 %787, 0
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %791 = select i1 %788, i64 %781, i64 %783
  store i64 %791, i64* %790, align 8, !tbaa !2451
  %792 = load i8, i8* %BRANCH_TAKEN
  %793 = icmp eq i8 %792, 1
  br i1 %793, label %block_400857, label %block_400837

block_400857:                                     ; preds = %block_40081f, %block_40082b
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.4, %block_40081f ], [ %MEMORY.4, %block_40082b ]
  %794 = load i64, i64* %PC
  %795 = add i64 %794, 10
  store i64 %795, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %796 = load i64, i64* %RBP
  %797 = sub i64 %796, 24
  %798 = load i64, i64* %PC
  %799 = add i64 %798, 4
  store i64 %799, i64* %PC
  %800 = inttoptr i64 %797 to i32*
  %801 = load i32, i32* %800
  %802 = sext i32 %801 to i64
  store i64 %802, i64* %RCX, align 8, !tbaa !2451
  %803 = load i64, i64* %RCX
  %804 = load i64, i64* %PC
  %805 = add i64 %804, 4
  store i64 %805, i64* %PC
  %806 = sext i64 %803 to i128
  %807 = and i128 %806, -18446744073709551616
  %808 = zext i64 %803 to i128
  %809 = or i128 %807, %808
  %810 = mul nsw i128 11, %809
  %811 = trunc i128 %810 to i64
  store i64 %811, i64* %RCX, align 8, !tbaa !2451
  %812 = sext i64 %811 to i128
  %813 = icmp ne i128 %812, %810
  %814 = zext i1 %813 to i8
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %814, i8* %815, align 1, !tbaa !2428
  %816 = trunc i128 %810 to i32
  %817 = and i32 %816, 255
  %818 = call i32 @llvm.ctpop.i32(i32 %817) #16
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = xor i8 %820, 1
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %821, i8* %822, align 1, !tbaa !2445
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %823, align 1, !tbaa !2446
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %824, align 1, !tbaa !2447
  %825 = lshr i64 %811, 63
  %826 = trunc i64 %825 to i8
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %826, i8* %827, align 1, !tbaa !2448
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %814, i8* %828, align 1, !tbaa !2449
  %829 = load i64, i64* %RAX
  %830 = load i64, i64* %RCX
  %831 = load i64, i64* %PC
  %832 = add i64 %831, 3
  store i64 %832, i64* %PC
  %833 = add i64 %830, %829
  store i64 %833, i64* %RAX, align 8, !tbaa !2451
  %834 = icmp ult i64 %833, %829
  %835 = icmp ult i64 %833, %830
  %836 = or i1 %834, %835
  %837 = zext i1 %836 to i8
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %837, i8* %838, align 1, !tbaa !2428
  %839 = trunc i64 %833 to i32
  %840 = and i32 %839, 255
  %841 = call i32 @llvm.ctpop.i32(i32 %840) #16
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %844, i8* %845, align 1, !tbaa !2445
  %846 = xor i64 %830, %829
  %847 = xor i64 %846, %833
  %848 = lshr i64 %847, 4
  %849 = trunc i64 %848 to i8
  %850 = and i8 %849, 1
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %850, i8* %851, align 1, !tbaa !2446
  %852 = icmp eq i64 %833, 0
  %853 = zext i1 %852 to i8
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %853, i8* %854, align 1, !tbaa !2447
  %855 = lshr i64 %833, 63
  %856 = trunc i64 %855 to i8
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %856, i8* %857, align 1, !tbaa !2448
  %858 = lshr i64 %829, 63
  %859 = lshr i64 %830, 63
  %860 = xor i64 %855, %858
  %861 = xor i64 %855, %859
  %862 = add nuw nsw i64 %860, %861
  %863 = icmp eq i64 %862, 2
  %864 = zext i1 %863 to i8
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %864, i8* %865, align 1, !tbaa !2449
  %866 = load i64, i64* %RBP
  %867 = sub i64 %866, 20
  %868 = load i64, i64* %PC
  %869 = add i64 %868, 4
  store i64 %869, i64* %PC
  %870 = inttoptr i64 %867 to i32*
  %871 = load i32, i32* %870
  %872 = sext i32 %871 to i64
  store i64 %872, i64* %RCX, align 8, !tbaa !2451
  %873 = load i64, i64* %RAX
  %874 = load i64, i64* %RCX
  %875 = add i64 %874, %873
  %876 = load i64, i64* %PC
  %877 = add i64 %876, 4
  store i64 %877, i64* %PC
  %878 = inttoptr i64 %875 to i8*
  store i8 88, i8* %878
  %879 = load i64, i64* %PC
  %880 = sub i64 %879, 740
  %881 = load i64, i64* %PC
  %882 = add i64 %881, 5
  %883 = load i64, i64* %PC
  %884 = add i64 %883, 5
  store i64 %884, i64* %PC
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %886 = load i64, i64* %885, align 8, !tbaa !2451
  %887 = add i64 %886, -8
  %888 = inttoptr i64 %887 to i64*
  store i64 %882, i64* %888
  store i64 %887, i64* %885, align 8, !tbaa !2451
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %880, i64* %889, align 8, !tbaa !2451
  %890 = load i64, i64* %PC
  %891 = call %struct.Memory* @sub_400590_draw(%struct.State* %0, i64 %890, %struct.Memory* %MEMORY.1)
  %892 = load i64, i64* %RBP
  %893 = sub i64 %892, 36
  %894 = load i64, i64* %PC
  %895 = add i64 %894, 3
  store i64 %895, i64* %PC
  %896 = inttoptr i64 %893 to i32*
  %897 = load i32, i32* %896
  %898 = zext i32 %897 to i64
  store i64 %898, i64* %RDX, align 8, !tbaa !2451
  %899 = load i64, i64* %RDX
  %900 = load i64, i64* %PC
  %901 = add i64 %900, 3
  store i64 %901, i64* %PC
  %902 = trunc i64 %899 to i32
  %903 = add i32 1, %902
  %904 = zext i32 %903 to i64
  store i64 %904, i64* %RDX, align 8, !tbaa !2451
  %905 = icmp ult i32 %903, %902
  %906 = icmp ult i32 %903, 1
  %907 = or i1 %905, %906
  %908 = zext i1 %907 to i8
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %908, i8* %909, align 1, !tbaa !2428
  %910 = and i32 %903, 255
  %911 = call i32 @llvm.ctpop.i32(i32 %910) #16
  %912 = trunc i32 %911 to i8
  %913 = and i8 %912, 1
  %914 = xor i8 %913, 1
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %914, i8* %915, align 1, !tbaa !2445
  %916 = xor i64 1, %899
  %917 = trunc i64 %916 to i32
  %918 = xor i32 %917, %903
  %919 = lshr i32 %918, 4
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %921, i8* %922, align 1, !tbaa !2446
  %923 = icmp eq i32 %903, 0
  %924 = zext i1 %923 to i8
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %924, i8* %925, align 1, !tbaa !2447
  %926 = lshr i32 %903, 31
  %927 = trunc i32 %926 to i8
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %927, i8* %928, align 1, !tbaa !2448
  %929 = lshr i32 %902, 31
  %930 = xor i32 %926, %929
  %931 = add nuw nsw i32 %930, %926
  %932 = icmp eq i32 %931, 2
  %933 = zext i1 %932 to i8
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %933, i8* %934, align 1, !tbaa !2449
  %935 = load i64, i64* %RBP
  %936 = sub i64 %935, 36
  %937 = load i32, i32* %EDX
  %938 = zext i32 %937 to i64
  %939 = load i64, i64* %PC
  %940 = add i64 %939, 3
  store i64 %940, i64* %PC
  %941 = inttoptr i64 %936 to i32*
  store i32 %937, i32* %941
  %942 = load i64, i64* %PC
  %943 = sub i64 %942, 478
  %944 = load i64, i64* %PC
  %945 = add i64 %944, 5
  store i64 %945, i64* %PC
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %943, i64* %946, align 8, !tbaa !2451
  br label %block_4006a4

block_4007a9:                                     ; preds = %block_400750
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %947 = load i64, i64* %RBP
  %948 = sub i64 %947, 24
  %949 = load i64, i64* %PC
  %950 = add i64 %949, 4
  store i64 %950, i64* %PC
  %951 = inttoptr i64 %948 to i32*
  %952 = load i32, i32* %951
  %953 = sext i32 %952 to i64
  store i64 %953, i64* %RCX, align 8, !tbaa !2451
  %954 = load i64, i64* %RCX
  %955 = load i64, i64* %PC
  %956 = add i64 %955, 4
  store i64 %956, i64* %PC
  %957 = sext i64 %954 to i128
  %958 = and i128 %957, -18446744073709551616
  %959 = zext i64 %954 to i128
  %960 = or i128 %958, %959
  %961 = mul nsw i128 11, %960
  %962 = trunc i128 %961 to i64
  store i64 %962, i64* %RCX, align 8, !tbaa !2451
  %963 = sext i64 %962 to i128
  %964 = icmp ne i128 %963, %961
  %965 = zext i1 %964 to i8
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %965, i8* %966, align 1, !tbaa !2428
  %967 = trunc i128 %961 to i32
  %968 = and i32 %967, 255
  %969 = call i32 @llvm.ctpop.i32(i32 %968) #16
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  %972 = xor i8 %971, 1
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %972, i8* %973, align 1, !tbaa !2445
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %974, align 1, !tbaa !2446
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %975, align 1, !tbaa !2447
  %976 = lshr i64 %962, 63
  %977 = trunc i64 %976 to i8
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %977, i8* %978, align 1, !tbaa !2448
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %965, i8* %979, align 1, !tbaa !2449
  %980 = load i64, i64* %RAX
  %981 = load i64, i64* %RCX
  %982 = load i64, i64* %PC
  %983 = add i64 %982, 3
  store i64 %983, i64* %PC
  %984 = add i64 %981, %980
  store i64 %984, i64* %RAX, align 8, !tbaa !2451
  %985 = icmp ult i64 %984, %980
  %986 = icmp ult i64 %984, %981
  %987 = or i1 %985, %986
  %988 = zext i1 %987 to i8
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %988, i8* %989, align 1, !tbaa !2428
  %990 = trunc i64 %984 to i32
  %991 = and i32 %990, 255
  %992 = call i32 @llvm.ctpop.i32(i32 %991) #16
  %993 = trunc i32 %992 to i8
  %994 = and i8 %993, 1
  %995 = xor i8 %994, 1
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %995, i8* %996, align 1, !tbaa !2445
  %997 = xor i64 %981, %980
  %998 = xor i64 %997, %984
  %999 = lshr i64 %998, 4
  %1000 = trunc i64 %999 to i8
  %1001 = and i8 %1000, 1
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1001, i8* %1002, align 1, !tbaa !2446
  %1003 = icmp eq i64 %984, 0
  %1004 = zext i1 %1003 to i8
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1004, i8* %1005, align 1, !tbaa !2447
  %1006 = lshr i64 %984, 63
  %1007 = trunc i64 %1006 to i8
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1007, i8* %1008, align 1, !tbaa !2448
  %1009 = lshr i64 %980, 63
  %1010 = lshr i64 %981, 63
  %1011 = xor i64 %1006, %1009
  %1012 = xor i64 %1006, %1010
  %1013 = add nuw nsw i64 %1011, %1012
  %1014 = icmp eq i64 %1013, 2
  %1015 = zext i1 %1014 to i8
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1015, i8* %1016, align 1, !tbaa !2449
  %1017 = load i64, i64* %RBP
  %1018 = sub i64 %1017, 20
  %1019 = load i64, i64* %PC
  %1020 = add i64 %1019, 4
  store i64 %1020, i64* %PC
  %1021 = inttoptr i64 %1018 to i32*
  %1022 = load i32, i32* %1021
  %1023 = sext i32 %1022 to i64
  store i64 %1023, i64* %RCX, align 8, !tbaa !2451
  %1024 = load i64, i64* %RAX
  %1025 = load i64, i64* %RCX
  %1026 = add i64 %1025, %1024
  %1027 = load i64, i64* %PC
  %1028 = add i64 %1027, 4
  store i64 %1028, i64* %PC
  %1029 = inttoptr i64 %1026 to i8*
  %1030 = load i8, i8* %1029
  %1031 = sext i8 %1030 to i64
  %1032 = and i64 %1031, 4294967295
  store i64 %1032, i64* %RDX, align 8, !tbaa !2451
  %1033 = load i32, i32* %EDX
  %1034 = zext i32 %1033 to i64
  %1035 = load i64, i64* %PC
  %1036 = add i64 %1035, 3
  store i64 %1036, i64* %PC
  %1037 = sub i32 %1033, 32
  %1038 = icmp ult i32 %1033, 32
  %1039 = zext i1 %1038 to i8
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1039, i8* %1040, align 1, !tbaa !2428
  %1041 = and i32 %1037, 255
  %1042 = call i32 @llvm.ctpop.i32(i32 %1041) #16
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  %1045 = xor i8 %1044, 1
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1045, i8* %1046, align 1, !tbaa !2445
  %1047 = xor i64 32, %1034
  %1048 = trunc i64 %1047 to i32
  %1049 = xor i32 %1048, %1037
  %1050 = lshr i32 %1049, 4
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1052, i8* %1053, align 1, !tbaa !2446
  %1054 = icmp eq i32 %1037, 0
  %1055 = zext i1 %1054 to i8
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1055, i8* %1056, align 1, !tbaa !2447
  %1057 = lshr i32 %1037, 31
  %1058 = trunc i32 %1057 to i8
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1058, i8* %1059, align 1, !tbaa !2448
  %1060 = lshr i32 %1033, 31
  %1061 = xor i32 %1057, %1060
  %1062 = add nuw nsw i32 %1061, %1060
  %1063 = icmp eq i32 %1062, 2
  %1064 = zext i1 %1063 to i8
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1064, i8* %1065, align 1, !tbaa !2449
  %1066 = load i64, i64* %PC
  %1067 = add i64 %1066, 86
  %1068 = load i64, i64* %PC
  %1069 = add i64 %1068, 6
  %1070 = load i64, i64* %PC
  %1071 = add i64 %1070, 6
  store i64 %1071, i64* %PC
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1073 = load i8, i8* %1072, align 1, !tbaa !2447
  store i8 %1073, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1075 = icmp ne i8 %1073, 0
  %1076 = select i1 %1075, i64 %1067, i64 %1069
  store i64 %1076, i64* %1074, align 8, !tbaa !2451
  %1077 = load i8, i8* %BRANCH_TAKEN
  %1078 = icmp eq i8 %1077, 1
  br i1 %1078, label %block_40081f, label %block_4007cf

block_4006a4:                                     ; preds = %block_400857, %block_400640
  %MEMORY.2 = phi %struct.Memory* [ %263, %block_400640 ], [ %891, %block_400857 ]
  %1079 = load i64, i64* %RBP
  %1080 = sub i64 %1079, 36
  %1081 = load i64, i64* %PC
  %1082 = add i64 %1081, 4
  store i64 %1082, i64* %PC
  %1083 = inttoptr i64 %1080 to i32*
  %1084 = load i32, i32* %1083
  %1085 = sub i32 %1084, 28
  %1086 = icmp ult i32 %1084, 28
  %1087 = zext i1 %1086 to i8
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1087, i8* %1088, align 1, !tbaa !2428
  %1089 = and i32 %1085, 255
  %1090 = call i32 @llvm.ctpop.i32(i32 %1089) #16
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = xor i8 %1092, 1
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1093, i8* %1094, align 1, !tbaa !2445
  %1095 = xor i32 %1084, 28
  %1096 = xor i32 %1095, %1085
  %1097 = lshr i32 %1096, 4
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1099, i8* %1100, align 1, !tbaa !2446
  %1101 = icmp eq i32 %1085, 0
  %1102 = zext i1 %1101 to i8
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1102, i8* %1103, align 1, !tbaa !2447
  %1104 = lshr i32 %1085, 31
  %1105 = trunc i32 %1104 to i8
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1105, i8* %1106, align 1, !tbaa !2448
  %1107 = lshr i32 %1084, 31
  %1108 = xor i32 %1104, %1107
  %1109 = add nuw nsw i32 %1108, %1107
  %1110 = icmp eq i32 %1109, 2
  %1111 = zext i1 %1110 to i8
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1111, i8* %1112, align 1, !tbaa !2449
  %1113 = load i64, i64* %PC
  %1114 = add i64 %1113, 479
  %1115 = load i64, i64* %PC
  %1116 = add i64 %1115, 6
  %1117 = load i64, i64* %PC
  %1118 = add i64 %1117, 6
  store i64 %1118, i64* %PC
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1120 = load i8, i8* %1119, align 1, !tbaa !2448
  %1121 = icmp ne i8 %1120, 0
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1123 = load i8, i8* %1122, align 1, !tbaa !2449
  %1124 = icmp ne i8 %1123, 0
  %1125 = xor i1 %1121, %1124
  %1126 = xor i1 %1125, true
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1129 = select i1 %1125, i64 %1116, i64 %1114
  store i64 %1129, i64* %1128, align 8, !tbaa !2451
  %1130 = load i8, i8* %BRANCH_TAKEN
  %1131 = icmp eq i8 %1130, 1
  br i1 %1131, label %block_400887, label %block_4006ae

block_4008a2:                                     ; preds = %block_400837, %block_400887
  %MEMORY.3 = phi %struct.Memory* [ %1646, %block_400887 ], [ %1675, %block_400837 ]
  %1132 = load i64, i64* %RBP
  %1133 = sub i64 %1132, 4
  %1134 = load i64, i64* %PC
  %1135 = add i64 %1134, 3
  store i64 %1135, i64* %PC
  %1136 = inttoptr i64 %1133 to i32*
  %1137 = load i32, i32* %1136
  %1138 = zext i32 %1137 to i64
  store i64 %1138, i64* %RAX, align 8, !tbaa !2451
  %1139 = load i64, i64* %RSP
  %1140 = load i64, i64* %PC
  %1141 = add i64 %1140, 4
  store i64 %1141, i64* %PC
  %1142 = add i64 112, %1139
  store i64 %1142, i64* %RSP, align 8, !tbaa !2451
  %1143 = icmp ult i64 %1142, %1139
  %1144 = icmp ult i64 %1142, 112
  %1145 = or i1 %1143, %1144
  %1146 = zext i1 %1145 to i8
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1146, i8* %1147, align 1, !tbaa !2428
  %1148 = trunc i64 %1142 to i32
  %1149 = and i32 %1148, 255
  %1150 = call i32 @llvm.ctpop.i32(i32 %1149) #16
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  %1153 = xor i8 %1152, 1
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1153, i8* %1154, align 1, !tbaa !2445
  %1155 = xor i64 112, %1139
  %1156 = xor i64 %1155, %1142
  %1157 = lshr i64 %1156, 4
  %1158 = trunc i64 %1157 to i8
  %1159 = and i8 %1158, 1
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1159, i8* %1160, align 1, !tbaa !2446
  %1161 = icmp eq i64 %1142, 0
  %1162 = zext i1 %1161 to i8
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1162, i8* %1163, align 1, !tbaa !2447
  %1164 = lshr i64 %1142, 63
  %1165 = trunc i64 %1164 to i8
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1165, i8* %1166, align 1, !tbaa !2448
  %1167 = lshr i64 %1139, 63
  %1168 = xor i64 %1164, %1167
  %1169 = add nuw nsw i64 %1168, %1164
  %1170 = icmp eq i64 %1169, 2
  %1171 = zext i1 %1170 to i8
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1171, i8* %1172, align 1, !tbaa !2449
  %1173 = load i64, i64* %PC
  %1174 = add i64 %1173, 1
  store i64 %1174, i64* %PC
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1176 = load i64, i64* %1175, align 8, !tbaa !2451
  %1177 = add i64 %1176, 8
  %1178 = inttoptr i64 %1176 to i64*
  %1179 = load i64, i64* %1178
  store i64 %1179, i64* %RBP, align 8, !tbaa !2451
  store i64 %1177, i64* %1175, align 8, !tbaa !2451
  %1180 = load i64, i64* %PC
  %1181 = add i64 %1180, 1
  store i64 %1181, i64* %PC
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1184 = load i64, i64* %1183, align 8, !tbaa !2451
  %1185 = inttoptr i64 %1184 to i64*
  %1186 = load i64, i64* %1185
  store i64 %1186, i64* %1182, align 8, !tbaa !2451
  %1187 = add i64 %1184, 8
  store i64 %1187, i64* %1183, align 8, !tbaa !2451
  ret %struct.Memory* %MEMORY.3

block_40081f:                                     ; preds = %block_400813, %block_400809, %block_4007a9
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.0, %block_4007a9 ], [ %MEMORY.6, %block_400813 ], [ %MEMORY.0, %block_400809 ]
  %1188 = load i64, i64* %RBP
  %1189 = sub i64 %1188, 28
  %1190 = load i64, i64* %PC
  %1191 = add i64 %1190, 3
  store i64 %1191, i64* %PC
  %1192 = inttoptr i64 %1189 to i32*
  %1193 = load i32, i32* %1192
  %1194 = zext i32 %1193 to i64
  store i64 %1194, i64* %RAX, align 8, !tbaa !2451
  %1195 = load i32, i32* %EAX
  %1196 = zext i32 %1195 to i64
  %1197 = load i64, i64* %RBP
  %1198 = sub i64 %1197, 20
  %1199 = load i64, i64* %PC
  %1200 = add i64 %1199, 3
  store i64 %1200, i64* %PC
  %1201 = inttoptr i64 %1198 to i32*
  %1202 = load i32, i32* %1201
  %1203 = sub i32 %1195, %1202
  %1204 = icmp ult i32 %1195, %1202
  %1205 = zext i1 %1204 to i8
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1205, i8* %1206, align 1, !tbaa !2428
  %1207 = and i32 %1203, 255
  %1208 = call i32 @llvm.ctpop.i32(i32 %1207) #16
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  %1211 = xor i8 %1210, 1
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1211, i8* %1212, align 1, !tbaa !2445
  %1213 = xor i32 %1202, %1195
  %1214 = xor i32 %1213, %1203
  %1215 = lshr i32 %1214, 4
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1217, i8* %1218, align 1, !tbaa !2446
  %1219 = icmp eq i32 %1203, 0
  %1220 = zext i1 %1219 to i8
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1220, i8* %1221, align 1, !tbaa !2447
  %1222 = lshr i32 %1203, 31
  %1223 = trunc i32 %1222 to i8
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1223, i8* %1224, align 1, !tbaa !2448
  %1225 = lshr i32 %1195, 31
  %1226 = lshr i32 %1202, 31
  %1227 = xor i32 %1226, %1225
  %1228 = xor i32 %1222, %1225
  %1229 = add nuw nsw i32 %1228, %1227
  %1230 = icmp eq i32 %1229, 2
  %1231 = zext i1 %1230 to i8
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1231, i8* %1232, align 1, !tbaa !2449
  %1233 = load i64, i64* %PC
  %1234 = add i64 %1233, 50
  %1235 = load i64, i64* %PC
  %1236 = add i64 %1235, 6
  %1237 = load i64, i64* %PC
  %1238 = add i64 %1237, 6
  store i64 %1238, i64* %PC
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1240 = load i8, i8* %1239, align 1, !tbaa !2447
  %1241 = icmp eq i8 %1240, 0
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1244 = select i1 %1241, i64 %1234, i64 %1236
  store i64 %1244, i64* %1243, align 8, !tbaa !2451
  %1245 = load i8, i8* %BRANCH_TAKEN
  %1246 = icmp eq i8 %1245, 1
  br i1 %1246, label %block_400857, label %block_40082b

block_40071e:                                     ; preds = %block_4006ae, %block_4006d8
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.2, %block_4006ae ], [ %MEMORY.2, %block_4006d8 ]
  %1247 = load i64, i64* %PC
  %1248 = add i64 %1247, 10
  store i64 %1248, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 195), i64* %RDI, align 8, !tbaa !2451
  %1249 = load i64, i64* %PC
  %1250 = add i64 %1249, 2
  store i64 %1250, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %1251 = load i64, i64* %PC
  %1252 = sub i64 %1251, 698
  %1253 = load i64, i64* %PC
  %1254 = add i64 %1253, 5
  %1255 = load i64, i64* %PC
  %1256 = add i64 %1255, 5
  store i64 %1256, i64* %PC
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1258 = load i64, i64* %1257, align 8, !tbaa !2451
  %1259 = add i64 %1258, -8
  %1260 = inttoptr i64 %1259 to i64*
  store i64 %1254, i64* %1260
  store i64 %1259, i64* %1257, align 8, !tbaa !2451
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1252, i64* %1261, align 8, !tbaa !2451
  %1262 = load i64, i64* %PC
  %1263 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1262, %struct.Memory* %MEMORY.5)
  %1264 = load i64, i64* %PC
  %1265 = add i64 %1264, 10
  store i64 %1265, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 235), i64* %RDI, align 8, !tbaa !2451
  %1266 = load i64, i64* %RBP
  %1267 = sub i64 %1266, 88
  %1268 = load i32, i32* %EAX
  %1269 = zext i32 %1268 to i64
  %1270 = load i64, i64* %PC
  %1271 = add i64 %1270, 3
  store i64 %1271, i64* %PC
  %1272 = inttoptr i64 %1267 to i32*
  store i32 %1268, i32* %1272
  %1273 = load i64, i64* %PC
  %1274 = add i64 %1273, 2
  store i64 %1274, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %1275 = load i64, i64* %PC
  %1276 = sub i64 %1275, 718
  %1277 = load i64, i64* %PC
  %1278 = add i64 %1277, 5
  %1279 = load i64, i64* %PC
  %1280 = add i64 %1279, 5
  store i64 %1280, i64* %PC
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1282 = load i64, i64* %1281, align 8, !tbaa !2451
  %1283 = add i64 %1282, -8
  %1284 = inttoptr i64 %1283 to i64*
  store i64 %1278, i64* %1284
  store i64 %1283, i64* %1281, align 8, !tbaa !2451
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1276, i64* %1285, align 8, !tbaa !2451
  %1286 = load i64, i64* %PC
  %1287 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1286, %struct.Memory* %1263)
  %1288 = load i64, i64* %PC
  %1289 = add i64 %1288, 5
  store i64 %1289, i64* %PC
  store i64 4294967295, i64* %RDI, align 8, !tbaa !2451
  %1290 = load i64, i64* %RBP
  %1291 = sub i64 %1290, 92
  %1292 = load i32, i32* %EAX
  %1293 = zext i32 %1292 to i64
  %1294 = load i64, i64* %PC
  %1295 = add i64 %1294, 3
  store i64 %1295, i64* %PC
  %1296 = inttoptr i64 %1291 to i32*
  store i32 %1292, i32* %1296
  %1297 = load i64, i64* %PC
  %1298 = sub i64 %1297, 699
  %1299 = load i64, i64* %PC
  %1300 = add i64 %1299, 5
  %1301 = load i64, i64* %PC
  %1302 = add i64 %1301, 5
  store i64 %1302, i64* %PC
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1304 = load i64, i64* %1303, align 8, !tbaa !2451
  %1305 = add i64 %1304, -8
  %1306 = inttoptr i64 %1305 to i64*
  store i64 %1300, i64* %1306
  store i64 %1305, i64* %1303, align 8, !tbaa !2451
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1298, i64* %1307, align 8, !tbaa !2451
  %1308 = load i64, i64* %PC
  %1309 = call %struct.Memory* @ext_6010c8_exit(%struct.State* %0, i64 %1308, %struct.Memory* %1287)
  %1310 = load i64, i64* %PC
  %1311 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %1310, %struct.Memory* %1309)
  ret %struct.Memory* %1311

block_400710:                                     ; preds = %block_4006d8
  %1312 = load i64, i64* %RBP
  %1313 = sub i64 %1312, 20
  %1314 = load i64, i64* %PC
  %1315 = add i64 %1314, 3
  store i64 %1315, i64* %PC
  %1316 = inttoptr i64 %1313 to i32*
  %1317 = load i32, i32* %1316
  %1318 = zext i32 %1317 to i64
  store i64 %1318, i64* %RAX, align 8, !tbaa !2451
  %1319 = load i64, i64* %RAX
  %1320 = load i64, i64* %PC
  %1321 = add i64 %1320, 3
  store i64 %1321, i64* %PC
  %1322 = trunc i64 %1319 to i32
  %1323 = add i32 1, %1322
  %1324 = zext i32 %1323 to i64
  store i64 %1324, i64* %RAX, align 8, !tbaa !2451
  %1325 = icmp ult i32 %1323, %1322
  %1326 = icmp ult i32 %1323, 1
  %1327 = or i1 %1325, %1326
  %1328 = zext i1 %1327 to i8
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1328, i8* %1329, align 1, !tbaa !2428
  %1330 = and i32 %1323, 255
  %1331 = call i32 @llvm.ctpop.i32(i32 %1330) #16
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  %1334 = xor i8 %1333, 1
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1334, i8* %1335, align 1, !tbaa !2445
  %1336 = xor i64 1, %1319
  %1337 = trunc i64 %1336 to i32
  %1338 = xor i32 %1337, %1323
  %1339 = lshr i32 %1338, 4
  %1340 = trunc i32 %1339 to i8
  %1341 = and i8 %1340, 1
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1341, i8* %1342, align 1, !tbaa !2446
  %1343 = icmp eq i32 %1323, 0
  %1344 = zext i1 %1343 to i8
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1344, i8* %1345, align 1, !tbaa !2447
  %1346 = lshr i32 %1323, 31
  %1347 = trunc i32 %1346 to i8
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1347, i8* %1348, align 1, !tbaa !2448
  %1349 = lshr i32 %1322, 31
  %1350 = xor i32 %1346, %1349
  %1351 = add nuw nsw i32 %1350, %1346
  %1352 = icmp eq i32 %1351, 2
  %1353 = zext i1 %1352 to i8
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1353, i8* %1354, align 1, !tbaa !2449
  %1355 = load i64, i64* %RBP
  %1356 = sub i64 %1355, 20
  %1357 = load i32, i32* %EAX
  %1358 = zext i32 %1357 to i64
  %1359 = load i64, i64* %PC
  %1360 = add i64 %1359, 3
  store i64 %1360, i64* %PC
  %1361 = inttoptr i64 %1356 to i32*
  store i32 %1357, i32* %1361
  %1362 = load i64, i64* %PC
  %1363 = add i64 %1362, 55
  %1364 = load i64, i64* %PC
  %1365 = add i64 %1364, 5
  store i64 %1365, i64* %PC
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1363, i64* %1366, align 8, !tbaa !2451
  br label %block_400750

block_4007cf:                                     ; preds = %block_4007a9
  %1367 = load i64, i64* %RBP
  %1368 = sub i64 %1367, 24
  %1369 = load i64, i64* %PC
  %1370 = add i64 %1369, 4
  store i64 %1370, i64* %PC
  %1371 = inttoptr i64 %1368 to i32*
  %1372 = load i32, i32* %1371
  %1373 = sub i32 %1372, 2
  %1374 = icmp ult i32 %1372, 2
  %1375 = zext i1 %1374 to i8
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1375, i8* %1376, align 1, !tbaa !2428
  %1377 = and i32 %1373, 255
  %1378 = call i32 @llvm.ctpop.i32(i32 %1377) #16
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  %1381 = xor i8 %1380, 1
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1381, i8* %1382, align 1, !tbaa !2445
  %1383 = xor i32 %1372, 2
  %1384 = xor i32 %1383, %1373
  %1385 = lshr i32 %1384, 4
  %1386 = trunc i32 %1385 to i8
  %1387 = and i8 %1386, 1
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1387, i8* %1388, align 1, !tbaa !2446
  %1389 = icmp eq i32 %1373, 0
  %1390 = zext i1 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1390, i8* %1391, align 1, !tbaa !2447
  %1392 = lshr i32 %1373, 31
  %1393 = trunc i32 %1392 to i8
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1393, i8* %1394, align 1, !tbaa !2448
  %1395 = lshr i32 %1372, 31
  %1396 = xor i32 %1392, %1395
  %1397 = add nuw nsw i32 %1396, %1395
  %1398 = icmp eq i32 %1397, 2
  %1399 = zext i1 %1398 to i8
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1399, i8* %1400, align 1, !tbaa !2449
  %1401 = load i64, i64* %PC
  %1402 = add i64 %1401, 64
  %1403 = load i64, i64* %PC
  %1404 = add i64 %1403, 6
  %1405 = load i64, i64* %PC
  %1406 = add i64 %1405, 6
  store i64 %1406, i64* %PC
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1408 = load i8, i8* %1407, align 1, !tbaa !2447
  %1409 = icmp eq i8 %1408, 0
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1412 = select i1 %1409, i64 %1402, i64 %1404
  store i64 %1412, i64* %1411, align 8, !tbaa !2451
  %1413 = load i8, i8* %BRANCH_TAKEN
  %1414 = icmp eq i8 %1413, 1
  br i1 %1414, label %block_400813, label %block_4007d9

block_400809:                                     ; preds = %block_4007ff
  %1415 = load i64, i64* %RBP
  %1416 = sub i64 %1415, 20
  %1417 = load i64, i64* %PC
  %1418 = add i64 %1417, 4
  store i64 %1418, i64* %PC
  %1419 = inttoptr i64 %1416 to i32*
  %1420 = load i32, i32* %1419
  %1421 = sub i32 %1420, 11
  %1422 = icmp ult i32 %1420, 11
  %1423 = zext i1 %1422 to i8
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1423, i8* %1424, align 1, !tbaa !2428
  %1425 = and i32 %1421, 255
  %1426 = call i32 @llvm.ctpop.i32(i32 %1425) #16
  %1427 = trunc i32 %1426 to i8
  %1428 = and i8 %1427, 1
  %1429 = xor i8 %1428, 1
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1429, i8* %1430, align 1, !tbaa !2445
  %1431 = xor i32 %1420, 11
  %1432 = xor i32 %1431, %1421
  %1433 = lshr i32 %1432, 4
  %1434 = trunc i32 %1433 to i8
  %1435 = and i8 %1434, 1
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1435, i8* %1436, align 1, !tbaa !2446
  %1437 = icmp eq i32 %1421, 0
  %1438 = zext i1 %1437 to i8
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1438, i8* %1439, align 1, !tbaa !2447
  %1440 = lshr i32 %1421, 31
  %1441 = trunc i32 %1440 to i8
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1441, i8* %1442, align 1, !tbaa !2448
  %1443 = lshr i32 %1420, 31
  %1444 = xor i32 %1440, %1443
  %1445 = add nuw nsw i32 %1444, %1443
  %1446 = icmp eq i32 %1445, 2
  %1447 = zext i1 %1446 to i8
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1447, i8* %1448, align 1, !tbaa !2449
  %1449 = load i64, i64* %PC
  %1450 = add i64 %1449, 18
  %1451 = load i64, i64* %PC
  %1452 = add i64 %1451, 6
  %1453 = load i64, i64* %PC
  %1454 = add i64 %1453, 6
  store i64 %1454, i64* %PC
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1456 = load i8, i8* %1455, align 1, !tbaa !2448
  %1457 = icmp ne i8 %1456, 0
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1459 = load i8, i8* %1458, align 1, !tbaa !2449
  %1460 = icmp ne i8 %1459, 0
  %1461 = xor i1 %1457, %1460
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1464 = select i1 %1461, i64 %1450, i64 %1452
  store i64 %1464, i64* %1463, align 8, !tbaa !2451
  %1465 = load i8, i8* %BRANCH_TAKEN
  %1466 = icmp eq i8 %1465, 1
  br i1 %1466, label %block_40081f, label %block_400813

block_4007d9:                                     ; preds = %block_4007cf
  %1467 = load i64, i64* %PC
  %1468 = add i64 %1467, 10
  store i64 %1468, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %1469 = load i64, i64* %RBP
  %1470 = sub i64 %1469, 24
  %1471 = load i64, i64* %PC
  %1472 = add i64 %1471, 4
  store i64 %1472, i64* %PC
  %1473 = inttoptr i64 %1470 to i32*
  %1474 = load i32, i32* %1473
  %1475 = sext i32 %1474 to i64
  store i64 %1475, i64* %RCX, align 8, !tbaa !2451
  %1476 = load i64, i64* %RCX
  %1477 = load i64, i64* %PC
  %1478 = add i64 %1477, 4
  store i64 %1478, i64* %PC
  %1479 = sext i64 %1476 to i128
  %1480 = and i128 %1479, -18446744073709551616
  %1481 = zext i64 %1476 to i128
  %1482 = or i128 %1480, %1481
  %1483 = mul nsw i128 11, %1482
  %1484 = trunc i128 %1483 to i64
  store i64 %1484, i64* %RCX, align 8, !tbaa !2451
  %1485 = sext i64 %1484 to i128
  %1486 = icmp ne i128 %1485, %1483
  %1487 = zext i1 %1486 to i8
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1487, i8* %1488, align 1, !tbaa !2428
  %1489 = trunc i128 %1483 to i32
  %1490 = and i32 %1489, 255
  %1491 = call i32 @llvm.ctpop.i32(i32 %1490) #16
  %1492 = trunc i32 %1491 to i8
  %1493 = and i8 %1492, 1
  %1494 = xor i8 %1493, 1
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1494, i8* %1495, align 1, !tbaa !2445
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1496, align 1, !tbaa !2446
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1497, align 1, !tbaa !2447
  %1498 = lshr i64 %1484, 63
  %1499 = trunc i64 %1498 to i8
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1499, i8* %1500, align 1, !tbaa !2448
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1487, i8* %1501, align 1, !tbaa !2449
  %1502 = load i64, i64* %RAX
  %1503 = load i64, i64* %RCX
  %1504 = load i64, i64* %PC
  %1505 = add i64 %1504, 3
  store i64 %1505, i64* %PC
  %1506 = add i64 %1503, %1502
  store i64 %1506, i64* %RAX, align 8, !tbaa !2451
  %1507 = icmp ult i64 %1506, %1502
  %1508 = icmp ult i64 %1506, %1503
  %1509 = or i1 %1507, %1508
  %1510 = zext i1 %1509 to i8
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1510, i8* %1511, align 1, !tbaa !2428
  %1512 = trunc i64 %1506 to i32
  %1513 = and i32 %1512, 255
  %1514 = call i32 @llvm.ctpop.i32(i32 %1513) #16
  %1515 = trunc i32 %1514 to i8
  %1516 = and i8 %1515, 1
  %1517 = xor i8 %1516, 1
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1517, i8* %1518, align 1, !tbaa !2445
  %1519 = xor i64 %1503, %1502
  %1520 = xor i64 %1519, %1506
  %1521 = lshr i64 %1520, 4
  %1522 = trunc i64 %1521 to i8
  %1523 = and i8 %1522, 1
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1523, i8* %1524, align 1, !tbaa !2446
  %1525 = icmp eq i64 %1506, 0
  %1526 = zext i1 %1525 to i8
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1526, i8* %1527, align 1, !tbaa !2447
  %1528 = lshr i64 %1506, 63
  %1529 = trunc i64 %1528 to i8
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1529, i8* %1530, align 1, !tbaa !2448
  %1531 = lshr i64 %1502, 63
  %1532 = lshr i64 %1503, 63
  %1533 = xor i64 %1528, %1531
  %1534 = xor i64 %1528, %1532
  %1535 = add nuw nsw i64 %1533, %1534
  %1536 = icmp eq i64 %1535, 2
  %1537 = zext i1 %1536 to i8
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1537, i8* %1538, align 1, !tbaa !2449
  %1539 = load i64, i64* %RBP
  %1540 = sub i64 %1539, 20
  %1541 = load i64, i64* %PC
  %1542 = add i64 %1541, 4
  store i64 %1542, i64* %PC
  %1543 = inttoptr i64 %1540 to i32*
  %1544 = load i32, i32* %1543
  %1545 = sext i32 %1544 to i64
  store i64 %1545, i64* %RCX, align 8, !tbaa !2451
  %1546 = load i64, i64* %RAX
  %1547 = load i64, i64* %RCX
  %1548 = add i64 %1547, %1546
  %1549 = load i64, i64* %PC
  %1550 = add i64 %1549, 4
  store i64 %1550, i64* %PC
  %1551 = inttoptr i64 %1548 to i8*
  %1552 = load i8, i8* %1551
  %1553 = sext i8 %1552 to i64
  %1554 = and i64 %1553, 4294967295
  store i64 %1554, i64* %RDX, align 8, !tbaa !2451
  %1555 = load i32, i32* %EDX
  %1556 = zext i32 %1555 to i64
  %1557 = load i64, i64* %PC
  %1558 = add i64 %1557, 3
  store i64 %1558, i64* %PC
  %1559 = sub i32 %1555, 124
  %1560 = icmp ult i32 %1555, 124
  %1561 = zext i1 %1560 to i8
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1561, i8* %1562, align 1, !tbaa !2428
  %1563 = and i32 %1559, 255
  %1564 = call i32 @llvm.ctpop.i32(i32 %1563) #16
  %1565 = trunc i32 %1564 to i8
  %1566 = and i8 %1565, 1
  %1567 = xor i8 %1566, 1
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1567, i8* %1568, align 1, !tbaa !2445
  %1569 = xor i64 124, %1556
  %1570 = trunc i64 %1569 to i32
  %1571 = xor i32 %1570, %1559
  %1572 = lshr i32 %1571, 4
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1574, i8* %1575, align 1, !tbaa !2446
  %1576 = icmp eq i32 %1559, 0
  %1577 = zext i1 %1576 to i8
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1577, i8* %1578, align 1, !tbaa !2447
  %1579 = lshr i32 %1559, 31
  %1580 = trunc i32 %1579 to i8
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1580, i8* %1581, align 1, !tbaa !2448
  %1582 = lshr i32 %1555, 31
  %1583 = xor i32 %1579, %1582
  %1584 = add nuw nsw i32 %1583, %1582
  %1585 = icmp eq i32 %1584, 2
  %1586 = zext i1 %1585 to i8
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1586, i8* %1587, align 1, !tbaa !2449
  %1588 = load i64, i64* %PC
  %1589 = add i64 %1588, 26
  %1590 = load i64, i64* %PC
  %1591 = add i64 %1590, 6
  %1592 = load i64, i64* %PC
  %1593 = add i64 %1592, 6
  store i64 %1593, i64* %PC
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1595 = load i8, i8* %1594, align 1, !tbaa !2447
  %1596 = icmp eq i8 %1595, 0
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1599 = select i1 %1596, i64 %1589, i64 %1591
  store i64 %1599, i64* %1598, align 8, !tbaa !2451
  %1600 = load i8, i8* %BRANCH_TAKEN
  %1601 = icmp eq i8 %1600, 1
  br i1 %1601, label %block_400813, label %block_4007ff

block_400813:                                     ; preds = %block_4007d9, %block_400809, %block_4007cf, %block_4007ff
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.0, %block_4007cf ], [ %MEMORY.0, %block_4007d9 ], [ %MEMORY.0, %block_4007ff ], [ %MEMORY.0, %block_400809 ]
  %1602 = load i64, i64* %RBP
  %1603 = sub i64 %1602, 28
  %1604 = load i64, i64* %PC
  %1605 = add i64 %1604, 3
  store i64 %1605, i64* %PC
  %1606 = inttoptr i64 %1603 to i32*
  %1607 = load i32, i32* %1606
  %1608 = zext i32 %1607 to i64
  store i64 %1608, i64* %RAX, align 8, !tbaa !2451
  %1609 = load i64, i64* %RBP
  %1610 = sub i64 %1609, 20
  %1611 = load i32, i32* %EAX
  %1612 = zext i32 %1611 to i64
  %1613 = load i64, i64* %PC
  %1614 = add i64 %1613, 3
  store i64 %1614, i64* %PC
  %1615 = inttoptr i64 %1610 to i32*
  store i32 %1611, i32* %1615
  %1616 = load i64, i64* %RBP
  %1617 = sub i64 %1616, 32
  %1618 = load i64, i64* %PC
  %1619 = add i64 %1618, 3
  store i64 %1619, i64* %PC
  %1620 = inttoptr i64 %1617 to i32*
  %1621 = load i32, i32* %1620
  %1622 = zext i32 %1621 to i64
  store i64 %1622, i64* %RAX, align 8, !tbaa !2451
  %1623 = load i64, i64* %RBP
  %1624 = sub i64 %1623, 24
  %1625 = load i32, i32* %EAX
  %1626 = zext i32 %1625 to i64
  %1627 = load i64, i64* %PC
  %1628 = add i64 %1627, 3
  store i64 %1628, i64* %PC
  %1629 = inttoptr i64 %1624 to i32*
  store i32 %1625, i32* %1629
  br label %block_40081f

block_400887:                                     ; preds = %block_4006a4
  %1630 = load i64, i64* %PC
  %1631 = add i64 %1630, 10
  store i64 %1631, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2451
  %1632 = load i64, i64* %PC
  %1633 = add i64 %1632, 2
  store i64 %1633, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %1634 = load i64, i64* %PC
  %1635 = sub i64 %1634, 1059
  %1636 = load i64, i64* %PC
  %1637 = add i64 %1636, 5
  %1638 = load i64, i64* %PC
  %1639 = add i64 %1638, 5
  store i64 %1639, i64* %PC
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1641 = load i64, i64* %1640, align 8, !tbaa !2451
  %1642 = add i64 %1641, -8
  %1643 = inttoptr i64 %1642 to i64*
  store i64 %1637, i64* %1643
  store i64 %1642, i64* %1640, align 8, !tbaa !2451
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1635, i64* %1644, align 8, !tbaa !2451
  %1645 = load i64, i64* %PC
  %1646 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1645, %struct.Memory* %MEMORY.2)
  %1647 = load i64, i64* %RBP
  %1648 = sub i64 %1647, 4
  %1649 = load i64, i64* %PC
  %1650 = add i64 %1649, 7
  store i64 %1650, i64* %PC
  %1651 = inttoptr i64 %1648 to i32*
  store i32 1, i32* %1651
  %1652 = load i64, i64* %RBP
  %1653 = sub i64 %1652, 108
  %1654 = load i32, i32* %EAX
  %1655 = zext i32 %1654 to i64
  %1656 = load i64, i64* %PC
  %1657 = add i64 %1656, 3
  store i64 %1657, i64* %PC
  %1658 = inttoptr i64 %1653 to i32*
  store i32 %1654, i32* %1658
  br label %block_4008a2

block_400837:                                     ; preds = %block_40082b
  %1659 = load i64, i64* %PC
  %1660 = add i64 %1659, 10
  store i64 %1660, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2451
  %1661 = load i64, i64* %PC
  %1662 = add i64 %1661, 2
  store i64 %1662, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %1663 = load i64, i64* %PC
  %1664 = sub i64 %1663, 979
  %1665 = load i64, i64* %PC
  %1666 = add i64 %1665, 5
  %1667 = load i64, i64* %PC
  %1668 = add i64 %1667, 5
  store i64 %1668, i64* %PC
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1670 = load i64, i64* %1669, align 8, !tbaa !2451
  %1671 = add i64 %1670, -8
  %1672 = inttoptr i64 %1671 to i64*
  store i64 %1666, i64* %1672
  store i64 %1671, i64* %1669, align 8, !tbaa !2451
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1664, i64* %1673, align 8, !tbaa !2451
  %1674 = load i64, i64* %PC
  %1675 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1674, %struct.Memory* %MEMORY.4)
  %1676 = load i64, i64* %RBP
  %1677 = sub i64 %1676, 4
  %1678 = load i64, i64* %PC
  %1679 = add i64 %1678, 7
  store i64 %1679, i64* %PC
  %1680 = inttoptr i64 %1677 to i32*
  store i32 2, i32* %1680
  %1681 = load i64, i64* %RBP
  %1682 = sub i64 %1681, 104
  %1683 = load i32, i32* %EAX
  %1684 = zext i32 %1683 to i64
  %1685 = load i64, i64* %PC
  %1686 = add i64 %1685, 3
  store i64 %1686, i64* %PC
  %1687 = inttoptr i64 %1682 to i32*
  store i32 %1683, i32* %1687
  %1688 = load i64, i64* %PC
  %1689 = add i64 %1688, 80
  %1690 = load i64, i64* %PC
  %1691 = add i64 %1690, 5
  store i64 %1691, i64* %PC
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1689, i64* %1692, align 8, !tbaa !2451
  br label %block_4008a2

block_400776:                                     ; preds = %block_400750
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2451
  %1693 = load i64, i64* %PC
  %1694 = add i64 %1693, 2
  store i64 %1694, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %1695 = load i64, i64* %PC
  %1696 = sub i64 %1695, 786
  %1697 = load i64, i64* %PC
  %1698 = add i64 %1697, 5
  %1699 = load i64, i64* %PC
  %1700 = add i64 %1699, 5
  store i64 %1700, i64* %PC
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1702 = load i64, i64* %1701, align 8, !tbaa !2451
  %1703 = add i64 %1702, -8
  %1704 = inttoptr i64 %1703 to i64*
  store i64 %1698, i64* %1704
  store i64 %1703, i64* %1701, align 8, !tbaa !2451
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1696, i64* %1705, align 8, !tbaa !2451
  %1706 = load i64, i64* %PC
  %1707 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1706, %struct.Memory* %MEMORY.0)
  %1708 = load i64, i64* %PC
  %1709 = add i64 %1708, 10
  store i64 %1709, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2451
  %1710 = load i64, i64* %RBP
  %1711 = sub i64 %1710, 64
  %1712 = load i64, i64* %PC
  %1713 = add i64 %1712, 4
  store i64 %1713, i64* %PC
  store i64 %1711, i64* %RSI, align 8, !tbaa !2451
  %1714 = load i64, i64* %RBP
  %1715 = sub i64 %1714, 96
  %1716 = load i32, i32* %EAX
  %1717 = zext i32 %1716 to i64
  %1718 = load i64, i64* %PC
  %1719 = add i64 %1718, 3
  store i64 %1719, i64* %PC
  %1720 = inttoptr i64 %1715 to i32*
  store i32 %1716, i32* %1720
  %1721 = load i64, i64* %PC
  %1722 = add i64 %1721, 2
  store i64 %1722, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %1723 = load i64, i64* %PC
  %1724 = sub i64 %1723, 810
  %1725 = load i64, i64* %PC
  %1726 = add i64 %1725, 5
  %1727 = load i64, i64* %PC
  %1728 = add i64 %1727, 5
  store i64 %1728, i64* %PC
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1730 = load i64, i64* %1729, align 8, !tbaa !2451
  %1731 = add i64 %1730, -8
  %1732 = inttoptr i64 %1731 to i64*
  store i64 %1726, i64* %1732
  store i64 %1731, i64* %1729, align 8, !tbaa !2451
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1724, i64* %1733, align 8, !tbaa !2451
  %1734 = load i64, i64* %PC
  %1735 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1734, %struct.Memory* %1707)
  %1736 = load i64, i64* %RDI
  %1737 = load i32, i32* %EDI
  %1738 = zext i32 %1737 to i64
  %1739 = load i64, i64* %PC
  %1740 = add i64 %1739, 2
  store i64 %1740, i64* %PC
  %1741 = xor i64 %1738, %1736
  %1742 = trunc i64 %1741 to i32
  %1743 = and i64 %1741, 4294967295
  store i64 %1743, i64* %RDI, align 8, !tbaa !2451
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1744, align 1, !tbaa !2428
  %1745 = and i32 %1742, 255
  %1746 = call i32 @llvm.ctpop.i32(i32 %1745) #16
  %1747 = trunc i32 %1746 to i8
  %1748 = and i8 %1747, 1
  %1749 = xor i8 %1748, 1
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1749, i8* %1750, align 1, !tbaa !2445
  %1751 = icmp eq i32 %1742, 0
  %1752 = zext i1 %1751 to i8
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1752, i8* %1753, align 1, !tbaa !2447
  %1754 = lshr i32 %1742, 31
  %1755 = trunc i32 %1754 to i8
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1755, i8* %1756, align 1, !tbaa !2448
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1757, align 1, !tbaa !2449
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1758, align 1, !tbaa !2446
  %1759 = load i64, i64* %RBP
  %1760 = sub i64 %1759, 100
  %1761 = load i32, i32* %EAX
  %1762 = zext i32 %1761 to i64
  %1763 = load i64, i64* %PC
  %1764 = add i64 %1763, 3
  store i64 %1764, i64* %PC
  %1765 = inttoptr i64 %1760 to i32*
  store i32 %1761, i32* %1765
  %1766 = load i64, i64* %PC
  %1767 = sub i64 %1766, 788
  %1768 = load i64, i64* %PC
  %1769 = add i64 %1768, 5
  %1770 = load i64, i64* %PC
  %1771 = add i64 %1770, 5
  store i64 %1771, i64* %PC
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1773 = load i64, i64* %1772, align 8, !tbaa !2451
  %1774 = add i64 %1773, -8
  %1775 = inttoptr i64 %1774 to i64*
  store i64 %1769, i64* %1775
  store i64 %1774, i64* %1772, align 8, !tbaa !2451
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1767, i64* %1776, align 8, !tbaa !2451
  %1777 = load i64, i64* %PC
  %1778 = call %struct.Memory* @ext_6010c8_exit(%struct.State* %0, i64 %1777, %struct.Memory* %1735)
  %1779 = load i64, i64* %PC
  %1780 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %1779, %struct.Memory* %1778)
  ret %struct.Memory* %1780

block_400702:                                     ; preds = %block_4006d8
  %1781 = load i64, i64* %RBP
  %1782 = sub i64 %1781, 20
  %1783 = load i64, i64* %PC
  %1784 = add i64 %1783, 3
  store i64 %1784, i64* %PC
  %1785 = inttoptr i64 %1782 to i32*
  %1786 = load i32, i32* %1785
  %1787 = zext i32 %1786 to i64
  store i64 %1787, i64* %RAX, align 8, !tbaa !2451
  %1788 = load i64, i64* %RAX
  %1789 = load i64, i64* %PC
  %1790 = add i64 %1789, 3
  store i64 %1790, i64* %PC
  %1791 = trunc i64 %1788 to i32
  %1792 = add i32 -1, %1791
  %1793 = zext i32 %1792 to i64
  store i64 %1793, i64* %RAX, align 8, !tbaa !2451
  %1794 = icmp ult i32 %1792, %1791
  %1795 = icmp ult i32 %1792, -1
  %1796 = or i1 %1794, %1795
  %1797 = zext i1 %1796 to i8
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1797, i8* %1798, align 1, !tbaa !2428
  %1799 = and i32 %1792, 255
  %1800 = call i32 @llvm.ctpop.i32(i32 %1799) #16
  %1801 = trunc i32 %1800 to i8
  %1802 = and i8 %1801, 1
  %1803 = xor i8 %1802, 1
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1803, i8* %1804, align 1, !tbaa !2445
  %1805 = xor i64 -1, %1788
  %1806 = trunc i64 %1805 to i32
  %1807 = xor i32 %1806, %1792
  %1808 = lshr i32 %1807, 4
  %1809 = trunc i32 %1808 to i8
  %1810 = and i8 %1809, 1
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1810, i8* %1811, align 1, !tbaa !2446
  %1812 = icmp eq i32 %1792, 0
  %1813 = zext i1 %1812 to i8
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1813, i8* %1814, align 1, !tbaa !2447
  %1815 = lshr i32 %1792, 31
  %1816 = trunc i32 %1815 to i8
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1816, i8* %1817, align 1, !tbaa !2448
  %1818 = lshr i32 %1791, 31
  %1819 = xor i32 %1815, %1818
  %1820 = xor i32 %1815, 1
  %1821 = add nuw nsw i32 %1819, %1820
  %1822 = icmp eq i32 %1821, 2
  %1823 = zext i1 %1822 to i8
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1823, i8* %1824, align 1, !tbaa !2449
  %1825 = load i64, i64* %RBP
  %1826 = sub i64 %1825, 20
  %1827 = load i32, i32* %EAX
  %1828 = zext i32 %1827 to i64
  %1829 = load i64, i64* %PC
  %1830 = add i64 %1829, 3
  store i64 %1830, i64* %PC
  %1831 = inttoptr i64 %1826 to i32*
  store i32 %1827, i32* %1831
  %1832 = load i64, i64* %PC
  %1833 = add i64 %1832, 69
  %1834 = load i64, i64* %PC
  %1835 = add i64 %1834, 5
  store i64 %1835, i64* %PC
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1833, i64* %1836, align 8, !tbaa !2451
  br label %block_400750

; <label>:1837:                                   ; preds = %block_4006d8
  %1838 = load i64, i64* %PC
  %1839 = tail call %struct.Memory* @__remill_missing_block(%struct.State* %0, i64 %1838, %struct.Memory* %MEMORY.2)
  ret %struct.Memory* %1839
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006f4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0
  %PC = bitcast %union.anon* %6 to i64*
  store i64 %1, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %10 = bitcast %union.anon* %9 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0
  %EAX = bitcast %union.anon* %13 to i32*
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %15 = getelementptr inbounds %struct.GPR, %struct.GPR* %14, i32 0, i32 7
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %15, i32 0, i32 0
  %EDX = bitcast %union.anon* %16 to i32*
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 11
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %EDI = bitcast %union.anon* %19 to i32*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RAX = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RCX = bitcast %union.anon* %25 to i64*
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %27 = getelementptr inbounds %struct.GPR, %struct.GPR* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.Reg, %struct.Reg* %27, i32 0, i32 0
  %RDX = bitcast %union.anon* %28 to i64*
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 9
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %RSI = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RDI = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 13
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RSP = bitcast %union.anon* %37 to i64*
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %39 = getelementptr inbounds %struct.GPR, %struct.GPR* %38, i32 0, i32 15
  %40 = getelementptr inbounds %struct.Reg, %struct.Reg* %39, i32 0, i32 0
  %RBP = bitcast %union.anon* %40 to i64*
  br label %block_4006f4

block_40081f:                                     ; preds = %block_400809, %block_4007a9, %block_400813
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_4007a9 ], [ %MEMORY.3, %block_400813 ], [ %MEMORY.2, %block_400809 ]
  %41 = load i64, i64* %RBP
  %42 = sub i64 %41, 28
  %43 = load i64, i64* %PC
  %44 = add i64 %43, 3
  store i64 %44, i64* %PC
  %45 = inttoptr i64 %42 to i32*
  %46 = load i32, i32* %45
  %47 = zext i32 %46 to i64
  store i64 %47, i64* %RAX, align 8, !tbaa !2451
  %48 = load i32, i32* %EAX
  %49 = zext i32 %48 to i64
  %50 = load i64, i64* %RBP
  %51 = sub i64 %50, 20
  %52 = load i64, i64* %PC
  %53 = add i64 %52, 3
  store i64 %53, i64* %PC
  %54 = inttoptr i64 %51 to i32*
  %55 = load i32, i32* %54
  %56 = sub i32 %48, %55
  %57 = icmp ult i32 %48, %55
  %58 = zext i1 %57 to i8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %58, i8* %59, align 1, !tbaa !2428
  %60 = and i32 %56, 255
  %61 = call i32 @llvm.ctpop.i32(i32 %60) #16
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  %64 = xor i8 %63, 1
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %64, i8* %65, align 1, !tbaa !2445
  %66 = xor i32 %55, %48
  %67 = xor i32 %66, %56
  %68 = lshr i32 %67, 4
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %70, i8* %71, align 1, !tbaa !2446
  %72 = icmp eq i32 %56, 0
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %73, i8* %74, align 1, !tbaa !2447
  %75 = lshr i32 %56, 31
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %76, i8* %77, align 1, !tbaa !2448
  %78 = lshr i32 %48, 31
  %79 = lshr i32 %55, 31
  %80 = xor i32 %79, %78
  %81 = xor i32 %75, %78
  %82 = add nuw nsw i32 %81, %80
  %83 = icmp eq i32 %82, 2
  %84 = zext i1 %83 to i8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %84, i8* %85, align 1, !tbaa !2449
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 50
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 6
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 6
  store i64 %91, i64* %PC
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %93 = load i8, i8* %92, align 1, !tbaa !2447
  %94 = icmp eq i8 %93, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %97 = select i1 %94, i64 %87, i64 %89
  store i64 %97, i64* %96, align 8, !tbaa !2451
  %98 = load i8, i8* %BRANCH_TAKEN
  %99 = icmp eq i8 %98, 1
  br i1 %99, label %block_400857, label %block_40082b

block_400857:                                     ; preds = %block_40082b, %block_40081f
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_40081f ], [ %MEMORY.0, %block_40082b ]
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 10
  store i64 %101, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %102 = load i64, i64* %RBP
  %103 = sub i64 %102, 24
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 4
  store i64 %105, i64* %PC
  %106 = inttoptr i64 %103 to i32*
  %107 = load i32, i32* %106
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %RCX, align 8, !tbaa !2451
  %109 = load i64, i64* %RCX
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC
  %112 = sext i64 %109 to i128
  %113 = and i128 %112, -18446744073709551616
  %114 = zext i64 %109 to i128
  %115 = or i128 %113, %114
  %116 = mul nsw i128 11, %115
  %117 = trunc i128 %116 to i64
  store i64 %117, i64* %RCX, align 8, !tbaa !2451
  %118 = sext i64 %117 to i128
  %119 = icmp ne i128 %118, %116
  %120 = zext i1 %119 to i8
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %120, i8* %121, align 1, !tbaa !2428
  %122 = trunc i128 %116 to i32
  %123 = and i32 %122, 255
  %124 = call i32 @llvm.ctpop.i32(i32 %123) #16
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %127, i8* %128, align 1, !tbaa !2445
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %129, align 1, !tbaa !2446
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %130, align 1, !tbaa !2447
  %131 = lshr i64 %117, 63
  %132 = trunc i64 %131 to i8
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %132, i8* %133, align 1, !tbaa !2448
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %120, i8* %134, align 1, !tbaa !2449
  %135 = load i64, i64* %RAX
  %136 = load i64, i64* %RCX
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 3
  store i64 %138, i64* %PC
  %139 = add i64 %136, %135
  store i64 %139, i64* %RAX, align 8, !tbaa !2451
  %140 = icmp ult i64 %139, %135
  %141 = icmp ult i64 %139, %136
  %142 = or i1 %140, %141
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %143, i8* %144, align 1, !tbaa !2428
  %145 = trunc i64 %139 to i32
  %146 = and i32 %145, 255
  %147 = call i32 @llvm.ctpop.i32(i32 %146) #16
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %150, i8* %151, align 1, !tbaa !2445
  %152 = xor i64 %136, %135
  %153 = xor i64 %152, %139
  %154 = lshr i64 %153, 4
  %155 = trunc i64 %154 to i8
  %156 = and i8 %155, 1
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %156, i8* %157, align 1, !tbaa !2446
  %158 = icmp eq i64 %139, 0
  %159 = zext i1 %158 to i8
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %159, i8* %160, align 1, !tbaa !2447
  %161 = lshr i64 %139, 63
  %162 = trunc i64 %161 to i8
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %162, i8* %163, align 1, !tbaa !2448
  %164 = lshr i64 %135, 63
  %165 = lshr i64 %136, 63
  %166 = xor i64 %161, %164
  %167 = xor i64 %161, %165
  %168 = add nuw nsw i64 %166, %167
  %169 = icmp eq i64 %168, 2
  %170 = zext i1 %169 to i8
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %170, i8* %171, align 1, !tbaa !2449
  %172 = load i64, i64* %RBP
  %173 = sub i64 %172, 20
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 4
  store i64 %175, i64* %PC
  %176 = inttoptr i64 %173 to i32*
  %177 = load i32, i32* %176
  %178 = sext i32 %177 to i64
  store i64 %178, i64* %RCX, align 8, !tbaa !2451
  %179 = load i64, i64* %RAX
  %180 = load i64, i64* %RCX
  %181 = add i64 %180, %179
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 4
  store i64 %183, i64* %PC
  %184 = inttoptr i64 %181 to i8*
  store i8 88, i8* %184
  %185 = load i64, i64* %PC
  %186 = sub i64 %185, 740
  %187 = load i64, i64* %PC
  %188 = add i64 %187, 5
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 5
  store i64 %190, i64* %PC
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %192 = load i64, i64* %191, align 8, !tbaa !2451
  %193 = add i64 %192, -8
  %194 = inttoptr i64 %193 to i64*
  store i64 %188, i64* %194
  store i64 %193, i64* %191, align 8, !tbaa !2451
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %186, i64* %195, align 8, !tbaa !2451
  %196 = load i64, i64* %PC
  %197 = call %struct.Memory* @sub_400590_draw(%struct.State* %0, i64 %196, %struct.Memory* %MEMORY.1)
  %198 = load i64, i64* %RBP
  %199 = sub i64 %198, 36
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 3
  store i64 %201, i64* %PC
  %202 = inttoptr i64 %199 to i32*
  %203 = load i32, i32* %202
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %RDX, align 8, !tbaa !2451
  %205 = load i64, i64* %RDX
  %206 = load i64, i64* %PC
  %207 = add i64 %206, 3
  store i64 %207, i64* %PC
  %208 = trunc i64 %205 to i32
  %209 = add i32 1, %208
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RDX, align 8, !tbaa !2451
  %211 = icmp ult i32 %209, %208
  %212 = icmp ult i32 %209, 1
  %213 = or i1 %211, %212
  %214 = zext i1 %213 to i8
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %214, i8* %215, align 1, !tbaa !2428
  %216 = and i32 %209, 255
  %217 = call i32 @llvm.ctpop.i32(i32 %216) #16
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %220, i8* %221, align 1, !tbaa !2445
  %222 = xor i64 1, %205
  %223 = trunc i64 %222 to i32
  %224 = xor i32 %223, %209
  %225 = lshr i32 %224, 4
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %227, i8* %228, align 1, !tbaa !2446
  %229 = icmp eq i32 %209, 0
  %230 = zext i1 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %230, i8* %231, align 1, !tbaa !2447
  %232 = lshr i32 %209, 31
  %233 = trunc i32 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %233, i8* %234, align 1, !tbaa !2448
  %235 = lshr i32 %208, 31
  %236 = xor i32 %232, %235
  %237 = add nuw nsw i32 %236, %232
  %238 = icmp eq i32 %237, 2
  %239 = zext i1 %238 to i8
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %239, i8* %240, align 1, !tbaa !2449
  %241 = load i64, i64* %RBP
  %242 = sub i64 %241, 36
  %243 = load i32, i32* %EDX
  %244 = zext i32 %243 to i64
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 3
  store i64 %246, i64* %PC
  %247 = inttoptr i64 %242 to i32*
  store i32 %243, i32* %247
  %248 = load i64, i64* %PC
  %249 = sub i64 %248, 478
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 5
  store i64 %251, i64* %PC
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %249, i64* %252, align 8, !tbaa !2451
  %253 = load i64, i64* %RBP
  %254 = sub i64 %253, 36
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 4
  store i64 %256, i64* %PC
  %257 = inttoptr i64 %254 to i32*
  %258 = load i32, i32* %257
  %259 = sub i32 %258, 28
  %260 = icmp ult i32 %258, 28
  %261 = zext i1 %260 to i8
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %261, i8* %262, align 1, !tbaa !2428
  %263 = and i32 %259, 255
  %264 = call i32 @llvm.ctpop.i32(i32 %263) #16
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  %267 = xor i8 %266, 1
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %267, i8* %268, align 1, !tbaa !2445
  %269 = xor i32 %258, 28
  %270 = xor i32 %269, %259
  %271 = lshr i32 %270, 4
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %273, i8* %274, align 1, !tbaa !2446
  %275 = icmp eq i32 %259, 0
  %276 = zext i1 %275 to i8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %276, i8* %277, align 1, !tbaa !2447
  %278 = lshr i32 %259, 31
  %279 = trunc i32 %278 to i8
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %279, i8* %280, align 1, !tbaa !2448
  %281 = lshr i32 %258, 31
  %282 = xor i32 %278, %281
  %283 = add nuw nsw i32 %282, %281
  %284 = icmp eq i32 %283, 2
  %285 = zext i1 %284 to i8
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %285, i8* %286, align 1, !tbaa !2449
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 479
  %289 = load i64, i64* %PC
  %290 = add i64 %289, 6
  %291 = load i64, i64* %PC
  %292 = add i64 %291, 6
  store i64 %292, i64* %PC
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %294 = load i8, i8* %293, align 1, !tbaa !2448
  %295 = icmp ne i8 %294, 0
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %297 = load i8, i8* %296, align 1, !tbaa !2449
  %298 = icmp ne i8 %297, 0
  %299 = xor i1 %295, %298
  %300 = xor i1 %299, true
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %303 = select i1 %299, i64 %290, i64 %288
  store i64 %303, i64* %302, align 8, !tbaa !2451
  %304 = load i8, i8* %BRANCH_TAKEN
  %305 = icmp eq i8 %304, 1
  br i1 %305, label %block_400887, label %block_4006ae

block_400837:                                     ; preds = %block_40082b
  %306 = load i64, i64* %PC
  %307 = add i64 %306, 10
  store i64 %307, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2451
  %308 = load i64, i64* %PC
  %309 = add i64 %308, 2
  store i64 %309, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %310 = load i64, i64* %PC
  %311 = sub i64 %310, 979
  %312 = load i64, i64* %PC
  %313 = add i64 %312, 5
  %314 = load i64, i64* %PC
  %315 = add i64 %314, 5
  store i64 %315, i64* %PC
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %317 = load i64, i64* %316, align 8, !tbaa !2451
  %318 = add i64 %317, -8
  %319 = inttoptr i64 %318 to i64*
  store i64 %313, i64* %319
  store i64 %318, i64* %316, align 8, !tbaa !2451
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %311, i64* %320, align 8, !tbaa !2451
  %321 = load i64, i64* %PC
  %322 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %321, %struct.Memory* %MEMORY.0)
  %323 = load i64, i64* %RBP
  %324 = sub i64 %323, 4
  %325 = load i64, i64* %PC
  %326 = add i64 %325, 7
  store i64 %326, i64* %PC
  %327 = inttoptr i64 %324 to i32*
  store i32 2, i32* %327
  %328 = load i64, i64* %RBP
  %329 = sub i64 %328, 104
  %330 = load i32, i32* %EAX
  %331 = zext i32 %330 to i64
  %332 = load i64, i64* %PC
  %333 = add i64 %332, 3
  store i64 %333, i64* %PC
  %334 = inttoptr i64 %329 to i32*
  store i32 %330, i32* %334
  %335 = load i64, i64* %PC
  %336 = add i64 %335, 80
  %337 = load i64, i64* %PC
  %338 = add i64 %337, 5
  store i64 %338, i64* %PC
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %336, i64* %339, align 8, !tbaa !2451
  br label %block_4008a2

block_4006f4:                                     ; preds = %block_4006d8, %3
  %MEMORY.2 = phi %struct.Memory* [ %2, %3 ], [ %197, %block_4006d8 ]
  %340 = load i64, i64* %RBP
  %341 = sub i64 %340, 24
  %342 = load i64, i64* %PC
  %343 = add i64 %342, 3
  store i64 %343, i64* %PC
  %344 = inttoptr i64 %341 to i32*
  %345 = load i32, i32* %344
  %346 = zext i32 %345 to i64
  store i64 %346, i64* %RAX, align 8, !tbaa !2451
  %347 = load i64, i64* %RAX
  %348 = load i64, i64* %PC
  %349 = add i64 %348, 3
  store i64 %349, i64* %PC
  %350 = trunc i64 %347 to i32
  %351 = add i32 1, %350
  %352 = zext i32 %351 to i64
  store i64 %352, i64* %RAX, align 8, !tbaa !2451
  %353 = icmp ult i32 %351, %350
  %354 = icmp ult i32 %351, 1
  %355 = or i1 %353, %354
  %356 = zext i1 %355 to i8
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %356, i8* %357, align 1, !tbaa !2428
  %358 = and i32 %351, 255
  %359 = call i32 @llvm.ctpop.i32(i32 %358) #16
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %362, i8* %363, align 1, !tbaa !2445
  %364 = xor i64 1, %347
  %365 = trunc i64 %364 to i32
  %366 = xor i32 %365, %351
  %367 = lshr i32 %366, 4
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %369, i8* %370, align 1, !tbaa !2446
  %371 = icmp eq i32 %351, 0
  %372 = zext i1 %371 to i8
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %372, i8* %373, align 1, !tbaa !2447
  %374 = lshr i32 %351, 31
  %375 = trunc i32 %374 to i8
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %375, i8* %376, align 1, !tbaa !2448
  %377 = lshr i32 %350, 31
  %378 = xor i32 %374, %377
  %379 = add nuw nsw i32 %378, %374
  %380 = icmp eq i32 %379, 2
  %381 = zext i1 %380 to i8
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %381, i8* %382, align 1, !tbaa !2449
  %383 = load i64, i64* %RBP
  %384 = sub i64 %383, 24
  %385 = load i32, i32* %EAX
  %386 = zext i32 %385 to i64
  %387 = load i64, i64* %PC
  %388 = add i64 %387, 3
  store i64 %388, i64* %PC
  %389 = inttoptr i64 %384 to i32*
  store i32 %385, i32* %389
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 83
  %392 = load i64, i64* %PC
  %393 = add i64 %392, 5
  store i64 %393, i64* %PC
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %391, i64* %394, align 8, !tbaa !2451
  %395 = load i64, i64* %PC
  %396 = add i64 %395, 10
  store i64 %396, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %397 = load i64, i64* %RBP
  %398 = sub i64 %397, 24
  %399 = load i64, i64* %PC
  %400 = add i64 %399, 4
  store i64 %400, i64* %PC
  %401 = inttoptr i64 %398 to i32*
  %402 = load i32, i32* %401
  %403 = sext i32 %402 to i64
  store i64 %403, i64* %RCX, align 8, !tbaa !2451
  %404 = load i64, i64* %RCX
  %405 = load i64, i64* %PC
  %406 = add i64 %405, 4
  store i64 %406, i64* %PC
  %407 = sext i64 %404 to i128
  %408 = and i128 %407, -18446744073709551616
  %409 = zext i64 %404 to i128
  %410 = or i128 %408, %409
  %411 = mul nsw i128 11, %410
  %412 = trunc i128 %411 to i64
  store i64 %412, i64* %RCX, align 8, !tbaa !2451
  %413 = sext i64 %412 to i128
  %414 = icmp ne i128 %413, %411
  %415 = zext i1 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %415, i8* %416, align 1, !tbaa !2428
  %417 = trunc i128 %411 to i32
  %418 = and i32 %417, 255
  %419 = call i32 @llvm.ctpop.i32(i32 %418) #16
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = xor i8 %421, 1
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %422, i8* %423, align 1, !tbaa !2445
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %424, align 1, !tbaa !2446
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %425, align 1, !tbaa !2447
  %426 = lshr i64 %412, 63
  %427 = trunc i64 %426 to i8
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %427, i8* %428, align 1, !tbaa !2448
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %415, i8* %429, align 1, !tbaa !2449
  %430 = load i64, i64* %RAX
  %431 = load i64, i64* %RCX
  %432 = load i64, i64* %PC
  %433 = add i64 %432, 3
  store i64 %433, i64* %PC
  %434 = add i64 %431, %430
  store i64 %434, i64* %RAX, align 8, !tbaa !2451
  %435 = icmp ult i64 %434, %430
  %436 = icmp ult i64 %434, %431
  %437 = or i1 %435, %436
  %438 = zext i1 %437 to i8
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %438, i8* %439, align 1, !tbaa !2428
  %440 = trunc i64 %434 to i32
  %441 = and i32 %440, 255
  %442 = call i32 @llvm.ctpop.i32(i32 %441) #16
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %445, i8* %446, align 1, !tbaa !2445
  %447 = xor i64 %431, %430
  %448 = xor i64 %447, %434
  %449 = lshr i64 %448, 4
  %450 = trunc i64 %449 to i8
  %451 = and i8 %450, 1
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %451, i8* %452, align 1, !tbaa !2446
  %453 = icmp eq i64 %434, 0
  %454 = zext i1 %453 to i8
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %454, i8* %455, align 1, !tbaa !2447
  %456 = lshr i64 %434, 63
  %457 = trunc i64 %456 to i8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %457, i8* %458, align 1, !tbaa !2448
  %459 = lshr i64 %430, 63
  %460 = lshr i64 %431, 63
  %461 = xor i64 %456, %459
  %462 = xor i64 %456, %460
  %463 = add nuw nsw i64 %461, %462
  %464 = icmp eq i64 %463, 2
  %465 = zext i1 %464 to i8
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %465, i8* %466, align 1, !tbaa !2449
  %467 = load i64, i64* %RBP
  %468 = sub i64 %467, 20
  %469 = load i64, i64* %PC
  %470 = add i64 %469, 4
  store i64 %470, i64* %PC
  %471 = inttoptr i64 %468 to i32*
  %472 = load i32, i32* %471
  %473 = sext i32 %472 to i64
  store i64 %473, i64* %RCX, align 8, !tbaa !2451
  %474 = load i64, i64* %RAX
  %475 = load i64, i64* %RCX
  %476 = add i64 %475, %474
  %477 = load i64, i64* %PC
  %478 = add i64 %477, 4
  store i64 %478, i64* %PC
  %479 = inttoptr i64 %476 to i8*
  %480 = load i8, i8* %479
  %481 = sext i8 %480 to i64
  %482 = and i64 %481, 4294967295
  store i64 %482, i64* %RDX, align 8, !tbaa !2451
  %483 = load i32, i32* %EDX
  %484 = zext i32 %483 to i64
  %485 = load i64, i64* %PC
  %486 = add i64 %485, 3
  store i64 %486, i64* %PC
  %487 = sub i32 %483, 35
  %488 = icmp ult i32 %483, 35
  %489 = zext i1 %488 to i8
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %489, i8* %490, align 1, !tbaa !2428
  %491 = and i32 %487, 255
  %492 = call i32 @llvm.ctpop.i32(i32 %491) #16
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %495, i8* %496, align 1, !tbaa !2445
  %497 = xor i64 35, %484
  %498 = trunc i64 %497 to i32
  %499 = xor i32 %498, %487
  %500 = lshr i32 %499, 4
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %502, i8* %503, align 1, !tbaa !2446
  %504 = icmp eq i32 %487, 0
  %505 = zext i1 %504 to i8
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %505, i8* %506, align 1, !tbaa !2447
  %507 = lshr i32 %487, 31
  %508 = trunc i32 %507 to i8
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %508, i8* %509, align 1, !tbaa !2448
  %510 = lshr i32 %483, 31
  %511 = xor i32 %507, %510
  %512 = add nuw nsw i32 %511, %510
  %513 = icmp eq i32 %512, 2
  %514 = zext i1 %513 to i8
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %514, i8* %515, align 1, !tbaa !2449
  %516 = load i64, i64* %PC
  %517 = add i64 %516, 57
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 6
  %520 = load i64, i64* %PC
  %521 = add i64 %520, 6
  store i64 %521, i64* %PC
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %523 = load i8, i8* %522, align 1, !tbaa !2447
  %524 = icmp eq i8 %523, 0
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %527 = select i1 %524, i64 %517, i64 %519
  store i64 %527, i64* %526, align 8, !tbaa !2451
  %528 = load i8, i8* %BRANCH_TAKEN
  %529 = icmp eq i8 %528, 1
  %530 = load i64, i64* %PC
  %531 = add i64 %530, 10
  store i64 %531, i64* %PC
  br i1 %529, label %block_4007a9, label %block_400776

block_400813:                                     ; preds = %block_400809, %block_4007cf, %block_4007d9, %block_4007ff
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_4007cf ], [ %MEMORY.2, %block_4007d9 ], [ %MEMORY.2, %block_4007ff ], [ %MEMORY.2, %block_400809 ]
  %532 = load i64, i64* %RBP
  %533 = sub i64 %532, 28
  %534 = load i64, i64* %PC
  %535 = add i64 %534, 3
  store i64 %535, i64* %PC
  %536 = inttoptr i64 %533 to i32*
  %537 = load i32, i32* %536
  %538 = zext i32 %537 to i64
  store i64 %538, i64* %RAX, align 8, !tbaa !2451
  %539 = load i64, i64* %RBP
  %540 = sub i64 %539, 20
  %541 = load i32, i32* %EAX
  %542 = zext i32 %541 to i64
  %543 = load i64, i64* %PC
  %544 = add i64 %543, 3
  store i64 %544, i64* %PC
  %545 = inttoptr i64 %540 to i32*
  store i32 %541, i32* %545
  %546 = load i64, i64* %RBP
  %547 = sub i64 %546, 32
  %548 = load i64, i64* %PC
  %549 = add i64 %548, 3
  store i64 %549, i64* %PC
  %550 = inttoptr i64 %547 to i32*
  %551 = load i32, i32* %550
  %552 = zext i32 %551 to i64
  store i64 %552, i64* %RAX, align 8, !tbaa !2451
  %553 = load i64, i64* %RBP
  %554 = sub i64 %553, 24
  %555 = load i32, i32* %EAX
  %556 = zext i32 %555 to i64
  %557 = load i64, i64* %PC
  %558 = add i64 %557, 3
  store i64 %558, i64* %PC
  %559 = inttoptr i64 %554 to i32*
  store i32 %555, i32* %559
  br label %block_40081f

block_4007ff:                                     ; preds = %block_4007d9
  %560 = load i64, i64* %RBP
  %561 = sub i64 %560, 20
  %562 = load i64, i64* %PC
  %563 = add i64 %562, 4
  store i64 %563, i64* %PC
  %564 = inttoptr i64 %561 to i32*
  %565 = load i32, i32* %564
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %566, align 1, !tbaa !2428
  %567 = and i32 %565, 255
  %568 = call i32 @llvm.ctpop.i32(i32 %567) #16
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %571, i8* %572, align 1, !tbaa !2445
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %573, align 1, !tbaa !2446
  %574 = icmp eq i32 %565, 0
  %575 = zext i1 %574 to i8
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %575, i8* %576, align 1, !tbaa !2447
  %577 = lshr i32 %565, 31
  %578 = trunc i32 %577 to i8
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %578, i8* %579, align 1, !tbaa !2448
  %580 = lshr i32 %565, 31
  %581 = xor i32 %577, %580
  %582 = add nuw nsw i32 %581, %580
  %583 = icmp eq i32 %582, 2
  %584 = zext i1 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %584, i8* %585, align 1, !tbaa !2449
  %586 = load i64, i64* %PC
  %587 = add i64 %586, 16
  %588 = load i64, i64* %PC
  %589 = add i64 %588, 6
  %590 = load i64, i64* %PC
  %591 = add i64 %590, 6
  store i64 %591, i64* %PC
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %593 = load i8, i8* %592, align 1, !tbaa !2447
  %594 = icmp ne i8 %593, 0
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %596 = load i8, i8* %595, align 1, !tbaa !2448
  %597 = icmp ne i8 %596, 0
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %599 = load i8, i8* %598, align 1, !tbaa !2449
  %600 = icmp ne i8 %599, 0
  %601 = xor i1 %597, %600
  %602 = or i1 %594, %601
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %605 = select i1 %602, i64 %587, i64 %589
  store i64 %605, i64* %604, align 8, !tbaa !2451
  %606 = load i8, i8* %BRANCH_TAKEN
  %607 = icmp eq i8 %606, 1
  br i1 %607, label %block_400813, label %block_400809

block_4007d9:                                     ; preds = %block_4007cf
  %608 = load i64, i64* %PC
  %609 = add i64 %608, 10
  store i64 %609, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %610 = load i64, i64* %RBP
  %611 = sub i64 %610, 24
  %612 = load i64, i64* %PC
  %613 = add i64 %612, 4
  store i64 %613, i64* %PC
  %614 = inttoptr i64 %611 to i32*
  %615 = load i32, i32* %614
  %616 = sext i32 %615 to i64
  store i64 %616, i64* %RCX, align 8, !tbaa !2451
  %617 = load i64, i64* %RCX
  %618 = load i64, i64* %PC
  %619 = add i64 %618, 4
  store i64 %619, i64* %PC
  %620 = sext i64 %617 to i128
  %621 = and i128 %620, -18446744073709551616
  %622 = zext i64 %617 to i128
  %623 = or i128 %621, %622
  %624 = mul nsw i128 11, %623
  %625 = trunc i128 %624 to i64
  store i64 %625, i64* %RCX, align 8, !tbaa !2451
  %626 = sext i64 %625 to i128
  %627 = icmp ne i128 %626, %624
  %628 = zext i1 %627 to i8
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %628, i8* %629, align 1, !tbaa !2428
  %630 = trunc i128 %624 to i32
  %631 = and i32 %630, 255
  %632 = call i32 @llvm.ctpop.i32(i32 %631) #16
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  %635 = xor i8 %634, 1
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %635, i8* %636, align 1, !tbaa !2445
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %637, align 1, !tbaa !2446
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %638, align 1, !tbaa !2447
  %639 = lshr i64 %625, 63
  %640 = trunc i64 %639 to i8
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %640, i8* %641, align 1, !tbaa !2448
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %628, i8* %642, align 1, !tbaa !2449
  %643 = load i64, i64* %RAX
  %644 = load i64, i64* %RCX
  %645 = load i64, i64* %PC
  %646 = add i64 %645, 3
  store i64 %646, i64* %PC
  %647 = add i64 %644, %643
  store i64 %647, i64* %RAX, align 8, !tbaa !2451
  %648 = icmp ult i64 %647, %643
  %649 = icmp ult i64 %647, %644
  %650 = or i1 %648, %649
  %651 = zext i1 %650 to i8
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %651, i8* %652, align 1, !tbaa !2428
  %653 = trunc i64 %647 to i32
  %654 = and i32 %653, 255
  %655 = call i32 @llvm.ctpop.i32(i32 %654) #16
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  %658 = xor i8 %657, 1
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %658, i8* %659, align 1, !tbaa !2445
  %660 = xor i64 %644, %643
  %661 = xor i64 %660, %647
  %662 = lshr i64 %661, 4
  %663 = trunc i64 %662 to i8
  %664 = and i8 %663, 1
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %664, i8* %665, align 1, !tbaa !2446
  %666 = icmp eq i64 %647, 0
  %667 = zext i1 %666 to i8
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %667, i8* %668, align 1, !tbaa !2447
  %669 = lshr i64 %647, 63
  %670 = trunc i64 %669 to i8
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %670, i8* %671, align 1, !tbaa !2448
  %672 = lshr i64 %643, 63
  %673 = lshr i64 %644, 63
  %674 = xor i64 %669, %672
  %675 = xor i64 %669, %673
  %676 = add nuw nsw i64 %674, %675
  %677 = icmp eq i64 %676, 2
  %678 = zext i1 %677 to i8
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %678, i8* %679, align 1, !tbaa !2449
  %680 = load i64, i64* %RBP
  %681 = sub i64 %680, 20
  %682 = load i64, i64* %PC
  %683 = add i64 %682, 4
  store i64 %683, i64* %PC
  %684 = inttoptr i64 %681 to i32*
  %685 = load i32, i32* %684
  %686 = sext i32 %685 to i64
  store i64 %686, i64* %RCX, align 8, !tbaa !2451
  %687 = load i64, i64* %RAX
  %688 = load i64, i64* %RCX
  %689 = add i64 %688, %687
  %690 = load i64, i64* %PC
  %691 = add i64 %690, 4
  store i64 %691, i64* %PC
  %692 = inttoptr i64 %689 to i8*
  %693 = load i8, i8* %692
  %694 = sext i8 %693 to i64
  %695 = and i64 %694, 4294967295
  store i64 %695, i64* %RDX, align 8, !tbaa !2451
  %696 = load i32, i32* %EDX
  %697 = zext i32 %696 to i64
  %698 = load i64, i64* %PC
  %699 = add i64 %698, 3
  store i64 %699, i64* %PC
  %700 = sub i32 %696, 124
  %701 = icmp ult i32 %696, 124
  %702 = zext i1 %701 to i8
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %702, i8* %703, align 1, !tbaa !2428
  %704 = and i32 %700, 255
  %705 = call i32 @llvm.ctpop.i32(i32 %704) #16
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  %708 = xor i8 %707, 1
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %708, i8* %709, align 1, !tbaa !2445
  %710 = xor i64 124, %697
  %711 = trunc i64 %710 to i32
  %712 = xor i32 %711, %700
  %713 = lshr i32 %712, 4
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %715, i8* %716, align 1, !tbaa !2446
  %717 = icmp eq i32 %700, 0
  %718 = zext i1 %717 to i8
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %718, i8* %719, align 1, !tbaa !2447
  %720 = lshr i32 %700, 31
  %721 = trunc i32 %720 to i8
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %721, i8* %722, align 1, !tbaa !2448
  %723 = lshr i32 %696, 31
  %724 = xor i32 %720, %723
  %725 = add nuw nsw i32 %724, %723
  %726 = icmp eq i32 %725, 2
  %727 = zext i1 %726 to i8
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %727, i8* %728, align 1, !tbaa !2449
  %729 = load i64, i64* %PC
  %730 = add i64 %729, 26
  %731 = load i64, i64* %PC
  %732 = add i64 %731, 6
  %733 = load i64, i64* %PC
  %734 = add i64 %733, 6
  store i64 %734, i64* %PC
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %736 = load i8, i8* %735, align 1, !tbaa !2447
  %737 = icmp eq i8 %736, 0
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %740 = select i1 %737, i64 %730, i64 %732
  store i64 %740, i64* %739, align 8, !tbaa !2451
  %741 = load i8, i8* %BRANCH_TAKEN
  %742 = icmp eq i8 %741, 1
  br i1 %742, label %block_400813, label %block_4007ff

block_400776:                                     ; preds = %block_4006f4
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2451
  %743 = load i64, i64* %PC
  %744 = add i64 %743, 2
  store i64 %744, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %745 = load i64, i64* %PC
  %746 = sub i64 %745, 786
  %747 = load i64, i64* %PC
  %748 = add i64 %747, 5
  %749 = load i64, i64* %PC
  %750 = add i64 %749, 5
  store i64 %750, i64* %PC
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %752 = load i64, i64* %751, align 8, !tbaa !2451
  %753 = add i64 %752, -8
  %754 = inttoptr i64 %753 to i64*
  store i64 %748, i64* %754
  store i64 %753, i64* %751, align 8, !tbaa !2451
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %746, i64* %755, align 8, !tbaa !2451
  %756 = load i64, i64* %PC
  %757 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %756, %struct.Memory* %MEMORY.2)
  %758 = load i64, i64* %PC
  %759 = add i64 %758, 10
  store i64 %759, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2451
  %760 = load i64, i64* %RBP
  %761 = sub i64 %760, 64
  %762 = load i64, i64* %PC
  %763 = add i64 %762, 4
  store i64 %763, i64* %PC
  store i64 %761, i64* %RSI, align 8, !tbaa !2451
  %764 = load i64, i64* %RBP
  %765 = sub i64 %764, 96
  %766 = load i32, i32* %EAX
  %767 = zext i32 %766 to i64
  %768 = load i64, i64* %PC
  %769 = add i64 %768, 3
  store i64 %769, i64* %PC
  %770 = inttoptr i64 %765 to i32*
  store i32 %766, i32* %770
  %771 = load i64, i64* %PC
  %772 = add i64 %771, 2
  store i64 %772, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %773 = load i64, i64* %PC
  %774 = sub i64 %773, 810
  %775 = load i64, i64* %PC
  %776 = add i64 %775, 5
  %777 = load i64, i64* %PC
  %778 = add i64 %777, 5
  store i64 %778, i64* %PC
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %780 = load i64, i64* %779, align 8, !tbaa !2451
  %781 = add i64 %780, -8
  %782 = inttoptr i64 %781 to i64*
  store i64 %776, i64* %782
  store i64 %781, i64* %779, align 8, !tbaa !2451
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %774, i64* %783, align 8, !tbaa !2451
  %784 = load i64, i64* %PC
  %785 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %784, %struct.Memory* %757)
  %786 = load i64, i64* %RDI
  %787 = load i32, i32* %EDI
  %788 = zext i32 %787 to i64
  %789 = load i64, i64* %PC
  %790 = add i64 %789, 2
  store i64 %790, i64* %PC
  %791 = xor i64 %788, %786
  %792 = trunc i64 %791 to i32
  %793 = and i64 %791, 4294967295
  store i64 %793, i64* %RDI, align 8, !tbaa !2451
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %794, align 1, !tbaa !2428
  %795 = and i32 %792, 255
  %796 = call i32 @llvm.ctpop.i32(i32 %795) #16
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %799, i8* %800, align 1, !tbaa !2445
  %801 = icmp eq i32 %792, 0
  %802 = zext i1 %801 to i8
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %802, i8* %803, align 1, !tbaa !2447
  %804 = lshr i32 %792, 31
  %805 = trunc i32 %804 to i8
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %805, i8* %806, align 1, !tbaa !2448
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %807, align 1, !tbaa !2449
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %808, align 1, !tbaa !2446
  %809 = load i64, i64* %RBP
  %810 = sub i64 %809, 100
  %811 = load i32, i32* %EAX
  %812 = zext i32 %811 to i64
  %813 = load i64, i64* %PC
  %814 = add i64 %813, 3
  store i64 %814, i64* %PC
  %815 = inttoptr i64 %810 to i32*
  store i32 %811, i32* %815
  %816 = load i64, i64* %PC
  %817 = sub i64 %816, 788
  %818 = load i64, i64* %PC
  %819 = add i64 %818, 5
  %820 = load i64, i64* %PC
  %821 = add i64 %820, 5
  store i64 %821, i64* %PC
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %823 = load i64, i64* %822, align 8, !tbaa !2451
  %824 = add i64 %823, -8
  %825 = inttoptr i64 %824 to i64*
  store i64 %819, i64* %825
  store i64 %824, i64* %822, align 8, !tbaa !2451
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %817, i64* %826, align 8, !tbaa !2451
  %827 = load i64, i64* %PC
  %828 = call %struct.Memory* @ext_6010c8_exit(%struct.State* %0, i64 %827, %struct.Memory* %785)
  %829 = load i64, i64* %PC
  %830 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %829, %struct.Memory* %828)
  ret %struct.Memory* %830

block_4006d8:                                     ; preds = %block_4006ae
  %831 = load i64, i64* %RBP
  %832 = sub i64 %831, 80
  %833 = load i64, i64* %PC
  %834 = add i64 %833, 4
  store i64 %834, i64* %PC
  %835 = inttoptr i64 %832 to i64*
  %836 = load i64, i64* %835
  store i64 %836, i64* %RAX, align 8, !tbaa !2451
  %837 = load i64, i64* %RAX
  %838 = mul i64 %837, 8
  %839 = add i64 %838, add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 8)
  %840 = load i64, i64* %PC
  %841 = add i64 %840, 8
  store i64 %841, i64* %PC
  %842 = inttoptr i64 %839 to i64*
  %843 = load i64, i64* %842
  store i64 %843, i64* %RCX, align 8, !tbaa !2451
  %844 = load i64, i64* %RCX
  %845 = load i64, i64* %PC
  %846 = add i64 %845, 2
  store i64 %846, i64* %PC
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %844, i64* %847, align 8, !tbaa !2451
  %848 = load i64, i64* %PC
  switch i64 %848, label %1384 [
    i64 4196098, label %block_400702
    i64 4196112, label %block_400710
    i64 4196084, label %block_4006f4
    i64 4196126, label %block_40071e
    i64 4196070, label %block_4006e6
  ]

block_4007a9:                                     ; preds = %block_4006f4
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2451
  %849 = load i64, i64* %RBP
  %850 = sub i64 %849, 24
  %851 = load i64, i64* %PC
  %852 = add i64 %851, 4
  store i64 %852, i64* %PC
  %853 = inttoptr i64 %850 to i32*
  %854 = load i32, i32* %853
  %855 = sext i32 %854 to i64
  store i64 %855, i64* %RCX, align 8, !tbaa !2451
  %856 = load i64, i64* %RCX
  %857 = load i64, i64* %PC
  %858 = add i64 %857, 4
  store i64 %858, i64* %PC
  %859 = sext i64 %856 to i128
  %860 = and i128 %859, -18446744073709551616
  %861 = zext i64 %856 to i128
  %862 = or i128 %860, %861
  %863 = mul nsw i128 11, %862
  %864 = trunc i128 %863 to i64
  store i64 %864, i64* %RCX, align 8, !tbaa !2451
  %865 = sext i64 %864 to i128
  %866 = icmp ne i128 %865, %863
  %867 = zext i1 %866 to i8
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %867, i8* %868, align 1, !tbaa !2428
  %869 = trunc i128 %863 to i32
  %870 = and i32 %869, 255
  %871 = call i32 @llvm.ctpop.i32(i32 %870) #16
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  %874 = xor i8 %873, 1
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %874, i8* %875, align 1, !tbaa !2445
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %876, align 1, !tbaa !2446
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %877, align 1, !tbaa !2447
  %878 = lshr i64 %864, 63
  %879 = trunc i64 %878 to i8
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %879, i8* %880, align 1, !tbaa !2448
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %867, i8* %881, align 1, !tbaa !2449
  %882 = load i64, i64* %RAX
  %883 = load i64, i64* %RCX
  %884 = load i64, i64* %PC
  %885 = add i64 %884, 3
  store i64 %885, i64* %PC
  %886 = add i64 %883, %882
  store i64 %886, i64* %RAX, align 8, !tbaa !2451
  %887 = icmp ult i64 %886, %882
  %888 = icmp ult i64 %886, %883
  %889 = or i1 %887, %888
  %890 = zext i1 %889 to i8
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %890, i8* %891, align 1, !tbaa !2428
  %892 = trunc i64 %886 to i32
  %893 = and i32 %892, 255
  %894 = call i32 @llvm.ctpop.i32(i32 %893) #16
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  %897 = xor i8 %896, 1
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %897, i8* %898, align 1, !tbaa !2445
  %899 = xor i64 %883, %882
  %900 = xor i64 %899, %886
  %901 = lshr i64 %900, 4
  %902 = trunc i64 %901 to i8
  %903 = and i8 %902, 1
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %903, i8* %904, align 1, !tbaa !2446
  %905 = icmp eq i64 %886, 0
  %906 = zext i1 %905 to i8
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %906, i8* %907, align 1, !tbaa !2447
  %908 = lshr i64 %886, 63
  %909 = trunc i64 %908 to i8
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %909, i8* %910, align 1, !tbaa !2448
  %911 = lshr i64 %882, 63
  %912 = lshr i64 %883, 63
  %913 = xor i64 %908, %911
  %914 = xor i64 %908, %912
  %915 = add nuw nsw i64 %913, %914
  %916 = icmp eq i64 %915, 2
  %917 = zext i1 %916 to i8
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %917, i8* %918, align 1, !tbaa !2449
  %919 = load i64, i64* %RBP
  %920 = sub i64 %919, 20
  %921 = load i64, i64* %PC
  %922 = add i64 %921, 4
  store i64 %922, i64* %PC
  %923 = inttoptr i64 %920 to i32*
  %924 = load i32, i32* %923
  %925 = sext i32 %924 to i64
  store i64 %925, i64* %RCX, align 8, !tbaa !2451
  %926 = load i64, i64* %RAX
  %927 = load i64, i64* %RCX
  %928 = add i64 %927, %926
  %929 = load i64, i64* %PC
  %930 = add i64 %929, 4
  store i64 %930, i64* %PC
  %931 = inttoptr i64 %928 to i8*
  %932 = load i8, i8* %931
  %933 = sext i8 %932 to i64
  %934 = and i64 %933, 4294967295
  store i64 %934, i64* %RDX, align 8, !tbaa !2451
  %935 = load i32, i32* %EDX
  %936 = zext i32 %935 to i64
  %937 = load i64, i64* %PC
  %938 = add i64 %937, 3
  store i64 %938, i64* %PC
  %939 = sub i32 %935, 32
  %940 = icmp ult i32 %935, 32
  %941 = zext i1 %940 to i8
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %941, i8* %942, align 1, !tbaa !2428
  %943 = and i32 %939, 255
  %944 = call i32 @llvm.ctpop.i32(i32 %943) #16
  %945 = trunc i32 %944 to i8
  %946 = and i8 %945, 1
  %947 = xor i8 %946, 1
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %947, i8* %948, align 1, !tbaa !2445
  %949 = xor i64 32, %936
  %950 = trunc i64 %949 to i32
  %951 = xor i32 %950, %939
  %952 = lshr i32 %951, 4
  %953 = trunc i32 %952 to i8
  %954 = and i8 %953, 1
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %954, i8* %955, align 1, !tbaa !2446
  %956 = icmp eq i32 %939, 0
  %957 = zext i1 %956 to i8
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %957, i8* %958, align 1, !tbaa !2447
  %959 = lshr i32 %939, 31
  %960 = trunc i32 %959 to i8
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %960, i8* %961, align 1, !tbaa !2448
  %962 = lshr i32 %935, 31
  %963 = xor i32 %959, %962
  %964 = add nuw nsw i32 %963, %962
  %965 = icmp eq i32 %964, 2
  %966 = zext i1 %965 to i8
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %966, i8* %967, align 1, !tbaa !2449
  %968 = load i64, i64* %PC
  %969 = add i64 %968, 86
  %970 = load i64, i64* %PC
  %971 = add i64 %970, 6
  %972 = load i64, i64* %PC
  %973 = add i64 %972, 6
  store i64 %973, i64* %PC
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %975 = load i8, i8* %974, align 1, !tbaa !2447
  store i8 %975, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %977 = icmp ne i8 %975, 0
  %978 = select i1 %977, i64 %969, i64 %971
  store i64 %978, i64* %976, align 8, !tbaa !2451
  %979 = load i8, i8* %BRANCH_TAKEN
  %980 = icmp eq i8 %979, 1
  br i1 %980, label %block_40081f, label %block_4007cf

block_4007cf:                                     ; preds = %block_4007a9
  %981 = load i64, i64* %RBP
  %982 = sub i64 %981, 24
  %983 = load i64, i64* %PC
  %984 = add i64 %983, 4
  store i64 %984, i64* %PC
  %985 = inttoptr i64 %982 to i32*
  %986 = load i32, i32* %985
  %987 = sub i32 %986, 2
  %988 = icmp ult i32 %986, 2
  %989 = zext i1 %988 to i8
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %989, i8* %990, align 1, !tbaa !2428
  %991 = and i32 %987, 255
  %992 = call i32 @llvm.ctpop.i32(i32 %991) #16
  %993 = trunc i32 %992 to i8
  %994 = and i8 %993, 1
  %995 = xor i8 %994, 1
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %995, i8* %996, align 1, !tbaa !2445
  %997 = xor i32 %986, 2
  %998 = xor i32 %997, %987
  %999 = lshr i32 %998, 4
  %1000 = trunc i32 %999 to i8
  %1001 = and i8 %1000, 1
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1001, i8* %1002, align 1, !tbaa !2446
  %1003 = icmp eq i32 %987, 0
  %1004 = zext i1 %1003 to i8
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1004, i8* %1005, align 1, !tbaa !2447
  %1006 = lshr i32 %987, 31
  %1007 = trunc i32 %1006 to i8
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1007, i8* %1008, align 1, !tbaa !2448
  %1009 = lshr i32 %986, 31
  %1010 = xor i32 %1006, %1009
  %1011 = add nuw nsw i32 %1010, %1009
  %1012 = icmp eq i32 %1011, 2
  %1013 = zext i1 %1012 to i8
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1013, i8* %1014, align 1, !tbaa !2449
  %1015 = load i64, i64* %PC
  %1016 = add i64 %1015, 64
  %1017 = load i64, i64* %PC
  %1018 = add i64 %1017, 6
  %1019 = load i64, i64* %PC
  %1020 = add i64 %1019, 6
  store i64 %1020, i64* %PC
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1022 = load i8, i8* %1021, align 1, !tbaa !2447
  %1023 = icmp eq i8 %1022, 0
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1026 = select i1 %1023, i64 %1016, i64 %1018
  store i64 %1026, i64* %1025, align 8, !tbaa !2451
  %1027 = load i8, i8* %BRANCH_TAKEN
  %1028 = icmp eq i8 %1027, 1
  br i1 %1028, label %block_400813, label %block_4007d9

block_4006ae:                                     ; preds = %block_400857
  %1029 = load i64, i64* %RBP
  %1030 = sub i64 %1029, 20
  %1031 = load i64, i64* %PC
  %1032 = add i64 %1031, 3
  store i64 %1032, i64* %PC
  %1033 = inttoptr i64 %1030 to i32*
  %1034 = load i32, i32* %1033
  %1035 = zext i32 %1034 to i64
  store i64 %1035, i64* %RAX, align 8, !tbaa !2451
  %1036 = load i64, i64* %RBP
  %1037 = sub i64 %1036, 28
  %1038 = load i32, i32* %EAX
  %1039 = zext i32 %1038 to i64
  %1040 = load i64, i64* %PC
  %1041 = add i64 %1040, 3
  store i64 %1041, i64* %PC
  %1042 = inttoptr i64 %1037 to i32*
  store i32 %1038, i32* %1042
  %1043 = load i64, i64* %RBP
  %1044 = sub i64 %1043, 24
  %1045 = load i64, i64* %PC
  %1046 = add i64 %1045, 3
  store i64 %1046, i64* %PC
  %1047 = inttoptr i64 %1044 to i32*
  %1048 = load i32, i32* %1047
  %1049 = zext i32 %1048 to i64
  store i64 %1049, i64* %RAX, align 8, !tbaa !2451
  %1050 = load i64, i64* %RBP
  %1051 = sub i64 %1050, 32
  %1052 = load i32, i32* %EAX
  %1053 = zext i32 %1052 to i64
  %1054 = load i64, i64* %PC
  %1055 = add i64 %1054, 3
  store i64 %1055, i64* %PC
  %1056 = inttoptr i64 %1051 to i32*
  store i32 %1052, i32* %1056
  %1057 = load i64, i64* %RBP
  %1058 = sub i64 %1057, 36
  %1059 = load i64, i64* %PC
  %1060 = add i64 %1059, 4
  store i64 %1060, i64* %PC
  %1061 = inttoptr i64 %1058 to i32*
  %1062 = load i32, i32* %1061
  %1063 = sext i32 %1062 to i64
  store i64 %1063, i64* %RCX, align 8, !tbaa !2451
  %1064 = load i64, i64* %RBP
  %1065 = load i64, i64* %RCX
  %1066 = add i64 %1064, -64
  %1067 = add i64 %1066, %1065
  %1068 = load i64, i64* %PC
  %1069 = add i64 %1068, 5
  store i64 %1069, i64* %PC
  %1070 = inttoptr i64 %1067 to i8*
  %1071 = load i8, i8* %1070
  %1072 = sext i8 %1071 to i64
  %1073 = and i64 %1072, 4294967295
  store i64 %1073, i64* %RAX, align 8, !tbaa !2451
  %1074 = load i64, i64* %RAX
  %1075 = load i64, i64* %PC
  %1076 = add i64 %1075, 3
  store i64 %1076, i64* %PC
  %1077 = trunc i64 %1074 to i32
  %1078 = add i32 -97, %1077
  %1079 = zext i32 %1078 to i64
  store i64 %1079, i64* %RAX, align 8, !tbaa !2451
  %1080 = icmp ult i32 %1078, %1077
  %1081 = icmp ult i32 %1078, -97
  %1082 = or i1 %1080, %1081
  %1083 = zext i1 %1082 to i8
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1083, i8* %1084, align 1, !tbaa !2428
  %1085 = and i32 %1078, 255
  %1086 = call i32 @llvm.ctpop.i32(i32 %1085) #16
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  %1089 = xor i8 %1088, 1
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1089, i8* %1090, align 1, !tbaa !2445
  %1091 = xor i64 -97, %1074
  %1092 = trunc i64 %1091 to i32
  %1093 = xor i32 %1092, %1078
  %1094 = lshr i32 %1093, 4
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1096, i8* %1097, align 1, !tbaa !2446
  %1098 = icmp eq i32 %1078, 0
  %1099 = zext i1 %1098 to i8
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1099, i8* %1100, align 1, !tbaa !2447
  %1101 = lshr i32 %1078, 31
  %1102 = trunc i32 %1101 to i8
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1102, i8* %1103, align 1, !tbaa !2448
  %1104 = lshr i32 %1077, 31
  %1105 = xor i32 %1101, %1104
  %1106 = xor i32 %1101, 1
  %1107 = add nuw nsw i32 %1105, %1106
  %1108 = icmp eq i32 %1107, 2
  %1109 = zext i1 %1108 to i8
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1109, i8* %1110, align 1, !tbaa !2449
  %1111 = load i32, i32* %EAX
  %1112 = zext i32 %1111 to i64
  %1113 = load i64, i64* %PC
  %1114 = add i64 %1113, 2
  store i64 %1114, i64* %PC
  %1115 = and i64 %1112, 4294967295
  store i64 %1115, i64* %RCX, align 8, !tbaa !2451
  %1116 = load i64, i64* %RAX
  %1117 = load i64, i64* %PC
  %1118 = add i64 %1117, 3
  store i64 %1118, i64* %PC
  %1119 = trunc i64 %1116 to i32
  %1120 = sub i32 %1119, 22
  %1121 = zext i32 %1120 to i64
  store i64 %1121, i64* %RAX, align 8, !tbaa !2451
  %1122 = icmp ult i32 %1119, 22
  %1123 = zext i1 %1122 to i8
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1123, i8* %1124, align 1, !tbaa !2428
  %1125 = and i32 %1120, 255
  %1126 = call i32 @llvm.ctpop.i32(i32 %1125) #16
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = xor i8 %1128, 1
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1129, i8* %1130, align 1, !tbaa !2445
  %1131 = xor i64 22, %1116
  %1132 = trunc i64 %1131 to i32
  %1133 = xor i32 %1132, %1120
  %1134 = lshr i32 %1133, 4
  %1135 = trunc i32 %1134 to i8
  %1136 = and i8 %1135, 1
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1136, i8* %1137, align 1, !tbaa !2446
  %1138 = icmp eq i32 %1120, 0
  %1139 = zext i1 %1138 to i8
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1139, i8* %1140, align 1, !tbaa !2447
  %1141 = lshr i32 %1120, 31
  %1142 = trunc i32 %1141 to i8
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1142, i8* %1143, align 1, !tbaa !2448
  %1144 = lshr i32 %1119, 31
  %1145 = xor i32 %1141, %1144
  %1146 = add nuw nsw i32 %1145, %1144
  %1147 = icmp eq i32 %1146, 2
  %1148 = zext i1 %1147 to i8
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1148, i8* %1149, align 1, !tbaa !2449
  %1150 = load i64, i64* %RBP
  %1151 = sub i64 %1150, 80
  %1152 = load i64, i64* %RCX
  %1153 = load i64, i64* %PC
  %1154 = add i64 %1153, 4
  store i64 %1154, i64* %PC
  %1155 = inttoptr i64 %1151 to i64*
  store i64 %1152, i64* %1155
  %1156 = load i64, i64* %RBP
  %1157 = sub i64 %1156, 84
  %1158 = load i32, i32* %EAX
  %1159 = zext i32 %1158 to i64
  %1160 = load i64, i64* %PC
  %1161 = add i64 %1160, 3
  store i64 %1161, i64* %PC
  %1162 = inttoptr i64 %1157 to i32*
  store i32 %1158, i32* %1162
  %1163 = load i64, i64* %PC
  %1164 = add i64 %1163, 76
  %1165 = load i64, i64* %PC
  %1166 = add i64 %1165, 6
  %1167 = load i64, i64* %PC
  %1168 = add i64 %1167, 6
  store i64 %1168, i64* %PC
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1170 = load i8, i8* %1169, align 1, !tbaa !2428
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1172 = load i8, i8* %1171, align 1, !tbaa !2447
  %1173 = or i8 %1172, %1170
  %1174 = icmp eq i8 %1173, 0
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1177 = select i1 %1174, i64 %1164, i64 %1166
  store i64 %1177, i64* %1176, align 8, !tbaa !2451
  %1178 = load i8, i8* %BRANCH_TAKEN
  %1179 = icmp eq i8 %1178, 1
  br i1 %1179, label %block_40071e, label %block_4006d8

block_40082b:                                     ; preds = %block_40081f
  %1180 = load i64, i64* %RBP
  %1181 = sub i64 %1180, 32
  %1182 = load i64, i64* %PC
  %1183 = add i64 %1182, 3
  store i64 %1183, i64* %PC
  %1184 = inttoptr i64 %1181 to i32*
  %1185 = load i32, i32* %1184
  %1186 = zext i32 %1185 to i64
  store i64 %1186, i64* %RAX, align 8, !tbaa !2451
  %1187 = load i32, i32* %EAX
  %1188 = zext i32 %1187 to i64
  %1189 = load i64, i64* %RBP
  %1190 = sub i64 %1189, 24
  %1191 = load i64, i64* %PC
  %1192 = add i64 %1191, 3
  store i64 %1192, i64* %PC
  %1193 = inttoptr i64 %1190 to i32*
  %1194 = load i32, i32* %1193
  %1195 = sub i32 %1187, %1194
  %1196 = icmp ult i32 %1187, %1194
  %1197 = zext i1 %1196 to i8
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1197, i8* %1198, align 1, !tbaa !2428
  %1199 = and i32 %1195, 255
  %1200 = call i32 @llvm.ctpop.i32(i32 %1199) #16
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1203, i8* %1204, align 1, !tbaa !2445
  %1205 = xor i32 %1194, %1187
  %1206 = xor i32 %1205, %1195
  %1207 = lshr i32 %1206, 4
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1209, i8* %1210, align 1, !tbaa !2446
  %1211 = icmp eq i32 %1195, 0
  %1212 = zext i1 %1211 to i8
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1212, i8* %1213, align 1, !tbaa !2447
  %1214 = lshr i32 %1195, 31
  %1215 = trunc i32 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1215, i8* %1216, align 1, !tbaa !2448
  %1217 = lshr i32 %1187, 31
  %1218 = lshr i32 %1194, 31
  %1219 = xor i32 %1218, %1217
  %1220 = xor i32 %1214, %1217
  %1221 = add nuw nsw i32 %1220, %1219
  %1222 = icmp eq i32 %1221, 2
  %1223 = zext i1 %1222 to i8
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1223, i8* %1224, align 1, !tbaa !2449
  %1225 = load i64, i64* %PC
  %1226 = add i64 %1225, 38
  %1227 = load i64, i64* %PC
  %1228 = add i64 %1227, 6
  %1229 = load i64, i64* %PC
  %1230 = add i64 %1229, 6
  store i64 %1230, i64* %PC
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1232 = load i8, i8* %1231, align 1, !tbaa !2447
  %1233 = icmp eq i8 %1232, 0
  %1234 = zext i1 %1233 to i8
  store i8 %1234, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1236 = select i1 %1233, i64 %1226, i64 %1228
  store i64 %1236, i64* %1235, align 8, !tbaa !2451
  %1237 = load i8, i8* %BRANCH_TAKEN
  %1238 = icmp eq i8 %1237, 1
  br i1 %1238, label %block_400857, label %block_400837

block_400809:                                     ; preds = %block_4007ff
  %1239 = load i64, i64* %RBP
  %1240 = sub i64 %1239, 20
  %1241 = load i64, i64* %PC
  %1242 = add i64 %1241, 4
  store i64 %1242, i64* %PC
  %1243 = inttoptr i64 %1240 to i32*
  %1244 = load i32, i32* %1243
  %1245 = sub i32 %1244, 11
  %1246 = icmp ult i32 %1244, 11
  %1247 = zext i1 %1246 to i8
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1247, i8* %1248, align 1, !tbaa !2428
  %1249 = and i32 %1245, 255
  %1250 = call i32 @llvm.ctpop.i32(i32 %1249) #16
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1253, i8* %1254, align 1, !tbaa !2445
  %1255 = xor i32 %1244, 11
  %1256 = xor i32 %1255, %1245
  %1257 = lshr i32 %1256, 4
  %1258 = trunc i32 %1257 to i8
  %1259 = and i8 %1258, 1
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1259, i8* %1260, align 1, !tbaa !2446
  %1261 = icmp eq i32 %1245, 0
  %1262 = zext i1 %1261 to i8
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1262, i8* %1263, align 1, !tbaa !2447
  %1264 = lshr i32 %1245, 31
  %1265 = trunc i32 %1264 to i8
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1265, i8* %1266, align 1, !tbaa !2448
  %1267 = lshr i32 %1244, 31
  %1268 = xor i32 %1264, %1267
  %1269 = add nuw nsw i32 %1268, %1267
  %1270 = icmp eq i32 %1269, 2
  %1271 = zext i1 %1270 to i8
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1271, i8* %1272, align 1, !tbaa !2449
  %1273 = load i64, i64* %PC
  %1274 = add i64 %1273, 18
  %1275 = load i64, i64* %PC
  %1276 = add i64 %1275, 6
  %1277 = load i64, i64* %PC
  %1278 = add i64 %1277, 6
  store i64 %1278, i64* %PC
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1280 = load i8, i8* %1279, align 1, !tbaa !2448
  %1281 = icmp ne i8 %1280, 0
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1283 = load i8, i8* %1282, align 1, !tbaa !2449
  %1284 = icmp ne i8 %1283, 0
  %1285 = xor i1 %1281, %1284
  %1286 = zext i1 %1285 to i8
  store i8 %1286, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1288 = select i1 %1285, i64 %1274, i64 %1276
  store i64 %1288, i64* %1287, align 8, !tbaa !2451
  %1289 = load i8, i8* %BRANCH_TAKEN
  %1290 = icmp eq i8 %1289, 1
  br i1 %1290, label %block_40081f, label %block_400813

block_400887:                                     ; preds = %block_400857
  %1291 = load i64, i64* %PC
  %1292 = add i64 %1291, 10
  store i64 %1292, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400930__rodata_type* @seg_400930__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2451
  %1293 = load i64, i64* %PC
  %1294 = add i64 %1293, 2
  store i64 %1294, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %1295 = load i64, i64* %PC
  %1296 = sub i64 %1295, 1059
  %1297 = load i64, i64* %PC
  %1298 = add i64 %1297, 5
  %1299 = load i64, i64* %PC
  %1300 = add i64 %1299, 5
  store i64 %1300, i64* %PC
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1302 = load i64, i64* %1301, align 8, !tbaa !2451
  %1303 = add i64 %1302, -8
  %1304 = inttoptr i64 %1303 to i64*
  store i64 %1298, i64* %1304
  store i64 %1303, i64* %1301, align 8, !tbaa !2451
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1296, i64* %1305, align 8, !tbaa !2451
  %1306 = load i64, i64* %PC
  %1307 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1306, %struct.Memory* %197)
  %1308 = load i64, i64* %RBP
  %1309 = sub i64 %1308, 4
  %1310 = load i64, i64* %PC
  %1311 = add i64 %1310, 7
  store i64 %1311, i64* %PC
  %1312 = inttoptr i64 %1309 to i32*
  store i32 1, i32* %1312
  %1313 = load i64, i64* %RBP
  %1314 = sub i64 %1313, 108
  %1315 = load i32, i32* %EAX
  %1316 = zext i32 %1315 to i64
  %1317 = load i64, i64* %PC
  %1318 = add i64 %1317, 3
  store i64 %1318, i64* %PC
  %1319 = inttoptr i64 %1314 to i32*
  store i32 %1315, i32* %1319
  br label %block_4008a2

block_4008a2:                                     ; preds = %block_400887, %block_400837
  %MEMORY.4 = phi %struct.Memory* [ %1307, %block_400887 ], [ %322, %block_400837 ]
  %1320 = load i64, i64* %RBP
  %1321 = sub i64 %1320, 4
  %1322 = load i64, i64* %PC
  %1323 = add i64 %1322, 3
  store i64 %1323, i64* %PC
  %1324 = inttoptr i64 %1321 to i32*
  %1325 = load i32, i32* %1324
  %1326 = zext i32 %1325 to i64
  store i64 %1326, i64* %RAX, align 8, !tbaa !2451
  %1327 = load i64, i64* %RSP
  %1328 = load i64, i64* %PC
  %1329 = add i64 %1328, 4
  store i64 %1329, i64* %PC
  %1330 = add i64 112, %1327
  store i64 %1330, i64* %RSP, align 8, !tbaa !2451
  %1331 = icmp ult i64 %1330, %1327
  %1332 = icmp ult i64 %1330, 112
  %1333 = or i1 %1331, %1332
  %1334 = zext i1 %1333 to i8
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1334, i8* %1335, align 1, !tbaa !2428
  %1336 = trunc i64 %1330 to i32
  %1337 = and i32 %1336, 255
  %1338 = call i32 @llvm.ctpop.i32(i32 %1337) #16
  %1339 = trunc i32 %1338 to i8
  %1340 = and i8 %1339, 1
  %1341 = xor i8 %1340, 1
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1341, i8* %1342, align 1, !tbaa !2445
  %1343 = xor i64 112, %1327
  %1344 = xor i64 %1343, %1330
  %1345 = lshr i64 %1344, 4
  %1346 = trunc i64 %1345 to i8
  %1347 = and i8 %1346, 1
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1347, i8* %1348, align 1, !tbaa !2446
  %1349 = icmp eq i64 %1330, 0
  %1350 = zext i1 %1349 to i8
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1350, i8* %1351, align 1, !tbaa !2447
  %1352 = lshr i64 %1330, 63
  %1353 = trunc i64 %1352 to i8
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1353, i8* %1354, align 1, !tbaa !2448
  %1355 = lshr i64 %1327, 63
  %1356 = xor i64 %1352, %1355
  %1357 = add nuw nsw i64 %1356, %1352
  %1358 = icmp eq i64 %1357, 2
  %1359 = zext i1 %1358 to i8
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1359, i8* %1360, align 1, !tbaa !2449
  %1361 = load i64, i64* %PC
  %1362 = add i64 %1361, 1
  store i64 %1362, i64* %PC
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1364 = load i64, i64* %1363, align 8, !tbaa !2451
  %1365 = add i64 %1364, 8
  %1366 = inttoptr i64 %1364 to i64*
  %1367 = load i64, i64* %1366
  store i64 %1367, i64* %RBP, align 8, !tbaa !2451
  store i64 %1365, i64* %1363, align 8, !tbaa !2451
  %1368 = load i64, i64* %PC
  %1369 = add i64 %1368, 1
  store i64 %1369, i64* %PC
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1372 = load i64, i64* %1371, align 8, !tbaa !2451
  %1373 = inttoptr i64 %1372 to i64*
  %1374 = load i64, i64* %1373
  store i64 %1374, i64* %1370, align 8, !tbaa !2451
  %1375 = add i64 %1372, 8
  store i64 %1375, i64* %1371, align 8, !tbaa !2451
  ret %struct.Memory* %MEMORY.4

block_40071e:                                     ; preds = %block_4006ae, %block_4006d8
  %MEMORY.5 = phi %struct.Memory* [ %197, %block_4006ae ], [ %197, %block_4006d8 ]
  %1376 = load i64, i64* %PC
  %1377 = tail call %struct.Memory* @sub_40071e(%struct.State* %0, i64 %1376, %struct.Memory* %MEMORY.5)
  ret %struct.Memory* %1377

block_4006e6:                                     ; preds = %block_4006d8
  %1378 = load i64, i64* %PC
  %1379 = tail call %struct.Memory* @sub_4006e6(%struct.State* %0, i64 %1378, %struct.Memory* %197)
  ret %struct.Memory* %1379

block_400710:                                     ; preds = %block_4006d8
  %1380 = load i64, i64* %PC
  %1381 = tail call %struct.Memory* @sub_400710(%struct.State* %0, i64 %1380, %struct.Memory* %197)
  ret %struct.Memory* %1381

block_400702:                                     ; preds = %block_4006d8
  %1382 = load i64, i64* %PC
  %1383 = tail call %struct.Memory* @sub_400702(%struct.State* %0, i64 %1382, %struct.Memory* %197)
  ret %struct.Memory* %1383

; <label>:1384:                                   ; preds = %block_4006d8
  %1385 = load i64, i64* %PC
  %1386 = tail call %struct.Memory* @__remill_missing_block(%struct.State* %0, i64 %1385, %struct.Memory* %197)
  ret %struct.Memory* %1386
}

; Function Attrs: noinline
define %struct.Memory* @sub_400580_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400580:
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
  %12 = load i64, i64* %RBP
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 1
  store i64 %14, i64* %PC
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %16 = load i64, i64* %15, align 8, !tbaa !2451
  %17 = add i64 %16, -8
  %18 = inttoptr i64 %17 to i64*
  store i64 %12, i64* %18
  store i64 %17, i64* %15, align 8, !tbaa !2451
  %19 = load i64, i64* %RSP
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  store i64 %19, i64* %RBP, align 8, !tbaa !2451
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 1
  store i64 %23, i64* %PC
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %25 = load i64, i64* %24, align 8, !tbaa !2451
  %26 = add i64 %25, 8
  %27 = inttoptr i64 %25 to i64*
  %28 = load i64, i64* %27
  store i64 %28, i64* %RBP, align 8, !tbaa !2451
  store i64 %26, i64* %24, align 8, !tbaa !2451
  %29 = load i64, i64* %PC
  %30 = sub i64 %29, 117
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 2
  store i64 %32, i64* %PC
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %30, i64* %33, align 8, !tbaa !2451
  %34 = load i64, i64* %PC
  %35 = tail call %struct.Memory* @sub_400510_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_4008b0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4008b0:
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
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 27
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %R13D = bitcast %union.anon* %17 to i32*
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
  %55 = load i64, i64* %54, align 8, !tbaa !2451
  %56 = add i64 %55, -8
  %57 = inttoptr i64 %56 to i64*
  store i64 %51, i64* %57
  store i64 %56, i64* %54, align 8, !tbaa !2451
  %58 = load i64, i64* %R14
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 2
  store i64 %60, i64* %PC
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %62 = load i64, i64* %61, align 8, !tbaa !2451
  %63 = add i64 %62, -8
  %64 = inttoptr i64 %63 to i64*
  store i64 %58, i64* %64
  store i64 %63, i64* %61, align 8, !tbaa !2451
  %65 = load i64, i64* %RDX
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 3
  store i64 %67, i64* %PC
  store i64 %65, i64* %R15, align 8, !tbaa !2451
  %68 = load i64, i64* %R13
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 2
  store i64 %70, i64* %PC
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %72 = load i64, i64* %71, align 8, !tbaa !2451
  %73 = add i64 %72, -8
  %74 = inttoptr i64 %73 to i64*
  store i64 %68, i64* %74
  store i64 %73, i64* %71, align 8, !tbaa !2451
  %75 = load i64, i64* %R12
  %76 = load i64, i64* %PC
  %77 = add i64 %76, 2
  store i64 %77, i64* %PC
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %79 = load i64, i64* %78, align 8, !tbaa !2451
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*
  store i64 %75, i64* %81
  store i64 %80, i64* %78, align 8, !tbaa !2451
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 7
  store i64 %83, i64* %PC
  store i64 ptrtoint (%seg_600e00__init_array_type* @seg_600e00__init_array to i64), i64* %R12, align 8, !tbaa !2451
  %84 = load i64, i64* %RBP
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 1
  store i64 %86, i64* %PC
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %88 = load i64, i64* %87, align 8, !tbaa !2451
  %89 = add i64 %88, -8
  %90 = inttoptr i64 %89 to i64*
  store i64 %84, i64* %90
  store i64 %89, i64* %87, align 8, !tbaa !2451
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 7
  store i64 %92, i64* %PC
  store i64 add (i64 ptrtoint (%seg_600e00__init_array_type* @seg_600e00__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2451
  %93 = load i64, i64* %RBX
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 1
  store i64 %95, i64* %PC
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %97 = load i64, i64* %96, align 8, !tbaa !2451
  %98 = add i64 %97, -8
  %99 = inttoptr i64 %98 to i64*
  store i64 %93, i64* %99
  store i64 %98, i64* %96, align 8, !tbaa !2451
  %100 = bitcast i32* %R13D to i64*
  %101 = load i32, i32* %EDI
  %102 = zext i32 %101 to i64
  %103 = load i64, i64* %PC
  %104 = add i64 %103, 3
  store i64 %104, i64* %PC
  %105 = and i64 %102, 4294967295
  store i64 %105, i64* %100, align 8, !tbaa !2451
  %106 = load i64, i64* %RSI
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 3
  store i64 %108, i64* %PC
  store i64 %106, i64* %R14, align 8, !tbaa !2451
  %109 = load i64, i64* %RBP
  %110 = load i64, i64* %R12
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC
  %113 = sub i64 %109, %110
  store i64 %113, i64* %RBP, align 8, !tbaa !2451
  %114 = icmp ult i64 %109, %110
  %115 = zext i1 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %115, i8* %116, align 1, !tbaa !2428
  %117 = trunc i64 %113 to i32
  %118 = and i32 %117, 255
  %119 = call i32 @llvm.ctpop.i32(i32 %118) #16
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %122, i8* %123, align 1, !tbaa !2445
  %124 = xor i64 %110, %109
  %125 = xor i64 %124, %113
  %126 = lshr i64 %125, 4
  %127 = trunc i64 %126 to i8
  %128 = and i8 %127, 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %128, i8* %129, align 1, !tbaa !2446
  %130 = icmp eq i64 %113, 0
  %131 = zext i1 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %131, i8* %132, align 1, !tbaa !2447
  %133 = lshr i64 %113, 63
  %134 = trunc i64 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %134, i8* %135, align 1, !tbaa !2448
  %136 = lshr i64 %109, 63
  %137 = lshr i64 %110, 63
  %138 = xor i64 %137, %136
  %139 = xor i64 %133, %136
  %140 = add nuw nsw i64 %139, %138
  %141 = icmp eq i64 %140, 2
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %142, i8* %143, align 1, !tbaa !2449
  %144 = load i64, i64* %RSP
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 4
  store i64 %146, i64* %PC
  %147 = sub i64 %144, 8
  store i64 %147, i64* %RSP, align 8, !tbaa !2451
  %148 = icmp ult i64 %144, 8
  %149 = zext i1 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %149, i8* %150, align 1, !tbaa !2428
  %151 = trunc i64 %147 to i32
  %152 = and i32 %151, 255
  %153 = call i32 @llvm.ctpop.i32(i32 %152) #16
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %156, i8* %157, align 1, !tbaa !2445
  %158 = xor i64 8, %144
  %159 = xor i64 %158, %147
  %160 = lshr i64 %159, 4
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %162, i8* %163, align 1, !tbaa !2446
  %164 = icmp eq i64 %147, 0
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %165, i8* %166, align 1, !tbaa !2447
  %167 = lshr i64 %147, 63
  %168 = trunc i64 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %168, i8* %169, align 1, !tbaa !2448
  %170 = lshr i64 %144, 63
  %171 = xor i64 %167, %170
  %172 = add nuw nsw i64 %171, %170
  %173 = icmp eq i64 %172, 2
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %174, i8* %175, align 1, !tbaa !2449
  %176 = load i64, i64* %RBP
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC
  %179 = ashr i64 %176, 2
  %180 = trunc i64 %179 to i8
  %181 = and i8 %180, 1
  %182 = ashr i64 %179, 1
  store i64 %182, i64* %RBP, align 8, !tbaa !2451
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %181, i8* %183, align 1, !tbaa !2450
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %185 = trunc i64 %182 to i32
  %186 = and i32 %185, 255
  %187 = call i32 @llvm.ctpop.i32(i32 %186) #16
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %184, align 1, !tbaa !2450
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %191, align 1, !tbaa !2450
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %193 = icmp eq i64 %182, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %192, align 1, !tbaa !2450
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %196 = lshr i64 %182, 63
  %197 = trunc i64 %196 to i8
  store i8 %197, i8* %195, align 1, !tbaa !2450
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %198, align 1, !tbaa !2450
  %199 = load i64, i64* %PC
  %200 = sub i64 %199, 1172
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 5
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 5
  store i64 %204, i64* %PC
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %206 = load i64, i64* %205, align 8, !tbaa !2451
  %207 = add i64 %206, -8
  %208 = inttoptr i64 %207 to i64*
  store i64 %202, i64* %208
  store i64 %207, i64* %205, align 8, !tbaa !2451
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %200, i64* %209, align 8, !tbaa !2451
  %210 = load i64, i64* %PC
  %211 = call %struct.Memory* @sub_400448__init_proc(%struct.State* %0, i64 %210, %struct.Memory* %2)
  %212 = load i64, i64* %RBP
  %213 = load i64, i64* %RBP
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC
  %216 = and i64 %213, %212
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %217, align 1, !tbaa !2428
  %218 = trunc i64 %216 to i32
  %219 = and i32 %218, 255
  %220 = call i32 @llvm.ctpop.i32(i32 %219) #16
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %223, i8* %224, align 1, !tbaa !2445
  %225 = icmp eq i64 %216, 0
  %226 = zext i1 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %226, i8* %227, align 1, !tbaa !2447
  %228 = lshr i64 %216, 63
  %229 = trunc i64 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %229, i8* %230, align 1, !tbaa !2448
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %231, align 1, !tbaa !2449
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %232, align 1, !tbaa !2446
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 34
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 2
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 2
  store i64 %238, i64* %PC
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %240 = load i8, i8* %239, align 1, !tbaa !2447
  store i8 %240, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %242 = icmp ne i8 %240, 0
  %243 = select i1 %242, i64 %234, i64 %236
  store i64 %243, i64* %241, align 8, !tbaa !2451
  %244 = load i8, i8* %BRANCH_TAKEN
  %245 = icmp eq i8 %244, 1
  br i1 %245, label %block_400906, label %block_4008e6

block_400906:                                     ; preds = %block_4008f0, %block_4008b0
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_4008b0 ], [ %387, %block_4008f0 ]
  %246 = load i64, i64* %RSP
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 4
  store i64 %248, i64* %PC
  %249 = add i64 8, %246
  store i64 %249, i64* %RSP, align 8, !tbaa !2451
  %250 = icmp ult i64 %249, %246
  %251 = icmp ult i64 %249, 8
  %252 = or i1 %250, %251
  %253 = zext i1 %252 to i8
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %253, i8* %254, align 1, !tbaa !2428
  %255 = trunc i64 %249 to i32
  %256 = and i32 %255, 255
  %257 = call i32 @llvm.ctpop.i32(i32 %256) #16
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %260, i8* %261, align 1, !tbaa !2445
  %262 = xor i64 8, %246
  %263 = xor i64 %262, %249
  %264 = lshr i64 %263, 4
  %265 = trunc i64 %264 to i8
  %266 = and i8 %265, 1
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %266, i8* %267, align 1, !tbaa !2446
  %268 = icmp eq i64 %249, 0
  %269 = zext i1 %268 to i8
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %269, i8* %270, align 1, !tbaa !2447
  %271 = lshr i64 %249, 63
  %272 = trunc i64 %271 to i8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %272, i8* %273, align 1, !tbaa !2448
  %274 = lshr i64 %246, 63
  %275 = xor i64 %271, %274
  %276 = add nuw nsw i64 %275, %271
  %277 = icmp eq i64 %276, 2
  %278 = zext i1 %277 to i8
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %278, i8* %279, align 1, !tbaa !2449
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 1
  store i64 %281, i64* %PC
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %283 = load i64, i64* %282, align 8, !tbaa !2451
  %284 = add i64 %283, 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285
  store i64 %286, i64* %RBX, align 8, !tbaa !2451
  store i64 %284, i64* %282, align 8, !tbaa !2451
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 1
  store i64 %288, i64* %PC
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %290 = load i64, i64* %289, align 8, !tbaa !2451
  %291 = add i64 %290, 8
  %292 = inttoptr i64 %290 to i64*
  %293 = load i64, i64* %292
  store i64 %293, i64* %RBP, align 8, !tbaa !2451
  store i64 %291, i64* %289, align 8, !tbaa !2451
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 2
  store i64 %295, i64* %PC
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %297 = load i64, i64* %296, align 8, !tbaa !2451
  %298 = add i64 %297, 8
  %299 = inttoptr i64 %297 to i64*
  %300 = load i64, i64* %299
  store i64 %300, i64* %R12, align 8, !tbaa !2451
  store i64 %298, i64* %296, align 8, !tbaa !2451
  %301 = load i64, i64* %PC
  %302 = add i64 %301, 2
  store i64 %302, i64* %PC
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %304 = load i64, i64* %303, align 8, !tbaa !2451
  %305 = add i64 %304, 8
  %306 = inttoptr i64 %304 to i64*
  %307 = load i64, i64* %306
  store i64 %307, i64* %R13, align 8, !tbaa !2451
  store i64 %305, i64* %303, align 8, !tbaa !2451
  %308 = load i64, i64* %PC
  %309 = add i64 %308, 2
  store i64 %309, i64* %PC
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %311 = load i64, i64* %310, align 8, !tbaa !2451
  %312 = add i64 %311, 8
  %313 = inttoptr i64 %311 to i64*
  %314 = load i64, i64* %313
  store i64 %314, i64* %R14, align 8, !tbaa !2451
  store i64 %312, i64* %310, align 8, !tbaa !2451
  %315 = load i64, i64* %PC
  %316 = add i64 %315, 2
  store i64 %316, i64* %PC
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %318 = load i64, i64* %317, align 8, !tbaa !2451
  %319 = add i64 %318, 8
  %320 = inttoptr i64 %318 to i64*
  %321 = load i64, i64* %320
  store i64 %321, i64* %R15, align 8, !tbaa !2451
  store i64 %319, i64* %317, align 8, !tbaa !2451
  %322 = load i64, i64* %PC
  %323 = add i64 %322, 1
  store i64 %323, i64* %PC
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %326 = load i64, i64* %325, align 8, !tbaa !2451
  %327 = inttoptr i64 %326 to i64*
  %328 = load i64, i64* %327
  store i64 %328, i64* %324, align 8, !tbaa !2451
  %329 = add i64 %326, 8
  store i64 %329, i64* %325, align 8, !tbaa !2451
  ret %struct.Memory* %MEMORY.0

block_4008e6:                                     ; preds = %block_4008b0
  %330 = load i64, i64* %RBX
  %331 = load i32, i32* %EBX
  %332 = zext i32 %331 to i64
  %333 = load i64, i64* %PC
  %334 = add i64 %333, 2
  store i64 %334, i64* %PC
  %335 = xor i64 %332, %330
  %336 = trunc i64 %335 to i32
  %337 = and i64 %335, 4294967295
  store i64 %337, i64* %RBX, align 8, !tbaa !2451
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %338, align 1, !tbaa !2428
  %339 = and i32 %336, 255
  %340 = call i32 @llvm.ctpop.i32(i32 %339) #16
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = xor i8 %342, 1
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %343, i8* %344, align 1, !tbaa !2445
  %345 = icmp eq i32 %336, 0
  %346 = zext i1 %345 to i8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %346, i8* %347, align 1, !tbaa !2447
  %348 = lshr i32 %336, 31
  %349 = trunc i32 %348 to i8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %349, i8* %350, align 1, !tbaa !2448
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %351, align 1, !tbaa !2449
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %352, align 1, !tbaa !2446
  %353 = load i64, i64* %RAX
  %354 = load i64, i64* %RAX
  %355 = add i64 %354, %353
  %356 = load i32, i32* %EAX
  %357 = zext i32 %356 to i64
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 8
  store i64 %359, i64* %PC
  br label %block_4008f0

block_4008f0:                                     ; preds = %block_4008f0, %block_4008e6
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_4008e6 ], [ %387, %block_4008f0 ]
  %360 = load i64, i64* %R15
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 3
  store i64 %362, i64* %PC
  store i64 %360, i64* %RDX, align 8, !tbaa !2451
  %363 = load i64, i64* %R14
  %364 = load i64, i64* %PC
  %365 = add i64 %364, 3
  store i64 %365, i64* %PC
  store i64 %363, i64* %RSI, align 8, !tbaa !2451
  %366 = load i32, i32* %R13D
  %367 = zext i32 %366 to i64
  %368 = load i64, i64* %PC
  %369 = add i64 %368, 3
  store i64 %369, i64* %PC
  %370 = and i64 %367, 4294967295
  store i64 %370, i64* %RDI, align 8, !tbaa !2451
  %371 = load i64, i64* %R12
  %372 = load i64, i64* %RBX
  %373 = mul i64 %372, 8
  %374 = add i64 %373, %371
  %375 = load i64, i64* %PC
  %376 = add i64 %375, 4
  %377 = load i64, i64* %PC
  %378 = add i64 %377, 4
  store i64 %378, i64* %PC
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %380 = load i64, i64* %379, align 8, !tbaa !2451
  %381 = add i64 %380, -8
  %382 = inttoptr i64 %381 to i64*
  store i64 %376, i64* %382
  store i64 %381, i64* %379, align 8, !tbaa !2451
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %384 = inttoptr i64 %374 to i64*
  %385 = load i64, i64* %384
  store i64 %385, i64* %383, align 8, !tbaa !2451
  %386 = load i64, i64* %PC
  %387 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %386, %struct.Memory* %MEMORY.1)
  %388 = load i64, i64* %RBX
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 4
  store i64 %390, i64* %PC
  %391 = add i64 1, %388
  store i64 %391, i64* %RBX, align 8, !tbaa !2451
  %392 = icmp ult i64 %391, %388
  %393 = icmp ult i64 %391, 1
  %394 = or i1 %392, %393
  %395 = zext i1 %394 to i8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %395, i8* %396, align 1, !tbaa !2428
  %397 = trunc i64 %391 to i32
  %398 = and i32 %397, 255
  %399 = call i32 @llvm.ctpop.i32(i32 %398) #16
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %402, i8* %403, align 1, !tbaa !2445
  %404 = xor i64 1, %388
  %405 = xor i64 %404, %391
  %406 = lshr i64 %405, 4
  %407 = trunc i64 %406 to i8
  %408 = and i8 %407, 1
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %408, i8* %409, align 1, !tbaa !2446
  %410 = icmp eq i64 %391, 0
  %411 = zext i1 %410 to i8
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %411, i8* %412, align 1, !tbaa !2447
  %413 = lshr i64 %391, 63
  %414 = trunc i64 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %414, i8* %415, align 1, !tbaa !2448
  %416 = lshr i64 %388, 63
  %417 = xor i64 %413, %416
  %418 = add nuw nsw i64 %417, %413
  %419 = icmp eq i64 %418, 2
  %420 = zext i1 %419 to i8
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %420, i8* %421, align 1, !tbaa !2449
  %422 = load i64, i64* %RBP
  %423 = load i64, i64* %RBX
  %424 = load i64, i64* %PC
  %425 = add i64 %424, 3
  store i64 %425, i64* %PC
  %426 = sub i64 %422, %423
  %427 = icmp ult i64 %422, %423
  %428 = zext i1 %427 to i8
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %428, i8* %429, align 1, !tbaa !2428
  %430 = trunc i64 %426 to i32
  %431 = and i32 %430, 255
  %432 = call i32 @llvm.ctpop.i32(i32 %431) #16
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %435, i8* %436, align 1, !tbaa !2445
  %437 = xor i64 %423, %422
  %438 = xor i64 %437, %426
  %439 = lshr i64 %438, 4
  %440 = trunc i64 %439 to i8
  %441 = and i8 %440, 1
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %441, i8* %442, align 1, !tbaa !2446
  %443 = icmp eq i64 %426, 0
  %444 = zext i1 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %444, i8* %445, align 1, !tbaa !2447
  %446 = lshr i64 %426, 63
  %447 = trunc i64 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %447, i8* %448, align 1, !tbaa !2448
  %449 = lshr i64 %422, 63
  %450 = lshr i64 %423, 63
  %451 = xor i64 %450, %449
  %452 = xor i64 %446, %449
  %453 = add nuw nsw i64 %452, %451
  %454 = icmp eq i64 %453, 2
  %455 = zext i1 %454 to i8
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %455, i8* %456, align 1, !tbaa !2449
  %457 = load i64, i64* %PC
  %458 = sub i64 %457, 20
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 2
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 2
  store i64 %462, i64* %PC
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %464 = load i8, i8* %463, align 1, !tbaa !2447
  %465 = icmp eq i8 %464, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %468 = select i1 %465, i64 %458, i64 %460
  store i64 %468, i64* %467, align 8, !tbaa !2451
  %469 = load i8, i8* %BRANCH_TAKEN
  %470 = icmp eq i8 %469, 1
  br i1 %470, label %block_4008f0, label %block_400906
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004d0__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004d0:
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
  %10 = load i64, i64* %9, align 8, !tbaa !2451
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11
  store i64 %12, i64* %8, align 8, !tbaa !2451
  %13 = add i64 %10, 8
  store i64 %13, i64* %9, align 8, !tbaa !2451
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004a0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004a0:
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
  store i64 %43, i64* %RBP, align 8, !tbaa !2451
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %44, align 1, !tbaa !2428
  %45 = and i32 %42, 255
  %46 = call i32 @llvm.ctpop.i32(i32 %45) #16
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = xor i8 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %49, i8* %50, align 1, !tbaa !2445
  %51 = icmp eq i32 %42, 0
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %52, i8* %53, align 1, !tbaa !2447
  %54 = lshr i32 %42, 31
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %55, i8* %56, align 1, !tbaa !2448
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %57, align 1, !tbaa !2449
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %58, align 1, !tbaa !2446
  %59 = load i64, i64* %RDX
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 3
  store i64 %61, i64* %PC
  store i64 %59, i64* %R9, align 8, !tbaa !2451
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8, !tbaa !2451
  %66 = add i64 %65, 8
  %67 = inttoptr i64 %65 to i64*
  %68 = load i64, i64* %67
  store i64 %68, i64* %RSI, align 8, !tbaa !2451
  store i64 %66, i64* %64, align 8, !tbaa !2451
  %69 = load i64, i64* %RSP
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 3
  store i64 %71, i64* %PC
  store i64 %69, i64* %RDX, align 8, !tbaa !2451
  %72 = load i64, i64* %RSP
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC
  %75 = and i64 -16, %72
  store i64 %75, i64* %RSP, align 8, !tbaa !2451
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %76, align 1, !tbaa !2428
  %77 = trunc i64 %75 to i32
  %78 = and i32 %77, 255
  %79 = call i32 @llvm.ctpop.i32(i32 %78) #16
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = xor i8 %81, 1
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %82, i8* %83, align 1, !tbaa !2445
  %84 = icmp eq i64 %75, 0
  %85 = zext i1 %84 to i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %85, i8* %86, align 1, !tbaa !2447
  %87 = lshr i64 %75, 63
  %88 = trunc i64 %87 to i8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %88, i8* %89, align 1, !tbaa !2448
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %90, align 1, !tbaa !2449
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %91, align 1, !tbaa !2446
  %92 = load i64, i64* %RAX
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 1
  store i64 %94, i64* %PC
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %96 = load i64, i64* %95, align 8, !tbaa !2451
  %97 = add i64 %96, -8
  %98 = inttoptr i64 %97 to i64*
  store i64 %92, i64* %98
  store i64 %97, i64* %95, align 8, !tbaa !2451
  %99 = load i64, i64* %RSP
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 1
  store i64 %101, i64* %PC
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %103 = load i64, i64* %102, align 8, !tbaa !2451
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %99, i64* %105
  store i64 %104, i64* %102, align 8, !tbaa !2451
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 7
  store i64 %107, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_400920___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2451
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_4008b0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2451
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 7
  store i64 %111, i64* %PC
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2451
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 6
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 6
  store i64 %115, i64* %PC
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %117 = load i64, i64* %116, align 8, !tbaa !2451
  %118 = add i64 %117, -8
  %119 = inttoptr i64 %118 to i64*
  store i64 %113, i64* %119
  store i64 %118, i64* %116, align 8, !tbaa !2451
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %121 = load i64, i64* getelementptr inbounds (%seg_600ff0__got_type, %seg_600ff0__got_type* @seg_600ff0__got, i32 0, i32 0)
  store i64 %121, i64* %120, align 8, !tbaa !2451
  %122 = load i64, i64* %PC
  %123 = call %struct.Memory* @ext_6010c0___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
define %struct.Memory* @sub_400920___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400920:
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
  %10 = load i64, i64* %9, align 8, !tbaa !2451
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11
  store i64 %12, i64* %8, align 8, !tbaa !2451
  %13 = add i64 %10, 8
  store i64 %13, i64* %9, align 8, !tbaa !2451
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400448__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400448:
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
  store i64 %15, i64* %RSP, align 8, !tbaa !2451
  %16 = icmp ult i64 %12, 8
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1, !tbaa !2428
  %19 = trunc i64 %15 to i32
  %20 = and i32 %19, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20) #16
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1, !tbaa !2445
  %26 = xor i64 8, %12
  %27 = xor i64 %26, %15
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1, !tbaa !2446
  %32 = icmp eq i64 %15, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1, !tbaa !2447
  %35 = lshr i64 %15, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1, !tbaa !2448
  %38 = lshr i64 %12, 63
  %39 = xor i64 %35, %38
  %40 = add nuw nsw i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1, !tbaa !2449
  %44 = load i64, i64* %PC
  %45 = add i64 %44, 7
  store i64 %45, i64* %PC
  %46 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_600ff0__got_type* @seg_600ff0__got to i64), i64 8) to i64*)
  store i64 %46, i64* %RAX, align 8, !tbaa !2451
  %47 = load i64, i64* %RAX
  %48 = load i64, i64* %RAX
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 3
  store i64 %50, i64* %PC
  %51 = and i64 %48, %47
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %52, align 1, !tbaa !2428
  %53 = trunc i64 %51 to i32
  %54 = and i32 %53, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54) #16
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %58, i8* %59, align 1, !tbaa !2445
  %60 = icmp eq i64 %51, 0
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %61, i8* %62, align 1, !tbaa !2447
  %63 = lshr i64 %51, 63
  %64 = trunc i64 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %64, i8* %65, align 1, !tbaa !2448
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %66, align 1, !tbaa !2449
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %67, align 1, !tbaa !2446
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 4
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 2
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 2
  store i64 %73, i64* %PC
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %75 = load i8, i8* %74, align 1, !tbaa !2447
  store i8 %75, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %77 = icmp ne i8 %75, 0
  %78 = select i1 %77, i64 %69, i64 %71
  store i64 %78, i64* %76, align 8, !tbaa !2451
  %79 = load i8, i8* %BRANCH_TAKEN
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %block_40045a, label %block_400458

block_400458:                                     ; preds = %block_400448
  %81 = load i64, i64* %RAX
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 2
  %84 = load i64, i64* %PC
  %85 = add i64 %84, 2
  store i64 %85, i64* %PC
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %87 = load i64, i64* %86, align 8, !tbaa !2451
  %88 = add i64 %87, -8
  %89 = inttoptr i64 %88 to i64*
  store i64 %83, i64* %89
  store i64 %88, i64* %86, align 8, !tbaa !2451
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %81, i64* %90, align 8, !tbaa !2451
  %91 = load i64, i64* %PC
  %92 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %91, %struct.Memory* %2)
  br label %block_40045a

block_40045a:                                     ; preds = %block_400458, %block_400448
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400448 ], [ %92, %block_400458 ]
  %93 = load i64, i64* %RSP
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC
  %96 = add i64 8, %93
  store i64 %96, i64* %RSP, align 8, !tbaa !2451
  %97 = icmp ult i64 %96, %93
  %98 = icmp ult i64 %96, 8
  %99 = or i1 %97, %98
  %100 = zext i1 %99 to i8
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %100, i8* %101, align 1, !tbaa !2428
  %102 = trunc i64 %96 to i32
  %103 = and i32 %102, 255
  %104 = call i32 @llvm.ctpop.i32(i32 %103) #16
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %107, i8* %108, align 1, !tbaa !2445
  %109 = xor i64 8, %93
  %110 = xor i64 %109, %96
  %111 = lshr i64 %110, 4
  %112 = trunc i64 %111 to i8
  %113 = and i8 %112, 1
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %113, i8* %114, align 1, !tbaa !2446
  %115 = icmp eq i64 %96, 0
  %116 = zext i1 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %116, i8* %117, align 1, !tbaa !2447
  %118 = lshr i64 %96, 63
  %119 = trunc i64 %118 to i8
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %119, i8* %120, align 1, !tbaa !2448
  %121 = lshr i64 %93, 63
  %122 = xor i64 %118, %121
  %123 = add nuw nsw i64 %122, %118
  %124 = icmp eq i64 %123, 2
  %125 = zext i1 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %125, i8* %126, align 1, !tbaa !2449
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 1
  store i64 %128, i64* %PC
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %131 = load i64, i64* %130, align 8, !tbaa !2451
  %132 = inttoptr i64 %131 to i64*
  %133 = load i64, i64* %132
  store i64 %133, i64* %129, align 8, !tbaa !2451
  %134 = add i64 %131, 8
  store i64 %134, i64* %130, align 8, !tbaa !2451
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400580_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400580;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400580_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400580_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400550___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400550;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400550___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400550___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6010b0_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6010c8_exit(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_601098_read(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @read to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400920___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400920;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400920___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400920___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4008b0___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4008b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4008b0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4008b0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400640;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400640_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6010c0___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400448;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400448__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400924;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400924__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @draw() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400590;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
  ret void
}

define internal %struct.Memory* @draw_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400590_draw(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
  call void @callback_sub_4008b0___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_400920___libc_csu_fini()
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
attributes #8 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noduplicate noinline nounwind optnone readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noinline }
attributes #14 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { naked nobuiltin noinline }
attributes #16 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!1259, !1260}

!0 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !67, imports: !70)
!2 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/X86/Runtime/BasicBlock.cpp", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!3 = !{!4, !26, !35, !39, !45, !51, !55, !61}
!4 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Name", scope: !6, file: !5, line: 70, baseType: !8, size: 32, elements: !11, identifier: "_ZTSN14AsyncHyperCall4NameE")
!5 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/Runtime/HyperCall.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncHyperCall", file: !5, line: 68, size: 8, elements: !7, identifier: "_ZTS14AsyncHyperCall")
!7 = !{}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 183, baseType: !10)
!9 = !DIFile(filename: "/home/ubuntu/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stdint.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
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
!27 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/X86/Runtime/State.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
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
!70 = !{!71, !77, !83, !86, !93, !97, !102, !104, !112, !116, !120, !132, !136, !140, !144, !148, !153, !157, !161, !165, !169, !177, !181, !185, !187, !191, !195, !199, !205, !209, !213, !215, !223, !227, !235, !237, !241, !245, !249, !253, !258, !263, !268, !269, !270, !271, !274, !275, !276, !277, !278, !279, !280, !335, !339, !355, !358, !363, !371, !376, !380, !384, !388, !392, !394, !396, !400, !406, !410, !416, !422, !424, !428, !432, !436, !440, !451, !453, !457, !461, !465, !467, !471, !475, !479, !481, !483, !487, !495, !499, !503, !507, !509, !515, !517, !523, !527, !531, !535, !539, !543, !547, !549, !551, !555, !559, !563, !565, !569, !573, !575, !577, !581, !585, !589, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !606, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !634, !635, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !665, !669, !674, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !706, !712, !717, !721, !723, !725, !727, !729, !736, !740, !744, !748, !752, !756, !761, !765, !767, !771, !777, !781, !786, !788, !790, !794, !798, !802, !804, !806, !808, !810, !814, !816, !818, !822, !826, !830, !834, !838, !840, !842, !846, !850, !854, !858, !860, !862, !866, !870, !871, !872, !873, !874, !875, !880, !882, !884, !888, !890, !892, !894, !896, !898, !900, !902, !907, !911, !913, !915, !920, !922, !924, !926, !928, !930, !932, !935, !937, !939, !943, !947, !949, !951, !953, !955, !957, !959, !961, !963, !965, !967, !971, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !999, !1001, !1003, !1005, !1009, !1013, !1017, !1019, !1021, !1023, !1025, !1027, !1029, !1031, !1033, !1035, !1039, !1043, !1047, !1049, !1051, !1053, !1057, !1061, !1065, !1067, !1069, !1071, !1073, !1075, !1077, !1079, !1081, !1083, !1085, !1087, !1089, !1093, !1097, !1101, !1103, !1105, !1107, !1109, !1113, !1117, !1119, !1121, !1123, !1125, !1127, !1129, !1133, !1137, !1139, !1141, !1143, !1145, !1149, !1153, !1157, !1159, !1161, !1163, !1165, !1167, !1169, !1173, !1177, !1181, !1183, !1187, !1191, !1193, !1195, !1197, !1199, !1201, !1203, !1207, !1209, !1212, !1217, !1219, !1225, !1227, !1229, !1231, !1236, !1238, !1244, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258}
!71 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !72, entity: !74, line: 58)
!72 = !DINamespace(name: "__gnu_debug", scope: null, file: !73, line: 56)
!73 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/debug/debug.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!74 = !DINamespace(name: "__debug", scope: !75, file: !73, line: 50)
!75 = !DINamespace(name: "std", scope: null, file: !76, line: 229)
!76 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/x86_64-linux-gnu/c++/7.4.0/bits/c++config.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !78, line: 52)
!78 = !DISubprogram(name: "abs", scope: !79, file: !79, line: 837, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!79 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!80 = !DISubroutineType(types: !81)
!81 = !{!82, !82}
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !84, line: 127)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !79, line: 62, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 58, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !87, line: 128)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !79, line: 70, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 66, size: 128, elements: !89, identifier: "_ZTS6ldiv_t")
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !88, file: !79, line: 68, baseType: !91, size: 64)
!91 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !88, file: !79, line: 69, baseType: !91, size: 64, offset: 64)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !94, line: 130)
!94 = !DISubprogram(name: "abort", scope: !79, file: !79, line: 588, type: !95, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !98, line: 134)
!98 = !DISubprogram(name: "atexit", scope: !79, file: !79, line: 592, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DISubroutineType(types: !100)
!100 = !{!82, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !103, line: 137)
!103 = !DISubprogram(name: "at_quick_exit", scope: !79, file: !79, line: 597, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !105, line: 140)
!105 = !DISubprogram(name: "atof", scope: !79, file: !79, line: 101, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !109}
!108 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !113, line: 141)
!113 = !DISubprogram(name: "atoi", scope: !79, file: !79, line: 104, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!114 = !DISubroutineType(types: !115)
!115 = !{!82, !109}
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !117, line: 142)
!117 = !DISubprogram(name: "atol", scope: !79, file: !79, line: 107, type: !118, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DISubroutineType(types: !119)
!119 = !{!91, !109}
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !121, line: 143)
!121 = !DISubprogram(name: "bsearch", scope: !79, file: !79, line: 817, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !68, !68, !125, !125, !128}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 62, baseType: !127)
!126 = !DIFile(filename: "/home/ubuntu/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!127 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !79, line: 805, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!82, !68, !68}
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !133, line: 144)
!133 = !DISubprogram(name: "calloc", scope: !79, file: !79, line: 541, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!134 = !DISubroutineType(types: !135)
!135 = !{!124, !125, !125}
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !137, line: 145)
!137 = !DISubprogram(name: "div", scope: !79, file: !79, line: 849, type: !138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DISubroutineType(types: !139)
!139 = !{!84, !82, !82}
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !141, line: 146)
!141 = !DISubprogram(name: "exit", scope: !79, file: !79, line: 614, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !82}
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !145, line: 147)
!145 = !DISubprogram(name: "free", scope: !79, file: !79, line: 563, type: !146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !124}
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !149, line: 148)
!149 = !DISubprogram(name: "getenv", scope: !79, file: !79, line: 631, type: !150, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !109}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !154, line: 149)
!154 = !DISubprogram(name: "labs", scope: !79, file: !79, line: 838, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubroutineType(types: !156)
!156 = !{!91, !91}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !158, line: 150)
!158 = !DISubprogram(name: "ldiv", scope: !79, file: !79, line: 851, type: !159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DISubroutineType(types: !160)
!160 = !{!87, !91, !91}
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !162, line: 151)
!162 = !DISubprogram(name: "malloc", scope: !79, file: !79, line: 539, type: !163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{!124, !125}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !166, line: 153)
!166 = !DISubprogram(name: "mblen", scope: !79, file: !79, line: 919, type: !167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{!82, !109, !125}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !170, line: 154)
!170 = !DISubprogram(name: "mbstowcs", scope: !79, file: !79, line: 930, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!125, !173, !176, !125}
!173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !178, line: 155)
!178 = !DISubprogram(name: "mbtowc", scope: !79, file: !79, line: 922, type: !179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DISubroutineType(types: !180)
!180 = !{!82, !173, !176, !125}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !182, line: 157)
!182 = !DISubprogram(name: "qsort", scope: !79, file: !79, line: 827, type: !183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !124, !125, !125, !128}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !186, line: 160)
!186 = !DISubprogram(name: "quick_exit", scope: !79, file: !79, line: 620, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !188, line: 163)
!188 = !DISubprogram(name: "rand", scope: !79, file: !79, line: 453, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DISubroutineType(types: !190)
!190 = !{!82}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !192, line: 164)
!192 = !DISubprogram(name: "realloc", scope: !79, file: !79, line: 549, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!124, !124, !125}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !196, line: 165)
!196 = !DISubprogram(name: "srand", scope: !79, file: !79, line: 455, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !10}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !200, line: 166)
!200 = !DISubprogram(name: "strtod", scope: !79, file: !79, line: 117, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!108, !176, !203}
!203 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !206, line: 167)
!206 = !DISubprogram(name: "strtol", scope: !79, file: !79, line: 176, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DISubroutineType(types: !208)
!208 = !{!91, !176, !203, !82}
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !210, line: 168)
!210 = !DISubprogram(name: "strtoul", scope: !79, file: !79, line: 180, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DISubroutineType(types: !212)
!212 = !{!127, !176, !203, !82}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !214, line: 169)
!214 = !DISubprogram(name: "system", scope: !79, file: !79, line: 781, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !216, line: 171)
!216 = !DISubprogram(name: "wcstombs", scope: !79, file: !79, line: 933, type: !217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DISubroutineType(types: !218)
!218 = !{!125, !219, !220, !125}
!219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !152)
!220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !224, line: 172)
!224 = !DISubprogram(name: "wctomb", scope: !79, file: !79, line: 926, type: !225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DISubroutineType(types: !226)
!226 = !{!82, !152, !175}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !229, line: 200)
!228 = !DINamespace(name: "__gnu_cxx", scope: null, file: !76, line: 255)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !79, line: 80, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 76, size: 128, elements: !231, identifier: "_ZTS7lldiv_t")
!231 = !{!232, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !230, file: !79, line: 78, baseType: !233, size: 64)
!233 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !230, file: !79, line: 79, baseType: !233, size: 64, offset: 64)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !236, line: 206)
!236 = !DISubprogram(name: "_Exit", scope: !79, file: !79, line: 626, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !238, line: 210)
!238 = !DISubprogram(name: "llabs", scope: !79, file: !79, line: 841, type: !239, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DISubroutineType(types: !240)
!240 = !{!233, !233}
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !242, line: 216)
!242 = !DISubprogram(name: "lldiv", scope: !79, file: !79, line: 855, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!229, !233, !233}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !246, line: 227)
!246 = !DISubprogram(name: "atoll", scope: !79, file: !79, line: 112, type: !247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubroutineType(types: !248)
!248 = !{!233, !109}
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !250, line: 228)
!250 = !DISubprogram(name: "strtoll", scope: !79, file: !79, line: 200, type: !251, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DISubroutineType(types: !252)
!252 = !{!233, !176, !203, !82}
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !254, line: 229)
!254 = !DISubprogram(name: "strtoull", scope: !79, file: !79, line: 205, type: !255, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !176, !203, !82}
!257 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !259, line: 231)
!259 = !DISubprogram(name: "strtof", scope: !79, file: !79, line: 123, type: !260, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !176, !203}
!262 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !264, line: 232)
!264 = !DISubprogram(name: "strtold", scope: !79, file: !79, line: 126, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DISubroutineType(types: !266)
!266 = !{!267, !176, !203}
!267 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !229, line: 240)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !236, line: 242)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !238, line: 244)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !272, line: 245)
!272 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !228, file: !273, line: 213, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/cstdlib", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !242, line: 246)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !246, line: 248)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !259, line: 249)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !250, line: 250)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !254, line: 251)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !264, line: 252)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !281, line: 57)
!281 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !283, file: !282, line: 79, size: 64, elements: !284, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!282 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/bits/exception_ptr.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
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
!334 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.4.0/../../../../include/c++/7.4.0/typeinfo", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!335 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !283, entity: !336, line: 73)
!336 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !75, file: !282, line: 69, type: !337, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !281}
!339 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !340, line: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !341, line: 6, baseType: !342)
!341 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !343, line: 21, baseType: !344)
!343 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !343, line: 13, size: 64, elements: !345, identifier: "_ZTS11__mbstate_t")
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !344, file: !343, line: 15, baseType: !82, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !344, file: !343, line: 20, baseType: !348, size: 32, offset: 32)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !343, line: 16, size: 32, elements: !349, identifier: "_ZTSN11__mbstate_tUt_E")
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !348, file: !343, line: 18, baseType: !10, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !348, file: !343, line: 19, baseType: !352, size: 32)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 32, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 4)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !356, line: 139)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !357, line: 20, baseType: !10)
!357 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !359, line: 141)
!359 = !DISubprogram(name: "btowc", scope: !360, file: !360, line: 284, type: !361, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!360 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!361 = !DISubroutineType(types: !362)
!362 = !{!356, !82}
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !364, line: 142)
!364 = !DISubprogram(name: "fgetwc", scope: !360, file: !360, line: 727, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!365 = !DISubroutineType(types: !366)
!366 = !{!356, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !369, line: 5, baseType: !370)
!369 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !369, line: 4, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !372, line: 143)
!372 = !DISubprogram(name: "fgetws", scope: !360, file: !360, line: 756, type: !373, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!373 = !DISubroutineType(types: !374)
!374 = !{!174, !173, !82, !375}
!375 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !367)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !377, line: 144)
!377 = !DISubprogram(name: "fputwc", scope: !360, file: !360, line: 741, type: !378, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!378 = !DISubroutineType(types: !379)
!379 = !{!356, !175, !367}
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !381, line: 145)
!381 = !DISubprogram(name: "fputws", scope: !360, file: !360, line: 763, type: !382, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!382 = !DISubroutineType(types: !383)
!383 = !{!82, !220, !375}
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !385, line: 146)
!385 = !DISubprogram(name: "fwide", scope: !360, file: !360, line: 573, type: !386, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!386 = !DISubroutineType(types: !387)
!387 = !{!82, !367, !82}
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !389, line: 147)
!389 = !DISubprogram(name: "fwprintf", scope: !360, file: !360, line: 580, type: !390, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!390 = !DISubroutineType(types: !391)
!391 = !{!82, !375, !220, null}
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !393, line: 148)
!393 = !DISubprogram(name: "fwscanf", scope: !360, file: !360, line: 621, type: !390, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !395, line: 149)
!395 = !DISubprogram(name: "getwc", scope: !360, file: !360, line: 728, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !397, line: 150)
!397 = !DISubprogram(name: "getwchar", scope: !360, file: !360, line: 734, type: !398, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!398 = !DISubroutineType(types: !399)
!399 = !{!356}
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !401, line: 151)
!401 = !DISubprogram(name: "mbrlen", scope: !360, file: !360, line: 307, type: !402, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!402 = !DISubroutineType(types: !403)
!403 = !{!125, !176, !125, !404}
!404 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !407, line: 152)
!407 = !DISubprogram(name: "mbrtowc", scope: !360, file: !360, line: 296, type: !408, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!408 = !DISubroutineType(types: !409)
!409 = !{!125, !173, !176, !125, !404}
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !411, line: 153)
!411 = !DISubprogram(name: "mbsinit", scope: !360, file: !360, line: 292, type: !412, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!412 = !DISubroutineType(types: !413)
!413 = !{!82, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !417, line: 154)
!417 = !DISubprogram(name: "mbsrtowcs", scope: !360, file: !360, line: 337, type: !418, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!418 = !DISubroutineType(types: !419)
!419 = !{!125, !173, !420, !125, !404}
!420 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !423, line: 155)
!423 = !DISubprogram(name: "putwc", scope: !360, file: !360, line: 742, type: !378, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !425, line: 156)
!425 = !DISubprogram(name: "putwchar", scope: !360, file: !360, line: 748, type: !426, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!426 = !DISubroutineType(types: !427)
!427 = !{!356, !175}
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !429, line: 158)
!429 = !DISubprogram(name: "swprintf", scope: !360, file: !360, line: 590, type: !430, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!430 = !DISubroutineType(types: !431)
!431 = !{!82, !173, !125, !220, null}
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !433, line: 160)
!433 = !DISubprogram(name: "swscanf", scope: !360, file: !360, line: 631, type: !434, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!434 = !DISubroutineType(types: !435)
!435 = !{!82, !220, !220, null}
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !437, line: 161)
!437 = !DISubprogram(name: "ungetwc", scope: !360, file: !360, line: 771, type: !438, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!438 = !DISubroutineType(types: !439)
!439 = !{!356, !356, !367}
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !441, line: 162)
!441 = !DISubprogram(name: "vfwprintf", scope: !360, file: !360, line: 598, type: !442, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!442 = !DISubroutineType(types: !443)
!443 = !{!82, !375, !220, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !2, size: 192, elements: !446, identifier: "_ZTS13__va_list_tag")
!446 = !{!447, !448, !449, !450}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !445, file: !2, baseType: !10, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !445, file: !2, baseType: !10, size: 32, offset: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !445, file: !2, baseType: !124, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !445, file: !2, baseType: !124, size: 64, offset: 128)
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !452, line: 164)
!452 = !DISubprogram(name: "vfwscanf", scope: !360, file: !360, line: 673, type: !442, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !454, line: 167)
!454 = !DISubprogram(name: "vswprintf", scope: !360, file: !360, line: 611, type: !455, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!455 = !DISubroutineType(types: !456)
!456 = !{!82, !173, !125, !220, !444}
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !458, line: 170)
!458 = !DISubprogram(name: "vswscanf", scope: !360, file: !360, line: 685, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!459 = !DISubroutineType(types: !460)
!460 = !{!82, !220, !220, !444}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !462, line: 172)
!462 = !DISubprogram(name: "vwprintf", scope: !360, file: !360, line: 606, type: !463, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!463 = !DISubroutineType(types: !464)
!464 = !{!82, !220, !444}
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !466, line: 174)
!466 = !DISubprogram(name: "vwscanf", scope: !360, file: !360, line: 681, type: !463, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !468, line: 176)
!468 = !DISubprogram(name: "wcrtomb", scope: !360, file: !360, line: 301, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!469 = !DISubroutineType(types: !470)
!470 = !{!125, !219, !175, !404}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !472, line: 177)
!472 = !DISubprogram(name: "wcscat", scope: !360, file: !360, line: 97, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!473 = !DISubroutineType(types: !474)
!474 = !{!174, !173, !220}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !476, line: 178)
!476 = !DISubprogram(name: "wcscmp", scope: !360, file: !360, line: 106, type: !477, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!477 = !DISubroutineType(types: !478)
!478 = !{!82, !221, !221}
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !480, line: 179)
!480 = !DISubprogram(name: "wcscoll", scope: !360, file: !360, line: 131, type: !477, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !482, line: 180)
!482 = !DISubprogram(name: "wcscpy", scope: !360, file: !360, line: 87, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !484, line: 181)
!484 = !DISubprogram(name: "wcscspn", scope: !360, file: !360, line: 187, type: !485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DISubroutineType(types: !486)
!486 = !{!125, !221, !221}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !488, line: 182)
!488 = !DISubprogram(name: "wcsftime", scope: !360, file: !360, line: 835, type: !489, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!489 = !DISubroutineType(types: !490)
!490 = !{!125, !173, !125, !220, !491}
!491 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !360, line: 83, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !496, line: 183)
!496 = !DISubprogram(name: "wcslen", scope: !360, file: !360, line: 222, type: !497, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!497 = !DISubroutineType(types: !498)
!498 = !{!125, !221}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !500, line: 184)
!500 = !DISubprogram(name: "wcsncat", scope: !360, file: !360, line: 101, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!501 = !DISubroutineType(types: !502)
!502 = !{!174, !173, !220, !125}
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !504, line: 185)
!504 = !DISubprogram(name: "wcsncmp", scope: !360, file: !360, line: 109, type: !505, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!505 = !DISubroutineType(types: !506)
!506 = !{!82, !221, !221, !125}
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !508, line: 186)
!508 = !DISubprogram(name: "wcsncpy", scope: !360, file: !360, line: 92, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !510, line: 187)
!510 = !DISubprogram(name: "wcsrtombs", scope: !360, file: !360, line: 343, type: !511, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!511 = !DISubroutineType(types: !512)
!512 = !{!125, !219, !513, !125, !404}
!513 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !516, line: 188)
!516 = !DISubprogram(name: "wcsspn", scope: !360, file: !360, line: 191, type: !485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !518, line: 189)
!518 = !DISubprogram(name: "wcstod", scope: !360, file: !360, line: 377, type: !519, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!519 = !DISubroutineType(types: !520)
!520 = !{!108, !220, !521}
!521 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !524, line: 191)
!524 = !DISubprogram(name: "wcstof", scope: !360, file: !360, line: 382, type: !525, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!525 = !DISubroutineType(types: !526)
!526 = !{!262, !220, !521}
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !528, line: 193)
!528 = !DISubprogram(name: "wcstok", scope: !360, file: !360, line: 217, type: !529, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!529 = !DISubroutineType(types: !530)
!530 = !{!174, !173, !220, !521}
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !532, line: 194)
!532 = !DISubprogram(name: "wcstol", scope: !360, file: !360, line: 428, type: !533, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!533 = !DISubroutineType(types: !534)
!534 = !{!91, !220, !521, !82}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !536, line: 195)
!536 = !DISubprogram(name: "wcstoul", scope: !360, file: !360, line: 433, type: !537, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!537 = !DISubroutineType(types: !538)
!538 = !{!127, !220, !521, !82}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !540, line: 196)
!540 = !DISubprogram(name: "wcsxfrm", scope: !360, file: !360, line: 135, type: !541, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!541 = !DISubroutineType(types: !542)
!542 = !{!125, !173, !220, !125}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !544, line: 197)
!544 = !DISubprogram(name: "wctob", scope: !360, file: !360, line: 288, type: !545, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!545 = !DISubroutineType(types: !546)
!546 = !{!82, !356}
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !548, line: 198)
!548 = !DISubprogram(name: "wmemcmp", scope: !360, file: !360, line: 258, type: !505, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !550, line: 199)
!550 = !DISubprogram(name: "wmemcpy", scope: !360, file: !360, line: 262, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !552, line: 200)
!552 = !DISubprogram(name: "wmemmove", scope: !360, file: !360, line: 267, type: !553, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!553 = !DISubroutineType(types: !554)
!554 = !{!174, !174, !221, !125}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !556, line: 201)
!556 = !DISubprogram(name: "wmemset", scope: !360, file: !360, line: 271, type: !557, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!557 = !DISubroutineType(types: !558)
!558 = !{!174, !174, !175, !125}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !560, line: 202)
!560 = !DISubprogram(name: "wprintf", scope: !360, file: !360, line: 587, type: !561, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!561 = !DISubroutineType(types: !562)
!562 = !{!82, !220, null}
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !564, line: 203)
!564 = !DISubprogram(name: "wscanf", scope: !360, file: !360, line: 628, type: !561, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !566, line: 204)
!566 = !DISubprogram(name: "wcschr", scope: !360, file: !360, line: 164, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!567 = !DISubroutineType(types: !568)
!568 = !{!174, !221, !175}
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !570, line: 205)
!570 = !DISubprogram(name: "wcspbrk", scope: !360, file: !360, line: 201, type: !571, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!571 = !DISubroutineType(types: !572)
!572 = !{!174, !221, !221}
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !574, line: 206)
!574 = !DISubprogram(name: "wcsrchr", scope: !360, file: !360, line: 174, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !576, line: 207)
!576 = !DISubprogram(name: "wcsstr", scope: !360, file: !360, line: 212, type: !571, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !578, line: 208)
!578 = !DISubprogram(name: "wmemchr", scope: !360, file: !360, line: 253, type: !579, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!579 = !DISubroutineType(types: !580)
!580 = !{!174, !221, !175, !125}
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !582, line: 248)
!582 = !DISubprogram(name: "wcstold", scope: !360, file: !360, line: 384, type: !583, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!583 = !DISubroutineType(types: !584)
!584 = !{!267, !220, !521}
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !586, line: 257)
!586 = !DISubprogram(name: "wcstoll", scope: !360, file: !360, line: 441, type: !587, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!587 = !DISubroutineType(types: !588)
!588 = !{!233, !220, !521, !82}
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !590, line: 258)
!590 = !DISubprogram(name: "wcstoull", scope: !360, file: !360, line: 448, type: !591, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!591 = !DISubroutineType(types: !592)
!592 = !{!257, !220, !521, !82}
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !582, line: 264)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !586, line: 265)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !590, line: 266)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !524, line: 280)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !452, line: 283)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !458, line: 286)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !466, line: 289)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !582, line: 293)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !586, line: 294)
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !590, line: 295)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !604, line: 48)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !9, line: 235, baseType: !605)
!605 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !607, line: 49)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !9, line: 216, baseType: !608)
!608 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !610, line: 50)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !9, line: 178, baseType: !82)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !612, line: 51)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !9, line: 107, baseType: !91)
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !614, line: 53)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !9, line: 245, baseType: !604)
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !616, line: 54)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !9, line: 228, baseType: !607)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !618, line: 55)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !9, line: 197, baseType: !610)
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !620, line: 56)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !9, line: 123, baseType: !612)
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !622, line: 58)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !9, line: 243, baseType: !604)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !624, line: 59)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !9, line: 226, baseType: !607)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !626, line: 60)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !9, line: 195, baseType: !610)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !628, line: 61)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !9, line: 121, baseType: !612)
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !630, line: 63)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !9, line: 276, baseType: !91)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !632, line: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !9, line: 263, baseType: !612)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !62, line: 66)
!634 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !28, line: 67)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !8, line: 68)
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !637, line: 69)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 109, baseType: !127)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !639, line: 71)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !9, line: 246, baseType: !62)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !641, line: 72)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !9, line: 229, baseType: !28)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !643, line: 73)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !9, line: 198, baseType: !8)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !645, line: 74)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !9, line: 124, baseType: !637)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !647, line: 76)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !9, line: 244, baseType: !62)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !649, line: 77)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !9, line: 227, baseType: !28)
!650 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !651, line: 78)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !9, line: 196, baseType: !8)
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !653, line: 79)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !9, line: 122, baseType: !637)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !655, line: 81)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !9, line: 277, baseType: !127)
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !657, line: 82)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 270, baseType: !637)
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !659, line: 44)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !75, file: !76, line: 231, baseType: !127)
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !661, line: 45)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !75, file: !76, line: 232, baseType: !91)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !663, line: 53)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !664, line: 51, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!664 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !666, line: 54)
!666 = !DISubprogram(name: "setlocale", scope: !664, file: !664, line: 122, type: !667, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!667 = !DISubroutineType(types: !668)
!668 = !{!152, !82, !109}
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !670, line: 55)
!670 = !DISubprogram(name: "localeconv", scope: !664, file: !664, line: 125, type: !671, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!671 = !DISubroutineType(types: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !675, line: 64)
!675 = !DISubprogram(name: "isalnum", scope: !676, file: !676, line: 108, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!676 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!677 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !678, line: 65)
!678 = !DISubprogram(name: "isalpha", scope: !676, file: !676, line: 109, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !680, line: 66)
!680 = !DISubprogram(name: "iscntrl", scope: !676, file: !676, line: 110, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!681 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !682, line: 67)
!682 = !DISubprogram(name: "isdigit", scope: !676, file: !676, line: 111, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !684, line: 68)
!684 = !DISubprogram(name: "isgraph", scope: !676, file: !676, line: 113, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !686, line: 69)
!686 = !DISubprogram(name: "islower", scope: !676, file: !676, line: 112, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !688, line: 70)
!688 = !DISubprogram(name: "isprint", scope: !676, file: !676, line: 114, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !690, line: 71)
!690 = !DISubprogram(name: "ispunct", scope: !676, file: !676, line: 115, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !692, line: 72)
!692 = !DISubprogram(name: "isspace", scope: !676, file: !676, line: 116, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !694, line: 73)
!694 = !DISubprogram(name: "isupper", scope: !676, file: !676, line: 117, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !696, line: 74)
!696 = !DISubprogram(name: "isxdigit", scope: !676, file: !676, line: 118, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !698, line: 75)
!698 = !DISubprogram(name: "tolower", scope: !676, file: !676, line: 122, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !700, line: 76)
!700 = !DISubprogram(name: "toupper", scope: !676, file: !676, line: 125, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!701 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !702, line: 87)
!702 = !DISubprogram(name: "isblank", scope: !676, file: !676, line: 130, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !704, line: 98)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !705, line: 7, baseType: !370)
!705 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !707, line: 99)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !708, line: 78, baseType: !709)
!708 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !710, line: 30, baseType: !711)
!710 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/_G_config.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !710, line: 26, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !713, line: 101)
!713 = !DISubprogram(name: "clearerr", scope: !708, file: !708, line: 757, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !716}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !718, line: 102)
!718 = !DISubprogram(name: "fclose", scope: !708, file: !708, line: 199, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!719 = !DISubroutineType(types: !720)
!720 = !{!82, !716}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !722, line: 103)
!722 = !DISubprogram(name: "feof", scope: !708, file: !708, line: 759, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !724, line: 104)
!724 = !DISubprogram(name: "ferror", scope: !708, file: !708, line: 761, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !726, line: 105)
!726 = !DISubprogram(name: "fflush", scope: !708, file: !708, line: 204, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !728, line: 106)
!728 = !DISubprogram(name: "fgetc", scope: !708, file: !708, line: 477, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !730, line: 107)
!730 = !DISubprogram(name: "fgetpos", scope: !708, file: !708, line: 731, type: !731, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!731 = !DISubroutineType(types: !732)
!732 = !{!82, !733, !734}
!733 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !716)
!734 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !737, line: 108)
!737 = !DISubprogram(name: "fgets", scope: !708, file: !708, line: 564, type: !738, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!738 = !DISubroutineType(types: !739)
!739 = !{!152, !219, !82, !733}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !741, line: 109)
!741 = !DISubprogram(name: "fopen", scope: !708, file: !708, line: 232, type: !742, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!742 = !DISubroutineType(types: !743)
!743 = !{!716, !176, !176}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !745, line: 110)
!745 = !DISubprogram(name: "fprintf", scope: !708, file: !708, line: 312, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!746 = !DISubroutineType(types: !747)
!747 = !{!82, !733, !176, null}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !749, line: 111)
!749 = !DISubprogram(name: "fputc", scope: !708, file: !708, line: 517, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!750 = !DISubroutineType(types: !751)
!751 = !{!82, !82, !716}
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !753, line: 112)
!753 = !DISubprogram(name: "fputs", scope: !708, file: !708, line: 626, type: !754, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!754 = !DISubroutineType(types: !755)
!755 = !{!82, !176, !733}
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !757, line: 113)
!757 = !DISubprogram(name: "fread", scope: !708, file: !708, line: 646, type: !758, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!758 = !DISubroutineType(types: !759)
!759 = !{!125, !760, !125, !125, !733}
!760 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!761 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !762, line: 114)
!762 = !DISubprogram(name: "freopen", scope: !708, file: !708, line: 238, type: !763, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!763 = !DISubroutineType(types: !764)
!764 = !{!716, !176, !176, !733}
!765 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !766, line: 115)
!766 = !DISubprogram(name: "fscanf", scope: !708, file: !708, line: 377, type: !746, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!767 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !768, line: 116)
!768 = !DISubprogram(name: "fseek", scope: !708, file: !708, line: 684, type: !769, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!769 = !DISubroutineType(types: !770)
!770 = !{!82, !716, !91, !82}
!771 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !772, line: 117)
!772 = !DISubprogram(name: "fsetpos", scope: !708, file: !708, line: 736, type: !773, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!773 = !DISubroutineType(types: !774)
!774 = !{!82, !716, !775}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!777 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !778, line: 118)
!778 = !DISubprogram(name: "ftell", scope: !708, file: !708, line: 689, type: !779, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!779 = !DISubroutineType(types: !780)
!780 = !{!91, !716}
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !782, line: 119)
!782 = !DISubprogram(name: "fwrite", scope: !708, file: !708, line: 652, type: !783, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!783 = !DISubroutineType(types: !784)
!784 = !{!125, !785, !125, !125, !733}
!785 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !787, line: 120)
!787 = !DISubprogram(name: "getc", scope: !708, file: !708, line: 478, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !789, line: 121)
!789 = !DISubprogram(name: "getchar", scope: !708, file: !708, line: 484, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !791, line: 124)
!791 = !DISubprogram(name: "gets", scope: !708, file: !708, line: 577, type: !792, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!792 = !DISubroutineType(types: !793)
!793 = !{!152, !152}
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !795, line: 126)
!795 = !DISubprogram(name: "perror", scope: !708, file: !708, line: 775, type: !796, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !109}
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !799, line: 127)
!799 = !DISubprogram(name: "printf", scope: !708, file: !708, line: 318, type: !800, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!800 = !DISubroutineType(types: !801)
!801 = !{!82, !176, null}
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !803, line: 128)
!803 = !DISubprogram(name: "putc", scope: !708, file: !708, line: 518, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!804 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !805, line: 129)
!805 = !DISubprogram(name: "putchar", scope: !708, file: !708, line: 524, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !807, line: 130)
!807 = !DISubprogram(name: "puts", scope: !708, file: !708, line: 632, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!808 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !809, line: 131)
!809 = !DISubprogram(name: "remove", scope: !708, file: !708, line: 144, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!810 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !811, line: 132)
!811 = !DISubprogram(name: "rename", scope: !708, file: !708, line: 146, type: !812, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!812 = !DISubroutineType(types: !813)
!813 = !{!82, !109, !109}
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !815, line: 133)
!815 = !DISubprogram(name: "rewind", scope: !708, file: !708, line: 694, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!816 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !817, line: 134)
!817 = !DISubprogram(name: "scanf", scope: !708, file: !708, line: 383, type: !800, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !819, line: 135)
!819 = !DISubprogram(name: "setbuf", scope: !708, file: !708, line: 290, type: !820, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !733, !219}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !823, line: 136)
!823 = !DISubprogram(name: "setvbuf", scope: !708, file: !708, line: 294, type: !824, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!824 = !DISubroutineType(types: !825)
!825 = !{!82, !733, !219, !82, !125}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !827, line: 137)
!827 = !DISubprogram(name: "sprintf", scope: !708, file: !708, line: 320, type: !828, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!828 = !DISubroutineType(types: !829)
!829 = !{!82, !219, !176, null}
!830 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !831, line: 138)
!831 = !DISubprogram(name: "sscanf", scope: !708, file: !708, line: 385, type: !832, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!832 = !DISubroutineType(types: !833)
!833 = !{!82, !176, !176, null}
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !835, line: 139)
!835 = !DISubprogram(name: "tmpfile", scope: !708, file: !708, line: 159, type: !836, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!836 = !DISubroutineType(types: !837)
!837 = !{!716}
!838 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !839, line: 141)
!839 = !DISubprogram(name: "tmpnam", scope: !708, file: !708, line: 173, type: !792, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!840 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !841, line: 143)
!841 = !DISubprogram(name: "ungetc", scope: !708, file: !708, line: 639, type: !750, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !843, line: 144)
!843 = !DISubprogram(name: "vfprintf", scope: !708, file: !708, line: 327, type: !844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!844 = !DISubroutineType(types: !845)
!845 = !{!82, !733, !176, !444}
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !847, line: 145)
!847 = !DISubprogram(name: "vprintf", scope: !708, file: !708, line: 333, type: !848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!848 = !DISubroutineType(types: !849)
!849 = !{!82, !176, !444}
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !851, line: 146)
!851 = !DISubprogram(name: "vsprintf", scope: !708, file: !708, line: 335, type: !852, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!852 = !DISubroutineType(types: !853)
!853 = !{!82, !219, !176, !444}
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !855, line: 175)
!855 = !DISubprogram(name: "snprintf", scope: !708, file: !708, line: 340, type: !856, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!856 = !DISubroutineType(types: !857)
!857 = !{!82, !219, !125, !176, null}
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !859, line: 176)
!859 = !DISubprogram(name: "vfscanf", scope: !708, file: !708, line: 420, type: !844, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!860 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !861, line: 177)
!861 = !DISubprogram(name: "vscanf", scope: !708, file: !708, line: 428, type: !848, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !863, line: 178)
!863 = !DISubprogram(name: "vsnprintf", scope: !708, file: !708, line: 344, type: !864, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!864 = !DISubroutineType(types: !865)
!865 = !{!82, !219, !125, !176, !444}
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !867, line: 179)
!867 = !DISubprogram(name: "vsscanf", scope: !708, file: !708, line: 432, type: !868, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!868 = !DISubroutineType(types: !869)
!869 = !{!82, !176, !176, !444}
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !855, line: 185)
!871 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !859, line: 186)
!872 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !861, line: 187)
!873 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !863, line: 188)
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !867, line: 189)
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !876, line: 83)
!876 = !DISubprogram(name: "acos", scope: !877, file: !877, line: 53, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!877 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!878 = !DISubroutineType(types: !879)
!879 = !{!108, !108}
!880 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !881, line: 102)
!881 = !DISubprogram(name: "asin", scope: !877, file: !877, line: 55, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !883, line: 121)
!883 = !DISubprogram(name: "atan", scope: !877, file: !877, line: 57, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !885, line: 140)
!885 = !DISubprogram(name: "atan2", scope: !877, file: !877, line: 59, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!886 = !DISubroutineType(types: !887)
!887 = !{!108, !108, !108}
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !889, line: 161)
!889 = !DISubprogram(name: "ceil", scope: !877, file: !877, line: 159, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!890 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !891, line: 180)
!891 = !DISubprogram(name: "cos", scope: !877, file: !877, line: 62, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !893, line: 199)
!893 = !DISubprogram(name: "cosh", scope: !877, file: !877, line: 71, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !895, line: 218)
!895 = !DISubprogram(name: "exp", scope: !877, file: !877, line: 95, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !897, line: 237)
!897 = !DISubprogram(name: "fabs", scope: !877, file: !877, line: 162, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!898 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !899, line: 256)
!899 = !DISubprogram(name: "floor", scope: !877, file: !877, line: 165, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !901, line: 275)
!901 = !DISubprogram(name: "fmod", scope: !877, file: !877, line: 168, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !903, line: 296)
!903 = !DISubprogram(name: "frexp", scope: !877, file: !877, line: 98, type: !904, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!904 = !DISubroutineType(types: !905)
!905 = !{!108, !108, !906}
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!907 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !908, line: 315)
!908 = !DISubprogram(name: "ldexp", scope: !877, file: !877, line: 101, type: !909, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!909 = !DISubroutineType(types: !910)
!910 = !{!108, !108, !82}
!911 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !912, line: 334)
!912 = !DISubprogram(name: "log", scope: !877, file: !877, line: 104, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !914, line: 353)
!914 = !DISubprogram(name: "log10", scope: !877, file: !877, line: 107, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !916, line: 372)
!916 = !DISubprogram(name: "modf", scope: !877, file: !877, line: 110, type: !917, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!917 = !DISubroutineType(types: !918)
!918 = !{!108, !108, !919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!920 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !921, line: 384)
!921 = !DISubprogram(name: "pow", scope: !877, file: !877, line: 140, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !923, line: 421)
!923 = !DISubprogram(name: "sin", scope: !877, file: !877, line: 64, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !925, line: 440)
!925 = !DISubprogram(name: "sinh", scope: !877, file: !877, line: 73, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !927, line: 459)
!927 = !DISubprogram(name: "sqrt", scope: !877, file: !877, line: 143, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !929, line: 478)
!929 = !DISubprogram(name: "tan", scope: !877, file: !877, line: 66, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !931, line: 497)
!931 = !DISubprogram(name: "tanh", scope: !877, file: !877, line: 75, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !933, line: 1080)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !934, line: 150, baseType: !108)
!934 = !DIFile(filename: "/usr/include/math.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!935 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !936, line: 1081)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !934, line: 149, baseType: !262)
!937 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !938, line: 1084)
!938 = !DISubprogram(name: "acosh", scope: !877, file: !877, line: 85, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!939 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !940, line: 1085)
!940 = !DISubprogram(name: "acoshf", scope: !877, file: !877, line: 85, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!941 = !DISubroutineType(types: !942)
!942 = !{!262, !262}
!943 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !944, line: 1086)
!944 = !DISubprogram(name: "acoshl", scope: !877, file: !877, line: 85, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!945 = !DISubroutineType(types: !946)
!946 = !{!267, !267}
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !948, line: 1088)
!948 = !DISubprogram(name: "asinh", scope: !877, file: !877, line: 87, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !950, line: 1089)
!950 = !DISubprogram(name: "asinhf", scope: !877, file: !877, line: 87, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !952, line: 1090)
!952 = !DISubprogram(name: "asinhl", scope: !877, file: !877, line: 87, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !954, line: 1092)
!954 = !DISubprogram(name: "atanh", scope: !877, file: !877, line: 89, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !956, line: 1093)
!956 = !DISubprogram(name: "atanhf", scope: !877, file: !877, line: 89, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !958, line: 1094)
!958 = !DISubprogram(name: "atanhl", scope: !877, file: !877, line: 89, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !960, line: 1096)
!960 = !DISubprogram(name: "cbrt", scope: !877, file: !877, line: 152, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !962, line: 1097)
!962 = !DISubprogram(name: "cbrtf", scope: !877, file: !877, line: 152, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !964, line: 1098)
!964 = !DISubprogram(name: "cbrtl", scope: !877, file: !877, line: 152, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !966, line: 1100)
!966 = !DISubprogram(name: "copysign", scope: !877, file: !877, line: 196, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !968, line: 1101)
!968 = !DISubprogram(name: "copysignf", scope: !877, file: !877, line: 196, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!969 = !DISubroutineType(types: !970)
!970 = !{!262, !262, !262}
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !972, line: 1102)
!972 = !DISubprogram(name: "copysignl", scope: !877, file: !877, line: 196, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!973 = !DISubroutineType(types: !974)
!974 = !{!267, !267, !267}
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !976, line: 1104)
!976 = !DISubprogram(name: "erf", scope: !877, file: !877, line: 228, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!977 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !978, line: 1105)
!978 = !DISubprogram(name: "erff", scope: !877, file: !877, line: 228, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!979 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !980, line: 1106)
!980 = !DISubprogram(name: "erfl", scope: !877, file: !877, line: 228, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!981 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !982, line: 1108)
!982 = !DISubprogram(name: "erfc", scope: !877, file: !877, line: 229, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!983 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !984, line: 1109)
!984 = !DISubprogram(name: "erfcf", scope: !877, file: !877, line: 229, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!985 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !986, line: 1110)
!986 = !DISubprogram(name: "erfcl", scope: !877, file: !877, line: 229, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !988, line: 1112)
!988 = !DISubprogram(name: "exp2", scope: !877, file: !877, line: 130, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!989 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !990, line: 1113)
!990 = !DISubprogram(name: "exp2f", scope: !877, file: !877, line: 130, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!991 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !992, line: 1114)
!992 = !DISubprogram(name: "exp2l", scope: !877, file: !877, line: 130, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!993 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !994, line: 1116)
!994 = !DISubprogram(name: "expm1", scope: !877, file: !877, line: 119, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!995 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !996, line: 1117)
!996 = !DISubprogram(name: "expm1f", scope: !877, file: !877, line: 119, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!997 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !998, line: 1118)
!998 = !DISubprogram(name: "expm1l", scope: !877, file: !877, line: 119, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!999 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1000, line: 1120)
!1000 = !DISubprogram(name: "fdim", scope: !877, file: !877, line: 326, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1001 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1002, line: 1121)
!1002 = !DISubprogram(name: "fdimf", scope: !877, file: !877, line: 326, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1003 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1004, line: 1122)
!1004 = !DISubprogram(name: "fdiml", scope: !877, file: !877, line: 326, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1005 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1006, line: 1124)
!1006 = !DISubprogram(name: "fma", scope: !877, file: !877, line: 335, type: !1007, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!108, !108, !108, !108}
!1009 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1010, line: 1125)
!1010 = !DISubprogram(name: "fmaf", scope: !877, file: !877, line: 335, type: !1011, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!262, !262, !262, !262}
!1013 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1014, line: 1126)
!1014 = !DISubprogram(name: "fmal", scope: !877, file: !877, line: 335, type: !1015, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!267, !267, !267, !267}
!1017 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1018, line: 1128)
!1018 = !DISubprogram(name: "fmax", scope: !877, file: !877, line: 329, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1019 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1020, line: 1129)
!1020 = !DISubprogram(name: "fmaxf", scope: !877, file: !877, line: 329, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1021 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1022, line: 1130)
!1022 = !DISubprogram(name: "fmaxl", scope: !877, file: !877, line: 329, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1024, line: 1132)
!1024 = !DISubprogram(name: "fmin", scope: !877, file: !877, line: 332, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1025 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1026, line: 1133)
!1026 = !DISubprogram(name: "fminf", scope: !877, file: !877, line: 332, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1027 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1028, line: 1134)
!1028 = !DISubprogram(name: "fminl", scope: !877, file: !877, line: 332, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1029 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1030, line: 1136)
!1030 = !DISubprogram(name: "hypot", scope: !877, file: !877, line: 147, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1031 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1032, line: 1137)
!1032 = !DISubprogram(name: "hypotf", scope: !877, file: !877, line: 147, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1033 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1034, line: 1138)
!1034 = !DISubprogram(name: "hypotl", scope: !877, file: !877, line: 147, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1035 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1036, line: 1140)
!1036 = !DISubprogram(name: "ilogb", scope: !877, file: !877, line: 280, type: !1037, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!82, !108}
!1039 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1040, line: 1141)
!1040 = !DISubprogram(name: "ilogbf", scope: !877, file: !877, line: 280, type: !1041, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!82, !262}
!1043 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1044, line: 1142)
!1044 = !DISubprogram(name: "ilogbl", scope: !877, file: !877, line: 280, type: !1045, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!82, !267}
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1048, line: 1144)
!1048 = !DISubprogram(name: "lgamma", scope: !877, file: !877, line: 230, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1049 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1050, line: 1145)
!1050 = !DISubprogram(name: "lgammaf", scope: !877, file: !877, line: 230, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1051 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1052, line: 1146)
!1052 = !DISubprogram(name: "lgammal", scope: !877, file: !877, line: 230, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1053 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1054, line: 1149)
!1054 = !DISubprogram(name: "llrint", scope: !877, file: !877, line: 316, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!233, !108}
!1057 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1058, line: 1150)
!1058 = !DISubprogram(name: "llrintf", scope: !877, file: !877, line: 316, type: !1059, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!233, !262}
!1061 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1062, line: 1151)
!1062 = !DISubprogram(name: "llrintl", scope: !877, file: !877, line: 316, type: !1063, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!233, !267}
!1065 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1066, line: 1153)
!1066 = !DISubprogram(name: "llround", scope: !877, file: !877, line: 322, type: !1055, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1068, line: 1154)
!1068 = !DISubprogram(name: "llroundf", scope: !877, file: !877, line: 322, type: !1059, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1069 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1070, line: 1155)
!1070 = !DISubprogram(name: "llroundl", scope: !877, file: !877, line: 322, type: !1063, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1071 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1072, line: 1158)
!1072 = !DISubprogram(name: "log1p", scope: !877, file: !877, line: 122, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1073 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1074, line: 1159)
!1074 = !DISubprogram(name: "log1pf", scope: !877, file: !877, line: 122, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1075 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1076, line: 1160)
!1076 = !DISubprogram(name: "log1pl", scope: !877, file: !877, line: 122, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1077 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1078, line: 1162)
!1078 = !DISubprogram(name: "log2", scope: !877, file: !877, line: 133, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1079 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1080, line: 1163)
!1080 = !DISubprogram(name: "log2f", scope: !877, file: !877, line: 133, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1081 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1082, line: 1164)
!1082 = !DISubprogram(name: "log2l", scope: !877, file: !877, line: 133, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1083 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1084, line: 1166)
!1084 = !DISubprogram(name: "logb", scope: !877, file: !877, line: 125, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1085 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1086, line: 1167)
!1086 = !DISubprogram(name: "logbf", scope: !877, file: !877, line: 125, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1087 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1088, line: 1168)
!1088 = !DISubprogram(name: "logbl", scope: !877, file: !877, line: 125, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1089 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1090, line: 1170)
!1090 = !DISubprogram(name: "lrint", scope: !877, file: !877, line: 314, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!91, !108}
!1093 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1094, line: 1171)
!1094 = !DISubprogram(name: "lrintf", scope: !877, file: !877, line: 314, type: !1095, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!91, !262}
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1098, line: 1172)
!1098 = !DISubprogram(name: "lrintl", scope: !877, file: !877, line: 314, type: !1099, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!91, !267}
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1102, line: 1174)
!1102 = !DISubprogram(name: "lround", scope: !877, file: !877, line: 320, type: !1091, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1104, line: 1175)
!1104 = !DISubprogram(name: "lroundf", scope: !877, file: !877, line: 320, type: !1095, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1106, line: 1176)
!1106 = !DISubprogram(name: "lroundl", scope: !877, file: !877, line: 320, type: !1099, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1108, line: 1178)
!1108 = !DISubprogram(name: "nan", scope: !877, file: !877, line: 201, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1110, line: 1179)
!1110 = !DISubprogram(name: "nanf", scope: !877, file: !877, line: 201, type: !1111, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!262, !109}
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1114, line: 1180)
!1114 = !DISubprogram(name: "nanl", scope: !877, file: !877, line: 201, type: !1115, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!267, !109}
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1118, line: 1182)
!1118 = !DISubprogram(name: "nearbyint", scope: !877, file: !877, line: 294, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1120, line: 1183)
!1120 = !DISubprogram(name: "nearbyintf", scope: !877, file: !877, line: 294, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1122, line: 1184)
!1122 = !DISubprogram(name: "nearbyintl", scope: !877, file: !877, line: 294, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1124, line: 1186)
!1124 = !DISubprogram(name: "nextafter", scope: !877, file: !877, line: 259, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1126, line: 1187)
!1126 = !DISubprogram(name: "nextafterf", scope: !877, file: !877, line: 259, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1128, line: 1188)
!1128 = !DISubprogram(name: "nextafterl", scope: !877, file: !877, line: 259, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1130, line: 1190)
!1130 = !DISubprogram(name: "nexttoward", scope: !877, file: !877, line: 261, type: !1131, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!108, !108, !267}
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1134, line: 1191)
!1134 = !DISubprogram(name: "nexttowardf", scope: !877, file: !877, line: 261, type: !1135, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!262, !262, !267}
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1138, line: 1192)
!1138 = !DISubprogram(name: "nexttowardl", scope: !877, file: !877, line: 261, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1140, line: 1194)
!1140 = !DISubprogram(name: "remainder", scope: !877, file: !877, line: 272, type: !886, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1142, line: 1195)
!1142 = !DISubprogram(name: "remainderf", scope: !877, file: !877, line: 272, type: !969, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1144, line: 1196)
!1144 = !DISubprogram(name: "remainderl", scope: !877, file: !877, line: 272, type: !973, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1146, line: 1198)
!1146 = !DISubprogram(name: "remquo", scope: !877, file: !877, line: 307, type: !1147, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!108, !108, !108, !906}
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1150, line: 1199)
!1150 = !DISubprogram(name: "remquof", scope: !877, file: !877, line: 307, type: !1151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!262, !262, !262, !906}
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1154, line: 1200)
!1154 = !DISubprogram(name: "remquol", scope: !877, file: !877, line: 307, type: !1155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!267, !267, !267, !906}
!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1158, line: 1202)
!1158 = !DISubprogram(name: "rint", scope: !877, file: !877, line: 256, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1160, line: 1203)
!1160 = !DISubprogram(name: "rintf", scope: !877, file: !877, line: 256, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1162, line: 1204)
!1162 = !DISubprogram(name: "rintl", scope: !877, file: !877, line: 256, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1164, line: 1206)
!1164 = !DISubprogram(name: "round", scope: !877, file: !877, line: 298, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1166, line: 1207)
!1166 = !DISubprogram(name: "roundf", scope: !877, file: !877, line: 298, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1168, line: 1208)
!1168 = !DISubprogram(name: "roundl", scope: !877, file: !877, line: 298, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1170, line: 1210)
!1170 = !DISubprogram(name: "scalbln", scope: !877, file: !877, line: 290, type: !1171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!108, !108, !91}
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1174, line: 1211)
!1174 = !DISubprogram(name: "scalblnf", scope: !877, file: !877, line: 290, type: !1175, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!262, !262, !91}
!1177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1178, line: 1212)
!1178 = !DISubprogram(name: "scalblnl", scope: !877, file: !877, line: 290, type: !1179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!267, !267, !91}
!1181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1182, line: 1214)
!1182 = !DISubprogram(name: "scalbn", scope: !877, file: !877, line: 276, type: !909, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1184, line: 1215)
!1184 = !DISubprogram(name: "scalbnf", scope: !877, file: !877, line: 276, type: !1185, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!262, !262, !82}
!1187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1188, line: 1216)
!1188 = !DISubprogram(name: "scalbnl", scope: !877, file: !877, line: 276, type: !1189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!267, !267, !82}
!1191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1192, line: 1218)
!1192 = !DISubprogram(name: "tgamma", scope: !877, file: !877, line: 235, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1194, line: 1219)
!1194 = !DISubprogram(name: "tgammaf", scope: !877, file: !877, line: 235, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1196, line: 1220)
!1196 = !DISubprogram(name: "tgammal", scope: !877, file: !877, line: 235, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1198, line: 1222)
!1198 = !DISubprogram(name: "trunc", scope: !877, file: !877, line: 302, type: !878, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1200, line: 1223)
!1200 = !DISubprogram(name: "truncf", scope: !877, file: !877, line: 302, type: !941, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1202, line: 1224)
!1202 = !DISubprogram(name: "truncl", scope: !877, file: !877, line: 302, type: !945, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1204, line: 58)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !1205, line: 94, baseType: !1206)
!1205 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1205, line: 75, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")
!1207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1208, line: 59)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !1205, line: 68, baseType: !29)
!1209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1210, line: 62)
!1210 = !DISubprogram(name: "feclearexcept", scope: !1211, file: !1211, line: 71, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1211 = !DIFile(filename: "/usr/include/fenv.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1213, line: 63)
!1213 = !DISubprogram(name: "fegetexceptflag", scope: !1211, file: !1211, line: 75, type: !1214, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!82, !1216, !82}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1218, line: 64)
!1218 = !DISubprogram(name: "feraiseexcept", scope: !1211, file: !1211, line: 78, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1220, line: 65)
!1220 = !DISubprogram(name: "fesetexceptflag", scope: !1211, file: !1211, line: 88, type: !1221, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!82, !1223, !82}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1208)
!1225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1226, line: 66)
!1226 = !DISubprogram(name: "fetestexcept", scope: !1211, file: !1211, line: 92, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1228, line: 68)
!1228 = !DISubprogram(name: "fegetround", scope: !1211, file: !1211, line: 104, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1230, line: 69)
!1230 = !DISubprogram(name: "fesetround", scope: !1211, file: !1211, line: 107, type: !80, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1232, line: 71)
!1232 = !DISubprogram(name: "fegetenv", scope: !1211, file: !1211, line: 114, type: !1233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!82, !1235}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1237, line: 72)
!1237 = !DISubprogram(name: "feholdexcept", scope: !1211, file: !1211, line: 119, type: !1233, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1239, line: 73)
!1239 = !DISubprogram(name: "fesetenv", scope: !1211, file: !1211, line: 123, type: !1240, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!82, !1242}
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1204)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1245, line: 74)
!1245 = !DISubprogram(name: "feupdateenv", scope: !1211, file: !1211, line: 128, type: !1240, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1204, line: 61)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1208, line: 62)
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1210, line: 65)
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1213, line: 66)
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1218, line: 67)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1220, line: 68)
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1226, line: 69)
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1228, line: 71)
!1254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1230, line: 72)
!1255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1232, line: 74)
!1256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1237, line: 75)
!1257 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1239, line: 76)
!1258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1245, line: 77)
!1259 = !{i32 2, !"Dwarf Version", i32 4}
!1260 = !{i32 2, !"Debug Info Version", i32 3}
!1261 = distinct !DISubprogram(name: "__remill_basic_block", scope: !2, file: !2, line: 52, type: !1262, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !1, variables: !7)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!1264, !1267, !1950, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Memory", file: !1266, line: 36, flags: DIFlagFwdDecl, identifier: "_ZTS6Memory")
!1266 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/Runtime/Types.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1267 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "State", file: !27, line: 742, size: 27008, align: 128, elements: !1269, identifier: "_ZTS5State")
!1269 = !{!1270, !1282, !1491, !1511, !1541, !1566, !1595, !1632, !1642, !1703, !1728, !1752, !1932}
!1270 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1268, baseType: !1271)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArchState", file: !1272, line: 21, size: 128, elements: !1273, identifier: "_ZTS9ArchState")
!1272 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/Runtime/State.h", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1273 = !{!1274, !1275, !1276}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_call", scope: !1271, file: !1272, line: 23, baseType: !4, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1271, file: !1272, line: 25, baseType: !8, size: 32, offset: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1271, file: !1272, line: 31, baseType: !1277, size: 64, offset: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1271, file: !1272, line: 31, size: 64, elements: !1278, identifier: "_ZTSN9ArchStateUt_E")
!1278 = !{!1279, !1280, !1281}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_load", scope: !1277, file: !1272, line: 32, baseType: !637, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_store", scope: !1277, file: !1272, line: 33, baseType: !637, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_call_vector", scope: !1277, file: !1272, line: 34, baseType: !8, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1268, file: !27, line: 747, baseType: !1283, size: 16384, offset: 128)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1284, size: 16384, elements: !1369)
!1284 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "VectorReg", file: !27, line: 636, size: 512, align: 128, elements: !1285, identifier: "_ZTS9VectorReg")
!1285 = !{!1286, !1361, !1426}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1284, file: !27, line: 637, baseType: !1287, size: 128, align: 128)
!1287 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec128_t", file: !1266, line: 317, size: 128, elements: !1288, identifier: "_ZTS8vec128_t")
!1288 = !{!1289, !1298, !1305, !1312, !1317, !1324, !1329, !1334, !1339, !1344, !1349, !1354}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1287, file: !1266, line: 321, baseType: !1290, size: 128)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v1_t", file: !1266, line: 205, size: 128, elements: !1291, identifier: "_ZTS11uint128v1_t")
!1291 = !{!1292}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1290, file: !1266, line: 205, baseType: !1293, size: 128)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 128, elements: !1296)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint128_t", file: !1266, line: 46, baseType: !1295)
!1295 = !DIBasicType(name: "unsigned __int128", size: 128, encoding: DW_ATE_unsigned)
!1296 = !{!1297}
!1297 = !DISubrange(count: 1)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1287, file: !1266, line: 323, baseType: !1299, size: 128)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v16_t", file: !1266, line: 182, size: 128, elements: !1300, identifier: "_ZTS10uint8v16_t")
!1300 = !{!1301}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1299, file: !1266, line: 182, baseType: !1302, size: 128)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 128, elements: !1303)
!1303 = !{!1304}
!1304 = !DISubrange(count: 16)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1287, file: !1266, line: 324, baseType: !1306, size: 128)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v8_t", file: !1266, line: 189, size: 128, elements: !1307, identifier: "_ZTS10uint16v8_t")
!1307 = !{!1308}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1306, file: !1266, line: 189, baseType: !1309, size: 128)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 128, elements: !1310)
!1310 = !{!1311}
!1311 = !DISubrange(count: 8)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1287, file: !1266, line: 325, baseType: !1313, size: 128)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v4_t", file: !1266, line: 195, size: 128, elements: !1314, identifier: "_ZTS10uint32v4_t")
!1314 = !{!1315}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1313, file: !1266, line: 195, baseType: !1316, size: 128)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 128, elements: !353)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1287, file: !1266, line: 326, baseType: !1318, size: 128)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v2_t", file: !1266, line: 200, size: 128, elements: !1319, identifier: "_ZTS10uint64v2_t")
!1319 = !{!1320}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1318, file: !1266, line: 200, baseType: !1321, size: 128)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 128, elements: !1322)
!1322 = !{!1323}
!1323 = !DISubrange(count: 2)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1287, file: !1266, line: 327, baseType: !1325, size: 128)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v4_t", file: !1266, line: 242, size: 128, elements: !1326, identifier: "_ZTS11float32v4_t")
!1326 = !{!1327}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1325, file: !1266, line: 242, baseType: !1328, size: 128)
!1328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 128, elements: !353)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1287, file: !1266, line: 328, baseType: !1330, size: 128)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v2_t", file: !1266, line: 247, size: 128, elements: !1331, identifier: "_ZTS11float64v2_t")
!1331 = !{!1332}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1330, file: !1266, line: 247, baseType: !1333, size: 128)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !1322)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1287, file: !1266, line: 330, baseType: !1335, size: 128)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v16_t", file: !1266, line: 213, size: 128, elements: !1336, identifier: "_ZTS9int8v16_t")
!1336 = !{!1337}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1335, file: !1266, line: 213, baseType: !1338, size: 128)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 128, elements: !1303)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1287, file: !1266, line: 331, baseType: !1340, size: 128)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v8_t", file: !1266, line: 220, size: 128, elements: !1341, identifier: "_ZTS9int16v8_t")
!1341 = !{!1342}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1340, file: !1266, line: 220, baseType: !1343, size: 128)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 128, elements: !1310)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1287, file: !1266, line: 332, baseType: !1345, size: 128)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v4_t", file: !1266, line: 226, size: 128, elements: !1346, identifier: "_ZTS9int32v4_t")
!1346 = !{!1347}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1345, file: !1266, line: 226, baseType: !1348, size: 128)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 128, elements: !353)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1287, file: !1266, line: 333, baseType: !1350, size: 128)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v2_t", file: !1266, line: 231, size: 128, elements: !1351, identifier: "_ZTS9int64v2_t")
!1351 = !{!1352}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1350, file: !1266, line: 231, baseType: !1353, size: 128)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 128, elements: !1322)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1287, file: !1266, line: 334, baseType: !1355, size: 128)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v1_t", file: !1266, line: 236, size: 128, elements: !1356, identifier: "_ZTS10int128v1_t")
!1356 = !{!1357}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1355, file: !1266, line: 236, baseType: !1358, size: 128)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, size: 128, elements: !1296)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "int128_t", file: !1266, line: 47, baseType: !1360)
!1360 = !DIBasicType(name: "__int128", size: 128, encoding: DW_ATE_signed)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ymm", scope: !1284, file: !27, line: 638, baseType: !1362, size: 256, align: 128)
!1362 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec256_t", file: !1266, line: 340, size: 256, elements: !1363, identifier: "_ZTS8vec256_t")
!1363 = !{!1364, !1371, !1376, !1381, !1386, !1391, !1396, !1401, !1406, !1411, !1416, !1421}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1362, file: !1266, line: 341, baseType: !1365, size: 256)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v32_t", file: !1266, line: 183, size: 256, elements: !1366, identifier: "_ZTS10uint8v32_t")
!1366 = !{!1367}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1365, file: !1266, line: 183, baseType: !1368, size: 256)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !1369)
!1369 = !{!1370}
!1370 = !DISubrange(count: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1362, file: !1266, line: 342, baseType: !1372, size: 256)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v16_t", file: !1266, line: 190, size: 256, elements: !1373, identifier: "_ZTS11uint16v16_t")
!1373 = !{!1374}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1372, file: !1266, line: 190, baseType: !1375, size: 256)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 256, elements: !1303)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1362, file: !1266, line: 343, baseType: !1377, size: 256)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v8_t", file: !1266, line: 196, size: 256, elements: !1378, identifier: "_ZTS10uint32v8_t")
!1378 = !{!1379}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1377, file: !1266, line: 196, baseType: !1380, size: 256)
!1380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !1310)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1362, file: !1266, line: 344, baseType: !1382, size: 256)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v4_t", file: !1266, line: 201, size: 256, elements: !1383, identifier: "_ZTS10uint64v4_t")
!1383 = !{!1384}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1382, file: !1266, line: 201, baseType: !1385, size: 256)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 256, elements: !353)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1362, file: !1266, line: 345, baseType: !1387, size: 256)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v2_t", file: !1266, line: 206, size: 256, elements: !1388, identifier: "_ZTS11uint128v2_t")
!1388 = !{!1389}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1387, file: !1266, line: 206, baseType: !1390, size: 256)
!1390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 256, elements: !1322)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1362, file: !1266, line: 346, baseType: !1392, size: 256)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v8_t", file: !1266, line: 243, size: 256, elements: !1393, identifier: "_ZTS11float32v8_t")
!1393 = !{!1394}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1392, file: !1266, line: 243, baseType: !1395, size: 256)
!1395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 256, elements: !1310)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1362, file: !1266, line: 347, baseType: !1397, size: 256)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v4_t", file: !1266, line: 248, size: 256, elements: !1398, identifier: "_ZTS11float64v4_t")
!1398 = !{!1399}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1397, file: !1266, line: 248, baseType: !1400, size: 256)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !353)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1362, file: !1266, line: 349, baseType: !1402, size: 256)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v32_t", file: !1266, line: 214, size: 256, elements: !1403, identifier: "_ZTS9int8v32_t")
!1403 = !{!1404}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1402, file: !1266, line: 214, baseType: !1405, size: 256)
!1405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 256, elements: !1369)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1362, file: !1266, line: 350, baseType: !1407, size: 256)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v16_t", file: !1266, line: 221, size: 256, elements: !1408, identifier: "_ZTS10int16v16_t")
!1408 = !{!1409}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1407, file: !1266, line: 221, baseType: !1410, size: 256)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 256, elements: !1303)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1362, file: !1266, line: 351, baseType: !1412, size: 256)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v8_t", file: !1266, line: 227, size: 256, elements: !1413, identifier: "_ZTS9int32v8_t")
!1413 = !{!1414}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1412, file: !1266, line: 227, baseType: !1415, size: 256)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 256, elements: !1310)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1362, file: !1266, line: 352, baseType: !1417, size: 256)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v4_t", file: !1266, line: 232, size: 256, elements: !1418, identifier: "_ZTS9int64v4_t")
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1417, file: !1266, line: 232, baseType: !1420, size: 256)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 256, elements: !353)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1362, file: !1266, line: 353, baseType: !1422, size: 256)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v2_t", file: !1266, line: 237, size: 256, elements: !1423, identifier: "_ZTS10int128v2_t")
!1423 = !{!1424}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1422, file: !1266, line: 237, baseType: !1425, size: 256)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, size: 256, elements: !1322)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "zmm", scope: !1284, file: !27, line: 639, baseType: !1427, size: 512, align: 128)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec512_t", file: !1266, line: 359, size: 512, elements: !1428, identifier: "_ZTS8vec512_t")
!1428 = !{!1429, !1436, !1441, !1446, !1451, !1456, !1461, !1466, !1471, !1476, !1481, !1486}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1427, file: !1266, line: 360, baseType: !1430, size: 512)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v64_t", file: !1266, line: 184, size: 512, elements: !1431, identifier: "_ZTS10uint8v64_t")
!1431 = !{!1432}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1430, file: !1266, line: 184, baseType: !1433, size: 512)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 512, elements: !1434)
!1434 = !{!1435}
!1435 = !DISubrange(count: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1427, file: !1266, line: 361, baseType: !1437, size: 512)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v32_t", file: !1266, line: 191, size: 512, elements: !1438, identifier: "_ZTS11uint16v32_t")
!1438 = !{!1439}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1437, file: !1266, line: 191, baseType: !1440, size: 512)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 512, elements: !1369)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1427, file: !1266, line: 362, baseType: !1442, size: 512)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v16_t", file: !1266, line: 197, size: 512, elements: !1443, identifier: "_ZTS11uint32v16_t")
!1443 = !{!1444}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1442, file: !1266, line: 197, baseType: !1445, size: 512)
!1445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 512, elements: !1303)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1427, file: !1266, line: 363, baseType: !1447, size: 512)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v8_t", file: !1266, line: 202, size: 512, elements: !1448, identifier: "_ZTS10uint64v8_t")
!1448 = !{!1449}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1447, file: !1266, line: 202, baseType: !1450, size: 512)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 512, elements: !1310)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "dqwords", scope: !1427, file: !1266, line: 364, baseType: !1452, size: 512)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint128v4_t", file: !1266, line: 207, size: 512, elements: !1453, identifier: "_ZTS11uint128v4_t")
!1453 = !{!1454}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1452, file: !1266, line: 207, baseType: !1455, size: 512)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 512, elements: !353)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1427, file: !1266, line: 365, baseType: !1457, size: 512)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v16_t", file: !1266, line: 244, size: 512, elements: !1458, identifier: "_ZTS12float32v16_t")
!1458 = !{!1459}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1457, file: !1266, line: 244, baseType: !1460, size: 512)
!1460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 512, elements: !1303)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1427, file: !1266, line: 366, baseType: !1462, size: 512)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v8_t", file: !1266, line: 249, size: 512, elements: !1463, identifier: "_ZTS11float64v8_t")
!1463 = !{!1464}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1462, file: !1266, line: 249, baseType: !1465, size: 512)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 512, elements: !1310)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1427, file: !1266, line: 368, baseType: !1467, size: 512)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v64_t", file: !1266, line: 215, size: 512, elements: !1468, identifier: "_ZTS9int8v64_t")
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1467, file: !1266, line: 215, baseType: !1470, size: 512)
!1470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 512, elements: !1434)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1427, file: !1266, line: 369, baseType: !1472, size: 512)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v32_t", file: !1266, line: 222, size: 512, elements: !1473, identifier: "_ZTS10int16v32_t")
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1472, file: !1266, line: 222, baseType: !1475, size: 512)
!1475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 512, elements: !1369)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1427, file: !1266, line: 370, baseType: !1477, size: 512)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v16_t", file: !1266, line: 228, size: 512, elements: !1478, identifier: "_ZTS10int32v16_t")
!1478 = !{!1479}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1477, file: !1266, line: 228, baseType: !1480, size: 512)
!1480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 512, elements: !1303)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1427, file: !1266, line: 371, baseType: !1482, size: 512)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v8_t", file: !1266, line: 233, size: 512, elements: !1483, identifier: "_ZTS9int64v8_t")
!1483 = !{!1484}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1482, file: !1266, line: 233, baseType: !1485, size: 512)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 512, elements: !1310)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "sdqwords", scope: !1427, file: !1266, line: 372, baseType: !1487, size: 512)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int128v4_t", file: !1266, line: 238, size: 512, elements: !1488, identifier: "_ZTS10int128v4_t")
!1488 = !{!1489}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1487, file: !1266, line: 238, baseType: !1490, size: 512)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, size: 512, elements: !353)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "aflag", scope: !1268, file: !27, line: 751, baseType: !1492, size: 128, align: 64, offset: 16512)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ArithFlags", file: !27, line: 402, size: 128, align: 64, elements: !1493, identifier: "_ZTS10ArithFlags")
!1493 = !{!1494, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1492, file: !27, line: 404, baseType: !1495, size: 8)
!1495 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !62)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !1492, file: !27, line: 405, baseType: !62, size: 8, offset: 8)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1492, file: !27, line: 406, baseType: !1495, size: 8, offset: 16)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !1492, file: !27, line: 407, baseType: !62, size: 8, offset: 24)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1492, file: !27, line: 408, baseType: !1495, size: 8, offset: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1492, file: !27, line: 409, baseType: !62, size: 8, offset: 40)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1492, file: !27, line: 410, baseType: !1495, size: 8, offset: 48)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "zf", scope: !1492, file: !27, line: 411, baseType: !62, size: 8, offset: 56)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1492, file: !27, line: 412, baseType: !1495, size: 8, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1492, file: !27, line: 413, baseType: !62, size: 8, offset: 72)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1492, file: !27, line: 414, baseType: !1495, size: 8, offset: 80)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !1492, file: !27, line: 415, baseType: !62, size: 8, offset: 88)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1492, file: !27, line: 416, baseType: !1495, size: 8, offset: 96)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !1492, file: !27, line: 417, baseType: !62, size: 8, offset: 104)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1492, file: !27, line: 418, baseType: !1495, size: 8, offset: 112)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1492, file: !27, line: 419, baseType: !1495, size: 8, offset: 120)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rflag", scope: !1268, file: !27, line: 752, baseType: !1512, size: 64, align: 64, offset: 16640)
!1512 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Flags", file: !27, line: 366, size: 64, align: 64, elements: !1513, identifier: "_ZTS5Flags")
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1512, file: !27, line: 367, baseType: !637, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !27, line: 368, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1512, file: !27, line: 368, size: 64, elements: !1517, identifier: "_ZTSN5FlagsUt_E")
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "cf", scope: !1516, file: !27, line: 369, baseType: !8, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_1", scope: !1516, file: !27, line: 370, baseType: !8, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "pf", scope: !1516, file: !27, line: 371, baseType: !8, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0a", scope: !1516, file: !27, line: 372, baseType: !8, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !1516, file: !27, line: 374, baseType: !8, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0b", scope: !1516, file: !27, line: 375, baseType: !8, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "zf", scope: !1516, file: !27, line: 376, baseType: !8, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1516, file: !27, line: 377, baseType: !8, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "tf", scope: !1516, file: !27, line: 379, baseType: !8, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_if", scope: !1516, file: !27, line: 380, baseType: !8, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "df", scope: !1516, file: !27, line: 381, baseType: !8, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !1516, file: !27, line: 382, baseType: !8, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "iopl", scope: !1516, file: !27, line: 384, baseType: !8, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "nt", scope: !1516, file: !27, line: 385, baseType: !8, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "must_be_0c", scope: !1516, file: !27, line: 386, baseType: !8, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !1516, file: !27, line: 388, baseType: !8, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "vm", scope: !1516, file: !27, line: 389, baseType: !8, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ac", scope: !1516, file: !27, line: 390, baseType: !8, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "vif", scope: !1516, file: !27, line: 391, baseType: !8, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !1516, file: !27, line: 393, baseType: !8, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1516, file: !27, line: 394, baseType: !8, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_eflags", scope: !1516, file: !27, line: 395, baseType: !8, size: 10, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_rflags", scope: !1516, file: !27, line: 396, baseType: !8, size: 32, offset: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "seg", scope: !1268, file: !27, line: 753, baseType: !1542, size: 192, align: 64, offset: 16704)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Segments", file: !27, line: 451, size: 192, align: 64, elements: !1543, identifier: "_ZTS8Segments")
!1543 = !{!1544, !1546, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1542, file: !27, line: 452, baseType: !1545, size: 16)
!1545 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !28)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1542, file: !27, line: 453, baseType: !1547, size: 16, offset: 16)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "SegmentSelector", file: !27, line: 76, size: 16, elements: !1548, identifier: "_ZTS15SegmentSelector")
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1547, file: !27, line: 77, baseType: !28, size: 16)
!1550 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !27, line: 78, baseType: !1551, size: 16)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1547, file: !27, line: 78, size: 16, elements: !1552, identifier: "_ZTSN15SegmentSelectorUt_E")
!1552 = !{!1553, !1554, !1555}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rpi", scope: !1551, file: !27, line: 79, baseType: !26, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ti", scope: !1551, file: !27, line: 80, baseType: !35, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1551, file: !27, line: 81, baseType: !28, size: 13, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1542, file: !27, line: 454, baseType: !1545, size: 16, offset: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1542, file: !27, line: 455, baseType: !1547, size: 16, offset: 48)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1542, file: !27, line: 456, baseType: !1545, size: 16, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1542, file: !27, line: 457, baseType: !1547, size: 16, offset: 80)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1542, file: !27, line: 458, baseType: !1545, size: 16, offset: 96)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1542, file: !27, line: 459, baseType: !1547, size: 16, offset: 112)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1542, file: !27, line: 460, baseType: !1545, size: 16, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1542, file: !27, line: 461, baseType: !1547, size: 16, offset: 144)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1542, file: !27, line: 462, baseType: !1545, size: 16, offset: 160)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1542, file: !27, line: 463, baseType: !1547, size: 16, offset: 176)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1268, file: !27, line: 754, baseType: !1567, size: 768, align: 64, offset: 16896)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "AddressSpace", file: !27, line: 654, size: 768, align: 64, elements: !1568, identifier: "_ZTS12AddressSpace")
!1568 = !{!1569, !1571, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1567, file: !27, line: 655, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !637)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ss_base", scope: !1567, file: !27, line: 656, baseType: !1572, size: 64, offset: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Reg", file: !27, line: 610, size: 64, elements: !1573, identifier: "_ZTS3Reg")
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !27, line: 611, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1572, file: !27, line: 611, size: 64, elements: !1576, identifier: "_ZTSN3RegUt_E")
!1576 = !{!1577, !1582, !1583, !1584}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !1575, file: !27, line: 615, baseType: !1578, size: 16, align: 8)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1575, file: !27, line: 612, size: 16, elements: !1579, identifier: "_ZTSN3RegUt_Ut_E")
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !1578, file: !27, line: 613, baseType: !62, size: 8)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !1578, file: !27, line: 614, baseType: !62, size: 8, offset: 8)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !1575, file: !27, line: 616, baseType: !28, size: 16, align: 16)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !1575, file: !27, line: 617, baseType: !8, size: 32, align: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "qword", scope: !1575, file: !27, line: 618, baseType: !637, size: 64, align: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1567, file: !27, line: 657, baseType: !1570, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "es_base", scope: !1567, file: !27, line: 658, baseType: !1572, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1567, file: !27, line: 659, baseType: !1570, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "gs_base", scope: !1567, file: !27, line: 660, baseType: !1572, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1567, file: !27, line: 661, baseType: !1570, size: 64, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "fs_base", scope: !1567, file: !27, line: 662, baseType: !1572, size: 64, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1567, file: !27, line: 663, baseType: !1570, size: 64, offset: 512)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ds_base", scope: !1567, file: !27, line: 664, baseType: !1572, size: 64, offset: 576)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1567, file: !27, line: 665, baseType: !1570, size: 64, offset: 640)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cs_base", scope: !1567, file: !27, line: 666, baseType: !1572, size: 64, offset: 704)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "gpr", scope: !1268, file: !27, line: 755, baseType: !1596, size: 2176, align: 64, offset: 17664)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GPR", file: !27, line: 677, size: 2176, align: 64, elements: !1597, identifier: "_ZTS3GPR")
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1596, file: !27, line: 679, baseType: !1570, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "rax", scope: !1596, file: !27, line: 680, baseType: !1572, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1596, file: !27, line: 681, baseType: !1570, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "rbx", scope: !1596, file: !27, line: 682, baseType: !1572, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1596, file: !27, line: 683, baseType: !1570, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rcx", scope: !1596, file: !27, line: 684, baseType: !1572, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1596, file: !27, line: 685, baseType: !1570, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "rdx", scope: !1596, file: !27, line: 686, baseType: !1572, size: 64, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1596, file: !27, line: 687, baseType: !1570, size: 64, offset: 512)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rsi", scope: !1596, file: !27, line: 688, baseType: !1572, size: 64, offset: 576)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1596, file: !27, line: 689, baseType: !1570, size: 64, offset: 640)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rdi", scope: !1596, file: !27, line: 690, baseType: !1572, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1596, file: !27, line: 691, baseType: !1570, size: 64, offset: 768)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "rsp", scope: !1596, file: !27, line: 692, baseType: !1572, size: 64, offset: 832)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1596, file: !27, line: 693, baseType: !1570, size: 64, offset: 896)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "rbp", scope: !1596, file: !27, line: 694, baseType: !1572, size: 64, offset: 960)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1596, file: !27, line: 695, baseType: !1570, size: 64, offset: 1024)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1596, file: !27, line: 696, baseType: !1572, size: 64, offset: 1088)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_9", scope: !1596, file: !27, line: 697, baseType: !1570, size: 64, offset: 1152)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1596, file: !27, line: 698, baseType: !1572, size: 64, offset: 1216)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "_10", scope: !1596, file: !27, line: 699, baseType: !1570, size: 64, offset: 1280)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1596, file: !27, line: 700, baseType: !1572, size: 64, offset: 1344)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_11", scope: !1596, file: !27, line: 701, baseType: !1570, size: 64, offset: 1408)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1596, file: !27, line: 702, baseType: !1572, size: 64, offset: 1472)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_12", scope: !1596, file: !27, line: 703, baseType: !1570, size: 64, offset: 1536)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1596, file: !27, line: 704, baseType: !1572, size: 64, offset: 1600)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_13", scope: !1596, file: !27, line: 705, baseType: !1570, size: 64, offset: 1664)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1596, file: !27, line: 706, baseType: !1572, size: 64, offset: 1728)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_14", scope: !1596, file: !27, line: 707, baseType: !1570, size: 64, offset: 1792)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1596, file: !27, line: 708, baseType: !1572, size: 64, offset: 1856)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_15", scope: !1596, file: !27, line: 709, baseType: !1570, size: 64, offset: 1920)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1596, file: !27, line: 710, baseType: !1572, size: 64, offset: 1984)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_16", scope: !1596, file: !27, line: 711, baseType: !1570, size: 64, offset: 2048)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1596, file: !27, line: 714, baseType: !1572, size: 64, offset: 2112)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1268, file: !27, line: 756, baseType: !1633, size: 1024, align: 64, offset: 19840)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "X87Stack", file: !27, line: 719, size: 1024, align: 64, elements: !1634, identifier: "_ZTS8X87Stack")
!1634 = !{!1635}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1633, file: !27, line: 723, baseType: !1636, size: 1024)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1637, size: 1024, elements: !1310)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1633, file: !27, line: 720, size: 128, align: 64, elements: !1638, identifier: "_ZTSN8X87StackUt_E")
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1637, file: !27, line: 721, baseType: !637, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1637, file: !27, line: 722, baseType: !1641, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "float64_t", file: !1266, line: 61, baseType: !108)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !1268, file: !27, line: 757, baseType: !1643, size: 1024, align: 64, offset: 20864)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MMX", file: !27, line: 729, size: 1024, align: 64, elements: !1644, identifier: "_ZTS3MMX")
!1644 = !{!1645}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1643, file: !27, line: 733, baseType: !1646, size: 1024)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1647, size: 1024, elements: !1310)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1643, file: !27, line: 730, size: 128, align: 64, elements: !1648, identifier: "_ZTSN3MMXUt_E")
!1648 = !{!1649, !1650}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1647, file: !27, line: 731, baseType: !637, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1647, file: !27, line: 732, baseType: !1651, size: 64, offset: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "vec64_t", file: !1266, line: 294, size: 64, elements: !1652, identifier: "_ZTS7vec64_t")
!1652 = !{!1653, !1658, !1663, !1668, !1673, !1678, !1683, !1688, !1693, !1698}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "qwords", scope: !1651, file: !1266, line: 298, baseType: !1654, size: 64)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint64v1_t", file: !1266, line: 199, size: 64, elements: !1655, identifier: "_ZTS10uint64v1_t")
!1655 = !{!1656}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1654, file: !1266, line: 199, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 64, elements: !1296)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !1651, file: !1266, line: 300, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint8v8_t", file: !1266, line: 181, size: 64, elements: !1660, identifier: "_ZTS9uint8v8_t")
!1660 = !{!1661}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1659, file: !1266, line: 181, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !1310)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "words", scope: !1651, file: !1266, line: 301, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint16v4_t", file: !1266, line: 188, size: 64, elements: !1665, identifier: "_ZTS10uint16v4_t")
!1665 = !{!1666}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1664, file: !1266, line: 188, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64, elements: !353)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "dwords", scope: !1651, file: !1266, line: 302, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uint32v2_t", file: !1266, line: 194, size: 64, elements: !1670, identifier: "_ZTS10uint32v2_t")
!1670 = !{!1671}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1669, file: !1266, line: 194, baseType: !1672, size: 64)
!1672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !1322)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "floats", scope: !1651, file: !1266, line: 303, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float32v2_t", file: !1266, line: 241, size: 64, elements: !1675, identifier: "_ZTS11float32v2_t")
!1675 = !{!1676}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1674, file: !1266, line: 241, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 64, elements: !1322)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "doubles", scope: !1651, file: !1266, line: 304, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float64v1_t", file: !1266, line: 246, size: 64, elements: !1680, identifier: "_ZTS11float64v1_t")
!1680 = !{!1681}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1679, file: !1266, line: 246, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !1296)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "sbytes", scope: !1651, file: !1266, line: 306, baseType: !1684, size: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int8v8_t", file: !1266, line: 212, size: 64, elements: !1685, identifier: "_ZTS8int8v8_t")
!1685 = !{!1686}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1684, file: !1266, line: 212, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 64, elements: !1310)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "swords", scope: !1651, file: !1266, line: 307, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int16v4_t", file: !1266, line: 219, size: 64, elements: !1690, identifier: "_ZTS9int16v4_t")
!1690 = !{!1691}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1689, file: !1266, line: 219, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 64, elements: !353)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "sdwords", scope: !1651, file: !1266, line: 308, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int32v2_t", file: !1266, line: 225, size: 64, elements: !1695, identifier: "_ZTS9int32v2_t")
!1695 = !{!1696}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1694, file: !1266, line: 225, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 64, elements: !1322)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sqwords", scope: !1651, file: !1266, line: 309, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "int64v1_t", file: !1266, line: 230, size: 64, elements: !1700, identifier: "_ZTS9int64v1_t")
!1700 = !{!1701}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !1699, file: !1266, line: 230, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 64, elements: !1296)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !1268, file: !27, line: 758, baseType: !1704, size: 192, offset: 21888)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPUStatusFlags", file: !27, line: 332, size: 192, elements: !1705, identifier: "_ZTS14FPUStatusFlags")
!1705 = !{!1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "_0", scope: !1704, file: !27, line: 333, baseType: !62, size: 8)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "c0", scope: !1704, file: !27, line: 334, baseType: !62, size: 8, offset: 8)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "_1", scope: !1704, file: !27, line: 335, baseType: !62, size: 8, offset: 16)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !1704, file: !27, line: 336, baseType: !62, size: 8, offset: 24)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "_2", scope: !1704, file: !27, line: 337, baseType: !62, size: 8, offset: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !1704, file: !27, line: 338, baseType: !62, size: 8, offset: 40)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "_3", scope: !1704, file: !27, line: 339, baseType: !62, size: 8, offset: 48)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !1704, file: !27, line: 340, baseType: !62, size: 8, offset: 56)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_4", scope: !1704, file: !27, line: 342, baseType: !62, size: 8, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1704, file: !27, line: 343, baseType: !62, size: 8, offset: 72)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "_5", scope: !1704, file: !27, line: 345, baseType: !62, size: 8, offset: 80)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1704, file: !27, line: 346, baseType: !62, size: 8, offset: 88)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "_6", scope: !1704, file: !27, line: 348, baseType: !62, size: 8, offset: 96)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1704, file: !27, line: 349, baseType: !62, size: 8, offset: 104)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "_7", scope: !1704, file: !27, line: 351, baseType: !62, size: 8, offset: 112)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1704, file: !27, line: 352, baseType: !62, size: 8, offset: 120)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_8", scope: !1704, file: !27, line: 354, baseType: !62, size: 8, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1704, file: !27, line: 355, baseType: !62, size: 8, offset: 136)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_9", scope: !1704, file: !27, line: 357, baseType: !62, size: 8, offset: 144)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1704, file: !27, line: 358, baseType: !62, size: 8, offset: 152)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_padding", scope: !1704, file: !27, line: 360, baseType: !1727, size: 32, offset: 160)
!1727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 32, elements: !353)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "xcr0", scope: !1268, file: !27, line: 759, baseType: !1729, size: 64, offset: 22080)
!1729 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "XCR0", file: !27, line: 424, size: 64, elements: !1730, identifier: "_ZTS4XCR0")
!1730 = !{!1731, !1732, !1737}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1729, file: !27, line: 425, baseType: !637, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !27, line: 427, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1729, file: !27, line: 427, size: 64, elements: !1734, identifier: "_ZTSN4XCR0Ut_E")
!1734 = !{!1735, !1736}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !1733, file: !27, line: 428, baseType: !8, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !1733, file: !27, line: 429, baseType: !8, size: 32, offset: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !27, line: 433, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1729, file: !27, line: 433, size: 64, elements: !1739, identifier: "_ZTSN4XCR0Ut0_E")
!1739 = !{!1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "x87_fpu_mmx", scope: !1738, file: !27, line: 434, baseType: !637, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1738, file: !27, line: 435, baseType: !637, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "ymm", scope: !1738, file: !27, line: 436, baseType: !637, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "bndreg", scope: !1738, file: !27, line: 437, baseType: !637, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "bndcsr", scope: !1738, file: !27, line: 438, baseType: !637, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "opmask", scope: !1738, file: !27, line: 439, baseType: !637, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "zmm_hi256", scope: !1738, file: !27, line: 440, baseType: !637, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "hi16_zmm", scope: !1738, file: !27, line: 441, baseType: !637, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1738, file: !27, line: 442, baseType: !637, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved0", scope: !1738, file: !27, line: 443, baseType: !637, size: 53, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "lwp", scope: !1738, file: !27, line: 444, baseType: !637, size: 1, offset: 62, flags: DIFlagBitField, extraData: i64 0)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "_reserved1", scope: !1738, file: !27, line: 445, baseType: !637, size: 1, offset: 63, flags: DIFlagBitField, extraData: i64 0)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "x87", scope: !1268, file: !27, line: 760, baseType: !1753, size: 4096, align: 128, offset: 22144)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPU", file: !27, line: 314, size: 4096, align: 128, elements: !1754, identifier: "_ZTS3FPU")
!1754 = !{!1755, !1851, !1914}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1753, file: !27, line: 317, baseType: !1756, size: 4096)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1753, file: !27, line: 315, size: 4096, elements: !1757, identifier: "_ZTSN3FPUUt_E")
!1757 = !{!1758, !1847}
!1758 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1756, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFSAVE", file: !27, line: 263, size: 1248, elements: !1760, identifier: "_ZTS8FpuFSAVE")
!1760 = !{!1761, !1779, !1780, !1801, !1802, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1759, file: !27, line: 264, baseType: !1762, size: 16)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUControlWord", file: !27, line: 142, size: 16, elements: !1763, identifier: "_ZTS14FPUControlWord")
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1762, file: !27, line: 143, baseType: !28, size: 16)
!1765 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !27, line: 144, baseType: !1766, size: 16)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1762, file: !27, line: 144, size: 16, elements: !1767, identifier: "_ZTSN14FPUControlWordUt_E")
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "im", scope: !1766, file: !27, line: 145, baseType: !28, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "dm", scope: !1766, file: !27, line: 146, baseType: !28, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "zm", scope: !1766, file: !27, line: 147, baseType: !28, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "om", scope: !1766, file: !27, line: 148, baseType: !28, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "um", scope: !1766, file: !27, line: 149, baseType: !28, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1766, file: !27, line: 150, baseType: !28, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1766, file: !27, line: 151, baseType: !28, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !1766, file: !27, line: 152, baseType: !39, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !1766, file: !27, line: 153, baseType: !45, size: 2, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1766, file: !27, line: 154, baseType: !51, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1766, file: !27, line: 155, baseType: !28, size: 3, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1759, file: !27, line: 265, baseType: !28, size: 16, offset: 16)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1759, file: !27, line: 266, baseType: !1781, size: 16, offset: 32)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUStatusWord", file: !27, line: 100, size: 16, elements: !1782, identifier: "_ZTS13FPUStatusWord")
!1782 = !{!1783, !1784}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1781, file: !27, line: 101, baseType: !28, size: 16)
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1781, file: !27, line: 102, baseType: !1785, size: 16)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1781, file: !27, line: 102, size: 16, elements: !1786, identifier: "_ZTSN13FPUStatusWordUt_E")
!1786 = !{!1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1785, file: !27, line: 103, baseType: !28, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1785, file: !27, line: 104, baseType: !28, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1785, file: !27, line: 105, baseType: !28, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1785, file: !27, line: 106, baseType: !28, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1785, file: !27, line: 107, baseType: !28, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1785, file: !27, line: 108, baseType: !28, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "sf", scope: !1785, file: !27, line: 109, baseType: !28, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1785, file: !27, line: 110, baseType: !28, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "c0", scope: !1785, file: !27, line: 111, baseType: !28, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "c1", scope: !1785, file: !27, line: 112, baseType: !28, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "c2", scope: !1785, file: !27, line: 113, baseType: !28, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !1785, file: !27, line: 114, baseType: !28, size: 3, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "c3", scope: !1785, file: !27, line: 115, baseType: !28, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1785, file: !27, line: 116, baseType: !28, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1759, file: !27, line: 267, baseType: !28, size: 16, offset: 48)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1759, file: !27, line: 268, baseType: !1803, size: 16, offset: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUTagWord", file: !27, line: 227, size: 16, elements: !1804, identifier: "_ZTS10FPUTagWord")
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1803, file: !27, line: 228, baseType: !28, size: 16)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1803, file: !27, line: 229, baseType: !1807, size: 16)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1803, file: !27, line: 229, size: 16, elements: !1808, identifier: "_ZTSN10FPUTagWordUt_E")
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "tag0", scope: !1807, file: !27, line: 230, baseType: !55, size: 2, flags: DIFlagBitField, extraData: i64 0)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "tag1", scope: !1807, file: !27, line: 231, baseType: !55, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "tag2", scope: !1807, file: !27, line: 232, baseType: !55, size: 2, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "tag3", scope: !1807, file: !27, line: 233, baseType: !55, size: 2, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "tag4", scope: !1807, file: !27, line: 234, baseType: !55, size: 2, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "tag5", scope: !1807, file: !27, line: 235, baseType: !55, size: 2, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "tag6", scope: !1807, file: !27, line: 236, baseType: !55, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "tag7", scope: !1807, file: !27, line: 237, baseType: !55, size: 2, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1759, file: !27, line: 269, baseType: !28, size: 16, offset: 80)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1759, file: !27, line: 270, baseType: !8, size: 32, offset: 96)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1759, file: !27, line: 271, baseType: !1547, size: 16, offset: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd2", scope: !1759, file: !27, line: 272, baseType: !28, size: 16, offset: 144)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1759, file: !27, line: 273, baseType: !8, size: 32, offset: 160)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1759, file: !27, line: 274, baseType: !1547, size: 16, offset: 192)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd3", scope: !1759, file: !27, line: 275, baseType: !28, size: 16, offset: 208)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1759, file: !27, line: 276, baseType: !1825, size: 1024, offset: 224)
!1825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1826, size: 1024, elements: !1310)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPUStackElem", file: !27, line: 162, size: 128, elements: !1827, identifier: "_ZTS12FPUStackElem")
!1827 = !{!1828, !1843}
!1828 = !DIDerivedType(tag: DW_TAG_member, scope: !1826, file: !27, line: 163, baseType: !1829, size: 80)
!1829 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1826, file: !27, line: 163, size: 80, elements: !1830, identifier: "_ZTSN12FPUStackElemUt_E")
!1830 = !{!1831, !1838}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1829, file: !27, line: 164, baseType: !1832, size: 80)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "float80_t", file: !1266, line: 65, size: 80, elements: !1833, identifier: "_ZTS9float80_t")
!1833 = !{!1834}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1832, file: !1266, line: 66, baseType: !1835, size: 80)
!1835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 80, elements: !1836)
!1836 = !{!1837}
!1837 = !DISubrange(count: 10)
!1838 = !DIDerivedType(tag: DW_TAG_member, scope: !1829, file: !27, line: 165, baseType: !1839, size: 80)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1829, file: !27, line: 165, size: 80, elements: !1840, identifier: "_ZTSN12FPUStackElemUt_Ut_E")
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "mmx", scope: !1839, file: !27, line: 166, baseType: !637, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "infinity", scope: !1839, file: !27, line: 167, baseType: !28, size: 16, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd", scope: !1826, file: !27, line: 170, baseType: !1844, size: 48, offset: 80)
!1844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 48, elements: !1845)
!1845 = !{!1846}
!1846 = !DISubrange(count: 6)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1756, file: !27, line: 316, baseType: !1848, size: 2848, offset: 1248)
!1848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 2848, elements: !1849)
!1849 = !{!1850}
!1850 = !DISubrange(count: 356)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave32", scope: !1753, file: !27, line: 321, baseType: !1852, size: 4096)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1753, file: !27, line: 319, size: 4096, elements: !1853, identifier: "_ZTSN3FPUUt0_E")
!1853 = !{!1854, !1910}
!1854 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1852, baseType: !1855)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFXSAVE", file: !27, line: 280, size: 3328, elements: !1856, identifier: "_ZTS9FpuFXSAVE")
!1856 = !{!1857, !1858, !1859, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1906, !1907, !1908}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1855, file: !27, line: 281, baseType: !1762, size: 16)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1855, file: !27, line: 282, baseType: !1781, size: 16, offset: 16)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1855, file: !27, line: 283, baseType: !1860, size: 8, offset: 32)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUAbridgedTagWord", file: !27, line: 245, size: 8, elements: !1861, identifier: "_ZTS18FPUAbridgedTagWord")
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1860, file: !27, line: 246, baseType: !62, size: 8)
!1863 = !DIDerivedType(tag: DW_TAG_member, scope: !1860, file: !27, line: 247, baseType: !1864, size: 8)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1860, file: !27, line: 247, size: 8, elements: !1865, identifier: "_ZTSN18FPUAbridgedTagWordUt_E")
!1865 = !{!1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "r0", scope: !1864, file: !27, line: 248, baseType: !61, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "r1", scope: !1864, file: !27, line: 249, baseType: !61, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "r2", scope: !1864, file: !27, line: 250, baseType: !61, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "r3", scope: !1864, file: !27, line: 251, baseType: !61, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "r4", scope: !1864, file: !27, line: 252, baseType: !61, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "r5", scope: !1864, file: !27, line: 253, baseType: !61, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "r6", scope: !1864, file: !27, line: 254, baseType: !61, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "r7", scope: !1864, file: !27, line: 255, baseType: !61, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1855, file: !27, line: 284, baseType: !62, size: 8, offset: 40)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1855, file: !27, line: 285, baseType: !28, size: 16, offset: 48)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1855, file: !27, line: 286, baseType: !8, size: 32, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1855, file: !27, line: 287, baseType: !1547, size: 16, offset: 96)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd1", scope: !1855, file: !27, line: 288, baseType: !28, size: 16, offset: 112)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1855, file: !27, line: 289, baseType: !8, size: 32, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1855, file: !27, line: 290, baseType: !1547, size: 16, offset: 160)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd2", scope: !1855, file: !27, line: 291, baseType: !28, size: 16, offset: 176)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1855, file: !27, line: 292, baseType: !1883, size: 32, offset: 192)
!1883 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "FPUControlStatus", file: !27, line: 188, size: 32, elements: !1884, identifier: "_ZTS16FPUControlStatus")
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !1883, file: !27, line: 189, baseType: !8, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, scope: !1883, file: !27, line: 190, baseType: !1887, size: 32)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1883, file: !27, line: 190, size: 32, elements: !1888, identifier: "_ZTSN16FPUControlStatusUt_E")
!1888 = !{!1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "ie", scope: !1887, file: !27, line: 191, baseType: !8, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "de", scope: !1887, file: !27, line: 192, baseType: !8, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "ze", scope: !1887, file: !27, line: 193, baseType: !8, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "oe", scope: !1887, file: !27, line: 194, baseType: !8, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ue", scope: !1887, file: !27, line: 195, baseType: !8, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !1887, file: !27, line: 196, baseType: !8, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "daz", scope: !1887, file: !27, line: 197, baseType: !8, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "im", scope: !1887, file: !27, line: 198, baseType: !8, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dm", scope: !1887, file: !27, line: 199, baseType: !8, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "zm", scope: !1887, file: !27, line: 200, baseType: !8, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "om", scope: !1887, file: !27, line: 201, baseType: !8, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "um", scope: !1887, file: !27, line: 202, baseType: !8, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1887, file: !27, line: 203, baseType: !8, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "rn", scope: !1887, file: !27, line: 204, baseType: !8, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "rp", scope: !1887, file: !27, line: 205, baseType: !8, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "fz", scope: !1887, file: !27, line: 206, baseType: !8, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd", scope: !1887, file: !27, line: 207, baseType: !8, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1855, file: !27, line: 293, baseType: !1883, size: 32, offset: 224)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1855, file: !27, line: 294, baseType: !1825, size: 1024, offset: 256)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1855, file: !27, line: 295, baseType: !1909, size: 2048, offset: 1280)
!1909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1287, size: 2048, elements: !1303)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1852, file: !27, line: 320, baseType: !1911, size: 768, offset: 3328)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 768, elements: !1912)
!1912 = !{!1913}
!1913 = !DISubrange(count: 96)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave64", scope: !1753, file: !27, line: 325, baseType: !1915, size: 4096)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1753, file: !27, line: 323, size: 4096, elements: !1916, identifier: "_ZTSN3FPUUt1_E")
!1916 = !{!1917, !1931}
!1917 = !DIDerivedType(tag: DW_TAG_inheritance, scope: !1915, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FpuFXSAVE64", file: !27, line: 299, size: 3328, elements: !1919, identifier: "_ZTS11FpuFXSAVE64")
!1919 = !{!1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1918, file: !27, line: 300, baseType: !1762, size: 16)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1918, file: !27, line: 301, baseType: !1781, size: 16, offset: 16)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ftw", scope: !1918, file: !27, line: 302, baseType: !1860, size: 8, offset: 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_rsvd0", scope: !1918, file: !27, line: 303, baseType: !62, size: 8, offset: 40)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1918, file: !27, line: 304, baseType: !28, size: 16, offset: 48)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1918, file: !27, line: 305, baseType: !637, size: 64, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !1918, file: !27, line: 306, baseType: !637, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1918, file: !27, line: 307, baseType: !1883, size: 32, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1918, file: !27, line: 308, baseType: !1883, size: 32, offset: 224)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1918, file: !27, line: 309, baseType: !1825, size: 1024, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "xmm", scope: !1918, file: !27, line: 310, baseType: !1909, size: 2048, offset: 1280)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "_padding0", scope: !1915, file: !27, line: 324, baseType: !1911, size: 768, offset: 3328)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "seg_caches", scope: !1268, file: !27, line: 761, baseType: !1933, size: 768, align: 64, offset: 26240)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SegmentCaches", file: !27, line: 468, size: 768, align: 64, elements: !1934, identifier: "_ZTS13SegmentCaches")
!1934 = !{!1935, !1945, !1946, !1947, !1948, !1949}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1933, file: !27, line: 469, baseType: !1936, size: 128)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SegmentShadow", file: !27, line: 88, size: 128, elements: !1937, identifier: "_ZTS13SegmentShadow")
!1937 = !{!1938, !1943, !1944}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1936, file: !27, line: 92, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1936, file: !27, line: 89, size: 64, elements: !1940, identifier: "_ZTSN13SegmentShadowUt_E")
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "dword", scope: !1939, file: !27, line: 90, baseType: !8, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "qword", scope: !1939, file: !27, line: 91, baseType: !637, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1936, file: !27, line: 93, baseType: !8, size: 32, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1936, file: !27, line: 94, baseType: !8, size: 32, offset: 96)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1933, file: !27, line: 470, baseType: !1936, size: 128, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1933, file: !27, line: 471, baseType: !1936, size: 128, offset: 256)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1933, file: !27, line: 472, baseType: !1936, size: 128, offset: 384)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1933, file: !27, line: 473, baseType: !1936, size: 128, offset: 512)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !1933, file: !27, line: 474, baseType: !1936, size: 128, offset: 640)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !1266, line: 42, baseType: !1951)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr64_t", file: !1266, line: 41, baseType: !637)
!1952 = !DILocation(line: 54, column: 8, scope: !1261)
!1953 = !DILocation(line: 55, column: 10, scope: !1261)
!1954 = !DILocation(line: 56, column: 10, scope: !1261)
!1955 = !DILocation(line: 57, column: 10, scope: !1261)
!1956 = !DILocation(line: 58, column: 10, scope: !1261)
!1957 = !DILocation(line: 61, column: 9, scope: !1261)
!1958 = !DILocation(line: 62, column: 9, scope: !1261)
!1959 = !DILocation(line: 63, column: 20, scope: !1261)
!1960 = !DILocation(line: 63, column: 24, scope: !1261)
!1961 = !DILocation(line: 63, column: 28, scope: !1261)
!1962 = !DILocation(line: 69, column: 6, scope: !1261)
!1963 = !DILocation(line: 74, column: 20, scope: !1261)
!1964 = !DILocation(line: 74, column: 24, scope: !1261)
!1965 = !DILocation(line: 74, column: 28, scope: !1261)
!1966 = !DILocation(line: 74, column: 33, scope: !1261)
!1967 = !DILocation(line: 75, column: 20, scope: !1261)
!1968 = !DILocation(line: 75, column: 24, scope: !1261)
!1969 = !DILocation(line: 75, column: 28, scope: !1261)
!1970 = !DILocation(line: 75, column: 33, scope: !1261)
!1971 = !DILocation(line: 76, column: 20, scope: !1261)
!1972 = !DILocation(line: 76, column: 24, scope: !1261)
!1973 = !DILocation(line: 76, column: 28, scope: !1261)
!1974 = !DILocation(line: 76, column: 33, scope: !1261)
!1975 = !DILocation(line: 77, column: 20, scope: !1261)
!1976 = !DILocation(line: 77, column: 24, scope: !1261)
!1977 = !DILocation(line: 77, column: 28, scope: !1261)
!1978 = !DILocation(line: 77, column: 33, scope: !1261)
!1979 = !DILocation(line: 78, column: 20, scope: !1261)
!1980 = !DILocation(line: 78, column: 24, scope: !1261)
!1981 = !DILocation(line: 78, column: 28, scope: !1261)
!1982 = !DILocation(line: 78, column: 33, scope: !1261)
!1983 = !DILocation(line: 79, column: 20, scope: !1261)
!1984 = !DILocation(line: 79, column: 24, scope: !1261)
!1985 = !DILocation(line: 79, column: 28, scope: !1261)
!1986 = !DILocation(line: 79, column: 33, scope: !1261)
!1987 = !DILocation(line: 80, column: 20, scope: !1261)
!1988 = !DILocation(line: 80, column: 24, scope: !1261)
!1989 = !DILocation(line: 80, column: 28, scope: !1261)
!1990 = !DILocation(line: 80, column: 33, scope: !1261)
!1991 = !DILocation(line: 81, column: 20, scope: !1261)
!1992 = !DILocation(line: 81, column: 24, scope: !1261)
!1993 = !DILocation(line: 81, column: 28, scope: !1261)
!1994 = !DILocation(line: 81, column: 33, scope: !1261)
!1995 = !DILocation(line: 83, column: 21, scope: !1261)
!1996 = !DILocation(line: 83, column: 25, scope: !1261)
!1997 = !DILocation(line: 83, column: 29, scope: !1261)
!1998 = !DILocation(line: 83, column: 34, scope: !1261)
!1999 = !DILocation(line: 84, column: 21, scope: !1261)
!2000 = !DILocation(line: 84, column: 25, scope: !1261)
!2001 = !DILocation(line: 84, column: 29, scope: !1261)
!2002 = !DILocation(line: 84, column: 34, scope: !1261)
!2003 = !DILocation(line: 85, column: 21, scope: !1261)
!2004 = !DILocation(line: 85, column: 25, scope: !1261)
!2005 = !DILocation(line: 85, column: 29, scope: !1261)
!2006 = !DILocation(line: 85, column: 34, scope: !1261)
!2007 = !DILocation(line: 86, column: 21, scope: !1261)
!2008 = !DILocation(line: 86, column: 25, scope: !1261)
!2009 = !DILocation(line: 86, column: 29, scope: !1261)
!2010 = !DILocation(line: 86, column: 34, scope: !1261)
!2011 = !DILocation(line: 87, column: 21, scope: !1261)
!2012 = !DILocation(line: 87, column: 25, scope: !1261)
!2013 = !DILocation(line: 87, column: 28, scope: !1261)
!2014 = !DILocation(line: 87, column: 33, scope: !1261)
!2015 = !DILocation(line: 88, column: 21, scope: !1261)
!2016 = !DILocation(line: 88, column: 25, scope: !1261)
!2017 = !DILocation(line: 88, column: 28, scope: !1261)
!2018 = !DILocation(line: 88, column: 33, scope: !1261)
!2019 = !DILocation(line: 89, column: 22, scope: !1261)
!2020 = !DILocation(line: 89, column: 26, scope: !1261)
!2021 = !DILocation(line: 89, column: 30, scope: !1261)
!2022 = !DILocation(line: 89, column: 35, scope: !1261)
!2023 = !DILocation(line: 90, column: 22, scope: !1261)
!2024 = !DILocation(line: 90, column: 26, scope: !1261)
!2025 = !DILocation(line: 90, column: 30, scope: !1261)
!2026 = !DILocation(line: 90, column: 35, scope: !1261)
!2027 = !DILocation(line: 91, column: 22, scope: !1261)
!2028 = !DILocation(line: 91, column: 26, scope: !1261)
!2029 = !DILocation(line: 91, column: 30, scope: !1261)
!2030 = !DILocation(line: 91, column: 35, scope: !1261)
!2031 = !DILocation(line: 92, column: 22, scope: !1261)
!2032 = !DILocation(line: 92, column: 26, scope: !1261)
!2033 = !DILocation(line: 92, column: 30, scope: !1261)
!2034 = !DILocation(line: 92, column: 35, scope: !1261)
!2035 = !DILocation(line: 93, column: 22, scope: !1261)
!2036 = !DILocation(line: 93, column: 26, scope: !1261)
!2037 = !DILocation(line: 93, column: 30, scope: !1261)
!2038 = !DILocation(line: 93, column: 35, scope: !1261)
!2039 = !DILocation(line: 94, column: 22, scope: !1261)
!2040 = !DILocation(line: 94, column: 26, scope: !1261)
!2041 = !DILocation(line: 94, column: 30, scope: !1261)
!2042 = !DILocation(line: 94, column: 35, scope: !1261)
!2043 = !DILocation(line: 96, column: 20, scope: !1261)
!2044 = !DILocation(line: 96, column: 24, scope: !1261)
!2045 = !DILocation(line: 96, column: 28, scope: !1261)
!2046 = !DILocation(line: 97, column: 20, scope: !1261)
!2047 = !DILocation(line: 97, column: 24, scope: !1261)
!2048 = !DILocation(line: 97, column: 28, scope: !1261)
!2049 = !DILocation(line: 98, column: 20, scope: !1261)
!2050 = !DILocation(line: 98, column: 24, scope: !1261)
!2051 = !DILocation(line: 98, column: 28, scope: !1261)
!2052 = !DILocation(line: 99, column: 20, scope: !1261)
!2053 = !DILocation(line: 99, column: 24, scope: !1261)
!2054 = !DILocation(line: 99, column: 28, scope: !1261)
!2055 = !DILocation(line: 100, column: 20, scope: !1261)
!2056 = !DILocation(line: 100, column: 24, scope: !1261)
!2057 = !DILocation(line: 100, column: 28, scope: !1261)
!2058 = !DILocation(line: 101, column: 20, scope: !1261)
!2059 = !DILocation(line: 101, column: 24, scope: !1261)
!2060 = !DILocation(line: 101, column: 28, scope: !1261)
!2061 = !DILocation(line: 102, column: 20, scope: !1261)
!2062 = !DILocation(line: 102, column: 24, scope: !1261)
!2063 = !DILocation(line: 102, column: 28, scope: !1261)
!2064 = !DILocation(line: 103, column: 20, scope: !1261)
!2065 = !DILocation(line: 103, column: 24, scope: !1261)
!2066 = !DILocation(line: 103, column: 28, scope: !1261)
!2067 = !DILocation(line: 105, column: 21, scope: !1261)
!2068 = !DILocation(line: 105, column: 25, scope: !1261)
!2069 = !DILocation(line: 105, column: 28, scope: !1261)
!2070 = !DILocation(line: 106, column: 21, scope: !1261)
!2071 = !DILocation(line: 106, column: 25, scope: !1261)
!2072 = !DILocation(line: 106, column: 28, scope: !1261)
!2073 = !DILocation(line: 107, column: 22, scope: !1261)
!2074 = !DILocation(line: 107, column: 26, scope: !1261)
!2075 = !DILocation(line: 107, column: 30, scope: !1261)
!2076 = !DILocation(line: 108, column: 22, scope: !1261)
!2077 = !DILocation(line: 108, column: 26, scope: !1261)
!2078 = !DILocation(line: 108, column: 30, scope: !1261)
!2079 = !DILocation(line: 109, column: 22, scope: !1261)
!2080 = !DILocation(line: 109, column: 26, scope: !1261)
!2081 = !DILocation(line: 109, column: 30, scope: !1261)
!2082 = !DILocation(line: 110, column: 22, scope: !1261)
!2083 = !DILocation(line: 110, column: 26, scope: !1261)
!2084 = !DILocation(line: 110, column: 30, scope: !1261)
!2085 = !DILocation(line: 111, column: 22, scope: !1261)
!2086 = !DILocation(line: 111, column: 26, scope: !1261)
!2087 = !DILocation(line: 111, column: 30, scope: !1261)
!2088 = !DILocation(line: 112, column: 22, scope: !1261)
!2089 = !DILocation(line: 112, column: 26, scope: !1261)
!2090 = !DILocation(line: 112, column: 30, scope: !1261)
!2091 = !DILocation(line: 114, column: 20, scope: !1261)
!2092 = !DILocation(line: 114, column: 24, scope: !1261)
!2093 = !DILocation(line: 114, column: 28, scope: !1261)
!2094 = !DILocation(line: 116, column: 21, scope: !1261)
!2095 = !DILocation(line: 116, column: 25, scope: !1261)
!2096 = !DILocation(line: 116, column: 29, scope: !1261)
!2097 = !DILocation(line: 117, column: 21, scope: !1261)
!2098 = !DILocation(line: 117, column: 25, scope: !1261)
!2099 = !DILocation(line: 117, column: 29, scope: !1261)
!2100 = !DILocation(line: 118, column: 21, scope: !1261)
!2101 = !DILocation(line: 118, column: 25, scope: !1261)
!2102 = !DILocation(line: 118, column: 29, scope: !1261)
!2103 = !DILocation(line: 119, column: 21, scope: !1261)
!2104 = !DILocation(line: 119, column: 25, scope: !1261)
!2105 = !DILocation(line: 119, column: 29, scope: !1261)
!2106 = !DILocation(line: 120, column: 21, scope: !1261)
!2107 = !DILocation(line: 120, column: 25, scope: !1261)
!2108 = !DILocation(line: 120, column: 29, scope: !1261)
!2109 = !DILocation(line: 121, column: 21, scope: !1261)
!2110 = !DILocation(line: 121, column: 25, scope: !1261)
!2111 = !DILocation(line: 121, column: 29, scope: !1261)
!2112 = !DILocation(line: 122, column: 21, scope: !1261)
!2113 = !DILocation(line: 122, column: 25, scope: !1261)
!2114 = !DILocation(line: 122, column: 29, scope: !1261)
!2115 = !DILocation(line: 123, column: 21, scope: !1261)
!2116 = !DILocation(line: 123, column: 25, scope: !1261)
!2117 = !DILocation(line: 123, column: 29, scope: !1261)
!2118 = !DILocation(line: 124, column: 21, scope: !1261)
!2119 = !DILocation(line: 124, column: 25, scope: !1261)
!2120 = !DILocation(line: 124, column: 29, scope: !1261)
!2121 = !DILocation(line: 127, column: 21, scope: !1261)
!2122 = !DILocation(line: 127, column: 25, scope: !1261)
!2123 = !DILocation(line: 127, column: 28, scope: !1261)
!2124 = !DILocation(line: 128, column: 21, scope: !1261)
!2125 = !DILocation(line: 128, column: 25, scope: !1261)
!2126 = !DILocation(line: 128, column: 28, scope: !1261)
!2127 = !DILocation(line: 129, column: 22, scope: !1261)
!2128 = !DILocation(line: 129, column: 26, scope: !1261)
!2129 = !DILocation(line: 129, column: 30, scope: !1261)
!2130 = !DILocation(line: 130, column: 22, scope: !1261)
!2131 = !DILocation(line: 130, column: 26, scope: !1261)
!2132 = !DILocation(line: 130, column: 30, scope: !1261)
!2133 = !DILocation(line: 131, column: 22, scope: !1261)
!2134 = !DILocation(line: 131, column: 26, scope: !1261)
!2135 = !DILocation(line: 131, column: 30, scope: !1261)
!2136 = !DILocation(line: 132, column: 22, scope: !1261)
!2137 = !DILocation(line: 132, column: 26, scope: !1261)
!2138 = !DILocation(line: 132, column: 30, scope: !1261)
!2139 = !DILocation(line: 133, column: 22, scope: !1261)
!2140 = !DILocation(line: 133, column: 26, scope: !1261)
!2141 = !DILocation(line: 133, column: 30, scope: !1261)
!2142 = !DILocation(line: 134, column: 22, scope: !1261)
!2143 = !DILocation(line: 134, column: 26, scope: !1261)
!2144 = !DILocation(line: 134, column: 30, scope: !1261)
!2145 = !DILocation(line: 136, column: 21, scope: !1261)
!2146 = !DILocation(line: 136, column: 25, scope: !1261)
!2147 = !DILocation(line: 136, column: 29, scope: !1261)
!2148 = !DILocation(line: 137, column: 21, scope: !1261)
!2149 = !DILocation(line: 137, column: 25, scope: !1261)
!2150 = !DILocation(line: 137, column: 29, scope: !1261)
!2151 = !DILocation(line: 138, column: 21, scope: !1261)
!2152 = !DILocation(line: 138, column: 25, scope: !1261)
!2153 = !DILocation(line: 138, column: 29, scope: !1261)
!2154 = !DILocation(line: 139, column: 21, scope: !1261)
!2155 = !DILocation(line: 139, column: 25, scope: !1261)
!2156 = !DILocation(line: 139, column: 29, scope: !1261)
!2157 = !DILocation(line: 140, column: 21, scope: !1261)
!2158 = !DILocation(line: 140, column: 25, scope: !1261)
!2159 = !DILocation(line: 140, column: 29, scope: !1261)
!2160 = !DILocation(line: 141, column: 21, scope: !1261)
!2161 = !DILocation(line: 141, column: 25, scope: !1261)
!2162 = !DILocation(line: 141, column: 29, scope: !1261)
!2163 = !DILocation(line: 142, column: 21, scope: !1261)
!2164 = !DILocation(line: 142, column: 25, scope: !1261)
!2165 = !DILocation(line: 142, column: 29, scope: !1261)
!2166 = !DILocation(line: 143, column: 21, scope: !1261)
!2167 = !DILocation(line: 143, column: 25, scope: !1261)
!2168 = !DILocation(line: 143, column: 29, scope: !1261)
!2169 = !DILocation(line: 144, column: 20, scope: !1261)
!2170 = !DILocation(line: 144, column: 24, scope: !1261)
!2171 = !DILocation(line: 144, column: 27, scope: !1261)
!2172 = !DILocation(line: 145, column: 20, scope: !1261)
!2173 = !DILocation(line: 145, column: 24, scope: !1261)
!2174 = !DILocation(line: 145, column: 27, scope: !1261)
!2175 = !DILocation(line: 146, column: 21, scope: !1261)
!2176 = !DILocation(line: 146, column: 25, scope: !1261)
!2177 = !DILocation(line: 146, column: 29, scope: !1261)
!2178 = !DILocation(line: 147, column: 21, scope: !1261)
!2179 = !DILocation(line: 147, column: 25, scope: !1261)
!2180 = !DILocation(line: 147, column: 29, scope: !1261)
!2181 = !DILocation(line: 148, column: 21, scope: !1261)
!2182 = !DILocation(line: 148, column: 25, scope: !1261)
!2183 = !DILocation(line: 148, column: 29, scope: !1261)
!2184 = !DILocation(line: 149, column: 21, scope: !1261)
!2185 = !DILocation(line: 149, column: 25, scope: !1261)
!2186 = !DILocation(line: 149, column: 29, scope: !1261)
!2187 = !DILocation(line: 150, column: 21, scope: !1261)
!2188 = !DILocation(line: 150, column: 25, scope: !1261)
!2189 = !DILocation(line: 150, column: 29, scope: !1261)
!2190 = !DILocation(line: 151, column: 21, scope: !1261)
!2191 = !DILocation(line: 151, column: 25, scope: !1261)
!2192 = !DILocation(line: 151, column: 29, scope: !1261)
!2193 = !DILocation(line: 152, column: 21, scope: !1261)
!2194 = !DILocation(line: 152, column: 25, scope: !1261)
!2195 = !DILocation(line: 152, column: 29, scope: !1261)
!2196 = !DILocation(line: 155, column: 20, scope: !1261)
!2197 = !DILocation(line: 155, column: 24, scope: !1261)
!2198 = !DILocation(line: 155, column: 27, scope: !1261)
!2199 = !DILocation(line: 156, column: 20, scope: !1261)
!2200 = !DILocation(line: 156, column: 24, scope: !1261)
!2201 = !DILocation(line: 156, column: 27, scope: !1261)
!2202 = !DILocation(line: 157, column: 20, scope: !1261)
!2203 = !DILocation(line: 157, column: 24, scope: !1261)
!2204 = !DILocation(line: 157, column: 27, scope: !1261)
!2205 = !DILocation(line: 158, column: 20, scope: !1261)
!2206 = !DILocation(line: 158, column: 24, scope: !1261)
!2207 = !DILocation(line: 158, column: 27, scope: !1261)
!2208 = !DILocation(line: 159, column: 20, scope: !1261)
!2209 = !DILocation(line: 159, column: 24, scope: !1261)
!2210 = !DILocation(line: 159, column: 27, scope: !1261)
!2211 = !DILocation(line: 160, column: 20, scope: !1261)
!2212 = !DILocation(line: 160, column: 24, scope: !1261)
!2213 = !DILocation(line: 160, column: 27, scope: !1261)
!2214 = !DILocation(line: 164, column: 25, scope: !1261)
!2215 = !DILocation(line: 164, column: 30, scope: !1261)
!2216 = !DILocation(line: 164, column: 38, scope: !1261)
!2217 = !DILocation(line: 165, column: 25, scope: !1261)
!2218 = !DILocation(line: 165, column: 30, scope: !1261)
!2219 = !DILocation(line: 165, column: 38, scope: !1261)
!2220 = !DILocation(line: 205, column: 22, scope: !1261)
!2221 = !DILocation(line: 205, column: 16, scope: !1261)
!2222 = !DILocation(line: 205, column: 29, scope: !1261)
!2223 = !DILocation(line: 206, column: 22, scope: !1261)
!2224 = !DILocation(line: 206, column: 16, scope: !1261)
!2225 = !DILocation(line: 206, column: 29, scope: !1261)
!2226 = !DILocation(line: 207, column: 22, scope: !1261)
!2227 = !DILocation(line: 207, column: 16, scope: !1261)
!2228 = !DILocation(line: 207, column: 29, scope: !1261)
!2229 = !DILocation(line: 208, column: 22, scope: !1261)
!2230 = !DILocation(line: 208, column: 16, scope: !1261)
!2231 = !DILocation(line: 208, column: 29, scope: !1261)
!2232 = !DILocation(line: 209, column: 22, scope: !1261)
!2233 = !DILocation(line: 209, column: 16, scope: !1261)
!2234 = !DILocation(line: 209, column: 29, scope: !1261)
!2235 = !DILocation(line: 210, column: 22, scope: !1261)
!2236 = !DILocation(line: 210, column: 16, scope: !1261)
!2237 = !DILocation(line: 210, column: 29, scope: !1261)
!2238 = !DILocation(line: 211, column: 22, scope: !1261)
!2239 = !DILocation(line: 211, column: 16, scope: !1261)
!2240 = !DILocation(line: 211, column: 29, scope: !1261)
!2241 = !DILocation(line: 212, column: 22, scope: !1261)
!2242 = !DILocation(line: 212, column: 16, scope: !1261)
!2243 = !DILocation(line: 212, column: 29, scope: !1261)
!2244 = !DILocation(line: 214, column: 22, scope: !1261)
!2245 = !DILocation(line: 214, column: 16, scope: !1261)
!2246 = !DILocation(line: 214, column: 29, scope: !1261)
!2247 = !DILocation(line: 215, column: 22, scope: !1261)
!2248 = !DILocation(line: 215, column: 16, scope: !1261)
!2249 = !DILocation(line: 215, column: 29, scope: !1261)
!2250 = !DILocation(line: 216, column: 23, scope: !1261)
!2251 = !DILocation(line: 216, column: 17, scope: !1261)
!2252 = !DILocation(line: 216, column: 31, scope: !1261)
!2253 = !DILocation(line: 217, column: 23, scope: !1261)
!2254 = !DILocation(line: 217, column: 17, scope: !1261)
!2255 = !DILocation(line: 217, column: 31, scope: !1261)
!2256 = !DILocation(line: 218, column: 23, scope: !1261)
!2257 = !DILocation(line: 218, column: 17, scope: !1261)
!2258 = !DILocation(line: 218, column: 31, scope: !1261)
!2259 = !DILocation(line: 219, column: 23, scope: !1261)
!2260 = !DILocation(line: 219, column: 17, scope: !1261)
!2261 = !DILocation(line: 219, column: 31, scope: !1261)
!2262 = !DILocation(line: 220, column: 23, scope: !1261)
!2263 = !DILocation(line: 220, column: 17, scope: !1261)
!2264 = !DILocation(line: 220, column: 31, scope: !1261)
!2265 = !DILocation(line: 221, column: 23, scope: !1261)
!2266 = !DILocation(line: 221, column: 17, scope: !1261)
!2267 = !DILocation(line: 221, column: 31, scope: !1261)
!2268 = !DILocation(line: 245, column: 22, scope: !1261)
!2269 = !DILocation(line: 245, column: 16, scope: !1261)
!2270 = !DILocation(line: 245, column: 29, scope: !1261)
!2271 = !DILocation(line: 246, column: 22, scope: !1261)
!2272 = !DILocation(line: 246, column: 16, scope: !1261)
!2273 = !DILocation(line: 246, column: 29, scope: !1261)
!2274 = !DILocation(line: 247, column: 22, scope: !1261)
!2275 = !DILocation(line: 247, column: 16, scope: !1261)
!2276 = !DILocation(line: 247, column: 29, scope: !1261)
!2277 = !DILocation(line: 248, column: 22, scope: !1261)
!2278 = !DILocation(line: 248, column: 16, scope: !1261)
!2279 = !DILocation(line: 248, column: 29, scope: !1261)
!2280 = !DILocation(line: 249, column: 22, scope: !1261)
!2281 = !DILocation(line: 249, column: 16, scope: !1261)
!2282 = !DILocation(line: 249, column: 29, scope: !1261)
!2283 = !DILocation(line: 250, column: 22, scope: !1261)
!2284 = !DILocation(line: 250, column: 16, scope: !1261)
!2285 = !DILocation(line: 250, column: 29, scope: !1261)
!2286 = !DILocation(line: 251, column: 22, scope: !1261)
!2287 = !DILocation(line: 251, column: 16, scope: !1261)
!2288 = !DILocation(line: 251, column: 29, scope: !1261)
!2289 = !DILocation(line: 252, column: 22, scope: !1261)
!2290 = !DILocation(line: 252, column: 16, scope: !1261)
!2291 = !DILocation(line: 252, column: 29, scope: !1261)
!2292 = !DILocation(line: 255, column: 22, scope: !1261)
!2293 = !DILocation(line: 255, column: 16, scope: !1261)
!2294 = !DILocation(line: 255, column: 29, scope: !1261)
!2295 = !DILocation(line: 256, column: 22, scope: !1261)
!2296 = !DILocation(line: 256, column: 16, scope: !1261)
!2297 = !DILocation(line: 256, column: 29, scope: !1261)
!2298 = !DILocation(line: 257, column: 23, scope: !1261)
!2299 = !DILocation(line: 257, column: 17, scope: !1261)
!2300 = !DILocation(line: 257, column: 31, scope: !1261)
!2301 = !DILocation(line: 258, column: 23, scope: !1261)
!2302 = !DILocation(line: 258, column: 17, scope: !1261)
!2303 = !DILocation(line: 258, column: 31, scope: !1261)
!2304 = !DILocation(line: 259, column: 23, scope: !1261)
!2305 = !DILocation(line: 259, column: 17, scope: !1261)
!2306 = !DILocation(line: 259, column: 31, scope: !1261)
!2307 = !DILocation(line: 260, column: 23, scope: !1261)
!2308 = !DILocation(line: 260, column: 17, scope: !1261)
!2309 = !DILocation(line: 260, column: 31, scope: !1261)
!2310 = !DILocation(line: 261, column: 23, scope: !1261)
!2311 = !DILocation(line: 261, column: 17, scope: !1261)
!2312 = !DILocation(line: 261, column: 31, scope: !1261)
!2313 = !DILocation(line: 262, column: 23, scope: !1261)
!2314 = !DILocation(line: 262, column: 17, scope: !1261)
!2315 = !DILocation(line: 262, column: 31, scope: !1261)
!2316 = !DILocation(line: 285, column: 21, scope: !1261)
!2317 = !DILocation(line: 285, column: 24, scope: !1261)
!2318 = !DILocation(line: 285, column: 15, scope: !1261)
!2319 = !DILocation(line: 285, column: 33, scope: !1261)
!2320 = !DILocation(line: 286, column: 21, scope: !1261)
!2321 = !DILocation(line: 286, column: 24, scope: !1261)
!2322 = !DILocation(line: 286, column: 15, scope: !1261)
!2323 = !DILocation(line: 286, column: 33, scope: !1261)
!2324 = !DILocation(line: 287, column: 21, scope: !1261)
!2325 = !DILocation(line: 287, column: 24, scope: !1261)
!2326 = !DILocation(line: 287, column: 15, scope: !1261)
!2327 = !DILocation(line: 287, column: 33, scope: !1261)
!2328 = !DILocation(line: 288, column: 21, scope: !1261)
!2329 = !DILocation(line: 288, column: 24, scope: !1261)
!2330 = !DILocation(line: 288, column: 15, scope: !1261)
!2331 = !DILocation(line: 288, column: 33, scope: !1261)
!2332 = !DILocation(line: 289, column: 21, scope: !1261)
!2333 = !DILocation(line: 289, column: 24, scope: !1261)
!2334 = !DILocation(line: 289, column: 15, scope: !1261)
!2335 = !DILocation(line: 289, column: 33, scope: !1261)
!2336 = !DILocation(line: 290, column: 21, scope: !1261)
!2337 = !DILocation(line: 290, column: 24, scope: !1261)
!2338 = !DILocation(line: 290, column: 15, scope: !1261)
!2339 = !DILocation(line: 290, column: 33, scope: !1261)
!2340 = !DILocation(line: 291, column: 21, scope: !1261)
!2341 = !DILocation(line: 291, column: 24, scope: !1261)
!2342 = !DILocation(line: 291, column: 15, scope: !1261)
!2343 = !DILocation(line: 291, column: 33, scope: !1261)
!2344 = !DILocation(line: 292, column: 21, scope: !1261)
!2345 = !DILocation(line: 292, column: 24, scope: !1261)
!2346 = !DILocation(line: 292, column: 15, scope: !1261)
!2347 = !DILocation(line: 292, column: 33, scope: !1261)
!2348 = !DILocation(line: 318, column: 21, scope: !1261)
!2349 = !DILocation(line: 318, column: 25, scope: !1261)
!2350 = !DILocation(line: 318, column: 15, scope: !1261)
!2351 = !DILocation(line: 318, column: 34, scope: !1261)
!2352 = !DILocation(line: 318, column: 38, scope: !1261)
!2353 = !DILocation(line: 318, column: 45, scope: !1261)
!2354 = !DILocation(line: 319, column: 21, scope: !1261)
!2355 = !DILocation(line: 319, column: 25, scope: !1261)
!2356 = !DILocation(line: 319, column: 15, scope: !1261)
!2357 = !DILocation(line: 319, column: 34, scope: !1261)
!2358 = !DILocation(line: 319, column: 38, scope: !1261)
!2359 = !DILocation(line: 319, column: 45, scope: !1261)
!2360 = !DILocation(line: 320, column: 21, scope: !1261)
!2361 = !DILocation(line: 320, column: 25, scope: !1261)
!2362 = !DILocation(line: 320, column: 15, scope: !1261)
!2363 = !DILocation(line: 320, column: 34, scope: !1261)
!2364 = !DILocation(line: 320, column: 38, scope: !1261)
!2365 = !DILocation(line: 320, column: 45, scope: !1261)
!2366 = !DILocation(line: 321, column: 21, scope: !1261)
!2367 = !DILocation(line: 321, column: 25, scope: !1261)
!2368 = !DILocation(line: 321, column: 15, scope: !1261)
!2369 = !DILocation(line: 321, column: 34, scope: !1261)
!2370 = !DILocation(line: 321, column: 38, scope: !1261)
!2371 = !DILocation(line: 321, column: 45, scope: !1261)
!2372 = !DILocation(line: 322, column: 21, scope: !1261)
!2373 = !DILocation(line: 322, column: 25, scope: !1261)
!2374 = !DILocation(line: 322, column: 15, scope: !1261)
!2375 = !DILocation(line: 322, column: 34, scope: !1261)
!2376 = !DILocation(line: 322, column: 38, scope: !1261)
!2377 = !DILocation(line: 322, column: 45, scope: !1261)
!2378 = !DILocation(line: 323, column: 21, scope: !1261)
!2379 = !DILocation(line: 323, column: 25, scope: !1261)
!2380 = !DILocation(line: 323, column: 15, scope: !1261)
!2381 = !DILocation(line: 323, column: 34, scope: !1261)
!2382 = !DILocation(line: 323, column: 38, scope: !1261)
!2383 = !DILocation(line: 323, column: 45, scope: !1261)
!2384 = !DILocation(line: 324, column: 21, scope: !1261)
!2385 = !DILocation(line: 324, column: 25, scope: !1261)
!2386 = !DILocation(line: 324, column: 15, scope: !1261)
!2387 = !DILocation(line: 324, column: 34, scope: !1261)
!2388 = !DILocation(line: 324, column: 38, scope: !1261)
!2389 = !DILocation(line: 324, column: 45, scope: !1261)
!2390 = !DILocation(line: 325, column: 21, scope: !1261)
!2391 = !DILocation(line: 325, column: 25, scope: !1261)
!2392 = !DILocation(line: 325, column: 15, scope: !1261)
!2393 = !DILocation(line: 325, column: 34, scope: !1261)
!2394 = !DILocation(line: 325, column: 38, scope: !1261)
!2395 = !DILocation(line: 325, column: 45, scope: !1261)
!2396 = !DILocation(line: 328, column: 20, scope: !1261)
!2397 = !DILocation(line: 328, column: 26, scope: !1261)
!2398 = !DILocation(line: 329, column: 20, scope: !1261)
!2399 = !DILocation(line: 329, column: 26, scope: !1261)
!2400 = !DILocation(line: 330, column: 20, scope: !1261)
!2401 = !DILocation(line: 330, column: 26, scope: !1261)
!2402 = !DILocation(line: 331, column: 20, scope: !1261)
!2403 = !DILocation(line: 331, column: 26, scope: !1261)
!2404 = !DILocation(line: 332, column: 20, scope: !1261)
!2405 = !DILocation(line: 332, column: 26, scope: !1261)
!2406 = !DILocation(line: 333, column: 20, scope: !1261)
!2407 = !DILocation(line: 333, column: 26, scope: !1261)
!2408 = !DILocation(line: 334, column: 20, scope: !1261)
!2409 = !DILocation(line: 334, column: 26, scope: !1261)
!2410 = !DILocation(line: 337, column: 9, scope: !1261)
!2411 = !DILocation(line: 338, column: 9, scope: !1261)
!2412 = !DILocation(line: 339, column: 9, scope: !1261)
!2413 = !DILocation(line: 340, column: 9, scope: !1261)
!2414 = !DILocation(line: 341, column: 9, scope: !1261)
!2415 = !DILocation(line: 342, column: 9, scope: !1261)
!2416 = !DILocation(line: 343, column: 9, scope: !1261)
!2417 = !DILocation(line: 344, column: 9, scope: !1261)
!2418 = !DILocation(line: 347, column: 9, scope: !1261)
!2419 = !DILocation(line: 348, column: 9, scope: !1261)
!2420 = !DILocation(line: 349, column: 9, scope: !1261)
!2421 = !DILocation(line: 350, column: 9, scope: !1261)
!2422 = !DILocation(line: 351, column: 9, scope: !1261)
!2423 = !DILocation(line: 353, column: 9, scope: !1261)
!2424 = !DILocation(line: 357, column: 3, scope: !1261)
!2425 = distinct !DISubprogram(name: "__remill_intrinsics", scope: !2426, file: !2426, line: 35, type: !95, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !1, variables: !7)
!2426 = !DIFile(filename: "/home/ubuntu/Github/remill/remill/Arch/Runtime/Intrinsics.cpp", directory: "/home/ubuntu/Github/remill/remill-build/remill/Arch/X86/Runtime")
!2427 = !DILocation(line: 116, column: 1, scope: !2425)
!2428 = !{!2429, !2430, i64 2065}
!2429 = !{!"_ZTS5State", !2430, i64 16, !2432, i64 2064, !2430, i64 2080, !2433, i64 2088, !2435, i64 2112, !2438, i64 2208, !2439, i64 2480, !2440, i64 2608, !2441, i64 2736, !2430, i64 2760, !2430, i64 2768, !2442, i64 3280}
!2430 = !{!"omnipotent char", !2431, i64 0}
!2431 = !{!"Simple C++ TBAA"}
!2432 = !{!"_ZTS10ArithFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15}
!2433 = !{!"_ZTS8Segments", !2434, i64 0, !2430, i64 2, !2434, i64 4, !2430, i64 6, !2434, i64 8, !2430, i64 10, !2434, i64 12, !2430, i64 14, !2434, i64 16, !2430, i64 18, !2434, i64 20, !2430, i64 22}
!2434 = !{!"short", !2430, i64 0}
!2435 = !{!"_ZTS12AddressSpace", !2436, i64 0, !2437, i64 8, !2436, i64 16, !2437, i64 24, !2436, i64 32, !2437, i64 40, !2436, i64 48, !2437, i64 56, !2436, i64 64, !2437, i64 72, !2436, i64 80, !2437, i64 88}
!2436 = !{!"long", !2430, i64 0}
!2437 = !{!"_ZTS3Reg", !2430, i64 0}
!2438 = !{!"_ZTS3GPR", !2436, i64 0, !2437, i64 8, !2436, i64 16, !2437, i64 24, !2436, i64 32, !2437, i64 40, !2436, i64 48, !2437, i64 56, !2436, i64 64, !2437, i64 72, !2436, i64 80, !2437, i64 88, !2436, i64 96, !2437, i64 104, !2436, i64 112, !2437, i64 120, !2436, i64 128, !2437, i64 136, !2436, i64 144, !2437, i64 152, !2436, i64 160, !2437, i64 168, !2436, i64 176, !2437, i64 184, !2436, i64 192, !2437, i64 200, !2436, i64 208, !2437, i64 216, !2436, i64 224, !2437, i64 232, !2436, i64 240, !2437, i64 248, !2436, i64 256, !2437, i64 264}
!2439 = !{!"_ZTS8X87Stack", !2430, i64 0}
!2440 = !{!"_ZTS3MMX", !2430, i64 0}
!2441 = !{!"_ZTS14FPUStatusFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15, !2430, i64 16, !2430, i64 17, !2430, i64 18, !2430, i64 19, !2430, i64 20}
!2442 = !{!"_ZTS13SegmentCaches", !2443, i64 0, !2443, i64 16, !2443, i64 32, !2443, i64 48, !2443, i64 64, !2443, i64 80}
!2443 = !{!"_ZTS13SegmentShadow", !2430, i64 0, !2444, i64 8, !2444, i64 12}
!2444 = !{!"int", !2430, i64 0}
!2445 = !{!2429, !2430, i64 2067}
!2446 = !{!2429, !2430, i64 2069}
!2447 = !{!2429, !2430, i64 2071}
!2448 = !{!2429, !2430, i64 2073}
!2449 = !{!2429, !2430, i64 2077}
!2450 = !{!2430, !2430, i64 0}
!2451 = !{!2436, !2436, i64 0}
