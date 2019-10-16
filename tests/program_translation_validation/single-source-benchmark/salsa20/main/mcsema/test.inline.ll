; ModuleID = '../binary/test.mcsema.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4003e0__init_type = type <{ [23 x i8] }>
%seg_400400__plt_type = type <{ [32 x i8] }>
%seg_400420__text_type = type <{ [1698 x i8] }>
%seg_400ac4__fini_type = type <{ [9 x i8] }>
%seg_400ad0__rodata_type = type <{ [4 x i8], [15 x i8], [15 x i8] }>
%seg_400af4__eh_frame_hdr_type = type <{ [76 x i8] }>
%seg_400b40__eh_frame_type = type <{ [312 x i8] }>
%seg_600df0__init_array_type = type <{ i64, i64 }>
%seg_600ff0__got_type = type <{ i64, i64 }>
%seg_601000__got_plt_type = type <{ [24 x i8], i64 }>
%seg_601020__data_type = type <{ [16 x i8] }>
%__bss_start_type = type <{ [4 x i8] }>
%ptr_type = type <{ [12 x i8] }>
%STATE_type = type <{ [64 x i8] }>
%outbuf_type = type <{ [64 x i8] }>
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
@seg_4003e0__init = internal constant %seg_4003e0__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\0D\0C \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400400__plt = internal constant %seg_400400__plt_type <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\02\0C \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400420__text = internal constant %seg_400420__text_type <{ [1698 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\C0\0A@\00H\C7\C1P\0A@\00H\C7\C7p\09@\00\FF\15\A6\0B \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B80\10`\00H=0\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF0\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE0\10`\00UH\81\EE0\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF0\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=Y\0B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05G\0B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\89}\F8H\89u\F0\C7E\EC\00\00\00\00\83}\EC\10\0F\83#\00\00\00H\8BE\F0\8BM\EC\89\CA\8B\0C\90\8Bu\EC\89\F0\89L\85\A0\8BE\EC\83\C0\01\89E\EC\E9\D3\FF\FF\FF\C7E\EC\14\00\00\00\83}\EC\00\0F\86N\03\00\00\8BE\A0\03E\D0\C1\E0\07\8BM\A0\03M\D0\C1\E9\19\09\C83E\B0\89E\B0\8BE\B0\03E\A0\C1\E0\09\8BM\B0\03M\A0\C1\E9\17\09\C83E\C0\89E\C0\8BE\C0\03E\B0\C1\E0\0D\8BM\C0\03M\B0\C1\E9\13\09\C83E\D0\89E\D0\8BE\D0\03E\C0\C1\E0\12\8BM\D0\03M\C0\C1\E9\0E\09\C83E\A0\89E\A0\8BE\B4\03E\A4\C1\E0\07\8BM\B4\03M\A4\C1\E9\19\09\C83E\C4\89E\C4\8BE\C4\03E\B4\C1\E0\09\8BM\C4\03M\B4\C1\E9\17\09\C83E\D4\89E\D4\8BE\D4\03E\C4\C1\E0\0D\8BM\D4\03M\C4\C1\E9\13\09\C83E\A4\89E\A4\8BE\A4\03E\D4\C1\E0\12\8BM\A4\03M\D4\C1\E9\0E\09\C83E\B4\89E\B4\8BE\C8\03E\B8\C1\E0\07\8BM\C8\03M\B8\C1\E9\19\09\C83E\D8\89E\D8\8BE\D8\03E\C8\C1\E0\09\8BM\D8\03M\C8\C1\E9\17\09\C83E\A8\89E\A8\8BE\A8\03E\D8\C1\E0\0D\8BM\A8\03M\D8\C1\E9\13\09\C83E\B8\89E\B8\8BE\B8\03E\A8\C1\E0\12\8BM\B8\03M\A8\C1\E9\0E\09\C83E\C8\89E\C8\8BE\DC\03E\CC\C1\E0\07\8BM\DC\03M\CC\C1\E9\19\09\C83E\AC\89E\AC\8BE\AC\03E\DC\C1\E0\09\8BM\AC\03M\DC\C1\E9\17\09\C83E\BC\89E\BC\8BE\BC\03E\AC\C1\E0\0D\8BM\BC\03M\AC\C1\E9\13\09\C83E\CC\89E\CC\8BE\CC\03E\BC\C1\E0\12\8BM\CC\03M\BC\C1\E9\0E\09\C83E\DC\89E\DC\8BE\A0\03E\AC\C1\E0\07\8BM\A0\03M\AC\C1\E9\19\09\C83E\A4\89E\A4\8BE\A4\03E\A0\C1\E0\09\8BM\A4\03M\A0\C1\E9\17\09\C83E\A8\89E\A8\8BE\A8\03E\A4\C1\E0\0D\8BM\A8\03M\A4\C1\E9\13\09\C83E\AC\89E\AC\8BE\AC\03E\A8\C1\E0\12\8BM\AC\03M\A8\C1\E9\0E\09\C83E\A0\89E\A0\8BE\B4\03E\B0\C1\E0\07\8BM\B4\03M\B0\C1\E9\19\09\C83E\B8\89E\B8\8BE\B8\03E\B4\C1\E0\09\8BM\B8\03M\B4\C1\E9\17\09\C83E\BC\89E\BC\8BE\BC\03E\B8\C1\E0\0D\8BM\BC\03M\B8\C1\E9\13\09\C83E\B0\89E\B0\8BE\B0\03E\BC\C1\E0\12\8BM\B0\03M\BC\C1\E9\0E\09\C83E\B4\89E\B4\8BE\C8\03E\C4\C1\E0\07\8BM\C8\03M\C4\C1\E9\19\09\C83E\CC\89E\CC\8BE\CC\03E\C8\C1\E0\09\8BM\CC\03M\C8\C1\E9\17\09\C83E\C0\89E\C0\8BE\C0\03E\CC\C1\E0\0D\8BM\C0\03M\CC\C1\E9\13\09\C83E\C4\89E\C4\8BE\C4\03E\C0\C1\E0\12\8BM\C4\03M\C0\C1\E9\0E\09\C83E\C8\89E\C8\8BE\DC\03E\D8\C1\E0\07\8BM\DC\03M\D8\C1\E9\19\09\C83E\D0\89E\D0\8BE\D0\03E\DC\C1\E0\09\8BM\D0\03M\DC\C1\E9\17\09\C83E\D4\89E\D4\8BE\D4\03E\D0\C1\E0\0D\8BM\D4\03M\D0\C1\E9\13\09\C83E\D8\89E\D8\8BE\D8\03E\D4\C1\E0\12\8BM\D8\03M\D4\C1\E9\0E\09\C83E\DC\89E\DC\8BE\EC\83\E8\02\89E\EC\E9\A8\FC\FF\FF\C7E\EC\00\00\00\00\83}\EC\10\0F\83/\00\00\00\8BE\EC\89\C1\8BD\8D\A0H\8BM\F0\8BU\EC\89\D6\03\04\B1H\8BM\F8\8BU\EC\89\D6\89\04\B1\8BE\EC\83\C0\01\89E\EC\E9\C7\FF\FF\FF]\C3ffffff.\0F\1F\84\00\00\00\00\00UH\89\E5\83<%4\10`\00\00\0F\85*\00\00\00H\BF\80\10`\00\00\00\00\00H\BE@\10`\00\00\00\00\00\E8\E5\FB\FF\FF\8B\04%@\10`\00\83\C0\01\89\04%@\10`\00\8B\04%4\10`\00\83\C0\01\83\E0\0F\89\04%4\10`\00\8B\04%4\10`\00\89\C1\8B\04\8D\80\10`\00]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \C7E\FC\00\00\00\00\C7E\F0\00\00\10 \C7E\EC\00\00\00\00\C7E\F4\00\00\00\00\83}\F4\10\0F\830\00\00\00\B8\EF\BE\AD\DE\8BM\F4\83\C1\0D\81\C1\E5\AB\AB\ED+E\F41\C1\8BE\F4\89\C2\89\0C\95@\10`\00\8BE\F4\83\C0\01\89E\F4\E9\C6\FF\FF\FF\C7E\F4\00\00\00\00\8BE\F4;E\F0\0F\83\16\00\00\00\E8\1A\FF\FF\FF\89E\E8\8BE\F4\83\C0\01\89E\F4\E9\DE\FF\FF\FF\E8\04\FF\FF\FFH\BF\D4\0A@\00\00\00\00\00\89E\F8\8BE\EC\03E\F8\89E\F8\8Bu\F8\B0\00\E8\F4\F9\FF\FFH\BF\E3\0A@\00\00\00\00\00\BE=pU\F6\89E\E4\B0\00\E8\DB\F9\FF\FF\81}\F8=pU\F6\0F\95\C1\80\E1\01\0F\B6\F1\89E\E0\89\F0H\83\C4 ]\C3AWAVI\89\D7AUATL\8D%\8E\03 \00UH\8D-\8E\03 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8_\F9\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_400ac4__fini = internal constant %seg_400ac4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400ad0__rodata = internal constant %seg_400ad0__rodata_type <{ [4 x i8] c"\01\00\02\00", [15 x i8] c"got:       %x\0A\00", [15 x i8] c"should be: %x\0A\00" }>
@seg_400af4__eh_frame_hdr = internal constant %seg_400af4__eh_frame_hdr_type <{ [76 x i8] c"\01\1B\03;H\00\00\00\08\00\00\00\0C\F9\FF\FF\A4\00\00\00,\F9\FF\FFd\00\00\00\5C\F9\FF\FF\90\00\00\00\1C\FA\FF\FF\CC\00\00\00\0C\FE\FF\FF\E8\00\00\00|\FE\FF\FF\04\01\00\00\5C\FF\FF\FF$\01\00\00\CC\FF\FF\FFl\01\00\00" }>
@seg_400b40__eh_frame = internal constant %seg_400b40__eh_frame_type <{ [312 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00\C0\F8\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00\C4\F8\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00`\F8\FF\FF \00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00H\F9\FF\FF\E1\03\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\1C\FD\FF\FFb\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00\90\00\00\00p\FD\FF\FF\E0\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00D\00\00\00\B0\00\00\000\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\F8\00\00\00X\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_600df0__init_array = internal global %seg_600df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400500_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4004d0___do_global_dtors_aux to i64) }>
@seg_600ff0__got = internal global %seg_600ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_601000__got_plt = internal global %seg_601000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64) }>
@seg_601020__data = internal global %seg_601020__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@ptr = global %ptr_type zeroinitializer
@STATE = global %STATE_type zeroinitializer
@outbuf = global %outbuf_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400500_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4004d0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400ac0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400a50___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @salsa_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @salsa20_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
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
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_400ac4__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ac4:
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
  store i64 %12, i64* %RSP, align 8, !tbaa !2428
  %13 = icmp ult i64 %9, 8
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1, !tbaa !2432
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17) #16
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1, !tbaa !2446
  %23 = xor i64 8, %9
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !2447
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !2448
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !2449
  %35 = lshr i64 %9, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !2450
  %41 = load i64, i64* %RSP
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC
  %44 = add i64 8, %41
  store i64 %44, i64* %RSP, align 8, !tbaa !2428
  %45 = icmp ult i64 %44, %41
  %46 = icmp ult i64 %44, 8
  %47 = or i1 %45, %46
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %48, i8* %49, align 1, !tbaa !2432
  %50 = trunc i64 %44 to i32
  %51 = and i32 %50, 255
  %52 = call i32 @llvm.ctpop.i32(i32 %51) #16
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %55, i8* %56, align 1, !tbaa !2446
  %57 = xor i64 8, %41
  %58 = xor i64 %57, %44
  %59 = lshr i64 %58, 4
  %60 = trunc i64 %59 to i8
  %61 = and i8 %60, 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %61, i8* %62, align 1, !tbaa !2447
  %63 = icmp eq i64 %44, 0
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %64, i8* %65, align 1, !tbaa !2448
  %66 = lshr i64 %44, 63
  %67 = trunc i64 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %67, i8* %68, align 1, !tbaa !2449
  %69 = lshr i64 %41, 63
  %70 = xor i64 %66, %69
  %71 = add nuw nsw i64 %70, %66
  %72 = icmp eq i64 %71, 2
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %73, i8* %74, align 1, !tbaa !2450
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 1
  store i64 %76, i64* %PC
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %79 = load i64, i64* %78, align 8, !tbaa !2428
  %80 = inttoptr i64 %79 to i64*
  %81 = load i64, i64* %80
  store i64 %81, i64* %77, align 8, !tbaa !2428
  %82 = add i64 %79, 8
  store i64 %82, i64* %78, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004d0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004d0:
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
  store i8 0, i8* %15, align 1, !tbaa !2432
  %16 = zext i8 %14 to i32
  %17 = call i32 @llvm.ctpop.i32(i32 %16) #16
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1, !tbaa !2446
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1, !tbaa !2447
  %23 = icmp eq i8 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1, !tbaa !2448
  %26 = lshr i8 %14, 7
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1, !tbaa !2449
  %28 = lshr i8 %14, 7
  %29 = xor i8 %26, %28
  %30 = add nuw nsw i8 %29, %28
  %31 = icmp eq i8 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1, !tbaa !2450
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 25
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 2
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 2
  store i64 %39, i64* %PC
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %41 = load i8, i8* %40, align 1, !tbaa !2448
  %42 = icmp eq i8 %41, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %45 = select i1 %42, i64 %35, i64 %37
  store i64 %45, i64* %44, align 8, !tbaa !2428
  %46 = load i8, i8* %BRANCH_TAKEN
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %block_4004f0, label %block_4004d9

block_4004f0:                                     ; preds = %block_4004d0
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 2
  store i64 %49, i64* %PC
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8, !tbaa !2428
  %53 = inttoptr i64 %52 to i64*
  %54 = load i64, i64* %53
  store i64 %54, i64* %50, align 8, !tbaa !2428
  %55 = add i64 %52, 8
  store i64 %55, i64* %51, align 8, !tbaa !2428
  ret %struct.Memory* %2

block_4004d9:                                     ; preds = %block_4004d0
  %56 = load i64, i64* %RBP
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 1
  store i64 %58, i64* %PC
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %60 = load i64, i64* %59, align 8, !tbaa !2428
  %61 = add i64 %60, -8
  %62 = inttoptr i64 %61 to i64*
  store i64 %56, i64* %62
  store i64 %61, i64* %59, align 8, !tbaa !2428
  %63 = load i64, i64* %RSP
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 3
  store i64 %65, i64* %PC
  store i64 %63, i64* %RBP, align 8, !tbaa !2428
  %66 = load i64, i64* %PC
  %67 = sub i64 %66, 125
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 5
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 5
  store i64 %71, i64* %PC
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %73 = load i64, i64* %72, align 8, !tbaa !2428
  %74 = add i64 %73, -8
  %75 = inttoptr i64 %74 to i64*
  store i64 %69, i64* %75
  store i64 %74, i64* %72, align 8, !tbaa !2428
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %67, i64* %76, align 8, !tbaa !2428
  %77 = load i64, i64* %PC
  %78 = call %struct.Memory* @sub_400460_deregister_tm_clones(%struct.State* %0, i64 %77, %struct.Memory* %2)
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC
  store i8 1, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 1
  store i64 %82, i64* %PC
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %84 = load i64, i64* %83, align 8, !tbaa !2428
  %85 = add i64 %84, 8
  %86 = inttoptr i64 %84 to i64*
  %87 = load i64, i64* %86
  store i64 %87, i64* %RBP, align 8, !tbaa !2428
  store i64 %85, i64* %83, align 8, !tbaa !2428
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 1
  store i64 %89, i64* %PC
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %92 = load i64, i64* %91, align 8, !tbaa !2428
  %93 = inttoptr i64 %92 to i64*
  %94 = load i64, i64* %93
  store i64 %94, i64* %90, align 8, !tbaa !2428
  %95 = add i64 %92, 8
  store i64 %95, i64* %91, align 8, !tbaa !2428
  ret %struct.Memory* %78
}

; Function Attrs: noinline
define %struct.Memory* @sub_400970_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400970:
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %15 = getelementptr inbounds %struct.GPR, %struct.GPR* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %15, i32 0, i32 0
  %EAX = bitcast %union.anon* %16 to i32*
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %ECX = bitcast %union.anon* %19 to i32*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %ESI = bitcast %union.anon* %22 to i32*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RAX = bitcast %union.anon* %25 to i64*
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %27 = getelementptr inbounds %struct.GPR, %struct.GPR* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.Reg, %struct.Reg* %27, i32 0, i32 0
  %RCX = bitcast %union.anon* %28 to i64*
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %RDX = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSI = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 11
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RDI = bitcast %union.anon* %37 to i64*
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %39 = getelementptr inbounds %struct.GPR, %struct.GPR* %38, i32 0, i32 13
  %40 = getelementptr inbounds %struct.Reg, %struct.Reg* %39, i32 0, i32 0
  %RSP = bitcast %union.anon* %40 to i64*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %42 = getelementptr inbounds %struct.GPR, %struct.GPR* %41, i32 0, i32 15
  %43 = getelementptr inbounds %struct.Reg, %struct.Reg* %42, i32 0, i32 0
  %RBP = bitcast %union.anon* %43 to i64*
  %44 = load i64, i64* %RBP
  %45 = load i64, i64* %PC
  %46 = add i64 %45, 1
  store i64 %46, i64* %PC
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %48 = load i64, i64* %47, align 8, !tbaa !2428
  %49 = add i64 %48, -8
  %50 = inttoptr i64 %49 to i64*
  store i64 %44, i64* %50
  store i64 %49, i64* %47, align 8, !tbaa !2428
  %51 = load i64, i64* %RSP
  %52 = load i64, i64* %PC
  %53 = add i64 %52, 3
  store i64 %53, i64* %PC
  store i64 %51, i64* %RBP, align 8, !tbaa !2428
  %54 = load i64, i64* %RSP
  %55 = load i64, i64* %PC
  %56 = add i64 %55, 4
  store i64 %56, i64* %PC
  %57 = sub i64 %54, 32
  store i64 %57, i64* %RSP, align 8, !tbaa !2428
  %58 = icmp ult i64 %54, 32
  %59 = zext i1 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %59, i8* %60, align 1, !tbaa !2432
  %61 = trunc i64 %57 to i32
  %62 = and i32 %61, 255
  %63 = call i32 @llvm.ctpop.i32(i32 %62) #16
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  %66 = xor i8 %65, 1
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %66, i8* %67, align 1, !tbaa !2446
  %68 = xor i64 32, %54
  %69 = xor i64 %68, %57
  %70 = lshr i64 %69, 4
  %71 = trunc i64 %70 to i8
  %72 = and i8 %71, 1
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %72, i8* %73, align 1, !tbaa !2447
  %74 = icmp eq i64 %57, 0
  %75 = zext i1 %74 to i8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %75, i8* %76, align 1, !tbaa !2448
  %77 = lshr i64 %57, 63
  %78 = trunc i64 %77 to i8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %78, i8* %79, align 1, !tbaa !2449
  %80 = lshr i64 %54, 63
  %81 = xor i64 %77, %80
  %82 = add nuw nsw i64 %81, %80
  %83 = icmp eq i64 %82, 2
  %84 = zext i1 %83 to i8
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %84, i8* %85, align 1, !tbaa !2450
  %86 = load i64, i64* %RBP
  %87 = sub i64 %86, 4
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 7
  store i64 %89, i64* %PC
  %90 = inttoptr i64 %87 to i32*
  store i32 0, i32* %90
  %91 = load i64, i64* %RBP
  %92 = sub i64 %91, 16
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 7
  store i64 %94, i64* %PC
  %95 = inttoptr i64 %92 to i32*
  store i32 537919488, i32* %95
  %96 = load i64, i64* %RBP
  %97 = sub i64 %96, 20
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 7
  store i64 %99, i64* %PC
  %100 = inttoptr i64 %97 to i32*
  store i32 0, i32* %100
  %101 = load i64, i64* %RBP
  %102 = sub i64 %101, 12
  %103 = load i64, i64* %PC
  %104 = add i64 %103, 7
  store i64 %104, i64* %PC
  %105 = inttoptr i64 %102 to i32*
  store i32 0, i32* %105
  br label %block_400994

block_40099e:                                     ; preds = %block_400994
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 5
  store i64 %107, i64* %PC
  store i64 3735928559, i64* %RAX, align 8, !tbaa !2428
  %108 = load i64, i64* %RBP
  %109 = sub i64 %108, 12
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 3
  store i64 %111, i64* %PC
  %112 = inttoptr i64 %109 to i32*
  %113 = load i32, i32* %112
  %114 = zext i32 %113 to i64
  store i64 %114, i64* %RCX, align 8, !tbaa !2428
  %115 = load i64, i64* %RCX
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 3
  store i64 %117, i64* %PC
  %118 = trunc i64 %115 to i32
  %119 = add i32 13, %118
  %120 = zext i32 %119 to i64
  store i64 %120, i64* %RCX, align 8, !tbaa !2428
  %121 = icmp ult i32 %119, %118
  %122 = icmp ult i32 %119, 13
  %123 = or i1 %121, %122
  %124 = zext i1 %123 to i8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %124, i8* %125, align 1, !tbaa !2432
  %126 = and i32 %119, 255
  %127 = call i32 @llvm.ctpop.i32(i32 %126) #16
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %130, i8* %131, align 1, !tbaa !2446
  %132 = xor i64 13, %115
  %133 = trunc i64 %132 to i32
  %134 = xor i32 %133, %119
  %135 = lshr i32 %134, 4
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %137, i8* %138, align 1, !tbaa !2447
  %139 = icmp eq i32 %119, 0
  %140 = zext i1 %139 to i8
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %140, i8* %141, align 1, !tbaa !2448
  %142 = lshr i32 %119, 31
  %143 = trunc i32 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %143, i8* %144, align 1, !tbaa !2449
  %145 = lshr i32 %118, 31
  %146 = xor i32 %142, %145
  %147 = add nuw nsw i32 %146, %142
  %148 = icmp eq i32 %147, 2
  %149 = zext i1 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %149, i8* %150, align 1, !tbaa !2450
  %151 = load i64, i64* %RCX
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 6
  store i64 %153, i64* %PC
  %154 = trunc i64 %151 to i32
  %155 = add i32 -307516443, %154
  %156 = zext i32 %155 to i64
  store i64 %156, i64* %RCX, align 8, !tbaa !2428
  %157 = icmp ult i32 %155, %154
  %158 = icmp ult i32 %155, -307516443
  %159 = or i1 %157, %158
  %160 = zext i1 %159 to i8
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %160, i8* %161, align 1, !tbaa !2432
  %162 = and i32 %155, 255
  %163 = call i32 @llvm.ctpop.i32(i32 %162) #16
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %166, i8* %167, align 1, !tbaa !2446
  %168 = xor i64 -307516443, %151
  %169 = trunc i64 %168 to i32
  %170 = xor i32 %169, %155
  %171 = lshr i32 %170, 4
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %173, i8* %174, align 1, !tbaa !2447
  %175 = icmp eq i32 %155, 0
  %176 = zext i1 %175 to i8
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %176, i8* %177, align 1, !tbaa !2448
  %178 = lshr i32 %155, 31
  %179 = trunc i32 %178 to i8
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %179, i8* %180, align 1, !tbaa !2449
  %181 = lshr i32 %154, 31
  %182 = xor i32 %178, %181
  %183 = xor i32 %178, 1
  %184 = add nuw nsw i32 %182, %183
  %185 = icmp eq i32 %184, 2
  %186 = zext i1 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %186, i8* %187, align 1, !tbaa !2450
  %188 = load i64, i64* %RAX
  %189 = load i64, i64* %RBP
  %190 = sub i64 %189, 12
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 3
  store i64 %192, i64* %PC
  %193 = trunc i64 %188 to i32
  %194 = inttoptr i64 %190 to i32*
  %195 = load i32, i32* %194
  %196 = sub i32 %193, %195
  %197 = zext i32 %196 to i64
  store i64 %197, i64* %RAX, align 8, !tbaa !2428
  %198 = icmp ult i32 %193, %195
  %199 = zext i1 %198 to i8
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %199, i8* %200, align 1, !tbaa !2432
  %201 = and i32 %196, 255
  %202 = call i32 @llvm.ctpop.i32(i32 %201) #16
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %205, i8* %206, align 1, !tbaa !2446
  %207 = xor i32 %195, %193
  %208 = xor i32 %207, %196
  %209 = lshr i32 %208, 4
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %211, i8* %212, align 1, !tbaa !2447
  %213 = icmp eq i32 %196, 0
  %214 = zext i1 %213 to i8
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %214, i8* %215, align 1, !tbaa !2448
  %216 = lshr i32 %196, 31
  %217 = trunc i32 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %217, i8* %218, align 1, !tbaa !2449
  %219 = lshr i32 %193, 31
  %220 = lshr i32 %195, 31
  %221 = xor i32 %220, %219
  %222 = xor i32 %216, %219
  %223 = add nuw nsw i32 %222, %221
  %224 = icmp eq i32 %223, 2
  %225 = zext i1 %224 to i8
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %225, i8* %226, align 1, !tbaa !2450
  %227 = load i64, i64* %RCX
  %228 = load i32, i32* %EAX
  %229 = zext i32 %228 to i64
  %230 = load i64, i64* %PC
  %231 = add i64 %230, 2
  store i64 %231, i64* %PC
  %232 = xor i64 %229, %227
  %233 = trunc i64 %232 to i32
  %234 = and i64 %232, 4294967295
  store i64 %234, i64* %RCX, align 8, !tbaa !2428
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %235, align 1, !tbaa !2432
  %236 = and i32 %233, 255
  %237 = call i32 @llvm.ctpop.i32(i32 %236) #16
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  %240 = xor i8 %239, 1
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %240, i8* %241, align 1, !tbaa !2446
  %242 = icmp eq i32 %233, 0
  %243 = zext i1 %242 to i8
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %243, i8* %244, align 1, !tbaa !2448
  %245 = lshr i32 %233, 31
  %246 = trunc i32 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %246, i8* %247, align 1, !tbaa !2449
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %248, align 1, !tbaa !2450
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %249, align 1, !tbaa !2447
  %250 = load i64, i64* %RBP
  %251 = sub i64 %250, 12
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 3
  store i64 %253, i64* %PC
  %254 = inttoptr i64 %251 to i32*
  %255 = load i32, i32* %254
  %256 = zext i32 %255 to i64
  store i64 %256, i64* %RAX, align 8, !tbaa !2428
  %257 = load i32, i32* %EAX
  %258 = zext i32 %257 to i64
  %259 = load i64, i64* %PC
  %260 = add i64 %259, 2
  store i64 %260, i64* %PC
  %261 = and i64 %258, 4294967295
  store i64 %261, i64* %RDX, align 8, !tbaa !2428
  %262 = load i64, i64* %RDX
  %263 = mul i64 %262, 4
  %264 = add i64 %263, ptrtoint (%STATE_type* @STATE to i64)
  %265 = load i32, i32* %ECX
  %266 = zext i32 %265 to i64
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 7
  store i64 %268, i64* %PC
  %269 = inttoptr i64 %264 to i32*
  store i32 %265, i32* %269
  %270 = load i64, i64* %RBP
  %271 = sub i64 %270, 12
  %272 = load i64, i64* %PC
  %273 = add i64 %272, 3
  store i64 %273, i64* %PC
  %274 = inttoptr i64 %271 to i32*
  %275 = load i32, i32* %274
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RAX, align 8, !tbaa !2428
  %277 = load i64, i64* %RAX
  %278 = load i64, i64* %PC
  %279 = add i64 %278, 3
  store i64 %279, i64* %PC
  %280 = trunc i64 %277 to i32
  %281 = add i32 1, %280
  %282 = zext i32 %281 to i64
  store i64 %282, i64* %RAX, align 8, !tbaa !2428
  %283 = icmp ult i32 %281, %280
  %284 = icmp ult i32 %281, 1
  %285 = or i1 %283, %284
  %286 = zext i1 %285 to i8
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %286, i8* %287, align 1, !tbaa !2432
  %288 = and i32 %281, 255
  %289 = call i32 @llvm.ctpop.i32(i32 %288) #16
  %290 = trunc i32 %289 to i8
  %291 = and i8 %290, 1
  %292 = xor i8 %291, 1
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %292, i8* %293, align 1, !tbaa !2446
  %294 = xor i64 1, %277
  %295 = trunc i64 %294 to i32
  %296 = xor i32 %295, %281
  %297 = lshr i32 %296, 4
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %299, i8* %300, align 1, !tbaa !2447
  %301 = icmp eq i32 %281, 0
  %302 = zext i1 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %302, i8* %303, align 1, !tbaa !2448
  %304 = lshr i32 %281, 31
  %305 = trunc i32 %304 to i8
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %305, i8* %306, align 1, !tbaa !2449
  %307 = lshr i32 %280, 31
  %308 = xor i32 %304, %307
  %309 = add nuw nsw i32 %308, %304
  %310 = icmp eq i32 %309, 2
  %311 = zext i1 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %311, i8* %312, align 1, !tbaa !2450
  %313 = load i64, i64* %RBP
  %314 = sub i64 %313, 12
  %315 = load i32, i32* %EAX
  %316 = zext i32 %315 to i64
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 3
  store i64 %318, i64* %PC
  %319 = inttoptr i64 %314 to i32*
  store i32 %315, i32* %319
  %320 = load i64, i64* %PC
  %321 = sub i64 %320, 53
  %322 = load i64, i64* %PC
  %323 = add i64 %322, 5
  store i64 %323, i64* %PC
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %321, i64* %324, align 8, !tbaa !2428
  br label %block_400994

block_4009f7:                                     ; preds = %block_4009d5
  %325 = sub i64 %635, 247
  %326 = load i64, i64* %PC
  %327 = add i64 %326, 5
  %328 = load i64, i64* %PC
  %329 = add i64 %328, 5
  store i64 %329, i64* %PC
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %331 = load i64, i64* %330, align 8, !tbaa !2428
  %332 = add i64 %331, -8
  %333 = inttoptr i64 %332 to i64*
  store i64 %327, i64* %333
  store i64 %332, i64* %330, align 8, !tbaa !2428
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %325, i64* %334, align 8, !tbaa !2428
  %335 = load i64, i64* %PC
  %336 = call %struct.Memory* @sub_400900_salsa(%struct.State* %0, i64 %335, %struct.Memory* %MEMORY.0)
  %337 = load i64, i64* %PC
  %338 = add i64 %337, 10
  store i64 %338, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400ad0__rodata_type* @seg_400ad0__rodata to i64), i64 4), i64* %RDI, align 8, !tbaa !2428
  %339 = load i64, i64* %RBP
  %340 = sub i64 %339, 8
  %341 = load i32, i32* %EAX
  %342 = zext i32 %341 to i64
  %343 = load i64, i64* %PC
  %344 = add i64 %343, 3
  store i64 %344, i64* %PC
  %345 = inttoptr i64 %340 to i32*
  store i32 %341, i32* %345
  %346 = load i64, i64* %RBP
  %347 = sub i64 %346, 20
  %348 = load i64, i64* %PC
  %349 = add i64 %348, 3
  store i64 %349, i64* %PC
  %350 = inttoptr i64 %347 to i32*
  %351 = load i32, i32* %350
  %352 = zext i32 %351 to i64
  store i64 %352, i64* %RAX, align 8, !tbaa !2428
  %353 = load i64, i64* %RAX
  %354 = load i64, i64* %RBP
  %355 = sub i64 %354, 8
  %356 = load i64, i64* %PC
  %357 = add i64 %356, 3
  store i64 %357, i64* %PC
  %358 = trunc i64 %353 to i32
  %359 = inttoptr i64 %355 to i32*
  %360 = load i32, i32* %359
  %361 = add i32 %360, %358
  %362 = zext i32 %361 to i64
  store i64 %362, i64* %RAX, align 8, !tbaa !2428
  %363 = icmp ult i32 %361, %358
  %364 = icmp ult i32 %361, %360
  %365 = or i1 %363, %364
  %366 = zext i1 %365 to i8
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %366, i8* %367, align 1, !tbaa !2432
  %368 = and i32 %361, 255
  %369 = call i32 @llvm.ctpop.i32(i32 %368) #16
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  %372 = xor i8 %371, 1
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %372, i8* %373, align 1, !tbaa !2446
  %374 = xor i32 %360, %358
  %375 = xor i32 %374, %361
  %376 = lshr i32 %375, 4
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %378, i8* %379, align 1, !tbaa !2447
  %380 = icmp eq i32 %361, 0
  %381 = zext i1 %380 to i8
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %381, i8* %382, align 1, !tbaa !2448
  %383 = lshr i32 %361, 31
  %384 = trunc i32 %383 to i8
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %384, i8* %385, align 1, !tbaa !2449
  %386 = lshr i32 %358, 31
  %387 = lshr i32 %360, 31
  %388 = xor i32 %383, %386
  %389 = xor i32 %383, %387
  %390 = add nuw nsw i32 %388, %389
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %392, i8* %393, align 1, !tbaa !2450
  %394 = load i64, i64* %RBP
  %395 = sub i64 %394, 8
  %396 = load i32, i32* %EAX
  %397 = zext i32 %396 to i64
  %398 = load i64, i64* %PC
  %399 = add i64 %398, 3
  store i64 %399, i64* %PC
  %400 = inttoptr i64 %395 to i32*
  store i32 %396, i32* %400
  %401 = load i64, i64* %RBP
  %402 = sub i64 %401, 8
  %403 = load i64, i64* %PC
  %404 = add i64 %403, 3
  store i64 %404, i64* %PC
  %405 = inttoptr i64 %402 to i32*
  %406 = load i32, i32* %405
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RSI, align 8, !tbaa !2428
  %408 = load i64, i64* %PC
  %409 = add i64 %408, 2
  store i64 %409, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %410 = load i64, i64* %PC
  %411 = sub i64 %410, 1543
  %412 = load i64, i64* %PC
  %413 = add i64 %412, 5
  %414 = load i64, i64* %PC
  %415 = add i64 %414, 5
  store i64 %415, i64* %PC
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %417 = load i64, i64* %416, align 8, !tbaa !2428
  %418 = add i64 %417, -8
  %419 = inttoptr i64 %418 to i64*
  store i64 %413, i64* %419
  store i64 %418, i64* %416, align 8, !tbaa !2428
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %411, i64* %420, align 8, !tbaa !2428
  %421 = load i64, i64* %PC
  %422 = call %struct.Memory* @ext_400410_printf(%struct.State* %0, i64 %421, %struct.Memory* %336)
  %423 = load i64, i64* %PC
  %424 = add i64 %423, 10
  store i64 %424, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400ad0__rodata_type* @seg_400ad0__rodata to i64), i64 19), i64* %RDI, align 8, !tbaa !2428
  %425 = load i64, i64* %PC
  %426 = add i64 %425, 5
  store i64 %426, i64* %PC
  store i64 4132794429, i64* %RSI, align 8, !tbaa !2428
  %427 = load i64, i64* %RBP
  %428 = sub i64 %427, 28
  %429 = load i32, i32* %EAX
  %430 = zext i32 %429 to i64
  %431 = load i64, i64* %PC
  %432 = add i64 %431, 3
  store i64 %432, i64* %PC
  %433 = inttoptr i64 %428 to i32*
  store i32 %429, i32* %433
  %434 = load i64, i64* %PC
  %435 = add i64 %434, 2
  store i64 %435, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %436 = load i64, i64* %PC
  %437 = sub i64 %436, 1568
  %438 = load i64, i64* %PC
  %439 = add i64 %438, 5
  %440 = load i64, i64* %PC
  %441 = add i64 %440, 5
  store i64 %441, i64* %PC
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %443 = load i64, i64* %442, align 8, !tbaa !2428
  %444 = add i64 %443, -8
  %445 = inttoptr i64 %444 to i64*
  store i64 %439, i64* %445
  store i64 %444, i64* %442, align 8, !tbaa !2428
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %437, i64* %446, align 8, !tbaa !2428
  %447 = load i64, i64* %PC
  %448 = call %struct.Memory* @ext_400410_printf(%struct.State* %0, i64 %447, %struct.Memory* %422)
  %449 = load i64, i64* %RBP
  %450 = sub i64 %449, 8
  %451 = load i64, i64* %PC
  %452 = add i64 %451, 7
  store i64 %452, i64* %PC
  %453 = inttoptr i64 %450 to i32*
  %454 = load i32, i32* %453
  %455 = sub i32 %454, -162172867
  %456 = icmp ult i32 %454, -162172867
  %457 = zext i1 %456 to i8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %457, i8* %458, align 1, !tbaa !2432
  %459 = and i32 %455, 255
  %460 = call i32 @llvm.ctpop.i32(i32 %459) #16
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  %463 = xor i8 %462, 1
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %463, i8* %464, align 1, !tbaa !2446
  %465 = xor i32 %454, -162172867
  %466 = xor i32 %465, %455
  %467 = lshr i32 %466, 4
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %469, i8* %470, align 1, !tbaa !2447
  %471 = icmp eq i32 %455, 0
  %472 = zext i1 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %472, i8* %473, align 1, !tbaa !2448
  %474 = lshr i32 %455, 31
  %475 = trunc i32 %474 to i8
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %475, i8* %476, align 1, !tbaa !2449
  %477 = lshr i32 %454, 31
  %478 = xor i32 %477, 1
  %479 = xor i32 %474, %477
  %480 = add nuw nsw i32 %479, %478
  %481 = icmp eq i32 %480, 2
  %482 = zext i1 %481 to i8
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %482, i8* %483, align 1, !tbaa !2450
  %484 = load i64, i64* %PC
  %485 = add i64 %484, 3
  store i64 %485, i64* %PC
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %487 = load i8, i8* %486, align 1, !tbaa !2448
  %488 = icmp eq i8 %487, 0
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %CL, align 1, !tbaa !2451
  %490 = load i8, i8* %CL
  %491 = zext i8 %490 to i64
  %492 = load i64, i64* %PC
  %493 = add i64 %492, 3
  store i64 %493, i64* %PC
  %494 = and i64 1, %491
  %495 = trunc i64 %494 to i8
  store i8 %495, i8* %CL, align 1, !tbaa !2451
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %496, align 1, !tbaa !2432
  %497 = trunc i64 %494 to i32
  %498 = and i32 %497, 255
  %499 = call i32 @llvm.ctpop.i32(i32 %498) #16
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  %502 = xor i8 %501, 1
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %502, i8* %503, align 1, !tbaa !2446
  %504 = icmp eq i8 %495, 0
  %505 = zext i1 %504 to i8
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %505, i8* %506, align 1, !tbaa !2448
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %507, align 1, !tbaa !2449
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %508, align 1, !tbaa !2450
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %509, align 1, !tbaa !2447
  %510 = load i8, i8* %CL
  %511 = zext i8 %510 to i64
  %512 = load i64, i64* %PC
  %513 = add i64 %512, 3
  store i64 %513, i64* %PC
  %514 = and i64 %511, 255
  store i64 %514, i64* %RSI, align 8, !tbaa !2428
  %515 = load i64, i64* %RBP
  %516 = sub i64 %515, 32
  %517 = load i32, i32* %EAX
  %518 = zext i32 %517 to i64
  %519 = load i64, i64* %PC
  %520 = add i64 %519, 3
  store i64 %520, i64* %PC
  %521 = inttoptr i64 %516 to i32*
  store i32 %517, i32* %521
  %522 = load i32, i32* %ESI
  %523 = zext i32 %522 to i64
  %524 = load i64, i64* %PC
  %525 = add i64 %524, 2
  store i64 %525, i64* %PC
  %526 = and i64 %523, 4294967295
  store i64 %526, i64* %RAX, align 8, !tbaa !2428
  %527 = load i64, i64* %RSP
  %528 = load i64, i64* %PC
  %529 = add i64 %528, 4
  store i64 %529, i64* %PC
  %530 = add i64 32, %527
  store i64 %530, i64* %RSP, align 8, !tbaa !2428
  %531 = icmp ult i64 %530, %527
  %532 = icmp ult i64 %530, 32
  %533 = or i1 %531, %532
  %534 = zext i1 %533 to i8
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %534, i8* %535, align 1, !tbaa !2432
  %536 = trunc i64 %530 to i32
  %537 = and i32 %536, 255
  %538 = call i32 @llvm.ctpop.i32(i32 %537) #16
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %541, i8* %542, align 1, !tbaa !2446
  %543 = xor i64 32, %527
  %544 = xor i64 %543, %530
  %545 = lshr i64 %544, 4
  %546 = trunc i64 %545 to i8
  %547 = and i8 %546, 1
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %547, i8* %548, align 1, !tbaa !2447
  %549 = icmp eq i64 %530, 0
  %550 = zext i1 %549 to i8
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %550, i8* %551, align 1, !tbaa !2448
  %552 = lshr i64 %530, 63
  %553 = trunc i64 %552 to i8
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %553, i8* %554, align 1, !tbaa !2449
  %555 = lshr i64 %527, 63
  %556 = xor i64 %552, %555
  %557 = add nuw nsw i64 %556, %552
  %558 = icmp eq i64 %557, 2
  %559 = zext i1 %558 to i8
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %559, i8* %560, align 1, !tbaa !2450
  %561 = load i64, i64* %PC
  %562 = add i64 %561, 1
  store i64 %562, i64* %PC
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %564 = load i64, i64* %563, align 8, !tbaa !2428
  %565 = add i64 %564, 8
  %566 = inttoptr i64 %564 to i64*
  %567 = load i64, i64* %566
  store i64 %567, i64* %RBP, align 8, !tbaa !2428
  store i64 %565, i64* %563, align 8, !tbaa !2428
  %568 = load i64, i64* %PC
  %569 = add i64 %568, 1
  store i64 %569, i64* %PC
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %572 = load i64, i64* %571, align 8, !tbaa !2428
  %573 = inttoptr i64 %572 to i64*
  %574 = load i64, i64* %573
  store i64 %574, i64* %570, align 8, !tbaa !2428
  %575 = add i64 %572, 8
  store i64 %575, i64* %571, align 8, !tbaa !2428
  ret %struct.Memory* %448

block_4009d5:                                     ; preds = %block_4009e1, %block_4009ce
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_4009ce ], [ %700, %block_4009e1 ]
  %576 = load i64, i64* %RBP
  %577 = sub i64 %576, 12
  %578 = load i64, i64* %PC
  %579 = add i64 %578, 3
  store i64 %579, i64* %PC
  %580 = inttoptr i64 %577 to i32*
  %581 = load i32, i32* %580
  %582 = zext i32 %581 to i64
  store i64 %582, i64* %RAX, align 8, !tbaa !2428
  %583 = load i32, i32* %EAX
  %584 = zext i32 %583 to i64
  %585 = load i64, i64* %RBP
  %586 = sub i64 %585, 16
  %587 = load i64, i64* %PC
  %588 = add i64 %587, 3
  store i64 %588, i64* %PC
  %589 = inttoptr i64 %586 to i32*
  %590 = load i32, i32* %589
  %591 = sub i32 %583, %590
  %592 = icmp ult i32 %583, %590
  %593 = zext i1 %592 to i8
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %593, i8* %594, align 1, !tbaa !2432
  %595 = and i32 %591, 255
  %596 = call i32 @llvm.ctpop.i32(i32 %595) #16
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %599, i8* %600, align 1, !tbaa !2446
  %601 = xor i32 %590, %583
  %602 = xor i32 %601, %591
  %603 = lshr i32 %602, 4
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %605, i8* %606, align 1, !tbaa !2447
  %607 = icmp eq i32 %591, 0
  %608 = zext i1 %607 to i8
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %608, i8* %609, align 1, !tbaa !2448
  %610 = lshr i32 %591, 31
  %611 = trunc i32 %610 to i8
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %611, i8* %612, align 1, !tbaa !2449
  %613 = lshr i32 %583, 31
  %614 = lshr i32 %590, 31
  %615 = xor i32 %614, %613
  %616 = xor i32 %610, %613
  %617 = add nuw nsw i32 %616, %615
  %618 = icmp eq i32 %617, 2
  %619 = zext i1 %618 to i8
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %619, i8* %620, align 1, !tbaa !2450
  %621 = load i64, i64* %PC
  %622 = add i64 %621, 28
  %623 = load i64, i64* %PC
  %624 = add i64 %623, 6
  %625 = load i64, i64* %PC
  %626 = add i64 %625, 6
  store i64 %626, i64* %PC
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %628 = load i8, i8* %627, align 1, !tbaa !2432
  %629 = icmp eq i8 %628, 0
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %632 = select i1 %629, i64 %622, i64 %624
  store i64 %632, i64* %631, align 8, !tbaa !2428
  %633 = load i8, i8* %BRANCH_TAKEN
  %634 = icmp eq i8 %633, 1
  %635 = load i64, i64* %PC
  br i1 %634, label %block_4009f7, label %block_4009e1

block_4009ce:                                     ; preds = %block_400994
  %636 = load i64, i64* %RBP
  %637 = sub i64 %636, 12
  %638 = load i64, i64* %PC
  %639 = add i64 %638, 7
  store i64 %639, i64* %PC
  %640 = inttoptr i64 %637 to i32*
  store i32 0, i32* %640
  br label %block_4009d5

block_400994:                                     ; preds = %block_40099e, %block_400970
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400970 ], [ %MEMORY.1, %block_40099e ]
  %641 = load i64, i64* %RBP
  %642 = sub i64 %641, 12
  %643 = load i64, i64* %PC
  %644 = add i64 %643, 4
  store i64 %644, i64* %PC
  %645 = inttoptr i64 %642 to i32*
  %646 = load i32, i32* %645
  %647 = sub i32 %646, 16
  %648 = icmp ult i32 %646, 16
  %649 = zext i1 %648 to i8
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %649, i8* %650, align 1, !tbaa !2432
  %651 = and i32 %647, 255
  %652 = call i32 @llvm.ctpop.i32(i32 %651) #16
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  %655 = xor i8 %654, 1
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %655, i8* %656, align 1, !tbaa !2446
  %657 = xor i32 %646, 16
  %658 = xor i32 %657, %647
  %659 = lshr i32 %658, 4
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %661, i8* %662, align 1, !tbaa !2447
  %663 = icmp eq i32 %647, 0
  %664 = zext i1 %663 to i8
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %664, i8* %665, align 1, !tbaa !2448
  %666 = lshr i32 %647, 31
  %667 = trunc i32 %666 to i8
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %667, i8* %668, align 1, !tbaa !2449
  %669 = lshr i32 %646, 31
  %670 = xor i32 %666, %669
  %671 = add nuw nsw i32 %670, %669
  %672 = icmp eq i32 %671, 2
  %673 = zext i1 %672 to i8
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %673, i8* %674, align 1, !tbaa !2450
  %675 = load i64, i64* %PC
  %676 = add i64 %675, 54
  %677 = load i64, i64* %PC
  %678 = add i64 %677, 6
  %679 = load i64, i64* %PC
  %680 = add i64 %679, 6
  store i64 %680, i64* %PC
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %682 = load i8, i8* %681, align 1, !tbaa !2432
  %683 = icmp eq i8 %682, 0
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %686 = select i1 %683, i64 %676, i64 %678
  store i64 %686, i64* %685, align 8, !tbaa !2428
  %687 = load i8, i8* %BRANCH_TAKEN
  %688 = icmp eq i8 %687, 1
  br i1 %688, label %block_4009ce, label %block_40099e

block_4009e1:                                     ; preds = %block_4009d5
  %689 = sub i64 %635, 225
  %690 = load i64, i64* %PC
  %691 = add i64 %690, 5
  %692 = load i64, i64* %PC
  %693 = add i64 %692, 5
  store i64 %693, i64* %PC
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %695 = load i64, i64* %694, align 8, !tbaa !2428
  %696 = add i64 %695, -8
  %697 = inttoptr i64 %696 to i64*
  store i64 %691, i64* %697
  store i64 %696, i64* %694, align 8, !tbaa !2428
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %689, i64* %698, align 8, !tbaa !2428
  %699 = load i64, i64* %PC
  %700 = call %struct.Memory* @sub_400900_salsa(%struct.State* %0, i64 %699, %struct.Memory* %MEMORY.0)
  %701 = load i64, i64* %RBP
  %702 = sub i64 %701, 24
  %703 = load i32, i32* %EAX
  %704 = zext i32 %703 to i64
  %705 = load i64, i64* %PC
  %706 = add i64 %705, 3
  store i64 %706, i64* %PC
  %707 = inttoptr i64 %702 to i32*
  store i32 %703, i32* %707
  %708 = load i64, i64* %RBP
  %709 = sub i64 %708, 12
  %710 = load i64, i64* %PC
  %711 = add i64 %710, 3
  store i64 %711, i64* %PC
  %712 = inttoptr i64 %709 to i32*
  %713 = load i32, i32* %712
  %714 = zext i32 %713 to i64
  store i64 %714, i64* %RAX, align 8, !tbaa !2428
  %715 = load i64, i64* %RAX
  %716 = load i64, i64* %PC
  %717 = add i64 %716, 3
  store i64 %717, i64* %PC
  %718 = trunc i64 %715 to i32
  %719 = add i32 1, %718
  %720 = zext i32 %719 to i64
  store i64 %720, i64* %RAX, align 8, !tbaa !2428
  %721 = icmp ult i32 %719, %718
  %722 = icmp ult i32 %719, 1
  %723 = or i1 %721, %722
  %724 = zext i1 %723 to i8
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %724, i8* %725, align 1, !tbaa !2432
  %726 = and i32 %719, 255
  %727 = call i32 @llvm.ctpop.i32(i32 %726) #16
  %728 = trunc i32 %727 to i8
  %729 = and i8 %728, 1
  %730 = xor i8 %729, 1
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %730, i8* %731, align 1, !tbaa !2446
  %732 = xor i64 1, %715
  %733 = trunc i64 %732 to i32
  %734 = xor i32 %733, %719
  %735 = lshr i32 %734, 4
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %737, i8* %738, align 1, !tbaa !2447
  %739 = icmp eq i32 %719, 0
  %740 = zext i1 %739 to i8
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %740, i8* %741, align 1, !tbaa !2448
  %742 = lshr i32 %719, 31
  %743 = trunc i32 %742 to i8
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %743, i8* %744, align 1, !tbaa !2449
  %745 = lshr i32 %718, 31
  %746 = xor i32 %742, %745
  %747 = add nuw nsw i32 %746, %742
  %748 = icmp eq i32 %747, 2
  %749 = zext i1 %748 to i8
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %749, i8* %750, align 1, !tbaa !2450
  %751 = load i64, i64* %RBP
  %752 = sub i64 %751, 12
  %753 = load i32, i32* %EAX
  %754 = zext i32 %753 to i64
  %755 = load i64, i64* %PC
  %756 = add i64 %755, 3
  store i64 %756, i64* %PC
  %757 = inttoptr i64 %752 to i32*
  store i32 %753, i32* %757
  %758 = load i64, i64* %PC
  %759 = sub i64 %758, 29
  %760 = load i64, i64* %PC
  %761 = add i64 %760, 5
  store i64 %761, i64* %PC
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %759, i64* %762, align 8, !tbaa !2428
  br label %block_4009d5
}

; Function Attrs: noinline
define %struct.Memory* @sub_400a50___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400a50:
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
  %55 = load i64, i64* %54, align 8, !tbaa !2428
  %56 = add i64 %55, -8
  %57 = inttoptr i64 %56 to i64*
  store i64 %51, i64* %57
  store i64 %56, i64* %54, align 8, !tbaa !2428
  %58 = load i64, i64* %R14
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 2
  store i64 %60, i64* %PC
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %62 = load i64, i64* %61, align 8, !tbaa !2428
  %63 = add i64 %62, -8
  %64 = inttoptr i64 %63 to i64*
  store i64 %58, i64* %64
  store i64 %63, i64* %61, align 8, !tbaa !2428
  %65 = load i64, i64* %RDX
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 3
  store i64 %67, i64* %PC
  store i64 %65, i64* %R15, align 8, !tbaa !2428
  %68 = load i64, i64* %R13
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 2
  store i64 %70, i64* %PC
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %72 = load i64, i64* %71, align 8, !tbaa !2428
  %73 = add i64 %72, -8
  %74 = inttoptr i64 %73 to i64*
  store i64 %68, i64* %74
  store i64 %73, i64* %71, align 8, !tbaa !2428
  %75 = load i64, i64* %R12
  %76 = load i64, i64* %PC
  %77 = add i64 %76, 2
  store i64 %77, i64* %PC
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %79 = load i64, i64* %78, align 8, !tbaa !2428
  %80 = add i64 %79, -8
  %81 = inttoptr i64 %80 to i64*
  store i64 %75, i64* %81
  store i64 %80, i64* %78, align 8, !tbaa !2428
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 7
  store i64 %83, i64* %PC
  store i64 ptrtoint (%seg_600df0__init_array_type* @seg_600df0__init_array to i64), i64* %R12, align 8, !tbaa !2428
  %84 = load i64, i64* %RBP
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 1
  store i64 %86, i64* %PC
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %88 = load i64, i64* %87, align 8, !tbaa !2428
  %89 = add i64 %88, -8
  %90 = inttoptr i64 %89 to i64*
  store i64 %84, i64* %90
  store i64 %89, i64* %87, align 8, !tbaa !2428
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 7
  store i64 %92, i64* %PC
  store i64 add (i64 ptrtoint (%seg_600df0__init_array_type* @seg_600df0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
  %93 = load i64, i64* %RBX
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 1
  store i64 %95, i64* %PC
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %97 = load i64, i64* %96, align 8, !tbaa !2428
  %98 = add i64 %97, -8
  %99 = inttoptr i64 %98 to i64*
  store i64 %93, i64* %99
  store i64 %98, i64* %96, align 8, !tbaa !2428
  %100 = bitcast i32* %R13D to i64*
  %101 = load i32, i32* %EDI
  %102 = zext i32 %101 to i64
  %103 = load i64, i64* %PC
  %104 = add i64 %103, 3
  store i64 %104, i64* %PC
  %105 = and i64 %102, 4294967295
  store i64 %105, i64* %100, align 8, !tbaa !2428
  %106 = load i64, i64* %RSI
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 3
  store i64 %108, i64* %PC
  store i64 %106, i64* %R14, align 8, !tbaa !2428
  %109 = load i64, i64* %RBP
  %110 = load i64, i64* %R12
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC
  %113 = sub i64 %109, %110
  store i64 %113, i64* %RBP, align 8, !tbaa !2428
  %114 = icmp ult i64 %109, %110
  %115 = zext i1 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %115, i8* %116, align 1, !tbaa !2432
  %117 = trunc i64 %113 to i32
  %118 = and i32 %117, 255
  %119 = call i32 @llvm.ctpop.i32(i32 %118) #16
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %122, i8* %123, align 1, !tbaa !2446
  %124 = xor i64 %110, %109
  %125 = xor i64 %124, %113
  %126 = lshr i64 %125, 4
  %127 = trunc i64 %126 to i8
  %128 = and i8 %127, 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %128, i8* %129, align 1, !tbaa !2447
  %130 = icmp eq i64 %113, 0
  %131 = zext i1 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %131, i8* %132, align 1, !tbaa !2448
  %133 = lshr i64 %113, 63
  %134 = trunc i64 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %134, i8* %135, align 1, !tbaa !2449
  %136 = lshr i64 %109, 63
  %137 = lshr i64 %110, 63
  %138 = xor i64 %137, %136
  %139 = xor i64 %133, %136
  %140 = add nuw nsw i64 %139, %138
  %141 = icmp eq i64 %140, 2
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %142, i8* %143, align 1, !tbaa !2450
  %144 = load i64, i64* %RSP
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 4
  store i64 %146, i64* %PC
  %147 = sub i64 %144, 8
  store i64 %147, i64* %RSP, align 8, !tbaa !2428
  %148 = icmp ult i64 %144, 8
  %149 = zext i1 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %149, i8* %150, align 1, !tbaa !2432
  %151 = trunc i64 %147 to i32
  %152 = and i32 %151, 255
  %153 = call i32 @llvm.ctpop.i32(i32 %152) #16
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %156, i8* %157, align 1, !tbaa !2446
  %158 = xor i64 8, %144
  %159 = xor i64 %158, %147
  %160 = lshr i64 %159, 4
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %162, i8* %163, align 1, !tbaa !2447
  %164 = icmp eq i64 %147, 0
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %165, i8* %166, align 1, !tbaa !2448
  %167 = lshr i64 %147, 63
  %168 = trunc i64 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %168, i8* %169, align 1, !tbaa !2449
  %170 = lshr i64 %144, 63
  %171 = xor i64 %167, %170
  %172 = add nuw nsw i64 %171, %170
  %173 = icmp eq i64 %172, 2
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %174, i8* %175, align 1, !tbaa !2450
  %176 = load i64, i64* %RBP
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC
  %179 = ashr i64 %176, 2
  %180 = trunc i64 %179 to i8
  %181 = and i8 %180, 1
  %182 = ashr i64 %179, 1
  store i64 %182, i64* %RBP, align 8, !tbaa !2428
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %181, i8* %183, align 1, !tbaa !2451
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %185 = trunc i64 %182 to i32
  %186 = and i32 %185, 255
  %187 = call i32 @llvm.ctpop.i32(i32 %186) #16
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %184, align 1, !tbaa !2451
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %191, align 1, !tbaa !2451
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %193 = icmp eq i64 %182, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %192, align 1, !tbaa !2451
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %196 = lshr i64 %182, 63
  %197 = trunc i64 %196 to i8
  store i8 %197, i8* %195, align 1, !tbaa !2451
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %198, align 1, !tbaa !2451
  %199 = load i64, i64* %PC
  %200 = sub i64 %199, 1692
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 5
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 5
  store i64 %204, i64* %PC
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %206 = load i64, i64* %205, align 8, !tbaa !2428
  %207 = add i64 %206, -8
  %208 = inttoptr i64 %207 to i64*
  store i64 %202, i64* %208
  store i64 %207, i64* %205, align 8, !tbaa !2428
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %200, i64* %209, align 8, !tbaa !2428
  %210 = load i64, i64* %PC
  %211 = call %struct.Memory* @sub_4003e0__init_proc(%struct.State* %0, i64 %210, %struct.Memory* %2)
  %212 = load i64, i64* %RBP
  %213 = load i64, i64* %RBP
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC
  %216 = and i64 %213, %212
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %217, align 1, !tbaa !2432
  %218 = trunc i64 %216 to i32
  %219 = and i32 %218, 255
  %220 = call i32 @llvm.ctpop.i32(i32 %219) #16
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %223, i8* %224, align 1, !tbaa !2446
  %225 = icmp eq i64 %216, 0
  %226 = zext i1 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %226, i8* %227, align 1, !tbaa !2448
  %228 = lshr i64 %216, 63
  %229 = trunc i64 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %229, i8* %230, align 1, !tbaa !2449
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %231, align 1, !tbaa !2450
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %232, align 1, !tbaa !2447
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 34
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 2
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 2
  store i64 %238, i64* %PC
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %240 = load i8, i8* %239, align 1, !tbaa !2448
  store i8 %240, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %242 = icmp ne i8 %240, 0
  %243 = select i1 %242, i64 %234, i64 %236
  store i64 %243, i64* %241, align 8, !tbaa !2428
  %244 = load i8, i8* %BRANCH_TAKEN
  %245 = icmp eq i8 %244, 1
  br i1 %245, label %block_400aa6, label %block_400a86

block_400aa6:                                     ; preds = %block_400a90, %block_400a50
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_400a50 ], [ %387, %block_400a90 ]
  %246 = load i64, i64* %RSP
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 4
  store i64 %248, i64* %PC
  %249 = add i64 8, %246
  store i64 %249, i64* %RSP, align 8, !tbaa !2428
  %250 = icmp ult i64 %249, %246
  %251 = icmp ult i64 %249, 8
  %252 = or i1 %250, %251
  %253 = zext i1 %252 to i8
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %253, i8* %254, align 1, !tbaa !2432
  %255 = trunc i64 %249 to i32
  %256 = and i32 %255, 255
  %257 = call i32 @llvm.ctpop.i32(i32 %256) #16
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %260, i8* %261, align 1, !tbaa !2446
  %262 = xor i64 8, %246
  %263 = xor i64 %262, %249
  %264 = lshr i64 %263, 4
  %265 = trunc i64 %264 to i8
  %266 = and i8 %265, 1
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %266, i8* %267, align 1, !tbaa !2447
  %268 = icmp eq i64 %249, 0
  %269 = zext i1 %268 to i8
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %269, i8* %270, align 1, !tbaa !2448
  %271 = lshr i64 %249, 63
  %272 = trunc i64 %271 to i8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %272, i8* %273, align 1, !tbaa !2449
  %274 = lshr i64 %246, 63
  %275 = xor i64 %271, %274
  %276 = add nuw nsw i64 %275, %271
  %277 = icmp eq i64 %276, 2
  %278 = zext i1 %277 to i8
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %278, i8* %279, align 1, !tbaa !2450
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 1
  store i64 %281, i64* %PC
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %283 = load i64, i64* %282, align 8, !tbaa !2428
  %284 = add i64 %283, 8
  %285 = inttoptr i64 %283 to i64*
  %286 = load i64, i64* %285
  store i64 %286, i64* %RBX, align 8, !tbaa !2428
  store i64 %284, i64* %282, align 8, !tbaa !2428
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 1
  store i64 %288, i64* %PC
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %290 = load i64, i64* %289, align 8, !tbaa !2428
  %291 = add i64 %290, 8
  %292 = inttoptr i64 %290 to i64*
  %293 = load i64, i64* %292
  store i64 %293, i64* %RBP, align 8, !tbaa !2428
  store i64 %291, i64* %289, align 8, !tbaa !2428
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 2
  store i64 %295, i64* %PC
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %297 = load i64, i64* %296, align 8, !tbaa !2428
  %298 = add i64 %297, 8
  %299 = inttoptr i64 %297 to i64*
  %300 = load i64, i64* %299
  store i64 %300, i64* %R12, align 8, !tbaa !2428
  store i64 %298, i64* %296, align 8, !tbaa !2428
  %301 = load i64, i64* %PC
  %302 = add i64 %301, 2
  store i64 %302, i64* %PC
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %304 = load i64, i64* %303, align 8, !tbaa !2428
  %305 = add i64 %304, 8
  %306 = inttoptr i64 %304 to i64*
  %307 = load i64, i64* %306
  store i64 %307, i64* %R13, align 8, !tbaa !2428
  store i64 %305, i64* %303, align 8, !tbaa !2428
  %308 = load i64, i64* %PC
  %309 = add i64 %308, 2
  store i64 %309, i64* %PC
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %311 = load i64, i64* %310, align 8, !tbaa !2428
  %312 = add i64 %311, 8
  %313 = inttoptr i64 %311 to i64*
  %314 = load i64, i64* %313
  store i64 %314, i64* %R14, align 8, !tbaa !2428
  store i64 %312, i64* %310, align 8, !tbaa !2428
  %315 = load i64, i64* %PC
  %316 = add i64 %315, 2
  store i64 %316, i64* %PC
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %318 = load i64, i64* %317, align 8, !tbaa !2428
  %319 = add i64 %318, 8
  %320 = inttoptr i64 %318 to i64*
  %321 = load i64, i64* %320
  store i64 %321, i64* %R15, align 8, !tbaa !2428
  store i64 %319, i64* %317, align 8, !tbaa !2428
  %322 = load i64, i64* %PC
  %323 = add i64 %322, 1
  store i64 %323, i64* %PC
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %326 = load i64, i64* %325, align 8, !tbaa !2428
  %327 = inttoptr i64 %326 to i64*
  %328 = load i64, i64* %327
  store i64 %328, i64* %324, align 8, !tbaa !2428
  %329 = add i64 %326, 8
  store i64 %329, i64* %325, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400a86:                                     ; preds = %block_400a50
  %330 = load i64, i64* %RBX
  %331 = load i32, i32* %EBX
  %332 = zext i32 %331 to i64
  %333 = load i64, i64* %PC
  %334 = add i64 %333, 2
  store i64 %334, i64* %PC
  %335 = xor i64 %332, %330
  %336 = trunc i64 %335 to i32
  %337 = and i64 %335, 4294967295
  store i64 %337, i64* %RBX, align 8, !tbaa !2428
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %338, align 1, !tbaa !2432
  %339 = and i32 %336, 255
  %340 = call i32 @llvm.ctpop.i32(i32 %339) #16
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = xor i8 %342, 1
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %343, i8* %344, align 1, !tbaa !2446
  %345 = icmp eq i32 %336, 0
  %346 = zext i1 %345 to i8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %346, i8* %347, align 1, !tbaa !2448
  %348 = lshr i32 %336, 31
  %349 = trunc i32 %348 to i8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %349, i8* %350, align 1, !tbaa !2449
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %351, align 1, !tbaa !2450
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %352, align 1, !tbaa !2447
  %353 = load i64, i64* %RAX
  %354 = load i64, i64* %RAX
  %355 = add i64 %354, %353
  %356 = load i32, i32* %EAX
  %357 = zext i32 %356 to i64
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 8
  store i64 %359, i64* %PC
  br label %block_400a90

block_400a90:                                     ; preds = %block_400a90, %block_400a86
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_400a86 ], [ %387, %block_400a90 ]
  %360 = load i64, i64* %R15
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 3
  store i64 %362, i64* %PC
  store i64 %360, i64* %RDX, align 8, !tbaa !2428
  %363 = load i64, i64* %R14
  %364 = load i64, i64* %PC
  %365 = add i64 %364, 3
  store i64 %365, i64* %PC
  store i64 %363, i64* %RSI, align 8, !tbaa !2428
  %366 = load i32, i32* %R13D
  %367 = zext i32 %366 to i64
  %368 = load i64, i64* %PC
  %369 = add i64 %368, 3
  store i64 %369, i64* %PC
  %370 = and i64 %367, 4294967295
  store i64 %370, i64* %RDI, align 8, !tbaa !2428
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
  %380 = load i64, i64* %379, align 8, !tbaa !2428
  %381 = add i64 %380, -8
  %382 = inttoptr i64 %381 to i64*
  store i64 %376, i64* %382
  store i64 %381, i64* %379, align 8, !tbaa !2428
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %384 = inttoptr i64 %374 to i64*
  %385 = load i64, i64* %384
  store i64 %385, i64* %383, align 8, !tbaa !2428
  %386 = load i64, i64* %PC
  %387 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %386, %struct.Memory* %MEMORY.1)
  %388 = load i64, i64* %RBX
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 4
  store i64 %390, i64* %PC
  %391 = add i64 1, %388
  store i64 %391, i64* %RBX, align 8, !tbaa !2428
  %392 = icmp ult i64 %391, %388
  %393 = icmp ult i64 %391, 1
  %394 = or i1 %392, %393
  %395 = zext i1 %394 to i8
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %395, i8* %396, align 1, !tbaa !2432
  %397 = trunc i64 %391 to i32
  %398 = and i32 %397, 255
  %399 = call i32 @llvm.ctpop.i32(i32 %398) #16
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %402, i8* %403, align 1, !tbaa !2446
  %404 = xor i64 1, %388
  %405 = xor i64 %404, %391
  %406 = lshr i64 %405, 4
  %407 = trunc i64 %406 to i8
  %408 = and i8 %407, 1
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %408, i8* %409, align 1, !tbaa !2447
  %410 = icmp eq i64 %391, 0
  %411 = zext i1 %410 to i8
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %411, i8* %412, align 1, !tbaa !2448
  %413 = lshr i64 %391, 63
  %414 = trunc i64 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %414, i8* %415, align 1, !tbaa !2449
  %416 = lshr i64 %388, 63
  %417 = xor i64 %413, %416
  %418 = add nuw nsw i64 %417, %413
  %419 = icmp eq i64 %418, 2
  %420 = zext i1 %419 to i8
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %420, i8* %421, align 1, !tbaa !2450
  %422 = load i64, i64* %RBP
  %423 = load i64, i64* %RBX
  %424 = load i64, i64* %PC
  %425 = add i64 %424, 3
  store i64 %425, i64* %PC
  %426 = sub i64 %422, %423
  %427 = icmp ult i64 %422, %423
  %428 = zext i1 %427 to i8
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %428, i8* %429, align 1, !tbaa !2432
  %430 = trunc i64 %426 to i32
  %431 = and i32 %430, 255
  %432 = call i32 @llvm.ctpop.i32(i32 %431) #16
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %435, i8* %436, align 1, !tbaa !2446
  %437 = xor i64 %423, %422
  %438 = xor i64 %437, %426
  %439 = lshr i64 %438, 4
  %440 = trunc i64 %439 to i8
  %441 = and i8 %440, 1
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %441, i8* %442, align 1, !tbaa !2447
  %443 = icmp eq i64 %426, 0
  %444 = zext i1 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %444, i8* %445, align 1, !tbaa !2448
  %446 = lshr i64 %426, 63
  %447 = trunc i64 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %447, i8* %448, align 1, !tbaa !2449
  %449 = lshr i64 %422, 63
  %450 = lshr i64 %423, 63
  %451 = xor i64 %450, %449
  %452 = xor i64 %446, %449
  %453 = add nuw nsw i64 %452, %451
  %454 = icmp eq i64 %453, 2
  %455 = zext i1 %454 to i8
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %455, i8* %456, align 1, !tbaa !2450
  %457 = load i64, i64* %PC
  %458 = sub i64 %457, 20
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 2
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 2
  store i64 %462, i64* %PC
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %464 = load i8, i8* %463, align 1, !tbaa !2448
  %465 = icmp eq i8 %464, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %468 = select i1 %465, i64 %458, i64 %460
  store i64 %468, i64* %467, align 8, !tbaa !2428
  %469 = load i8, i8* %BRANCH_TAKEN
  %470 = icmp eq i8 %469, 1
  br i1 %470, label %block_400a90, label %block_400aa6
}

; Function Attrs: noinline
define %struct.Memory* @sub_400490_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400490:
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
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !2428
  %29 = load i64, i64* %RBP
  %30 = load i64, i64* %PC
  %31 = add i64 %30, 1
  store i64 %31, i64* %PC
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %33 = load i64, i64* %32, align 8, !tbaa !2428
  %34 = add i64 %33, -8
  %35 = inttoptr i64 %34 to i64*
  store i64 %29, i64* %35
  store i64 %34, i64* %32, align 8, !tbaa !2428
  %36 = load i64, i64* %RSI
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 7
  store i64 %38, i64* %PC
  %39 = sub i64 %36, ptrtoint (%__bss_start_type* @__bss_start to i64)
  store i64 %39, i64* %RSI, align 8, !tbaa !2428
  %40 = icmp ult i64 %36, ptrtoint (%__bss_start_type* @__bss_start to i64)
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %41, i8* %42, align 1, !tbaa !2432
  %43 = trunc i64 %39 to i32
  %44 = and i32 %43, 255
  %45 = call i32 @llvm.ctpop.i32(i32 %44) #16
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = xor i8 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %48, i8* %49, align 1, !tbaa !2446
  %50 = xor i64 ptrtoint (%__bss_start_type* @__bss_start to i64), %36
  %51 = xor i64 %50, %39
  %52 = lshr i64 %51, 4
  %53 = trunc i64 %52 to i8
  %54 = and i8 %53, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %54, i8* %55, align 1, !tbaa !2447
  %56 = icmp eq i64 %39, 0
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %57, i8* %58, align 1, !tbaa !2448
  %59 = lshr i64 %39, 63
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %60, i8* %61, align 1, !tbaa !2449
  %62 = lshr i64 %36, 63
  %63 = xor i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), %62
  %64 = xor i64 %59, %62
  %65 = add nuw nsw i64 %64, %63
  %66 = icmp eq i64 %65, 2
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %67, i8* %68, align 1, !tbaa !2450
  %69 = load i64, i64* %RSP
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 3
  store i64 %71, i64* %PC
  store i64 %69, i64* %RBP, align 8, !tbaa !2428
  %72 = load i64, i64* %RSI
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC
  %75 = ashr i64 %72, 2
  %76 = trunc i64 %75 to i8
  %77 = and i8 %76, 1
  %78 = ashr i64 %75, 1
  store i64 %78, i64* %RSI, align 8, !tbaa !2428
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %77, i8* %79, align 1, !tbaa !2451
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %81 = trunc i64 %78 to i32
  %82 = and i32 %81, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82) #16
  %84 = trunc i32 %83 to i8
  %85 = and i8 %84, 1
  %86 = xor i8 %85, 1
  store i8 %86, i8* %80, align 1, !tbaa !2451
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %87, align 1, !tbaa !2451
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %89 = icmp eq i64 %78, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %88, align 1, !tbaa !2451
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %92 = lshr i64 %78, 63
  %93 = trunc i64 %92 to i8
  store i8 %93, i8* %91, align 1, !tbaa !2451
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %94, align 1, !tbaa !2451
  %95 = load i64, i64* %RSI
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC
  store i64 %95, i64* %RAX, align 8, !tbaa !2428
  %98 = load i64, i64* %RAX
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 4
  store i64 %100, i64* %PC
  %101 = lshr i64 %98, 62
  %102 = trunc i64 %101 to i8
  %103 = and i8 %102, 1
  %104 = lshr i64 %101, 1
  store i64 %104, i64* %RAX, align 8, !tbaa !2428
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %103, i8* %105, align 1, !tbaa !2451
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %107 = trunc i64 %104 to i32
  %108 = and i32 %107, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108) #16
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %106, align 1, !tbaa !2451
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %113, align 1, !tbaa !2451
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %115 = icmp eq i64 %104, 0
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %114, align 1, !tbaa !2451
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %117, align 1, !tbaa !2451
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %118, align 1, !tbaa !2451
  %119 = load i64, i64* %RSI
  %120 = load i64, i64* %RAX
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 3
  store i64 %122, i64* %PC
  %123 = add i64 %120, %119
  store i64 %123, i64* %RSI, align 8, !tbaa !2428
  %124 = icmp ult i64 %123, %119
  %125 = icmp ult i64 %123, %120
  %126 = or i1 %124, %125
  %127 = zext i1 %126 to i8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %127, i8* %128, align 1, !tbaa !2432
  %129 = trunc i64 %123 to i32
  %130 = and i32 %129, 255
  %131 = call i32 @llvm.ctpop.i32(i32 %130) #16
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %134, i8* %135, align 1, !tbaa !2446
  %136 = xor i64 %120, %119
  %137 = xor i64 %136, %123
  %138 = lshr i64 %137, 4
  %139 = trunc i64 %138 to i8
  %140 = and i8 %139, 1
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %140, i8* %141, align 1, !tbaa !2447
  %142 = icmp eq i64 %123, 0
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %143, i8* %144, align 1, !tbaa !2448
  %145 = lshr i64 %123, 63
  %146 = trunc i64 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %146, i8* %147, align 1, !tbaa !2449
  %148 = lshr i64 %119, 63
  %149 = lshr i64 %120, 63
  %150 = xor i64 %145, %148
  %151 = xor i64 %145, %149
  %152 = add nuw nsw i64 %150, %151
  %153 = icmp eq i64 %152, 2
  %154 = zext i1 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %154, i8* %155, align 1, !tbaa !2450
  %156 = load i64, i64* %RSI
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 3
  store i64 %158, i64* %PC
  %159 = trunc i64 %156 to i8
  %160 = and i8 %159, 1
  %161 = ashr i64 %156, 1
  store i64 %161, i64* %RSI, align 8, !tbaa !2428
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %160, i8* %162, align 1, !tbaa !2451
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %164 = trunc i64 %161 to i32
  %165 = and i32 %164, 255
  %166 = call i32 @llvm.ctpop.i32(i32 %165) #16
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  store i8 %169, i8* %163, align 1, !tbaa !2451
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %170, align 1, !tbaa !2451
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %172 = icmp eq i64 %161, 0
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %171, align 1, !tbaa !2451
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %175 = lshr i64 %161, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %174, align 1, !tbaa !2451
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %177, align 1, !tbaa !2451
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 23
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 2
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 2
  store i64 %183, i64* %PC
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %185 = load i8, i8* %184, align 1, !tbaa !2448
  store i8 %185, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %187 = icmp ne i8 %185, 0
  %188 = select i1 %187, i64 %179, i64 %181
  store i64 %188, i64* %186, align 8, !tbaa !2428
  %189 = load i8, i8* %BRANCH_TAKEN
  %190 = icmp eq i8 %189, 1
  br i1 %190, label %block_4004c8, label %block_4004b3

block_4004bd:                                     ; preds = %block_4004b3
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 1
  store i64 %192, i64* %PC
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %194 = load i64, i64* %193, align 8, !tbaa !2428
  %195 = add i64 %194, 8
  %196 = inttoptr i64 %194 to i64*
  %197 = load i64, i64* %196
  store i64 %197, i64* %RBP, align 8, !tbaa !2428
  store i64 %195, i64* %193, align 8, !tbaa !2428
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 5
  store i64 %199, i64* %PC
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !2428
  %200 = load i64, i64* %RAX
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 2
  store i64 %202, i64* %PC
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %200, i64* %203, align 8, !tbaa !2428
  %204 = load i64, i64* %PC
  switch i64 %204, label %270 [
    i64 4195530, label %block_4004ca
    i64 4195525, label %block_4004c5
  ]

block_4004ca:                                     ; preds = %block_4004bd
  %205 = load i64, i64* %RAX
  %206 = load i64, i64* %RAX
  %207 = add i64 %206, %205
  %208 = load i16, i16* %AX
  %209 = zext i16 %208 to i64
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 6
  store i64 %211, i64* %PC
  %212 = load i64, i64* %PC
  %213 = tail call %struct.Memory* @sub_4004d0___do_global_dtors_aux(%struct.State* %0, i64 %212, %struct.Memory* %2)
  ret %struct.Memory* %213

block_4004b3:                                     ; preds = %block_400490
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 5
  store i64 %215, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %216 = load i64, i64* %RAX
  %217 = load i64, i64* %RAX
  %218 = load i64, i64* %PC
  %219 = add i64 %218, 3
  store i64 %219, i64* %PC
  %220 = and i64 %217, %216
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %221, align 1, !tbaa !2432
  %222 = trunc i64 %220 to i32
  %223 = and i32 %222, 255
  %224 = call i32 @llvm.ctpop.i32(i32 %223) #16
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %227, i8* %228, align 1, !tbaa !2446
  %229 = icmp eq i64 %220, 0
  %230 = zext i1 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %230, i8* %231, align 1, !tbaa !2448
  %232 = lshr i64 %220, 63
  %233 = trunc i64 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %233, i8* %234, align 1, !tbaa !2449
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %235, align 1, !tbaa !2450
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %236, align 1, !tbaa !2447
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 13
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 2
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 2
  store i64 %242, i64* %PC
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %244 = load i8, i8* %243, align 1, !tbaa !2448
  store i8 %244, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %246 = icmp ne i8 %244, 0
  %247 = select i1 %246, i64 %238, i64 %240
  store i64 %247, i64* %245, align 8, !tbaa !2428
  %248 = load i8, i8* %BRANCH_TAKEN
  %249 = icmp eq i8 %248, 1
  br i1 %249, label %block_4004c8, label %block_4004bd

block_4004c8:                                     ; preds = %block_4004c5, %block_4004b3, %block_400490
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400490 ], [ %2, %block_4004b3 ], [ %2, %block_4004c5 ]
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 1
  store i64 %251, i64* %PC
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %253 = load i64, i64* %252, align 8, !tbaa !2428
  %254 = add i64 %253, 8
  %255 = inttoptr i64 %253 to i64*
  %256 = load i64, i64* %255
  store i64 %256, i64* %RBP, align 8, !tbaa !2428
  store i64 %254, i64* %252, align 8, !tbaa !2428
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 1
  store i64 %258, i64* %PC
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %261 = load i64, i64* %260, align 8, !tbaa !2428
  %262 = inttoptr i64 %261 to i64*
  %263 = load i64, i64* %262
  store i64 %263, i64* %259, align 8, !tbaa !2428
  %264 = add i64 %261, 8
  store i64 %264, i64* %260, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4004c5:                                     ; preds = %block_4004bd
  %265 = load i64, i64* %RAX
  %266 = load i32, i32* %EAX
  %267 = zext i32 %266 to i64
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC
  br label %block_4004c8

; <label>:270:                                    ; preds = %block_4004bd
  %271 = load i64, i64* %PC
  %272 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %271, %struct.Memory* %2)
  ret %struct.Memory* %272
}

; Function Attrs: noinline
define %struct.Memory* @sub_400460_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %28 = load i64, i64* %27, align 8, !tbaa !2428
  %29 = add i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %24, i64* %30
  store i64 %29, i64* %27, align 8, !tbaa !2428
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 5
  store i64 %32, i64* %PC
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RAX, align 8, !tbaa !2428
  %33 = load i64, i64* %RAX
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 6
  store i64 %35, i64* %PC
  %36 = sub i64 %33, ptrtoint (%__bss_start_type* @__bss_start to i64)
  %37 = icmp ult i64 %33, ptrtoint (%__bss_start_type* @__bss_start to i64)
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %38, i8* %39, align 1, !tbaa !2432
  %40 = trunc i64 %36 to i32
  %41 = and i32 %40, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41) #16
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = xor i8 %44, 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %45, i8* %46, align 1, !tbaa !2446
  %47 = xor i64 ptrtoint (%__bss_start_type* @__bss_start to i64), %33
  %48 = xor i64 %47, %36
  %49 = lshr i64 %48, 4
  %50 = trunc i64 %49 to i8
  %51 = and i8 %50, 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %51, i8* %52, align 1, !tbaa !2447
  %53 = icmp eq i64 %36, 0
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %54, i8* %55, align 1, !tbaa !2448
  %56 = lshr i64 %36, 63
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %57, i8* %58, align 1, !tbaa !2449
  %59 = lshr i64 %33, 63
  %60 = xor i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), %59
  %61 = xor i64 %56, %59
  %62 = add nuw nsw i64 %61, %60
  %63 = icmp eq i64 %62, 2
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %64, i8* %65, align 1, !tbaa !2450
  %66 = load i64, i64* %RSP
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 3
  store i64 %68, i64* %PC
  store i64 %66, i64* %RBP, align 8, !tbaa !2428
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 25
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 2
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 2
  store i64 %74, i64* %PC
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %76 = load i8, i8* %75, align 1, !tbaa !2448
  store i8 %76, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = icmp ne i8 %76, 0
  %79 = select i1 %78, i64 %70, i64 %72
  store i64 %79, i64* %77, align 8, !tbaa !2428
  %80 = load i8, i8* %BRANCH_TAKEN
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %block_400488, label %block_400471

block_40047b:                                     ; preds = %block_400471
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 1
  store i64 %83, i64* %PC
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %85 = load i64, i64* %84, align 8, !tbaa !2428
  %86 = add i64 %85, 8
  %87 = inttoptr i64 %85 to i64*
  %88 = load i64, i64* %87
  store i64 %88, i64* %RBP, align 8, !tbaa !2428
  store i64 %86, i64* %84, align 8, !tbaa !2428
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 5
  store i64 %90, i64* %PC
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !2428
  %91 = load i64, i64* %RAX
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 2
  store i64 %93, i64* %PC
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %91, i64* %94, align 8, !tbaa !2428
  %95 = load i64, i64* %PC
  switch i64 %95, label %163 [
    i64 4195466, label %block_40048a
    i64 4195459, label %block_400483
  ]

block_400471:                                     ; preds = %block_400460
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 5
  store i64 %97, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %98 = load i64, i64* %RAX
  %99 = load i64, i64* %RAX
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 3
  store i64 %101, i64* %PC
  %102 = and i64 %99, %98
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %103, align 1, !tbaa !2432
  %104 = trunc i64 %102 to i32
  %105 = and i32 %104, 255
  %106 = call i32 @llvm.ctpop.i32(i32 %105) #16
  %107 = trunc i32 %106 to i8
  %108 = and i8 %107, 1
  %109 = xor i8 %108, 1
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %109, i8* %110, align 1, !tbaa !2446
  %111 = icmp eq i64 %102, 0
  %112 = zext i1 %111 to i8
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %112, i8* %113, align 1, !tbaa !2448
  %114 = lshr i64 %102, 63
  %115 = trunc i64 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %115, i8* %116, align 1, !tbaa !2449
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %117, align 1, !tbaa !2450
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %118, align 1, !tbaa !2447
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 15
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 2
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 2
  store i64 %124, i64* %PC
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %126 = load i8, i8* %125, align 1, !tbaa !2448
  store i8 %126, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %128 = icmp ne i8 %126, 0
  %129 = select i1 %128, i64 %120, i64 %122
  store i64 %129, i64* %127, align 8, !tbaa !2428
  %130 = load i8, i8* %BRANCH_TAKEN
  %131 = icmp eq i8 %130, 1
  br i1 %131, label %block_400488, label %block_40047b

block_400488:                                     ; preds = %block_400483, %block_400471, %block_400460
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400460 ], [ %2, %block_400471 ], [ %2, %block_400483 ]
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 1
  store i64 %133, i64* %PC
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %135 = load i64, i64* %134, align 8, !tbaa !2428
  %136 = add i64 %135, 8
  %137 = inttoptr i64 %135 to i64*
  %138 = load i64, i64* %137
  store i64 %138, i64* %RBP, align 8, !tbaa !2428
  store i64 %136, i64* %134, align 8, !tbaa !2428
  %139 = load i64, i64* %PC
  %140 = add i64 %139, 1
  store i64 %140, i64* %PC
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %143 = load i64, i64* %142, align 8, !tbaa !2428
  %144 = inttoptr i64 %143 to i64*
  %145 = load i64, i64* %144
  store i64 %145, i64* %141, align 8, !tbaa !2428
  %146 = add i64 %143, 8
  store i64 %146, i64* %142, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_40048a:                                     ; preds = %block_40047b
  %147 = load i64, i64* %RAX
  %148 = load i64, i64* %RAX
  %149 = add i64 %148, %147
  %150 = load i16, i16* %AX
  %151 = zext i16 %150 to i64
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 6
  store i64 %153, i64* %PC
  %154 = load i64, i64* %PC
  %155 = tail call %struct.Memory* @sub_400490_register_tm_clones(%struct.State* %0, i64 %154, %struct.Memory* %2)
  ret %struct.Memory* %155

block_400483:                                     ; preds = %block_40047b
  %156 = load i64, i64* %RAX
  %157 = load i64, i64* %RAX
  %158 = add i64 %157, %156
  %159 = load i32, i32* %EAX
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 5
  store i64 %162, i64* %PC
  br label %block_400488

; <label>:163:                                    ; preds = %block_40047b
  %164 = load i64, i64* %PC
  %165 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %164, %struct.Memory* %2)
  ret %struct.Memory* %165
}

; Function Attrs: noinline
define %struct.Memory* @sub_400900_salsa(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400900:
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
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
  %27 = load i64, i64* %RBP
  %28 = load i64, i64* %PC
  %29 = add i64 %28, 1
  store i64 %29, i64* %PC
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !2428
  %32 = add i64 %31, -8
  %33 = inttoptr i64 %32 to i64*
  store i64 %27, i64* %33
  store i64 %32, i64* %30, align 8, !tbaa !2428
  %34 = load i64, i64* %RSP
  %35 = load i64, i64* %PC
  %36 = add i64 %35, 3
  store i64 %36, i64* %PC
  store i64 %34, i64* %RBP, align 8, !tbaa !2428
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 8
  store i64 %38, i64* %PC
  %39 = load i32, i32* bitcast (%ptr_type* @ptr to i32*)
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %40, align 1, !tbaa !2432
  %41 = and i32 %39, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41) #16
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = xor i8 %44, 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %45, i8* %46, align 1, !tbaa !2446
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1, !tbaa !2447
  %48 = icmp eq i32 %39, 0
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %49, i8* %50, align 1, !tbaa !2448
  %51 = lshr i32 %39, 31
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %52, i8* %53, align 1, !tbaa !2449
  %54 = lshr i32 %39, 31
  %55 = xor i32 %51, %54
  %56 = add nuw nsw i32 %55, %54
  %57 = icmp eq i32 %56, 2
  %58 = zext i1 %57 to i8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %58, i8* %59, align 1, !tbaa !2450
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 48
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 6
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 6
  store i64 %65, i64* %PC
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %67 = load i8, i8* %66, align 1, !tbaa !2448
  %68 = icmp eq i8 %67, 0
  %69 = zext i1 %68 to i8
  store i8 %69, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %71 = select i1 %68, i64 %61, i64 %63
  store i64 %71, i64* %70, align 8, !tbaa !2428
  %72 = load i8, i8* %BRANCH_TAKEN
  %73 = icmp eq i8 %72, 1
  br i1 %73, label %block_40093c, label %block_400912

block_400912:                                     ; preds = %block_400900
  %74 = load i64, i64* %PC
  %75 = add i64 %74, 10
  store i64 %75, i64* %PC
  store i64 ptrtoint (%outbuf_type* @outbuf to i64), i64* %RDI, align 8, !tbaa !2428
  %76 = load i64, i64* %PC
  %77 = add i64 %76, 10
  store i64 %77, i64* %PC
  store i64 ptrtoint (%STATE_type* @STATE to i64), i64* %RSI, align 8, !tbaa !2428
  %78 = load i64, i64* %PC
  %79 = sub i64 %78, 1046
  %80 = load i64, i64* %PC
  %81 = add i64 %80, 5
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 5
  store i64 %83, i64* %PC
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %85 = load i64, i64* %84, align 8, !tbaa !2428
  %86 = add i64 %85, -8
  %87 = inttoptr i64 %86 to i64*
  store i64 %81, i64* %87
  store i64 %86, i64* %84, align 8, !tbaa !2428
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %79, i64* %88, align 8, !tbaa !2428
  %89 = load i64, i64* %PC
  %90 = call %struct.Memory* @sub_400510_salsa20(%struct.State* %0, i64 %89, %struct.Memory* %2)
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 7
  store i64 %92, i64* %PC
  %93 = load i32, i32* bitcast (%STATE_type* @STATE to i32*)
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %RAX, align 8, !tbaa !2428
  %95 = load i64, i64* %RAX
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 3
  store i64 %97, i64* %PC
  %98 = trunc i64 %95 to i32
  %99 = add i32 1, %98
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %RAX, align 8, !tbaa !2428
  %101 = icmp ult i32 %99, %98
  %102 = icmp ult i32 %99, 1
  %103 = or i1 %101, %102
  %104 = zext i1 %103 to i8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %104, i8* %105, align 1, !tbaa !2432
  %106 = and i32 %99, 255
  %107 = call i32 @llvm.ctpop.i32(i32 %106) #16
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  %110 = xor i8 %109, 1
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %110, i8* %111, align 1, !tbaa !2446
  %112 = xor i64 1, %95
  %113 = trunc i64 %112 to i32
  %114 = xor i32 %113, %99
  %115 = lshr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %117, i8* %118, align 1, !tbaa !2447
  %119 = icmp eq i32 %99, 0
  %120 = zext i1 %119 to i8
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %120, i8* %121, align 1, !tbaa !2448
  %122 = lshr i32 %99, 31
  %123 = trunc i32 %122 to i8
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %123, i8* %124, align 1, !tbaa !2449
  %125 = lshr i32 %98, 31
  %126 = xor i32 %122, %125
  %127 = add nuw nsw i32 %126, %122
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i8
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %129, i8* %130, align 1, !tbaa !2450
  %131 = load i32, i32* %EAX
  %132 = zext i32 %131 to i64
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 7
  store i64 %134, i64* %PC
  store i32 %131, i32* bitcast (%STATE_type* @STATE to i32*)
  br label %block_40093c

block_40093c:                                     ; preds = %block_400912, %block_400900
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400900 ], [ %90, %block_400912 ]
  %135 = load i64, i64* %PC
  %136 = add i64 %135, 7
  store i64 %136, i64* %PC
  %137 = load i32, i32* bitcast (%ptr_type* @ptr to i32*)
  %138 = zext i32 %137 to i64
  store i64 %138, i64* %RAX, align 8, !tbaa !2428
  %139 = load i64, i64* %RAX
  %140 = load i64, i64* %PC
  %141 = add i64 %140, 3
  store i64 %141, i64* %PC
  %142 = trunc i64 %139 to i32
  %143 = add i32 1, %142
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RAX, align 8, !tbaa !2428
  %145 = icmp ult i32 %143, %142
  %146 = icmp ult i32 %143, 1
  %147 = or i1 %145, %146
  %148 = zext i1 %147 to i8
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %148, i8* %149, align 1, !tbaa !2432
  %150 = and i32 %143, 255
  %151 = call i32 @llvm.ctpop.i32(i32 %150) #16
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  %154 = xor i8 %153, 1
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %154, i8* %155, align 1, !tbaa !2446
  %156 = xor i64 1, %139
  %157 = trunc i64 %156 to i32
  %158 = xor i32 %157, %143
  %159 = lshr i32 %158, 4
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %161, i8* %162, align 1, !tbaa !2447
  %163 = icmp eq i32 %143, 0
  %164 = zext i1 %163 to i8
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %164, i8* %165, align 1, !tbaa !2448
  %166 = lshr i32 %143, 31
  %167 = trunc i32 %166 to i8
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %167, i8* %168, align 1, !tbaa !2449
  %169 = lshr i32 %142, 31
  %170 = xor i32 %166, %169
  %171 = add nuw nsw i32 %170, %166
  %172 = icmp eq i32 %171, 2
  %173 = zext i1 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %173, i8* %174, align 1, !tbaa !2450
  %175 = load i64, i64* %RAX
  %176 = load i64, i64* %PC
  %177 = add i64 %176, 3
  store i64 %177, i64* %PC
  %178 = and i64 15, %175
  %179 = trunc i64 %178 to i32
  store i64 %178, i64* %RAX, align 8, !tbaa !2428
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %180, align 1, !tbaa !2432
  %181 = and i32 %179, 255
  %182 = call i32 @llvm.ctpop.i32(i32 %181) #16
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = xor i8 %184, 1
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %185, i8* %186, align 1, !tbaa !2446
  %187 = icmp eq i32 %179, 0
  %188 = zext i1 %187 to i8
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %188, i8* %189, align 1, !tbaa !2448
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %190, align 1, !tbaa !2449
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %191, align 1, !tbaa !2450
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %192, align 1, !tbaa !2447
  %193 = load i32, i32* %EAX
  %194 = zext i32 %193 to i64
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 7
  store i64 %196, i64* %PC
  store i32 %193, i32* bitcast (%ptr_type* @ptr to i32*)
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 7
  store i64 %198, i64* %PC
  %199 = load i32, i32* bitcast (%ptr_type* @ptr to i32*)
  %200 = zext i32 %199 to i64
  store i64 %200, i64* %RAX, align 8, !tbaa !2428
  %201 = load i32, i32* %EAX
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 2
  store i64 %204, i64* %PC
  %205 = and i64 %202, 4294967295
  store i64 %205, i64* %RCX, align 8, !tbaa !2428
  %206 = load i64, i64* %RCX
  %207 = mul i64 %206, 4
  %208 = add i64 %207, ptrtoint (%outbuf_type* @outbuf to i64)
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 7
  store i64 %210, i64* %PC
  %211 = inttoptr i64 %208 to i32*
  %212 = load i32, i32* %211
  %213 = zext i32 %212 to i64
  store i64 %213, i64* %RAX, align 8, !tbaa !2428
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 1
  store i64 %215, i64* %PC
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %217 = load i64, i64* %216, align 8, !tbaa !2428
  %218 = add i64 %217, 8
  %219 = inttoptr i64 %217 to i64*
  %220 = load i64, i64* %219
  store i64 %220, i64* %RBP, align 8, !tbaa !2428
  store i64 %218, i64* %216, align 8, !tbaa !2428
  %221 = load i64, i64* %PC
  %222 = add i64 %221, 1
  store i64 %222, i64* %PC
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %225 = load i64, i64* %224, align 8, !tbaa !2428
  %226 = inttoptr i64 %225 to i64*
  %227 = load i64, i64* %226
  store i64 %227, i64* %223, align 8, !tbaa !2428
  %228 = add i64 %225, 8
  store i64 %228, i64* %224, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400420__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400420:
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
  store i64 %43, i64* %RBP, align 8, !tbaa !2428
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %44, align 1, !tbaa !2432
  %45 = and i32 %42, 255
  %46 = call i32 @llvm.ctpop.i32(i32 %45) #16
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = xor i8 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %49, i8* %50, align 1, !tbaa !2446
  %51 = icmp eq i32 %42, 0
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %52, i8* %53, align 1, !tbaa !2448
  %54 = lshr i32 %42, 31
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %55, i8* %56, align 1, !tbaa !2449
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %57, align 1, !tbaa !2450
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %58, align 1, !tbaa !2447
  %59 = load i64, i64* %RDX
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 3
  store i64 %61, i64* %PC
  store i64 %59, i64* %R9, align 8, !tbaa !2428
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8, !tbaa !2428
  %66 = add i64 %65, 8
  %67 = inttoptr i64 %65 to i64*
  %68 = load i64, i64* %67
  store i64 %68, i64* %RSI, align 8, !tbaa !2428
  store i64 %66, i64* %64, align 8, !tbaa !2428
  %69 = load i64, i64* %RSP
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 3
  store i64 %71, i64* %PC
  store i64 %69, i64* %RDX, align 8, !tbaa !2428
  %72 = load i64, i64* %RSP
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC
  %75 = and i64 -16, %72
  store i64 %75, i64* %RSP, align 8, !tbaa !2428
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %76, align 1, !tbaa !2432
  %77 = trunc i64 %75 to i32
  %78 = and i32 %77, 255
  %79 = call i32 @llvm.ctpop.i32(i32 %78) #16
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = xor i8 %81, 1
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %82, i8* %83, align 1, !tbaa !2446
  %84 = icmp eq i64 %75, 0
  %85 = zext i1 %84 to i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %85, i8* %86, align 1, !tbaa !2448
  %87 = lshr i64 %75, 63
  %88 = trunc i64 %87 to i8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %88, i8* %89, align 1, !tbaa !2449
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %90, align 1, !tbaa !2450
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %91, align 1, !tbaa !2447
  %92 = load i64, i64* %RAX
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 1
  store i64 %94, i64* %PC
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %96 = load i64, i64* %95, align 8, !tbaa !2428
  %97 = add i64 %96, -8
  %98 = inttoptr i64 %97 to i64*
  store i64 %92, i64* %98
  store i64 %97, i64* %95, align 8, !tbaa !2428
  %99 = load i64, i64* %RSP
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 1
  store i64 %101, i64* %PC
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %103 = load i64, i64* %102, align 8, !tbaa !2428
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %99, i64* %105
  store i64 %104, i64* %102, align 8, !tbaa !2428
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 7
  store i64 %107, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_400ac0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_400a50___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 7
  store i64 %111, i64* %PC
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !2428
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 6
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 6
  store i64 %115, i64* %PC
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %117 = load i64, i64* %116, align 8, !tbaa !2428
  %118 = add i64 %117, -8
  %119 = inttoptr i64 %118 to i64*
  store i64 %113, i64* %119
  store i64 %118, i64* %116, align 8, !tbaa !2428
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %121 = load i64, i64* getelementptr inbounds (%seg_600ff0__got_type, %seg_600ff0__got_type* @seg_600ff0__got, i32 0, i32 0)
  store i64 %121, i64* %120, align 8, !tbaa !2428
  %122 = load i64, i64* %PC
  %123 = call %struct.Memory* @ext_6010d8___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
define %struct.Memory* @sub_400450__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400450:
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
  %10 = load i64, i64* %9, align 8, !tbaa !2428
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11
  store i64 %12, i64* %8, align 8, !tbaa !2428
  %13 = add i64 %10, 8
  store i64 %13, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4003e0__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4003e0:
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
  store i64 %15, i64* %RSP, align 8, !tbaa !2428
  %16 = icmp ult i64 %12, 8
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1, !tbaa !2432
  %19 = trunc i64 %15 to i32
  %20 = and i32 %19, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20) #16
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1, !tbaa !2446
  %26 = xor i64 8, %12
  %27 = xor i64 %26, %15
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1, !tbaa !2447
  %32 = icmp eq i64 %15, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1, !tbaa !2448
  %35 = lshr i64 %15, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1, !tbaa !2449
  %38 = lshr i64 %12, 63
  %39 = xor i64 %35, %38
  %40 = add nuw nsw i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1, !tbaa !2450
  %44 = load i64, i64* %PC
  %45 = add i64 %44, 7
  store i64 %45, i64* %PC
  %46 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_600ff0__got_type* @seg_600ff0__got to i64), i64 8) to i64*)
  store i64 %46, i64* %RAX, align 8, !tbaa !2428
  %47 = load i64, i64* %RAX
  %48 = load i64, i64* %RAX
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 3
  store i64 %50, i64* %PC
  %51 = and i64 %48, %47
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %52, align 1, !tbaa !2432
  %53 = trunc i64 %51 to i32
  %54 = and i32 %53, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54) #16
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %58, i8* %59, align 1, !tbaa !2446
  %60 = icmp eq i64 %51, 0
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %61, i8* %62, align 1, !tbaa !2448
  %63 = lshr i64 %51, 63
  %64 = trunc i64 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %64, i8* %65, align 1, !tbaa !2449
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %66, align 1, !tbaa !2450
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %67, align 1, !tbaa !2447
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 4
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 2
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 2
  store i64 %73, i64* %PC
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %75 = load i8, i8* %74, align 1, !tbaa !2448
  store i8 %75, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %77 = icmp ne i8 %75, 0
  %78 = select i1 %77, i64 %69, i64 %71
  store i64 %78, i64* %76, align 8, !tbaa !2428
  %79 = load i8, i8* %BRANCH_TAKEN
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %block_4003f2, label %block_4003f0

block_4003f0:                                     ; preds = %block_4003e0
  %81 = load i64, i64* %RAX
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 2
  %84 = load i64, i64* %PC
  %85 = add i64 %84, 2
  store i64 %85, i64* %PC
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %87 = load i64, i64* %86, align 8, !tbaa !2428
  %88 = add i64 %87, -8
  %89 = inttoptr i64 %88 to i64*
  store i64 %83, i64* %89
  store i64 %88, i64* %86, align 8, !tbaa !2428
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %81, i64* %90, align 8, !tbaa !2428
  %91 = load i64, i64* %PC
  %92 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %91, %struct.Memory* %2)
  br label %block_4003f2

block_4003f2:                                     ; preds = %block_4003f0, %block_4003e0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4003e0 ], [ %92, %block_4003f0 ]
  %93 = load i64, i64* %RSP
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC
  %96 = add i64 8, %93
  store i64 %96, i64* %RSP, align 8, !tbaa !2428
  %97 = icmp ult i64 %96, %93
  %98 = icmp ult i64 %96, 8
  %99 = or i1 %97, %98
  %100 = zext i1 %99 to i8
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %100, i8* %101, align 1, !tbaa !2432
  %102 = trunc i64 %96 to i32
  %103 = and i32 %102, 255
  %104 = call i32 @llvm.ctpop.i32(i32 %103) #16
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %107, i8* %108, align 1, !tbaa !2446
  %109 = xor i64 8, %93
  %110 = xor i64 %109, %96
  %111 = lshr i64 %110, 4
  %112 = trunc i64 %111 to i8
  %113 = and i8 %112, 1
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %113, i8* %114, align 1, !tbaa !2447
  %115 = icmp eq i64 %96, 0
  %116 = zext i1 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %116, i8* %117, align 1, !tbaa !2448
  %118 = lshr i64 %96, 63
  %119 = trunc i64 %118 to i8
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %119, i8* %120, align 1, !tbaa !2449
  %121 = lshr i64 %93, 63
  %122 = xor i64 %118, %121
  %123 = add nuw nsw i64 %122, %118
  %124 = icmp eq i64 %123, 2
  %125 = zext i1 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %125, i8* %126, align 1, !tbaa !2450
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 1
  store i64 %128, i64* %PC
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %131 = load i64, i64* %130, align 8, !tbaa !2428
  %132 = inttoptr i64 %131 to i64*
  %133 = load i64, i64* %132
  store i64 %133, i64* %129, align 8, !tbaa !2428
  %134 = add i64 %131, 8
  store i64 %134, i64* %130, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400500_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400500:
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
  %16 = load i64, i64* %15, align 8, !tbaa !2428
  %17 = add i64 %16, -8
  %18 = inttoptr i64 %17 to i64*
  store i64 %12, i64* %18
  store i64 %17, i64* %15, align 8, !tbaa !2428
  %19 = load i64, i64* %RSP
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  store i64 %19, i64* %RBP, align 8, !tbaa !2428
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 1
  store i64 %23, i64* %PC
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %25 = load i64, i64* %24, align 8, !tbaa !2428
  %26 = add i64 %25, 8
  %27 = inttoptr i64 %25 to i64*
  %28 = load i64, i64* %27
  store i64 %28, i64* %RBP, align 8, !tbaa !2428
  store i64 %26, i64* %24, align 8, !tbaa !2428
  %29 = load i64, i64* %PC
  %30 = sub i64 %29, 117
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 2
  store i64 %32, i64* %PC
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %30, i64* %33, align 8, !tbaa !2428
  %34 = load i64, i64* %PC
  %35 = tail call %struct.Memory* @sub_400490_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ac0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ac0:
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
  %10 = load i64, i64* %9, align 8, !tbaa !2428
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11
  store i64 %12, i64* %8, align 8, !tbaa !2428
  %13 = add i64 %10, 8
  store i64 %13, i64* %9, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400510_salsa20(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %EDX = bitcast %union.anon* %14 to i32*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %ESI = bitcast %union.anon* %17 to i32*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RAX = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RCX = bitcast %union.anon* %23 to i64*
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
  %39 = load i64, i64* %RBP
  %40 = load i64, i64* %PC
  %41 = add i64 %40, 1
  store i64 %41, i64* %PC
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %43 = load i64, i64* %42, align 8, !tbaa !2428
  %44 = add i64 %43, -8
  %45 = inttoptr i64 %44 to i64*
  store i64 %39, i64* %45
  store i64 %44, i64* %42, align 8, !tbaa !2428
  %46 = load i64, i64* %RSP
  %47 = load i64, i64* %PC
  %48 = add i64 %47, 3
  store i64 %48, i64* %PC
  store i64 %46, i64* %RBP, align 8, !tbaa !2428
  %49 = load i64, i64* %RBP
  %50 = sub i64 %49, 8
  %51 = load i64, i64* %RDI
  %52 = load i64, i64* %PC
  %53 = add i64 %52, 4
  store i64 %53, i64* %PC
  %54 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %54
  %55 = load i64, i64* %RBP
  %56 = sub i64 %55, 16
  %57 = load i64, i64* %RSI
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 4
  store i64 %59, i64* %PC
  %60 = inttoptr i64 %56 to i64*
  store i64 %57, i64* %60
  %61 = load i64, i64* %RBP
  %62 = sub i64 %61, 20
  %63 = load i64, i64* %PC
  %64 = add i64 %63, 7
  store i64 %64, i64* %PC
  %65 = inttoptr i64 %62 to i32*
  store i32 0, i32* %65
  br label %block_400523

block_4008b6:                                     ; preds = %block_4008c0, %block_4008af
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_4008af ], [ %MEMORY.0, %block_4008c0 ]
  %66 = load i64, i64* %RBP
  %67 = sub i64 %66, 20
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 4
  store i64 %69, i64* %PC
  %70 = inttoptr i64 %67 to i32*
  %71 = load i32, i32* %70
  %72 = sub i32 %71, 16
  %73 = icmp ult i32 %71, 16
  %74 = zext i1 %73 to i8
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %74, i8* %75, align 1, !tbaa !2432
  %76 = and i32 %72, 255
  %77 = call i32 @llvm.ctpop.i32(i32 %76) #16
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  %80 = xor i8 %79, 1
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %80, i8* %81, align 1, !tbaa !2446
  %82 = xor i32 %71, 16
  %83 = xor i32 %82, %72
  %84 = lshr i32 %83, 4
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %86, i8* %87, align 1, !tbaa !2447
  %88 = icmp eq i32 %72, 0
  %89 = zext i1 %88 to i8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %89, i8* %90, align 1, !tbaa !2448
  %91 = lshr i32 %72, 31
  %92 = trunc i32 %91 to i8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %92, i8* %93, align 1, !tbaa !2449
  %94 = lshr i32 %71, 31
  %95 = xor i32 %91, %94
  %96 = add nuw nsw i32 %95, %94
  %97 = icmp eq i32 %96, 2
  %98 = zext i1 %97 to i8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %98, i8* %99, align 1, !tbaa !2450
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 53
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 6
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 6
  store i64 %105, i64* %PC
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %107 = load i8, i8* %106, align 1, !tbaa !2432
  %108 = icmp eq i8 %107, 0
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %111 = select i1 %108, i64 %101, i64 %103
  store i64 %111, i64* %110, align 8, !tbaa !2428
  %112 = load i8, i8* %BRANCH_TAKEN
  %113 = icmp eq i8 %112, 1
  br i1 %113, label %block_4008ef, label %block_4008c0

block_400550:                                     ; preds = %block_400523
  %114 = sub i64 %214, 20
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 7
  store i64 %116, i64* %PC
  %117 = inttoptr i64 %114 to i32*
  store i32 20, i32* %117
  br label %block_400557

block_4008af:                                     ; preds = %block_400557
  %118 = sub i64 %165, 20
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 7
  store i64 %120, i64* %PC
  %121 = inttoptr i64 %118 to i32*
  store i32 0, i32* %121
  br label %block_4008b6

block_400557:                                     ; preds = %block_400561, %block_400550
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.2, %block_400550 ], [ %MEMORY.1, %block_400561 ]
  %122 = load i64, i64* %RBP
  %123 = sub i64 %122, 20
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 4
  store i64 %125, i64* %PC
  %126 = inttoptr i64 %123 to i32*
  %127 = load i32, i32* %126
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %128, align 1, !tbaa !2432
  %129 = and i32 %127, 255
  %130 = call i32 @llvm.ctpop.i32(i32 %129) #16
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %133, i8* %134, align 1, !tbaa !2446
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %135, align 1, !tbaa !2447
  %136 = icmp eq i32 %127, 0
  %137 = zext i1 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %137, i8* %138, align 1, !tbaa !2448
  %139 = lshr i32 %127, 31
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %140, i8* %141, align 1, !tbaa !2449
  %142 = lshr i32 %127, 31
  %143 = xor i32 %139, %142
  %144 = add nuw nsw i32 %143, %142
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %146, i8* %147, align 1, !tbaa !2450
  %148 = load i64, i64* %PC
  %149 = add i64 %148, 852
  %150 = load i64, i64* %PC
  %151 = add i64 %150, 6
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 6
  store i64 %153, i64* %PC
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %155 = load i8, i8* %154, align 1, !tbaa !2432
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %157 = load i8, i8* %156, align 1, !tbaa !2448
  %158 = or i8 %157, %155
  %159 = icmp ne i8 %158, 0
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %162 = select i1 %159, i64 %149, i64 %151
  store i64 %162, i64* %161, align 8, !tbaa !2428
  %163 = load i8, i8* %BRANCH_TAKEN
  %164 = icmp eq i8 %163, 1
  %165 = load i64, i64* %RBP
  br i1 %164, label %block_4008af, label %block_400561

block_400523:                                     ; preds = %block_40052d, %block_400510
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_400510 ], [ %MEMORY.2, %block_40052d ]
  %166 = load i64, i64* %RBP
  %167 = sub i64 %166, 20
  %168 = load i64, i64* %PC
  %169 = add i64 %168, 4
  store i64 %169, i64* %PC
  %170 = inttoptr i64 %167 to i32*
  %171 = load i32, i32* %170
  %172 = sub i32 %171, 16
  %173 = icmp ult i32 %171, 16
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %174, i8* %175, align 1, !tbaa !2432
  %176 = and i32 %172, 255
  %177 = call i32 @llvm.ctpop.i32(i32 %176) #16
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  %180 = xor i8 %179, 1
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %180, i8* %181, align 1, !tbaa !2446
  %182 = xor i32 %171, 16
  %183 = xor i32 %182, %172
  %184 = lshr i32 %183, 4
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %186, i8* %187, align 1, !tbaa !2447
  %188 = icmp eq i32 %172, 0
  %189 = zext i1 %188 to i8
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %189, i8* %190, align 1, !tbaa !2448
  %191 = lshr i32 %172, 31
  %192 = trunc i32 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %192, i8* %193, align 1, !tbaa !2449
  %194 = lshr i32 %171, 31
  %195 = xor i32 %191, %194
  %196 = add nuw nsw i32 %195, %194
  %197 = icmp eq i32 %196, 2
  %198 = zext i1 %197 to i8
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %198, i8* %199, align 1, !tbaa !2450
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 41
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 6
  %204 = load i64, i64* %PC
  %205 = add i64 %204, 6
  store i64 %205, i64* %PC
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %207 = load i8, i8* %206, align 1, !tbaa !2432
  %208 = icmp eq i8 %207, 0
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %211 = select i1 %208, i64 %201, i64 %203
  store i64 %211, i64* %210, align 8, !tbaa !2428
  %212 = load i8, i8* %BRANCH_TAKEN
  %213 = icmp eq i8 %212, 1
  %214 = load i64, i64* %RBP
  br i1 %213, label %block_400550, label %block_40052d

block_4008ef:                                     ; preds = %block_4008b6
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 1
  store i64 %216, i64* %PC
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %218 = load i64, i64* %217, align 8, !tbaa !2428
  %219 = add i64 %218, 8
  %220 = inttoptr i64 %218 to i64*
  %221 = load i64, i64* %220
  store i64 %221, i64* %RBP, align 8, !tbaa !2428
  store i64 %219, i64* %217, align 8, !tbaa !2428
  %222 = load i64, i64* %PC
  %223 = add i64 %222, 1
  store i64 %223, i64* %PC
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %226 = load i64, i64* %225, align 8, !tbaa !2428
  %227 = inttoptr i64 %226 to i64*
  %228 = load i64, i64* %227
  store i64 %228, i64* %224, align 8, !tbaa !2428
  %229 = add i64 %226, 8
  store i64 %229, i64* %225, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_40052d:                                     ; preds = %block_400523
  %230 = sub i64 %214, 16
  %231 = load i64, i64* %PC
  %232 = add i64 %231, 4
  store i64 %232, i64* %PC
  %233 = inttoptr i64 %230 to i64*
  %234 = load i64, i64* %233
  store i64 %234, i64* %RAX, align 8, !tbaa !2428
  %235 = load i64, i64* %RBP
  %236 = sub i64 %235, 20
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 3
  store i64 %238, i64* %PC
  %239 = inttoptr i64 %236 to i32*
  %240 = load i32, i32* %239
  %241 = zext i32 %240 to i64
  store i64 %241, i64* %RCX, align 8, !tbaa !2428
  %242 = load i32, i32* %ECX
  %243 = zext i32 %242 to i64
  %244 = load i64, i64* %PC
  %245 = add i64 %244, 2
  store i64 %245, i64* %PC
  %246 = and i64 %243, 4294967295
  store i64 %246, i64* %RDX, align 8, !tbaa !2428
  %247 = load i64, i64* %RAX
  %248 = load i64, i64* %RDX
  %249 = mul i64 %248, 4
  %250 = add i64 %249, %247
  %251 = load i64, i64* %PC
  %252 = add i64 %251, 3
  store i64 %252, i64* %PC
  %253 = inttoptr i64 %250 to i32*
  %254 = load i32, i32* %253
  %255 = zext i32 %254 to i64
  store i64 %255, i64* %RCX, align 8, !tbaa !2428
  %256 = load i64, i64* %RBP
  %257 = sub i64 %256, 20
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 3
  store i64 %259, i64* %PC
  %260 = inttoptr i64 %257 to i32*
  %261 = load i32, i32* %260
  %262 = zext i32 %261 to i64
  store i64 %262, i64* %RSI, align 8, !tbaa !2428
  %263 = load i32, i32* %ESI
  %264 = zext i32 %263 to i64
  %265 = load i64, i64* %PC
  %266 = add i64 %265, 2
  store i64 %266, i64* %PC
  %267 = and i64 %264, 4294967295
  store i64 %267, i64* %RAX, align 8, !tbaa !2428
  %268 = load i64, i64* %RBP
  %269 = load i64, i64* %RAX
  %270 = mul i64 %269, 4
  %271 = add i64 %268, -96
  %272 = add i64 %271, %270
  %273 = load i32, i32* %ECX
  %274 = zext i32 %273 to i64
  %275 = load i64, i64* %PC
  %276 = add i64 %275, 4
  store i64 %276, i64* %PC
  %277 = inttoptr i64 %272 to i32*
  store i32 %273, i32* %277
  %278 = load i64, i64* %RBP
  %279 = sub i64 %278, 20
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 3
  store i64 %281, i64* %PC
  %282 = inttoptr i64 %279 to i32*
  %283 = load i32, i32* %282
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RAX, align 8, !tbaa !2428
  %285 = load i64, i64* %RAX
  %286 = load i64, i64* %PC
  %287 = add i64 %286, 3
  store i64 %287, i64* %PC
  %288 = trunc i64 %285 to i32
  %289 = add i32 1, %288
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RAX, align 8, !tbaa !2428
  %291 = icmp ult i32 %289, %288
  %292 = icmp ult i32 %289, 1
  %293 = or i1 %291, %292
  %294 = zext i1 %293 to i8
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %294, i8* %295, align 1, !tbaa !2432
  %296 = and i32 %289, 255
  %297 = call i32 @llvm.ctpop.i32(i32 %296) #16
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %300, i8* %301, align 1, !tbaa !2446
  %302 = xor i64 1, %285
  %303 = trunc i64 %302 to i32
  %304 = xor i32 %303, %289
  %305 = lshr i32 %304, 4
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %307, i8* %308, align 1, !tbaa !2447
  %309 = icmp eq i32 %289, 0
  %310 = zext i1 %309 to i8
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %310, i8* %311, align 1, !tbaa !2448
  %312 = lshr i32 %289, 31
  %313 = trunc i32 %312 to i8
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %313, i8* %314, align 1, !tbaa !2449
  %315 = lshr i32 %288, 31
  %316 = xor i32 %312, %315
  %317 = add nuw nsw i32 %316, %312
  %318 = icmp eq i32 %317, 2
  %319 = zext i1 %318 to i8
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %319, i8* %320, align 1, !tbaa !2450
  %321 = load i64, i64* %RBP
  %322 = sub i64 %321, 20
  %323 = load i32, i32* %EAX
  %324 = zext i32 %323 to i64
  %325 = load i64, i64* %PC
  %326 = add i64 %325, 3
  store i64 %326, i64* %PC
  %327 = inttoptr i64 %322 to i32*
  store i32 %323, i32* %327
  %328 = load i64, i64* %PC
  %329 = sub i64 %328, 40
  %330 = load i64, i64* %PC
  %331 = add i64 %330, 5
  store i64 %331, i64* %PC
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %329, i64* %332, align 8, !tbaa !2428
  br label %block_400523

block_400561:                                     ; preds = %block_400557
  %333 = sub i64 %165, 96
  %334 = load i64, i64* %PC
  %335 = add i64 %334, 3
  store i64 %335, i64* %PC
  %336 = inttoptr i64 %333 to i32*
  %337 = load i32, i32* %336
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %RAX, align 8, !tbaa !2428
  %339 = load i64, i64* %RAX
  %340 = load i64, i64* %RBP
  %341 = sub i64 %340, 48
  %342 = load i64, i64* %PC
  %343 = add i64 %342, 3
  store i64 %343, i64* %PC
  %344 = trunc i64 %339 to i32
  %345 = inttoptr i64 %341 to i32*
  %346 = load i32, i32* %345
  %347 = add i32 %346, %344
  %348 = zext i32 %347 to i64
  store i64 %348, i64* %RAX, align 8, !tbaa !2428
  %349 = icmp ult i32 %347, %344
  %350 = icmp ult i32 %347, %346
  %351 = or i1 %349, %350
  %352 = zext i1 %351 to i8
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %352, i8* %353, align 1, !tbaa !2432
  %354 = and i32 %347, 255
  %355 = call i32 @llvm.ctpop.i32(i32 %354) #16
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %358, i8* %359, align 1, !tbaa !2446
  %360 = xor i32 %346, %344
  %361 = xor i32 %360, %347
  %362 = lshr i32 %361, 4
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %364, i8* %365, align 1, !tbaa !2447
  %366 = icmp eq i32 %347, 0
  %367 = zext i1 %366 to i8
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %367, i8* %368, align 1, !tbaa !2448
  %369 = lshr i32 %347, 31
  %370 = trunc i32 %369 to i8
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %370, i8* %371, align 1, !tbaa !2449
  %372 = lshr i32 %344, 31
  %373 = lshr i32 %346, 31
  %374 = xor i32 %369, %372
  %375 = xor i32 %369, %373
  %376 = add nuw nsw i32 %374, %375
  %377 = icmp eq i32 %376, 2
  %378 = zext i1 %377 to i8
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %378, i8* %379, align 1, !tbaa !2450
  %380 = load i64, i64* %RAX
  %381 = load i64, i64* %PC
  %382 = add i64 %381, 3
  store i64 %382, i64* %PC
  %383 = and i64 %380, 4294967295
  %384 = shl i64 %383, 6
  %385 = trunc i64 %384 to i32
  %386 = icmp slt i32 %385, 0
  %387 = shl i32 %385, 1
  %388 = zext i32 %387 to i64
  store i64 %388, i64* %RAX, align 8, !tbaa !2428
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %390 = zext i1 %386 to i8
  store i8 %390, i8* %389, align 1, !tbaa !2451
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %392 = and i32 %387, 254
  %393 = call i32 @llvm.ctpop.i32(i32 %392) #16
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  store i8 %396, i8* %391, align 1, !tbaa !2451
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %397, align 1, !tbaa !2451
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %399 = icmp eq i32 %387, 0
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %398, align 1, !tbaa !2451
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %402 = lshr i32 %387, 31
  %403 = trunc i32 %402 to i8
  store i8 %403, i8* %401, align 1, !tbaa !2451
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %404, align 1, !tbaa !2451
  %405 = load i64, i64* %RBP
  %406 = sub i64 %405, 96
  %407 = load i64, i64* %PC
  %408 = add i64 %407, 3
  store i64 %408, i64* %PC
  %409 = inttoptr i64 %406 to i32*
  %410 = load i32, i32* %409
  %411 = zext i32 %410 to i64
  store i64 %411, i64* %RCX, align 8, !tbaa !2428
  %412 = load i64, i64* %RCX
  %413 = load i64, i64* %RBP
  %414 = sub i64 %413, 48
  %415 = load i64, i64* %PC
  %416 = add i64 %415, 3
  store i64 %416, i64* %PC
  %417 = trunc i64 %412 to i32
  %418 = inttoptr i64 %414 to i32*
  %419 = load i32, i32* %418
  %420 = add i32 %419, %417
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %RCX, align 8, !tbaa !2428
  %422 = icmp ult i32 %420, %417
  %423 = icmp ult i32 %420, %419
  %424 = or i1 %422, %423
  %425 = zext i1 %424 to i8
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %425, i8* %426, align 1, !tbaa !2432
  %427 = and i32 %420, 255
  %428 = call i32 @llvm.ctpop.i32(i32 %427) #16
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %431, i8* %432, align 1, !tbaa !2446
  %433 = xor i32 %419, %417
  %434 = xor i32 %433, %420
  %435 = lshr i32 %434, 4
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %437, i8* %438, align 1, !tbaa !2447
  %439 = icmp eq i32 %420, 0
  %440 = zext i1 %439 to i8
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %440, i8* %441, align 1, !tbaa !2448
  %442 = lshr i32 %420, 31
  %443 = trunc i32 %442 to i8
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %443, i8* %444, align 1, !tbaa !2449
  %445 = lshr i32 %417, 31
  %446 = lshr i32 %419, 31
  %447 = xor i32 %442, %445
  %448 = xor i32 %442, %446
  %449 = add nuw nsw i32 %447, %448
  %450 = icmp eq i32 %449, 2
  %451 = zext i1 %450 to i8
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %451, i8* %452, align 1, !tbaa !2450
  %453 = load i64, i64* %RCX
  %454 = load i64, i64* %PC
  %455 = add i64 %454, 3
  store i64 %455, i64* %PC
  %456 = and i64 %453, 4294967295
  %457 = lshr i64 %456, 24
  %458 = trunc i64 %457 to i8
  %459 = and i8 %458, 1
  %460 = lshr i64 %457, 1
  %461 = trunc i64 %460 to i32
  %462 = and i32 %461, 2147483647
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RCX, align 8, !tbaa !2428
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %459, i8* %464, align 1, !tbaa !2451
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %466 = and i32 %461, 255
  %467 = call i32 @llvm.ctpop.i32(i32 %466) #16
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  store i8 %470, i8* %465, align 1, !tbaa !2451
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %471, align 1, !tbaa !2451
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %473 = icmp eq i32 %462, 0
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %472, align 1, !tbaa !2451
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %475, align 1, !tbaa !2451
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %476, align 1, !tbaa !2451
  %477 = load i64, i64* %RAX
  %478 = load i32, i32* %ECX
  %479 = zext i32 %478 to i64
  %480 = load i64, i64* %PC
  %481 = add i64 %480, 2
  store i64 %481, i64* %PC
  %482 = or i64 %479, %477
  %483 = trunc i64 %482 to i32
  %484 = and i64 %482, 4294967295
  store i64 %484, i64* %RAX, align 8, !tbaa !2428
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %485, align 1, !tbaa !2432
  %486 = and i32 %483, 255
  %487 = call i32 @llvm.ctpop.i32(i32 %486) #16
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %490, i8* %491, align 1, !tbaa !2446
  %492 = icmp eq i32 %483, 0
  %493 = zext i1 %492 to i8
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %493, i8* %494, align 1, !tbaa !2448
  %495 = lshr i32 %483, 31
  %496 = trunc i32 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %496, i8* %497, align 1, !tbaa !2449
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %498, align 1, !tbaa !2450
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %499, align 1, !tbaa !2447
  %500 = load i64, i64* %RAX
  %501 = load i64, i64* %RBP
  %502 = sub i64 %501, 80
  %503 = load i64, i64* %PC
  %504 = add i64 %503, 3
  store i64 %504, i64* %PC
  %505 = trunc i64 %500 to i32
  %506 = inttoptr i64 %502 to i32*
  %507 = load i32, i32* %506
  %508 = xor i32 %507, %505
  %509 = zext i32 %508 to i64
  store i64 %509, i64* %RAX, align 8, !tbaa !2428
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %510, align 1, !tbaa !2432
  %511 = and i32 %508, 255
  %512 = call i32 @llvm.ctpop.i32(i32 %511) #16
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  %515 = xor i8 %514, 1
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %515, i8* %516, align 1, !tbaa !2446
  %517 = icmp eq i32 %508, 0
  %518 = zext i1 %517 to i8
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %518, i8* %519, align 1, !tbaa !2448
  %520 = lshr i32 %508, 31
  %521 = trunc i32 %520 to i8
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %521, i8* %522, align 1, !tbaa !2449
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %523, align 1, !tbaa !2450
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %524, align 1, !tbaa !2447
  %525 = load i64, i64* %RBP
  %526 = sub i64 %525, 80
  %527 = load i32, i32* %EAX
  %528 = zext i32 %527 to i64
  %529 = load i64, i64* %PC
  %530 = add i64 %529, 3
  store i64 %530, i64* %PC
  %531 = inttoptr i64 %526 to i32*
  store i32 %527, i32* %531
  %532 = load i64, i64* %RBP
  %533 = sub i64 %532, 80
  %534 = load i64, i64* %PC
  %535 = add i64 %534, 3
  store i64 %535, i64* %PC
  %536 = inttoptr i64 %533 to i32*
  %537 = load i32, i32* %536
  %538 = zext i32 %537 to i64
  store i64 %538, i64* %RAX, align 8, !tbaa !2428
  %539 = load i64, i64* %RAX
  %540 = load i64, i64* %RBP
  %541 = sub i64 %540, 96
  %542 = load i64, i64* %PC
  %543 = add i64 %542, 3
  store i64 %543, i64* %PC
  %544 = trunc i64 %539 to i32
  %545 = inttoptr i64 %541 to i32*
  %546 = load i32, i32* %545
  %547 = add i32 %546, %544
  %548 = zext i32 %547 to i64
  store i64 %548, i64* %RAX, align 8, !tbaa !2428
  %549 = icmp ult i32 %547, %544
  %550 = icmp ult i32 %547, %546
  %551 = or i1 %549, %550
  %552 = zext i1 %551 to i8
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %552, i8* %553, align 1, !tbaa !2432
  %554 = and i32 %547, 255
  %555 = call i32 @llvm.ctpop.i32(i32 %554) #16
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %558, i8* %559, align 1, !tbaa !2446
  %560 = xor i32 %546, %544
  %561 = xor i32 %560, %547
  %562 = lshr i32 %561, 4
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %564, i8* %565, align 1, !tbaa !2447
  %566 = icmp eq i32 %547, 0
  %567 = zext i1 %566 to i8
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %567, i8* %568, align 1, !tbaa !2448
  %569 = lshr i32 %547, 31
  %570 = trunc i32 %569 to i8
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %570, i8* %571, align 1, !tbaa !2449
  %572 = lshr i32 %544, 31
  %573 = lshr i32 %546, 31
  %574 = xor i32 %569, %572
  %575 = xor i32 %569, %573
  %576 = add nuw nsw i32 %574, %575
  %577 = icmp eq i32 %576, 2
  %578 = zext i1 %577 to i8
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %578, i8* %579, align 1, !tbaa !2450
  %580 = load i64, i64* %RAX
  %581 = load i64, i64* %PC
  %582 = add i64 %581, 3
  store i64 %582, i64* %PC
  %583 = and i64 %580, 4294967295
  %584 = shl i64 %583, 8
  %585 = trunc i64 %584 to i32
  %586 = icmp slt i32 %585, 0
  %587 = shl i32 %585, 1
  %588 = zext i32 %587 to i64
  store i64 %588, i64* %RAX, align 8, !tbaa !2428
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %590 = zext i1 %586 to i8
  store i8 %590, i8* %589, align 1, !tbaa !2451
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %591, align 1, !tbaa !2451
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %592, align 1, !tbaa !2451
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %594 = icmp eq i32 %587, 0
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %593, align 1, !tbaa !2451
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %597 = lshr i32 %587, 31
  %598 = trunc i32 %597 to i8
  store i8 %598, i8* %596, align 1, !tbaa !2451
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %599, align 1, !tbaa !2451
  %600 = load i64, i64* %RBP
  %601 = sub i64 %600, 80
  %602 = load i64, i64* %PC
  %603 = add i64 %602, 3
  store i64 %603, i64* %PC
  %604 = inttoptr i64 %601 to i32*
  %605 = load i32, i32* %604
  %606 = zext i32 %605 to i64
  store i64 %606, i64* %RCX, align 8, !tbaa !2428
  %607 = load i64, i64* %RCX
  %608 = load i64, i64* %RBP
  %609 = sub i64 %608, 96
  %610 = load i64, i64* %PC
  %611 = add i64 %610, 3
  store i64 %611, i64* %PC
  %612 = trunc i64 %607 to i32
  %613 = inttoptr i64 %609 to i32*
  %614 = load i32, i32* %613
  %615 = add i32 %614, %612
  %616 = zext i32 %615 to i64
  store i64 %616, i64* %RCX, align 8, !tbaa !2428
  %617 = icmp ult i32 %615, %612
  %618 = icmp ult i32 %615, %614
  %619 = or i1 %617, %618
  %620 = zext i1 %619 to i8
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %620, i8* %621, align 1, !tbaa !2432
  %622 = and i32 %615, 255
  %623 = call i32 @llvm.ctpop.i32(i32 %622) #16
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %626, i8* %627, align 1, !tbaa !2446
  %628 = xor i32 %614, %612
  %629 = xor i32 %628, %615
  %630 = lshr i32 %629, 4
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %632, i8* %633, align 1, !tbaa !2447
  %634 = icmp eq i32 %615, 0
  %635 = zext i1 %634 to i8
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %635, i8* %636, align 1, !tbaa !2448
  %637 = lshr i32 %615, 31
  %638 = trunc i32 %637 to i8
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %638, i8* %639, align 1, !tbaa !2449
  %640 = lshr i32 %612, 31
  %641 = lshr i32 %614, 31
  %642 = xor i32 %637, %640
  %643 = xor i32 %637, %641
  %644 = add nuw nsw i32 %642, %643
  %645 = icmp eq i32 %644, 2
  %646 = zext i1 %645 to i8
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %646, i8* %647, align 1, !tbaa !2450
  %648 = load i64, i64* %RCX
  %649 = load i64, i64* %PC
  %650 = add i64 %649, 3
  store i64 %650, i64* %PC
  %651 = and i64 %648, 4294967295
  %652 = lshr i64 %651, 22
  %653 = trunc i64 %652 to i8
  %654 = and i8 %653, 1
  %655 = lshr i64 %652, 1
  %656 = trunc i64 %655 to i32
  %657 = and i32 %656, 2147483647
  %658 = zext i32 %657 to i64
  store i64 %658, i64* %RCX, align 8, !tbaa !2428
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %654, i8* %659, align 1, !tbaa !2451
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %661 = and i32 %656, 255
  %662 = call i32 @llvm.ctpop.i32(i32 %661) #16
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  %665 = xor i8 %664, 1
  store i8 %665, i8* %660, align 1, !tbaa !2451
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %666, align 1, !tbaa !2451
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %668 = icmp eq i32 %657, 0
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %667, align 1, !tbaa !2451
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %670, align 1, !tbaa !2451
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %671, align 1, !tbaa !2451
  %672 = load i64, i64* %RAX
  %673 = load i32, i32* %ECX
  %674 = zext i32 %673 to i64
  %675 = load i64, i64* %PC
  %676 = add i64 %675, 2
  store i64 %676, i64* %PC
  %677 = or i64 %674, %672
  %678 = trunc i64 %677 to i32
  %679 = and i64 %677, 4294967295
  store i64 %679, i64* %RAX, align 8, !tbaa !2428
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %680, align 1, !tbaa !2432
  %681 = and i32 %678, 255
  %682 = call i32 @llvm.ctpop.i32(i32 %681) #16
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = xor i8 %684, 1
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %685, i8* %686, align 1, !tbaa !2446
  %687 = icmp eq i32 %678, 0
  %688 = zext i1 %687 to i8
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %688, i8* %689, align 1, !tbaa !2448
  %690 = lshr i32 %678, 31
  %691 = trunc i32 %690 to i8
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %691, i8* %692, align 1, !tbaa !2449
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %693, align 1, !tbaa !2450
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %694, align 1, !tbaa !2447
  %695 = load i64, i64* %RAX
  %696 = load i64, i64* %RBP
  %697 = sub i64 %696, 64
  %698 = load i64, i64* %PC
  %699 = add i64 %698, 3
  store i64 %699, i64* %PC
  %700 = trunc i64 %695 to i32
  %701 = inttoptr i64 %697 to i32*
  %702 = load i32, i32* %701
  %703 = xor i32 %702, %700
  %704 = zext i32 %703 to i64
  store i64 %704, i64* %RAX, align 8, !tbaa !2428
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %705, align 1, !tbaa !2432
  %706 = and i32 %703, 255
  %707 = call i32 @llvm.ctpop.i32(i32 %706) #16
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  %710 = xor i8 %709, 1
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %710, i8* %711, align 1, !tbaa !2446
  %712 = icmp eq i32 %703, 0
  %713 = zext i1 %712 to i8
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %713, i8* %714, align 1, !tbaa !2448
  %715 = lshr i32 %703, 31
  %716 = trunc i32 %715 to i8
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %716, i8* %717, align 1, !tbaa !2449
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %718, align 1, !tbaa !2450
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %719, align 1, !tbaa !2447
  %720 = load i64, i64* %RBP
  %721 = sub i64 %720, 64
  %722 = load i32, i32* %EAX
  %723 = zext i32 %722 to i64
  %724 = load i64, i64* %PC
  %725 = add i64 %724, 3
  store i64 %725, i64* %PC
  %726 = inttoptr i64 %721 to i32*
  store i32 %722, i32* %726
  %727 = load i64, i64* %RBP
  %728 = sub i64 %727, 64
  %729 = load i64, i64* %PC
  %730 = add i64 %729, 3
  store i64 %730, i64* %PC
  %731 = inttoptr i64 %728 to i32*
  %732 = load i32, i32* %731
  %733 = zext i32 %732 to i64
  store i64 %733, i64* %RAX, align 8, !tbaa !2428
  %734 = load i64, i64* %RAX
  %735 = load i64, i64* %RBP
  %736 = sub i64 %735, 80
  %737 = load i64, i64* %PC
  %738 = add i64 %737, 3
  store i64 %738, i64* %PC
  %739 = trunc i64 %734 to i32
  %740 = inttoptr i64 %736 to i32*
  %741 = load i32, i32* %740
  %742 = add i32 %741, %739
  %743 = zext i32 %742 to i64
  store i64 %743, i64* %RAX, align 8, !tbaa !2428
  %744 = icmp ult i32 %742, %739
  %745 = icmp ult i32 %742, %741
  %746 = or i1 %744, %745
  %747 = zext i1 %746 to i8
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %747, i8* %748, align 1, !tbaa !2432
  %749 = and i32 %742, 255
  %750 = call i32 @llvm.ctpop.i32(i32 %749) #16
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  %753 = xor i8 %752, 1
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %753, i8* %754, align 1, !tbaa !2446
  %755 = xor i32 %741, %739
  %756 = xor i32 %755, %742
  %757 = lshr i32 %756, 4
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %759, i8* %760, align 1, !tbaa !2447
  %761 = icmp eq i32 %742, 0
  %762 = zext i1 %761 to i8
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %762, i8* %763, align 1, !tbaa !2448
  %764 = lshr i32 %742, 31
  %765 = trunc i32 %764 to i8
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %765, i8* %766, align 1, !tbaa !2449
  %767 = lshr i32 %739, 31
  %768 = lshr i32 %741, 31
  %769 = xor i32 %764, %767
  %770 = xor i32 %764, %768
  %771 = add nuw nsw i32 %769, %770
  %772 = icmp eq i32 %771, 2
  %773 = zext i1 %772 to i8
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %773, i8* %774, align 1, !tbaa !2450
  %775 = load i64, i64* %RAX
  %776 = load i64, i64* %PC
  %777 = add i64 %776, 3
  store i64 %777, i64* %PC
  %778 = and i64 %775, 4294967295
  %779 = shl i64 %778, 12
  %780 = trunc i64 %779 to i32
  %781 = icmp slt i32 %780, 0
  %782 = shl i32 %780, 1
  %783 = zext i32 %782 to i64
  store i64 %783, i64* %RAX, align 8, !tbaa !2428
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %785 = zext i1 %781 to i8
  store i8 %785, i8* %784, align 1, !tbaa !2451
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %786, align 1, !tbaa !2451
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %787, align 1, !tbaa !2451
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %789 = icmp eq i32 %782, 0
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %788, align 1, !tbaa !2451
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %792 = lshr i32 %782, 31
  %793 = trunc i32 %792 to i8
  store i8 %793, i8* %791, align 1, !tbaa !2451
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %794, align 1, !tbaa !2451
  %795 = load i64, i64* %RBP
  %796 = sub i64 %795, 64
  %797 = load i64, i64* %PC
  %798 = add i64 %797, 3
  store i64 %798, i64* %PC
  %799 = inttoptr i64 %796 to i32*
  %800 = load i32, i32* %799
  %801 = zext i32 %800 to i64
  store i64 %801, i64* %RCX, align 8, !tbaa !2428
  %802 = load i64, i64* %RCX
  %803 = load i64, i64* %RBP
  %804 = sub i64 %803, 80
  %805 = load i64, i64* %PC
  %806 = add i64 %805, 3
  store i64 %806, i64* %PC
  %807 = trunc i64 %802 to i32
  %808 = inttoptr i64 %804 to i32*
  %809 = load i32, i32* %808
  %810 = add i32 %809, %807
  %811 = zext i32 %810 to i64
  store i64 %811, i64* %RCX, align 8, !tbaa !2428
  %812 = icmp ult i32 %810, %807
  %813 = icmp ult i32 %810, %809
  %814 = or i1 %812, %813
  %815 = zext i1 %814 to i8
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %815, i8* %816, align 1, !tbaa !2432
  %817 = and i32 %810, 255
  %818 = call i32 @llvm.ctpop.i32(i32 %817) #16
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = xor i8 %820, 1
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %821, i8* %822, align 1, !tbaa !2446
  %823 = xor i32 %809, %807
  %824 = xor i32 %823, %810
  %825 = lshr i32 %824, 4
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %827, i8* %828, align 1, !tbaa !2447
  %829 = icmp eq i32 %810, 0
  %830 = zext i1 %829 to i8
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %830, i8* %831, align 1, !tbaa !2448
  %832 = lshr i32 %810, 31
  %833 = trunc i32 %832 to i8
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %833, i8* %834, align 1, !tbaa !2449
  %835 = lshr i32 %807, 31
  %836 = lshr i32 %809, 31
  %837 = xor i32 %832, %835
  %838 = xor i32 %832, %836
  %839 = add nuw nsw i32 %837, %838
  %840 = icmp eq i32 %839, 2
  %841 = zext i1 %840 to i8
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %841, i8* %842, align 1, !tbaa !2450
  %843 = load i64, i64* %RCX
  %844 = load i64, i64* %PC
  %845 = add i64 %844, 3
  store i64 %845, i64* %PC
  %846 = and i64 %843, 4294967295
  %847 = lshr i64 %846, 18
  %848 = trunc i64 %847 to i8
  %849 = and i8 %848, 1
  %850 = lshr i64 %847, 1
  %851 = trunc i64 %850 to i32
  %852 = and i32 %851, 2147483647
  %853 = zext i32 %852 to i64
  store i64 %853, i64* %RCX, align 8, !tbaa !2428
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %849, i8* %854, align 1, !tbaa !2451
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %856 = and i32 %851, 255
  %857 = call i32 @llvm.ctpop.i32(i32 %856) #16
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  %860 = xor i8 %859, 1
  store i8 %860, i8* %855, align 1, !tbaa !2451
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %861, align 1, !tbaa !2451
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %863 = icmp eq i32 %852, 0
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %862, align 1, !tbaa !2451
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %865, align 1, !tbaa !2451
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %866, align 1, !tbaa !2451
  %867 = load i64, i64* %RAX
  %868 = load i32, i32* %ECX
  %869 = zext i32 %868 to i64
  %870 = load i64, i64* %PC
  %871 = add i64 %870, 2
  store i64 %871, i64* %PC
  %872 = or i64 %869, %867
  %873 = trunc i64 %872 to i32
  %874 = and i64 %872, 4294967295
  store i64 %874, i64* %RAX, align 8, !tbaa !2428
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %875, align 1, !tbaa !2432
  %876 = and i32 %873, 255
  %877 = call i32 @llvm.ctpop.i32(i32 %876) #16
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = xor i8 %879, 1
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %880, i8* %881, align 1, !tbaa !2446
  %882 = icmp eq i32 %873, 0
  %883 = zext i1 %882 to i8
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %883, i8* %884, align 1, !tbaa !2448
  %885 = lshr i32 %873, 31
  %886 = trunc i32 %885 to i8
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %886, i8* %887, align 1, !tbaa !2449
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %888, align 1, !tbaa !2450
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %889, align 1, !tbaa !2447
  %890 = load i64, i64* %RAX
  %891 = load i64, i64* %RBP
  %892 = sub i64 %891, 48
  %893 = load i64, i64* %PC
  %894 = add i64 %893, 3
  store i64 %894, i64* %PC
  %895 = trunc i64 %890 to i32
  %896 = inttoptr i64 %892 to i32*
  %897 = load i32, i32* %896
  %898 = xor i32 %897, %895
  %899 = zext i32 %898 to i64
  store i64 %899, i64* %RAX, align 8, !tbaa !2428
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %900, align 1, !tbaa !2432
  %901 = and i32 %898, 255
  %902 = call i32 @llvm.ctpop.i32(i32 %901) #16
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = xor i8 %904, 1
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %905, i8* %906, align 1, !tbaa !2446
  %907 = icmp eq i32 %898, 0
  %908 = zext i1 %907 to i8
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %908, i8* %909, align 1, !tbaa !2448
  %910 = lshr i32 %898, 31
  %911 = trunc i32 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %911, i8* %912, align 1, !tbaa !2449
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %913, align 1, !tbaa !2450
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %914, align 1, !tbaa !2447
  %915 = load i64, i64* %RBP
  %916 = sub i64 %915, 48
  %917 = load i32, i32* %EAX
  %918 = zext i32 %917 to i64
  %919 = load i64, i64* %PC
  %920 = add i64 %919, 3
  store i64 %920, i64* %PC
  %921 = inttoptr i64 %916 to i32*
  store i32 %917, i32* %921
  %922 = load i64, i64* %RBP
  %923 = sub i64 %922, 48
  %924 = load i64, i64* %PC
  %925 = add i64 %924, 3
  store i64 %925, i64* %PC
  %926 = inttoptr i64 %923 to i32*
  %927 = load i32, i32* %926
  %928 = zext i32 %927 to i64
  store i64 %928, i64* %RAX, align 8, !tbaa !2428
  %929 = load i64, i64* %RAX
  %930 = load i64, i64* %RBP
  %931 = sub i64 %930, 64
  %932 = load i64, i64* %PC
  %933 = add i64 %932, 3
  store i64 %933, i64* %PC
  %934 = trunc i64 %929 to i32
  %935 = inttoptr i64 %931 to i32*
  %936 = load i32, i32* %935
  %937 = add i32 %936, %934
  %938 = zext i32 %937 to i64
  store i64 %938, i64* %RAX, align 8, !tbaa !2428
  %939 = icmp ult i32 %937, %934
  %940 = icmp ult i32 %937, %936
  %941 = or i1 %939, %940
  %942 = zext i1 %941 to i8
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %942, i8* %943, align 1, !tbaa !2432
  %944 = and i32 %937, 255
  %945 = call i32 @llvm.ctpop.i32(i32 %944) #16
  %946 = trunc i32 %945 to i8
  %947 = and i8 %946, 1
  %948 = xor i8 %947, 1
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %948, i8* %949, align 1, !tbaa !2446
  %950 = xor i32 %936, %934
  %951 = xor i32 %950, %937
  %952 = lshr i32 %951, 4
  %953 = trunc i32 %952 to i8
  %954 = and i8 %953, 1
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %954, i8* %955, align 1, !tbaa !2447
  %956 = icmp eq i32 %937, 0
  %957 = zext i1 %956 to i8
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %957, i8* %958, align 1, !tbaa !2448
  %959 = lshr i32 %937, 31
  %960 = trunc i32 %959 to i8
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %960, i8* %961, align 1, !tbaa !2449
  %962 = lshr i32 %934, 31
  %963 = lshr i32 %936, 31
  %964 = xor i32 %959, %962
  %965 = xor i32 %959, %963
  %966 = add nuw nsw i32 %964, %965
  %967 = icmp eq i32 %966, 2
  %968 = zext i1 %967 to i8
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %968, i8* %969, align 1, !tbaa !2450
  %970 = load i64, i64* %RAX
  %971 = load i64, i64* %PC
  %972 = add i64 %971, 3
  store i64 %972, i64* %PC
  %973 = and i64 %970, 4294967295
  %974 = shl i64 %973, 17
  %975 = trunc i64 %974 to i32
  %976 = icmp slt i32 %975, 0
  %977 = shl i32 %975, 1
  %978 = zext i32 %977 to i64
  store i64 %978, i64* %RAX, align 8, !tbaa !2428
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %980 = zext i1 %976 to i8
  store i8 %980, i8* %979, align 1, !tbaa !2451
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %981, align 1, !tbaa !2451
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %982, align 1, !tbaa !2451
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %984 = icmp eq i32 %977, 0
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %983, align 1, !tbaa !2451
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %987 = lshr i32 %977, 31
  %988 = trunc i32 %987 to i8
  store i8 %988, i8* %986, align 1, !tbaa !2451
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %989, align 1, !tbaa !2451
  %990 = load i64, i64* %RBP
  %991 = sub i64 %990, 48
  %992 = load i64, i64* %PC
  %993 = add i64 %992, 3
  store i64 %993, i64* %PC
  %994 = inttoptr i64 %991 to i32*
  %995 = load i32, i32* %994
  %996 = zext i32 %995 to i64
  store i64 %996, i64* %RCX, align 8, !tbaa !2428
  %997 = load i64, i64* %RCX
  %998 = load i64, i64* %RBP
  %999 = sub i64 %998, 64
  %1000 = load i64, i64* %PC
  %1001 = add i64 %1000, 3
  store i64 %1001, i64* %PC
  %1002 = trunc i64 %997 to i32
  %1003 = inttoptr i64 %999 to i32*
  %1004 = load i32, i32* %1003
  %1005 = add i32 %1004, %1002
  %1006 = zext i32 %1005 to i64
  store i64 %1006, i64* %RCX, align 8, !tbaa !2428
  %1007 = icmp ult i32 %1005, %1002
  %1008 = icmp ult i32 %1005, %1004
  %1009 = or i1 %1007, %1008
  %1010 = zext i1 %1009 to i8
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1010, i8* %1011, align 1, !tbaa !2432
  %1012 = and i32 %1005, 255
  %1013 = call i32 @llvm.ctpop.i32(i32 %1012) #16
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  %1016 = xor i8 %1015, 1
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1016, i8* %1017, align 1, !tbaa !2446
  %1018 = xor i32 %1004, %1002
  %1019 = xor i32 %1018, %1005
  %1020 = lshr i32 %1019, 4
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1022, i8* %1023, align 1, !tbaa !2447
  %1024 = icmp eq i32 %1005, 0
  %1025 = zext i1 %1024 to i8
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1025, i8* %1026, align 1, !tbaa !2448
  %1027 = lshr i32 %1005, 31
  %1028 = trunc i32 %1027 to i8
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1028, i8* %1029, align 1, !tbaa !2449
  %1030 = lshr i32 %1002, 31
  %1031 = lshr i32 %1004, 31
  %1032 = xor i32 %1027, %1030
  %1033 = xor i32 %1027, %1031
  %1034 = add nuw nsw i32 %1032, %1033
  %1035 = icmp eq i32 %1034, 2
  %1036 = zext i1 %1035 to i8
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1036, i8* %1037, align 1, !tbaa !2450
  %1038 = load i64, i64* %RCX
  %1039 = load i64, i64* %PC
  %1040 = add i64 %1039, 3
  store i64 %1040, i64* %PC
  %1041 = and i64 %1038, 4294967295
  %1042 = lshr i64 %1041, 13
  %1043 = trunc i64 %1042 to i8
  %1044 = and i8 %1043, 1
  %1045 = lshr i64 %1042, 1
  %1046 = trunc i64 %1045 to i32
  %1047 = and i32 %1046, 2147483647
  %1048 = zext i32 %1047 to i64
  store i64 %1048, i64* %RCX, align 8, !tbaa !2428
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1044, i8* %1049, align 1, !tbaa !2451
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1051 = and i32 %1046, 255
  %1052 = call i32 @llvm.ctpop.i32(i32 %1051) #16
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  %1055 = xor i8 %1054, 1
  store i8 %1055, i8* %1050, align 1, !tbaa !2451
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1056, align 1, !tbaa !2451
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1058 = icmp eq i32 %1047, 0
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %1057, align 1, !tbaa !2451
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1060, align 1, !tbaa !2451
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1061, align 1, !tbaa !2451
  %1062 = load i64, i64* %RAX
  %1063 = load i32, i32* %ECX
  %1064 = zext i32 %1063 to i64
  %1065 = load i64, i64* %PC
  %1066 = add i64 %1065, 2
  store i64 %1066, i64* %PC
  %1067 = or i64 %1064, %1062
  %1068 = trunc i64 %1067 to i32
  %1069 = and i64 %1067, 4294967295
  store i64 %1069, i64* %RAX, align 8, !tbaa !2428
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1070, align 1, !tbaa !2432
  %1071 = and i32 %1068, 255
  %1072 = call i32 @llvm.ctpop.i32(i32 %1071) #16
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = xor i8 %1074, 1
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1075, i8* %1076, align 1, !tbaa !2446
  %1077 = icmp eq i32 %1068, 0
  %1078 = zext i1 %1077 to i8
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1078, i8* %1079, align 1, !tbaa !2448
  %1080 = lshr i32 %1068, 31
  %1081 = trunc i32 %1080 to i8
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1081, i8* %1082, align 1, !tbaa !2449
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1083, align 1, !tbaa !2450
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1084, align 1, !tbaa !2447
  %1085 = load i64, i64* %RAX
  %1086 = load i64, i64* %RBP
  %1087 = sub i64 %1086, 96
  %1088 = load i64, i64* %PC
  %1089 = add i64 %1088, 3
  store i64 %1089, i64* %PC
  %1090 = trunc i64 %1085 to i32
  %1091 = inttoptr i64 %1087 to i32*
  %1092 = load i32, i32* %1091
  %1093 = xor i32 %1092, %1090
  %1094 = zext i32 %1093 to i64
  store i64 %1094, i64* %RAX, align 8, !tbaa !2428
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1095, align 1, !tbaa !2432
  %1096 = and i32 %1093, 255
  %1097 = call i32 @llvm.ctpop.i32(i32 %1096) #16
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1100, i8* %1101, align 1, !tbaa !2446
  %1102 = icmp eq i32 %1093, 0
  %1103 = zext i1 %1102 to i8
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1103, i8* %1104, align 1, !tbaa !2448
  %1105 = lshr i32 %1093, 31
  %1106 = trunc i32 %1105 to i8
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1106, i8* %1107, align 1, !tbaa !2449
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1108, align 1, !tbaa !2450
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1109, align 1, !tbaa !2447
  %1110 = load i64, i64* %RBP
  %1111 = sub i64 %1110, 96
  %1112 = load i32, i32* %EAX
  %1113 = zext i32 %1112 to i64
  %1114 = load i64, i64* %PC
  %1115 = add i64 %1114, 3
  store i64 %1115, i64* %PC
  %1116 = inttoptr i64 %1111 to i32*
  store i32 %1112, i32* %1116
  %1117 = load i64, i64* %RBP
  %1118 = sub i64 %1117, 76
  %1119 = load i64, i64* %PC
  %1120 = add i64 %1119, 3
  store i64 %1120, i64* %PC
  %1121 = inttoptr i64 %1118 to i32*
  %1122 = load i32, i32* %1121
  %1123 = zext i32 %1122 to i64
  store i64 %1123, i64* %RAX, align 8, !tbaa !2428
  %1124 = load i64, i64* %RAX
  %1125 = load i64, i64* %RBP
  %1126 = sub i64 %1125, 92
  %1127 = load i64, i64* %PC
  %1128 = add i64 %1127, 3
  store i64 %1128, i64* %PC
  %1129 = trunc i64 %1124 to i32
  %1130 = inttoptr i64 %1126 to i32*
  %1131 = load i32, i32* %1130
  %1132 = add i32 %1131, %1129
  %1133 = zext i32 %1132 to i64
  store i64 %1133, i64* %RAX, align 8, !tbaa !2428
  %1134 = icmp ult i32 %1132, %1129
  %1135 = icmp ult i32 %1132, %1131
  %1136 = or i1 %1134, %1135
  %1137 = zext i1 %1136 to i8
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1137, i8* %1138, align 1, !tbaa !2432
  %1139 = and i32 %1132, 255
  %1140 = call i32 @llvm.ctpop.i32(i32 %1139) #16
  %1141 = trunc i32 %1140 to i8
  %1142 = and i8 %1141, 1
  %1143 = xor i8 %1142, 1
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1143, i8* %1144, align 1, !tbaa !2446
  %1145 = xor i32 %1131, %1129
  %1146 = xor i32 %1145, %1132
  %1147 = lshr i32 %1146, 4
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1149, i8* %1150, align 1, !tbaa !2447
  %1151 = icmp eq i32 %1132, 0
  %1152 = zext i1 %1151 to i8
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1152, i8* %1153, align 1, !tbaa !2448
  %1154 = lshr i32 %1132, 31
  %1155 = trunc i32 %1154 to i8
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1155, i8* %1156, align 1, !tbaa !2449
  %1157 = lshr i32 %1129, 31
  %1158 = lshr i32 %1131, 31
  %1159 = xor i32 %1154, %1157
  %1160 = xor i32 %1154, %1158
  %1161 = add nuw nsw i32 %1159, %1160
  %1162 = icmp eq i32 %1161, 2
  %1163 = zext i1 %1162 to i8
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1163, i8* %1164, align 1, !tbaa !2450
  %1165 = load i64, i64* %RAX
  %1166 = load i64, i64* %PC
  %1167 = add i64 %1166, 3
  store i64 %1167, i64* %PC
  %1168 = and i64 %1165, 4294967295
  %1169 = shl i64 %1168, 6
  %1170 = trunc i64 %1169 to i32
  %1171 = icmp slt i32 %1170, 0
  %1172 = shl i32 %1170, 1
  %1173 = zext i32 %1172 to i64
  store i64 %1173, i64* %RAX, align 8, !tbaa !2428
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1175 = zext i1 %1171 to i8
  store i8 %1175, i8* %1174, align 1, !tbaa !2451
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1177 = and i32 %1172, 254
  %1178 = call i32 @llvm.ctpop.i32(i32 %1177) #16
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = xor i8 %1180, 1
  store i8 %1181, i8* %1176, align 1, !tbaa !2451
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1182, align 1, !tbaa !2451
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1184 = icmp eq i32 %1172, 0
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %1183, align 1, !tbaa !2451
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1187 = lshr i32 %1172, 31
  %1188 = trunc i32 %1187 to i8
  store i8 %1188, i8* %1186, align 1, !tbaa !2451
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1189, align 1, !tbaa !2451
  %1190 = load i64, i64* %RBP
  %1191 = sub i64 %1190, 76
  %1192 = load i64, i64* %PC
  %1193 = add i64 %1192, 3
  store i64 %1193, i64* %PC
  %1194 = inttoptr i64 %1191 to i32*
  %1195 = load i32, i32* %1194
  %1196 = zext i32 %1195 to i64
  store i64 %1196, i64* %RCX, align 8, !tbaa !2428
  %1197 = load i64, i64* %RCX
  %1198 = load i64, i64* %RBP
  %1199 = sub i64 %1198, 92
  %1200 = load i64, i64* %PC
  %1201 = add i64 %1200, 3
  store i64 %1201, i64* %PC
  %1202 = trunc i64 %1197 to i32
  %1203 = inttoptr i64 %1199 to i32*
  %1204 = load i32, i32* %1203
  %1205 = add i32 %1204, %1202
  %1206 = zext i32 %1205 to i64
  store i64 %1206, i64* %RCX, align 8, !tbaa !2428
  %1207 = icmp ult i32 %1205, %1202
  %1208 = icmp ult i32 %1205, %1204
  %1209 = or i1 %1207, %1208
  %1210 = zext i1 %1209 to i8
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1210, i8* %1211, align 1, !tbaa !2432
  %1212 = and i32 %1205, 255
  %1213 = call i32 @llvm.ctpop.i32(i32 %1212) #16
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  %1216 = xor i8 %1215, 1
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1216, i8* %1217, align 1, !tbaa !2446
  %1218 = xor i32 %1204, %1202
  %1219 = xor i32 %1218, %1205
  %1220 = lshr i32 %1219, 4
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1222, i8* %1223, align 1, !tbaa !2447
  %1224 = icmp eq i32 %1205, 0
  %1225 = zext i1 %1224 to i8
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1225, i8* %1226, align 1, !tbaa !2448
  %1227 = lshr i32 %1205, 31
  %1228 = trunc i32 %1227 to i8
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1228, i8* %1229, align 1, !tbaa !2449
  %1230 = lshr i32 %1202, 31
  %1231 = lshr i32 %1204, 31
  %1232 = xor i32 %1227, %1230
  %1233 = xor i32 %1227, %1231
  %1234 = add nuw nsw i32 %1232, %1233
  %1235 = icmp eq i32 %1234, 2
  %1236 = zext i1 %1235 to i8
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1236, i8* %1237, align 1, !tbaa !2450
  %1238 = load i64, i64* %RCX
  %1239 = load i64, i64* %PC
  %1240 = add i64 %1239, 3
  store i64 %1240, i64* %PC
  %1241 = and i64 %1238, 4294967295
  %1242 = lshr i64 %1241, 24
  %1243 = trunc i64 %1242 to i8
  %1244 = and i8 %1243, 1
  %1245 = lshr i64 %1242, 1
  %1246 = trunc i64 %1245 to i32
  %1247 = and i32 %1246, 2147483647
  %1248 = zext i32 %1247 to i64
  store i64 %1248, i64* %RCX, align 8, !tbaa !2428
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1244, i8* %1249, align 1, !tbaa !2451
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1251 = and i32 %1246, 255
  %1252 = call i32 @llvm.ctpop.i32(i32 %1251) #16
  %1253 = trunc i32 %1252 to i8
  %1254 = and i8 %1253, 1
  %1255 = xor i8 %1254, 1
  store i8 %1255, i8* %1250, align 1, !tbaa !2451
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1256, align 1, !tbaa !2451
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1258 = icmp eq i32 %1247, 0
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %1257, align 1, !tbaa !2451
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1260, align 1, !tbaa !2451
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1261, align 1, !tbaa !2451
  %1262 = load i64, i64* %RAX
  %1263 = load i32, i32* %ECX
  %1264 = zext i32 %1263 to i64
  %1265 = load i64, i64* %PC
  %1266 = add i64 %1265, 2
  store i64 %1266, i64* %PC
  %1267 = or i64 %1264, %1262
  %1268 = trunc i64 %1267 to i32
  %1269 = and i64 %1267, 4294967295
  store i64 %1269, i64* %RAX, align 8, !tbaa !2428
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1270, align 1, !tbaa !2432
  %1271 = and i32 %1268, 255
  %1272 = call i32 @llvm.ctpop.i32(i32 %1271) #16
  %1273 = trunc i32 %1272 to i8
  %1274 = and i8 %1273, 1
  %1275 = xor i8 %1274, 1
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1275, i8* %1276, align 1, !tbaa !2446
  %1277 = icmp eq i32 %1268, 0
  %1278 = zext i1 %1277 to i8
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1278, i8* %1279, align 1, !tbaa !2448
  %1280 = lshr i32 %1268, 31
  %1281 = trunc i32 %1280 to i8
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1281, i8* %1282, align 1, !tbaa !2449
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1283, align 1, !tbaa !2450
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1284, align 1, !tbaa !2447
  %1285 = load i64, i64* %RAX
  %1286 = load i64, i64* %RBP
  %1287 = sub i64 %1286, 60
  %1288 = load i64, i64* %PC
  %1289 = add i64 %1288, 3
  store i64 %1289, i64* %PC
  %1290 = trunc i64 %1285 to i32
  %1291 = inttoptr i64 %1287 to i32*
  %1292 = load i32, i32* %1291
  %1293 = xor i32 %1292, %1290
  %1294 = zext i32 %1293 to i64
  store i64 %1294, i64* %RAX, align 8, !tbaa !2428
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1295, align 1, !tbaa !2432
  %1296 = and i32 %1293, 255
  %1297 = call i32 @llvm.ctpop.i32(i32 %1296) #16
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1300, i8* %1301, align 1, !tbaa !2446
  %1302 = icmp eq i32 %1293, 0
  %1303 = zext i1 %1302 to i8
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1303, i8* %1304, align 1, !tbaa !2448
  %1305 = lshr i32 %1293, 31
  %1306 = trunc i32 %1305 to i8
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1306, i8* %1307, align 1, !tbaa !2449
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1308, align 1, !tbaa !2450
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1309, align 1, !tbaa !2447
  %1310 = load i64, i64* %RBP
  %1311 = sub i64 %1310, 60
  %1312 = load i32, i32* %EAX
  %1313 = zext i32 %1312 to i64
  %1314 = load i64, i64* %PC
  %1315 = add i64 %1314, 3
  store i64 %1315, i64* %PC
  %1316 = inttoptr i64 %1311 to i32*
  store i32 %1312, i32* %1316
  %1317 = load i64, i64* %RBP
  %1318 = sub i64 %1317, 60
  %1319 = load i64, i64* %PC
  %1320 = add i64 %1319, 3
  store i64 %1320, i64* %PC
  %1321 = inttoptr i64 %1318 to i32*
  %1322 = load i32, i32* %1321
  %1323 = zext i32 %1322 to i64
  store i64 %1323, i64* %RAX, align 8, !tbaa !2428
  %1324 = load i64, i64* %RAX
  %1325 = load i64, i64* %RBP
  %1326 = sub i64 %1325, 76
  %1327 = load i64, i64* %PC
  %1328 = add i64 %1327, 3
  store i64 %1328, i64* %PC
  %1329 = trunc i64 %1324 to i32
  %1330 = inttoptr i64 %1326 to i32*
  %1331 = load i32, i32* %1330
  %1332 = add i32 %1331, %1329
  %1333 = zext i32 %1332 to i64
  store i64 %1333, i64* %RAX, align 8, !tbaa !2428
  %1334 = icmp ult i32 %1332, %1329
  %1335 = icmp ult i32 %1332, %1331
  %1336 = or i1 %1334, %1335
  %1337 = zext i1 %1336 to i8
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1337, i8* %1338, align 1, !tbaa !2432
  %1339 = and i32 %1332, 255
  %1340 = call i32 @llvm.ctpop.i32(i32 %1339) #16
  %1341 = trunc i32 %1340 to i8
  %1342 = and i8 %1341, 1
  %1343 = xor i8 %1342, 1
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1343, i8* %1344, align 1, !tbaa !2446
  %1345 = xor i32 %1331, %1329
  %1346 = xor i32 %1345, %1332
  %1347 = lshr i32 %1346, 4
  %1348 = trunc i32 %1347 to i8
  %1349 = and i8 %1348, 1
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1349, i8* %1350, align 1, !tbaa !2447
  %1351 = icmp eq i32 %1332, 0
  %1352 = zext i1 %1351 to i8
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1352, i8* %1353, align 1, !tbaa !2448
  %1354 = lshr i32 %1332, 31
  %1355 = trunc i32 %1354 to i8
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1355, i8* %1356, align 1, !tbaa !2449
  %1357 = lshr i32 %1329, 31
  %1358 = lshr i32 %1331, 31
  %1359 = xor i32 %1354, %1357
  %1360 = xor i32 %1354, %1358
  %1361 = add nuw nsw i32 %1359, %1360
  %1362 = icmp eq i32 %1361, 2
  %1363 = zext i1 %1362 to i8
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1363, i8* %1364, align 1, !tbaa !2450
  %1365 = load i64, i64* %RAX
  %1366 = load i64, i64* %PC
  %1367 = add i64 %1366, 3
  store i64 %1367, i64* %PC
  %1368 = and i64 %1365, 4294967295
  %1369 = shl i64 %1368, 8
  %1370 = trunc i64 %1369 to i32
  %1371 = icmp slt i32 %1370, 0
  %1372 = shl i32 %1370, 1
  %1373 = zext i32 %1372 to i64
  store i64 %1373, i64* %RAX, align 8, !tbaa !2428
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1375 = zext i1 %1371 to i8
  store i8 %1375, i8* %1374, align 1, !tbaa !2451
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1376, align 1, !tbaa !2451
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1377, align 1, !tbaa !2451
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1379 = icmp eq i32 %1372, 0
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %1378, align 1, !tbaa !2451
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1382 = lshr i32 %1372, 31
  %1383 = trunc i32 %1382 to i8
  store i8 %1383, i8* %1381, align 1, !tbaa !2451
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1384, align 1, !tbaa !2451
  %1385 = load i64, i64* %RBP
  %1386 = sub i64 %1385, 60
  %1387 = load i64, i64* %PC
  %1388 = add i64 %1387, 3
  store i64 %1388, i64* %PC
  %1389 = inttoptr i64 %1386 to i32*
  %1390 = load i32, i32* %1389
  %1391 = zext i32 %1390 to i64
  store i64 %1391, i64* %RCX, align 8, !tbaa !2428
  %1392 = load i64, i64* %RCX
  %1393 = load i64, i64* %RBP
  %1394 = sub i64 %1393, 76
  %1395 = load i64, i64* %PC
  %1396 = add i64 %1395, 3
  store i64 %1396, i64* %PC
  %1397 = trunc i64 %1392 to i32
  %1398 = inttoptr i64 %1394 to i32*
  %1399 = load i32, i32* %1398
  %1400 = add i32 %1399, %1397
  %1401 = zext i32 %1400 to i64
  store i64 %1401, i64* %RCX, align 8, !tbaa !2428
  %1402 = icmp ult i32 %1400, %1397
  %1403 = icmp ult i32 %1400, %1399
  %1404 = or i1 %1402, %1403
  %1405 = zext i1 %1404 to i8
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1405, i8* %1406, align 1, !tbaa !2432
  %1407 = and i32 %1400, 255
  %1408 = call i32 @llvm.ctpop.i32(i32 %1407) #16
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  %1411 = xor i8 %1410, 1
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1411, i8* %1412, align 1, !tbaa !2446
  %1413 = xor i32 %1399, %1397
  %1414 = xor i32 %1413, %1400
  %1415 = lshr i32 %1414, 4
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1417, i8* %1418, align 1, !tbaa !2447
  %1419 = icmp eq i32 %1400, 0
  %1420 = zext i1 %1419 to i8
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1420, i8* %1421, align 1, !tbaa !2448
  %1422 = lshr i32 %1400, 31
  %1423 = trunc i32 %1422 to i8
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1423, i8* %1424, align 1, !tbaa !2449
  %1425 = lshr i32 %1397, 31
  %1426 = lshr i32 %1399, 31
  %1427 = xor i32 %1422, %1425
  %1428 = xor i32 %1422, %1426
  %1429 = add nuw nsw i32 %1427, %1428
  %1430 = icmp eq i32 %1429, 2
  %1431 = zext i1 %1430 to i8
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1431, i8* %1432, align 1, !tbaa !2450
  %1433 = load i64, i64* %RCX
  %1434 = load i64, i64* %PC
  %1435 = add i64 %1434, 3
  store i64 %1435, i64* %PC
  %1436 = and i64 %1433, 4294967295
  %1437 = lshr i64 %1436, 22
  %1438 = trunc i64 %1437 to i8
  %1439 = and i8 %1438, 1
  %1440 = lshr i64 %1437, 1
  %1441 = trunc i64 %1440 to i32
  %1442 = and i32 %1441, 2147483647
  %1443 = zext i32 %1442 to i64
  store i64 %1443, i64* %RCX, align 8, !tbaa !2428
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1439, i8* %1444, align 1, !tbaa !2451
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1446 = and i32 %1441, 255
  %1447 = call i32 @llvm.ctpop.i32(i32 %1446) #16
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  %1450 = xor i8 %1449, 1
  store i8 %1450, i8* %1445, align 1, !tbaa !2451
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1451, align 1, !tbaa !2451
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1453 = icmp eq i32 %1442, 0
  %1454 = zext i1 %1453 to i8
  store i8 %1454, i8* %1452, align 1, !tbaa !2451
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1455, align 1, !tbaa !2451
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1456, align 1, !tbaa !2451
  %1457 = load i64, i64* %RAX
  %1458 = load i32, i32* %ECX
  %1459 = zext i32 %1458 to i64
  %1460 = load i64, i64* %PC
  %1461 = add i64 %1460, 2
  store i64 %1461, i64* %PC
  %1462 = or i64 %1459, %1457
  %1463 = trunc i64 %1462 to i32
  %1464 = and i64 %1462, 4294967295
  store i64 %1464, i64* %RAX, align 8, !tbaa !2428
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1465, align 1, !tbaa !2432
  %1466 = and i32 %1463, 255
  %1467 = call i32 @llvm.ctpop.i32(i32 %1466) #16
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  %1470 = xor i8 %1469, 1
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1470, i8* %1471, align 1, !tbaa !2446
  %1472 = icmp eq i32 %1463, 0
  %1473 = zext i1 %1472 to i8
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1473, i8* %1474, align 1, !tbaa !2448
  %1475 = lshr i32 %1463, 31
  %1476 = trunc i32 %1475 to i8
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1476, i8* %1477, align 1, !tbaa !2449
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1478, align 1, !tbaa !2450
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1479, align 1, !tbaa !2447
  %1480 = load i64, i64* %RAX
  %1481 = load i64, i64* %RBP
  %1482 = sub i64 %1481, 44
  %1483 = load i64, i64* %PC
  %1484 = add i64 %1483, 3
  store i64 %1484, i64* %PC
  %1485 = trunc i64 %1480 to i32
  %1486 = inttoptr i64 %1482 to i32*
  %1487 = load i32, i32* %1486
  %1488 = xor i32 %1487, %1485
  %1489 = zext i32 %1488 to i64
  store i64 %1489, i64* %RAX, align 8, !tbaa !2428
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1490, align 1, !tbaa !2432
  %1491 = and i32 %1488, 255
  %1492 = call i32 @llvm.ctpop.i32(i32 %1491) #16
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = xor i8 %1494, 1
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1495, i8* %1496, align 1, !tbaa !2446
  %1497 = icmp eq i32 %1488, 0
  %1498 = zext i1 %1497 to i8
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1498, i8* %1499, align 1, !tbaa !2448
  %1500 = lshr i32 %1488, 31
  %1501 = trunc i32 %1500 to i8
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1501, i8* %1502, align 1, !tbaa !2449
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1503, align 1, !tbaa !2450
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1504, align 1, !tbaa !2447
  %1505 = load i64, i64* %RBP
  %1506 = sub i64 %1505, 44
  %1507 = load i32, i32* %EAX
  %1508 = zext i32 %1507 to i64
  %1509 = load i64, i64* %PC
  %1510 = add i64 %1509, 3
  store i64 %1510, i64* %PC
  %1511 = inttoptr i64 %1506 to i32*
  store i32 %1507, i32* %1511
  %1512 = load i64, i64* %RBP
  %1513 = sub i64 %1512, 44
  %1514 = load i64, i64* %PC
  %1515 = add i64 %1514, 3
  store i64 %1515, i64* %PC
  %1516 = inttoptr i64 %1513 to i32*
  %1517 = load i32, i32* %1516
  %1518 = zext i32 %1517 to i64
  store i64 %1518, i64* %RAX, align 8, !tbaa !2428
  %1519 = load i64, i64* %RAX
  %1520 = load i64, i64* %RBP
  %1521 = sub i64 %1520, 60
  %1522 = load i64, i64* %PC
  %1523 = add i64 %1522, 3
  store i64 %1523, i64* %PC
  %1524 = trunc i64 %1519 to i32
  %1525 = inttoptr i64 %1521 to i32*
  %1526 = load i32, i32* %1525
  %1527 = add i32 %1526, %1524
  %1528 = zext i32 %1527 to i64
  store i64 %1528, i64* %RAX, align 8, !tbaa !2428
  %1529 = icmp ult i32 %1527, %1524
  %1530 = icmp ult i32 %1527, %1526
  %1531 = or i1 %1529, %1530
  %1532 = zext i1 %1531 to i8
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1532, i8* %1533, align 1, !tbaa !2432
  %1534 = and i32 %1527, 255
  %1535 = call i32 @llvm.ctpop.i32(i32 %1534) #16
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  %1538 = xor i8 %1537, 1
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1538, i8* %1539, align 1, !tbaa !2446
  %1540 = xor i32 %1526, %1524
  %1541 = xor i32 %1540, %1527
  %1542 = lshr i32 %1541, 4
  %1543 = trunc i32 %1542 to i8
  %1544 = and i8 %1543, 1
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1544, i8* %1545, align 1, !tbaa !2447
  %1546 = icmp eq i32 %1527, 0
  %1547 = zext i1 %1546 to i8
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1547, i8* %1548, align 1, !tbaa !2448
  %1549 = lshr i32 %1527, 31
  %1550 = trunc i32 %1549 to i8
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1550, i8* %1551, align 1, !tbaa !2449
  %1552 = lshr i32 %1524, 31
  %1553 = lshr i32 %1526, 31
  %1554 = xor i32 %1549, %1552
  %1555 = xor i32 %1549, %1553
  %1556 = add nuw nsw i32 %1554, %1555
  %1557 = icmp eq i32 %1556, 2
  %1558 = zext i1 %1557 to i8
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1558, i8* %1559, align 1, !tbaa !2450
  %1560 = load i64, i64* %RAX
  %1561 = load i64, i64* %PC
  %1562 = add i64 %1561, 3
  store i64 %1562, i64* %PC
  %1563 = and i64 %1560, 4294967295
  %1564 = shl i64 %1563, 12
  %1565 = trunc i64 %1564 to i32
  %1566 = icmp slt i32 %1565, 0
  %1567 = shl i32 %1565, 1
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RAX, align 8, !tbaa !2428
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1570 = zext i1 %1566 to i8
  store i8 %1570, i8* %1569, align 1, !tbaa !2451
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1571, align 1, !tbaa !2451
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1572, align 1, !tbaa !2451
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1574 = icmp eq i32 %1567, 0
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %1573, align 1, !tbaa !2451
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1577 = lshr i32 %1567, 31
  %1578 = trunc i32 %1577 to i8
  store i8 %1578, i8* %1576, align 1, !tbaa !2451
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1579, align 1, !tbaa !2451
  %1580 = load i64, i64* %RBP
  %1581 = sub i64 %1580, 44
  %1582 = load i64, i64* %PC
  %1583 = add i64 %1582, 3
  store i64 %1583, i64* %PC
  %1584 = inttoptr i64 %1581 to i32*
  %1585 = load i32, i32* %1584
  %1586 = zext i32 %1585 to i64
  store i64 %1586, i64* %RCX, align 8, !tbaa !2428
  %1587 = load i64, i64* %RCX
  %1588 = load i64, i64* %RBP
  %1589 = sub i64 %1588, 60
  %1590 = load i64, i64* %PC
  %1591 = add i64 %1590, 3
  store i64 %1591, i64* %PC
  %1592 = trunc i64 %1587 to i32
  %1593 = inttoptr i64 %1589 to i32*
  %1594 = load i32, i32* %1593
  %1595 = add i32 %1594, %1592
  %1596 = zext i32 %1595 to i64
  store i64 %1596, i64* %RCX, align 8, !tbaa !2428
  %1597 = icmp ult i32 %1595, %1592
  %1598 = icmp ult i32 %1595, %1594
  %1599 = or i1 %1597, %1598
  %1600 = zext i1 %1599 to i8
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1600, i8* %1601, align 1, !tbaa !2432
  %1602 = and i32 %1595, 255
  %1603 = call i32 @llvm.ctpop.i32(i32 %1602) #16
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  %1606 = xor i8 %1605, 1
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1606, i8* %1607, align 1, !tbaa !2446
  %1608 = xor i32 %1594, %1592
  %1609 = xor i32 %1608, %1595
  %1610 = lshr i32 %1609, 4
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1612, i8* %1613, align 1, !tbaa !2447
  %1614 = icmp eq i32 %1595, 0
  %1615 = zext i1 %1614 to i8
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1615, i8* %1616, align 1, !tbaa !2448
  %1617 = lshr i32 %1595, 31
  %1618 = trunc i32 %1617 to i8
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1618, i8* %1619, align 1, !tbaa !2449
  %1620 = lshr i32 %1592, 31
  %1621 = lshr i32 %1594, 31
  %1622 = xor i32 %1617, %1620
  %1623 = xor i32 %1617, %1621
  %1624 = add nuw nsw i32 %1622, %1623
  %1625 = icmp eq i32 %1624, 2
  %1626 = zext i1 %1625 to i8
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1626, i8* %1627, align 1, !tbaa !2450
  %1628 = load i64, i64* %RCX
  %1629 = load i64, i64* %PC
  %1630 = add i64 %1629, 3
  store i64 %1630, i64* %PC
  %1631 = and i64 %1628, 4294967295
  %1632 = lshr i64 %1631, 18
  %1633 = trunc i64 %1632 to i8
  %1634 = and i8 %1633, 1
  %1635 = lshr i64 %1632, 1
  %1636 = trunc i64 %1635 to i32
  %1637 = and i32 %1636, 2147483647
  %1638 = zext i32 %1637 to i64
  store i64 %1638, i64* %RCX, align 8, !tbaa !2428
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1634, i8* %1639, align 1, !tbaa !2451
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1641 = and i32 %1636, 255
  %1642 = call i32 @llvm.ctpop.i32(i32 %1641) #16
  %1643 = trunc i32 %1642 to i8
  %1644 = and i8 %1643, 1
  %1645 = xor i8 %1644, 1
  store i8 %1645, i8* %1640, align 1, !tbaa !2451
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1646, align 1, !tbaa !2451
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1648 = icmp eq i32 %1637, 0
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %1647, align 1, !tbaa !2451
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1650, align 1, !tbaa !2451
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1651, align 1, !tbaa !2451
  %1652 = load i64, i64* %RAX
  %1653 = load i32, i32* %ECX
  %1654 = zext i32 %1653 to i64
  %1655 = load i64, i64* %PC
  %1656 = add i64 %1655, 2
  store i64 %1656, i64* %PC
  %1657 = or i64 %1654, %1652
  %1658 = trunc i64 %1657 to i32
  %1659 = and i64 %1657, 4294967295
  store i64 %1659, i64* %RAX, align 8, !tbaa !2428
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1660, align 1, !tbaa !2432
  %1661 = and i32 %1658, 255
  %1662 = call i32 @llvm.ctpop.i32(i32 %1661) #16
  %1663 = trunc i32 %1662 to i8
  %1664 = and i8 %1663, 1
  %1665 = xor i8 %1664, 1
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1665, i8* %1666, align 1, !tbaa !2446
  %1667 = icmp eq i32 %1658, 0
  %1668 = zext i1 %1667 to i8
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1668, i8* %1669, align 1, !tbaa !2448
  %1670 = lshr i32 %1658, 31
  %1671 = trunc i32 %1670 to i8
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1671, i8* %1672, align 1, !tbaa !2449
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1673, align 1, !tbaa !2450
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1674, align 1, !tbaa !2447
  %1675 = load i64, i64* %RAX
  %1676 = load i64, i64* %RBP
  %1677 = sub i64 %1676, 92
  %1678 = load i64, i64* %PC
  %1679 = add i64 %1678, 3
  store i64 %1679, i64* %PC
  %1680 = trunc i64 %1675 to i32
  %1681 = inttoptr i64 %1677 to i32*
  %1682 = load i32, i32* %1681
  %1683 = xor i32 %1682, %1680
  %1684 = zext i32 %1683 to i64
  store i64 %1684, i64* %RAX, align 8, !tbaa !2428
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1685, align 1, !tbaa !2432
  %1686 = and i32 %1683, 255
  %1687 = call i32 @llvm.ctpop.i32(i32 %1686) #16
  %1688 = trunc i32 %1687 to i8
  %1689 = and i8 %1688, 1
  %1690 = xor i8 %1689, 1
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1690, i8* %1691, align 1, !tbaa !2446
  %1692 = icmp eq i32 %1683, 0
  %1693 = zext i1 %1692 to i8
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1693, i8* %1694, align 1, !tbaa !2448
  %1695 = lshr i32 %1683, 31
  %1696 = trunc i32 %1695 to i8
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1696, i8* %1697, align 1, !tbaa !2449
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1698, align 1, !tbaa !2450
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1699, align 1, !tbaa !2447
  %1700 = load i64, i64* %RBP
  %1701 = sub i64 %1700, 92
  %1702 = load i32, i32* %EAX
  %1703 = zext i32 %1702 to i64
  %1704 = load i64, i64* %PC
  %1705 = add i64 %1704, 3
  store i64 %1705, i64* %PC
  %1706 = inttoptr i64 %1701 to i32*
  store i32 %1702, i32* %1706
  %1707 = load i64, i64* %RBP
  %1708 = sub i64 %1707, 92
  %1709 = load i64, i64* %PC
  %1710 = add i64 %1709, 3
  store i64 %1710, i64* %PC
  %1711 = inttoptr i64 %1708 to i32*
  %1712 = load i32, i32* %1711
  %1713 = zext i32 %1712 to i64
  store i64 %1713, i64* %RAX, align 8, !tbaa !2428
  %1714 = load i64, i64* %RAX
  %1715 = load i64, i64* %RBP
  %1716 = sub i64 %1715, 44
  %1717 = load i64, i64* %PC
  %1718 = add i64 %1717, 3
  store i64 %1718, i64* %PC
  %1719 = trunc i64 %1714 to i32
  %1720 = inttoptr i64 %1716 to i32*
  %1721 = load i32, i32* %1720
  %1722 = add i32 %1721, %1719
  %1723 = zext i32 %1722 to i64
  store i64 %1723, i64* %RAX, align 8, !tbaa !2428
  %1724 = icmp ult i32 %1722, %1719
  %1725 = icmp ult i32 %1722, %1721
  %1726 = or i1 %1724, %1725
  %1727 = zext i1 %1726 to i8
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1727, i8* %1728, align 1, !tbaa !2432
  %1729 = and i32 %1722, 255
  %1730 = call i32 @llvm.ctpop.i32(i32 %1729) #16
  %1731 = trunc i32 %1730 to i8
  %1732 = and i8 %1731, 1
  %1733 = xor i8 %1732, 1
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1733, i8* %1734, align 1, !tbaa !2446
  %1735 = xor i32 %1721, %1719
  %1736 = xor i32 %1735, %1722
  %1737 = lshr i32 %1736, 4
  %1738 = trunc i32 %1737 to i8
  %1739 = and i8 %1738, 1
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1739, i8* %1740, align 1, !tbaa !2447
  %1741 = icmp eq i32 %1722, 0
  %1742 = zext i1 %1741 to i8
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1742, i8* %1743, align 1, !tbaa !2448
  %1744 = lshr i32 %1722, 31
  %1745 = trunc i32 %1744 to i8
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1745, i8* %1746, align 1, !tbaa !2449
  %1747 = lshr i32 %1719, 31
  %1748 = lshr i32 %1721, 31
  %1749 = xor i32 %1744, %1747
  %1750 = xor i32 %1744, %1748
  %1751 = add nuw nsw i32 %1749, %1750
  %1752 = icmp eq i32 %1751, 2
  %1753 = zext i1 %1752 to i8
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1753, i8* %1754, align 1, !tbaa !2450
  %1755 = load i64, i64* %RAX
  %1756 = load i64, i64* %PC
  %1757 = add i64 %1756, 3
  store i64 %1757, i64* %PC
  %1758 = and i64 %1755, 4294967295
  %1759 = shl i64 %1758, 17
  %1760 = trunc i64 %1759 to i32
  %1761 = icmp slt i32 %1760, 0
  %1762 = shl i32 %1760, 1
  %1763 = zext i32 %1762 to i64
  store i64 %1763, i64* %RAX, align 8, !tbaa !2428
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1765 = zext i1 %1761 to i8
  store i8 %1765, i8* %1764, align 1, !tbaa !2451
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1766, align 1, !tbaa !2451
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1767, align 1, !tbaa !2451
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1769 = icmp eq i32 %1762, 0
  %1770 = zext i1 %1769 to i8
  store i8 %1770, i8* %1768, align 1, !tbaa !2451
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1772 = lshr i32 %1762, 31
  %1773 = trunc i32 %1772 to i8
  store i8 %1773, i8* %1771, align 1, !tbaa !2451
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1774, align 1, !tbaa !2451
  %1775 = load i64, i64* %RBP
  %1776 = sub i64 %1775, 92
  %1777 = load i64, i64* %PC
  %1778 = add i64 %1777, 3
  store i64 %1778, i64* %PC
  %1779 = inttoptr i64 %1776 to i32*
  %1780 = load i32, i32* %1779
  %1781 = zext i32 %1780 to i64
  store i64 %1781, i64* %RCX, align 8, !tbaa !2428
  %1782 = load i64, i64* %RCX
  %1783 = load i64, i64* %RBP
  %1784 = sub i64 %1783, 44
  %1785 = load i64, i64* %PC
  %1786 = add i64 %1785, 3
  store i64 %1786, i64* %PC
  %1787 = trunc i64 %1782 to i32
  %1788 = inttoptr i64 %1784 to i32*
  %1789 = load i32, i32* %1788
  %1790 = add i32 %1789, %1787
  %1791 = zext i32 %1790 to i64
  store i64 %1791, i64* %RCX, align 8, !tbaa !2428
  %1792 = icmp ult i32 %1790, %1787
  %1793 = icmp ult i32 %1790, %1789
  %1794 = or i1 %1792, %1793
  %1795 = zext i1 %1794 to i8
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1795, i8* %1796, align 1, !tbaa !2432
  %1797 = and i32 %1790, 255
  %1798 = call i32 @llvm.ctpop.i32(i32 %1797) #16
  %1799 = trunc i32 %1798 to i8
  %1800 = and i8 %1799, 1
  %1801 = xor i8 %1800, 1
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1801, i8* %1802, align 1, !tbaa !2446
  %1803 = xor i32 %1789, %1787
  %1804 = xor i32 %1803, %1790
  %1805 = lshr i32 %1804, 4
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1807, i8* %1808, align 1, !tbaa !2447
  %1809 = icmp eq i32 %1790, 0
  %1810 = zext i1 %1809 to i8
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1810, i8* %1811, align 1, !tbaa !2448
  %1812 = lshr i32 %1790, 31
  %1813 = trunc i32 %1812 to i8
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1813, i8* %1814, align 1, !tbaa !2449
  %1815 = lshr i32 %1787, 31
  %1816 = lshr i32 %1789, 31
  %1817 = xor i32 %1812, %1815
  %1818 = xor i32 %1812, %1816
  %1819 = add nuw nsw i32 %1817, %1818
  %1820 = icmp eq i32 %1819, 2
  %1821 = zext i1 %1820 to i8
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1821, i8* %1822, align 1, !tbaa !2450
  %1823 = load i64, i64* %RCX
  %1824 = load i64, i64* %PC
  %1825 = add i64 %1824, 3
  store i64 %1825, i64* %PC
  %1826 = and i64 %1823, 4294967295
  %1827 = lshr i64 %1826, 13
  %1828 = trunc i64 %1827 to i8
  %1829 = and i8 %1828, 1
  %1830 = lshr i64 %1827, 1
  %1831 = trunc i64 %1830 to i32
  %1832 = and i32 %1831, 2147483647
  %1833 = zext i32 %1832 to i64
  store i64 %1833, i64* %RCX, align 8, !tbaa !2428
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1829, i8* %1834, align 1, !tbaa !2451
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1836 = and i32 %1831, 255
  %1837 = call i32 @llvm.ctpop.i32(i32 %1836) #16
  %1838 = trunc i32 %1837 to i8
  %1839 = and i8 %1838, 1
  %1840 = xor i8 %1839, 1
  store i8 %1840, i8* %1835, align 1, !tbaa !2451
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1841, align 1, !tbaa !2451
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1843 = icmp eq i32 %1832, 0
  %1844 = zext i1 %1843 to i8
  store i8 %1844, i8* %1842, align 1, !tbaa !2451
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1845, align 1, !tbaa !2451
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1846, align 1, !tbaa !2451
  %1847 = load i64, i64* %RAX
  %1848 = load i32, i32* %ECX
  %1849 = zext i32 %1848 to i64
  %1850 = load i64, i64* %PC
  %1851 = add i64 %1850, 2
  store i64 %1851, i64* %PC
  %1852 = or i64 %1849, %1847
  %1853 = trunc i64 %1852 to i32
  %1854 = and i64 %1852, 4294967295
  store i64 %1854, i64* %RAX, align 8, !tbaa !2428
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1855, align 1, !tbaa !2432
  %1856 = and i32 %1853, 255
  %1857 = call i32 @llvm.ctpop.i32(i32 %1856) #16
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  %1860 = xor i8 %1859, 1
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1860, i8* %1861, align 1, !tbaa !2446
  %1862 = icmp eq i32 %1853, 0
  %1863 = zext i1 %1862 to i8
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1863, i8* %1864, align 1, !tbaa !2448
  %1865 = lshr i32 %1853, 31
  %1866 = trunc i32 %1865 to i8
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1866, i8* %1867, align 1, !tbaa !2449
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1868, align 1, !tbaa !2450
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1869, align 1, !tbaa !2447
  %1870 = load i64, i64* %RAX
  %1871 = load i64, i64* %RBP
  %1872 = sub i64 %1871, 76
  %1873 = load i64, i64* %PC
  %1874 = add i64 %1873, 3
  store i64 %1874, i64* %PC
  %1875 = trunc i64 %1870 to i32
  %1876 = inttoptr i64 %1872 to i32*
  %1877 = load i32, i32* %1876
  %1878 = xor i32 %1877, %1875
  %1879 = zext i32 %1878 to i64
  store i64 %1879, i64* %RAX, align 8, !tbaa !2428
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1880, align 1, !tbaa !2432
  %1881 = and i32 %1878, 255
  %1882 = call i32 @llvm.ctpop.i32(i32 %1881) #16
  %1883 = trunc i32 %1882 to i8
  %1884 = and i8 %1883, 1
  %1885 = xor i8 %1884, 1
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1885, i8* %1886, align 1, !tbaa !2446
  %1887 = icmp eq i32 %1878, 0
  %1888 = zext i1 %1887 to i8
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1888, i8* %1889, align 1, !tbaa !2448
  %1890 = lshr i32 %1878, 31
  %1891 = trunc i32 %1890 to i8
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1891, i8* %1892, align 1, !tbaa !2449
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1893, align 1, !tbaa !2450
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1894, align 1, !tbaa !2447
  %1895 = load i64, i64* %RBP
  %1896 = sub i64 %1895, 76
  %1897 = load i32, i32* %EAX
  %1898 = zext i32 %1897 to i64
  %1899 = load i64, i64* %PC
  %1900 = add i64 %1899, 3
  store i64 %1900, i64* %PC
  %1901 = inttoptr i64 %1896 to i32*
  store i32 %1897, i32* %1901
  %1902 = load i64, i64* %RBP
  %1903 = sub i64 %1902, 56
  %1904 = load i64, i64* %PC
  %1905 = add i64 %1904, 3
  store i64 %1905, i64* %PC
  %1906 = inttoptr i64 %1903 to i32*
  %1907 = load i32, i32* %1906
  %1908 = zext i32 %1907 to i64
  store i64 %1908, i64* %RAX, align 8, !tbaa !2428
  %1909 = load i64, i64* %RAX
  %1910 = load i64, i64* %RBP
  %1911 = sub i64 %1910, 72
  %1912 = load i64, i64* %PC
  %1913 = add i64 %1912, 3
  store i64 %1913, i64* %PC
  %1914 = trunc i64 %1909 to i32
  %1915 = inttoptr i64 %1911 to i32*
  %1916 = load i32, i32* %1915
  %1917 = add i32 %1916, %1914
  %1918 = zext i32 %1917 to i64
  store i64 %1918, i64* %RAX, align 8, !tbaa !2428
  %1919 = icmp ult i32 %1917, %1914
  %1920 = icmp ult i32 %1917, %1916
  %1921 = or i1 %1919, %1920
  %1922 = zext i1 %1921 to i8
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1922, i8* %1923, align 1, !tbaa !2432
  %1924 = and i32 %1917, 255
  %1925 = call i32 @llvm.ctpop.i32(i32 %1924) #16
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  %1928 = xor i8 %1927, 1
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1928, i8* %1929, align 1, !tbaa !2446
  %1930 = xor i32 %1916, %1914
  %1931 = xor i32 %1930, %1917
  %1932 = lshr i32 %1931, 4
  %1933 = trunc i32 %1932 to i8
  %1934 = and i8 %1933, 1
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1934, i8* %1935, align 1, !tbaa !2447
  %1936 = icmp eq i32 %1917, 0
  %1937 = zext i1 %1936 to i8
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1937, i8* %1938, align 1, !tbaa !2448
  %1939 = lshr i32 %1917, 31
  %1940 = trunc i32 %1939 to i8
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1940, i8* %1941, align 1, !tbaa !2449
  %1942 = lshr i32 %1914, 31
  %1943 = lshr i32 %1916, 31
  %1944 = xor i32 %1939, %1942
  %1945 = xor i32 %1939, %1943
  %1946 = add nuw nsw i32 %1944, %1945
  %1947 = icmp eq i32 %1946, 2
  %1948 = zext i1 %1947 to i8
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1948, i8* %1949, align 1, !tbaa !2450
  %1950 = load i64, i64* %RAX
  %1951 = load i64, i64* %PC
  %1952 = add i64 %1951, 3
  store i64 %1952, i64* %PC
  %1953 = and i64 %1950, 4294967295
  %1954 = shl i64 %1953, 6
  %1955 = trunc i64 %1954 to i32
  %1956 = icmp slt i32 %1955, 0
  %1957 = shl i32 %1955, 1
  %1958 = zext i32 %1957 to i64
  store i64 %1958, i64* %RAX, align 8, !tbaa !2428
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1960 = zext i1 %1956 to i8
  store i8 %1960, i8* %1959, align 1, !tbaa !2451
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1962 = and i32 %1957, 254
  %1963 = call i32 @llvm.ctpop.i32(i32 %1962) #16
  %1964 = trunc i32 %1963 to i8
  %1965 = and i8 %1964, 1
  %1966 = xor i8 %1965, 1
  store i8 %1966, i8* %1961, align 1, !tbaa !2451
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1967, align 1, !tbaa !2451
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1969 = icmp eq i32 %1957, 0
  %1970 = zext i1 %1969 to i8
  store i8 %1970, i8* %1968, align 1, !tbaa !2451
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1972 = lshr i32 %1957, 31
  %1973 = trunc i32 %1972 to i8
  store i8 %1973, i8* %1971, align 1, !tbaa !2451
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1974, align 1, !tbaa !2451
  %1975 = load i64, i64* %RBP
  %1976 = sub i64 %1975, 56
  %1977 = load i64, i64* %PC
  %1978 = add i64 %1977, 3
  store i64 %1978, i64* %PC
  %1979 = inttoptr i64 %1976 to i32*
  %1980 = load i32, i32* %1979
  %1981 = zext i32 %1980 to i64
  store i64 %1981, i64* %RCX, align 8, !tbaa !2428
  %1982 = load i64, i64* %RCX
  %1983 = load i64, i64* %RBP
  %1984 = sub i64 %1983, 72
  %1985 = load i64, i64* %PC
  %1986 = add i64 %1985, 3
  store i64 %1986, i64* %PC
  %1987 = trunc i64 %1982 to i32
  %1988 = inttoptr i64 %1984 to i32*
  %1989 = load i32, i32* %1988
  %1990 = add i32 %1989, %1987
  %1991 = zext i32 %1990 to i64
  store i64 %1991, i64* %RCX, align 8, !tbaa !2428
  %1992 = icmp ult i32 %1990, %1987
  %1993 = icmp ult i32 %1990, %1989
  %1994 = or i1 %1992, %1993
  %1995 = zext i1 %1994 to i8
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1995, i8* %1996, align 1, !tbaa !2432
  %1997 = and i32 %1990, 255
  %1998 = call i32 @llvm.ctpop.i32(i32 %1997) #16
  %1999 = trunc i32 %1998 to i8
  %2000 = and i8 %1999, 1
  %2001 = xor i8 %2000, 1
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2001, i8* %2002, align 1, !tbaa !2446
  %2003 = xor i32 %1989, %1987
  %2004 = xor i32 %2003, %1990
  %2005 = lshr i32 %2004, 4
  %2006 = trunc i32 %2005 to i8
  %2007 = and i8 %2006, 1
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2007, i8* %2008, align 1, !tbaa !2447
  %2009 = icmp eq i32 %1990, 0
  %2010 = zext i1 %2009 to i8
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2010, i8* %2011, align 1, !tbaa !2448
  %2012 = lshr i32 %1990, 31
  %2013 = trunc i32 %2012 to i8
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2013, i8* %2014, align 1, !tbaa !2449
  %2015 = lshr i32 %1987, 31
  %2016 = lshr i32 %1989, 31
  %2017 = xor i32 %2012, %2015
  %2018 = xor i32 %2012, %2016
  %2019 = add nuw nsw i32 %2017, %2018
  %2020 = icmp eq i32 %2019, 2
  %2021 = zext i1 %2020 to i8
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2021, i8* %2022, align 1, !tbaa !2450
  %2023 = load i64, i64* %RCX
  %2024 = load i64, i64* %PC
  %2025 = add i64 %2024, 3
  store i64 %2025, i64* %PC
  %2026 = and i64 %2023, 4294967295
  %2027 = lshr i64 %2026, 24
  %2028 = trunc i64 %2027 to i8
  %2029 = and i8 %2028, 1
  %2030 = lshr i64 %2027, 1
  %2031 = trunc i64 %2030 to i32
  %2032 = and i32 %2031, 2147483647
  %2033 = zext i32 %2032 to i64
  store i64 %2033, i64* %RCX, align 8, !tbaa !2428
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2029, i8* %2034, align 1, !tbaa !2451
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2036 = and i32 %2031, 255
  %2037 = call i32 @llvm.ctpop.i32(i32 %2036) #16
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  %2040 = xor i8 %2039, 1
  store i8 %2040, i8* %2035, align 1, !tbaa !2451
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2041, align 1, !tbaa !2451
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2043 = icmp eq i32 %2032, 0
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %2042, align 1, !tbaa !2451
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2045, align 1, !tbaa !2451
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2046, align 1, !tbaa !2451
  %2047 = load i64, i64* %RAX
  %2048 = load i32, i32* %ECX
  %2049 = zext i32 %2048 to i64
  %2050 = load i64, i64* %PC
  %2051 = add i64 %2050, 2
  store i64 %2051, i64* %PC
  %2052 = or i64 %2049, %2047
  %2053 = trunc i64 %2052 to i32
  %2054 = and i64 %2052, 4294967295
  store i64 %2054, i64* %RAX, align 8, !tbaa !2428
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2055, align 1, !tbaa !2432
  %2056 = and i32 %2053, 255
  %2057 = call i32 @llvm.ctpop.i32(i32 %2056) #16
  %2058 = trunc i32 %2057 to i8
  %2059 = and i8 %2058, 1
  %2060 = xor i8 %2059, 1
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2060, i8* %2061, align 1, !tbaa !2446
  %2062 = icmp eq i32 %2053, 0
  %2063 = zext i1 %2062 to i8
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2063, i8* %2064, align 1, !tbaa !2448
  %2065 = lshr i32 %2053, 31
  %2066 = trunc i32 %2065 to i8
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2066, i8* %2067, align 1, !tbaa !2449
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2068, align 1, !tbaa !2450
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2069, align 1, !tbaa !2447
  %2070 = load i64, i64* %RAX
  %2071 = load i64, i64* %RBP
  %2072 = sub i64 %2071, 40
  %2073 = load i64, i64* %PC
  %2074 = add i64 %2073, 3
  store i64 %2074, i64* %PC
  %2075 = trunc i64 %2070 to i32
  %2076 = inttoptr i64 %2072 to i32*
  %2077 = load i32, i32* %2076
  %2078 = xor i32 %2077, %2075
  %2079 = zext i32 %2078 to i64
  store i64 %2079, i64* %RAX, align 8, !tbaa !2428
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2080, align 1, !tbaa !2432
  %2081 = and i32 %2078, 255
  %2082 = call i32 @llvm.ctpop.i32(i32 %2081) #16
  %2083 = trunc i32 %2082 to i8
  %2084 = and i8 %2083, 1
  %2085 = xor i8 %2084, 1
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2085, i8* %2086, align 1, !tbaa !2446
  %2087 = icmp eq i32 %2078, 0
  %2088 = zext i1 %2087 to i8
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2088, i8* %2089, align 1, !tbaa !2448
  %2090 = lshr i32 %2078, 31
  %2091 = trunc i32 %2090 to i8
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2091, i8* %2092, align 1, !tbaa !2449
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2093, align 1, !tbaa !2450
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2094, align 1, !tbaa !2447
  %2095 = load i64, i64* %RBP
  %2096 = sub i64 %2095, 40
  %2097 = load i32, i32* %EAX
  %2098 = zext i32 %2097 to i64
  %2099 = load i64, i64* %PC
  %2100 = add i64 %2099, 3
  store i64 %2100, i64* %PC
  %2101 = inttoptr i64 %2096 to i32*
  store i32 %2097, i32* %2101
  %2102 = load i64, i64* %RBP
  %2103 = sub i64 %2102, 40
  %2104 = load i64, i64* %PC
  %2105 = add i64 %2104, 3
  store i64 %2105, i64* %PC
  %2106 = inttoptr i64 %2103 to i32*
  %2107 = load i32, i32* %2106
  %2108 = zext i32 %2107 to i64
  store i64 %2108, i64* %RAX, align 8, !tbaa !2428
  %2109 = load i64, i64* %RAX
  %2110 = load i64, i64* %RBP
  %2111 = sub i64 %2110, 56
  %2112 = load i64, i64* %PC
  %2113 = add i64 %2112, 3
  store i64 %2113, i64* %PC
  %2114 = trunc i64 %2109 to i32
  %2115 = inttoptr i64 %2111 to i32*
  %2116 = load i32, i32* %2115
  %2117 = add i32 %2116, %2114
  %2118 = zext i32 %2117 to i64
  store i64 %2118, i64* %RAX, align 8, !tbaa !2428
  %2119 = icmp ult i32 %2117, %2114
  %2120 = icmp ult i32 %2117, %2116
  %2121 = or i1 %2119, %2120
  %2122 = zext i1 %2121 to i8
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2122, i8* %2123, align 1, !tbaa !2432
  %2124 = and i32 %2117, 255
  %2125 = call i32 @llvm.ctpop.i32(i32 %2124) #16
  %2126 = trunc i32 %2125 to i8
  %2127 = and i8 %2126, 1
  %2128 = xor i8 %2127, 1
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2128, i8* %2129, align 1, !tbaa !2446
  %2130 = xor i32 %2116, %2114
  %2131 = xor i32 %2130, %2117
  %2132 = lshr i32 %2131, 4
  %2133 = trunc i32 %2132 to i8
  %2134 = and i8 %2133, 1
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2134, i8* %2135, align 1, !tbaa !2447
  %2136 = icmp eq i32 %2117, 0
  %2137 = zext i1 %2136 to i8
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2137, i8* %2138, align 1, !tbaa !2448
  %2139 = lshr i32 %2117, 31
  %2140 = trunc i32 %2139 to i8
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2140, i8* %2141, align 1, !tbaa !2449
  %2142 = lshr i32 %2114, 31
  %2143 = lshr i32 %2116, 31
  %2144 = xor i32 %2139, %2142
  %2145 = xor i32 %2139, %2143
  %2146 = add nuw nsw i32 %2144, %2145
  %2147 = icmp eq i32 %2146, 2
  %2148 = zext i1 %2147 to i8
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2148, i8* %2149, align 1, !tbaa !2450
  %2150 = load i64, i64* %RAX
  %2151 = load i64, i64* %PC
  %2152 = add i64 %2151, 3
  store i64 %2152, i64* %PC
  %2153 = and i64 %2150, 4294967295
  %2154 = shl i64 %2153, 8
  %2155 = trunc i64 %2154 to i32
  %2156 = icmp slt i32 %2155, 0
  %2157 = shl i32 %2155, 1
  %2158 = zext i32 %2157 to i64
  store i64 %2158, i64* %RAX, align 8, !tbaa !2428
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2160 = zext i1 %2156 to i8
  store i8 %2160, i8* %2159, align 1, !tbaa !2451
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2161, align 1, !tbaa !2451
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2162, align 1, !tbaa !2451
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2164 = icmp eq i32 %2157, 0
  %2165 = zext i1 %2164 to i8
  store i8 %2165, i8* %2163, align 1, !tbaa !2451
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2167 = lshr i32 %2157, 31
  %2168 = trunc i32 %2167 to i8
  store i8 %2168, i8* %2166, align 1, !tbaa !2451
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2169, align 1, !tbaa !2451
  %2170 = load i64, i64* %RBP
  %2171 = sub i64 %2170, 40
  %2172 = load i64, i64* %PC
  %2173 = add i64 %2172, 3
  store i64 %2173, i64* %PC
  %2174 = inttoptr i64 %2171 to i32*
  %2175 = load i32, i32* %2174
  %2176 = zext i32 %2175 to i64
  store i64 %2176, i64* %RCX, align 8, !tbaa !2428
  %2177 = load i64, i64* %RCX
  %2178 = load i64, i64* %RBP
  %2179 = sub i64 %2178, 56
  %2180 = load i64, i64* %PC
  %2181 = add i64 %2180, 3
  store i64 %2181, i64* %PC
  %2182 = trunc i64 %2177 to i32
  %2183 = inttoptr i64 %2179 to i32*
  %2184 = load i32, i32* %2183
  %2185 = add i32 %2184, %2182
  %2186 = zext i32 %2185 to i64
  store i64 %2186, i64* %RCX, align 8, !tbaa !2428
  %2187 = icmp ult i32 %2185, %2182
  %2188 = icmp ult i32 %2185, %2184
  %2189 = or i1 %2187, %2188
  %2190 = zext i1 %2189 to i8
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2190, i8* %2191, align 1, !tbaa !2432
  %2192 = and i32 %2185, 255
  %2193 = call i32 @llvm.ctpop.i32(i32 %2192) #16
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  %2196 = xor i8 %2195, 1
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2196, i8* %2197, align 1, !tbaa !2446
  %2198 = xor i32 %2184, %2182
  %2199 = xor i32 %2198, %2185
  %2200 = lshr i32 %2199, 4
  %2201 = trunc i32 %2200 to i8
  %2202 = and i8 %2201, 1
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2202, i8* %2203, align 1, !tbaa !2447
  %2204 = icmp eq i32 %2185, 0
  %2205 = zext i1 %2204 to i8
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2205, i8* %2206, align 1, !tbaa !2448
  %2207 = lshr i32 %2185, 31
  %2208 = trunc i32 %2207 to i8
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2208, i8* %2209, align 1, !tbaa !2449
  %2210 = lshr i32 %2182, 31
  %2211 = lshr i32 %2184, 31
  %2212 = xor i32 %2207, %2210
  %2213 = xor i32 %2207, %2211
  %2214 = add nuw nsw i32 %2212, %2213
  %2215 = icmp eq i32 %2214, 2
  %2216 = zext i1 %2215 to i8
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2216, i8* %2217, align 1, !tbaa !2450
  %2218 = load i64, i64* %RCX
  %2219 = load i64, i64* %PC
  %2220 = add i64 %2219, 3
  store i64 %2220, i64* %PC
  %2221 = and i64 %2218, 4294967295
  %2222 = lshr i64 %2221, 22
  %2223 = trunc i64 %2222 to i8
  %2224 = and i8 %2223, 1
  %2225 = lshr i64 %2222, 1
  %2226 = trunc i64 %2225 to i32
  %2227 = and i32 %2226, 2147483647
  %2228 = zext i32 %2227 to i64
  store i64 %2228, i64* %RCX, align 8, !tbaa !2428
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2224, i8* %2229, align 1, !tbaa !2451
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2231 = and i32 %2226, 255
  %2232 = call i32 @llvm.ctpop.i32(i32 %2231) #16
  %2233 = trunc i32 %2232 to i8
  %2234 = and i8 %2233, 1
  %2235 = xor i8 %2234, 1
  store i8 %2235, i8* %2230, align 1, !tbaa !2451
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2236, align 1, !tbaa !2451
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2238 = icmp eq i32 %2227, 0
  %2239 = zext i1 %2238 to i8
  store i8 %2239, i8* %2237, align 1, !tbaa !2451
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2240, align 1, !tbaa !2451
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2241, align 1, !tbaa !2451
  %2242 = load i64, i64* %RAX
  %2243 = load i32, i32* %ECX
  %2244 = zext i32 %2243 to i64
  %2245 = load i64, i64* %PC
  %2246 = add i64 %2245, 2
  store i64 %2246, i64* %PC
  %2247 = or i64 %2244, %2242
  %2248 = trunc i64 %2247 to i32
  %2249 = and i64 %2247, 4294967295
  store i64 %2249, i64* %RAX, align 8, !tbaa !2428
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2250, align 1, !tbaa !2432
  %2251 = and i32 %2248, 255
  %2252 = call i32 @llvm.ctpop.i32(i32 %2251) #16
  %2253 = trunc i32 %2252 to i8
  %2254 = and i8 %2253, 1
  %2255 = xor i8 %2254, 1
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2255, i8* %2256, align 1, !tbaa !2446
  %2257 = icmp eq i32 %2248, 0
  %2258 = zext i1 %2257 to i8
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2258, i8* %2259, align 1, !tbaa !2448
  %2260 = lshr i32 %2248, 31
  %2261 = trunc i32 %2260 to i8
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2261, i8* %2262, align 1, !tbaa !2449
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2263, align 1, !tbaa !2450
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2264, align 1, !tbaa !2447
  %2265 = load i64, i64* %RAX
  %2266 = load i64, i64* %RBP
  %2267 = sub i64 %2266, 88
  %2268 = load i64, i64* %PC
  %2269 = add i64 %2268, 3
  store i64 %2269, i64* %PC
  %2270 = trunc i64 %2265 to i32
  %2271 = inttoptr i64 %2267 to i32*
  %2272 = load i32, i32* %2271
  %2273 = xor i32 %2272, %2270
  %2274 = zext i32 %2273 to i64
  store i64 %2274, i64* %RAX, align 8, !tbaa !2428
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2275, align 1, !tbaa !2432
  %2276 = and i32 %2273, 255
  %2277 = call i32 @llvm.ctpop.i32(i32 %2276) #16
  %2278 = trunc i32 %2277 to i8
  %2279 = and i8 %2278, 1
  %2280 = xor i8 %2279, 1
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2280, i8* %2281, align 1, !tbaa !2446
  %2282 = icmp eq i32 %2273, 0
  %2283 = zext i1 %2282 to i8
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2283, i8* %2284, align 1, !tbaa !2448
  %2285 = lshr i32 %2273, 31
  %2286 = trunc i32 %2285 to i8
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2286, i8* %2287, align 1, !tbaa !2449
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2288, align 1, !tbaa !2450
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2289, align 1, !tbaa !2447
  %2290 = load i64, i64* %RBP
  %2291 = sub i64 %2290, 88
  %2292 = load i32, i32* %EAX
  %2293 = zext i32 %2292 to i64
  %2294 = load i64, i64* %PC
  %2295 = add i64 %2294, 3
  store i64 %2295, i64* %PC
  %2296 = inttoptr i64 %2291 to i32*
  store i32 %2292, i32* %2296
  %2297 = load i64, i64* %RBP
  %2298 = sub i64 %2297, 88
  %2299 = load i64, i64* %PC
  %2300 = add i64 %2299, 3
  store i64 %2300, i64* %PC
  %2301 = inttoptr i64 %2298 to i32*
  %2302 = load i32, i32* %2301
  %2303 = zext i32 %2302 to i64
  store i64 %2303, i64* %RAX, align 8, !tbaa !2428
  %2304 = load i64, i64* %RAX
  %2305 = load i64, i64* %RBP
  %2306 = sub i64 %2305, 40
  %2307 = load i64, i64* %PC
  %2308 = add i64 %2307, 3
  store i64 %2308, i64* %PC
  %2309 = trunc i64 %2304 to i32
  %2310 = inttoptr i64 %2306 to i32*
  %2311 = load i32, i32* %2310
  %2312 = add i32 %2311, %2309
  %2313 = zext i32 %2312 to i64
  store i64 %2313, i64* %RAX, align 8, !tbaa !2428
  %2314 = icmp ult i32 %2312, %2309
  %2315 = icmp ult i32 %2312, %2311
  %2316 = or i1 %2314, %2315
  %2317 = zext i1 %2316 to i8
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2317, i8* %2318, align 1, !tbaa !2432
  %2319 = and i32 %2312, 255
  %2320 = call i32 @llvm.ctpop.i32(i32 %2319) #16
  %2321 = trunc i32 %2320 to i8
  %2322 = and i8 %2321, 1
  %2323 = xor i8 %2322, 1
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2323, i8* %2324, align 1, !tbaa !2446
  %2325 = xor i32 %2311, %2309
  %2326 = xor i32 %2325, %2312
  %2327 = lshr i32 %2326, 4
  %2328 = trunc i32 %2327 to i8
  %2329 = and i8 %2328, 1
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2329, i8* %2330, align 1, !tbaa !2447
  %2331 = icmp eq i32 %2312, 0
  %2332 = zext i1 %2331 to i8
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2332, i8* %2333, align 1, !tbaa !2448
  %2334 = lshr i32 %2312, 31
  %2335 = trunc i32 %2334 to i8
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2335, i8* %2336, align 1, !tbaa !2449
  %2337 = lshr i32 %2309, 31
  %2338 = lshr i32 %2311, 31
  %2339 = xor i32 %2334, %2337
  %2340 = xor i32 %2334, %2338
  %2341 = add nuw nsw i32 %2339, %2340
  %2342 = icmp eq i32 %2341, 2
  %2343 = zext i1 %2342 to i8
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2343, i8* %2344, align 1, !tbaa !2450
  %2345 = load i64, i64* %RAX
  %2346 = load i64, i64* %PC
  %2347 = add i64 %2346, 3
  store i64 %2347, i64* %PC
  %2348 = and i64 %2345, 4294967295
  %2349 = shl i64 %2348, 12
  %2350 = trunc i64 %2349 to i32
  %2351 = icmp slt i32 %2350, 0
  %2352 = shl i32 %2350, 1
  %2353 = zext i32 %2352 to i64
  store i64 %2353, i64* %RAX, align 8, !tbaa !2428
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2355 = zext i1 %2351 to i8
  store i8 %2355, i8* %2354, align 1, !tbaa !2451
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2356, align 1, !tbaa !2451
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2357, align 1, !tbaa !2451
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2359 = icmp eq i32 %2352, 0
  %2360 = zext i1 %2359 to i8
  store i8 %2360, i8* %2358, align 1, !tbaa !2451
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2362 = lshr i32 %2352, 31
  %2363 = trunc i32 %2362 to i8
  store i8 %2363, i8* %2361, align 1, !tbaa !2451
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2364, align 1, !tbaa !2451
  %2365 = load i64, i64* %RBP
  %2366 = sub i64 %2365, 88
  %2367 = load i64, i64* %PC
  %2368 = add i64 %2367, 3
  store i64 %2368, i64* %PC
  %2369 = inttoptr i64 %2366 to i32*
  %2370 = load i32, i32* %2369
  %2371 = zext i32 %2370 to i64
  store i64 %2371, i64* %RCX, align 8, !tbaa !2428
  %2372 = load i64, i64* %RCX
  %2373 = load i64, i64* %RBP
  %2374 = sub i64 %2373, 40
  %2375 = load i64, i64* %PC
  %2376 = add i64 %2375, 3
  store i64 %2376, i64* %PC
  %2377 = trunc i64 %2372 to i32
  %2378 = inttoptr i64 %2374 to i32*
  %2379 = load i32, i32* %2378
  %2380 = add i32 %2379, %2377
  %2381 = zext i32 %2380 to i64
  store i64 %2381, i64* %RCX, align 8, !tbaa !2428
  %2382 = icmp ult i32 %2380, %2377
  %2383 = icmp ult i32 %2380, %2379
  %2384 = or i1 %2382, %2383
  %2385 = zext i1 %2384 to i8
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2385, i8* %2386, align 1, !tbaa !2432
  %2387 = and i32 %2380, 255
  %2388 = call i32 @llvm.ctpop.i32(i32 %2387) #16
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  %2391 = xor i8 %2390, 1
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2391, i8* %2392, align 1, !tbaa !2446
  %2393 = xor i32 %2379, %2377
  %2394 = xor i32 %2393, %2380
  %2395 = lshr i32 %2394, 4
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2397, i8* %2398, align 1, !tbaa !2447
  %2399 = icmp eq i32 %2380, 0
  %2400 = zext i1 %2399 to i8
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2400, i8* %2401, align 1, !tbaa !2448
  %2402 = lshr i32 %2380, 31
  %2403 = trunc i32 %2402 to i8
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2403, i8* %2404, align 1, !tbaa !2449
  %2405 = lshr i32 %2377, 31
  %2406 = lshr i32 %2379, 31
  %2407 = xor i32 %2402, %2405
  %2408 = xor i32 %2402, %2406
  %2409 = add nuw nsw i32 %2407, %2408
  %2410 = icmp eq i32 %2409, 2
  %2411 = zext i1 %2410 to i8
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2411, i8* %2412, align 1, !tbaa !2450
  %2413 = load i64, i64* %RCX
  %2414 = load i64, i64* %PC
  %2415 = add i64 %2414, 3
  store i64 %2415, i64* %PC
  %2416 = and i64 %2413, 4294967295
  %2417 = lshr i64 %2416, 18
  %2418 = trunc i64 %2417 to i8
  %2419 = and i8 %2418, 1
  %2420 = lshr i64 %2417, 1
  %2421 = trunc i64 %2420 to i32
  %2422 = and i32 %2421, 2147483647
  %2423 = zext i32 %2422 to i64
  store i64 %2423, i64* %RCX, align 8, !tbaa !2428
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2419, i8* %2424, align 1, !tbaa !2451
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2426 = and i32 %2421, 255
  %2427 = call i32 @llvm.ctpop.i32(i32 %2426) #16
  %2428 = trunc i32 %2427 to i8
  %2429 = and i8 %2428, 1
  %2430 = xor i8 %2429, 1
  store i8 %2430, i8* %2425, align 1, !tbaa !2451
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2431, align 1, !tbaa !2451
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2433 = icmp eq i32 %2422, 0
  %2434 = zext i1 %2433 to i8
  store i8 %2434, i8* %2432, align 1, !tbaa !2451
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2435, align 1, !tbaa !2451
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2436, align 1, !tbaa !2451
  %2437 = load i64, i64* %RAX
  %2438 = load i32, i32* %ECX
  %2439 = zext i32 %2438 to i64
  %2440 = load i64, i64* %PC
  %2441 = add i64 %2440, 2
  store i64 %2441, i64* %PC
  %2442 = or i64 %2439, %2437
  %2443 = trunc i64 %2442 to i32
  %2444 = and i64 %2442, 4294967295
  store i64 %2444, i64* %RAX, align 8, !tbaa !2428
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2445, align 1, !tbaa !2432
  %2446 = and i32 %2443, 255
  %2447 = call i32 @llvm.ctpop.i32(i32 %2446) #16
  %2448 = trunc i32 %2447 to i8
  %2449 = and i8 %2448, 1
  %2450 = xor i8 %2449, 1
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2450, i8* %2451, align 1, !tbaa !2446
  %2452 = icmp eq i32 %2443, 0
  %2453 = zext i1 %2452 to i8
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2453, i8* %2454, align 1, !tbaa !2448
  %2455 = lshr i32 %2443, 31
  %2456 = trunc i32 %2455 to i8
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2456, i8* %2457, align 1, !tbaa !2449
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2458, align 1, !tbaa !2450
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2459, align 1, !tbaa !2447
  %2460 = load i64, i64* %RAX
  %2461 = load i64, i64* %RBP
  %2462 = sub i64 %2461, 72
  %2463 = load i64, i64* %PC
  %2464 = add i64 %2463, 3
  store i64 %2464, i64* %PC
  %2465 = trunc i64 %2460 to i32
  %2466 = inttoptr i64 %2462 to i32*
  %2467 = load i32, i32* %2466
  %2468 = xor i32 %2467, %2465
  %2469 = zext i32 %2468 to i64
  store i64 %2469, i64* %RAX, align 8, !tbaa !2428
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2470, align 1, !tbaa !2432
  %2471 = and i32 %2468, 255
  %2472 = call i32 @llvm.ctpop.i32(i32 %2471) #16
  %2473 = trunc i32 %2472 to i8
  %2474 = and i8 %2473, 1
  %2475 = xor i8 %2474, 1
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2475, i8* %2476, align 1, !tbaa !2446
  %2477 = icmp eq i32 %2468, 0
  %2478 = zext i1 %2477 to i8
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2478, i8* %2479, align 1, !tbaa !2448
  %2480 = lshr i32 %2468, 31
  %2481 = trunc i32 %2480 to i8
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2481, i8* %2482, align 1, !tbaa !2449
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2483, align 1, !tbaa !2450
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2484, align 1, !tbaa !2447
  %2485 = load i64, i64* %RBP
  %2486 = sub i64 %2485, 72
  %2487 = load i32, i32* %EAX
  %2488 = zext i32 %2487 to i64
  %2489 = load i64, i64* %PC
  %2490 = add i64 %2489, 3
  store i64 %2490, i64* %PC
  %2491 = inttoptr i64 %2486 to i32*
  store i32 %2487, i32* %2491
  %2492 = load i64, i64* %RBP
  %2493 = sub i64 %2492, 72
  %2494 = load i64, i64* %PC
  %2495 = add i64 %2494, 3
  store i64 %2495, i64* %PC
  %2496 = inttoptr i64 %2493 to i32*
  %2497 = load i32, i32* %2496
  %2498 = zext i32 %2497 to i64
  store i64 %2498, i64* %RAX, align 8, !tbaa !2428
  %2499 = load i64, i64* %RAX
  %2500 = load i64, i64* %RBP
  %2501 = sub i64 %2500, 88
  %2502 = load i64, i64* %PC
  %2503 = add i64 %2502, 3
  store i64 %2503, i64* %PC
  %2504 = trunc i64 %2499 to i32
  %2505 = inttoptr i64 %2501 to i32*
  %2506 = load i32, i32* %2505
  %2507 = add i32 %2506, %2504
  %2508 = zext i32 %2507 to i64
  store i64 %2508, i64* %RAX, align 8, !tbaa !2428
  %2509 = icmp ult i32 %2507, %2504
  %2510 = icmp ult i32 %2507, %2506
  %2511 = or i1 %2509, %2510
  %2512 = zext i1 %2511 to i8
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2512, i8* %2513, align 1, !tbaa !2432
  %2514 = and i32 %2507, 255
  %2515 = call i32 @llvm.ctpop.i32(i32 %2514) #16
  %2516 = trunc i32 %2515 to i8
  %2517 = and i8 %2516, 1
  %2518 = xor i8 %2517, 1
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2518, i8* %2519, align 1, !tbaa !2446
  %2520 = xor i32 %2506, %2504
  %2521 = xor i32 %2520, %2507
  %2522 = lshr i32 %2521, 4
  %2523 = trunc i32 %2522 to i8
  %2524 = and i8 %2523, 1
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2524, i8* %2525, align 1, !tbaa !2447
  %2526 = icmp eq i32 %2507, 0
  %2527 = zext i1 %2526 to i8
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2527, i8* %2528, align 1, !tbaa !2448
  %2529 = lshr i32 %2507, 31
  %2530 = trunc i32 %2529 to i8
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2530, i8* %2531, align 1, !tbaa !2449
  %2532 = lshr i32 %2504, 31
  %2533 = lshr i32 %2506, 31
  %2534 = xor i32 %2529, %2532
  %2535 = xor i32 %2529, %2533
  %2536 = add nuw nsw i32 %2534, %2535
  %2537 = icmp eq i32 %2536, 2
  %2538 = zext i1 %2537 to i8
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2538, i8* %2539, align 1, !tbaa !2450
  %2540 = load i64, i64* %RAX
  %2541 = load i64, i64* %PC
  %2542 = add i64 %2541, 3
  store i64 %2542, i64* %PC
  %2543 = and i64 %2540, 4294967295
  %2544 = shl i64 %2543, 17
  %2545 = trunc i64 %2544 to i32
  %2546 = icmp slt i32 %2545, 0
  %2547 = shl i32 %2545, 1
  %2548 = zext i32 %2547 to i64
  store i64 %2548, i64* %RAX, align 8, !tbaa !2428
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2550 = zext i1 %2546 to i8
  store i8 %2550, i8* %2549, align 1, !tbaa !2451
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2551, align 1, !tbaa !2451
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2552, align 1, !tbaa !2451
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2554 = icmp eq i32 %2547, 0
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %2553, align 1, !tbaa !2451
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2557 = lshr i32 %2547, 31
  %2558 = trunc i32 %2557 to i8
  store i8 %2558, i8* %2556, align 1, !tbaa !2451
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2559, align 1, !tbaa !2451
  %2560 = load i64, i64* %RBP
  %2561 = sub i64 %2560, 72
  %2562 = load i64, i64* %PC
  %2563 = add i64 %2562, 3
  store i64 %2563, i64* %PC
  %2564 = inttoptr i64 %2561 to i32*
  %2565 = load i32, i32* %2564
  %2566 = zext i32 %2565 to i64
  store i64 %2566, i64* %RCX, align 8, !tbaa !2428
  %2567 = load i64, i64* %RCX
  %2568 = load i64, i64* %RBP
  %2569 = sub i64 %2568, 88
  %2570 = load i64, i64* %PC
  %2571 = add i64 %2570, 3
  store i64 %2571, i64* %PC
  %2572 = trunc i64 %2567 to i32
  %2573 = inttoptr i64 %2569 to i32*
  %2574 = load i32, i32* %2573
  %2575 = add i32 %2574, %2572
  %2576 = zext i32 %2575 to i64
  store i64 %2576, i64* %RCX, align 8, !tbaa !2428
  %2577 = icmp ult i32 %2575, %2572
  %2578 = icmp ult i32 %2575, %2574
  %2579 = or i1 %2577, %2578
  %2580 = zext i1 %2579 to i8
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2580, i8* %2581, align 1, !tbaa !2432
  %2582 = and i32 %2575, 255
  %2583 = call i32 @llvm.ctpop.i32(i32 %2582) #16
  %2584 = trunc i32 %2583 to i8
  %2585 = and i8 %2584, 1
  %2586 = xor i8 %2585, 1
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2586, i8* %2587, align 1, !tbaa !2446
  %2588 = xor i32 %2574, %2572
  %2589 = xor i32 %2588, %2575
  %2590 = lshr i32 %2589, 4
  %2591 = trunc i32 %2590 to i8
  %2592 = and i8 %2591, 1
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2592, i8* %2593, align 1, !tbaa !2447
  %2594 = icmp eq i32 %2575, 0
  %2595 = zext i1 %2594 to i8
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2595, i8* %2596, align 1, !tbaa !2448
  %2597 = lshr i32 %2575, 31
  %2598 = trunc i32 %2597 to i8
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2598, i8* %2599, align 1, !tbaa !2449
  %2600 = lshr i32 %2572, 31
  %2601 = lshr i32 %2574, 31
  %2602 = xor i32 %2597, %2600
  %2603 = xor i32 %2597, %2601
  %2604 = add nuw nsw i32 %2602, %2603
  %2605 = icmp eq i32 %2604, 2
  %2606 = zext i1 %2605 to i8
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2606, i8* %2607, align 1, !tbaa !2450
  %2608 = load i64, i64* %RCX
  %2609 = load i64, i64* %PC
  %2610 = add i64 %2609, 3
  store i64 %2610, i64* %PC
  %2611 = and i64 %2608, 4294967295
  %2612 = lshr i64 %2611, 13
  %2613 = trunc i64 %2612 to i8
  %2614 = and i8 %2613, 1
  %2615 = lshr i64 %2612, 1
  %2616 = trunc i64 %2615 to i32
  %2617 = and i32 %2616, 2147483647
  %2618 = zext i32 %2617 to i64
  store i64 %2618, i64* %RCX, align 8, !tbaa !2428
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2614, i8* %2619, align 1, !tbaa !2451
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2621 = and i32 %2616, 255
  %2622 = call i32 @llvm.ctpop.i32(i32 %2621) #16
  %2623 = trunc i32 %2622 to i8
  %2624 = and i8 %2623, 1
  %2625 = xor i8 %2624, 1
  store i8 %2625, i8* %2620, align 1, !tbaa !2451
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2626, align 1, !tbaa !2451
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2628 = icmp eq i32 %2617, 0
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %2627, align 1, !tbaa !2451
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2630, align 1, !tbaa !2451
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2631, align 1, !tbaa !2451
  %2632 = load i64, i64* %RAX
  %2633 = load i32, i32* %ECX
  %2634 = zext i32 %2633 to i64
  %2635 = load i64, i64* %PC
  %2636 = add i64 %2635, 2
  store i64 %2636, i64* %PC
  %2637 = or i64 %2634, %2632
  %2638 = trunc i64 %2637 to i32
  %2639 = and i64 %2637, 4294967295
  store i64 %2639, i64* %RAX, align 8, !tbaa !2428
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2640, align 1, !tbaa !2432
  %2641 = and i32 %2638, 255
  %2642 = call i32 @llvm.ctpop.i32(i32 %2641) #16
  %2643 = trunc i32 %2642 to i8
  %2644 = and i8 %2643, 1
  %2645 = xor i8 %2644, 1
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2645, i8* %2646, align 1, !tbaa !2446
  %2647 = icmp eq i32 %2638, 0
  %2648 = zext i1 %2647 to i8
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2648, i8* %2649, align 1, !tbaa !2448
  %2650 = lshr i32 %2638, 31
  %2651 = trunc i32 %2650 to i8
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2651, i8* %2652, align 1, !tbaa !2449
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2653, align 1, !tbaa !2450
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2654, align 1, !tbaa !2447
  %2655 = load i64, i64* %RAX
  %2656 = load i64, i64* %RBP
  %2657 = sub i64 %2656, 56
  %2658 = load i64, i64* %PC
  %2659 = add i64 %2658, 3
  store i64 %2659, i64* %PC
  %2660 = trunc i64 %2655 to i32
  %2661 = inttoptr i64 %2657 to i32*
  %2662 = load i32, i32* %2661
  %2663 = xor i32 %2662, %2660
  %2664 = zext i32 %2663 to i64
  store i64 %2664, i64* %RAX, align 8, !tbaa !2428
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2665, align 1, !tbaa !2432
  %2666 = and i32 %2663, 255
  %2667 = call i32 @llvm.ctpop.i32(i32 %2666) #16
  %2668 = trunc i32 %2667 to i8
  %2669 = and i8 %2668, 1
  %2670 = xor i8 %2669, 1
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2670, i8* %2671, align 1, !tbaa !2446
  %2672 = icmp eq i32 %2663, 0
  %2673 = zext i1 %2672 to i8
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2673, i8* %2674, align 1, !tbaa !2448
  %2675 = lshr i32 %2663, 31
  %2676 = trunc i32 %2675 to i8
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2676, i8* %2677, align 1, !tbaa !2449
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2678, align 1, !tbaa !2450
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2679, align 1, !tbaa !2447
  %2680 = load i64, i64* %RBP
  %2681 = sub i64 %2680, 56
  %2682 = load i32, i32* %EAX
  %2683 = zext i32 %2682 to i64
  %2684 = load i64, i64* %PC
  %2685 = add i64 %2684, 3
  store i64 %2685, i64* %PC
  %2686 = inttoptr i64 %2681 to i32*
  store i32 %2682, i32* %2686
  %2687 = load i64, i64* %RBP
  %2688 = sub i64 %2687, 36
  %2689 = load i64, i64* %PC
  %2690 = add i64 %2689, 3
  store i64 %2690, i64* %PC
  %2691 = inttoptr i64 %2688 to i32*
  %2692 = load i32, i32* %2691
  %2693 = zext i32 %2692 to i64
  store i64 %2693, i64* %RAX, align 8, !tbaa !2428
  %2694 = load i64, i64* %RAX
  %2695 = load i64, i64* %RBP
  %2696 = sub i64 %2695, 52
  %2697 = load i64, i64* %PC
  %2698 = add i64 %2697, 3
  store i64 %2698, i64* %PC
  %2699 = trunc i64 %2694 to i32
  %2700 = inttoptr i64 %2696 to i32*
  %2701 = load i32, i32* %2700
  %2702 = add i32 %2701, %2699
  %2703 = zext i32 %2702 to i64
  store i64 %2703, i64* %RAX, align 8, !tbaa !2428
  %2704 = icmp ult i32 %2702, %2699
  %2705 = icmp ult i32 %2702, %2701
  %2706 = or i1 %2704, %2705
  %2707 = zext i1 %2706 to i8
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2707, i8* %2708, align 1, !tbaa !2432
  %2709 = and i32 %2702, 255
  %2710 = call i32 @llvm.ctpop.i32(i32 %2709) #16
  %2711 = trunc i32 %2710 to i8
  %2712 = and i8 %2711, 1
  %2713 = xor i8 %2712, 1
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2713, i8* %2714, align 1, !tbaa !2446
  %2715 = xor i32 %2701, %2699
  %2716 = xor i32 %2715, %2702
  %2717 = lshr i32 %2716, 4
  %2718 = trunc i32 %2717 to i8
  %2719 = and i8 %2718, 1
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2719, i8* %2720, align 1, !tbaa !2447
  %2721 = icmp eq i32 %2702, 0
  %2722 = zext i1 %2721 to i8
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2722, i8* %2723, align 1, !tbaa !2448
  %2724 = lshr i32 %2702, 31
  %2725 = trunc i32 %2724 to i8
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2725, i8* %2726, align 1, !tbaa !2449
  %2727 = lshr i32 %2699, 31
  %2728 = lshr i32 %2701, 31
  %2729 = xor i32 %2724, %2727
  %2730 = xor i32 %2724, %2728
  %2731 = add nuw nsw i32 %2729, %2730
  %2732 = icmp eq i32 %2731, 2
  %2733 = zext i1 %2732 to i8
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2733, i8* %2734, align 1, !tbaa !2450
  %2735 = load i64, i64* %RAX
  %2736 = load i64, i64* %PC
  %2737 = add i64 %2736, 3
  store i64 %2737, i64* %PC
  %2738 = and i64 %2735, 4294967295
  %2739 = shl i64 %2738, 6
  %2740 = trunc i64 %2739 to i32
  %2741 = icmp slt i32 %2740, 0
  %2742 = shl i32 %2740, 1
  %2743 = zext i32 %2742 to i64
  store i64 %2743, i64* %RAX, align 8, !tbaa !2428
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2745 = zext i1 %2741 to i8
  store i8 %2745, i8* %2744, align 1, !tbaa !2451
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2747 = and i32 %2742, 254
  %2748 = call i32 @llvm.ctpop.i32(i32 %2747) #16
  %2749 = trunc i32 %2748 to i8
  %2750 = and i8 %2749, 1
  %2751 = xor i8 %2750, 1
  store i8 %2751, i8* %2746, align 1, !tbaa !2451
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2752, align 1, !tbaa !2451
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2754 = icmp eq i32 %2742, 0
  %2755 = zext i1 %2754 to i8
  store i8 %2755, i8* %2753, align 1, !tbaa !2451
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2757 = lshr i32 %2742, 31
  %2758 = trunc i32 %2757 to i8
  store i8 %2758, i8* %2756, align 1, !tbaa !2451
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2759, align 1, !tbaa !2451
  %2760 = load i64, i64* %RBP
  %2761 = sub i64 %2760, 36
  %2762 = load i64, i64* %PC
  %2763 = add i64 %2762, 3
  store i64 %2763, i64* %PC
  %2764 = inttoptr i64 %2761 to i32*
  %2765 = load i32, i32* %2764
  %2766 = zext i32 %2765 to i64
  store i64 %2766, i64* %RCX, align 8, !tbaa !2428
  %2767 = load i64, i64* %RCX
  %2768 = load i64, i64* %RBP
  %2769 = sub i64 %2768, 52
  %2770 = load i64, i64* %PC
  %2771 = add i64 %2770, 3
  store i64 %2771, i64* %PC
  %2772 = trunc i64 %2767 to i32
  %2773 = inttoptr i64 %2769 to i32*
  %2774 = load i32, i32* %2773
  %2775 = add i32 %2774, %2772
  %2776 = zext i32 %2775 to i64
  store i64 %2776, i64* %RCX, align 8, !tbaa !2428
  %2777 = icmp ult i32 %2775, %2772
  %2778 = icmp ult i32 %2775, %2774
  %2779 = or i1 %2777, %2778
  %2780 = zext i1 %2779 to i8
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2780, i8* %2781, align 1, !tbaa !2432
  %2782 = and i32 %2775, 255
  %2783 = call i32 @llvm.ctpop.i32(i32 %2782) #16
  %2784 = trunc i32 %2783 to i8
  %2785 = and i8 %2784, 1
  %2786 = xor i8 %2785, 1
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2786, i8* %2787, align 1, !tbaa !2446
  %2788 = xor i32 %2774, %2772
  %2789 = xor i32 %2788, %2775
  %2790 = lshr i32 %2789, 4
  %2791 = trunc i32 %2790 to i8
  %2792 = and i8 %2791, 1
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2792, i8* %2793, align 1, !tbaa !2447
  %2794 = icmp eq i32 %2775, 0
  %2795 = zext i1 %2794 to i8
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2795, i8* %2796, align 1, !tbaa !2448
  %2797 = lshr i32 %2775, 31
  %2798 = trunc i32 %2797 to i8
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2798, i8* %2799, align 1, !tbaa !2449
  %2800 = lshr i32 %2772, 31
  %2801 = lshr i32 %2774, 31
  %2802 = xor i32 %2797, %2800
  %2803 = xor i32 %2797, %2801
  %2804 = add nuw nsw i32 %2802, %2803
  %2805 = icmp eq i32 %2804, 2
  %2806 = zext i1 %2805 to i8
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2806, i8* %2807, align 1, !tbaa !2450
  %2808 = load i64, i64* %RCX
  %2809 = load i64, i64* %PC
  %2810 = add i64 %2809, 3
  store i64 %2810, i64* %PC
  %2811 = and i64 %2808, 4294967295
  %2812 = lshr i64 %2811, 24
  %2813 = trunc i64 %2812 to i8
  %2814 = and i8 %2813, 1
  %2815 = lshr i64 %2812, 1
  %2816 = trunc i64 %2815 to i32
  %2817 = and i32 %2816, 2147483647
  %2818 = zext i32 %2817 to i64
  store i64 %2818, i64* %RCX, align 8, !tbaa !2428
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2814, i8* %2819, align 1, !tbaa !2451
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2821 = and i32 %2816, 255
  %2822 = call i32 @llvm.ctpop.i32(i32 %2821) #16
  %2823 = trunc i32 %2822 to i8
  %2824 = and i8 %2823, 1
  %2825 = xor i8 %2824, 1
  store i8 %2825, i8* %2820, align 1, !tbaa !2451
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2826, align 1, !tbaa !2451
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2828 = icmp eq i32 %2817, 0
  %2829 = zext i1 %2828 to i8
  store i8 %2829, i8* %2827, align 1, !tbaa !2451
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2830, align 1, !tbaa !2451
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2831, align 1, !tbaa !2451
  %2832 = load i64, i64* %RAX
  %2833 = load i32, i32* %ECX
  %2834 = zext i32 %2833 to i64
  %2835 = load i64, i64* %PC
  %2836 = add i64 %2835, 2
  store i64 %2836, i64* %PC
  %2837 = or i64 %2834, %2832
  %2838 = trunc i64 %2837 to i32
  %2839 = and i64 %2837, 4294967295
  store i64 %2839, i64* %RAX, align 8, !tbaa !2428
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2840, align 1, !tbaa !2432
  %2841 = and i32 %2838, 255
  %2842 = call i32 @llvm.ctpop.i32(i32 %2841) #16
  %2843 = trunc i32 %2842 to i8
  %2844 = and i8 %2843, 1
  %2845 = xor i8 %2844, 1
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2845, i8* %2846, align 1, !tbaa !2446
  %2847 = icmp eq i32 %2838, 0
  %2848 = zext i1 %2847 to i8
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2848, i8* %2849, align 1, !tbaa !2448
  %2850 = lshr i32 %2838, 31
  %2851 = trunc i32 %2850 to i8
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2851, i8* %2852, align 1, !tbaa !2449
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2853, align 1, !tbaa !2450
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2854, align 1, !tbaa !2447
  %2855 = load i64, i64* %RAX
  %2856 = load i64, i64* %RBP
  %2857 = sub i64 %2856, 84
  %2858 = load i64, i64* %PC
  %2859 = add i64 %2858, 3
  store i64 %2859, i64* %PC
  %2860 = trunc i64 %2855 to i32
  %2861 = inttoptr i64 %2857 to i32*
  %2862 = load i32, i32* %2861
  %2863 = xor i32 %2862, %2860
  %2864 = zext i32 %2863 to i64
  store i64 %2864, i64* %RAX, align 8, !tbaa !2428
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2865, align 1, !tbaa !2432
  %2866 = and i32 %2863, 255
  %2867 = call i32 @llvm.ctpop.i32(i32 %2866) #16
  %2868 = trunc i32 %2867 to i8
  %2869 = and i8 %2868, 1
  %2870 = xor i8 %2869, 1
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2870, i8* %2871, align 1, !tbaa !2446
  %2872 = icmp eq i32 %2863, 0
  %2873 = zext i1 %2872 to i8
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2873, i8* %2874, align 1, !tbaa !2448
  %2875 = lshr i32 %2863, 31
  %2876 = trunc i32 %2875 to i8
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2876, i8* %2877, align 1, !tbaa !2449
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2878, align 1, !tbaa !2450
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2879, align 1, !tbaa !2447
  %2880 = load i64, i64* %RBP
  %2881 = sub i64 %2880, 84
  %2882 = load i32, i32* %EAX
  %2883 = zext i32 %2882 to i64
  %2884 = load i64, i64* %PC
  %2885 = add i64 %2884, 3
  store i64 %2885, i64* %PC
  %2886 = inttoptr i64 %2881 to i32*
  store i32 %2882, i32* %2886
  %2887 = load i64, i64* %RBP
  %2888 = sub i64 %2887, 84
  %2889 = load i64, i64* %PC
  %2890 = add i64 %2889, 3
  store i64 %2890, i64* %PC
  %2891 = inttoptr i64 %2888 to i32*
  %2892 = load i32, i32* %2891
  %2893 = zext i32 %2892 to i64
  store i64 %2893, i64* %RAX, align 8, !tbaa !2428
  %2894 = load i64, i64* %RAX
  %2895 = load i64, i64* %RBP
  %2896 = sub i64 %2895, 36
  %2897 = load i64, i64* %PC
  %2898 = add i64 %2897, 3
  store i64 %2898, i64* %PC
  %2899 = trunc i64 %2894 to i32
  %2900 = inttoptr i64 %2896 to i32*
  %2901 = load i32, i32* %2900
  %2902 = add i32 %2901, %2899
  %2903 = zext i32 %2902 to i64
  store i64 %2903, i64* %RAX, align 8, !tbaa !2428
  %2904 = icmp ult i32 %2902, %2899
  %2905 = icmp ult i32 %2902, %2901
  %2906 = or i1 %2904, %2905
  %2907 = zext i1 %2906 to i8
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2907, i8* %2908, align 1, !tbaa !2432
  %2909 = and i32 %2902, 255
  %2910 = call i32 @llvm.ctpop.i32(i32 %2909) #16
  %2911 = trunc i32 %2910 to i8
  %2912 = and i8 %2911, 1
  %2913 = xor i8 %2912, 1
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2913, i8* %2914, align 1, !tbaa !2446
  %2915 = xor i32 %2901, %2899
  %2916 = xor i32 %2915, %2902
  %2917 = lshr i32 %2916, 4
  %2918 = trunc i32 %2917 to i8
  %2919 = and i8 %2918, 1
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2919, i8* %2920, align 1, !tbaa !2447
  %2921 = icmp eq i32 %2902, 0
  %2922 = zext i1 %2921 to i8
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2922, i8* %2923, align 1, !tbaa !2448
  %2924 = lshr i32 %2902, 31
  %2925 = trunc i32 %2924 to i8
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2925, i8* %2926, align 1, !tbaa !2449
  %2927 = lshr i32 %2899, 31
  %2928 = lshr i32 %2901, 31
  %2929 = xor i32 %2924, %2927
  %2930 = xor i32 %2924, %2928
  %2931 = add nuw nsw i32 %2929, %2930
  %2932 = icmp eq i32 %2931, 2
  %2933 = zext i1 %2932 to i8
  %2934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2933, i8* %2934, align 1, !tbaa !2450
  %2935 = load i64, i64* %RAX
  %2936 = load i64, i64* %PC
  %2937 = add i64 %2936, 3
  store i64 %2937, i64* %PC
  %2938 = and i64 %2935, 4294967295
  %2939 = shl i64 %2938, 8
  %2940 = trunc i64 %2939 to i32
  %2941 = icmp slt i32 %2940, 0
  %2942 = shl i32 %2940, 1
  %2943 = zext i32 %2942 to i64
  store i64 %2943, i64* %RAX, align 8, !tbaa !2428
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2945 = zext i1 %2941 to i8
  store i8 %2945, i8* %2944, align 1, !tbaa !2451
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2946, align 1, !tbaa !2451
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2947, align 1, !tbaa !2451
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2949 = icmp eq i32 %2942, 0
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %2948, align 1, !tbaa !2451
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2952 = lshr i32 %2942, 31
  %2953 = trunc i32 %2952 to i8
  store i8 %2953, i8* %2951, align 1, !tbaa !2451
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2954, align 1, !tbaa !2451
  %2955 = load i64, i64* %RBP
  %2956 = sub i64 %2955, 84
  %2957 = load i64, i64* %PC
  %2958 = add i64 %2957, 3
  store i64 %2958, i64* %PC
  %2959 = inttoptr i64 %2956 to i32*
  %2960 = load i32, i32* %2959
  %2961 = zext i32 %2960 to i64
  store i64 %2961, i64* %RCX, align 8, !tbaa !2428
  %2962 = load i64, i64* %RCX
  %2963 = load i64, i64* %RBP
  %2964 = sub i64 %2963, 36
  %2965 = load i64, i64* %PC
  %2966 = add i64 %2965, 3
  store i64 %2966, i64* %PC
  %2967 = trunc i64 %2962 to i32
  %2968 = inttoptr i64 %2964 to i32*
  %2969 = load i32, i32* %2968
  %2970 = add i32 %2969, %2967
  %2971 = zext i32 %2970 to i64
  store i64 %2971, i64* %RCX, align 8, !tbaa !2428
  %2972 = icmp ult i32 %2970, %2967
  %2973 = icmp ult i32 %2970, %2969
  %2974 = or i1 %2972, %2973
  %2975 = zext i1 %2974 to i8
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2975, i8* %2976, align 1, !tbaa !2432
  %2977 = and i32 %2970, 255
  %2978 = call i32 @llvm.ctpop.i32(i32 %2977) #16
  %2979 = trunc i32 %2978 to i8
  %2980 = and i8 %2979, 1
  %2981 = xor i8 %2980, 1
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2981, i8* %2982, align 1, !tbaa !2446
  %2983 = xor i32 %2969, %2967
  %2984 = xor i32 %2983, %2970
  %2985 = lshr i32 %2984, 4
  %2986 = trunc i32 %2985 to i8
  %2987 = and i8 %2986, 1
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2987, i8* %2988, align 1, !tbaa !2447
  %2989 = icmp eq i32 %2970, 0
  %2990 = zext i1 %2989 to i8
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2990, i8* %2991, align 1, !tbaa !2448
  %2992 = lshr i32 %2970, 31
  %2993 = trunc i32 %2992 to i8
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2993, i8* %2994, align 1, !tbaa !2449
  %2995 = lshr i32 %2967, 31
  %2996 = lshr i32 %2969, 31
  %2997 = xor i32 %2992, %2995
  %2998 = xor i32 %2992, %2996
  %2999 = add nuw nsw i32 %2997, %2998
  %3000 = icmp eq i32 %2999, 2
  %3001 = zext i1 %3000 to i8
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3001, i8* %3002, align 1, !tbaa !2450
  %3003 = load i64, i64* %RCX
  %3004 = load i64, i64* %PC
  %3005 = add i64 %3004, 3
  store i64 %3005, i64* %PC
  %3006 = and i64 %3003, 4294967295
  %3007 = lshr i64 %3006, 22
  %3008 = trunc i64 %3007 to i8
  %3009 = and i8 %3008, 1
  %3010 = lshr i64 %3007, 1
  %3011 = trunc i64 %3010 to i32
  %3012 = and i32 %3011, 2147483647
  %3013 = zext i32 %3012 to i64
  store i64 %3013, i64* %RCX, align 8, !tbaa !2428
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3009, i8* %3014, align 1, !tbaa !2451
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3016 = and i32 %3011, 255
  %3017 = call i32 @llvm.ctpop.i32(i32 %3016) #16
  %3018 = trunc i32 %3017 to i8
  %3019 = and i8 %3018, 1
  %3020 = xor i8 %3019, 1
  store i8 %3020, i8* %3015, align 1, !tbaa !2451
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3021, align 1, !tbaa !2451
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3023 = icmp eq i32 %3012, 0
  %3024 = zext i1 %3023 to i8
  store i8 %3024, i8* %3022, align 1, !tbaa !2451
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3025, align 1, !tbaa !2451
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3026, align 1, !tbaa !2451
  %3027 = load i64, i64* %RAX
  %3028 = load i32, i32* %ECX
  %3029 = zext i32 %3028 to i64
  %3030 = load i64, i64* %PC
  %3031 = add i64 %3030, 2
  store i64 %3031, i64* %PC
  %3032 = or i64 %3029, %3027
  %3033 = trunc i64 %3032 to i32
  %3034 = and i64 %3032, 4294967295
  store i64 %3034, i64* %RAX, align 8, !tbaa !2428
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3035, align 1, !tbaa !2432
  %3036 = and i32 %3033, 255
  %3037 = call i32 @llvm.ctpop.i32(i32 %3036) #16
  %3038 = trunc i32 %3037 to i8
  %3039 = and i8 %3038, 1
  %3040 = xor i8 %3039, 1
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3040, i8* %3041, align 1, !tbaa !2446
  %3042 = icmp eq i32 %3033, 0
  %3043 = zext i1 %3042 to i8
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3043, i8* %3044, align 1, !tbaa !2448
  %3045 = lshr i32 %3033, 31
  %3046 = trunc i32 %3045 to i8
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3046, i8* %3047, align 1, !tbaa !2449
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3048, align 1, !tbaa !2450
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3049, align 1, !tbaa !2447
  %3050 = load i64, i64* %RAX
  %3051 = load i64, i64* %RBP
  %3052 = sub i64 %3051, 68
  %3053 = load i64, i64* %PC
  %3054 = add i64 %3053, 3
  store i64 %3054, i64* %PC
  %3055 = trunc i64 %3050 to i32
  %3056 = inttoptr i64 %3052 to i32*
  %3057 = load i32, i32* %3056
  %3058 = xor i32 %3057, %3055
  %3059 = zext i32 %3058 to i64
  store i64 %3059, i64* %RAX, align 8, !tbaa !2428
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3060, align 1, !tbaa !2432
  %3061 = and i32 %3058, 255
  %3062 = call i32 @llvm.ctpop.i32(i32 %3061) #16
  %3063 = trunc i32 %3062 to i8
  %3064 = and i8 %3063, 1
  %3065 = xor i8 %3064, 1
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3065, i8* %3066, align 1, !tbaa !2446
  %3067 = icmp eq i32 %3058, 0
  %3068 = zext i1 %3067 to i8
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3068, i8* %3069, align 1, !tbaa !2448
  %3070 = lshr i32 %3058, 31
  %3071 = trunc i32 %3070 to i8
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3071, i8* %3072, align 1, !tbaa !2449
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3073, align 1, !tbaa !2450
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3074, align 1, !tbaa !2447
  %3075 = load i64, i64* %RBP
  %3076 = sub i64 %3075, 68
  %3077 = load i32, i32* %EAX
  %3078 = zext i32 %3077 to i64
  %3079 = load i64, i64* %PC
  %3080 = add i64 %3079, 3
  store i64 %3080, i64* %PC
  %3081 = inttoptr i64 %3076 to i32*
  store i32 %3077, i32* %3081
  %3082 = load i64, i64* %RBP
  %3083 = sub i64 %3082, 68
  %3084 = load i64, i64* %PC
  %3085 = add i64 %3084, 3
  store i64 %3085, i64* %PC
  %3086 = inttoptr i64 %3083 to i32*
  %3087 = load i32, i32* %3086
  %3088 = zext i32 %3087 to i64
  store i64 %3088, i64* %RAX, align 8, !tbaa !2428
  %3089 = load i64, i64* %RAX
  %3090 = load i64, i64* %RBP
  %3091 = sub i64 %3090, 84
  %3092 = load i64, i64* %PC
  %3093 = add i64 %3092, 3
  store i64 %3093, i64* %PC
  %3094 = trunc i64 %3089 to i32
  %3095 = inttoptr i64 %3091 to i32*
  %3096 = load i32, i32* %3095
  %3097 = add i32 %3096, %3094
  %3098 = zext i32 %3097 to i64
  store i64 %3098, i64* %RAX, align 8, !tbaa !2428
  %3099 = icmp ult i32 %3097, %3094
  %3100 = icmp ult i32 %3097, %3096
  %3101 = or i1 %3099, %3100
  %3102 = zext i1 %3101 to i8
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3102, i8* %3103, align 1, !tbaa !2432
  %3104 = and i32 %3097, 255
  %3105 = call i32 @llvm.ctpop.i32(i32 %3104) #16
  %3106 = trunc i32 %3105 to i8
  %3107 = and i8 %3106, 1
  %3108 = xor i8 %3107, 1
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3108, i8* %3109, align 1, !tbaa !2446
  %3110 = xor i32 %3096, %3094
  %3111 = xor i32 %3110, %3097
  %3112 = lshr i32 %3111, 4
  %3113 = trunc i32 %3112 to i8
  %3114 = and i8 %3113, 1
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3114, i8* %3115, align 1, !tbaa !2447
  %3116 = icmp eq i32 %3097, 0
  %3117 = zext i1 %3116 to i8
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3117, i8* %3118, align 1, !tbaa !2448
  %3119 = lshr i32 %3097, 31
  %3120 = trunc i32 %3119 to i8
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3120, i8* %3121, align 1, !tbaa !2449
  %3122 = lshr i32 %3094, 31
  %3123 = lshr i32 %3096, 31
  %3124 = xor i32 %3119, %3122
  %3125 = xor i32 %3119, %3123
  %3126 = add nuw nsw i32 %3124, %3125
  %3127 = icmp eq i32 %3126, 2
  %3128 = zext i1 %3127 to i8
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3128, i8* %3129, align 1, !tbaa !2450
  %3130 = load i64, i64* %RAX
  %3131 = load i64, i64* %PC
  %3132 = add i64 %3131, 3
  store i64 %3132, i64* %PC
  %3133 = and i64 %3130, 4294967295
  %3134 = shl i64 %3133, 12
  %3135 = trunc i64 %3134 to i32
  %3136 = icmp slt i32 %3135, 0
  %3137 = shl i32 %3135, 1
  %3138 = zext i32 %3137 to i64
  store i64 %3138, i64* %RAX, align 8, !tbaa !2428
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3140 = zext i1 %3136 to i8
  store i8 %3140, i8* %3139, align 1, !tbaa !2451
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3141, align 1, !tbaa !2451
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3142, align 1, !tbaa !2451
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3144 = icmp eq i32 %3137, 0
  %3145 = zext i1 %3144 to i8
  store i8 %3145, i8* %3143, align 1, !tbaa !2451
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3147 = lshr i32 %3137, 31
  %3148 = trunc i32 %3147 to i8
  store i8 %3148, i8* %3146, align 1, !tbaa !2451
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3149, align 1, !tbaa !2451
  %3150 = load i64, i64* %RBP
  %3151 = sub i64 %3150, 68
  %3152 = load i64, i64* %PC
  %3153 = add i64 %3152, 3
  store i64 %3153, i64* %PC
  %3154 = inttoptr i64 %3151 to i32*
  %3155 = load i32, i32* %3154
  %3156 = zext i32 %3155 to i64
  store i64 %3156, i64* %RCX, align 8, !tbaa !2428
  %3157 = load i64, i64* %RCX
  %3158 = load i64, i64* %RBP
  %3159 = sub i64 %3158, 84
  %3160 = load i64, i64* %PC
  %3161 = add i64 %3160, 3
  store i64 %3161, i64* %PC
  %3162 = trunc i64 %3157 to i32
  %3163 = inttoptr i64 %3159 to i32*
  %3164 = load i32, i32* %3163
  %3165 = add i32 %3164, %3162
  %3166 = zext i32 %3165 to i64
  store i64 %3166, i64* %RCX, align 8, !tbaa !2428
  %3167 = icmp ult i32 %3165, %3162
  %3168 = icmp ult i32 %3165, %3164
  %3169 = or i1 %3167, %3168
  %3170 = zext i1 %3169 to i8
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3170, i8* %3171, align 1, !tbaa !2432
  %3172 = and i32 %3165, 255
  %3173 = call i32 @llvm.ctpop.i32(i32 %3172) #16
  %3174 = trunc i32 %3173 to i8
  %3175 = and i8 %3174, 1
  %3176 = xor i8 %3175, 1
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3176, i8* %3177, align 1, !tbaa !2446
  %3178 = xor i32 %3164, %3162
  %3179 = xor i32 %3178, %3165
  %3180 = lshr i32 %3179, 4
  %3181 = trunc i32 %3180 to i8
  %3182 = and i8 %3181, 1
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3182, i8* %3183, align 1, !tbaa !2447
  %3184 = icmp eq i32 %3165, 0
  %3185 = zext i1 %3184 to i8
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3185, i8* %3186, align 1, !tbaa !2448
  %3187 = lshr i32 %3165, 31
  %3188 = trunc i32 %3187 to i8
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3188, i8* %3189, align 1, !tbaa !2449
  %3190 = lshr i32 %3162, 31
  %3191 = lshr i32 %3164, 31
  %3192 = xor i32 %3187, %3190
  %3193 = xor i32 %3187, %3191
  %3194 = add nuw nsw i32 %3192, %3193
  %3195 = icmp eq i32 %3194, 2
  %3196 = zext i1 %3195 to i8
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3196, i8* %3197, align 1, !tbaa !2450
  %3198 = load i64, i64* %RCX
  %3199 = load i64, i64* %PC
  %3200 = add i64 %3199, 3
  store i64 %3200, i64* %PC
  %3201 = and i64 %3198, 4294967295
  %3202 = lshr i64 %3201, 18
  %3203 = trunc i64 %3202 to i8
  %3204 = and i8 %3203, 1
  %3205 = lshr i64 %3202, 1
  %3206 = trunc i64 %3205 to i32
  %3207 = and i32 %3206, 2147483647
  %3208 = zext i32 %3207 to i64
  store i64 %3208, i64* %RCX, align 8, !tbaa !2428
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3204, i8* %3209, align 1, !tbaa !2451
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3211 = and i32 %3206, 255
  %3212 = call i32 @llvm.ctpop.i32(i32 %3211) #16
  %3213 = trunc i32 %3212 to i8
  %3214 = and i8 %3213, 1
  %3215 = xor i8 %3214, 1
  store i8 %3215, i8* %3210, align 1, !tbaa !2451
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3216, align 1, !tbaa !2451
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3218 = icmp eq i32 %3207, 0
  %3219 = zext i1 %3218 to i8
  store i8 %3219, i8* %3217, align 1, !tbaa !2451
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3220, align 1, !tbaa !2451
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3221, align 1, !tbaa !2451
  %3222 = load i64, i64* %RAX
  %3223 = load i32, i32* %ECX
  %3224 = zext i32 %3223 to i64
  %3225 = load i64, i64* %PC
  %3226 = add i64 %3225, 2
  store i64 %3226, i64* %PC
  %3227 = or i64 %3224, %3222
  %3228 = trunc i64 %3227 to i32
  %3229 = and i64 %3227, 4294967295
  store i64 %3229, i64* %RAX, align 8, !tbaa !2428
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3230, align 1, !tbaa !2432
  %3231 = and i32 %3228, 255
  %3232 = call i32 @llvm.ctpop.i32(i32 %3231) #16
  %3233 = trunc i32 %3232 to i8
  %3234 = and i8 %3233, 1
  %3235 = xor i8 %3234, 1
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3235, i8* %3236, align 1, !tbaa !2446
  %3237 = icmp eq i32 %3228, 0
  %3238 = zext i1 %3237 to i8
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3238, i8* %3239, align 1, !tbaa !2448
  %3240 = lshr i32 %3228, 31
  %3241 = trunc i32 %3240 to i8
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3241, i8* %3242, align 1, !tbaa !2449
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3243, align 1, !tbaa !2450
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3244, align 1, !tbaa !2447
  %3245 = load i64, i64* %RAX
  %3246 = load i64, i64* %RBP
  %3247 = sub i64 %3246, 52
  %3248 = load i64, i64* %PC
  %3249 = add i64 %3248, 3
  store i64 %3249, i64* %PC
  %3250 = trunc i64 %3245 to i32
  %3251 = inttoptr i64 %3247 to i32*
  %3252 = load i32, i32* %3251
  %3253 = xor i32 %3252, %3250
  %3254 = zext i32 %3253 to i64
  store i64 %3254, i64* %RAX, align 8, !tbaa !2428
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3255, align 1, !tbaa !2432
  %3256 = and i32 %3253, 255
  %3257 = call i32 @llvm.ctpop.i32(i32 %3256) #16
  %3258 = trunc i32 %3257 to i8
  %3259 = and i8 %3258, 1
  %3260 = xor i8 %3259, 1
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3260, i8* %3261, align 1, !tbaa !2446
  %3262 = icmp eq i32 %3253, 0
  %3263 = zext i1 %3262 to i8
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3263, i8* %3264, align 1, !tbaa !2448
  %3265 = lshr i32 %3253, 31
  %3266 = trunc i32 %3265 to i8
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3266, i8* %3267, align 1, !tbaa !2449
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3268, align 1, !tbaa !2450
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3269, align 1, !tbaa !2447
  %3270 = load i64, i64* %RBP
  %3271 = sub i64 %3270, 52
  %3272 = load i32, i32* %EAX
  %3273 = zext i32 %3272 to i64
  %3274 = load i64, i64* %PC
  %3275 = add i64 %3274, 3
  store i64 %3275, i64* %PC
  %3276 = inttoptr i64 %3271 to i32*
  store i32 %3272, i32* %3276
  %3277 = load i64, i64* %RBP
  %3278 = sub i64 %3277, 52
  %3279 = load i64, i64* %PC
  %3280 = add i64 %3279, 3
  store i64 %3280, i64* %PC
  %3281 = inttoptr i64 %3278 to i32*
  %3282 = load i32, i32* %3281
  %3283 = zext i32 %3282 to i64
  store i64 %3283, i64* %RAX, align 8, !tbaa !2428
  %3284 = load i64, i64* %RAX
  %3285 = load i64, i64* %RBP
  %3286 = sub i64 %3285, 68
  %3287 = load i64, i64* %PC
  %3288 = add i64 %3287, 3
  store i64 %3288, i64* %PC
  %3289 = trunc i64 %3284 to i32
  %3290 = inttoptr i64 %3286 to i32*
  %3291 = load i32, i32* %3290
  %3292 = add i32 %3291, %3289
  %3293 = zext i32 %3292 to i64
  store i64 %3293, i64* %RAX, align 8, !tbaa !2428
  %3294 = icmp ult i32 %3292, %3289
  %3295 = icmp ult i32 %3292, %3291
  %3296 = or i1 %3294, %3295
  %3297 = zext i1 %3296 to i8
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3297, i8* %3298, align 1, !tbaa !2432
  %3299 = and i32 %3292, 255
  %3300 = call i32 @llvm.ctpop.i32(i32 %3299) #16
  %3301 = trunc i32 %3300 to i8
  %3302 = and i8 %3301, 1
  %3303 = xor i8 %3302, 1
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3303, i8* %3304, align 1, !tbaa !2446
  %3305 = xor i32 %3291, %3289
  %3306 = xor i32 %3305, %3292
  %3307 = lshr i32 %3306, 4
  %3308 = trunc i32 %3307 to i8
  %3309 = and i8 %3308, 1
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3309, i8* %3310, align 1, !tbaa !2447
  %3311 = icmp eq i32 %3292, 0
  %3312 = zext i1 %3311 to i8
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3312, i8* %3313, align 1, !tbaa !2448
  %3314 = lshr i32 %3292, 31
  %3315 = trunc i32 %3314 to i8
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3315, i8* %3316, align 1, !tbaa !2449
  %3317 = lshr i32 %3289, 31
  %3318 = lshr i32 %3291, 31
  %3319 = xor i32 %3314, %3317
  %3320 = xor i32 %3314, %3318
  %3321 = add nuw nsw i32 %3319, %3320
  %3322 = icmp eq i32 %3321, 2
  %3323 = zext i1 %3322 to i8
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3323, i8* %3324, align 1, !tbaa !2450
  %3325 = load i64, i64* %RAX
  %3326 = load i64, i64* %PC
  %3327 = add i64 %3326, 3
  store i64 %3327, i64* %PC
  %3328 = and i64 %3325, 4294967295
  %3329 = shl i64 %3328, 17
  %3330 = trunc i64 %3329 to i32
  %3331 = icmp slt i32 %3330, 0
  %3332 = shl i32 %3330, 1
  %3333 = zext i32 %3332 to i64
  store i64 %3333, i64* %RAX, align 8, !tbaa !2428
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3335 = zext i1 %3331 to i8
  store i8 %3335, i8* %3334, align 1, !tbaa !2451
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3336, align 1, !tbaa !2451
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3337, align 1, !tbaa !2451
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3339 = icmp eq i32 %3332, 0
  %3340 = zext i1 %3339 to i8
  store i8 %3340, i8* %3338, align 1, !tbaa !2451
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3342 = lshr i32 %3332, 31
  %3343 = trunc i32 %3342 to i8
  store i8 %3343, i8* %3341, align 1, !tbaa !2451
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3344, align 1, !tbaa !2451
  %3345 = load i64, i64* %RBP
  %3346 = sub i64 %3345, 52
  %3347 = load i64, i64* %PC
  %3348 = add i64 %3347, 3
  store i64 %3348, i64* %PC
  %3349 = inttoptr i64 %3346 to i32*
  %3350 = load i32, i32* %3349
  %3351 = zext i32 %3350 to i64
  store i64 %3351, i64* %RCX, align 8, !tbaa !2428
  %3352 = load i64, i64* %RCX
  %3353 = load i64, i64* %RBP
  %3354 = sub i64 %3353, 68
  %3355 = load i64, i64* %PC
  %3356 = add i64 %3355, 3
  store i64 %3356, i64* %PC
  %3357 = trunc i64 %3352 to i32
  %3358 = inttoptr i64 %3354 to i32*
  %3359 = load i32, i32* %3358
  %3360 = add i32 %3359, %3357
  %3361 = zext i32 %3360 to i64
  store i64 %3361, i64* %RCX, align 8, !tbaa !2428
  %3362 = icmp ult i32 %3360, %3357
  %3363 = icmp ult i32 %3360, %3359
  %3364 = or i1 %3362, %3363
  %3365 = zext i1 %3364 to i8
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3365, i8* %3366, align 1, !tbaa !2432
  %3367 = and i32 %3360, 255
  %3368 = call i32 @llvm.ctpop.i32(i32 %3367) #16
  %3369 = trunc i32 %3368 to i8
  %3370 = and i8 %3369, 1
  %3371 = xor i8 %3370, 1
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3371, i8* %3372, align 1, !tbaa !2446
  %3373 = xor i32 %3359, %3357
  %3374 = xor i32 %3373, %3360
  %3375 = lshr i32 %3374, 4
  %3376 = trunc i32 %3375 to i8
  %3377 = and i8 %3376, 1
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3377, i8* %3378, align 1, !tbaa !2447
  %3379 = icmp eq i32 %3360, 0
  %3380 = zext i1 %3379 to i8
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3380, i8* %3381, align 1, !tbaa !2448
  %3382 = lshr i32 %3360, 31
  %3383 = trunc i32 %3382 to i8
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3383, i8* %3384, align 1, !tbaa !2449
  %3385 = lshr i32 %3357, 31
  %3386 = lshr i32 %3359, 31
  %3387 = xor i32 %3382, %3385
  %3388 = xor i32 %3382, %3386
  %3389 = add nuw nsw i32 %3387, %3388
  %3390 = icmp eq i32 %3389, 2
  %3391 = zext i1 %3390 to i8
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3391, i8* %3392, align 1, !tbaa !2450
  %3393 = load i64, i64* %RCX
  %3394 = load i64, i64* %PC
  %3395 = add i64 %3394, 3
  store i64 %3395, i64* %PC
  %3396 = and i64 %3393, 4294967295
  %3397 = lshr i64 %3396, 13
  %3398 = trunc i64 %3397 to i8
  %3399 = and i8 %3398, 1
  %3400 = lshr i64 %3397, 1
  %3401 = trunc i64 %3400 to i32
  %3402 = and i32 %3401, 2147483647
  %3403 = zext i32 %3402 to i64
  store i64 %3403, i64* %RCX, align 8, !tbaa !2428
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3399, i8* %3404, align 1, !tbaa !2451
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3406 = and i32 %3401, 255
  %3407 = call i32 @llvm.ctpop.i32(i32 %3406) #16
  %3408 = trunc i32 %3407 to i8
  %3409 = and i8 %3408, 1
  %3410 = xor i8 %3409, 1
  store i8 %3410, i8* %3405, align 1, !tbaa !2451
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3411, align 1, !tbaa !2451
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3413 = icmp eq i32 %3402, 0
  %3414 = zext i1 %3413 to i8
  store i8 %3414, i8* %3412, align 1, !tbaa !2451
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3415, align 1, !tbaa !2451
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3416, align 1, !tbaa !2451
  %3417 = load i64, i64* %RAX
  %3418 = load i32, i32* %ECX
  %3419 = zext i32 %3418 to i64
  %3420 = load i64, i64* %PC
  %3421 = add i64 %3420, 2
  store i64 %3421, i64* %PC
  %3422 = or i64 %3419, %3417
  %3423 = trunc i64 %3422 to i32
  %3424 = and i64 %3422, 4294967295
  store i64 %3424, i64* %RAX, align 8, !tbaa !2428
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3425, align 1, !tbaa !2432
  %3426 = and i32 %3423, 255
  %3427 = call i32 @llvm.ctpop.i32(i32 %3426) #16
  %3428 = trunc i32 %3427 to i8
  %3429 = and i8 %3428, 1
  %3430 = xor i8 %3429, 1
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3430, i8* %3431, align 1, !tbaa !2446
  %3432 = icmp eq i32 %3423, 0
  %3433 = zext i1 %3432 to i8
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3433, i8* %3434, align 1, !tbaa !2448
  %3435 = lshr i32 %3423, 31
  %3436 = trunc i32 %3435 to i8
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3436, i8* %3437, align 1, !tbaa !2449
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3438, align 1, !tbaa !2450
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3439, align 1, !tbaa !2447
  %3440 = load i64, i64* %RAX
  %3441 = load i64, i64* %RBP
  %3442 = sub i64 %3441, 36
  %3443 = load i64, i64* %PC
  %3444 = add i64 %3443, 3
  store i64 %3444, i64* %PC
  %3445 = trunc i64 %3440 to i32
  %3446 = inttoptr i64 %3442 to i32*
  %3447 = load i32, i32* %3446
  %3448 = xor i32 %3447, %3445
  %3449 = zext i32 %3448 to i64
  store i64 %3449, i64* %RAX, align 8, !tbaa !2428
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3450, align 1, !tbaa !2432
  %3451 = and i32 %3448, 255
  %3452 = call i32 @llvm.ctpop.i32(i32 %3451) #16
  %3453 = trunc i32 %3452 to i8
  %3454 = and i8 %3453, 1
  %3455 = xor i8 %3454, 1
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3455, i8* %3456, align 1, !tbaa !2446
  %3457 = icmp eq i32 %3448, 0
  %3458 = zext i1 %3457 to i8
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3458, i8* %3459, align 1, !tbaa !2448
  %3460 = lshr i32 %3448, 31
  %3461 = trunc i32 %3460 to i8
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3461, i8* %3462, align 1, !tbaa !2449
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3463, align 1, !tbaa !2450
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3464, align 1, !tbaa !2447
  %3465 = load i64, i64* %RBP
  %3466 = sub i64 %3465, 36
  %3467 = load i32, i32* %EAX
  %3468 = zext i32 %3467 to i64
  %3469 = load i64, i64* %PC
  %3470 = add i64 %3469, 3
  store i64 %3470, i64* %PC
  %3471 = inttoptr i64 %3466 to i32*
  store i32 %3467, i32* %3471
  %3472 = load i64, i64* %RBP
  %3473 = sub i64 %3472, 96
  %3474 = load i64, i64* %PC
  %3475 = add i64 %3474, 3
  store i64 %3475, i64* %PC
  %3476 = inttoptr i64 %3473 to i32*
  %3477 = load i32, i32* %3476
  %3478 = zext i32 %3477 to i64
  store i64 %3478, i64* %RAX, align 8, !tbaa !2428
  %3479 = load i64, i64* %RAX
  %3480 = load i64, i64* %RBP
  %3481 = sub i64 %3480, 84
  %3482 = load i64, i64* %PC
  %3483 = add i64 %3482, 3
  store i64 %3483, i64* %PC
  %3484 = trunc i64 %3479 to i32
  %3485 = inttoptr i64 %3481 to i32*
  %3486 = load i32, i32* %3485
  %3487 = add i32 %3486, %3484
  %3488 = zext i32 %3487 to i64
  store i64 %3488, i64* %RAX, align 8, !tbaa !2428
  %3489 = icmp ult i32 %3487, %3484
  %3490 = icmp ult i32 %3487, %3486
  %3491 = or i1 %3489, %3490
  %3492 = zext i1 %3491 to i8
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3492, i8* %3493, align 1, !tbaa !2432
  %3494 = and i32 %3487, 255
  %3495 = call i32 @llvm.ctpop.i32(i32 %3494) #16
  %3496 = trunc i32 %3495 to i8
  %3497 = and i8 %3496, 1
  %3498 = xor i8 %3497, 1
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3498, i8* %3499, align 1, !tbaa !2446
  %3500 = xor i32 %3486, %3484
  %3501 = xor i32 %3500, %3487
  %3502 = lshr i32 %3501, 4
  %3503 = trunc i32 %3502 to i8
  %3504 = and i8 %3503, 1
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3504, i8* %3505, align 1, !tbaa !2447
  %3506 = icmp eq i32 %3487, 0
  %3507 = zext i1 %3506 to i8
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3507, i8* %3508, align 1, !tbaa !2448
  %3509 = lshr i32 %3487, 31
  %3510 = trunc i32 %3509 to i8
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3510, i8* %3511, align 1, !tbaa !2449
  %3512 = lshr i32 %3484, 31
  %3513 = lshr i32 %3486, 31
  %3514 = xor i32 %3509, %3512
  %3515 = xor i32 %3509, %3513
  %3516 = add nuw nsw i32 %3514, %3515
  %3517 = icmp eq i32 %3516, 2
  %3518 = zext i1 %3517 to i8
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3518, i8* %3519, align 1, !tbaa !2450
  %3520 = load i64, i64* %RAX
  %3521 = load i64, i64* %PC
  %3522 = add i64 %3521, 3
  store i64 %3522, i64* %PC
  %3523 = and i64 %3520, 4294967295
  %3524 = shl i64 %3523, 6
  %3525 = trunc i64 %3524 to i32
  %3526 = icmp slt i32 %3525, 0
  %3527 = shl i32 %3525, 1
  %3528 = zext i32 %3527 to i64
  store i64 %3528, i64* %RAX, align 8, !tbaa !2428
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3530 = zext i1 %3526 to i8
  store i8 %3530, i8* %3529, align 1, !tbaa !2451
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3532 = and i32 %3527, 254
  %3533 = call i32 @llvm.ctpop.i32(i32 %3532) #16
  %3534 = trunc i32 %3533 to i8
  %3535 = and i8 %3534, 1
  %3536 = xor i8 %3535, 1
  store i8 %3536, i8* %3531, align 1, !tbaa !2451
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3537, align 1, !tbaa !2451
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3539 = icmp eq i32 %3527, 0
  %3540 = zext i1 %3539 to i8
  store i8 %3540, i8* %3538, align 1, !tbaa !2451
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3542 = lshr i32 %3527, 31
  %3543 = trunc i32 %3542 to i8
  store i8 %3543, i8* %3541, align 1, !tbaa !2451
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3544, align 1, !tbaa !2451
  %3545 = load i64, i64* %RBP
  %3546 = sub i64 %3545, 96
  %3547 = load i64, i64* %PC
  %3548 = add i64 %3547, 3
  store i64 %3548, i64* %PC
  %3549 = inttoptr i64 %3546 to i32*
  %3550 = load i32, i32* %3549
  %3551 = zext i32 %3550 to i64
  store i64 %3551, i64* %RCX, align 8, !tbaa !2428
  %3552 = load i64, i64* %RCX
  %3553 = load i64, i64* %RBP
  %3554 = sub i64 %3553, 84
  %3555 = load i64, i64* %PC
  %3556 = add i64 %3555, 3
  store i64 %3556, i64* %PC
  %3557 = trunc i64 %3552 to i32
  %3558 = inttoptr i64 %3554 to i32*
  %3559 = load i32, i32* %3558
  %3560 = add i32 %3559, %3557
  %3561 = zext i32 %3560 to i64
  store i64 %3561, i64* %RCX, align 8, !tbaa !2428
  %3562 = icmp ult i32 %3560, %3557
  %3563 = icmp ult i32 %3560, %3559
  %3564 = or i1 %3562, %3563
  %3565 = zext i1 %3564 to i8
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3565, i8* %3566, align 1, !tbaa !2432
  %3567 = and i32 %3560, 255
  %3568 = call i32 @llvm.ctpop.i32(i32 %3567) #16
  %3569 = trunc i32 %3568 to i8
  %3570 = and i8 %3569, 1
  %3571 = xor i8 %3570, 1
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3571, i8* %3572, align 1, !tbaa !2446
  %3573 = xor i32 %3559, %3557
  %3574 = xor i32 %3573, %3560
  %3575 = lshr i32 %3574, 4
  %3576 = trunc i32 %3575 to i8
  %3577 = and i8 %3576, 1
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3577, i8* %3578, align 1, !tbaa !2447
  %3579 = icmp eq i32 %3560, 0
  %3580 = zext i1 %3579 to i8
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3580, i8* %3581, align 1, !tbaa !2448
  %3582 = lshr i32 %3560, 31
  %3583 = trunc i32 %3582 to i8
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3583, i8* %3584, align 1, !tbaa !2449
  %3585 = lshr i32 %3557, 31
  %3586 = lshr i32 %3559, 31
  %3587 = xor i32 %3582, %3585
  %3588 = xor i32 %3582, %3586
  %3589 = add nuw nsw i32 %3587, %3588
  %3590 = icmp eq i32 %3589, 2
  %3591 = zext i1 %3590 to i8
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3591, i8* %3592, align 1, !tbaa !2450
  %3593 = load i64, i64* %RCX
  %3594 = load i64, i64* %PC
  %3595 = add i64 %3594, 3
  store i64 %3595, i64* %PC
  %3596 = and i64 %3593, 4294967295
  %3597 = lshr i64 %3596, 24
  %3598 = trunc i64 %3597 to i8
  %3599 = and i8 %3598, 1
  %3600 = lshr i64 %3597, 1
  %3601 = trunc i64 %3600 to i32
  %3602 = and i32 %3601, 2147483647
  %3603 = zext i32 %3602 to i64
  store i64 %3603, i64* %RCX, align 8, !tbaa !2428
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3599, i8* %3604, align 1, !tbaa !2451
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3606 = and i32 %3601, 255
  %3607 = call i32 @llvm.ctpop.i32(i32 %3606) #16
  %3608 = trunc i32 %3607 to i8
  %3609 = and i8 %3608, 1
  %3610 = xor i8 %3609, 1
  store i8 %3610, i8* %3605, align 1, !tbaa !2451
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3611, align 1, !tbaa !2451
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3613 = icmp eq i32 %3602, 0
  %3614 = zext i1 %3613 to i8
  store i8 %3614, i8* %3612, align 1, !tbaa !2451
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3615, align 1, !tbaa !2451
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3616, align 1, !tbaa !2451
  %3617 = load i64, i64* %RAX
  %3618 = load i32, i32* %ECX
  %3619 = zext i32 %3618 to i64
  %3620 = load i64, i64* %PC
  %3621 = add i64 %3620, 2
  store i64 %3621, i64* %PC
  %3622 = or i64 %3619, %3617
  %3623 = trunc i64 %3622 to i32
  %3624 = and i64 %3622, 4294967295
  store i64 %3624, i64* %RAX, align 8, !tbaa !2428
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3625, align 1, !tbaa !2432
  %3626 = and i32 %3623, 255
  %3627 = call i32 @llvm.ctpop.i32(i32 %3626) #16
  %3628 = trunc i32 %3627 to i8
  %3629 = and i8 %3628, 1
  %3630 = xor i8 %3629, 1
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3630, i8* %3631, align 1, !tbaa !2446
  %3632 = icmp eq i32 %3623, 0
  %3633 = zext i1 %3632 to i8
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3633, i8* %3634, align 1, !tbaa !2448
  %3635 = lshr i32 %3623, 31
  %3636 = trunc i32 %3635 to i8
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3636, i8* %3637, align 1, !tbaa !2449
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3638, align 1, !tbaa !2450
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3639, align 1, !tbaa !2447
  %3640 = load i64, i64* %RAX
  %3641 = load i64, i64* %RBP
  %3642 = sub i64 %3641, 92
  %3643 = load i64, i64* %PC
  %3644 = add i64 %3643, 3
  store i64 %3644, i64* %PC
  %3645 = trunc i64 %3640 to i32
  %3646 = inttoptr i64 %3642 to i32*
  %3647 = load i32, i32* %3646
  %3648 = xor i32 %3647, %3645
  %3649 = zext i32 %3648 to i64
  store i64 %3649, i64* %RAX, align 8, !tbaa !2428
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3650, align 1, !tbaa !2432
  %3651 = and i32 %3648, 255
  %3652 = call i32 @llvm.ctpop.i32(i32 %3651) #16
  %3653 = trunc i32 %3652 to i8
  %3654 = and i8 %3653, 1
  %3655 = xor i8 %3654, 1
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3655, i8* %3656, align 1, !tbaa !2446
  %3657 = icmp eq i32 %3648, 0
  %3658 = zext i1 %3657 to i8
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3658, i8* %3659, align 1, !tbaa !2448
  %3660 = lshr i32 %3648, 31
  %3661 = trunc i32 %3660 to i8
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3661, i8* %3662, align 1, !tbaa !2449
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3663, align 1, !tbaa !2450
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3664, align 1, !tbaa !2447
  %3665 = load i64, i64* %RBP
  %3666 = sub i64 %3665, 92
  %3667 = load i32, i32* %EAX
  %3668 = zext i32 %3667 to i64
  %3669 = load i64, i64* %PC
  %3670 = add i64 %3669, 3
  store i64 %3670, i64* %PC
  %3671 = inttoptr i64 %3666 to i32*
  store i32 %3667, i32* %3671
  %3672 = load i64, i64* %RBP
  %3673 = sub i64 %3672, 92
  %3674 = load i64, i64* %PC
  %3675 = add i64 %3674, 3
  store i64 %3675, i64* %PC
  %3676 = inttoptr i64 %3673 to i32*
  %3677 = load i32, i32* %3676
  %3678 = zext i32 %3677 to i64
  store i64 %3678, i64* %RAX, align 8, !tbaa !2428
  %3679 = load i64, i64* %RAX
  %3680 = load i64, i64* %RBP
  %3681 = sub i64 %3680, 96
  %3682 = load i64, i64* %PC
  %3683 = add i64 %3682, 3
  store i64 %3683, i64* %PC
  %3684 = trunc i64 %3679 to i32
  %3685 = inttoptr i64 %3681 to i32*
  %3686 = load i32, i32* %3685
  %3687 = add i32 %3686, %3684
  %3688 = zext i32 %3687 to i64
  store i64 %3688, i64* %RAX, align 8, !tbaa !2428
  %3689 = icmp ult i32 %3687, %3684
  %3690 = icmp ult i32 %3687, %3686
  %3691 = or i1 %3689, %3690
  %3692 = zext i1 %3691 to i8
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3692, i8* %3693, align 1, !tbaa !2432
  %3694 = and i32 %3687, 255
  %3695 = call i32 @llvm.ctpop.i32(i32 %3694) #16
  %3696 = trunc i32 %3695 to i8
  %3697 = and i8 %3696, 1
  %3698 = xor i8 %3697, 1
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3698, i8* %3699, align 1, !tbaa !2446
  %3700 = xor i32 %3686, %3684
  %3701 = xor i32 %3700, %3687
  %3702 = lshr i32 %3701, 4
  %3703 = trunc i32 %3702 to i8
  %3704 = and i8 %3703, 1
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3704, i8* %3705, align 1, !tbaa !2447
  %3706 = icmp eq i32 %3687, 0
  %3707 = zext i1 %3706 to i8
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3707, i8* %3708, align 1, !tbaa !2448
  %3709 = lshr i32 %3687, 31
  %3710 = trunc i32 %3709 to i8
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3710, i8* %3711, align 1, !tbaa !2449
  %3712 = lshr i32 %3684, 31
  %3713 = lshr i32 %3686, 31
  %3714 = xor i32 %3709, %3712
  %3715 = xor i32 %3709, %3713
  %3716 = add nuw nsw i32 %3714, %3715
  %3717 = icmp eq i32 %3716, 2
  %3718 = zext i1 %3717 to i8
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3718, i8* %3719, align 1, !tbaa !2450
  %3720 = load i64, i64* %RAX
  %3721 = load i64, i64* %PC
  %3722 = add i64 %3721, 3
  store i64 %3722, i64* %PC
  %3723 = and i64 %3720, 4294967295
  %3724 = shl i64 %3723, 8
  %3725 = trunc i64 %3724 to i32
  %3726 = icmp slt i32 %3725, 0
  %3727 = shl i32 %3725, 1
  %3728 = zext i32 %3727 to i64
  store i64 %3728, i64* %RAX, align 8, !tbaa !2428
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3730 = zext i1 %3726 to i8
  store i8 %3730, i8* %3729, align 1, !tbaa !2451
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3731, align 1, !tbaa !2451
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3732, align 1, !tbaa !2451
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3734 = icmp eq i32 %3727, 0
  %3735 = zext i1 %3734 to i8
  store i8 %3735, i8* %3733, align 1, !tbaa !2451
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3737 = lshr i32 %3727, 31
  %3738 = trunc i32 %3737 to i8
  store i8 %3738, i8* %3736, align 1, !tbaa !2451
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3739, align 1, !tbaa !2451
  %3740 = load i64, i64* %RBP
  %3741 = sub i64 %3740, 92
  %3742 = load i64, i64* %PC
  %3743 = add i64 %3742, 3
  store i64 %3743, i64* %PC
  %3744 = inttoptr i64 %3741 to i32*
  %3745 = load i32, i32* %3744
  %3746 = zext i32 %3745 to i64
  store i64 %3746, i64* %RCX, align 8, !tbaa !2428
  %3747 = load i64, i64* %RCX
  %3748 = load i64, i64* %RBP
  %3749 = sub i64 %3748, 96
  %3750 = load i64, i64* %PC
  %3751 = add i64 %3750, 3
  store i64 %3751, i64* %PC
  %3752 = trunc i64 %3747 to i32
  %3753 = inttoptr i64 %3749 to i32*
  %3754 = load i32, i32* %3753
  %3755 = add i32 %3754, %3752
  %3756 = zext i32 %3755 to i64
  store i64 %3756, i64* %RCX, align 8, !tbaa !2428
  %3757 = icmp ult i32 %3755, %3752
  %3758 = icmp ult i32 %3755, %3754
  %3759 = or i1 %3757, %3758
  %3760 = zext i1 %3759 to i8
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3760, i8* %3761, align 1, !tbaa !2432
  %3762 = and i32 %3755, 255
  %3763 = call i32 @llvm.ctpop.i32(i32 %3762) #16
  %3764 = trunc i32 %3763 to i8
  %3765 = and i8 %3764, 1
  %3766 = xor i8 %3765, 1
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3766, i8* %3767, align 1, !tbaa !2446
  %3768 = xor i32 %3754, %3752
  %3769 = xor i32 %3768, %3755
  %3770 = lshr i32 %3769, 4
  %3771 = trunc i32 %3770 to i8
  %3772 = and i8 %3771, 1
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3772, i8* %3773, align 1, !tbaa !2447
  %3774 = icmp eq i32 %3755, 0
  %3775 = zext i1 %3774 to i8
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3775, i8* %3776, align 1, !tbaa !2448
  %3777 = lshr i32 %3755, 31
  %3778 = trunc i32 %3777 to i8
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3778, i8* %3779, align 1, !tbaa !2449
  %3780 = lshr i32 %3752, 31
  %3781 = lshr i32 %3754, 31
  %3782 = xor i32 %3777, %3780
  %3783 = xor i32 %3777, %3781
  %3784 = add nuw nsw i32 %3782, %3783
  %3785 = icmp eq i32 %3784, 2
  %3786 = zext i1 %3785 to i8
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3786, i8* %3787, align 1, !tbaa !2450
  %3788 = load i64, i64* %RCX
  %3789 = load i64, i64* %PC
  %3790 = add i64 %3789, 3
  store i64 %3790, i64* %PC
  %3791 = and i64 %3788, 4294967295
  %3792 = lshr i64 %3791, 22
  %3793 = trunc i64 %3792 to i8
  %3794 = and i8 %3793, 1
  %3795 = lshr i64 %3792, 1
  %3796 = trunc i64 %3795 to i32
  %3797 = and i32 %3796, 2147483647
  %3798 = zext i32 %3797 to i64
  store i64 %3798, i64* %RCX, align 8, !tbaa !2428
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3794, i8* %3799, align 1, !tbaa !2451
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3801 = and i32 %3796, 255
  %3802 = call i32 @llvm.ctpop.i32(i32 %3801) #16
  %3803 = trunc i32 %3802 to i8
  %3804 = and i8 %3803, 1
  %3805 = xor i8 %3804, 1
  store i8 %3805, i8* %3800, align 1, !tbaa !2451
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3806, align 1, !tbaa !2451
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3808 = icmp eq i32 %3797, 0
  %3809 = zext i1 %3808 to i8
  store i8 %3809, i8* %3807, align 1, !tbaa !2451
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3810, align 1, !tbaa !2451
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3811, align 1, !tbaa !2451
  %3812 = load i64, i64* %RAX
  %3813 = load i32, i32* %ECX
  %3814 = zext i32 %3813 to i64
  %3815 = load i64, i64* %PC
  %3816 = add i64 %3815, 2
  store i64 %3816, i64* %PC
  %3817 = or i64 %3814, %3812
  %3818 = trunc i64 %3817 to i32
  %3819 = and i64 %3817, 4294967295
  store i64 %3819, i64* %RAX, align 8, !tbaa !2428
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3820, align 1, !tbaa !2432
  %3821 = and i32 %3818, 255
  %3822 = call i32 @llvm.ctpop.i32(i32 %3821) #16
  %3823 = trunc i32 %3822 to i8
  %3824 = and i8 %3823, 1
  %3825 = xor i8 %3824, 1
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3825, i8* %3826, align 1, !tbaa !2446
  %3827 = icmp eq i32 %3818, 0
  %3828 = zext i1 %3827 to i8
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3828, i8* %3829, align 1, !tbaa !2448
  %3830 = lshr i32 %3818, 31
  %3831 = trunc i32 %3830 to i8
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3831, i8* %3832, align 1, !tbaa !2449
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3833, align 1, !tbaa !2450
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3834, align 1, !tbaa !2447
  %3835 = load i64, i64* %RAX
  %3836 = load i64, i64* %RBP
  %3837 = sub i64 %3836, 88
  %3838 = load i64, i64* %PC
  %3839 = add i64 %3838, 3
  store i64 %3839, i64* %PC
  %3840 = trunc i64 %3835 to i32
  %3841 = inttoptr i64 %3837 to i32*
  %3842 = load i32, i32* %3841
  %3843 = xor i32 %3842, %3840
  %3844 = zext i32 %3843 to i64
  store i64 %3844, i64* %RAX, align 8, !tbaa !2428
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3845, align 1, !tbaa !2432
  %3846 = and i32 %3843, 255
  %3847 = call i32 @llvm.ctpop.i32(i32 %3846) #16
  %3848 = trunc i32 %3847 to i8
  %3849 = and i8 %3848, 1
  %3850 = xor i8 %3849, 1
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3850, i8* %3851, align 1, !tbaa !2446
  %3852 = icmp eq i32 %3843, 0
  %3853 = zext i1 %3852 to i8
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3853, i8* %3854, align 1, !tbaa !2448
  %3855 = lshr i32 %3843, 31
  %3856 = trunc i32 %3855 to i8
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3856, i8* %3857, align 1, !tbaa !2449
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3858, align 1, !tbaa !2450
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3859, align 1, !tbaa !2447
  %3860 = load i64, i64* %RBP
  %3861 = sub i64 %3860, 88
  %3862 = load i32, i32* %EAX
  %3863 = zext i32 %3862 to i64
  %3864 = load i64, i64* %PC
  %3865 = add i64 %3864, 3
  store i64 %3865, i64* %PC
  %3866 = inttoptr i64 %3861 to i32*
  store i32 %3862, i32* %3866
  %3867 = load i64, i64* %RBP
  %3868 = sub i64 %3867, 88
  %3869 = load i64, i64* %PC
  %3870 = add i64 %3869, 3
  store i64 %3870, i64* %PC
  %3871 = inttoptr i64 %3868 to i32*
  %3872 = load i32, i32* %3871
  %3873 = zext i32 %3872 to i64
  store i64 %3873, i64* %RAX, align 8, !tbaa !2428
  %3874 = load i64, i64* %RAX
  %3875 = load i64, i64* %RBP
  %3876 = sub i64 %3875, 92
  %3877 = load i64, i64* %PC
  %3878 = add i64 %3877, 3
  store i64 %3878, i64* %PC
  %3879 = trunc i64 %3874 to i32
  %3880 = inttoptr i64 %3876 to i32*
  %3881 = load i32, i32* %3880
  %3882 = add i32 %3881, %3879
  %3883 = zext i32 %3882 to i64
  store i64 %3883, i64* %RAX, align 8, !tbaa !2428
  %3884 = icmp ult i32 %3882, %3879
  %3885 = icmp ult i32 %3882, %3881
  %3886 = or i1 %3884, %3885
  %3887 = zext i1 %3886 to i8
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3887, i8* %3888, align 1, !tbaa !2432
  %3889 = and i32 %3882, 255
  %3890 = call i32 @llvm.ctpop.i32(i32 %3889) #16
  %3891 = trunc i32 %3890 to i8
  %3892 = and i8 %3891, 1
  %3893 = xor i8 %3892, 1
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3893, i8* %3894, align 1, !tbaa !2446
  %3895 = xor i32 %3881, %3879
  %3896 = xor i32 %3895, %3882
  %3897 = lshr i32 %3896, 4
  %3898 = trunc i32 %3897 to i8
  %3899 = and i8 %3898, 1
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3899, i8* %3900, align 1, !tbaa !2447
  %3901 = icmp eq i32 %3882, 0
  %3902 = zext i1 %3901 to i8
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3902, i8* %3903, align 1, !tbaa !2448
  %3904 = lshr i32 %3882, 31
  %3905 = trunc i32 %3904 to i8
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3905, i8* %3906, align 1, !tbaa !2449
  %3907 = lshr i32 %3879, 31
  %3908 = lshr i32 %3881, 31
  %3909 = xor i32 %3904, %3907
  %3910 = xor i32 %3904, %3908
  %3911 = add nuw nsw i32 %3909, %3910
  %3912 = icmp eq i32 %3911, 2
  %3913 = zext i1 %3912 to i8
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3913, i8* %3914, align 1, !tbaa !2450
  %3915 = load i64, i64* %RAX
  %3916 = load i64, i64* %PC
  %3917 = add i64 %3916, 3
  store i64 %3917, i64* %PC
  %3918 = and i64 %3915, 4294967295
  %3919 = shl i64 %3918, 12
  %3920 = trunc i64 %3919 to i32
  %3921 = icmp slt i32 %3920, 0
  %3922 = shl i32 %3920, 1
  %3923 = zext i32 %3922 to i64
  store i64 %3923, i64* %RAX, align 8, !tbaa !2428
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3925 = zext i1 %3921 to i8
  store i8 %3925, i8* %3924, align 1, !tbaa !2451
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3926, align 1, !tbaa !2451
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3927, align 1, !tbaa !2451
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3929 = icmp eq i32 %3922, 0
  %3930 = zext i1 %3929 to i8
  store i8 %3930, i8* %3928, align 1, !tbaa !2451
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3932 = lshr i32 %3922, 31
  %3933 = trunc i32 %3932 to i8
  store i8 %3933, i8* %3931, align 1, !tbaa !2451
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3934, align 1, !tbaa !2451
  %3935 = load i64, i64* %RBP
  %3936 = sub i64 %3935, 88
  %3937 = load i64, i64* %PC
  %3938 = add i64 %3937, 3
  store i64 %3938, i64* %PC
  %3939 = inttoptr i64 %3936 to i32*
  %3940 = load i32, i32* %3939
  %3941 = zext i32 %3940 to i64
  store i64 %3941, i64* %RCX, align 8, !tbaa !2428
  %3942 = load i64, i64* %RCX
  %3943 = load i64, i64* %RBP
  %3944 = sub i64 %3943, 92
  %3945 = load i64, i64* %PC
  %3946 = add i64 %3945, 3
  store i64 %3946, i64* %PC
  %3947 = trunc i64 %3942 to i32
  %3948 = inttoptr i64 %3944 to i32*
  %3949 = load i32, i32* %3948
  %3950 = add i32 %3949, %3947
  %3951 = zext i32 %3950 to i64
  store i64 %3951, i64* %RCX, align 8, !tbaa !2428
  %3952 = icmp ult i32 %3950, %3947
  %3953 = icmp ult i32 %3950, %3949
  %3954 = or i1 %3952, %3953
  %3955 = zext i1 %3954 to i8
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3955, i8* %3956, align 1, !tbaa !2432
  %3957 = and i32 %3950, 255
  %3958 = call i32 @llvm.ctpop.i32(i32 %3957) #16
  %3959 = trunc i32 %3958 to i8
  %3960 = and i8 %3959, 1
  %3961 = xor i8 %3960, 1
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3961, i8* %3962, align 1, !tbaa !2446
  %3963 = xor i32 %3949, %3947
  %3964 = xor i32 %3963, %3950
  %3965 = lshr i32 %3964, 4
  %3966 = trunc i32 %3965 to i8
  %3967 = and i8 %3966, 1
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3967, i8* %3968, align 1, !tbaa !2447
  %3969 = icmp eq i32 %3950, 0
  %3970 = zext i1 %3969 to i8
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3970, i8* %3971, align 1, !tbaa !2448
  %3972 = lshr i32 %3950, 31
  %3973 = trunc i32 %3972 to i8
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3973, i8* %3974, align 1, !tbaa !2449
  %3975 = lshr i32 %3947, 31
  %3976 = lshr i32 %3949, 31
  %3977 = xor i32 %3972, %3975
  %3978 = xor i32 %3972, %3976
  %3979 = add nuw nsw i32 %3977, %3978
  %3980 = icmp eq i32 %3979, 2
  %3981 = zext i1 %3980 to i8
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3981, i8* %3982, align 1, !tbaa !2450
  %3983 = load i64, i64* %RCX
  %3984 = load i64, i64* %PC
  %3985 = add i64 %3984, 3
  store i64 %3985, i64* %PC
  %3986 = and i64 %3983, 4294967295
  %3987 = lshr i64 %3986, 18
  %3988 = trunc i64 %3987 to i8
  %3989 = and i8 %3988, 1
  %3990 = lshr i64 %3987, 1
  %3991 = trunc i64 %3990 to i32
  %3992 = and i32 %3991, 2147483647
  %3993 = zext i32 %3992 to i64
  store i64 %3993, i64* %RCX, align 8, !tbaa !2428
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3989, i8* %3994, align 1, !tbaa !2451
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3996 = and i32 %3991, 255
  %3997 = call i32 @llvm.ctpop.i32(i32 %3996) #16
  %3998 = trunc i32 %3997 to i8
  %3999 = and i8 %3998, 1
  %4000 = xor i8 %3999, 1
  store i8 %4000, i8* %3995, align 1, !tbaa !2451
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4001, align 1, !tbaa !2451
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4003 = icmp eq i32 %3992, 0
  %4004 = zext i1 %4003 to i8
  store i8 %4004, i8* %4002, align 1, !tbaa !2451
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4005, align 1, !tbaa !2451
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4006, align 1, !tbaa !2451
  %4007 = load i64, i64* %RAX
  %4008 = load i32, i32* %ECX
  %4009 = zext i32 %4008 to i64
  %4010 = load i64, i64* %PC
  %4011 = add i64 %4010, 2
  store i64 %4011, i64* %PC
  %4012 = or i64 %4009, %4007
  %4013 = trunc i64 %4012 to i32
  %4014 = and i64 %4012, 4294967295
  store i64 %4014, i64* %RAX, align 8, !tbaa !2428
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4015, align 1, !tbaa !2432
  %4016 = and i32 %4013, 255
  %4017 = call i32 @llvm.ctpop.i32(i32 %4016) #16
  %4018 = trunc i32 %4017 to i8
  %4019 = and i8 %4018, 1
  %4020 = xor i8 %4019, 1
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4020, i8* %4021, align 1, !tbaa !2446
  %4022 = icmp eq i32 %4013, 0
  %4023 = zext i1 %4022 to i8
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4023, i8* %4024, align 1, !tbaa !2448
  %4025 = lshr i32 %4013, 31
  %4026 = trunc i32 %4025 to i8
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4026, i8* %4027, align 1, !tbaa !2449
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4028, align 1, !tbaa !2450
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4029, align 1, !tbaa !2447
  %4030 = load i64, i64* %RAX
  %4031 = load i64, i64* %RBP
  %4032 = sub i64 %4031, 84
  %4033 = load i64, i64* %PC
  %4034 = add i64 %4033, 3
  store i64 %4034, i64* %PC
  %4035 = trunc i64 %4030 to i32
  %4036 = inttoptr i64 %4032 to i32*
  %4037 = load i32, i32* %4036
  %4038 = xor i32 %4037, %4035
  %4039 = zext i32 %4038 to i64
  store i64 %4039, i64* %RAX, align 8, !tbaa !2428
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4040, align 1, !tbaa !2432
  %4041 = and i32 %4038, 255
  %4042 = call i32 @llvm.ctpop.i32(i32 %4041) #16
  %4043 = trunc i32 %4042 to i8
  %4044 = and i8 %4043, 1
  %4045 = xor i8 %4044, 1
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4045, i8* %4046, align 1, !tbaa !2446
  %4047 = icmp eq i32 %4038, 0
  %4048 = zext i1 %4047 to i8
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4048, i8* %4049, align 1, !tbaa !2448
  %4050 = lshr i32 %4038, 31
  %4051 = trunc i32 %4050 to i8
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4051, i8* %4052, align 1, !tbaa !2449
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4053, align 1, !tbaa !2450
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4054, align 1, !tbaa !2447
  %4055 = load i64, i64* %RBP
  %4056 = sub i64 %4055, 84
  %4057 = load i32, i32* %EAX
  %4058 = zext i32 %4057 to i64
  %4059 = load i64, i64* %PC
  %4060 = add i64 %4059, 3
  store i64 %4060, i64* %PC
  %4061 = inttoptr i64 %4056 to i32*
  store i32 %4057, i32* %4061
  %4062 = load i64, i64* %RBP
  %4063 = sub i64 %4062, 84
  %4064 = load i64, i64* %PC
  %4065 = add i64 %4064, 3
  store i64 %4065, i64* %PC
  %4066 = inttoptr i64 %4063 to i32*
  %4067 = load i32, i32* %4066
  %4068 = zext i32 %4067 to i64
  store i64 %4068, i64* %RAX, align 8, !tbaa !2428
  %4069 = load i64, i64* %RAX
  %4070 = load i64, i64* %RBP
  %4071 = sub i64 %4070, 88
  %4072 = load i64, i64* %PC
  %4073 = add i64 %4072, 3
  store i64 %4073, i64* %PC
  %4074 = trunc i64 %4069 to i32
  %4075 = inttoptr i64 %4071 to i32*
  %4076 = load i32, i32* %4075
  %4077 = add i32 %4076, %4074
  %4078 = zext i32 %4077 to i64
  store i64 %4078, i64* %RAX, align 8, !tbaa !2428
  %4079 = icmp ult i32 %4077, %4074
  %4080 = icmp ult i32 %4077, %4076
  %4081 = or i1 %4079, %4080
  %4082 = zext i1 %4081 to i8
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4082, i8* %4083, align 1, !tbaa !2432
  %4084 = and i32 %4077, 255
  %4085 = call i32 @llvm.ctpop.i32(i32 %4084) #16
  %4086 = trunc i32 %4085 to i8
  %4087 = and i8 %4086, 1
  %4088 = xor i8 %4087, 1
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4088, i8* %4089, align 1, !tbaa !2446
  %4090 = xor i32 %4076, %4074
  %4091 = xor i32 %4090, %4077
  %4092 = lshr i32 %4091, 4
  %4093 = trunc i32 %4092 to i8
  %4094 = and i8 %4093, 1
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4094, i8* %4095, align 1, !tbaa !2447
  %4096 = icmp eq i32 %4077, 0
  %4097 = zext i1 %4096 to i8
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4097, i8* %4098, align 1, !tbaa !2448
  %4099 = lshr i32 %4077, 31
  %4100 = trunc i32 %4099 to i8
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4100, i8* %4101, align 1, !tbaa !2449
  %4102 = lshr i32 %4074, 31
  %4103 = lshr i32 %4076, 31
  %4104 = xor i32 %4099, %4102
  %4105 = xor i32 %4099, %4103
  %4106 = add nuw nsw i32 %4104, %4105
  %4107 = icmp eq i32 %4106, 2
  %4108 = zext i1 %4107 to i8
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4108, i8* %4109, align 1, !tbaa !2450
  %4110 = load i64, i64* %RAX
  %4111 = load i64, i64* %PC
  %4112 = add i64 %4111, 3
  store i64 %4112, i64* %PC
  %4113 = and i64 %4110, 4294967295
  %4114 = shl i64 %4113, 17
  %4115 = trunc i64 %4114 to i32
  %4116 = icmp slt i32 %4115, 0
  %4117 = shl i32 %4115, 1
  %4118 = zext i32 %4117 to i64
  store i64 %4118, i64* %RAX, align 8, !tbaa !2428
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4120 = zext i1 %4116 to i8
  store i8 %4120, i8* %4119, align 1, !tbaa !2451
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4121, align 1, !tbaa !2451
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4122, align 1, !tbaa !2451
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4124 = icmp eq i32 %4117, 0
  %4125 = zext i1 %4124 to i8
  store i8 %4125, i8* %4123, align 1, !tbaa !2451
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4127 = lshr i32 %4117, 31
  %4128 = trunc i32 %4127 to i8
  store i8 %4128, i8* %4126, align 1, !tbaa !2451
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4129, align 1, !tbaa !2451
  %4130 = load i64, i64* %RBP
  %4131 = sub i64 %4130, 84
  %4132 = load i64, i64* %PC
  %4133 = add i64 %4132, 3
  store i64 %4133, i64* %PC
  %4134 = inttoptr i64 %4131 to i32*
  %4135 = load i32, i32* %4134
  %4136 = zext i32 %4135 to i64
  store i64 %4136, i64* %RCX, align 8, !tbaa !2428
  %4137 = load i64, i64* %RCX
  %4138 = load i64, i64* %RBP
  %4139 = sub i64 %4138, 88
  %4140 = load i64, i64* %PC
  %4141 = add i64 %4140, 3
  store i64 %4141, i64* %PC
  %4142 = trunc i64 %4137 to i32
  %4143 = inttoptr i64 %4139 to i32*
  %4144 = load i32, i32* %4143
  %4145 = add i32 %4144, %4142
  %4146 = zext i32 %4145 to i64
  store i64 %4146, i64* %RCX, align 8, !tbaa !2428
  %4147 = icmp ult i32 %4145, %4142
  %4148 = icmp ult i32 %4145, %4144
  %4149 = or i1 %4147, %4148
  %4150 = zext i1 %4149 to i8
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4150, i8* %4151, align 1, !tbaa !2432
  %4152 = and i32 %4145, 255
  %4153 = call i32 @llvm.ctpop.i32(i32 %4152) #16
  %4154 = trunc i32 %4153 to i8
  %4155 = and i8 %4154, 1
  %4156 = xor i8 %4155, 1
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4156, i8* %4157, align 1, !tbaa !2446
  %4158 = xor i32 %4144, %4142
  %4159 = xor i32 %4158, %4145
  %4160 = lshr i32 %4159, 4
  %4161 = trunc i32 %4160 to i8
  %4162 = and i8 %4161, 1
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4162, i8* %4163, align 1, !tbaa !2447
  %4164 = icmp eq i32 %4145, 0
  %4165 = zext i1 %4164 to i8
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4165, i8* %4166, align 1, !tbaa !2448
  %4167 = lshr i32 %4145, 31
  %4168 = trunc i32 %4167 to i8
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4168, i8* %4169, align 1, !tbaa !2449
  %4170 = lshr i32 %4142, 31
  %4171 = lshr i32 %4144, 31
  %4172 = xor i32 %4167, %4170
  %4173 = xor i32 %4167, %4171
  %4174 = add nuw nsw i32 %4172, %4173
  %4175 = icmp eq i32 %4174, 2
  %4176 = zext i1 %4175 to i8
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4176, i8* %4177, align 1, !tbaa !2450
  %4178 = load i64, i64* %RCX
  %4179 = load i64, i64* %PC
  %4180 = add i64 %4179, 3
  store i64 %4180, i64* %PC
  %4181 = and i64 %4178, 4294967295
  %4182 = lshr i64 %4181, 13
  %4183 = trunc i64 %4182 to i8
  %4184 = and i8 %4183, 1
  %4185 = lshr i64 %4182, 1
  %4186 = trunc i64 %4185 to i32
  %4187 = and i32 %4186, 2147483647
  %4188 = zext i32 %4187 to i64
  store i64 %4188, i64* %RCX, align 8, !tbaa !2428
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4184, i8* %4189, align 1, !tbaa !2451
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4191 = and i32 %4186, 255
  %4192 = call i32 @llvm.ctpop.i32(i32 %4191) #16
  %4193 = trunc i32 %4192 to i8
  %4194 = and i8 %4193, 1
  %4195 = xor i8 %4194, 1
  store i8 %4195, i8* %4190, align 1, !tbaa !2451
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4196, align 1, !tbaa !2451
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4198 = icmp eq i32 %4187, 0
  %4199 = zext i1 %4198 to i8
  store i8 %4199, i8* %4197, align 1, !tbaa !2451
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4200, align 1, !tbaa !2451
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4201, align 1, !tbaa !2451
  %4202 = load i64, i64* %RAX
  %4203 = load i32, i32* %ECX
  %4204 = zext i32 %4203 to i64
  %4205 = load i64, i64* %PC
  %4206 = add i64 %4205, 2
  store i64 %4206, i64* %PC
  %4207 = or i64 %4204, %4202
  %4208 = trunc i64 %4207 to i32
  %4209 = and i64 %4207, 4294967295
  store i64 %4209, i64* %RAX, align 8, !tbaa !2428
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4210, align 1, !tbaa !2432
  %4211 = and i32 %4208, 255
  %4212 = call i32 @llvm.ctpop.i32(i32 %4211) #16
  %4213 = trunc i32 %4212 to i8
  %4214 = and i8 %4213, 1
  %4215 = xor i8 %4214, 1
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4215, i8* %4216, align 1, !tbaa !2446
  %4217 = icmp eq i32 %4208, 0
  %4218 = zext i1 %4217 to i8
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4218, i8* %4219, align 1, !tbaa !2448
  %4220 = lshr i32 %4208, 31
  %4221 = trunc i32 %4220 to i8
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4221, i8* %4222, align 1, !tbaa !2449
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4223, align 1, !tbaa !2450
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4224, align 1, !tbaa !2447
  %4225 = load i64, i64* %RAX
  %4226 = load i64, i64* %RBP
  %4227 = sub i64 %4226, 96
  %4228 = load i64, i64* %PC
  %4229 = add i64 %4228, 3
  store i64 %4229, i64* %PC
  %4230 = trunc i64 %4225 to i32
  %4231 = inttoptr i64 %4227 to i32*
  %4232 = load i32, i32* %4231
  %4233 = xor i32 %4232, %4230
  %4234 = zext i32 %4233 to i64
  store i64 %4234, i64* %RAX, align 8, !tbaa !2428
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4235, align 1, !tbaa !2432
  %4236 = and i32 %4233, 255
  %4237 = call i32 @llvm.ctpop.i32(i32 %4236) #16
  %4238 = trunc i32 %4237 to i8
  %4239 = and i8 %4238, 1
  %4240 = xor i8 %4239, 1
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4240, i8* %4241, align 1, !tbaa !2446
  %4242 = icmp eq i32 %4233, 0
  %4243 = zext i1 %4242 to i8
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4243, i8* %4244, align 1, !tbaa !2448
  %4245 = lshr i32 %4233, 31
  %4246 = trunc i32 %4245 to i8
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4246, i8* %4247, align 1, !tbaa !2449
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4248, align 1, !tbaa !2450
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4249, align 1, !tbaa !2447
  %4250 = load i64, i64* %RBP
  %4251 = sub i64 %4250, 96
  %4252 = load i32, i32* %EAX
  %4253 = zext i32 %4252 to i64
  %4254 = load i64, i64* %PC
  %4255 = add i64 %4254, 3
  store i64 %4255, i64* %PC
  %4256 = inttoptr i64 %4251 to i32*
  store i32 %4252, i32* %4256
  %4257 = load i64, i64* %RBP
  %4258 = sub i64 %4257, 76
  %4259 = load i64, i64* %PC
  %4260 = add i64 %4259, 3
  store i64 %4260, i64* %PC
  %4261 = inttoptr i64 %4258 to i32*
  %4262 = load i32, i32* %4261
  %4263 = zext i32 %4262 to i64
  store i64 %4263, i64* %RAX, align 8, !tbaa !2428
  %4264 = load i64, i64* %RAX
  %4265 = load i64, i64* %RBP
  %4266 = sub i64 %4265, 80
  %4267 = load i64, i64* %PC
  %4268 = add i64 %4267, 3
  store i64 %4268, i64* %PC
  %4269 = trunc i64 %4264 to i32
  %4270 = inttoptr i64 %4266 to i32*
  %4271 = load i32, i32* %4270
  %4272 = add i32 %4271, %4269
  %4273 = zext i32 %4272 to i64
  store i64 %4273, i64* %RAX, align 8, !tbaa !2428
  %4274 = icmp ult i32 %4272, %4269
  %4275 = icmp ult i32 %4272, %4271
  %4276 = or i1 %4274, %4275
  %4277 = zext i1 %4276 to i8
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4277, i8* %4278, align 1, !tbaa !2432
  %4279 = and i32 %4272, 255
  %4280 = call i32 @llvm.ctpop.i32(i32 %4279) #16
  %4281 = trunc i32 %4280 to i8
  %4282 = and i8 %4281, 1
  %4283 = xor i8 %4282, 1
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4283, i8* %4284, align 1, !tbaa !2446
  %4285 = xor i32 %4271, %4269
  %4286 = xor i32 %4285, %4272
  %4287 = lshr i32 %4286, 4
  %4288 = trunc i32 %4287 to i8
  %4289 = and i8 %4288, 1
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4289, i8* %4290, align 1, !tbaa !2447
  %4291 = icmp eq i32 %4272, 0
  %4292 = zext i1 %4291 to i8
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4292, i8* %4293, align 1, !tbaa !2448
  %4294 = lshr i32 %4272, 31
  %4295 = trunc i32 %4294 to i8
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4295, i8* %4296, align 1, !tbaa !2449
  %4297 = lshr i32 %4269, 31
  %4298 = lshr i32 %4271, 31
  %4299 = xor i32 %4294, %4297
  %4300 = xor i32 %4294, %4298
  %4301 = add nuw nsw i32 %4299, %4300
  %4302 = icmp eq i32 %4301, 2
  %4303 = zext i1 %4302 to i8
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4303, i8* %4304, align 1, !tbaa !2450
  %4305 = load i64, i64* %RAX
  %4306 = load i64, i64* %PC
  %4307 = add i64 %4306, 3
  store i64 %4307, i64* %PC
  %4308 = and i64 %4305, 4294967295
  %4309 = shl i64 %4308, 6
  %4310 = trunc i64 %4309 to i32
  %4311 = icmp slt i32 %4310, 0
  %4312 = shl i32 %4310, 1
  %4313 = zext i32 %4312 to i64
  store i64 %4313, i64* %RAX, align 8, !tbaa !2428
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4315 = zext i1 %4311 to i8
  store i8 %4315, i8* %4314, align 1, !tbaa !2451
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4317 = and i32 %4312, 254
  %4318 = call i32 @llvm.ctpop.i32(i32 %4317) #16
  %4319 = trunc i32 %4318 to i8
  %4320 = and i8 %4319, 1
  %4321 = xor i8 %4320, 1
  store i8 %4321, i8* %4316, align 1, !tbaa !2451
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4322, align 1, !tbaa !2451
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4324 = icmp eq i32 %4312, 0
  %4325 = zext i1 %4324 to i8
  store i8 %4325, i8* %4323, align 1, !tbaa !2451
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4327 = lshr i32 %4312, 31
  %4328 = trunc i32 %4327 to i8
  store i8 %4328, i8* %4326, align 1, !tbaa !2451
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4329, align 1, !tbaa !2451
  %4330 = load i64, i64* %RBP
  %4331 = sub i64 %4330, 76
  %4332 = load i64, i64* %PC
  %4333 = add i64 %4332, 3
  store i64 %4333, i64* %PC
  %4334 = inttoptr i64 %4331 to i32*
  %4335 = load i32, i32* %4334
  %4336 = zext i32 %4335 to i64
  store i64 %4336, i64* %RCX, align 8, !tbaa !2428
  %4337 = load i64, i64* %RCX
  %4338 = load i64, i64* %RBP
  %4339 = sub i64 %4338, 80
  %4340 = load i64, i64* %PC
  %4341 = add i64 %4340, 3
  store i64 %4341, i64* %PC
  %4342 = trunc i64 %4337 to i32
  %4343 = inttoptr i64 %4339 to i32*
  %4344 = load i32, i32* %4343
  %4345 = add i32 %4344, %4342
  %4346 = zext i32 %4345 to i64
  store i64 %4346, i64* %RCX, align 8, !tbaa !2428
  %4347 = icmp ult i32 %4345, %4342
  %4348 = icmp ult i32 %4345, %4344
  %4349 = or i1 %4347, %4348
  %4350 = zext i1 %4349 to i8
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4350, i8* %4351, align 1, !tbaa !2432
  %4352 = and i32 %4345, 255
  %4353 = call i32 @llvm.ctpop.i32(i32 %4352) #16
  %4354 = trunc i32 %4353 to i8
  %4355 = and i8 %4354, 1
  %4356 = xor i8 %4355, 1
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4356, i8* %4357, align 1, !tbaa !2446
  %4358 = xor i32 %4344, %4342
  %4359 = xor i32 %4358, %4345
  %4360 = lshr i32 %4359, 4
  %4361 = trunc i32 %4360 to i8
  %4362 = and i8 %4361, 1
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4362, i8* %4363, align 1, !tbaa !2447
  %4364 = icmp eq i32 %4345, 0
  %4365 = zext i1 %4364 to i8
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4365, i8* %4366, align 1, !tbaa !2448
  %4367 = lshr i32 %4345, 31
  %4368 = trunc i32 %4367 to i8
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4368, i8* %4369, align 1, !tbaa !2449
  %4370 = lshr i32 %4342, 31
  %4371 = lshr i32 %4344, 31
  %4372 = xor i32 %4367, %4370
  %4373 = xor i32 %4367, %4371
  %4374 = add nuw nsw i32 %4372, %4373
  %4375 = icmp eq i32 %4374, 2
  %4376 = zext i1 %4375 to i8
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4376, i8* %4377, align 1, !tbaa !2450
  %4378 = load i64, i64* %RCX
  %4379 = load i64, i64* %PC
  %4380 = add i64 %4379, 3
  store i64 %4380, i64* %PC
  %4381 = and i64 %4378, 4294967295
  %4382 = lshr i64 %4381, 24
  %4383 = trunc i64 %4382 to i8
  %4384 = and i8 %4383, 1
  %4385 = lshr i64 %4382, 1
  %4386 = trunc i64 %4385 to i32
  %4387 = and i32 %4386, 2147483647
  %4388 = zext i32 %4387 to i64
  store i64 %4388, i64* %RCX, align 8, !tbaa !2428
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4384, i8* %4389, align 1, !tbaa !2451
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4391 = and i32 %4386, 255
  %4392 = call i32 @llvm.ctpop.i32(i32 %4391) #16
  %4393 = trunc i32 %4392 to i8
  %4394 = and i8 %4393, 1
  %4395 = xor i8 %4394, 1
  store i8 %4395, i8* %4390, align 1, !tbaa !2451
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4396, align 1, !tbaa !2451
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4398 = icmp eq i32 %4387, 0
  %4399 = zext i1 %4398 to i8
  store i8 %4399, i8* %4397, align 1, !tbaa !2451
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4400, align 1, !tbaa !2451
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4401, align 1, !tbaa !2451
  %4402 = load i64, i64* %RAX
  %4403 = load i32, i32* %ECX
  %4404 = zext i32 %4403 to i64
  %4405 = load i64, i64* %PC
  %4406 = add i64 %4405, 2
  store i64 %4406, i64* %PC
  %4407 = or i64 %4404, %4402
  %4408 = trunc i64 %4407 to i32
  %4409 = and i64 %4407, 4294967295
  store i64 %4409, i64* %RAX, align 8, !tbaa !2428
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4410, align 1, !tbaa !2432
  %4411 = and i32 %4408, 255
  %4412 = call i32 @llvm.ctpop.i32(i32 %4411) #16
  %4413 = trunc i32 %4412 to i8
  %4414 = and i8 %4413, 1
  %4415 = xor i8 %4414, 1
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4415, i8* %4416, align 1, !tbaa !2446
  %4417 = icmp eq i32 %4408, 0
  %4418 = zext i1 %4417 to i8
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4418, i8* %4419, align 1, !tbaa !2448
  %4420 = lshr i32 %4408, 31
  %4421 = trunc i32 %4420 to i8
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4421, i8* %4422, align 1, !tbaa !2449
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4423, align 1, !tbaa !2450
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4424, align 1, !tbaa !2447
  %4425 = load i64, i64* %RAX
  %4426 = load i64, i64* %RBP
  %4427 = sub i64 %4426, 72
  %4428 = load i64, i64* %PC
  %4429 = add i64 %4428, 3
  store i64 %4429, i64* %PC
  %4430 = trunc i64 %4425 to i32
  %4431 = inttoptr i64 %4427 to i32*
  %4432 = load i32, i32* %4431
  %4433 = xor i32 %4432, %4430
  %4434 = zext i32 %4433 to i64
  store i64 %4434, i64* %RAX, align 8, !tbaa !2428
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4435, align 1, !tbaa !2432
  %4436 = and i32 %4433, 255
  %4437 = call i32 @llvm.ctpop.i32(i32 %4436) #16
  %4438 = trunc i32 %4437 to i8
  %4439 = and i8 %4438, 1
  %4440 = xor i8 %4439, 1
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4440, i8* %4441, align 1, !tbaa !2446
  %4442 = icmp eq i32 %4433, 0
  %4443 = zext i1 %4442 to i8
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4443, i8* %4444, align 1, !tbaa !2448
  %4445 = lshr i32 %4433, 31
  %4446 = trunc i32 %4445 to i8
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4446, i8* %4447, align 1, !tbaa !2449
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4448, align 1, !tbaa !2450
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4449, align 1, !tbaa !2447
  %4450 = load i64, i64* %RBP
  %4451 = sub i64 %4450, 72
  %4452 = load i32, i32* %EAX
  %4453 = zext i32 %4452 to i64
  %4454 = load i64, i64* %PC
  %4455 = add i64 %4454, 3
  store i64 %4455, i64* %PC
  %4456 = inttoptr i64 %4451 to i32*
  store i32 %4452, i32* %4456
  %4457 = load i64, i64* %RBP
  %4458 = sub i64 %4457, 72
  %4459 = load i64, i64* %PC
  %4460 = add i64 %4459, 3
  store i64 %4460, i64* %PC
  %4461 = inttoptr i64 %4458 to i32*
  %4462 = load i32, i32* %4461
  %4463 = zext i32 %4462 to i64
  store i64 %4463, i64* %RAX, align 8, !tbaa !2428
  %4464 = load i64, i64* %RAX
  %4465 = load i64, i64* %RBP
  %4466 = sub i64 %4465, 76
  %4467 = load i64, i64* %PC
  %4468 = add i64 %4467, 3
  store i64 %4468, i64* %PC
  %4469 = trunc i64 %4464 to i32
  %4470 = inttoptr i64 %4466 to i32*
  %4471 = load i32, i32* %4470
  %4472 = add i32 %4471, %4469
  %4473 = zext i32 %4472 to i64
  store i64 %4473, i64* %RAX, align 8, !tbaa !2428
  %4474 = icmp ult i32 %4472, %4469
  %4475 = icmp ult i32 %4472, %4471
  %4476 = or i1 %4474, %4475
  %4477 = zext i1 %4476 to i8
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4477, i8* %4478, align 1, !tbaa !2432
  %4479 = and i32 %4472, 255
  %4480 = call i32 @llvm.ctpop.i32(i32 %4479) #16
  %4481 = trunc i32 %4480 to i8
  %4482 = and i8 %4481, 1
  %4483 = xor i8 %4482, 1
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4483, i8* %4484, align 1, !tbaa !2446
  %4485 = xor i32 %4471, %4469
  %4486 = xor i32 %4485, %4472
  %4487 = lshr i32 %4486, 4
  %4488 = trunc i32 %4487 to i8
  %4489 = and i8 %4488, 1
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4489, i8* %4490, align 1, !tbaa !2447
  %4491 = icmp eq i32 %4472, 0
  %4492 = zext i1 %4491 to i8
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4492, i8* %4493, align 1, !tbaa !2448
  %4494 = lshr i32 %4472, 31
  %4495 = trunc i32 %4494 to i8
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4495, i8* %4496, align 1, !tbaa !2449
  %4497 = lshr i32 %4469, 31
  %4498 = lshr i32 %4471, 31
  %4499 = xor i32 %4494, %4497
  %4500 = xor i32 %4494, %4498
  %4501 = add nuw nsw i32 %4499, %4500
  %4502 = icmp eq i32 %4501, 2
  %4503 = zext i1 %4502 to i8
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4503, i8* %4504, align 1, !tbaa !2450
  %4505 = load i64, i64* %RAX
  %4506 = load i64, i64* %PC
  %4507 = add i64 %4506, 3
  store i64 %4507, i64* %PC
  %4508 = and i64 %4505, 4294967295
  %4509 = shl i64 %4508, 8
  %4510 = trunc i64 %4509 to i32
  %4511 = icmp slt i32 %4510, 0
  %4512 = shl i32 %4510, 1
  %4513 = zext i32 %4512 to i64
  store i64 %4513, i64* %RAX, align 8, !tbaa !2428
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4515 = zext i1 %4511 to i8
  store i8 %4515, i8* %4514, align 1, !tbaa !2451
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4516, align 1, !tbaa !2451
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4517, align 1, !tbaa !2451
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4519 = icmp eq i32 %4512, 0
  %4520 = zext i1 %4519 to i8
  store i8 %4520, i8* %4518, align 1, !tbaa !2451
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4522 = lshr i32 %4512, 31
  %4523 = trunc i32 %4522 to i8
  store i8 %4523, i8* %4521, align 1, !tbaa !2451
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4524, align 1, !tbaa !2451
  %4525 = load i64, i64* %RBP
  %4526 = sub i64 %4525, 72
  %4527 = load i64, i64* %PC
  %4528 = add i64 %4527, 3
  store i64 %4528, i64* %PC
  %4529 = inttoptr i64 %4526 to i32*
  %4530 = load i32, i32* %4529
  %4531 = zext i32 %4530 to i64
  store i64 %4531, i64* %RCX, align 8, !tbaa !2428
  %4532 = load i64, i64* %RCX
  %4533 = load i64, i64* %RBP
  %4534 = sub i64 %4533, 76
  %4535 = load i64, i64* %PC
  %4536 = add i64 %4535, 3
  store i64 %4536, i64* %PC
  %4537 = trunc i64 %4532 to i32
  %4538 = inttoptr i64 %4534 to i32*
  %4539 = load i32, i32* %4538
  %4540 = add i32 %4539, %4537
  %4541 = zext i32 %4540 to i64
  store i64 %4541, i64* %RCX, align 8, !tbaa !2428
  %4542 = icmp ult i32 %4540, %4537
  %4543 = icmp ult i32 %4540, %4539
  %4544 = or i1 %4542, %4543
  %4545 = zext i1 %4544 to i8
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4545, i8* %4546, align 1, !tbaa !2432
  %4547 = and i32 %4540, 255
  %4548 = call i32 @llvm.ctpop.i32(i32 %4547) #16
  %4549 = trunc i32 %4548 to i8
  %4550 = and i8 %4549, 1
  %4551 = xor i8 %4550, 1
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4551, i8* %4552, align 1, !tbaa !2446
  %4553 = xor i32 %4539, %4537
  %4554 = xor i32 %4553, %4540
  %4555 = lshr i32 %4554, 4
  %4556 = trunc i32 %4555 to i8
  %4557 = and i8 %4556, 1
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4557, i8* %4558, align 1, !tbaa !2447
  %4559 = icmp eq i32 %4540, 0
  %4560 = zext i1 %4559 to i8
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4560, i8* %4561, align 1, !tbaa !2448
  %4562 = lshr i32 %4540, 31
  %4563 = trunc i32 %4562 to i8
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4563, i8* %4564, align 1, !tbaa !2449
  %4565 = lshr i32 %4537, 31
  %4566 = lshr i32 %4539, 31
  %4567 = xor i32 %4562, %4565
  %4568 = xor i32 %4562, %4566
  %4569 = add nuw nsw i32 %4567, %4568
  %4570 = icmp eq i32 %4569, 2
  %4571 = zext i1 %4570 to i8
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4571, i8* %4572, align 1, !tbaa !2450
  %4573 = load i64, i64* %RCX
  %4574 = load i64, i64* %PC
  %4575 = add i64 %4574, 3
  store i64 %4575, i64* %PC
  %4576 = and i64 %4573, 4294967295
  %4577 = lshr i64 %4576, 22
  %4578 = trunc i64 %4577 to i8
  %4579 = and i8 %4578, 1
  %4580 = lshr i64 %4577, 1
  %4581 = trunc i64 %4580 to i32
  %4582 = and i32 %4581, 2147483647
  %4583 = zext i32 %4582 to i64
  store i64 %4583, i64* %RCX, align 8, !tbaa !2428
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4579, i8* %4584, align 1, !tbaa !2451
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4586 = and i32 %4581, 255
  %4587 = call i32 @llvm.ctpop.i32(i32 %4586) #16
  %4588 = trunc i32 %4587 to i8
  %4589 = and i8 %4588, 1
  %4590 = xor i8 %4589, 1
  store i8 %4590, i8* %4585, align 1, !tbaa !2451
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4591, align 1, !tbaa !2451
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4593 = icmp eq i32 %4582, 0
  %4594 = zext i1 %4593 to i8
  store i8 %4594, i8* %4592, align 1, !tbaa !2451
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4595, align 1, !tbaa !2451
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4596, align 1, !tbaa !2451
  %4597 = load i64, i64* %RAX
  %4598 = load i32, i32* %ECX
  %4599 = zext i32 %4598 to i64
  %4600 = load i64, i64* %PC
  %4601 = add i64 %4600, 2
  store i64 %4601, i64* %PC
  %4602 = or i64 %4599, %4597
  %4603 = trunc i64 %4602 to i32
  %4604 = and i64 %4602, 4294967295
  store i64 %4604, i64* %RAX, align 8, !tbaa !2428
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4605, align 1, !tbaa !2432
  %4606 = and i32 %4603, 255
  %4607 = call i32 @llvm.ctpop.i32(i32 %4606) #16
  %4608 = trunc i32 %4607 to i8
  %4609 = and i8 %4608, 1
  %4610 = xor i8 %4609, 1
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4610, i8* %4611, align 1, !tbaa !2446
  %4612 = icmp eq i32 %4603, 0
  %4613 = zext i1 %4612 to i8
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4613, i8* %4614, align 1, !tbaa !2448
  %4615 = lshr i32 %4603, 31
  %4616 = trunc i32 %4615 to i8
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4616, i8* %4617, align 1, !tbaa !2449
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4618, align 1, !tbaa !2450
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4619, align 1, !tbaa !2447
  %4620 = load i64, i64* %RAX
  %4621 = load i64, i64* %RBP
  %4622 = sub i64 %4621, 68
  %4623 = load i64, i64* %PC
  %4624 = add i64 %4623, 3
  store i64 %4624, i64* %PC
  %4625 = trunc i64 %4620 to i32
  %4626 = inttoptr i64 %4622 to i32*
  %4627 = load i32, i32* %4626
  %4628 = xor i32 %4627, %4625
  %4629 = zext i32 %4628 to i64
  store i64 %4629, i64* %RAX, align 8, !tbaa !2428
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4630, align 1, !tbaa !2432
  %4631 = and i32 %4628, 255
  %4632 = call i32 @llvm.ctpop.i32(i32 %4631) #16
  %4633 = trunc i32 %4632 to i8
  %4634 = and i8 %4633, 1
  %4635 = xor i8 %4634, 1
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4635, i8* %4636, align 1, !tbaa !2446
  %4637 = icmp eq i32 %4628, 0
  %4638 = zext i1 %4637 to i8
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4638, i8* %4639, align 1, !tbaa !2448
  %4640 = lshr i32 %4628, 31
  %4641 = trunc i32 %4640 to i8
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4641, i8* %4642, align 1, !tbaa !2449
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4643, align 1, !tbaa !2450
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4644, align 1, !tbaa !2447
  %4645 = load i64, i64* %RBP
  %4646 = sub i64 %4645, 68
  %4647 = load i32, i32* %EAX
  %4648 = zext i32 %4647 to i64
  %4649 = load i64, i64* %PC
  %4650 = add i64 %4649, 3
  store i64 %4650, i64* %PC
  %4651 = inttoptr i64 %4646 to i32*
  store i32 %4647, i32* %4651
  %4652 = load i64, i64* %RBP
  %4653 = sub i64 %4652, 68
  %4654 = load i64, i64* %PC
  %4655 = add i64 %4654, 3
  store i64 %4655, i64* %PC
  %4656 = inttoptr i64 %4653 to i32*
  %4657 = load i32, i32* %4656
  %4658 = zext i32 %4657 to i64
  store i64 %4658, i64* %RAX, align 8, !tbaa !2428
  %4659 = load i64, i64* %RAX
  %4660 = load i64, i64* %RBP
  %4661 = sub i64 %4660, 72
  %4662 = load i64, i64* %PC
  %4663 = add i64 %4662, 3
  store i64 %4663, i64* %PC
  %4664 = trunc i64 %4659 to i32
  %4665 = inttoptr i64 %4661 to i32*
  %4666 = load i32, i32* %4665
  %4667 = add i32 %4666, %4664
  %4668 = zext i32 %4667 to i64
  store i64 %4668, i64* %RAX, align 8, !tbaa !2428
  %4669 = icmp ult i32 %4667, %4664
  %4670 = icmp ult i32 %4667, %4666
  %4671 = or i1 %4669, %4670
  %4672 = zext i1 %4671 to i8
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4672, i8* %4673, align 1, !tbaa !2432
  %4674 = and i32 %4667, 255
  %4675 = call i32 @llvm.ctpop.i32(i32 %4674) #16
  %4676 = trunc i32 %4675 to i8
  %4677 = and i8 %4676, 1
  %4678 = xor i8 %4677, 1
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4678, i8* %4679, align 1, !tbaa !2446
  %4680 = xor i32 %4666, %4664
  %4681 = xor i32 %4680, %4667
  %4682 = lshr i32 %4681, 4
  %4683 = trunc i32 %4682 to i8
  %4684 = and i8 %4683, 1
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4684, i8* %4685, align 1, !tbaa !2447
  %4686 = icmp eq i32 %4667, 0
  %4687 = zext i1 %4686 to i8
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4687, i8* %4688, align 1, !tbaa !2448
  %4689 = lshr i32 %4667, 31
  %4690 = trunc i32 %4689 to i8
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4690, i8* %4691, align 1, !tbaa !2449
  %4692 = lshr i32 %4664, 31
  %4693 = lshr i32 %4666, 31
  %4694 = xor i32 %4689, %4692
  %4695 = xor i32 %4689, %4693
  %4696 = add nuw nsw i32 %4694, %4695
  %4697 = icmp eq i32 %4696, 2
  %4698 = zext i1 %4697 to i8
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4698, i8* %4699, align 1, !tbaa !2450
  %4700 = load i64, i64* %RAX
  %4701 = load i64, i64* %PC
  %4702 = add i64 %4701, 3
  store i64 %4702, i64* %PC
  %4703 = and i64 %4700, 4294967295
  %4704 = shl i64 %4703, 12
  %4705 = trunc i64 %4704 to i32
  %4706 = icmp slt i32 %4705, 0
  %4707 = shl i32 %4705, 1
  %4708 = zext i32 %4707 to i64
  store i64 %4708, i64* %RAX, align 8, !tbaa !2428
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4710 = zext i1 %4706 to i8
  store i8 %4710, i8* %4709, align 1, !tbaa !2451
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4711, align 1, !tbaa !2451
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4712, align 1, !tbaa !2451
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4714 = icmp eq i32 %4707, 0
  %4715 = zext i1 %4714 to i8
  store i8 %4715, i8* %4713, align 1, !tbaa !2451
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4717 = lshr i32 %4707, 31
  %4718 = trunc i32 %4717 to i8
  store i8 %4718, i8* %4716, align 1, !tbaa !2451
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4719, align 1, !tbaa !2451
  %4720 = load i64, i64* %RBP
  %4721 = sub i64 %4720, 68
  %4722 = load i64, i64* %PC
  %4723 = add i64 %4722, 3
  store i64 %4723, i64* %PC
  %4724 = inttoptr i64 %4721 to i32*
  %4725 = load i32, i32* %4724
  %4726 = zext i32 %4725 to i64
  store i64 %4726, i64* %RCX, align 8, !tbaa !2428
  %4727 = load i64, i64* %RCX
  %4728 = load i64, i64* %RBP
  %4729 = sub i64 %4728, 72
  %4730 = load i64, i64* %PC
  %4731 = add i64 %4730, 3
  store i64 %4731, i64* %PC
  %4732 = trunc i64 %4727 to i32
  %4733 = inttoptr i64 %4729 to i32*
  %4734 = load i32, i32* %4733
  %4735 = add i32 %4734, %4732
  %4736 = zext i32 %4735 to i64
  store i64 %4736, i64* %RCX, align 8, !tbaa !2428
  %4737 = icmp ult i32 %4735, %4732
  %4738 = icmp ult i32 %4735, %4734
  %4739 = or i1 %4737, %4738
  %4740 = zext i1 %4739 to i8
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4740, i8* %4741, align 1, !tbaa !2432
  %4742 = and i32 %4735, 255
  %4743 = call i32 @llvm.ctpop.i32(i32 %4742) #16
  %4744 = trunc i32 %4743 to i8
  %4745 = and i8 %4744, 1
  %4746 = xor i8 %4745, 1
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4746, i8* %4747, align 1, !tbaa !2446
  %4748 = xor i32 %4734, %4732
  %4749 = xor i32 %4748, %4735
  %4750 = lshr i32 %4749, 4
  %4751 = trunc i32 %4750 to i8
  %4752 = and i8 %4751, 1
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4752, i8* %4753, align 1, !tbaa !2447
  %4754 = icmp eq i32 %4735, 0
  %4755 = zext i1 %4754 to i8
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4755, i8* %4756, align 1, !tbaa !2448
  %4757 = lshr i32 %4735, 31
  %4758 = trunc i32 %4757 to i8
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4758, i8* %4759, align 1, !tbaa !2449
  %4760 = lshr i32 %4732, 31
  %4761 = lshr i32 %4734, 31
  %4762 = xor i32 %4757, %4760
  %4763 = xor i32 %4757, %4761
  %4764 = add nuw nsw i32 %4762, %4763
  %4765 = icmp eq i32 %4764, 2
  %4766 = zext i1 %4765 to i8
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4766, i8* %4767, align 1, !tbaa !2450
  %4768 = load i64, i64* %RCX
  %4769 = load i64, i64* %PC
  %4770 = add i64 %4769, 3
  store i64 %4770, i64* %PC
  %4771 = and i64 %4768, 4294967295
  %4772 = lshr i64 %4771, 18
  %4773 = trunc i64 %4772 to i8
  %4774 = and i8 %4773, 1
  %4775 = lshr i64 %4772, 1
  %4776 = trunc i64 %4775 to i32
  %4777 = and i32 %4776, 2147483647
  %4778 = zext i32 %4777 to i64
  store i64 %4778, i64* %RCX, align 8, !tbaa !2428
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4774, i8* %4779, align 1, !tbaa !2451
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4781 = and i32 %4776, 255
  %4782 = call i32 @llvm.ctpop.i32(i32 %4781) #16
  %4783 = trunc i32 %4782 to i8
  %4784 = and i8 %4783, 1
  %4785 = xor i8 %4784, 1
  store i8 %4785, i8* %4780, align 1, !tbaa !2451
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4786, align 1, !tbaa !2451
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4788 = icmp eq i32 %4777, 0
  %4789 = zext i1 %4788 to i8
  store i8 %4789, i8* %4787, align 1, !tbaa !2451
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4790, align 1, !tbaa !2451
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4791, align 1, !tbaa !2451
  %4792 = load i64, i64* %RAX
  %4793 = load i32, i32* %ECX
  %4794 = zext i32 %4793 to i64
  %4795 = load i64, i64* %PC
  %4796 = add i64 %4795, 2
  store i64 %4796, i64* %PC
  %4797 = or i64 %4794, %4792
  %4798 = trunc i64 %4797 to i32
  %4799 = and i64 %4797, 4294967295
  store i64 %4799, i64* %RAX, align 8, !tbaa !2428
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4800, align 1, !tbaa !2432
  %4801 = and i32 %4798, 255
  %4802 = call i32 @llvm.ctpop.i32(i32 %4801) #16
  %4803 = trunc i32 %4802 to i8
  %4804 = and i8 %4803, 1
  %4805 = xor i8 %4804, 1
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4805, i8* %4806, align 1, !tbaa !2446
  %4807 = icmp eq i32 %4798, 0
  %4808 = zext i1 %4807 to i8
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4808, i8* %4809, align 1, !tbaa !2448
  %4810 = lshr i32 %4798, 31
  %4811 = trunc i32 %4810 to i8
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4811, i8* %4812, align 1, !tbaa !2449
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4813, align 1, !tbaa !2450
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4814, align 1, !tbaa !2447
  %4815 = load i64, i64* %RAX
  %4816 = load i64, i64* %RBP
  %4817 = sub i64 %4816, 80
  %4818 = load i64, i64* %PC
  %4819 = add i64 %4818, 3
  store i64 %4819, i64* %PC
  %4820 = trunc i64 %4815 to i32
  %4821 = inttoptr i64 %4817 to i32*
  %4822 = load i32, i32* %4821
  %4823 = xor i32 %4822, %4820
  %4824 = zext i32 %4823 to i64
  store i64 %4824, i64* %RAX, align 8, !tbaa !2428
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4825, align 1, !tbaa !2432
  %4826 = and i32 %4823, 255
  %4827 = call i32 @llvm.ctpop.i32(i32 %4826) #16
  %4828 = trunc i32 %4827 to i8
  %4829 = and i8 %4828, 1
  %4830 = xor i8 %4829, 1
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4830, i8* %4831, align 1, !tbaa !2446
  %4832 = icmp eq i32 %4823, 0
  %4833 = zext i1 %4832 to i8
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4833, i8* %4834, align 1, !tbaa !2448
  %4835 = lshr i32 %4823, 31
  %4836 = trunc i32 %4835 to i8
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4836, i8* %4837, align 1, !tbaa !2449
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4838, align 1, !tbaa !2450
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4839, align 1, !tbaa !2447
  %4840 = load i64, i64* %RBP
  %4841 = sub i64 %4840, 80
  %4842 = load i32, i32* %EAX
  %4843 = zext i32 %4842 to i64
  %4844 = load i64, i64* %PC
  %4845 = add i64 %4844, 3
  store i64 %4845, i64* %PC
  %4846 = inttoptr i64 %4841 to i32*
  store i32 %4842, i32* %4846
  %4847 = load i64, i64* %RBP
  %4848 = sub i64 %4847, 80
  %4849 = load i64, i64* %PC
  %4850 = add i64 %4849, 3
  store i64 %4850, i64* %PC
  %4851 = inttoptr i64 %4848 to i32*
  %4852 = load i32, i32* %4851
  %4853 = zext i32 %4852 to i64
  store i64 %4853, i64* %RAX, align 8, !tbaa !2428
  %4854 = load i64, i64* %RAX
  %4855 = load i64, i64* %RBP
  %4856 = sub i64 %4855, 68
  %4857 = load i64, i64* %PC
  %4858 = add i64 %4857, 3
  store i64 %4858, i64* %PC
  %4859 = trunc i64 %4854 to i32
  %4860 = inttoptr i64 %4856 to i32*
  %4861 = load i32, i32* %4860
  %4862 = add i32 %4861, %4859
  %4863 = zext i32 %4862 to i64
  store i64 %4863, i64* %RAX, align 8, !tbaa !2428
  %4864 = icmp ult i32 %4862, %4859
  %4865 = icmp ult i32 %4862, %4861
  %4866 = or i1 %4864, %4865
  %4867 = zext i1 %4866 to i8
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4867, i8* %4868, align 1, !tbaa !2432
  %4869 = and i32 %4862, 255
  %4870 = call i32 @llvm.ctpop.i32(i32 %4869) #16
  %4871 = trunc i32 %4870 to i8
  %4872 = and i8 %4871, 1
  %4873 = xor i8 %4872, 1
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4873, i8* %4874, align 1, !tbaa !2446
  %4875 = xor i32 %4861, %4859
  %4876 = xor i32 %4875, %4862
  %4877 = lshr i32 %4876, 4
  %4878 = trunc i32 %4877 to i8
  %4879 = and i8 %4878, 1
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4879, i8* %4880, align 1, !tbaa !2447
  %4881 = icmp eq i32 %4862, 0
  %4882 = zext i1 %4881 to i8
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4882, i8* %4883, align 1, !tbaa !2448
  %4884 = lshr i32 %4862, 31
  %4885 = trunc i32 %4884 to i8
  %4886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4885, i8* %4886, align 1, !tbaa !2449
  %4887 = lshr i32 %4859, 31
  %4888 = lshr i32 %4861, 31
  %4889 = xor i32 %4884, %4887
  %4890 = xor i32 %4884, %4888
  %4891 = add nuw nsw i32 %4889, %4890
  %4892 = icmp eq i32 %4891, 2
  %4893 = zext i1 %4892 to i8
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4893, i8* %4894, align 1, !tbaa !2450
  %4895 = load i64, i64* %RAX
  %4896 = load i64, i64* %PC
  %4897 = add i64 %4896, 3
  store i64 %4897, i64* %PC
  %4898 = and i64 %4895, 4294967295
  %4899 = shl i64 %4898, 17
  %4900 = trunc i64 %4899 to i32
  %4901 = icmp slt i32 %4900, 0
  %4902 = shl i32 %4900, 1
  %4903 = zext i32 %4902 to i64
  store i64 %4903, i64* %RAX, align 8, !tbaa !2428
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4905 = zext i1 %4901 to i8
  store i8 %4905, i8* %4904, align 1, !tbaa !2451
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4906, align 1, !tbaa !2451
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4907, align 1, !tbaa !2451
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4909 = icmp eq i32 %4902, 0
  %4910 = zext i1 %4909 to i8
  store i8 %4910, i8* %4908, align 1, !tbaa !2451
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4912 = lshr i32 %4902, 31
  %4913 = trunc i32 %4912 to i8
  store i8 %4913, i8* %4911, align 1, !tbaa !2451
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4914, align 1, !tbaa !2451
  %4915 = load i64, i64* %RBP
  %4916 = sub i64 %4915, 80
  %4917 = load i64, i64* %PC
  %4918 = add i64 %4917, 3
  store i64 %4918, i64* %PC
  %4919 = inttoptr i64 %4916 to i32*
  %4920 = load i32, i32* %4919
  %4921 = zext i32 %4920 to i64
  store i64 %4921, i64* %RCX, align 8, !tbaa !2428
  %4922 = load i64, i64* %RCX
  %4923 = load i64, i64* %RBP
  %4924 = sub i64 %4923, 68
  %4925 = load i64, i64* %PC
  %4926 = add i64 %4925, 3
  store i64 %4926, i64* %PC
  %4927 = trunc i64 %4922 to i32
  %4928 = inttoptr i64 %4924 to i32*
  %4929 = load i32, i32* %4928
  %4930 = add i32 %4929, %4927
  %4931 = zext i32 %4930 to i64
  store i64 %4931, i64* %RCX, align 8, !tbaa !2428
  %4932 = icmp ult i32 %4930, %4927
  %4933 = icmp ult i32 %4930, %4929
  %4934 = or i1 %4932, %4933
  %4935 = zext i1 %4934 to i8
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4935, i8* %4936, align 1, !tbaa !2432
  %4937 = and i32 %4930, 255
  %4938 = call i32 @llvm.ctpop.i32(i32 %4937) #16
  %4939 = trunc i32 %4938 to i8
  %4940 = and i8 %4939, 1
  %4941 = xor i8 %4940, 1
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4941, i8* %4942, align 1, !tbaa !2446
  %4943 = xor i32 %4929, %4927
  %4944 = xor i32 %4943, %4930
  %4945 = lshr i32 %4944, 4
  %4946 = trunc i32 %4945 to i8
  %4947 = and i8 %4946, 1
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4947, i8* %4948, align 1, !tbaa !2447
  %4949 = icmp eq i32 %4930, 0
  %4950 = zext i1 %4949 to i8
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4950, i8* %4951, align 1, !tbaa !2448
  %4952 = lshr i32 %4930, 31
  %4953 = trunc i32 %4952 to i8
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4953, i8* %4954, align 1, !tbaa !2449
  %4955 = lshr i32 %4927, 31
  %4956 = lshr i32 %4929, 31
  %4957 = xor i32 %4952, %4955
  %4958 = xor i32 %4952, %4956
  %4959 = add nuw nsw i32 %4957, %4958
  %4960 = icmp eq i32 %4959, 2
  %4961 = zext i1 %4960 to i8
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4961, i8* %4962, align 1, !tbaa !2450
  %4963 = load i64, i64* %RCX
  %4964 = load i64, i64* %PC
  %4965 = add i64 %4964, 3
  store i64 %4965, i64* %PC
  %4966 = and i64 %4963, 4294967295
  %4967 = lshr i64 %4966, 13
  %4968 = trunc i64 %4967 to i8
  %4969 = and i8 %4968, 1
  %4970 = lshr i64 %4967, 1
  %4971 = trunc i64 %4970 to i32
  %4972 = and i32 %4971, 2147483647
  %4973 = zext i32 %4972 to i64
  store i64 %4973, i64* %RCX, align 8, !tbaa !2428
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4969, i8* %4974, align 1, !tbaa !2451
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4976 = and i32 %4971, 255
  %4977 = call i32 @llvm.ctpop.i32(i32 %4976) #16
  %4978 = trunc i32 %4977 to i8
  %4979 = and i8 %4978, 1
  %4980 = xor i8 %4979, 1
  store i8 %4980, i8* %4975, align 1, !tbaa !2451
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4981, align 1, !tbaa !2451
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4983 = icmp eq i32 %4972, 0
  %4984 = zext i1 %4983 to i8
  store i8 %4984, i8* %4982, align 1, !tbaa !2451
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4985, align 1, !tbaa !2451
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4986, align 1, !tbaa !2451
  %4987 = load i64, i64* %RAX
  %4988 = load i32, i32* %ECX
  %4989 = zext i32 %4988 to i64
  %4990 = load i64, i64* %PC
  %4991 = add i64 %4990, 2
  store i64 %4991, i64* %PC
  %4992 = or i64 %4989, %4987
  %4993 = trunc i64 %4992 to i32
  %4994 = and i64 %4992, 4294967295
  store i64 %4994, i64* %RAX, align 8, !tbaa !2428
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4995, align 1, !tbaa !2432
  %4996 = and i32 %4993, 255
  %4997 = call i32 @llvm.ctpop.i32(i32 %4996) #16
  %4998 = trunc i32 %4997 to i8
  %4999 = and i8 %4998, 1
  %5000 = xor i8 %4999, 1
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5000, i8* %5001, align 1, !tbaa !2446
  %5002 = icmp eq i32 %4993, 0
  %5003 = zext i1 %5002 to i8
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5003, i8* %5004, align 1, !tbaa !2448
  %5005 = lshr i32 %4993, 31
  %5006 = trunc i32 %5005 to i8
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5006, i8* %5007, align 1, !tbaa !2449
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5008, align 1, !tbaa !2450
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5009, align 1, !tbaa !2447
  %5010 = load i64, i64* %RAX
  %5011 = load i64, i64* %RBP
  %5012 = sub i64 %5011, 76
  %5013 = load i64, i64* %PC
  %5014 = add i64 %5013, 3
  store i64 %5014, i64* %PC
  %5015 = trunc i64 %5010 to i32
  %5016 = inttoptr i64 %5012 to i32*
  %5017 = load i32, i32* %5016
  %5018 = xor i32 %5017, %5015
  %5019 = zext i32 %5018 to i64
  store i64 %5019, i64* %RAX, align 8, !tbaa !2428
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5020, align 1, !tbaa !2432
  %5021 = and i32 %5018, 255
  %5022 = call i32 @llvm.ctpop.i32(i32 %5021) #16
  %5023 = trunc i32 %5022 to i8
  %5024 = and i8 %5023, 1
  %5025 = xor i8 %5024, 1
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5025, i8* %5026, align 1, !tbaa !2446
  %5027 = icmp eq i32 %5018, 0
  %5028 = zext i1 %5027 to i8
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5028, i8* %5029, align 1, !tbaa !2448
  %5030 = lshr i32 %5018, 31
  %5031 = trunc i32 %5030 to i8
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5031, i8* %5032, align 1, !tbaa !2449
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5033, align 1, !tbaa !2450
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5034, align 1, !tbaa !2447
  %5035 = load i64, i64* %RBP
  %5036 = sub i64 %5035, 76
  %5037 = load i32, i32* %EAX
  %5038 = zext i32 %5037 to i64
  %5039 = load i64, i64* %PC
  %5040 = add i64 %5039, 3
  store i64 %5040, i64* %PC
  %5041 = inttoptr i64 %5036 to i32*
  store i32 %5037, i32* %5041
  %5042 = load i64, i64* %RBP
  %5043 = sub i64 %5042, 56
  %5044 = load i64, i64* %PC
  %5045 = add i64 %5044, 3
  store i64 %5045, i64* %PC
  %5046 = inttoptr i64 %5043 to i32*
  %5047 = load i32, i32* %5046
  %5048 = zext i32 %5047 to i64
  store i64 %5048, i64* %RAX, align 8, !tbaa !2428
  %5049 = load i64, i64* %RAX
  %5050 = load i64, i64* %RBP
  %5051 = sub i64 %5050, 60
  %5052 = load i64, i64* %PC
  %5053 = add i64 %5052, 3
  store i64 %5053, i64* %PC
  %5054 = trunc i64 %5049 to i32
  %5055 = inttoptr i64 %5051 to i32*
  %5056 = load i32, i32* %5055
  %5057 = add i32 %5056, %5054
  %5058 = zext i32 %5057 to i64
  store i64 %5058, i64* %RAX, align 8, !tbaa !2428
  %5059 = icmp ult i32 %5057, %5054
  %5060 = icmp ult i32 %5057, %5056
  %5061 = or i1 %5059, %5060
  %5062 = zext i1 %5061 to i8
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5062, i8* %5063, align 1, !tbaa !2432
  %5064 = and i32 %5057, 255
  %5065 = call i32 @llvm.ctpop.i32(i32 %5064) #16
  %5066 = trunc i32 %5065 to i8
  %5067 = and i8 %5066, 1
  %5068 = xor i8 %5067, 1
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5068, i8* %5069, align 1, !tbaa !2446
  %5070 = xor i32 %5056, %5054
  %5071 = xor i32 %5070, %5057
  %5072 = lshr i32 %5071, 4
  %5073 = trunc i32 %5072 to i8
  %5074 = and i8 %5073, 1
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5074, i8* %5075, align 1, !tbaa !2447
  %5076 = icmp eq i32 %5057, 0
  %5077 = zext i1 %5076 to i8
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5077, i8* %5078, align 1, !tbaa !2448
  %5079 = lshr i32 %5057, 31
  %5080 = trunc i32 %5079 to i8
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5080, i8* %5081, align 1, !tbaa !2449
  %5082 = lshr i32 %5054, 31
  %5083 = lshr i32 %5056, 31
  %5084 = xor i32 %5079, %5082
  %5085 = xor i32 %5079, %5083
  %5086 = add nuw nsw i32 %5084, %5085
  %5087 = icmp eq i32 %5086, 2
  %5088 = zext i1 %5087 to i8
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5088, i8* %5089, align 1, !tbaa !2450
  %5090 = load i64, i64* %RAX
  %5091 = load i64, i64* %PC
  %5092 = add i64 %5091, 3
  store i64 %5092, i64* %PC
  %5093 = and i64 %5090, 4294967295
  %5094 = shl i64 %5093, 6
  %5095 = trunc i64 %5094 to i32
  %5096 = icmp slt i32 %5095, 0
  %5097 = shl i32 %5095, 1
  %5098 = zext i32 %5097 to i64
  store i64 %5098, i64* %RAX, align 8, !tbaa !2428
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5100 = zext i1 %5096 to i8
  store i8 %5100, i8* %5099, align 1, !tbaa !2451
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5102 = and i32 %5097, 254
  %5103 = call i32 @llvm.ctpop.i32(i32 %5102) #16
  %5104 = trunc i32 %5103 to i8
  %5105 = and i8 %5104, 1
  %5106 = xor i8 %5105, 1
  store i8 %5106, i8* %5101, align 1, !tbaa !2451
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5107, align 1, !tbaa !2451
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5109 = icmp eq i32 %5097, 0
  %5110 = zext i1 %5109 to i8
  store i8 %5110, i8* %5108, align 1, !tbaa !2451
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5112 = lshr i32 %5097, 31
  %5113 = trunc i32 %5112 to i8
  store i8 %5113, i8* %5111, align 1, !tbaa !2451
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5114, align 1, !tbaa !2451
  %5115 = load i64, i64* %RBP
  %5116 = sub i64 %5115, 56
  %5117 = load i64, i64* %PC
  %5118 = add i64 %5117, 3
  store i64 %5118, i64* %PC
  %5119 = inttoptr i64 %5116 to i32*
  %5120 = load i32, i32* %5119
  %5121 = zext i32 %5120 to i64
  store i64 %5121, i64* %RCX, align 8, !tbaa !2428
  %5122 = load i64, i64* %RCX
  %5123 = load i64, i64* %RBP
  %5124 = sub i64 %5123, 60
  %5125 = load i64, i64* %PC
  %5126 = add i64 %5125, 3
  store i64 %5126, i64* %PC
  %5127 = trunc i64 %5122 to i32
  %5128 = inttoptr i64 %5124 to i32*
  %5129 = load i32, i32* %5128
  %5130 = add i32 %5129, %5127
  %5131 = zext i32 %5130 to i64
  store i64 %5131, i64* %RCX, align 8, !tbaa !2428
  %5132 = icmp ult i32 %5130, %5127
  %5133 = icmp ult i32 %5130, %5129
  %5134 = or i1 %5132, %5133
  %5135 = zext i1 %5134 to i8
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5135, i8* %5136, align 1, !tbaa !2432
  %5137 = and i32 %5130, 255
  %5138 = call i32 @llvm.ctpop.i32(i32 %5137) #16
  %5139 = trunc i32 %5138 to i8
  %5140 = and i8 %5139, 1
  %5141 = xor i8 %5140, 1
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5141, i8* %5142, align 1, !tbaa !2446
  %5143 = xor i32 %5129, %5127
  %5144 = xor i32 %5143, %5130
  %5145 = lshr i32 %5144, 4
  %5146 = trunc i32 %5145 to i8
  %5147 = and i8 %5146, 1
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5147, i8* %5148, align 1, !tbaa !2447
  %5149 = icmp eq i32 %5130, 0
  %5150 = zext i1 %5149 to i8
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5150, i8* %5151, align 1, !tbaa !2448
  %5152 = lshr i32 %5130, 31
  %5153 = trunc i32 %5152 to i8
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5153, i8* %5154, align 1, !tbaa !2449
  %5155 = lshr i32 %5127, 31
  %5156 = lshr i32 %5129, 31
  %5157 = xor i32 %5152, %5155
  %5158 = xor i32 %5152, %5156
  %5159 = add nuw nsw i32 %5157, %5158
  %5160 = icmp eq i32 %5159, 2
  %5161 = zext i1 %5160 to i8
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5161, i8* %5162, align 1, !tbaa !2450
  %5163 = load i64, i64* %RCX
  %5164 = load i64, i64* %PC
  %5165 = add i64 %5164, 3
  store i64 %5165, i64* %PC
  %5166 = and i64 %5163, 4294967295
  %5167 = lshr i64 %5166, 24
  %5168 = trunc i64 %5167 to i8
  %5169 = and i8 %5168, 1
  %5170 = lshr i64 %5167, 1
  %5171 = trunc i64 %5170 to i32
  %5172 = and i32 %5171, 2147483647
  %5173 = zext i32 %5172 to i64
  store i64 %5173, i64* %RCX, align 8, !tbaa !2428
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5169, i8* %5174, align 1, !tbaa !2451
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5176 = and i32 %5171, 255
  %5177 = call i32 @llvm.ctpop.i32(i32 %5176) #16
  %5178 = trunc i32 %5177 to i8
  %5179 = and i8 %5178, 1
  %5180 = xor i8 %5179, 1
  store i8 %5180, i8* %5175, align 1, !tbaa !2451
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5181, align 1, !tbaa !2451
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5183 = icmp eq i32 %5172, 0
  %5184 = zext i1 %5183 to i8
  store i8 %5184, i8* %5182, align 1, !tbaa !2451
  %5185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5185, align 1, !tbaa !2451
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5186, align 1, !tbaa !2451
  %5187 = load i64, i64* %RAX
  %5188 = load i32, i32* %ECX
  %5189 = zext i32 %5188 to i64
  %5190 = load i64, i64* %PC
  %5191 = add i64 %5190, 2
  store i64 %5191, i64* %PC
  %5192 = or i64 %5189, %5187
  %5193 = trunc i64 %5192 to i32
  %5194 = and i64 %5192, 4294967295
  store i64 %5194, i64* %RAX, align 8, !tbaa !2428
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5195, align 1, !tbaa !2432
  %5196 = and i32 %5193, 255
  %5197 = call i32 @llvm.ctpop.i32(i32 %5196) #16
  %5198 = trunc i32 %5197 to i8
  %5199 = and i8 %5198, 1
  %5200 = xor i8 %5199, 1
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5200, i8* %5201, align 1, !tbaa !2446
  %5202 = icmp eq i32 %5193, 0
  %5203 = zext i1 %5202 to i8
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5203, i8* %5204, align 1, !tbaa !2448
  %5205 = lshr i32 %5193, 31
  %5206 = trunc i32 %5205 to i8
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5206, i8* %5207, align 1, !tbaa !2449
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5208, align 1, !tbaa !2450
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5209, align 1, !tbaa !2447
  %5210 = load i64, i64* %RAX
  %5211 = load i64, i64* %RBP
  %5212 = sub i64 %5211, 52
  %5213 = load i64, i64* %PC
  %5214 = add i64 %5213, 3
  store i64 %5214, i64* %PC
  %5215 = trunc i64 %5210 to i32
  %5216 = inttoptr i64 %5212 to i32*
  %5217 = load i32, i32* %5216
  %5218 = xor i32 %5217, %5215
  %5219 = zext i32 %5218 to i64
  store i64 %5219, i64* %RAX, align 8, !tbaa !2428
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5220, align 1, !tbaa !2432
  %5221 = and i32 %5218, 255
  %5222 = call i32 @llvm.ctpop.i32(i32 %5221) #16
  %5223 = trunc i32 %5222 to i8
  %5224 = and i8 %5223, 1
  %5225 = xor i8 %5224, 1
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5225, i8* %5226, align 1, !tbaa !2446
  %5227 = icmp eq i32 %5218, 0
  %5228 = zext i1 %5227 to i8
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5228, i8* %5229, align 1, !tbaa !2448
  %5230 = lshr i32 %5218, 31
  %5231 = trunc i32 %5230 to i8
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5231, i8* %5232, align 1, !tbaa !2449
  %5233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5233, align 1, !tbaa !2450
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5234, align 1, !tbaa !2447
  %5235 = load i64, i64* %RBP
  %5236 = sub i64 %5235, 52
  %5237 = load i32, i32* %EAX
  %5238 = zext i32 %5237 to i64
  %5239 = load i64, i64* %PC
  %5240 = add i64 %5239, 3
  store i64 %5240, i64* %PC
  %5241 = inttoptr i64 %5236 to i32*
  store i32 %5237, i32* %5241
  %5242 = load i64, i64* %RBP
  %5243 = sub i64 %5242, 52
  %5244 = load i64, i64* %PC
  %5245 = add i64 %5244, 3
  store i64 %5245, i64* %PC
  %5246 = inttoptr i64 %5243 to i32*
  %5247 = load i32, i32* %5246
  %5248 = zext i32 %5247 to i64
  store i64 %5248, i64* %RAX, align 8, !tbaa !2428
  %5249 = load i64, i64* %RAX
  %5250 = load i64, i64* %RBP
  %5251 = sub i64 %5250, 56
  %5252 = load i64, i64* %PC
  %5253 = add i64 %5252, 3
  store i64 %5253, i64* %PC
  %5254 = trunc i64 %5249 to i32
  %5255 = inttoptr i64 %5251 to i32*
  %5256 = load i32, i32* %5255
  %5257 = add i32 %5256, %5254
  %5258 = zext i32 %5257 to i64
  store i64 %5258, i64* %RAX, align 8, !tbaa !2428
  %5259 = icmp ult i32 %5257, %5254
  %5260 = icmp ult i32 %5257, %5256
  %5261 = or i1 %5259, %5260
  %5262 = zext i1 %5261 to i8
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5262, i8* %5263, align 1, !tbaa !2432
  %5264 = and i32 %5257, 255
  %5265 = call i32 @llvm.ctpop.i32(i32 %5264) #16
  %5266 = trunc i32 %5265 to i8
  %5267 = and i8 %5266, 1
  %5268 = xor i8 %5267, 1
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5268, i8* %5269, align 1, !tbaa !2446
  %5270 = xor i32 %5256, %5254
  %5271 = xor i32 %5270, %5257
  %5272 = lshr i32 %5271, 4
  %5273 = trunc i32 %5272 to i8
  %5274 = and i8 %5273, 1
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5274, i8* %5275, align 1, !tbaa !2447
  %5276 = icmp eq i32 %5257, 0
  %5277 = zext i1 %5276 to i8
  %5278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5277, i8* %5278, align 1, !tbaa !2448
  %5279 = lshr i32 %5257, 31
  %5280 = trunc i32 %5279 to i8
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5280, i8* %5281, align 1, !tbaa !2449
  %5282 = lshr i32 %5254, 31
  %5283 = lshr i32 %5256, 31
  %5284 = xor i32 %5279, %5282
  %5285 = xor i32 %5279, %5283
  %5286 = add nuw nsw i32 %5284, %5285
  %5287 = icmp eq i32 %5286, 2
  %5288 = zext i1 %5287 to i8
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5288, i8* %5289, align 1, !tbaa !2450
  %5290 = load i64, i64* %RAX
  %5291 = load i64, i64* %PC
  %5292 = add i64 %5291, 3
  store i64 %5292, i64* %PC
  %5293 = and i64 %5290, 4294967295
  %5294 = shl i64 %5293, 8
  %5295 = trunc i64 %5294 to i32
  %5296 = icmp slt i32 %5295, 0
  %5297 = shl i32 %5295, 1
  %5298 = zext i32 %5297 to i64
  store i64 %5298, i64* %RAX, align 8, !tbaa !2428
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5300 = zext i1 %5296 to i8
  store i8 %5300, i8* %5299, align 1, !tbaa !2451
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %5301, align 1, !tbaa !2451
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5302, align 1, !tbaa !2451
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5304 = icmp eq i32 %5297, 0
  %5305 = zext i1 %5304 to i8
  store i8 %5305, i8* %5303, align 1, !tbaa !2451
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5307 = lshr i32 %5297, 31
  %5308 = trunc i32 %5307 to i8
  store i8 %5308, i8* %5306, align 1, !tbaa !2451
  %5309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5309, align 1, !tbaa !2451
  %5310 = load i64, i64* %RBP
  %5311 = sub i64 %5310, 52
  %5312 = load i64, i64* %PC
  %5313 = add i64 %5312, 3
  store i64 %5313, i64* %PC
  %5314 = inttoptr i64 %5311 to i32*
  %5315 = load i32, i32* %5314
  %5316 = zext i32 %5315 to i64
  store i64 %5316, i64* %RCX, align 8, !tbaa !2428
  %5317 = load i64, i64* %RCX
  %5318 = load i64, i64* %RBP
  %5319 = sub i64 %5318, 56
  %5320 = load i64, i64* %PC
  %5321 = add i64 %5320, 3
  store i64 %5321, i64* %PC
  %5322 = trunc i64 %5317 to i32
  %5323 = inttoptr i64 %5319 to i32*
  %5324 = load i32, i32* %5323
  %5325 = add i32 %5324, %5322
  %5326 = zext i32 %5325 to i64
  store i64 %5326, i64* %RCX, align 8, !tbaa !2428
  %5327 = icmp ult i32 %5325, %5322
  %5328 = icmp ult i32 %5325, %5324
  %5329 = or i1 %5327, %5328
  %5330 = zext i1 %5329 to i8
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5330, i8* %5331, align 1, !tbaa !2432
  %5332 = and i32 %5325, 255
  %5333 = call i32 @llvm.ctpop.i32(i32 %5332) #16
  %5334 = trunc i32 %5333 to i8
  %5335 = and i8 %5334, 1
  %5336 = xor i8 %5335, 1
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5336, i8* %5337, align 1, !tbaa !2446
  %5338 = xor i32 %5324, %5322
  %5339 = xor i32 %5338, %5325
  %5340 = lshr i32 %5339, 4
  %5341 = trunc i32 %5340 to i8
  %5342 = and i8 %5341, 1
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5342, i8* %5343, align 1, !tbaa !2447
  %5344 = icmp eq i32 %5325, 0
  %5345 = zext i1 %5344 to i8
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5345, i8* %5346, align 1, !tbaa !2448
  %5347 = lshr i32 %5325, 31
  %5348 = trunc i32 %5347 to i8
  %5349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5348, i8* %5349, align 1, !tbaa !2449
  %5350 = lshr i32 %5322, 31
  %5351 = lshr i32 %5324, 31
  %5352 = xor i32 %5347, %5350
  %5353 = xor i32 %5347, %5351
  %5354 = add nuw nsw i32 %5352, %5353
  %5355 = icmp eq i32 %5354, 2
  %5356 = zext i1 %5355 to i8
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5356, i8* %5357, align 1, !tbaa !2450
  %5358 = load i64, i64* %RCX
  %5359 = load i64, i64* %PC
  %5360 = add i64 %5359, 3
  store i64 %5360, i64* %PC
  %5361 = and i64 %5358, 4294967295
  %5362 = lshr i64 %5361, 22
  %5363 = trunc i64 %5362 to i8
  %5364 = and i8 %5363, 1
  %5365 = lshr i64 %5362, 1
  %5366 = trunc i64 %5365 to i32
  %5367 = and i32 %5366, 2147483647
  %5368 = zext i32 %5367 to i64
  store i64 %5368, i64* %RCX, align 8, !tbaa !2428
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5364, i8* %5369, align 1, !tbaa !2451
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5371 = and i32 %5366, 255
  %5372 = call i32 @llvm.ctpop.i32(i32 %5371) #16
  %5373 = trunc i32 %5372 to i8
  %5374 = and i8 %5373, 1
  %5375 = xor i8 %5374, 1
  store i8 %5375, i8* %5370, align 1, !tbaa !2451
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5376, align 1, !tbaa !2451
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5378 = icmp eq i32 %5367, 0
  %5379 = zext i1 %5378 to i8
  store i8 %5379, i8* %5377, align 1, !tbaa !2451
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5380, align 1, !tbaa !2451
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5381, align 1, !tbaa !2451
  %5382 = load i64, i64* %RAX
  %5383 = load i32, i32* %ECX
  %5384 = zext i32 %5383 to i64
  %5385 = load i64, i64* %PC
  %5386 = add i64 %5385, 2
  store i64 %5386, i64* %PC
  %5387 = or i64 %5384, %5382
  %5388 = trunc i64 %5387 to i32
  %5389 = and i64 %5387, 4294967295
  store i64 %5389, i64* %RAX, align 8, !tbaa !2428
  %5390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5390, align 1, !tbaa !2432
  %5391 = and i32 %5388, 255
  %5392 = call i32 @llvm.ctpop.i32(i32 %5391) #16
  %5393 = trunc i32 %5392 to i8
  %5394 = and i8 %5393, 1
  %5395 = xor i8 %5394, 1
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5395, i8* %5396, align 1, !tbaa !2446
  %5397 = icmp eq i32 %5388, 0
  %5398 = zext i1 %5397 to i8
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5398, i8* %5399, align 1, !tbaa !2448
  %5400 = lshr i32 %5388, 31
  %5401 = trunc i32 %5400 to i8
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5401, i8* %5402, align 1, !tbaa !2449
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5403, align 1, !tbaa !2450
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5404, align 1, !tbaa !2447
  %5405 = load i64, i64* %RAX
  %5406 = load i64, i64* %RBP
  %5407 = sub i64 %5406, 64
  %5408 = load i64, i64* %PC
  %5409 = add i64 %5408, 3
  store i64 %5409, i64* %PC
  %5410 = trunc i64 %5405 to i32
  %5411 = inttoptr i64 %5407 to i32*
  %5412 = load i32, i32* %5411
  %5413 = xor i32 %5412, %5410
  %5414 = zext i32 %5413 to i64
  store i64 %5414, i64* %RAX, align 8, !tbaa !2428
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5415, align 1, !tbaa !2432
  %5416 = and i32 %5413, 255
  %5417 = call i32 @llvm.ctpop.i32(i32 %5416) #16
  %5418 = trunc i32 %5417 to i8
  %5419 = and i8 %5418, 1
  %5420 = xor i8 %5419, 1
  %5421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5420, i8* %5421, align 1, !tbaa !2446
  %5422 = icmp eq i32 %5413, 0
  %5423 = zext i1 %5422 to i8
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5423, i8* %5424, align 1, !tbaa !2448
  %5425 = lshr i32 %5413, 31
  %5426 = trunc i32 %5425 to i8
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5426, i8* %5427, align 1, !tbaa !2449
  %5428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5428, align 1, !tbaa !2450
  %5429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5429, align 1, !tbaa !2447
  %5430 = load i64, i64* %RBP
  %5431 = sub i64 %5430, 64
  %5432 = load i32, i32* %EAX
  %5433 = zext i32 %5432 to i64
  %5434 = load i64, i64* %PC
  %5435 = add i64 %5434, 3
  store i64 %5435, i64* %PC
  %5436 = inttoptr i64 %5431 to i32*
  store i32 %5432, i32* %5436
  %5437 = load i64, i64* %RBP
  %5438 = sub i64 %5437, 64
  %5439 = load i64, i64* %PC
  %5440 = add i64 %5439, 3
  store i64 %5440, i64* %PC
  %5441 = inttoptr i64 %5438 to i32*
  %5442 = load i32, i32* %5441
  %5443 = zext i32 %5442 to i64
  store i64 %5443, i64* %RAX, align 8, !tbaa !2428
  %5444 = load i64, i64* %RAX
  %5445 = load i64, i64* %RBP
  %5446 = sub i64 %5445, 52
  %5447 = load i64, i64* %PC
  %5448 = add i64 %5447, 3
  store i64 %5448, i64* %PC
  %5449 = trunc i64 %5444 to i32
  %5450 = inttoptr i64 %5446 to i32*
  %5451 = load i32, i32* %5450
  %5452 = add i32 %5451, %5449
  %5453 = zext i32 %5452 to i64
  store i64 %5453, i64* %RAX, align 8, !tbaa !2428
  %5454 = icmp ult i32 %5452, %5449
  %5455 = icmp ult i32 %5452, %5451
  %5456 = or i1 %5454, %5455
  %5457 = zext i1 %5456 to i8
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5457, i8* %5458, align 1, !tbaa !2432
  %5459 = and i32 %5452, 255
  %5460 = call i32 @llvm.ctpop.i32(i32 %5459) #16
  %5461 = trunc i32 %5460 to i8
  %5462 = and i8 %5461, 1
  %5463 = xor i8 %5462, 1
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5463, i8* %5464, align 1, !tbaa !2446
  %5465 = xor i32 %5451, %5449
  %5466 = xor i32 %5465, %5452
  %5467 = lshr i32 %5466, 4
  %5468 = trunc i32 %5467 to i8
  %5469 = and i8 %5468, 1
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5469, i8* %5470, align 1, !tbaa !2447
  %5471 = icmp eq i32 %5452, 0
  %5472 = zext i1 %5471 to i8
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5472, i8* %5473, align 1, !tbaa !2448
  %5474 = lshr i32 %5452, 31
  %5475 = trunc i32 %5474 to i8
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5475, i8* %5476, align 1, !tbaa !2449
  %5477 = lshr i32 %5449, 31
  %5478 = lshr i32 %5451, 31
  %5479 = xor i32 %5474, %5477
  %5480 = xor i32 %5474, %5478
  %5481 = add nuw nsw i32 %5479, %5480
  %5482 = icmp eq i32 %5481, 2
  %5483 = zext i1 %5482 to i8
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5483, i8* %5484, align 1, !tbaa !2450
  %5485 = load i64, i64* %RAX
  %5486 = load i64, i64* %PC
  %5487 = add i64 %5486, 3
  store i64 %5487, i64* %PC
  %5488 = and i64 %5485, 4294967295
  %5489 = shl i64 %5488, 12
  %5490 = trunc i64 %5489 to i32
  %5491 = icmp slt i32 %5490, 0
  %5492 = shl i32 %5490, 1
  %5493 = zext i32 %5492 to i64
  store i64 %5493, i64* %RAX, align 8, !tbaa !2428
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5495 = zext i1 %5491 to i8
  store i8 %5495, i8* %5494, align 1, !tbaa !2451
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %5496, align 1, !tbaa !2451
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5497, align 1, !tbaa !2451
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5499 = icmp eq i32 %5492, 0
  %5500 = zext i1 %5499 to i8
  store i8 %5500, i8* %5498, align 1, !tbaa !2451
  %5501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5502 = lshr i32 %5492, 31
  %5503 = trunc i32 %5502 to i8
  store i8 %5503, i8* %5501, align 1, !tbaa !2451
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5504, align 1, !tbaa !2451
  %5505 = load i64, i64* %RBP
  %5506 = sub i64 %5505, 64
  %5507 = load i64, i64* %PC
  %5508 = add i64 %5507, 3
  store i64 %5508, i64* %PC
  %5509 = inttoptr i64 %5506 to i32*
  %5510 = load i32, i32* %5509
  %5511 = zext i32 %5510 to i64
  store i64 %5511, i64* %RCX, align 8, !tbaa !2428
  %5512 = load i64, i64* %RCX
  %5513 = load i64, i64* %RBP
  %5514 = sub i64 %5513, 52
  %5515 = load i64, i64* %PC
  %5516 = add i64 %5515, 3
  store i64 %5516, i64* %PC
  %5517 = trunc i64 %5512 to i32
  %5518 = inttoptr i64 %5514 to i32*
  %5519 = load i32, i32* %5518
  %5520 = add i32 %5519, %5517
  %5521 = zext i32 %5520 to i64
  store i64 %5521, i64* %RCX, align 8, !tbaa !2428
  %5522 = icmp ult i32 %5520, %5517
  %5523 = icmp ult i32 %5520, %5519
  %5524 = or i1 %5522, %5523
  %5525 = zext i1 %5524 to i8
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5525, i8* %5526, align 1, !tbaa !2432
  %5527 = and i32 %5520, 255
  %5528 = call i32 @llvm.ctpop.i32(i32 %5527) #16
  %5529 = trunc i32 %5528 to i8
  %5530 = and i8 %5529, 1
  %5531 = xor i8 %5530, 1
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5531, i8* %5532, align 1, !tbaa !2446
  %5533 = xor i32 %5519, %5517
  %5534 = xor i32 %5533, %5520
  %5535 = lshr i32 %5534, 4
  %5536 = trunc i32 %5535 to i8
  %5537 = and i8 %5536, 1
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5537, i8* %5538, align 1, !tbaa !2447
  %5539 = icmp eq i32 %5520, 0
  %5540 = zext i1 %5539 to i8
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5540, i8* %5541, align 1, !tbaa !2448
  %5542 = lshr i32 %5520, 31
  %5543 = trunc i32 %5542 to i8
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5543, i8* %5544, align 1, !tbaa !2449
  %5545 = lshr i32 %5517, 31
  %5546 = lshr i32 %5519, 31
  %5547 = xor i32 %5542, %5545
  %5548 = xor i32 %5542, %5546
  %5549 = add nuw nsw i32 %5547, %5548
  %5550 = icmp eq i32 %5549, 2
  %5551 = zext i1 %5550 to i8
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5551, i8* %5552, align 1, !tbaa !2450
  %5553 = load i64, i64* %RCX
  %5554 = load i64, i64* %PC
  %5555 = add i64 %5554, 3
  store i64 %5555, i64* %PC
  %5556 = and i64 %5553, 4294967295
  %5557 = lshr i64 %5556, 18
  %5558 = trunc i64 %5557 to i8
  %5559 = and i8 %5558, 1
  %5560 = lshr i64 %5557, 1
  %5561 = trunc i64 %5560 to i32
  %5562 = and i32 %5561, 2147483647
  %5563 = zext i32 %5562 to i64
  store i64 %5563, i64* %RCX, align 8, !tbaa !2428
  %5564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5559, i8* %5564, align 1, !tbaa !2451
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5566 = and i32 %5561, 255
  %5567 = call i32 @llvm.ctpop.i32(i32 %5566) #16
  %5568 = trunc i32 %5567 to i8
  %5569 = and i8 %5568, 1
  %5570 = xor i8 %5569, 1
  store i8 %5570, i8* %5565, align 1, !tbaa !2451
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5571, align 1, !tbaa !2451
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5573 = icmp eq i32 %5562, 0
  %5574 = zext i1 %5573 to i8
  store i8 %5574, i8* %5572, align 1, !tbaa !2451
  %5575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5575, align 1, !tbaa !2451
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5576, align 1, !tbaa !2451
  %5577 = load i64, i64* %RAX
  %5578 = load i32, i32* %ECX
  %5579 = zext i32 %5578 to i64
  %5580 = load i64, i64* %PC
  %5581 = add i64 %5580, 2
  store i64 %5581, i64* %PC
  %5582 = or i64 %5579, %5577
  %5583 = trunc i64 %5582 to i32
  %5584 = and i64 %5582, 4294967295
  store i64 %5584, i64* %RAX, align 8, !tbaa !2428
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5585, align 1, !tbaa !2432
  %5586 = and i32 %5583, 255
  %5587 = call i32 @llvm.ctpop.i32(i32 %5586) #16
  %5588 = trunc i32 %5587 to i8
  %5589 = and i8 %5588, 1
  %5590 = xor i8 %5589, 1
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5590, i8* %5591, align 1, !tbaa !2446
  %5592 = icmp eq i32 %5583, 0
  %5593 = zext i1 %5592 to i8
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5593, i8* %5594, align 1, !tbaa !2448
  %5595 = lshr i32 %5583, 31
  %5596 = trunc i32 %5595 to i8
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5596, i8* %5597, align 1, !tbaa !2449
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5598, align 1, !tbaa !2450
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5599, align 1, !tbaa !2447
  %5600 = load i64, i64* %RAX
  %5601 = load i64, i64* %RBP
  %5602 = sub i64 %5601, 60
  %5603 = load i64, i64* %PC
  %5604 = add i64 %5603, 3
  store i64 %5604, i64* %PC
  %5605 = trunc i64 %5600 to i32
  %5606 = inttoptr i64 %5602 to i32*
  %5607 = load i32, i32* %5606
  %5608 = xor i32 %5607, %5605
  %5609 = zext i32 %5608 to i64
  store i64 %5609, i64* %RAX, align 8, !tbaa !2428
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5610, align 1, !tbaa !2432
  %5611 = and i32 %5608, 255
  %5612 = call i32 @llvm.ctpop.i32(i32 %5611) #16
  %5613 = trunc i32 %5612 to i8
  %5614 = and i8 %5613, 1
  %5615 = xor i8 %5614, 1
  %5616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5615, i8* %5616, align 1, !tbaa !2446
  %5617 = icmp eq i32 %5608, 0
  %5618 = zext i1 %5617 to i8
  %5619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5618, i8* %5619, align 1, !tbaa !2448
  %5620 = lshr i32 %5608, 31
  %5621 = trunc i32 %5620 to i8
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5621, i8* %5622, align 1, !tbaa !2449
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5623, align 1, !tbaa !2450
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5624, align 1, !tbaa !2447
  %5625 = load i64, i64* %RBP
  %5626 = sub i64 %5625, 60
  %5627 = load i32, i32* %EAX
  %5628 = zext i32 %5627 to i64
  %5629 = load i64, i64* %PC
  %5630 = add i64 %5629, 3
  store i64 %5630, i64* %PC
  %5631 = inttoptr i64 %5626 to i32*
  store i32 %5627, i32* %5631
  %5632 = load i64, i64* %RBP
  %5633 = sub i64 %5632, 60
  %5634 = load i64, i64* %PC
  %5635 = add i64 %5634, 3
  store i64 %5635, i64* %PC
  %5636 = inttoptr i64 %5633 to i32*
  %5637 = load i32, i32* %5636
  %5638 = zext i32 %5637 to i64
  store i64 %5638, i64* %RAX, align 8, !tbaa !2428
  %5639 = load i64, i64* %RAX
  %5640 = load i64, i64* %RBP
  %5641 = sub i64 %5640, 64
  %5642 = load i64, i64* %PC
  %5643 = add i64 %5642, 3
  store i64 %5643, i64* %PC
  %5644 = trunc i64 %5639 to i32
  %5645 = inttoptr i64 %5641 to i32*
  %5646 = load i32, i32* %5645
  %5647 = add i32 %5646, %5644
  %5648 = zext i32 %5647 to i64
  store i64 %5648, i64* %RAX, align 8, !tbaa !2428
  %5649 = icmp ult i32 %5647, %5644
  %5650 = icmp ult i32 %5647, %5646
  %5651 = or i1 %5649, %5650
  %5652 = zext i1 %5651 to i8
  %5653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5652, i8* %5653, align 1, !tbaa !2432
  %5654 = and i32 %5647, 255
  %5655 = call i32 @llvm.ctpop.i32(i32 %5654) #16
  %5656 = trunc i32 %5655 to i8
  %5657 = and i8 %5656, 1
  %5658 = xor i8 %5657, 1
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5658, i8* %5659, align 1, !tbaa !2446
  %5660 = xor i32 %5646, %5644
  %5661 = xor i32 %5660, %5647
  %5662 = lshr i32 %5661, 4
  %5663 = trunc i32 %5662 to i8
  %5664 = and i8 %5663, 1
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5664, i8* %5665, align 1, !tbaa !2447
  %5666 = icmp eq i32 %5647, 0
  %5667 = zext i1 %5666 to i8
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5667, i8* %5668, align 1, !tbaa !2448
  %5669 = lshr i32 %5647, 31
  %5670 = trunc i32 %5669 to i8
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5670, i8* %5671, align 1, !tbaa !2449
  %5672 = lshr i32 %5644, 31
  %5673 = lshr i32 %5646, 31
  %5674 = xor i32 %5669, %5672
  %5675 = xor i32 %5669, %5673
  %5676 = add nuw nsw i32 %5674, %5675
  %5677 = icmp eq i32 %5676, 2
  %5678 = zext i1 %5677 to i8
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5678, i8* %5679, align 1, !tbaa !2450
  %5680 = load i64, i64* %RAX
  %5681 = load i64, i64* %PC
  %5682 = add i64 %5681, 3
  store i64 %5682, i64* %PC
  %5683 = and i64 %5680, 4294967295
  %5684 = shl i64 %5683, 17
  %5685 = trunc i64 %5684 to i32
  %5686 = icmp slt i32 %5685, 0
  %5687 = shl i32 %5685, 1
  %5688 = zext i32 %5687 to i64
  store i64 %5688, i64* %RAX, align 8, !tbaa !2428
  %5689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5690 = zext i1 %5686 to i8
  store i8 %5690, i8* %5689, align 1, !tbaa !2451
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %5691, align 1, !tbaa !2451
  %5692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5692, align 1, !tbaa !2451
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5694 = icmp eq i32 %5687, 0
  %5695 = zext i1 %5694 to i8
  store i8 %5695, i8* %5693, align 1, !tbaa !2451
  %5696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5697 = lshr i32 %5687, 31
  %5698 = trunc i32 %5697 to i8
  store i8 %5698, i8* %5696, align 1, !tbaa !2451
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5699, align 1, !tbaa !2451
  %5700 = load i64, i64* %RBP
  %5701 = sub i64 %5700, 60
  %5702 = load i64, i64* %PC
  %5703 = add i64 %5702, 3
  store i64 %5703, i64* %PC
  %5704 = inttoptr i64 %5701 to i32*
  %5705 = load i32, i32* %5704
  %5706 = zext i32 %5705 to i64
  store i64 %5706, i64* %RCX, align 8, !tbaa !2428
  %5707 = load i64, i64* %RCX
  %5708 = load i64, i64* %RBP
  %5709 = sub i64 %5708, 64
  %5710 = load i64, i64* %PC
  %5711 = add i64 %5710, 3
  store i64 %5711, i64* %PC
  %5712 = trunc i64 %5707 to i32
  %5713 = inttoptr i64 %5709 to i32*
  %5714 = load i32, i32* %5713
  %5715 = add i32 %5714, %5712
  %5716 = zext i32 %5715 to i64
  store i64 %5716, i64* %RCX, align 8, !tbaa !2428
  %5717 = icmp ult i32 %5715, %5712
  %5718 = icmp ult i32 %5715, %5714
  %5719 = or i1 %5717, %5718
  %5720 = zext i1 %5719 to i8
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5720, i8* %5721, align 1, !tbaa !2432
  %5722 = and i32 %5715, 255
  %5723 = call i32 @llvm.ctpop.i32(i32 %5722) #16
  %5724 = trunc i32 %5723 to i8
  %5725 = and i8 %5724, 1
  %5726 = xor i8 %5725, 1
  %5727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5726, i8* %5727, align 1, !tbaa !2446
  %5728 = xor i32 %5714, %5712
  %5729 = xor i32 %5728, %5715
  %5730 = lshr i32 %5729, 4
  %5731 = trunc i32 %5730 to i8
  %5732 = and i8 %5731, 1
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5732, i8* %5733, align 1, !tbaa !2447
  %5734 = icmp eq i32 %5715, 0
  %5735 = zext i1 %5734 to i8
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5735, i8* %5736, align 1, !tbaa !2448
  %5737 = lshr i32 %5715, 31
  %5738 = trunc i32 %5737 to i8
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5738, i8* %5739, align 1, !tbaa !2449
  %5740 = lshr i32 %5712, 31
  %5741 = lshr i32 %5714, 31
  %5742 = xor i32 %5737, %5740
  %5743 = xor i32 %5737, %5741
  %5744 = add nuw nsw i32 %5742, %5743
  %5745 = icmp eq i32 %5744, 2
  %5746 = zext i1 %5745 to i8
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5746, i8* %5747, align 1, !tbaa !2450
  %5748 = load i64, i64* %RCX
  %5749 = load i64, i64* %PC
  %5750 = add i64 %5749, 3
  store i64 %5750, i64* %PC
  %5751 = and i64 %5748, 4294967295
  %5752 = lshr i64 %5751, 13
  %5753 = trunc i64 %5752 to i8
  %5754 = and i8 %5753, 1
  %5755 = lshr i64 %5752, 1
  %5756 = trunc i64 %5755 to i32
  %5757 = and i32 %5756, 2147483647
  %5758 = zext i32 %5757 to i64
  store i64 %5758, i64* %RCX, align 8, !tbaa !2428
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5754, i8* %5759, align 1, !tbaa !2451
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5761 = and i32 %5756, 255
  %5762 = call i32 @llvm.ctpop.i32(i32 %5761) #16
  %5763 = trunc i32 %5762 to i8
  %5764 = and i8 %5763, 1
  %5765 = xor i8 %5764, 1
  store i8 %5765, i8* %5760, align 1, !tbaa !2451
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5766, align 1, !tbaa !2451
  %5767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5768 = icmp eq i32 %5757, 0
  %5769 = zext i1 %5768 to i8
  store i8 %5769, i8* %5767, align 1, !tbaa !2451
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5770, align 1, !tbaa !2451
  %5771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5771, align 1, !tbaa !2451
  %5772 = load i64, i64* %RAX
  %5773 = load i32, i32* %ECX
  %5774 = zext i32 %5773 to i64
  %5775 = load i64, i64* %PC
  %5776 = add i64 %5775, 2
  store i64 %5776, i64* %PC
  %5777 = or i64 %5774, %5772
  %5778 = trunc i64 %5777 to i32
  %5779 = and i64 %5777, 4294967295
  store i64 %5779, i64* %RAX, align 8, !tbaa !2428
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5780, align 1, !tbaa !2432
  %5781 = and i32 %5778, 255
  %5782 = call i32 @llvm.ctpop.i32(i32 %5781) #16
  %5783 = trunc i32 %5782 to i8
  %5784 = and i8 %5783, 1
  %5785 = xor i8 %5784, 1
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5785, i8* %5786, align 1, !tbaa !2446
  %5787 = icmp eq i32 %5778, 0
  %5788 = zext i1 %5787 to i8
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5788, i8* %5789, align 1, !tbaa !2448
  %5790 = lshr i32 %5778, 31
  %5791 = trunc i32 %5790 to i8
  %5792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5791, i8* %5792, align 1, !tbaa !2449
  %5793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5793, align 1, !tbaa !2450
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5794, align 1, !tbaa !2447
  %5795 = load i64, i64* %RAX
  %5796 = load i64, i64* %RBP
  %5797 = sub i64 %5796, 56
  %5798 = load i64, i64* %PC
  %5799 = add i64 %5798, 3
  store i64 %5799, i64* %PC
  %5800 = trunc i64 %5795 to i32
  %5801 = inttoptr i64 %5797 to i32*
  %5802 = load i32, i32* %5801
  %5803 = xor i32 %5802, %5800
  %5804 = zext i32 %5803 to i64
  store i64 %5804, i64* %RAX, align 8, !tbaa !2428
  %5805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5805, align 1, !tbaa !2432
  %5806 = and i32 %5803, 255
  %5807 = call i32 @llvm.ctpop.i32(i32 %5806) #16
  %5808 = trunc i32 %5807 to i8
  %5809 = and i8 %5808, 1
  %5810 = xor i8 %5809, 1
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5810, i8* %5811, align 1, !tbaa !2446
  %5812 = icmp eq i32 %5803, 0
  %5813 = zext i1 %5812 to i8
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5813, i8* %5814, align 1, !tbaa !2448
  %5815 = lshr i32 %5803, 31
  %5816 = trunc i32 %5815 to i8
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5816, i8* %5817, align 1, !tbaa !2449
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5818, align 1, !tbaa !2450
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5819, align 1, !tbaa !2447
  %5820 = load i64, i64* %RBP
  %5821 = sub i64 %5820, 56
  %5822 = load i32, i32* %EAX
  %5823 = zext i32 %5822 to i64
  %5824 = load i64, i64* %PC
  %5825 = add i64 %5824, 3
  store i64 %5825, i64* %PC
  %5826 = inttoptr i64 %5821 to i32*
  store i32 %5822, i32* %5826
  %5827 = load i64, i64* %RBP
  %5828 = sub i64 %5827, 36
  %5829 = load i64, i64* %PC
  %5830 = add i64 %5829, 3
  store i64 %5830, i64* %PC
  %5831 = inttoptr i64 %5828 to i32*
  %5832 = load i32, i32* %5831
  %5833 = zext i32 %5832 to i64
  store i64 %5833, i64* %RAX, align 8, !tbaa !2428
  %5834 = load i64, i64* %RAX
  %5835 = load i64, i64* %RBP
  %5836 = sub i64 %5835, 40
  %5837 = load i64, i64* %PC
  %5838 = add i64 %5837, 3
  store i64 %5838, i64* %PC
  %5839 = trunc i64 %5834 to i32
  %5840 = inttoptr i64 %5836 to i32*
  %5841 = load i32, i32* %5840
  %5842 = add i32 %5841, %5839
  %5843 = zext i32 %5842 to i64
  store i64 %5843, i64* %RAX, align 8, !tbaa !2428
  %5844 = icmp ult i32 %5842, %5839
  %5845 = icmp ult i32 %5842, %5841
  %5846 = or i1 %5844, %5845
  %5847 = zext i1 %5846 to i8
  %5848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5847, i8* %5848, align 1, !tbaa !2432
  %5849 = and i32 %5842, 255
  %5850 = call i32 @llvm.ctpop.i32(i32 %5849) #16
  %5851 = trunc i32 %5850 to i8
  %5852 = and i8 %5851, 1
  %5853 = xor i8 %5852, 1
  %5854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5853, i8* %5854, align 1, !tbaa !2446
  %5855 = xor i32 %5841, %5839
  %5856 = xor i32 %5855, %5842
  %5857 = lshr i32 %5856, 4
  %5858 = trunc i32 %5857 to i8
  %5859 = and i8 %5858, 1
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5859, i8* %5860, align 1, !tbaa !2447
  %5861 = icmp eq i32 %5842, 0
  %5862 = zext i1 %5861 to i8
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5862, i8* %5863, align 1, !tbaa !2448
  %5864 = lshr i32 %5842, 31
  %5865 = trunc i32 %5864 to i8
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5865, i8* %5866, align 1, !tbaa !2449
  %5867 = lshr i32 %5839, 31
  %5868 = lshr i32 %5841, 31
  %5869 = xor i32 %5864, %5867
  %5870 = xor i32 %5864, %5868
  %5871 = add nuw nsw i32 %5869, %5870
  %5872 = icmp eq i32 %5871, 2
  %5873 = zext i1 %5872 to i8
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5873, i8* %5874, align 1, !tbaa !2450
  %5875 = load i64, i64* %RAX
  %5876 = load i64, i64* %PC
  %5877 = add i64 %5876, 3
  store i64 %5877, i64* %PC
  %5878 = and i64 %5875, 4294967295
  %5879 = shl i64 %5878, 6
  %5880 = trunc i64 %5879 to i32
  %5881 = icmp slt i32 %5880, 0
  %5882 = shl i32 %5880, 1
  %5883 = zext i32 %5882 to i64
  store i64 %5883, i64* %RAX, align 8, !tbaa !2428
  %5884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5885 = zext i1 %5881 to i8
  store i8 %5885, i8* %5884, align 1, !tbaa !2451
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5887 = and i32 %5882, 254
  %5888 = call i32 @llvm.ctpop.i32(i32 %5887) #16
  %5889 = trunc i32 %5888 to i8
  %5890 = and i8 %5889, 1
  %5891 = xor i8 %5890, 1
  store i8 %5891, i8* %5886, align 1, !tbaa !2451
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5892, align 1, !tbaa !2451
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5894 = icmp eq i32 %5882, 0
  %5895 = zext i1 %5894 to i8
  store i8 %5895, i8* %5893, align 1, !tbaa !2451
  %5896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5897 = lshr i32 %5882, 31
  %5898 = trunc i32 %5897 to i8
  store i8 %5898, i8* %5896, align 1, !tbaa !2451
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5899, align 1, !tbaa !2451
  %5900 = load i64, i64* %RBP
  %5901 = sub i64 %5900, 36
  %5902 = load i64, i64* %PC
  %5903 = add i64 %5902, 3
  store i64 %5903, i64* %PC
  %5904 = inttoptr i64 %5901 to i32*
  %5905 = load i32, i32* %5904
  %5906 = zext i32 %5905 to i64
  store i64 %5906, i64* %RCX, align 8, !tbaa !2428
  %5907 = load i64, i64* %RCX
  %5908 = load i64, i64* %RBP
  %5909 = sub i64 %5908, 40
  %5910 = load i64, i64* %PC
  %5911 = add i64 %5910, 3
  store i64 %5911, i64* %PC
  %5912 = trunc i64 %5907 to i32
  %5913 = inttoptr i64 %5909 to i32*
  %5914 = load i32, i32* %5913
  %5915 = add i32 %5914, %5912
  %5916 = zext i32 %5915 to i64
  store i64 %5916, i64* %RCX, align 8, !tbaa !2428
  %5917 = icmp ult i32 %5915, %5912
  %5918 = icmp ult i32 %5915, %5914
  %5919 = or i1 %5917, %5918
  %5920 = zext i1 %5919 to i8
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5920, i8* %5921, align 1, !tbaa !2432
  %5922 = and i32 %5915, 255
  %5923 = call i32 @llvm.ctpop.i32(i32 %5922) #16
  %5924 = trunc i32 %5923 to i8
  %5925 = and i8 %5924, 1
  %5926 = xor i8 %5925, 1
  %5927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5926, i8* %5927, align 1, !tbaa !2446
  %5928 = xor i32 %5914, %5912
  %5929 = xor i32 %5928, %5915
  %5930 = lshr i32 %5929, 4
  %5931 = trunc i32 %5930 to i8
  %5932 = and i8 %5931, 1
  %5933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5932, i8* %5933, align 1, !tbaa !2447
  %5934 = icmp eq i32 %5915, 0
  %5935 = zext i1 %5934 to i8
  %5936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5935, i8* %5936, align 1, !tbaa !2448
  %5937 = lshr i32 %5915, 31
  %5938 = trunc i32 %5937 to i8
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5938, i8* %5939, align 1, !tbaa !2449
  %5940 = lshr i32 %5912, 31
  %5941 = lshr i32 %5914, 31
  %5942 = xor i32 %5937, %5940
  %5943 = xor i32 %5937, %5941
  %5944 = add nuw nsw i32 %5942, %5943
  %5945 = icmp eq i32 %5944, 2
  %5946 = zext i1 %5945 to i8
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5946, i8* %5947, align 1, !tbaa !2450
  %5948 = load i64, i64* %RCX
  %5949 = load i64, i64* %PC
  %5950 = add i64 %5949, 3
  store i64 %5950, i64* %PC
  %5951 = and i64 %5948, 4294967295
  %5952 = lshr i64 %5951, 24
  %5953 = trunc i64 %5952 to i8
  %5954 = and i8 %5953, 1
  %5955 = lshr i64 %5952, 1
  %5956 = trunc i64 %5955 to i32
  %5957 = and i32 %5956, 2147483647
  %5958 = zext i32 %5957 to i64
  store i64 %5958, i64* %RCX, align 8, !tbaa !2428
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5954, i8* %5959, align 1, !tbaa !2451
  %5960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5961 = and i32 %5956, 255
  %5962 = call i32 @llvm.ctpop.i32(i32 %5961) #16
  %5963 = trunc i32 %5962 to i8
  %5964 = and i8 %5963, 1
  %5965 = xor i8 %5964, 1
  store i8 %5965, i8* %5960, align 1, !tbaa !2451
  %5966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5966, align 1, !tbaa !2451
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5968 = icmp eq i32 %5957, 0
  %5969 = zext i1 %5968 to i8
  store i8 %5969, i8* %5967, align 1, !tbaa !2451
  %5970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5970, align 1, !tbaa !2451
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5971, align 1, !tbaa !2451
  %5972 = load i64, i64* %RAX
  %5973 = load i32, i32* %ECX
  %5974 = zext i32 %5973 to i64
  %5975 = load i64, i64* %PC
  %5976 = add i64 %5975, 2
  store i64 %5976, i64* %PC
  %5977 = or i64 %5974, %5972
  %5978 = trunc i64 %5977 to i32
  %5979 = and i64 %5977, 4294967295
  store i64 %5979, i64* %RAX, align 8, !tbaa !2428
  %5980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5980, align 1, !tbaa !2432
  %5981 = and i32 %5978, 255
  %5982 = call i32 @llvm.ctpop.i32(i32 %5981) #16
  %5983 = trunc i32 %5982 to i8
  %5984 = and i8 %5983, 1
  %5985 = xor i8 %5984, 1
  %5986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5985, i8* %5986, align 1, !tbaa !2446
  %5987 = icmp eq i32 %5978, 0
  %5988 = zext i1 %5987 to i8
  %5989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5988, i8* %5989, align 1, !tbaa !2448
  %5990 = lshr i32 %5978, 31
  %5991 = trunc i32 %5990 to i8
  %5992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5991, i8* %5992, align 1, !tbaa !2449
  %5993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5993, align 1, !tbaa !2450
  %5994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5994, align 1, !tbaa !2447
  %5995 = load i64, i64* %RAX
  %5996 = load i64, i64* %RBP
  %5997 = sub i64 %5996, 48
  %5998 = load i64, i64* %PC
  %5999 = add i64 %5998, 3
  store i64 %5999, i64* %PC
  %6000 = trunc i64 %5995 to i32
  %6001 = inttoptr i64 %5997 to i32*
  %6002 = load i32, i32* %6001
  %6003 = xor i32 %6002, %6000
  %6004 = zext i32 %6003 to i64
  store i64 %6004, i64* %RAX, align 8, !tbaa !2428
  %6005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6005, align 1, !tbaa !2432
  %6006 = and i32 %6003, 255
  %6007 = call i32 @llvm.ctpop.i32(i32 %6006) #16
  %6008 = trunc i32 %6007 to i8
  %6009 = and i8 %6008, 1
  %6010 = xor i8 %6009, 1
  %6011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6010, i8* %6011, align 1, !tbaa !2446
  %6012 = icmp eq i32 %6003, 0
  %6013 = zext i1 %6012 to i8
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6013, i8* %6014, align 1, !tbaa !2448
  %6015 = lshr i32 %6003, 31
  %6016 = trunc i32 %6015 to i8
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6016, i8* %6017, align 1, !tbaa !2449
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6018, align 1, !tbaa !2450
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6019, align 1, !tbaa !2447
  %6020 = load i64, i64* %RBP
  %6021 = sub i64 %6020, 48
  %6022 = load i32, i32* %EAX
  %6023 = zext i32 %6022 to i64
  %6024 = load i64, i64* %PC
  %6025 = add i64 %6024, 3
  store i64 %6025, i64* %PC
  %6026 = inttoptr i64 %6021 to i32*
  store i32 %6022, i32* %6026
  %6027 = load i64, i64* %RBP
  %6028 = sub i64 %6027, 48
  %6029 = load i64, i64* %PC
  %6030 = add i64 %6029, 3
  store i64 %6030, i64* %PC
  %6031 = inttoptr i64 %6028 to i32*
  %6032 = load i32, i32* %6031
  %6033 = zext i32 %6032 to i64
  store i64 %6033, i64* %RAX, align 8, !tbaa !2428
  %6034 = load i64, i64* %RAX
  %6035 = load i64, i64* %RBP
  %6036 = sub i64 %6035, 36
  %6037 = load i64, i64* %PC
  %6038 = add i64 %6037, 3
  store i64 %6038, i64* %PC
  %6039 = trunc i64 %6034 to i32
  %6040 = inttoptr i64 %6036 to i32*
  %6041 = load i32, i32* %6040
  %6042 = add i32 %6041, %6039
  %6043 = zext i32 %6042 to i64
  store i64 %6043, i64* %RAX, align 8, !tbaa !2428
  %6044 = icmp ult i32 %6042, %6039
  %6045 = icmp ult i32 %6042, %6041
  %6046 = or i1 %6044, %6045
  %6047 = zext i1 %6046 to i8
  %6048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6047, i8* %6048, align 1, !tbaa !2432
  %6049 = and i32 %6042, 255
  %6050 = call i32 @llvm.ctpop.i32(i32 %6049) #16
  %6051 = trunc i32 %6050 to i8
  %6052 = and i8 %6051, 1
  %6053 = xor i8 %6052, 1
  %6054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6053, i8* %6054, align 1, !tbaa !2446
  %6055 = xor i32 %6041, %6039
  %6056 = xor i32 %6055, %6042
  %6057 = lshr i32 %6056, 4
  %6058 = trunc i32 %6057 to i8
  %6059 = and i8 %6058, 1
  %6060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6059, i8* %6060, align 1, !tbaa !2447
  %6061 = icmp eq i32 %6042, 0
  %6062 = zext i1 %6061 to i8
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6062, i8* %6063, align 1, !tbaa !2448
  %6064 = lshr i32 %6042, 31
  %6065 = trunc i32 %6064 to i8
  %6066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6065, i8* %6066, align 1, !tbaa !2449
  %6067 = lshr i32 %6039, 31
  %6068 = lshr i32 %6041, 31
  %6069 = xor i32 %6064, %6067
  %6070 = xor i32 %6064, %6068
  %6071 = add nuw nsw i32 %6069, %6070
  %6072 = icmp eq i32 %6071, 2
  %6073 = zext i1 %6072 to i8
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6073, i8* %6074, align 1, !tbaa !2450
  %6075 = load i64, i64* %RAX
  %6076 = load i64, i64* %PC
  %6077 = add i64 %6076, 3
  store i64 %6077, i64* %PC
  %6078 = and i64 %6075, 4294967295
  %6079 = shl i64 %6078, 8
  %6080 = trunc i64 %6079 to i32
  %6081 = icmp slt i32 %6080, 0
  %6082 = shl i32 %6080, 1
  %6083 = zext i32 %6082 to i64
  store i64 %6083, i64* %RAX, align 8, !tbaa !2428
  %6084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6085 = zext i1 %6081 to i8
  store i8 %6085, i8* %6084, align 1, !tbaa !2451
  %6086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6086, align 1, !tbaa !2451
  %6087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6087, align 1, !tbaa !2451
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6089 = icmp eq i32 %6082, 0
  %6090 = zext i1 %6089 to i8
  store i8 %6090, i8* %6088, align 1, !tbaa !2451
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6092 = lshr i32 %6082, 31
  %6093 = trunc i32 %6092 to i8
  store i8 %6093, i8* %6091, align 1, !tbaa !2451
  %6094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6094, align 1, !tbaa !2451
  %6095 = load i64, i64* %RBP
  %6096 = sub i64 %6095, 48
  %6097 = load i64, i64* %PC
  %6098 = add i64 %6097, 3
  store i64 %6098, i64* %PC
  %6099 = inttoptr i64 %6096 to i32*
  %6100 = load i32, i32* %6099
  %6101 = zext i32 %6100 to i64
  store i64 %6101, i64* %RCX, align 8, !tbaa !2428
  %6102 = load i64, i64* %RCX
  %6103 = load i64, i64* %RBP
  %6104 = sub i64 %6103, 36
  %6105 = load i64, i64* %PC
  %6106 = add i64 %6105, 3
  store i64 %6106, i64* %PC
  %6107 = trunc i64 %6102 to i32
  %6108 = inttoptr i64 %6104 to i32*
  %6109 = load i32, i32* %6108
  %6110 = add i32 %6109, %6107
  %6111 = zext i32 %6110 to i64
  store i64 %6111, i64* %RCX, align 8, !tbaa !2428
  %6112 = icmp ult i32 %6110, %6107
  %6113 = icmp ult i32 %6110, %6109
  %6114 = or i1 %6112, %6113
  %6115 = zext i1 %6114 to i8
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6115, i8* %6116, align 1, !tbaa !2432
  %6117 = and i32 %6110, 255
  %6118 = call i32 @llvm.ctpop.i32(i32 %6117) #16
  %6119 = trunc i32 %6118 to i8
  %6120 = and i8 %6119, 1
  %6121 = xor i8 %6120, 1
  %6122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6121, i8* %6122, align 1, !tbaa !2446
  %6123 = xor i32 %6109, %6107
  %6124 = xor i32 %6123, %6110
  %6125 = lshr i32 %6124, 4
  %6126 = trunc i32 %6125 to i8
  %6127 = and i8 %6126, 1
  %6128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6127, i8* %6128, align 1, !tbaa !2447
  %6129 = icmp eq i32 %6110, 0
  %6130 = zext i1 %6129 to i8
  %6131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6130, i8* %6131, align 1, !tbaa !2448
  %6132 = lshr i32 %6110, 31
  %6133 = trunc i32 %6132 to i8
  %6134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6133, i8* %6134, align 1, !tbaa !2449
  %6135 = lshr i32 %6107, 31
  %6136 = lshr i32 %6109, 31
  %6137 = xor i32 %6132, %6135
  %6138 = xor i32 %6132, %6136
  %6139 = add nuw nsw i32 %6137, %6138
  %6140 = icmp eq i32 %6139, 2
  %6141 = zext i1 %6140 to i8
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6141, i8* %6142, align 1, !tbaa !2450
  %6143 = load i64, i64* %RCX
  %6144 = load i64, i64* %PC
  %6145 = add i64 %6144, 3
  store i64 %6145, i64* %PC
  %6146 = and i64 %6143, 4294967295
  %6147 = lshr i64 %6146, 22
  %6148 = trunc i64 %6147 to i8
  %6149 = and i8 %6148, 1
  %6150 = lshr i64 %6147, 1
  %6151 = trunc i64 %6150 to i32
  %6152 = and i32 %6151, 2147483647
  %6153 = zext i32 %6152 to i64
  store i64 %6153, i64* %RCX, align 8, !tbaa !2428
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6149, i8* %6154, align 1, !tbaa !2451
  %6155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6156 = and i32 %6151, 255
  %6157 = call i32 @llvm.ctpop.i32(i32 %6156) #16
  %6158 = trunc i32 %6157 to i8
  %6159 = and i8 %6158, 1
  %6160 = xor i8 %6159, 1
  store i8 %6160, i8* %6155, align 1, !tbaa !2451
  %6161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6161, align 1, !tbaa !2451
  %6162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6163 = icmp eq i32 %6152, 0
  %6164 = zext i1 %6163 to i8
  store i8 %6164, i8* %6162, align 1, !tbaa !2451
  %6165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6165, align 1, !tbaa !2451
  %6166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6166, align 1, !tbaa !2451
  %6167 = load i64, i64* %RAX
  %6168 = load i32, i32* %ECX
  %6169 = zext i32 %6168 to i64
  %6170 = load i64, i64* %PC
  %6171 = add i64 %6170, 2
  store i64 %6171, i64* %PC
  %6172 = or i64 %6169, %6167
  %6173 = trunc i64 %6172 to i32
  %6174 = and i64 %6172, 4294967295
  store i64 %6174, i64* %RAX, align 8, !tbaa !2428
  %6175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6175, align 1, !tbaa !2432
  %6176 = and i32 %6173, 255
  %6177 = call i32 @llvm.ctpop.i32(i32 %6176) #16
  %6178 = trunc i32 %6177 to i8
  %6179 = and i8 %6178, 1
  %6180 = xor i8 %6179, 1
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6180, i8* %6181, align 1, !tbaa !2446
  %6182 = icmp eq i32 %6173, 0
  %6183 = zext i1 %6182 to i8
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6183, i8* %6184, align 1, !tbaa !2448
  %6185 = lshr i32 %6173, 31
  %6186 = trunc i32 %6185 to i8
  %6187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6186, i8* %6187, align 1, !tbaa !2449
  %6188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6188, align 1, !tbaa !2450
  %6189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6189, align 1, !tbaa !2447
  %6190 = load i64, i64* %RAX
  %6191 = load i64, i64* %RBP
  %6192 = sub i64 %6191, 44
  %6193 = load i64, i64* %PC
  %6194 = add i64 %6193, 3
  store i64 %6194, i64* %PC
  %6195 = trunc i64 %6190 to i32
  %6196 = inttoptr i64 %6192 to i32*
  %6197 = load i32, i32* %6196
  %6198 = xor i32 %6197, %6195
  %6199 = zext i32 %6198 to i64
  store i64 %6199, i64* %RAX, align 8, !tbaa !2428
  %6200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6200, align 1, !tbaa !2432
  %6201 = and i32 %6198, 255
  %6202 = call i32 @llvm.ctpop.i32(i32 %6201) #16
  %6203 = trunc i32 %6202 to i8
  %6204 = and i8 %6203, 1
  %6205 = xor i8 %6204, 1
  %6206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6205, i8* %6206, align 1, !tbaa !2446
  %6207 = icmp eq i32 %6198, 0
  %6208 = zext i1 %6207 to i8
  %6209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6208, i8* %6209, align 1, !tbaa !2448
  %6210 = lshr i32 %6198, 31
  %6211 = trunc i32 %6210 to i8
  %6212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6211, i8* %6212, align 1, !tbaa !2449
  %6213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6213, align 1, !tbaa !2450
  %6214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6214, align 1, !tbaa !2447
  %6215 = load i64, i64* %RBP
  %6216 = sub i64 %6215, 44
  %6217 = load i32, i32* %EAX
  %6218 = zext i32 %6217 to i64
  %6219 = load i64, i64* %PC
  %6220 = add i64 %6219, 3
  store i64 %6220, i64* %PC
  %6221 = inttoptr i64 %6216 to i32*
  store i32 %6217, i32* %6221
  %6222 = load i64, i64* %RBP
  %6223 = sub i64 %6222, 44
  %6224 = load i64, i64* %PC
  %6225 = add i64 %6224, 3
  store i64 %6225, i64* %PC
  %6226 = inttoptr i64 %6223 to i32*
  %6227 = load i32, i32* %6226
  %6228 = zext i32 %6227 to i64
  store i64 %6228, i64* %RAX, align 8, !tbaa !2428
  %6229 = load i64, i64* %RAX
  %6230 = load i64, i64* %RBP
  %6231 = sub i64 %6230, 48
  %6232 = load i64, i64* %PC
  %6233 = add i64 %6232, 3
  store i64 %6233, i64* %PC
  %6234 = trunc i64 %6229 to i32
  %6235 = inttoptr i64 %6231 to i32*
  %6236 = load i32, i32* %6235
  %6237 = add i32 %6236, %6234
  %6238 = zext i32 %6237 to i64
  store i64 %6238, i64* %RAX, align 8, !tbaa !2428
  %6239 = icmp ult i32 %6237, %6234
  %6240 = icmp ult i32 %6237, %6236
  %6241 = or i1 %6239, %6240
  %6242 = zext i1 %6241 to i8
  %6243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6242, i8* %6243, align 1, !tbaa !2432
  %6244 = and i32 %6237, 255
  %6245 = call i32 @llvm.ctpop.i32(i32 %6244) #16
  %6246 = trunc i32 %6245 to i8
  %6247 = and i8 %6246, 1
  %6248 = xor i8 %6247, 1
  %6249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6248, i8* %6249, align 1, !tbaa !2446
  %6250 = xor i32 %6236, %6234
  %6251 = xor i32 %6250, %6237
  %6252 = lshr i32 %6251, 4
  %6253 = trunc i32 %6252 to i8
  %6254 = and i8 %6253, 1
  %6255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6254, i8* %6255, align 1, !tbaa !2447
  %6256 = icmp eq i32 %6237, 0
  %6257 = zext i1 %6256 to i8
  %6258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6257, i8* %6258, align 1, !tbaa !2448
  %6259 = lshr i32 %6237, 31
  %6260 = trunc i32 %6259 to i8
  %6261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6260, i8* %6261, align 1, !tbaa !2449
  %6262 = lshr i32 %6234, 31
  %6263 = lshr i32 %6236, 31
  %6264 = xor i32 %6259, %6262
  %6265 = xor i32 %6259, %6263
  %6266 = add nuw nsw i32 %6264, %6265
  %6267 = icmp eq i32 %6266, 2
  %6268 = zext i1 %6267 to i8
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6268, i8* %6269, align 1, !tbaa !2450
  %6270 = load i64, i64* %RAX
  %6271 = load i64, i64* %PC
  %6272 = add i64 %6271, 3
  store i64 %6272, i64* %PC
  %6273 = and i64 %6270, 4294967295
  %6274 = shl i64 %6273, 12
  %6275 = trunc i64 %6274 to i32
  %6276 = icmp slt i32 %6275, 0
  %6277 = shl i32 %6275, 1
  %6278 = zext i32 %6277 to i64
  store i64 %6278, i64* %RAX, align 8, !tbaa !2428
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6280 = zext i1 %6276 to i8
  store i8 %6280, i8* %6279, align 1, !tbaa !2451
  %6281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6281, align 1, !tbaa !2451
  %6282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6282, align 1, !tbaa !2451
  %6283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6284 = icmp eq i32 %6277, 0
  %6285 = zext i1 %6284 to i8
  store i8 %6285, i8* %6283, align 1, !tbaa !2451
  %6286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6287 = lshr i32 %6277, 31
  %6288 = trunc i32 %6287 to i8
  store i8 %6288, i8* %6286, align 1, !tbaa !2451
  %6289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6289, align 1, !tbaa !2451
  %6290 = load i64, i64* %RBP
  %6291 = sub i64 %6290, 44
  %6292 = load i64, i64* %PC
  %6293 = add i64 %6292, 3
  store i64 %6293, i64* %PC
  %6294 = inttoptr i64 %6291 to i32*
  %6295 = load i32, i32* %6294
  %6296 = zext i32 %6295 to i64
  store i64 %6296, i64* %RCX, align 8, !tbaa !2428
  %6297 = load i64, i64* %RCX
  %6298 = load i64, i64* %RBP
  %6299 = sub i64 %6298, 48
  %6300 = load i64, i64* %PC
  %6301 = add i64 %6300, 3
  store i64 %6301, i64* %PC
  %6302 = trunc i64 %6297 to i32
  %6303 = inttoptr i64 %6299 to i32*
  %6304 = load i32, i32* %6303
  %6305 = add i32 %6304, %6302
  %6306 = zext i32 %6305 to i64
  store i64 %6306, i64* %RCX, align 8, !tbaa !2428
  %6307 = icmp ult i32 %6305, %6302
  %6308 = icmp ult i32 %6305, %6304
  %6309 = or i1 %6307, %6308
  %6310 = zext i1 %6309 to i8
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6310, i8* %6311, align 1, !tbaa !2432
  %6312 = and i32 %6305, 255
  %6313 = call i32 @llvm.ctpop.i32(i32 %6312) #16
  %6314 = trunc i32 %6313 to i8
  %6315 = and i8 %6314, 1
  %6316 = xor i8 %6315, 1
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6316, i8* %6317, align 1, !tbaa !2446
  %6318 = xor i32 %6304, %6302
  %6319 = xor i32 %6318, %6305
  %6320 = lshr i32 %6319, 4
  %6321 = trunc i32 %6320 to i8
  %6322 = and i8 %6321, 1
  %6323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6322, i8* %6323, align 1, !tbaa !2447
  %6324 = icmp eq i32 %6305, 0
  %6325 = zext i1 %6324 to i8
  %6326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6325, i8* %6326, align 1, !tbaa !2448
  %6327 = lshr i32 %6305, 31
  %6328 = trunc i32 %6327 to i8
  %6329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6328, i8* %6329, align 1, !tbaa !2449
  %6330 = lshr i32 %6302, 31
  %6331 = lshr i32 %6304, 31
  %6332 = xor i32 %6327, %6330
  %6333 = xor i32 %6327, %6331
  %6334 = add nuw nsw i32 %6332, %6333
  %6335 = icmp eq i32 %6334, 2
  %6336 = zext i1 %6335 to i8
  %6337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6336, i8* %6337, align 1, !tbaa !2450
  %6338 = load i64, i64* %RCX
  %6339 = load i64, i64* %PC
  %6340 = add i64 %6339, 3
  store i64 %6340, i64* %PC
  %6341 = and i64 %6338, 4294967295
  %6342 = lshr i64 %6341, 18
  %6343 = trunc i64 %6342 to i8
  %6344 = and i8 %6343, 1
  %6345 = lshr i64 %6342, 1
  %6346 = trunc i64 %6345 to i32
  %6347 = and i32 %6346, 2147483647
  %6348 = zext i32 %6347 to i64
  store i64 %6348, i64* %RCX, align 8, !tbaa !2428
  %6349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6344, i8* %6349, align 1, !tbaa !2451
  %6350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6351 = and i32 %6346, 255
  %6352 = call i32 @llvm.ctpop.i32(i32 %6351) #16
  %6353 = trunc i32 %6352 to i8
  %6354 = and i8 %6353, 1
  %6355 = xor i8 %6354, 1
  store i8 %6355, i8* %6350, align 1, !tbaa !2451
  %6356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6356, align 1, !tbaa !2451
  %6357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6358 = icmp eq i32 %6347, 0
  %6359 = zext i1 %6358 to i8
  store i8 %6359, i8* %6357, align 1, !tbaa !2451
  %6360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6360, align 1, !tbaa !2451
  %6361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6361, align 1, !tbaa !2451
  %6362 = load i64, i64* %RAX
  %6363 = load i32, i32* %ECX
  %6364 = zext i32 %6363 to i64
  %6365 = load i64, i64* %PC
  %6366 = add i64 %6365, 2
  store i64 %6366, i64* %PC
  %6367 = or i64 %6364, %6362
  %6368 = trunc i64 %6367 to i32
  %6369 = and i64 %6367, 4294967295
  store i64 %6369, i64* %RAX, align 8, !tbaa !2428
  %6370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6370, align 1, !tbaa !2432
  %6371 = and i32 %6368, 255
  %6372 = call i32 @llvm.ctpop.i32(i32 %6371) #16
  %6373 = trunc i32 %6372 to i8
  %6374 = and i8 %6373, 1
  %6375 = xor i8 %6374, 1
  %6376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6375, i8* %6376, align 1, !tbaa !2446
  %6377 = icmp eq i32 %6368, 0
  %6378 = zext i1 %6377 to i8
  %6379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6378, i8* %6379, align 1, !tbaa !2448
  %6380 = lshr i32 %6368, 31
  %6381 = trunc i32 %6380 to i8
  %6382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6381, i8* %6382, align 1, !tbaa !2449
  %6383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6383, align 1, !tbaa !2450
  %6384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6384, align 1, !tbaa !2447
  %6385 = load i64, i64* %RAX
  %6386 = load i64, i64* %RBP
  %6387 = sub i64 %6386, 40
  %6388 = load i64, i64* %PC
  %6389 = add i64 %6388, 3
  store i64 %6389, i64* %PC
  %6390 = trunc i64 %6385 to i32
  %6391 = inttoptr i64 %6387 to i32*
  %6392 = load i32, i32* %6391
  %6393 = xor i32 %6392, %6390
  %6394 = zext i32 %6393 to i64
  store i64 %6394, i64* %RAX, align 8, !tbaa !2428
  %6395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6395, align 1, !tbaa !2432
  %6396 = and i32 %6393, 255
  %6397 = call i32 @llvm.ctpop.i32(i32 %6396) #16
  %6398 = trunc i32 %6397 to i8
  %6399 = and i8 %6398, 1
  %6400 = xor i8 %6399, 1
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6400, i8* %6401, align 1, !tbaa !2446
  %6402 = icmp eq i32 %6393, 0
  %6403 = zext i1 %6402 to i8
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6403, i8* %6404, align 1, !tbaa !2448
  %6405 = lshr i32 %6393, 31
  %6406 = trunc i32 %6405 to i8
  %6407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6406, i8* %6407, align 1, !tbaa !2449
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6408, align 1, !tbaa !2450
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6409, align 1, !tbaa !2447
  %6410 = load i64, i64* %RBP
  %6411 = sub i64 %6410, 40
  %6412 = load i32, i32* %EAX
  %6413 = zext i32 %6412 to i64
  %6414 = load i64, i64* %PC
  %6415 = add i64 %6414, 3
  store i64 %6415, i64* %PC
  %6416 = inttoptr i64 %6411 to i32*
  store i32 %6412, i32* %6416
  %6417 = load i64, i64* %RBP
  %6418 = sub i64 %6417, 40
  %6419 = load i64, i64* %PC
  %6420 = add i64 %6419, 3
  store i64 %6420, i64* %PC
  %6421 = inttoptr i64 %6418 to i32*
  %6422 = load i32, i32* %6421
  %6423 = zext i32 %6422 to i64
  store i64 %6423, i64* %RAX, align 8, !tbaa !2428
  %6424 = load i64, i64* %RAX
  %6425 = load i64, i64* %RBP
  %6426 = sub i64 %6425, 44
  %6427 = load i64, i64* %PC
  %6428 = add i64 %6427, 3
  store i64 %6428, i64* %PC
  %6429 = trunc i64 %6424 to i32
  %6430 = inttoptr i64 %6426 to i32*
  %6431 = load i32, i32* %6430
  %6432 = add i32 %6431, %6429
  %6433 = zext i32 %6432 to i64
  store i64 %6433, i64* %RAX, align 8, !tbaa !2428
  %6434 = icmp ult i32 %6432, %6429
  %6435 = icmp ult i32 %6432, %6431
  %6436 = or i1 %6434, %6435
  %6437 = zext i1 %6436 to i8
  %6438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6437, i8* %6438, align 1, !tbaa !2432
  %6439 = and i32 %6432, 255
  %6440 = call i32 @llvm.ctpop.i32(i32 %6439) #16
  %6441 = trunc i32 %6440 to i8
  %6442 = and i8 %6441, 1
  %6443 = xor i8 %6442, 1
  %6444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6443, i8* %6444, align 1, !tbaa !2446
  %6445 = xor i32 %6431, %6429
  %6446 = xor i32 %6445, %6432
  %6447 = lshr i32 %6446, 4
  %6448 = trunc i32 %6447 to i8
  %6449 = and i8 %6448, 1
  %6450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6449, i8* %6450, align 1, !tbaa !2447
  %6451 = icmp eq i32 %6432, 0
  %6452 = zext i1 %6451 to i8
  %6453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6452, i8* %6453, align 1, !tbaa !2448
  %6454 = lshr i32 %6432, 31
  %6455 = trunc i32 %6454 to i8
  %6456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6455, i8* %6456, align 1, !tbaa !2449
  %6457 = lshr i32 %6429, 31
  %6458 = lshr i32 %6431, 31
  %6459 = xor i32 %6454, %6457
  %6460 = xor i32 %6454, %6458
  %6461 = add nuw nsw i32 %6459, %6460
  %6462 = icmp eq i32 %6461, 2
  %6463 = zext i1 %6462 to i8
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6463, i8* %6464, align 1, !tbaa !2450
  %6465 = load i64, i64* %RAX
  %6466 = load i64, i64* %PC
  %6467 = add i64 %6466, 3
  store i64 %6467, i64* %PC
  %6468 = and i64 %6465, 4294967295
  %6469 = shl i64 %6468, 17
  %6470 = trunc i64 %6469 to i32
  %6471 = icmp slt i32 %6470, 0
  %6472 = shl i32 %6470, 1
  %6473 = zext i32 %6472 to i64
  store i64 %6473, i64* %RAX, align 8, !tbaa !2428
  %6474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6475 = zext i1 %6471 to i8
  store i8 %6475, i8* %6474, align 1, !tbaa !2451
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6476, align 1, !tbaa !2451
  %6477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6477, align 1, !tbaa !2451
  %6478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6479 = icmp eq i32 %6472, 0
  %6480 = zext i1 %6479 to i8
  store i8 %6480, i8* %6478, align 1, !tbaa !2451
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6482 = lshr i32 %6472, 31
  %6483 = trunc i32 %6482 to i8
  store i8 %6483, i8* %6481, align 1, !tbaa !2451
  %6484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6484, align 1, !tbaa !2451
  %6485 = load i64, i64* %RBP
  %6486 = sub i64 %6485, 40
  %6487 = load i64, i64* %PC
  %6488 = add i64 %6487, 3
  store i64 %6488, i64* %PC
  %6489 = inttoptr i64 %6486 to i32*
  %6490 = load i32, i32* %6489
  %6491 = zext i32 %6490 to i64
  store i64 %6491, i64* %RCX, align 8, !tbaa !2428
  %6492 = load i64, i64* %RCX
  %6493 = load i64, i64* %RBP
  %6494 = sub i64 %6493, 44
  %6495 = load i64, i64* %PC
  %6496 = add i64 %6495, 3
  store i64 %6496, i64* %PC
  %6497 = trunc i64 %6492 to i32
  %6498 = inttoptr i64 %6494 to i32*
  %6499 = load i32, i32* %6498
  %6500 = add i32 %6499, %6497
  %6501 = zext i32 %6500 to i64
  store i64 %6501, i64* %RCX, align 8, !tbaa !2428
  %6502 = icmp ult i32 %6500, %6497
  %6503 = icmp ult i32 %6500, %6499
  %6504 = or i1 %6502, %6503
  %6505 = zext i1 %6504 to i8
  %6506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6505, i8* %6506, align 1, !tbaa !2432
  %6507 = and i32 %6500, 255
  %6508 = call i32 @llvm.ctpop.i32(i32 %6507) #16
  %6509 = trunc i32 %6508 to i8
  %6510 = and i8 %6509, 1
  %6511 = xor i8 %6510, 1
  %6512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6511, i8* %6512, align 1, !tbaa !2446
  %6513 = xor i32 %6499, %6497
  %6514 = xor i32 %6513, %6500
  %6515 = lshr i32 %6514, 4
  %6516 = trunc i32 %6515 to i8
  %6517 = and i8 %6516, 1
  %6518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6517, i8* %6518, align 1, !tbaa !2447
  %6519 = icmp eq i32 %6500, 0
  %6520 = zext i1 %6519 to i8
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6520, i8* %6521, align 1, !tbaa !2448
  %6522 = lshr i32 %6500, 31
  %6523 = trunc i32 %6522 to i8
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6523, i8* %6524, align 1, !tbaa !2449
  %6525 = lshr i32 %6497, 31
  %6526 = lshr i32 %6499, 31
  %6527 = xor i32 %6522, %6525
  %6528 = xor i32 %6522, %6526
  %6529 = add nuw nsw i32 %6527, %6528
  %6530 = icmp eq i32 %6529, 2
  %6531 = zext i1 %6530 to i8
  %6532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6531, i8* %6532, align 1, !tbaa !2450
  %6533 = load i64, i64* %RCX
  %6534 = load i64, i64* %PC
  %6535 = add i64 %6534, 3
  store i64 %6535, i64* %PC
  %6536 = and i64 %6533, 4294967295
  %6537 = lshr i64 %6536, 13
  %6538 = trunc i64 %6537 to i8
  %6539 = and i8 %6538, 1
  %6540 = lshr i64 %6537, 1
  %6541 = trunc i64 %6540 to i32
  %6542 = and i32 %6541, 2147483647
  %6543 = zext i32 %6542 to i64
  store i64 %6543, i64* %RCX, align 8, !tbaa !2428
  %6544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6539, i8* %6544, align 1, !tbaa !2451
  %6545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6546 = and i32 %6541, 255
  %6547 = call i32 @llvm.ctpop.i32(i32 %6546) #16
  %6548 = trunc i32 %6547 to i8
  %6549 = and i8 %6548, 1
  %6550 = xor i8 %6549, 1
  store i8 %6550, i8* %6545, align 1, !tbaa !2451
  %6551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6551, align 1, !tbaa !2451
  %6552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6553 = icmp eq i32 %6542, 0
  %6554 = zext i1 %6553 to i8
  store i8 %6554, i8* %6552, align 1, !tbaa !2451
  %6555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6555, align 1, !tbaa !2451
  %6556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6556, align 1, !tbaa !2451
  %6557 = load i64, i64* %RAX
  %6558 = load i32, i32* %ECX
  %6559 = zext i32 %6558 to i64
  %6560 = load i64, i64* %PC
  %6561 = add i64 %6560, 2
  store i64 %6561, i64* %PC
  %6562 = or i64 %6559, %6557
  %6563 = trunc i64 %6562 to i32
  %6564 = and i64 %6562, 4294967295
  store i64 %6564, i64* %RAX, align 8, !tbaa !2428
  %6565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6565, align 1, !tbaa !2432
  %6566 = and i32 %6563, 255
  %6567 = call i32 @llvm.ctpop.i32(i32 %6566) #16
  %6568 = trunc i32 %6567 to i8
  %6569 = and i8 %6568, 1
  %6570 = xor i8 %6569, 1
  %6571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6570, i8* %6571, align 1, !tbaa !2446
  %6572 = icmp eq i32 %6563, 0
  %6573 = zext i1 %6572 to i8
  %6574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6573, i8* %6574, align 1, !tbaa !2448
  %6575 = lshr i32 %6563, 31
  %6576 = trunc i32 %6575 to i8
  %6577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6576, i8* %6577, align 1, !tbaa !2449
  %6578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6578, align 1, !tbaa !2450
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6579, align 1, !tbaa !2447
  %6580 = load i64, i64* %RAX
  %6581 = load i64, i64* %RBP
  %6582 = sub i64 %6581, 36
  %6583 = load i64, i64* %PC
  %6584 = add i64 %6583, 3
  store i64 %6584, i64* %PC
  %6585 = trunc i64 %6580 to i32
  %6586 = inttoptr i64 %6582 to i32*
  %6587 = load i32, i32* %6586
  %6588 = xor i32 %6587, %6585
  %6589 = zext i32 %6588 to i64
  store i64 %6589, i64* %RAX, align 8, !tbaa !2428
  %6590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6590, align 1, !tbaa !2432
  %6591 = and i32 %6588, 255
  %6592 = call i32 @llvm.ctpop.i32(i32 %6591) #16
  %6593 = trunc i32 %6592 to i8
  %6594 = and i8 %6593, 1
  %6595 = xor i8 %6594, 1
  %6596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6595, i8* %6596, align 1, !tbaa !2446
  %6597 = icmp eq i32 %6588, 0
  %6598 = zext i1 %6597 to i8
  %6599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6598, i8* %6599, align 1, !tbaa !2448
  %6600 = lshr i32 %6588, 31
  %6601 = trunc i32 %6600 to i8
  %6602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6601, i8* %6602, align 1, !tbaa !2449
  %6603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6603, align 1, !tbaa !2450
  %6604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6604, align 1, !tbaa !2447
  %6605 = load i64, i64* %RBP
  %6606 = sub i64 %6605, 36
  %6607 = load i32, i32* %EAX
  %6608 = zext i32 %6607 to i64
  %6609 = load i64, i64* %PC
  %6610 = add i64 %6609, 3
  store i64 %6610, i64* %PC
  %6611 = inttoptr i64 %6606 to i32*
  store i32 %6607, i32* %6611
  %6612 = load i64, i64* %RBP
  %6613 = sub i64 %6612, 20
  %6614 = load i64, i64* %PC
  %6615 = add i64 %6614, 3
  store i64 %6615, i64* %PC
  %6616 = inttoptr i64 %6613 to i32*
  %6617 = load i32, i32* %6616
  %6618 = zext i32 %6617 to i64
  store i64 %6618, i64* %RAX, align 8, !tbaa !2428
  %6619 = load i64, i64* %RAX
  %6620 = load i64, i64* %PC
  %6621 = add i64 %6620, 3
  store i64 %6621, i64* %PC
  %6622 = trunc i64 %6619 to i32
  %6623 = sub i32 %6622, 2
  %6624 = zext i32 %6623 to i64
  store i64 %6624, i64* %RAX, align 8, !tbaa !2428
  %6625 = icmp ult i32 %6622, 2
  %6626 = zext i1 %6625 to i8
  %6627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6626, i8* %6627, align 1, !tbaa !2432
  %6628 = and i32 %6623, 255
  %6629 = call i32 @llvm.ctpop.i32(i32 %6628) #16
  %6630 = trunc i32 %6629 to i8
  %6631 = and i8 %6630, 1
  %6632 = xor i8 %6631, 1
  %6633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6632, i8* %6633, align 1, !tbaa !2446
  %6634 = xor i64 2, %6619
  %6635 = trunc i64 %6634 to i32
  %6636 = xor i32 %6635, %6623
  %6637 = lshr i32 %6636, 4
  %6638 = trunc i32 %6637 to i8
  %6639 = and i8 %6638, 1
  %6640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6639, i8* %6640, align 1, !tbaa !2447
  %6641 = icmp eq i32 %6623, 0
  %6642 = zext i1 %6641 to i8
  %6643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6642, i8* %6643, align 1, !tbaa !2448
  %6644 = lshr i32 %6623, 31
  %6645 = trunc i32 %6644 to i8
  %6646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6645, i8* %6646, align 1, !tbaa !2449
  %6647 = lshr i32 %6622, 31
  %6648 = xor i32 %6644, %6647
  %6649 = add nuw nsw i32 %6648, %6647
  %6650 = icmp eq i32 %6649, 2
  %6651 = zext i1 %6650 to i8
  %6652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6651, i8* %6652, align 1, !tbaa !2450
  %6653 = load i64, i64* %RBP
  %6654 = sub i64 %6653, 20
  %6655 = load i32, i32* %EAX
  %6656 = zext i32 %6655 to i64
  %6657 = load i64, i64* %PC
  %6658 = add i64 %6657, 3
  store i64 %6658, i64* %PC
  %6659 = inttoptr i64 %6654 to i32*
  store i32 %6655, i32* %6659
  %6660 = load i64, i64* %PC
  %6661 = sub i64 %6660, 851
  %6662 = load i64, i64* %PC
  %6663 = add i64 %6662, 5
  store i64 %6663, i64* %PC
  %6664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6661, i64* %6664, align 8, !tbaa !2428
  br label %block_400557

block_4008c0:                                     ; preds = %block_4008b6
  %6665 = load i64, i64* %RBP
  %6666 = sub i64 %6665, 20
  %6667 = load i64, i64* %PC
  %6668 = add i64 %6667, 3
  store i64 %6668, i64* %PC
  %6669 = inttoptr i64 %6666 to i32*
  %6670 = load i32, i32* %6669
  %6671 = zext i32 %6670 to i64
  store i64 %6671, i64* %RAX, align 8, !tbaa !2428
  %6672 = load i32, i32* %EAX
  %6673 = zext i32 %6672 to i64
  %6674 = load i64, i64* %PC
  %6675 = add i64 %6674, 2
  store i64 %6675, i64* %PC
  %6676 = and i64 %6673, 4294967295
  store i64 %6676, i64* %RCX, align 8, !tbaa !2428
  %6677 = load i64, i64* %RBP
  %6678 = load i64, i64* %RCX
  %6679 = mul i64 %6678, 4
  %6680 = add i64 %6677, -96
  %6681 = add i64 %6680, %6679
  %6682 = load i64, i64* %PC
  %6683 = add i64 %6682, 4
  store i64 %6683, i64* %PC
  %6684 = inttoptr i64 %6681 to i32*
  %6685 = load i32, i32* %6684
  %6686 = zext i32 %6685 to i64
  store i64 %6686, i64* %RAX, align 8, !tbaa !2428
  %6687 = load i64, i64* %RBP
  %6688 = sub i64 %6687, 16
  %6689 = load i64, i64* %PC
  %6690 = add i64 %6689, 4
  store i64 %6690, i64* %PC
  %6691 = inttoptr i64 %6688 to i64*
  %6692 = load i64, i64* %6691
  store i64 %6692, i64* %RCX, align 8, !tbaa !2428
  %6693 = load i64, i64* %RBP
  %6694 = sub i64 %6693, 20
  %6695 = load i64, i64* %PC
  %6696 = add i64 %6695, 3
  store i64 %6696, i64* %PC
  %6697 = inttoptr i64 %6694 to i32*
  %6698 = load i32, i32* %6697
  %6699 = zext i32 %6698 to i64
  store i64 %6699, i64* %RDX, align 8, !tbaa !2428
  %6700 = load i32, i32* %EDX
  %6701 = zext i32 %6700 to i64
  %6702 = load i64, i64* %PC
  %6703 = add i64 %6702, 2
  store i64 %6703, i64* %PC
  %6704 = and i64 %6701, 4294967295
  store i64 %6704, i64* %RSI, align 8, !tbaa !2428
  %6705 = load i64, i64* %RAX
  %6706 = load i64, i64* %RCX
  %6707 = load i64, i64* %RSI
  %6708 = mul i64 %6707, 4
  %6709 = add i64 %6708, %6706
  %6710 = load i64, i64* %PC
  %6711 = add i64 %6710, 3
  store i64 %6711, i64* %PC
  %6712 = trunc i64 %6705 to i32
  %6713 = inttoptr i64 %6709 to i32*
  %6714 = load i32, i32* %6713
  %6715 = add i32 %6714, %6712
  %6716 = zext i32 %6715 to i64
  store i64 %6716, i64* %RAX, align 8, !tbaa !2428
  %6717 = icmp ult i32 %6715, %6712
  %6718 = icmp ult i32 %6715, %6714
  %6719 = or i1 %6717, %6718
  %6720 = zext i1 %6719 to i8
  %6721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6720, i8* %6721, align 1, !tbaa !2432
  %6722 = and i32 %6715, 255
  %6723 = call i32 @llvm.ctpop.i32(i32 %6722) #16
  %6724 = trunc i32 %6723 to i8
  %6725 = and i8 %6724, 1
  %6726 = xor i8 %6725, 1
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6726, i8* %6727, align 1, !tbaa !2446
  %6728 = xor i32 %6714, %6712
  %6729 = xor i32 %6728, %6715
  %6730 = lshr i32 %6729, 4
  %6731 = trunc i32 %6730 to i8
  %6732 = and i8 %6731, 1
  %6733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6732, i8* %6733, align 1, !tbaa !2447
  %6734 = icmp eq i32 %6715, 0
  %6735 = zext i1 %6734 to i8
  %6736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6735, i8* %6736, align 1, !tbaa !2448
  %6737 = lshr i32 %6715, 31
  %6738 = trunc i32 %6737 to i8
  %6739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6738, i8* %6739, align 1, !tbaa !2449
  %6740 = lshr i32 %6712, 31
  %6741 = lshr i32 %6714, 31
  %6742 = xor i32 %6737, %6740
  %6743 = xor i32 %6737, %6741
  %6744 = add nuw nsw i32 %6742, %6743
  %6745 = icmp eq i32 %6744, 2
  %6746 = zext i1 %6745 to i8
  %6747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6746, i8* %6747, align 1, !tbaa !2450
  %6748 = load i64, i64* %RBP
  %6749 = sub i64 %6748, 8
  %6750 = load i64, i64* %PC
  %6751 = add i64 %6750, 4
  store i64 %6751, i64* %PC
  %6752 = inttoptr i64 %6749 to i64*
  %6753 = load i64, i64* %6752
  store i64 %6753, i64* %RCX, align 8, !tbaa !2428
  %6754 = load i64, i64* %RBP
  %6755 = sub i64 %6754, 20
  %6756 = load i64, i64* %PC
  %6757 = add i64 %6756, 3
  store i64 %6757, i64* %PC
  %6758 = inttoptr i64 %6755 to i32*
  %6759 = load i32, i32* %6758
  %6760 = zext i32 %6759 to i64
  store i64 %6760, i64* %RDX, align 8, !tbaa !2428
  %6761 = load i32, i32* %EDX
  %6762 = zext i32 %6761 to i64
  %6763 = load i64, i64* %PC
  %6764 = add i64 %6763, 2
  store i64 %6764, i64* %PC
  %6765 = and i64 %6762, 4294967295
  store i64 %6765, i64* %RSI, align 8, !tbaa !2428
  %6766 = load i64, i64* %RCX
  %6767 = load i64, i64* %RSI
  %6768 = mul i64 %6767, 4
  %6769 = add i64 %6768, %6766
  %6770 = load i32, i32* %EAX
  %6771 = zext i32 %6770 to i64
  %6772 = load i64, i64* %PC
  %6773 = add i64 %6772, 3
  store i64 %6773, i64* %PC
  %6774 = inttoptr i64 %6769 to i32*
  store i32 %6770, i32* %6774
  %6775 = load i64, i64* %RBP
  %6776 = sub i64 %6775, 20
  %6777 = load i64, i64* %PC
  %6778 = add i64 %6777, 3
  store i64 %6778, i64* %PC
  %6779 = inttoptr i64 %6776 to i32*
  %6780 = load i32, i32* %6779
  %6781 = zext i32 %6780 to i64
  store i64 %6781, i64* %RAX, align 8, !tbaa !2428
  %6782 = load i64, i64* %RAX
  %6783 = load i64, i64* %PC
  %6784 = add i64 %6783, 3
  store i64 %6784, i64* %PC
  %6785 = trunc i64 %6782 to i32
  %6786 = add i32 1, %6785
  %6787 = zext i32 %6786 to i64
  store i64 %6787, i64* %RAX, align 8, !tbaa !2428
  %6788 = icmp ult i32 %6786, %6785
  %6789 = icmp ult i32 %6786, 1
  %6790 = or i1 %6788, %6789
  %6791 = zext i1 %6790 to i8
  %6792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6791, i8* %6792, align 1, !tbaa !2432
  %6793 = and i32 %6786, 255
  %6794 = call i32 @llvm.ctpop.i32(i32 %6793) #16
  %6795 = trunc i32 %6794 to i8
  %6796 = and i8 %6795, 1
  %6797 = xor i8 %6796, 1
  %6798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6797, i8* %6798, align 1, !tbaa !2446
  %6799 = xor i64 1, %6782
  %6800 = trunc i64 %6799 to i32
  %6801 = xor i32 %6800, %6786
  %6802 = lshr i32 %6801, 4
  %6803 = trunc i32 %6802 to i8
  %6804 = and i8 %6803, 1
  %6805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6804, i8* %6805, align 1, !tbaa !2447
  %6806 = icmp eq i32 %6786, 0
  %6807 = zext i1 %6806 to i8
  %6808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6807, i8* %6808, align 1, !tbaa !2448
  %6809 = lshr i32 %6786, 31
  %6810 = trunc i32 %6809 to i8
  %6811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6810, i8* %6811, align 1, !tbaa !2449
  %6812 = lshr i32 %6785, 31
  %6813 = xor i32 %6809, %6812
  %6814 = add nuw nsw i32 %6813, %6809
  %6815 = icmp eq i32 %6814, 2
  %6816 = zext i1 %6815 to i8
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6816, i8* %6817, align 1, !tbaa !2450
  %6818 = load i64, i64* %RBP
  %6819 = sub i64 %6818, 20
  %6820 = load i32, i32* %EAX
  %6821 = zext i32 %6820 to i64
  %6822 = load i64, i64* %PC
  %6823 = add i64 %6822, 3
  store i64 %6823, i64* %PC
  %6824 = inttoptr i64 %6819 to i32*
  store i32 %6820, i32* %6824
  %6825 = load i64, i64* %PC
  %6826 = sub i64 %6825, 52
  %6827 = load i64, i64* %PC
  %6828 = add i64 %6827, 5
  store i64 %6828, i64* %PC
  %6829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6826, i64* %6829, align 8, !tbaa !2428
  br label %block_4008b6
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400500_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400500;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400500_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400500_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4004d0___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4004d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4004d0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4004d0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400410_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400ac0___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400ac0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400ac0___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400ac0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400a50___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400a50;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400a50___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400a50___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400970;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400970_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6010d8___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @salsa() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400900;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
  ret void
}

define internal %struct.Memory* @salsa_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400900_salsa(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4003e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4003e0__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @salsa20() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400510;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
  ret void
}

define internal %struct.Memory* @salsa20_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400510_salsa20(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400ac4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400ac4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
  call void @callback_sub_400a50___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_400ac0___libc_csu_fini()
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
!2428 = !{!2429, !2429, i64 0}
!2429 = !{!"long", !2430, i64 0}
!2430 = !{!"omnipotent char", !2431, i64 0}
!2431 = !{!"Simple C++ TBAA"}
!2432 = !{!2433, !2430, i64 2065}
!2433 = !{!"_ZTS5State", !2430, i64 16, !2434, i64 2064, !2430, i64 2080, !2435, i64 2088, !2437, i64 2112, !2439, i64 2208, !2440, i64 2480, !2441, i64 2608, !2442, i64 2736, !2430, i64 2760, !2430, i64 2768, !2443, i64 3280}
!2434 = !{!"_ZTS10ArithFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15}
!2435 = !{!"_ZTS8Segments", !2436, i64 0, !2430, i64 2, !2436, i64 4, !2430, i64 6, !2436, i64 8, !2430, i64 10, !2436, i64 12, !2430, i64 14, !2436, i64 16, !2430, i64 18, !2436, i64 20, !2430, i64 22}
!2436 = !{!"short", !2430, i64 0}
!2437 = !{!"_ZTS12AddressSpace", !2429, i64 0, !2438, i64 8, !2429, i64 16, !2438, i64 24, !2429, i64 32, !2438, i64 40, !2429, i64 48, !2438, i64 56, !2429, i64 64, !2438, i64 72, !2429, i64 80, !2438, i64 88}
!2438 = !{!"_ZTS3Reg", !2430, i64 0}
!2439 = !{!"_ZTS3GPR", !2429, i64 0, !2438, i64 8, !2429, i64 16, !2438, i64 24, !2429, i64 32, !2438, i64 40, !2429, i64 48, !2438, i64 56, !2429, i64 64, !2438, i64 72, !2429, i64 80, !2438, i64 88, !2429, i64 96, !2438, i64 104, !2429, i64 112, !2438, i64 120, !2429, i64 128, !2438, i64 136, !2429, i64 144, !2438, i64 152, !2429, i64 160, !2438, i64 168, !2429, i64 176, !2438, i64 184, !2429, i64 192, !2438, i64 200, !2429, i64 208, !2438, i64 216, !2429, i64 224, !2438, i64 232, !2429, i64 240, !2438, i64 248, !2429, i64 256, !2438, i64 264}
!2440 = !{!"_ZTS8X87Stack", !2430, i64 0}
!2441 = !{!"_ZTS3MMX", !2430, i64 0}
!2442 = !{!"_ZTS14FPUStatusFlags", !2430, i64 0, !2430, i64 1, !2430, i64 2, !2430, i64 3, !2430, i64 4, !2430, i64 5, !2430, i64 6, !2430, i64 7, !2430, i64 8, !2430, i64 9, !2430, i64 10, !2430, i64 11, !2430, i64 12, !2430, i64 13, !2430, i64 14, !2430, i64 15, !2430, i64 16, !2430, i64 17, !2430, i64 18, !2430, i64 19, !2430, i64 20}
!2443 = !{!"_ZTS13SegmentCaches", !2444, i64 0, !2444, i64 16, !2444, i64 32, !2444, i64 48, !2444, i64 64, !2444, i64 80}
!2444 = !{!"_ZTS13SegmentShadow", !2430, i64 0, !2445, i64 8, !2445, i64 12}
!2445 = !{!"int", !2430, i64 0}
!2446 = !{!2433, !2430, i64 2067}
!2447 = !{!2433, !2430, i64 2069}
!2448 = !{!2433, !2430, i64 2071}
!2449 = !{!2433, !2430, i64 2073}
!2450 = !{!2433, !2430, i64 2077}
!2451 = !{!2430, !2430, i64 0}
