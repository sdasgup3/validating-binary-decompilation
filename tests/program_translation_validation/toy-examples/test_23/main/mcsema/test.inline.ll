; ModuleID = 'mcsema/test.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400418__init_type = type <{ [23 x i8] }>
%seg_400430__plt_type = type <{ [64 x i8] }>
%seg_400470__text_type = type <{ [1138 x i8] }>
%seg_4008e4__fini_type = type <{ [9 x i8] }>
%seg_4008f0__rodata_type = type <{ [192 x i8], [3 x i8], [40 x i8], [11 x i8], [10 x i8], [19 x i8], [10 x i8] }>
%seg_400a10__eh_frame_hdr_type = type <{ [60 x i8] }>
%seg_400a50__eh_frame_type = type <{ [276 x i8] }>
%seg_600e10__init_array_type = type <{ i64, i64 }>
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
@seg_400418__init = internal constant %seg_400418__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\D5\0B \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400430__plt = internal constant %seg_400430__plt_type <{ [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\D2\0B \00\00\00\00\00\00\00\00\00\00\00\FF%\CA\0B \00\00\00\00\00\00\00\00\00\00\00\FF%\C2\0B \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400470__text = internal constant %seg_400470__text_type <{ [1138 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\E0\08@\00H\C7\C1p\08@\00H\C7\C7\00\06@\00\FF\15V\0B \00\F4\0F\1FD\00\00U\B8\90\10`\00H=\90\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF\90\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE\90\10`\00UH\81\EE\90\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF\90\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=v\0B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05d\0B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \C7E\FC\00\00\00\00\83}\FC\07\0F\8Dr\00\00\00\C7E\F8\00\00\00\00\83}\F8\0B\0F\8D?\00\00\00H\BF\B0\09@\00\00\00\00\00H\B8@\10`\00\00\00\00\00HcM\FCHk\C9\0BH\01\C8HcM\F8\0F\BE4\08\B0\00\E8\98\FE\FF\FF\89E\F4\8BE\F8\83\C0\01\89E\F8\E9\B7\FF\FF\FFH\BF\01\0A@\00\00\00\00\00\B0\00\E8v\FE\FF\FF\89E\F0\8BE\FC\83\C0\01\89E\FC\E9\84\FF\FF\FFH\BF\01\0A@\00\00\00\00\00\B0\00\E8T\FE\FF\FF\89E\ECH\83\C4 ]\C3ff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\ECp1\C0\B9\1C\00\00\00\89\CAL\8DE\C0I\B9@\10`\00\00\00\00\00\C7E\FC\00\00\00\00\89}\F8H\89u\F0\C7E\DC\00\00\00\00\C7E\EC\01\00\00\00\C7E\E8\01\00\00\00Hcu\E8Hk\F6\0BI\01\F1Hcu\ECA\C6\041X\89\C7L\89\C6\E8\F0\FD\FF\FFH\89E\B8\83}\DC\1C\0F\8D\D9\01\00\00\8BE\EC\89E\E4\8BE\E8\89E\E0HcM\DC\0F\BED\0D\C0\83\C0\9F\89\C1\83\E8\16H\89M\B0\89E\AC\0F\87F\00\00\00H\8BE\B0H\8B\0C\C5\F8\08@\00\FF\E1\8BE\E8\83\C0\FF\89E\E8\E9\5C\00\00\00\8BE\E8\83\C0\01\89E\E8\E9N\00\00\00\8BE\EC\83\C0\FF\89E\EC\E9@\00\00\00\8BE\EC\83\C0\01\89E\EC\E92\00\00\00H\BF\B3\09@\00\00\00\00\00\B0\00\E8Q\FD\FF\FFH\BF\DB\09@\00\00\00\00\00\89E\A8\B0\00\E8=\FD\FF\FF\BF\FF\FF\FF\FF\89E\A4\E8P\FD\FF\FFH\B8@\10`\00\00\00\00\00HcM\E8Hk\C9\0BH\01\C8HcM\EC\0F\BE\14\08\83\FA#\0F\853\00\00\00H\BF\E6\09@\00\00\00\00\00\B0\00\E8\F9\FC\FF\FFH\BF\F0\09@\00\00\00\00\00H\8Du\C0\89E\A0\B0\00\E8\E1\FC\FF\FF1\FF\89E\9C\E8\F7\FC\FF\FFH\B8@\10`\00\00\00\00\00HcM\E8Hk\C9\0BH\01\C8HcM\EC\0F\BE\14\08\83\FA \0F\84P\00\00\00\83}\E8\02\0F\85:\00\00\00H\B8@\10`\00\00\00\00\00HcM\E8Hk\C9\0BH\01\C8HcM\EC\0F\BE\14\08\83\FA|\0F\85\14\00\00\00\83}\EC\00\0F\8E\0A\00\00\00\83}\EC\0B\0F\8C\0C\00\00\00\8BE\E4\89E\EC\8BE\E0\89E\E8\8BE\E4;E\EC\0F\85,\00\00\00\8BE\E0;E\E8\0F\85 \00\00\00H\BF\03\0A@\00\00\00\00\00\B0\00\E88\FC\FF\FF\C7E\FC\02\00\00\00\89E\98\E9K\00\00\00H\B8@\10`\00\00\00\00\00HcM\E8Hk\C9\0BH\01\C8HcM\EC\C6\04\08X\E8\17\FD\FF\FF\8BU\DC\83\C2\01\89U\DC\E9\1D\FE\FF\FFH\BF\03\0A@\00\00\00\00\00\B0\00\E8\E8\FB\FF\FF\C7E\FC\01\00\00\00\89E\94\8BE\FCH\83\C4p]\C3\0F\1FD\00\00AWAVA\89\FFAUATL\8D%\8E\05 \00UH\8D-\8E\05 \00SI\89\F6I\89\D5L)\E5H\83\EC\08H\C1\FD\03\E8w\FB\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\EAL\89\F6D\89\FFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_4008e4__fini = internal constant %seg_4008e4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_4008f0__rodata = internal constant %seg_4008f0__rodata_type <{ [192 x i8] c"\01\00\02\00\00\00\00\00\C2\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\D0\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\B4\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\DE\06@\00\00\00\00\00\A6\06@\00\00\00\00\00", [3 x i8] c"%c\00", [40 x i8] c"Wrong command!(only w,s,a,d accepted!)\0A\00", [11 x i8] c"You lose!\0A\00", [10 x i8] c"You win!\0A\00", [19 x i8] c"Your solution:%s \0A\00", [10 x i8] c"You lose\0A\00" }>
@seg_400a10__eh_frame_hdr = internal constant %seg_400a10__eh_frame_hdr_type <{ [60 x i8] c"\01\1B\03;<\00\00\00\06\00\00\00 \FA\FF\FF\88\00\00\00`\FA\FF\FFX\00\00\00@\FB\FF\FF\B0\00\00\00\F0\FB\FF\FF\D0\00\00\00`\FE\FF\FF\F0\00\00\00\D0\FE\FF\FF8\01\00\00" }>
@seg_400a50__eh_frame = internal constant %seg_400a50__eh_frame_type <{ [276 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\14\00\00\00\1C\00\00\00\00\FA\FF\FF+\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00$\00\00\00\1C\00\00\00\90\F9\FF\FF@\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\1C\00\00\00D\00\00\00\88\FA\FF\FF\A5\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00\1C\00\00\00d\00\00\00\18\FB\FF\FFk\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00D\00\00\00\84\00\00\00h\FD\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\14\00\00\00\CC\00\00\00\90\FD\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_600e10__init_array = internal global %seg_600e10__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400540_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400510___do_global_dtors_aux to i64) }>
@seg_600ff0__got = internal global %seg_600ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_601000__got_plt = internal global %seg_601000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 ptrtoint (i64 (i64, i64, i64)* @read to i64), i64 ptrtoint (i64 (i64)* @exit to i64) }>
@seg_601030__data = internal global %seg_601030__data_type zeroinitializer
@maze = global %maze_type <{ [77 x i8] c"+-+---+---+| |     |#|| | --+ | || |   | | || +-- | | ||     |   |+-----+---+" }>
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400540_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400510___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4008e0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400870___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @draw_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
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
define %struct.Memory* @__remill_basic_block(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #8 !dbg !1257 {
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
  store i8 0, i8* %BRANCH_TAKEN, align 1, !dbg !1948
  store i64 0, i64* %SS_BASE, align 8, !dbg !1949
  store i64 0, i64* %ES_BASE, align 8, !dbg !1950
  store i64 0, i64* %DS_BASE, align 8, !dbg !1951
  store i64 0, i64* %CS_BASE, align 8, !dbg !1952
  store %struct.State* %0, %struct.State** %STATE, align 8, !dbg !1953
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8, !dbg !1954
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1955
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33, !dbg !1956
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0, !dbg !1957
  %PC = bitcast %union.anon* %6 to i64*, !dbg !1957
  store i64 %1, i64* %PC, align 8, !dbg !1958
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1959
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 1, !dbg !1960
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0, !dbg !1961
  %10 = bitcast %union.anon* %9 to %struct.anon.2*, !dbg !1961
  %AH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 1, !dbg !1962
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1963
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 3, !dbg !1964
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0, !dbg !1965
  %14 = bitcast %union.anon* %13 to %struct.anon.2*, !dbg !1965
  %BH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %14, i32 0, i32 1, !dbg !1966
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1967
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 5, !dbg !1968
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0, !dbg !1969
  %18 = bitcast %union.anon* %17 to %struct.anon.2*, !dbg !1969
  %CH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 1, !dbg !1970
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1971
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 7, !dbg !1972
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0, !dbg !1973
  %22 = bitcast %union.anon* %21 to %struct.anon.2*, !dbg !1973
  %DH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %22, i32 0, i32 1, !dbg !1974
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1975
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 1, !dbg !1976
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0, !dbg !1977
  %26 = bitcast %union.anon* %25 to %struct.anon.2*, !dbg !1977
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %26, i32 0, i32 0, !dbg !1978
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1979
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 3, !dbg !1980
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0, !dbg !1981
  %30 = bitcast %union.anon* %29 to %struct.anon.2*, !dbg !1981
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %30, i32 0, i32 0, !dbg !1982
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1983
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 5, !dbg !1984
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0, !dbg !1985
  %34 = bitcast %union.anon* %33 to %struct.anon.2*, !dbg !1985
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %34, i32 0, i32 0, !dbg !1986
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1987
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 7, !dbg !1988
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0, !dbg !1989
  %38 = bitcast %union.anon* %37 to %struct.anon.2*, !dbg !1989
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %38, i32 0, i32 0, !dbg !1990
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1991
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 9, !dbg !1992
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0, !dbg !1993
  %42 = bitcast %union.anon* %41 to %struct.anon.2*, !dbg !1993
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %42, i32 0, i32 0, !dbg !1994
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1995
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 11, !dbg !1996
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0, !dbg !1997
  %46 = bitcast %union.anon* %45 to %struct.anon.2*, !dbg !1997
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %46, i32 0, i32 0, !dbg !1998
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !1999
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 13, !dbg !2000
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0, !dbg !2001
  %50 = bitcast %union.anon* %49 to %struct.anon.2*, !dbg !2001
  %SPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %50, i32 0, i32 0, !dbg !2002
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2003
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15, !dbg !2004
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0, !dbg !2005
  %54 = bitcast %union.anon* %53 to %struct.anon.2*, !dbg !2005
  %BPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %54, i32 0, i32 0, !dbg !2006
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2007
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 17, !dbg !2008
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0, !dbg !2009
  %58 = bitcast %union.anon* %57 to %struct.anon.2*, !dbg !2009
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %58, i32 0, i32 0, !dbg !2010
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2011
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 19, !dbg !2012
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0, !dbg !2013
  %62 = bitcast %union.anon* %61 to %struct.anon.2*, !dbg !2013
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %62, i32 0, i32 0, !dbg !2014
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2015
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 21, !dbg !2016
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0, !dbg !2017
  %66 = bitcast %union.anon* %65 to %struct.anon.2*, !dbg !2017
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %66, i32 0, i32 0, !dbg !2018
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2019
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 23, !dbg !2020
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0, !dbg !2021
  %70 = bitcast %union.anon* %69 to %struct.anon.2*, !dbg !2021
  %R11B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %70, i32 0, i32 0, !dbg !2022
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2023
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 25, !dbg !2024
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0, !dbg !2025
  %74 = bitcast %union.anon* %73 to %struct.anon.2*, !dbg !2025
  %R12B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %74, i32 0, i32 0, !dbg !2026
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2027
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 27, !dbg !2028
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0, !dbg !2029
  %78 = bitcast %union.anon* %77 to %struct.anon.2*, !dbg !2029
  %R13B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %78, i32 0, i32 0, !dbg !2030
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2031
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 29, !dbg !2032
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0, !dbg !2033
  %82 = bitcast %union.anon* %81 to %struct.anon.2*, !dbg !2033
  %R14B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %82, i32 0, i32 0, !dbg !2034
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2035
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 31, !dbg !2036
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0, !dbg !2037
  %86 = bitcast %union.anon* %85 to %struct.anon.2*, !dbg !2037
  %R15B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %86, i32 0, i32 0, !dbg !2038
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2039
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 1, !dbg !2040
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0, !dbg !2041
  %AX = bitcast %union.anon* %89 to i16*, !dbg !2041
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2042
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 3, !dbg !2043
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0, !dbg !2044
  %BX = bitcast %union.anon* %92 to i16*, !dbg !2044
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2045
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 5, !dbg !2046
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0, !dbg !2047
  %CX = bitcast %union.anon* %95 to i16*, !dbg !2047
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2048
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 7, !dbg !2049
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0, !dbg !2050
  %DX = bitcast %union.anon* %98 to i16*, !dbg !2050
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2051
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 9, !dbg !2052
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0, !dbg !2053
  %SI = bitcast %union.anon* %101 to i16*, !dbg !2053
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2054
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 11, !dbg !2055
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0, !dbg !2056
  %DI = bitcast %union.anon* %104 to i16*, !dbg !2056
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2057
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 13, !dbg !2058
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0, !dbg !2059
  %SP = bitcast %union.anon* %107 to i16*, !dbg !2059
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2060
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15, !dbg !2061
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0, !dbg !2062
  %BP = bitcast %union.anon* %110 to i16*, !dbg !2062
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2063
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 17, !dbg !2064
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0, !dbg !2065
  %R8W = bitcast %union.anon* %113 to i16*, !dbg !2065
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2066
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 19, !dbg !2067
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0, !dbg !2068
  %R9W = bitcast %union.anon* %116 to i16*, !dbg !2068
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2069
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 21, !dbg !2070
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0, !dbg !2071
  %R10W = bitcast %union.anon* %119 to i16*, !dbg !2071
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2072
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 23, !dbg !2073
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0, !dbg !2074
  %R11W = bitcast %union.anon* %122 to i16*, !dbg !2074
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2075
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 25, !dbg !2076
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0, !dbg !2077
  %R12W = bitcast %union.anon* %125 to i16*, !dbg !2077
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2078
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 27, !dbg !2079
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0, !dbg !2080
  %R13W = bitcast %union.anon* %128 to i16*, !dbg !2080
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2081
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 29, !dbg !2082
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0, !dbg !2083
  %R14W = bitcast %union.anon* %131 to i16*, !dbg !2083
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2084
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 31, !dbg !2085
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0, !dbg !2086
  %R15W = bitcast %union.anon* %134 to i16*, !dbg !2086
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2087
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33, !dbg !2088
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0, !dbg !2089
  %IP = bitcast %union.anon* %137 to i16*, !dbg !2089
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2090
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 1, !dbg !2091
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0, !dbg !2092
  %EAX = bitcast %union.anon* %140 to i32*, !dbg !2092
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2093
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 3, !dbg !2094
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0, !dbg !2095
  %EBX = bitcast %union.anon* %143 to i32*, !dbg !2095
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2096
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 5, !dbg !2097
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0, !dbg !2098
  %ECX = bitcast %union.anon* %146 to i32*, !dbg !2098
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2099
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 7, !dbg !2100
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0, !dbg !2101
  %EDX = bitcast %union.anon* %149 to i32*, !dbg !2101
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2102
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 9, !dbg !2103
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0, !dbg !2104
  %ESI = bitcast %union.anon* %152 to i32*, !dbg !2104
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2105
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 11, !dbg !2106
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0, !dbg !2107
  %EDI = bitcast %union.anon* %155 to i32*, !dbg !2107
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2108
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 13, !dbg !2109
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0, !dbg !2110
  %ESP = bitcast %union.anon* %158 to i32*, !dbg !2110
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2111
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15, !dbg !2112
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0, !dbg !2113
  %EBP = bitcast %union.anon* %161 to i32*, !dbg !2113
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2114
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33, !dbg !2115
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0, !dbg !2116
  %EIP = bitcast %union.anon* %164 to i32*, !dbg !2116
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2117
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 17, !dbg !2118
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0, !dbg !2119
  %R8D = bitcast %union.anon* %167 to i32*, !dbg !2119
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2120
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 19, !dbg !2121
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0, !dbg !2122
  %R9D = bitcast %union.anon* %170 to i32*, !dbg !2122
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2123
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 21, !dbg !2124
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0, !dbg !2125
  %R10D = bitcast %union.anon* %173 to i32*, !dbg !2125
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2126
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 23, !dbg !2127
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0, !dbg !2128
  %R11D = bitcast %union.anon* %176 to i32*, !dbg !2128
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2129
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 25, !dbg !2130
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0, !dbg !2131
  %R12D = bitcast %union.anon* %179 to i32*, !dbg !2131
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2132
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 27, !dbg !2133
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0, !dbg !2134
  %R13D = bitcast %union.anon* %182 to i32*, !dbg !2134
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2135
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 29, !dbg !2136
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0, !dbg !2137
  %R14D = bitcast %union.anon* %185 to i32*, !dbg !2137
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2138
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 31, !dbg !2139
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0, !dbg !2140
  %R15D = bitcast %union.anon* %188 to i32*, !dbg !2140
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2141
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 1, !dbg !2142
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0, !dbg !2143
  %RAX = bitcast %union.anon* %191 to i64*, !dbg !2143
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2144
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 3, !dbg !2145
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0, !dbg !2146
  %RBX = bitcast %union.anon* %194 to i64*, !dbg !2146
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2147
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 5, !dbg !2148
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0, !dbg !2149
  %RCX = bitcast %union.anon* %197 to i64*, !dbg !2149
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2150
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 7, !dbg !2151
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0, !dbg !2152
  %RDX = bitcast %union.anon* %200 to i64*, !dbg !2152
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2153
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 9, !dbg !2154
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0, !dbg !2155
  %RSI = bitcast %union.anon* %203 to i64*, !dbg !2155
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2156
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 11, !dbg !2157
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0, !dbg !2158
  %RDI = bitcast %union.anon* %206 to i64*, !dbg !2158
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2159
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 13, !dbg !2160
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0, !dbg !2161
  %RSP = bitcast %union.anon* %209 to i64*, !dbg !2161
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2162
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15, !dbg !2163
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0, !dbg !2164
  %RBP = bitcast %union.anon* %212 to i64*, !dbg !2164
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2165
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 17, !dbg !2166
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0, !dbg !2167
  %R8 = bitcast %union.anon* %215 to i64*, !dbg !2167
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2168
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 19, !dbg !2169
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0, !dbg !2170
  %R9 = bitcast %union.anon* %218 to i64*, !dbg !2170
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2171
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 21, !dbg !2172
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0, !dbg !2173
  %R10 = bitcast %union.anon* %221 to i64*, !dbg !2173
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2174
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 23, !dbg !2175
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0, !dbg !2176
  %R11 = bitcast %union.anon* %224 to i64*, !dbg !2176
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2177
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 25, !dbg !2178
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0, !dbg !2179
  %R12 = bitcast %union.anon* %227 to i64*, !dbg !2179
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2180
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 27, !dbg !2181
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0, !dbg !2182
  %R13 = bitcast %union.anon* %230 to i64*, !dbg !2182
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2183
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 29, !dbg !2184
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0, !dbg !2185
  %R14 = bitcast %union.anon* %233 to i64*, !dbg !2185
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2186
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 31, !dbg !2187
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0, !dbg !2188
  %R15 = bitcast %union.anon* %236 to i64*, !dbg !2188
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6, !dbg !2189
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33, !dbg !2190
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0, !dbg !2191
  %RIP = bitcast %union.anon* %239 to i64*, !dbg !2191
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2192
  %241 = getelementptr inbounds %struct.Segments, %struct.Segments* %240, i32 0, i32 1, !dbg !2193
  %SS = bitcast %union.SegmentSelector* %241 to i16*, !dbg !2194
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2195
  %243 = getelementptr inbounds %struct.Segments, %struct.Segments* %242, i32 0, i32 3, !dbg !2196
  %ES = bitcast %union.SegmentSelector* %243 to i16*, !dbg !2197
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2198
  %245 = getelementptr inbounds %struct.Segments, %struct.Segments* %244, i32 0, i32 5, !dbg !2199
  %GS = bitcast %union.SegmentSelector* %245 to i16*, !dbg !2200
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2201
  %247 = getelementptr inbounds %struct.Segments, %struct.Segments* %246, i32 0, i32 7, !dbg !2202
  %FS = bitcast %union.SegmentSelector* %247 to i16*, !dbg !2203
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2204
  %249 = getelementptr inbounds %struct.Segments, %struct.Segments* %248, i32 0, i32 9, !dbg !2205
  %DS = bitcast %union.SegmentSelector* %249 to i16*, !dbg !2206
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4, !dbg !2207
  %251 = getelementptr inbounds %struct.Segments, %struct.Segments* %250, i32 0, i32 11, !dbg !2208
  %CS = bitcast %union.SegmentSelector* %251 to i16*, !dbg !2209
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5, !dbg !2210
  %253 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %252, i32 0, i32 5, !dbg !2211
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0, !dbg !2212
  %GS_BASE = bitcast %union.anon* %254 to i64*, !dbg !2212
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5, !dbg !2213
  %256 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %255, i32 0, i32 7, !dbg !2214
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0, !dbg !2215
  %FS_BASE = bitcast %union.anon* %257 to i64*, !dbg !2215
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2216
  %259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %258, i64 0, i64 0, !dbg !2217
  %YMM0 = bitcast %union.VectorReg* %259 to %"class.std::bitset"*, !dbg !2218
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2219
  %261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %260, i64 0, i64 1, !dbg !2220
  %YMM1 = bitcast %union.VectorReg* %261 to %"class.std::bitset"*, !dbg !2221
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2222
  %263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %262, i64 0, i64 2, !dbg !2223
  %YMM2 = bitcast %union.VectorReg* %263 to %"class.std::bitset"*, !dbg !2224
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2225
  %265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %264, i64 0, i64 3, !dbg !2226
  %YMM3 = bitcast %union.VectorReg* %265 to %"class.std::bitset"*, !dbg !2227
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2228
  %267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %266, i64 0, i64 4, !dbg !2229
  %YMM4 = bitcast %union.VectorReg* %267 to %"class.std::bitset"*, !dbg !2230
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2231
  %269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %268, i64 0, i64 5, !dbg !2232
  %YMM5 = bitcast %union.VectorReg* %269 to %"class.std::bitset"*, !dbg !2233
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2234
  %271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %270, i64 0, i64 6, !dbg !2235
  %YMM6 = bitcast %union.VectorReg* %271 to %"class.std::bitset"*, !dbg !2236
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2237
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %272, i64 0, i64 7, !dbg !2238
  %YMM7 = bitcast %union.VectorReg* %273 to %"class.std::bitset"*, !dbg !2239
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2240
  %275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %274, i64 0, i64 8, !dbg !2241
  %YMM8 = bitcast %union.VectorReg* %275 to %"class.std::bitset"*, !dbg !2242
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2243
  %277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %276, i64 0, i64 9, !dbg !2244
  %YMM9 = bitcast %union.VectorReg* %277 to %"class.std::bitset"*, !dbg !2245
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2246
  %279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %278, i64 0, i64 10, !dbg !2247
  %YMM10 = bitcast %union.VectorReg* %279 to %"class.std::bitset"*, !dbg !2248
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2249
  %281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %280, i64 0, i64 11, !dbg !2250
  %YMM11 = bitcast %union.VectorReg* %281 to %"class.std::bitset"*, !dbg !2251
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2252
  %283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %282, i64 0, i64 12, !dbg !2253
  %YMM12 = bitcast %union.VectorReg* %283 to %"class.std::bitset"*, !dbg !2254
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2255
  %285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %284, i64 0, i64 13, !dbg !2256
  %YMM13 = bitcast %union.VectorReg* %285 to %"class.std::bitset"*, !dbg !2257
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2258
  %287 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %286, i64 0, i64 14, !dbg !2259
  %YMM14 = bitcast %union.VectorReg* %287 to %"class.std::bitset"*, !dbg !2260
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2261
  %289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %288, i64 0, i64 15, !dbg !2262
  %YMM15 = bitcast %union.VectorReg* %289 to %"class.std::bitset"*, !dbg !2263
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2264
  %291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %290, i64 0, i64 0, !dbg !2265
  %XMM0 = bitcast %union.VectorReg* %291 to %union.vec128_t*, !dbg !2266
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2267
  %293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %292, i64 0, i64 1, !dbg !2268
  %XMM1 = bitcast %union.VectorReg* %293 to %union.vec128_t*, !dbg !2269
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2270
  %295 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %294, i64 0, i64 2, !dbg !2271
  %XMM2 = bitcast %union.VectorReg* %295 to %union.vec128_t*, !dbg !2272
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2273
  %297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %296, i64 0, i64 3, !dbg !2274
  %XMM3 = bitcast %union.VectorReg* %297 to %union.vec128_t*, !dbg !2275
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2276
  %299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %298, i64 0, i64 4, !dbg !2277
  %XMM4 = bitcast %union.VectorReg* %299 to %union.vec128_t*, !dbg !2278
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2279
  %301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %300, i64 0, i64 5, !dbg !2280
  %XMM5 = bitcast %union.VectorReg* %301 to %union.vec128_t*, !dbg !2281
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2282
  %303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 6, !dbg !2283
  %XMM6 = bitcast %union.VectorReg* %303 to %union.vec128_t*, !dbg !2284
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2285
  %305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %304, i64 0, i64 7, !dbg !2286
  %XMM7 = bitcast %union.VectorReg* %305 to %union.vec128_t*, !dbg !2287
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2288
  %307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %306, i64 0, i64 8, !dbg !2289
  %XMM8 = bitcast %union.VectorReg* %307 to %union.vec128_t*, !dbg !2290
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2291
  %309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %308, i64 0, i64 9, !dbg !2292
  %XMM9 = bitcast %union.VectorReg* %309 to %union.vec128_t*, !dbg !2293
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2294
  %311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %310, i64 0, i64 10, !dbg !2295
  %XMM10 = bitcast %union.VectorReg* %311 to %union.vec128_t*, !dbg !2296
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2297
  %313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %312, i64 0, i64 11, !dbg !2298
  %XMM11 = bitcast %union.VectorReg* %313 to %union.vec128_t*, !dbg !2299
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2300
  %315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %314, i64 0, i64 12, !dbg !2301
  %XMM12 = bitcast %union.VectorReg* %315 to %union.vec128_t*, !dbg !2302
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2303
  %317 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %316, i64 0, i64 13, !dbg !2304
  %XMM13 = bitcast %union.VectorReg* %317 to %union.vec128_t*, !dbg !2305
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2306
  %319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %318, i64 0, i64 14, !dbg !2307
  %XMM14 = bitcast %union.VectorReg* %319 to %union.vec128_t*, !dbg !2308
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1, !dbg !2309
  %321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %320, i64 0, i64 15, !dbg !2310
  %XMM15 = bitcast %union.VectorReg* %321 to %union.vec128_t*, !dbg !2311
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2312
  %323 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %322, i32 0, i32 0, !dbg !2313
  %324 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %323, i64 0, i64 0, !dbg !2314
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %324, i32 0, i32 1, !dbg !2315
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2316
  %326 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %325, i32 0, i32 0, !dbg !2317
  %327 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %326, i64 0, i64 1, !dbg !2318
  %ST1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %327, i32 0, i32 1, !dbg !2319
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2320
  %329 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %328, i32 0, i32 0, !dbg !2321
  %330 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %329, i64 0, i64 2, !dbg !2322
  %ST2 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %330, i32 0, i32 1, !dbg !2323
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2324
  %332 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %331, i32 0, i32 0, !dbg !2325
  %333 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %332, i64 0, i64 3, !dbg !2326
  %ST3 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %333, i32 0, i32 1, !dbg !2327
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2328
  %335 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %334, i32 0, i32 0, !dbg !2329
  %336 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %335, i64 0, i64 4, !dbg !2330
  %ST4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %336, i32 0, i32 1, !dbg !2331
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2332
  %338 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %337, i32 0, i32 0, !dbg !2333
  %339 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %338, i64 0, i64 5, !dbg !2334
  %ST5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %339, i32 0, i32 1, !dbg !2335
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2336
  %341 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %340, i32 0, i32 0, !dbg !2337
  %342 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %341, i64 0, i64 6, !dbg !2338
  %ST6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %342, i32 0, i32 1, !dbg !2339
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7, !dbg !2340
  %344 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %343, i32 0, i32 0, !dbg !2341
  %345 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %344, i64 0, i64 7, !dbg !2342
  %ST7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %345, i32 0, i32 1, !dbg !2343
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2344
  %347 = getelementptr inbounds %struct.MMX, %struct.MMX* %346, i32 0, i32 0, !dbg !2345
  %348 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %347, i64 0, i64 0, !dbg !2346
  %349 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %348, i32 0, i32 1, !dbg !2347
  %350 = bitcast %union.vec64_t* %349 to %struct.uint64v1_t*, !dbg !2348
  %351 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %350, i32 0, i32 0, !dbg !2349
  %MM0 = getelementptr inbounds [1 x i64], [1 x i64]* %351, i64 0, i64 0, !dbg !2346
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2350
  %353 = getelementptr inbounds %struct.MMX, %struct.MMX* %352, i32 0, i32 0, !dbg !2351
  %354 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %353, i64 0, i64 1, !dbg !2352
  %355 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %354, i32 0, i32 1, !dbg !2353
  %356 = bitcast %union.vec64_t* %355 to %struct.uint64v1_t*, !dbg !2354
  %357 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %356, i32 0, i32 0, !dbg !2355
  %MM1 = getelementptr inbounds [1 x i64], [1 x i64]* %357, i64 0, i64 0, !dbg !2352
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2356
  %359 = getelementptr inbounds %struct.MMX, %struct.MMX* %358, i32 0, i32 0, !dbg !2357
  %360 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %359, i64 0, i64 2, !dbg !2358
  %361 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %360, i32 0, i32 1, !dbg !2359
  %362 = bitcast %union.vec64_t* %361 to %struct.uint64v1_t*, !dbg !2360
  %363 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %362, i32 0, i32 0, !dbg !2361
  %MM2 = getelementptr inbounds [1 x i64], [1 x i64]* %363, i64 0, i64 0, !dbg !2358
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2362
  %365 = getelementptr inbounds %struct.MMX, %struct.MMX* %364, i32 0, i32 0, !dbg !2363
  %366 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %365, i64 0, i64 3, !dbg !2364
  %367 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %366, i32 0, i32 1, !dbg !2365
  %368 = bitcast %union.vec64_t* %367 to %struct.uint64v1_t*, !dbg !2366
  %369 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %368, i32 0, i32 0, !dbg !2367
  %MM3 = getelementptr inbounds [1 x i64], [1 x i64]* %369, i64 0, i64 0, !dbg !2364
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2368
  %371 = getelementptr inbounds %struct.MMX, %struct.MMX* %370, i32 0, i32 0, !dbg !2369
  %372 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %371, i64 0, i64 4, !dbg !2370
  %373 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %372, i32 0, i32 1, !dbg !2371
  %374 = bitcast %union.vec64_t* %373 to %struct.uint64v1_t*, !dbg !2372
  %375 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %374, i32 0, i32 0, !dbg !2373
  %MM4 = getelementptr inbounds [1 x i64], [1 x i64]* %375, i64 0, i64 0, !dbg !2370
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2374
  %377 = getelementptr inbounds %struct.MMX, %struct.MMX* %376, i32 0, i32 0, !dbg !2375
  %378 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %377, i64 0, i64 5, !dbg !2376
  %379 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %378, i32 0, i32 1, !dbg !2377
  %380 = bitcast %union.vec64_t* %379 to %struct.uint64v1_t*, !dbg !2378
  %381 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %380, i32 0, i32 0, !dbg !2379
  %MM5 = getelementptr inbounds [1 x i64], [1 x i64]* %381, i64 0, i64 0, !dbg !2376
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2380
  %383 = getelementptr inbounds %struct.MMX, %struct.MMX* %382, i32 0, i32 0, !dbg !2381
  %384 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %383, i64 0, i64 6, !dbg !2382
  %385 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %384, i32 0, i32 1, !dbg !2383
  %386 = bitcast %union.vec64_t* %385 to %struct.uint64v1_t*, !dbg !2384
  %387 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %386, i32 0, i32 0, !dbg !2385
  %MM6 = getelementptr inbounds [1 x i64], [1 x i64]* %387, i64 0, i64 0, !dbg !2382
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8, !dbg !2386
  %389 = getelementptr inbounds %struct.MMX, %struct.MMX* %388, i32 0, i32 0, !dbg !2387
  %390 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %389, i64 0, i64 7, !dbg !2388
  %391 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %390, i32 0, i32 1, !dbg !2389
  %392 = bitcast %union.vec64_t* %391 to %struct.uint64v1_t*, !dbg !2390
  %393 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %392, i32 0, i32 0, !dbg !2391
  %MM7 = getelementptr inbounds [1 x i64], [1 x i64]* %393, i64 0, i64 0, !dbg !2388
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2392
  %AF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %394, i32 0, i32 5, !dbg !2393
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2394
  %CF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %395, i32 0, i32 1, !dbg !2395
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2396
  %DF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %396, i32 0, i32 11, !dbg !2397
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2398
  %OF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %397, i32 0, i32 13, !dbg !2399
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2400
  %PF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %398, i32 0, i32 3, !dbg !2401
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2402
  %SF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %399, i32 0, i32 9, !dbg !2403
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2, !dbg !2404
  %ZF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %400, i32 0, i32 7, !dbg !2405
  store i64* @DR0, i64** %_DR0, align 8, !dbg !2406
  store i64* @DR1, i64** %_DR1, align 8, !dbg !2407
  store i64* @DR2, i64** %_DR2, align 8, !dbg !2408
  store i64* @DR3, i64** %_DR3, align 8, !dbg !2409
  store i64* @DR4, i64** %_DR4, align 8, !dbg !2410
  store i64* @DR5, i64** %_DR5, align 8, !dbg !2411
  store i64* @DR6, i64** %_DR6, align 8, !dbg !2412
  store i64* @DR7, i64** %_DR7, align 8, !dbg !2413
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0, align 8, !dbg !2414
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1, align 8, !dbg !2415
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2, align 8, !dbg !2416
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3, align 8, !dbg !2417
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4, align 8, !dbg !2418
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8, align 8, !dbg !2419
  ret %struct.Memory* %2, !dbg !2420
}

; Function Attrs: noduplicate noinline nounwind optnone
define void @__remill_intrinsics() #9 !dbg !2421 {
  ret void, !dbg !2423
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
declare extern_weak x86_64_sysvcc i64 @read(i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #13

; Function Attrs: noinline
define %struct.Memory* @sub_400870___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400870:
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
  %55 = load i64, i64* %54, align 8, !tbaa !2424
  %56 = add i64 %55, -8
  %57 = inttoptr i64 %56 to i64*
  store i64 %51, i64* %57
  store i64 %56, i64* %54, align 8, !tbaa !2424
  %58 = load i64, i64* %R14
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 2
  store i64 %60, i64* %PC
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %62 = load i64, i64* %61, align 8, !tbaa !2424
  %63 = add i64 %62, -8
  %64 = inttoptr i64 %63 to i64*
  store i64 %58, i64* %64
  store i64 %63, i64* %61, align 8, !tbaa !2424
  %65 = bitcast i32* %R15D to i64*
  %66 = load i32, i32* %EDI
  %67 = zext i32 %66 to i64
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 3
  store i64 %69, i64* %PC
  %70 = and i64 %67, 4294967295
  store i64 %70, i64* %65, align 8, !tbaa !2424
  %71 = load i64, i64* %R13
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 2
  store i64 %73, i64* %PC
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %75 = load i64, i64* %74, align 8, !tbaa !2424
  %76 = add i64 %75, -8
  %77 = inttoptr i64 %76 to i64*
  store i64 %71, i64* %77
  store i64 %76, i64* %74, align 8, !tbaa !2424
  %78 = load i64, i64* %R12
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 2
  store i64 %80, i64* %PC
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %82 = load i64, i64* %81, align 8, !tbaa !2424
  %83 = add i64 %82, -8
  %84 = inttoptr i64 %83 to i64*
  store i64 %78, i64* %84
  store i64 %83, i64* %81, align 8, !tbaa !2424
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 7
  store i64 %86, i64* %PC
  store i64 ptrtoint (%seg_600e10__init_array_type* @seg_600e10__init_array to i64), i64* %R12, align 8, !tbaa !2424
  %87 = load i64, i64* %RBP
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 1
  store i64 %89, i64* %PC
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %91 = load i64, i64* %90, align 8, !tbaa !2424
  %92 = add i64 %91, -8
  %93 = inttoptr i64 %92 to i64*
  store i64 %87, i64* %93
  store i64 %92, i64* %90, align 8, !tbaa !2424
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 7
  store i64 %95, i64* %PC
  store i64 add (i64 ptrtoint (%seg_600e10__init_array_type* @seg_600e10__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2424
  %96 = load i64, i64* %RBX
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 1
  store i64 %98, i64* %PC
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %100 = load i64, i64* %99, align 8, !tbaa !2424
  %101 = add i64 %100, -8
  %102 = inttoptr i64 %101 to i64*
  store i64 %96, i64* %102
  store i64 %101, i64* %99, align 8, !tbaa !2424
  %103 = load i64, i64* %RSI
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC
  store i64 %103, i64* %R14, align 8, !tbaa !2424
  %106 = load i64, i64* %RDX
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 3
  store i64 %108, i64* %PC
  store i64 %106, i64* %R13, align 8, !tbaa !2424
  %109 = load i64, i64* %RBP
  %110 = load i64, i64* %R12
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC
  %113 = sub i64 %109, %110
  store i64 %113, i64* %RBP, align 8, !tbaa !2424
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
  store i8 %122, i8* %123, align 1, !tbaa !2442
  %124 = xor i64 %110, %109
  %125 = xor i64 %124, %113
  %126 = lshr i64 %125, 4
  %127 = trunc i64 %126 to i8
  %128 = and i8 %127, 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %128, i8* %129, align 1, !tbaa !2443
  %130 = icmp eq i64 %113, 0
  %131 = zext i1 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %131, i8* %132, align 1, !tbaa !2444
  %133 = lshr i64 %113, 63
  %134 = trunc i64 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %134, i8* %135, align 1, !tbaa !2445
  %136 = lshr i64 %109, 63
  %137 = lshr i64 %110, 63
  %138 = xor i64 %137, %136
  %139 = xor i64 %133, %136
  %140 = add nuw nsw i64 %139, %138
  %141 = icmp eq i64 %140, 2
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %142, i8* %143, align 1, !tbaa !2446
  %144 = load i64, i64* %RSP
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 4
  store i64 %146, i64* %PC
  %147 = sub i64 %144, 8
  store i64 %147, i64* %RSP, align 8, !tbaa !2424
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
  store i8 %156, i8* %157, align 1, !tbaa !2442
  %158 = xor i64 8, %144
  %159 = xor i64 %158, %147
  %160 = lshr i64 %159, 4
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %162, i8* %163, align 1, !tbaa !2443
  %164 = icmp eq i64 %147, 0
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %165, i8* %166, align 1, !tbaa !2444
  %167 = lshr i64 %147, 63
  %168 = trunc i64 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %168, i8* %169, align 1, !tbaa !2445
  %170 = lshr i64 %144, 63
  %171 = xor i64 %167, %170
  %172 = add nuw nsw i64 %171, %170
  %173 = icmp eq i64 %172, 2
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %174, i8* %175, align 1, !tbaa !2446
  %176 = load i64, i64* %RBP
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC
  %179 = ashr i64 %176, 2
  %180 = trunc i64 %179 to i8
  %181 = and i8 %180, 1
  %182 = ashr i64 %179, 1
  store i64 %182, i64* %RBP, align 8, !tbaa !2424
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %181, i8* %183, align 1, !tbaa !2447
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %185 = trunc i64 %182 to i32
  %186 = and i32 %185, 255
  %187 = call i32 @llvm.ctpop.i32(i32 %186) #16
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %184, align 1, !tbaa !2447
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %191, align 1, !tbaa !2447
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %193 = icmp eq i64 %182, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %192, align 1, !tbaa !2447
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %196 = lshr i64 %182, 63
  %197 = trunc i64 %196 to i8
  store i8 %197, i8* %195, align 1, !tbaa !2447
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %198, align 1, !tbaa !2447
  %199 = load i64, i64* %PC
  %200 = sub i64 %199, 1156
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 5
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 5
  store i64 %204, i64* %PC
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %206 = load i64, i64* %205, align 8, !tbaa !2424
  %207 = add i64 %206, -8
  %208 = inttoptr i64 %207 to i64*
  store i64 %202, i64* %208
  store i64 %207, i64* %205, align 8, !tbaa !2424
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %200, i64* %209, align 8, !tbaa !2424
  %210 = load i64, i64* %PC
  %211 = call %struct.Memory* @sub_400418__init_proc(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  store i8 %223, i8* %224, align 1, !tbaa !2442
  %225 = icmp eq i64 %216, 0
  %226 = zext i1 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %226, i8* %227, align 1, !tbaa !2444
  %228 = lshr i64 %216, 63
  %229 = trunc i64 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %229, i8* %230, align 1, !tbaa !2445
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %231, align 1, !tbaa !2446
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %232, align 1, !tbaa !2443
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 34
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 2
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 2
  store i64 %238, i64* %PC
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %240 = load i8, i8* %239, align 1, !tbaa !2444
  store i8 %240, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %242 = icmp ne i8 %240, 0
  %243 = select i1 %242, i64 %234, i64 %236
  store i64 %243, i64* %241, align 8, !tbaa !2424
  %244 = load i8, i8* %BRANCH_TAKEN
  %245 = icmp eq i8 %244, 1
  br i1 %245, label %block_4008c6, label %block_4008a6

block_4008c6:                                     ; preds = %block_4008b0, %block_400870
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_400870 ], [ %387, %block_4008b0 ]
  %246 = load i64, i64* %RSP
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 4
  store i64 %248, i64* %PC
  %249 = add i64 8, %246
  store i64 %249, i64* %RSP, align 8, !tbaa !2424
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
  store i8 %260, i8* %261, align 1, !tbaa !2442
  %262 = xor i64 8, %246
  %263 = xor i64 %262, %249
  %264 = lshr i64 %263, 4
  %265 = trunc i64 %264 to i8
  %266 = and i8 %265, 1
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %266, i8* %267, align 1, !tbaa !2443
  %268 = icmp eq i64 %249, 0
  %269 = zext i1 %268 to i8
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %269, i8* %270, align 1, !tbaa !2444
  %271 = lshr i64 %249, 63
  %272 = trunc i64 %271 to i8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %272, i8* %273, align 1, !tbaa !2445
  %274 = lshr i64 %246, 63
  %275 = xor i64 %271, %274
  %276 = add nuw nsw i64 %275, %271
  %277 = icmp eq i64 %276, 2
  %278 = zext i1 %277 to i8
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %278, i8* %279, align 1, !tbaa !2446
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 1
  store i64 %281, i64* %PC
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %283 = load i64, i64* %282, align 8, !tbaa !2424
  %284 = add i64 %283, 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285
  store i64 %286, i64* %RBX, align 8, !tbaa !2424
  store i64 %284, i64* %282, align 8, !tbaa !2424
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 1
  store i64 %288, i64* %PC
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %290 = load i64, i64* %289, align 8, !tbaa !2424
  %291 = add i64 %290, 8
  %292 = inttoptr i64 %290 to i64*
  %293 = load i64, i64* %292
  store i64 %293, i64* %RBP, align 8, !tbaa !2424
  store i64 %291, i64* %289, align 8, !tbaa !2424
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 2
  store i64 %295, i64* %PC
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %297 = load i64, i64* %296, align 8, !tbaa !2424
  %298 = add i64 %297, 8
  %299 = inttoptr i64 %297 to i64*
  %300 = load i64, i64* %299
  store i64 %300, i64* %R12, align 8, !tbaa !2424
  store i64 %298, i64* %296, align 8, !tbaa !2424
  %301 = load i64, i64* %PC
  %302 = add i64 %301, 2
  store i64 %302, i64* %PC
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %304 = load i64, i64* %303, align 8, !tbaa !2424
  %305 = add i64 %304, 8
  %306 = inttoptr i64 %304 to i64*
  %307 = load i64, i64* %306
  store i64 %307, i64* %R13, align 8, !tbaa !2424
  store i64 %305, i64* %303, align 8, !tbaa !2424
  %308 = load i64, i64* %PC
  %309 = add i64 %308, 2
  store i64 %309, i64* %PC
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %311 = load i64, i64* %310, align 8, !tbaa !2424
  %312 = add i64 %311, 8
  %313 = inttoptr i64 %311 to i64*
  %314 = load i64, i64* %313
  store i64 %314, i64* %R14, align 8, !tbaa !2424
  store i64 %312, i64* %310, align 8, !tbaa !2424
  %315 = load i64, i64* %PC
  %316 = add i64 %315, 2
  store i64 %316, i64* %PC
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %318 = load i64, i64* %317, align 8, !tbaa !2424
  %319 = add i64 %318, 8
  %320 = inttoptr i64 %318 to i64*
  %321 = load i64, i64* %320
  store i64 %321, i64* %R15, align 8, !tbaa !2424
  store i64 %319, i64* %317, align 8, !tbaa !2424
  %322 = load i64, i64* %PC
  %323 = add i64 %322, 1
  store i64 %323, i64* %PC
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %326 = load i64, i64* %325, align 8, !tbaa !2424
  %327 = inttoptr i64 %326 to i64*
  %328 = load i64, i64* %327
  store i64 %328, i64* %324, align 8, !tbaa !2424
  %329 = add i64 %326, 8
  store i64 %329, i64* %325, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_4008a6:                                     ; preds = %block_400870
  %330 = load i64, i64* %RBX
  %331 = load i32, i32* %EBX
  %332 = zext i32 %331 to i64
  %333 = load i64, i64* %PC
  %334 = add i64 %333, 2
  store i64 %334, i64* %PC
  %335 = xor i64 %332, %330
  %336 = trunc i64 %335 to i32
  %337 = and i64 %335, 4294967295
  store i64 %337, i64* %RBX, align 8, !tbaa !2424
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %338, align 1, !tbaa !2428
  %339 = and i32 %336, 255
  %340 = call i32 @llvm.ctpop.i32(i32 %339) #16
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = xor i8 %342, 1
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %343, i8* %344, align 1, !tbaa !2442
  %345 = icmp eq i32 %336, 0
  %346 = zext i1 %345 to i8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %346, i8* %347, align 1, !tbaa !2444
  %348 = lshr i32 %336, 31
  %349 = trunc i32 %348 to i8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %349, i8* %350, align 1, !tbaa !2445
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %351, align 1, !tbaa !2446
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %352, align 1, !tbaa !2443
  %353 = load i64, i64* %RAX
  %354 = load i64, i64* %RAX
  %355 = add i64 %354, %353
  %356 = load i32, i32* %EAX
  %357 = zext i32 %356 to i64
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 8
  store i64 %359, i64* %PC
  br label %block_4008b0

block_4008b0:                                     ; preds = %block_4008b0, %block_4008a6
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_4008a6 ], [ %387, %block_4008b0 ]
  %360 = load i64, i64* %R13
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 3
  store i64 %362, i64* %PC
  store i64 %360, i64* %RDX, align 8, !tbaa !2424
  %363 = load i64, i64* %R14
  %364 = load i64, i64* %PC
  %365 = add i64 %364, 3
  store i64 %365, i64* %PC
  store i64 %363, i64* %RSI, align 8, !tbaa !2424
  %366 = load i32, i32* %R15D
  %367 = zext i32 %366 to i64
  %368 = load i64, i64* %PC
  %369 = add i64 %368, 3
  store i64 %369, i64* %PC
  %370 = and i64 %367, 4294967295
  store i64 %370, i64* %RDI, align 8, !tbaa !2424
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
  %380 = load i64, i64* %379, align 8, !tbaa !2424
  %381 = add i64 %380, -8
  %382 = inttoptr i64 %381 to i64*
  store i64 %376, i64* %382
  store i64 %381, i64* %379, align 8, !tbaa !2424
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %384 = inttoptr i64 %374 to i64*
  %385 = load i64, i64* %384
  store i64 %385, i64* %383, align 8, !tbaa !2424
  %386 = load i64, i64* %PC
  %387 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %386, %struct.Memory* %MEMORY.1)
  %388 = load i64, i64* %RBX
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 4
  store i64 %390, i64* %PC
  %391 = add i64 1, %388
  store i64 %391, i64* %RBX, align 8, !tbaa !2424
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
  store i8 %402, i8* %403, align 1, !tbaa !2442
  %404 = xor i64 1, %388
  %405 = xor i64 %404, %391
  %406 = lshr i64 %405, 4
  %407 = trunc i64 %406 to i8
  %408 = and i8 %407, 1
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %408, i8* %409, align 1, !tbaa !2443
  %410 = icmp eq i64 %391, 0
  %411 = zext i1 %410 to i8
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %411, i8* %412, align 1, !tbaa !2444
  %413 = lshr i64 %391, 63
  %414 = trunc i64 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %414, i8* %415, align 1, !tbaa !2445
  %416 = lshr i64 %388, 63
  %417 = xor i64 %413, %416
  %418 = add nuw nsw i64 %417, %413
  %419 = icmp eq i64 %418, 2
  %420 = zext i1 %419 to i8
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %420, i8* %421, align 1, !tbaa !2446
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
  store i8 %435, i8* %436, align 1, !tbaa !2442
  %437 = xor i64 %423, %422
  %438 = xor i64 %437, %426
  %439 = lshr i64 %438, 4
  %440 = trunc i64 %439 to i8
  %441 = and i8 %440, 1
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %441, i8* %442, align 1, !tbaa !2443
  %443 = icmp eq i64 %426, 0
  %444 = zext i1 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %444, i8* %445, align 1, !tbaa !2444
  %446 = lshr i64 %426, 63
  %447 = trunc i64 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %447, i8* %448, align 1, !tbaa !2445
  %449 = lshr i64 %422, 63
  %450 = lshr i64 %423, 63
  %451 = xor i64 %450, %449
  %452 = xor i64 %446, %449
  %453 = add nuw nsw i64 %452, %451
  %454 = icmp eq i64 %453, 2
  %455 = zext i1 %454 to i8
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %455, i8* %456, align 1, !tbaa !2446
  %457 = load i64, i64* %PC
  %458 = sub i64 %457, 20
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 2
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 2
  store i64 %462, i64* %PC
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %464 = load i8, i8* %463, align 1, !tbaa !2444
  %465 = icmp eq i8 %464, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %468 = select i1 %465, i64 %458, i64 %460
  store i64 %468, i64* %467, align 8, !tbaa !2424
  %469 = load i8, i8* %BRANCH_TAKEN
  %470 = icmp eq i8 %469, 1
  br i1 %470, label %block_4008b0, label %block_4008c6
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006d0(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  br label %block_4006d0

block_4007bf:                                     ; preds = %block_400799
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
  store i8 %52, i8* %53, align 1, !tbaa !2442
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %54, align 1, !tbaa !2443
  %55 = icmp eq i32 %46, 0
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %56, i8* %57, align 1, !tbaa !2444
  %58 = lshr i32 %46, 31
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %59, i8* %60, align 1, !tbaa !2445
  %61 = lshr i32 %46, 31
  %62 = xor i32 %58, %61
  %63 = add nuw nsw i32 %62, %61
  %64 = icmp eq i32 %63, 2
  %65 = zext i1 %64 to i8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %65, i8* %66, align 1, !tbaa !2446
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 16
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 6
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 6
  store i64 %72, i64* %PC
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %74 = load i8, i8* %73, align 1, !tbaa !2444
  %75 = icmp ne i8 %74, 0
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %77 = load i8, i8* %76, align 1, !tbaa !2445
  %78 = icmp ne i8 %77, 0
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %80 = load i8, i8* %79, align 1, !tbaa !2446
  %81 = icmp ne i8 %80, 0
  %82 = xor i1 %78, %81
  %83 = or i1 %75, %82
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %86 = select i1 %83, i64 %68, i64 %70
  store i64 %86, i64* %85, align 8, !tbaa !2424
  %87 = load i8, i8* %BRANCH_TAKEN
  %88 = icmp eq i8 %87, 1
  br i1 %88, label %block_4007d3, label %block_4007c9

block_400698:                                     ; preds = %block_40066e
  %89 = load i64, i64* %RBP
  %90 = sub i64 %89, 80
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 4
  store i64 %92, i64* %PC
  %93 = inttoptr i64 %90 to i64*
  %94 = load i64, i64* %93
  store i64 %94, i64* %RAX, align 8, !tbaa !2424
  %95 = load i64, i64* %RAX
  %96 = mul i64 %95, 8
  %97 = add i64 %96, add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 8)
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 8
  store i64 %99, i64* %PC
  %100 = inttoptr i64 %97 to i64*
  %101 = load i64, i64* %100
  store i64 %101, i64* %RCX, align 8, !tbaa !2424
  %102 = load i64, i64* %RCX
  %103 = load i64, i64* %PC
  %104 = add i64 %103, 2
  store i64 %104, i64* %PC
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %102, i64* %105, align 8, !tbaa !2424
  %106 = load i64, i64* %PC
  switch i64 %106, label %1437 [
    i64 4196034, label %block_4006c2
    i64 4196048, label %block_4006d0
    i64 4196020, label %block_4006b4
    i64 4196062, label %block_4006de
    i64 4196006, label %block_4006a6
  ]

block_400817:                                     ; preds = %block_4007eb, %block_4007df
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_4007df ], [ %MEMORY.2, %block_4007eb ]
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 10
  store i64 %108, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %109 = load i64, i64* %RBP
  %110 = sub i64 %109, 24
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC
  %113 = inttoptr i64 %110 to i32*
  %114 = load i32, i32* %113
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %RCX, align 8, !tbaa !2424
  %116 = load i64, i64* %RCX
  %117 = load i64, i64* %PC
  %118 = add i64 %117, 4
  store i64 %118, i64* %PC
  %119 = sext i64 %116 to i128
  %120 = and i128 %119, -18446744073709551616
  %121 = zext i64 %116 to i128
  %122 = or i128 %120, %121
  %123 = mul nsw i128 11, %122
  %124 = trunc i128 %123 to i64
  store i64 %124, i64* %RCX, align 8, !tbaa !2424
  %125 = sext i64 %124 to i128
  %126 = icmp ne i128 %125, %123
  %127 = zext i1 %126 to i8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %127, i8* %128, align 1, !tbaa !2428
  %129 = trunc i128 %123 to i32
  %130 = and i32 %129, 255
  %131 = call i32 @llvm.ctpop.i32(i32 %130) #16
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %134, i8* %135, align 1, !tbaa !2442
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %136, align 1, !tbaa !2443
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %137, align 1, !tbaa !2444
  %138 = lshr i64 %124, 63
  %139 = trunc i64 %138 to i8
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %139, i8* %140, align 1, !tbaa !2445
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %127, i8* %141, align 1, !tbaa !2446
  %142 = load i64, i64* %RAX
  %143 = load i64, i64* %RCX
  %144 = load i64, i64* %PC
  %145 = add i64 %144, 3
  store i64 %145, i64* %PC
  %146 = add i64 %143, %142
  store i64 %146, i64* %RAX, align 8, !tbaa !2424
  %147 = icmp ult i64 %146, %142
  %148 = icmp ult i64 %146, %143
  %149 = or i1 %147, %148
  %150 = zext i1 %149 to i8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %150, i8* %151, align 1, !tbaa !2428
  %152 = trunc i64 %146 to i32
  %153 = and i32 %152, 255
  %154 = call i32 @llvm.ctpop.i32(i32 %153) #16
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %157, i8* %158, align 1, !tbaa !2442
  %159 = xor i64 %143, %142
  %160 = xor i64 %159, %146
  %161 = lshr i64 %160, 4
  %162 = trunc i64 %161 to i8
  %163 = and i8 %162, 1
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %163, i8* %164, align 1, !tbaa !2443
  %165 = icmp eq i64 %146, 0
  %166 = zext i1 %165 to i8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %166, i8* %167, align 1, !tbaa !2444
  %168 = lshr i64 %146, 63
  %169 = trunc i64 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %169, i8* %170, align 1, !tbaa !2445
  %171 = lshr i64 %142, 63
  %172 = lshr i64 %143, 63
  %173 = xor i64 %168, %171
  %174 = xor i64 %168, %172
  %175 = add nuw nsw i64 %173, %174
  %176 = icmp eq i64 %175, 2
  %177 = zext i1 %176 to i8
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %177, i8* %178, align 1, !tbaa !2446
  %179 = load i64, i64* %RBP
  %180 = sub i64 %179, 20
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 4
  store i64 %182, i64* %PC
  %183 = inttoptr i64 %180 to i32*
  %184 = load i32, i32* %183
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %RCX, align 8, !tbaa !2424
  %186 = load i64, i64* %RAX
  %187 = load i64, i64* %RCX
  %188 = add i64 %187, %186
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 4
  store i64 %190, i64* %PC
  %191 = inttoptr i64 %188 to i8*
  store i8 88, i8* %191
  %192 = load i64, i64* %PC
  %193 = sub i64 %192, 740
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 5
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 5
  store i64 %197, i64* %PC
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %199 = load i64, i64* %198, align 8, !tbaa !2424
  %200 = add i64 %199, -8
  %201 = inttoptr i64 %200 to i64*
  store i64 %195, i64* %201
  store i64 %200, i64* %198, align 8, !tbaa !2424
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %193, i64* %202, align 8, !tbaa !2424
  %203 = load i64, i64* %PC
  %204 = call %struct.Memory* @sub_400550_draw(%struct.State* %0, i64 %203, %struct.Memory* %MEMORY.0)
  %205 = load i64, i64* %RBP
  %206 = sub i64 %205, 36
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC
  %209 = inttoptr i64 %206 to i32*
  %210 = load i32, i32* %209
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RDX, align 8, !tbaa !2424
  %212 = load i64, i64* %RDX
  %213 = load i64, i64* %PC
  %214 = add i64 %213, 3
  store i64 %214, i64* %PC
  %215 = trunc i64 %212 to i32
  %216 = add i32 1, %215
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RDX, align 8, !tbaa !2424
  %218 = icmp ult i32 %216, %215
  %219 = icmp ult i32 %216, 1
  %220 = or i1 %218, %219
  %221 = zext i1 %220 to i8
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %221, i8* %222, align 1, !tbaa !2428
  %223 = and i32 %216, 255
  %224 = call i32 @llvm.ctpop.i32(i32 %223) #16
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %227, i8* %228, align 1, !tbaa !2442
  %229 = xor i64 1, %212
  %230 = trunc i64 %229 to i32
  %231 = xor i32 %230, %216
  %232 = lshr i32 %231, 4
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %234, i8* %235, align 1, !tbaa !2443
  %236 = icmp eq i32 %216, 0
  %237 = zext i1 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %237, i8* %238, align 1, !tbaa !2444
  %239 = lshr i32 %216, 31
  %240 = trunc i32 %239 to i8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %240, i8* %241, align 1, !tbaa !2445
  %242 = lshr i32 %215, 31
  %243 = xor i32 %239, %242
  %244 = add nuw nsw i32 %243, %239
  %245 = icmp eq i32 %244, 2
  %246 = zext i1 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %246, i8* %247, align 1, !tbaa !2446
  %248 = load i64, i64* %RBP
  %249 = sub i64 %248, 36
  %250 = load i32, i32* %EDX
  %251 = zext i32 %250 to i64
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 3
  store i64 %253, i64* %PC
  %254 = inttoptr i64 %249 to i32*
  store i32 %250, i32* %254
  %255 = load i64, i64* %PC
  %256 = sub i64 %255, 478
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 5
  store i64 %258, i64* %PC
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %256, i64* %259, align 8, !tbaa !2424
  %260 = load i64, i64* %RBP
  %261 = sub i64 %260, 36
  %262 = load i64, i64* %PC
  %263 = add i64 %262, 4
  store i64 %263, i64* %PC
  %264 = inttoptr i64 %261 to i32*
  %265 = load i32, i32* %264
  %266 = sub i32 %265, 28
  %267 = icmp ult i32 %265, 28
  %268 = zext i1 %267 to i8
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %268, i8* %269, align 1, !tbaa !2428
  %270 = and i32 %266, 255
  %271 = call i32 @llvm.ctpop.i32(i32 %270) #16
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  %274 = xor i8 %273, 1
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %274, i8* %275, align 1, !tbaa !2442
  %276 = xor i32 %265, 28
  %277 = xor i32 %276, %266
  %278 = lshr i32 %277, 4
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %280, i8* %281, align 1, !tbaa !2443
  %282 = icmp eq i32 %266, 0
  %283 = zext i1 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %283, i8* %284, align 1, !tbaa !2444
  %285 = lshr i32 %266, 31
  %286 = trunc i32 %285 to i8
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %286, i8* %287, align 1, !tbaa !2445
  %288 = lshr i32 %265, 31
  %289 = xor i32 %285, %288
  %290 = add nuw nsw i32 %289, %288
  %291 = icmp eq i32 %290, 2
  %292 = zext i1 %291 to i8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %292, i8* %293, align 1, !tbaa !2446
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 479
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 6
  %298 = load i64, i64* %PC
  %299 = add i64 %298, 6
  store i64 %299, i64* %PC
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %301 = load i8, i8* %300, align 1, !tbaa !2445
  %302 = icmp ne i8 %301, 0
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %304 = load i8, i8* %303, align 1, !tbaa !2446
  %305 = icmp ne i8 %304, 0
  %306 = xor i1 %302, %305
  %307 = xor i1 %306, true
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %310 = select i1 %306, i64 %297, i64 %295
  store i64 %310, i64* %309, align 8, !tbaa !2424
  %311 = load i8, i8* %BRANCH_TAKEN
  %312 = icmp eq i8 %311, 1
  br i1 %312, label %block_400847, label %block_40066e

block_400736:                                     ; preds = %block_400710
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2424
  %313 = load i64, i64* %PC
  %314 = add i64 %313, 2
  store i64 %314, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %315 = load i64, i64* %PC
  %316 = sub i64 %315, 770
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 5
  %319 = load i64, i64* %PC
  %320 = add i64 %319, 5
  store i64 %320, i64* %PC
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %322 = load i64, i64* %321, align 8, !tbaa !2424
  %323 = add i64 %322, -8
  %324 = inttoptr i64 %323 to i64*
  store i64 %318, i64* %324
  store i64 %323, i64* %321, align 8, !tbaa !2424
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %316, i64* %325, align 8, !tbaa !2424
  %326 = load i64, i64* %PC
  %327 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %326, %struct.Memory* %MEMORY.3)
  %328 = load i64, i64* %PC
  %329 = add i64 %328, 10
  store i64 %329, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2424
  %330 = load i64, i64* %RBP
  %331 = sub i64 %330, 64
  %332 = load i64, i64* %PC
  %333 = add i64 %332, 4
  store i64 %333, i64* %PC
  store i64 %331, i64* %RSI, align 8, !tbaa !2424
  %334 = load i64, i64* %RBP
  %335 = sub i64 %334, 96
  %336 = load i32, i32* %EAX
  %337 = zext i32 %336 to i64
  %338 = load i64, i64* %PC
  %339 = add i64 %338, 3
  store i64 %339, i64* %PC
  %340 = inttoptr i64 %335 to i32*
  store i32 %336, i32* %340
  %341 = load i64, i64* %PC
  %342 = add i64 %341, 2
  store i64 %342, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %343 = load i64, i64* %PC
  %344 = sub i64 %343, 794
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 5
  %347 = load i64, i64* %PC
  %348 = add i64 %347, 5
  store i64 %348, i64* %PC
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %350 = load i64, i64* %349, align 8, !tbaa !2424
  %351 = add i64 %350, -8
  %352 = inttoptr i64 %351 to i64*
  store i64 %346, i64* %352
  store i64 %351, i64* %349, align 8, !tbaa !2424
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %344, i64* %353, align 8, !tbaa !2424
  %354 = load i64, i64* %PC
  %355 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %354, %struct.Memory* %327)
  %356 = load i64, i64* %RDI
  %357 = load i32, i32* %EDI
  %358 = zext i32 %357 to i64
  %359 = load i64, i64* %PC
  %360 = add i64 %359, 2
  store i64 %360, i64* %PC
  %361 = xor i64 %358, %356
  %362 = trunc i64 %361 to i32
  %363 = and i64 %361, 4294967295
  store i64 %363, i64* %RDI, align 8, !tbaa !2424
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %364, align 1, !tbaa !2428
  %365 = and i32 %362, 255
  %366 = call i32 @llvm.ctpop.i32(i32 %365) #16
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %369, i8* %370, align 1, !tbaa !2442
  %371 = icmp eq i32 %362, 0
  %372 = zext i1 %371 to i8
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %372, i8* %373, align 1, !tbaa !2444
  %374 = lshr i32 %362, 31
  %375 = trunc i32 %374 to i8
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %375, i8* %376, align 1, !tbaa !2445
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %377, align 1, !tbaa !2446
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %378, align 1, !tbaa !2443
  %379 = load i64, i64* %RBP
  %380 = sub i64 %379, 100
  %381 = load i32, i32* %EAX
  %382 = zext i32 %381 to i64
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 3
  store i64 %384, i64* %PC
  %385 = inttoptr i64 %380 to i32*
  store i32 %381, i32* %385
  %386 = load i64, i64* %PC
  %387 = sub i64 %386, 772
  %388 = load i64, i64* %PC
  %389 = add i64 %388, 5
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 5
  store i64 %391, i64* %PC
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %393 = load i64, i64* %392, align 8, !tbaa !2424
  %394 = add i64 %393, -8
  %395 = inttoptr i64 %394 to i64*
  store i64 %389, i64* %395
  store i64 %394, i64* %392, align 8, !tbaa !2424
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %387, i64* %396, align 8, !tbaa !2424
  %397 = load i64, i64* %PC
  %398 = call %struct.Memory* @ext_6010c8_exit(%struct.State* %0, i64 %397, %struct.Memory* %355)
  %399 = load i64, i64* %PC
  %400 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %399, %struct.Memory* %398)
  ret %struct.Memory* %400

block_4007d3:                                     ; preds = %block_40078f, %block_4007c9, %block_400799, %block_4007bf
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.3, %block_40078f ], [ %MEMORY.3, %block_400799 ], [ %MEMORY.3, %block_4007bf ], [ %MEMORY.3, %block_4007c9 ]
  %401 = load i64, i64* %RBP
  %402 = sub i64 %401, 28
  %403 = load i64, i64* %PC
  %404 = add i64 %403, 3
  store i64 %404, i64* %PC
  %405 = inttoptr i64 %402 to i32*
  %406 = load i32, i32* %405
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RAX, align 8, !tbaa !2424
  %408 = load i64, i64* %RBP
  %409 = sub i64 %408, 20
  %410 = load i32, i32* %EAX
  %411 = zext i32 %410 to i64
  %412 = load i64, i64* %PC
  %413 = add i64 %412, 3
  store i64 %413, i64* %PC
  %414 = inttoptr i64 %409 to i32*
  store i32 %410, i32* %414
  %415 = load i64, i64* %RBP
  %416 = sub i64 %415, 32
  %417 = load i64, i64* %PC
  %418 = add i64 %417, 3
  store i64 %418, i64* %PC
  %419 = inttoptr i64 %416 to i32*
  %420 = load i32, i32* %419
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %RAX, align 8, !tbaa !2424
  %422 = load i64, i64* %RBP
  %423 = sub i64 %422, 24
  %424 = load i32, i32* %EAX
  %425 = zext i32 %424 to i64
  %426 = load i64, i64* %PC
  %427 = add i64 %426, 3
  store i64 %427, i64* %PC
  %428 = inttoptr i64 %423 to i32*
  store i32 %424, i32* %428
  br label %block_4007df

block_4007df:                                     ; preds = %block_4007c9, %block_400769, %block_4007d3
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.3, %block_400769 ], [ %MEMORY.1, %block_4007d3 ], [ %MEMORY.3, %block_4007c9 ]
  %429 = load i64, i64* %RBP
  %430 = sub i64 %429, 28
  %431 = load i64, i64* %PC
  %432 = add i64 %431, 3
  store i64 %432, i64* %PC
  %433 = inttoptr i64 %430 to i32*
  %434 = load i32, i32* %433
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RAX, align 8, !tbaa !2424
  %436 = load i32, i32* %EAX
  %437 = zext i32 %436 to i64
  %438 = load i64, i64* %RBP
  %439 = sub i64 %438, 20
  %440 = load i64, i64* %PC
  %441 = add i64 %440, 3
  store i64 %441, i64* %PC
  %442 = inttoptr i64 %439 to i32*
  %443 = load i32, i32* %442
  %444 = sub i32 %436, %443
  %445 = icmp ult i32 %436, %443
  %446 = zext i1 %445 to i8
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %446, i8* %447, align 1, !tbaa !2428
  %448 = and i32 %444, 255
  %449 = call i32 @llvm.ctpop.i32(i32 %448) #16
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = xor i8 %451, 1
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %452, i8* %453, align 1, !tbaa !2442
  %454 = xor i32 %443, %436
  %455 = xor i32 %454, %444
  %456 = lshr i32 %455, 4
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %458, i8* %459, align 1, !tbaa !2443
  %460 = icmp eq i32 %444, 0
  %461 = zext i1 %460 to i8
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %461, i8* %462, align 1, !tbaa !2444
  %463 = lshr i32 %444, 31
  %464 = trunc i32 %463 to i8
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %464, i8* %465, align 1, !tbaa !2445
  %466 = lshr i32 %436, 31
  %467 = lshr i32 %443, 31
  %468 = xor i32 %467, %466
  %469 = xor i32 %463, %466
  %470 = add nuw nsw i32 %469, %468
  %471 = icmp eq i32 %470, 2
  %472 = zext i1 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %472, i8* %473, align 1, !tbaa !2446
  %474 = load i64, i64* %PC
  %475 = add i64 %474, 50
  %476 = load i64, i64* %PC
  %477 = add i64 %476, 6
  %478 = load i64, i64* %PC
  %479 = add i64 %478, 6
  store i64 %479, i64* %PC
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %481 = load i8, i8* %480, align 1, !tbaa !2444
  %482 = icmp eq i8 %481, 0
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %485 = select i1 %482, i64 %475, i64 %477
  store i64 %485, i64* %484, align 8, !tbaa !2424
  %486 = load i8, i8* %BRANCH_TAKEN
  %487 = icmp eq i8 %486, 1
  br i1 %487, label %block_400817, label %block_4007eb

block_4006b4:                                     ; preds = %block_400698
  %488 = load i64, i64* %RBP
  %489 = sub i64 %488, 24
  %490 = load i64, i64* %PC
  %491 = add i64 %490, 3
  store i64 %491, i64* %PC
  %492 = inttoptr i64 %489 to i32*
  %493 = load i32, i32* %492
  %494 = zext i32 %493 to i64
  store i64 %494, i64* %RAX, align 8, !tbaa !2424
  %495 = load i64, i64* %RAX
  %496 = load i64, i64* %PC
  %497 = add i64 %496, 3
  store i64 %497, i64* %PC
  %498 = trunc i64 %495 to i32
  %499 = add i32 1, %498
  %500 = zext i32 %499 to i64
  store i64 %500, i64* %RAX, align 8, !tbaa !2424
  %501 = icmp ult i32 %499, %498
  %502 = icmp ult i32 %499, 1
  %503 = or i1 %501, %502
  %504 = zext i1 %503 to i8
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %504, i8* %505, align 1, !tbaa !2428
  %506 = and i32 %499, 255
  %507 = call i32 @llvm.ctpop.i32(i32 %506) #16
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  %510 = xor i8 %509, 1
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %510, i8* %511, align 1, !tbaa !2442
  %512 = xor i64 1, %495
  %513 = trunc i64 %512 to i32
  %514 = xor i32 %513, %499
  %515 = lshr i32 %514, 4
  %516 = trunc i32 %515 to i8
  %517 = and i8 %516, 1
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %517, i8* %518, align 1, !tbaa !2443
  %519 = icmp eq i32 %499, 0
  %520 = zext i1 %519 to i8
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %520, i8* %521, align 1, !tbaa !2444
  %522 = lshr i32 %499, 31
  %523 = trunc i32 %522 to i8
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %523, i8* %524, align 1, !tbaa !2445
  %525 = lshr i32 %498, 31
  %526 = xor i32 %522, %525
  %527 = add nuw nsw i32 %526, %522
  %528 = icmp eq i32 %527, 2
  %529 = zext i1 %528 to i8
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %529, i8* %530, align 1, !tbaa !2446
  %531 = load i64, i64* %RBP
  %532 = sub i64 %531, 24
  %533 = load i32, i32* %EAX
  %534 = zext i32 %533 to i64
  %535 = load i64, i64* %PC
  %536 = add i64 %535, 3
  store i64 %536, i64* %PC
  %537 = inttoptr i64 %532 to i32*
  store i32 %533, i32* %537
  %538 = load i64, i64* %PC
  %539 = add i64 %538, 83
  %540 = load i64, i64* %PC
  %541 = add i64 %540, 5
  store i64 %541, i64* %PC
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %539, i64* %542, align 8, !tbaa !2424
  br label %block_400710

block_400710:                                     ; preds = %block_4006d0, %block_4006b4
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.5, %block_4006d0 ], [ %204, %block_4006b4 ]
  %543 = load i64, i64* %PC
  %544 = add i64 %543, 10
  store i64 %544, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %545 = load i64, i64* %RBP
  %546 = sub i64 %545, 24
  %547 = load i64, i64* %PC
  %548 = add i64 %547, 4
  store i64 %548, i64* %PC
  %549 = inttoptr i64 %546 to i32*
  %550 = load i32, i32* %549
  %551 = sext i32 %550 to i64
  store i64 %551, i64* %RCX, align 8, !tbaa !2424
  %552 = load i64, i64* %RCX
  %553 = load i64, i64* %PC
  %554 = add i64 %553, 4
  store i64 %554, i64* %PC
  %555 = sext i64 %552 to i128
  %556 = and i128 %555, -18446744073709551616
  %557 = zext i64 %552 to i128
  %558 = or i128 %556, %557
  %559 = mul nsw i128 11, %558
  %560 = trunc i128 %559 to i64
  store i64 %560, i64* %RCX, align 8, !tbaa !2424
  %561 = sext i64 %560 to i128
  %562 = icmp ne i128 %561, %559
  %563 = zext i1 %562 to i8
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %563, i8* %564, align 1, !tbaa !2428
  %565 = trunc i128 %559 to i32
  %566 = and i32 %565, 255
  %567 = call i32 @llvm.ctpop.i32(i32 %566) #16
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  %570 = xor i8 %569, 1
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %570, i8* %571, align 1, !tbaa !2442
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %572, align 1, !tbaa !2443
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %573, align 1, !tbaa !2444
  %574 = lshr i64 %560, 63
  %575 = trunc i64 %574 to i8
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %575, i8* %576, align 1, !tbaa !2445
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %563, i8* %577, align 1, !tbaa !2446
  %578 = load i64, i64* %RAX
  %579 = load i64, i64* %RCX
  %580 = load i64, i64* %PC
  %581 = add i64 %580, 3
  store i64 %581, i64* %PC
  %582 = add i64 %579, %578
  store i64 %582, i64* %RAX, align 8, !tbaa !2424
  %583 = icmp ult i64 %582, %578
  %584 = icmp ult i64 %582, %579
  %585 = or i1 %583, %584
  %586 = zext i1 %585 to i8
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %586, i8* %587, align 1, !tbaa !2428
  %588 = trunc i64 %582 to i32
  %589 = and i32 %588, 255
  %590 = call i32 @llvm.ctpop.i32(i32 %589) #16
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  %593 = xor i8 %592, 1
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %593, i8* %594, align 1, !tbaa !2442
  %595 = xor i64 %579, %578
  %596 = xor i64 %595, %582
  %597 = lshr i64 %596, 4
  %598 = trunc i64 %597 to i8
  %599 = and i8 %598, 1
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %599, i8* %600, align 1, !tbaa !2443
  %601 = icmp eq i64 %582, 0
  %602 = zext i1 %601 to i8
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %602, i8* %603, align 1, !tbaa !2444
  %604 = lshr i64 %582, 63
  %605 = trunc i64 %604 to i8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %605, i8* %606, align 1, !tbaa !2445
  %607 = lshr i64 %578, 63
  %608 = lshr i64 %579, 63
  %609 = xor i64 %604, %607
  %610 = xor i64 %604, %608
  %611 = add nuw nsw i64 %609, %610
  %612 = icmp eq i64 %611, 2
  %613 = zext i1 %612 to i8
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %613, i8* %614, align 1, !tbaa !2446
  %615 = load i64, i64* %RBP
  %616 = sub i64 %615, 20
  %617 = load i64, i64* %PC
  %618 = add i64 %617, 4
  store i64 %618, i64* %PC
  %619 = inttoptr i64 %616 to i32*
  %620 = load i32, i32* %619
  %621 = sext i32 %620 to i64
  store i64 %621, i64* %RCX, align 8, !tbaa !2424
  %622 = load i64, i64* %RAX
  %623 = load i64, i64* %RCX
  %624 = add i64 %623, %622
  %625 = load i64, i64* %PC
  %626 = add i64 %625, 4
  store i64 %626, i64* %PC
  %627 = inttoptr i64 %624 to i8*
  %628 = load i8, i8* %627
  %629 = sext i8 %628 to i64
  %630 = and i64 %629, 4294967295
  store i64 %630, i64* %RDX, align 8, !tbaa !2424
  %631 = load i32, i32* %EDX
  %632 = zext i32 %631 to i64
  %633 = load i64, i64* %PC
  %634 = add i64 %633, 3
  store i64 %634, i64* %PC
  %635 = sub i32 %631, 35
  %636 = icmp ult i32 %631, 35
  %637 = zext i1 %636 to i8
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %637, i8* %638, align 1, !tbaa !2428
  %639 = and i32 %635, 255
  %640 = call i32 @llvm.ctpop.i32(i32 %639) #16
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %643, i8* %644, align 1, !tbaa !2442
  %645 = xor i64 35, %632
  %646 = trunc i64 %645 to i32
  %647 = xor i32 %646, %635
  %648 = lshr i32 %647, 4
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %650, i8* %651, align 1, !tbaa !2443
  %652 = icmp eq i32 %635, 0
  %653 = zext i1 %652 to i8
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %653, i8* %654, align 1, !tbaa !2444
  %655 = lshr i32 %635, 31
  %656 = trunc i32 %655 to i8
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %656, i8* %657, align 1, !tbaa !2445
  %658 = lshr i32 %631, 31
  %659 = xor i32 %655, %658
  %660 = add nuw nsw i32 %659, %658
  %661 = icmp eq i32 %660, 2
  %662 = zext i1 %661 to i8
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %662, i8* %663, align 1, !tbaa !2446
  %664 = load i64, i64* %PC
  %665 = add i64 %664, 57
  %666 = load i64, i64* %PC
  %667 = add i64 %666, 6
  %668 = load i64, i64* %PC
  %669 = add i64 %668, 6
  store i64 %669, i64* %PC
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %671 = load i8, i8* %670, align 1, !tbaa !2444
  %672 = icmp eq i8 %671, 0
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %675 = select i1 %672, i64 %665, i64 %667
  store i64 %675, i64* %674, align 8, !tbaa !2424
  %676 = load i8, i8* %BRANCH_TAKEN
  %677 = icmp eq i8 %676, 1
  %678 = load i64, i64* %PC
  %679 = add i64 %678, 10
  store i64 %679, i64* %PC
  br i1 %677, label %block_400769, label %block_400736

block_400799:                                     ; preds = %block_40078f
  %680 = load i64, i64* %PC
  %681 = add i64 %680, 10
  store i64 %681, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %682 = load i64, i64* %RBP
  %683 = sub i64 %682, 24
  %684 = load i64, i64* %PC
  %685 = add i64 %684, 4
  store i64 %685, i64* %PC
  %686 = inttoptr i64 %683 to i32*
  %687 = load i32, i32* %686
  %688 = sext i32 %687 to i64
  store i64 %688, i64* %RCX, align 8, !tbaa !2424
  %689 = load i64, i64* %RCX
  %690 = load i64, i64* %PC
  %691 = add i64 %690, 4
  store i64 %691, i64* %PC
  %692 = sext i64 %689 to i128
  %693 = and i128 %692, -18446744073709551616
  %694 = zext i64 %689 to i128
  %695 = or i128 %693, %694
  %696 = mul nsw i128 11, %695
  %697 = trunc i128 %696 to i64
  store i64 %697, i64* %RCX, align 8, !tbaa !2424
  %698 = sext i64 %697 to i128
  %699 = icmp ne i128 %698, %696
  %700 = zext i1 %699 to i8
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %700, i8* %701, align 1, !tbaa !2428
  %702 = trunc i128 %696 to i32
  %703 = and i32 %702, 255
  %704 = call i32 @llvm.ctpop.i32(i32 %703) #16
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %707, i8* %708, align 1, !tbaa !2442
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %709, align 1, !tbaa !2443
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %710, align 1, !tbaa !2444
  %711 = lshr i64 %697, 63
  %712 = trunc i64 %711 to i8
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %712, i8* %713, align 1, !tbaa !2445
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %700, i8* %714, align 1, !tbaa !2446
  %715 = load i64, i64* %RAX
  %716 = load i64, i64* %RCX
  %717 = load i64, i64* %PC
  %718 = add i64 %717, 3
  store i64 %718, i64* %PC
  %719 = add i64 %716, %715
  store i64 %719, i64* %RAX, align 8, !tbaa !2424
  %720 = icmp ult i64 %719, %715
  %721 = icmp ult i64 %719, %716
  %722 = or i1 %720, %721
  %723 = zext i1 %722 to i8
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %723, i8* %724, align 1, !tbaa !2428
  %725 = trunc i64 %719 to i32
  %726 = and i32 %725, 255
  %727 = call i32 @llvm.ctpop.i32(i32 %726) #16
  %728 = trunc i32 %727 to i8
  %729 = and i8 %728, 1
  %730 = xor i8 %729, 1
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %730, i8* %731, align 1, !tbaa !2442
  %732 = xor i64 %716, %715
  %733 = xor i64 %732, %719
  %734 = lshr i64 %733, 4
  %735 = trunc i64 %734 to i8
  %736 = and i8 %735, 1
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %736, i8* %737, align 1, !tbaa !2443
  %738 = icmp eq i64 %719, 0
  %739 = zext i1 %738 to i8
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %739, i8* %740, align 1, !tbaa !2444
  %741 = lshr i64 %719, 63
  %742 = trunc i64 %741 to i8
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %742, i8* %743, align 1, !tbaa !2445
  %744 = lshr i64 %715, 63
  %745 = lshr i64 %716, 63
  %746 = xor i64 %741, %744
  %747 = xor i64 %741, %745
  %748 = add nuw nsw i64 %746, %747
  %749 = icmp eq i64 %748, 2
  %750 = zext i1 %749 to i8
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %750, i8* %751, align 1, !tbaa !2446
  %752 = load i64, i64* %RBP
  %753 = sub i64 %752, 20
  %754 = load i64, i64* %PC
  %755 = add i64 %754, 4
  store i64 %755, i64* %PC
  %756 = inttoptr i64 %753 to i32*
  %757 = load i32, i32* %756
  %758 = sext i32 %757 to i64
  store i64 %758, i64* %RCX, align 8, !tbaa !2424
  %759 = load i64, i64* %RAX
  %760 = load i64, i64* %RCX
  %761 = add i64 %760, %759
  %762 = load i64, i64* %PC
  %763 = add i64 %762, 4
  store i64 %763, i64* %PC
  %764 = inttoptr i64 %761 to i8*
  %765 = load i8, i8* %764
  %766 = sext i8 %765 to i64
  %767 = and i64 %766, 4294967295
  store i64 %767, i64* %RDX, align 8, !tbaa !2424
  %768 = load i32, i32* %EDX
  %769 = zext i32 %768 to i64
  %770 = load i64, i64* %PC
  %771 = add i64 %770, 3
  store i64 %771, i64* %PC
  %772 = sub i32 %768, 124
  %773 = icmp ult i32 %768, 124
  %774 = zext i1 %773 to i8
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %774, i8* %775, align 1, !tbaa !2428
  %776 = and i32 %772, 255
  %777 = call i32 @llvm.ctpop.i32(i32 %776) #16
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  %780 = xor i8 %779, 1
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %780, i8* %781, align 1, !tbaa !2442
  %782 = xor i64 124, %769
  %783 = trunc i64 %782 to i32
  %784 = xor i32 %783, %772
  %785 = lshr i32 %784, 4
  %786 = trunc i32 %785 to i8
  %787 = and i8 %786, 1
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %787, i8* %788, align 1, !tbaa !2443
  %789 = icmp eq i32 %772, 0
  %790 = zext i1 %789 to i8
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %790, i8* %791, align 1, !tbaa !2444
  %792 = lshr i32 %772, 31
  %793 = trunc i32 %792 to i8
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %793, i8* %794, align 1, !tbaa !2445
  %795 = lshr i32 %768, 31
  %796 = xor i32 %792, %795
  %797 = add nuw nsw i32 %796, %795
  %798 = icmp eq i32 %797, 2
  %799 = zext i1 %798 to i8
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %799, i8* %800, align 1, !tbaa !2446
  %801 = load i64, i64* %PC
  %802 = add i64 %801, 26
  %803 = load i64, i64* %PC
  %804 = add i64 %803, 6
  %805 = load i64, i64* %PC
  %806 = add i64 %805, 6
  store i64 %806, i64* %PC
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %808 = load i8, i8* %807, align 1, !tbaa !2444
  %809 = icmp eq i8 %808, 0
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %812 = select i1 %809, i64 %802, i64 %804
  store i64 %812, i64* %811, align 8, !tbaa !2424
  %813 = load i8, i8* %BRANCH_TAKEN
  %814 = icmp eq i8 %813, 1
  br i1 %814, label %block_4007d3, label %block_4007bf

block_40066e:                                     ; preds = %block_400817
  %815 = load i64, i64* %RBP
  %816 = sub i64 %815, 20
  %817 = load i64, i64* %PC
  %818 = add i64 %817, 3
  store i64 %818, i64* %PC
  %819 = inttoptr i64 %816 to i32*
  %820 = load i32, i32* %819
  %821 = zext i32 %820 to i64
  store i64 %821, i64* %RAX, align 8, !tbaa !2424
  %822 = load i64, i64* %RBP
  %823 = sub i64 %822, 28
  %824 = load i32, i32* %EAX
  %825 = zext i32 %824 to i64
  %826 = load i64, i64* %PC
  %827 = add i64 %826, 3
  store i64 %827, i64* %PC
  %828 = inttoptr i64 %823 to i32*
  store i32 %824, i32* %828
  %829 = load i64, i64* %RBP
  %830 = sub i64 %829, 24
  %831 = load i64, i64* %PC
  %832 = add i64 %831, 3
  store i64 %832, i64* %PC
  %833 = inttoptr i64 %830 to i32*
  %834 = load i32, i32* %833
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RAX, align 8, !tbaa !2424
  %836 = load i64, i64* %RBP
  %837 = sub i64 %836, 32
  %838 = load i32, i32* %EAX
  %839 = zext i32 %838 to i64
  %840 = load i64, i64* %PC
  %841 = add i64 %840, 3
  store i64 %841, i64* %PC
  %842 = inttoptr i64 %837 to i32*
  store i32 %838, i32* %842
  %843 = load i64, i64* %RBP
  %844 = sub i64 %843, 36
  %845 = load i64, i64* %PC
  %846 = add i64 %845, 4
  store i64 %846, i64* %PC
  %847 = inttoptr i64 %844 to i32*
  %848 = load i32, i32* %847
  %849 = sext i32 %848 to i64
  store i64 %849, i64* %RCX, align 8, !tbaa !2424
  %850 = load i64, i64* %RBP
  %851 = load i64, i64* %RCX
  %852 = add i64 %850, -64
  %853 = add i64 %852, %851
  %854 = load i64, i64* %PC
  %855 = add i64 %854, 5
  store i64 %855, i64* %PC
  %856 = inttoptr i64 %853 to i8*
  %857 = load i8, i8* %856
  %858 = sext i8 %857 to i64
  %859 = and i64 %858, 4294967295
  store i64 %859, i64* %RAX, align 8, !tbaa !2424
  %860 = load i64, i64* %RAX
  %861 = load i64, i64* %PC
  %862 = add i64 %861, 3
  store i64 %862, i64* %PC
  %863 = trunc i64 %860 to i32
  %864 = add i32 -97, %863
  %865 = zext i32 %864 to i64
  store i64 %865, i64* %RAX, align 8, !tbaa !2424
  %866 = icmp ult i32 %864, %863
  %867 = icmp ult i32 %864, -97
  %868 = or i1 %866, %867
  %869 = zext i1 %868 to i8
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %869, i8* %870, align 1, !tbaa !2428
  %871 = and i32 %864, 255
  %872 = call i32 @llvm.ctpop.i32(i32 %871) #16
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %875, i8* %876, align 1, !tbaa !2442
  %877 = xor i64 -97, %860
  %878 = trunc i64 %877 to i32
  %879 = xor i32 %878, %864
  %880 = lshr i32 %879, 4
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %882, i8* %883, align 1, !tbaa !2443
  %884 = icmp eq i32 %864, 0
  %885 = zext i1 %884 to i8
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %885, i8* %886, align 1, !tbaa !2444
  %887 = lshr i32 %864, 31
  %888 = trunc i32 %887 to i8
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %888, i8* %889, align 1, !tbaa !2445
  %890 = lshr i32 %863, 31
  %891 = xor i32 %887, %890
  %892 = xor i32 %887, 1
  %893 = add nuw nsw i32 %891, %892
  %894 = icmp eq i32 %893, 2
  %895 = zext i1 %894 to i8
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %895, i8* %896, align 1, !tbaa !2446
  %897 = load i32, i32* %EAX
  %898 = zext i32 %897 to i64
  %899 = load i64, i64* %PC
  %900 = add i64 %899, 2
  store i64 %900, i64* %PC
  %901 = and i64 %898, 4294967295
  store i64 %901, i64* %RCX, align 8, !tbaa !2424
  %902 = load i64, i64* %RAX
  %903 = load i64, i64* %PC
  %904 = add i64 %903, 3
  store i64 %904, i64* %PC
  %905 = trunc i64 %902 to i32
  %906 = sub i32 %905, 22
  %907 = zext i32 %906 to i64
  store i64 %907, i64* %RAX, align 8, !tbaa !2424
  %908 = icmp ult i32 %905, 22
  %909 = zext i1 %908 to i8
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %909, i8* %910, align 1, !tbaa !2428
  %911 = and i32 %906, 255
  %912 = call i32 @llvm.ctpop.i32(i32 %911) #16
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  %915 = xor i8 %914, 1
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %915, i8* %916, align 1, !tbaa !2442
  %917 = xor i64 22, %902
  %918 = trunc i64 %917 to i32
  %919 = xor i32 %918, %906
  %920 = lshr i32 %919, 4
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %922, i8* %923, align 1, !tbaa !2443
  %924 = icmp eq i32 %906, 0
  %925 = zext i1 %924 to i8
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %925, i8* %926, align 1, !tbaa !2444
  %927 = lshr i32 %906, 31
  %928 = trunc i32 %927 to i8
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %928, i8* %929, align 1, !tbaa !2445
  %930 = lshr i32 %905, 31
  %931 = xor i32 %927, %930
  %932 = add nuw nsw i32 %931, %930
  %933 = icmp eq i32 %932, 2
  %934 = zext i1 %933 to i8
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %934, i8* %935, align 1, !tbaa !2446
  %936 = load i64, i64* %RBP
  %937 = sub i64 %936, 80
  %938 = load i64, i64* %RCX
  %939 = load i64, i64* %PC
  %940 = add i64 %939, 4
  store i64 %940, i64* %PC
  %941 = inttoptr i64 %937 to i64*
  store i64 %938, i64* %941
  %942 = load i64, i64* %RBP
  %943 = sub i64 %942, 84
  %944 = load i32, i32* %EAX
  %945 = zext i32 %944 to i64
  %946 = load i64, i64* %PC
  %947 = add i64 %946, 3
  store i64 %947, i64* %PC
  %948 = inttoptr i64 %943 to i32*
  store i32 %944, i32* %948
  %949 = load i64, i64* %PC
  %950 = add i64 %949, 76
  %951 = load i64, i64* %PC
  %952 = add i64 %951, 6
  %953 = load i64, i64* %PC
  %954 = add i64 %953, 6
  store i64 %954, i64* %PC
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %956 = load i8, i8* %955, align 1, !tbaa !2428
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %958 = load i8, i8* %957, align 1, !tbaa !2444
  %959 = or i8 %958, %956
  %960 = icmp eq i8 %959, 0
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %963 = select i1 %960, i64 %950, i64 %952
  store i64 %963, i64* %962, align 8, !tbaa !2424
  %964 = load i8, i8* %BRANCH_TAKEN
  %965 = icmp eq i8 %964, 1
  br i1 %965, label %block_4006de, label %block_400698

block_400769:                                     ; preds = %block_400710
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %966 = load i64, i64* %RBP
  %967 = sub i64 %966, 24
  %968 = load i64, i64* %PC
  %969 = add i64 %968, 4
  store i64 %969, i64* %PC
  %970 = inttoptr i64 %967 to i32*
  %971 = load i32, i32* %970
  %972 = sext i32 %971 to i64
  store i64 %972, i64* %RCX, align 8, !tbaa !2424
  %973 = load i64, i64* %RCX
  %974 = load i64, i64* %PC
  %975 = add i64 %974, 4
  store i64 %975, i64* %PC
  %976 = sext i64 %973 to i128
  %977 = and i128 %976, -18446744073709551616
  %978 = zext i64 %973 to i128
  %979 = or i128 %977, %978
  %980 = mul nsw i128 11, %979
  %981 = trunc i128 %980 to i64
  store i64 %981, i64* %RCX, align 8, !tbaa !2424
  %982 = sext i64 %981 to i128
  %983 = icmp ne i128 %982, %980
  %984 = zext i1 %983 to i8
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %984, i8* %985, align 1, !tbaa !2428
  %986 = trunc i128 %980 to i32
  %987 = and i32 %986, 255
  %988 = call i32 @llvm.ctpop.i32(i32 %987) #16
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  %991 = xor i8 %990, 1
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %991, i8* %992, align 1, !tbaa !2442
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %993, align 1, !tbaa !2443
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %994, align 1, !tbaa !2444
  %995 = lshr i64 %981, 63
  %996 = trunc i64 %995 to i8
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %996, i8* %997, align 1, !tbaa !2445
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %984, i8* %998, align 1, !tbaa !2446
  %999 = load i64, i64* %RAX
  %1000 = load i64, i64* %RCX
  %1001 = load i64, i64* %PC
  %1002 = add i64 %1001, 3
  store i64 %1002, i64* %PC
  %1003 = add i64 %1000, %999
  store i64 %1003, i64* %RAX, align 8, !tbaa !2424
  %1004 = icmp ult i64 %1003, %999
  %1005 = icmp ult i64 %1003, %1000
  %1006 = or i1 %1004, %1005
  %1007 = zext i1 %1006 to i8
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1007, i8* %1008, align 1, !tbaa !2428
  %1009 = trunc i64 %1003 to i32
  %1010 = and i32 %1009, 255
  %1011 = call i32 @llvm.ctpop.i32(i32 %1010) #16
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1014, i8* %1015, align 1, !tbaa !2442
  %1016 = xor i64 %1000, %999
  %1017 = xor i64 %1016, %1003
  %1018 = lshr i64 %1017, 4
  %1019 = trunc i64 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1020, i8* %1021, align 1, !tbaa !2443
  %1022 = icmp eq i64 %1003, 0
  %1023 = zext i1 %1022 to i8
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1023, i8* %1024, align 1, !tbaa !2444
  %1025 = lshr i64 %1003, 63
  %1026 = trunc i64 %1025 to i8
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1026, i8* %1027, align 1, !tbaa !2445
  %1028 = lshr i64 %999, 63
  %1029 = lshr i64 %1000, 63
  %1030 = xor i64 %1025, %1028
  %1031 = xor i64 %1025, %1029
  %1032 = add nuw nsw i64 %1030, %1031
  %1033 = icmp eq i64 %1032, 2
  %1034 = zext i1 %1033 to i8
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1034, i8* %1035, align 1, !tbaa !2446
  %1036 = load i64, i64* %RBP
  %1037 = sub i64 %1036, 20
  %1038 = load i64, i64* %PC
  %1039 = add i64 %1038, 4
  store i64 %1039, i64* %PC
  %1040 = inttoptr i64 %1037 to i32*
  %1041 = load i32, i32* %1040
  %1042 = sext i32 %1041 to i64
  store i64 %1042, i64* %RCX, align 8, !tbaa !2424
  %1043 = load i64, i64* %RAX
  %1044 = load i64, i64* %RCX
  %1045 = add i64 %1044, %1043
  %1046 = load i64, i64* %PC
  %1047 = add i64 %1046, 4
  store i64 %1047, i64* %PC
  %1048 = inttoptr i64 %1045 to i8*
  %1049 = load i8, i8* %1048
  %1050 = sext i8 %1049 to i64
  %1051 = and i64 %1050, 4294967295
  store i64 %1051, i64* %RDX, align 8, !tbaa !2424
  %1052 = load i32, i32* %EDX
  %1053 = zext i32 %1052 to i64
  %1054 = load i64, i64* %PC
  %1055 = add i64 %1054, 3
  store i64 %1055, i64* %PC
  %1056 = sub i32 %1052, 32
  %1057 = icmp ult i32 %1052, 32
  %1058 = zext i1 %1057 to i8
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1058, i8* %1059, align 1, !tbaa !2428
  %1060 = and i32 %1056, 255
  %1061 = call i32 @llvm.ctpop.i32(i32 %1060) #16
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  %1064 = xor i8 %1063, 1
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1064, i8* %1065, align 1, !tbaa !2442
  %1066 = xor i64 32, %1053
  %1067 = trunc i64 %1066 to i32
  %1068 = xor i32 %1067, %1056
  %1069 = lshr i32 %1068, 4
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1071, i8* %1072, align 1, !tbaa !2443
  %1073 = icmp eq i32 %1056, 0
  %1074 = zext i1 %1073 to i8
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1074, i8* %1075, align 1, !tbaa !2444
  %1076 = lshr i32 %1056, 31
  %1077 = trunc i32 %1076 to i8
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1077, i8* %1078, align 1, !tbaa !2445
  %1079 = lshr i32 %1052, 31
  %1080 = xor i32 %1076, %1079
  %1081 = add nuw nsw i32 %1080, %1079
  %1082 = icmp eq i32 %1081, 2
  %1083 = zext i1 %1082 to i8
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1083, i8* %1084, align 1, !tbaa !2446
  %1085 = load i64, i64* %PC
  %1086 = add i64 %1085, 86
  %1087 = load i64, i64* %PC
  %1088 = add i64 %1087, 6
  %1089 = load i64, i64* %PC
  %1090 = add i64 %1089, 6
  store i64 %1090, i64* %PC
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1092 = load i8, i8* %1091, align 1, !tbaa !2444
  store i8 %1092, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1094 = icmp ne i8 %1092, 0
  %1095 = select i1 %1094, i64 %1086, i64 %1088
  store i64 %1095, i64* %1093, align 8, !tbaa !2424
  %1096 = load i8, i8* %BRANCH_TAKEN
  %1097 = icmp eq i8 %1096, 1
  br i1 %1097, label %block_4007df, label %block_40078f

block_4007f7:                                     ; preds = %block_4007eb
  %1098 = load i64, i64* %PC
  %1099 = add i64 %1098, 10
  store i64 %1099, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  %1100 = load i64, i64* %PC
  %1101 = add i64 %1100, 2
  store i64 %1101, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %1102 = load i64, i64* %PC
  %1103 = sub i64 %1102, 963
  %1104 = load i64, i64* %PC
  %1105 = add i64 %1104, 5
  %1106 = load i64, i64* %PC
  %1107 = add i64 %1106, 5
  store i64 %1107, i64* %PC
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1109 = load i64, i64* %1108, align 8, !tbaa !2424
  %1110 = add i64 %1109, -8
  %1111 = inttoptr i64 %1110 to i64*
  store i64 %1105, i64* %1111
  store i64 %1110, i64* %1108, align 8, !tbaa !2424
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1103, i64* %1112, align 8, !tbaa !2424
  %1113 = load i64, i64* %PC
  %1114 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1113, %struct.Memory* %MEMORY.2)
  %1115 = load i64, i64* %RBP
  %1116 = sub i64 %1115, 4
  %1117 = load i64, i64* %PC
  %1118 = add i64 %1117, 7
  store i64 %1118, i64* %PC
  %1119 = inttoptr i64 %1116 to i32*
  store i32 2, i32* %1119
  %1120 = load i64, i64* %RBP
  %1121 = sub i64 %1120, 104
  %1122 = load i32, i32* %EAX
  %1123 = zext i32 %1122 to i64
  %1124 = load i64, i64* %PC
  %1125 = add i64 %1124, 3
  store i64 %1125, i64* %PC
  %1126 = inttoptr i64 %1121 to i32*
  store i32 %1122, i32* %1126
  %1127 = load i64, i64* %PC
  %1128 = add i64 %1127, 80
  %1129 = load i64, i64* %PC
  %1130 = add i64 %1129, 5
  store i64 %1130, i64* %PC
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1128, i64* %1131, align 8, !tbaa !2424
  br label %block_400862

block_4007c9:                                     ; preds = %block_4007bf
  %1132 = load i64, i64* %RBP
  %1133 = sub i64 %1132, 20
  %1134 = load i64, i64* %PC
  %1135 = add i64 %1134, 4
  store i64 %1135, i64* %PC
  %1136 = inttoptr i64 %1133 to i32*
  %1137 = load i32, i32* %1136
  %1138 = sub i32 %1137, 11
  %1139 = icmp ult i32 %1137, 11
  %1140 = zext i1 %1139 to i8
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1140, i8* %1141, align 1, !tbaa !2428
  %1142 = and i32 %1138, 255
  %1143 = call i32 @llvm.ctpop.i32(i32 %1142) #16
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  %1146 = xor i8 %1145, 1
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1146, i8* %1147, align 1, !tbaa !2442
  %1148 = xor i32 %1137, 11
  %1149 = xor i32 %1148, %1138
  %1150 = lshr i32 %1149, 4
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1152, i8* %1153, align 1, !tbaa !2443
  %1154 = icmp eq i32 %1138, 0
  %1155 = zext i1 %1154 to i8
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1155, i8* %1156, align 1, !tbaa !2444
  %1157 = lshr i32 %1138, 31
  %1158 = trunc i32 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1158, i8* %1159, align 1, !tbaa !2445
  %1160 = lshr i32 %1137, 31
  %1161 = xor i32 %1157, %1160
  %1162 = add nuw nsw i32 %1161, %1160
  %1163 = icmp eq i32 %1162, 2
  %1164 = zext i1 %1163 to i8
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1164, i8* %1165, align 1, !tbaa !2446
  %1166 = load i64, i64* %PC
  %1167 = add i64 %1166, 18
  %1168 = load i64, i64* %PC
  %1169 = add i64 %1168, 6
  %1170 = load i64, i64* %PC
  %1171 = add i64 %1170, 6
  store i64 %1171, i64* %PC
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1173 = load i8, i8* %1172, align 1, !tbaa !2445
  %1174 = icmp ne i8 %1173, 0
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1176 = load i8, i8* %1175, align 1, !tbaa !2446
  %1177 = icmp ne i8 %1176, 0
  %1178 = xor i1 %1174, %1177
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1181 = select i1 %1178, i64 %1167, i64 %1169
  store i64 %1181, i64* %1180, align 8, !tbaa !2424
  %1182 = load i8, i8* %BRANCH_TAKEN
  %1183 = icmp eq i8 %1182, 1
  br i1 %1183, label %block_4007df, label %block_4007d3

block_40078f:                                     ; preds = %block_400769
  %1184 = load i64, i64* %RBP
  %1185 = sub i64 %1184, 24
  %1186 = load i64, i64* %PC
  %1187 = add i64 %1186, 4
  store i64 %1187, i64* %PC
  %1188 = inttoptr i64 %1185 to i32*
  %1189 = load i32, i32* %1188
  %1190 = sub i32 %1189, 2
  %1191 = icmp ult i32 %1189, 2
  %1192 = zext i1 %1191 to i8
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1192, i8* %1193, align 1, !tbaa !2428
  %1194 = and i32 %1190, 255
  %1195 = call i32 @llvm.ctpop.i32(i32 %1194) #16
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  %1198 = xor i8 %1197, 1
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1198, i8* %1199, align 1, !tbaa !2442
  %1200 = xor i32 %1189, 2
  %1201 = xor i32 %1200, %1190
  %1202 = lshr i32 %1201, 4
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1204, i8* %1205, align 1, !tbaa !2443
  %1206 = icmp eq i32 %1190, 0
  %1207 = zext i1 %1206 to i8
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1207, i8* %1208, align 1, !tbaa !2444
  %1209 = lshr i32 %1190, 31
  %1210 = trunc i32 %1209 to i8
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1210, i8* %1211, align 1, !tbaa !2445
  %1212 = lshr i32 %1189, 31
  %1213 = xor i32 %1209, %1212
  %1214 = add nuw nsw i32 %1213, %1212
  %1215 = icmp eq i32 %1214, 2
  %1216 = zext i1 %1215 to i8
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1216, i8* %1217, align 1, !tbaa !2446
  %1218 = load i64, i64* %PC
  %1219 = add i64 %1218, 64
  %1220 = load i64, i64* %PC
  %1221 = add i64 %1220, 6
  %1222 = load i64, i64* %PC
  %1223 = add i64 %1222, 6
  store i64 %1223, i64* %PC
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1225 = load i8, i8* %1224, align 1, !tbaa !2444
  %1226 = icmp eq i8 %1225, 0
  %1227 = zext i1 %1226 to i8
  store i8 %1227, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1229 = select i1 %1226, i64 %1219, i64 %1221
  store i64 %1229, i64* %1228, align 8, !tbaa !2424
  %1230 = load i8, i8* %BRANCH_TAKEN
  %1231 = icmp eq i8 %1230, 1
  br i1 %1231, label %block_4007d3, label %block_400799

block_4007eb:                                     ; preds = %block_4007df
  %1232 = load i64, i64* %RBP
  %1233 = sub i64 %1232, 32
  %1234 = load i64, i64* %PC
  %1235 = add i64 %1234, 3
  store i64 %1235, i64* %PC
  %1236 = inttoptr i64 %1233 to i32*
  %1237 = load i32, i32* %1236
  %1238 = zext i32 %1237 to i64
  store i64 %1238, i64* %RAX, align 8, !tbaa !2424
  %1239 = load i32, i32* %EAX
  %1240 = zext i32 %1239 to i64
  %1241 = load i64, i64* %RBP
  %1242 = sub i64 %1241, 24
  %1243 = load i64, i64* %PC
  %1244 = add i64 %1243, 3
  store i64 %1244, i64* %PC
  %1245 = inttoptr i64 %1242 to i32*
  %1246 = load i32, i32* %1245
  %1247 = sub i32 %1239, %1246
  %1248 = icmp ult i32 %1239, %1246
  %1249 = zext i1 %1248 to i8
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1249, i8* %1250, align 1, !tbaa !2428
  %1251 = and i32 %1247, 255
  %1252 = call i32 @llvm.ctpop.i32(i32 %1251) #16
  %1253 = trunc i32 %1252 to i8
  %1254 = and i8 %1253, 1
  %1255 = xor i8 %1254, 1
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1255, i8* %1256, align 1, !tbaa !2442
  %1257 = xor i32 %1246, %1239
  %1258 = xor i32 %1257, %1247
  %1259 = lshr i32 %1258, 4
  %1260 = trunc i32 %1259 to i8
  %1261 = and i8 %1260, 1
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1261, i8* %1262, align 1, !tbaa !2443
  %1263 = icmp eq i32 %1247, 0
  %1264 = zext i1 %1263 to i8
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1264, i8* %1265, align 1, !tbaa !2444
  %1266 = lshr i32 %1247, 31
  %1267 = trunc i32 %1266 to i8
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1267, i8* %1268, align 1, !tbaa !2445
  %1269 = lshr i32 %1239, 31
  %1270 = lshr i32 %1246, 31
  %1271 = xor i32 %1270, %1269
  %1272 = xor i32 %1266, %1269
  %1273 = add nuw nsw i32 %1272, %1271
  %1274 = icmp eq i32 %1273, 2
  %1275 = zext i1 %1274 to i8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1275, i8* %1276, align 1, !tbaa !2446
  %1277 = load i64, i64* %PC
  %1278 = add i64 %1277, 38
  %1279 = load i64, i64* %PC
  %1280 = add i64 %1279, 6
  %1281 = load i64, i64* %PC
  %1282 = add i64 %1281, 6
  store i64 %1282, i64* %PC
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1284 = load i8, i8* %1283, align 1, !tbaa !2444
  %1285 = icmp eq i8 %1284, 0
  %1286 = zext i1 %1285 to i8
  store i8 %1286, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1288 = select i1 %1285, i64 %1278, i64 %1280
  store i64 %1288, i64* %1287, align 8, !tbaa !2424
  %1289 = load i8, i8* %BRANCH_TAKEN
  %1290 = icmp eq i8 %1289, 1
  br i1 %1290, label %block_400817, label %block_4007f7

block_400847:                                     ; preds = %block_400817
  %1291 = load i64, i64* %PC
  %1292 = add i64 %1291, 10
  store i64 %1292, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  %1293 = load i64, i64* %PC
  %1294 = add i64 %1293, 2
  store i64 %1294, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %1295 = load i64, i64* %PC
  %1296 = sub i64 %1295, 1043
  %1297 = load i64, i64* %PC
  %1298 = add i64 %1297, 5
  %1299 = load i64, i64* %PC
  %1300 = add i64 %1299, 5
  store i64 %1300, i64* %PC
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1302 = load i64, i64* %1301, align 8, !tbaa !2424
  %1303 = add i64 %1302, -8
  %1304 = inttoptr i64 %1303 to i64*
  store i64 %1298, i64* %1304
  store i64 %1303, i64* %1301, align 8, !tbaa !2424
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1296, i64* %1305, align 8, !tbaa !2424
  %1306 = load i64, i64* %PC
  %1307 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1306, %struct.Memory* %204)
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
  br label %block_400862

block_400862:                                     ; preds = %block_400847, %block_4007f7
  %MEMORY.4 = phi %struct.Memory* [ %1307, %block_400847 ], [ %1114, %block_4007f7 ]
  %1320 = load i64, i64* %RBP
  %1321 = sub i64 %1320, 4
  %1322 = load i64, i64* %PC
  %1323 = add i64 %1322, 3
  store i64 %1323, i64* %PC
  %1324 = inttoptr i64 %1321 to i32*
  %1325 = load i32, i32* %1324
  %1326 = zext i32 %1325 to i64
  store i64 %1326, i64* %RAX, align 8, !tbaa !2424
  %1327 = load i64, i64* %RSP
  %1328 = load i64, i64* %PC
  %1329 = add i64 %1328, 4
  store i64 %1329, i64* %PC
  %1330 = add i64 112, %1327
  store i64 %1330, i64* %RSP, align 8, !tbaa !2424
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
  store i8 %1341, i8* %1342, align 1, !tbaa !2442
  %1343 = xor i64 112, %1327
  %1344 = xor i64 %1343, %1330
  %1345 = lshr i64 %1344, 4
  %1346 = trunc i64 %1345 to i8
  %1347 = and i8 %1346, 1
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1347, i8* %1348, align 1, !tbaa !2443
  %1349 = icmp eq i64 %1330, 0
  %1350 = zext i1 %1349 to i8
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1350, i8* %1351, align 1, !tbaa !2444
  %1352 = lshr i64 %1330, 63
  %1353 = trunc i64 %1352 to i8
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1353, i8* %1354, align 1, !tbaa !2445
  %1355 = lshr i64 %1327, 63
  %1356 = xor i64 %1352, %1355
  %1357 = add nuw nsw i64 %1356, %1352
  %1358 = icmp eq i64 %1357, 2
  %1359 = zext i1 %1358 to i8
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1359, i8* %1360, align 1, !tbaa !2446
  %1361 = load i64, i64* %PC
  %1362 = add i64 %1361, 1
  store i64 %1362, i64* %PC
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1364 = load i64, i64* %1363, align 8, !tbaa !2424
  %1365 = add i64 %1364, 8
  %1366 = inttoptr i64 %1364 to i64*
  %1367 = load i64, i64* %1366
  store i64 %1367, i64* %RBP, align 8, !tbaa !2424
  store i64 %1365, i64* %1363, align 8, !tbaa !2424
  %1368 = load i64, i64* %PC
  %1369 = add i64 %1368, 1
  store i64 %1369, i64* %PC
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1372 = load i64, i64* %1371, align 8, !tbaa !2424
  %1373 = inttoptr i64 %1372 to i64*
  %1374 = load i64, i64* %1373
  store i64 %1374, i64* %1370, align 8, !tbaa !2424
  %1375 = add i64 %1372, 8
  store i64 %1375, i64* %1371, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.4

block_4006d0:                                     ; preds = %block_400698, %3
  %MEMORY.5 = phi %struct.Memory* [ %2, %3 ], [ %204, %block_400698 ]
  %1376 = load i64, i64* %RBP
  %1377 = sub i64 %1376, 20
  %1378 = load i64, i64* %PC
  %1379 = add i64 %1378, 3
  store i64 %1379, i64* %PC
  %1380 = inttoptr i64 %1377 to i32*
  %1381 = load i32, i32* %1380
  %1382 = zext i32 %1381 to i64
  store i64 %1382, i64* %RAX, align 8, !tbaa !2424
  %1383 = load i64, i64* %RAX
  %1384 = load i64, i64* %PC
  %1385 = add i64 %1384, 3
  store i64 %1385, i64* %PC
  %1386 = trunc i64 %1383 to i32
  %1387 = add i32 1, %1386
  %1388 = zext i32 %1387 to i64
  store i64 %1388, i64* %RAX, align 8, !tbaa !2424
  %1389 = icmp ult i32 %1387, %1386
  %1390 = icmp ult i32 %1387, 1
  %1391 = or i1 %1389, %1390
  %1392 = zext i1 %1391 to i8
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1392, i8* %1393, align 1, !tbaa !2428
  %1394 = and i32 %1387, 255
  %1395 = call i32 @llvm.ctpop.i32(i32 %1394) #16
  %1396 = trunc i32 %1395 to i8
  %1397 = and i8 %1396, 1
  %1398 = xor i8 %1397, 1
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1398, i8* %1399, align 1, !tbaa !2442
  %1400 = xor i64 1, %1383
  %1401 = trunc i64 %1400 to i32
  %1402 = xor i32 %1401, %1387
  %1403 = lshr i32 %1402, 4
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1405, i8* %1406, align 1, !tbaa !2443
  %1407 = icmp eq i32 %1387, 0
  %1408 = zext i1 %1407 to i8
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1408, i8* %1409, align 1, !tbaa !2444
  %1410 = lshr i32 %1387, 31
  %1411 = trunc i32 %1410 to i8
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1411, i8* %1412, align 1, !tbaa !2445
  %1413 = lshr i32 %1386, 31
  %1414 = xor i32 %1410, %1413
  %1415 = add nuw nsw i32 %1414, %1410
  %1416 = icmp eq i32 %1415, 2
  %1417 = zext i1 %1416 to i8
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1417, i8* %1418, align 1, !tbaa !2446
  %1419 = load i64, i64* %RBP
  %1420 = sub i64 %1419, 20
  %1421 = load i32, i32* %EAX
  %1422 = zext i32 %1421 to i64
  %1423 = load i64, i64* %PC
  %1424 = add i64 %1423, 3
  store i64 %1424, i64* %PC
  %1425 = inttoptr i64 %1420 to i32*
  store i32 %1421, i32* %1425
  %1426 = load i64, i64* %PC
  %1427 = add i64 %1426, 55
  %1428 = load i64, i64* %PC
  %1429 = add i64 %1428, 5
  store i64 %1429, i64* %PC
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1427, i64* %1430, align 8, !tbaa !2424
  br label %block_400710

block_4006de:                                     ; preds = %block_40066e, %block_400698
  %MEMORY.6 = phi %struct.Memory* [ %204, %block_40066e ], [ %204, %block_400698 ]
  %1431 = load i64, i64* %PC
  %1432 = tail call %struct.Memory* @sub_4006de(%struct.State* %0, i64 %1431, %struct.Memory* %MEMORY.6)
  ret %struct.Memory* %1432

block_4006a6:                                     ; preds = %block_400698
  %1433 = load i64, i64* %PC
  %1434 = tail call %struct.Memory* @sub_4006a6(%struct.State* %0, i64 %1433, %struct.Memory* %204)
  ret %struct.Memory* %1434

block_4006c2:                                     ; preds = %block_400698
  %1435 = load i64, i64* %PC
  %1436 = tail call %struct.Memory* @sub_4006c2(%struct.State* %0, i64 %1435, %struct.Memory* %204)
  ret %struct.Memory* %1436

; <label>:1437:                                   ; preds = %block_400698
  %1438 = load i64, i64* %PC
  %1439 = tail call %struct.Memory* @__remill_missing_block(%struct.State* %0, i64 %1438, %struct.Memory* %204)
  ret %struct.Memory* %1439
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004a0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004a0:
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
  %28 = load i64, i64* %27, align 8, !tbaa !2424
  %29 = add i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %24, i64* %30
  store i64 %29, i64* %27, align 8, !tbaa !2424
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 5
  store i64 %32, i64* %PC
  store i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2424
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
  store i8 %45, i8* %46, align 1, !tbaa !2442
  %47 = xor i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %33
  %48 = xor i64 %47, %36
  %49 = lshr i64 %48, 4
  %50 = trunc i64 %49 to i8
  %51 = and i8 %50, 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %51, i8* %52, align 1, !tbaa !2443
  %53 = icmp eq i64 %36, 0
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %54, i8* %55, align 1, !tbaa !2444
  %56 = lshr i64 %36, 63
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %57, i8* %58, align 1, !tbaa !2445
  %59 = lshr i64 %33, 63
  %60 = xor i64 lshr (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 63), %59
  %61 = xor i64 %56, %59
  %62 = add nuw nsw i64 %61, %60
  %63 = icmp eq i64 %62, 2
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %64, i8* %65, align 1, !tbaa !2446
  %66 = load i64, i64* %RSP
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 3
  store i64 %68, i64* %PC
  store i64 %66, i64* %RBP, align 8, !tbaa !2424
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 25
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 2
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 2
  store i64 %74, i64* %PC
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %76 = load i8, i8* %75, align 1, !tbaa !2444
  store i8 %76, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = icmp ne i8 %76, 0
  %79 = select i1 %78, i64 %70, i64 %72
  store i64 %79, i64* %77, align 8, !tbaa !2424
  %80 = load i8, i8* %BRANCH_TAKEN
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %block_4004c8, label %block_4004b1

block_4004bb:                                     ; preds = %block_4004b1
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 1
  store i64 %83, i64* %PC
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %85 = load i64, i64* %84, align 8, !tbaa !2424
  %86 = add i64 %85, 8
  %87 = inttoptr i64 %85 to i64*
  %88 = load i64, i64* %87
  store i64 %88, i64* %RBP, align 8, !tbaa !2424
  store i64 %86, i64* %84, align 8, !tbaa !2424
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 5
  store i64 %90, i64* %PC
  store i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !2424
  %91 = load i64, i64* %RAX
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 2
  store i64 %93, i64* %PC
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %91, i64* %94, align 8, !tbaa !2424
  %95 = load i64, i64* %PC
  switch i64 %95, label %163 [
    i64 4195530, label %block_4004ca
    i64 4195523, label %block_4004c3
  ]

block_4004b1:                                     ; preds = %block_4004a0
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 5
  store i64 %97, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2424
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
  store i8 %109, i8* %110, align 1, !tbaa !2442
  %111 = icmp eq i64 %102, 0
  %112 = zext i1 %111 to i8
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %112, i8* %113, align 1, !tbaa !2444
  %114 = lshr i64 %102, 63
  %115 = trunc i64 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %115, i8* %116, align 1, !tbaa !2445
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %117, align 1, !tbaa !2446
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %118, align 1, !tbaa !2443
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 15
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 2
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 2
  store i64 %124, i64* %PC
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %126 = load i8, i8* %125, align 1, !tbaa !2444
  store i8 %126, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %128 = icmp ne i8 %126, 0
  %129 = select i1 %128, i64 %120, i64 %122
  store i64 %129, i64* %127, align 8, !tbaa !2424
  %130 = load i8, i8* %BRANCH_TAKEN
  %131 = icmp eq i8 %130, 1
  br i1 %131, label %block_4004c8, label %block_4004bb

block_4004c8:                                     ; preds = %block_4004c3, %block_4004b1, %block_4004a0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4004a0 ], [ %2, %block_4004b1 ], [ %2, %block_4004c3 ]
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 1
  store i64 %133, i64* %PC
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %135 = load i64, i64* %134, align 8, !tbaa !2424
  %136 = add i64 %135, 8
  %137 = inttoptr i64 %135 to i64*
  %138 = load i64, i64* %137
  store i64 %138, i64* %RBP, align 8, !tbaa !2424
  store i64 %136, i64* %134, align 8, !tbaa !2424
  %139 = load i64, i64* %PC
  %140 = add i64 %139, 1
  store i64 %140, i64* %PC
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %143 = load i64, i64* %142, align 8, !tbaa !2424
  %144 = inttoptr i64 %143 to i64*
  %145 = load i64, i64* %144
  store i64 %145, i64* %141, align 8, !tbaa !2424
  %146 = add i64 %143, 8
  store i64 %146, i64* %142, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_4004ca:                                     ; preds = %block_4004bb
  %147 = load i64, i64* %RAX
  %148 = load i64, i64* %RAX
  %149 = add i64 %148, %147
  %150 = load i16, i16* %AX
  %151 = zext i16 %150 to i64
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 6
  store i64 %153, i64* %PC
  %154 = load i64, i64* %PC
  %155 = tail call %struct.Memory* @sub_4004d0_register_tm_clones(%struct.State* %0, i64 %154, %struct.Memory* %2)
  ret %struct.Memory* %155

block_4004c3:                                     ; preds = %block_4004bb
  %156 = load i64, i64* %RAX
  %157 = load i64, i64* %RAX
  %158 = add i64 %157, %156
  %159 = load i32, i32* %EAX
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 5
  store i64 %162, i64* %PC
  br label %block_4004c8

; <label>:163:                                    ; preds = %block_4004bb
  %164 = load i64, i64* %PC
  %165 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %164, %struct.Memory* %2)
  ret %struct.Memory* %165
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006de(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006de:
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
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 195), i64* %RDI, align 8, !tbaa !2424
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 2
  store i64 %22, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %23 = load i64, i64* %PC
  %24 = sub i64 %23, 682
  %25 = load i64, i64* %PC
  %26 = add i64 %25, 5
  %27 = load i64, i64* %PC
  %28 = add i64 %27, 5
  store i64 %28, i64* %PC
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %30 = load i64, i64* %29, align 8, !tbaa !2424
  %31 = add i64 %30, -8
  %32 = inttoptr i64 %31 to i64*
  store i64 %26, i64* %32
  store i64 %31, i64* %29, align 8, !tbaa !2424
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %24, i64* %33, align 8, !tbaa !2424
  %34 = load i64, i64* %PC
  %35 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %34, %struct.Memory* %2)
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 10
  store i64 %37, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 235), i64* %RDI, align 8, !tbaa !2424
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
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %47 = load i64, i64* %PC
  %48 = sub i64 %47, 702
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 5
  %51 = load i64, i64* %PC
  %52 = add i64 %51, 5
  store i64 %52, i64* %PC
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %54 = load i64, i64* %53, align 8, !tbaa !2424
  %55 = add i64 %54, -8
  %56 = inttoptr i64 %55 to i64*
  store i64 %50, i64* %56
  store i64 %55, i64* %53, align 8, !tbaa !2424
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %48, i64* %57, align 8, !tbaa !2424
  %58 = load i64, i64* %PC
  %59 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %58, %struct.Memory* %35)
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 5
  store i64 %61, i64* %PC
  store i64 4294967295, i64* %RDI, align 8, !tbaa !2424
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
  %70 = sub i64 %69, 683
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 5
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %76 = load i64, i64* %75, align 8, !tbaa !2424
  %77 = add i64 %76, -8
  %78 = inttoptr i64 %77 to i64*
  store i64 %72, i64* %78
  store i64 %77, i64* %75, align 8, !tbaa !2424
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %70, i64* %79, align 8, !tbaa !2424
  %80 = load i64, i64* %PC
  %81 = call %struct.Memory* @ext_6010c8_exit(%struct.State* %0, i64 %80, %struct.Memory* %59)
  %82 = load i64, i64* %PC
  %83 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %82, %struct.Memory* %81)
  ret %struct.Memory* %83
}

; Function Attrs: noinline
define %struct.Memory* @sub_400600_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400600:
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
  %53 = load i64, i64* %52, align 8, !tbaa !2424
  %54 = add i64 %53, -8
  %55 = inttoptr i64 %54 to i64*
  store i64 %49, i64* %55
  store i64 %54, i64* %52, align 8, !tbaa !2424
  %56 = load i64, i64* %RSP
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 3
  store i64 %58, i64* %PC
  store i64 %56, i64* %RBP, align 8, !tbaa !2424
  %59 = load i64, i64* %RSP
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 4
  store i64 %61, i64* %PC
  %62 = sub i64 %59, 112
  store i64 %62, i64* %RSP, align 8, !tbaa !2424
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
  store i8 %71, i8* %72, align 1, !tbaa !2442
  %73 = xor i64 112, %59
  %74 = xor i64 %73, %62
  %75 = lshr i64 %74, 4
  %76 = trunc i64 %75 to i8
  %77 = and i8 %76, 1
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %77, i8* %78, align 1, !tbaa !2443
  %79 = icmp eq i64 %62, 0
  %80 = zext i1 %79 to i8
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %80, i8* %81, align 1, !tbaa !2444
  %82 = lshr i64 %62, 63
  %83 = trunc i64 %82 to i8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %83, i8* %84, align 1, !tbaa !2445
  %85 = lshr i64 %59, 63
  %86 = xor i64 %82, %85
  %87 = add nuw nsw i64 %86, %85
  %88 = icmp eq i64 %87, 2
  %89 = zext i1 %88 to i8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %89, i8* %90, align 1, !tbaa !2446
  %91 = load i64, i64* %RAX
  %92 = load i32, i32* %EAX
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 2
  store i64 %95, i64* %PC
  %96 = xor i64 %93, %91
  %97 = trunc i64 %96 to i32
  %98 = and i64 %96, 4294967295
  store i64 %98, i64* %RAX, align 8, !tbaa !2424
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %99, align 1, !tbaa !2428
  %100 = and i32 %97, 255
  %101 = call i32 @llvm.ctpop.i32(i32 %100) #16
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %104, i8* %105, align 1, !tbaa !2442
  %106 = icmp eq i32 %97, 0
  %107 = zext i1 %106 to i8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %107, i8* %108, align 1, !tbaa !2444
  %109 = lshr i32 %97, 31
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %110, i8* %111, align 1, !tbaa !2445
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %112, align 1, !tbaa !2446
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %113, align 1, !tbaa !2443
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 5
  store i64 %115, i64* %PC
  store i64 28, i64* %RCX, align 8, !tbaa !2424
  %116 = load i32, i32* %ECX
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 2
  store i64 %119, i64* %PC
  %120 = and i64 %117, 4294967295
  store i64 %120, i64* %RDX, align 8, !tbaa !2424
  %121 = load i64, i64* %RBP
  %122 = sub i64 %121, 64
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 4
  store i64 %124, i64* %PC
  store i64 %122, i64* %R8, align 8, !tbaa !2424
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 10
  store i64 %126, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %R9, align 8, !tbaa !2424
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
  store i64 %166, i64* %RSI, align 8, !tbaa !2424
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
  store i64 %175, i64* %RSI, align 8, !tbaa !2424
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
  store i8 %185, i8* %186, align 1, !tbaa !2442
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %187, align 1, !tbaa !2443
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %188, align 1, !tbaa !2444
  %189 = lshr i64 %175, 63
  %190 = trunc i64 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %190, i8* %191, align 1, !tbaa !2445
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %178, i8* %192, align 1, !tbaa !2446
  %193 = load i64, i64* %R9
  %194 = load i64, i64* %RSI
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 3
  store i64 %196, i64* %PC
  %197 = add i64 %194, %193
  store i64 %197, i64* %R9, align 8, !tbaa !2424
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
  store i8 %208, i8* %209, align 1, !tbaa !2442
  %210 = xor i64 %194, %193
  %211 = xor i64 %210, %197
  %212 = lshr i64 %211, 4
  %213 = trunc i64 %212 to i8
  %214 = and i8 %213, 1
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %214, i8* %215, align 1, !tbaa !2443
  %216 = icmp eq i64 %197, 0
  %217 = zext i1 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %217, i8* %218, align 1, !tbaa !2444
  %219 = lshr i64 %197, 63
  %220 = trunc i64 %219 to i8
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %220, i8* %221, align 1, !tbaa !2445
  %222 = lshr i64 %193, 63
  %223 = lshr i64 %194, 63
  %224 = xor i64 %219, %222
  %225 = xor i64 %219, %223
  %226 = add nuw nsw i64 %224, %225
  %227 = icmp eq i64 %226, 2
  %228 = zext i1 %227 to i8
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %228, i8* %229, align 1, !tbaa !2446
  %230 = load i64, i64* %RBP
  %231 = sub i64 %230, 20
  %232 = load i64, i64* %PC
  %233 = add i64 %232, 4
  store i64 %233, i64* %PC
  %234 = inttoptr i64 %231 to i32*
  %235 = load i32, i32* %234
  %236 = sext i32 %235 to i64
  store i64 %236, i64* %RSI, align 8, !tbaa !2424
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
  store i64 %247, i64* %RDI, align 8, !tbaa !2424
  %248 = load i64, i64* %R8
  %249 = load i64, i64* %PC
  %250 = add i64 %249, 3
  store i64 %250, i64* %PC
  store i64 %248, i64* %RSI, align 8, !tbaa !2424
  %251 = load i64, i64* %PC
  %252 = sub i64 %251, 523
  %253 = load i64, i64* %PC
  %254 = add i64 %253, 5
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 5
  store i64 %256, i64* %PC
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %258 = load i64, i64* %257, align 8, !tbaa !2424
  %259 = add i64 %258, -8
  %260 = inttoptr i64 %259 to i64*
  store i64 %254, i64* %260
  store i64 %259, i64* %257, align 8, !tbaa !2424
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %252, i64* %261, align 8, !tbaa !2424
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
  br label %block_400664

block_40066e:                                     ; preds = %block_400664
  %270 = load i64, i64* %RBP
  %271 = sub i64 %270, 20
  %272 = load i64, i64* %PC
  %273 = add i64 %272, 3
  store i64 %273, i64* %PC
  %274 = inttoptr i64 %271 to i32*
  %275 = load i32, i32* %274
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RAX, align 8, !tbaa !2424
  %277 = load i64, i64* %RBP
  %278 = sub i64 %277, 28
  %279 = load i32, i32* %EAX
  %280 = zext i32 %279 to i64
  %281 = load i64, i64* %PC
  %282 = add i64 %281, 3
  store i64 %282, i64* %PC
  %283 = inttoptr i64 %278 to i32*
  store i32 %279, i32* %283
  %284 = load i64, i64* %RBP
  %285 = sub i64 %284, 24
  %286 = load i64, i64* %PC
  %287 = add i64 %286, 3
  store i64 %287, i64* %PC
  %288 = inttoptr i64 %285 to i32*
  %289 = load i32, i32* %288
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RAX, align 8, !tbaa !2424
  %291 = load i64, i64* %RBP
  %292 = sub i64 %291, 32
  %293 = load i32, i32* %EAX
  %294 = zext i32 %293 to i64
  %295 = load i64, i64* %PC
  %296 = add i64 %295, 3
  store i64 %296, i64* %PC
  %297 = inttoptr i64 %292 to i32*
  store i32 %293, i32* %297
  %298 = load i64, i64* %RBP
  %299 = sub i64 %298, 36
  %300 = load i64, i64* %PC
  %301 = add i64 %300, 4
  store i64 %301, i64* %PC
  %302 = inttoptr i64 %299 to i32*
  %303 = load i32, i32* %302
  %304 = sext i32 %303 to i64
  store i64 %304, i64* %RCX, align 8, !tbaa !2424
  %305 = load i64, i64* %RBP
  %306 = load i64, i64* %RCX
  %307 = add i64 %305, -64
  %308 = add i64 %307, %306
  %309 = load i64, i64* %PC
  %310 = add i64 %309, 5
  store i64 %310, i64* %PC
  %311 = inttoptr i64 %308 to i8*
  %312 = load i8, i8* %311
  %313 = sext i8 %312 to i64
  %314 = and i64 %313, 4294967295
  store i64 %314, i64* %RAX, align 8, !tbaa !2424
  %315 = load i64, i64* %RAX
  %316 = load i64, i64* %PC
  %317 = add i64 %316, 3
  store i64 %317, i64* %PC
  %318 = trunc i64 %315 to i32
  %319 = add i32 -97, %318
  %320 = zext i32 %319 to i64
  store i64 %320, i64* %RAX, align 8, !tbaa !2424
  %321 = icmp ult i32 %319, %318
  %322 = icmp ult i32 %319, -97
  %323 = or i1 %321, %322
  %324 = zext i1 %323 to i8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %324, i8* %325, align 1, !tbaa !2428
  %326 = and i32 %319, 255
  %327 = call i32 @llvm.ctpop.i32(i32 %326) #16
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %330, i8* %331, align 1, !tbaa !2442
  %332 = xor i64 -97, %315
  %333 = trunc i64 %332 to i32
  %334 = xor i32 %333, %319
  %335 = lshr i32 %334, 4
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %337, i8* %338, align 1, !tbaa !2443
  %339 = icmp eq i32 %319, 0
  %340 = zext i1 %339 to i8
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %340, i8* %341, align 1, !tbaa !2444
  %342 = lshr i32 %319, 31
  %343 = trunc i32 %342 to i8
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %343, i8* %344, align 1, !tbaa !2445
  %345 = lshr i32 %318, 31
  %346 = xor i32 %342, %345
  %347 = xor i32 %342, 1
  %348 = add nuw nsw i32 %346, %347
  %349 = icmp eq i32 %348, 2
  %350 = zext i1 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %350, i8* %351, align 1, !tbaa !2446
  %352 = load i32, i32* %EAX
  %353 = zext i32 %352 to i64
  %354 = load i64, i64* %PC
  %355 = add i64 %354, 2
  store i64 %355, i64* %PC
  %356 = and i64 %353, 4294967295
  store i64 %356, i64* %RCX, align 8, !tbaa !2424
  %357 = load i64, i64* %RAX
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 3
  store i64 %359, i64* %PC
  %360 = trunc i64 %357 to i32
  %361 = sub i32 %360, 22
  %362 = zext i32 %361 to i64
  store i64 %362, i64* %RAX, align 8, !tbaa !2424
  %363 = icmp ult i32 %360, 22
  %364 = zext i1 %363 to i8
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %364, i8* %365, align 1, !tbaa !2428
  %366 = and i32 %361, 255
  %367 = call i32 @llvm.ctpop.i32(i32 %366) #16
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  %370 = xor i8 %369, 1
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %370, i8* %371, align 1, !tbaa !2442
  %372 = xor i64 22, %357
  %373 = trunc i64 %372 to i32
  %374 = xor i32 %373, %361
  %375 = lshr i32 %374, 4
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %377, i8* %378, align 1, !tbaa !2443
  %379 = icmp eq i32 %361, 0
  %380 = zext i1 %379 to i8
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %380, i8* %381, align 1, !tbaa !2444
  %382 = lshr i32 %361, 31
  %383 = trunc i32 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %383, i8* %384, align 1, !tbaa !2445
  %385 = lshr i32 %360, 31
  %386 = xor i32 %382, %385
  %387 = add nuw nsw i32 %386, %385
  %388 = icmp eq i32 %387, 2
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %389, i8* %390, align 1, !tbaa !2446
  %391 = load i64, i64* %RBP
  %392 = sub i64 %391, 80
  %393 = load i64, i64* %RCX
  %394 = load i64, i64* %PC
  %395 = add i64 %394, 4
  store i64 %395, i64* %PC
  %396 = inttoptr i64 %392 to i64*
  store i64 %393, i64* %396
  %397 = load i64, i64* %RBP
  %398 = sub i64 %397, 84
  %399 = load i32, i32* %EAX
  %400 = zext i32 %399 to i64
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 3
  store i64 %402, i64* %PC
  %403 = inttoptr i64 %398 to i32*
  store i32 %399, i32* %403
  %404 = load i64, i64* %PC
  %405 = add i64 %404, 76
  %406 = load i64, i64* %PC
  %407 = add i64 %406, 6
  %408 = load i64, i64* %PC
  %409 = add i64 %408, 6
  store i64 %409, i64* %PC
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %411 = load i8, i8* %410, align 1, !tbaa !2428
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %413 = load i8, i8* %412, align 1, !tbaa !2444
  %414 = or i8 %413, %411
  %415 = icmp eq i8 %414, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %418 = select i1 %415, i64 %405, i64 %407
  store i64 %418, i64* %417, align 8, !tbaa !2424
  %419 = load i8, i8* %BRANCH_TAKEN
  %420 = icmp eq i8 %419, 1
  br i1 %420, label %block_4006de, label %block_400698

block_4007eb:                                     ; preds = %block_4007df
  %421 = load i64, i64* %RBP
  %422 = sub i64 %421, 32
  %423 = load i64, i64* %PC
  %424 = add i64 %423, 3
  store i64 %424, i64* %PC
  %425 = inttoptr i64 %422 to i32*
  %426 = load i32, i32* %425
  %427 = zext i32 %426 to i64
  store i64 %427, i64* %RAX, align 8, !tbaa !2424
  %428 = load i32, i32* %EAX
  %429 = zext i32 %428 to i64
  %430 = load i64, i64* %RBP
  %431 = sub i64 %430, 24
  %432 = load i64, i64* %PC
  %433 = add i64 %432, 3
  store i64 %433, i64* %PC
  %434 = inttoptr i64 %431 to i32*
  %435 = load i32, i32* %434
  %436 = sub i32 %428, %435
  %437 = icmp ult i32 %428, %435
  %438 = zext i1 %437 to i8
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %438, i8* %439, align 1, !tbaa !2428
  %440 = and i32 %436, 255
  %441 = call i32 @llvm.ctpop.i32(i32 %440) #16
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  %444 = xor i8 %443, 1
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %444, i8* %445, align 1, !tbaa !2442
  %446 = xor i32 %435, %428
  %447 = xor i32 %446, %436
  %448 = lshr i32 %447, 4
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %450, i8* %451, align 1, !tbaa !2443
  %452 = icmp eq i32 %436, 0
  %453 = zext i1 %452 to i8
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %453, i8* %454, align 1, !tbaa !2444
  %455 = lshr i32 %436, 31
  %456 = trunc i32 %455 to i8
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %456, i8* %457, align 1, !tbaa !2445
  %458 = lshr i32 %428, 31
  %459 = lshr i32 %435, 31
  %460 = xor i32 %459, %458
  %461 = xor i32 %455, %458
  %462 = add nuw nsw i32 %461, %460
  %463 = icmp eq i32 %462, 2
  %464 = zext i1 %463 to i8
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %464, i8* %465, align 1, !tbaa !2446
  %466 = load i64, i64* %PC
  %467 = add i64 %466, 38
  %468 = load i64, i64* %PC
  %469 = add i64 %468, 6
  %470 = load i64, i64* %PC
  %471 = add i64 %470, 6
  store i64 %471, i64* %PC
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %473 = load i8, i8* %472, align 1, !tbaa !2444
  %474 = icmp eq i8 %473, 0
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %477 = select i1 %474, i64 %467, i64 %469
  store i64 %477, i64* %476, align 8, !tbaa !2424
  %478 = load i8, i8* %BRANCH_TAKEN
  %479 = icmp eq i8 %478, 1
  br i1 %479, label %block_400817, label %block_4007f7

block_400862:                                     ; preds = %block_4007f7, %block_400847
  %MEMORY.0 = phi %struct.Memory* [ %1062, %block_400847 ], [ %1819, %block_4007f7 ]
  %480 = load i64, i64* %RBP
  %481 = sub i64 %480, 4
  %482 = load i64, i64* %PC
  %483 = add i64 %482, 3
  store i64 %483, i64* %PC
  %484 = inttoptr i64 %481 to i32*
  %485 = load i32, i32* %484
  %486 = zext i32 %485 to i64
  store i64 %486, i64* %RAX, align 8, !tbaa !2424
  %487 = load i64, i64* %RSP
  %488 = load i64, i64* %PC
  %489 = add i64 %488, 4
  store i64 %489, i64* %PC
  %490 = add i64 112, %487
  store i64 %490, i64* %RSP, align 8, !tbaa !2424
  %491 = icmp ult i64 %490, %487
  %492 = icmp ult i64 %490, 112
  %493 = or i1 %491, %492
  %494 = zext i1 %493 to i8
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %494, i8* %495, align 1, !tbaa !2428
  %496 = trunc i64 %490 to i32
  %497 = and i32 %496, 255
  %498 = call i32 @llvm.ctpop.i32(i32 %497) #16
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %501, i8* %502, align 1, !tbaa !2442
  %503 = xor i64 112, %487
  %504 = xor i64 %503, %490
  %505 = lshr i64 %504, 4
  %506 = trunc i64 %505 to i8
  %507 = and i8 %506, 1
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %507, i8* %508, align 1, !tbaa !2443
  %509 = icmp eq i64 %490, 0
  %510 = zext i1 %509 to i8
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %510, i8* %511, align 1, !tbaa !2444
  %512 = lshr i64 %490, 63
  %513 = trunc i64 %512 to i8
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %513, i8* %514, align 1, !tbaa !2445
  %515 = lshr i64 %487, 63
  %516 = xor i64 %512, %515
  %517 = add nuw nsw i64 %516, %512
  %518 = icmp eq i64 %517, 2
  %519 = zext i1 %518 to i8
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %519, i8* %520, align 1, !tbaa !2446
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 1
  store i64 %522, i64* %PC
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %524 = load i64, i64* %523, align 8, !tbaa !2424
  %525 = add i64 %524, 8
  %526 = inttoptr i64 %524 to i64*
  %527 = load i64, i64* %526
  store i64 %527, i64* %RBP, align 8, !tbaa !2424
  store i64 %525, i64* %523, align 8, !tbaa !2424
  %528 = load i64, i64* %PC
  %529 = add i64 %528, 1
  store i64 %529, i64* %PC
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %532 = load i64, i64* %531, align 8, !tbaa !2424
  %533 = inttoptr i64 %532 to i64*
  %534 = load i64, i64* %533
  store i64 %534, i64* %530, align 8, !tbaa !2424
  %535 = add i64 %532, 8
  store i64 %535, i64* %531, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_4007df:                                     ; preds = %block_4007c9, %block_400769, %block_4007d3
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.6, %block_400769 ], [ %MEMORY.3, %block_4007d3 ], [ %MEMORY.6, %block_4007c9 ]
  %536 = load i64, i64* %RBP
  %537 = sub i64 %536, 28
  %538 = load i64, i64* %PC
  %539 = add i64 %538, 3
  store i64 %539, i64* %PC
  %540 = inttoptr i64 %537 to i32*
  %541 = load i32, i32* %540
  %542 = zext i32 %541 to i64
  store i64 %542, i64* %RAX, align 8, !tbaa !2424
  %543 = load i32, i32* %EAX
  %544 = zext i32 %543 to i64
  %545 = load i64, i64* %RBP
  %546 = sub i64 %545, 20
  %547 = load i64, i64* %PC
  %548 = add i64 %547, 3
  store i64 %548, i64* %PC
  %549 = inttoptr i64 %546 to i32*
  %550 = load i32, i32* %549
  %551 = sub i32 %543, %550
  %552 = icmp ult i32 %543, %550
  %553 = zext i1 %552 to i8
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %553, i8* %554, align 1, !tbaa !2428
  %555 = and i32 %551, 255
  %556 = call i32 @llvm.ctpop.i32(i32 %555) #16
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  %559 = xor i8 %558, 1
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %559, i8* %560, align 1, !tbaa !2442
  %561 = xor i32 %550, %543
  %562 = xor i32 %561, %551
  %563 = lshr i32 %562, 4
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %565, i8* %566, align 1, !tbaa !2443
  %567 = icmp eq i32 %551, 0
  %568 = zext i1 %567 to i8
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %568, i8* %569, align 1, !tbaa !2444
  %570 = lshr i32 %551, 31
  %571 = trunc i32 %570 to i8
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %571, i8* %572, align 1, !tbaa !2445
  %573 = lshr i32 %543, 31
  %574 = lshr i32 %550, 31
  %575 = xor i32 %574, %573
  %576 = xor i32 %570, %573
  %577 = add nuw nsw i32 %576, %575
  %578 = icmp eq i32 %577, 2
  %579 = zext i1 %578 to i8
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %579, i8* %580, align 1, !tbaa !2446
  %581 = load i64, i64* %PC
  %582 = add i64 %581, 50
  %583 = load i64, i64* %PC
  %584 = add i64 %583, 6
  %585 = load i64, i64* %PC
  %586 = add i64 %585, 6
  store i64 %586, i64* %PC
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %588 = load i8, i8* %587, align 1, !tbaa !2444
  %589 = icmp eq i8 %588, 0
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %592 = select i1 %589, i64 %582, i64 %584
  store i64 %592, i64* %591, align 8, !tbaa !2424
  %593 = load i8, i8* %BRANCH_TAKEN
  %594 = icmp eq i8 %593, 1
  br i1 %594, label %block_400817, label %block_4007eb

block_4006de:                                     ; preds = %block_400698, %block_40066e
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.4, %block_40066e ], [ %MEMORY.4, %block_400698 ]
  %595 = load i64, i64* %PC
  %596 = add i64 %595, 10
  store i64 %596, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 195), i64* %RDI, align 8, !tbaa !2424
  %597 = load i64, i64* %PC
  %598 = add i64 %597, 2
  store i64 %598, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %599 = load i64, i64* %PC
  %600 = sub i64 %599, 682
  %601 = load i64, i64* %PC
  %602 = add i64 %601, 5
  %603 = load i64, i64* %PC
  %604 = add i64 %603, 5
  store i64 %604, i64* %PC
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %606 = load i64, i64* %605, align 8, !tbaa !2424
  %607 = add i64 %606, -8
  %608 = inttoptr i64 %607 to i64*
  store i64 %602, i64* %608
  store i64 %607, i64* %605, align 8, !tbaa !2424
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %600, i64* %609, align 8, !tbaa !2424
  %610 = load i64, i64* %PC
  %611 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %610, %struct.Memory* %MEMORY.2)
  %612 = load i64, i64* %PC
  %613 = add i64 %612, 10
  store i64 %613, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 235), i64* %RDI, align 8, !tbaa !2424
  %614 = load i64, i64* %RBP
  %615 = sub i64 %614, 88
  %616 = load i32, i32* %EAX
  %617 = zext i32 %616 to i64
  %618 = load i64, i64* %PC
  %619 = add i64 %618, 3
  store i64 %619, i64* %PC
  %620 = inttoptr i64 %615 to i32*
  store i32 %616, i32* %620
  %621 = load i64, i64* %PC
  %622 = add i64 %621, 2
  store i64 %622, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %623 = load i64, i64* %PC
  %624 = sub i64 %623, 702
  %625 = load i64, i64* %PC
  %626 = add i64 %625, 5
  %627 = load i64, i64* %PC
  %628 = add i64 %627, 5
  store i64 %628, i64* %PC
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %630 = load i64, i64* %629, align 8, !tbaa !2424
  %631 = add i64 %630, -8
  %632 = inttoptr i64 %631 to i64*
  store i64 %626, i64* %632
  store i64 %631, i64* %629, align 8, !tbaa !2424
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %624, i64* %633, align 8, !tbaa !2424
  %634 = load i64, i64* %PC
  %635 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %634, %struct.Memory* %611)
  %636 = load i64, i64* %PC
  %637 = add i64 %636, 5
  store i64 %637, i64* %PC
  store i64 4294967295, i64* %RDI, align 8, !tbaa !2424
  %638 = load i64, i64* %RBP
  %639 = sub i64 %638, 92
  %640 = load i32, i32* %EAX
  %641 = zext i32 %640 to i64
  %642 = load i64, i64* %PC
  %643 = add i64 %642, 3
  store i64 %643, i64* %PC
  %644 = inttoptr i64 %639 to i32*
  store i32 %640, i32* %644
  %645 = load i64, i64* %PC
  %646 = sub i64 %645, 683
  %647 = load i64, i64* %PC
  %648 = add i64 %647, 5
  %649 = load i64, i64* %PC
  %650 = add i64 %649, 5
  store i64 %650, i64* %PC
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %652 = load i64, i64* %651, align 8, !tbaa !2424
  %653 = add i64 %652, -8
  %654 = inttoptr i64 %653 to i64*
  store i64 %648, i64* %654
  store i64 %653, i64* %651, align 8, !tbaa !2424
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %646, i64* %655, align 8, !tbaa !2424
  %656 = load i64, i64* %PC
  %657 = call %struct.Memory* @ext_6010c8_exit(%struct.State* %0, i64 %656, %struct.Memory* %635)
  %658 = load i64, i64* %PC
  %659 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %658, %struct.Memory* %657)
  ret %struct.Memory* %659

block_4006d0:                                     ; preds = %block_400698
  %660 = load i64, i64* %RBP
  %661 = sub i64 %660, 20
  %662 = load i64, i64* %PC
  %663 = add i64 %662, 3
  store i64 %663, i64* %PC
  %664 = inttoptr i64 %661 to i32*
  %665 = load i32, i32* %664
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RAX, align 8, !tbaa !2424
  %667 = load i64, i64* %RAX
  %668 = load i64, i64* %PC
  %669 = add i64 %668, 3
  store i64 %669, i64* %PC
  %670 = trunc i64 %667 to i32
  %671 = add i32 1, %670
  %672 = zext i32 %671 to i64
  store i64 %672, i64* %RAX, align 8, !tbaa !2424
  %673 = icmp ult i32 %671, %670
  %674 = icmp ult i32 %671, 1
  %675 = or i1 %673, %674
  %676 = zext i1 %675 to i8
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %676, i8* %677, align 1, !tbaa !2428
  %678 = and i32 %671, 255
  %679 = call i32 @llvm.ctpop.i32(i32 %678) #16
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = xor i8 %681, 1
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %682, i8* %683, align 1, !tbaa !2442
  %684 = xor i64 1, %667
  %685 = trunc i64 %684 to i32
  %686 = xor i32 %685, %671
  %687 = lshr i32 %686, 4
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %689, i8* %690, align 1, !tbaa !2443
  %691 = icmp eq i32 %671, 0
  %692 = zext i1 %691 to i8
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %692, i8* %693, align 1, !tbaa !2444
  %694 = lshr i32 %671, 31
  %695 = trunc i32 %694 to i8
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %695, i8* %696, align 1, !tbaa !2445
  %697 = lshr i32 %670, 31
  %698 = xor i32 %694, %697
  %699 = add nuw nsw i32 %698, %694
  %700 = icmp eq i32 %699, 2
  %701 = zext i1 %700 to i8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %701, i8* %702, align 1, !tbaa !2446
  %703 = load i64, i64* %RBP
  %704 = sub i64 %703, 20
  %705 = load i32, i32* %EAX
  %706 = zext i32 %705 to i64
  %707 = load i64, i64* %PC
  %708 = add i64 %707, 3
  store i64 %708, i64* %PC
  %709 = inttoptr i64 %704 to i32*
  store i32 %705, i32* %709
  %710 = load i64, i64* %PC
  %711 = add i64 %710, 55
  %712 = load i64, i64* %PC
  %713 = add i64 %712, 5
  store i64 %713, i64* %PC
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %711, i64* %714, align 8, !tbaa !2424
  br label %block_400710

block_4007bf:                                     ; preds = %block_400799
  %715 = load i64, i64* %RBP
  %716 = sub i64 %715, 20
  %717 = load i64, i64* %PC
  %718 = add i64 %717, 4
  store i64 %718, i64* %PC
  %719 = inttoptr i64 %716 to i32*
  %720 = load i32, i32* %719
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %721, align 1, !tbaa !2428
  %722 = and i32 %720, 255
  %723 = call i32 @llvm.ctpop.i32(i32 %722) #16
  %724 = trunc i32 %723 to i8
  %725 = and i8 %724, 1
  %726 = xor i8 %725, 1
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %726, i8* %727, align 1, !tbaa !2442
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %728, align 1, !tbaa !2443
  %729 = icmp eq i32 %720, 0
  %730 = zext i1 %729 to i8
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %730, i8* %731, align 1, !tbaa !2444
  %732 = lshr i32 %720, 31
  %733 = trunc i32 %732 to i8
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %733, i8* %734, align 1, !tbaa !2445
  %735 = lshr i32 %720, 31
  %736 = xor i32 %732, %735
  %737 = add nuw nsw i32 %736, %735
  %738 = icmp eq i32 %737, 2
  %739 = zext i1 %738 to i8
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %739, i8* %740, align 1, !tbaa !2446
  %741 = load i64, i64* %PC
  %742 = add i64 %741, 16
  %743 = load i64, i64* %PC
  %744 = add i64 %743, 6
  %745 = load i64, i64* %PC
  %746 = add i64 %745, 6
  store i64 %746, i64* %PC
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %748 = load i8, i8* %747, align 1, !tbaa !2444
  %749 = icmp ne i8 %748, 0
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %751 = load i8, i8* %750, align 1, !tbaa !2445
  %752 = icmp ne i8 %751, 0
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %754 = load i8, i8* %753, align 1, !tbaa !2446
  %755 = icmp ne i8 %754, 0
  %756 = xor i1 %752, %755
  %757 = or i1 %749, %756
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %760 = select i1 %757, i64 %742, i64 %744
  store i64 %760, i64* %759, align 8, !tbaa !2424
  %761 = load i8, i8* %BRANCH_TAKEN
  %762 = icmp eq i8 %761, 1
  br i1 %762, label %block_4007d3, label %block_4007c9

block_4006c2:                                     ; preds = %block_400698
  %763 = load i64, i64* %RBP
  %764 = sub i64 %763, 20
  %765 = load i64, i64* %PC
  %766 = add i64 %765, 3
  store i64 %766, i64* %PC
  %767 = inttoptr i64 %764 to i32*
  %768 = load i32, i32* %767
  %769 = zext i32 %768 to i64
  store i64 %769, i64* %RAX, align 8, !tbaa !2424
  %770 = load i64, i64* %RAX
  %771 = load i64, i64* %PC
  %772 = add i64 %771, 3
  store i64 %772, i64* %PC
  %773 = trunc i64 %770 to i32
  %774 = add i32 -1, %773
  %775 = zext i32 %774 to i64
  store i64 %775, i64* %RAX, align 8, !tbaa !2424
  %776 = icmp ult i32 %774, %773
  %777 = icmp ult i32 %774, -1
  %778 = or i1 %776, %777
  %779 = zext i1 %778 to i8
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %779, i8* %780, align 1, !tbaa !2428
  %781 = and i32 %774, 255
  %782 = call i32 @llvm.ctpop.i32(i32 %781) #16
  %783 = trunc i32 %782 to i8
  %784 = and i8 %783, 1
  %785 = xor i8 %784, 1
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %785, i8* %786, align 1, !tbaa !2442
  %787 = xor i64 -1, %770
  %788 = trunc i64 %787 to i32
  %789 = xor i32 %788, %774
  %790 = lshr i32 %789, 4
  %791 = trunc i32 %790 to i8
  %792 = and i8 %791, 1
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %792, i8* %793, align 1, !tbaa !2443
  %794 = icmp eq i32 %774, 0
  %795 = zext i1 %794 to i8
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %795, i8* %796, align 1, !tbaa !2444
  %797 = lshr i32 %774, 31
  %798 = trunc i32 %797 to i8
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %798, i8* %799, align 1, !tbaa !2445
  %800 = lshr i32 %773, 31
  %801 = xor i32 %797, %800
  %802 = xor i32 %797, 1
  %803 = add nuw nsw i32 %801, %802
  %804 = icmp eq i32 %803, 2
  %805 = zext i1 %804 to i8
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %805, i8* %806, align 1, !tbaa !2446
  %807 = load i64, i64* %RBP
  %808 = sub i64 %807, 20
  %809 = load i32, i32* %EAX
  %810 = zext i32 %809 to i64
  %811 = load i64, i64* %PC
  %812 = add i64 %811, 3
  store i64 %812, i64* %PC
  %813 = inttoptr i64 %808 to i32*
  store i32 %809, i32* %813
  %814 = load i64, i64* %PC
  %815 = add i64 %814, 69
  %816 = load i64, i64* %PC
  %817 = add i64 %816, 5
  store i64 %817, i64* %PC
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %815, i64* %818, align 8, !tbaa !2424
  br label %block_400710

block_400736:                                     ; preds = %block_400710
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2424
  %819 = load i64, i64* %PC
  %820 = add i64 %819, 2
  store i64 %820, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %821 = load i64, i64* %PC
  %822 = sub i64 %821, 770
  %823 = load i64, i64* %PC
  %824 = add i64 %823, 5
  %825 = load i64, i64* %PC
  %826 = add i64 %825, 5
  store i64 %826, i64* %PC
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %828 = load i64, i64* %827, align 8, !tbaa !2424
  %829 = add i64 %828, -8
  %830 = inttoptr i64 %829 to i64*
  store i64 %824, i64* %830
  store i64 %829, i64* %827, align 8, !tbaa !2424
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %822, i64* %831, align 8, !tbaa !2424
  %832 = load i64, i64* %PC
  %833 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %832, %struct.Memory* %MEMORY.6)
  %834 = load i64, i64* %PC
  %835 = add i64 %834, 10
  store i64 %835, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2424
  %836 = load i64, i64* %RBP
  %837 = sub i64 %836, 64
  %838 = load i64, i64* %PC
  %839 = add i64 %838, 4
  store i64 %839, i64* %PC
  store i64 %837, i64* %RSI, align 8, !tbaa !2424
  %840 = load i64, i64* %RBP
  %841 = sub i64 %840, 96
  %842 = load i32, i32* %EAX
  %843 = zext i32 %842 to i64
  %844 = load i64, i64* %PC
  %845 = add i64 %844, 3
  store i64 %845, i64* %PC
  %846 = inttoptr i64 %841 to i32*
  store i32 %842, i32* %846
  %847 = load i64, i64* %PC
  %848 = add i64 %847, 2
  store i64 %848, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %849 = load i64, i64* %PC
  %850 = sub i64 %849, 794
  %851 = load i64, i64* %PC
  %852 = add i64 %851, 5
  %853 = load i64, i64* %PC
  %854 = add i64 %853, 5
  store i64 %854, i64* %PC
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %856 = load i64, i64* %855, align 8, !tbaa !2424
  %857 = add i64 %856, -8
  %858 = inttoptr i64 %857 to i64*
  store i64 %852, i64* %858
  store i64 %857, i64* %855, align 8, !tbaa !2424
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %850, i64* %859, align 8, !tbaa !2424
  %860 = load i64, i64* %PC
  %861 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %860, %struct.Memory* %833)
  %862 = load i64, i64* %RDI
  %863 = load i32, i32* %EDI
  %864 = zext i32 %863 to i64
  %865 = load i64, i64* %PC
  %866 = add i64 %865, 2
  store i64 %866, i64* %PC
  %867 = xor i64 %864, %862
  %868 = trunc i64 %867 to i32
  %869 = and i64 %867, 4294967295
  store i64 %869, i64* %RDI, align 8, !tbaa !2424
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %870, align 1, !tbaa !2428
  %871 = and i32 %868, 255
  %872 = call i32 @llvm.ctpop.i32(i32 %871) #16
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %875, i8* %876, align 1, !tbaa !2442
  %877 = icmp eq i32 %868, 0
  %878 = zext i1 %877 to i8
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %878, i8* %879, align 1, !tbaa !2444
  %880 = lshr i32 %868, 31
  %881 = trunc i32 %880 to i8
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %881, i8* %882, align 1, !tbaa !2445
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %883, align 1, !tbaa !2446
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %884, align 1, !tbaa !2443
  %885 = load i64, i64* %RBP
  %886 = sub i64 %885, 100
  %887 = load i32, i32* %EAX
  %888 = zext i32 %887 to i64
  %889 = load i64, i64* %PC
  %890 = add i64 %889, 3
  store i64 %890, i64* %PC
  %891 = inttoptr i64 %886 to i32*
  store i32 %887, i32* %891
  %892 = load i64, i64* %PC
  %893 = sub i64 %892, 772
  %894 = load i64, i64* %PC
  %895 = add i64 %894, 5
  %896 = load i64, i64* %PC
  %897 = add i64 %896, 5
  store i64 %897, i64* %PC
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %899 = load i64, i64* %898, align 8, !tbaa !2424
  %900 = add i64 %899, -8
  %901 = inttoptr i64 %900 to i64*
  store i64 %895, i64* %901
  store i64 %900, i64* %898, align 8, !tbaa !2424
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %893, i64* %902, align 8, !tbaa !2424
  %903 = load i64, i64* %PC
  %904 = call %struct.Memory* @ext_6010c8_exit(%struct.State* %0, i64 %903, %struct.Memory* %861)
  %905 = load i64, i64* %PC
  %906 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %905, %struct.Memory* %904)
  ret %struct.Memory* %906

block_4006b4:                                     ; preds = %block_400698
  %907 = load i64, i64* %RBP
  %908 = sub i64 %907, 24
  %909 = load i64, i64* %PC
  %910 = add i64 %909, 3
  store i64 %910, i64* %PC
  %911 = inttoptr i64 %908 to i32*
  %912 = load i32, i32* %911
  %913 = zext i32 %912 to i64
  store i64 %913, i64* %RAX, align 8, !tbaa !2424
  %914 = load i64, i64* %RAX
  %915 = load i64, i64* %PC
  %916 = add i64 %915, 3
  store i64 %916, i64* %PC
  %917 = trunc i64 %914 to i32
  %918 = add i32 1, %917
  %919 = zext i32 %918 to i64
  store i64 %919, i64* %RAX, align 8, !tbaa !2424
  %920 = icmp ult i32 %918, %917
  %921 = icmp ult i32 %918, 1
  %922 = or i1 %920, %921
  %923 = zext i1 %922 to i8
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %923, i8* %924, align 1, !tbaa !2428
  %925 = and i32 %918, 255
  %926 = call i32 @llvm.ctpop.i32(i32 %925) #16
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  %929 = xor i8 %928, 1
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %929, i8* %930, align 1, !tbaa !2442
  %931 = xor i64 1, %914
  %932 = trunc i64 %931 to i32
  %933 = xor i32 %932, %918
  %934 = lshr i32 %933, 4
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %936, i8* %937, align 1, !tbaa !2443
  %938 = icmp eq i32 %918, 0
  %939 = zext i1 %938 to i8
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %939, i8* %940, align 1, !tbaa !2444
  %941 = lshr i32 %918, 31
  %942 = trunc i32 %941 to i8
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %942, i8* %943, align 1, !tbaa !2445
  %944 = lshr i32 %917, 31
  %945 = xor i32 %941, %944
  %946 = add nuw nsw i32 %945, %941
  %947 = icmp eq i32 %946, 2
  %948 = zext i1 %947 to i8
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %948, i8* %949, align 1, !tbaa !2446
  %950 = load i64, i64* %RBP
  %951 = sub i64 %950, 24
  %952 = load i32, i32* %EAX
  %953 = zext i32 %952 to i64
  %954 = load i64, i64* %PC
  %955 = add i64 %954, 3
  store i64 %955, i64* %PC
  %956 = inttoptr i64 %951 to i32*
  store i32 %952, i32* %956
  %957 = load i64, i64* %PC
  %958 = add i64 %957, 83
  %959 = load i64, i64* %PC
  %960 = add i64 %959, 5
  store i64 %960, i64* %PC
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %958, i64* %961, align 8, !tbaa !2424
  br label %block_400710

block_4006a6:                                     ; preds = %block_400698
  %962 = load i64, i64* %RBP
  %963 = sub i64 %962, 24
  %964 = load i64, i64* %PC
  %965 = add i64 %964, 3
  store i64 %965, i64* %PC
  %966 = inttoptr i64 %963 to i32*
  %967 = load i32, i32* %966
  %968 = zext i32 %967 to i64
  store i64 %968, i64* %RAX, align 8, !tbaa !2424
  %969 = load i64, i64* %RAX
  %970 = load i64, i64* %PC
  %971 = add i64 %970, 3
  store i64 %971, i64* %PC
  %972 = trunc i64 %969 to i32
  %973 = add i32 -1, %972
  %974 = zext i32 %973 to i64
  store i64 %974, i64* %RAX, align 8, !tbaa !2424
  %975 = icmp ult i32 %973, %972
  %976 = icmp ult i32 %973, -1
  %977 = or i1 %975, %976
  %978 = zext i1 %977 to i8
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %978, i8* %979, align 1, !tbaa !2428
  %980 = and i32 %973, 255
  %981 = call i32 @llvm.ctpop.i32(i32 %980) #16
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  %984 = xor i8 %983, 1
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %984, i8* %985, align 1, !tbaa !2442
  %986 = xor i64 -1, %969
  %987 = trunc i64 %986 to i32
  %988 = xor i32 %987, %973
  %989 = lshr i32 %988, 4
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %991, i8* %992, align 1, !tbaa !2443
  %993 = icmp eq i32 %973, 0
  %994 = zext i1 %993 to i8
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %994, i8* %995, align 1, !tbaa !2444
  %996 = lshr i32 %973, 31
  %997 = trunc i32 %996 to i8
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %997, i8* %998, align 1, !tbaa !2445
  %999 = lshr i32 %972, 31
  %1000 = xor i32 %996, %999
  %1001 = xor i32 %996, 1
  %1002 = add nuw nsw i32 %1000, %1001
  %1003 = icmp eq i32 %1002, 2
  %1004 = zext i1 %1003 to i8
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1004, i8* %1005, align 1, !tbaa !2446
  %1006 = load i64, i64* %RBP
  %1007 = sub i64 %1006, 24
  %1008 = load i32, i32* %EAX
  %1009 = zext i32 %1008 to i64
  %1010 = load i64, i64* %PC
  %1011 = add i64 %1010, 3
  store i64 %1011, i64* %PC
  %1012 = inttoptr i64 %1007 to i32*
  store i32 %1008, i32* %1012
  %1013 = load i64, i64* %PC
  %1014 = add i64 %1013, 97
  %1015 = load i64, i64* %PC
  %1016 = add i64 %1015, 5
  store i64 %1016, i64* %PC
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1014, i64* %1017, align 8, !tbaa !2424
  br label %block_400710

block_4007d3:                                     ; preds = %block_40078f, %block_4007c9, %block_400799, %block_4007bf
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.6, %block_40078f ], [ %MEMORY.6, %block_400799 ], [ %MEMORY.6, %block_4007bf ], [ %MEMORY.6, %block_4007c9 ]
  %1018 = load i64, i64* %RBP
  %1019 = sub i64 %1018, 28
  %1020 = load i64, i64* %PC
  %1021 = add i64 %1020, 3
  store i64 %1021, i64* %PC
  %1022 = inttoptr i64 %1019 to i32*
  %1023 = load i32, i32* %1022
  %1024 = zext i32 %1023 to i64
  store i64 %1024, i64* %RAX, align 8, !tbaa !2424
  %1025 = load i64, i64* %RBP
  %1026 = sub i64 %1025, 20
  %1027 = load i32, i32* %EAX
  %1028 = zext i32 %1027 to i64
  %1029 = load i64, i64* %PC
  %1030 = add i64 %1029, 3
  store i64 %1030, i64* %PC
  %1031 = inttoptr i64 %1026 to i32*
  store i32 %1027, i32* %1031
  %1032 = load i64, i64* %RBP
  %1033 = sub i64 %1032, 32
  %1034 = load i64, i64* %PC
  %1035 = add i64 %1034, 3
  store i64 %1035, i64* %PC
  %1036 = inttoptr i64 %1033 to i32*
  %1037 = load i32, i32* %1036
  %1038 = zext i32 %1037 to i64
  store i64 %1038, i64* %RAX, align 8, !tbaa !2424
  %1039 = load i64, i64* %RBP
  %1040 = sub i64 %1039, 24
  %1041 = load i32, i32* %EAX
  %1042 = zext i32 %1041 to i64
  %1043 = load i64, i64* %PC
  %1044 = add i64 %1043, 3
  store i64 %1044, i64* %PC
  %1045 = inttoptr i64 %1040 to i32*
  store i32 %1041, i32* %1045
  br label %block_4007df

block_400847:                                     ; preds = %block_400664
  %1046 = load i64, i64* %PC
  %1047 = add i64 %1046, 10
  store i64 %1047, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  %1048 = load i64, i64* %PC
  %1049 = add i64 %1048, 2
  store i64 %1049, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %1050 = load i64, i64* %PC
  %1051 = sub i64 %1050, 1043
  %1052 = load i64, i64* %PC
  %1053 = add i64 %1052, 5
  %1054 = load i64, i64* %PC
  %1055 = add i64 %1054, 5
  store i64 %1055, i64* %PC
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1057 = load i64, i64* %1056, align 8, !tbaa !2424
  %1058 = add i64 %1057, -8
  %1059 = inttoptr i64 %1058 to i64*
  store i64 %1053, i64* %1059
  store i64 %1058, i64* %1056, align 8, !tbaa !2424
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1051, i64* %1060, align 8, !tbaa !2424
  %1061 = load i64, i64* %PC
  %1062 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1061, %struct.Memory* %MEMORY.4)
  %1063 = load i64, i64* %RBP
  %1064 = sub i64 %1063, 4
  %1065 = load i64, i64* %PC
  %1066 = add i64 %1065, 7
  store i64 %1066, i64* %PC
  %1067 = inttoptr i64 %1064 to i32*
  store i32 1, i32* %1067
  %1068 = load i64, i64* %RBP
  %1069 = sub i64 %1068, 108
  %1070 = load i32, i32* %EAX
  %1071 = zext i32 %1070 to i64
  %1072 = load i64, i64* %PC
  %1073 = add i64 %1072, 3
  store i64 %1073, i64* %PC
  %1074 = inttoptr i64 %1069 to i32*
  store i32 %1070, i32* %1074
  br label %block_400862

block_400799:                                     ; preds = %block_40078f
  %1075 = load i64, i64* %PC
  %1076 = add i64 %1075, 10
  store i64 %1076, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %1077 = load i64, i64* %RBP
  %1078 = sub i64 %1077, 24
  %1079 = load i64, i64* %PC
  %1080 = add i64 %1079, 4
  store i64 %1080, i64* %PC
  %1081 = inttoptr i64 %1078 to i32*
  %1082 = load i32, i32* %1081
  %1083 = sext i32 %1082 to i64
  store i64 %1083, i64* %RCX, align 8, !tbaa !2424
  %1084 = load i64, i64* %RCX
  %1085 = load i64, i64* %PC
  %1086 = add i64 %1085, 4
  store i64 %1086, i64* %PC
  %1087 = sext i64 %1084 to i128
  %1088 = and i128 %1087, -18446744073709551616
  %1089 = zext i64 %1084 to i128
  %1090 = or i128 %1088, %1089
  %1091 = mul nsw i128 11, %1090
  %1092 = trunc i128 %1091 to i64
  store i64 %1092, i64* %RCX, align 8, !tbaa !2424
  %1093 = sext i64 %1092 to i128
  %1094 = icmp ne i128 %1093, %1091
  %1095 = zext i1 %1094 to i8
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1095, i8* %1096, align 1, !tbaa !2428
  %1097 = trunc i128 %1091 to i32
  %1098 = and i32 %1097, 255
  %1099 = call i32 @llvm.ctpop.i32(i32 %1098) #16
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = xor i8 %1101, 1
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1102, i8* %1103, align 1, !tbaa !2442
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1104, align 1, !tbaa !2443
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1105, align 1, !tbaa !2444
  %1106 = lshr i64 %1092, 63
  %1107 = trunc i64 %1106 to i8
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1107, i8* %1108, align 1, !tbaa !2445
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1095, i8* %1109, align 1, !tbaa !2446
  %1110 = load i64, i64* %RAX
  %1111 = load i64, i64* %RCX
  %1112 = load i64, i64* %PC
  %1113 = add i64 %1112, 3
  store i64 %1113, i64* %PC
  %1114 = add i64 %1111, %1110
  store i64 %1114, i64* %RAX, align 8, !tbaa !2424
  %1115 = icmp ult i64 %1114, %1110
  %1116 = icmp ult i64 %1114, %1111
  %1117 = or i1 %1115, %1116
  %1118 = zext i1 %1117 to i8
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1118, i8* %1119, align 1, !tbaa !2428
  %1120 = trunc i64 %1114 to i32
  %1121 = and i32 %1120, 255
  %1122 = call i32 @llvm.ctpop.i32(i32 %1121) #16
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  %1125 = xor i8 %1124, 1
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1125, i8* %1126, align 1, !tbaa !2442
  %1127 = xor i64 %1111, %1110
  %1128 = xor i64 %1127, %1114
  %1129 = lshr i64 %1128, 4
  %1130 = trunc i64 %1129 to i8
  %1131 = and i8 %1130, 1
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1131, i8* %1132, align 1, !tbaa !2443
  %1133 = icmp eq i64 %1114, 0
  %1134 = zext i1 %1133 to i8
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1134, i8* %1135, align 1, !tbaa !2444
  %1136 = lshr i64 %1114, 63
  %1137 = trunc i64 %1136 to i8
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1137, i8* %1138, align 1, !tbaa !2445
  %1139 = lshr i64 %1110, 63
  %1140 = lshr i64 %1111, 63
  %1141 = xor i64 %1136, %1139
  %1142 = xor i64 %1136, %1140
  %1143 = add nuw nsw i64 %1141, %1142
  %1144 = icmp eq i64 %1143, 2
  %1145 = zext i1 %1144 to i8
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1145, i8* %1146, align 1, !tbaa !2446
  %1147 = load i64, i64* %RBP
  %1148 = sub i64 %1147, 20
  %1149 = load i64, i64* %PC
  %1150 = add i64 %1149, 4
  store i64 %1150, i64* %PC
  %1151 = inttoptr i64 %1148 to i32*
  %1152 = load i32, i32* %1151
  %1153 = sext i32 %1152 to i64
  store i64 %1153, i64* %RCX, align 8, !tbaa !2424
  %1154 = load i64, i64* %RAX
  %1155 = load i64, i64* %RCX
  %1156 = add i64 %1155, %1154
  %1157 = load i64, i64* %PC
  %1158 = add i64 %1157, 4
  store i64 %1158, i64* %PC
  %1159 = inttoptr i64 %1156 to i8*
  %1160 = load i8, i8* %1159
  %1161 = sext i8 %1160 to i64
  %1162 = and i64 %1161, 4294967295
  store i64 %1162, i64* %RDX, align 8, !tbaa !2424
  %1163 = load i32, i32* %EDX
  %1164 = zext i32 %1163 to i64
  %1165 = load i64, i64* %PC
  %1166 = add i64 %1165, 3
  store i64 %1166, i64* %PC
  %1167 = sub i32 %1163, 124
  %1168 = icmp ult i32 %1163, 124
  %1169 = zext i1 %1168 to i8
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1169, i8* %1170, align 1, !tbaa !2428
  %1171 = and i32 %1167, 255
  %1172 = call i32 @llvm.ctpop.i32(i32 %1171) #16
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  %1175 = xor i8 %1174, 1
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1175, i8* %1176, align 1, !tbaa !2442
  %1177 = xor i64 124, %1164
  %1178 = trunc i64 %1177 to i32
  %1179 = xor i32 %1178, %1167
  %1180 = lshr i32 %1179, 4
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1182, i8* %1183, align 1, !tbaa !2443
  %1184 = icmp eq i32 %1167, 0
  %1185 = zext i1 %1184 to i8
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1185, i8* %1186, align 1, !tbaa !2444
  %1187 = lshr i32 %1167, 31
  %1188 = trunc i32 %1187 to i8
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1188, i8* %1189, align 1, !tbaa !2445
  %1190 = lshr i32 %1163, 31
  %1191 = xor i32 %1187, %1190
  %1192 = add nuw nsw i32 %1191, %1190
  %1193 = icmp eq i32 %1192, 2
  %1194 = zext i1 %1193 to i8
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1194, i8* %1195, align 1, !tbaa !2446
  %1196 = load i64, i64* %PC
  %1197 = add i64 %1196, 26
  %1198 = load i64, i64* %PC
  %1199 = add i64 %1198, 6
  %1200 = load i64, i64* %PC
  %1201 = add i64 %1200, 6
  store i64 %1201, i64* %PC
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1203 = load i8, i8* %1202, align 1, !tbaa !2444
  %1204 = icmp eq i8 %1203, 0
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1207 = select i1 %1204, i64 %1197, i64 %1199
  store i64 %1207, i64* %1206, align 8, !tbaa !2424
  %1208 = load i8, i8* %BRANCH_TAKEN
  %1209 = icmp eq i8 %1208, 1
  br i1 %1209, label %block_4007d3, label %block_4007bf

block_400698:                                     ; preds = %block_40066e
  %1210 = load i64, i64* %RBP
  %1211 = sub i64 %1210, 80
  %1212 = load i64, i64* %PC
  %1213 = add i64 %1212, 4
  store i64 %1213, i64* %PC
  %1214 = inttoptr i64 %1211 to i64*
  %1215 = load i64, i64* %1214
  store i64 %1215, i64* %RAX, align 8, !tbaa !2424
  %1216 = load i64, i64* %RAX
  %1217 = mul i64 %1216, 8
  %1218 = add i64 %1217, add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 8)
  %1219 = load i64, i64* %PC
  %1220 = add i64 %1219, 8
  store i64 %1220, i64* %PC
  %1221 = inttoptr i64 %1218 to i64*
  %1222 = load i64, i64* %1221
  store i64 %1222, i64* %RCX, align 8, !tbaa !2424
  %1223 = load i64, i64* %RCX
  %1224 = load i64, i64* %PC
  %1225 = add i64 %1224, 2
  store i64 %1225, i64* %PC
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1223, i64* %1226, align 8, !tbaa !2424
  %1227 = load i64, i64* %PC
  switch i64 %1227, label %1837 [
    i64 4196034, label %block_4006c2
    i64 4196048, label %block_4006d0
    i64 4196020, label %block_4006b4
    i64 4196062, label %block_4006de
    i64 4196006, label %block_4006a6
  ]

block_400769:                                     ; preds = %block_400710
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %1228 = load i64, i64* %RBP
  %1229 = sub i64 %1228, 24
  %1230 = load i64, i64* %PC
  %1231 = add i64 %1230, 4
  store i64 %1231, i64* %PC
  %1232 = inttoptr i64 %1229 to i32*
  %1233 = load i32, i32* %1232
  %1234 = sext i32 %1233 to i64
  store i64 %1234, i64* %RCX, align 8, !tbaa !2424
  %1235 = load i64, i64* %RCX
  %1236 = load i64, i64* %PC
  %1237 = add i64 %1236, 4
  store i64 %1237, i64* %PC
  %1238 = sext i64 %1235 to i128
  %1239 = and i128 %1238, -18446744073709551616
  %1240 = zext i64 %1235 to i128
  %1241 = or i128 %1239, %1240
  %1242 = mul nsw i128 11, %1241
  %1243 = trunc i128 %1242 to i64
  store i64 %1243, i64* %RCX, align 8, !tbaa !2424
  %1244 = sext i64 %1243 to i128
  %1245 = icmp ne i128 %1244, %1242
  %1246 = zext i1 %1245 to i8
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1246, i8* %1247, align 1, !tbaa !2428
  %1248 = trunc i128 %1242 to i32
  %1249 = and i32 %1248, 255
  %1250 = call i32 @llvm.ctpop.i32(i32 %1249) #16
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1253, i8* %1254, align 1, !tbaa !2442
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1255, align 1, !tbaa !2443
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1256, align 1, !tbaa !2444
  %1257 = lshr i64 %1243, 63
  %1258 = trunc i64 %1257 to i8
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1258, i8* %1259, align 1, !tbaa !2445
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1246, i8* %1260, align 1, !tbaa !2446
  %1261 = load i64, i64* %RAX
  %1262 = load i64, i64* %RCX
  %1263 = load i64, i64* %PC
  %1264 = add i64 %1263, 3
  store i64 %1264, i64* %PC
  %1265 = add i64 %1262, %1261
  store i64 %1265, i64* %RAX, align 8, !tbaa !2424
  %1266 = icmp ult i64 %1265, %1261
  %1267 = icmp ult i64 %1265, %1262
  %1268 = or i1 %1266, %1267
  %1269 = zext i1 %1268 to i8
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1269, i8* %1270, align 1, !tbaa !2428
  %1271 = trunc i64 %1265 to i32
  %1272 = and i32 %1271, 255
  %1273 = call i32 @llvm.ctpop.i32(i32 %1272) #16
  %1274 = trunc i32 %1273 to i8
  %1275 = and i8 %1274, 1
  %1276 = xor i8 %1275, 1
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1276, i8* %1277, align 1, !tbaa !2442
  %1278 = xor i64 %1262, %1261
  %1279 = xor i64 %1278, %1265
  %1280 = lshr i64 %1279, 4
  %1281 = trunc i64 %1280 to i8
  %1282 = and i8 %1281, 1
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1282, i8* %1283, align 1, !tbaa !2443
  %1284 = icmp eq i64 %1265, 0
  %1285 = zext i1 %1284 to i8
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1285, i8* %1286, align 1, !tbaa !2444
  %1287 = lshr i64 %1265, 63
  %1288 = trunc i64 %1287 to i8
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1288, i8* %1289, align 1, !tbaa !2445
  %1290 = lshr i64 %1261, 63
  %1291 = lshr i64 %1262, 63
  %1292 = xor i64 %1287, %1290
  %1293 = xor i64 %1287, %1291
  %1294 = add nuw nsw i64 %1292, %1293
  %1295 = icmp eq i64 %1294, 2
  %1296 = zext i1 %1295 to i8
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1296, i8* %1297, align 1, !tbaa !2446
  %1298 = load i64, i64* %RBP
  %1299 = sub i64 %1298, 20
  %1300 = load i64, i64* %PC
  %1301 = add i64 %1300, 4
  store i64 %1301, i64* %PC
  %1302 = inttoptr i64 %1299 to i32*
  %1303 = load i32, i32* %1302
  %1304 = sext i32 %1303 to i64
  store i64 %1304, i64* %RCX, align 8, !tbaa !2424
  %1305 = load i64, i64* %RAX
  %1306 = load i64, i64* %RCX
  %1307 = add i64 %1306, %1305
  %1308 = load i64, i64* %PC
  %1309 = add i64 %1308, 4
  store i64 %1309, i64* %PC
  %1310 = inttoptr i64 %1307 to i8*
  %1311 = load i8, i8* %1310
  %1312 = sext i8 %1311 to i64
  %1313 = and i64 %1312, 4294967295
  store i64 %1313, i64* %RDX, align 8, !tbaa !2424
  %1314 = load i32, i32* %EDX
  %1315 = zext i32 %1314 to i64
  %1316 = load i64, i64* %PC
  %1317 = add i64 %1316, 3
  store i64 %1317, i64* %PC
  %1318 = sub i32 %1314, 32
  %1319 = icmp ult i32 %1314, 32
  %1320 = zext i1 %1319 to i8
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1320, i8* %1321, align 1, !tbaa !2428
  %1322 = and i32 %1318, 255
  %1323 = call i32 @llvm.ctpop.i32(i32 %1322) #16
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  %1326 = xor i8 %1325, 1
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1326, i8* %1327, align 1, !tbaa !2442
  %1328 = xor i64 32, %1315
  %1329 = trunc i64 %1328 to i32
  %1330 = xor i32 %1329, %1318
  %1331 = lshr i32 %1330, 4
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1333, i8* %1334, align 1, !tbaa !2443
  %1335 = icmp eq i32 %1318, 0
  %1336 = zext i1 %1335 to i8
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1336, i8* %1337, align 1, !tbaa !2444
  %1338 = lshr i32 %1318, 31
  %1339 = trunc i32 %1338 to i8
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1339, i8* %1340, align 1, !tbaa !2445
  %1341 = lshr i32 %1314, 31
  %1342 = xor i32 %1338, %1341
  %1343 = add nuw nsw i32 %1342, %1341
  %1344 = icmp eq i32 %1343, 2
  %1345 = zext i1 %1344 to i8
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1345, i8* %1346, align 1, !tbaa !2446
  %1347 = load i64, i64* %PC
  %1348 = add i64 %1347, 86
  %1349 = load i64, i64* %PC
  %1350 = add i64 %1349, 6
  %1351 = load i64, i64* %PC
  %1352 = add i64 %1351, 6
  store i64 %1352, i64* %PC
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1354 = load i8, i8* %1353, align 1, !tbaa !2444
  store i8 %1354, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1356 = icmp ne i8 %1354, 0
  %1357 = select i1 %1356, i64 %1348, i64 %1350
  store i64 %1357, i64* %1355, align 8, !tbaa !2424
  %1358 = load i8, i8* %BRANCH_TAKEN
  %1359 = icmp eq i8 %1358, 1
  br i1 %1359, label %block_4007df, label %block_40078f

block_400664:                                     ; preds = %block_400817, %block_400600
  %MEMORY.4 = phi %struct.Memory* [ %263, %block_400600 ], [ %1510, %block_400817 ]
  %1360 = load i64, i64* %RBP
  %1361 = sub i64 %1360, 36
  %1362 = load i64, i64* %PC
  %1363 = add i64 %1362, 4
  store i64 %1363, i64* %PC
  %1364 = inttoptr i64 %1361 to i32*
  %1365 = load i32, i32* %1364
  %1366 = sub i32 %1365, 28
  %1367 = icmp ult i32 %1365, 28
  %1368 = zext i1 %1367 to i8
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1368, i8* %1369, align 1, !tbaa !2428
  %1370 = and i32 %1366, 255
  %1371 = call i32 @llvm.ctpop.i32(i32 %1370) #16
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  %1374 = xor i8 %1373, 1
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1374, i8* %1375, align 1, !tbaa !2442
  %1376 = xor i32 %1365, 28
  %1377 = xor i32 %1376, %1366
  %1378 = lshr i32 %1377, 4
  %1379 = trunc i32 %1378 to i8
  %1380 = and i8 %1379, 1
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1380, i8* %1381, align 1, !tbaa !2443
  %1382 = icmp eq i32 %1366, 0
  %1383 = zext i1 %1382 to i8
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1383, i8* %1384, align 1, !tbaa !2444
  %1385 = lshr i32 %1366, 31
  %1386 = trunc i32 %1385 to i8
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1386, i8* %1387, align 1, !tbaa !2445
  %1388 = lshr i32 %1365, 31
  %1389 = xor i32 %1385, %1388
  %1390 = add nuw nsw i32 %1389, %1388
  %1391 = icmp eq i32 %1390, 2
  %1392 = zext i1 %1391 to i8
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1392, i8* %1393, align 1, !tbaa !2446
  %1394 = load i64, i64* %PC
  %1395 = add i64 %1394, 479
  %1396 = load i64, i64* %PC
  %1397 = add i64 %1396, 6
  %1398 = load i64, i64* %PC
  %1399 = add i64 %1398, 6
  store i64 %1399, i64* %PC
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1401 = load i8, i8* %1400, align 1, !tbaa !2445
  %1402 = icmp ne i8 %1401, 0
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1404 = load i8, i8* %1403, align 1, !tbaa !2446
  %1405 = icmp ne i8 %1404, 0
  %1406 = xor i1 %1402, %1405
  %1407 = xor i1 %1406, true
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1410 = select i1 %1406, i64 %1397, i64 %1395
  store i64 %1410, i64* %1409, align 8, !tbaa !2424
  %1411 = load i8, i8* %BRANCH_TAKEN
  %1412 = icmp eq i8 %1411, 1
  br i1 %1412, label %block_400847, label %block_40066e

block_400817:                                     ; preds = %block_4007df, %block_4007eb
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.1, %block_4007df ], [ %MEMORY.1, %block_4007eb ]
  %1413 = load i64, i64* %PC
  %1414 = add i64 %1413, 10
  store i64 %1414, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %1415 = load i64, i64* %RBP
  %1416 = sub i64 %1415, 24
  %1417 = load i64, i64* %PC
  %1418 = add i64 %1417, 4
  store i64 %1418, i64* %PC
  %1419 = inttoptr i64 %1416 to i32*
  %1420 = load i32, i32* %1419
  %1421 = sext i32 %1420 to i64
  store i64 %1421, i64* %RCX, align 8, !tbaa !2424
  %1422 = load i64, i64* %RCX
  %1423 = load i64, i64* %PC
  %1424 = add i64 %1423, 4
  store i64 %1424, i64* %PC
  %1425 = sext i64 %1422 to i128
  %1426 = and i128 %1425, -18446744073709551616
  %1427 = zext i64 %1422 to i128
  %1428 = or i128 %1426, %1427
  %1429 = mul nsw i128 11, %1428
  %1430 = trunc i128 %1429 to i64
  store i64 %1430, i64* %RCX, align 8, !tbaa !2424
  %1431 = sext i64 %1430 to i128
  %1432 = icmp ne i128 %1431, %1429
  %1433 = zext i1 %1432 to i8
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1433, i8* %1434, align 1, !tbaa !2428
  %1435 = trunc i128 %1429 to i32
  %1436 = and i32 %1435, 255
  %1437 = call i32 @llvm.ctpop.i32(i32 %1436) #16
  %1438 = trunc i32 %1437 to i8
  %1439 = and i8 %1438, 1
  %1440 = xor i8 %1439, 1
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1440, i8* %1441, align 1, !tbaa !2442
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1442, align 1, !tbaa !2443
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1443, align 1, !tbaa !2444
  %1444 = lshr i64 %1430, 63
  %1445 = trunc i64 %1444 to i8
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1445, i8* %1446, align 1, !tbaa !2445
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1433, i8* %1447, align 1, !tbaa !2446
  %1448 = load i64, i64* %RAX
  %1449 = load i64, i64* %RCX
  %1450 = load i64, i64* %PC
  %1451 = add i64 %1450, 3
  store i64 %1451, i64* %PC
  %1452 = add i64 %1449, %1448
  store i64 %1452, i64* %RAX, align 8, !tbaa !2424
  %1453 = icmp ult i64 %1452, %1448
  %1454 = icmp ult i64 %1452, %1449
  %1455 = or i1 %1453, %1454
  %1456 = zext i1 %1455 to i8
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1456, i8* %1457, align 1, !tbaa !2428
  %1458 = trunc i64 %1452 to i32
  %1459 = and i32 %1458, 255
  %1460 = call i32 @llvm.ctpop.i32(i32 %1459) #16
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  %1463 = xor i8 %1462, 1
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1463, i8* %1464, align 1, !tbaa !2442
  %1465 = xor i64 %1449, %1448
  %1466 = xor i64 %1465, %1452
  %1467 = lshr i64 %1466, 4
  %1468 = trunc i64 %1467 to i8
  %1469 = and i8 %1468, 1
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1469, i8* %1470, align 1, !tbaa !2443
  %1471 = icmp eq i64 %1452, 0
  %1472 = zext i1 %1471 to i8
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1472, i8* %1473, align 1, !tbaa !2444
  %1474 = lshr i64 %1452, 63
  %1475 = trunc i64 %1474 to i8
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1475, i8* %1476, align 1, !tbaa !2445
  %1477 = lshr i64 %1448, 63
  %1478 = lshr i64 %1449, 63
  %1479 = xor i64 %1474, %1477
  %1480 = xor i64 %1474, %1478
  %1481 = add nuw nsw i64 %1479, %1480
  %1482 = icmp eq i64 %1481, 2
  %1483 = zext i1 %1482 to i8
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1483, i8* %1484, align 1, !tbaa !2446
  %1485 = load i64, i64* %RBP
  %1486 = sub i64 %1485, 20
  %1487 = load i64, i64* %PC
  %1488 = add i64 %1487, 4
  store i64 %1488, i64* %PC
  %1489 = inttoptr i64 %1486 to i32*
  %1490 = load i32, i32* %1489
  %1491 = sext i32 %1490 to i64
  store i64 %1491, i64* %RCX, align 8, !tbaa !2424
  %1492 = load i64, i64* %RAX
  %1493 = load i64, i64* %RCX
  %1494 = add i64 %1493, %1492
  %1495 = load i64, i64* %PC
  %1496 = add i64 %1495, 4
  store i64 %1496, i64* %PC
  %1497 = inttoptr i64 %1494 to i8*
  store i8 88, i8* %1497
  %1498 = load i64, i64* %PC
  %1499 = sub i64 %1498, 740
  %1500 = load i64, i64* %PC
  %1501 = add i64 %1500, 5
  %1502 = load i64, i64* %PC
  %1503 = add i64 %1502, 5
  store i64 %1503, i64* %PC
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1505 = load i64, i64* %1504, align 8, !tbaa !2424
  %1506 = add i64 %1505, -8
  %1507 = inttoptr i64 %1506 to i64*
  store i64 %1501, i64* %1507
  store i64 %1506, i64* %1504, align 8, !tbaa !2424
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1499, i64* %1508, align 8, !tbaa !2424
  %1509 = load i64, i64* %PC
  %1510 = call %struct.Memory* @sub_400550_draw(%struct.State* %0, i64 %1509, %struct.Memory* %MEMORY.5)
  %1511 = load i64, i64* %RBP
  %1512 = sub i64 %1511, 36
  %1513 = load i64, i64* %PC
  %1514 = add i64 %1513, 3
  store i64 %1514, i64* %PC
  %1515 = inttoptr i64 %1512 to i32*
  %1516 = load i32, i32* %1515
  %1517 = zext i32 %1516 to i64
  store i64 %1517, i64* %RDX, align 8, !tbaa !2424
  %1518 = load i64, i64* %RDX
  %1519 = load i64, i64* %PC
  %1520 = add i64 %1519, 3
  store i64 %1520, i64* %PC
  %1521 = trunc i64 %1518 to i32
  %1522 = add i32 1, %1521
  %1523 = zext i32 %1522 to i64
  store i64 %1523, i64* %RDX, align 8, !tbaa !2424
  %1524 = icmp ult i32 %1522, %1521
  %1525 = icmp ult i32 %1522, 1
  %1526 = or i1 %1524, %1525
  %1527 = zext i1 %1526 to i8
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1527, i8* %1528, align 1, !tbaa !2428
  %1529 = and i32 %1522, 255
  %1530 = call i32 @llvm.ctpop.i32(i32 %1529) #16
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  %1533 = xor i8 %1532, 1
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1533, i8* %1534, align 1, !tbaa !2442
  %1535 = xor i64 1, %1518
  %1536 = trunc i64 %1535 to i32
  %1537 = xor i32 %1536, %1522
  %1538 = lshr i32 %1537, 4
  %1539 = trunc i32 %1538 to i8
  %1540 = and i8 %1539, 1
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1540, i8* %1541, align 1, !tbaa !2443
  %1542 = icmp eq i32 %1522, 0
  %1543 = zext i1 %1542 to i8
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1543, i8* %1544, align 1, !tbaa !2444
  %1545 = lshr i32 %1522, 31
  %1546 = trunc i32 %1545 to i8
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1546, i8* %1547, align 1, !tbaa !2445
  %1548 = lshr i32 %1521, 31
  %1549 = xor i32 %1545, %1548
  %1550 = add nuw nsw i32 %1549, %1545
  %1551 = icmp eq i32 %1550, 2
  %1552 = zext i1 %1551 to i8
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1552, i8* %1553, align 1, !tbaa !2446
  %1554 = load i64, i64* %RBP
  %1555 = sub i64 %1554, 36
  %1556 = load i32, i32* %EDX
  %1557 = zext i32 %1556 to i64
  %1558 = load i64, i64* %PC
  %1559 = add i64 %1558, 3
  store i64 %1559, i64* %PC
  %1560 = inttoptr i64 %1555 to i32*
  store i32 %1556, i32* %1560
  %1561 = load i64, i64* %PC
  %1562 = sub i64 %1561, 478
  %1563 = load i64, i64* %PC
  %1564 = add i64 %1563, 5
  store i64 %1564, i64* %PC
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1562, i64* %1565, align 8, !tbaa !2424
  br label %block_400664

block_400710:                                     ; preds = %block_4006a6, %block_4006b4, %block_4006c2, %block_4006d0
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.4, %block_4006a6 ], [ %MEMORY.4, %block_4006b4 ], [ %MEMORY.4, %block_4006d0 ], [ %MEMORY.4, %block_4006c2 ]
  %1566 = load i64, i64* %PC
  %1567 = add i64 %1566, 10
  store i64 %1567, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %1568 = load i64, i64* %RBP
  %1569 = sub i64 %1568, 24
  %1570 = load i64, i64* %PC
  %1571 = add i64 %1570, 4
  store i64 %1571, i64* %PC
  %1572 = inttoptr i64 %1569 to i32*
  %1573 = load i32, i32* %1572
  %1574 = sext i32 %1573 to i64
  store i64 %1574, i64* %RCX, align 8, !tbaa !2424
  %1575 = load i64, i64* %RCX
  %1576 = load i64, i64* %PC
  %1577 = add i64 %1576, 4
  store i64 %1577, i64* %PC
  %1578 = sext i64 %1575 to i128
  %1579 = and i128 %1578, -18446744073709551616
  %1580 = zext i64 %1575 to i128
  %1581 = or i128 %1579, %1580
  %1582 = mul nsw i128 11, %1581
  %1583 = trunc i128 %1582 to i64
  store i64 %1583, i64* %RCX, align 8, !tbaa !2424
  %1584 = sext i64 %1583 to i128
  %1585 = icmp ne i128 %1584, %1582
  %1586 = zext i1 %1585 to i8
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1586, i8* %1587, align 1, !tbaa !2428
  %1588 = trunc i128 %1582 to i32
  %1589 = and i32 %1588, 255
  %1590 = call i32 @llvm.ctpop.i32(i32 %1589) #16
  %1591 = trunc i32 %1590 to i8
  %1592 = and i8 %1591, 1
  %1593 = xor i8 %1592, 1
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1593, i8* %1594, align 1, !tbaa !2442
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1595, align 1, !tbaa !2443
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1596, align 1, !tbaa !2444
  %1597 = lshr i64 %1583, 63
  %1598 = trunc i64 %1597 to i8
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1598, i8* %1599, align 1, !tbaa !2445
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1586, i8* %1600, align 1, !tbaa !2446
  %1601 = load i64, i64* %RAX
  %1602 = load i64, i64* %RCX
  %1603 = load i64, i64* %PC
  %1604 = add i64 %1603, 3
  store i64 %1604, i64* %PC
  %1605 = add i64 %1602, %1601
  store i64 %1605, i64* %RAX, align 8, !tbaa !2424
  %1606 = icmp ult i64 %1605, %1601
  %1607 = icmp ult i64 %1605, %1602
  %1608 = or i1 %1606, %1607
  %1609 = zext i1 %1608 to i8
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1609, i8* %1610, align 1, !tbaa !2428
  %1611 = trunc i64 %1605 to i32
  %1612 = and i32 %1611, 255
  %1613 = call i32 @llvm.ctpop.i32(i32 %1612) #16
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  %1616 = xor i8 %1615, 1
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1616, i8* %1617, align 1, !tbaa !2442
  %1618 = xor i64 %1602, %1601
  %1619 = xor i64 %1618, %1605
  %1620 = lshr i64 %1619, 4
  %1621 = trunc i64 %1620 to i8
  %1622 = and i8 %1621, 1
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1622, i8* %1623, align 1, !tbaa !2443
  %1624 = icmp eq i64 %1605, 0
  %1625 = zext i1 %1624 to i8
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1625, i8* %1626, align 1, !tbaa !2444
  %1627 = lshr i64 %1605, 63
  %1628 = trunc i64 %1627 to i8
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1628, i8* %1629, align 1, !tbaa !2445
  %1630 = lshr i64 %1601, 63
  %1631 = lshr i64 %1602, 63
  %1632 = xor i64 %1627, %1630
  %1633 = xor i64 %1627, %1631
  %1634 = add nuw nsw i64 %1632, %1633
  %1635 = icmp eq i64 %1634, 2
  %1636 = zext i1 %1635 to i8
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1636, i8* %1637, align 1, !tbaa !2446
  %1638 = load i64, i64* %RBP
  %1639 = sub i64 %1638, 20
  %1640 = load i64, i64* %PC
  %1641 = add i64 %1640, 4
  store i64 %1641, i64* %PC
  %1642 = inttoptr i64 %1639 to i32*
  %1643 = load i32, i32* %1642
  %1644 = sext i32 %1643 to i64
  store i64 %1644, i64* %RCX, align 8, !tbaa !2424
  %1645 = load i64, i64* %RAX
  %1646 = load i64, i64* %RCX
  %1647 = add i64 %1646, %1645
  %1648 = load i64, i64* %PC
  %1649 = add i64 %1648, 4
  store i64 %1649, i64* %PC
  %1650 = inttoptr i64 %1647 to i8*
  %1651 = load i8, i8* %1650
  %1652 = sext i8 %1651 to i64
  %1653 = and i64 %1652, 4294967295
  store i64 %1653, i64* %RDX, align 8, !tbaa !2424
  %1654 = load i32, i32* %EDX
  %1655 = zext i32 %1654 to i64
  %1656 = load i64, i64* %PC
  %1657 = add i64 %1656, 3
  store i64 %1657, i64* %PC
  %1658 = sub i32 %1654, 35
  %1659 = icmp ult i32 %1654, 35
  %1660 = zext i1 %1659 to i8
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1660, i8* %1661, align 1, !tbaa !2428
  %1662 = and i32 %1658, 255
  %1663 = call i32 @llvm.ctpop.i32(i32 %1662) #16
  %1664 = trunc i32 %1663 to i8
  %1665 = and i8 %1664, 1
  %1666 = xor i8 %1665, 1
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1666, i8* %1667, align 1, !tbaa !2442
  %1668 = xor i64 35, %1655
  %1669 = trunc i64 %1668 to i32
  %1670 = xor i32 %1669, %1658
  %1671 = lshr i32 %1670, 4
  %1672 = trunc i32 %1671 to i8
  %1673 = and i8 %1672, 1
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1673, i8* %1674, align 1, !tbaa !2443
  %1675 = icmp eq i32 %1658, 0
  %1676 = zext i1 %1675 to i8
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1676, i8* %1677, align 1, !tbaa !2444
  %1678 = lshr i32 %1658, 31
  %1679 = trunc i32 %1678 to i8
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1679, i8* %1680, align 1, !tbaa !2445
  %1681 = lshr i32 %1654, 31
  %1682 = xor i32 %1678, %1681
  %1683 = add nuw nsw i32 %1682, %1681
  %1684 = icmp eq i32 %1683, 2
  %1685 = zext i1 %1684 to i8
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1685, i8* %1686, align 1, !tbaa !2446
  %1687 = load i64, i64* %PC
  %1688 = add i64 %1687, 57
  %1689 = load i64, i64* %PC
  %1690 = add i64 %1689, 6
  %1691 = load i64, i64* %PC
  %1692 = add i64 %1691, 6
  store i64 %1692, i64* %PC
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1694 = load i8, i8* %1693, align 1, !tbaa !2444
  %1695 = icmp eq i8 %1694, 0
  %1696 = zext i1 %1695 to i8
  store i8 %1696, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1698 = select i1 %1695, i64 %1688, i64 %1690
  store i64 %1698, i64* %1697, align 8, !tbaa !2424
  %1699 = load i8, i8* %BRANCH_TAKEN
  %1700 = icmp eq i8 %1699, 1
  %1701 = load i64, i64* %PC
  %1702 = add i64 %1701, 10
  store i64 %1702, i64* %PC
  br i1 %1700, label %block_400769, label %block_400736

block_4007c9:                                     ; preds = %block_4007bf
  %1703 = load i64, i64* %RBP
  %1704 = sub i64 %1703, 20
  %1705 = load i64, i64* %PC
  %1706 = add i64 %1705, 4
  store i64 %1706, i64* %PC
  %1707 = inttoptr i64 %1704 to i32*
  %1708 = load i32, i32* %1707
  %1709 = sub i32 %1708, 11
  %1710 = icmp ult i32 %1708, 11
  %1711 = zext i1 %1710 to i8
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1711, i8* %1712, align 1, !tbaa !2428
  %1713 = and i32 %1709, 255
  %1714 = call i32 @llvm.ctpop.i32(i32 %1713) #16
  %1715 = trunc i32 %1714 to i8
  %1716 = and i8 %1715, 1
  %1717 = xor i8 %1716, 1
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1717, i8* %1718, align 1, !tbaa !2442
  %1719 = xor i32 %1708, 11
  %1720 = xor i32 %1719, %1709
  %1721 = lshr i32 %1720, 4
  %1722 = trunc i32 %1721 to i8
  %1723 = and i8 %1722, 1
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1723, i8* %1724, align 1, !tbaa !2443
  %1725 = icmp eq i32 %1709, 0
  %1726 = zext i1 %1725 to i8
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1726, i8* %1727, align 1, !tbaa !2444
  %1728 = lshr i32 %1709, 31
  %1729 = trunc i32 %1728 to i8
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1729, i8* %1730, align 1, !tbaa !2445
  %1731 = lshr i32 %1708, 31
  %1732 = xor i32 %1728, %1731
  %1733 = add nuw nsw i32 %1732, %1731
  %1734 = icmp eq i32 %1733, 2
  %1735 = zext i1 %1734 to i8
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1735, i8* %1736, align 1, !tbaa !2446
  %1737 = load i64, i64* %PC
  %1738 = add i64 %1737, 18
  %1739 = load i64, i64* %PC
  %1740 = add i64 %1739, 6
  %1741 = load i64, i64* %PC
  %1742 = add i64 %1741, 6
  store i64 %1742, i64* %PC
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1744 = load i8, i8* %1743, align 1, !tbaa !2445
  %1745 = icmp ne i8 %1744, 0
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1747 = load i8, i8* %1746, align 1, !tbaa !2446
  %1748 = icmp ne i8 %1747, 0
  %1749 = xor i1 %1745, %1748
  %1750 = zext i1 %1749 to i8
  store i8 %1750, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1752 = select i1 %1749, i64 %1738, i64 %1740
  store i64 %1752, i64* %1751, align 8, !tbaa !2424
  %1753 = load i8, i8* %BRANCH_TAKEN
  %1754 = icmp eq i8 %1753, 1
  br i1 %1754, label %block_4007df, label %block_4007d3

block_40078f:                                     ; preds = %block_400769
  %1755 = load i64, i64* %RBP
  %1756 = sub i64 %1755, 24
  %1757 = load i64, i64* %PC
  %1758 = add i64 %1757, 4
  store i64 %1758, i64* %PC
  %1759 = inttoptr i64 %1756 to i32*
  %1760 = load i32, i32* %1759
  %1761 = sub i32 %1760, 2
  %1762 = icmp ult i32 %1760, 2
  %1763 = zext i1 %1762 to i8
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1763, i8* %1764, align 1, !tbaa !2428
  %1765 = and i32 %1761, 255
  %1766 = call i32 @llvm.ctpop.i32(i32 %1765) #16
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  %1769 = xor i8 %1768, 1
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1769, i8* %1770, align 1, !tbaa !2442
  %1771 = xor i32 %1760, 2
  %1772 = xor i32 %1771, %1761
  %1773 = lshr i32 %1772, 4
  %1774 = trunc i32 %1773 to i8
  %1775 = and i8 %1774, 1
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1775, i8* %1776, align 1, !tbaa !2443
  %1777 = icmp eq i32 %1761, 0
  %1778 = zext i1 %1777 to i8
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1778, i8* %1779, align 1, !tbaa !2444
  %1780 = lshr i32 %1761, 31
  %1781 = trunc i32 %1780 to i8
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1781, i8* %1782, align 1, !tbaa !2445
  %1783 = lshr i32 %1760, 31
  %1784 = xor i32 %1780, %1783
  %1785 = add nuw nsw i32 %1784, %1783
  %1786 = icmp eq i32 %1785, 2
  %1787 = zext i1 %1786 to i8
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1787, i8* %1788, align 1, !tbaa !2446
  %1789 = load i64, i64* %PC
  %1790 = add i64 %1789, 64
  %1791 = load i64, i64* %PC
  %1792 = add i64 %1791, 6
  %1793 = load i64, i64* %PC
  %1794 = add i64 %1793, 6
  store i64 %1794, i64* %PC
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1796 = load i8, i8* %1795, align 1, !tbaa !2444
  %1797 = icmp eq i8 %1796, 0
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1800 = select i1 %1797, i64 %1790, i64 %1792
  store i64 %1800, i64* %1799, align 8, !tbaa !2424
  %1801 = load i8, i8* %BRANCH_TAKEN
  %1802 = icmp eq i8 %1801, 1
  br i1 %1802, label %block_4007d3, label %block_400799

block_4007f7:                                     ; preds = %block_4007eb
  %1803 = load i64, i64* %PC
  %1804 = add i64 %1803, 10
  store i64 %1804, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  %1805 = load i64, i64* %PC
  %1806 = add i64 %1805, 2
  store i64 %1806, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %1807 = load i64, i64* %PC
  %1808 = sub i64 %1807, 963
  %1809 = load i64, i64* %PC
  %1810 = add i64 %1809, 5
  %1811 = load i64, i64* %PC
  %1812 = add i64 %1811, 5
  store i64 %1812, i64* %PC
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1814 = load i64, i64* %1813, align 8, !tbaa !2424
  %1815 = add i64 %1814, -8
  %1816 = inttoptr i64 %1815 to i64*
  store i64 %1810, i64* %1816
  store i64 %1815, i64* %1813, align 8, !tbaa !2424
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1808, i64* %1817, align 8, !tbaa !2424
  %1818 = load i64, i64* %PC
  %1819 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1818, %struct.Memory* %MEMORY.1)
  %1820 = load i64, i64* %RBP
  %1821 = sub i64 %1820, 4
  %1822 = load i64, i64* %PC
  %1823 = add i64 %1822, 7
  store i64 %1823, i64* %PC
  %1824 = inttoptr i64 %1821 to i32*
  store i32 2, i32* %1824
  %1825 = load i64, i64* %RBP
  %1826 = sub i64 %1825, 104
  %1827 = load i32, i32* %EAX
  %1828 = zext i32 %1827 to i64
  %1829 = load i64, i64* %PC
  %1830 = add i64 %1829, 3
  store i64 %1830, i64* %PC
  %1831 = inttoptr i64 %1826 to i32*
  store i32 %1827, i32* %1831
  %1832 = load i64, i64* %PC
  %1833 = add i64 %1832, 80
  %1834 = load i64, i64* %PC
  %1835 = add i64 %1834, 5
  store i64 %1835, i64* %PC
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1833, i64* %1836, align 8, !tbaa !2424
  br label %block_400862

; <label>:1837:                                   ; preds = %block_400698
  %1838 = load i64, i64* %PC
  %1839 = tail call %struct.Memory* @__remill_missing_block(%struct.State* %0, i64 %1838, %struct.Memory* %MEMORY.4)
  ret %struct.Memory* %1839
}

; Function Attrs: noinline
define %struct.Memory* @sub_4008e4__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4008e4:
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
  store i64 %12, i64* %RSP, align 8, !tbaa !2424
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
  store i8 %21, i8* %22, align 1, !tbaa !2442
  %23 = xor i64 8, %9
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !2443
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2444
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2445
  %35 = lshr i64 %9, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2446
  %41 = load i64, i64* %RSP
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC
  %44 = add i64 8, %41
  store i64 %44, i64* %RSP, align 8, !tbaa !2424
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
  store i8 %55, i8* %56, align 1, !tbaa !2442
  %57 = xor i64 8, %41
  %58 = xor i64 %57, %44
  %59 = lshr i64 %58, 4
  %60 = trunc i64 %59 to i8
  %61 = and i8 %60, 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %61, i8* %62, align 1, !tbaa !2443
  %63 = icmp eq i64 %44, 0
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %64, i8* %65, align 1, !tbaa !2444
  %66 = lshr i64 %44, 63
  %67 = trunc i64 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %67, i8* %68, align 1, !tbaa !2445
  %69 = lshr i64 %41, 63
  %70 = xor i64 %66, %69
  %71 = add nuw nsw i64 %70, %66
  %72 = icmp eq i64 %71, 2
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %73, i8* %74, align 1, !tbaa !2446
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 1
  store i64 %76, i64* %PC
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %79 = load i64, i64* %78, align 8, !tbaa !2424
  %80 = inttoptr i64 %79 to i64*
  %81 = load i64, i64* %80
  store i64 %81, i64* %77, align 8, !tbaa !2424
  %82 = add i64 %79, 8
  store i64 %82, i64* %78, align 8, !tbaa !2424
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006c2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  br label %block_4006c2

block_400769:                                     ; preds = %block_400710
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %41 = load i64, i64* %RBP
  %42 = sub i64 %41, 24
  %43 = load i64, i64* %PC
  %44 = add i64 %43, 4
  store i64 %44, i64* %PC
  %45 = inttoptr i64 %42 to i32*
  %46 = load i32, i32* %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %RCX, align 8, !tbaa !2424
  %48 = load i64, i64* %RCX
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 4
  store i64 %50, i64* %PC
  %51 = sext i64 %48 to i128
  %52 = and i128 %51, -18446744073709551616
  %53 = zext i64 %48 to i128
  %54 = or i128 %52, %53
  %55 = mul nsw i128 11, %54
  %56 = trunc i128 %55 to i64
  store i64 %56, i64* %RCX, align 8, !tbaa !2424
  %57 = sext i64 %56 to i128
  %58 = icmp ne i128 %57, %55
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %59, i8* %60, align 1, !tbaa !2428
  %61 = trunc i128 %55 to i32
  %62 = and i32 %61, 255
  %63 = call i32 @llvm.ctpop.i32(i32 %62) #16
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %66, i8* %67, align 1, !tbaa !2442
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %68, align 1, !tbaa !2443
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %69, align 1, !tbaa !2444
  %70 = lshr i64 %56, 63
  %71 = trunc i64 %70 to i8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %71, i8* %72, align 1, !tbaa !2445
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %59, i8* %73, align 1, !tbaa !2446
  %74 = load i64, i64* %RAX
  %75 = load i64, i64* %RCX
  %76 = load i64, i64* %PC
  %77 = add i64 %76, 3
  store i64 %77, i64* %PC
  %78 = add i64 %75, %74
  store i64 %78, i64* %RAX, align 8, !tbaa !2424
  %79 = icmp ult i64 %78, %74
  %80 = icmp ult i64 %78, %75
  %81 = or i1 %79, %80
  %82 = zext i1 %81 to i8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %82, i8* %83, align 1, !tbaa !2428
  %84 = trunc i64 %78 to i32
  %85 = and i32 %84, 255
  %86 = call i32 @llvm.ctpop.i32(i32 %85) #16
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %89, i8* %90, align 1, !tbaa !2442
  %91 = xor i64 %75, %74
  %92 = xor i64 %91, %78
  %93 = lshr i64 %92, 4
  %94 = trunc i64 %93 to i8
  %95 = and i8 %94, 1
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %95, i8* %96, align 1, !tbaa !2443
  %97 = icmp eq i64 %78, 0
  %98 = zext i1 %97 to i8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %98, i8* %99, align 1, !tbaa !2444
  %100 = lshr i64 %78, 63
  %101 = trunc i64 %100 to i8
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %101, i8* %102, align 1, !tbaa !2445
  %103 = lshr i64 %74, 63
  %104 = lshr i64 %75, 63
  %105 = xor i64 %100, %103
  %106 = xor i64 %100, %104
  %107 = add nuw nsw i64 %105, %106
  %108 = icmp eq i64 %107, 2
  %109 = zext i1 %108 to i8
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %109, i8* %110, align 1, !tbaa !2446
  %111 = load i64, i64* %RBP
  %112 = sub i64 %111, 20
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 4
  store i64 %114, i64* %PC
  %115 = inttoptr i64 %112 to i32*
  %116 = load i32, i32* %115
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %RCX, align 8, !tbaa !2424
  %118 = load i64, i64* %RAX
  %119 = load i64, i64* %RCX
  %120 = add i64 %119, %118
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 4
  store i64 %122, i64* %PC
  %123 = inttoptr i64 %120 to i8*
  %124 = load i8, i8* %123
  %125 = sext i8 %124 to i64
  %126 = and i64 %125, 4294967295
  store i64 %126, i64* %RDX, align 8, !tbaa !2424
  %127 = load i32, i32* %EDX
  %128 = zext i32 %127 to i64
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 3
  store i64 %130, i64* %PC
  %131 = sub i32 %127, 32
  %132 = icmp ult i32 %127, 32
  %133 = zext i1 %132 to i8
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %133, i8* %134, align 1, !tbaa !2428
  %135 = and i32 %131, 255
  %136 = call i32 @llvm.ctpop.i32(i32 %135) #16
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %139, i8* %140, align 1, !tbaa !2442
  %141 = xor i64 32, %128
  %142 = trunc i64 %141 to i32
  %143 = xor i32 %142, %131
  %144 = lshr i32 %143, 4
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %146, i8* %147, align 1, !tbaa !2443
  %148 = icmp eq i32 %131, 0
  %149 = zext i1 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %149, i8* %150, align 1, !tbaa !2444
  %151 = lshr i32 %131, 31
  %152 = trunc i32 %151 to i8
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %152, i8* %153, align 1, !tbaa !2445
  %154 = lshr i32 %127, 31
  %155 = xor i32 %151, %154
  %156 = add nuw nsw i32 %155, %154
  %157 = icmp eq i32 %156, 2
  %158 = zext i1 %157 to i8
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %158, i8* %159, align 1, !tbaa !2446
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 86
  %162 = load i64, i64* %PC
  %163 = add i64 %162, 6
  %164 = load i64, i64* %PC
  %165 = add i64 %164, 6
  store i64 %165, i64* %PC
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %167 = load i8, i8* %166, align 1, !tbaa !2444
  store i8 %167, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %169 = icmp ne i8 %167, 0
  %170 = select i1 %169, i64 %161, i64 %163
  store i64 %170, i64* %168, align 8, !tbaa !2424
  %171 = load i8, i8* %BRANCH_TAKEN
  %172 = icmp eq i8 %171, 1
  br i1 %172, label %block_4007df, label %block_40078f

block_400862:                                     ; preds = %block_400847, %block_4007f7
  %MEMORY.0 = phi %struct.Memory* [ %1482, %block_400847 ], [ %328, %block_4007f7 ]
  %173 = load i64, i64* %RBP
  %174 = sub i64 %173, 4
  %175 = load i64, i64* %PC
  %176 = add i64 %175, 3
  store i64 %176, i64* %PC
  %177 = inttoptr i64 %174 to i32*
  %178 = load i32, i32* %177
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RAX, align 8, !tbaa !2424
  %180 = load i64, i64* %RSP
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 4
  store i64 %182, i64* %PC
  %183 = add i64 112, %180
  store i64 %183, i64* %RSP, align 8, !tbaa !2424
  %184 = icmp ult i64 %183, %180
  %185 = icmp ult i64 %183, 112
  %186 = or i1 %184, %185
  %187 = zext i1 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %187, i8* %188, align 1, !tbaa !2428
  %189 = trunc i64 %183 to i32
  %190 = and i32 %189, 255
  %191 = call i32 @llvm.ctpop.i32(i32 %190) #16
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  %194 = xor i8 %193, 1
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %194, i8* %195, align 1, !tbaa !2442
  %196 = xor i64 112, %180
  %197 = xor i64 %196, %183
  %198 = lshr i64 %197, 4
  %199 = trunc i64 %198 to i8
  %200 = and i8 %199, 1
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %200, i8* %201, align 1, !tbaa !2443
  %202 = icmp eq i64 %183, 0
  %203 = zext i1 %202 to i8
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %203, i8* %204, align 1, !tbaa !2444
  %205 = lshr i64 %183, 63
  %206 = trunc i64 %205 to i8
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %206, i8* %207, align 1, !tbaa !2445
  %208 = lshr i64 %180, 63
  %209 = xor i64 %205, %208
  %210 = add nuw nsw i64 %209, %205
  %211 = icmp eq i64 %210, 2
  %212 = zext i1 %211 to i8
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %212, i8* %213, align 1, !tbaa !2446
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 1
  store i64 %215, i64* %PC
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %217 = load i64, i64* %216, align 8, !tbaa !2424
  %218 = add i64 %217, 8
  %219 = inttoptr i64 %217 to i64*
  %220 = load i64, i64* %219
  store i64 %220, i64* %RBP, align 8, !tbaa !2424
  store i64 %218, i64* %216, align 8, !tbaa !2424
  %221 = load i64, i64* %PC
  %222 = add i64 %221, 1
  store i64 %222, i64* %PC
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %225 = load i64, i64* %224, align 8, !tbaa !2424
  %226 = inttoptr i64 %225 to i64*
  %227 = load i64, i64* %226
  store i64 %227, i64* %223, align 8, !tbaa !2424
  %228 = add i64 %225, 8
  store i64 %228, i64* %224, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_4007d3:                                     ; preds = %block_40078f, %block_400799, %block_4007bf, %block_4007c9
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.5, %block_40078f ], [ %MEMORY.5, %block_400799 ], [ %MEMORY.5, %block_4007bf ], [ %MEMORY.5, %block_4007c9 ]
  %229 = load i64, i64* %RBP
  %230 = sub i64 %229, 28
  %231 = load i64, i64* %PC
  %232 = add i64 %231, 3
  store i64 %232, i64* %PC
  %233 = inttoptr i64 %230 to i32*
  %234 = load i32, i32* %233
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RAX, align 8, !tbaa !2424
  %236 = load i64, i64* %RBP
  %237 = sub i64 %236, 20
  %238 = load i32, i32* %EAX
  %239 = zext i32 %238 to i64
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 3
  store i64 %241, i64* %PC
  %242 = inttoptr i64 %237 to i32*
  store i32 %238, i32* %242
  %243 = load i64, i64* %RBP
  %244 = sub i64 %243, 32
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 3
  store i64 %246, i64* %PC
  %247 = inttoptr i64 %244 to i32*
  %248 = load i32, i32* %247
  %249 = zext i32 %248 to i64
  store i64 %249, i64* %RAX, align 8, !tbaa !2424
  %250 = load i64, i64* %RBP
  %251 = sub i64 %250, 24
  %252 = load i32, i32* %EAX
  %253 = zext i32 %252 to i64
  %254 = load i64, i64* %PC
  %255 = add i64 %254, 3
  store i64 %255, i64* %PC
  %256 = inttoptr i64 %251 to i32*
  store i32 %252, i32* %256
  br label %block_4007df

block_4006d0:                                     ; preds = %block_400698
  %257 = load i64, i64* %RBP
  %258 = sub i64 %257, 20
  %259 = load i64, i64* %PC
  %260 = add i64 %259, 3
  store i64 %260, i64* %PC
  %261 = inttoptr i64 %258 to i32*
  %262 = load i32, i32* %261
  %263 = zext i32 %262 to i64
  store i64 %263, i64* %RAX, align 8, !tbaa !2424
  %264 = load i64, i64* %RAX
  %265 = load i64, i64* %PC
  %266 = add i64 %265, 3
  store i64 %266, i64* %PC
  %267 = trunc i64 %264 to i32
  %268 = add i32 1, %267
  %269 = zext i32 %268 to i64
  store i64 %269, i64* %RAX, align 8, !tbaa !2424
  %270 = icmp ult i32 %268, %267
  %271 = icmp ult i32 %268, 1
  %272 = or i1 %270, %271
  %273 = zext i1 %272 to i8
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %273, i8* %274, align 1, !tbaa !2428
  %275 = and i32 %268, 255
  %276 = call i32 @llvm.ctpop.i32(i32 %275) #16
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %279, i8* %280, align 1, !tbaa !2442
  %281 = xor i64 1, %264
  %282 = trunc i64 %281 to i32
  %283 = xor i32 %282, %268
  %284 = lshr i32 %283, 4
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %286, i8* %287, align 1, !tbaa !2443
  %288 = icmp eq i32 %268, 0
  %289 = zext i1 %288 to i8
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %289, i8* %290, align 1, !tbaa !2444
  %291 = lshr i32 %268, 31
  %292 = trunc i32 %291 to i8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %292, i8* %293, align 1, !tbaa !2445
  %294 = lshr i32 %267, 31
  %295 = xor i32 %291, %294
  %296 = add nuw nsw i32 %295, %291
  %297 = icmp eq i32 %296, 2
  %298 = zext i1 %297 to i8
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %298, i8* %299, align 1, !tbaa !2446
  %300 = load i64, i64* %RBP
  %301 = sub i64 %300, 20
  %302 = load i32, i32* %EAX
  %303 = zext i32 %302 to i64
  %304 = load i64, i64* %PC
  %305 = add i64 %304, 3
  store i64 %305, i64* %PC
  %306 = inttoptr i64 %301 to i32*
  store i32 %302, i32* %306
  %307 = load i64, i64* %PC
  %308 = add i64 %307, 55
  %309 = load i64, i64* %PC
  %310 = add i64 %309, 5
  store i64 %310, i64* %PC
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %308, i64* %311, align 8, !tbaa !2424
  br label %block_400710

block_4007f7:                                     ; preds = %block_4007eb
  %312 = load i64, i64* %PC
  %313 = add i64 %312, 10
  store i64 %313, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  %314 = load i64, i64* %PC
  %315 = add i64 %314, 2
  store i64 %315, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %316 = load i64, i64* %PC
  %317 = sub i64 %316, 963
  %318 = load i64, i64* %PC
  %319 = add i64 %318, 5
  %320 = load i64, i64* %PC
  %321 = add i64 %320, 5
  store i64 %321, i64* %PC
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %323 = load i64, i64* %322, align 8, !tbaa !2424
  %324 = add i64 %323, -8
  %325 = inttoptr i64 %324 to i64*
  store i64 %319, i64* %325
  store i64 %324, i64* %322, align 8, !tbaa !2424
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %317, i64* %326, align 8, !tbaa !2424
  %327 = load i64, i64* %PC
  %328 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %327, %struct.Memory* %MEMORY.4)
  %329 = load i64, i64* %RBP
  %330 = sub i64 %329, 4
  %331 = load i64, i64* %PC
  %332 = add i64 %331, 7
  store i64 %332, i64* %PC
  %333 = inttoptr i64 %330 to i32*
  store i32 2, i32* %333
  %334 = load i64, i64* %RBP
  %335 = sub i64 %334, 104
  %336 = load i32, i32* %EAX
  %337 = zext i32 %336 to i64
  %338 = load i64, i64* %PC
  %339 = add i64 %338, 3
  store i64 %339, i64* %PC
  %340 = inttoptr i64 %335 to i32*
  store i32 %336, i32* %340
  %341 = load i64, i64* %PC
  %342 = add i64 %341, 80
  %343 = load i64, i64* %PC
  %344 = add i64 %343, 5
  store i64 %344, i64* %PC
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %342, i64* %345, align 8, !tbaa !2424
  br label %block_400862

block_4007c9:                                     ; preds = %block_4007bf
  %346 = load i64, i64* %RBP
  %347 = sub i64 %346, 20
  %348 = load i64, i64* %PC
  %349 = add i64 %348, 4
  store i64 %349, i64* %PC
  %350 = inttoptr i64 %347 to i32*
  %351 = load i32, i32* %350
  %352 = sub i32 %351, 11
  %353 = icmp ult i32 %351, 11
  %354 = zext i1 %353 to i8
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %354, i8* %355, align 1, !tbaa !2428
  %356 = and i32 %352, 255
  %357 = call i32 @llvm.ctpop.i32(i32 %356) #16
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  %360 = xor i8 %359, 1
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %360, i8* %361, align 1, !tbaa !2442
  %362 = xor i32 %351, 11
  %363 = xor i32 %362, %352
  %364 = lshr i32 %363, 4
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %366, i8* %367, align 1, !tbaa !2443
  %368 = icmp eq i32 %352, 0
  %369 = zext i1 %368 to i8
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %369, i8* %370, align 1, !tbaa !2444
  %371 = lshr i32 %352, 31
  %372 = trunc i32 %371 to i8
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %372, i8* %373, align 1, !tbaa !2445
  %374 = lshr i32 %351, 31
  %375 = xor i32 %371, %374
  %376 = add nuw nsw i32 %375, %374
  %377 = icmp eq i32 %376, 2
  %378 = zext i1 %377 to i8
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %378, i8* %379, align 1, !tbaa !2446
  %380 = load i64, i64* %PC
  %381 = add i64 %380, 18
  %382 = load i64, i64* %PC
  %383 = add i64 %382, 6
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 6
  store i64 %385, i64* %PC
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %387 = load i8, i8* %386, align 1, !tbaa !2445
  %388 = icmp ne i8 %387, 0
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %390 = load i8, i8* %389, align 1, !tbaa !2446
  %391 = icmp ne i8 %390, 0
  %392 = xor i1 %388, %391
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %395 = select i1 %392, i64 %381, i64 %383
  store i64 %395, i64* %394, align 8, !tbaa !2424
  %396 = load i8, i8* %BRANCH_TAKEN
  %397 = icmp eq i8 %396, 1
  br i1 %397, label %block_4007df, label %block_4007d3

block_4006c2:                                     ; preds = %block_400698, %3
  %MEMORY.2 = phi %struct.Memory* [ %2, %3 ], [ %1047, %block_400698 ]
  %398 = load i64, i64* %RBP
  %399 = sub i64 %398, 20
  %400 = load i64, i64* %PC
  %401 = add i64 %400, 3
  store i64 %401, i64* %PC
  %402 = inttoptr i64 %399 to i32*
  %403 = load i32, i32* %402
  %404 = zext i32 %403 to i64
  store i64 %404, i64* %RAX, align 8, !tbaa !2424
  %405 = load i64, i64* %RAX
  %406 = load i64, i64* %PC
  %407 = add i64 %406, 3
  store i64 %407, i64* %PC
  %408 = trunc i64 %405 to i32
  %409 = add i32 -1, %408
  %410 = zext i32 %409 to i64
  store i64 %410, i64* %RAX, align 8, !tbaa !2424
  %411 = icmp ult i32 %409, %408
  %412 = icmp ult i32 %409, -1
  %413 = or i1 %411, %412
  %414 = zext i1 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %414, i8* %415, align 1, !tbaa !2428
  %416 = and i32 %409, 255
  %417 = call i32 @llvm.ctpop.i32(i32 %416) #16
  %418 = trunc i32 %417 to i8
  %419 = and i8 %418, 1
  %420 = xor i8 %419, 1
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %420, i8* %421, align 1, !tbaa !2442
  %422 = xor i64 -1, %405
  %423 = trunc i64 %422 to i32
  %424 = xor i32 %423, %409
  %425 = lshr i32 %424, 4
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %427, i8* %428, align 1, !tbaa !2443
  %429 = icmp eq i32 %409, 0
  %430 = zext i1 %429 to i8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %430, i8* %431, align 1, !tbaa !2444
  %432 = lshr i32 %409, 31
  %433 = trunc i32 %432 to i8
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %433, i8* %434, align 1, !tbaa !2445
  %435 = lshr i32 %408, 31
  %436 = xor i32 %432, %435
  %437 = xor i32 %432, 1
  %438 = add nuw nsw i32 %436, %437
  %439 = icmp eq i32 %438, 2
  %440 = zext i1 %439 to i8
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %440, i8* %441, align 1, !tbaa !2446
  %442 = load i64, i64* %RBP
  %443 = sub i64 %442, 20
  %444 = load i32, i32* %EAX
  %445 = zext i32 %444 to i64
  %446 = load i64, i64* %PC
  %447 = add i64 %446, 3
  store i64 %447, i64* %PC
  %448 = inttoptr i64 %443 to i32*
  store i32 %444, i32* %448
  %449 = load i64, i64* %PC
  %450 = add i64 %449, 69
  %451 = load i64, i64* %PC
  %452 = add i64 %451, 5
  store i64 %452, i64* %PC
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %450, i64* %453, align 8, !tbaa !2424
  br label %block_400710

block_4007bf:                                     ; preds = %block_400799
  %454 = load i64, i64* %RBP
  %455 = sub i64 %454, 20
  %456 = load i64, i64* %PC
  %457 = add i64 %456, 4
  store i64 %457, i64* %PC
  %458 = inttoptr i64 %455 to i32*
  %459 = load i32, i32* %458
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %460, align 1, !tbaa !2428
  %461 = and i32 %459, 255
  %462 = call i32 @llvm.ctpop.i32(i32 %461) #16
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %465, i8* %466, align 1, !tbaa !2442
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %467, align 1, !tbaa !2443
  %468 = icmp eq i32 %459, 0
  %469 = zext i1 %468 to i8
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %469, i8* %470, align 1, !tbaa !2444
  %471 = lshr i32 %459, 31
  %472 = trunc i32 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %472, i8* %473, align 1, !tbaa !2445
  %474 = lshr i32 %459, 31
  %475 = xor i32 %471, %474
  %476 = add nuw nsw i32 %475, %474
  %477 = icmp eq i32 %476, 2
  %478 = zext i1 %477 to i8
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %478, i8* %479, align 1, !tbaa !2446
  %480 = load i64, i64* %PC
  %481 = add i64 %480, 16
  %482 = load i64, i64* %PC
  %483 = add i64 %482, 6
  %484 = load i64, i64* %PC
  %485 = add i64 %484, 6
  store i64 %485, i64* %PC
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %487 = load i8, i8* %486, align 1, !tbaa !2444
  %488 = icmp ne i8 %487, 0
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %490 = load i8, i8* %489, align 1, !tbaa !2445
  %491 = icmp ne i8 %490, 0
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %493 = load i8, i8* %492, align 1, !tbaa !2446
  %494 = icmp ne i8 %493, 0
  %495 = xor i1 %491, %494
  %496 = or i1 %488, %495
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %499 = select i1 %496, i64 %481, i64 %483
  store i64 %499, i64* %498, align 8, !tbaa !2424
  %500 = load i8, i8* %BRANCH_TAKEN
  %501 = icmp eq i8 %500, 1
  br i1 %501, label %block_4007d3, label %block_4007c9

block_400736:                                     ; preds = %block_400710
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2424
  %502 = load i64, i64* %PC
  %503 = add i64 %502, 2
  store i64 %503, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %504 = load i64, i64* %PC
  %505 = sub i64 %504, 770
  %506 = load i64, i64* %PC
  %507 = add i64 %506, 5
  %508 = load i64, i64* %PC
  %509 = add i64 %508, 5
  store i64 %509, i64* %PC
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %511 = load i64, i64* %510, align 8, !tbaa !2424
  %512 = add i64 %511, -8
  %513 = inttoptr i64 %512 to i64*
  store i64 %507, i64* %513
  store i64 %512, i64* %510, align 8, !tbaa !2424
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %505, i64* %514, align 8, !tbaa !2424
  %515 = load i64, i64* %PC
  %516 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %515, %struct.Memory* %MEMORY.5)
  %517 = load i64, i64* %PC
  %518 = add i64 %517, 10
  store i64 %518, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2424
  %519 = load i64, i64* %RBP
  %520 = sub i64 %519, 64
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 4
  store i64 %522, i64* %PC
  store i64 %520, i64* %RSI, align 8, !tbaa !2424
  %523 = load i64, i64* %RBP
  %524 = sub i64 %523, 96
  %525 = load i32, i32* %EAX
  %526 = zext i32 %525 to i64
  %527 = load i64, i64* %PC
  %528 = add i64 %527, 3
  store i64 %528, i64* %PC
  %529 = inttoptr i64 %524 to i32*
  store i32 %525, i32* %529
  %530 = load i64, i64* %PC
  %531 = add i64 %530, 2
  store i64 %531, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %532 = load i64, i64* %PC
  %533 = sub i64 %532, 794
  %534 = load i64, i64* %PC
  %535 = add i64 %534, 5
  %536 = load i64, i64* %PC
  %537 = add i64 %536, 5
  store i64 %537, i64* %PC
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %539 = load i64, i64* %538, align 8, !tbaa !2424
  %540 = add i64 %539, -8
  %541 = inttoptr i64 %540 to i64*
  store i64 %535, i64* %541
  store i64 %540, i64* %538, align 8, !tbaa !2424
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %533, i64* %542, align 8, !tbaa !2424
  %543 = load i64, i64* %PC
  %544 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %543, %struct.Memory* %516)
  %545 = load i64, i64* %RDI
  %546 = load i32, i32* %EDI
  %547 = zext i32 %546 to i64
  %548 = load i64, i64* %PC
  %549 = add i64 %548, 2
  store i64 %549, i64* %PC
  %550 = xor i64 %547, %545
  %551 = trunc i64 %550 to i32
  %552 = and i64 %550, 4294967295
  store i64 %552, i64* %RDI, align 8, !tbaa !2424
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %553, align 1, !tbaa !2428
  %554 = and i32 %551, 255
  %555 = call i32 @llvm.ctpop.i32(i32 %554) #16
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %558, i8* %559, align 1, !tbaa !2442
  %560 = icmp eq i32 %551, 0
  %561 = zext i1 %560 to i8
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %561, i8* %562, align 1, !tbaa !2444
  %563 = lshr i32 %551, 31
  %564 = trunc i32 %563 to i8
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %564, i8* %565, align 1, !tbaa !2445
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %566, align 1, !tbaa !2446
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %567, align 1, !tbaa !2443
  %568 = load i64, i64* %RBP
  %569 = sub i64 %568, 100
  %570 = load i32, i32* %EAX
  %571 = zext i32 %570 to i64
  %572 = load i64, i64* %PC
  %573 = add i64 %572, 3
  store i64 %573, i64* %PC
  %574 = inttoptr i64 %569 to i32*
  store i32 %570, i32* %574
  %575 = load i64, i64* %PC
  %576 = sub i64 %575, 772
  %577 = load i64, i64* %PC
  %578 = add i64 %577, 5
  %579 = load i64, i64* %PC
  %580 = add i64 %579, 5
  store i64 %580, i64* %PC
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %582 = load i64, i64* %581, align 8, !tbaa !2424
  %583 = add i64 %582, -8
  %584 = inttoptr i64 %583 to i64*
  store i64 %578, i64* %584
  store i64 %583, i64* %581, align 8, !tbaa !2424
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %576, i64* %585, align 8, !tbaa !2424
  %586 = load i64, i64* %PC
  %587 = call %struct.Memory* @ext_6010c8_exit(%struct.State* %0, i64 %586, %struct.Memory* %544)
  %588 = load i64, i64* %PC
  %589 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %588, %struct.Memory* %587)
  ret %struct.Memory* %589

block_4006a6:                                     ; preds = %block_400698
  %590 = load i64, i64* %RBP
  %591 = sub i64 %590, 24
  %592 = load i64, i64* %PC
  %593 = add i64 %592, 3
  store i64 %593, i64* %PC
  %594 = inttoptr i64 %591 to i32*
  %595 = load i32, i32* %594
  %596 = zext i32 %595 to i64
  store i64 %596, i64* %RAX, align 8, !tbaa !2424
  %597 = load i64, i64* %RAX
  %598 = load i64, i64* %PC
  %599 = add i64 %598, 3
  store i64 %599, i64* %PC
  %600 = trunc i64 %597 to i32
  %601 = add i32 -1, %600
  %602 = zext i32 %601 to i64
  store i64 %602, i64* %RAX, align 8, !tbaa !2424
  %603 = icmp ult i32 %601, %600
  %604 = icmp ult i32 %601, -1
  %605 = or i1 %603, %604
  %606 = zext i1 %605 to i8
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %606, i8* %607, align 1, !tbaa !2428
  %608 = and i32 %601, 255
  %609 = call i32 @llvm.ctpop.i32(i32 %608) #16
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  %612 = xor i8 %611, 1
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %612, i8* %613, align 1, !tbaa !2442
  %614 = xor i64 -1, %597
  %615 = trunc i64 %614 to i32
  %616 = xor i32 %615, %601
  %617 = lshr i32 %616, 4
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %619, i8* %620, align 1, !tbaa !2443
  %621 = icmp eq i32 %601, 0
  %622 = zext i1 %621 to i8
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %622, i8* %623, align 1, !tbaa !2444
  %624 = lshr i32 %601, 31
  %625 = trunc i32 %624 to i8
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %625, i8* %626, align 1, !tbaa !2445
  %627 = lshr i32 %600, 31
  %628 = xor i32 %624, %627
  %629 = xor i32 %624, 1
  %630 = add nuw nsw i32 %628, %629
  %631 = icmp eq i32 %630, 2
  %632 = zext i1 %631 to i8
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %632, i8* %633, align 1, !tbaa !2446
  %634 = load i64, i64* %RBP
  %635 = sub i64 %634, 24
  %636 = load i32, i32* %EAX
  %637 = zext i32 %636 to i64
  %638 = load i64, i64* %PC
  %639 = add i64 %638, 3
  store i64 %639, i64* %PC
  %640 = inttoptr i64 %635 to i32*
  store i32 %636, i32* %640
  %641 = load i64, i64* %PC
  %642 = add i64 %641, 97
  %643 = load i64, i64* %PC
  %644 = add i64 %643, 5
  store i64 %644, i64* %PC
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %642, i64* %645, align 8, !tbaa !2424
  br label %block_400710

block_40066e:                                     ; preds = %block_400817
  %646 = load i64, i64* %RBP
  %647 = sub i64 %646, 20
  %648 = load i64, i64* %PC
  %649 = add i64 %648, 3
  store i64 %649, i64* %PC
  %650 = inttoptr i64 %647 to i32*
  %651 = load i32, i32* %650
  %652 = zext i32 %651 to i64
  store i64 %652, i64* %RAX, align 8, !tbaa !2424
  %653 = load i64, i64* %RBP
  %654 = sub i64 %653, 28
  %655 = load i32, i32* %EAX
  %656 = zext i32 %655 to i64
  %657 = load i64, i64* %PC
  %658 = add i64 %657, 3
  store i64 %658, i64* %PC
  %659 = inttoptr i64 %654 to i32*
  store i32 %655, i32* %659
  %660 = load i64, i64* %RBP
  %661 = sub i64 %660, 24
  %662 = load i64, i64* %PC
  %663 = add i64 %662, 3
  store i64 %663, i64* %PC
  %664 = inttoptr i64 %661 to i32*
  %665 = load i32, i32* %664
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RAX, align 8, !tbaa !2424
  %667 = load i64, i64* %RBP
  %668 = sub i64 %667, 32
  %669 = load i32, i32* %EAX
  %670 = zext i32 %669 to i64
  %671 = load i64, i64* %PC
  %672 = add i64 %671, 3
  store i64 %672, i64* %PC
  %673 = inttoptr i64 %668 to i32*
  store i32 %669, i32* %673
  %674 = load i64, i64* %RBP
  %675 = sub i64 %674, 36
  %676 = load i64, i64* %PC
  %677 = add i64 %676, 4
  store i64 %677, i64* %PC
  %678 = inttoptr i64 %675 to i32*
  %679 = load i32, i32* %678
  %680 = sext i32 %679 to i64
  store i64 %680, i64* %RCX, align 8, !tbaa !2424
  %681 = load i64, i64* %RBP
  %682 = load i64, i64* %RCX
  %683 = add i64 %681, -64
  %684 = add i64 %683, %682
  %685 = load i64, i64* %PC
  %686 = add i64 %685, 5
  store i64 %686, i64* %PC
  %687 = inttoptr i64 %684 to i8*
  %688 = load i8, i8* %687
  %689 = sext i8 %688 to i64
  %690 = and i64 %689, 4294967295
  store i64 %690, i64* %RAX, align 8, !tbaa !2424
  %691 = load i64, i64* %RAX
  %692 = load i64, i64* %PC
  %693 = add i64 %692, 3
  store i64 %693, i64* %PC
  %694 = trunc i64 %691 to i32
  %695 = add i32 -97, %694
  %696 = zext i32 %695 to i64
  store i64 %696, i64* %RAX, align 8, !tbaa !2424
  %697 = icmp ult i32 %695, %694
  %698 = icmp ult i32 %695, -97
  %699 = or i1 %697, %698
  %700 = zext i1 %699 to i8
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %700, i8* %701, align 1, !tbaa !2428
  %702 = and i32 %695, 255
  %703 = call i32 @llvm.ctpop.i32(i32 %702) #16
  %704 = trunc i32 %703 to i8
  %705 = and i8 %704, 1
  %706 = xor i8 %705, 1
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %706, i8* %707, align 1, !tbaa !2442
  %708 = xor i64 -97, %691
  %709 = trunc i64 %708 to i32
  %710 = xor i32 %709, %695
  %711 = lshr i32 %710, 4
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %713, i8* %714, align 1, !tbaa !2443
  %715 = icmp eq i32 %695, 0
  %716 = zext i1 %715 to i8
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %716, i8* %717, align 1, !tbaa !2444
  %718 = lshr i32 %695, 31
  %719 = trunc i32 %718 to i8
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %719, i8* %720, align 1, !tbaa !2445
  %721 = lshr i32 %694, 31
  %722 = xor i32 %718, %721
  %723 = xor i32 %718, 1
  %724 = add nuw nsw i32 %722, %723
  %725 = icmp eq i32 %724, 2
  %726 = zext i1 %725 to i8
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %726, i8* %727, align 1, !tbaa !2446
  %728 = load i32, i32* %EAX
  %729 = zext i32 %728 to i64
  %730 = load i64, i64* %PC
  %731 = add i64 %730, 2
  store i64 %731, i64* %PC
  %732 = and i64 %729, 4294967295
  store i64 %732, i64* %RCX, align 8, !tbaa !2424
  %733 = load i64, i64* %RAX
  %734 = load i64, i64* %PC
  %735 = add i64 %734, 3
  store i64 %735, i64* %PC
  %736 = trunc i64 %733 to i32
  %737 = sub i32 %736, 22
  %738 = zext i32 %737 to i64
  store i64 %738, i64* %RAX, align 8, !tbaa !2424
  %739 = icmp ult i32 %736, 22
  %740 = zext i1 %739 to i8
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %740, i8* %741, align 1, !tbaa !2428
  %742 = and i32 %737, 255
  %743 = call i32 @llvm.ctpop.i32(i32 %742) #16
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  %746 = xor i8 %745, 1
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %746, i8* %747, align 1, !tbaa !2442
  %748 = xor i64 22, %733
  %749 = trunc i64 %748 to i32
  %750 = xor i32 %749, %737
  %751 = lshr i32 %750, 4
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %753, i8* %754, align 1, !tbaa !2443
  %755 = icmp eq i32 %737, 0
  %756 = zext i1 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %756, i8* %757, align 1, !tbaa !2444
  %758 = lshr i32 %737, 31
  %759 = trunc i32 %758 to i8
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %759, i8* %760, align 1, !tbaa !2445
  %761 = lshr i32 %736, 31
  %762 = xor i32 %758, %761
  %763 = add nuw nsw i32 %762, %761
  %764 = icmp eq i32 %763, 2
  %765 = zext i1 %764 to i8
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %765, i8* %766, align 1, !tbaa !2446
  %767 = load i64, i64* %RBP
  %768 = sub i64 %767, 80
  %769 = load i64, i64* %RCX
  %770 = load i64, i64* %PC
  %771 = add i64 %770, 4
  store i64 %771, i64* %PC
  %772 = inttoptr i64 %768 to i64*
  store i64 %769, i64* %772
  %773 = load i64, i64* %RBP
  %774 = sub i64 %773, 84
  %775 = load i32, i32* %EAX
  %776 = zext i32 %775 to i64
  %777 = load i64, i64* %PC
  %778 = add i64 %777, 3
  store i64 %778, i64* %PC
  %779 = inttoptr i64 %774 to i32*
  store i32 %775, i32* %779
  %780 = load i64, i64* %PC
  %781 = add i64 %780, 76
  %782 = load i64, i64* %PC
  %783 = add i64 %782, 6
  %784 = load i64, i64* %PC
  %785 = add i64 %784, 6
  store i64 %785, i64* %PC
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %787 = load i8, i8* %786, align 1, !tbaa !2428
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %789 = load i8, i8* %788, align 1, !tbaa !2444
  %790 = or i8 %789, %787
  %791 = icmp eq i8 %790, 0
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %794 = select i1 %791, i64 %781, i64 %783
  store i64 %794, i64* %793, align 8, !tbaa !2424
  %795 = load i8, i8* %BRANCH_TAKEN
  %796 = icmp eq i8 %795, 1
  br i1 %796, label %block_4006de, label %block_400698

block_400799:                                     ; preds = %block_40078f
  %797 = load i64, i64* %PC
  %798 = add i64 %797, 10
  store i64 %798, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %799 = load i64, i64* %RBP
  %800 = sub i64 %799, 24
  %801 = load i64, i64* %PC
  %802 = add i64 %801, 4
  store i64 %802, i64* %PC
  %803 = inttoptr i64 %800 to i32*
  %804 = load i32, i32* %803
  %805 = sext i32 %804 to i64
  store i64 %805, i64* %RCX, align 8, !tbaa !2424
  %806 = load i64, i64* %RCX
  %807 = load i64, i64* %PC
  %808 = add i64 %807, 4
  store i64 %808, i64* %PC
  %809 = sext i64 %806 to i128
  %810 = and i128 %809, -18446744073709551616
  %811 = zext i64 %806 to i128
  %812 = or i128 %810, %811
  %813 = mul nsw i128 11, %812
  %814 = trunc i128 %813 to i64
  store i64 %814, i64* %RCX, align 8, !tbaa !2424
  %815 = sext i64 %814 to i128
  %816 = icmp ne i128 %815, %813
  %817 = zext i1 %816 to i8
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %817, i8* %818, align 1, !tbaa !2428
  %819 = trunc i128 %813 to i32
  %820 = and i32 %819, 255
  %821 = call i32 @llvm.ctpop.i32(i32 %820) #16
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  %824 = xor i8 %823, 1
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %824, i8* %825, align 1, !tbaa !2442
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %826, align 1, !tbaa !2443
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %827, align 1, !tbaa !2444
  %828 = lshr i64 %814, 63
  %829 = trunc i64 %828 to i8
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %829, i8* %830, align 1, !tbaa !2445
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %817, i8* %831, align 1, !tbaa !2446
  %832 = load i64, i64* %RAX
  %833 = load i64, i64* %RCX
  %834 = load i64, i64* %PC
  %835 = add i64 %834, 3
  store i64 %835, i64* %PC
  %836 = add i64 %833, %832
  store i64 %836, i64* %RAX, align 8, !tbaa !2424
  %837 = icmp ult i64 %836, %832
  %838 = icmp ult i64 %836, %833
  %839 = or i1 %837, %838
  %840 = zext i1 %839 to i8
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %840, i8* %841, align 1, !tbaa !2428
  %842 = trunc i64 %836 to i32
  %843 = and i32 %842, 255
  %844 = call i32 @llvm.ctpop.i32(i32 %843) #16
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %847, i8* %848, align 1, !tbaa !2442
  %849 = xor i64 %833, %832
  %850 = xor i64 %849, %836
  %851 = lshr i64 %850, 4
  %852 = trunc i64 %851 to i8
  %853 = and i8 %852, 1
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %853, i8* %854, align 1, !tbaa !2443
  %855 = icmp eq i64 %836, 0
  %856 = zext i1 %855 to i8
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %856, i8* %857, align 1, !tbaa !2444
  %858 = lshr i64 %836, 63
  %859 = trunc i64 %858 to i8
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %859, i8* %860, align 1, !tbaa !2445
  %861 = lshr i64 %832, 63
  %862 = lshr i64 %833, 63
  %863 = xor i64 %858, %861
  %864 = xor i64 %858, %862
  %865 = add nuw nsw i64 %863, %864
  %866 = icmp eq i64 %865, 2
  %867 = zext i1 %866 to i8
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %867, i8* %868, align 1, !tbaa !2446
  %869 = load i64, i64* %RBP
  %870 = sub i64 %869, 20
  %871 = load i64, i64* %PC
  %872 = add i64 %871, 4
  store i64 %872, i64* %PC
  %873 = inttoptr i64 %870 to i32*
  %874 = load i32, i32* %873
  %875 = sext i32 %874 to i64
  store i64 %875, i64* %RCX, align 8, !tbaa !2424
  %876 = load i64, i64* %RAX
  %877 = load i64, i64* %RCX
  %878 = add i64 %877, %876
  %879 = load i64, i64* %PC
  %880 = add i64 %879, 4
  store i64 %880, i64* %PC
  %881 = inttoptr i64 %878 to i8*
  %882 = load i8, i8* %881
  %883 = sext i8 %882 to i64
  %884 = and i64 %883, 4294967295
  store i64 %884, i64* %RDX, align 8, !tbaa !2424
  %885 = load i32, i32* %EDX
  %886 = zext i32 %885 to i64
  %887 = load i64, i64* %PC
  %888 = add i64 %887, 3
  store i64 %888, i64* %PC
  %889 = sub i32 %885, 124
  %890 = icmp ult i32 %885, 124
  %891 = zext i1 %890 to i8
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %891, i8* %892, align 1, !tbaa !2428
  %893 = and i32 %889, 255
  %894 = call i32 @llvm.ctpop.i32(i32 %893) #16
  %895 = trunc i32 %894 to i8
  %896 = and i8 %895, 1
  %897 = xor i8 %896, 1
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %897, i8* %898, align 1, !tbaa !2442
  %899 = xor i64 124, %886
  %900 = trunc i64 %899 to i32
  %901 = xor i32 %900, %889
  %902 = lshr i32 %901, 4
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %904, i8* %905, align 1, !tbaa !2443
  %906 = icmp eq i32 %889, 0
  %907 = zext i1 %906 to i8
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %907, i8* %908, align 1, !tbaa !2444
  %909 = lshr i32 %889, 31
  %910 = trunc i32 %909 to i8
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %910, i8* %911, align 1, !tbaa !2445
  %912 = lshr i32 %885, 31
  %913 = xor i32 %909, %912
  %914 = add nuw nsw i32 %913, %912
  %915 = icmp eq i32 %914, 2
  %916 = zext i1 %915 to i8
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %916, i8* %917, align 1, !tbaa !2446
  %918 = load i64, i64* %PC
  %919 = add i64 %918, 26
  %920 = load i64, i64* %PC
  %921 = add i64 %920, 6
  %922 = load i64, i64* %PC
  %923 = add i64 %922, 6
  store i64 %923, i64* %PC
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %925 = load i8, i8* %924, align 1, !tbaa !2444
  %926 = icmp eq i8 %925, 0
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %929 = select i1 %926, i64 %919, i64 %921
  store i64 %929, i64* %928, align 8, !tbaa !2424
  %930 = load i8, i8* %BRANCH_TAKEN
  %931 = icmp eq i8 %930, 1
  br i1 %931, label %block_4007d3, label %block_4007bf

block_400698:                                     ; preds = %block_40066e
  %932 = load i64, i64* %RBP
  %933 = sub i64 %932, 80
  %934 = load i64, i64* %PC
  %935 = add i64 %934, 4
  store i64 %935, i64* %PC
  %936 = inttoptr i64 %933 to i64*
  %937 = load i64, i64* %936
  store i64 %937, i64* %RAX, align 8, !tbaa !2424
  %938 = load i64, i64* %RAX
  %939 = mul i64 %938, 8
  %940 = add i64 %939, add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 8)
  %941 = load i64, i64* %PC
  %942 = add i64 %941, 8
  store i64 %942, i64* %PC
  %943 = inttoptr i64 %940 to i64*
  %944 = load i64, i64* %943
  store i64 %944, i64* %RCX, align 8, !tbaa !2424
  %945 = load i64, i64* %RCX
  %946 = load i64, i64* %PC
  %947 = add i64 %946, 2
  store i64 %947, i64* %PC
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %945, i64* %948, align 8, !tbaa !2424
  %949 = load i64, i64* %PC
  switch i64 %949, label %1545 [
    i64 4196034, label %block_4006c2
    i64 4196048, label %block_4006d0
    i64 4196020, label %block_4006b4
    i64 4196062, label %block_4006de
    i64 4196006, label %block_4006a6
  ]

block_400817:                                     ; preds = %block_4007eb, %block_4007df
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.4, %block_4007df ], [ %MEMORY.4, %block_4007eb ]
  %950 = load i64, i64* %PC
  %951 = add i64 %950, 10
  store i64 %951, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %952 = load i64, i64* %RBP
  %953 = sub i64 %952, 24
  %954 = load i64, i64* %PC
  %955 = add i64 %954, 4
  store i64 %955, i64* %PC
  %956 = inttoptr i64 %953 to i32*
  %957 = load i32, i32* %956
  %958 = sext i32 %957 to i64
  store i64 %958, i64* %RCX, align 8, !tbaa !2424
  %959 = load i64, i64* %RCX
  %960 = load i64, i64* %PC
  %961 = add i64 %960, 4
  store i64 %961, i64* %PC
  %962 = sext i64 %959 to i128
  %963 = and i128 %962, -18446744073709551616
  %964 = zext i64 %959 to i128
  %965 = or i128 %963, %964
  %966 = mul nsw i128 11, %965
  %967 = trunc i128 %966 to i64
  store i64 %967, i64* %RCX, align 8, !tbaa !2424
  %968 = sext i64 %967 to i128
  %969 = icmp ne i128 %968, %966
  %970 = zext i1 %969 to i8
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %970, i8* %971, align 1, !tbaa !2428
  %972 = trunc i128 %966 to i32
  %973 = and i32 %972, 255
  %974 = call i32 @llvm.ctpop.i32(i32 %973) #16
  %975 = trunc i32 %974 to i8
  %976 = and i8 %975, 1
  %977 = xor i8 %976, 1
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %977, i8* %978, align 1, !tbaa !2442
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %979, align 1, !tbaa !2443
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %980, align 1, !tbaa !2444
  %981 = lshr i64 %967, 63
  %982 = trunc i64 %981 to i8
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %982, i8* %983, align 1, !tbaa !2445
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %970, i8* %984, align 1, !tbaa !2446
  %985 = load i64, i64* %RAX
  %986 = load i64, i64* %RCX
  %987 = load i64, i64* %PC
  %988 = add i64 %987, 3
  store i64 %988, i64* %PC
  %989 = add i64 %986, %985
  store i64 %989, i64* %RAX, align 8, !tbaa !2424
  %990 = icmp ult i64 %989, %985
  %991 = icmp ult i64 %989, %986
  %992 = or i1 %990, %991
  %993 = zext i1 %992 to i8
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %993, i8* %994, align 1, !tbaa !2428
  %995 = trunc i64 %989 to i32
  %996 = and i32 %995, 255
  %997 = call i32 @llvm.ctpop.i32(i32 %996) #16
  %998 = trunc i32 %997 to i8
  %999 = and i8 %998, 1
  %1000 = xor i8 %999, 1
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1000, i8* %1001, align 1, !tbaa !2442
  %1002 = xor i64 %986, %985
  %1003 = xor i64 %1002, %989
  %1004 = lshr i64 %1003, 4
  %1005 = trunc i64 %1004 to i8
  %1006 = and i8 %1005, 1
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1006, i8* %1007, align 1, !tbaa !2443
  %1008 = icmp eq i64 %989, 0
  %1009 = zext i1 %1008 to i8
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1009, i8* %1010, align 1, !tbaa !2444
  %1011 = lshr i64 %989, 63
  %1012 = trunc i64 %1011 to i8
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1012, i8* %1013, align 1, !tbaa !2445
  %1014 = lshr i64 %985, 63
  %1015 = lshr i64 %986, 63
  %1016 = xor i64 %1011, %1014
  %1017 = xor i64 %1011, %1015
  %1018 = add nuw nsw i64 %1016, %1017
  %1019 = icmp eq i64 %1018, 2
  %1020 = zext i1 %1019 to i8
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1020, i8* %1021, align 1, !tbaa !2446
  %1022 = load i64, i64* %RBP
  %1023 = sub i64 %1022, 20
  %1024 = load i64, i64* %PC
  %1025 = add i64 %1024, 4
  store i64 %1025, i64* %PC
  %1026 = inttoptr i64 %1023 to i32*
  %1027 = load i32, i32* %1026
  %1028 = sext i32 %1027 to i64
  store i64 %1028, i64* %RCX, align 8, !tbaa !2424
  %1029 = load i64, i64* %RAX
  %1030 = load i64, i64* %RCX
  %1031 = add i64 %1030, %1029
  %1032 = load i64, i64* %PC
  %1033 = add i64 %1032, 4
  store i64 %1033, i64* %PC
  %1034 = inttoptr i64 %1031 to i8*
  store i8 88, i8* %1034
  %1035 = load i64, i64* %PC
  %1036 = sub i64 %1035, 740
  %1037 = load i64, i64* %PC
  %1038 = add i64 %1037, 5
  %1039 = load i64, i64* %PC
  %1040 = add i64 %1039, 5
  store i64 %1040, i64* %PC
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1042 = load i64, i64* %1041, align 8, !tbaa !2424
  %1043 = add i64 %1042, -8
  %1044 = inttoptr i64 %1043 to i64*
  store i64 %1038, i64* %1044
  store i64 %1043, i64* %1041, align 8, !tbaa !2424
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1036, i64* %1045, align 8, !tbaa !2424
  %1046 = load i64, i64* %PC
  %1047 = call %struct.Memory* @sub_400550_draw(%struct.State* %0, i64 %1046, %struct.Memory* %MEMORY.3)
  %1048 = load i64, i64* %RBP
  %1049 = sub i64 %1048, 36
  %1050 = load i64, i64* %PC
  %1051 = add i64 %1050, 3
  store i64 %1051, i64* %PC
  %1052 = inttoptr i64 %1049 to i32*
  %1053 = load i32, i32* %1052
  %1054 = zext i32 %1053 to i64
  store i64 %1054, i64* %RDX, align 8, !tbaa !2424
  %1055 = load i64, i64* %RDX
  %1056 = load i64, i64* %PC
  %1057 = add i64 %1056, 3
  store i64 %1057, i64* %PC
  %1058 = trunc i64 %1055 to i32
  %1059 = add i32 1, %1058
  %1060 = zext i32 %1059 to i64
  store i64 %1060, i64* %RDX, align 8, !tbaa !2424
  %1061 = icmp ult i32 %1059, %1058
  %1062 = icmp ult i32 %1059, 1
  %1063 = or i1 %1061, %1062
  %1064 = zext i1 %1063 to i8
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1064, i8* %1065, align 1, !tbaa !2428
  %1066 = and i32 %1059, 255
  %1067 = call i32 @llvm.ctpop.i32(i32 %1066) #16
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  %1070 = xor i8 %1069, 1
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1070, i8* %1071, align 1, !tbaa !2442
  %1072 = xor i64 1, %1055
  %1073 = trunc i64 %1072 to i32
  %1074 = xor i32 %1073, %1059
  %1075 = lshr i32 %1074, 4
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1077, i8* %1078, align 1, !tbaa !2443
  %1079 = icmp eq i32 %1059, 0
  %1080 = zext i1 %1079 to i8
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1080, i8* %1081, align 1, !tbaa !2444
  %1082 = lshr i32 %1059, 31
  %1083 = trunc i32 %1082 to i8
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1083, i8* %1084, align 1, !tbaa !2445
  %1085 = lshr i32 %1058, 31
  %1086 = xor i32 %1082, %1085
  %1087 = add nuw nsw i32 %1086, %1082
  %1088 = icmp eq i32 %1087, 2
  %1089 = zext i1 %1088 to i8
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1089, i8* %1090, align 1, !tbaa !2446
  %1091 = load i64, i64* %RBP
  %1092 = sub i64 %1091, 36
  %1093 = load i32, i32* %EDX
  %1094 = zext i32 %1093 to i64
  %1095 = load i64, i64* %PC
  %1096 = add i64 %1095, 3
  store i64 %1096, i64* %PC
  %1097 = inttoptr i64 %1092 to i32*
  store i32 %1093, i32* %1097
  %1098 = load i64, i64* %PC
  %1099 = sub i64 %1098, 478
  %1100 = load i64, i64* %PC
  %1101 = add i64 %1100, 5
  store i64 %1101, i64* %PC
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1099, i64* %1102, align 8, !tbaa !2424
  %1103 = load i64, i64* %RBP
  %1104 = sub i64 %1103, 36
  %1105 = load i64, i64* %PC
  %1106 = add i64 %1105, 4
  store i64 %1106, i64* %PC
  %1107 = inttoptr i64 %1104 to i32*
  %1108 = load i32, i32* %1107
  %1109 = sub i32 %1108, 28
  %1110 = icmp ult i32 %1108, 28
  %1111 = zext i1 %1110 to i8
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1111, i8* %1112, align 1, !tbaa !2428
  %1113 = and i32 %1109, 255
  %1114 = call i32 @llvm.ctpop.i32(i32 %1113) #16
  %1115 = trunc i32 %1114 to i8
  %1116 = and i8 %1115, 1
  %1117 = xor i8 %1116, 1
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1117, i8* %1118, align 1, !tbaa !2442
  %1119 = xor i32 %1108, 28
  %1120 = xor i32 %1119, %1109
  %1121 = lshr i32 %1120, 4
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1123, i8* %1124, align 1, !tbaa !2443
  %1125 = icmp eq i32 %1109, 0
  %1126 = zext i1 %1125 to i8
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1126, i8* %1127, align 1, !tbaa !2444
  %1128 = lshr i32 %1109, 31
  %1129 = trunc i32 %1128 to i8
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1129, i8* %1130, align 1, !tbaa !2445
  %1131 = lshr i32 %1108, 31
  %1132 = xor i32 %1128, %1131
  %1133 = add nuw nsw i32 %1132, %1131
  %1134 = icmp eq i32 %1133, 2
  %1135 = zext i1 %1134 to i8
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1135, i8* %1136, align 1, !tbaa !2446
  %1137 = load i64, i64* %PC
  %1138 = add i64 %1137, 479
  %1139 = load i64, i64* %PC
  %1140 = add i64 %1139, 6
  %1141 = load i64, i64* %PC
  %1142 = add i64 %1141, 6
  store i64 %1142, i64* %PC
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1144 = load i8, i8* %1143, align 1, !tbaa !2445
  %1145 = icmp ne i8 %1144, 0
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1147 = load i8, i8* %1146, align 1, !tbaa !2446
  %1148 = icmp ne i8 %1147, 0
  %1149 = xor i1 %1145, %1148
  %1150 = xor i1 %1149, true
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1153 = select i1 %1149, i64 %1140, i64 %1138
  store i64 %1153, i64* %1152, align 8, !tbaa !2424
  %1154 = load i8, i8* %BRANCH_TAKEN
  %1155 = icmp eq i8 %1154, 1
  br i1 %1155, label %block_400847, label %block_40066e

block_4007df:                                     ; preds = %block_4007c9, %block_4007d3, %block_400769
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.5, %block_400769 ], [ %MEMORY.1, %block_4007d3 ], [ %MEMORY.5, %block_4007c9 ]
  %1156 = load i64, i64* %RBP
  %1157 = sub i64 %1156, 28
  %1158 = load i64, i64* %PC
  %1159 = add i64 %1158, 3
  store i64 %1159, i64* %PC
  %1160 = inttoptr i64 %1157 to i32*
  %1161 = load i32, i32* %1160
  %1162 = zext i32 %1161 to i64
  store i64 %1162, i64* %RAX, align 8, !tbaa !2424
  %1163 = load i32, i32* %EAX
  %1164 = zext i32 %1163 to i64
  %1165 = load i64, i64* %RBP
  %1166 = sub i64 %1165, 20
  %1167 = load i64, i64* %PC
  %1168 = add i64 %1167, 3
  store i64 %1168, i64* %PC
  %1169 = inttoptr i64 %1166 to i32*
  %1170 = load i32, i32* %1169
  %1171 = sub i32 %1163, %1170
  %1172 = icmp ult i32 %1163, %1170
  %1173 = zext i1 %1172 to i8
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1173, i8* %1174, align 1, !tbaa !2428
  %1175 = and i32 %1171, 255
  %1176 = call i32 @llvm.ctpop.i32(i32 %1175) #16
  %1177 = trunc i32 %1176 to i8
  %1178 = and i8 %1177, 1
  %1179 = xor i8 %1178, 1
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1179, i8* %1180, align 1, !tbaa !2442
  %1181 = xor i32 %1170, %1163
  %1182 = xor i32 %1181, %1171
  %1183 = lshr i32 %1182, 4
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1185, i8* %1186, align 1, !tbaa !2443
  %1187 = icmp eq i32 %1171, 0
  %1188 = zext i1 %1187 to i8
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1188, i8* %1189, align 1, !tbaa !2444
  %1190 = lshr i32 %1171, 31
  %1191 = trunc i32 %1190 to i8
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1191, i8* %1192, align 1, !tbaa !2445
  %1193 = lshr i32 %1163, 31
  %1194 = lshr i32 %1170, 31
  %1195 = xor i32 %1194, %1193
  %1196 = xor i32 %1190, %1193
  %1197 = add nuw nsw i32 %1196, %1195
  %1198 = icmp eq i32 %1197, 2
  %1199 = zext i1 %1198 to i8
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1199, i8* %1200, align 1, !tbaa !2446
  %1201 = load i64, i64* %PC
  %1202 = add i64 %1201, 50
  %1203 = load i64, i64* %PC
  %1204 = add i64 %1203, 6
  %1205 = load i64, i64* %PC
  %1206 = add i64 %1205, 6
  store i64 %1206, i64* %PC
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1208 = load i8, i8* %1207, align 1, !tbaa !2444
  %1209 = icmp eq i8 %1208, 0
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1212 = select i1 %1209, i64 %1202, i64 %1204
  store i64 %1212, i64* %1211, align 8, !tbaa !2424
  %1213 = load i8, i8* %BRANCH_TAKEN
  %1214 = icmp eq i8 %1213, 1
  br i1 %1214, label %block_400817, label %block_4007eb

block_4006b4:                                     ; preds = %block_400698
  %1215 = load i64, i64* %RBP
  %1216 = sub i64 %1215, 24
  %1217 = load i64, i64* %PC
  %1218 = add i64 %1217, 3
  store i64 %1218, i64* %PC
  %1219 = inttoptr i64 %1216 to i32*
  %1220 = load i32, i32* %1219
  %1221 = zext i32 %1220 to i64
  store i64 %1221, i64* %RAX, align 8, !tbaa !2424
  %1222 = load i64, i64* %RAX
  %1223 = load i64, i64* %PC
  %1224 = add i64 %1223, 3
  store i64 %1224, i64* %PC
  %1225 = trunc i64 %1222 to i32
  %1226 = add i32 1, %1225
  %1227 = zext i32 %1226 to i64
  store i64 %1227, i64* %RAX, align 8, !tbaa !2424
  %1228 = icmp ult i32 %1226, %1225
  %1229 = icmp ult i32 %1226, 1
  %1230 = or i1 %1228, %1229
  %1231 = zext i1 %1230 to i8
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1231, i8* %1232, align 1, !tbaa !2428
  %1233 = and i32 %1226, 255
  %1234 = call i32 @llvm.ctpop.i32(i32 %1233) #16
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  %1237 = xor i8 %1236, 1
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1237, i8* %1238, align 1, !tbaa !2442
  %1239 = xor i64 1, %1222
  %1240 = trunc i64 %1239 to i32
  %1241 = xor i32 %1240, %1226
  %1242 = lshr i32 %1241, 4
  %1243 = trunc i32 %1242 to i8
  %1244 = and i8 %1243, 1
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1244, i8* %1245, align 1, !tbaa !2443
  %1246 = icmp eq i32 %1226, 0
  %1247 = zext i1 %1246 to i8
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1247, i8* %1248, align 1, !tbaa !2444
  %1249 = lshr i32 %1226, 31
  %1250 = trunc i32 %1249 to i8
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1250, i8* %1251, align 1, !tbaa !2445
  %1252 = lshr i32 %1225, 31
  %1253 = xor i32 %1249, %1252
  %1254 = add nuw nsw i32 %1253, %1249
  %1255 = icmp eq i32 %1254, 2
  %1256 = zext i1 %1255 to i8
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1256, i8* %1257, align 1, !tbaa !2446
  %1258 = load i64, i64* %RBP
  %1259 = sub i64 %1258, 24
  %1260 = load i32, i32* %EAX
  %1261 = zext i32 %1260 to i64
  %1262 = load i64, i64* %PC
  %1263 = add i64 %1262, 3
  store i64 %1263, i64* %PC
  %1264 = inttoptr i64 %1259 to i32*
  store i32 %1260, i32* %1264
  %1265 = load i64, i64* %PC
  %1266 = add i64 %1265, 83
  %1267 = load i64, i64* %PC
  %1268 = add i64 %1267, 5
  store i64 %1268, i64* %PC
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1266, i64* %1269, align 8, !tbaa !2424
  br label %block_400710

block_400710:                                     ; preds = %block_4006b4, %block_4006a6, %block_4006c2, %block_4006d0
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.2, %block_4006c2 ], [ %1047, %block_4006a6 ], [ %1047, %block_4006b4 ], [ %1047, %block_4006d0 ]
  %1270 = load i64, i64* %PC
  %1271 = add i64 %1270, 10
  store i64 %1271, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %1272 = load i64, i64* %RBP
  %1273 = sub i64 %1272, 24
  %1274 = load i64, i64* %PC
  %1275 = add i64 %1274, 4
  store i64 %1275, i64* %PC
  %1276 = inttoptr i64 %1273 to i32*
  %1277 = load i32, i32* %1276
  %1278 = sext i32 %1277 to i64
  store i64 %1278, i64* %RCX, align 8, !tbaa !2424
  %1279 = load i64, i64* %RCX
  %1280 = load i64, i64* %PC
  %1281 = add i64 %1280, 4
  store i64 %1281, i64* %PC
  %1282 = sext i64 %1279 to i128
  %1283 = and i128 %1282, -18446744073709551616
  %1284 = zext i64 %1279 to i128
  %1285 = or i128 %1283, %1284
  %1286 = mul nsw i128 11, %1285
  %1287 = trunc i128 %1286 to i64
  store i64 %1287, i64* %RCX, align 8, !tbaa !2424
  %1288 = sext i64 %1287 to i128
  %1289 = icmp ne i128 %1288, %1286
  %1290 = zext i1 %1289 to i8
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1290, i8* %1291, align 1, !tbaa !2428
  %1292 = trunc i128 %1286 to i32
  %1293 = and i32 %1292, 255
  %1294 = call i32 @llvm.ctpop.i32(i32 %1293) #16
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = xor i8 %1296, 1
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1297, i8* %1298, align 1, !tbaa !2442
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1299, align 1, !tbaa !2443
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1300, align 1, !tbaa !2444
  %1301 = lshr i64 %1287, 63
  %1302 = trunc i64 %1301 to i8
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1302, i8* %1303, align 1, !tbaa !2445
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1290, i8* %1304, align 1, !tbaa !2446
  %1305 = load i64, i64* %RAX
  %1306 = load i64, i64* %RCX
  %1307 = load i64, i64* %PC
  %1308 = add i64 %1307, 3
  store i64 %1308, i64* %PC
  %1309 = add i64 %1306, %1305
  store i64 %1309, i64* %RAX, align 8, !tbaa !2424
  %1310 = icmp ult i64 %1309, %1305
  %1311 = icmp ult i64 %1309, %1306
  %1312 = or i1 %1310, %1311
  %1313 = zext i1 %1312 to i8
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1313, i8* %1314, align 1, !tbaa !2428
  %1315 = trunc i64 %1309 to i32
  %1316 = and i32 %1315, 255
  %1317 = call i32 @llvm.ctpop.i32(i32 %1316) #16
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  %1320 = xor i8 %1319, 1
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1320, i8* %1321, align 1, !tbaa !2442
  %1322 = xor i64 %1306, %1305
  %1323 = xor i64 %1322, %1309
  %1324 = lshr i64 %1323, 4
  %1325 = trunc i64 %1324 to i8
  %1326 = and i8 %1325, 1
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1326, i8* %1327, align 1, !tbaa !2443
  %1328 = icmp eq i64 %1309, 0
  %1329 = zext i1 %1328 to i8
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1329, i8* %1330, align 1, !tbaa !2444
  %1331 = lshr i64 %1309, 63
  %1332 = trunc i64 %1331 to i8
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1332, i8* %1333, align 1, !tbaa !2445
  %1334 = lshr i64 %1305, 63
  %1335 = lshr i64 %1306, 63
  %1336 = xor i64 %1331, %1334
  %1337 = xor i64 %1331, %1335
  %1338 = add nuw nsw i64 %1336, %1337
  %1339 = icmp eq i64 %1338, 2
  %1340 = zext i1 %1339 to i8
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1340, i8* %1341, align 1, !tbaa !2446
  %1342 = load i64, i64* %RBP
  %1343 = sub i64 %1342, 20
  %1344 = load i64, i64* %PC
  %1345 = add i64 %1344, 4
  store i64 %1345, i64* %PC
  %1346 = inttoptr i64 %1343 to i32*
  %1347 = load i32, i32* %1346
  %1348 = sext i32 %1347 to i64
  store i64 %1348, i64* %RCX, align 8, !tbaa !2424
  %1349 = load i64, i64* %RAX
  %1350 = load i64, i64* %RCX
  %1351 = add i64 %1350, %1349
  %1352 = load i64, i64* %PC
  %1353 = add i64 %1352, 4
  store i64 %1353, i64* %PC
  %1354 = inttoptr i64 %1351 to i8*
  %1355 = load i8, i8* %1354
  %1356 = sext i8 %1355 to i64
  %1357 = and i64 %1356, 4294967295
  store i64 %1357, i64* %RDX, align 8, !tbaa !2424
  %1358 = load i32, i32* %EDX
  %1359 = zext i32 %1358 to i64
  %1360 = load i64, i64* %PC
  %1361 = add i64 %1360, 3
  store i64 %1361, i64* %PC
  %1362 = sub i32 %1358, 35
  %1363 = icmp ult i32 %1358, 35
  %1364 = zext i1 %1363 to i8
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1364, i8* %1365, align 1, !tbaa !2428
  %1366 = and i32 %1362, 255
  %1367 = call i32 @llvm.ctpop.i32(i32 %1366) #16
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  %1370 = xor i8 %1369, 1
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1370, i8* %1371, align 1, !tbaa !2442
  %1372 = xor i64 35, %1359
  %1373 = trunc i64 %1372 to i32
  %1374 = xor i32 %1373, %1362
  %1375 = lshr i32 %1374, 4
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1377, i8* %1378, align 1, !tbaa !2443
  %1379 = icmp eq i32 %1362, 0
  %1380 = zext i1 %1379 to i8
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1380, i8* %1381, align 1, !tbaa !2444
  %1382 = lshr i32 %1362, 31
  %1383 = trunc i32 %1382 to i8
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1383, i8* %1384, align 1, !tbaa !2445
  %1385 = lshr i32 %1358, 31
  %1386 = xor i32 %1382, %1385
  %1387 = add nuw nsw i32 %1386, %1385
  %1388 = icmp eq i32 %1387, 2
  %1389 = zext i1 %1388 to i8
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1389, i8* %1390, align 1, !tbaa !2446
  %1391 = load i64, i64* %PC
  %1392 = add i64 %1391, 57
  %1393 = load i64, i64* %PC
  %1394 = add i64 %1393, 6
  %1395 = load i64, i64* %PC
  %1396 = add i64 %1395, 6
  store i64 %1396, i64* %PC
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1398 = load i8, i8* %1397, align 1, !tbaa !2444
  %1399 = icmp eq i8 %1398, 0
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1402 = select i1 %1399, i64 %1392, i64 %1394
  store i64 %1402, i64* %1401, align 8, !tbaa !2424
  %1403 = load i8, i8* %BRANCH_TAKEN
  %1404 = icmp eq i8 %1403, 1
  %1405 = load i64, i64* %PC
  %1406 = add i64 %1405, 10
  store i64 %1406, i64* %PC
  br i1 %1404, label %block_400769, label %block_400736

block_4007eb:                                     ; preds = %block_4007df
  %1407 = load i64, i64* %RBP
  %1408 = sub i64 %1407, 32
  %1409 = load i64, i64* %PC
  %1410 = add i64 %1409, 3
  store i64 %1410, i64* %PC
  %1411 = inttoptr i64 %1408 to i32*
  %1412 = load i32, i32* %1411
  %1413 = zext i32 %1412 to i64
  store i64 %1413, i64* %RAX, align 8, !tbaa !2424
  %1414 = load i32, i32* %EAX
  %1415 = zext i32 %1414 to i64
  %1416 = load i64, i64* %RBP
  %1417 = sub i64 %1416, 24
  %1418 = load i64, i64* %PC
  %1419 = add i64 %1418, 3
  store i64 %1419, i64* %PC
  %1420 = inttoptr i64 %1417 to i32*
  %1421 = load i32, i32* %1420
  %1422 = sub i32 %1414, %1421
  %1423 = icmp ult i32 %1414, %1421
  %1424 = zext i1 %1423 to i8
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1424, i8* %1425, align 1, !tbaa !2428
  %1426 = and i32 %1422, 255
  %1427 = call i32 @llvm.ctpop.i32(i32 %1426) #16
  %1428 = trunc i32 %1427 to i8
  %1429 = and i8 %1428, 1
  %1430 = xor i8 %1429, 1
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1430, i8* %1431, align 1, !tbaa !2442
  %1432 = xor i32 %1421, %1414
  %1433 = xor i32 %1432, %1422
  %1434 = lshr i32 %1433, 4
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1436, i8* %1437, align 1, !tbaa !2443
  %1438 = icmp eq i32 %1422, 0
  %1439 = zext i1 %1438 to i8
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1439, i8* %1440, align 1, !tbaa !2444
  %1441 = lshr i32 %1422, 31
  %1442 = trunc i32 %1441 to i8
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1442, i8* %1443, align 1, !tbaa !2445
  %1444 = lshr i32 %1414, 31
  %1445 = lshr i32 %1421, 31
  %1446 = xor i32 %1445, %1444
  %1447 = xor i32 %1441, %1444
  %1448 = add nuw nsw i32 %1447, %1446
  %1449 = icmp eq i32 %1448, 2
  %1450 = zext i1 %1449 to i8
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1450, i8* %1451, align 1, !tbaa !2446
  %1452 = load i64, i64* %PC
  %1453 = add i64 %1452, 38
  %1454 = load i64, i64* %PC
  %1455 = add i64 %1454, 6
  %1456 = load i64, i64* %PC
  %1457 = add i64 %1456, 6
  store i64 %1457, i64* %PC
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1459 = load i8, i8* %1458, align 1, !tbaa !2444
  %1460 = icmp eq i8 %1459, 0
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1463 = select i1 %1460, i64 %1453, i64 %1455
  store i64 %1463, i64* %1462, align 8, !tbaa !2424
  %1464 = load i8, i8* %BRANCH_TAKEN
  %1465 = icmp eq i8 %1464, 1
  br i1 %1465, label %block_400817, label %block_4007f7

block_400847:                                     ; preds = %block_400817
  %1466 = load i64, i64* %PC
  %1467 = add i64 %1466, 10
  store i64 %1467, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  %1468 = load i64, i64* %PC
  %1469 = add i64 %1468, 2
  store i64 %1469, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %1470 = load i64, i64* %PC
  %1471 = sub i64 %1470, 1043
  %1472 = load i64, i64* %PC
  %1473 = add i64 %1472, 5
  %1474 = load i64, i64* %PC
  %1475 = add i64 %1474, 5
  store i64 %1475, i64* %PC
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1477 = load i64, i64* %1476, align 8, !tbaa !2424
  %1478 = add i64 %1477, -8
  %1479 = inttoptr i64 %1478 to i64*
  store i64 %1473, i64* %1479
  store i64 %1478, i64* %1476, align 8, !tbaa !2424
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1471, i64* %1480, align 8, !tbaa !2424
  %1481 = load i64, i64* %PC
  %1482 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1481, %struct.Memory* %1047)
  %1483 = load i64, i64* %RBP
  %1484 = sub i64 %1483, 4
  %1485 = load i64, i64* %PC
  %1486 = add i64 %1485, 7
  store i64 %1486, i64* %PC
  %1487 = inttoptr i64 %1484 to i32*
  store i32 1, i32* %1487
  %1488 = load i64, i64* %RBP
  %1489 = sub i64 %1488, 108
  %1490 = load i32, i32* %EAX
  %1491 = zext i32 %1490 to i64
  %1492 = load i64, i64* %PC
  %1493 = add i64 %1492, 3
  store i64 %1493, i64* %PC
  %1494 = inttoptr i64 %1489 to i32*
  store i32 %1490, i32* %1494
  br label %block_400862

block_40078f:                                     ; preds = %block_400769
  %1495 = load i64, i64* %RBP
  %1496 = sub i64 %1495, 24
  %1497 = load i64, i64* %PC
  %1498 = add i64 %1497, 4
  store i64 %1498, i64* %PC
  %1499 = inttoptr i64 %1496 to i32*
  %1500 = load i32, i32* %1499
  %1501 = sub i32 %1500, 2
  %1502 = icmp ult i32 %1500, 2
  %1503 = zext i1 %1502 to i8
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1503, i8* %1504, align 1, !tbaa !2428
  %1505 = and i32 %1501, 255
  %1506 = call i32 @llvm.ctpop.i32(i32 %1505) #16
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  %1509 = xor i8 %1508, 1
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1509, i8* %1510, align 1, !tbaa !2442
  %1511 = xor i32 %1500, 2
  %1512 = xor i32 %1511, %1501
  %1513 = lshr i32 %1512, 4
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1515, i8* %1516, align 1, !tbaa !2443
  %1517 = icmp eq i32 %1501, 0
  %1518 = zext i1 %1517 to i8
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1518, i8* %1519, align 1, !tbaa !2444
  %1520 = lshr i32 %1501, 31
  %1521 = trunc i32 %1520 to i8
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1521, i8* %1522, align 1, !tbaa !2445
  %1523 = lshr i32 %1500, 31
  %1524 = xor i32 %1520, %1523
  %1525 = add nuw nsw i32 %1524, %1523
  %1526 = icmp eq i32 %1525, 2
  %1527 = zext i1 %1526 to i8
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1527, i8* %1528, align 1, !tbaa !2446
  %1529 = load i64, i64* %PC
  %1530 = add i64 %1529, 64
  %1531 = load i64, i64* %PC
  %1532 = add i64 %1531, 6
  %1533 = load i64, i64* %PC
  %1534 = add i64 %1533, 6
  store i64 %1534, i64* %PC
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1536 = load i8, i8* %1535, align 1, !tbaa !2444
  %1537 = icmp eq i8 %1536, 0
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1540 = select i1 %1537, i64 %1530, i64 %1532
  store i64 %1540, i64* %1539, align 8, !tbaa !2424
  %1541 = load i8, i8* %BRANCH_TAKEN
  %1542 = icmp eq i8 %1541, 1
  br i1 %1542, label %block_4007d3, label %block_400799

block_4006de:                                     ; preds = %block_400698, %block_40066e
  %MEMORY.6 = phi %struct.Memory* [ %1047, %block_40066e ], [ %1047, %block_400698 ]
  %1543 = load i64, i64* %PC
  %1544 = tail call %struct.Memory* @sub_4006de(%struct.State* %0, i64 %1543, %struct.Memory* %MEMORY.6)
  ret %struct.Memory* %1544

; <label>:1545:                                   ; preds = %block_400698
  %1546 = load i64, i64* %PC
  %1547 = tail call %struct.Memory* @__remill_missing_block(%struct.State* %0, i64 %1546, %struct.Memory* %1047)
  ret %struct.Memory* %1547
}

; Function Attrs: noinline
define %struct.Memory* @sub_400418__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400418:
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
  store i64 %15, i64* %RSP, align 8, !tbaa !2424
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
  store i8 %24, i8* %25, align 1, !tbaa !2442
  %26 = xor i64 8, %12
  %27 = xor i64 %26, %15
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1, !tbaa !2443
  %32 = icmp eq i64 %15, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1, !tbaa !2444
  %35 = lshr i64 %15, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1, !tbaa !2445
  %38 = lshr i64 %12, 63
  %39 = xor i64 %35, %38
  %40 = add nuw nsw i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1, !tbaa !2446
  %44 = load i64, i64* %PC
  %45 = add i64 %44, 7
  store i64 %45, i64* %PC
  %46 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_600ff0__got_type* @seg_600ff0__got to i64), i64 8) to i64*)
  store i64 %46, i64* %RAX, align 8, !tbaa !2424
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
  store i8 %58, i8* %59, align 1, !tbaa !2442
  %60 = icmp eq i64 %51, 0
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %61, i8* %62, align 1, !tbaa !2444
  %63 = lshr i64 %51, 63
  %64 = trunc i64 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %64, i8* %65, align 1, !tbaa !2445
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %66, align 1, !tbaa !2446
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %67, align 1, !tbaa !2443
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 4
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 2
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 2
  store i64 %73, i64* %PC
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %75 = load i8, i8* %74, align 1, !tbaa !2444
  store i8 %75, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %77 = icmp ne i8 %75, 0
  %78 = select i1 %77, i64 %69, i64 %71
  store i64 %78, i64* %76, align 8, !tbaa !2424
  %79 = load i8, i8* %BRANCH_TAKEN
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %block_40042a, label %block_400428

block_40042a:                                     ; preds = %block_400428, %block_400418
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400418 ], [ %134, %block_400428 ]
  %81 = load i64, i64* %RSP
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC
  %84 = add i64 8, %81
  store i64 %84, i64* %RSP, align 8, !tbaa !2424
  %85 = icmp ult i64 %84, %81
  %86 = icmp ult i64 %84, 8
  %87 = or i1 %85, %86
  %88 = zext i1 %87 to i8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %88, i8* %89, align 1, !tbaa !2428
  %90 = trunc i64 %84 to i32
  %91 = and i32 %90, 255
  %92 = call i32 @llvm.ctpop.i32(i32 %91) #16
  %93 = trunc i32 %92 to i8
  %94 = and i8 %93, 1
  %95 = xor i8 %94, 1
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %95, i8* %96, align 1, !tbaa !2442
  %97 = xor i64 8, %81
  %98 = xor i64 %97, %84
  %99 = lshr i64 %98, 4
  %100 = trunc i64 %99 to i8
  %101 = and i8 %100, 1
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %101, i8* %102, align 1, !tbaa !2443
  %103 = icmp eq i64 %84, 0
  %104 = zext i1 %103 to i8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %104, i8* %105, align 1, !tbaa !2444
  %106 = lshr i64 %84, 63
  %107 = trunc i64 %106 to i8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %107, i8* %108, align 1, !tbaa !2445
  %109 = lshr i64 %81, 63
  %110 = xor i64 %106, %109
  %111 = add nuw nsw i64 %110, %106
  %112 = icmp eq i64 %111, 2
  %113 = zext i1 %112 to i8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %113, i8* %114, align 1, !tbaa !2446
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 1
  store i64 %116, i64* %PC
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %119 = load i64, i64* %118, align 8, !tbaa !2424
  %120 = inttoptr i64 %119 to i64*
  %121 = load i64, i64* %120
  store i64 %121, i64* %117, align 8, !tbaa !2424
  %122 = add i64 %119, 8
  store i64 %122, i64* %118, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_400428:                                     ; preds = %block_400418
  %123 = load i64, i64* %RAX
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 2
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 2
  store i64 %127, i64* %PC
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %129 = load i64, i64* %128, align 8, !tbaa !2424
  %130 = add i64 %129, -8
  %131 = inttoptr i64 %130 to i64*
  store i64 %125, i64* %131
  store i64 %130, i64* %128, align 8, !tbaa !2424
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %123, i64* %132, align 8, !tbaa !2424
  %133 = load i64, i64* %PC
  %134 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %133, %struct.Memory* %2)
  br label %block_40042a
}

; Function Attrs: noinline
define %struct.Memory* @sub_400510___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400510:
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
  store i8 %20, i8* %21, align 1, !tbaa !2442
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1, !tbaa !2443
  %23 = icmp eq i8 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1, !tbaa !2444
  %26 = lshr i8 %14, 7
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1, !tbaa !2445
  %28 = lshr i8 %14, 7
  %29 = xor i8 %26, %28
  %30 = add nuw nsw i8 %29, %28
  %31 = icmp eq i8 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1, !tbaa !2446
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 25
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 2
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 2
  store i64 %39, i64* %PC
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %41 = load i8, i8* %40, align 1, !tbaa !2444
  %42 = icmp eq i8 %41, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %45 = select i1 %42, i64 %35, i64 %37
  store i64 %45, i64* %44, align 8, !tbaa !2424
  %46 = load i8, i8* %BRANCH_TAKEN
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %block_400530, label %block_400519

block_400530:                                     ; preds = %block_400510
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 2
  store i64 %49, i64* %PC
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8, !tbaa !2424
  %53 = inttoptr i64 %52 to i64*
  %54 = load i64, i64* %53
  store i64 %54, i64* %50, align 8, !tbaa !2424
  %55 = add i64 %52, 8
  store i64 %55, i64* %51, align 8, !tbaa !2424
  ret %struct.Memory* %2

block_400519:                                     ; preds = %block_400510
  %56 = load i64, i64* %RBP
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 1
  store i64 %58, i64* %PC
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %60 = load i64, i64* %59, align 8, !tbaa !2424
  %61 = add i64 %60, -8
  %62 = inttoptr i64 %61 to i64*
  store i64 %56, i64* %62
  store i64 %61, i64* %59, align 8, !tbaa !2424
  %63 = load i64, i64* %RSP
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 3
  store i64 %65, i64* %PC
  store i64 %63, i64* %RBP, align 8, !tbaa !2424
  %66 = load i64, i64* %PC
  %67 = sub i64 %66, 125
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 5
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 5
  store i64 %71, i64* %PC
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %73 = load i64, i64* %72, align 8, !tbaa !2424
  %74 = add i64 %73, -8
  %75 = inttoptr i64 %74 to i64*
  store i64 %69, i64* %75
  store i64 %74, i64* %72, align 8, !tbaa !2424
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %67, i64* %76, align 8, !tbaa !2424
  %77 = load i64, i64* %PC
  %78 = call %struct.Memory* @sub_4004a0_deregister_tm_clones(%struct.State* %0, i64 %77, %struct.Memory* %2)
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC
  store i8 1, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 1
  store i64 %82, i64* %PC
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %84 = load i64, i64* %83, align 8, !tbaa !2424
  %85 = add i64 %84, 8
  %86 = inttoptr i64 %84 to i64*
  %87 = load i64, i64* %86
  store i64 %87, i64* %RBP, align 8, !tbaa !2424
  store i64 %85, i64* %83, align 8, !tbaa !2424
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 1
  store i64 %89, i64* %PC
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %92 = load i64, i64* %91, align 8, !tbaa !2424
  %93 = inttoptr i64 %92 to i64*
  %94 = load i64, i64* %93
  store i64 %94, i64* %90, align 8, !tbaa !2424
  %95 = add i64 %92, 8
  store i64 %95, i64* %91, align 8, !tbaa !2424
  ret %struct.Memory* %78
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004d0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004d0:
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
  store i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2424
  %29 = load i64, i64* %RBP
  %30 = load i64, i64* %PC
  %31 = add i64 %30, 1
  store i64 %31, i64* %PC
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %33 = load i64, i64* %32, align 8, !tbaa !2424
  %34 = add i64 %33, -8
  %35 = inttoptr i64 %34 to i64*
  store i64 %29, i64* %35
  store i64 %34, i64* %32, align 8, !tbaa !2424
  %36 = load i64, i64* %RSI
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 7
  store i64 %38, i64* %PC
  %39 = sub i64 %36, ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64)
  store i64 %39, i64* %RSI, align 8, !tbaa !2424
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
  store i8 %48, i8* %49, align 1, !tbaa !2442
  %50 = xor i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %36
  %51 = xor i64 %50, %39
  %52 = lshr i64 %51, 4
  %53 = trunc i64 %52 to i8
  %54 = and i8 %53, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %54, i8* %55, align 1, !tbaa !2443
  %56 = icmp eq i64 %39, 0
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %57, i8* %58, align 1, !tbaa !2444
  %59 = lshr i64 %39, 63
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %60, i8* %61, align 1, !tbaa !2445
  %62 = lshr i64 %36, 63
  %63 = xor i64 lshr (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 63), %62
  %64 = xor i64 %59, %62
  %65 = add nuw nsw i64 %64, %63
  %66 = icmp eq i64 %65, 2
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %67, i8* %68, align 1, !tbaa !2446
  %69 = load i64, i64* %RSP
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 3
  store i64 %71, i64* %PC
  store i64 %69, i64* %RBP, align 8, !tbaa !2424
  %72 = load i64, i64* %RSI
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC
  %75 = ashr i64 %72, 2
  %76 = trunc i64 %75 to i8
  %77 = and i8 %76, 1
  %78 = ashr i64 %75, 1
  store i64 %78, i64* %RSI, align 8, !tbaa !2424
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %77, i8* %79, align 1, !tbaa !2447
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %81 = trunc i64 %78 to i32
  %82 = and i32 %81, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82) #16
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %80, align 1, !tbaa !2447
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %87, align 1, !tbaa !2447
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %89 = icmp eq i64 %78, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %88, align 1, !tbaa !2447
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %92 = lshr i64 %78, 63
  %93 = trunc i64 %92 to i8
  store i8 %93, i8* %91, align 1, !tbaa !2447
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %94, align 1, !tbaa !2447
  %95 = load i64, i64* %RSI
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC
  store i64 %95, i64* %RAX, align 8, !tbaa !2424
  %98 = load i64, i64* %RAX
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 4
  store i64 %100, i64* %PC
  %101 = lshr i64 %98, 62
  %102 = trunc i64 %101 to i8
  %103 = and i8 %102, 1
  %104 = lshr i64 %101, 1
  store i64 %104, i64* %RAX, align 8, !tbaa !2424
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %103, i8* %105, align 1, !tbaa !2447
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %107 = trunc i64 %104 to i32
  %108 = and i32 %107, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108) #16
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %106, align 1, !tbaa !2447
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %113, align 1, !tbaa !2447
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %115 = icmp eq i64 %104, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %114, align 1, !tbaa !2447
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %117, align 1, !tbaa !2447
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %118, align 1, !tbaa !2447
  %119 = load i64, i64* %RSI
  %120 = load i64, i64* %RAX
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 3
  store i64 %122, i64* %PC
  %123 = add i64 %120, %119
  store i64 %123, i64* %RSI, align 8, !tbaa !2424
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
  store i8 %134, i8* %135, align 1, !tbaa !2442
  %136 = xor i64 %120, %119
  %137 = xor i64 %136, %123
  %138 = lshr i64 %137, 4
  %139 = trunc i64 %138 to i8
  %140 = and i8 %139, 1
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %140, i8* %141, align 1, !tbaa !2443
  %142 = icmp eq i64 %123, 0
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %143, i8* %144, align 1, !tbaa !2444
  %145 = lshr i64 %123, 63
  %146 = trunc i64 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %146, i8* %147, align 1, !tbaa !2445
  %148 = lshr i64 %119, 63
  %149 = lshr i64 %120, 63
  %150 = xor i64 %145, %148
  %151 = xor i64 %145, %149
  %152 = add nuw nsw i64 %150, %151
  %153 = icmp eq i64 %152, 2
  %154 = zext i1 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %154, i8* %155, align 1, !tbaa !2446
  %156 = load i64, i64* %RSI
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 3
  store i64 %158, i64* %PC
  %159 = trunc i64 %156 to i8
  %160 = and i8 %159, 1
  %161 = ashr i64 %156, 1
  store i64 %161, i64* %RSI, align 8, !tbaa !2424
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %160, i8* %162, align 1, !tbaa !2447
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %164 = trunc i64 %161 to i32
  %165 = and i32 %164, 255
  %166 = call i32 @llvm.ctpop.i32(i32 %165) #16
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %163, align 1, !tbaa !2447
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %170, align 1, !tbaa !2447
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %172 = icmp eq i64 %161, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %171, align 1, !tbaa !2447
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %175 = lshr i64 %161, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %174, align 1, !tbaa !2447
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %177, align 1, !tbaa !2447
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 23
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 2
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 2
  store i64 %183, i64* %PC
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %185 = load i8, i8* %184, align 1, !tbaa !2444
  store i8 %185, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %187 = icmp ne i8 %185, 0
  %188 = select i1 %187, i64 %179, i64 %181
  store i64 %188, i64* %186, align 8, !tbaa !2424
  %189 = load i8, i8* %BRANCH_TAKEN
  %190 = icmp eq i8 %189, 1
  br i1 %190, label %block_400508, label %block_4004f3

block_4004fd:                                     ; preds = %block_4004f3
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 1
  store i64 %192, i64* %PC
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %194 = load i64, i64* %193, align 8, !tbaa !2424
  %195 = add i64 %194, 8
  %196 = inttoptr i64 %194 to i64*
  %197 = load i64, i64* %196
  store i64 %197, i64* %RBP, align 8, !tbaa !2424
  store i64 %195, i64* %193, align 8, !tbaa !2424
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 5
  store i64 %199, i64* %PC
  store i64 and (i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !2424
  %200 = load i64, i64* %RAX
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 2
  store i64 %202, i64* %PC
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %200, i64* %203, align 8, !tbaa !2424
  %204 = load i64, i64* %PC
  switch i64 %204, label %270 [
    i64 4195594, label %block_40050a
    i64 4195589, label %block_400505
  ]

block_40050a:                                     ; preds = %block_4004fd
  %205 = load i64, i64* %RAX
  %206 = load i64, i64* %RAX
  %207 = add i64 %206, %205
  %208 = load i16, i16* %AX
  %209 = zext i16 %208 to i64
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 6
  store i64 %211, i64* %PC
  %212 = load i64, i64* %PC
  %213 = tail call %struct.Memory* @sub_400510___do_global_dtors_aux(%struct.State* %0, i64 %212, %struct.Memory* %2)
  ret %struct.Memory* %213

block_4004f3:                                     ; preds = %block_4004d0
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 5
  store i64 %215, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2424
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
  store i8 %227, i8* %228, align 1, !tbaa !2442
  %229 = icmp eq i64 %220, 0
  %230 = zext i1 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %230, i8* %231, align 1, !tbaa !2444
  %232 = lshr i64 %220, 63
  %233 = trunc i64 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %233, i8* %234, align 1, !tbaa !2445
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %235, align 1, !tbaa !2446
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %236, align 1, !tbaa !2443
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 13
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 2
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 2
  store i64 %242, i64* %PC
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %244 = load i8, i8* %243, align 1, !tbaa !2444
  store i8 %244, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %246 = icmp ne i8 %244, 0
  %247 = select i1 %246, i64 %238, i64 %240
  store i64 %247, i64* %245, align 8, !tbaa !2424
  %248 = load i8, i8* %BRANCH_TAKEN
  %249 = icmp eq i8 %248, 1
  br i1 %249, label %block_400508, label %block_4004fd

block_400508:                                     ; preds = %block_400505, %block_4004f3, %block_4004d0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4004d0 ], [ %2, %block_4004f3 ], [ %2, %block_400505 ]
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 1
  store i64 %251, i64* %PC
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %253 = load i64, i64* %252, align 8, !tbaa !2424
  %254 = add i64 %253, 8
  %255 = inttoptr i64 %253 to i64*
  %256 = load i64, i64* %255
  store i64 %256, i64* %RBP, align 8, !tbaa !2424
  store i64 %254, i64* %252, align 8, !tbaa !2424
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 1
  store i64 %258, i64* %PC
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %261 = load i64, i64* %260, align 8, !tbaa !2424
  %262 = inttoptr i64 %261 to i64*
  %263 = load i64, i64* %262
  store i64 %263, i64* %259, align 8, !tbaa !2424
  %264 = add i64 %261, 8
  store i64 %264, i64* %260, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.0

block_400505:                                     ; preds = %block_4004fd
  %265 = load i64, i64* %RAX
  %266 = load i32, i32* %EAX
  %267 = zext i32 %266 to i64
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC
  br label %block_400508

; <label>:270:                                    ; preds = %block_4004fd
  %271 = load i64, i64* %PC
  %272 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %271, %struct.Memory* %2)
  ret %struct.Memory* %272
}

; Function Attrs: noinline
define %struct.Memory* @sub_4008e0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4008e0:
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
  %10 = load i64, i64* %9, align 8, !tbaa !2424
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11
  store i64 %12, i64* %8, align 8, !tbaa !2424
  %13 = add i64 %10, 8
  store i64 %13, i64* %9, align 8, !tbaa !2424
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006a6(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  br label %block_4006a6

block_4007bf:                                     ; preds = %block_400799
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
  store i8 %52, i8* %53, align 1, !tbaa !2442
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %54, align 1, !tbaa !2443
  %55 = icmp eq i32 %46, 0
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %56, i8* %57, align 1, !tbaa !2444
  %58 = lshr i32 %46, 31
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %59, i8* %60, align 1, !tbaa !2445
  %61 = lshr i32 %46, 31
  %62 = xor i32 %58, %61
  %63 = add nuw nsw i32 %62, %61
  %64 = icmp eq i32 %63, 2
  %65 = zext i1 %64 to i8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %65, i8* %66, align 1, !tbaa !2446
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 16
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 6
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 6
  store i64 %72, i64* %PC
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %74 = load i8, i8* %73, align 1, !tbaa !2444
  %75 = icmp ne i8 %74, 0
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %77 = load i8, i8* %76, align 1, !tbaa !2445
  %78 = icmp ne i8 %77, 0
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %80 = load i8, i8* %79, align 1, !tbaa !2446
  %81 = icmp ne i8 %80, 0
  %82 = xor i1 %78, %81
  %83 = or i1 %75, %82
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %86 = select i1 %83, i64 %68, i64 %70
  store i64 %86, i64* %85, align 8, !tbaa !2424
  %87 = load i8, i8* %BRANCH_TAKEN
  %88 = icmp eq i8 %87, 1
  br i1 %88, label %block_4007d3, label %block_4007c9

block_400698:                                     ; preds = %block_40066e
  %89 = load i64, i64* %RBP
  %90 = sub i64 %89, 80
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 4
  store i64 %92, i64* %PC
  %93 = inttoptr i64 %90 to i64*
  %94 = load i64, i64* %93
  store i64 %94, i64* %RAX, align 8, !tbaa !2424
  %95 = load i64, i64* %RAX
  %96 = mul i64 %95, 8
  %97 = add i64 %96, add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 8)
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 8
  store i64 %99, i64* %PC
  %100 = inttoptr i64 %97 to i64*
  %101 = load i64, i64* %100
  store i64 %101, i64* %RCX, align 8, !tbaa !2424
  %102 = load i64, i64* %RCX
  %103 = load i64, i64* %PC
  %104 = add i64 %103, 2
  store i64 %104, i64* %PC
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %102, i64* %105, align 8, !tbaa !2424
  %106 = load i64, i64* %PC
  switch i64 %106, label %1491 [
    i64 4196034, label %block_4006c2
    i64 4196048, label %block_4006d0
    i64 4196020, label %block_4006b4
    i64 4196062, label %block_4006de
    i64 4196006, label %block_4006a6
  ]

block_400817:                                     ; preds = %block_4007eb, %block_4007df
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_4007df ], [ %MEMORY.2, %block_4007eb ]
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 10
  store i64 %108, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %109 = load i64, i64* %RBP
  %110 = sub i64 %109, 24
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC
  %113 = inttoptr i64 %110 to i32*
  %114 = load i32, i32* %113
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %RCX, align 8, !tbaa !2424
  %116 = load i64, i64* %RCX
  %117 = load i64, i64* %PC
  %118 = add i64 %117, 4
  store i64 %118, i64* %PC
  %119 = sext i64 %116 to i128
  %120 = and i128 %119, -18446744073709551616
  %121 = zext i64 %116 to i128
  %122 = or i128 %120, %121
  %123 = mul nsw i128 11, %122
  %124 = trunc i128 %123 to i64
  store i64 %124, i64* %RCX, align 8, !tbaa !2424
  %125 = sext i64 %124 to i128
  %126 = icmp ne i128 %125, %123
  %127 = zext i1 %126 to i8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %127, i8* %128, align 1, !tbaa !2428
  %129 = trunc i128 %123 to i32
  %130 = and i32 %129, 255
  %131 = call i32 @llvm.ctpop.i32(i32 %130) #16
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %134, i8* %135, align 1, !tbaa !2442
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %136, align 1, !tbaa !2443
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %137, align 1, !tbaa !2444
  %138 = lshr i64 %124, 63
  %139 = trunc i64 %138 to i8
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %139, i8* %140, align 1, !tbaa !2445
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %127, i8* %141, align 1, !tbaa !2446
  %142 = load i64, i64* %RAX
  %143 = load i64, i64* %RCX
  %144 = load i64, i64* %PC
  %145 = add i64 %144, 3
  store i64 %145, i64* %PC
  %146 = add i64 %143, %142
  store i64 %146, i64* %RAX, align 8, !tbaa !2424
  %147 = icmp ult i64 %146, %142
  %148 = icmp ult i64 %146, %143
  %149 = or i1 %147, %148
  %150 = zext i1 %149 to i8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %150, i8* %151, align 1, !tbaa !2428
  %152 = trunc i64 %146 to i32
  %153 = and i32 %152, 255
  %154 = call i32 @llvm.ctpop.i32(i32 %153) #16
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %157, i8* %158, align 1, !tbaa !2442
  %159 = xor i64 %143, %142
  %160 = xor i64 %159, %146
  %161 = lshr i64 %160, 4
  %162 = trunc i64 %161 to i8
  %163 = and i8 %162, 1
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %163, i8* %164, align 1, !tbaa !2443
  %165 = icmp eq i64 %146, 0
  %166 = zext i1 %165 to i8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %166, i8* %167, align 1, !tbaa !2444
  %168 = lshr i64 %146, 63
  %169 = trunc i64 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %169, i8* %170, align 1, !tbaa !2445
  %171 = lshr i64 %142, 63
  %172 = lshr i64 %143, 63
  %173 = xor i64 %168, %171
  %174 = xor i64 %168, %172
  %175 = add nuw nsw i64 %173, %174
  %176 = icmp eq i64 %175, 2
  %177 = zext i1 %176 to i8
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %177, i8* %178, align 1, !tbaa !2446
  %179 = load i64, i64* %RBP
  %180 = sub i64 %179, 20
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 4
  store i64 %182, i64* %PC
  %183 = inttoptr i64 %180 to i32*
  %184 = load i32, i32* %183
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %RCX, align 8, !tbaa !2424
  %186 = load i64, i64* %RAX
  %187 = load i64, i64* %RCX
  %188 = add i64 %187, %186
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 4
  store i64 %190, i64* %PC
  %191 = inttoptr i64 %188 to i8*
  store i8 88, i8* %191
  %192 = load i64, i64* %PC
  %193 = sub i64 %192, 740
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 5
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 5
  store i64 %197, i64* %PC
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %199 = load i64, i64* %198, align 8, !tbaa !2424
  %200 = add i64 %199, -8
  %201 = inttoptr i64 %200 to i64*
  store i64 %195, i64* %201
  store i64 %200, i64* %198, align 8, !tbaa !2424
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %193, i64* %202, align 8, !tbaa !2424
  %203 = load i64, i64* %PC
  %204 = call %struct.Memory* @sub_400550_draw(%struct.State* %0, i64 %203, %struct.Memory* %MEMORY.0)
  %205 = load i64, i64* %RBP
  %206 = sub i64 %205, 36
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC
  %209 = inttoptr i64 %206 to i32*
  %210 = load i32, i32* %209
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RDX, align 8, !tbaa !2424
  %212 = load i64, i64* %RDX
  %213 = load i64, i64* %PC
  %214 = add i64 %213, 3
  store i64 %214, i64* %PC
  %215 = trunc i64 %212 to i32
  %216 = add i32 1, %215
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RDX, align 8, !tbaa !2424
  %218 = icmp ult i32 %216, %215
  %219 = icmp ult i32 %216, 1
  %220 = or i1 %218, %219
  %221 = zext i1 %220 to i8
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %221, i8* %222, align 1, !tbaa !2428
  %223 = and i32 %216, 255
  %224 = call i32 @llvm.ctpop.i32(i32 %223) #16
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %227, i8* %228, align 1, !tbaa !2442
  %229 = xor i64 1, %212
  %230 = trunc i64 %229 to i32
  %231 = xor i32 %230, %216
  %232 = lshr i32 %231, 4
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %234, i8* %235, align 1, !tbaa !2443
  %236 = icmp eq i32 %216, 0
  %237 = zext i1 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %237, i8* %238, align 1, !tbaa !2444
  %239 = lshr i32 %216, 31
  %240 = trunc i32 %239 to i8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %240, i8* %241, align 1, !tbaa !2445
  %242 = lshr i32 %215, 31
  %243 = xor i32 %239, %242
  %244 = add nuw nsw i32 %243, %239
  %245 = icmp eq i32 %244, 2
  %246 = zext i1 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %246, i8* %247, align 1, !tbaa !2446
  %248 = load i64, i64* %RBP
  %249 = sub i64 %248, 36
  %250 = load i32, i32* %EDX
  %251 = zext i32 %250 to i64
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 3
  store i64 %253, i64* %PC
  %254 = inttoptr i64 %249 to i32*
  store i32 %250, i32* %254
  %255 = load i64, i64* %PC
  %256 = sub i64 %255, 478
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 5
  store i64 %258, i64* %PC
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %256, i64* %259, align 8, !tbaa !2424
  %260 = load i64, i64* %RBP
  %261 = sub i64 %260, 36
  %262 = load i64, i64* %PC
  %263 = add i64 %262, 4
  store i64 %263, i64* %PC
  %264 = inttoptr i64 %261 to i32*
  %265 = load i32, i32* %264
  %266 = sub i32 %265, 28
  %267 = icmp ult i32 %265, 28
  %268 = zext i1 %267 to i8
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %268, i8* %269, align 1, !tbaa !2428
  %270 = and i32 %266, 255
  %271 = call i32 @llvm.ctpop.i32(i32 %270) #16
  %272 = trunc i32 %271 to i8
  %273 = and i8 %272, 1
  %274 = xor i8 %273, 1
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %274, i8* %275, align 1, !tbaa !2442
  %276 = xor i32 %265, 28
  %277 = xor i32 %276, %266
  %278 = lshr i32 %277, 4
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %280, i8* %281, align 1, !tbaa !2443
  %282 = icmp eq i32 %266, 0
  %283 = zext i1 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %283, i8* %284, align 1, !tbaa !2444
  %285 = lshr i32 %266, 31
  %286 = trunc i32 %285 to i8
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %286, i8* %287, align 1, !tbaa !2445
  %288 = lshr i32 %265, 31
  %289 = xor i32 %285, %288
  %290 = add nuw nsw i32 %289, %288
  %291 = icmp eq i32 %290, 2
  %292 = zext i1 %291 to i8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %292, i8* %293, align 1, !tbaa !2446
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 479
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 6
  %298 = load i64, i64* %PC
  %299 = add i64 %298, 6
  store i64 %299, i64* %PC
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %301 = load i8, i8* %300, align 1, !tbaa !2445
  %302 = icmp ne i8 %301, 0
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %304 = load i8, i8* %303, align 1, !tbaa !2446
  %305 = icmp ne i8 %304, 0
  %306 = xor i1 %302, %305
  %307 = xor i1 %306, true
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %310 = select i1 %306, i64 %297, i64 %295
  store i64 %310, i64* %309, align 8, !tbaa !2424
  %311 = load i8, i8* %BRANCH_TAKEN
  %312 = icmp eq i8 %311, 1
  br i1 %312, label %block_400847, label %block_40066e

block_400736:                                     ; preds = %block_400710
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2424
  %313 = load i64, i64* %PC
  %314 = add i64 %313, 2
  store i64 %314, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %315 = load i64, i64* %PC
  %316 = sub i64 %315, 770
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 5
  %319 = load i64, i64* %PC
  %320 = add i64 %319, 5
  store i64 %320, i64* %PC
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %322 = load i64, i64* %321, align 8, !tbaa !2424
  %323 = add i64 %322, -8
  %324 = inttoptr i64 %323 to i64*
  store i64 %318, i64* %324
  store i64 %323, i64* %321, align 8, !tbaa !2424
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %316, i64* %325, align 8, !tbaa !2424
  %326 = load i64, i64* %PC
  %327 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %326, %struct.Memory* %MEMORY.3)
  %328 = load i64, i64* %PC
  %329 = add i64 %328, 10
  store i64 %329, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2424
  %330 = load i64, i64* %RBP
  %331 = sub i64 %330, 64
  %332 = load i64, i64* %PC
  %333 = add i64 %332, 4
  store i64 %333, i64* %PC
  store i64 %331, i64* %RSI, align 8, !tbaa !2424
  %334 = load i64, i64* %RBP
  %335 = sub i64 %334, 96
  %336 = load i32, i32* %EAX
  %337 = zext i32 %336 to i64
  %338 = load i64, i64* %PC
  %339 = add i64 %338, 3
  store i64 %339, i64* %PC
  %340 = inttoptr i64 %335 to i32*
  store i32 %336, i32* %340
  %341 = load i64, i64* %PC
  %342 = add i64 %341, 2
  store i64 %342, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %343 = load i64, i64* %PC
  %344 = sub i64 %343, 794
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 5
  %347 = load i64, i64* %PC
  %348 = add i64 %347, 5
  store i64 %348, i64* %PC
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %350 = load i64, i64* %349, align 8, !tbaa !2424
  %351 = add i64 %350, -8
  %352 = inttoptr i64 %351 to i64*
  store i64 %346, i64* %352
  store i64 %351, i64* %349, align 8, !tbaa !2424
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %344, i64* %353, align 8, !tbaa !2424
  %354 = load i64, i64* %PC
  %355 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %354, %struct.Memory* %327)
  %356 = load i64, i64* %RDI
  %357 = load i32, i32* %EDI
  %358 = zext i32 %357 to i64
  %359 = load i64, i64* %PC
  %360 = add i64 %359, 2
  store i64 %360, i64* %PC
  %361 = xor i64 %358, %356
  %362 = trunc i64 %361 to i32
  %363 = and i64 %361, 4294967295
  store i64 %363, i64* %RDI, align 8, !tbaa !2424
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %364, align 1, !tbaa !2428
  %365 = and i32 %362, 255
  %366 = call i32 @llvm.ctpop.i32(i32 %365) #16
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %369, i8* %370, align 1, !tbaa !2442
  %371 = icmp eq i32 %362, 0
  %372 = zext i1 %371 to i8
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %372, i8* %373, align 1, !tbaa !2444
  %374 = lshr i32 %362, 31
  %375 = trunc i32 %374 to i8
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %375, i8* %376, align 1, !tbaa !2445
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %377, align 1, !tbaa !2446
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %378, align 1, !tbaa !2443
  %379 = load i64, i64* %RBP
  %380 = sub i64 %379, 100
  %381 = load i32, i32* %EAX
  %382 = zext i32 %381 to i64
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 3
  store i64 %384, i64* %PC
  %385 = inttoptr i64 %380 to i32*
  store i32 %381, i32* %385
  %386 = load i64, i64* %PC
  %387 = sub i64 %386, 772
  %388 = load i64, i64* %PC
  %389 = add i64 %388, 5
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 5
  store i64 %391, i64* %PC
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %393 = load i64, i64* %392, align 8, !tbaa !2424
  %394 = add i64 %393, -8
  %395 = inttoptr i64 %394 to i64*
  store i64 %389, i64* %395
  store i64 %394, i64* %392, align 8, !tbaa !2424
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %387, i64* %396, align 8, !tbaa !2424
  %397 = load i64, i64* %PC
  %398 = call %struct.Memory* @ext_6010c8_exit(%struct.State* %0, i64 %397, %struct.Memory* %355)
  %399 = load i64, i64* %PC
  %400 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %399, %struct.Memory* %398)
  ret %struct.Memory* %400

block_4007d3:                                     ; preds = %block_40078f, %block_4007c9, %block_400799, %block_4007bf
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.3, %block_40078f ], [ %MEMORY.3, %block_400799 ], [ %MEMORY.3, %block_4007bf ], [ %MEMORY.3, %block_4007c9 ]
  %401 = load i64, i64* %RBP
  %402 = sub i64 %401, 28
  %403 = load i64, i64* %PC
  %404 = add i64 %403, 3
  store i64 %404, i64* %PC
  %405 = inttoptr i64 %402 to i32*
  %406 = load i32, i32* %405
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RAX, align 8, !tbaa !2424
  %408 = load i64, i64* %RBP
  %409 = sub i64 %408, 20
  %410 = load i32, i32* %EAX
  %411 = zext i32 %410 to i64
  %412 = load i64, i64* %PC
  %413 = add i64 %412, 3
  store i64 %413, i64* %PC
  %414 = inttoptr i64 %409 to i32*
  store i32 %410, i32* %414
  %415 = load i64, i64* %RBP
  %416 = sub i64 %415, 32
  %417 = load i64, i64* %PC
  %418 = add i64 %417, 3
  store i64 %418, i64* %PC
  %419 = inttoptr i64 %416 to i32*
  %420 = load i32, i32* %419
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %RAX, align 8, !tbaa !2424
  %422 = load i64, i64* %RBP
  %423 = sub i64 %422, 24
  %424 = load i32, i32* %EAX
  %425 = zext i32 %424 to i64
  %426 = load i64, i64* %PC
  %427 = add i64 %426, 3
  store i64 %427, i64* %PC
  %428 = inttoptr i64 %423 to i32*
  store i32 %424, i32* %428
  br label %block_4007df

block_4007df:                                     ; preds = %block_4007c9, %block_400769, %block_4007d3
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.3, %block_400769 ], [ %MEMORY.1, %block_4007d3 ], [ %MEMORY.3, %block_4007c9 ]
  %429 = load i64, i64* %RBP
  %430 = sub i64 %429, 28
  %431 = load i64, i64* %PC
  %432 = add i64 %431, 3
  store i64 %432, i64* %PC
  %433 = inttoptr i64 %430 to i32*
  %434 = load i32, i32* %433
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RAX, align 8, !tbaa !2424
  %436 = load i32, i32* %EAX
  %437 = zext i32 %436 to i64
  %438 = load i64, i64* %RBP
  %439 = sub i64 %438, 20
  %440 = load i64, i64* %PC
  %441 = add i64 %440, 3
  store i64 %441, i64* %PC
  %442 = inttoptr i64 %439 to i32*
  %443 = load i32, i32* %442
  %444 = sub i32 %436, %443
  %445 = icmp ult i32 %436, %443
  %446 = zext i1 %445 to i8
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %446, i8* %447, align 1, !tbaa !2428
  %448 = and i32 %444, 255
  %449 = call i32 @llvm.ctpop.i32(i32 %448) #16
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = xor i8 %451, 1
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %452, i8* %453, align 1, !tbaa !2442
  %454 = xor i32 %443, %436
  %455 = xor i32 %454, %444
  %456 = lshr i32 %455, 4
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %458, i8* %459, align 1, !tbaa !2443
  %460 = icmp eq i32 %444, 0
  %461 = zext i1 %460 to i8
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %461, i8* %462, align 1, !tbaa !2444
  %463 = lshr i32 %444, 31
  %464 = trunc i32 %463 to i8
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %464, i8* %465, align 1, !tbaa !2445
  %466 = lshr i32 %436, 31
  %467 = lshr i32 %443, 31
  %468 = xor i32 %467, %466
  %469 = xor i32 %463, %466
  %470 = add nuw nsw i32 %469, %468
  %471 = icmp eq i32 %470, 2
  %472 = zext i1 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %472, i8* %473, align 1, !tbaa !2446
  %474 = load i64, i64* %PC
  %475 = add i64 %474, 50
  %476 = load i64, i64* %PC
  %477 = add i64 %476, 6
  %478 = load i64, i64* %PC
  %479 = add i64 %478, 6
  store i64 %479, i64* %PC
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %481 = load i8, i8* %480, align 1, !tbaa !2444
  %482 = icmp eq i8 %481, 0
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %485 = select i1 %482, i64 %475, i64 %477
  store i64 %485, i64* %484, align 8, !tbaa !2424
  %486 = load i8, i8* %BRANCH_TAKEN
  %487 = icmp eq i8 %486, 1
  br i1 %487, label %block_400817, label %block_4007eb

block_4006b4:                                     ; preds = %block_400698
  %488 = load i64, i64* %RBP
  %489 = sub i64 %488, 24
  %490 = load i64, i64* %PC
  %491 = add i64 %490, 3
  store i64 %491, i64* %PC
  %492 = inttoptr i64 %489 to i32*
  %493 = load i32, i32* %492
  %494 = zext i32 %493 to i64
  store i64 %494, i64* %RAX, align 8, !tbaa !2424
  %495 = load i64, i64* %RAX
  %496 = load i64, i64* %PC
  %497 = add i64 %496, 3
  store i64 %497, i64* %PC
  %498 = trunc i64 %495 to i32
  %499 = add i32 1, %498
  %500 = zext i32 %499 to i64
  store i64 %500, i64* %RAX, align 8, !tbaa !2424
  %501 = icmp ult i32 %499, %498
  %502 = icmp ult i32 %499, 1
  %503 = or i1 %501, %502
  %504 = zext i1 %503 to i8
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %504, i8* %505, align 1, !tbaa !2428
  %506 = and i32 %499, 255
  %507 = call i32 @llvm.ctpop.i32(i32 %506) #16
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  %510 = xor i8 %509, 1
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %510, i8* %511, align 1, !tbaa !2442
  %512 = xor i64 1, %495
  %513 = trunc i64 %512 to i32
  %514 = xor i32 %513, %499
  %515 = lshr i32 %514, 4
  %516 = trunc i32 %515 to i8
  %517 = and i8 %516, 1
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %517, i8* %518, align 1, !tbaa !2443
  %519 = icmp eq i32 %499, 0
  %520 = zext i1 %519 to i8
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %520, i8* %521, align 1, !tbaa !2444
  %522 = lshr i32 %499, 31
  %523 = trunc i32 %522 to i8
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %523, i8* %524, align 1, !tbaa !2445
  %525 = lshr i32 %498, 31
  %526 = xor i32 %522, %525
  %527 = add nuw nsw i32 %526, %522
  %528 = icmp eq i32 %527, 2
  %529 = zext i1 %528 to i8
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %529, i8* %530, align 1, !tbaa !2446
  %531 = load i64, i64* %RBP
  %532 = sub i64 %531, 24
  %533 = load i32, i32* %EAX
  %534 = zext i32 %533 to i64
  %535 = load i64, i64* %PC
  %536 = add i64 %535, 3
  store i64 %536, i64* %PC
  %537 = inttoptr i64 %532 to i32*
  store i32 %533, i32* %537
  %538 = load i64, i64* %PC
  %539 = add i64 %538, 83
  %540 = load i64, i64* %PC
  %541 = add i64 %540, 5
  store i64 %541, i64* %PC
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %539, i64* %542, align 8, !tbaa !2424
  br label %block_400710

block_400710:                                     ; preds = %block_4006d0, %block_4006a6, %block_4006b4
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.4, %block_4006a6 ], [ %204, %block_4006b4 ], [ %204, %block_4006d0 ]
  %543 = load i64, i64* %PC
  %544 = add i64 %543, 10
  store i64 %544, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %545 = load i64, i64* %RBP
  %546 = sub i64 %545, 24
  %547 = load i64, i64* %PC
  %548 = add i64 %547, 4
  store i64 %548, i64* %PC
  %549 = inttoptr i64 %546 to i32*
  %550 = load i32, i32* %549
  %551 = sext i32 %550 to i64
  store i64 %551, i64* %RCX, align 8, !tbaa !2424
  %552 = load i64, i64* %RCX
  %553 = load i64, i64* %PC
  %554 = add i64 %553, 4
  store i64 %554, i64* %PC
  %555 = sext i64 %552 to i128
  %556 = and i128 %555, -18446744073709551616
  %557 = zext i64 %552 to i128
  %558 = or i128 %556, %557
  %559 = mul nsw i128 11, %558
  %560 = trunc i128 %559 to i64
  store i64 %560, i64* %RCX, align 8, !tbaa !2424
  %561 = sext i64 %560 to i128
  %562 = icmp ne i128 %561, %559
  %563 = zext i1 %562 to i8
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %563, i8* %564, align 1, !tbaa !2428
  %565 = trunc i128 %559 to i32
  %566 = and i32 %565, 255
  %567 = call i32 @llvm.ctpop.i32(i32 %566) #16
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  %570 = xor i8 %569, 1
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %570, i8* %571, align 1, !tbaa !2442
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %572, align 1, !tbaa !2443
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %573, align 1, !tbaa !2444
  %574 = lshr i64 %560, 63
  %575 = trunc i64 %574 to i8
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %575, i8* %576, align 1, !tbaa !2445
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %563, i8* %577, align 1, !tbaa !2446
  %578 = load i64, i64* %RAX
  %579 = load i64, i64* %RCX
  %580 = load i64, i64* %PC
  %581 = add i64 %580, 3
  store i64 %581, i64* %PC
  %582 = add i64 %579, %578
  store i64 %582, i64* %RAX, align 8, !tbaa !2424
  %583 = icmp ult i64 %582, %578
  %584 = icmp ult i64 %582, %579
  %585 = or i1 %583, %584
  %586 = zext i1 %585 to i8
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %586, i8* %587, align 1, !tbaa !2428
  %588 = trunc i64 %582 to i32
  %589 = and i32 %588, 255
  %590 = call i32 @llvm.ctpop.i32(i32 %589) #16
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  %593 = xor i8 %592, 1
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %593, i8* %594, align 1, !tbaa !2442
  %595 = xor i64 %579, %578
  %596 = xor i64 %595, %582
  %597 = lshr i64 %596, 4
  %598 = trunc i64 %597 to i8
  %599 = and i8 %598, 1
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %599, i8* %600, align 1, !tbaa !2443
  %601 = icmp eq i64 %582, 0
  %602 = zext i1 %601 to i8
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %602, i8* %603, align 1, !tbaa !2444
  %604 = lshr i64 %582, 63
  %605 = trunc i64 %604 to i8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %605, i8* %606, align 1, !tbaa !2445
  %607 = lshr i64 %578, 63
  %608 = lshr i64 %579, 63
  %609 = xor i64 %604, %607
  %610 = xor i64 %604, %608
  %611 = add nuw nsw i64 %609, %610
  %612 = icmp eq i64 %611, 2
  %613 = zext i1 %612 to i8
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %613, i8* %614, align 1, !tbaa !2446
  %615 = load i64, i64* %RBP
  %616 = sub i64 %615, 20
  %617 = load i64, i64* %PC
  %618 = add i64 %617, 4
  store i64 %618, i64* %PC
  %619 = inttoptr i64 %616 to i32*
  %620 = load i32, i32* %619
  %621 = sext i32 %620 to i64
  store i64 %621, i64* %RCX, align 8, !tbaa !2424
  %622 = load i64, i64* %RAX
  %623 = load i64, i64* %RCX
  %624 = add i64 %623, %622
  %625 = load i64, i64* %PC
  %626 = add i64 %625, 4
  store i64 %626, i64* %PC
  %627 = inttoptr i64 %624 to i8*
  %628 = load i8, i8* %627
  %629 = sext i8 %628 to i64
  %630 = and i64 %629, 4294967295
  store i64 %630, i64* %RDX, align 8, !tbaa !2424
  %631 = load i32, i32* %EDX
  %632 = zext i32 %631 to i64
  %633 = load i64, i64* %PC
  %634 = add i64 %633, 3
  store i64 %634, i64* %PC
  %635 = sub i32 %631, 35
  %636 = icmp ult i32 %631, 35
  %637 = zext i1 %636 to i8
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %637, i8* %638, align 1, !tbaa !2428
  %639 = and i32 %635, 255
  %640 = call i32 @llvm.ctpop.i32(i32 %639) #16
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %643, i8* %644, align 1, !tbaa !2442
  %645 = xor i64 35, %632
  %646 = trunc i64 %645 to i32
  %647 = xor i32 %646, %635
  %648 = lshr i32 %647, 4
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %650, i8* %651, align 1, !tbaa !2443
  %652 = icmp eq i32 %635, 0
  %653 = zext i1 %652 to i8
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %653, i8* %654, align 1, !tbaa !2444
  %655 = lshr i32 %635, 31
  %656 = trunc i32 %655 to i8
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %656, i8* %657, align 1, !tbaa !2445
  %658 = lshr i32 %631, 31
  %659 = xor i32 %655, %658
  %660 = add nuw nsw i32 %659, %658
  %661 = icmp eq i32 %660, 2
  %662 = zext i1 %661 to i8
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %662, i8* %663, align 1, !tbaa !2446
  %664 = load i64, i64* %PC
  %665 = add i64 %664, 57
  %666 = load i64, i64* %PC
  %667 = add i64 %666, 6
  %668 = load i64, i64* %PC
  %669 = add i64 %668, 6
  store i64 %669, i64* %PC
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %671 = load i8, i8* %670, align 1, !tbaa !2444
  %672 = icmp eq i8 %671, 0
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %675 = select i1 %672, i64 %665, i64 %667
  store i64 %675, i64* %674, align 8, !tbaa !2424
  %676 = load i8, i8* %BRANCH_TAKEN
  %677 = icmp eq i8 %676, 1
  %678 = load i64, i64* %PC
  %679 = add i64 %678, 10
  store i64 %679, i64* %PC
  br i1 %677, label %block_400769, label %block_400736

block_400799:                                     ; preds = %block_40078f
  %680 = load i64, i64* %PC
  %681 = add i64 %680, 10
  store i64 %681, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %682 = load i64, i64* %RBP
  %683 = sub i64 %682, 24
  %684 = load i64, i64* %PC
  %685 = add i64 %684, 4
  store i64 %685, i64* %PC
  %686 = inttoptr i64 %683 to i32*
  %687 = load i32, i32* %686
  %688 = sext i32 %687 to i64
  store i64 %688, i64* %RCX, align 8, !tbaa !2424
  %689 = load i64, i64* %RCX
  %690 = load i64, i64* %PC
  %691 = add i64 %690, 4
  store i64 %691, i64* %PC
  %692 = sext i64 %689 to i128
  %693 = and i128 %692, -18446744073709551616
  %694 = zext i64 %689 to i128
  %695 = or i128 %693, %694
  %696 = mul nsw i128 11, %695
  %697 = trunc i128 %696 to i64
  store i64 %697, i64* %RCX, align 8, !tbaa !2424
  %698 = sext i64 %697 to i128
  %699 = icmp ne i128 %698, %696
  %700 = zext i1 %699 to i8
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %700, i8* %701, align 1, !tbaa !2428
  %702 = trunc i128 %696 to i32
  %703 = and i32 %702, 255
  %704 = call i32 @llvm.ctpop.i32(i32 %703) #16
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %707, i8* %708, align 1, !tbaa !2442
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %709, align 1, !tbaa !2443
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %710, align 1, !tbaa !2444
  %711 = lshr i64 %697, 63
  %712 = trunc i64 %711 to i8
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %712, i8* %713, align 1, !tbaa !2445
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %700, i8* %714, align 1, !tbaa !2446
  %715 = load i64, i64* %RAX
  %716 = load i64, i64* %RCX
  %717 = load i64, i64* %PC
  %718 = add i64 %717, 3
  store i64 %718, i64* %PC
  %719 = add i64 %716, %715
  store i64 %719, i64* %RAX, align 8, !tbaa !2424
  %720 = icmp ult i64 %719, %715
  %721 = icmp ult i64 %719, %716
  %722 = or i1 %720, %721
  %723 = zext i1 %722 to i8
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %723, i8* %724, align 1, !tbaa !2428
  %725 = trunc i64 %719 to i32
  %726 = and i32 %725, 255
  %727 = call i32 @llvm.ctpop.i32(i32 %726) #16
  %728 = trunc i32 %727 to i8
  %729 = and i8 %728, 1
  %730 = xor i8 %729, 1
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %730, i8* %731, align 1, !tbaa !2442
  %732 = xor i64 %716, %715
  %733 = xor i64 %732, %719
  %734 = lshr i64 %733, 4
  %735 = trunc i64 %734 to i8
  %736 = and i8 %735, 1
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %736, i8* %737, align 1, !tbaa !2443
  %738 = icmp eq i64 %719, 0
  %739 = zext i1 %738 to i8
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %739, i8* %740, align 1, !tbaa !2444
  %741 = lshr i64 %719, 63
  %742 = trunc i64 %741 to i8
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %742, i8* %743, align 1, !tbaa !2445
  %744 = lshr i64 %715, 63
  %745 = lshr i64 %716, 63
  %746 = xor i64 %741, %744
  %747 = xor i64 %741, %745
  %748 = add nuw nsw i64 %746, %747
  %749 = icmp eq i64 %748, 2
  %750 = zext i1 %749 to i8
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %750, i8* %751, align 1, !tbaa !2446
  %752 = load i64, i64* %RBP
  %753 = sub i64 %752, 20
  %754 = load i64, i64* %PC
  %755 = add i64 %754, 4
  store i64 %755, i64* %PC
  %756 = inttoptr i64 %753 to i32*
  %757 = load i32, i32* %756
  %758 = sext i32 %757 to i64
  store i64 %758, i64* %RCX, align 8, !tbaa !2424
  %759 = load i64, i64* %RAX
  %760 = load i64, i64* %RCX
  %761 = add i64 %760, %759
  %762 = load i64, i64* %PC
  %763 = add i64 %762, 4
  store i64 %763, i64* %PC
  %764 = inttoptr i64 %761 to i8*
  %765 = load i8, i8* %764
  %766 = sext i8 %765 to i64
  %767 = and i64 %766, 4294967295
  store i64 %767, i64* %RDX, align 8, !tbaa !2424
  %768 = load i32, i32* %EDX
  %769 = zext i32 %768 to i64
  %770 = load i64, i64* %PC
  %771 = add i64 %770, 3
  store i64 %771, i64* %PC
  %772 = sub i32 %768, 124
  %773 = icmp ult i32 %768, 124
  %774 = zext i1 %773 to i8
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %774, i8* %775, align 1, !tbaa !2428
  %776 = and i32 %772, 255
  %777 = call i32 @llvm.ctpop.i32(i32 %776) #16
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  %780 = xor i8 %779, 1
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %780, i8* %781, align 1, !tbaa !2442
  %782 = xor i64 124, %769
  %783 = trunc i64 %782 to i32
  %784 = xor i32 %783, %772
  %785 = lshr i32 %784, 4
  %786 = trunc i32 %785 to i8
  %787 = and i8 %786, 1
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %787, i8* %788, align 1, !tbaa !2443
  %789 = icmp eq i32 %772, 0
  %790 = zext i1 %789 to i8
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %790, i8* %791, align 1, !tbaa !2444
  %792 = lshr i32 %772, 31
  %793 = trunc i32 %792 to i8
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %793, i8* %794, align 1, !tbaa !2445
  %795 = lshr i32 %768, 31
  %796 = xor i32 %792, %795
  %797 = add nuw nsw i32 %796, %795
  %798 = icmp eq i32 %797, 2
  %799 = zext i1 %798 to i8
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %799, i8* %800, align 1, !tbaa !2446
  %801 = load i64, i64* %PC
  %802 = add i64 %801, 26
  %803 = load i64, i64* %PC
  %804 = add i64 %803, 6
  %805 = load i64, i64* %PC
  %806 = add i64 %805, 6
  store i64 %806, i64* %PC
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %808 = load i8, i8* %807, align 1, !tbaa !2444
  %809 = icmp eq i8 %808, 0
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %812 = select i1 %809, i64 %802, i64 %804
  store i64 %812, i64* %811, align 8, !tbaa !2424
  %813 = load i8, i8* %BRANCH_TAKEN
  %814 = icmp eq i8 %813, 1
  br i1 %814, label %block_4007d3, label %block_4007bf

block_40066e:                                     ; preds = %block_400817
  %815 = load i64, i64* %RBP
  %816 = sub i64 %815, 20
  %817 = load i64, i64* %PC
  %818 = add i64 %817, 3
  store i64 %818, i64* %PC
  %819 = inttoptr i64 %816 to i32*
  %820 = load i32, i32* %819
  %821 = zext i32 %820 to i64
  store i64 %821, i64* %RAX, align 8, !tbaa !2424
  %822 = load i64, i64* %RBP
  %823 = sub i64 %822, 28
  %824 = load i32, i32* %EAX
  %825 = zext i32 %824 to i64
  %826 = load i64, i64* %PC
  %827 = add i64 %826, 3
  store i64 %827, i64* %PC
  %828 = inttoptr i64 %823 to i32*
  store i32 %824, i32* %828
  %829 = load i64, i64* %RBP
  %830 = sub i64 %829, 24
  %831 = load i64, i64* %PC
  %832 = add i64 %831, 3
  store i64 %832, i64* %PC
  %833 = inttoptr i64 %830 to i32*
  %834 = load i32, i32* %833
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RAX, align 8, !tbaa !2424
  %836 = load i64, i64* %RBP
  %837 = sub i64 %836, 32
  %838 = load i32, i32* %EAX
  %839 = zext i32 %838 to i64
  %840 = load i64, i64* %PC
  %841 = add i64 %840, 3
  store i64 %841, i64* %PC
  %842 = inttoptr i64 %837 to i32*
  store i32 %838, i32* %842
  %843 = load i64, i64* %RBP
  %844 = sub i64 %843, 36
  %845 = load i64, i64* %PC
  %846 = add i64 %845, 4
  store i64 %846, i64* %PC
  %847 = inttoptr i64 %844 to i32*
  %848 = load i32, i32* %847
  %849 = sext i32 %848 to i64
  store i64 %849, i64* %RCX, align 8, !tbaa !2424
  %850 = load i64, i64* %RBP
  %851 = load i64, i64* %RCX
  %852 = add i64 %850, -64
  %853 = add i64 %852, %851
  %854 = load i64, i64* %PC
  %855 = add i64 %854, 5
  store i64 %855, i64* %PC
  %856 = inttoptr i64 %853 to i8*
  %857 = load i8, i8* %856
  %858 = sext i8 %857 to i64
  %859 = and i64 %858, 4294967295
  store i64 %859, i64* %RAX, align 8, !tbaa !2424
  %860 = load i64, i64* %RAX
  %861 = load i64, i64* %PC
  %862 = add i64 %861, 3
  store i64 %862, i64* %PC
  %863 = trunc i64 %860 to i32
  %864 = add i32 -97, %863
  %865 = zext i32 %864 to i64
  store i64 %865, i64* %RAX, align 8, !tbaa !2424
  %866 = icmp ult i32 %864, %863
  %867 = icmp ult i32 %864, -97
  %868 = or i1 %866, %867
  %869 = zext i1 %868 to i8
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %869, i8* %870, align 1, !tbaa !2428
  %871 = and i32 %864, 255
  %872 = call i32 @llvm.ctpop.i32(i32 %871) #16
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %875, i8* %876, align 1, !tbaa !2442
  %877 = xor i64 -97, %860
  %878 = trunc i64 %877 to i32
  %879 = xor i32 %878, %864
  %880 = lshr i32 %879, 4
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %882, i8* %883, align 1, !tbaa !2443
  %884 = icmp eq i32 %864, 0
  %885 = zext i1 %884 to i8
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %885, i8* %886, align 1, !tbaa !2444
  %887 = lshr i32 %864, 31
  %888 = trunc i32 %887 to i8
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %888, i8* %889, align 1, !tbaa !2445
  %890 = lshr i32 %863, 31
  %891 = xor i32 %887, %890
  %892 = xor i32 %887, 1
  %893 = add nuw nsw i32 %891, %892
  %894 = icmp eq i32 %893, 2
  %895 = zext i1 %894 to i8
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %895, i8* %896, align 1, !tbaa !2446
  %897 = load i32, i32* %EAX
  %898 = zext i32 %897 to i64
  %899 = load i64, i64* %PC
  %900 = add i64 %899, 2
  store i64 %900, i64* %PC
  %901 = and i64 %898, 4294967295
  store i64 %901, i64* %RCX, align 8, !tbaa !2424
  %902 = load i64, i64* %RAX
  %903 = load i64, i64* %PC
  %904 = add i64 %903, 3
  store i64 %904, i64* %PC
  %905 = trunc i64 %902 to i32
  %906 = sub i32 %905, 22
  %907 = zext i32 %906 to i64
  store i64 %907, i64* %RAX, align 8, !tbaa !2424
  %908 = icmp ult i32 %905, 22
  %909 = zext i1 %908 to i8
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %909, i8* %910, align 1, !tbaa !2428
  %911 = and i32 %906, 255
  %912 = call i32 @llvm.ctpop.i32(i32 %911) #16
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  %915 = xor i8 %914, 1
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %915, i8* %916, align 1, !tbaa !2442
  %917 = xor i64 22, %902
  %918 = trunc i64 %917 to i32
  %919 = xor i32 %918, %906
  %920 = lshr i32 %919, 4
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %922, i8* %923, align 1, !tbaa !2443
  %924 = icmp eq i32 %906, 0
  %925 = zext i1 %924 to i8
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %925, i8* %926, align 1, !tbaa !2444
  %927 = lshr i32 %906, 31
  %928 = trunc i32 %927 to i8
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %928, i8* %929, align 1, !tbaa !2445
  %930 = lshr i32 %905, 31
  %931 = xor i32 %927, %930
  %932 = add nuw nsw i32 %931, %930
  %933 = icmp eq i32 %932, 2
  %934 = zext i1 %933 to i8
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %934, i8* %935, align 1, !tbaa !2446
  %936 = load i64, i64* %RBP
  %937 = sub i64 %936, 80
  %938 = load i64, i64* %RCX
  %939 = load i64, i64* %PC
  %940 = add i64 %939, 4
  store i64 %940, i64* %PC
  %941 = inttoptr i64 %937 to i64*
  store i64 %938, i64* %941
  %942 = load i64, i64* %RBP
  %943 = sub i64 %942, 84
  %944 = load i32, i32* %EAX
  %945 = zext i32 %944 to i64
  %946 = load i64, i64* %PC
  %947 = add i64 %946, 3
  store i64 %947, i64* %PC
  %948 = inttoptr i64 %943 to i32*
  store i32 %944, i32* %948
  %949 = load i64, i64* %PC
  %950 = add i64 %949, 76
  %951 = load i64, i64* %PC
  %952 = add i64 %951, 6
  %953 = load i64, i64* %PC
  %954 = add i64 %953, 6
  store i64 %954, i64* %PC
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %956 = load i8, i8* %955, align 1, !tbaa !2428
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %958 = load i8, i8* %957, align 1, !tbaa !2444
  %959 = or i8 %958, %956
  %960 = icmp eq i8 %959, 0
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %963 = select i1 %960, i64 %950, i64 %952
  store i64 %963, i64* %962, align 8, !tbaa !2424
  %964 = load i8, i8* %BRANCH_TAKEN
  %965 = icmp eq i8 %964, 1
  br i1 %965, label %block_4006de, label %block_400698

block_400769:                                     ; preds = %block_400710
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %966 = load i64, i64* %RBP
  %967 = sub i64 %966, 24
  %968 = load i64, i64* %PC
  %969 = add i64 %968, 4
  store i64 %969, i64* %PC
  %970 = inttoptr i64 %967 to i32*
  %971 = load i32, i32* %970
  %972 = sext i32 %971 to i64
  store i64 %972, i64* %RCX, align 8, !tbaa !2424
  %973 = load i64, i64* %RCX
  %974 = load i64, i64* %PC
  %975 = add i64 %974, 4
  store i64 %975, i64* %PC
  %976 = sext i64 %973 to i128
  %977 = and i128 %976, -18446744073709551616
  %978 = zext i64 %973 to i128
  %979 = or i128 %977, %978
  %980 = mul nsw i128 11, %979
  %981 = trunc i128 %980 to i64
  store i64 %981, i64* %RCX, align 8, !tbaa !2424
  %982 = sext i64 %981 to i128
  %983 = icmp ne i128 %982, %980
  %984 = zext i1 %983 to i8
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %984, i8* %985, align 1, !tbaa !2428
  %986 = trunc i128 %980 to i32
  %987 = and i32 %986, 255
  %988 = call i32 @llvm.ctpop.i32(i32 %987) #16
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  %991 = xor i8 %990, 1
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %991, i8* %992, align 1, !tbaa !2442
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %993, align 1, !tbaa !2443
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %994, align 1, !tbaa !2444
  %995 = lshr i64 %981, 63
  %996 = trunc i64 %995 to i8
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %996, i8* %997, align 1, !tbaa !2445
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %984, i8* %998, align 1, !tbaa !2446
  %999 = load i64, i64* %RAX
  %1000 = load i64, i64* %RCX
  %1001 = load i64, i64* %PC
  %1002 = add i64 %1001, 3
  store i64 %1002, i64* %PC
  %1003 = add i64 %1000, %999
  store i64 %1003, i64* %RAX, align 8, !tbaa !2424
  %1004 = icmp ult i64 %1003, %999
  %1005 = icmp ult i64 %1003, %1000
  %1006 = or i1 %1004, %1005
  %1007 = zext i1 %1006 to i8
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1007, i8* %1008, align 1, !tbaa !2428
  %1009 = trunc i64 %1003 to i32
  %1010 = and i32 %1009, 255
  %1011 = call i32 @llvm.ctpop.i32(i32 %1010) #16
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1014, i8* %1015, align 1, !tbaa !2442
  %1016 = xor i64 %1000, %999
  %1017 = xor i64 %1016, %1003
  %1018 = lshr i64 %1017, 4
  %1019 = trunc i64 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1020, i8* %1021, align 1, !tbaa !2443
  %1022 = icmp eq i64 %1003, 0
  %1023 = zext i1 %1022 to i8
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1023, i8* %1024, align 1, !tbaa !2444
  %1025 = lshr i64 %1003, 63
  %1026 = trunc i64 %1025 to i8
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1026, i8* %1027, align 1, !tbaa !2445
  %1028 = lshr i64 %999, 63
  %1029 = lshr i64 %1000, 63
  %1030 = xor i64 %1025, %1028
  %1031 = xor i64 %1025, %1029
  %1032 = add nuw nsw i64 %1030, %1031
  %1033 = icmp eq i64 %1032, 2
  %1034 = zext i1 %1033 to i8
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1034, i8* %1035, align 1, !tbaa !2446
  %1036 = load i64, i64* %RBP
  %1037 = sub i64 %1036, 20
  %1038 = load i64, i64* %PC
  %1039 = add i64 %1038, 4
  store i64 %1039, i64* %PC
  %1040 = inttoptr i64 %1037 to i32*
  %1041 = load i32, i32* %1040
  %1042 = sext i32 %1041 to i64
  store i64 %1042, i64* %RCX, align 8, !tbaa !2424
  %1043 = load i64, i64* %RAX
  %1044 = load i64, i64* %RCX
  %1045 = add i64 %1044, %1043
  %1046 = load i64, i64* %PC
  %1047 = add i64 %1046, 4
  store i64 %1047, i64* %PC
  %1048 = inttoptr i64 %1045 to i8*
  %1049 = load i8, i8* %1048
  %1050 = sext i8 %1049 to i64
  %1051 = and i64 %1050, 4294967295
  store i64 %1051, i64* %RDX, align 8, !tbaa !2424
  %1052 = load i32, i32* %EDX
  %1053 = zext i32 %1052 to i64
  %1054 = load i64, i64* %PC
  %1055 = add i64 %1054, 3
  store i64 %1055, i64* %PC
  %1056 = sub i32 %1052, 32
  %1057 = icmp ult i32 %1052, 32
  %1058 = zext i1 %1057 to i8
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1058, i8* %1059, align 1, !tbaa !2428
  %1060 = and i32 %1056, 255
  %1061 = call i32 @llvm.ctpop.i32(i32 %1060) #16
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  %1064 = xor i8 %1063, 1
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1064, i8* %1065, align 1, !tbaa !2442
  %1066 = xor i64 32, %1053
  %1067 = trunc i64 %1066 to i32
  %1068 = xor i32 %1067, %1056
  %1069 = lshr i32 %1068, 4
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1071, i8* %1072, align 1, !tbaa !2443
  %1073 = icmp eq i32 %1056, 0
  %1074 = zext i1 %1073 to i8
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1074, i8* %1075, align 1, !tbaa !2444
  %1076 = lshr i32 %1056, 31
  %1077 = trunc i32 %1076 to i8
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1077, i8* %1078, align 1, !tbaa !2445
  %1079 = lshr i32 %1052, 31
  %1080 = xor i32 %1076, %1079
  %1081 = add nuw nsw i32 %1080, %1079
  %1082 = icmp eq i32 %1081, 2
  %1083 = zext i1 %1082 to i8
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1083, i8* %1084, align 1, !tbaa !2446
  %1085 = load i64, i64* %PC
  %1086 = add i64 %1085, 86
  %1087 = load i64, i64* %PC
  %1088 = add i64 %1087, 6
  %1089 = load i64, i64* %PC
  %1090 = add i64 %1089, 6
  store i64 %1090, i64* %PC
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1092 = load i8, i8* %1091, align 1, !tbaa !2444
  store i8 %1092, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1094 = icmp ne i8 %1092, 0
  %1095 = select i1 %1094, i64 %1086, i64 %1088
  store i64 %1095, i64* %1093, align 8, !tbaa !2424
  %1096 = load i8, i8* %BRANCH_TAKEN
  %1097 = icmp eq i8 %1096, 1
  br i1 %1097, label %block_4007df, label %block_40078f

block_4007f7:                                     ; preds = %block_4007eb
  %1098 = load i64, i64* %PC
  %1099 = add i64 %1098, 10
  store i64 %1099, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  %1100 = load i64, i64* %PC
  %1101 = add i64 %1100, 2
  store i64 %1101, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %1102 = load i64, i64* %PC
  %1103 = sub i64 %1102, 963
  %1104 = load i64, i64* %PC
  %1105 = add i64 %1104, 5
  %1106 = load i64, i64* %PC
  %1107 = add i64 %1106, 5
  store i64 %1107, i64* %PC
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1109 = load i64, i64* %1108, align 8, !tbaa !2424
  %1110 = add i64 %1109, -8
  %1111 = inttoptr i64 %1110 to i64*
  store i64 %1105, i64* %1111
  store i64 %1110, i64* %1108, align 8, !tbaa !2424
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1103, i64* %1112, align 8, !tbaa !2424
  %1113 = load i64, i64* %PC
  %1114 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1113, %struct.Memory* %MEMORY.2)
  %1115 = load i64, i64* %RBP
  %1116 = sub i64 %1115, 4
  %1117 = load i64, i64* %PC
  %1118 = add i64 %1117, 7
  store i64 %1118, i64* %PC
  %1119 = inttoptr i64 %1116 to i32*
  store i32 2, i32* %1119
  %1120 = load i64, i64* %RBP
  %1121 = sub i64 %1120, 104
  %1122 = load i32, i32* %EAX
  %1123 = zext i32 %1122 to i64
  %1124 = load i64, i64* %PC
  %1125 = add i64 %1124, 3
  store i64 %1125, i64* %PC
  %1126 = inttoptr i64 %1121 to i32*
  store i32 %1122, i32* %1126
  %1127 = load i64, i64* %PC
  %1128 = add i64 %1127, 80
  %1129 = load i64, i64* %PC
  %1130 = add i64 %1129, 5
  store i64 %1130, i64* %PC
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1128, i64* %1131, align 8, !tbaa !2424
  br label %block_400862

block_4007c9:                                     ; preds = %block_4007bf
  %1132 = load i64, i64* %RBP
  %1133 = sub i64 %1132, 20
  %1134 = load i64, i64* %PC
  %1135 = add i64 %1134, 4
  store i64 %1135, i64* %PC
  %1136 = inttoptr i64 %1133 to i32*
  %1137 = load i32, i32* %1136
  %1138 = sub i32 %1137, 11
  %1139 = icmp ult i32 %1137, 11
  %1140 = zext i1 %1139 to i8
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1140, i8* %1141, align 1, !tbaa !2428
  %1142 = and i32 %1138, 255
  %1143 = call i32 @llvm.ctpop.i32(i32 %1142) #16
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  %1146 = xor i8 %1145, 1
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1146, i8* %1147, align 1, !tbaa !2442
  %1148 = xor i32 %1137, 11
  %1149 = xor i32 %1148, %1138
  %1150 = lshr i32 %1149, 4
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1152, i8* %1153, align 1, !tbaa !2443
  %1154 = icmp eq i32 %1138, 0
  %1155 = zext i1 %1154 to i8
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1155, i8* %1156, align 1, !tbaa !2444
  %1157 = lshr i32 %1138, 31
  %1158 = trunc i32 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1158, i8* %1159, align 1, !tbaa !2445
  %1160 = lshr i32 %1137, 31
  %1161 = xor i32 %1157, %1160
  %1162 = add nuw nsw i32 %1161, %1160
  %1163 = icmp eq i32 %1162, 2
  %1164 = zext i1 %1163 to i8
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1164, i8* %1165, align 1, !tbaa !2446
  %1166 = load i64, i64* %PC
  %1167 = add i64 %1166, 18
  %1168 = load i64, i64* %PC
  %1169 = add i64 %1168, 6
  %1170 = load i64, i64* %PC
  %1171 = add i64 %1170, 6
  store i64 %1171, i64* %PC
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1173 = load i8, i8* %1172, align 1, !tbaa !2445
  %1174 = icmp ne i8 %1173, 0
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1176 = load i8, i8* %1175, align 1, !tbaa !2446
  %1177 = icmp ne i8 %1176, 0
  %1178 = xor i1 %1174, %1177
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1181 = select i1 %1178, i64 %1167, i64 %1169
  store i64 %1181, i64* %1180, align 8, !tbaa !2424
  %1182 = load i8, i8* %BRANCH_TAKEN
  %1183 = icmp eq i8 %1182, 1
  br i1 %1183, label %block_4007df, label %block_4007d3

block_4006a6:                                     ; preds = %block_400698, %3
  %MEMORY.4 = phi %struct.Memory* [ %2, %3 ], [ %204, %block_400698 ]
  %1184 = load i64, i64* %RBP
  %1185 = sub i64 %1184, 24
  %1186 = load i64, i64* %PC
  %1187 = add i64 %1186, 3
  store i64 %1187, i64* %PC
  %1188 = inttoptr i64 %1185 to i32*
  %1189 = load i32, i32* %1188
  %1190 = zext i32 %1189 to i64
  store i64 %1190, i64* %RAX, align 8, !tbaa !2424
  %1191 = load i64, i64* %RAX
  %1192 = load i64, i64* %PC
  %1193 = add i64 %1192, 3
  store i64 %1193, i64* %PC
  %1194 = trunc i64 %1191 to i32
  %1195 = add i32 -1, %1194
  %1196 = zext i32 %1195 to i64
  store i64 %1196, i64* %RAX, align 8, !tbaa !2424
  %1197 = icmp ult i32 %1195, %1194
  %1198 = icmp ult i32 %1195, -1
  %1199 = or i1 %1197, %1198
  %1200 = zext i1 %1199 to i8
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1200, i8* %1201, align 1, !tbaa !2428
  %1202 = and i32 %1195, 255
  %1203 = call i32 @llvm.ctpop.i32(i32 %1202) #16
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  %1206 = xor i8 %1205, 1
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1206, i8* %1207, align 1, !tbaa !2442
  %1208 = xor i64 -1, %1191
  %1209 = trunc i64 %1208 to i32
  %1210 = xor i32 %1209, %1195
  %1211 = lshr i32 %1210, 4
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1213, i8* %1214, align 1, !tbaa !2443
  %1215 = icmp eq i32 %1195, 0
  %1216 = zext i1 %1215 to i8
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1216, i8* %1217, align 1, !tbaa !2444
  %1218 = lshr i32 %1195, 31
  %1219 = trunc i32 %1218 to i8
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1219, i8* %1220, align 1, !tbaa !2445
  %1221 = lshr i32 %1194, 31
  %1222 = xor i32 %1218, %1221
  %1223 = xor i32 %1218, 1
  %1224 = add nuw nsw i32 %1222, %1223
  %1225 = icmp eq i32 %1224, 2
  %1226 = zext i1 %1225 to i8
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1226, i8* %1227, align 1, !tbaa !2446
  %1228 = load i64, i64* %RBP
  %1229 = sub i64 %1228, 24
  %1230 = load i32, i32* %EAX
  %1231 = zext i32 %1230 to i64
  %1232 = load i64, i64* %PC
  %1233 = add i64 %1232, 3
  store i64 %1233, i64* %PC
  %1234 = inttoptr i64 %1229 to i32*
  store i32 %1230, i32* %1234
  %1235 = load i64, i64* %PC
  %1236 = add i64 %1235, 97
  %1237 = load i64, i64* %PC
  %1238 = add i64 %1237, 5
  store i64 %1238, i64* %PC
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1236, i64* %1239, align 8, !tbaa !2424
  br label %block_400710

block_40078f:                                     ; preds = %block_400769
  %1240 = load i64, i64* %RBP
  %1241 = sub i64 %1240, 24
  %1242 = load i64, i64* %PC
  %1243 = add i64 %1242, 4
  store i64 %1243, i64* %PC
  %1244 = inttoptr i64 %1241 to i32*
  %1245 = load i32, i32* %1244
  %1246 = sub i32 %1245, 2
  %1247 = icmp ult i32 %1245, 2
  %1248 = zext i1 %1247 to i8
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1248, i8* %1249, align 1, !tbaa !2428
  %1250 = and i32 %1246, 255
  %1251 = call i32 @llvm.ctpop.i32(i32 %1250) #16
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  %1254 = xor i8 %1253, 1
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1254, i8* %1255, align 1, !tbaa !2442
  %1256 = xor i32 %1245, 2
  %1257 = xor i32 %1256, %1246
  %1258 = lshr i32 %1257, 4
  %1259 = trunc i32 %1258 to i8
  %1260 = and i8 %1259, 1
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1260, i8* %1261, align 1, !tbaa !2443
  %1262 = icmp eq i32 %1246, 0
  %1263 = zext i1 %1262 to i8
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1263, i8* %1264, align 1, !tbaa !2444
  %1265 = lshr i32 %1246, 31
  %1266 = trunc i32 %1265 to i8
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1266, i8* %1267, align 1, !tbaa !2445
  %1268 = lshr i32 %1245, 31
  %1269 = xor i32 %1265, %1268
  %1270 = add nuw nsw i32 %1269, %1268
  %1271 = icmp eq i32 %1270, 2
  %1272 = zext i1 %1271 to i8
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1272, i8* %1273, align 1, !tbaa !2446
  %1274 = load i64, i64* %PC
  %1275 = add i64 %1274, 64
  %1276 = load i64, i64* %PC
  %1277 = add i64 %1276, 6
  %1278 = load i64, i64* %PC
  %1279 = add i64 %1278, 6
  store i64 %1279, i64* %PC
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1281 = load i8, i8* %1280, align 1, !tbaa !2444
  %1282 = icmp eq i8 %1281, 0
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1285 = select i1 %1282, i64 %1275, i64 %1277
  store i64 %1285, i64* %1284, align 8, !tbaa !2424
  %1286 = load i8, i8* %BRANCH_TAKEN
  %1287 = icmp eq i8 %1286, 1
  br i1 %1287, label %block_4007d3, label %block_400799

block_4007eb:                                     ; preds = %block_4007df
  %1288 = load i64, i64* %RBP
  %1289 = sub i64 %1288, 32
  %1290 = load i64, i64* %PC
  %1291 = add i64 %1290, 3
  store i64 %1291, i64* %PC
  %1292 = inttoptr i64 %1289 to i32*
  %1293 = load i32, i32* %1292
  %1294 = zext i32 %1293 to i64
  store i64 %1294, i64* %RAX, align 8, !tbaa !2424
  %1295 = load i32, i32* %EAX
  %1296 = zext i32 %1295 to i64
  %1297 = load i64, i64* %RBP
  %1298 = sub i64 %1297, 24
  %1299 = load i64, i64* %PC
  %1300 = add i64 %1299, 3
  store i64 %1300, i64* %PC
  %1301 = inttoptr i64 %1298 to i32*
  %1302 = load i32, i32* %1301
  %1303 = sub i32 %1295, %1302
  %1304 = icmp ult i32 %1295, %1302
  %1305 = zext i1 %1304 to i8
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1305, i8* %1306, align 1, !tbaa !2428
  %1307 = and i32 %1303, 255
  %1308 = call i32 @llvm.ctpop.i32(i32 %1307) #16
  %1309 = trunc i32 %1308 to i8
  %1310 = and i8 %1309, 1
  %1311 = xor i8 %1310, 1
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1311, i8* %1312, align 1, !tbaa !2442
  %1313 = xor i32 %1302, %1295
  %1314 = xor i32 %1313, %1303
  %1315 = lshr i32 %1314, 4
  %1316 = trunc i32 %1315 to i8
  %1317 = and i8 %1316, 1
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1317, i8* %1318, align 1, !tbaa !2443
  %1319 = icmp eq i32 %1303, 0
  %1320 = zext i1 %1319 to i8
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1320, i8* %1321, align 1, !tbaa !2444
  %1322 = lshr i32 %1303, 31
  %1323 = trunc i32 %1322 to i8
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1323, i8* %1324, align 1, !tbaa !2445
  %1325 = lshr i32 %1295, 31
  %1326 = lshr i32 %1302, 31
  %1327 = xor i32 %1326, %1325
  %1328 = xor i32 %1322, %1325
  %1329 = add nuw nsw i32 %1328, %1327
  %1330 = icmp eq i32 %1329, 2
  %1331 = zext i1 %1330 to i8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1331, i8* %1332, align 1, !tbaa !2446
  %1333 = load i64, i64* %PC
  %1334 = add i64 %1333, 38
  %1335 = load i64, i64* %PC
  %1336 = add i64 %1335, 6
  %1337 = load i64, i64* %PC
  %1338 = add i64 %1337, 6
  store i64 %1338, i64* %PC
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1340 = load i8, i8* %1339, align 1, !tbaa !2444
  %1341 = icmp eq i8 %1340, 0
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1344 = select i1 %1341, i64 %1334, i64 %1336
  store i64 %1344, i64* %1343, align 8, !tbaa !2424
  %1345 = load i8, i8* %BRANCH_TAKEN
  %1346 = icmp eq i8 %1345, 1
  br i1 %1346, label %block_400817, label %block_4007f7

block_400847:                                     ; preds = %block_400817
  %1347 = load i64, i64* %PC
  %1348 = add i64 %1347, 10
  store i64 %1348, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  %1349 = load i64, i64* %PC
  %1350 = add i64 %1349, 2
  store i64 %1350, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %1351 = load i64, i64* %PC
  %1352 = sub i64 %1351, 1043
  %1353 = load i64, i64* %PC
  %1354 = add i64 %1353, 5
  %1355 = load i64, i64* %PC
  %1356 = add i64 %1355, 5
  store i64 %1356, i64* %PC
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1358 = load i64, i64* %1357, align 8, !tbaa !2424
  %1359 = add i64 %1358, -8
  %1360 = inttoptr i64 %1359 to i64*
  store i64 %1354, i64* %1360
  store i64 %1359, i64* %1357, align 8, !tbaa !2424
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1352, i64* %1361, align 8, !tbaa !2424
  %1362 = load i64, i64* %PC
  %1363 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1362, %struct.Memory* %204)
  %1364 = load i64, i64* %RBP
  %1365 = sub i64 %1364, 4
  %1366 = load i64, i64* %PC
  %1367 = add i64 %1366, 7
  store i64 %1367, i64* %PC
  %1368 = inttoptr i64 %1365 to i32*
  store i32 1, i32* %1368
  %1369 = load i64, i64* %RBP
  %1370 = sub i64 %1369, 108
  %1371 = load i32, i32* %EAX
  %1372 = zext i32 %1371 to i64
  %1373 = load i64, i64* %PC
  %1374 = add i64 %1373, 3
  store i64 %1374, i64* %PC
  %1375 = inttoptr i64 %1370 to i32*
  store i32 %1371, i32* %1375
  br label %block_400862

block_400862:                                     ; preds = %block_400847, %block_4007f7
  %MEMORY.5 = phi %struct.Memory* [ %1363, %block_400847 ], [ %1114, %block_4007f7 ]
  %1376 = load i64, i64* %RBP
  %1377 = sub i64 %1376, 4
  %1378 = load i64, i64* %PC
  %1379 = add i64 %1378, 3
  store i64 %1379, i64* %PC
  %1380 = inttoptr i64 %1377 to i32*
  %1381 = load i32, i32* %1380
  %1382 = zext i32 %1381 to i64
  store i64 %1382, i64* %RAX, align 8, !tbaa !2424
  %1383 = load i64, i64* %RSP
  %1384 = load i64, i64* %PC
  %1385 = add i64 %1384, 4
  store i64 %1385, i64* %PC
  %1386 = add i64 112, %1383
  store i64 %1386, i64* %RSP, align 8, !tbaa !2424
  %1387 = icmp ult i64 %1386, %1383
  %1388 = icmp ult i64 %1386, 112
  %1389 = or i1 %1387, %1388
  %1390 = zext i1 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1390, i8* %1391, align 1, !tbaa !2428
  %1392 = trunc i64 %1386 to i32
  %1393 = and i32 %1392, 255
  %1394 = call i32 @llvm.ctpop.i32(i32 %1393) #16
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  %1397 = xor i8 %1396, 1
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1397, i8* %1398, align 1, !tbaa !2442
  %1399 = xor i64 112, %1383
  %1400 = xor i64 %1399, %1386
  %1401 = lshr i64 %1400, 4
  %1402 = trunc i64 %1401 to i8
  %1403 = and i8 %1402, 1
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1403, i8* %1404, align 1, !tbaa !2443
  %1405 = icmp eq i64 %1386, 0
  %1406 = zext i1 %1405 to i8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1406, i8* %1407, align 1, !tbaa !2444
  %1408 = lshr i64 %1386, 63
  %1409 = trunc i64 %1408 to i8
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1409, i8* %1410, align 1, !tbaa !2445
  %1411 = lshr i64 %1383, 63
  %1412 = xor i64 %1408, %1411
  %1413 = add nuw nsw i64 %1412, %1408
  %1414 = icmp eq i64 %1413, 2
  %1415 = zext i1 %1414 to i8
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1415, i8* %1416, align 1, !tbaa !2446
  %1417 = load i64, i64* %PC
  %1418 = add i64 %1417, 1
  store i64 %1418, i64* %PC
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1420 = load i64, i64* %1419, align 8, !tbaa !2424
  %1421 = add i64 %1420, 8
  %1422 = inttoptr i64 %1420 to i64*
  %1423 = load i64, i64* %1422
  store i64 %1423, i64* %RBP, align 8, !tbaa !2424
  store i64 %1421, i64* %1419, align 8, !tbaa !2424
  %1424 = load i64, i64* %PC
  %1425 = add i64 %1424, 1
  store i64 %1425, i64* %PC
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1428 = load i64, i64* %1427, align 8, !tbaa !2424
  %1429 = inttoptr i64 %1428 to i64*
  %1430 = load i64, i64* %1429
  store i64 %1430, i64* %1426, align 8, !tbaa !2424
  %1431 = add i64 %1428, 8
  store i64 %1431, i64* %1427, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.5

block_4006d0:                                     ; preds = %block_400698
  %1432 = load i64, i64* %RBP
  %1433 = sub i64 %1432, 20
  %1434 = load i64, i64* %PC
  %1435 = add i64 %1434, 3
  store i64 %1435, i64* %PC
  %1436 = inttoptr i64 %1433 to i32*
  %1437 = load i32, i32* %1436
  %1438 = zext i32 %1437 to i64
  store i64 %1438, i64* %RAX, align 8, !tbaa !2424
  %1439 = load i64, i64* %RAX
  %1440 = load i64, i64* %PC
  %1441 = add i64 %1440, 3
  store i64 %1441, i64* %PC
  %1442 = trunc i64 %1439 to i32
  %1443 = add i32 1, %1442
  %1444 = zext i32 %1443 to i64
  store i64 %1444, i64* %RAX, align 8, !tbaa !2424
  %1445 = icmp ult i32 %1443, %1442
  %1446 = icmp ult i32 %1443, 1
  %1447 = or i1 %1445, %1446
  %1448 = zext i1 %1447 to i8
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1448, i8* %1449, align 1, !tbaa !2428
  %1450 = and i32 %1443, 255
  %1451 = call i32 @llvm.ctpop.i32(i32 %1450) #16
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  %1454 = xor i8 %1453, 1
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1454, i8* %1455, align 1, !tbaa !2442
  %1456 = xor i64 1, %1439
  %1457 = trunc i64 %1456 to i32
  %1458 = xor i32 %1457, %1443
  %1459 = lshr i32 %1458, 4
  %1460 = trunc i32 %1459 to i8
  %1461 = and i8 %1460, 1
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1461, i8* %1462, align 1, !tbaa !2443
  %1463 = icmp eq i32 %1443, 0
  %1464 = zext i1 %1463 to i8
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1464, i8* %1465, align 1, !tbaa !2444
  %1466 = lshr i32 %1443, 31
  %1467 = trunc i32 %1466 to i8
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1467, i8* %1468, align 1, !tbaa !2445
  %1469 = lshr i32 %1442, 31
  %1470 = xor i32 %1466, %1469
  %1471 = add nuw nsw i32 %1470, %1466
  %1472 = icmp eq i32 %1471, 2
  %1473 = zext i1 %1472 to i8
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1473, i8* %1474, align 1, !tbaa !2446
  %1475 = load i64, i64* %RBP
  %1476 = sub i64 %1475, 20
  %1477 = load i32, i32* %EAX
  %1478 = zext i32 %1477 to i64
  %1479 = load i64, i64* %PC
  %1480 = add i64 %1479, 3
  store i64 %1480, i64* %PC
  %1481 = inttoptr i64 %1476 to i32*
  store i32 %1477, i32* %1481
  %1482 = load i64, i64* %PC
  %1483 = add i64 %1482, 55
  %1484 = load i64, i64* %PC
  %1485 = add i64 %1484, 5
  store i64 %1485, i64* %PC
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1483, i64* %1486, align 8, !tbaa !2424
  br label %block_400710

block_4006de:                                     ; preds = %block_40066e, %block_400698
  %MEMORY.6 = phi %struct.Memory* [ %204, %block_40066e ], [ %204, %block_400698 ]
  %1487 = load i64, i64* %PC
  %1488 = tail call %struct.Memory* @sub_4006de(%struct.State* %0, i64 %1487, %struct.Memory* %MEMORY.6)
  ret %struct.Memory* %1488

block_4006c2:                                     ; preds = %block_400698
  %1489 = load i64, i64* %PC
  %1490 = tail call %struct.Memory* @sub_4006c2(%struct.State* %0, i64 %1489, %struct.Memory* %204)
  ret %struct.Memory* %1490

; <label>:1491:                                   ; preds = %block_400698
  %1492 = load i64, i64* %PC
  %1493 = tail call %struct.Memory* @__remill_missing_block(%struct.State* %0, i64 %1492, %struct.Memory* %204)
  ret %struct.Memory* %1493
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006b4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  br label %block_4006b4

block_4007df:                                     ; preds = %block_4007c9, %block_400769, %block_4007d3
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_400769 ], [ %MEMORY.3, %block_4007d3 ], [ %MEMORY.2, %block_4007c9 ]
  %41 = load i64, i64* %RBP
  %42 = sub i64 %41, 28
  %43 = load i64, i64* %PC
  %44 = add i64 %43, 3
  store i64 %44, i64* %PC
  %45 = inttoptr i64 %42 to i32*
  %46 = load i32, i32* %45
  %47 = zext i32 %46 to i64
  store i64 %47, i64* %RAX, align 8, !tbaa !2424
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
  store i8 %64, i8* %65, align 1, !tbaa !2442
  %66 = xor i32 %55, %48
  %67 = xor i32 %66, %56
  %68 = lshr i32 %67, 4
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %70, i8* %71, align 1, !tbaa !2443
  %72 = icmp eq i32 %56, 0
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %73, i8* %74, align 1, !tbaa !2444
  %75 = lshr i32 %56, 31
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %76, i8* %77, align 1, !tbaa !2445
  %78 = lshr i32 %48, 31
  %79 = lshr i32 %55, 31
  %80 = xor i32 %79, %78
  %81 = xor i32 %75, %78
  %82 = add nuw nsw i32 %81, %80
  %83 = icmp eq i32 %82, 2
  %84 = zext i1 %83 to i8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %84, i8* %85, align 1, !tbaa !2446
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 50
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 6
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 6
  store i64 %91, i64* %PC
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %93 = load i8, i8* %92, align 1, !tbaa !2444
  %94 = icmp eq i8 %93, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %97 = select i1 %94, i64 %87, i64 %89
  store i64 %97, i64* %96, align 8, !tbaa !2424
  %98 = load i8, i8* %BRANCH_TAKEN
  %99 = icmp eq i8 %98, 1
  br i1 %99, label %block_400817, label %block_4007eb

block_4007bf:                                     ; preds = %block_400799
  %100 = load i64, i64* %RBP
  %101 = sub i64 %100, 20
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC
  %104 = inttoptr i64 %101 to i32*
  %105 = load i32, i32* %104
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %106, align 1, !tbaa !2428
  %107 = and i32 %105, 255
  %108 = call i32 @llvm.ctpop.i32(i32 %107) #16
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %111, i8* %112, align 1, !tbaa !2442
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %113, align 1, !tbaa !2443
  %114 = icmp eq i32 %105, 0
  %115 = zext i1 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %115, i8* %116, align 1, !tbaa !2444
  %117 = lshr i32 %105, 31
  %118 = trunc i32 %117 to i8
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %118, i8* %119, align 1, !tbaa !2445
  %120 = lshr i32 %105, 31
  %121 = xor i32 %117, %120
  %122 = add nuw nsw i32 %121, %120
  %123 = icmp eq i32 %122, 2
  %124 = zext i1 %123 to i8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %124, i8* %125, align 1, !tbaa !2446
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 16
  %128 = load i64, i64* %PC
  %129 = add i64 %128, 6
  %130 = load i64, i64* %PC
  %131 = add i64 %130, 6
  store i64 %131, i64* %PC
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %133 = load i8, i8* %132, align 1, !tbaa !2444
  %134 = icmp ne i8 %133, 0
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %136 = load i8, i8* %135, align 1, !tbaa !2445
  %137 = icmp ne i8 %136, 0
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %139 = load i8, i8* %138, align 1, !tbaa !2446
  %140 = icmp ne i8 %139, 0
  %141 = xor i1 %137, %140
  %142 = or i1 %134, %141
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %145 = select i1 %142, i64 %127, i64 %129
  store i64 %145, i64* %144, align 8, !tbaa !2424
  %146 = load i8, i8* %BRANCH_TAKEN
  %147 = icmp eq i8 %146, 1
  br i1 %147, label %block_4007d3, label %block_4007c9

block_400799:                                     ; preds = %block_40078f
  %148 = load i64, i64* %PC
  %149 = add i64 %148, 10
  store i64 %149, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %150 = load i64, i64* %RBP
  %151 = sub i64 %150, 24
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 4
  store i64 %153, i64* %PC
  %154 = inttoptr i64 %151 to i32*
  %155 = load i32, i32* %154
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %RCX, align 8, !tbaa !2424
  %157 = load i64, i64* %RCX
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 4
  store i64 %159, i64* %PC
  %160 = sext i64 %157 to i128
  %161 = and i128 %160, -18446744073709551616
  %162 = zext i64 %157 to i128
  %163 = or i128 %161, %162
  %164 = mul nsw i128 11, %163
  %165 = trunc i128 %164 to i64
  store i64 %165, i64* %RCX, align 8, !tbaa !2424
  %166 = sext i64 %165 to i128
  %167 = icmp ne i128 %166, %164
  %168 = zext i1 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %168, i8* %169, align 1, !tbaa !2428
  %170 = trunc i128 %164 to i32
  %171 = and i32 %170, 255
  %172 = call i32 @llvm.ctpop.i32(i32 %171) #16
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %175, i8* %176, align 1, !tbaa !2442
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %177, align 1, !tbaa !2443
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %178, align 1, !tbaa !2444
  %179 = lshr i64 %165, 63
  %180 = trunc i64 %179 to i8
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %180, i8* %181, align 1, !tbaa !2445
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %168, i8* %182, align 1, !tbaa !2446
  %183 = load i64, i64* %RAX
  %184 = load i64, i64* %RCX
  %185 = load i64, i64* %PC
  %186 = add i64 %185, 3
  store i64 %186, i64* %PC
  %187 = add i64 %184, %183
  store i64 %187, i64* %RAX, align 8, !tbaa !2424
  %188 = icmp ult i64 %187, %183
  %189 = icmp ult i64 %187, %184
  %190 = or i1 %188, %189
  %191 = zext i1 %190 to i8
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %191, i8* %192, align 1, !tbaa !2428
  %193 = trunc i64 %187 to i32
  %194 = and i32 %193, 255
  %195 = call i32 @llvm.ctpop.i32(i32 %194) #16
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %198, i8* %199, align 1, !tbaa !2442
  %200 = xor i64 %184, %183
  %201 = xor i64 %200, %187
  %202 = lshr i64 %201, 4
  %203 = trunc i64 %202 to i8
  %204 = and i8 %203, 1
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %204, i8* %205, align 1, !tbaa !2443
  %206 = icmp eq i64 %187, 0
  %207 = zext i1 %206 to i8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %207, i8* %208, align 1, !tbaa !2444
  %209 = lshr i64 %187, 63
  %210 = trunc i64 %209 to i8
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %210, i8* %211, align 1, !tbaa !2445
  %212 = lshr i64 %183, 63
  %213 = lshr i64 %184, 63
  %214 = xor i64 %209, %212
  %215 = xor i64 %209, %213
  %216 = add nuw nsw i64 %214, %215
  %217 = icmp eq i64 %216, 2
  %218 = zext i1 %217 to i8
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %218, i8* %219, align 1, !tbaa !2446
  %220 = load i64, i64* %RBP
  %221 = sub i64 %220, 20
  %222 = load i64, i64* %PC
  %223 = add i64 %222, 4
  store i64 %223, i64* %PC
  %224 = inttoptr i64 %221 to i32*
  %225 = load i32, i32* %224
  %226 = sext i32 %225 to i64
  store i64 %226, i64* %RCX, align 8, !tbaa !2424
  %227 = load i64, i64* %RAX
  %228 = load i64, i64* %RCX
  %229 = add i64 %228, %227
  %230 = load i64, i64* %PC
  %231 = add i64 %230, 4
  store i64 %231, i64* %PC
  %232 = inttoptr i64 %229 to i8*
  %233 = load i8, i8* %232
  %234 = sext i8 %233 to i64
  %235 = and i64 %234, 4294967295
  store i64 %235, i64* %RDX, align 8, !tbaa !2424
  %236 = load i32, i32* %EDX
  %237 = zext i32 %236 to i64
  %238 = load i64, i64* %PC
  %239 = add i64 %238, 3
  store i64 %239, i64* %PC
  %240 = sub i32 %236, 124
  %241 = icmp ult i32 %236, 124
  %242 = zext i1 %241 to i8
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %242, i8* %243, align 1, !tbaa !2428
  %244 = and i32 %240, 255
  %245 = call i32 @llvm.ctpop.i32(i32 %244) #16
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %248, i8* %249, align 1, !tbaa !2442
  %250 = xor i64 124, %237
  %251 = trunc i64 %250 to i32
  %252 = xor i32 %251, %240
  %253 = lshr i32 %252, 4
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %255, i8* %256, align 1, !tbaa !2443
  %257 = icmp eq i32 %240, 0
  %258 = zext i1 %257 to i8
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %258, i8* %259, align 1, !tbaa !2444
  %260 = lshr i32 %240, 31
  %261 = trunc i32 %260 to i8
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %261, i8* %262, align 1, !tbaa !2445
  %263 = lshr i32 %236, 31
  %264 = xor i32 %260, %263
  %265 = add nuw nsw i32 %264, %263
  %266 = icmp eq i32 %265, 2
  %267 = zext i1 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %267, i8* %268, align 1, !tbaa !2446
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 26
  %271 = load i64, i64* %PC
  %272 = add i64 %271, 6
  %273 = load i64, i64* %PC
  %274 = add i64 %273, 6
  store i64 %274, i64* %PC
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %276 = load i8, i8* %275, align 1, !tbaa !2444
  %277 = icmp eq i8 %276, 0
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %280 = select i1 %277, i64 %270, i64 %272
  store i64 %280, i64* %279, align 8, !tbaa !2424
  %281 = load i8, i8* %BRANCH_TAKEN
  %282 = icmp eq i8 %281, 1
  br i1 %282, label %block_4007d3, label %block_4007bf

block_400817:                                     ; preds = %block_4007eb, %block_4007df
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_4007df ], [ %MEMORY.0, %block_4007eb ]
  %283 = load i64, i64* %PC
  %284 = add i64 %283, 10
  store i64 %284, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %285 = load i64, i64* %RBP
  %286 = sub i64 %285, 24
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 4
  store i64 %288, i64* %PC
  %289 = inttoptr i64 %286 to i32*
  %290 = load i32, i32* %289
  %291 = sext i32 %290 to i64
  store i64 %291, i64* %RCX, align 8, !tbaa !2424
  %292 = load i64, i64* %RCX
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 4
  store i64 %294, i64* %PC
  %295 = sext i64 %292 to i128
  %296 = and i128 %295, -18446744073709551616
  %297 = zext i64 %292 to i128
  %298 = or i128 %296, %297
  %299 = mul nsw i128 11, %298
  %300 = trunc i128 %299 to i64
  store i64 %300, i64* %RCX, align 8, !tbaa !2424
  %301 = sext i64 %300 to i128
  %302 = icmp ne i128 %301, %299
  %303 = zext i1 %302 to i8
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %303, i8* %304, align 1, !tbaa !2428
  %305 = trunc i128 %299 to i32
  %306 = and i32 %305, 255
  %307 = call i32 @llvm.ctpop.i32(i32 %306) #16
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  %310 = xor i8 %309, 1
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %310, i8* %311, align 1, !tbaa !2442
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %312, align 1, !tbaa !2443
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %313, align 1, !tbaa !2444
  %314 = lshr i64 %300, 63
  %315 = trunc i64 %314 to i8
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %315, i8* %316, align 1, !tbaa !2445
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %303, i8* %317, align 1, !tbaa !2446
  %318 = load i64, i64* %RAX
  %319 = load i64, i64* %RCX
  %320 = load i64, i64* %PC
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC
  %322 = add i64 %319, %318
  store i64 %322, i64* %RAX, align 8, !tbaa !2424
  %323 = icmp ult i64 %322, %318
  %324 = icmp ult i64 %322, %319
  %325 = or i1 %323, %324
  %326 = zext i1 %325 to i8
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %326, i8* %327, align 1, !tbaa !2428
  %328 = trunc i64 %322 to i32
  %329 = and i32 %328, 255
  %330 = call i32 @llvm.ctpop.i32(i32 %329) #16
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %333, i8* %334, align 1, !tbaa !2442
  %335 = xor i64 %319, %318
  %336 = xor i64 %335, %322
  %337 = lshr i64 %336, 4
  %338 = trunc i64 %337 to i8
  %339 = and i8 %338, 1
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %339, i8* %340, align 1, !tbaa !2443
  %341 = icmp eq i64 %322, 0
  %342 = zext i1 %341 to i8
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %342, i8* %343, align 1, !tbaa !2444
  %344 = lshr i64 %322, 63
  %345 = trunc i64 %344 to i8
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %345, i8* %346, align 1, !tbaa !2445
  %347 = lshr i64 %318, 63
  %348 = lshr i64 %319, 63
  %349 = xor i64 %344, %347
  %350 = xor i64 %344, %348
  %351 = add nuw nsw i64 %349, %350
  %352 = icmp eq i64 %351, 2
  %353 = zext i1 %352 to i8
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %353, i8* %354, align 1, !tbaa !2446
  %355 = load i64, i64* %RBP
  %356 = sub i64 %355, 20
  %357 = load i64, i64* %PC
  %358 = add i64 %357, 4
  store i64 %358, i64* %PC
  %359 = inttoptr i64 %356 to i32*
  %360 = load i32, i32* %359
  %361 = sext i32 %360 to i64
  store i64 %361, i64* %RCX, align 8, !tbaa !2424
  %362 = load i64, i64* %RAX
  %363 = load i64, i64* %RCX
  %364 = add i64 %363, %362
  %365 = load i64, i64* %PC
  %366 = add i64 %365, 4
  store i64 %366, i64* %PC
  %367 = inttoptr i64 %364 to i8*
  store i8 88, i8* %367
  %368 = load i64, i64* %PC
  %369 = sub i64 %368, 740
  %370 = load i64, i64* %PC
  %371 = add i64 %370, 5
  %372 = load i64, i64* %PC
  %373 = add i64 %372, 5
  store i64 %373, i64* %PC
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %375 = load i64, i64* %374, align 8, !tbaa !2424
  %376 = add i64 %375, -8
  %377 = inttoptr i64 %376 to i64*
  store i64 %371, i64* %377
  store i64 %376, i64* %374, align 8, !tbaa !2424
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %369, i64* %378, align 8, !tbaa !2424
  %379 = load i64, i64* %PC
  %380 = call %struct.Memory* @sub_400550_draw(%struct.State* %0, i64 %379, %struct.Memory* %MEMORY.1)
  %381 = load i64, i64* %RBP
  %382 = sub i64 %381, 36
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 3
  store i64 %384, i64* %PC
  %385 = inttoptr i64 %382 to i32*
  %386 = load i32, i32* %385
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RDX, align 8, !tbaa !2424
  %388 = load i64, i64* %RDX
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 3
  store i64 %390, i64* %PC
  %391 = trunc i64 %388 to i32
  %392 = add i32 1, %391
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RDX, align 8, !tbaa !2424
  %394 = icmp ult i32 %392, %391
  %395 = icmp ult i32 %392, 1
  %396 = or i1 %394, %395
  %397 = zext i1 %396 to i8
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %397, i8* %398, align 1, !tbaa !2428
  %399 = and i32 %392, 255
  %400 = call i32 @llvm.ctpop.i32(i32 %399) #16
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %403, i8* %404, align 1, !tbaa !2442
  %405 = xor i64 1, %388
  %406 = trunc i64 %405 to i32
  %407 = xor i32 %406, %392
  %408 = lshr i32 %407, 4
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %410, i8* %411, align 1, !tbaa !2443
  %412 = icmp eq i32 %392, 0
  %413 = zext i1 %412 to i8
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %413, i8* %414, align 1, !tbaa !2444
  %415 = lshr i32 %392, 31
  %416 = trunc i32 %415 to i8
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %416, i8* %417, align 1, !tbaa !2445
  %418 = lshr i32 %391, 31
  %419 = xor i32 %415, %418
  %420 = add nuw nsw i32 %419, %415
  %421 = icmp eq i32 %420, 2
  %422 = zext i1 %421 to i8
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %422, i8* %423, align 1, !tbaa !2446
  %424 = load i64, i64* %RBP
  %425 = sub i64 %424, 36
  %426 = load i32, i32* %EDX
  %427 = zext i32 %426 to i64
  %428 = load i64, i64* %PC
  %429 = add i64 %428, 3
  store i64 %429, i64* %PC
  %430 = inttoptr i64 %425 to i32*
  store i32 %426, i32* %430
  %431 = load i64, i64* %PC
  %432 = sub i64 %431, 478
  %433 = load i64, i64* %PC
  %434 = add i64 %433, 5
  store i64 %434, i64* %PC
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %432, i64* %435, align 8, !tbaa !2424
  %436 = load i64, i64* %RBP
  %437 = sub i64 %436, 36
  %438 = load i64, i64* %PC
  %439 = add i64 %438, 4
  store i64 %439, i64* %PC
  %440 = inttoptr i64 %437 to i32*
  %441 = load i32, i32* %440
  %442 = sub i32 %441, 28
  %443 = icmp ult i32 %441, 28
  %444 = zext i1 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %444, i8* %445, align 1, !tbaa !2428
  %446 = and i32 %442, 255
  %447 = call i32 @llvm.ctpop.i32(i32 %446) #16
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  %450 = xor i8 %449, 1
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %450, i8* %451, align 1, !tbaa !2442
  %452 = xor i32 %441, 28
  %453 = xor i32 %452, %442
  %454 = lshr i32 %453, 4
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %456, i8* %457, align 1, !tbaa !2443
  %458 = icmp eq i32 %442, 0
  %459 = zext i1 %458 to i8
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %459, i8* %460, align 1, !tbaa !2444
  %461 = lshr i32 %442, 31
  %462 = trunc i32 %461 to i8
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %462, i8* %463, align 1, !tbaa !2445
  %464 = lshr i32 %441, 31
  %465 = xor i32 %461, %464
  %466 = add nuw nsw i32 %465, %464
  %467 = icmp eq i32 %466, 2
  %468 = zext i1 %467 to i8
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %468, i8* %469, align 1, !tbaa !2446
  %470 = load i64, i64* %PC
  %471 = add i64 %470, 479
  %472 = load i64, i64* %PC
  %473 = add i64 %472, 6
  %474 = load i64, i64* %PC
  %475 = add i64 %474, 6
  store i64 %475, i64* %PC
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %477 = load i8, i8* %476, align 1, !tbaa !2445
  %478 = icmp ne i8 %477, 0
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %480 = load i8, i8* %479, align 1, !tbaa !2446
  %481 = icmp ne i8 %480, 0
  %482 = xor i1 %478, %481
  %483 = xor i1 %482, true
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %486 = select i1 %482, i64 %473, i64 %471
  store i64 %486, i64* %485, align 8, !tbaa !2424
  %487 = load i8, i8* %BRANCH_TAKEN
  %488 = icmp eq i8 %487, 1
  br i1 %488, label %block_400847, label %block_40066e

block_4007f7:                                     ; preds = %block_4007eb
  %489 = load i64, i64* %PC
  %490 = add i64 %489, 10
  store i64 %490, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  %491 = load i64, i64* %PC
  %492 = add i64 %491, 2
  store i64 %492, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %493 = load i64, i64* %PC
  %494 = sub i64 %493, 963
  %495 = load i64, i64* %PC
  %496 = add i64 %495, 5
  %497 = load i64, i64* %PC
  %498 = add i64 %497, 5
  store i64 %498, i64* %PC
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %500 = load i64, i64* %499, align 8, !tbaa !2424
  %501 = add i64 %500, -8
  %502 = inttoptr i64 %501 to i64*
  store i64 %496, i64* %502
  store i64 %501, i64* %499, align 8, !tbaa !2424
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %494, i64* %503, align 8, !tbaa !2424
  %504 = load i64, i64* %PC
  %505 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %504, %struct.Memory* %MEMORY.0)
  %506 = load i64, i64* %RBP
  %507 = sub i64 %506, 4
  %508 = load i64, i64* %PC
  %509 = add i64 %508, 7
  store i64 %509, i64* %PC
  %510 = inttoptr i64 %507 to i32*
  store i32 2, i32* %510
  %511 = load i64, i64* %RBP
  %512 = sub i64 %511, 104
  %513 = load i32, i32* %EAX
  %514 = zext i32 %513 to i64
  %515 = load i64, i64* %PC
  %516 = add i64 %515, 3
  store i64 %516, i64* %PC
  %517 = inttoptr i64 %512 to i32*
  store i32 %513, i32* %517
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 80
  %520 = load i64, i64* %PC
  %521 = add i64 %520, 5
  store i64 %521, i64* %PC
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %519, i64* %522, align 8, !tbaa !2424
  br label %block_400862

block_4006b4:                                     ; preds = %block_400698, %3
  %MEMORY.2 = phi %struct.Memory* [ %2, %3 ], [ %380, %block_400698 ]
  %523 = load i64, i64* %RBP
  %524 = sub i64 %523, 24
  %525 = load i64, i64* %PC
  %526 = add i64 %525, 3
  store i64 %526, i64* %PC
  %527 = inttoptr i64 %524 to i32*
  %528 = load i32, i32* %527
  %529 = zext i32 %528 to i64
  store i64 %529, i64* %RAX, align 8, !tbaa !2424
  %530 = load i64, i64* %RAX
  %531 = load i64, i64* %PC
  %532 = add i64 %531, 3
  store i64 %532, i64* %PC
  %533 = trunc i64 %530 to i32
  %534 = add i32 1, %533
  %535 = zext i32 %534 to i64
  store i64 %535, i64* %RAX, align 8, !tbaa !2424
  %536 = icmp ult i32 %534, %533
  %537 = icmp ult i32 %534, 1
  %538 = or i1 %536, %537
  %539 = zext i1 %538 to i8
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %539, i8* %540, align 1, !tbaa !2428
  %541 = and i32 %534, 255
  %542 = call i32 @llvm.ctpop.i32(i32 %541) #16
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  %545 = xor i8 %544, 1
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %545, i8* %546, align 1, !tbaa !2442
  %547 = xor i64 1, %530
  %548 = trunc i64 %547 to i32
  %549 = xor i32 %548, %534
  %550 = lshr i32 %549, 4
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %552, i8* %553, align 1, !tbaa !2443
  %554 = icmp eq i32 %534, 0
  %555 = zext i1 %554 to i8
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %555, i8* %556, align 1, !tbaa !2444
  %557 = lshr i32 %534, 31
  %558 = trunc i32 %557 to i8
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %558, i8* %559, align 1, !tbaa !2445
  %560 = lshr i32 %533, 31
  %561 = xor i32 %557, %560
  %562 = add nuw nsw i32 %561, %557
  %563 = icmp eq i32 %562, 2
  %564 = zext i1 %563 to i8
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %564, i8* %565, align 1, !tbaa !2446
  %566 = load i64, i64* %RBP
  %567 = sub i64 %566, 24
  %568 = load i32, i32* %EAX
  %569 = zext i32 %568 to i64
  %570 = load i64, i64* %PC
  %571 = add i64 %570, 3
  store i64 %571, i64* %PC
  %572 = inttoptr i64 %567 to i32*
  store i32 %568, i32* %572
  %573 = load i64, i64* %PC
  %574 = add i64 %573, 83
  %575 = load i64, i64* %PC
  %576 = add i64 %575, 5
  store i64 %576, i64* %PC
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %574, i64* %577, align 8, !tbaa !2424
  %578 = load i64, i64* %PC
  %579 = add i64 %578, 10
  store i64 %579, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %580 = load i64, i64* %RBP
  %581 = sub i64 %580, 24
  %582 = load i64, i64* %PC
  %583 = add i64 %582, 4
  store i64 %583, i64* %PC
  %584 = inttoptr i64 %581 to i32*
  %585 = load i32, i32* %584
  %586 = sext i32 %585 to i64
  store i64 %586, i64* %RCX, align 8, !tbaa !2424
  %587 = load i64, i64* %RCX
  %588 = load i64, i64* %PC
  %589 = add i64 %588, 4
  store i64 %589, i64* %PC
  %590 = sext i64 %587 to i128
  %591 = and i128 %590, -18446744073709551616
  %592 = zext i64 %587 to i128
  %593 = or i128 %591, %592
  %594 = mul nsw i128 11, %593
  %595 = trunc i128 %594 to i64
  store i64 %595, i64* %RCX, align 8, !tbaa !2424
  %596 = sext i64 %595 to i128
  %597 = icmp ne i128 %596, %594
  %598 = zext i1 %597 to i8
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %598, i8* %599, align 1, !tbaa !2428
  %600 = trunc i128 %594 to i32
  %601 = and i32 %600, 255
  %602 = call i32 @llvm.ctpop.i32(i32 %601) #16
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  %605 = xor i8 %604, 1
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %605, i8* %606, align 1, !tbaa !2442
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %607, align 1, !tbaa !2443
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %608, align 1, !tbaa !2444
  %609 = lshr i64 %595, 63
  %610 = trunc i64 %609 to i8
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %610, i8* %611, align 1, !tbaa !2445
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %598, i8* %612, align 1, !tbaa !2446
  %613 = load i64, i64* %RAX
  %614 = load i64, i64* %RCX
  %615 = load i64, i64* %PC
  %616 = add i64 %615, 3
  store i64 %616, i64* %PC
  %617 = add i64 %614, %613
  store i64 %617, i64* %RAX, align 8, !tbaa !2424
  %618 = icmp ult i64 %617, %613
  %619 = icmp ult i64 %617, %614
  %620 = or i1 %618, %619
  %621 = zext i1 %620 to i8
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %621, i8* %622, align 1, !tbaa !2428
  %623 = trunc i64 %617 to i32
  %624 = and i32 %623, 255
  %625 = call i32 @llvm.ctpop.i32(i32 %624) #16
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  %628 = xor i8 %627, 1
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %628, i8* %629, align 1, !tbaa !2442
  %630 = xor i64 %614, %613
  %631 = xor i64 %630, %617
  %632 = lshr i64 %631, 4
  %633 = trunc i64 %632 to i8
  %634 = and i8 %633, 1
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %634, i8* %635, align 1, !tbaa !2443
  %636 = icmp eq i64 %617, 0
  %637 = zext i1 %636 to i8
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %637, i8* %638, align 1, !tbaa !2444
  %639 = lshr i64 %617, 63
  %640 = trunc i64 %639 to i8
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %640, i8* %641, align 1, !tbaa !2445
  %642 = lshr i64 %613, 63
  %643 = lshr i64 %614, 63
  %644 = xor i64 %639, %642
  %645 = xor i64 %639, %643
  %646 = add nuw nsw i64 %644, %645
  %647 = icmp eq i64 %646, 2
  %648 = zext i1 %647 to i8
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %648, i8* %649, align 1, !tbaa !2446
  %650 = load i64, i64* %RBP
  %651 = sub i64 %650, 20
  %652 = load i64, i64* %PC
  %653 = add i64 %652, 4
  store i64 %653, i64* %PC
  %654 = inttoptr i64 %651 to i32*
  %655 = load i32, i32* %654
  %656 = sext i32 %655 to i64
  store i64 %656, i64* %RCX, align 8, !tbaa !2424
  %657 = load i64, i64* %RAX
  %658 = load i64, i64* %RCX
  %659 = add i64 %658, %657
  %660 = load i64, i64* %PC
  %661 = add i64 %660, 4
  store i64 %661, i64* %PC
  %662 = inttoptr i64 %659 to i8*
  %663 = load i8, i8* %662
  %664 = sext i8 %663 to i64
  %665 = and i64 %664, 4294967295
  store i64 %665, i64* %RDX, align 8, !tbaa !2424
  %666 = load i32, i32* %EDX
  %667 = zext i32 %666 to i64
  %668 = load i64, i64* %PC
  %669 = add i64 %668, 3
  store i64 %669, i64* %PC
  %670 = sub i32 %666, 35
  %671 = icmp ult i32 %666, 35
  %672 = zext i1 %671 to i8
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %672, i8* %673, align 1, !tbaa !2428
  %674 = and i32 %670, 255
  %675 = call i32 @llvm.ctpop.i32(i32 %674) #16
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  %678 = xor i8 %677, 1
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %678, i8* %679, align 1, !tbaa !2442
  %680 = xor i64 35, %667
  %681 = trunc i64 %680 to i32
  %682 = xor i32 %681, %670
  %683 = lshr i32 %682, 4
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %685, i8* %686, align 1, !tbaa !2443
  %687 = icmp eq i32 %670, 0
  %688 = zext i1 %687 to i8
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %688, i8* %689, align 1, !tbaa !2444
  %690 = lshr i32 %670, 31
  %691 = trunc i32 %690 to i8
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %691, i8* %692, align 1, !tbaa !2445
  %693 = lshr i32 %666, 31
  %694 = xor i32 %690, %693
  %695 = add nuw nsw i32 %694, %693
  %696 = icmp eq i32 %695, 2
  %697 = zext i1 %696 to i8
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %697, i8* %698, align 1, !tbaa !2446
  %699 = load i64, i64* %PC
  %700 = add i64 %699, 57
  %701 = load i64, i64* %PC
  %702 = add i64 %701, 6
  %703 = load i64, i64* %PC
  %704 = add i64 %703, 6
  store i64 %704, i64* %PC
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %706 = load i8, i8* %705, align 1, !tbaa !2444
  %707 = icmp eq i8 %706, 0
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %710 = select i1 %707, i64 %700, i64 %702
  store i64 %710, i64* %709, align 8, !tbaa !2424
  %711 = load i8, i8* %BRANCH_TAKEN
  %712 = icmp eq i8 %711, 1
  %713 = load i64, i64* %PC
  %714 = add i64 %713, 10
  store i64 %714, i64* %PC
  br i1 %712, label %block_400769, label %block_400736

block_4007d3:                                     ; preds = %block_4007c9, %block_40078f, %block_400799, %block_4007bf
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_40078f ], [ %MEMORY.2, %block_400799 ], [ %MEMORY.2, %block_4007bf ], [ %MEMORY.2, %block_4007c9 ]
  %715 = load i64, i64* %RBP
  %716 = sub i64 %715, 28
  %717 = load i64, i64* %PC
  %718 = add i64 %717, 3
  store i64 %718, i64* %PC
  %719 = inttoptr i64 %716 to i32*
  %720 = load i32, i32* %719
  %721 = zext i32 %720 to i64
  store i64 %721, i64* %RAX, align 8, !tbaa !2424
  %722 = load i64, i64* %RBP
  %723 = sub i64 %722, 20
  %724 = load i32, i32* %EAX
  %725 = zext i32 %724 to i64
  %726 = load i64, i64* %PC
  %727 = add i64 %726, 3
  store i64 %727, i64* %PC
  %728 = inttoptr i64 %723 to i32*
  store i32 %724, i32* %728
  %729 = load i64, i64* %RBP
  %730 = sub i64 %729, 32
  %731 = load i64, i64* %PC
  %732 = add i64 %731, 3
  store i64 %732, i64* %PC
  %733 = inttoptr i64 %730 to i32*
  %734 = load i32, i32* %733
  %735 = zext i32 %734 to i64
  store i64 %735, i64* %RAX, align 8, !tbaa !2424
  %736 = load i64, i64* %RBP
  %737 = sub i64 %736, 24
  %738 = load i32, i32* %EAX
  %739 = zext i32 %738 to i64
  %740 = load i64, i64* %PC
  %741 = add i64 %740, 3
  store i64 %741, i64* %PC
  %742 = inttoptr i64 %737 to i32*
  store i32 %738, i32* %742
  br label %block_4007df

block_400736:                                     ; preds = %block_4006b4
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 246), i64* %RDI, align 8, !tbaa !2424
  %743 = load i64, i64* %PC
  %744 = add i64 %743, 2
  store i64 %744, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %745 = load i64, i64* %PC
  %746 = sub i64 %745, 770
  %747 = load i64, i64* %PC
  %748 = add i64 %747, 5
  %749 = load i64, i64* %PC
  %750 = add i64 %749, 5
  store i64 %750, i64* %PC
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %752 = load i64, i64* %751, align 8, !tbaa !2424
  %753 = add i64 %752, -8
  %754 = inttoptr i64 %753 to i64*
  store i64 %748, i64* %754
  store i64 %753, i64* %751, align 8, !tbaa !2424
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %746, i64* %755, align 8, !tbaa !2424
  %756 = load i64, i64* %PC
  %757 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %756, %struct.Memory* %MEMORY.2)
  %758 = load i64, i64* %PC
  %759 = add i64 %758, 10
  store i64 %759, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 256), i64* %RDI, align 8, !tbaa !2424
  %760 = load i64, i64* %RBP
  %761 = sub i64 %760, 64
  %762 = load i64, i64* %PC
  %763 = add i64 %762, 4
  store i64 %763, i64* %PC
  store i64 %761, i64* %RSI, align 8, !tbaa !2424
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
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %773 = load i64, i64* %PC
  %774 = sub i64 %773, 794
  %775 = load i64, i64* %PC
  %776 = add i64 %775, 5
  %777 = load i64, i64* %PC
  %778 = add i64 %777, 5
  store i64 %778, i64* %PC
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %780 = load i64, i64* %779, align 8, !tbaa !2424
  %781 = add i64 %780, -8
  %782 = inttoptr i64 %781 to i64*
  store i64 %776, i64* %782
  store i64 %781, i64* %779, align 8, !tbaa !2424
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %774, i64* %783, align 8, !tbaa !2424
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
  store i64 %793, i64* %RDI, align 8, !tbaa !2424
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %794, align 1, !tbaa !2428
  %795 = and i32 %792, 255
  %796 = call i32 @llvm.ctpop.i32(i32 %795) #16
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %799, i8* %800, align 1, !tbaa !2442
  %801 = icmp eq i32 %792, 0
  %802 = zext i1 %801 to i8
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %802, i8* %803, align 1, !tbaa !2444
  %804 = lshr i32 %792, 31
  %805 = trunc i32 %804 to i8
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %805, i8* %806, align 1, !tbaa !2445
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %807, align 1, !tbaa !2446
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %808, align 1, !tbaa !2443
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
  %817 = sub i64 %816, 772
  %818 = load i64, i64* %PC
  %819 = add i64 %818, 5
  %820 = load i64, i64* %PC
  %821 = add i64 %820, 5
  store i64 %821, i64* %PC
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %823 = load i64, i64* %822, align 8, !tbaa !2424
  %824 = add i64 %823, -8
  %825 = inttoptr i64 %824 to i64*
  store i64 %819, i64* %825
  store i64 %824, i64* %822, align 8, !tbaa !2424
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %817, i64* %826, align 8, !tbaa !2424
  %827 = load i64, i64* %PC
  %828 = call %struct.Memory* @ext_6010c8_exit(%struct.State* %0, i64 %827, %struct.Memory* %785)
  %829 = load i64, i64* %PC
  %830 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %829, %struct.Memory* %828)
  ret %struct.Memory* %830

block_40066e:                                     ; preds = %block_400817
  %831 = load i64, i64* %RBP
  %832 = sub i64 %831, 20
  %833 = load i64, i64* %PC
  %834 = add i64 %833, 3
  store i64 %834, i64* %PC
  %835 = inttoptr i64 %832 to i32*
  %836 = load i32, i32* %835
  %837 = zext i32 %836 to i64
  store i64 %837, i64* %RAX, align 8, !tbaa !2424
  %838 = load i64, i64* %RBP
  %839 = sub i64 %838, 28
  %840 = load i32, i32* %EAX
  %841 = zext i32 %840 to i64
  %842 = load i64, i64* %PC
  %843 = add i64 %842, 3
  store i64 %843, i64* %PC
  %844 = inttoptr i64 %839 to i32*
  store i32 %840, i32* %844
  %845 = load i64, i64* %RBP
  %846 = sub i64 %845, 24
  %847 = load i64, i64* %PC
  %848 = add i64 %847, 3
  store i64 %848, i64* %PC
  %849 = inttoptr i64 %846 to i32*
  %850 = load i32, i32* %849
  %851 = zext i32 %850 to i64
  store i64 %851, i64* %RAX, align 8, !tbaa !2424
  %852 = load i64, i64* %RBP
  %853 = sub i64 %852, 32
  %854 = load i32, i32* %EAX
  %855 = zext i32 %854 to i64
  %856 = load i64, i64* %PC
  %857 = add i64 %856, 3
  store i64 %857, i64* %PC
  %858 = inttoptr i64 %853 to i32*
  store i32 %854, i32* %858
  %859 = load i64, i64* %RBP
  %860 = sub i64 %859, 36
  %861 = load i64, i64* %PC
  %862 = add i64 %861, 4
  store i64 %862, i64* %PC
  %863 = inttoptr i64 %860 to i32*
  %864 = load i32, i32* %863
  %865 = sext i32 %864 to i64
  store i64 %865, i64* %RCX, align 8, !tbaa !2424
  %866 = load i64, i64* %RBP
  %867 = load i64, i64* %RCX
  %868 = add i64 %866, -64
  %869 = add i64 %868, %867
  %870 = load i64, i64* %PC
  %871 = add i64 %870, 5
  store i64 %871, i64* %PC
  %872 = inttoptr i64 %869 to i8*
  %873 = load i8, i8* %872
  %874 = sext i8 %873 to i64
  %875 = and i64 %874, 4294967295
  store i64 %875, i64* %RAX, align 8, !tbaa !2424
  %876 = load i64, i64* %RAX
  %877 = load i64, i64* %PC
  %878 = add i64 %877, 3
  store i64 %878, i64* %PC
  %879 = trunc i64 %876 to i32
  %880 = add i32 -97, %879
  %881 = zext i32 %880 to i64
  store i64 %881, i64* %RAX, align 8, !tbaa !2424
  %882 = icmp ult i32 %880, %879
  %883 = icmp ult i32 %880, -97
  %884 = or i1 %882, %883
  %885 = zext i1 %884 to i8
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %885, i8* %886, align 1, !tbaa !2428
  %887 = and i32 %880, 255
  %888 = call i32 @llvm.ctpop.i32(i32 %887) #16
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  %891 = xor i8 %890, 1
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %891, i8* %892, align 1, !tbaa !2442
  %893 = xor i64 -97, %876
  %894 = trunc i64 %893 to i32
  %895 = xor i32 %894, %880
  %896 = lshr i32 %895, 4
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %898, i8* %899, align 1, !tbaa !2443
  %900 = icmp eq i32 %880, 0
  %901 = zext i1 %900 to i8
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %901, i8* %902, align 1, !tbaa !2444
  %903 = lshr i32 %880, 31
  %904 = trunc i32 %903 to i8
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %904, i8* %905, align 1, !tbaa !2445
  %906 = lshr i32 %879, 31
  %907 = xor i32 %903, %906
  %908 = xor i32 %903, 1
  %909 = add nuw nsw i32 %907, %908
  %910 = icmp eq i32 %909, 2
  %911 = zext i1 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %911, i8* %912, align 1, !tbaa !2446
  %913 = load i32, i32* %EAX
  %914 = zext i32 %913 to i64
  %915 = load i64, i64* %PC
  %916 = add i64 %915, 2
  store i64 %916, i64* %PC
  %917 = and i64 %914, 4294967295
  store i64 %917, i64* %RCX, align 8, !tbaa !2424
  %918 = load i64, i64* %RAX
  %919 = load i64, i64* %PC
  %920 = add i64 %919, 3
  store i64 %920, i64* %PC
  %921 = trunc i64 %918 to i32
  %922 = sub i32 %921, 22
  %923 = zext i32 %922 to i64
  store i64 %923, i64* %RAX, align 8, !tbaa !2424
  %924 = icmp ult i32 %921, 22
  %925 = zext i1 %924 to i8
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %925, i8* %926, align 1, !tbaa !2428
  %927 = and i32 %922, 255
  %928 = call i32 @llvm.ctpop.i32(i32 %927) #16
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  %931 = xor i8 %930, 1
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %931, i8* %932, align 1, !tbaa !2442
  %933 = xor i64 22, %918
  %934 = trunc i64 %933 to i32
  %935 = xor i32 %934, %922
  %936 = lshr i32 %935, 4
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %938, i8* %939, align 1, !tbaa !2443
  %940 = icmp eq i32 %922, 0
  %941 = zext i1 %940 to i8
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %941, i8* %942, align 1, !tbaa !2444
  %943 = lshr i32 %922, 31
  %944 = trunc i32 %943 to i8
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %944, i8* %945, align 1, !tbaa !2445
  %946 = lshr i32 %921, 31
  %947 = xor i32 %943, %946
  %948 = add nuw nsw i32 %947, %946
  %949 = icmp eq i32 %948, 2
  %950 = zext i1 %949 to i8
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %950, i8* %951, align 1, !tbaa !2446
  %952 = load i64, i64* %RBP
  %953 = sub i64 %952, 80
  %954 = load i64, i64* %RCX
  %955 = load i64, i64* %PC
  %956 = add i64 %955, 4
  store i64 %956, i64* %PC
  %957 = inttoptr i64 %953 to i64*
  store i64 %954, i64* %957
  %958 = load i64, i64* %RBP
  %959 = sub i64 %958, 84
  %960 = load i32, i32* %EAX
  %961 = zext i32 %960 to i64
  %962 = load i64, i64* %PC
  %963 = add i64 %962, 3
  store i64 %963, i64* %PC
  %964 = inttoptr i64 %959 to i32*
  store i32 %960, i32* %964
  %965 = load i64, i64* %PC
  %966 = add i64 %965, 76
  %967 = load i64, i64* %PC
  %968 = add i64 %967, 6
  %969 = load i64, i64* %PC
  %970 = add i64 %969, 6
  store i64 %970, i64* %PC
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %972 = load i8, i8* %971, align 1, !tbaa !2428
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %974 = load i8, i8* %973, align 1, !tbaa !2444
  %975 = or i8 %974, %972
  %976 = icmp eq i8 %975, 0
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %979 = select i1 %976, i64 %966, i64 %968
  store i64 %979, i64* %978, align 8, !tbaa !2424
  %980 = load i8, i8* %BRANCH_TAKEN
  %981 = icmp eq i8 %980, 1
  br i1 %981, label %block_4006de, label %block_400698

block_400698:                                     ; preds = %block_40066e
  %982 = load i64, i64* %RBP
  %983 = sub i64 %982, 80
  %984 = load i64, i64* %PC
  %985 = add i64 %984, 4
  store i64 %985, i64* %PC
  %986 = inttoptr i64 %983 to i64*
  %987 = load i64, i64* %986
  store i64 %987, i64* %RAX, align 8, !tbaa !2424
  %988 = load i64, i64* %RAX
  %989 = mul i64 %988, 8
  %990 = add i64 %989, add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 8)
  %991 = load i64, i64* %PC
  %992 = add i64 %991, 8
  store i64 %992, i64* %PC
  %993 = inttoptr i64 %990 to i64*
  %994 = load i64, i64* %993
  store i64 %994, i64* %RCX, align 8, !tbaa !2424
  %995 = load i64, i64* %RCX
  %996 = load i64, i64* %PC
  %997 = add i64 %996, 2
  store i64 %997, i64* %PC
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %995, i64* %998, align 8, !tbaa !2424
  %999 = load i64, i64* %PC
  switch i64 %999, label %1384 [
    i64 4196034, label %block_4006c2
    i64 4196048, label %block_4006d0
    i64 4196020, label %block_4006b4
    i64 4196062, label %block_4006de
    i64 4196006, label %block_4006a6
  ]

block_40078f:                                     ; preds = %block_400769
  %1000 = load i64, i64* %RBP
  %1001 = sub i64 %1000, 24
  %1002 = load i64, i64* %PC
  %1003 = add i64 %1002, 4
  store i64 %1003, i64* %PC
  %1004 = inttoptr i64 %1001 to i32*
  %1005 = load i32, i32* %1004
  %1006 = sub i32 %1005, 2
  %1007 = icmp ult i32 %1005, 2
  %1008 = zext i1 %1007 to i8
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1008, i8* %1009, align 1, !tbaa !2428
  %1010 = and i32 %1006, 255
  %1011 = call i32 @llvm.ctpop.i32(i32 %1010) #16
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1014, i8* %1015, align 1, !tbaa !2442
  %1016 = xor i32 %1005, 2
  %1017 = xor i32 %1016, %1006
  %1018 = lshr i32 %1017, 4
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1020, i8* %1021, align 1, !tbaa !2443
  %1022 = icmp eq i32 %1006, 0
  %1023 = zext i1 %1022 to i8
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1023, i8* %1024, align 1, !tbaa !2444
  %1025 = lshr i32 %1006, 31
  %1026 = trunc i32 %1025 to i8
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1026, i8* %1027, align 1, !tbaa !2445
  %1028 = lshr i32 %1005, 31
  %1029 = xor i32 %1025, %1028
  %1030 = add nuw nsw i32 %1029, %1028
  %1031 = icmp eq i32 %1030, 2
  %1032 = zext i1 %1031 to i8
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1032, i8* %1033, align 1, !tbaa !2446
  %1034 = load i64, i64* %PC
  %1035 = add i64 %1034, 64
  %1036 = load i64, i64* %PC
  %1037 = add i64 %1036, 6
  %1038 = load i64, i64* %PC
  %1039 = add i64 %1038, 6
  store i64 %1039, i64* %PC
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1041 = load i8, i8* %1040, align 1, !tbaa !2444
  %1042 = icmp eq i8 %1041, 0
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1045 = select i1 %1042, i64 %1035, i64 %1037
  store i64 %1045, i64* %1044, align 8, !tbaa !2424
  %1046 = load i8, i8* %BRANCH_TAKEN
  %1047 = icmp eq i8 %1046, 1
  br i1 %1047, label %block_4007d3, label %block_400799

block_400769:                                     ; preds = %block_4006b4
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %1048 = load i64, i64* %RBP
  %1049 = sub i64 %1048, 24
  %1050 = load i64, i64* %PC
  %1051 = add i64 %1050, 4
  store i64 %1051, i64* %PC
  %1052 = inttoptr i64 %1049 to i32*
  %1053 = load i32, i32* %1052
  %1054 = sext i32 %1053 to i64
  store i64 %1054, i64* %RCX, align 8, !tbaa !2424
  %1055 = load i64, i64* %RCX
  %1056 = load i64, i64* %PC
  %1057 = add i64 %1056, 4
  store i64 %1057, i64* %PC
  %1058 = sext i64 %1055 to i128
  %1059 = and i128 %1058, -18446744073709551616
  %1060 = zext i64 %1055 to i128
  %1061 = or i128 %1059, %1060
  %1062 = mul nsw i128 11, %1061
  %1063 = trunc i128 %1062 to i64
  store i64 %1063, i64* %RCX, align 8, !tbaa !2424
  %1064 = sext i64 %1063 to i128
  %1065 = icmp ne i128 %1064, %1062
  %1066 = zext i1 %1065 to i8
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1066, i8* %1067, align 1, !tbaa !2428
  %1068 = trunc i128 %1062 to i32
  %1069 = and i32 %1068, 255
  %1070 = call i32 @llvm.ctpop.i32(i32 %1069) #16
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  %1073 = xor i8 %1072, 1
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1073, i8* %1074, align 1, !tbaa !2442
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1075, align 1, !tbaa !2443
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1076, align 1, !tbaa !2444
  %1077 = lshr i64 %1063, 63
  %1078 = trunc i64 %1077 to i8
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1078, i8* %1079, align 1, !tbaa !2445
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1066, i8* %1080, align 1, !tbaa !2446
  %1081 = load i64, i64* %RAX
  %1082 = load i64, i64* %RCX
  %1083 = load i64, i64* %PC
  %1084 = add i64 %1083, 3
  store i64 %1084, i64* %PC
  %1085 = add i64 %1082, %1081
  store i64 %1085, i64* %RAX, align 8, !tbaa !2424
  %1086 = icmp ult i64 %1085, %1081
  %1087 = icmp ult i64 %1085, %1082
  %1088 = or i1 %1086, %1087
  %1089 = zext i1 %1088 to i8
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1089, i8* %1090, align 1, !tbaa !2428
  %1091 = trunc i64 %1085 to i32
  %1092 = and i32 %1091, 255
  %1093 = call i32 @llvm.ctpop.i32(i32 %1092) #16
  %1094 = trunc i32 %1093 to i8
  %1095 = and i8 %1094, 1
  %1096 = xor i8 %1095, 1
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1096, i8* %1097, align 1, !tbaa !2442
  %1098 = xor i64 %1082, %1081
  %1099 = xor i64 %1098, %1085
  %1100 = lshr i64 %1099, 4
  %1101 = trunc i64 %1100 to i8
  %1102 = and i8 %1101, 1
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1102, i8* %1103, align 1, !tbaa !2443
  %1104 = icmp eq i64 %1085, 0
  %1105 = zext i1 %1104 to i8
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1105, i8* %1106, align 1, !tbaa !2444
  %1107 = lshr i64 %1085, 63
  %1108 = trunc i64 %1107 to i8
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1108, i8* %1109, align 1, !tbaa !2445
  %1110 = lshr i64 %1081, 63
  %1111 = lshr i64 %1082, 63
  %1112 = xor i64 %1107, %1110
  %1113 = xor i64 %1107, %1111
  %1114 = add nuw nsw i64 %1112, %1113
  %1115 = icmp eq i64 %1114, 2
  %1116 = zext i1 %1115 to i8
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1116, i8* %1117, align 1, !tbaa !2446
  %1118 = load i64, i64* %RBP
  %1119 = sub i64 %1118, 20
  %1120 = load i64, i64* %PC
  %1121 = add i64 %1120, 4
  store i64 %1121, i64* %PC
  %1122 = inttoptr i64 %1119 to i32*
  %1123 = load i32, i32* %1122
  %1124 = sext i32 %1123 to i64
  store i64 %1124, i64* %RCX, align 8, !tbaa !2424
  %1125 = load i64, i64* %RAX
  %1126 = load i64, i64* %RCX
  %1127 = add i64 %1126, %1125
  %1128 = load i64, i64* %PC
  %1129 = add i64 %1128, 4
  store i64 %1129, i64* %PC
  %1130 = inttoptr i64 %1127 to i8*
  %1131 = load i8, i8* %1130
  %1132 = sext i8 %1131 to i64
  %1133 = and i64 %1132, 4294967295
  store i64 %1133, i64* %RDX, align 8, !tbaa !2424
  %1134 = load i32, i32* %EDX
  %1135 = zext i32 %1134 to i64
  %1136 = load i64, i64* %PC
  %1137 = add i64 %1136, 3
  store i64 %1137, i64* %PC
  %1138 = sub i32 %1134, 32
  %1139 = icmp ult i32 %1134, 32
  %1140 = zext i1 %1139 to i8
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1140, i8* %1141, align 1, !tbaa !2428
  %1142 = and i32 %1138, 255
  %1143 = call i32 @llvm.ctpop.i32(i32 %1142) #16
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  %1146 = xor i8 %1145, 1
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1146, i8* %1147, align 1, !tbaa !2442
  %1148 = xor i64 32, %1135
  %1149 = trunc i64 %1148 to i32
  %1150 = xor i32 %1149, %1138
  %1151 = lshr i32 %1150, 4
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 1
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1153, i8* %1154, align 1, !tbaa !2443
  %1155 = icmp eq i32 %1138, 0
  %1156 = zext i1 %1155 to i8
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1156, i8* %1157, align 1, !tbaa !2444
  %1158 = lshr i32 %1138, 31
  %1159 = trunc i32 %1158 to i8
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1159, i8* %1160, align 1, !tbaa !2445
  %1161 = lshr i32 %1134, 31
  %1162 = xor i32 %1158, %1161
  %1163 = add nuw nsw i32 %1162, %1161
  %1164 = icmp eq i32 %1163, 2
  %1165 = zext i1 %1164 to i8
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1165, i8* %1166, align 1, !tbaa !2446
  %1167 = load i64, i64* %PC
  %1168 = add i64 %1167, 86
  %1169 = load i64, i64* %PC
  %1170 = add i64 %1169, 6
  %1171 = load i64, i64* %PC
  %1172 = add i64 %1171, 6
  store i64 %1172, i64* %PC
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1174 = load i8, i8* %1173, align 1, !tbaa !2444
  store i8 %1174, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1176 = icmp ne i8 %1174, 0
  %1177 = select i1 %1176, i64 %1168, i64 %1170
  store i64 %1177, i64* %1175, align 8, !tbaa !2424
  %1178 = load i8, i8* %BRANCH_TAKEN
  %1179 = icmp eq i8 %1178, 1
  br i1 %1179, label %block_4007df, label %block_40078f

block_4007eb:                                     ; preds = %block_4007df
  %1180 = load i64, i64* %RBP
  %1181 = sub i64 %1180, 32
  %1182 = load i64, i64* %PC
  %1183 = add i64 %1182, 3
  store i64 %1183, i64* %PC
  %1184 = inttoptr i64 %1181 to i32*
  %1185 = load i32, i32* %1184
  %1186 = zext i32 %1185 to i64
  store i64 %1186, i64* %RAX, align 8, !tbaa !2424
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
  store i8 %1203, i8* %1204, align 1, !tbaa !2442
  %1205 = xor i32 %1194, %1187
  %1206 = xor i32 %1205, %1195
  %1207 = lshr i32 %1206, 4
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1209, i8* %1210, align 1, !tbaa !2443
  %1211 = icmp eq i32 %1195, 0
  %1212 = zext i1 %1211 to i8
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1212, i8* %1213, align 1, !tbaa !2444
  %1214 = lshr i32 %1195, 31
  %1215 = trunc i32 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1215, i8* %1216, align 1, !tbaa !2445
  %1217 = lshr i32 %1187, 31
  %1218 = lshr i32 %1194, 31
  %1219 = xor i32 %1218, %1217
  %1220 = xor i32 %1214, %1217
  %1221 = add nuw nsw i32 %1220, %1219
  %1222 = icmp eq i32 %1221, 2
  %1223 = zext i1 %1222 to i8
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1223, i8* %1224, align 1, !tbaa !2446
  %1225 = load i64, i64* %PC
  %1226 = add i64 %1225, 38
  %1227 = load i64, i64* %PC
  %1228 = add i64 %1227, 6
  %1229 = load i64, i64* %PC
  %1230 = add i64 %1229, 6
  store i64 %1230, i64* %PC
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1232 = load i8, i8* %1231, align 1, !tbaa !2444
  %1233 = icmp eq i8 %1232, 0
  %1234 = zext i1 %1233 to i8
  store i8 %1234, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1236 = select i1 %1233, i64 %1226, i64 %1228
  store i64 %1236, i64* %1235, align 8, !tbaa !2424
  %1237 = load i8, i8* %BRANCH_TAKEN
  %1238 = icmp eq i8 %1237, 1
  br i1 %1238, label %block_400817, label %block_4007f7

block_4007c9:                                     ; preds = %block_4007bf
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
  store i8 %1253, i8* %1254, align 1, !tbaa !2442
  %1255 = xor i32 %1244, 11
  %1256 = xor i32 %1255, %1245
  %1257 = lshr i32 %1256, 4
  %1258 = trunc i32 %1257 to i8
  %1259 = and i8 %1258, 1
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1259, i8* %1260, align 1, !tbaa !2443
  %1261 = icmp eq i32 %1245, 0
  %1262 = zext i1 %1261 to i8
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1262, i8* %1263, align 1, !tbaa !2444
  %1264 = lshr i32 %1245, 31
  %1265 = trunc i32 %1264 to i8
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1265, i8* %1266, align 1, !tbaa !2445
  %1267 = lshr i32 %1244, 31
  %1268 = xor i32 %1264, %1267
  %1269 = add nuw nsw i32 %1268, %1267
  %1270 = icmp eq i32 %1269, 2
  %1271 = zext i1 %1270 to i8
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1271, i8* %1272, align 1, !tbaa !2446
  %1273 = load i64, i64* %PC
  %1274 = add i64 %1273, 18
  %1275 = load i64, i64* %PC
  %1276 = add i64 %1275, 6
  %1277 = load i64, i64* %PC
  %1278 = add i64 %1277, 6
  store i64 %1278, i64* %PC
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1280 = load i8, i8* %1279, align 1, !tbaa !2445
  %1281 = icmp ne i8 %1280, 0
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1283 = load i8, i8* %1282, align 1, !tbaa !2446
  %1284 = icmp ne i8 %1283, 0
  %1285 = xor i1 %1281, %1284
  %1286 = zext i1 %1285 to i8
  store i8 %1286, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1288 = select i1 %1285, i64 %1274, i64 %1276
  store i64 %1288, i64* %1287, align 8, !tbaa !2424
  %1289 = load i8, i8* %BRANCH_TAKEN
  %1290 = icmp eq i8 %1289, 1
  br i1 %1290, label %block_4007df, label %block_4007d3

block_400847:                                     ; preds = %block_400817
  %1291 = load i64, i64* %PC
  %1292 = add i64 %1291, 10
  store i64 %1292, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 275), i64* %RDI, align 8, !tbaa !2424
  %1293 = load i64, i64* %PC
  %1294 = add i64 %1293, 2
  store i64 %1294, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %1295 = load i64, i64* %PC
  %1296 = sub i64 %1295, 1043
  %1297 = load i64, i64* %PC
  %1298 = add i64 %1297, 5
  %1299 = load i64, i64* %PC
  %1300 = add i64 %1299, 5
  store i64 %1300, i64* %PC
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1302 = load i64, i64* %1301, align 8, !tbaa !2424
  %1303 = add i64 %1302, -8
  %1304 = inttoptr i64 %1303 to i64*
  store i64 %1298, i64* %1304
  store i64 %1303, i64* %1301, align 8, !tbaa !2424
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1296, i64* %1305, align 8, !tbaa !2424
  %1306 = load i64, i64* %PC
  %1307 = call %struct.Memory* @ext_6010b0_printf(%struct.State* %0, i64 %1306, %struct.Memory* %380)
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
  br label %block_400862

block_400862:                                     ; preds = %block_400847, %block_4007f7
  %MEMORY.4 = phi %struct.Memory* [ %1307, %block_400847 ], [ %505, %block_4007f7 ]
  %1320 = load i64, i64* %RBP
  %1321 = sub i64 %1320, 4
  %1322 = load i64, i64* %PC
  %1323 = add i64 %1322, 3
  store i64 %1323, i64* %PC
  %1324 = inttoptr i64 %1321 to i32*
  %1325 = load i32, i32* %1324
  %1326 = zext i32 %1325 to i64
  store i64 %1326, i64* %RAX, align 8, !tbaa !2424
  %1327 = load i64, i64* %RSP
  %1328 = load i64, i64* %PC
  %1329 = add i64 %1328, 4
  store i64 %1329, i64* %PC
  %1330 = add i64 112, %1327
  store i64 %1330, i64* %RSP, align 8, !tbaa !2424
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
  store i8 %1341, i8* %1342, align 1, !tbaa !2442
  %1343 = xor i64 112, %1327
  %1344 = xor i64 %1343, %1330
  %1345 = lshr i64 %1344, 4
  %1346 = trunc i64 %1345 to i8
  %1347 = and i8 %1346, 1
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1347, i8* %1348, align 1, !tbaa !2443
  %1349 = icmp eq i64 %1330, 0
  %1350 = zext i1 %1349 to i8
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1350, i8* %1351, align 1, !tbaa !2444
  %1352 = lshr i64 %1330, 63
  %1353 = trunc i64 %1352 to i8
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1353, i8* %1354, align 1, !tbaa !2445
  %1355 = lshr i64 %1327, 63
  %1356 = xor i64 %1352, %1355
  %1357 = add nuw nsw i64 %1356, %1352
  %1358 = icmp eq i64 %1357, 2
  %1359 = zext i1 %1358 to i8
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1359, i8* %1360, align 1, !tbaa !2446
  %1361 = load i64, i64* %PC
  %1362 = add i64 %1361, 1
  store i64 %1362, i64* %PC
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1364 = load i64, i64* %1363, align 8, !tbaa !2424
  %1365 = add i64 %1364, 8
  %1366 = inttoptr i64 %1364 to i64*
  %1367 = load i64, i64* %1366
  store i64 %1367, i64* %RBP, align 8, !tbaa !2424
  store i64 %1365, i64* %1363, align 8, !tbaa !2424
  %1368 = load i64, i64* %PC
  %1369 = add i64 %1368, 1
  store i64 %1369, i64* %PC
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1372 = load i64, i64* %1371, align 8, !tbaa !2424
  %1373 = inttoptr i64 %1372 to i64*
  %1374 = load i64, i64* %1373
  store i64 %1374, i64* %1370, align 8, !tbaa !2424
  %1375 = add i64 %1372, 8
  store i64 %1375, i64* %1371, align 8, !tbaa !2424
  ret %struct.Memory* %MEMORY.4

block_4006de:                                     ; preds = %block_400698, %block_40066e
  %MEMORY.5 = phi %struct.Memory* [ %380, %block_40066e ], [ %380, %block_400698 ]
  %1376 = load i64, i64* %PC
  %1377 = tail call %struct.Memory* @sub_4006de(%struct.State* %0, i64 %1376, %struct.Memory* %MEMORY.5)
  ret %struct.Memory* %1377

block_4006a6:                                     ; preds = %block_400698
  %1378 = load i64, i64* %PC
  %1379 = tail call %struct.Memory* @sub_4006a6(%struct.State* %0, i64 %1378, %struct.Memory* %380)
  ret %struct.Memory* %1379

block_4006d0:                                     ; preds = %block_400698
  %1380 = load i64, i64* %PC
  %1381 = tail call %struct.Memory* @sub_4006d0(%struct.State* %0, i64 %1380, %struct.Memory* %380)
  ret %struct.Memory* %1381

block_4006c2:                                     ; preds = %block_400698
  %1382 = load i64, i64* %PC
  %1383 = tail call %struct.Memory* @sub_4006c2(%struct.State* %0, i64 %1382, %struct.Memory* %380)
  ret %struct.Memory* %1383

; <label>:1384:                                   ; preds = %block_400698
  %1385 = load i64, i64* %PC
  %1386 = tail call %struct.Memory* @__remill_missing_block(%struct.State* %0, i64 %1385, %struct.Memory* %380)
  ret %struct.Memory* %1386
}

; Function Attrs: noinline
define %struct.Memory* @sub_400540_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400540:
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
  %16 = load i64, i64* %15, align 8, !tbaa !2424
  %17 = add i64 %16, -8
  %18 = inttoptr i64 %17 to i64*
  store i64 %12, i64* %18
  store i64 %17, i64* %15, align 8, !tbaa !2424
  %19 = load i64, i64* %RSP
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  store i64 %19, i64* %RBP, align 8, !tbaa !2424
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 1
  store i64 %23, i64* %PC
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %25 = load i64, i64* %24, align 8, !tbaa !2424
  %26 = add i64 %25, 8
  %27 = inttoptr i64 %25 to i64*
  %28 = load i64, i64* %27
  store i64 %28, i64* %RBP, align 8, !tbaa !2424
  store i64 %26, i64* %24, align 8, !tbaa !2424
  %29 = load i64, i64* %PC
  %30 = sub i64 %29, 117
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 2
  store i64 %32, i64* %PC
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %30, i64* %33, align 8, !tbaa !2424
  %34 = load i64, i64* %PC
  %35 = tail call %struct.Memory* @sub_4004d0_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_400470__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400470:
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
  store i64 %43, i64* %RBP, align 8, !tbaa !2424
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %44, align 1, !tbaa !2428
  %45 = and i32 %42, 255
  %46 = call i32 @llvm.ctpop.i32(i32 %45) #16
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = xor i8 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %49, i8* %50, align 1, !tbaa !2442
  %51 = icmp eq i32 %42, 0
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %52, i8* %53, align 1, !tbaa !2444
  %54 = lshr i32 %42, 31
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %55, i8* %56, align 1, !tbaa !2445
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %57, align 1, !tbaa !2446
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %58, align 1, !tbaa !2443
  %59 = load i64, i64* %RDX
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 3
  store i64 %61, i64* %PC
  store i64 %59, i64* %R9, align 8, !tbaa !2424
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8, !tbaa !2424
  %66 = add i64 %65, 8
  %67 = inttoptr i64 %65 to i64*
  %68 = load i64, i64* %67
  store i64 %68, i64* %RSI, align 8, !tbaa !2424
  store i64 %66, i64* %64, align 8, !tbaa !2424
  %69 = load i64, i64* %RSP
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 3
  store i64 %71, i64* %PC
  store i64 %69, i64* %RDX, align 8, !tbaa !2424
  %72 = load i64, i64* %RSP
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC
  %75 = and i64 -16, %72
  store i64 %75, i64* %RSP, align 8, !tbaa !2424
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %76, align 1, !tbaa !2428
  %77 = trunc i64 %75 to i32
  %78 = and i32 %77, 255
  %79 = call i32 @llvm.ctpop.i32(i32 %78) #16
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = xor i8 %81, 1
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %82, i8* %83, align 1, !tbaa !2442
  %84 = icmp eq i64 %75, 0
  %85 = zext i1 %84 to i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %85, i8* %86, align 1, !tbaa !2444
  %87 = lshr i64 %75, 63
  %88 = trunc i64 %87 to i8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %88, i8* %89, align 1, !tbaa !2445
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %90, align 1, !tbaa !2446
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %91, align 1, !tbaa !2443
  %92 = load i64, i64* %RAX
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 1
  store i64 %94, i64* %PC
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %96 = load i64, i64* %95, align 8, !tbaa !2424
  %97 = add i64 %96, -8
  %98 = inttoptr i64 %97 to i64*
  store i64 %92, i64* %98
  store i64 %97, i64* %95, align 8, !tbaa !2424
  %99 = load i64, i64* %RSP
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 1
  store i64 %101, i64* %PC
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %103 = load i64, i64* %102, align 8, !tbaa !2424
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %99, i64* %105
  store i64 %104, i64* %102, align 8, !tbaa !2424
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 7
  store i64 %107, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_4008e0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2424
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_400870___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2424
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 7
  store i64 %111, i64* %PC
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2424
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 6
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 6
  store i64 %115, i64* %PC
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %117 = load i64, i64* %116, align 8, !tbaa !2424
  %118 = add i64 %117, -8
  %119 = inttoptr i64 %118 to i64*
  store i64 %113, i64* %119
  store i64 %118, i64* %116, align 8, !tbaa !2424
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %121 = load i64, i64* getelementptr inbounds (%seg_600ff0__got_type, %seg_600ff0__got_type* @seg_600ff0__got, i32 0, i32 0)
  store i64 %121, i64* %120, align 8, !tbaa !2424
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
define %struct.Memory* @sub_400550_draw(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400550:
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
  %35 = load i64, i64* %34, align 8, !tbaa !2424
  %36 = add i64 %35, -8
  %37 = inttoptr i64 %36 to i64*
  store i64 %31, i64* %37
  store i64 %36, i64* %34, align 8, !tbaa !2424
  %38 = load i64, i64* %RSP
  %39 = load i64, i64* %PC
  %40 = add i64 %39, 3
  store i64 %40, i64* %PC
  store i64 %38, i64* %RBP, align 8, !tbaa !2424
  %41 = load i64, i64* %RSP
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC
  %44 = sub i64 %41, 32
  store i64 %44, i64* %RSP, align 8, !tbaa !2424
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
  store i8 %53, i8* %54, align 1, !tbaa !2442
  %55 = xor i64 32, %41
  %56 = xor i64 %55, %44
  %57 = lshr i64 %56, 4
  %58 = trunc i64 %57 to i8
  %59 = and i8 %58, 1
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %59, i8* %60, align 1, !tbaa !2443
  %61 = icmp eq i64 %44, 0
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %62, i8* %63, align 1, !tbaa !2444
  %64 = lshr i64 %44, 63
  %65 = trunc i64 %64 to i8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %65, i8* %66, align 1, !tbaa !2445
  %67 = lshr i64 %41, 63
  %68 = xor i64 %64, %67
  %69 = add nuw nsw i64 %68, %67
  %70 = icmp eq i64 %69, 2
  %71 = zext i1 %70 to i8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %71, i8* %72, align 1, !tbaa !2446
  %73 = load i64, i64* %RBP
  %74 = sub i64 %73, 4
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 7
  store i64 %76, i64* %PC
  %77 = inttoptr i64 %74 to i32*
  store i32 0, i32* %77
  br label %block_40055f

block_40055f:                                     ; preds = %block_4005b9, %block_400550
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400550 ], [ %383, %block_4005b9 ]
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
  store i8 %92, i8* %93, align 1, !tbaa !2442
  %94 = xor i32 %83, 7
  %95 = xor i32 %94, %84
  %96 = lshr i32 %95, 4
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %98, i8* %99, align 1, !tbaa !2443
  %100 = icmp eq i32 %84, 0
  %101 = zext i1 %100 to i8
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %101, i8* %102, align 1, !tbaa !2444
  %103 = lshr i32 %84, 31
  %104 = trunc i32 %103 to i8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %104, i8* %105, align 1, !tbaa !2445
  %106 = lshr i32 %83, 31
  %107 = xor i32 %103, %106
  %108 = add nuw nsw i32 %107, %106
  %109 = icmp eq i32 %108, 2
  %110 = zext i1 %109 to i8
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %110, i8* %111, align 1, !tbaa !2446
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 120
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 6
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 6
  store i64 %117, i64* %PC
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %119 = load i8, i8* %118, align 1, !tbaa !2445
  %120 = icmp ne i8 %119, 0
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %122 = load i8, i8* %121, align 1, !tbaa !2446
  %123 = icmp ne i8 %122, 0
  %124 = xor i1 %120, %123
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %128 = select i1 %124, i64 %115, i64 %113
  store i64 %128, i64* %127, align 8, !tbaa !2424
  %129 = load i8, i8* %BRANCH_TAKEN
  %130 = icmp eq i8 %129, 1
  br i1 %130, label %block_4005db, label %block_400569

block_4005db:                                     ; preds = %block_40055f
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 10
  store i64 %132, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 273), i64* %RDI, align 8, !tbaa !2424
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 2
  store i64 %134, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %135 = load i64, i64* %PC
  %136 = sub i64 %135, 423
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 5
  %139 = load i64, i64* %PC
  %140 = add i64 %139, 5
  store i64 %140, i64* %PC
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %142 = load i64, i64* %141, align 8, !tbaa !2424
  %143 = add i64 %142, -8
  %144 = inttoptr i64 %143 to i64*
  store i64 %138, i64* %144
  store i64 %143, i64* %141, align 8, !tbaa !2424
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %136, i64* %145, align 8, !tbaa !2424
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
  store i64 %158, i64* %RSP, align 8, !tbaa !2424
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
  store i8 %169, i8* %170, align 1, !tbaa !2442
  %171 = xor i64 32, %155
  %172 = xor i64 %171, %158
  %173 = lshr i64 %172, 4
  %174 = trunc i64 %173 to i8
  %175 = and i8 %174, 1
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %175, i8* %176, align 1, !tbaa !2443
  %177 = icmp eq i64 %158, 0
  %178 = zext i1 %177 to i8
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %178, i8* %179, align 1, !tbaa !2444
  %180 = lshr i64 %158, 63
  %181 = trunc i64 %180 to i8
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %181, i8* %182, align 1, !tbaa !2445
  %183 = lshr i64 %155, 63
  %184 = xor i64 %180, %183
  %185 = add nuw nsw i64 %184, %180
  %186 = icmp eq i64 %185, 2
  %187 = zext i1 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %187, i8* %188, align 1, !tbaa !2446
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 1
  store i64 %190, i64* %PC
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %192 = load i64, i64* %191, align 8, !tbaa !2424
  %193 = add i64 %192, 8
  %194 = inttoptr i64 %192 to i64*
  %195 = load i64, i64* %194
  store i64 %195, i64* %RBP, align 8, !tbaa !2424
  store i64 %193, i64* %191, align 8, !tbaa !2424
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 1
  store i64 %197, i64* %PC
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %200 = load i64, i64* %199, align 8, !tbaa !2424
  %201 = inttoptr i64 %200 to i64*
  %202 = load i64, i64* %201
  store i64 %202, i64* %198, align 8, !tbaa !2424
  %203 = add i64 %200, 8
  store i64 %203, i64* %199, align 8, !tbaa !2424
  ret %struct.Memory* %147

block_40057a:                                     ; preds = %block_400570
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 192), i64* %RDI, align 8, !tbaa !2424
  %204 = load i64, i64* %PC
  %205 = add i64 %204, 10
  store i64 %205, i64* %PC
  store i64 ptrtoint (%maze_type* @maze to i64), i64* %RAX, align 8, !tbaa !2424
  %206 = load i64, i64* %RBP
  %207 = sub i64 %206, 4
  %208 = load i64, i64* %PC
  %209 = add i64 %208, 4
  store i64 %209, i64* %PC
  %210 = inttoptr i64 %207 to i32*
  %211 = load i32, i32* %210
  %212 = sext i32 %211 to i64
  store i64 %212, i64* %RCX, align 8, !tbaa !2424
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
  store i64 %221, i64* %RCX, align 8, !tbaa !2424
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
  store i8 %231, i8* %232, align 1, !tbaa !2442
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %233, align 1, !tbaa !2443
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %234, align 1, !tbaa !2444
  %235 = lshr i64 %221, 63
  %236 = trunc i64 %235 to i8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %236, i8* %237, align 1, !tbaa !2445
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %224, i8* %238, align 1, !tbaa !2446
  %239 = load i64, i64* %RAX
  %240 = load i64, i64* %RCX
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 3
  store i64 %242, i64* %PC
  %243 = add i64 %240, %239
  store i64 %243, i64* %RAX, align 8, !tbaa !2424
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
  store i8 %254, i8* %255, align 1, !tbaa !2442
  %256 = xor i64 %240, %239
  %257 = xor i64 %256, %243
  %258 = lshr i64 %257, 4
  %259 = trunc i64 %258 to i8
  %260 = and i8 %259, 1
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %260, i8* %261, align 1, !tbaa !2443
  %262 = icmp eq i64 %243, 0
  %263 = zext i1 %262 to i8
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %263, i8* %264, align 1, !tbaa !2444
  %265 = lshr i64 %243, 63
  %266 = trunc i64 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %266, i8* %267, align 1, !tbaa !2445
  %268 = lshr i64 %239, 63
  %269 = lshr i64 %240, 63
  %270 = xor i64 %265, %268
  %271 = xor i64 %265, %269
  %272 = add nuw nsw i64 %270, %271
  %273 = icmp eq i64 %272, 2
  %274 = zext i1 %273 to i8
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %274, i8* %275, align 1, !tbaa !2446
  %276 = load i64, i64* %RBP
  %277 = sub i64 %276, 8
  %278 = load i64, i64* %PC
  %279 = add i64 %278, 4
  store i64 %279, i64* %PC
  %280 = inttoptr i64 %277 to i32*
  %281 = load i32, i32* %280
  %282 = sext i32 %281 to i64
  store i64 %282, i64* %RCX, align 8, !tbaa !2424
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
  store i64 %291, i64* %RSI, align 8, !tbaa !2424
  %292 = load i64, i64* %PC
  %293 = add i64 %292, 2
  store i64 %293, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %294 = load i64, i64* %PC
  %295 = sub i64 %294, 355
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 5
  %298 = load i64, i64* %PC
  %299 = add i64 %298, 5
  store i64 %299, i64* %PC
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %301 = load i64, i64* %300, align 8, !tbaa !2424
  %302 = add i64 %301, -8
  %303 = inttoptr i64 %302 to i64*
  store i64 %297, i64* %303
  store i64 %302, i64* %300, align 8, !tbaa !2424
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %295, i64* %304, align 8, !tbaa !2424
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
  store i64 %320, i64* %RAX, align 8, !tbaa !2424
  %321 = load i64, i64* %RAX
  %322 = load i64, i64* %PC
  %323 = add i64 %322, 3
  store i64 %323, i64* %PC
  %324 = trunc i64 %321 to i32
  %325 = add i32 1, %324
  %326 = zext i32 %325 to i64
  store i64 %326, i64* %RAX, align 8, !tbaa !2424
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
  store i8 %336, i8* %337, align 1, !tbaa !2442
  %338 = xor i64 1, %321
  %339 = trunc i64 %338 to i32
  %340 = xor i32 %339, %325
  %341 = lshr i32 %340, 4
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %343, i8* %344, align 1, !tbaa !2443
  %345 = icmp eq i32 %325, 0
  %346 = zext i1 %345 to i8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %346, i8* %347, align 1, !tbaa !2444
  %348 = lshr i32 %325, 31
  %349 = trunc i32 %348 to i8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %349, i8* %350, align 1, !tbaa !2445
  %351 = lshr i32 %324, 31
  %352 = xor i32 %348, %351
  %353 = add nuw nsw i32 %352, %348
  %354 = icmp eq i32 %353, 2
  %355 = zext i1 %354 to i8
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %355, i8* %356, align 1, !tbaa !2446
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
  store i64 %365, i64* %368, align 8, !tbaa !2424
  br label %block_400570

block_4005b9:                                     ; preds = %block_400570
  store i64 add (i64 ptrtoint (%seg_4008f0__rodata_type* @seg_4008f0__rodata to i64), i64 273), i64* %RDI, align 8, !tbaa !2424
  %369 = load i64, i64* %PC
  %370 = add i64 %369, 2
  store i64 %370, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2447
  %371 = load i64, i64* %PC
  %372 = sub i64 %371, 389
  %373 = load i64, i64* %PC
  %374 = add i64 %373, 5
  %375 = load i64, i64* %PC
  %376 = add i64 %375, 5
  store i64 %376, i64* %PC
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %378 = load i64, i64* %377, align 8, !tbaa !2424
  %379 = add i64 %378, -8
  %380 = inttoptr i64 %379 to i64*
  store i64 %374, i64* %380
  store i64 %379, i64* %377, align 8, !tbaa !2424
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %372, i64* %381, align 8, !tbaa !2424
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
  store i64 %397, i64* %RAX, align 8, !tbaa !2424
  %398 = load i64, i64* %RAX
  %399 = load i64, i64* %PC
  %400 = add i64 %399, 3
  store i64 %400, i64* %PC
  %401 = trunc i64 %398 to i32
  %402 = add i32 1, %401
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RAX, align 8, !tbaa !2424
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
  store i8 %413, i8* %414, align 1, !tbaa !2442
  %415 = xor i64 1, %398
  %416 = trunc i64 %415 to i32
  %417 = xor i32 %416, %402
  %418 = lshr i32 %417, 4
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %420, i8* %421, align 1, !tbaa !2443
  %422 = icmp eq i32 %402, 0
  %423 = zext i1 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %423, i8* %424, align 1, !tbaa !2444
  %425 = lshr i32 %402, 31
  %426 = trunc i32 %425 to i8
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %426, i8* %427, align 1, !tbaa !2445
  %428 = lshr i32 %401, 31
  %429 = xor i32 %425, %428
  %430 = add nuw nsw i32 %429, %425
  %431 = icmp eq i32 %430, 2
  %432 = zext i1 %431 to i8
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %432, i8* %433, align 1, !tbaa !2446
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
  store i64 %442, i64* %445, align 8, !tbaa !2424
  br label %block_40055f

block_400570:                                     ; preds = %block_400569, %block_40057a
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400569 ], [ %306, %block_40057a ]
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
  store i8 %460, i8* %461, align 1, !tbaa !2442
  %462 = xor i32 %451, 11
  %463 = xor i32 %462, %452
  %464 = lshr i32 %463, 4
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %466, i8* %467, align 1, !tbaa !2443
  %468 = icmp eq i32 %452, 0
  %469 = zext i1 %468 to i8
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %469, i8* %470, align 1, !tbaa !2444
  %471 = lshr i32 %452, 31
  %472 = trunc i32 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %472, i8* %473, align 1, !tbaa !2445
  %474 = lshr i32 %451, 31
  %475 = xor i32 %471, %474
  %476 = add nuw nsw i32 %475, %474
  %477 = icmp eq i32 %476, 2
  %478 = zext i1 %477 to i8
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %478, i8* %479, align 1, !tbaa !2446
  %480 = load i64, i64* %PC
  %481 = add i64 %480, 69
  %482 = load i64, i64* %PC
  %483 = add i64 %482, 6
  %484 = load i64, i64* %PC
  %485 = add i64 %484, 6
  store i64 %485, i64* %PC
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %487 = load i8, i8* %486, align 1, !tbaa !2445
  %488 = icmp ne i8 %487, 0
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %490 = load i8, i8* %489, align 1, !tbaa !2446
  %491 = icmp ne i8 %490, 0
  %492 = xor i1 %488, %491
  %493 = xor i1 %492, true
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %BRANCH_TAKEN, align 1, !tbaa !2447
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %496 = select i1 %492, i64 %483, i64 %481
  store i64 %496, i64* %495, align 8, !tbaa !2424
  %497 = load i8, i8* %BRANCH_TAKEN
  %498 = icmp eq i8 %497, 1
  %499 = load i64, i64* %PC
  %500 = add i64 %499, 10
  store i64 %500, i64* %PC
  br i1 %498, label %block_4005b9, label %block_40057a

block_400569:                                     ; preds = %block_40055f
  %501 = load i64, i64* %RBP
  %502 = sub i64 %501, 8
  %503 = load i64, i64* %PC
  %504 = add i64 %503, 7
  store i64 %504, i64* %PC
  %505 = inttoptr i64 %502 to i32*
  store i32 0, i32* %505
  br label %block_400570
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400540_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400540;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400540_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400540_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400510___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400510;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400510___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400510___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
define internal void @callback_sub_4008e0___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4008e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4008e0___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4008e0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400870___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400870;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400870___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400870___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400600;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400600_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6010c0___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @draw() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400550;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400550_draw(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400418;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400418__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4008e4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4008e4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
  call void @callback_sub_400870___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_4008e0___libc_csu_fini()
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
!llvm.module.flags = !{!1255, !1256}

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
!126 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
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
!2216 = !DILocation(line: 205, column: 22, scope: !1257)
!2217 = !DILocation(line: 205, column: 16, scope: !1257)
!2218 = !DILocation(line: 205, column: 29, scope: !1257)
!2219 = !DILocation(line: 206, column: 22, scope: !1257)
!2220 = !DILocation(line: 206, column: 16, scope: !1257)
!2221 = !DILocation(line: 206, column: 29, scope: !1257)
!2222 = !DILocation(line: 207, column: 22, scope: !1257)
!2223 = !DILocation(line: 207, column: 16, scope: !1257)
!2224 = !DILocation(line: 207, column: 29, scope: !1257)
!2225 = !DILocation(line: 208, column: 22, scope: !1257)
!2226 = !DILocation(line: 208, column: 16, scope: !1257)
!2227 = !DILocation(line: 208, column: 29, scope: !1257)
!2228 = !DILocation(line: 209, column: 22, scope: !1257)
!2229 = !DILocation(line: 209, column: 16, scope: !1257)
!2230 = !DILocation(line: 209, column: 29, scope: !1257)
!2231 = !DILocation(line: 210, column: 22, scope: !1257)
!2232 = !DILocation(line: 210, column: 16, scope: !1257)
!2233 = !DILocation(line: 210, column: 29, scope: !1257)
!2234 = !DILocation(line: 211, column: 22, scope: !1257)
!2235 = !DILocation(line: 211, column: 16, scope: !1257)
!2236 = !DILocation(line: 211, column: 29, scope: !1257)
!2237 = !DILocation(line: 212, column: 22, scope: !1257)
!2238 = !DILocation(line: 212, column: 16, scope: !1257)
!2239 = !DILocation(line: 212, column: 29, scope: !1257)
!2240 = !DILocation(line: 214, column: 22, scope: !1257)
!2241 = !DILocation(line: 214, column: 16, scope: !1257)
!2242 = !DILocation(line: 214, column: 29, scope: !1257)
!2243 = !DILocation(line: 215, column: 22, scope: !1257)
!2244 = !DILocation(line: 215, column: 16, scope: !1257)
!2245 = !DILocation(line: 215, column: 29, scope: !1257)
!2246 = !DILocation(line: 216, column: 23, scope: !1257)
!2247 = !DILocation(line: 216, column: 17, scope: !1257)
!2248 = !DILocation(line: 216, column: 31, scope: !1257)
!2249 = !DILocation(line: 217, column: 23, scope: !1257)
!2250 = !DILocation(line: 217, column: 17, scope: !1257)
!2251 = !DILocation(line: 217, column: 31, scope: !1257)
!2252 = !DILocation(line: 218, column: 23, scope: !1257)
!2253 = !DILocation(line: 218, column: 17, scope: !1257)
!2254 = !DILocation(line: 218, column: 31, scope: !1257)
!2255 = !DILocation(line: 219, column: 23, scope: !1257)
!2256 = !DILocation(line: 219, column: 17, scope: !1257)
!2257 = !DILocation(line: 219, column: 31, scope: !1257)
!2258 = !DILocation(line: 220, column: 23, scope: !1257)
!2259 = !DILocation(line: 220, column: 17, scope: !1257)
!2260 = !DILocation(line: 220, column: 31, scope: !1257)
!2261 = !DILocation(line: 221, column: 23, scope: !1257)
!2262 = !DILocation(line: 221, column: 17, scope: !1257)
!2263 = !DILocation(line: 221, column: 31, scope: !1257)
!2264 = !DILocation(line: 245, column: 22, scope: !1257)
!2265 = !DILocation(line: 245, column: 16, scope: !1257)
!2266 = !DILocation(line: 245, column: 29, scope: !1257)
!2267 = !DILocation(line: 246, column: 22, scope: !1257)
!2268 = !DILocation(line: 246, column: 16, scope: !1257)
!2269 = !DILocation(line: 246, column: 29, scope: !1257)
!2270 = !DILocation(line: 247, column: 22, scope: !1257)
!2271 = !DILocation(line: 247, column: 16, scope: !1257)
!2272 = !DILocation(line: 247, column: 29, scope: !1257)
!2273 = !DILocation(line: 248, column: 22, scope: !1257)
!2274 = !DILocation(line: 248, column: 16, scope: !1257)
!2275 = !DILocation(line: 248, column: 29, scope: !1257)
!2276 = !DILocation(line: 249, column: 22, scope: !1257)
!2277 = !DILocation(line: 249, column: 16, scope: !1257)
!2278 = !DILocation(line: 249, column: 29, scope: !1257)
!2279 = !DILocation(line: 250, column: 22, scope: !1257)
!2280 = !DILocation(line: 250, column: 16, scope: !1257)
!2281 = !DILocation(line: 250, column: 29, scope: !1257)
!2282 = !DILocation(line: 251, column: 22, scope: !1257)
!2283 = !DILocation(line: 251, column: 16, scope: !1257)
!2284 = !DILocation(line: 251, column: 29, scope: !1257)
!2285 = !DILocation(line: 252, column: 22, scope: !1257)
!2286 = !DILocation(line: 252, column: 16, scope: !1257)
!2287 = !DILocation(line: 252, column: 29, scope: !1257)
!2288 = !DILocation(line: 255, column: 22, scope: !1257)
!2289 = !DILocation(line: 255, column: 16, scope: !1257)
!2290 = !DILocation(line: 255, column: 29, scope: !1257)
!2291 = !DILocation(line: 256, column: 22, scope: !1257)
!2292 = !DILocation(line: 256, column: 16, scope: !1257)
!2293 = !DILocation(line: 256, column: 29, scope: !1257)
!2294 = !DILocation(line: 257, column: 23, scope: !1257)
!2295 = !DILocation(line: 257, column: 17, scope: !1257)
!2296 = !DILocation(line: 257, column: 31, scope: !1257)
!2297 = !DILocation(line: 258, column: 23, scope: !1257)
!2298 = !DILocation(line: 258, column: 17, scope: !1257)
!2299 = !DILocation(line: 258, column: 31, scope: !1257)
!2300 = !DILocation(line: 259, column: 23, scope: !1257)
!2301 = !DILocation(line: 259, column: 17, scope: !1257)
!2302 = !DILocation(line: 259, column: 31, scope: !1257)
!2303 = !DILocation(line: 260, column: 23, scope: !1257)
!2304 = !DILocation(line: 260, column: 17, scope: !1257)
!2305 = !DILocation(line: 260, column: 31, scope: !1257)
!2306 = !DILocation(line: 261, column: 23, scope: !1257)
!2307 = !DILocation(line: 261, column: 17, scope: !1257)
!2308 = !DILocation(line: 261, column: 31, scope: !1257)
!2309 = !DILocation(line: 262, column: 23, scope: !1257)
!2310 = !DILocation(line: 262, column: 17, scope: !1257)
!2311 = !DILocation(line: 262, column: 31, scope: !1257)
!2312 = !DILocation(line: 285, column: 21, scope: !1257)
!2313 = !DILocation(line: 285, column: 24, scope: !1257)
!2314 = !DILocation(line: 285, column: 15, scope: !1257)
!2315 = !DILocation(line: 285, column: 33, scope: !1257)
!2316 = !DILocation(line: 286, column: 21, scope: !1257)
!2317 = !DILocation(line: 286, column: 24, scope: !1257)
!2318 = !DILocation(line: 286, column: 15, scope: !1257)
!2319 = !DILocation(line: 286, column: 33, scope: !1257)
!2320 = !DILocation(line: 287, column: 21, scope: !1257)
!2321 = !DILocation(line: 287, column: 24, scope: !1257)
!2322 = !DILocation(line: 287, column: 15, scope: !1257)
!2323 = !DILocation(line: 287, column: 33, scope: !1257)
!2324 = !DILocation(line: 288, column: 21, scope: !1257)
!2325 = !DILocation(line: 288, column: 24, scope: !1257)
!2326 = !DILocation(line: 288, column: 15, scope: !1257)
!2327 = !DILocation(line: 288, column: 33, scope: !1257)
!2328 = !DILocation(line: 289, column: 21, scope: !1257)
!2329 = !DILocation(line: 289, column: 24, scope: !1257)
!2330 = !DILocation(line: 289, column: 15, scope: !1257)
!2331 = !DILocation(line: 289, column: 33, scope: !1257)
!2332 = !DILocation(line: 290, column: 21, scope: !1257)
!2333 = !DILocation(line: 290, column: 24, scope: !1257)
!2334 = !DILocation(line: 290, column: 15, scope: !1257)
!2335 = !DILocation(line: 290, column: 33, scope: !1257)
!2336 = !DILocation(line: 291, column: 21, scope: !1257)
!2337 = !DILocation(line: 291, column: 24, scope: !1257)
!2338 = !DILocation(line: 291, column: 15, scope: !1257)
!2339 = !DILocation(line: 291, column: 33, scope: !1257)
!2340 = !DILocation(line: 292, column: 21, scope: !1257)
!2341 = !DILocation(line: 292, column: 24, scope: !1257)
!2342 = !DILocation(line: 292, column: 15, scope: !1257)
!2343 = !DILocation(line: 292, column: 33, scope: !1257)
!2344 = !DILocation(line: 318, column: 21, scope: !1257)
!2345 = !DILocation(line: 318, column: 25, scope: !1257)
!2346 = !DILocation(line: 318, column: 15, scope: !1257)
!2347 = !DILocation(line: 318, column: 34, scope: !1257)
!2348 = !DILocation(line: 318, column: 38, scope: !1257)
!2349 = !DILocation(line: 318, column: 45, scope: !1257)
!2350 = !DILocation(line: 319, column: 21, scope: !1257)
!2351 = !DILocation(line: 319, column: 25, scope: !1257)
!2352 = !DILocation(line: 319, column: 15, scope: !1257)
!2353 = !DILocation(line: 319, column: 34, scope: !1257)
!2354 = !DILocation(line: 319, column: 38, scope: !1257)
!2355 = !DILocation(line: 319, column: 45, scope: !1257)
!2356 = !DILocation(line: 320, column: 21, scope: !1257)
!2357 = !DILocation(line: 320, column: 25, scope: !1257)
!2358 = !DILocation(line: 320, column: 15, scope: !1257)
!2359 = !DILocation(line: 320, column: 34, scope: !1257)
!2360 = !DILocation(line: 320, column: 38, scope: !1257)
!2361 = !DILocation(line: 320, column: 45, scope: !1257)
!2362 = !DILocation(line: 321, column: 21, scope: !1257)
!2363 = !DILocation(line: 321, column: 25, scope: !1257)
!2364 = !DILocation(line: 321, column: 15, scope: !1257)
!2365 = !DILocation(line: 321, column: 34, scope: !1257)
!2366 = !DILocation(line: 321, column: 38, scope: !1257)
!2367 = !DILocation(line: 321, column: 45, scope: !1257)
!2368 = !DILocation(line: 322, column: 21, scope: !1257)
!2369 = !DILocation(line: 322, column: 25, scope: !1257)
!2370 = !DILocation(line: 322, column: 15, scope: !1257)
!2371 = !DILocation(line: 322, column: 34, scope: !1257)
!2372 = !DILocation(line: 322, column: 38, scope: !1257)
!2373 = !DILocation(line: 322, column: 45, scope: !1257)
!2374 = !DILocation(line: 323, column: 21, scope: !1257)
!2375 = !DILocation(line: 323, column: 25, scope: !1257)
!2376 = !DILocation(line: 323, column: 15, scope: !1257)
!2377 = !DILocation(line: 323, column: 34, scope: !1257)
!2378 = !DILocation(line: 323, column: 38, scope: !1257)
!2379 = !DILocation(line: 323, column: 45, scope: !1257)
!2380 = !DILocation(line: 324, column: 21, scope: !1257)
!2381 = !DILocation(line: 324, column: 25, scope: !1257)
!2382 = !DILocation(line: 324, column: 15, scope: !1257)
!2383 = !DILocation(line: 324, column: 34, scope: !1257)
!2384 = !DILocation(line: 324, column: 38, scope: !1257)
!2385 = !DILocation(line: 324, column: 45, scope: !1257)
!2386 = !DILocation(line: 325, column: 21, scope: !1257)
!2387 = !DILocation(line: 325, column: 25, scope: !1257)
!2388 = !DILocation(line: 325, column: 15, scope: !1257)
!2389 = !DILocation(line: 325, column: 34, scope: !1257)
!2390 = !DILocation(line: 325, column: 38, scope: !1257)
!2391 = !DILocation(line: 325, column: 45, scope: !1257)
!2392 = !DILocation(line: 328, column: 20, scope: !1257)
!2393 = !DILocation(line: 328, column: 26, scope: !1257)
!2394 = !DILocation(line: 329, column: 20, scope: !1257)
!2395 = !DILocation(line: 329, column: 26, scope: !1257)
!2396 = !DILocation(line: 330, column: 20, scope: !1257)
!2397 = !DILocation(line: 330, column: 26, scope: !1257)
!2398 = !DILocation(line: 331, column: 20, scope: !1257)
!2399 = !DILocation(line: 331, column: 26, scope: !1257)
!2400 = !DILocation(line: 332, column: 20, scope: !1257)
!2401 = !DILocation(line: 332, column: 26, scope: !1257)
!2402 = !DILocation(line: 333, column: 20, scope: !1257)
!2403 = !DILocation(line: 333, column: 26, scope: !1257)
!2404 = !DILocation(line: 334, column: 20, scope: !1257)
!2405 = !DILocation(line: 334, column: 26, scope: !1257)
!2406 = !DILocation(line: 337, column: 9, scope: !1257)
!2407 = !DILocation(line: 338, column: 9, scope: !1257)
!2408 = !DILocation(line: 339, column: 9, scope: !1257)
!2409 = !DILocation(line: 340, column: 9, scope: !1257)
!2410 = !DILocation(line: 341, column: 9, scope: !1257)
!2411 = !DILocation(line: 342, column: 9, scope: !1257)
!2412 = !DILocation(line: 343, column: 9, scope: !1257)
!2413 = !DILocation(line: 344, column: 9, scope: !1257)
!2414 = !DILocation(line: 347, column: 9, scope: !1257)
!2415 = !DILocation(line: 348, column: 9, scope: !1257)
!2416 = !DILocation(line: 349, column: 9, scope: !1257)
!2417 = !DILocation(line: 350, column: 9, scope: !1257)
!2418 = !DILocation(line: 351, column: 9, scope: !1257)
!2419 = !DILocation(line: 353, column: 9, scope: !1257)
!2420 = !DILocation(line: 357, column: 3, scope: !1257)
!2421 = distinct !DISubprogram(name: "__remill_intrinsics", scope: !2422, file: !2422, line: 35, type: !95, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: false, unit: !1, variables: !7)
!2422 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/Intrinsics.cpp", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!2423 = !DILocation(line: 116, column: 1, scope: !2421)
!2424 = !{!2425, !2425, i64 0}
!2425 = !{!"long", !2426, i64 0}
!2426 = !{!"omnipotent char", !2427, i64 0}
!2427 = !{!"Simple C++ TBAA"}
!2428 = !{!2429, !2426, i64 2065}
!2429 = !{!"_ZTS5State", !2426, i64 16, !2430, i64 2064, !2426, i64 2080, !2431, i64 2088, !2433, i64 2112, !2435, i64 2208, !2436, i64 2480, !2437, i64 2608, !2438, i64 2736, !2426, i64 2760, !2426, i64 2768, !2439, i64 3280}
!2430 = !{!"_ZTS10ArithFlags", !2426, i64 0, !2426, i64 1, !2426, i64 2, !2426, i64 3, !2426, i64 4, !2426, i64 5, !2426, i64 6, !2426, i64 7, !2426, i64 8, !2426, i64 9, !2426, i64 10, !2426, i64 11, !2426, i64 12, !2426, i64 13, !2426, i64 14, !2426, i64 15}
!2431 = !{!"_ZTS8Segments", !2432, i64 0, !2426, i64 2, !2432, i64 4, !2426, i64 6, !2432, i64 8, !2426, i64 10, !2432, i64 12, !2426, i64 14, !2432, i64 16, !2426, i64 18, !2432, i64 20, !2426, i64 22}
!2432 = !{!"short", !2426, i64 0}
!2433 = !{!"_ZTS12AddressSpace", !2425, i64 0, !2434, i64 8, !2425, i64 16, !2434, i64 24, !2425, i64 32, !2434, i64 40, !2425, i64 48, !2434, i64 56, !2425, i64 64, !2434, i64 72, !2425, i64 80, !2434, i64 88}
!2434 = !{!"_ZTS3Reg", !2426, i64 0}
!2435 = !{!"_ZTS3GPR", !2425, i64 0, !2434, i64 8, !2425, i64 16, !2434, i64 24, !2425, i64 32, !2434, i64 40, !2425, i64 48, !2434, i64 56, !2425, i64 64, !2434, i64 72, !2425, i64 80, !2434, i64 88, !2425, i64 96, !2434, i64 104, !2425, i64 112, !2434, i64 120, !2425, i64 128, !2434, i64 136, !2425, i64 144, !2434, i64 152, !2425, i64 160, !2434, i64 168, !2425, i64 176, !2434, i64 184, !2425, i64 192, !2434, i64 200, !2425, i64 208, !2434, i64 216, !2425, i64 224, !2434, i64 232, !2425, i64 240, !2434, i64 248, !2425, i64 256, !2434, i64 264}
!2436 = !{!"_ZTS8X87Stack", !2426, i64 0}
!2437 = !{!"_ZTS3MMX", !2426, i64 0}
!2438 = !{!"_ZTS14FPUStatusFlags", !2426, i64 0, !2426, i64 1, !2426, i64 2, !2426, i64 3, !2426, i64 4, !2426, i64 5, !2426, i64 6, !2426, i64 7, !2426, i64 8, !2426, i64 9, !2426, i64 10, !2426, i64 11, !2426, i64 12, !2426, i64 13, !2426, i64 14, !2426, i64 15, !2426, i64 16, !2426, i64 17, !2426, i64 18, !2426, i64 19, !2426, i64 20}
!2439 = !{!"_ZTS13SegmentCaches", !2440, i64 0, !2440, i64 16, !2440, i64 32, !2440, i64 48, !2440, i64 64, !2440, i64 80}
!2440 = !{!"_ZTS13SegmentShadow", !2426, i64 0, !2441, i64 8, !2441, i64 12}
!2441 = !{!"int", !2426, i64 0}
!2442 = !{!2429, !2426, i64 2067}
!2443 = !{!2429, !2426, i64 2069}
!2444 = !{!2429, !2426, i64 2071}
!2445 = !{!2429, !2426, i64 2073}
!2446 = !{!2429, !2426, i64 2077}
!2447 = !{!2426, !2426, i64 0}
