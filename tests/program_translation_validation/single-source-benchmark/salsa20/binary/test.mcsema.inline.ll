; ModuleID = 'binary/test.mcsema.calls_renamed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4003f0__init_type = type <{ [23 x i8] }>
%seg_400410__plt_type = type <{ [32 x i8] }>
%seg_400430__text_type = type <{ [1698 x i8] }>
%seg_400ad4__fini_type = type <{ [9 x i8] }>
%seg_400ae0__rodata_type = type <{ [4 x i8], [15 x i8], [15 x i8] }>
%seg_400b04__eh_frame_hdr_type = type <{ [76 x i8] }>
%seg_400b50__eh_frame_type = type <{ [312 x i8] }>
%seg_600de0__init_array_type = type <{ i64, i64 }>
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
@seg_4003f0__init = internal constant %seg_4003f0__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\FD\0B \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400410__plt = internal constant %seg_400410__plt_type <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\F2\0B \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400430__text = internal constant %seg_400430__text_type <{ [1698 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\D0\0A@\00H\C7\C1`\0A@\00H\C7\C7\80\09@\00\FF\15\96\0B \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B80\10`\00H=0\10`\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF0\10`\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE0\10`\00UH\81\EE0\10`\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF0\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=I\0B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\057\0B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\89}\F8H\89u\F0\C7E\EC\00\00\00\00\83}\EC\10\0F\83#\00\00\00H\8BE\F0\8BM\EC\89\CA\8B\0C\90\8Bu\EC\89\F0\89L\85\A0\8BE\EC\83\C0\01\89E\EC\E9\D3\FF\FF\FF\C7E\EC\14\00\00\00\83}\EC\00\0F\86N\03\00\00\8BE\A0\03E\D0\C1\E0\07\8BM\A0\03M\D0\C1\E9\19\09\C83E\B0\89E\B0\8BE\B0\03E\A0\C1\E0\09\8BM\B0\03M\A0\C1\E9\17\09\C83E\C0\89E\C0\8BE\C0\03E\B0\C1\E0\0D\8BM\C0\03M\B0\C1\E9\13\09\C83E\D0\89E\D0\8BE\D0\03E\C0\C1\E0\12\8BM\D0\03M\C0\C1\E9\0E\09\C83E\A0\89E\A0\8BE\B4\03E\A4\C1\E0\07\8BM\B4\03M\A4\C1\E9\19\09\C83E\C4\89E\C4\8BE\C4\03E\B4\C1\E0\09\8BM\C4\03M\B4\C1\E9\17\09\C83E\D4\89E\D4\8BE\D4\03E\C4\C1\E0\0D\8BM\D4\03M\C4\C1\E9\13\09\C83E\A4\89E\A4\8BE\A4\03E\D4\C1\E0\12\8BM\A4\03M\D4\C1\E9\0E\09\C83E\B4\89E\B4\8BE\C8\03E\B8\C1\E0\07\8BM\C8\03M\B8\C1\E9\19\09\C83E\D8\89E\D8\8BE\D8\03E\C8\C1\E0\09\8BM\D8\03M\C8\C1\E9\17\09\C83E\A8\89E\A8\8BE\A8\03E\D8\C1\E0\0D\8BM\A8\03M\D8\C1\E9\13\09\C83E\B8\89E\B8\8BE\B8\03E\A8\C1\E0\12\8BM\B8\03M\A8\C1\E9\0E\09\C83E\C8\89E\C8\8BE\DC\03E\CC\C1\E0\07\8BM\DC\03M\CC\C1\E9\19\09\C83E\AC\89E\AC\8BE\AC\03E\DC\C1\E0\09\8BM\AC\03M\DC\C1\E9\17\09\C83E\BC\89E\BC\8BE\BC\03E\AC\C1\E0\0D\8BM\BC\03M\AC\C1\E9\13\09\C83E\CC\89E\CC\8BE\CC\03E\BC\C1\E0\12\8BM\CC\03M\BC\C1\E9\0E\09\C83E\DC\89E\DC\8BE\A0\03E\AC\C1\E0\07\8BM\A0\03M\AC\C1\E9\19\09\C83E\A4\89E\A4\8BE\A4\03E\A0\C1\E0\09\8BM\A4\03M\A0\C1\E9\17\09\C83E\A8\89E\A8\8BE\A8\03E\A4\C1\E0\0D\8BM\A8\03M\A4\C1\E9\13\09\C83E\AC\89E\AC\8BE\AC\03E\A8\C1\E0\12\8BM\AC\03M\A8\C1\E9\0E\09\C83E\A0\89E\A0\8BE\B4\03E\B0\C1\E0\07\8BM\B4\03M\B0\C1\E9\19\09\C83E\B8\89E\B8\8BE\B8\03E\B4\C1\E0\09\8BM\B8\03M\B4\C1\E9\17\09\C83E\BC\89E\BC\8BE\BC\03E\B8\C1\E0\0D\8BM\BC\03M\B8\C1\E9\13\09\C83E\B0\89E\B0\8BE\B0\03E\BC\C1\E0\12\8BM\B0\03M\BC\C1\E9\0E\09\C83E\B4\89E\B4\8BE\C8\03E\C4\C1\E0\07\8BM\C8\03M\C4\C1\E9\19\09\C83E\CC\89E\CC\8BE\CC\03E\C8\C1\E0\09\8BM\CC\03M\C8\C1\E9\17\09\C83E\C0\89E\C0\8BE\C0\03E\CC\C1\E0\0D\8BM\C0\03M\CC\C1\E9\13\09\C83E\C4\89E\C4\8BE\C4\03E\C0\C1\E0\12\8BM\C4\03M\C0\C1\E9\0E\09\C83E\C8\89E\C8\8BE\DC\03E\D8\C1\E0\07\8BM\DC\03M\D8\C1\E9\19\09\C83E\D0\89E\D0\8BE\D0\03E\DC\C1\E0\09\8BM\D0\03M\DC\C1\E9\17\09\C83E\D4\89E\D4\8BE\D4\03E\D0\C1\E0\0D\8BM\D4\03M\D0\C1\E9\13\09\C83E\D8\89E\D8\8BE\D8\03E\D4\C1\E0\12\8BM\D8\03M\D4\C1\E9\0E\09\C83E\DC\89E\DC\8BE\EC\83\E8\02\89E\EC\E9\A8\FC\FF\FF\C7E\EC\00\00\00\00\83}\EC\10\0F\83/\00\00\00\8BE\EC\89\C1\8BD\8D\A0H\8BM\F0\8BU\EC\89\D6\03\04\B1H\8BM\F8\8BU\EC\89\D6\89\04\B1\8BE\EC\83\C0\01\89E\EC\E9\C7\FF\FF\FF]\C3ffffff.\0F\1F\84\00\00\00\00\00UH\89\E5\83<%4\10`\00\00\0F\85*\00\00\00H\BF\80\10`\00\00\00\00\00H\BE@\10`\00\00\00\00\00\E8\E5\FB\FF\FF\8B\04%@\10`\00\83\C0\01\89\04%@\10`\00\8B\04%4\10`\00\83\C0\01\83\E0\0F\89\04%4\10`\00\8B\04%4\10`\00\89\C1\8B\04\8D\80\10`\00]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \C7E\FC\00\00\00\00\C7E\F0\00\00\10 \C7E\EC\00\00\00\00\C7E\F4\00\00\00\00\83}\F4\10\0F\830\00\00\00\B8\EF\BE\AD\DE\8BM\F4\83\C1\0D\81\C1\E5\AB\AB\ED+E\F41\C1\8BE\F4\89\C2\89\0C\95@\10`\00\8BE\F4\83\C0\01\89E\F4\E9\C6\FF\FF\FF\C7E\F4\00\00\00\00\8BE\F4;E\F0\0F\83\16\00\00\00\E8\1A\FF\FF\FF\89E\E8\8BE\F4\83\C0\01\89E\F4\E9\DE\FF\FF\FF\E8\04\FF\FF\FFH\BF\E4\0A@\00\00\00\00\00\89E\F8\8BE\EC\03E\F8\89E\F8\8Bu\F8\B0\00\E8\F4\F9\FF\FFH\BF\F3\0A@\00\00\00\00\00\BE=pU\F6\89E\E4\B0\00\E8\DB\F9\FF\FF\81}\F8=pU\F6\0F\95\C1\80\E1\01\0F\B6\F1\89E\E0\89\F0H\83\C4 ]\C3AWAVI\89\D7AUATL\8D%n\03 \00UH\8D-n\03 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8_\F9\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_400ad4__fini = internal constant %seg_400ad4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400ae0__rodata = internal constant %seg_400ae0__rodata_type <{ [4 x i8] c"\01\00\02\00", [15 x i8] c"got:       %x\0A\00", [15 x i8] c"should be: %x\0A\00" }>
@seg_400b04__eh_frame_hdr = internal constant %seg_400b04__eh_frame_hdr_type <{ [76 x i8] c"\01\1B\03;H\00\00\00\08\00\00\00\0C\F9\FF\FF\A4\00\00\00,\F9\FF\FFd\00\00\00\5C\F9\FF\FF\90\00\00\00\1C\FA\FF\FF\CC\00\00\00\0C\FE\FF\FF\E8\00\00\00|\FE\FF\FF\04\01\00\00\5C\FF\FF\FF$\01\00\00\CC\FF\FF\FFl\01\00\00" }>
@seg_400b50__eh_frame = internal constant %seg_400b50__eh_frame_type <{ [312 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00\C0\F8\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00\C4\F8\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00`\F8\FF\FF \00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00H\F9\FF\FF\E1\03\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\1C\FD\FF\FFb\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00\90\00\00\00p\FD\FF\FF\E0\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00D\00\00\00\B0\00\00\000\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\F8\00\00\00X\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_600de0__init_array = internal global %seg_600de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400510_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4004e0___do_global_dtors_aux to i64) }>
@seg_600ff0__got = internal global %seg_600ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_601000__got_plt = internal global %seg_601000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64) }>
@seg_601020__data = internal global %seg_601020__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@ptr = global %ptr_type zeroinitializer
@STATE = global %STATE_type zeroinitializer
@outbuf = global %outbuf_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400510_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4004e0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400ad0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400a60___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @salsa20_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @salsa_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_4003f0__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400520_salsa20_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400470_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400910_salsa_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

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
define %struct.Memory* @sub_400ad4__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ad4:
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
define %struct.Memory* @sub_4003f0__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4003f0:
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
  br i1 %80, label %block_400402, label %block_400400

block_400400:                                     ; preds = %block_4003f0
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
  br label %block_400402

block_400402:                                     ; preds = %block_400400, %block_4003f0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4003f0 ], [ %92, %block_400400 ]
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
define %struct.Memory* @sub_400470_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400470:
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
  br i1 %81, label %block_400498, label %block_400481

block_400498:                                     ; preds = %block_400481, %block_400493, %block_400470
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400470 ], [ %2, %block_400481 ], [ %2, %block_400493 ]
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
  %90 = add i64 %89, 1
  store i64 %90, i64* %PC
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %93 = load i64, i64* %92, align 8, !tbaa !2428
  %94 = inttoptr i64 %93 to i64*
  %95 = load i64, i64* %94
  store i64 %95, i64* %91, align 8, !tbaa !2428
  %96 = add i64 %93, 8
  store i64 %96, i64* %92, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_40049a:                                     ; preds = %block_40048b
  %97 = load i64, i64* %RAX
  %98 = load i64, i64* %RAX
  %99 = add i64 %98, %97
  %100 = load i16, i16* %AX
  %101 = zext i16 %100 to i64
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 6
  store i64 %103, i64* %PC
  %104 = load i64, i64* %PC
  %105 = tail call %struct.Memory* @sub_4004a0_register_tm_clones(%struct.State* %0, i64 %104, %struct.Memory* %2)
  ret %struct.Memory* %105

block_400493:                                     ; preds = %block_40048b
  %106 = load i64, i64* %RAX
  %107 = load i64, i64* %RAX
  %108 = add i64 %107, %106
  %109 = load i32, i32* %EAX
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 5
  store i64 %112, i64* %PC
  br label %block_400498

block_40048b:                                     ; preds = %block_400481
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 1
  store i64 %114, i64* %PC
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %116 = load i64, i64* %115, align 8, !tbaa !2428
  %117 = add i64 %116, 8
  %118 = inttoptr i64 %116 to i64*
  %119 = load i64, i64* %118
  store i64 %119, i64* %RBP, align 8, !tbaa !2428
  store i64 %117, i64* %115, align 8, !tbaa !2428
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 5
  store i64 %121, i64* %PC
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !2428
  %122 = load i64, i64* %RAX
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 2
  store i64 %124, i64* %PC
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %122, i64* %125, align 8, !tbaa !2428
  %126 = load i64, i64* %PC
  switch i64 %126, label %163 [
    i64 4195482, label %block_40049a
    i64 4195475, label %block_400493
  ]

block_400481:                                     ; preds = %block_400470
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 5
  store i64 %128, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %129 = load i64, i64* %RAX
  %130 = load i64, i64* %RAX
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 3
  store i64 %132, i64* %PC
  %133 = and i64 %130, %129
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %134, align 1, !tbaa !2432
  %135 = trunc i64 %133 to i32
  %136 = and i32 %135, 255
  %137 = call i32 @llvm.ctpop.i32(i32 %136) #16
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %140, i8* %141, align 1, !tbaa !2446
  %142 = icmp eq i64 %133, 0
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %143, i8* %144, align 1, !tbaa !2448
  %145 = lshr i64 %133, 63
  %146 = trunc i64 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %146, i8* %147, align 1, !tbaa !2449
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %148, align 1, !tbaa !2450
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %149, align 1, !tbaa !2447
  %150 = load i64, i64* %PC
  %151 = add i64 %150, 15
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 2
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 2
  store i64 %155, i64* %PC
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %157 = load i8, i8* %156, align 1, !tbaa !2448
  store i8 %157, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %159 = icmp ne i8 %157, 0
  %160 = select i1 %159, i64 %151, i64 %153
  store i64 %160, i64* %158, align 8, !tbaa !2428
  %161 = load i8, i8* %BRANCH_TAKEN
  %162 = icmp eq i8 %161, 1
  br i1 %162, label %block_400498, label %block_40048b

; <label>:163:                                    ; preds = %block_40048b
  %164 = load i64, i64* %PC
  %165 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %164, %struct.Memory* %2)
  ret %struct.Memory* %165
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004e0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004e0:
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
  br i1 %47, label %block_400500, label %block_4004e9

block_400500:                                     ; preds = %block_4004e0
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

block_4004e9:                                     ; preds = %block_4004e0
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
  %78 = call %struct.Memory* @sub_400470_deregister_tm_clones_renamed_(%struct.State* %0, i64 %77, %struct.Memory* %2)
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
define %struct.Memory* @sub_400460__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400460:
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
define %struct.Memory* @sub_400910_salsa(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400910:
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
  br i1 %73, label %block_40094c, label %block_400922

block_400922:                                     ; preds = %block_400910
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
  %90 = call %struct.Memory* @sub_400520_salsa20_renamed_(%struct.State* %0, i64 %89, %struct.Memory* %2)
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
  br label %block_40094c

block_40094c:                                     ; preds = %block_400922, %block_400910
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400910 ], [ %90, %block_400922 ]
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
define %struct.Memory* @sub_400430__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400430:
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
  store i64 ptrtoint (void ()* @callback_sub_400ad0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_400a60___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
define %struct.Memory* @sub_400520_salsa20(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400520:
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
  br label %block_400533

block_4008bf:                                     ; preds = %block_400567
  %66 = sub i64 %6777, 20
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 7
  store i64 %68, i64* %PC
  %69 = inttoptr i64 %66 to i32*
  store i32 0, i32* %69
  br label %block_4008c6

block_4008ff:                                     ; preds = %block_4008c6
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 1
  store i64 %71, i64* %PC
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %73 = load i64, i64* %72, align 8, !tbaa !2428
  %74 = add i64 %73, 8
  %75 = inttoptr i64 %73 to i64*
  %76 = load i64, i64* %75
  store i64 %76, i64* %RBP, align 8, !tbaa !2428
  store i64 %74, i64* %72, align 8, !tbaa !2428
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 1
  store i64 %78, i64* %PC
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %81 = load i64, i64* %80, align 8, !tbaa !2428
  %82 = inttoptr i64 %81 to i64*
  %83 = load i64, i64* %82
  store i64 %83, i64* %79, align 8, !tbaa !2428
  %84 = add i64 %81, 8
  store i64 %84, i64* %80, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.2

block_40053d:                                     ; preds = %block_400533
  %85 = sub i64 %6733, 16
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 4
  store i64 %87, i64* %PC
  %88 = inttoptr i64 %85 to i64*
  %89 = load i64, i64* %88
  store i64 %89, i64* %RAX, align 8, !tbaa !2428
  %90 = load i64, i64* %RBP
  %91 = sub i64 %90, 20
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 3
  store i64 %93, i64* %PC
  %94 = inttoptr i64 %91 to i32*
  %95 = load i32, i32* %94
  %96 = zext i32 %95 to i64
  store i64 %96, i64* %RCX, align 8, !tbaa !2428
  %97 = load i32, i32* %ECX
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 2
  store i64 %100, i64* %PC
  %101 = and i64 %98, 4294967295
  store i64 %101, i64* %RDX, align 8, !tbaa !2428
  %102 = load i64, i64* %RAX
  %103 = load i64, i64* %RDX
  %104 = mul i64 %103, 4
  %105 = add i64 %104, %102
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 3
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %105 to i32*
  %109 = load i32, i32* %108
  %110 = zext i32 %109 to i64
  store i64 %110, i64* %RCX, align 8, !tbaa !2428
  %111 = load i64, i64* %RBP
  %112 = sub i64 %111, 20
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 3
  store i64 %114, i64* %PC
  %115 = inttoptr i64 %112 to i32*
  %116 = load i32, i32* %115
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RSI, align 8, !tbaa !2428
  %118 = load i32, i32* %ESI
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 2
  store i64 %121, i64* %PC
  %122 = and i64 %119, 4294967295
  store i64 %122, i64* %RAX, align 8, !tbaa !2428
  %123 = load i64, i64* %RBP
  %124 = load i64, i64* %RAX
  %125 = mul i64 %124, 4
  %126 = add i64 %123, -96
  %127 = add i64 %126, %125
  %128 = load i32, i32* %ECX
  %129 = zext i32 %128 to i64
  %130 = load i64, i64* %PC
  %131 = add i64 %130, 4
  store i64 %131, i64* %PC
  %132 = inttoptr i64 %127 to i32*
  store i32 %128, i32* %132
  %133 = load i64, i64* %RBP
  %134 = sub i64 %133, 20
  %135 = load i64, i64* %PC
  %136 = add i64 %135, 3
  store i64 %136, i64* %PC
  %137 = inttoptr i64 %134 to i32*
  %138 = load i32, i32* %137
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RAX, align 8, !tbaa !2428
  %140 = load i64, i64* %RAX
  %141 = load i64, i64* %PC
  %142 = add i64 %141, 3
  store i64 %142, i64* %PC
  %143 = trunc i64 %140 to i32
  %144 = add i32 1, %143
  %145 = zext i32 %144 to i64
  store i64 %145, i64* %RAX, align 8, !tbaa !2428
  %146 = icmp ult i32 %144, %143
  %147 = icmp ult i32 %144, 1
  %148 = or i1 %146, %147
  %149 = zext i1 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %149, i8* %150, align 1, !tbaa !2432
  %151 = and i32 %144, 255
  %152 = call i32 @llvm.ctpop.i32(i32 %151) #16
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %155, i8* %156, align 1, !tbaa !2446
  %157 = xor i64 1, %140
  %158 = trunc i64 %157 to i32
  %159 = xor i32 %158, %144
  %160 = lshr i32 %159, 4
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %162, i8* %163, align 1, !tbaa !2447
  %164 = icmp eq i32 %144, 0
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %165, i8* %166, align 1, !tbaa !2448
  %167 = lshr i32 %144, 31
  %168 = trunc i32 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %168, i8* %169, align 1, !tbaa !2449
  %170 = lshr i32 %143, 31
  %171 = xor i32 %167, %170
  %172 = add nuw nsw i32 %171, %167
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %174, i8* %175, align 1, !tbaa !2450
  %176 = load i64, i64* %RBP
  %177 = sub i64 %176, 20
  %178 = load i32, i32* %EAX
  %179 = zext i32 %178 to i64
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 3
  store i64 %181, i64* %PC
  %182 = inttoptr i64 %177 to i32*
  store i32 %178, i32* %182
  %183 = load i64, i64* %PC
  %184 = sub i64 %183, 40
  %185 = load i64, i64* %PC
  %186 = add i64 %185, 5
  store i64 %186, i64* %PC
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %184, i64* %187, align 8, !tbaa !2428
  br label %block_400533

block_400571:                                     ; preds = %block_400567
  %188 = sub i64 %6777, 96
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 3
  store i64 %190, i64* %PC
  %191 = inttoptr i64 %188 to i32*
  %192 = load i32, i32* %191
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RAX, align 8, !tbaa !2428
  %194 = load i64, i64* %RAX
  %195 = load i64, i64* %RBP
  %196 = sub i64 %195, 48
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 3
  store i64 %198, i64* %PC
  %199 = trunc i64 %194 to i32
  %200 = inttoptr i64 %196 to i32*
  %201 = load i32, i32* %200
  %202 = add i32 %201, %199
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %RAX, align 8, !tbaa !2428
  %204 = icmp ult i32 %202, %199
  %205 = icmp ult i32 %202, %201
  %206 = or i1 %204, %205
  %207 = zext i1 %206 to i8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %207, i8* %208, align 1, !tbaa !2432
  %209 = and i32 %202, 255
  %210 = call i32 @llvm.ctpop.i32(i32 %209) #16
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %213, i8* %214, align 1, !tbaa !2446
  %215 = xor i32 %201, %199
  %216 = xor i32 %215, %202
  %217 = lshr i32 %216, 4
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %219, i8* %220, align 1, !tbaa !2447
  %221 = icmp eq i32 %202, 0
  %222 = zext i1 %221 to i8
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %222, i8* %223, align 1, !tbaa !2448
  %224 = lshr i32 %202, 31
  %225 = trunc i32 %224 to i8
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %225, i8* %226, align 1, !tbaa !2449
  %227 = lshr i32 %199, 31
  %228 = lshr i32 %201, 31
  %229 = xor i32 %224, %227
  %230 = xor i32 %224, %228
  %231 = add nuw nsw i32 %229, %230
  %232 = icmp eq i32 %231, 2
  %233 = zext i1 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %233, i8* %234, align 1, !tbaa !2450
  %235 = load i64, i64* %RAX
  %236 = load i64, i64* %PC
  %237 = add i64 %236, 3
  store i64 %237, i64* %PC
  %238 = and i64 %235, 4294967295
  %239 = shl i64 %238, 6
  %240 = trunc i64 %239 to i32
  %241 = icmp slt i32 %240, 0
  %242 = shl i32 %240, 1
  %243 = zext i32 %242 to i64
  store i64 %243, i64* %RAX, align 8, !tbaa !2428
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %245 = zext i1 %241 to i8
  store i8 %245, i8* %244, align 1, !tbaa !2451
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %247 = and i32 %242, 254
  %248 = call i32 @llvm.ctpop.i32(i32 %247) #16
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  %251 = xor i8 %250, 1
  store i8 %251, i8* %246, align 1, !tbaa !2451
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %252, align 1, !tbaa !2451
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %254 = icmp eq i32 %242, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %253, align 1, !tbaa !2451
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %257 = lshr i32 %242, 31
  %258 = trunc i32 %257 to i8
  store i8 %258, i8* %256, align 1, !tbaa !2451
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %259, align 1, !tbaa !2451
  %260 = load i64, i64* %RBP
  %261 = sub i64 %260, 96
  %262 = load i64, i64* %PC
  %263 = add i64 %262, 3
  store i64 %263, i64* %PC
  %264 = inttoptr i64 %261 to i32*
  %265 = load i32, i32* %264
  %266 = zext i32 %265 to i64
  store i64 %266, i64* %RCX, align 8, !tbaa !2428
  %267 = load i64, i64* %RCX
  %268 = load i64, i64* %RBP
  %269 = sub i64 %268, 48
  %270 = load i64, i64* %PC
  %271 = add i64 %270, 3
  store i64 %271, i64* %PC
  %272 = trunc i64 %267 to i32
  %273 = inttoptr i64 %269 to i32*
  %274 = load i32, i32* %273
  %275 = add i32 %274, %272
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RCX, align 8, !tbaa !2428
  %277 = icmp ult i32 %275, %272
  %278 = icmp ult i32 %275, %274
  %279 = or i1 %277, %278
  %280 = zext i1 %279 to i8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %280, i8* %281, align 1, !tbaa !2432
  %282 = and i32 %275, 255
  %283 = call i32 @llvm.ctpop.i32(i32 %282) #16
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  %286 = xor i8 %285, 1
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %286, i8* %287, align 1, !tbaa !2446
  %288 = xor i32 %274, %272
  %289 = xor i32 %288, %275
  %290 = lshr i32 %289, 4
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %292, i8* %293, align 1, !tbaa !2447
  %294 = icmp eq i32 %275, 0
  %295 = zext i1 %294 to i8
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %295, i8* %296, align 1, !tbaa !2448
  %297 = lshr i32 %275, 31
  %298 = trunc i32 %297 to i8
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %298, i8* %299, align 1, !tbaa !2449
  %300 = lshr i32 %272, 31
  %301 = lshr i32 %274, 31
  %302 = xor i32 %297, %300
  %303 = xor i32 %297, %301
  %304 = add nuw nsw i32 %302, %303
  %305 = icmp eq i32 %304, 2
  %306 = zext i1 %305 to i8
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %306, i8* %307, align 1, !tbaa !2450
  %308 = load i64, i64* %RCX
  %309 = load i64, i64* %PC
  %310 = add i64 %309, 3
  store i64 %310, i64* %PC
  %311 = and i64 %308, 4294967295
  %312 = lshr i64 %311, 24
  %313 = trunc i64 %312 to i8
  %314 = and i8 %313, 1
  %315 = lshr i64 %312, 1
  %316 = trunc i64 %315 to i32
  %317 = and i32 %316, 2147483647
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RCX, align 8, !tbaa !2428
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %314, i8* %319, align 1, !tbaa !2451
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %321 = and i32 %316, 255
  %322 = call i32 @llvm.ctpop.i32(i32 %321) #16
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  store i8 %325, i8* %320, align 1, !tbaa !2451
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %326, align 1, !tbaa !2451
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %328 = icmp eq i32 %317, 0
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %327, align 1, !tbaa !2451
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %330, align 1, !tbaa !2451
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %331, align 1, !tbaa !2451
  %332 = load i64, i64* %RAX
  %333 = load i32, i32* %ECX
  %334 = zext i32 %333 to i64
  %335 = load i64, i64* %PC
  %336 = add i64 %335, 2
  store i64 %336, i64* %PC
  %337 = or i64 %334, %332
  %338 = trunc i64 %337 to i32
  %339 = and i64 %337, 4294967295
  store i64 %339, i64* %RAX, align 8, !tbaa !2428
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %340, align 1, !tbaa !2432
  %341 = and i32 %338, 255
  %342 = call i32 @llvm.ctpop.i32(i32 %341) #16
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  %345 = xor i8 %344, 1
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %345, i8* %346, align 1, !tbaa !2446
  %347 = icmp eq i32 %338, 0
  %348 = zext i1 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %348, i8* %349, align 1, !tbaa !2448
  %350 = lshr i32 %338, 31
  %351 = trunc i32 %350 to i8
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %351, i8* %352, align 1, !tbaa !2449
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %353, align 1, !tbaa !2450
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %354, align 1, !tbaa !2447
  %355 = load i64, i64* %RAX
  %356 = load i64, i64* %RBP
  %357 = sub i64 %356, 80
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 3
  store i64 %359, i64* %PC
  %360 = trunc i64 %355 to i32
  %361 = inttoptr i64 %357 to i32*
  %362 = load i32, i32* %361
  %363 = xor i32 %362, %360
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RAX, align 8, !tbaa !2428
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %365, align 1, !tbaa !2432
  %366 = and i32 %363, 255
  %367 = call i32 @llvm.ctpop.i32(i32 %366) #16
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  %370 = xor i8 %369, 1
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %370, i8* %371, align 1, !tbaa !2446
  %372 = icmp eq i32 %363, 0
  %373 = zext i1 %372 to i8
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %373, i8* %374, align 1, !tbaa !2448
  %375 = lshr i32 %363, 31
  %376 = trunc i32 %375 to i8
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %376, i8* %377, align 1, !tbaa !2449
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %378, align 1, !tbaa !2450
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %379, align 1, !tbaa !2447
  %380 = load i64, i64* %RBP
  %381 = sub i64 %380, 80
  %382 = load i32, i32* %EAX
  %383 = zext i32 %382 to i64
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 3
  store i64 %385, i64* %PC
  %386 = inttoptr i64 %381 to i32*
  store i32 %382, i32* %386
  %387 = load i64, i64* %RBP
  %388 = sub i64 %387, 80
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 3
  store i64 %390, i64* %PC
  %391 = inttoptr i64 %388 to i32*
  %392 = load i32, i32* %391
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RAX, align 8, !tbaa !2428
  %394 = load i64, i64* %RAX
  %395 = load i64, i64* %RBP
  %396 = sub i64 %395, 96
  %397 = load i64, i64* %PC
  %398 = add i64 %397, 3
  store i64 %398, i64* %PC
  %399 = trunc i64 %394 to i32
  %400 = inttoptr i64 %396 to i32*
  %401 = load i32, i32* %400
  %402 = add i32 %401, %399
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RAX, align 8, !tbaa !2428
  %404 = icmp ult i32 %402, %399
  %405 = icmp ult i32 %402, %401
  %406 = or i1 %404, %405
  %407 = zext i1 %406 to i8
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %407, i8* %408, align 1, !tbaa !2432
  %409 = and i32 %402, 255
  %410 = call i32 @llvm.ctpop.i32(i32 %409) #16
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %413, i8* %414, align 1, !tbaa !2446
  %415 = xor i32 %401, %399
  %416 = xor i32 %415, %402
  %417 = lshr i32 %416, 4
  %418 = trunc i32 %417 to i8
  %419 = and i8 %418, 1
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %419, i8* %420, align 1, !tbaa !2447
  %421 = icmp eq i32 %402, 0
  %422 = zext i1 %421 to i8
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %422, i8* %423, align 1, !tbaa !2448
  %424 = lshr i32 %402, 31
  %425 = trunc i32 %424 to i8
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %425, i8* %426, align 1, !tbaa !2449
  %427 = lshr i32 %399, 31
  %428 = lshr i32 %401, 31
  %429 = xor i32 %424, %427
  %430 = xor i32 %424, %428
  %431 = add nuw nsw i32 %429, %430
  %432 = icmp eq i32 %431, 2
  %433 = zext i1 %432 to i8
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %433, i8* %434, align 1, !tbaa !2450
  %435 = load i64, i64* %RAX
  %436 = load i64, i64* %PC
  %437 = add i64 %436, 3
  store i64 %437, i64* %PC
  %438 = and i64 %435, 4294967295
  %439 = shl i64 %438, 8
  %440 = trunc i64 %439 to i32
  %441 = icmp slt i32 %440, 0
  %442 = shl i32 %440, 1
  %443 = zext i32 %442 to i64
  store i64 %443, i64* %RAX, align 8, !tbaa !2428
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %445 = zext i1 %441 to i8
  store i8 %445, i8* %444, align 1, !tbaa !2451
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %446, align 1, !tbaa !2451
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %447, align 1, !tbaa !2451
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %449 = icmp eq i32 %442, 0
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %448, align 1, !tbaa !2451
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %452 = lshr i32 %442, 31
  %453 = trunc i32 %452 to i8
  store i8 %453, i8* %451, align 1, !tbaa !2451
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %454, align 1, !tbaa !2451
  %455 = load i64, i64* %RBP
  %456 = sub i64 %455, 80
  %457 = load i64, i64* %PC
  %458 = add i64 %457, 3
  store i64 %458, i64* %PC
  %459 = inttoptr i64 %456 to i32*
  %460 = load i32, i32* %459
  %461 = zext i32 %460 to i64
  store i64 %461, i64* %RCX, align 8, !tbaa !2428
  %462 = load i64, i64* %RCX
  %463 = load i64, i64* %RBP
  %464 = sub i64 %463, 96
  %465 = load i64, i64* %PC
  %466 = add i64 %465, 3
  store i64 %466, i64* %PC
  %467 = trunc i64 %462 to i32
  %468 = inttoptr i64 %464 to i32*
  %469 = load i32, i32* %468
  %470 = add i32 %469, %467
  %471 = zext i32 %470 to i64
  store i64 %471, i64* %RCX, align 8, !tbaa !2428
  %472 = icmp ult i32 %470, %467
  %473 = icmp ult i32 %470, %469
  %474 = or i1 %472, %473
  %475 = zext i1 %474 to i8
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %475, i8* %476, align 1, !tbaa !2432
  %477 = and i32 %470, 255
  %478 = call i32 @llvm.ctpop.i32(i32 %477) #16
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %481, i8* %482, align 1, !tbaa !2446
  %483 = xor i32 %469, %467
  %484 = xor i32 %483, %470
  %485 = lshr i32 %484, 4
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %487, i8* %488, align 1, !tbaa !2447
  %489 = icmp eq i32 %470, 0
  %490 = zext i1 %489 to i8
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %490, i8* %491, align 1, !tbaa !2448
  %492 = lshr i32 %470, 31
  %493 = trunc i32 %492 to i8
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %493, i8* %494, align 1, !tbaa !2449
  %495 = lshr i32 %467, 31
  %496 = lshr i32 %469, 31
  %497 = xor i32 %492, %495
  %498 = xor i32 %492, %496
  %499 = add nuw nsw i32 %497, %498
  %500 = icmp eq i32 %499, 2
  %501 = zext i1 %500 to i8
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %501, i8* %502, align 1, !tbaa !2450
  %503 = load i64, i64* %RCX
  %504 = load i64, i64* %PC
  %505 = add i64 %504, 3
  store i64 %505, i64* %PC
  %506 = and i64 %503, 4294967295
  %507 = lshr i64 %506, 22
  %508 = trunc i64 %507 to i8
  %509 = and i8 %508, 1
  %510 = lshr i64 %507, 1
  %511 = trunc i64 %510 to i32
  %512 = and i32 %511, 2147483647
  %513 = zext i32 %512 to i64
  store i64 %513, i64* %RCX, align 8, !tbaa !2428
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %509, i8* %514, align 1, !tbaa !2451
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %516 = and i32 %511, 255
  %517 = call i32 @llvm.ctpop.i32(i32 %516) #16
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  %520 = xor i8 %519, 1
  store i8 %520, i8* %515, align 1, !tbaa !2451
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %521, align 1, !tbaa !2451
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %523 = icmp eq i32 %512, 0
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %522, align 1, !tbaa !2451
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %525, align 1, !tbaa !2451
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %526, align 1, !tbaa !2451
  %527 = load i64, i64* %RAX
  %528 = load i32, i32* %ECX
  %529 = zext i32 %528 to i64
  %530 = load i64, i64* %PC
  %531 = add i64 %530, 2
  store i64 %531, i64* %PC
  %532 = or i64 %529, %527
  %533 = trunc i64 %532 to i32
  %534 = and i64 %532, 4294967295
  store i64 %534, i64* %RAX, align 8, !tbaa !2428
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %535, align 1, !tbaa !2432
  %536 = and i32 %533, 255
  %537 = call i32 @llvm.ctpop.i32(i32 %536) #16
  %538 = trunc i32 %537 to i8
  %539 = and i8 %538, 1
  %540 = xor i8 %539, 1
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %540, i8* %541, align 1, !tbaa !2446
  %542 = icmp eq i32 %533, 0
  %543 = zext i1 %542 to i8
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %543, i8* %544, align 1, !tbaa !2448
  %545 = lshr i32 %533, 31
  %546 = trunc i32 %545 to i8
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %546, i8* %547, align 1, !tbaa !2449
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %548, align 1, !tbaa !2450
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %549, align 1, !tbaa !2447
  %550 = load i64, i64* %RAX
  %551 = load i64, i64* %RBP
  %552 = sub i64 %551, 64
  %553 = load i64, i64* %PC
  %554 = add i64 %553, 3
  store i64 %554, i64* %PC
  %555 = trunc i64 %550 to i32
  %556 = inttoptr i64 %552 to i32*
  %557 = load i32, i32* %556
  %558 = xor i32 %557, %555
  %559 = zext i32 %558 to i64
  store i64 %559, i64* %RAX, align 8, !tbaa !2428
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %560, align 1, !tbaa !2432
  %561 = and i32 %558, 255
  %562 = call i32 @llvm.ctpop.i32(i32 %561) #16
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %565, i8* %566, align 1, !tbaa !2446
  %567 = icmp eq i32 %558, 0
  %568 = zext i1 %567 to i8
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %568, i8* %569, align 1, !tbaa !2448
  %570 = lshr i32 %558, 31
  %571 = trunc i32 %570 to i8
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %571, i8* %572, align 1, !tbaa !2449
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %573, align 1, !tbaa !2450
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %574, align 1, !tbaa !2447
  %575 = load i64, i64* %RBP
  %576 = sub i64 %575, 64
  %577 = load i32, i32* %EAX
  %578 = zext i32 %577 to i64
  %579 = load i64, i64* %PC
  %580 = add i64 %579, 3
  store i64 %580, i64* %PC
  %581 = inttoptr i64 %576 to i32*
  store i32 %577, i32* %581
  %582 = load i64, i64* %RBP
  %583 = sub i64 %582, 64
  %584 = load i64, i64* %PC
  %585 = add i64 %584, 3
  store i64 %585, i64* %PC
  %586 = inttoptr i64 %583 to i32*
  %587 = load i32, i32* %586
  %588 = zext i32 %587 to i64
  store i64 %588, i64* %RAX, align 8, !tbaa !2428
  %589 = load i64, i64* %RAX
  %590 = load i64, i64* %RBP
  %591 = sub i64 %590, 80
  %592 = load i64, i64* %PC
  %593 = add i64 %592, 3
  store i64 %593, i64* %PC
  %594 = trunc i64 %589 to i32
  %595 = inttoptr i64 %591 to i32*
  %596 = load i32, i32* %595
  %597 = add i32 %596, %594
  %598 = zext i32 %597 to i64
  store i64 %598, i64* %RAX, align 8, !tbaa !2428
  %599 = icmp ult i32 %597, %594
  %600 = icmp ult i32 %597, %596
  %601 = or i1 %599, %600
  %602 = zext i1 %601 to i8
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %602, i8* %603, align 1, !tbaa !2432
  %604 = and i32 %597, 255
  %605 = call i32 @llvm.ctpop.i32(i32 %604) #16
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  %608 = xor i8 %607, 1
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %608, i8* %609, align 1, !tbaa !2446
  %610 = xor i32 %596, %594
  %611 = xor i32 %610, %597
  %612 = lshr i32 %611, 4
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %614, i8* %615, align 1, !tbaa !2447
  %616 = icmp eq i32 %597, 0
  %617 = zext i1 %616 to i8
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %617, i8* %618, align 1, !tbaa !2448
  %619 = lshr i32 %597, 31
  %620 = trunc i32 %619 to i8
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %620, i8* %621, align 1, !tbaa !2449
  %622 = lshr i32 %594, 31
  %623 = lshr i32 %596, 31
  %624 = xor i32 %619, %622
  %625 = xor i32 %619, %623
  %626 = add nuw nsw i32 %624, %625
  %627 = icmp eq i32 %626, 2
  %628 = zext i1 %627 to i8
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %628, i8* %629, align 1, !tbaa !2450
  %630 = load i64, i64* %RAX
  %631 = load i64, i64* %PC
  %632 = add i64 %631, 3
  store i64 %632, i64* %PC
  %633 = and i64 %630, 4294967295
  %634 = shl i64 %633, 12
  %635 = trunc i64 %634 to i32
  %636 = icmp slt i32 %635, 0
  %637 = shl i32 %635, 1
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RAX, align 8, !tbaa !2428
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %640 = zext i1 %636 to i8
  store i8 %640, i8* %639, align 1, !tbaa !2451
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %641, align 1, !tbaa !2451
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %642, align 1, !tbaa !2451
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %644 = icmp eq i32 %637, 0
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %643, align 1, !tbaa !2451
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %647 = lshr i32 %637, 31
  %648 = trunc i32 %647 to i8
  store i8 %648, i8* %646, align 1, !tbaa !2451
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %649, align 1, !tbaa !2451
  %650 = load i64, i64* %RBP
  %651 = sub i64 %650, 64
  %652 = load i64, i64* %PC
  %653 = add i64 %652, 3
  store i64 %653, i64* %PC
  %654 = inttoptr i64 %651 to i32*
  %655 = load i32, i32* %654
  %656 = zext i32 %655 to i64
  store i64 %656, i64* %RCX, align 8, !tbaa !2428
  %657 = load i64, i64* %RCX
  %658 = load i64, i64* %RBP
  %659 = sub i64 %658, 80
  %660 = load i64, i64* %PC
  %661 = add i64 %660, 3
  store i64 %661, i64* %PC
  %662 = trunc i64 %657 to i32
  %663 = inttoptr i64 %659 to i32*
  %664 = load i32, i32* %663
  %665 = add i32 %664, %662
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RCX, align 8, !tbaa !2428
  %667 = icmp ult i32 %665, %662
  %668 = icmp ult i32 %665, %664
  %669 = or i1 %667, %668
  %670 = zext i1 %669 to i8
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %670, i8* %671, align 1, !tbaa !2432
  %672 = and i32 %665, 255
  %673 = call i32 @llvm.ctpop.i32(i32 %672) #16
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %676, i8* %677, align 1, !tbaa !2446
  %678 = xor i32 %664, %662
  %679 = xor i32 %678, %665
  %680 = lshr i32 %679, 4
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %682, i8* %683, align 1, !tbaa !2447
  %684 = icmp eq i32 %665, 0
  %685 = zext i1 %684 to i8
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %685, i8* %686, align 1, !tbaa !2448
  %687 = lshr i32 %665, 31
  %688 = trunc i32 %687 to i8
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %688, i8* %689, align 1, !tbaa !2449
  %690 = lshr i32 %662, 31
  %691 = lshr i32 %664, 31
  %692 = xor i32 %687, %690
  %693 = xor i32 %687, %691
  %694 = add nuw nsw i32 %692, %693
  %695 = icmp eq i32 %694, 2
  %696 = zext i1 %695 to i8
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %696, i8* %697, align 1, !tbaa !2450
  %698 = load i64, i64* %RCX
  %699 = load i64, i64* %PC
  %700 = add i64 %699, 3
  store i64 %700, i64* %PC
  %701 = and i64 %698, 4294967295
  %702 = lshr i64 %701, 18
  %703 = trunc i64 %702 to i8
  %704 = and i8 %703, 1
  %705 = lshr i64 %702, 1
  %706 = trunc i64 %705 to i32
  %707 = and i32 %706, 2147483647
  %708 = zext i32 %707 to i64
  store i64 %708, i64* %RCX, align 8, !tbaa !2428
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %704, i8* %709, align 1, !tbaa !2451
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %711 = and i32 %706, 255
  %712 = call i32 @llvm.ctpop.i32(i32 %711) #16
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  %715 = xor i8 %714, 1
  store i8 %715, i8* %710, align 1, !tbaa !2451
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %716, align 1, !tbaa !2451
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %718 = icmp eq i32 %707, 0
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %717, align 1, !tbaa !2451
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %720, align 1, !tbaa !2451
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %721, align 1, !tbaa !2451
  %722 = load i64, i64* %RAX
  %723 = load i32, i32* %ECX
  %724 = zext i32 %723 to i64
  %725 = load i64, i64* %PC
  %726 = add i64 %725, 2
  store i64 %726, i64* %PC
  %727 = or i64 %724, %722
  %728 = trunc i64 %727 to i32
  %729 = and i64 %727, 4294967295
  store i64 %729, i64* %RAX, align 8, !tbaa !2428
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %730, align 1, !tbaa !2432
  %731 = and i32 %728, 255
  %732 = call i32 @llvm.ctpop.i32(i32 %731) #16
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %735, i8* %736, align 1, !tbaa !2446
  %737 = icmp eq i32 %728, 0
  %738 = zext i1 %737 to i8
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %738, i8* %739, align 1, !tbaa !2448
  %740 = lshr i32 %728, 31
  %741 = trunc i32 %740 to i8
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %741, i8* %742, align 1, !tbaa !2449
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %743, align 1, !tbaa !2450
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %744, align 1, !tbaa !2447
  %745 = load i64, i64* %RAX
  %746 = load i64, i64* %RBP
  %747 = sub i64 %746, 48
  %748 = load i64, i64* %PC
  %749 = add i64 %748, 3
  store i64 %749, i64* %PC
  %750 = trunc i64 %745 to i32
  %751 = inttoptr i64 %747 to i32*
  %752 = load i32, i32* %751
  %753 = xor i32 %752, %750
  %754 = zext i32 %753 to i64
  store i64 %754, i64* %RAX, align 8, !tbaa !2428
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %755, align 1, !tbaa !2432
  %756 = and i32 %753, 255
  %757 = call i32 @llvm.ctpop.i32(i32 %756) #16
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = xor i8 %759, 1
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %760, i8* %761, align 1, !tbaa !2446
  %762 = icmp eq i32 %753, 0
  %763 = zext i1 %762 to i8
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %763, i8* %764, align 1, !tbaa !2448
  %765 = lshr i32 %753, 31
  %766 = trunc i32 %765 to i8
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %766, i8* %767, align 1, !tbaa !2449
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %768, align 1, !tbaa !2450
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %769, align 1, !tbaa !2447
  %770 = load i64, i64* %RBP
  %771 = sub i64 %770, 48
  %772 = load i32, i32* %EAX
  %773 = zext i32 %772 to i64
  %774 = load i64, i64* %PC
  %775 = add i64 %774, 3
  store i64 %775, i64* %PC
  %776 = inttoptr i64 %771 to i32*
  store i32 %772, i32* %776
  %777 = load i64, i64* %RBP
  %778 = sub i64 %777, 48
  %779 = load i64, i64* %PC
  %780 = add i64 %779, 3
  store i64 %780, i64* %PC
  %781 = inttoptr i64 %778 to i32*
  %782 = load i32, i32* %781
  %783 = zext i32 %782 to i64
  store i64 %783, i64* %RAX, align 8, !tbaa !2428
  %784 = load i64, i64* %RAX
  %785 = load i64, i64* %RBP
  %786 = sub i64 %785, 64
  %787 = load i64, i64* %PC
  %788 = add i64 %787, 3
  store i64 %788, i64* %PC
  %789 = trunc i64 %784 to i32
  %790 = inttoptr i64 %786 to i32*
  %791 = load i32, i32* %790
  %792 = add i32 %791, %789
  %793 = zext i32 %792 to i64
  store i64 %793, i64* %RAX, align 8, !tbaa !2428
  %794 = icmp ult i32 %792, %789
  %795 = icmp ult i32 %792, %791
  %796 = or i1 %794, %795
  %797 = zext i1 %796 to i8
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %797, i8* %798, align 1, !tbaa !2432
  %799 = and i32 %792, 255
  %800 = call i32 @llvm.ctpop.i32(i32 %799) #16
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  %803 = xor i8 %802, 1
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %803, i8* %804, align 1, !tbaa !2446
  %805 = xor i32 %791, %789
  %806 = xor i32 %805, %792
  %807 = lshr i32 %806, 4
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %809, i8* %810, align 1, !tbaa !2447
  %811 = icmp eq i32 %792, 0
  %812 = zext i1 %811 to i8
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %812, i8* %813, align 1, !tbaa !2448
  %814 = lshr i32 %792, 31
  %815 = trunc i32 %814 to i8
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %815, i8* %816, align 1, !tbaa !2449
  %817 = lshr i32 %789, 31
  %818 = lshr i32 %791, 31
  %819 = xor i32 %814, %817
  %820 = xor i32 %814, %818
  %821 = add nuw nsw i32 %819, %820
  %822 = icmp eq i32 %821, 2
  %823 = zext i1 %822 to i8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %823, i8* %824, align 1, !tbaa !2450
  %825 = load i64, i64* %RAX
  %826 = load i64, i64* %PC
  %827 = add i64 %826, 3
  store i64 %827, i64* %PC
  %828 = and i64 %825, 4294967295
  %829 = shl i64 %828, 17
  %830 = trunc i64 %829 to i32
  %831 = icmp slt i32 %830, 0
  %832 = shl i32 %830, 1
  %833 = zext i32 %832 to i64
  store i64 %833, i64* %RAX, align 8, !tbaa !2428
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %835 = zext i1 %831 to i8
  store i8 %835, i8* %834, align 1, !tbaa !2451
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %836, align 1, !tbaa !2451
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %837, align 1, !tbaa !2451
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %839 = icmp eq i32 %832, 0
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %838, align 1, !tbaa !2451
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %842 = lshr i32 %832, 31
  %843 = trunc i32 %842 to i8
  store i8 %843, i8* %841, align 1, !tbaa !2451
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %844, align 1, !tbaa !2451
  %845 = load i64, i64* %RBP
  %846 = sub i64 %845, 48
  %847 = load i64, i64* %PC
  %848 = add i64 %847, 3
  store i64 %848, i64* %PC
  %849 = inttoptr i64 %846 to i32*
  %850 = load i32, i32* %849
  %851 = zext i32 %850 to i64
  store i64 %851, i64* %RCX, align 8, !tbaa !2428
  %852 = load i64, i64* %RCX
  %853 = load i64, i64* %RBP
  %854 = sub i64 %853, 64
  %855 = load i64, i64* %PC
  %856 = add i64 %855, 3
  store i64 %856, i64* %PC
  %857 = trunc i64 %852 to i32
  %858 = inttoptr i64 %854 to i32*
  %859 = load i32, i32* %858
  %860 = add i32 %859, %857
  %861 = zext i32 %860 to i64
  store i64 %861, i64* %RCX, align 8, !tbaa !2428
  %862 = icmp ult i32 %860, %857
  %863 = icmp ult i32 %860, %859
  %864 = or i1 %862, %863
  %865 = zext i1 %864 to i8
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %865, i8* %866, align 1, !tbaa !2432
  %867 = and i32 %860, 255
  %868 = call i32 @llvm.ctpop.i32(i32 %867) #16
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = xor i8 %870, 1
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %871, i8* %872, align 1, !tbaa !2446
  %873 = xor i32 %859, %857
  %874 = xor i32 %873, %860
  %875 = lshr i32 %874, 4
  %876 = trunc i32 %875 to i8
  %877 = and i8 %876, 1
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %877, i8* %878, align 1, !tbaa !2447
  %879 = icmp eq i32 %860, 0
  %880 = zext i1 %879 to i8
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %880, i8* %881, align 1, !tbaa !2448
  %882 = lshr i32 %860, 31
  %883 = trunc i32 %882 to i8
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %883, i8* %884, align 1, !tbaa !2449
  %885 = lshr i32 %857, 31
  %886 = lshr i32 %859, 31
  %887 = xor i32 %882, %885
  %888 = xor i32 %882, %886
  %889 = add nuw nsw i32 %887, %888
  %890 = icmp eq i32 %889, 2
  %891 = zext i1 %890 to i8
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %891, i8* %892, align 1, !tbaa !2450
  %893 = load i64, i64* %RCX
  %894 = load i64, i64* %PC
  %895 = add i64 %894, 3
  store i64 %895, i64* %PC
  %896 = and i64 %893, 4294967295
  %897 = lshr i64 %896, 13
  %898 = trunc i64 %897 to i8
  %899 = and i8 %898, 1
  %900 = lshr i64 %897, 1
  %901 = trunc i64 %900 to i32
  %902 = and i32 %901, 2147483647
  %903 = zext i32 %902 to i64
  store i64 %903, i64* %RCX, align 8, !tbaa !2428
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %899, i8* %904, align 1, !tbaa !2451
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %906 = and i32 %901, 255
  %907 = call i32 @llvm.ctpop.i32(i32 %906) #16
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  %910 = xor i8 %909, 1
  store i8 %910, i8* %905, align 1, !tbaa !2451
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %911, align 1, !tbaa !2451
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %913 = icmp eq i32 %902, 0
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %912, align 1, !tbaa !2451
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %915, align 1, !tbaa !2451
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %916, align 1, !tbaa !2451
  %917 = load i64, i64* %RAX
  %918 = load i32, i32* %ECX
  %919 = zext i32 %918 to i64
  %920 = load i64, i64* %PC
  %921 = add i64 %920, 2
  store i64 %921, i64* %PC
  %922 = or i64 %919, %917
  %923 = trunc i64 %922 to i32
  %924 = and i64 %922, 4294967295
  store i64 %924, i64* %RAX, align 8, !tbaa !2428
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %925, align 1, !tbaa !2432
  %926 = and i32 %923, 255
  %927 = call i32 @llvm.ctpop.i32(i32 %926) #16
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  %930 = xor i8 %929, 1
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %930, i8* %931, align 1, !tbaa !2446
  %932 = icmp eq i32 %923, 0
  %933 = zext i1 %932 to i8
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %933, i8* %934, align 1, !tbaa !2448
  %935 = lshr i32 %923, 31
  %936 = trunc i32 %935 to i8
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %936, i8* %937, align 1, !tbaa !2449
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %938, align 1, !tbaa !2450
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %939, align 1, !tbaa !2447
  %940 = load i64, i64* %RAX
  %941 = load i64, i64* %RBP
  %942 = sub i64 %941, 96
  %943 = load i64, i64* %PC
  %944 = add i64 %943, 3
  store i64 %944, i64* %PC
  %945 = trunc i64 %940 to i32
  %946 = inttoptr i64 %942 to i32*
  %947 = load i32, i32* %946
  %948 = xor i32 %947, %945
  %949 = zext i32 %948 to i64
  store i64 %949, i64* %RAX, align 8, !tbaa !2428
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %950, align 1, !tbaa !2432
  %951 = and i32 %948, 255
  %952 = call i32 @llvm.ctpop.i32(i32 %951) #16
  %953 = trunc i32 %952 to i8
  %954 = and i8 %953, 1
  %955 = xor i8 %954, 1
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %955, i8* %956, align 1, !tbaa !2446
  %957 = icmp eq i32 %948, 0
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %958, i8* %959, align 1, !tbaa !2448
  %960 = lshr i32 %948, 31
  %961 = trunc i32 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %961, i8* %962, align 1, !tbaa !2449
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %963, align 1, !tbaa !2450
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %964, align 1, !tbaa !2447
  %965 = load i64, i64* %RBP
  %966 = sub i64 %965, 96
  %967 = load i32, i32* %EAX
  %968 = zext i32 %967 to i64
  %969 = load i64, i64* %PC
  %970 = add i64 %969, 3
  store i64 %970, i64* %PC
  %971 = inttoptr i64 %966 to i32*
  store i32 %967, i32* %971
  %972 = load i64, i64* %RBP
  %973 = sub i64 %972, 76
  %974 = load i64, i64* %PC
  %975 = add i64 %974, 3
  store i64 %975, i64* %PC
  %976 = inttoptr i64 %973 to i32*
  %977 = load i32, i32* %976
  %978 = zext i32 %977 to i64
  store i64 %978, i64* %RAX, align 8, !tbaa !2428
  %979 = load i64, i64* %RAX
  %980 = load i64, i64* %RBP
  %981 = sub i64 %980, 92
  %982 = load i64, i64* %PC
  %983 = add i64 %982, 3
  store i64 %983, i64* %PC
  %984 = trunc i64 %979 to i32
  %985 = inttoptr i64 %981 to i32*
  %986 = load i32, i32* %985
  %987 = add i32 %986, %984
  %988 = zext i32 %987 to i64
  store i64 %988, i64* %RAX, align 8, !tbaa !2428
  %989 = icmp ult i32 %987, %984
  %990 = icmp ult i32 %987, %986
  %991 = or i1 %989, %990
  %992 = zext i1 %991 to i8
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %992, i8* %993, align 1, !tbaa !2432
  %994 = and i32 %987, 255
  %995 = call i32 @llvm.ctpop.i32(i32 %994) #16
  %996 = trunc i32 %995 to i8
  %997 = and i8 %996, 1
  %998 = xor i8 %997, 1
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %998, i8* %999, align 1, !tbaa !2446
  %1000 = xor i32 %986, %984
  %1001 = xor i32 %1000, %987
  %1002 = lshr i32 %1001, 4
  %1003 = trunc i32 %1002 to i8
  %1004 = and i8 %1003, 1
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1004, i8* %1005, align 1, !tbaa !2447
  %1006 = icmp eq i32 %987, 0
  %1007 = zext i1 %1006 to i8
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1007, i8* %1008, align 1, !tbaa !2448
  %1009 = lshr i32 %987, 31
  %1010 = trunc i32 %1009 to i8
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1010, i8* %1011, align 1, !tbaa !2449
  %1012 = lshr i32 %984, 31
  %1013 = lshr i32 %986, 31
  %1014 = xor i32 %1009, %1012
  %1015 = xor i32 %1009, %1013
  %1016 = add nuw nsw i32 %1014, %1015
  %1017 = icmp eq i32 %1016, 2
  %1018 = zext i1 %1017 to i8
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1018, i8* %1019, align 1, !tbaa !2450
  %1020 = load i64, i64* %RAX
  %1021 = load i64, i64* %PC
  %1022 = add i64 %1021, 3
  store i64 %1022, i64* %PC
  %1023 = and i64 %1020, 4294967295
  %1024 = shl i64 %1023, 6
  %1025 = trunc i64 %1024 to i32
  %1026 = icmp slt i32 %1025, 0
  %1027 = shl i32 %1025, 1
  %1028 = zext i32 %1027 to i64
  store i64 %1028, i64* %RAX, align 8, !tbaa !2428
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1030 = zext i1 %1026 to i8
  store i8 %1030, i8* %1029, align 1, !tbaa !2451
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1032 = and i32 %1027, 254
  %1033 = call i32 @llvm.ctpop.i32(i32 %1032) #16
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  store i8 %1036, i8* %1031, align 1, !tbaa !2451
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1037, align 1, !tbaa !2451
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1039 = icmp eq i32 %1027, 0
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %1038, align 1, !tbaa !2451
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1042 = lshr i32 %1027, 31
  %1043 = trunc i32 %1042 to i8
  store i8 %1043, i8* %1041, align 1, !tbaa !2451
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1044, align 1, !tbaa !2451
  %1045 = load i64, i64* %RBP
  %1046 = sub i64 %1045, 76
  %1047 = load i64, i64* %PC
  %1048 = add i64 %1047, 3
  store i64 %1048, i64* %PC
  %1049 = inttoptr i64 %1046 to i32*
  %1050 = load i32, i32* %1049
  %1051 = zext i32 %1050 to i64
  store i64 %1051, i64* %RCX, align 8, !tbaa !2428
  %1052 = load i64, i64* %RCX
  %1053 = load i64, i64* %RBP
  %1054 = sub i64 %1053, 92
  %1055 = load i64, i64* %PC
  %1056 = add i64 %1055, 3
  store i64 %1056, i64* %PC
  %1057 = trunc i64 %1052 to i32
  %1058 = inttoptr i64 %1054 to i32*
  %1059 = load i32, i32* %1058
  %1060 = add i32 %1059, %1057
  %1061 = zext i32 %1060 to i64
  store i64 %1061, i64* %RCX, align 8, !tbaa !2428
  %1062 = icmp ult i32 %1060, %1057
  %1063 = icmp ult i32 %1060, %1059
  %1064 = or i1 %1062, %1063
  %1065 = zext i1 %1064 to i8
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1065, i8* %1066, align 1, !tbaa !2432
  %1067 = and i32 %1060, 255
  %1068 = call i32 @llvm.ctpop.i32(i32 %1067) #16
  %1069 = trunc i32 %1068 to i8
  %1070 = and i8 %1069, 1
  %1071 = xor i8 %1070, 1
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1071, i8* %1072, align 1, !tbaa !2446
  %1073 = xor i32 %1059, %1057
  %1074 = xor i32 %1073, %1060
  %1075 = lshr i32 %1074, 4
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1077, i8* %1078, align 1, !tbaa !2447
  %1079 = icmp eq i32 %1060, 0
  %1080 = zext i1 %1079 to i8
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1080, i8* %1081, align 1, !tbaa !2448
  %1082 = lshr i32 %1060, 31
  %1083 = trunc i32 %1082 to i8
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1083, i8* %1084, align 1, !tbaa !2449
  %1085 = lshr i32 %1057, 31
  %1086 = lshr i32 %1059, 31
  %1087 = xor i32 %1082, %1085
  %1088 = xor i32 %1082, %1086
  %1089 = add nuw nsw i32 %1087, %1088
  %1090 = icmp eq i32 %1089, 2
  %1091 = zext i1 %1090 to i8
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1091, i8* %1092, align 1, !tbaa !2450
  %1093 = load i64, i64* %RCX
  %1094 = load i64, i64* %PC
  %1095 = add i64 %1094, 3
  store i64 %1095, i64* %PC
  %1096 = and i64 %1093, 4294967295
  %1097 = lshr i64 %1096, 24
  %1098 = trunc i64 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = lshr i64 %1097, 1
  %1101 = trunc i64 %1100 to i32
  %1102 = and i32 %1101, 2147483647
  %1103 = zext i32 %1102 to i64
  store i64 %1103, i64* %RCX, align 8, !tbaa !2428
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1099, i8* %1104, align 1, !tbaa !2451
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1106 = and i32 %1101, 255
  %1107 = call i32 @llvm.ctpop.i32(i32 %1106) #16
  %1108 = trunc i32 %1107 to i8
  %1109 = and i8 %1108, 1
  %1110 = xor i8 %1109, 1
  store i8 %1110, i8* %1105, align 1, !tbaa !2451
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1111, align 1, !tbaa !2451
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1113 = icmp eq i32 %1102, 0
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %1112, align 1, !tbaa !2451
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1115, align 1, !tbaa !2451
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1116, align 1, !tbaa !2451
  %1117 = load i64, i64* %RAX
  %1118 = load i32, i32* %ECX
  %1119 = zext i32 %1118 to i64
  %1120 = load i64, i64* %PC
  %1121 = add i64 %1120, 2
  store i64 %1121, i64* %PC
  %1122 = or i64 %1119, %1117
  %1123 = trunc i64 %1122 to i32
  %1124 = and i64 %1122, 4294967295
  store i64 %1124, i64* %RAX, align 8, !tbaa !2428
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1125, align 1, !tbaa !2432
  %1126 = and i32 %1123, 255
  %1127 = call i32 @llvm.ctpop.i32(i32 %1126) #16
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1130, i8* %1131, align 1, !tbaa !2446
  %1132 = icmp eq i32 %1123, 0
  %1133 = zext i1 %1132 to i8
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1133, i8* %1134, align 1, !tbaa !2448
  %1135 = lshr i32 %1123, 31
  %1136 = trunc i32 %1135 to i8
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1136, i8* %1137, align 1, !tbaa !2449
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1138, align 1, !tbaa !2450
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1139, align 1, !tbaa !2447
  %1140 = load i64, i64* %RAX
  %1141 = load i64, i64* %RBP
  %1142 = sub i64 %1141, 60
  %1143 = load i64, i64* %PC
  %1144 = add i64 %1143, 3
  store i64 %1144, i64* %PC
  %1145 = trunc i64 %1140 to i32
  %1146 = inttoptr i64 %1142 to i32*
  %1147 = load i32, i32* %1146
  %1148 = xor i32 %1147, %1145
  %1149 = zext i32 %1148 to i64
  store i64 %1149, i64* %RAX, align 8, !tbaa !2428
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1150, align 1, !tbaa !2432
  %1151 = and i32 %1148, 255
  %1152 = call i32 @llvm.ctpop.i32(i32 %1151) #16
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  %1155 = xor i8 %1154, 1
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1155, i8* %1156, align 1, !tbaa !2446
  %1157 = icmp eq i32 %1148, 0
  %1158 = zext i1 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1158, i8* %1159, align 1, !tbaa !2448
  %1160 = lshr i32 %1148, 31
  %1161 = trunc i32 %1160 to i8
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1161, i8* %1162, align 1, !tbaa !2449
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1163, align 1, !tbaa !2450
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1164, align 1, !tbaa !2447
  %1165 = load i64, i64* %RBP
  %1166 = sub i64 %1165, 60
  %1167 = load i32, i32* %EAX
  %1168 = zext i32 %1167 to i64
  %1169 = load i64, i64* %PC
  %1170 = add i64 %1169, 3
  store i64 %1170, i64* %PC
  %1171 = inttoptr i64 %1166 to i32*
  store i32 %1167, i32* %1171
  %1172 = load i64, i64* %RBP
  %1173 = sub i64 %1172, 60
  %1174 = load i64, i64* %PC
  %1175 = add i64 %1174, 3
  store i64 %1175, i64* %PC
  %1176 = inttoptr i64 %1173 to i32*
  %1177 = load i32, i32* %1176
  %1178 = zext i32 %1177 to i64
  store i64 %1178, i64* %RAX, align 8, !tbaa !2428
  %1179 = load i64, i64* %RAX
  %1180 = load i64, i64* %RBP
  %1181 = sub i64 %1180, 76
  %1182 = load i64, i64* %PC
  %1183 = add i64 %1182, 3
  store i64 %1183, i64* %PC
  %1184 = trunc i64 %1179 to i32
  %1185 = inttoptr i64 %1181 to i32*
  %1186 = load i32, i32* %1185
  %1187 = add i32 %1186, %1184
  %1188 = zext i32 %1187 to i64
  store i64 %1188, i64* %RAX, align 8, !tbaa !2428
  %1189 = icmp ult i32 %1187, %1184
  %1190 = icmp ult i32 %1187, %1186
  %1191 = or i1 %1189, %1190
  %1192 = zext i1 %1191 to i8
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1192, i8* %1193, align 1, !tbaa !2432
  %1194 = and i32 %1187, 255
  %1195 = call i32 @llvm.ctpop.i32(i32 %1194) #16
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  %1198 = xor i8 %1197, 1
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1198, i8* %1199, align 1, !tbaa !2446
  %1200 = xor i32 %1186, %1184
  %1201 = xor i32 %1200, %1187
  %1202 = lshr i32 %1201, 4
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1204, i8* %1205, align 1, !tbaa !2447
  %1206 = icmp eq i32 %1187, 0
  %1207 = zext i1 %1206 to i8
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1207, i8* %1208, align 1, !tbaa !2448
  %1209 = lshr i32 %1187, 31
  %1210 = trunc i32 %1209 to i8
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1210, i8* %1211, align 1, !tbaa !2449
  %1212 = lshr i32 %1184, 31
  %1213 = lshr i32 %1186, 31
  %1214 = xor i32 %1209, %1212
  %1215 = xor i32 %1209, %1213
  %1216 = add nuw nsw i32 %1214, %1215
  %1217 = icmp eq i32 %1216, 2
  %1218 = zext i1 %1217 to i8
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1218, i8* %1219, align 1, !tbaa !2450
  %1220 = load i64, i64* %RAX
  %1221 = load i64, i64* %PC
  %1222 = add i64 %1221, 3
  store i64 %1222, i64* %PC
  %1223 = and i64 %1220, 4294967295
  %1224 = shl i64 %1223, 8
  %1225 = trunc i64 %1224 to i32
  %1226 = icmp slt i32 %1225, 0
  %1227 = shl i32 %1225, 1
  %1228 = zext i32 %1227 to i64
  store i64 %1228, i64* %RAX, align 8, !tbaa !2428
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1230 = zext i1 %1226 to i8
  store i8 %1230, i8* %1229, align 1, !tbaa !2451
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1231, align 1, !tbaa !2451
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1232, align 1, !tbaa !2451
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1234 = icmp eq i32 %1227, 0
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %1233, align 1, !tbaa !2451
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1237 = lshr i32 %1227, 31
  %1238 = trunc i32 %1237 to i8
  store i8 %1238, i8* %1236, align 1, !tbaa !2451
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1239, align 1, !tbaa !2451
  %1240 = load i64, i64* %RBP
  %1241 = sub i64 %1240, 60
  %1242 = load i64, i64* %PC
  %1243 = add i64 %1242, 3
  store i64 %1243, i64* %PC
  %1244 = inttoptr i64 %1241 to i32*
  %1245 = load i32, i32* %1244
  %1246 = zext i32 %1245 to i64
  store i64 %1246, i64* %RCX, align 8, !tbaa !2428
  %1247 = load i64, i64* %RCX
  %1248 = load i64, i64* %RBP
  %1249 = sub i64 %1248, 76
  %1250 = load i64, i64* %PC
  %1251 = add i64 %1250, 3
  store i64 %1251, i64* %PC
  %1252 = trunc i64 %1247 to i32
  %1253 = inttoptr i64 %1249 to i32*
  %1254 = load i32, i32* %1253
  %1255 = add i32 %1254, %1252
  %1256 = zext i32 %1255 to i64
  store i64 %1256, i64* %RCX, align 8, !tbaa !2428
  %1257 = icmp ult i32 %1255, %1252
  %1258 = icmp ult i32 %1255, %1254
  %1259 = or i1 %1257, %1258
  %1260 = zext i1 %1259 to i8
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1260, i8* %1261, align 1, !tbaa !2432
  %1262 = and i32 %1255, 255
  %1263 = call i32 @llvm.ctpop.i32(i32 %1262) #16
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = xor i8 %1265, 1
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1266, i8* %1267, align 1, !tbaa !2446
  %1268 = xor i32 %1254, %1252
  %1269 = xor i32 %1268, %1255
  %1270 = lshr i32 %1269, 4
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1272, i8* %1273, align 1, !tbaa !2447
  %1274 = icmp eq i32 %1255, 0
  %1275 = zext i1 %1274 to i8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1275, i8* %1276, align 1, !tbaa !2448
  %1277 = lshr i32 %1255, 31
  %1278 = trunc i32 %1277 to i8
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1278, i8* %1279, align 1, !tbaa !2449
  %1280 = lshr i32 %1252, 31
  %1281 = lshr i32 %1254, 31
  %1282 = xor i32 %1277, %1280
  %1283 = xor i32 %1277, %1281
  %1284 = add nuw nsw i32 %1282, %1283
  %1285 = icmp eq i32 %1284, 2
  %1286 = zext i1 %1285 to i8
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1286, i8* %1287, align 1, !tbaa !2450
  %1288 = load i64, i64* %RCX
  %1289 = load i64, i64* %PC
  %1290 = add i64 %1289, 3
  store i64 %1290, i64* %PC
  %1291 = and i64 %1288, 4294967295
  %1292 = lshr i64 %1291, 22
  %1293 = trunc i64 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = lshr i64 %1292, 1
  %1296 = trunc i64 %1295 to i32
  %1297 = and i32 %1296, 2147483647
  %1298 = zext i32 %1297 to i64
  store i64 %1298, i64* %RCX, align 8, !tbaa !2428
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1294, i8* %1299, align 1, !tbaa !2451
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1301 = and i32 %1296, 255
  %1302 = call i32 @llvm.ctpop.i32(i32 %1301) #16
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  %1305 = xor i8 %1304, 1
  store i8 %1305, i8* %1300, align 1, !tbaa !2451
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1306, align 1, !tbaa !2451
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1308 = icmp eq i32 %1297, 0
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %1307, align 1, !tbaa !2451
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1310, align 1, !tbaa !2451
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1311, align 1, !tbaa !2451
  %1312 = load i64, i64* %RAX
  %1313 = load i32, i32* %ECX
  %1314 = zext i32 %1313 to i64
  %1315 = load i64, i64* %PC
  %1316 = add i64 %1315, 2
  store i64 %1316, i64* %PC
  %1317 = or i64 %1314, %1312
  %1318 = trunc i64 %1317 to i32
  %1319 = and i64 %1317, 4294967295
  store i64 %1319, i64* %RAX, align 8, !tbaa !2428
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1320, align 1, !tbaa !2432
  %1321 = and i32 %1318, 255
  %1322 = call i32 @llvm.ctpop.i32(i32 %1321) #16
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  %1325 = xor i8 %1324, 1
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1325, i8* %1326, align 1, !tbaa !2446
  %1327 = icmp eq i32 %1318, 0
  %1328 = zext i1 %1327 to i8
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1328, i8* %1329, align 1, !tbaa !2448
  %1330 = lshr i32 %1318, 31
  %1331 = trunc i32 %1330 to i8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1331, i8* %1332, align 1, !tbaa !2449
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1333, align 1, !tbaa !2450
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1334, align 1, !tbaa !2447
  %1335 = load i64, i64* %RAX
  %1336 = load i64, i64* %RBP
  %1337 = sub i64 %1336, 44
  %1338 = load i64, i64* %PC
  %1339 = add i64 %1338, 3
  store i64 %1339, i64* %PC
  %1340 = trunc i64 %1335 to i32
  %1341 = inttoptr i64 %1337 to i32*
  %1342 = load i32, i32* %1341
  %1343 = xor i32 %1342, %1340
  %1344 = zext i32 %1343 to i64
  store i64 %1344, i64* %RAX, align 8, !tbaa !2428
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1345, align 1, !tbaa !2432
  %1346 = and i32 %1343, 255
  %1347 = call i32 @llvm.ctpop.i32(i32 %1346) #16
  %1348 = trunc i32 %1347 to i8
  %1349 = and i8 %1348, 1
  %1350 = xor i8 %1349, 1
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1350, i8* %1351, align 1, !tbaa !2446
  %1352 = icmp eq i32 %1343, 0
  %1353 = zext i1 %1352 to i8
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1353, i8* %1354, align 1, !tbaa !2448
  %1355 = lshr i32 %1343, 31
  %1356 = trunc i32 %1355 to i8
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1356, i8* %1357, align 1, !tbaa !2449
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1358, align 1, !tbaa !2450
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1359, align 1, !tbaa !2447
  %1360 = load i64, i64* %RBP
  %1361 = sub i64 %1360, 44
  %1362 = load i32, i32* %EAX
  %1363 = zext i32 %1362 to i64
  %1364 = load i64, i64* %PC
  %1365 = add i64 %1364, 3
  store i64 %1365, i64* %PC
  %1366 = inttoptr i64 %1361 to i32*
  store i32 %1362, i32* %1366
  %1367 = load i64, i64* %RBP
  %1368 = sub i64 %1367, 44
  %1369 = load i64, i64* %PC
  %1370 = add i64 %1369, 3
  store i64 %1370, i64* %PC
  %1371 = inttoptr i64 %1368 to i32*
  %1372 = load i32, i32* %1371
  %1373 = zext i32 %1372 to i64
  store i64 %1373, i64* %RAX, align 8, !tbaa !2428
  %1374 = load i64, i64* %RAX
  %1375 = load i64, i64* %RBP
  %1376 = sub i64 %1375, 60
  %1377 = load i64, i64* %PC
  %1378 = add i64 %1377, 3
  store i64 %1378, i64* %PC
  %1379 = trunc i64 %1374 to i32
  %1380 = inttoptr i64 %1376 to i32*
  %1381 = load i32, i32* %1380
  %1382 = add i32 %1381, %1379
  %1383 = zext i32 %1382 to i64
  store i64 %1383, i64* %RAX, align 8, !tbaa !2428
  %1384 = icmp ult i32 %1382, %1379
  %1385 = icmp ult i32 %1382, %1381
  %1386 = or i1 %1384, %1385
  %1387 = zext i1 %1386 to i8
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1387, i8* %1388, align 1, !tbaa !2432
  %1389 = and i32 %1382, 255
  %1390 = call i32 @llvm.ctpop.i32(i32 %1389) #16
  %1391 = trunc i32 %1390 to i8
  %1392 = and i8 %1391, 1
  %1393 = xor i8 %1392, 1
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1393, i8* %1394, align 1, !tbaa !2446
  %1395 = xor i32 %1381, %1379
  %1396 = xor i32 %1395, %1382
  %1397 = lshr i32 %1396, 4
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1399, i8* %1400, align 1, !tbaa !2447
  %1401 = icmp eq i32 %1382, 0
  %1402 = zext i1 %1401 to i8
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1402, i8* %1403, align 1, !tbaa !2448
  %1404 = lshr i32 %1382, 31
  %1405 = trunc i32 %1404 to i8
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1405, i8* %1406, align 1, !tbaa !2449
  %1407 = lshr i32 %1379, 31
  %1408 = lshr i32 %1381, 31
  %1409 = xor i32 %1404, %1407
  %1410 = xor i32 %1404, %1408
  %1411 = add nuw nsw i32 %1409, %1410
  %1412 = icmp eq i32 %1411, 2
  %1413 = zext i1 %1412 to i8
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1413, i8* %1414, align 1, !tbaa !2450
  %1415 = load i64, i64* %RAX
  %1416 = load i64, i64* %PC
  %1417 = add i64 %1416, 3
  store i64 %1417, i64* %PC
  %1418 = and i64 %1415, 4294967295
  %1419 = shl i64 %1418, 12
  %1420 = trunc i64 %1419 to i32
  %1421 = icmp slt i32 %1420, 0
  %1422 = shl i32 %1420, 1
  %1423 = zext i32 %1422 to i64
  store i64 %1423, i64* %RAX, align 8, !tbaa !2428
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1425 = zext i1 %1421 to i8
  store i8 %1425, i8* %1424, align 1, !tbaa !2451
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1426, align 1, !tbaa !2451
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1427, align 1, !tbaa !2451
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1429 = icmp eq i32 %1422, 0
  %1430 = zext i1 %1429 to i8
  store i8 %1430, i8* %1428, align 1, !tbaa !2451
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1432 = lshr i32 %1422, 31
  %1433 = trunc i32 %1432 to i8
  store i8 %1433, i8* %1431, align 1, !tbaa !2451
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1434, align 1, !tbaa !2451
  %1435 = load i64, i64* %RBP
  %1436 = sub i64 %1435, 44
  %1437 = load i64, i64* %PC
  %1438 = add i64 %1437, 3
  store i64 %1438, i64* %PC
  %1439 = inttoptr i64 %1436 to i32*
  %1440 = load i32, i32* %1439
  %1441 = zext i32 %1440 to i64
  store i64 %1441, i64* %RCX, align 8, !tbaa !2428
  %1442 = load i64, i64* %RCX
  %1443 = load i64, i64* %RBP
  %1444 = sub i64 %1443, 60
  %1445 = load i64, i64* %PC
  %1446 = add i64 %1445, 3
  store i64 %1446, i64* %PC
  %1447 = trunc i64 %1442 to i32
  %1448 = inttoptr i64 %1444 to i32*
  %1449 = load i32, i32* %1448
  %1450 = add i32 %1449, %1447
  %1451 = zext i32 %1450 to i64
  store i64 %1451, i64* %RCX, align 8, !tbaa !2428
  %1452 = icmp ult i32 %1450, %1447
  %1453 = icmp ult i32 %1450, %1449
  %1454 = or i1 %1452, %1453
  %1455 = zext i1 %1454 to i8
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1455, i8* %1456, align 1, !tbaa !2432
  %1457 = and i32 %1450, 255
  %1458 = call i32 @llvm.ctpop.i32(i32 %1457) #16
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = xor i8 %1460, 1
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1461, i8* %1462, align 1, !tbaa !2446
  %1463 = xor i32 %1449, %1447
  %1464 = xor i32 %1463, %1450
  %1465 = lshr i32 %1464, 4
  %1466 = trunc i32 %1465 to i8
  %1467 = and i8 %1466, 1
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1467, i8* %1468, align 1, !tbaa !2447
  %1469 = icmp eq i32 %1450, 0
  %1470 = zext i1 %1469 to i8
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1470, i8* %1471, align 1, !tbaa !2448
  %1472 = lshr i32 %1450, 31
  %1473 = trunc i32 %1472 to i8
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1473, i8* %1474, align 1, !tbaa !2449
  %1475 = lshr i32 %1447, 31
  %1476 = lshr i32 %1449, 31
  %1477 = xor i32 %1472, %1475
  %1478 = xor i32 %1472, %1476
  %1479 = add nuw nsw i32 %1477, %1478
  %1480 = icmp eq i32 %1479, 2
  %1481 = zext i1 %1480 to i8
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1481, i8* %1482, align 1, !tbaa !2450
  %1483 = load i64, i64* %RCX
  %1484 = load i64, i64* %PC
  %1485 = add i64 %1484, 3
  store i64 %1485, i64* %PC
  %1486 = and i64 %1483, 4294967295
  %1487 = lshr i64 %1486, 18
  %1488 = trunc i64 %1487 to i8
  %1489 = and i8 %1488, 1
  %1490 = lshr i64 %1487, 1
  %1491 = trunc i64 %1490 to i32
  %1492 = and i32 %1491, 2147483647
  %1493 = zext i32 %1492 to i64
  store i64 %1493, i64* %RCX, align 8, !tbaa !2428
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1489, i8* %1494, align 1, !tbaa !2451
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1496 = and i32 %1491, 255
  %1497 = call i32 @llvm.ctpop.i32(i32 %1496) #16
  %1498 = trunc i32 %1497 to i8
  %1499 = and i8 %1498, 1
  %1500 = xor i8 %1499, 1
  store i8 %1500, i8* %1495, align 1, !tbaa !2451
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1501, align 1, !tbaa !2451
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1503 = icmp eq i32 %1492, 0
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %1502, align 1, !tbaa !2451
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1505, align 1, !tbaa !2451
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1506, align 1, !tbaa !2451
  %1507 = load i64, i64* %RAX
  %1508 = load i32, i32* %ECX
  %1509 = zext i32 %1508 to i64
  %1510 = load i64, i64* %PC
  %1511 = add i64 %1510, 2
  store i64 %1511, i64* %PC
  %1512 = or i64 %1509, %1507
  %1513 = trunc i64 %1512 to i32
  %1514 = and i64 %1512, 4294967295
  store i64 %1514, i64* %RAX, align 8, !tbaa !2428
  %1515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1515, align 1, !tbaa !2432
  %1516 = and i32 %1513, 255
  %1517 = call i32 @llvm.ctpop.i32(i32 %1516) #16
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  %1520 = xor i8 %1519, 1
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1520, i8* %1521, align 1, !tbaa !2446
  %1522 = icmp eq i32 %1513, 0
  %1523 = zext i1 %1522 to i8
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1523, i8* %1524, align 1, !tbaa !2448
  %1525 = lshr i32 %1513, 31
  %1526 = trunc i32 %1525 to i8
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1526, i8* %1527, align 1, !tbaa !2449
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1528, align 1, !tbaa !2450
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1529, align 1, !tbaa !2447
  %1530 = load i64, i64* %RAX
  %1531 = load i64, i64* %RBP
  %1532 = sub i64 %1531, 92
  %1533 = load i64, i64* %PC
  %1534 = add i64 %1533, 3
  store i64 %1534, i64* %PC
  %1535 = trunc i64 %1530 to i32
  %1536 = inttoptr i64 %1532 to i32*
  %1537 = load i32, i32* %1536
  %1538 = xor i32 %1537, %1535
  %1539 = zext i32 %1538 to i64
  store i64 %1539, i64* %RAX, align 8, !tbaa !2428
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1540, align 1, !tbaa !2432
  %1541 = and i32 %1538, 255
  %1542 = call i32 @llvm.ctpop.i32(i32 %1541) #16
  %1543 = trunc i32 %1542 to i8
  %1544 = and i8 %1543, 1
  %1545 = xor i8 %1544, 1
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1545, i8* %1546, align 1, !tbaa !2446
  %1547 = icmp eq i32 %1538, 0
  %1548 = zext i1 %1547 to i8
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1548, i8* %1549, align 1, !tbaa !2448
  %1550 = lshr i32 %1538, 31
  %1551 = trunc i32 %1550 to i8
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1551, i8* %1552, align 1, !tbaa !2449
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1553, align 1, !tbaa !2450
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1554, align 1, !tbaa !2447
  %1555 = load i64, i64* %RBP
  %1556 = sub i64 %1555, 92
  %1557 = load i32, i32* %EAX
  %1558 = zext i32 %1557 to i64
  %1559 = load i64, i64* %PC
  %1560 = add i64 %1559, 3
  store i64 %1560, i64* %PC
  %1561 = inttoptr i64 %1556 to i32*
  store i32 %1557, i32* %1561
  %1562 = load i64, i64* %RBP
  %1563 = sub i64 %1562, 92
  %1564 = load i64, i64* %PC
  %1565 = add i64 %1564, 3
  store i64 %1565, i64* %PC
  %1566 = inttoptr i64 %1563 to i32*
  %1567 = load i32, i32* %1566
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RAX, align 8, !tbaa !2428
  %1569 = load i64, i64* %RAX
  %1570 = load i64, i64* %RBP
  %1571 = sub i64 %1570, 44
  %1572 = load i64, i64* %PC
  %1573 = add i64 %1572, 3
  store i64 %1573, i64* %PC
  %1574 = trunc i64 %1569 to i32
  %1575 = inttoptr i64 %1571 to i32*
  %1576 = load i32, i32* %1575
  %1577 = add i32 %1576, %1574
  %1578 = zext i32 %1577 to i64
  store i64 %1578, i64* %RAX, align 8, !tbaa !2428
  %1579 = icmp ult i32 %1577, %1574
  %1580 = icmp ult i32 %1577, %1576
  %1581 = or i1 %1579, %1580
  %1582 = zext i1 %1581 to i8
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1582, i8* %1583, align 1, !tbaa !2432
  %1584 = and i32 %1577, 255
  %1585 = call i32 @llvm.ctpop.i32(i32 %1584) #16
  %1586 = trunc i32 %1585 to i8
  %1587 = and i8 %1586, 1
  %1588 = xor i8 %1587, 1
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1588, i8* %1589, align 1, !tbaa !2446
  %1590 = xor i32 %1576, %1574
  %1591 = xor i32 %1590, %1577
  %1592 = lshr i32 %1591, 4
  %1593 = trunc i32 %1592 to i8
  %1594 = and i8 %1593, 1
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1594, i8* %1595, align 1, !tbaa !2447
  %1596 = icmp eq i32 %1577, 0
  %1597 = zext i1 %1596 to i8
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1597, i8* %1598, align 1, !tbaa !2448
  %1599 = lshr i32 %1577, 31
  %1600 = trunc i32 %1599 to i8
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1600, i8* %1601, align 1, !tbaa !2449
  %1602 = lshr i32 %1574, 31
  %1603 = lshr i32 %1576, 31
  %1604 = xor i32 %1599, %1602
  %1605 = xor i32 %1599, %1603
  %1606 = add nuw nsw i32 %1604, %1605
  %1607 = icmp eq i32 %1606, 2
  %1608 = zext i1 %1607 to i8
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1608, i8* %1609, align 1, !tbaa !2450
  %1610 = load i64, i64* %RAX
  %1611 = load i64, i64* %PC
  %1612 = add i64 %1611, 3
  store i64 %1612, i64* %PC
  %1613 = and i64 %1610, 4294967295
  %1614 = shl i64 %1613, 17
  %1615 = trunc i64 %1614 to i32
  %1616 = icmp slt i32 %1615, 0
  %1617 = shl i32 %1615, 1
  %1618 = zext i32 %1617 to i64
  store i64 %1618, i64* %RAX, align 8, !tbaa !2428
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1620 = zext i1 %1616 to i8
  store i8 %1620, i8* %1619, align 1, !tbaa !2451
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1621, align 1, !tbaa !2451
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1622, align 1, !tbaa !2451
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1624 = icmp eq i32 %1617, 0
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %1623, align 1, !tbaa !2451
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1627 = lshr i32 %1617, 31
  %1628 = trunc i32 %1627 to i8
  store i8 %1628, i8* %1626, align 1, !tbaa !2451
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1629, align 1, !tbaa !2451
  %1630 = load i64, i64* %RBP
  %1631 = sub i64 %1630, 92
  %1632 = load i64, i64* %PC
  %1633 = add i64 %1632, 3
  store i64 %1633, i64* %PC
  %1634 = inttoptr i64 %1631 to i32*
  %1635 = load i32, i32* %1634
  %1636 = zext i32 %1635 to i64
  store i64 %1636, i64* %RCX, align 8, !tbaa !2428
  %1637 = load i64, i64* %RCX
  %1638 = load i64, i64* %RBP
  %1639 = sub i64 %1638, 44
  %1640 = load i64, i64* %PC
  %1641 = add i64 %1640, 3
  store i64 %1641, i64* %PC
  %1642 = trunc i64 %1637 to i32
  %1643 = inttoptr i64 %1639 to i32*
  %1644 = load i32, i32* %1643
  %1645 = add i32 %1644, %1642
  %1646 = zext i32 %1645 to i64
  store i64 %1646, i64* %RCX, align 8, !tbaa !2428
  %1647 = icmp ult i32 %1645, %1642
  %1648 = icmp ult i32 %1645, %1644
  %1649 = or i1 %1647, %1648
  %1650 = zext i1 %1649 to i8
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1650, i8* %1651, align 1, !tbaa !2432
  %1652 = and i32 %1645, 255
  %1653 = call i32 @llvm.ctpop.i32(i32 %1652) #16
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  %1656 = xor i8 %1655, 1
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1656, i8* %1657, align 1, !tbaa !2446
  %1658 = xor i32 %1644, %1642
  %1659 = xor i32 %1658, %1645
  %1660 = lshr i32 %1659, 4
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1662, i8* %1663, align 1, !tbaa !2447
  %1664 = icmp eq i32 %1645, 0
  %1665 = zext i1 %1664 to i8
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1665, i8* %1666, align 1, !tbaa !2448
  %1667 = lshr i32 %1645, 31
  %1668 = trunc i32 %1667 to i8
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1668, i8* %1669, align 1, !tbaa !2449
  %1670 = lshr i32 %1642, 31
  %1671 = lshr i32 %1644, 31
  %1672 = xor i32 %1667, %1670
  %1673 = xor i32 %1667, %1671
  %1674 = add nuw nsw i32 %1672, %1673
  %1675 = icmp eq i32 %1674, 2
  %1676 = zext i1 %1675 to i8
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1676, i8* %1677, align 1, !tbaa !2450
  %1678 = load i64, i64* %RCX
  %1679 = load i64, i64* %PC
  %1680 = add i64 %1679, 3
  store i64 %1680, i64* %PC
  %1681 = and i64 %1678, 4294967295
  %1682 = lshr i64 %1681, 13
  %1683 = trunc i64 %1682 to i8
  %1684 = and i8 %1683, 1
  %1685 = lshr i64 %1682, 1
  %1686 = trunc i64 %1685 to i32
  %1687 = and i32 %1686, 2147483647
  %1688 = zext i32 %1687 to i64
  store i64 %1688, i64* %RCX, align 8, !tbaa !2428
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1684, i8* %1689, align 1, !tbaa !2451
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1691 = and i32 %1686, 255
  %1692 = call i32 @llvm.ctpop.i32(i32 %1691) #16
  %1693 = trunc i32 %1692 to i8
  %1694 = and i8 %1693, 1
  %1695 = xor i8 %1694, 1
  store i8 %1695, i8* %1690, align 1, !tbaa !2451
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1696, align 1, !tbaa !2451
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1698 = icmp eq i32 %1687, 0
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %1697, align 1, !tbaa !2451
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1700, align 1, !tbaa !2451
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1701, align 1, !tbaa !2451
  %1702 = load i64, i64* %RAX
  %1703 = load i32, i32* %ECX
  %1704 = zext i32 %1703 to i64
  %1705 = load i64, i64* %PC
  %1706 = add i64 %1705, 2
  store i64 %1706, i64* %PC
  %1707 = or i64 %1704, %1702
  %1708 = trunc i64 %1707 to i32
  %1709 = and i64 %1707, 4294967295
  store i64 %1709, i64* %RAX, align 8, !tbaa !2428
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1710, align 1, !tbaa !2432
  %1711 = and i32 %1708, 255
  %1712 = call i32 @llvm.ctpop.i32(i32 %1711) #16
  %1713 = trunc i32 %1712 to i8
  %1714 = and i8 %1713, 1
  %1715 = xor i8 %1714, 1
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1715, i8* %1716, align 1, !tbaa !2446
  %1717 = icmp eq i32 %1708, 0
  %1718 = zext i1 %1717 to i8
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1718, i8* %1719, align 1, !tbaa !2448
  %1720 = lshr i32 %1708, 31
  %1721 = trunc i32 %1720 to i8
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1721, i8* %1722, align 1, !tbaa !2449
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1723, align 1, !tbaa !2450
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1724, align 1, !tbaa !2447
  %1725 = load i64, i64* %RAX
  %1726 = load i64, i64* %RBP
  %1727 = sub i64 %1726, 76
  %1728 = load i64, i64* %PC
  %1729 = add i64 %1728, 3
  store i64 %1729, i64* %PC
  %1730 = trunc i64 %1725 to i32
  %1731 = inttoptr i64 %1727 to i32*
  %1732 = load i32, i32* %1731
  %1733 = xor i32 %1732, %1730
  %1734 = zext i32 %1733 to i64
  store i64 %1734, i64* %RAX, align 8, !tbaa !2428
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1735, align 1, !tbaa !2432
  %1736 = and i32 %1733, 255
  %1737 = call i32 @llvm.ctpop.i32(i32 %1736) #16
  %1738 = trunc i32 %1737 to i8
  %1739 = and i8 %1738, 1
  %1740 = xor i8 %1739, 1
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1740, i8* %1741, align 1, !tbaa !2446
  %1742 = icmp eq i32 %1733, 0
  %1743 = zext i1 %1742 to i8
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1743, i8* %1744, align 1, !tbaa !2448
  %1745 = lshr i32 %1733, 31
  %1746 = trunc i32 %1745 to i8
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1746, i8* %1747, align 1, !tbaa !2449
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1748, align 1, !tbaa !2450
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1749, align 1, !tbaa !2447
  %1750 = load i64, i64* %RBP
  %1751 = sub i64 %1750, 76
  %1752 = load i32, i32* %EAX
  %1753 = zext i32 %1752 to i64
  %1754 = load i64, i64* %PC
  %1755 = add i64 %1754, 3
  store i64 %1755, i64* %PC
  %1756 = inttoptr i64 %1751 to i32*
  store i32 %1752, i32* %1756
  %1757 = load i64, i64* %RBP
  %1758 = sub i64 %1757, 56
  %1759 = load i64, i64* %PC
  %1760 = add i64 %1759, 3
  store i64 %1760, i64* %PC
  %1761 = inttoptr i64 %1758 to i32*
  %1762 = load i32, i32* %1761
  %1763 = zext i32 %1762 to i64
  store i64 %1763, i64* %RAX, align 8, !tbaa !2428
  %1764 = load i64, i64* %RAX
  %1765 = load i64, i64* %RBP
  %1766 = sub i64 %1765, 72
  %1767 = load i64, i64* %PC
  %1768 = add i64 %1767, 3
  store i64 %1768, i64* %PC
  %1769 = trunc i64 %1764 to i32
  %1770 = inttoptr i64 %1766 to i32*
  %1771 = load i32, i32* %1770
  %1772 = add i32 %1771, %1769
  %1773 = zext i32 %1772 to i64
  store i64 %1773, i64* %RAX, align 8, !tbaa !2428
  %1774 = icmp ult i32 %1772, %1769
  %1775 = icmp ult i32 %1772, %1771
  %1776 = or i1 %1774, %1775
  %1777 = zext i1 %1776 to i8
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1777, i8* %1778, align 1, !tbaa !2432
  %1779 = and i32 %1772, 255
  %1780 = call i32 @llvm.ctpop.i32(i32 %1779) #16
  %1781 = trunc i32 %1780 to i8
  %1782 = and i8 %1781, 1
  %1783 = xor i8 %1782, 1
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1783, i8* %1784, align 1, !tbaa !2446
  %1785 = xor i32 %1771, %1769
  %1786 = xor i32 %1785, %1772
  %1787 = lshr i32 %1786, 4
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1789, i8* %1790, align 1, !tbaa !2447
  %1791 = icmp eq i32 %1772, 0
  %1792 = zext i1 %1791 to i8
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1792, i8* %1793, align 1, !tbaa !2448
  %1794 = lshr i32 %1772, 31
  %1795 = trunc i32 %1794 to i8
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1795, i8* %1796, align 1, !tbaa !2449
  %1797 = lshr i32 %1769, 31
  %1798 = lshr i32 %1771, 31
  %1799 = xor i32 %1794, %1797
  %1800 = xor i32 %1794, %1798
  %1801 = add nuw nsw i32 %1799, %1800
  %1802 = icmp eq i32 %1801, 2
  %1803 = zext i1 %1802 to i8
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1803, i8* %1804, align 1, !tbaa !2450
  %1805 = load i64, i64* %RAX
  %1806 = load i64, i64* %PC
  %1807 = add i64 %1806, 3
  store i64 %1807, i64* %PC
  %1808 = and i64 %1805, 4294967295
  %1809 = shl i64 %1808, 6
  %1810 = trunc i64 %1809 to i32
  %1811 = icmp slt i32 %1810, 0
  %1812 = shl i32 %1810, 1
  %1813 = zext i32 %1812 to i64
  store i64 %1813, i64* %RAX, align 8, !tbaa !2428
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1815 = zext i1 %1811 to i8
  store i8 %1815, i8* %1814, align 1, !tbaa !2451
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1817 = and i32 %1812, 254
  %1818 = call i32 @llvm.ctpop.i32(i32 %1817) #16
  %1819 = trunc i32 %1818 to i8
  %1820 = and i8 %1819, 1
  %1821 = xor i8 %1820, 1
  store i8 %1821, i8* %1816, align 1, !tbaa !2451
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1822, align 1, !tbaa !2451
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1824 = icmp eq i32 %1812, 0
  %1825 = zext i1 %1824 to i8
  store i8 %1825, i8* %1823, align 1, !tbaa !2451
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1827 = lshr i32 %1812, 31
  %1828 = trunc i32 %1827 to i8
  store i8 %1828, i8* %1826, align 1, !tbaa !2451
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1829, align 1, !tbaa !2451
  %1830 = load i64, i64* %RBP
  %1831 = sub i64 %1830, 56
  %1832 = load i64, i64* %PC
  %1833 = add i64 %1832, 3
  store i64 %1833, i64* %PC
  %1834 = inttoptr i64 %1831 to i32*
  %1835 = load i32, i32* %1834
  %1836 = zext i32 %1835 to i64
  store i64 %1836, i64* %RCX, align 8, !tbaa !2428
  %1837 = load i64, i64* %RCX
  %1838 = load i64, i64* %RBP
  %1839 = sub i64 %1838, 72
  %1840 = load i64, i64* %PC
  %1841 = add i64 %1840, 3
  store i64 %1841, i64* %PC
  %1842 = trunc i64 %1837 to i32
  %1843 = inttoptr i64 %1839 to i32*
  %1844 = load i32, i32* %1843
  %1845 = add i32 %1844, %1842
  %1846 = zext i32 %1845 to i64
  store i64 %1846, i64* %RCX, align 8, !tbaa !2428
  %1847 = icmp ult i32 %1845, %1842
  %1848 = icmp ult i32 %1845, %1844
  %1849 = or i1 %1847, %1848
  %1850 = zext i1 %1849 to i8
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1850, i8* %1851, align 1, !tbaa !2432
  %1852 = and i32 %1845, 255
  %1853 = call i32 @llvm.ctpop.i32(i32 %1852) #16
  %1854 = trunc i32 %1853 to i8
  %1855 = and i8 %1854, 1
  %1856 = xor i8 %1855, 1
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1856, i8* %1857, align 1, !tbaa !2446
  %1858 = xor i32 %1844, %1842
  %1859 = xor i32 %1858, %1845
  %1860 = lshr i32 %1859, 4
  %1861 = trunc i32 %1860 to i8
  %1862 = and i8 %1861, 1
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1862, i8* %1863, align 1, !tbaa !2447
  %1864 = icmp eq i32 %1845, 0
  %1865 = zext i1 %1864 to i8
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1865, i8* %1866, align 1, !tbaa !2448
  %1867 = lshr i32 %1845, 31
  %1868 = trunc i32 %1867 to i8
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1868, i8* %1869, align 1, !tbaa !2449
  %1870 = lshr i32 %1842, 31
  %1871 = lshr i32 %1844, 31
  %1872 = xor i32 %1867, %1870
  %1873 = xor i32 %1867, %1871
  %1874 = add nuw nsw i32 %1872, %1873
  %1875 = icmp eq i32 %1874, 2
  %1876 = zext i1 %1875 to i8
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1876, i8* %1877, align 1, !tbaa !2450
  %1878 = load i64, i64* %RCX
  %1879 = load i64, i64* %PC
  %1880 = add i64 %1879, 3
  store i64 %1880, i64* %PC
  %1881 = and i64 %1878, 4294967295
  %1882 = lshr i64 %1881, 24
  %1883 = trunc i64 %1882 to i8
  %1884 = and i8 %1883, 1
  %1885 = lshr i64 %1882, 1
  %1886 = trunc i64 %1885 to i32
  %1887 = and i32 %1886, 2147483647
  %1888 = zext i32 %1887 to i64
  store i64 %1888, i64* %RCX, align 8, !tbaa !2428
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1884, i8* %1889, align 1, !tbaa !2451
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1891 = and i32 %1886, 255
  %1892 = call i32 @llvm.ctpop.i32(i32 %1891) #16
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  %1895 = xor i8 %1894, 1
  store i8 %1895, i8* %1890, align 1, !tbaa !2451
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1896, align 1, !tbaa !2451
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1898 = icmp eq i32 %1887, 0
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %1897, align 1, !tbaa !2451
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1900, align 1, !tbaa !2451
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1901, align 1, !tbaa !2451
  %1902 = load i64, i64* %RAX
  %1903 = load i32, i32* %ECX
  %1904 = zext i32 %1903 to i64
  %1905 = load i64, i64* %PC
  %1906 = add i64 %1905, 2
  store i64 %1906, i64* %PC
  %1907 = or i64 %1904, %1902
  %1908 = trunc i64 %1907 to i32
  %1909 = and i64 %1907, 4294967295
  store i64 %1909, i64* %RAX, align 8, !tbaa !2428
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1910, align 1, !tbaa !2432
  %1911 = and i32 %1908, 255
  %1912 = call i32 @llvm.ctpop.i32(i32 %1911) #16
  %1913 = trunc i32 %1912 to i8
  %1914 = and i8 %1913, 1
  %1915 = xor i8 %1914, 1
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1915, i8* %1916, align 1, !tbaa !2446
  %1917 = icmp eq i32 %1908, 0
  %1918 = zext i1 %1917 to i8
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1918, i8* %1919, align 1, !tbaa !2448
  %1920 = lshr i32 %1908, 31
  %1921 = trunc i32 %1920 to i8
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1921, i8* %1922, align 1, !tbaa !2449
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1923, align 1, !tbaa !2450
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1924, align 1, !tbaa !2447
  %1925 = load i64, i64* %RAX
  %1926 = load i64, i64* %RBP
  %1927 = sub i64 %1926, 40
  %1928 = load i64, i64* %PC
  %1929 = add i64 %1928, 3
  store i64 %1929, i64* %PC
  %1930 = trunc i64 %1925 to i32
  %1931 = inttoptr i64 %1927 to i32*
  %1932 = load i32, i32* %1931
  %1933 = xor i32 %1932, %1930
  %1934 = zext i32 %1933 to i64
  store i64 %1934, i64* %RAX, align 8, !tbaa !2428
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1935, align 1, !tbaa !2432
  %1936 = and i32 %1933, 255
  %1937 = call i32 @llvm.ctpop.i32(i32 %1936) #16
  %1938 = trunc i32 %1937 to i8
  %1939 = and i8 %1938, 1
  %1940 = xor i8 %1939, 1
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1940, i8* %1941, align 1, !tbaa !2446
  %1942 = icmp eq i32 %1933, 0
  %1943 = zext i1 %1942 to i8
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1943, i8* %1944, align 1, !tbaa !2448
  %1945 = lshr i32 %1933, 31
  %1946 = trunc i32 %1945 to i8
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1946, i8* %1947, align 1, !tbaa !2449
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1948, align 1, !tbaa !2450
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1949, align 1, !tbaa !2447
  %1950 = load i64, i64* %RBP
  %1951 = sub i64 %1950, 40
  %1952 = load i32, i32* %EAX
  %1953 = zext i32 %1952 to i64
  %1954 = load i64, i64* %PC
  %1955 = add i64 %1954, 3
  store i64 %1955, i64* %PC
  %1956 = inttoptr i64 %1951 to i32*
  store i32 %1952, i32* %1956
  %1957 = load i64, i64* %RBP
  %1958 = sub i64 %1957, 40
  %1959 = load i64, i64* %PC
  %1960 = add i64 %1959, 3
  store i64 %1960, i64* %PC
  %1961 = inttoptr i64 %1958 to i32*
  %1962 = load i32, i32* %1961
  %1963 = zext i32 %1962 to i64
  store i64 %1963, i64* %RAX, align 8, !tbaa !2428
  %1964 = load i64, i64* %RAX
  %1965 = load i64, i64* %RBP
  %1966 = sub i64 %1965, 56
  %1967 = load i64, i64* %PC
  %1968 = add i64 %1967, 3
  store i64 %1968, i64* %PC
  %1969 = trunc i64 %1964 to i32
  %1970 = inttoptr i64 %1966 to i32*
  %1971 = load i32, i32* %1970
  %1972 = add i32 %1971, %1969
  %1973 = zext i32 %1972 to i64
  store i64 %1973, i64* %RAX, align 8, !tbaa !2428
  %1974 = icmp ult i32 %1972, %1969
  %1975 = icmp ult i32 %1972, %1971
  %1976 = or i1 %1974, %1975
  %1977 = zext i1 %1976 to i8
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1977, i8* %1978, align 1, !tbaa !2432
  %1979 = and i32 %1972, 255
  %1980 = call i32 @llvm.ctpop.i32(i32 %1979) #16
  %1981 = trunc i32 %1980 to i8
  %1982 = and i8 %1981, 1
  %1983 = xor i8 %1982, 1
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1983, i8* %1984, align 1, !tbaa !2446
  %1985 = xor i32 %1971, %1969
  %1986 = xor i32 %1985, %1972
  %1987 = lshr i32 %1986, 4
  %1988 = trunc i32 %1987 to i8
  %1989 = and i8 %1988, 1
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1989, i8* %1990, align 1, !tbaa !2447
  %1991 = icmp eq i32 %1972, 0
  %1992 = zext i1 %1991 to i8
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1992, i8* %1993, align 1, !tbaa !2448
  %1994 = lshr i32 %1972, 31
  %1995 = trunc i32 %1994 to i8
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1995, i8* %1996, align 1, !tbaa !2449
  %1997 = lshr i32 %1969, 31
  %1998 = lshr i32 %1971, 31
  %1999 = xor i32 %1994, %1997
  %2000 = xor i32 %1994, %1998
  %2001 = add nuw nsw i32 %1999, %2000
  %2002 = icmp eq i32 %2001, 2
  %2003 = zext i1 %2002 to i8
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2003, i8* %2004, align 1, !tbaa !2450
  %2005 = load i64, i64* %RAX
  %2006 = load i64, i64* %PC
  %2007 = add i64 %2006, 3
  store i64 %2007, i64* %PC
  %2008 = and i64 %2005, 4294967295
  %2009 = shl i64 %2008, 8
  %2010 = trunc i64 %2009 to i32
  %2011 = icmp slt i32 %2010, 0
  %2012 = shl i32 %2010, 1
  %2013 = zext i32 %2012 to i64
  store i64 %2013, i64* %RAX, align 8, !tbaa !2428
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2015 = zext i1 %2011 to i8
  store i8 %2015, i8* %2014, align 1, !tbaa !2451
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2016, align 1, !tbaa !2451
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2017, align 1, !tbaa !2451
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2019 = icmp eq i32 %2012, 0
  %2020 = zext i1 %2019 to i8
  store i8 %2020, i8* %2018, align 1, !tbaa !2451
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2022 = lshr i32 %2012, 31
  %2023 = trunc i32 %2022 to i8
  store i8 %2023, i8* %2021, align 1, !tbaa !2451
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2024, align 1, !tbaa !2451
  %2025 = load i64, i64* %RBP
  %2026 = sub i64 %2025, 40
  %2027 = load i64, i64* %PC
  %2028 = add i64 %2027, 3
  store i64 %2028, i64* %PC
  %2029 = inttoptr i64 %2026 to i32*
  %2030 = load i32, i32* %2029
  %2031 = zext i32 %2030 to i64
  store i64 %2031, i64* %RCX, align 8, !tbaa !2428
  %2032 = load i64, i64* %RCX
  %2033 = load i64, i64* %RBP
  %2034 = sub i64 %2033, 56
  %2035 = load i64, i64* %PC
  %2036 = add i64 %2035, 3
  store i64 %2036, i64* %PC
  %2037 = trunc i64 %2032 to i32
  %2038 = inttoptr i64 %2034 to i32*
  %2039 = load i32, i32* %2038
  %2040 = add i32 %2039, %2037
  %2041 = zext i32 %2040 to i64
  store i64 %2041, i64* %RCX, align 8, !tbaa !2428
  %2042 = icmp ult i32 %2040, %2037
  %2043 = icmp ult i32 %2040, %2039
  %2044 = or i1 %2042, %2043
  %2045 = zext i1 %2044 to i8
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2045, i8* %2046, align 1, !tbaa !2432
  %2047 = and i32 %2040, 255
  %2048 = call i32 @llvm.ctpop.i32(i32 %2047) #16
  %2049 = trunc i32 %2048 to i8
  %2050 = and i8 %2049, 1
  %2051 = xor i8 %2050, 1
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2051, i8* %2052, align 1, !tbaa !2446
  %2053 = xor i32 %2039, %2037
  %2054 = xor i32 %2053, %2040
  %2055 = lshr i32 %2054, 4
  %2056 = trunc i32 %2055 to i8
  %2057 = and i8 %2056, 1
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2057, i8* %2058, align 1, !tbaa !2447
  %2059 = icmp eq i32 %2040, 0
  %2060 = zext i1 %2059 to i8
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2060, i8* %2061, align 1, !tbaa !2448
  %2062 = lshr i32 %2040, 31
  %2063 = trunc i32 %2062 to i8
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2063, i8* %2064, align 1, !tbaa !2449
  %2065 = lshr i32 %2037, 31
  %2066 = lshr i32 %2039, 31
  %2067 = xor i32 %2062, %2065
  %2068 = xor i32 %2062, %2066
  %2069 = add nuw nsw i32 %2067, %2068
  %2070 = icmp eq i32 %2069, 2
  %2071 = zext i1 %2070 to i8
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2071, i8* %2072, align 1, !tbaa !2450
  %2073 = load i64, i64* %RCX
  %2074 = load i64, i64* %PC
  %2075 = add i64 %2074, 3
  store i64 %2075, i64* %PC
  %2076 = and i64 %2073, 4294967295
  %2077 = lshr i64 %2076, 22
  %2078 = trunc i64 %2077 to i8
  %2079 = and i8 %2078, 1
  %2080 = lshr i64 %2077, 1
  %2081 = trunc i64 %2080 to i32
  %2082 = and i32 %2081, 2147483647
  %2083 = zext i32 %2082 to i64
  store i64 %2083, i64* %RCX, align 8, !tbaa !2428
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2079, i8* %2084, align 1, !tbaa !2451
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2086 = and i32 %2081, 255
  %2087 = call i32 @llvm.ctpop.i32(i32 %2086) #16
  %2088 = trunc i32 %2087 to i8
  %2089 = and i8 %2088, 1
  %2090 = xor i8 %2089, 1
  store i8 %2090, i8* %2085, align 1, !tbaa !2451
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2091, align 1, !tbaa !2451
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2093 = icmp eq i32 %2082, 0
  %2094 = zext i1 %2093 to i8
  store i8 %2094, i8* %2092, align 1, !tbaa !2451
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2095, align 1, !tbaa !2451
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2096, align 1, !tbaa !2451
  %2097 = load i64, i64* %RAX
  %2098 = load i32, i32* %ECX
  %2099 = zext i32 %2098 to i64
  %2100 = load i64, i64* %PC
  %2101 = add i64 %2100, 2
  store i64 %2101, i64* %PC
  %2102 = or i64 %2099, %2097
  %2103 = trunc i64 %2102 to i32
  %2104 = and i64 %2102, 4294967295
  store i64 %2104, i64* %RAX, align 8, !tbaa !2428
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2105, align 1, !tbaa !2432
  %2106 = and i32 %2103, 255
  %2107 = call i32 @llvm.ctpop.i32(i32 %2106) #16
  %2108 = trunc i32 %2107 to i8
  %2109 = and i8 %2108, 1
  %2110 = xor i8 %2109, 1
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2110, i8* %2111, align 1, !tbaa !2446
  %2112 = icmp eq i32 %2103, 0
  %2113 = zext i1 %2112 to i8
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2113, i8* %2114, align 1, !tbaa !2448
  %2115 = lshr i32 %2103, 31
  %2116 = trunc i32 %2115 to i8
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2116, i8* %2117, align 1, !tbaa !2449
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2118, align 1, !tbaa !2450
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2119, align 1, !tbaa !2447
  %2120 = load i64, i64* %RAX
  %2121 = load i64, i64* %RBP
  %2122 = sub i64 %2121, 88
  %2123 = load i64, i64* %PC
  %2124 = add i64 %2123, 3
  store i64 %2124, i64* %PC
  %2125 = trunc i64 %2120 to i32
  %2126 = inttoptr i64 %2122 to i32*
  %2127 = load i32, i32* %2126
  %2128 = xor i32 %2127, %2125
  %2129 = zext i32 %2128 to i64
  store i64 %2129, i64* %RAX, align 8, !tbaa !2428
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2130, align 1, !tbaa !2432
  %2131 = and i32 %2128, 255
  %2132 = call i32 @llvm.ctpop.i32(i32 %2131) #16
  %2133 = trunc i32 %2132 to i8
  %2134 = and i8 %2133, 1
  %2135 = xor i8 %2134, 1
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2135, i8* %2136, align 1, !tbaa !2446
  %2137 = icmp eq i32 %2128, 0
  %2138 = zext i1 %2137 to i8
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2138, i8* %2139, align 1, !tbaa !2448
  %2140 = lshr i32 %2128, 31
  %2141 = trunc i32 %2140 to i8
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2141, i8* %2142, align 1, !tbaa !2449
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2143, align 1, !tbaa !2450
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2144, align 1, !tbaa !2447
  %2145 = load i64, i64* %RBP
  %2146 = sub i64 %2145, 88
  %2147 = load i32, i32* %EAX
  %2148 = zext i32 %2147 to i64
  %2149 = load i64, i64* %PC
  %2150 = add i64 %2149, 3
  store i64 %2150, i64* %PC
  %2151 = inttoptr i64 %2146 to i32*
  store i32 %2147, i32* %2151
  %2152 = load i64, i64* %RBP
  %2153 = sub i64 %2152, 88
  %2154 = load i64, i64* %PC
  %2155 = add i64 %2154, 3
  store i64 %2155, i64* %PC
  %2156 = inttoptr i64 %2153 to i32*
  %2157 = load i32, i32* %2156
  %2158 = zext i32 %2157 to i64
  store i64 %2158, i64* %RAX, align 8, !tbaa !2428
  %2159 = load i64, i64* %RAX
  %2160 = load i64, i64* %RBP
  %2161 = sub i64 %2160, 40
  %2162 = load i64, i64* %PC
  %2163 = add i64 %2162, 3
  store i64 %2163, i64* %PC
  %2164 = trunc i64 %2159 to i32
  %2165 = inttoptr i64 %2161 to i32*
  %2166 = load i32, i32* %2165
  %2167 = add i32 %2166, %2164
  %2168 = zext i32 %2167 to i64
  store i64 %2168, i64* %RAX, align 8, !tbaa !2428
  %2169 = icmp ult i32 %2167, %2164
  %2170 = icmp ult i32 %2167, %2166
  %2171 = or i1 %2169, %2170
  %2172 = zext i1 %2171 to i8
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2172, i8* %2173, align 1, !tbaa !2432
  %2174 = and i32 %2167, 255
  %2175 = call i32 @llvm.ctpop.i32(i32 %2174) #16
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  %2178 = xor i8 %2177, 1
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2178, i8* %2179, align 1, !tbaa !2446
  %2180 = xor i32 %2166, %2164
  %2181 = xor i32 %2180, %2167
  %2182 = lshr i32 %2181, 4
  %2183 = trunc i32 %2182 to i8
  %2184 = and i8 %2183, 1
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2184, i8* %2185, align 1, !tbaa !2447
  %2186 = icmp eq i32 %2167, 0
  %2187 = zext i1 %2186 to i8
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2187, i8* %2188, align 1, !tbaa !2448
  %2189 = lshr i32 %2167, 31
  %2190 = trunc i32 %2189 to i8
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2190, i8* %2191, align 1, !tbaa !2449
  %2192 = lshr i32 %2164, 31
  %2193 = lshr i32 %2166, 31
  %2194 = xor i32 %2189, %2192
  %2195 = xor i32 %2189, %2193
  %2196 = add nuw nsw i32 %2194, %2195
  %2197 = icmp eq i32 %2196, 2
  %2198 = zext i1 %2197 to i8
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2198, i8* %2199, align 1, !tbaa !2450
  %2200 = load i64, i64* %RAX
  %2201 = load i64, i64* %PC
  %2202 = add i64 %2201, 3
  store i64 %2202, i64* %PC
  %2203 = and i64 %2200, 4294967295
  %2204 = shl i64 %2203, 12
  %2205 = trunc i64 %2204 to i32
  %2206 = icmp slt i32 %2205, 0
  %2207 = shl i32 %2205, 1
  %2208 = zext i32 %2207 to i64
  store i64 %2208, i64* %RAX, align 8, !tbaa !2428
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2210 = zext i1 %2206 to i8
  store i8 %2210, i8* %2209, align 1, !tbaa !2451
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2211, align 1, !tbaa !2451
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2212, align 1, !tbaa !2451
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2214 = icmp eq i32 %2207, 0
  %2215 = zext i1 %2214 to i8
  store i8 %2215, i8* %2213, align 1, !tbaa !2451
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2217 = lshr i32 %2207, 31
  %2218 = trunc i32 %2217 to i8
  store i8 %2218, i8* %2216, align 1, !tbaa !2451
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2219, align 1, !tbaa !2451
  %2220 = load i64, i64* %RBP
  %2221 = sub i64 %2220, 88
  %2222 = load i64, i64* %PC
  %2223 = add i64 %2222, 3
  store i64 %2223, i64* %PC
  %2224 = inttoptr i64 %2221 to i32*
  %2225 = load i32, i32* %2224
  %2226 = zext i32 %2225 to i64
  store i64 %2226, i64* %RCX, align 8, !tbaa !2428
  %2227 = load i64, i64* %RCX
  %2228 = load i64, i64* %RBP
  %2229 = sub i64 %2228, 40
  %2230 = load i64, i64* %PC
  %2231 = add i64 %2230, 3
  store i64 %2231, i64* %PC
  %2232 = trunc i64 %2227 to i32
  %2233 = inttoptr i64 %2229 to i32*
  %2234 = load i32, i32* %2233
  %2235 = add i32 %2234, %2232
  %2236 = zext i32 %2235 to i64
  store i64 %2236, i64* %RCX, align 8, !tbaa !2428
  %2237 = icmp ult i32 %2235, %2232
  %2238 = icmp ult i32 %2235, %2234
  %2239 = or i1 %2237, %2238
  %2240 = zext i1 %2239 to i8
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2240, i8* %2241, align 1, !tbaa !2432
  %2242 = and i32 %2235, 255
  %2243 = call i32 @llvm.ctpop.i32(i32 %2242) #16
  %2244 = trunc i32 %2243 to i8
  %2245 = and i8 %2244, 1
  %2246 = xor i8 %2245, 1
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2246, i8* %2247, align 1, !tbaa !2446
  %2248 = xor i32 %2234, %2232
  %2249 = xor i32 %2248, %2235
  %2250 = lshr i32 %2249, 4
  %2251 = trunc i32 %2250 to i8
  %2252 = and i8 %2251, 1
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2252, i8* %2253, align 1, !tbaa !2447
  %2254 = icmp eq i32 %2235, 0
  %2255 = zext i1 %2254 to i8
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2255, i8* %2256, align 1, !tbaa !2448
  %2257 = lshr i32 %2235, 31
  %2258 = trunc i32 %2257 to i8
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2258, i8* %2259, align 1, !tbaa !2449
  %2260 = lshr i32 %2232, 31
  %2261 = lshr i32 %2234, 31
  %2262 = xor i32 %2257, %2260
  %2263 = xor i32 %2257, %2261
  %2264 = add nuw nsw i32 %2262, %2263
  %2265 = icmp eq i32 %2264, 2
  %2266 = zext i1 %2265 to i8
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2266, i8* %2267, align 1, !tbaa !2450
  %2268 = load i64, i64* %RCX
  %2269 = load i64, i64* %PC
  %2270 = add i64 %2269, 3
  store i64 %2270, i64* %PC
  %2271 = and i64 %2268, 4294967295
  %2272 = lshr i64 %2271, 18
  %2273 = trunc i64 %2272 to i8
  %2274 = and i8 %2273, 1
  %2275 = lshr i64 %2272, 1
  %2276 = trunc i64 %2275 to i32
  %2277 = and i32 %2276, 2147483647
  %2278 = zext i32 %2277 to i64
  store i64 %2278, i64* %RCX, align 8, !tbaa !2428
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2274, i8* %2279, align 1, !tbaa !2451
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2281 = and i32 %2276, 255
  %2282 = call i32 @llvm.ctpop.i32(i32 %2281) #16
  %2283 = trunc i32 %2282 to i8
  %2284 = and i8 %2283, 1
  %2285 = xor i8 %2284, 1
  store i8 %2285, i8* %2280, align 1, !tbaa !2451
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2286, align 1, !tbaa !2451
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2288 = icmp eq i32 %2277, 0
  %2289 = zext i1 %2288 to i8
  store i8 %2289, i8* %2287, align 1, !tbaa !2451
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2290, align 1, !tbaa !2451
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2291, align 1, !tbaa !2451
  %2292 = load i64, i64* %RAX
  %2293 = load i32, i32* %ECX
  %2294 = zext i32 %2293 to i64
  %2295 = load i64, i64* %PC
  %2296 = add i64 %2295, 2
  store i64 %2296, i64* %PC
  %2297 = or i64 %2294, %2292
  %2298 = trunc i64 %2297 to i32
  %2299 = and i64 %2297, 4294967295
  store i64 %2299, i64* %RAX, align 8, !tbaa !2428
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2300, align 1, !tbaa !2432
  %2301 = and i32 %2298, 255
  %2302 = call i32 @llvm.ctpop.i32(i32 %2301) #16
  %2303 = trunc i32 %2302 to i8
  %2304 = and i8 %2303, 1
  %2305 = xor i8 %2304, 1
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2305, i8* %2306, align 1, !tbaa !2446
  %2307 = icmp eq i32 %2298, 0
  %2308 = zext i1 %2307 to i8
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2308, i8* %2309, align 1, !tbaa !2448
  %2310 = lshr i32 %2298, 31
  %2311 = trunc i32 %2310 to i8
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2311, i8* %2312, align 1, !tbaa !2449
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2313, align 1, !tbaa !2450
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2314, align 1, !tbaa !2447
  %2315 = load i64, i64* %RAX
  %2316 = load i64, i64* %RBP
  %2317 = sub i64 %2316, 72
  %2318 = load i64, i64* %PC
  %2319 = add i64 %2318, 3
  store i64 %2319, i64* %PC
  %2320 = trunc i64 %2315 to i32
  %2321 = inttoptr i64 %2317 to i32*
  %2322 = load i32, i32* %2321
  %2323 = xor i32 %2322, %2320
  %2324 = zext i32 %2323 to i64
  store i64 %2324, i64* %RAX, align 8, !tbaa !2428
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2325, align 1, !tbaa !2432
  %2326 = and i32 %2323, 255
  %2327 = call i32 @llvm.ctpop.i32(i32 %2326) #16
  %2328 = trunc i32 %2327 to i8
  %2329 = and i8 %2328, 1
  %2330 = xor i8 %2329, 1
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2330, i8* %2331, align 1, !tbaa !2446
  %2332 = icmp eq i32 %2323, 0
  %2333 = zext i1 %2332 to i8
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2333, i8* %2334, align 1, !tbaa !2448
  %2335 = lshr i32 %2323, 31
  %2336 = trunc i32 %2335 to i8
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2336, i8* %2337, align 1, !tbaa !2449
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2338, align 1, !tbaa !2450
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2339, align 1, !tbaa !2447
  %2340 = load i64, i64* %RBP
  %2341 = sub i64 %2340, 72
  %2342 = load i32, i32* %EAX
  %2343 = zext i32 %2342 to i64
  %2344 = load i64, i64* %PC
  %2345 = add i64 %2344, 3
  store i64 %2345, i64* %PC
  %2346 = inttoptr i64 %2341 to i32*
  store i32 %2342, i32* %2346
  %2347 = load i64, i64* %RBP
  %2348 = sub i64 %2347, 72
  %2349 = load i64, i64* %PC
  %2350 = add i64 %2349, 3
  store i64 %2350, i64* %PC
  %2351 = inttoptr i64 %2348 to i32*
  %2352 = load i32, i32* %2351
  %2353 = zext i32 %2352 to i64
  store i64 %2353, i64* %RAX, align 8, !tbaa !2428
  %2354 = load i64, i64* %RAX
  %2355 = load i64, i64* %RBP
  %2356 = sub i64 %2355, 88
  %2357 = load i64, i64* %PC
  %2358 = add i64 %2357, 3
  store i64 %2358, i64* %PC
  %2359 = trunc i64 %2354 to i32
  %2360 = inttoptr i64 %2356 to i32*
  %2361 = load i32, i32* %2360
  %2362 = add i32 %2361, %2359
  %2363 = zext i32 %2362 to i64
  store i64 %2363, i64* %RAX, align 8, !tbaa !2428
  %2364 = icmp ult i32 %2362, %2359
  %2365 = icmp ult i32 %2362, %2361
  %2366 = or i1 %2364, %2365
  %2367 = zext i1 %2366 to i8
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2367, i8* %2368, align 1, !tbaa !2432
  %2369 = and i32 %2362, 255
  %2370 = call i32 @llvm.ctpop.i32(i32 %2369) #16
  %2371 = trunc i32 %2370 to i8
  %2372 = and i8 %2371, 1
  %2373 = xor i8 %2372, 1
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2373, i8* %2374, align 1, !tbaa !2446
  %2375 = xor i32 %2361, %2359
  %2376 = xor i32 %2375, %2362
  %2377 = lshr i32 %2376, 4
  %2378 = trunc i32 %2377 to i8
  %2379 = and i8 %2378, 1
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2379, i8* %2380, align 1, !tbaa !2447
  %2381 = icmp eq i32 %2362, 0
  %2382 = zext i1 %2381 to i8
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2382, i8* %2383, align 1, !tbaa !2448
  %2384 = lshr i32 %2362, 31
  %2385 = trunc i32 %2384 to i8
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2385, i8* %2386, align 1, !tbaa !2449
  %2387 = lshr i32 %2359, 31
  %2388 = lshr i32 %2361, 31
  %2389 = xor i32 %2384, %2387
  %2390 = xor i32 %2384, %2388
  %2391 = add nuw nsw i32 %2389, %2390
  %2392 = icmp eq i32 %2391, 2
  %2393 = zext i1 %2392 to i8
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2393, i8* %2394, align 1, !tbaa !2450
  %2395 = load i64, i64* %RAX
  %2396 = load i64, i64* %PC
  %2397 = add i64 %2396, 3
  store i64 %2397, i64* %PC
  %2398 = and i64 %2395, 4294967295
  %2399 = shl i64 %2398, 17
  %2400 = trunc i64 %2399 to i32
  %2401 = icmp slt i32 %2400, 0
  %2402 = shl i32 %2400, 1
  %2403 = zext i32 %2402 to i64
  store i64 %2403, i64* %RAX, align 8, !tbaa !2428
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2405 = zext i1 %2401 to i8
  store i8 %2405, i8* %2404, align 1, !tbaa !2451
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2406, align 1, !tbaa !2451
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2407, align 1, !tbaa !2451
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2409 = icmp eq i32 %2402, 0
  %2410 = zext i1 %2409 to i8
  store i8 %2410, i8* %2408, align 1, !tbaa !2451
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2412 = lshr i32 %2402, 31
  %2413 = trunc i32 %2412 to i8
  store i8 %2413, i8* %2411, align 1, !tbaa !2451
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2414, align 1, !tbaa !2451
  %2415 = load i64, i64* %RBP
  %2416 = sub i64 %2415, 72
  %2417 = load i64, i64* %PC
  %2418 = add i64 %2417, 3
  store i64 %2418, i64* %PC
  %2419 = inttoptr i64 %2416 to i32*
  %2420 = load i32, i32* %2419
  %2421 = zext i32 %2420 to i64
  store i64 %2421, i64* %RCX, align 8, !tbaa !2428
  %2422 = load i64, i64* %RCX
  %2423 = load i64, i64* %RBP
  %2424 = sub i64 %2423, 88
  %2425 = load i64, i64* %PC
  %2426 = add i64 %2425, 3
  store i64 %2426, i64* %PC
  %2427 = trunc i64 %2422 to i32
  %2428 = inttoptr i64 %2424 to i32*
  %2429 = load i32, i32* %2428
  %2430 = add i32 %2429, %2427
  %2431 = zext i32 %2430 to i64
  store i64 %2431, i64* %RCX, align 8, !tbaa !2428
  %2432 = icmp ult i32 %2430, %2427
  %2433 = icmp ult i32 %2430, %2429
  %2434 = or i1 %2432, %2433
  %2435 = zext i1 %2434 to i8
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2435, i8* %2436, align 1, !tbaa !2432
  %2437 = and i32 %2430, 255
  %2438 = call i32 @llvm.ctpop.i32(i32 %2437) #16
  %2439 = trunc i32 %2438 to i8
  %2440 = and i8 %2439, 1
  %2441 = xor i8 %2440, 1
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2441, i8* %2442, align 1, !tbaa !2446
  %2443 = xor i32 %2429, %2427
  %2444 = xor i32 %2443, %2430
  %2445 = lshr i32 %2444, 4
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2447, i8* %2448, align 1, !tbaa !2447
  %2449 = icmp eq i32 %2430, 0
  %2450 = zext i1 %2449 to i8
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2450, i8* %2451, align 1, !tbaa !2448
  %2452 = lshr i32 %2430, 31
  %2453 = trunc i32 %2452 to i8
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2453, i8* %2454, align 1, !tbaa !2449
  %2455 = lshr i32 %2427, 31
  %2456 = lshr i32 %2429, 31
  %2457 = xor i32 %2452, %2455
  %2458 = xor i32 %2452, %2456
  %2459 = add nuw nsw i32 %2457, %2458
  %2460 = icmp eq i32 %2459, 2
  %2461 = zext i1 %2460 to i8
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2461, i8* %2462, align 1, !tbaa !2450
  %2463 = load i64, i64* %RCX
  %2464 = load i64, i64* %PC
  %2465 = add i64 %2464, 3
  store i64 %2465, i64* %PC
  %2466 = and i64 %2463, 4294967295
  %2467 = lshr i64 %2466, 13
  %2468 = trunc i64 %2467 to i8
  %2469 = and i8 %2468, 1
  %2470 = lshr i64 %2467, 1
  %2471 = trunc i64 %2470 to i32
  %2472 = and i32 %2471, 2147483647
  %2473 = zext i32 %2472 to i64
  store i64 %2473, i64* %RCX, align 8, !tbaa !2428
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2469, i8* %2474, align 1, !tbaa !2451
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2476 = and i32 %2471, 255
  %2477 = call i32 @llvm.ctpop.i32(i32 %2476) #16
  %2478 = trunc i32 %2477 to i8
  %2479 = and i8 %2478, 1
  %2480 = xor i8 %2479, 1
  store i8 %2480, i8* %2475, align 1, !tbaa !2451
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2481, align 1, !tbaa !2451
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2483 = icmp eq i32 %2472, 0
  %2484 = zext i1 %2483 to i8
  store i8 %2484, i8* %2482, align 1, !tbaa !2451
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2485, align 1, !tbaa !2451
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2486, align 1, !tbaa !2451
  %2487 = load i64, i64* %RAX
  %2488 = load i32, i32* %ECX
  %2489 = zext i32 %2488 to i64
  %2490 = load i64, i64* %PC
  %2491 = add i64 %2490, 2
  store i64 %2491, i64* %PC
  %2492 = or i64 %2489, %2487
  %2493 = trunc i64 %2492 to i32
  %2494 = and i64 %2492, 4294967295
  store i64 %2494, i64* %RAX, align 8, !tbaa !2428
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2495, align 1, !tbaa !2432
  %2496 = and i32 %2493, 255
  %2497 = call i32 @llvm.ctpop.i32(i32 %2496) #16
  %2498 = trunc i32 %2497 to i8
  %2499 = and i8 %2498, 1
  %2500 = xor i8 %2499, 1
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2500, i8* %2501, align 1, !tbaa !2446
  %2502 = icmp eq i32 %2493, 0
  %2503 = zext i1 %2502 to i8
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2503, i8* %2504, align 1, !tbaa !2448
  %2505 = lshr i32 %2493, 31
  %2506 = trunc i32 %2505 to i8
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2506, i8* %2507, align 1, !tbaa !2449
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2508, align 1, !tbaa !2450
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2509, align 1, !tbaa !2447
  %2510 = load i64, i64* %RAX
  %2511 = load i64, i64* %RBP
  %2512 = sub i64 %2511, 56
  %2513 = load i64, i64* %PC
  %2514 = add i64 %2513, 3
  store i64 %2514, i64* %PC
  %2515 = trunc i64 %2510 to i32
  %2516 = inttoptr i64 %2512 to i32*
  %2517 = load i32, i32* %2516
  %2518 = xor i32 %2517, %2515
  %2519 = zext i32 %2518 to i64
  store i64 %2519, i64* %RAX, align 8, !tbaa !2428
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2520, align 1, !tbaa !2432
  %2521 = and i32 %2518, 255
  %2522 = call i32 @llvm.ctpop.i32(i32 %2521) #16
  %2523 = trunc i32 %2522 to i8
  %2524 = and i8 %2523, 1
  %2525 = xor i8 %2524, 1
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2525, i8* %2526, align 1, !tbaa !2446
  %2527 = icmp eq i32 %2518, 0
  %2528 = zext i1 %2527 to i8
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2528, i8* %2529, align 1, !tbaa !2448
  %2530 = lshr i32 %2518, 31
  %2531 = trunc i32 %2530 to i8
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2531, i8* %2532, align 1, !tbaa !2449
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2533, align 1, !tbaa !2450
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2534, align 1, !tbaa !2447
  %2535 = load i64, i64* %RBP
  %2536 = sub i64 %2535, 56
  %2537 = load i32, i32* %EAX
  %2538 = zext i32 %2537 to i64
  %2539 = load i64, i64* %PC
  %2540 = add i64 %2539, 3
  store i64 %2540, i64* %PC
  %2541 = inttoptr i64 %2536 to i32*
  store i32 %2537, i32* %2541
  %2542 = load i64, i64* %RBP
  %2543 = sub i64 %2542, 36
  %2544 = load i64, i64* %PC
  %2545 = add i64 %2544, 3
  store i64 %2545, i64* %PC
  %2546 = inttoptr i64 %2543 to i32*
  %2547 = load i32, i32* %2546
  %2548 = zext i32 %2547 to i64
  store i64 %2548, i64* %RAX, align 8, !tbaa !2428
  %2549 = load i64, i64* %RAX
  %2550 = load i64, i64* %RBP
  %2551 = sub i64 %2550, 52
  %2552 = load i64, i64* %PC
  %2553 = add i64 %2552, 3
  store i64 %2553, i64* %PC
  %2554 = trunc i64 %2549 to i32
  %2555 = inttoptr i64 %2551 to i32*
  %2556 = load i32, i32* %2555
  %2557 = add i32 %2556, %2554
  %2558 = zext i32 %2557 to i64
  store i64 %2558, i64* %RAX, align 8, !tbaa !2428
  %2559 = icmp ult i32 %2557, %2554
  %2560 = icmp ult i32 %2557, %2556
  %2561 = or i1 %2559, %2560
  %2562 = zext i1 %2561 to i8
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2562, i8* %2563, align 1, !tbaa !2432
  %2564 = and i32 %2557, 255
  %2565 = call i32 @llvm.ctpop.i32(i32 %2564) #16
  %2566 = trunc i32 %2565 to i8
  %2567 = and i8 %2566, 1
  %2568 = xor i8 %2567, 1
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2568, i8* %2569, align 1, !tbaa !2446
  %2570 = xor i32 %2556, %2554
  %2571 = xor i32 %2570, %2557
  %2572 = lshr i32 %2571, 4
  %2573 = trunc i32 %2572 to i8
  %2574 = and i8 %2573, 1
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2574, i8* %2575, align 1, !tbaa !2447
  %2576 = icmp eq i32 %2557, 0
  %2577 = zext i1 %2576 to i8
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2577, i8* %2578, align 1, !tbaa !2448
  %2579 = lshr i32 %2557, 31
  %2580 = trunc i32 %2579 to i8
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2580, i8* %2581, align 1, !tbaa !2449
  %2582 = lshr i32 %2554, 31
  %2583 = lshr i32 %2556, 31
  %2584 = xor i32 %2579, %2582
  %2585 = xor i32 %2579, %2583
  %2586 = add nuw nsw i32 %2584, %2585
  %2587 = icmp eq i32 %2586, 2
  %2588 = zext i1 %2587 to i8
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2588, i8* %2589, align 1, !tbaa !2450
  %2590 = load i64, i64* %RAX
  %2591 = load i64, i64* %PC
  %2592 = add i64 %2591, 3
  store i64 %2592, i64* %PC
  %2593 = and i64 %2590, 4294967295
  %2594 = shl i64 %2593, 6
  %2595 = trunc i64 %2594 to i32
  %2596 = icmp slt i32 %2595, 0
  %2597 = shl i32 %2595, 1
  %2598 = zext i32 %2597 to i64
  store i64 %2598, i64* %RAX, align 8, !tbaa !2428
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2600 = zext i1 %2596 to i8
  store i8 %2600, i8* %2599, align 1, !tbaa !2451
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2602 = and i32 %2597, 254
  %2603 = call i32 @llvm.ctpop.i32(i32 %2602) #16
  %2604 = trunc i32 %2603 to i8
  %2605 = and i8 %2604, 1
  %2606 = xor i8 %2605, 1
  store i8 %2606, i8* %2601, align 1, !tbaa !2451
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2607, align 1, !tbaa !2451
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2609 = icmp eq i32 %2597, 0
  %2610 = zext i1 %2609 to i8
  store i8 %2610, i8* %2608, align 1, !tbaa !2451
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2612 = lshr i32 %2597, 31
  %2613 = trunc i32 %2612 to i8
  store i8 %2613, i8* %2611, align 1, !tbaa !2451
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2614, align 1, !tbaa !2451
  %2615 = load i64, i64* %RBP
  %2616 = sub i64 %2615, 36
  %2617 = load i64, i64* %PC
  %2618 = add i64 %2617, 3
  store i64 %2618, i64* %PC
  %2619 = inttoptr i64 %2616 to i32*
  %2620 = load i32, i32* %2619
  %2621 = zext i32 %2620 to i64
  store i64 %2621, i64* %RCX, align 8, !tbaa !2428
  %2622 = load i64, i64* %RCX
  %2623 = load i64, i64* %RBP
  %2624 = sub i64 %2623, 52
  %2625 = load i64, i64* %PC
  %2626 = add i64 %2625, 3
  store i64 %2626, i64* %PC
  %2627 = trunc i64 %2622 to i32
  %2628 = inttoptr i64 %2624 to i32*
  %2629 = load i32, i32* %2628
  %2630 = add i32 %2629, %2627
  %2631 = zext i32 %2630 to i64
  store i64 %2631, i64* %RCX, align 8, !tbaa !2428
  %2632 = icmp ult i32 %2630, %2627
  %2633 = icmp ult i32 %2630, %2629
  %2634 = or i1 %2632, %2633
  %2635 = zext i1 %2634 to i8
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2635, i8* %2636, align 1, !tbaa !2432
  %2637 = and i32 %2630, 255
  %2638 = call i32 @llvm.ctpop.i32(i32 %2637) #16
  %2639 = trunc i32 %2638 to i8
  %2640 = and i8 %2639, 1
  %2641 = xor i8 %2640, 1
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2641, i8* %2642, align 1, !tbaa !2446
  %2643 = xor i32 %2629, %2627
  %2644 = xor i32 %2643, %2630
  %2645 = lshr i32 %2644, 4
  %2646 = trunc i32 %2645 to i8
  %2647 = and i8 %2646, 1
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2647, i8* %2648, align 1, !tbaa !2447
  %2649 = icmp eq i32 %2630, 0
  %2650 = zext i1 %2649 to i8
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2650, i8* %2651, align 1, !tbaa !2448
  %2652 = lshr i32 %2630, 31
  %2653 = trunc i32 %2652 to i8
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2653, i8* %2654, align 1, !tbaa !2449
  %2655 = lshr i32 %2627, 31
  %2656 = lshr i32 %2629, 31
  %2657 = xor i32 %2652, %2655
  %2658 = xor i32 %2652, %2656
  %2659 = add nuw nsw i32 %2657, %2658
  %2660 = icmp eq i32 %2659, 2
  %2661 = zext i1 %2660 to i8
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2661, i8* %2662, align 1, !tbaa !2450
  %2663 = load i64, i64* %RCX
  %2664 = load i64, i64* %PC
  %2665 = add i64 %2664, 3
  store i64 %2665, i64* %PC
  %2666 = and i64 %2663, 4294967295
  %2667 = lshr i64 %2666, 24
  %2668 = trunc i64 %2667 to i8
  %2669 = and i8 %2668, 1
  %2670 = lshr i64 %2667, 1
  %2671 = trunc i64 %2670 to i32
  %2672 = and i32 %2671, 2147483647
  %2673 = zext i32 %2672 to i64
  store i64 %2673, i64* %RCX, align 8, !tbaa !2428
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2669, i8* %2674, align 1, !tbaa !2451
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2676 = and i32 %2671, 255
  %2677 = call i32 @llvm.ctpop.i32(i32 %2676) #16
  %2678 = trunc i32 %2677 to i8
  %2679 = and i8 %2678, 1
  %2680 = xor i8 %2679, 1
  store i8 %2680, i8* %2675, align 1, !tbaa !2451
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2681, align 1, !tbaa !2451
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2683 = icmp eq i32 %2672, 0
  %2684 = zext i1 %2683 to i8
  store i8 %2684, i8* %2682, align 1, !tbaa !2451
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2685, align 1, !tbaa !2451
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2686, align 1, !tbaa !2451
  %2687 = load i64, i64* %RAX
  %2688 = load i32, i32* %ECX
  %2689 = zext i32 %2688 to i64
  %2690 = load i64, i64* %PC
  %2691 = add i64 %2690, 2
  store i64 %2691, i64* %PC
  %2692 = or i64 %2689, %2687
  %2693 = trunc i64 %2692 to i32
  %2694 = and i64 %2692, 4294967295
  store i64 %2694, i64* %RAX, align 8, !tbaa !2428
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2695, align 1, !tbaa !2432
  %2696 = and i32 %2693, 255
  %2697 = call i32 @llvm.ctpop.i32(i32 %2696) #16
  %2698 = trunc i32 %2697 to i8
  %2699 = and i8 %2698, 1
  %2700 = xor i8 %2699, 1
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2700, i8* %2701, align 1, !tbaa !2446
  %2702 = icmp eq i32 %2693, 0
  %2703 = zext i1 %2702 to i8
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2703, i8* %2704, align 1, !tbaa !2448
  %2705 = lshr i32 %2693, 31
  %2706 = trunc i32 %2705 to i8
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2706, i8* %2707, align 1, !tbaa !2449
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2708, align 1, !tbaa !2450
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2709, align 1, !tbaa !2447
  %2710 = load i64, i64* %RAX
  %2711 = load i64, i64* %RBP
  %2712 = sub i64 %2711, 84
  %2713 = load i64, i64* %PC
  %2714 = add i64 %2713, 3
  store i64 %2714, i64* %PC
  %2715 = trunc i64 %2710 to i32
  %2716 = inttoptr i64 %2712 to i32*
  %2717 = load i32, i32* %2716
  %2718 = xor i32 %2717, %2715
  %2719 = zext i32 %2718 to i64
  store i64 %2719, i64* %RAX, align 8, !tbaa !2428
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2720, align 1, !tbaa !2432
  %2721 = and i32 %2718, 255
  %2722 = call i32 @llvm.ctpop.i32(i32 %2721) #16
  %2723 = trunc i32 %2722 to i8
  %2724 = and i8 %2723, 1
  %2725 = xor i8 %2724, 1
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2725, i8* %2726, align 1, !tbaa !2446
  %2727 = icmp eq i32 %2718, 0
  %2728 = zext i1 %2727 to i8
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2728, i8* %2729, align 1, !tbaa !2448
  %2730 = lshr i32 %2718, 31
  %2731 = trunc i32 %2730 to i8
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2731, i8* %2732, align 1, !tbaa !2449
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2733, align 1, !tbaa !2450
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2734, align 1, !tbaa !2447
  %2735 = load i64, i64* %RBP
  %2736 = sub i64 %2735, 84
  %2737 = load i32, i32* %EAX
  %2738 = zext i32 %2737 to i64
  %2739 = load i64, i64* %PC
  %2740 = add i64 %2739, 3
  store i64 %2740, i64* %PC
  %2741 = inttoptr i64 %2736 to i32*
  store i32 %2737, i32* %2741
  %2742 = load i64, i64* %RBP
  %2743 = sub i64 %2742, 84
  %2744 = load i64, i64* %PC
  %2745 = add i64 %2744, 3
  store i64 %2745, i64* %PC
  %2746 = inttoptr i64 %2743 to i32*
  %2747 = load i32, i32* %2746
  %2748 = zext i32 %2747 to i64
  store i64 %2748, i64* %RAX, align 8, !tbaa !2428
  %2749 = load i64, i64* %RAX
  %2750 = load i64, i64* %RBP
  %2751 = sub i64 %2750, 36
  %2752 = load i64, i64* %PC
  %2753 = add i64 %2752, 3
  store i64 %2753, i64* %PC
  %2754 = trunc i64 %2749 to i32
  %2755 = inttoptr i64 %2751 to i32*
  %2756 = load i32, i32* %2755
  %2757 = add i32 %2756, %2754
  %2758 = zext i32 %2757 to i64
  store i64 %2758, i64* %RAX, align 8, !tbaa !2428
  %2759 = icmp ult i32 %2757, %2754
  %2760 = icmp ult i32 %2757, %2756
  %2761 = or i1 %2759, %2760
  %2762 = zext i1 %2761 to i8
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2762, i8* %2763, align 1, !tbaa !2432
  %2764 = and i32 %2757, 255
  %2765 = call i32 @llvm.ctpop.i32(i32 %2764) #16
  %2766 = trunc i32 %2765 to i8
  %2767 = and i8 %2766, 1
  %2768 = xor i8 %2767, 1
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2768, i8* %2769, align 1, !tbaa !2446
  %2770 = xor i32 %2756, %2754
  %2771 = xor i32 %2770, %2757
  %2772 = lshr i32 %2771, 4
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2774, i8* %2775, align 1, !tbaa !2447
  %2776 = icmp eq i32 %2757, 0
  %2777 = zext i1 %2776 to i8
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2777, i8* %2778, align 1, !tbaa !2448
  %2779 = lshr i32 %2757, 31
  %2780 = trunc i32 %2779 to i8
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2780, i8* %2781, align 1, !tbaa !2449
  %2782 = lshr i32 %2754, 31
  %2783 = lshr i32 %2756, 31
  %2784 = xor i32 %2779, %2782
  %2785 = xor i32 %2779, %2783
  %2786 = add nuw nsw i32 %2784, %2785
  %2787 = icmp eq i32 %2786, 2
  %2788 = zext i1 %2787 to i8
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2788, i8* %2789, align 1, !tbaa !2450
  %2790 = load i64, i64* %RAX
  %2791 = load i64, i64* %PC
  %2792 = add i64 %2791, 3
  store i64 %2792, i64* %PC
  %2793 = and i64 %2790, 4294967295
  %2794 = shl i64 %2793, 8
  %2795 = trunc i64 %2794 to i32
  %2796 = icmp slt i32 %2795, 0
  %2797 = shl i32 %2795, 1
  %2798 = zext i32 %2797 to i64
  store i64 %2798, i64* %RAX, align 8, !tbaa !2428
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2800 = zext i1 %2796 to i8
  store i8 %2800, i8* %2799, align 1, !tbaa !2451
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2801, align 1, !tbaa !2451
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2802, align 1, !tbaa !2451
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2804 = icmp eq i32 %2797, 0
  %2805 = zext i1 %2804 to i8
  store i8 %2805, i8* %2803, align 1, !tbaa !2451
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2807 = lshr i32 %2797, 31
  %2808 = trunc i32 %2807 to i8
  store i8 %2808, i8* %2806, align 1, !tbaa !2451
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2809, align 1, !tbaa !2451
  %2810 = load i64, i64* %RBP
  %2811 = sub i64 %2810, 84
  %2812 = load i64, i64* %PC
  %2813 = add i64 %2812, 3
  store i64 %2813, i64* %PC
  %2814 = inttoptr i64 %2811 to i32*
  %2815 = load i32, i32* %2814
  %2816 = zext i32 %2815 to i64
  store i64 %2816, i64* %RCX, align 8, !tbaa !2428
  %2817 = load i64, i64* %RCX
  %2818 = load i64, i64* %RBP
  %2819 = sub i64 %2818, 36
  %2820 = load i64, i64* %PC
  %2821 = add i64 %2820, 3
  store i64 %2821, i64* %PC
  %2822 = trunc i64 %2817 to i32
  %2823 = inttoptr i64 %2819 to i32*
  %2824 = load i32, i32* %2823
  %2825 = add i32 %2824, %2822
  %2826 = zext i32 %2825 to i64
  store i64 %2826, i64* %RCX, align 8, !tbaa !2428
  %2827 = icmp ult i32 %2825, %2822
  %2828 = icmp ult i32 %2825, %2824
  %2829 = or i1 %2827, %2828
  %2830 = zext i1 %2829 to i8
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2830, i8* %2831, align 1, !tbaa !2432
  %2832 = and i32 %2825, 255
  %2833 = call i32 @llvm.ctpop.i32(i32 %2832) #16
  %2834 = trunc i32 %2833 to i8
  %2835 = and i8 %2834, 1
  %2836 = xor i8 %2835, 1
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2836, i8* %2837, align 1, !tbaa !2446
  %2838 = xor i32 %2824, %2822
  %2839 = xor i32 %2838, %2825
  %2840 = lshr i32 %2839, 4
  %2841 = trunc i32 %2840 to i8
  %2842 = and i8 %2841, 1
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2842, i8* %2843, align 1, !tbaa !2447
  %2844 = icmp eq i32 %2825, 0
  %2845 = zext i1 %2844 to i8
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2845, i8* %2846, align 1, !tbaa !2448
  %2847 = lshr i32 %2825, 31
  %2848 = trunc i32 %2847 to i8
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2848, i8* %2849, align 1, !tbaa !2449
  %2850 = lshr i32 %2822, 31
  %2851 = lshr i32 %2824, 31
  %2852 = xor i32 %2847, %2850
  %2853 = xor i32 %2847, %2851
  %2854 = add nuw nsw i32 %2852, %2853
  %2855 = icmp eq i32 %2854, 2
  %2856 = zext i1 %2855 to i8
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2856, i8* %2857, align 1, !tbaa !2450
  %2858 = load i64, i64* %RCX
  %2859 = load i64, i64* %PC
  %2860 = add i64 %2859, 3
  store i64 %2860, i64* %PC
  %2861 = and i64 %2858, 4294967295
  %2862 = lshr i64 %2861, 22
  %2863 = trunc i64 %2862 to i8
  %2864 = and i8 %2863, 1
  %2865 = lshr i64 %2862, 1
  %2866 = trunc i64 %2865 to i32
  %2867 = and i32 %2866, 2147483647
  %2868 = zext i32 %2867 to i64
  store i64 %2868, i64* %RCX, align 8, !tbaa !2428
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2864, i8* %2869, align 1, !tbaa !2451
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2871 = and i32 %2866, 255
  %2872 = call i32 @llvm.ctpop.i32(i32 %2871) #16
  %2873 = trunc i32 %2872 to i8
  %2874 = and i8 %2873, 1
  %2875 = xor i8 %2874, 1
  store i8 %2875, i8* %2870, align 1, !tbaa !2451
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2876, align 1, !tbaa !2451
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2878 = icmp eq i32 %2867, 0
  %2879 = zext i1 %2878 to i8
  store i8 %2879, i8* %2877, align 1, !tbaa !2451
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2880, align 1, !tbaa !2451
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2881, align 1, !tbaa !2451
  %2882 = load i64, i64* %RAX
  %2883 = load i32, i32* %ECX
  %2884 = zext i32 %2883 to i64
  %2885 = load i64, i64* %PC
  %2886 = add i64 %2885, 2
  store i64 %2886, i64* %PC
  %2887 = or i64 %2884, %2882
  %2888 = trunc i64 %2887 to i32
  %2889 = and i64 %2887, 4294967295
  store i64 %2889, i64* %RAX, align 8, !tbaa !2428
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2890, align 1, !tbaa !2432
  %2891 = and i32 %2888, 255
  %2892 = call i32 @llvm.ctpop.i32(i32 %2891) #16
  %2893 = trunc i32 %2892 to i8
  %2894 = and i8 %2893, 1
  %2895 = xor i8 %2894, 1
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2895, i8* %2896, align 1, !tbaa !2446
  %2897 = icmp eq i32 %2888, 0
  %2898 = zext i1 %2897 to i8
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2898, i8* %2899, align 1, !tbaa !2448
  %2900 = lshr i32 %2888, 31
  %2901 = trunc i32 %2900 to i8
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2901, i8* %2902, align 1, !tbaa !2449
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2903, align 1, !tbaa !2450
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2904, align 1, !tbaa !2447
  %2905 = load i64, i64* %RAX
  %2906 = load i64, i64* %RBP
  %2907 = sub i64 %2906, 68
  %2908 = load i64, i64* %PC
  %2909 = add i64 %2908, 3
  store i64 %2909, i64* %PC
  %2910 = trunc i64 %2905 to i32
  %2911 = inttoptr i64 %2907 to i32*
  %2912 = load i32, i32* %2911
  %2913 = xor i32 %2912, %2910
  %2914 = zext i32 %2913 to i64
  store i64 %2914, i64* %RAX, align 8, !tbaa !2428
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2915, align 1, !tbaa !2432
  %2916 = and i32 %2913, 255
  %2917 = call i32 @llvm.ctpop.i32(i32 %2916) #16
  %2918 = trunc i32 %2917 to i8
  %2919 = and i8 %2918, 1
  %2920 = xor i8 %2919, 1
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2920, i8* %2921, align 1, !tbaa !2446
  %2922 = icmp eq i32 %2913, 0
  %2923 = zext i1 %2922 to i8
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2923, i8* %2924, align 1, !tbaa !2448
  %2925 = lshr i32 %2913, 31
  %2926 = trunc i32 %2925 to i8
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2926, i8* %2927, align 1, !tbaa !2449
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2928, align 1, !tbaa !2450
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2929, align 1, !tbaa !2447
  %2930 = load i64, i64* %RBP
  %2931 = sub i64 %2930, 68
  %2932 = load i32, i32* %EAX
  %2933 = zext i32 %2932 to i64
  %2934 = load i64, i64* %PC
  %2935 = add i64 %2934, 3
  store i64 %2935, i64* %PC
  %2936 = inttoptr i64 %2931 to i32*
  store i32 %2932, i32* %2936
  %2937 = load i64, i64* %RBP
  %2938 = sub i64 %2937, 68
  %2939 = load i64, i64* %PC
  %2940 = add i64 %2939, 3
  store i64 %2940, i64* %PC
  %2941 = inttoptr i64 %2938 to i32*
  %2942 = load i32, i32* %2941
  %2943 = zext i32 %2942 to i64
  store i64 %2943, i64* %RAX, align 8, !tbaa !2428
  %2944 = load i64, i64* %RAX
  %2945 = load i64, i64* %RBP
  %2946 = sub i64 %2945, 84
  %2947 = load i64, i64* %PC
  %2948 = add i64 %2947, 3
  store i64 %2948, i64* %PC
  %2949 = trunc i64 %2944 to i32
  %2950 = inttoptr i64 %2946 to i32*
  %2951 = load i32, i32* %2950
  %2952 = add i32 %2951, %2949
  %2953 = zext i32 %2952 to i64
  store i64 %2953, i64* %RAX, align 8, !tbaa !2428
  %2954 = icmp ult i32 %2952, %2949
  %2955 = icmp ult i32 %2952, %2951
  %2956 = or i1 %2954, %2955
  %2957 = zext i1 %2956 to i8
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2957, i8* %2958, align 1, !tbaa !2432
  %2959 = and i32 %2952, 255
  %2960 = call i32 @llvm.ctpop.i32(i32 %2959) #16
  %2961 = trunc i32 %2960 to i8
  %2962 = and i8 %2961, 1
  %2963 = xor i8 %2962, 1
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2963, i8* %2964, align 1, !tbaa !2446
  %2965 = xor i32 %2951, %2949
  %2966 = xor i32 %2965, %2952
  %2967 = lshr i32 %2966, 4
  %2968 = trunc i32 %2967 to i8
  %2969 = and i8 %2968, 1
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2969, i8* %2970, align 1, !tbaa !2447
  %2971 = icmp eq i32 %2952, 0
  %2972 = zext i1 %2971 to i8
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2972, i8* %2973, align 1, !tbaa !2448
  %2974 = lshr i32 %2952, 31
  %2975 = trunc i32 %2974 to i8
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2975, i8* %2976, align 1, !tbaa !2449
  %2977 = lshr i32 %2949, 31
  %2978 = lshr i32 %2951, 31
  %2979 = xor i32 %2974, %2977
  %2980 = xor i32 %2974, %2978
  %2981 = add nuw nsw i32 %2979, %2980
  %2982 = icmp eq i32 %2981, 2
  %2983 = zext i1 %2982 to i8
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2983, i8* %2984, align 1, !tbaa !2450
  %2985 = load i64, i64* %RAX
  %2986 = load i64, i64* %PC
  %2987 = add i64 %2986, 3
  store i64 %2987, i64* %PC
  %2988 = and i64 %2985, 4294967295
  %2989 = shl i64 %2988, 12
  %2990 = trunc i64 %2989 to i32
  %2991 = icmp slt i32 %2990, 0
  %2992 = shl i32 %2990, 1
  %2993 = zext i32 %2992 to i64
  store i64 %2993, i64* %RAX, align 8, !tbaa !2428
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2995 = zext i1 %2991 to i8
  store i8 %2995, i8* %2994, align 1, !tbaa !2451
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2996, align 1, !tbaa !2451
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2997, align 1, !tbaa !2451
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2999 = icmp eq i32 %2992, 0
  %3000 = zext i1 %2999 to i8
  store i8 %3000, i8* %2998, align 1, !tbaa !2451
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3002 = lshr i32 %2992, 31
  %3003 = trunc i32 %3002 to i8
  store i8 %3003, i8* %3001, align 1, !tbaa !2451
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3004, align 1, !tbaa !2451
  %3005 = load i64, i64* %RBP
  %3006 = sub i64 %3005, 68
  %3007 = load i64, i64* %PC
  %3008 = add i64 %3007, 3
  store i64 %3008, i64* %PC
  %3009 = inttoptr i64 %3006 to i32*
  %3010 = load i32, i32* %3009
  %3011 = zext i32 %3010 to i64
  store i64 %3011, i64* %RCX, align 8, !tbaa !2428
  %3012 = load i64, i64* %RCX
  %3013 = load i64, i64* %RBP
  %3014 = sub i64 %3013, 84
  %3015 = load i64, i64* %PC
  %3016 = add i64 %3015, 3
  store i64 %3016, i64* %PC
  %3017 = trunc i64 %3012 to i32
  %3018 = inttoptr i64 %3014 to i32*
  %3019 = load i32, i32* %3018
  %3020 = add i32 %3019, %3017
  %3021 = zext i32 %3020 to i64
  store i64 %3021, i64* %RCX, align 8, !tbaa !2428
  %3022 = icmp ult i32 %3020, %3017
  %3023 = icmp ult i32 %3020, %3019
  %3024 = or i1 %3022, %3023
  %3025 = zext i1 %3024 to i8
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3025, i8* %3026, align 1, !tbaa !2432
  %3027 = and i32 %3020, 255
  %3028 = call i32 @llvm.ctpop.i32(i32 %3027) #16
  %3029 = trunc i32 %3028 to i8
  %3030 = and i8 %3029, 1
  %3031 = xor i8 %3030, 1
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3031, i8* %3032, align 1, !tbaa !2446
  %3033 = xor i32 %3019, %3017
  %3034 = xor i32 %3033, %3020
  %3035 = lshr i32 %3034, 4
  %3036 = trunc i32 %3035 to i8
  %3037 = and i8 %3036, 1
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3037, i8* %3038, align 1, !tbaa !2447
  %3039 = icmp eq i32 %3020, 0
  %3040 = zext i1 %3039 to i8
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3040, i8* %3041, align 1, !tbaa !2448
  %3042 = lshr i32 %3020, 31
  %3043 = trunc i32 %3042 to i8
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3043, i8* %3044, align 1, !tbaa !2449
  %3045 = lshr i32 %3017, 31
  %3046 = lshr i32 %3019, 31
  %3047 = xor i32 %3042, %3045
  %3048 = xor i32 %3042, %3046
  %3049 = add nuw nsw i32 %3047, %3048
  %3050 = icmp eq i32 %3049, 2
  %3051 = zext i1 %3050 to i8
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3051, i8* %3052, align 1, !tbaa !2450
  %3053 = load i64, i64* %RCX
  %3054 = load i64, i64* %PC
  %3055 = add i64 %3054, 3
  store i64 %3055, i64* %PC
  %3056 = and i64 %3053, 4294967295
  %3057 = lshr i64 %3056, 18
  %3058 = trunc i64 %3057 to i8
  %3059 = and i8 %3058, 1
  %3060 = lshr i64 %3057, 1
  %3061 = trunc i64 %3060 to i32
  %3062 = and i32 %3061, 2147483647
  %3063 = zext i32 %3062 to i64
  store i64 %3063, i64* %RCX, align 8, !tbaa !2428
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3059, i8* %3064, align 1, !tbaa !2451
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3066 = and i32 %3061, 255
  %3067 = call i32 @llvm.ctpop.i32(i32 %3066) #16
  %3068 = trunc i32 %3067 to i8
  %3069 = and i8 %3068, 1
  %3070 = xor i8 %3069, 1
  store i8 %3070, i8* %3065, align 1, !tbaa !2451
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3071, align 1, !tbaa !2451
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3073 = icmp eq i32 %3062, 0
  %3074 = zext i1 %3073 to i8
  store i8 %3074, i8* %3072, align 1, !tbaa !2451
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3075, align 1, !tbaa !2451
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3076, align 1, !tbaa !2451
  %3077 = load i64, i64* %RAX
  %3078 = load i32, i32* %ECX
  %3079 = zext i32 %3078 to i64
  %3080 = load i64, i64* %PC
  %3081 = add i64 %3080, 2
  store i64 %3081, i64* %PC
  %3082 = or i64 %3079, %3077
  %3083 = trunc i64 %3082 to i32
  %3084 = and i64 %3082, 4294967295
  store i64 %3084, i64* %RAX, align 8, !tbaa !2428
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3085, align 1, !tbaa !2432
  %3086 = and i32 %3083, 255
  %3087 = call i32 @llvm.ctpop.i32(i32 %3086) #16
  %3088 = trunc i32 %3087 to i8
  %3089 = and i8 %3088, 1
  %3090 = xor i8 %3089, 1
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3090, i8* %3091, align 1, !tbaa !2446
  %3092 = icmp eq i32 %3083, 0
  %3093 = zext i1 %3092 to i8
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3093, i8* %3094, align 1, !tbaa !2448
  %3095 = lshr i32 %3083, 31
  %3096 = trunc i32 %3095 to i8
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3096, i8* %3097, align 1, !tbaa !2449
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3098, align 1, !tbaa !2450
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3099, align 1, !tbaa !2447
  %3100 = load i64, i64* %RAX
  %3101 = load i64, i64* %RBP
  %3102 = sub i64 %3101, 52
  %3103 = load i64, i64* %PC
  %3104 = add i64 %3103, 3
  store i64 %3104, i64* %PC
  %3105 = trunc i64 %3100 to i32
  %3106 = inttoptr i64 %3102 to i32*
  %3107 = load i32, i32* %3106
  %3108 = xor i32 %3107, %3105
  %3109 = zext i32 %3108 to i64
  store i64 %3109, i64* %RAX, align 8, !tbaa !2428
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3110, align 1, !tbaa !2432
  %3111 = and i32 %3108, 255
  %3112 = call i32 @llvm.ctpop.i32(i32 %3111) #16
  %3113 = trunc i32 %3112 to i8
  %3114 = and i8 %3113, 1
  %3115 = xor i8 %3114, 1
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3115, i8* %3116, align 1, !tbaa !2446
  %3117 = icmp eq i32 %3108, 0
  %3118 = zext i1 %3117 to i8
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3118, i8* %3119, align 1, !tbaa !2448
  %3120 = lshr i32 %3108, 31
  %3121 = trunc i32 %3120 to i8
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3121, i8* %3122, align 1, !tbaa !2449
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3123, align 1, !tbaa !2450
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3124, align 1, !tbaa !2447
  %3125 = load i64, i64* %RBP
  %3126 = sub i64 %3125, 52
  %3127 = load i32, i32* %EAX
  %3128 = zext i32 %3127 to i64
  %3129 = load i64, i64* %PC
  %3130 = add i64 %3129, 3
  store i64 %3130, i64* %PC
  %3131 = inttoptr i64 %3126 to i32*
  store i32 %3127, i32* %3131
  %3132 = load i64, i64* %RBP
  %3133 = sub i64 %3132, 52
  %3134 = load i64, i64* %PC
  %3135 = add i64 %3134, 3
  store i64 %3135, i64* %PC
  %3136 = inttoptr i64 %3133 to i32*
  %3137 = load i32, i32* %3136
  %3138 = zext i32 %3137 to i64
  store i64 %3138, i64* %RAX, align 8, !tbaa !2428
  %3139 = load i64, i64* %RAX
  %3140 = load i64, i64* %RBP
  %3141 = sub i64 %3140, 68
  %3142 = load i64, i64* %PC
  %3143 = add i64 %3142, 3
  store i64 %3143, i64* %PC
  %3144 = trunc i64 %3139 to i32
  %3145 = inttoptr i64 %3141 to i32*
  %3146 = load i32, i32* %3145
  %3147 = add i32 %3146, %3144
  %3148 = zext i32 %3147 to i64
  store i64 %3148, i64* %RAX, align 8, !tbaa !2428
  %3149 = icmp ult i32 %3147, %3144
  %3150 = icmp ult i32 %3147, %3146
  %3151 = or i1 %3149, %3150
  %3152 = zext i1 %3151 to i8
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3152, i8* %3153, align 1, !tbaa !2432
  %3154 = and i32 %3147, 255
  %3155 = call i32 @llvm.ctpop.i32(i32 %3154) #16
  %3156 = trunc i32 %3155 to i8
  %3157 = and i8 %3156, 1
  %3158 = xor i8 %3157, 1
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3158, i8* %3159, align 1, !tbaa !2446
  %3160 = xor i32 %3146, %3144
  %3161 = xor i32 %3160, %3147
  %3162 = lshr i32 %3161, 4
  %3163 = trunc i32 %3162 to i8
  %3164 = and i8 %3163, 1
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3164, i8* %3165, align 1, !tbaa !2447
  %3166 = icmp eq i32 %3147, 0
  %3167 = zext i1 %3166 to i8
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3167, i8* %3168, align 1, !tbaa !2448
  %3169 = lshr i32 %3147, 31
  %3170 = trunc i32 %3169 to i8
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3170, i8* %3171, align 1, !tbaa !2449
  %3172 = lshr i32 %3144, 31
  %3173 = lshr i32 %3146, 31
  %3174 = xor i32 %3169, %3172
  %3175 = xor i32 %3169, %3173
  %3176 = add nuw nsw i32 %3174, %3175
  %3177 = icmp eq i32 %3176, 2
  %3178 = zext i1 %3177 to i8
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3178, i8* %3179, align 1, !tbaa !2450
  %3180 = load i64, i64* %RAX
  %3181 = load i64, i64* %PC
  %3182 = add i64 %3181, 3
  store i64 %3182, i64* %PC
  %3183 = and i64 %3180, 4294967295
  %3184 = shl i64 %3183, 17
  %3185 = trunc i64 %3184 to i32
  %3186 = icmp slt i32 %3185, 0
  %3187 = shl i32 %3185, 1
  %3188 = zext i32 %3187 to i64
  store i64 %3188, i64* %RAX, align 8, !tbaa !2428
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3190 = zext i1 %3186 to i8
  store i8 %3190, i8* %3189, align 1, !tbaa !2451
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3191, align 1, !tbaa !2451
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3192, align 1, !tbaa !2451
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3194 = icmp eq i32 %3187, 0
  %3195 = zext i1 %3194 to i8
  store i8 %3195, i8* %3193, align 1, !tbaa !2451
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3197 = lshr i32 %3187, 31
  %3198 = trunc i32 %3197 to i8
  store i8 %3198, i8* %3196, align 1, !tbaa !2451
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3199, align 1, !tbaa !2451
  %3200 = load i64, i64* %RBP
  %3201 = sub i64 %3200, 52
  %3202 = load i64, i64* %PC
  %3203 = add i64 %3202, 3
  store i64 %3203, i64* %PC
  %3204 = inttoptr i64 %3201 to i32*
  %3205 = load i32, i32* %3204
  %3206 = zext i32 %3205 to i64
  store i64 %3206, i64* %RCX, align 8, !tbaa !2428
  %3207 = load i64, i64* %RCX
  %3208 = load i64, i64* %RBP
  %3209 = sub i64 %3208, 68
  %3210 = load i64, i64* %PC
  %3211 = add i64 %3210, 3
  store i64 %3211, i64* %PC
  %3212 = trunc i64 %3207 to i32
  %3213 = inttoptr i64 %3209 to i32*
  %3214 = load i32, i32* %3213
  %3215 = add i32 %3214, %3212
  %3216 = zext i32 %3215 to i64
  store i64 %3216, i64* %RCX, align 8, !tbaa !2428
  %3217 = icmp ult i32 %3215, %3212
  %3218 = icmp ult i32 %3215, %3214
  %3219 = or i1 %3217, %3218
  %3220 = zext i1 %3219 to i8
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3220, i8* %3221, align 1, !tbaa !2432
  %3222 = and i32 %3215, 255
  %3223 = call i32 @llvm.ctpop.i32(i32 %3222) #16
  %3224 = trunc i32 %3223 to i8
  %3225 = and i8 %3224, 1
  %3226 = xor i8 %3225, 1
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3226, i8* %3227, align 1, !tbaa !2446
  %3228 = xor i32 %3214, %3212
  %3229 = xor i32 %3228, %3215
  %3230 = lshr i32 %3229, 4
  %3231 = trunc i32 %3230 to i8
  %3232 = and i8 %3231, 1
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3232, i8* %3233, align 1, !tbaa !2447
  %3234 = icmp eq i32 %3215, 0
  %3235 = zext i1 %3234 to i8
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3235, i8* %3236, align 1, !tbaa !2448
  %3237 = lshr i32 %3215, 31
  %3238 = trunc i32 %3237 to i8
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3238, i8* %3239, align 1, !tbaa !2449
  %3240 = lshr i32 %3212, 31
  %3241 = lshr i32 %3214, 31
  %3242 = xor i32 %3237, %3240
  %3243 = xor i32 %3237, %3241
  %3244 = add nuw nsw i32 %3242, %3243
  %3245 = icmp eq i32 %3244, 2
  %3246 = zext i1 %3245 to i8
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3246, i8* %3247, align 1, !tbaa !2450
  %3248 = load i64, i64* %RCX
  %3249 = load i64, i64* %PC
  %3250 = add i64 %3249, 3
  store i64 %3250, i64* %PC
  %3251 = and i64 %3248, 4294967295
  %3252 = lshr i64 %3251, 13
  %3253 = trunc i64 %3252 to i8
  %3254 = and i8 %3253, 1
  %3255 = lshr i64 %3252, 1
  %3256 = trunc i64 %3255 to i32
  %3257 = and i32 %3256, 2147483647
  %3258 = zext i32 %3257 to i64
  store i64 %3258, i64* %RCX, align 8, !tbaa !2428
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3254, i8* %3259, align 1, !tbaa !2451
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3261 = and i32 %3256, 255
  %3262 = call i32 @llvm.ctpop.i32(i32 %3261) #16
  %3263 = trunc i32 %3262 to i8
  %3264 = and i8 %3263, 1
  %3265 = xor i8 %3264, 1
  store i8 %3265, i8* %3260, align 1, !tbaa !2451
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3266, align 1, !tbaa !2451
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3268 = icmp eq i32 %3257, 0
  %3269 = zext i1 %3268 to i8
  store i8 %3269, i8* %3267, align 1, !tbaa !2451
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3270, align 1, !tbaa !2451
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3271, align 1, !tbaa !2451
  %3272 = load i64, i64* %RAX
  %3273 = load i32, i32* %ECX
  %3274 = zext i32 %3273 to i64
  %3275 = load i64, i64* %PC
  %3276 = add i64 %3275, 2
  store i64 %3276, i64* %PC
  %3277 = or i64 %3274, %3272
  %3278 = trunc i64 %3277 to i32
  %3279 = and i64 %3277, 4294967295
  store i64 %3279, i64* %RAX, align 8, !tbaa !2428
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3280, align 1, !tbaa !2432
  %3281 = and i32 %3278, 255
  %3282 = call i32 @llvm.ctpop.i32(i32 %3281) #16
  %3283 = trunc i32 %3282 to i8
  %3284 = and i8 %3283, 1
  %3285 = xor i8 %3284, 1
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3285, i8* %3286, align 1, !tbaa !2446
  %3287 = icmp eq i32 %3278, 0
  %3288 = zext i1 %3287 to i8
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3288, i8* %3289, align 1, !tbaa !2448
  %3290 = lshr i32 %3278, 31
  %3291 = trunc i32 %3290 to i8
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3291, i8* %3292, align 1, !tbaa !2449
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3293, align 1, !tbaa !2450
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3294, align 1, !tbaa !2447
  %3295 = load i64, i64* %RAX
  %3296 = load i64, i64* %RBP
  %3297 = sub i64 %3296, 36
  %3298 = load i64, i64* %PC
  %3299 = add i64 %3298, 3
  store i64 %3299, i64* %PC
  %3300 = trunc i64 %3295 to i32
  %3301 = inttoptr i64 %3297 to i32*
  %3302 = load i32, i32* %3301
  %3303 = xor i32 %3302, %3300
  %3304 = zext i32 %3303 to i64
  store i64 %3304, i64* %RAX, align 8, !tbaa !2428
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3305, align 1, !tbaa !2432
  %3306 = and i32 %3303, 255
  %3307 = call i32 @llvm.ctpop.i32(i32 %3306) #16
  %3308 = trunc i32 %3307 to i8
  %3309 = and i8 %3308, 1
  %3310 = xor i8 %3309, 1
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3310, i8* %3311, align 1, !tbaa !2446
  %3312 = icmp eq i32 %3303, 0
  %3313 = zext i1 %3312 to i8
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3313, i8* %3314, align 1, !tbaa !2448
  %3315 = lshr i32 %3303, 31
  %3316 = trunc i32 %3315 to i8
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3316, i8* %3317, align 1, !tbaa !2449
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3318, align 1, !tbaa !2450
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3319, align 1, !tbaa !2447
  %3320 = load i64, i64* %RBP
  %3321 = sub i64 %3320, 36
  %3322 = load i32, i32* %EAX
  %3323 = zext i32 %3322 to i64
  %3324 = load i64, i64* %PC
  %3325 = add i64 %3324, 3
  store i64 %3325, i64* %PC
  %3326 = inttoptr i64 %3321 to i32*
  store i32 %3322, i32* %3326
  %3327 = load i64, i64* %RBP
  %3328 = sub i64 %3327, 96
  %3329 = load i64, i64* %PC
  %3330 = add i64 %3329, 3
  store i64 %3330, i64* %PC
  %3331 = inttoptr i64 %3328 to i32*
  %3332 = load i32, i32* %3331
  %3333 = zext i32 %3332 to i64
  store i64 %3333, i64* %RAX, align 8, !tbaa !2428
  %3334 = load i64, i64* %RAX
  %3335 = load i64, i64* %RBP
  %3336 = sub i64 %3335, 84
  %3337 = load i64, i64* %PC
  %3338 = add i64 %3337, 3
  store i64 %3338, i64* %PC
  %3339 = trunc i64 %3334 to i32
  %3340 = inttoptr i64 %3336 to i32*
  %3341 = load i32, i32* %3340
  %3342 = add i32 %3341, %3339
  %3343 = zext i32 %3342 to i64
  store i64 %3343, i64* %RAX, align 8, !tbaa !2428
  %3344 = icmp ult i32 %3342, %3339
  %3345 = icmp ult i32 %3342, %3341
  %3346 = or i1 %3344, %3345
  %3347 = zext i1 %3346 to i8
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3347, i8* %3348, align 1, !tbaa !2432
  %3349 = and i32 %3342, 255
  %3350 = call i32 @llvm.ctpop.i32(i32 %3349) #16
  %3351 = trunc i32 %3350 to i8
  %3352 = and i8 %3351, 1
  %3353 = xor i8 %3352, 1
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3353, i8* %3354, align 1, !tbaa !2446
  %3355 = xor i32 %3341, %3339
  %3356 = xor i32 %3355, %3342
  %3357 = lshr i32 %3356, 4
  %3358 = trunc i32 %3357 to i8
  %3359 = and i8 %3358, 1
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3359, i8* %3360, align 1, !tbaa !2447
  %3361 = icmp eq i32 %3342, 0
  %3362 = zext i1 %3361 to i8
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3362, i8* %3363, align 1, !tbaa !2448
  %3364 = lshr i32 %3342, 31
  %3365 = trunc i32 %3364 to i8
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3365, i8* %3366, align 1, !tbaa !2449
  %3367 = lshr i32 %3339, 31
  %3368 = lshr i32 %3341, 31
  %3369 = xor i32 %3364, %3367
  %3370 = xor i32 %3364, %3368
  %3371 = add nuw nsw i32 %3369, %3370
  %3372 = icmp eq i32 %3371, 2
  %3373 = zext i1 %3372 to i8
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3373, i8* %3374, align 1, !tbaa !2450
  %3375 = load i64, i64* %RAX
  %3376 = load i64, i64* %PC
  %3377 = add i64 %3376, 3
  store i64 %3377, i64* %PC
  %3378 = and i64 %3375, 4294967295
  %3379 = shl i64 %3378, 6
  %3380 = trunc i64 %3379 to i32
  %3381 = icmp slt i32 %3380, 0
  %3382 = shl i32 %3380, 1
  %3383 = zext i32 %3382 to i64
  store i64 %3383, i64* %RAX, align 8, !tbaa !2428
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3385 = zext i1 %3381 to i8
  store i8 %3385, i8* %3384, align 1, !tbaa !2451
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3387 = and i32 %3382, 254
  %3388 = call i32 @llvm.ctpop.i32(i32 %3387) #16
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  %3391 = xor i8 %3390, 1
  store i8 %3391, i8* %3386, align 1, !tbaa !2451
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3392, align 1, !tbaa !2451
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3394 = icmp eq i32 %3382, 0
  %3395 = zext i1 %3394 to i8
  store i8 %3395, i8* %3393, align 1, !tbaa !2451
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3397 = lshr i32 %3382, 31
  %3398 = trunc i32 %3397 to i8
  store i8 %3398, i8* %3396, align 1, !tbaa !2451
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3399, align 1, !tbaa !2451
  %3400 = load i64, i64* %RBP
  %3401 = sub i64 %3400, 96
  %3402 = load i64, i64* %PC
  %3403 = add i64 %3402, 3
  store i64 %3403, i64* %PC
  %3404 = inttoptr i64 %3401 to i32*
  %3405 = load i32, i32* %3404
  %3406 = zext i32 %3405 to i64
  store i64 %3406, i64* %RCX, align 8, !tbaa !2428
  %3407 = load i64, i64* %RCX
  %3408 = load i64, i64* %RBP
  %3409 = sub i64 %3408, 84
  %3410 = load i64, i64* %PC
  %3411 = add i64 %3410, 3
  store i64 %3411, i64* %PC
  %3412 = trunc i64 %3407 to i32
  %3413 = inttoptr i64 %3409 to i32*
  %3414 = load i32, i32* %3413
  %3415 = add i32 %3414, %3412
  %3416 = zext i32 %3415 to i64
  store i64 %3416, i64* %RCX, align 8, !tbaa !2428
  %3417 = icmp ult i32 %3415, %3412
  %3418 = icmp ult i32 %3415, %3414
  %3419 = or i1 %3417, %3418
  %3420 = zext i1 %3419 to i8
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3420, i8* %3421, align 1, !tbaa !2432
  %3422 = and i32 %3415, 255
  %3423 = call i32 @llvm.ctpop.i32(i32 %3422) #16
  %3424 = trunc i32 %3423 to i8
  %3425 = and i8 %3424, 1
  %3426 = xor i8 %3425, 1
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3426, i8* %3427, align 1, !tbaa !2446
  %3428 = xor i32 %3414, %3412
  %3429 = xor i32 %3428, %3415
  %3430 = lshr i32 %3429, 4
  %3431 = trunc i32 %3430 to i8
  %3432 = and i8 %3431, 1
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3432, i8* %3433, align 1, !tbaa !2447
  %3434 = icmp eq i32 %3415, 0
  %3435 = zext i1 %3434 to i8
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3435, i8* %3436, align 1, !tbaa !2448
  %3437 = lshr i32 %3415, 31
  %3438 = trunc i32 %3437 to i8
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3438, i8* %3439, align 1, !tbaa !2449
  %3440 = lshr i32 %3412, 31
  %3441 = lshr i32 %3414, 31
  %3442 = xor i32 %3437, %3440
  %3443 = xor i32 %3437, %3441
  %3444 = add nuw nsw i32 %3442, %3443
  %3445 = icmp eq i32 %3444, 2
  %3446 = zext i1 %3445 to i8
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3446, i8* %3447, align 1, !tbaa !2450
  %3448 = load i64, i64* %RCX
  %3449 = load i64, i64* %PC
  %3450 = add i64 %3449, 3
  store i64 %3450, i64* %PC
  %3451 = and i64 %3448, 4294967295
  %3452 = lshr i64 %3451, 24
  %3453 = trunc i64 %3452 to i8
  %3454 = and i8 %3453, 1
  %3455 = lshr i64 %3452, 1
  %3456 = trunc i64 %3455 to i32
  %3457 = and i32 %3456, 2147483647
  %3458 = zext i32 %3457 to i64
  store i64 %3458, i64* %RCX, align 8, !tbaa !2428
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3454, i8* %3459, align 1, !tbaa !2451
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3461 = and i32 %3456, 255
  %3462 = call i32 @llvm.ctpop.i32(i32 %3461) #16
  %3463 = trunc i32 %3462 to i8
  %3464 = and i8 %3463, 1
  %3465 = xor i8 %3464, 1
  store i8 %3465, i8* %3460, align 1, !tbaa !2451
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3466, align 1, !tbaa !2451
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3468 = icmp eq i32 %3457, 0
  %3469 = zext i1 %3468 to i8
  store i8 %3469, i8* %3467, align 1, !tbaa !2451
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3470, align 1, !tbaa !2451
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3471, align 1, !tbaa !2451
  %3472 = load i64, i64* %RAX
  %3473 = load i32, i32* %ECX
  %3474 = zext i32 %3473 to i64
  %3475 = load i64, i64* %PC
  %3476 = add i64 %3475, 2
  store i64 %3476, i64* %PC
  %3477 = or i64 %3474, %3472
  %3478 = trunc i64 %3477 to i32
  %3479 = and i64 %3477, 4294967295
  store i64 %3479, i64* %RAX, align 8, !tbaa !2428
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3480, align 1, !tbaa !2432
  %3481 = and i32 %3478, 255
  %3482 = call i32 @llvm.ctpop.i32(i32 %3481) #16
  %3483 = trunc i32 %3482 to i8
  %3484 = and i8 %3483, 1
  %3485 = xor i8 %3484, 1
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3485, i8* %3486, align 1, !tbaa !2446
  %3487 = icmp eq i32 %3478, 0
  %3488 = zext i1 %3487 to i8
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3488, i8* %3489, align 1, !tbaa !2448
  %3490 = lshr i32 %3478, 31
  %3491 = trunc i32 %3490 to i8
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3491, i8* %3492, align 1, !tbaa !2449
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3493, align 1, !tbaa !2450
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3494, align 1, !tbaa !2447
  %3495 = load i64, i64* %RAX
  %3496 = load i64, i64* %RBP
  %3497 = sub i64 %3496, 92
  %3498 = load i64, i64* %PC
  %3499 = add i64 %3498, 3
  store i64 %3499, i64* %PC
  %3500 = trunc i64 %3495 to i32
  %3501 = inttoptr i64 %3497 to i32*
  %3502 = load i32, i32* %3501
  %3503 = xor i32 %3502, %3500
  %3504 = zext i32 %3503 to i64
  store i64 %3504, i64* %RAX, align 8, !tbaa !2428
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3505, align 1, !tbaa !2432
  %3506 = and i32 %3503, 255
  %3507 = call i32 @llvm.ctpop.i32(i32 %3506) #16
  %3508 = trunc i32 %3507 to i8
  %3509 = and i8 %3508, 1
  %3510 = xor i8 %3509, 1
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3510, i8* %3511, align 1, !tbaa !2446
  %3512 = icmp eq i32 %3503, 0
  %3513 = zext i1 %3512 to i8
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3513, i8* %3514, align 1, !tbaa !2448
  %3515 = lshr i32 %3503, 31
  %3516 = trunc i32 %3515 to i8
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3516, i8* %3517, align 1, !tbaa !2449
  %3518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3518, align 1, !tbaa !2450
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3519, align 1, !tbaa !2447
  %3520 = load i64, i64* %RBP
  %3521 = sub i64 %3520, 92
  %3522 = load i32, i32* %EAX
  %3523 = zext i32 %3522 to i64
  %3524 = load i64, i64* %PC
  %3525 = add i64 %3524, 3
  store i64 %3525, i64* %PC
  %3526 = inttoptr i64 %3521 to i32*
  store i32 %3522, i32* %3526
  %3527 = load i64, i64* %RBP
  %3528 = sub i64 %3527, 92
  %3529 = load i64, i64* %PC
  %3530 = add i64 %3529, 3
  store i64 %3530, i64* %PC
  %3531 = inttoptr i64 %3528 to i32*
  %3532 = load i32, i32* %3531
  %3533 = zext i32 %3532 to i64
  store i64 %3533, i64* %RAX, align 8, !tbaa !2428
  %3534 = load i64, i64* %RAX
  %3535 = load i64, i64* %RBP
  %3536 = sub i64 %3535, 96
  %3537 = load i64, i64* %PC
  %3538 = add i64 %3537, 3
  store i64 %3538, i64* %PC
  %3539 = trunc i64 %3534 to i32
  %3540 = inttoptr i64 %3536 to i32*
  %3541 = load i32, i32* %3540
  %3542 = add i32 %3541, %3539
  %3543 = zext i32 %3542 to i64
  store i64 %3543, i64* %RAX, align 8, !tbaa !2428
  %3544 = icmp ult i32 %3542, %3539
  %3545 = icmp ult i32 %3542, %3541
  %3546 = or i1 %3544, %3545
  %3547 = zext i1 %3546 to i8
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3547, i8* %3548, align 1, !tbaa !2432
  %3549 = and i32 %3542, 255
  %3550 = call i32 @llvm.ctpop.i32(i32 %3549) #16
  %3551 = trunc i32 %3550 to i8
  %3552 = and i8 %3551, 1
  %3553 = xor i8 %3552, 1
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3553, i8* %3554, align 1, !tbaa !2446
  %3555 = xor i32 %3541, %3539
  %3556 = xor i32 %3555, %3542
  %3557 = lshr i32 %3556, 4
  %3558 = trunc i32 %3557 to i8
  %3559 = and i8 %3558, 1
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3559, i8* %3560, align 1, !tbaa !2447
  %3561 = icmp eq i32 %3542, 0
  %3562 = zext i1 %3561 to i8
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3562, i8* %3563, align 1, !tbaa !2448
  %3564 = lshr i32 %3542, 31
  %3565 = trunc i32 %3564 to i8
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3565, i8* %3566, align 1, !tbaa !2449
  %3567 = lshr i32 %3539, 31
  %3568 = lshr i32 %3541, 31
  %3569 = xor i32 %3564, %3567
  %3570 = xor i32 %3564, %3568
  %3571 = add nuw nsw i32 %3569, %3570
  %3572 = icmp eq i32 %3571, 2
  %3573 = zext i1 %3572 to i8
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3573, i8* %3574, align 1, !tbaa !2450
  %3575 = load i64, i64* %RAX
  %3576 = load i64, i64* %PC
  %3577 = add i64 %3576, 3
  store i64 %3577, i64* %PC
  %3578 = and i64 %3575, 4294967295
  %3579 = shl i64 %3578, 8
  %3580 = trunc i64 %3579 to i32
  %3581 = icmp slt i32 %3580, 0
  %3582 = shl i32 %3580, 1
  %3583 = zext i32 %3582 to i64
  store i64 %3583, i64* %RAX, align 8, !tbaa !2428
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3585 = zext i1 %3581 to i8
  store i8 %3585, i8* %3584, align 1, !tbaa !2451
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3586, align 1, !tbaa !2451
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3587, align 1, !tbaa !2451
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3589 = icmp eq i32 %3582, 0
  %3590 = zext i1 %3589 to i8
  store i8 %3590, i8* %3588, align 1, !tbaa !2451
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3592 = lshr i32 %3582, 31
  %3593 = trunc i32 %3592 to i8
  store i8 %3593, i8* %3591, align 1, !tbaa !2451
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3594, align 1, !tbaa !2451
  %3595 = load i64, i64* %RBP
  %3596 = sub i64 %3595, 92
  %3597 = load i64, i64* %PC
  %3598 = add i64 %3597, 3
  store i64 %3598, i64* %PC
  %3599 = inttoptr i64 %3596 to i32*
  %3600 = load i32, i32* %3599
  %3601 = zext i32 %3600 to i64
  store i64 %3601, i64* %RCX, align 8, !tbaa !2428
  %3602 = load i64, i64* %RCX
  %3603 = load i64, i64* %RBP
  %3604 = sub i64 %3603, 96
  %3605 = load i64, i64* %PC
  %3606 = add i64 %3605, 3
  store i64 %3606, i64* %PC
  %3607 = trunc i64 %3602 to i32
  %3608 = inttoptr i64 %3604 to i32*
  %3609 = load i32, i32* %3608
  %3610 = add i32 %3609, %3607
  %3611 = zext i32 %3610 to i64
  store i64 %3611, i64* %RCX, align 8, !tbaa !2428
  %3612 = icmp ult i32 %3610, %3607
  %3613 = icmp ult i32 %3610, %3609
  %3614 = or i1 %3612, %3613
  %3615 = zext i1 %3614 to i8
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3615, i8* %3616, align 1, !tbaa !2432
  %3617 = and i32 %3610, 255
  %3618 = call i32 @llvm.ctpop.i32(i32 %3617) #16
  %3619 = trunc i32 %3618 to i8
  %3620 = and i8 %3619, 1
  %3621 = xor i8 %3620, 1
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3621, i8* %3622, align 1, !tbaa !2446
  %3623 = xor i32 %3609, %3607
  %3624 = xor i32 %3623, %3610
  %3625 = lshr i32 %3624, 4
  %3626 = trunc i32 %3625 to i8
  %3627 = and i8 %3626, 1
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3627, i8* %3628, align 1, !tbaa !2447
  %3629 = icmp eq i32 %3610, 0
  %3630 = zext i1 %3629 to i8
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3630, i8* %3631, align 1, !tbaa !2448
  %3632 = lshr i32 %3610, 31
  %3633 = trunc i32 %3632 to i8
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3633, i8* %3634, align 1, !tbaa !2449
  %3635 = lshr i32 %3607, 31
  %3636 = lshr i32 %3609, 31
  %3637 = xor i32 %3632, %3635
  %3638 = xor i32 %3632, %3636
  %3639 = add nuw nsw i32 %3637, %3638
  %3640 = icmp eq i32 %3639, 2
  %3641 = zext i1 %3640 to i8
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3641, i8* %3642, align 1, !tbaa !2450
  %3643 = load i64, i64* %RCX
  %3644 = load i64, i64* %PC
  %3645 = add i64 %3644, 3
  store i64 %3645, i64* %PC
  %3646 = and i64 %3643, 4294967295
  %3647 = lshr i64 %3646, 22
  %3648 = trunc i64 %3647 to i8
  %3649 = and i8 %3648, 1
  %3650 = lshr i64 %3647, 1
  %3651 = trunc i64 %3650 to i32
  %3652 = and i32 %3651, 2147483647
  %3653 = zext i32 %3652 to i64
  store i64 %3653, i64* %RCX, align 8, !tbaa !2428
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3649, i8* %3654, align 1, !tbaa !2451
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3656 = and i32 %3651, 255
  %3657 = call i32 @llvm.ctpop.i32(i32 %3656) #16
  %3658 = trunc i32 %3657 to i8
  %3659 = and i8 %3658, 1
  %3660 = xor i8 %3659, 1
  store i8 %3660, i8* %3655, align 1, !tbaa !2451
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3661, align 1, !tbaa !2451
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3663 = icmp eq i32 %3652, 0
  %3664 = zext i1 %3663 to i8
  store i8 %3664, i8* %3662, align 1, !tbaa !2451
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3665, align 1, !tbaa !2451
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3666, align 1, !tbaa !2451
  %3667 = load i64, i64* %RAX
  %3668 = load i32, i32* %ECX
  %3669 = zext i32 %3668 to i64
  %3670 = load i64, i64* %PC
  %3671 = add i64 %3670, 2
  store i64 %3671, i64* %PC
  %3672 = or i64 %3669, %3667
  %3673 = trunc i64 %3672 to i32
  %3674 = and i64 %3672, 4294967295
  store i64 %3674, i64* %RAX, align 8, !tbaa !2428
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3675, align 1, !tbaa !2432
  %3676 = and i32 %3673, 255
  %3677 = call i32 @llvm.ctpop.i32(i32 %3676) #16
  %3678 = trunc i32 %3677 to i8
  %3679 = and i8 %3678, 1
  %3680 = xor i8 %3679, 1
  %3681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3680, i8* %3681, align 1, !tbaa !2446
  %3682 = icmp eq i32 %3673, 0
  %3683 = zext i1 %3682 to i8
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3683, i8* %3684, align 1, !tbaa !2448
  %3685 = lshr i32 %3673, 31
  %3686 = trunc i32 %3685 to i8
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3686, i8* %3687, align 1, !tbaa !2449
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3688, align 1, !tbaa !2450
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3689, align 1, !tbaa !2447
  %3690 = load i64, i64* %RAX
  %3691 = load i64, i64* %RBP
  %3692 = sub i64 %3691, 88
  %3693 = load i64, i64* %PC
  %3694 = add i64 %3693, 3
  store i64 %3694, i64* %PC
  %3695 = trunc i64 %3690 to i32
  %3696 = inttoptr i64 %3692 to i32*
  %3697 = load i32, i32* %3696
  %3698 = xor i32 %3697, %3695
  %3699 = zext i32 %3698 to i64
  store i64 %3699, i64* %RAX, align 8, !tbaa !2428
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3700, align 1, !tbaa !2432
  %3701 = and i32 %3698, 255
  %3702 = call i32 @llvm.ctpop.i32(i32 %3701) #16
  %3703 = trunc i32 %3702 to i8
  %3704 = and i8 %3703, 1
  %3705 = xor i8 %3704, 1
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3705, i8* %3706, align 1, !tbaa !2446
  %3707 = icmp eq i32 %3698, 0
  %3708 = zext i1 %3707 to i8
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3708, i8* %3709, align 1, !tbaa !2448
  %3710 = lshr i32 %3698, 31
  %3711 = trunc i32 %3710 to i8
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3711, i8* %3712, align 1, !tbaa !2449
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3713, align 1, !tbaa !2450
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3714, align 1, !tbaa !2447
  %3715 = load i64, i64* %RBP
  %3716 = sub i64 %3715, 88
  %3717 = load i32, i32* %EAX
  %3718 = zext i32 %3717 to i64
  %3719 = load i64, i64* %PC
  %3720 = add i64 %3719, 3
  store i64 %3720, i64* %PC
  %3721 = inttoptr i64 %3716 to i32*
  store i32 %3717, i32* %3721
  %3722 = load i64, i64* %RBP
  %3723 = sub i64 %3722, 88
  %3724 = load i64, i64* %PC
  %3725 = add i64 %3724, 3
  store i64 %3725, i64* %PC
  %3726 = inttoptr i64 %3723 to i32*
  %3727 = load i32, i32* %3726
  %3728 = zext i32 %3727 to i64
  store i64 %3728, i64* %RAX, align 8, !tbaa !2428
  %3729 = load i64, i64* %RAX
  %3730 = load i64, i64* %RBP
  %3731 = sub i64 %3730, 92
  %3732 = load i64, i64* %PC
  %3733 = add i64 %3732, 3
  store i64 %3733, i64* %PC
  %3734 = trunc i64 %3729 to i32
  %3735 = inttoptr i64 %3731 to i32*
  %3736 = load i32, i32* %3735
  %3737 = add i32 %3736, %3734
  %3738 = zext i32 %3737 to i64
  store i64 %3738, i64* %RAX, align 8, !tbaa !2428
  %3739 = icmp ult i32 %3737, %3734
  %3740 = icmp ult i32 %3737, %3736
  %3741 = or i1 %3739, %3740
  %3742 = zext i1 %3741 to i8
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3742, i8* %3743, align 1, !tbaa !2432
  %3744 = and i32 %3737, 255
  %3745 = call i32 @llvm.ctpop.i32(i32 %3744) #16
  %3746 = trunc i32 %3745 to i8
  %3747 = and i8 %3746, 1
  %3748 = xor i8 %3747, 1
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3748, i8* %3749, align 1, !tbaa !2446
  %3750 = xor i32 %3736, %3734
  %3751 = xor i32 %3750, %3737
  %3752 = lshr i32 %3751, 4
  %3753 = trunc i32 %3752 to i8
  %3754 = and i8 %3753, 1
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3754, i8* %3755, align 1, !tbaa !2447
  %3756 = icmp eq i32 %3737, 0
  %3757 = zext i1 %3756 to i8
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3757, i8* %3758, align 1, !tbaa !2448
  %3759 = lshr i32 %3737, 31
  %3760 = trunc i32 %3759 to i8
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3760, i8* %3761, align 1, !tbaa !2449
  %3762 = lshr i32 %3734, 31
  %3763 = lshr i32 %3736, 31
  %3764 = xor i32 %3759, %3762
  %3765 = xor i32 %3759, %3763
  %3766 = add nuw nsw i32 %3764, %3765
  %3767 = icmp eq i32 %3766, 2
  %3768 = zext i1 %3767 to i8
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3768, i8* %3769, align 1, !tbaa !2450
  %3770 = load i64, i64* %RAX
  %3771 = load i64, i64* %PC
  %3772 = add i64 %3771, 3
  store i64 %3772, i64* %PC
  %3773 = and i64 %3770, 4294967295
  %3774 = shl i64 %3773, 12
  %3775 = trunc i64 %3774 to i32
  %3776 = icmp slt i32 %3775, 0
  %3777 = shl i32 %3775, 1
  %3778 = zext i32 %3777 to i64
  store i64 %3778, i64* %RAX, align 8, !tbaa !2428
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3780 = zext i1 %3776 to i8
  store i8 %3780, i8* %3779, align 1, !tbaa !2451
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3781, align 1, !tbaa !2451
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3782, align 1, !tbaa !2451
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3784 = icmp eq i32 %3777, 0
  %3785 = zext i1 %3784 to i8
  store i8 %3785, i8* %3783, align 1, !tbaa !2451
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3787 = lshr i32 %3777, 31
  %3788 = trunc i32 %3787 to i8
  store i8 %3788, i8* %3786, align 1, !tbaa !2451
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3789, align 1, !tbaa !2451
  %3790 = load i64, i64* %RBP
  %3791 = sub i64 %3790, 88
  %3792 = load i64, i64* %PC
  %3793 = add i64 %3792, 3
  store i64 %3793, i64* %PC
  %3794 = inttoptr i64 %3791 to i32*
  %3795 = load i32, i32* %3794
  %3796 = zext i32 %3795 to i64
  store i64 %3796, i64* %RCX, align 8, !tbaa !2428
  %3797 = load i64, i64* %RCX
  %3798 = load i64, i64* %RBP
  %3799 = sub i64 %3798, 92
  %3800 = load i64, i64* %PC
  %3801 = add i64 %3800, 3
  store i64 %3801, i64* %PC
  %3802 = trunc i64 %3797 to i32
  %3803 = inttoptr i64 %3799 to i32*
  %3804 = load i32, i32* %3803
  %3805 = add i32 %3804, %3802
  %3806 = zext i32 %3805 to i64
  store i64 %3806, i64* %RCX, align 8, !tbaa !2428
  %3807 = icmp ult i32 %3805, %3802
  %3808 = icmp ult i32 %3805, %3804
  %3809 = or i1 %3807, %3808
  %3810 = zext i1 %3809 to i8
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3810, i8* %3811, align 1, !tbaa !2432
  %3812 = and i32 %3805, 255
  %3813 = call i32 @llvm.ctpop.i32(i32 %3812) #16
  %3814 = trunc i32 %3813 to i8
  %3815 = and i8 %3814, 1
  %3816 = xor i8 %3815, 1
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3816, i8* %3817, align 1, !tbaa !2446
  %3818 = xor i32 %3804, %3802
  %3819 = xor i32 %3818, %3805
  %3820 = lshr i32 %3819, 4
  %3821 = trunc i32 %3820 to i8
  %3822 = and i8 %3821, 1
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3822, i8* %3823, align 1, !tbaa !2447
  %3824 = icmp eq i32 %3805, 0
  %3825 = zext i1 %3824 to i8
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3825, i8* %3826, align 1, !tbaa !2448
  %3827 = lshr i32 %3805, 31
  %3828 = trunc i32 %3827 to i8
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3828, i8* %3829, align 1, !tbaa !2449
  %3830 = lshr i32 %3802, 31
  %3831 = lshr i32 %3804, 31
  %3832 = xor i32 %3827, %3830
  %3833 = xor i32 %3827, %3831
  %3834 = add nuw nsw i32 %3832, %3833
  %3835 = icmp eq i32 %3834, 2
  %3836 = zext i1 %3835 to i8
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3836, i8* %3837, align 1, !tbaa !2450
  %3838 = load i64, i64* %RCX
  %3839 = load i64, i64* %PC
  %3840 = add i64 %3839, 3
  store i64 %3840, i64* %PC
  %3841 = and i64 %3838, 4294967295
  %3842 = lshr i64 %3841, 18
  %3843 = trunc i64 %3842 to i8
  %3844 = and i8 %3843, 1
  %3845 = lshr i64 %3842, 1
  %3846 = trunc i64 %3845 to i32
  %3847 = and i32 %3846, 2147483647
  %3848 = zext i32 %3847 to i64
  store i64 %3848, i64* %RCX, align 8, !tbaa !2428
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3844, i8* %3849, align 1, !tbaa !2451
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3851 = and i32 %3846, 255
  %3852 = call i32 @llvm.ctpop.i32(i32 %3851) #16
  %3853 = trunc i32 %3852 to i8
  %3854 = and i8 %3853, 1
  %3855 = xor i8 %3854, 1
  store i8 %3855, i8* %3850, align 1, !tbaa !2451
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3856, align 1, !tbaa !2451
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3858 = icmp eq i32 %3847, 0
  %3859 = zext i1 %3858 to i8
  store i8 %3859, i8* %3857, align 1, !tbaa !2451
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3860, align 1, !tbaa !2451
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3861, align 1, !tbaa !2451
  %3862 = load i64, i64* %RAX
  %3863 = load i32, i32* %ECX
  %3864 = zext i32 %3863 to i64
  %3865 = load i64, i64* %PC
  %3866 = add i64 %3865, 2
  store i64 %3866, i64* %PC
  %3867 = or i64 %3864, %3862
  %3868 = trunc i64 %3867 to i32
  %3869 = and i64 %3867, 4294967295
  store i64 %3869, i64* %RAX, align 8, !tbaa !2428
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3870, align 1, !tbaa !2432
  %3871 = and i32 %3868, 255
  %3872 = call i32 @llvm.ctpop.i32(i32 %3871) #16
  %3873 = trunc i32 %3872 to i8
  %3874 = and i8 %3873, 1
  %3875 = xor i8 %3874, 1
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3875, i8* %3876, align 1, !tbaa !2446
  %3877 = icmp eq i32 %3868, 0
  %3878 = zext i1 %3877 to i8
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3878, i8* %3879, align 1, !tbaa !2448
  %3880 = lshr i32 %3868, 31
  %3881 = trunc i32 %3880 to i8
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3881, i8* %3882, align 1, !tbaa !2449
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3883, align 1, !tbaa !2450
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3884, align 1, !tbaa !2447
  %3885 = load i64, i64* %RAX
  %3886 = load i64, i64* %RBP
  %3887 = sub i64 %3886, 84
  %3888 = load i64, i64* %PC
  %3889 = add i64 %3888, 3
  store i64 %3889, i64* %PC
  %3890 = trunc i64 %3885 to i32
  %3891 = inttoptr i64 %3887 to i32*
  %3892 = load i32, i32* %3891
  %3893 = xor i32 %3892, %3890
  %3894 = zext i32 %3893 to i64
  store i64 %3894, i64* %RAX, align 8, !tbaa !2428
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3895, align 1, !tbaa !2432
  %3896 = and i32 %3893, 255
  %3897 = call i32 @llvm.ctpop.i32(i32 %3896) #16
  %3898 = trunc i32 %3897 to i8
  %3899 = and i8 %3898, 1
  %3900 = xor i8 %3899, 1
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3900, i8* %3901, align 1, !tbaa !2446
  %3902 = icmp eq i32 %3893, 0
  %3903 = zext i1 %3902 to i8
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3903, i8* %3904, align 1, !tbaa !2448
  %3905 = lshr i32 %3893, 31
  %3906 = trunc i32 %3905 to i8
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3906, i8* %3907, align 1, !tbaa !2449
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3908, align 1, !tbaa !2450
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3909, align 1, !tbaa !2447
  %3910 = load i64, i64* %RBP
  %3911 = sub i64 %3910, 84
  %3912 = load i32, i32* %EAX
  %3913 = zext i32 %3912 to i64
  %3914 = load i64, i64* %PC
  %3915 = add i64 %3914, 3
  store i64 %3915, i64* %PC
  %3916 = inttoptr i64 %3911 to i32*
  store i32 %3912, i32* %3916
  %3917 = load i64, i64* %RBP
  %3918 = sub i64 %3917, 84
  %3919 = load i64, i64* %PC
  %3920 = add i64 %3919, 3
  store i64 %3920, i64* %PC
  %3921 = inttoptr i64 %3918 to i32*
  %3922 = load i32, i32* %3921
  %3923 = zext i32 %3922 to i64
  store i64 %3923, i64* %RAX, align 8, !tbaa !2428
  %3924 = load i64, i64* %RAX
  %3925 = load i64, i64* %RBP
  %3926 = sub i64 %3925, 88
  %3927 = load i64, i64* %PC
  %3928 = add i64 %3927, 3
  store i64 %3928, i64* %PC
  %3929 = trunc i64 %3924 to i32
  %3930 = inttoptr i64 %3926 to i32*
  %3931 = load i32, i32* %3930
  %3932 = add i32 %3931, %3929
  %3933 = zext i32 %3932 to i64
  store i64 %3933, i64* %RAX, align 8, !tbaa !2428
  %3934 = icmp ult i32 %3932, %3929
  %3935 = icmp ult i32 %3932, %3931
  %3936 = or i1 %3934, %3935
  %3937 = zext i1 %3936 to i8
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3937, i8* %3938, align 1, !tbaa !2432
  %3939 = and i32 %3932, 255
  %3940 = call i32 @llvm.ctpop.i32(i32 %3939) #16
  %3941 = trunc i32 %3940 to i8
  %3942 = and i8 %3941, 1
  %3943 = xor i8 %3942, 1
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3943, i8* %3944, align 1, !tbaa !2446
  %3945 = xor i32 %3931, %3929
  %3946 = xor i32 %3945, %3932
  %3947 = lshr i32 %3946, 4
  %3948 = trunc i32 %3947 to i8
  %3949 = and i8 %3948, 1
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3949, i8* %3950, align 1, !tbaa !2447
  %3951 = icmp eq i32 %3932, 0
  %3952 = zext i1 %3951 to i8
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3952, i8* %3953, align 1, !tbaa !2448
  %3954 = lshr i32 %3932, 31
  %3955 = trunc i32 %3954 to i8
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3955, i8* %3956, align 1, !tbaa !2449
  %3957 = lshr i32 %3929, 31
  %3958 = lshr i32 %3931, 31
  %3959 = xor i32 %3954, %3957
  %3960 = xor i32 %3954, %3958
  %3961 = add nuw nsw i32 %3959, %3960
  %3962 = icmp eq i32 %3961, 2
  %3963 = zext i1 %3962 to i8
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3963, i8* %3964, align 1, !tbaa !2450
  %3965 = load i64, i64* %RAX
  %3966 = load i64, i64* %PC
  %3967 = add i64 %3966, 3
  store i64 %3967, i64* %PC
  %3968 = and i64 %3965, 4294967295
  %3969 = shl i64 %3968, 17
  %3970 = trunc i64 %3969 to i32
  %3971 = icmp slt i32 %3970, 0
  %3972 = shl i32 %3970, 1
  %3973 = zext i32 %3972 to i64
  store i64 %3973, i64* %RAX, align 8, !tbaa !2428
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3975 = zext i1 %3971 to i8
  store i8 %3975, i8* %3974, align 1, !tbaa !2451
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %3976, align 1, !tbaa !2451
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3977, align 1, !tbaa !2451
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3979 = icmp eq i32 %3972, 0
  %3980 = zext i1 %3979 to i8
  store i8 %3980, i8* %3978, align 1, !tbaa !2451
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3982 = lshr i32 %3972, 31
  %3983 = trunc i32 %3982 to i8
  store i8 %3983, i8* %3981, align 1, !tbaa !2451
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3984, align 1, !tbaa !2451
  %3985 = load i64, i64* %RBP
  %3986 = sub i64 %3985, 84
  %3987 = load i64, i64* %PC
  %3988 = add i64 %3987, 3
  store i64 %3988, i64* %PC
  %3989 = inttoptr i64 %3986 to i32*
  %3990 = load i32, i32* %3989
  %3991 = zext i32 %3990 to i64
  store i64 %3991, i64* %RCX, align 8, !tbaa !2428
  %3992 = load i64, i64* %RCX
  %3993 = load i64, i64* %RBP
  %3994 = sub i64 %3993, 88
  %3995 = load i64, i64* %PC
  %3996 = add i64 %3995, 3
  store i64 %3996, i64* %PC
  %3997 = trunc i64 %3992 to i32
  %3998 = inttoptr i64 %3994 to i32*
  %3999 = load i32, i32* %3998
  %4000 = add i32 %3999, %3997
  %4001 = zext i32 %4000 to i64
  store i64 %4001, i64* %RCX, align 8, !tbaa !2428
  %4002 = icmp ult i32 %4000, %3997
  %4003 = icmp ult i32 %4000, %3999
  %4004 = or i1 %4002, %4003
  %4005 = zext i1 %4004 to i8
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4005, i8* %4006, align 1, !tbaa !2432
  %4007 = and i32 %4000, 255
  %4008 = call i32 @llvm.ctpop.i32(i32 %4007) #16
  %4009 = trunc i32 %4008 to i8
  %4010 = and i8 %4009, 1
  %4011 = xor i8 %4010, 1
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4011, i8* %4012, align 1, !tbaa !2446
  %4013 = xor i32 %3999, %3997
  %4014 = xor i32 %4013, %4000
  %4015 = lshr i32 %4014, 4
  %4016 = trunc i32 %4015 to i8
  %4017 = and i8 %4016, 1
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4017, i8* %4018, align 1, !tbaa !2447
  %4019 = icmp eq i32 %4000, 0
  %4020 = zext i1 %4019 to i8
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4020, i8* %4021, align 1, !tbaa !2448
  %4022 = lshr i32 %4000, 31
  %4023 = trunc i32 %4022 to i8
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4023, i8* %4024, align 1, !tbaa !2449
  %4025 = lshr i32 %3997, 31
  %4026 = lshr i32 %3999, 31
  %4027 = xor i32 %4022, %4025
  %4028 = xor i32 %4022, %4026
  %4029 = add nuw nsw i32 %4027, %4028
  %4030 = icmp eq i32 %4029, 2
  %4031 = zext i1 %4030 to i8
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4031, i8* %4032, align 1, !tbaa !2450
  %4033 = load i64, i64* %RCX
  %4034 = load i64, i64* %PC
  %4035 = add i64 %4034, 3
  store i64 %4035, i64* %PC
  %4036 = and i64 %4033, 4294967295
  %4037 = lshr i64 %4036, 13
  %4038 = trunc i64 %4037 to i8
  %4039 = and i8 %4038, 1
  %4040 = lshr i64 %4037, 1
  %4041 = trunc i64 %4040 to i32
  %4042 = and i32 %4041, 2147483647
  %4043 = zext i32 %4042 to i64
  store i64 %4043, i64* %RCX, align 8, !tbaa !2428
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4039, i8* %4044, align 1, !tbaa !2451
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4046 = and i32 %4041, 255
  %4047 = call i32 @llvm.ctpop.i32(i32 %4046) #16
  %4048 = trunc i32 %4047 to i8
  %4049 = and i8 %4048, 1
  %4050 = xor i8 %4049, 1
  store i8 %4050, i8* %4045, align 1, !tbaa !2451
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4051, align 1, !tbaa !2451
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4053 = icmp eq i32 %4042, 0
  %4054 = zext i1 %4053 to i8
  store i8 %4054, i8* %4052, align 1, !tbaa !2451
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4055, align 1, !tbaa !2451
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4056, align 1, !tbaa !2451
  %4057 = load i64, i64* %RAX
  %4058 = load i32, i32* %ECX
  %4059 = zext i32 %4058 to i64
  %4060 = load i64, i64* %PC
  %4061 = add i64 %4060, 2
  store i64 %4061, i64* %PC
  %4062 = or i64 %4059, %4057
  %4063 = trunc i64 %4062 to i32
  %4064 = and i64 %4062, 4294967295
  store i64 %4064, i64* %RAX, align 8, !tbaa !2428
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4065, align 1, !tbaa !2432
  %4066 = and i32 %4063, 255
  %4067 = call i32 @llvm.ctpop.i32(i32 %4066) #16
  %4068 = trunc i32 %4067 to i8
  %4069 = and i8 %4068, 1
  %4070 = xor i8 %4069, 1
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4070, i8* %4071, align 1, !tbaa !2446
  %4072 = icmp eq i32 %4063, 0
  %4073 = zext i1 %4072 to i8
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4073, i8* %4074, align 1, !tbaa !2448
  %4075 = lshr i32 %4063, 31
  %4076 = trunc i32 %4075 to i8
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4076, i8* %4077, align 1, !tbaa !2449
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4078, align 1, !tbaa !2450
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4079, align 1, !tbaa !2447
  %4080 = load i64, i64* %RAX
  %4081 = load i64, i64* %RBP
  %4082 = sub i64 %4081, 96
  %4083 = load i64, i64* %PC
  %4084 = add i64 %4083, 3
  store i64 %4084, i64* %PC
  %4085 = trunc i64 %4080 to i32
  %4086 = inttoptr i64 %4082 to i32*
  %4087 = load i32, i32* %4086
  %4088 = xor i32 %4087, %4085
  %4089 = zext i32 %4088 to i64
  store i64 %4089, i64* %RAX, align 8, !tbaa !2428
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4090, align 1, !tbaa !2432
  %4091 = and i32 %4088, 255
  %4092 = call i32 @llvm.ctpop.i32(i32 %4091) #16
  %4093 = trunc i32 %4092 to i8
  %4094 = and i8 %4093, 1
  %4095 = xor i8 %4094, 1
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4095, i8* %4096, align 1, !tbaa !2446
  %4097 = icmp eq i32 %4088, 0
  %4098 = zext i1 %4097 to i8
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4098, i8* %4099, align 1, !tbaa !2448
  %4100 = lshr i32 %4088, 31
  %4101 = trunc i32 %4100 to i8
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4101, i8* %4102, align 1, !tbaa !2449
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4103, align 1, !tbaa !2450
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4104, align 1, !tbaa !2447
  %4105 = load i64, i64* %RBP
  %4106 = sub i64 %4105, 96
  %4107 = load i32, i32* %EAX
  %4108 = zext i32 %4107 to i64
  %4109 = load i64, i64* %PC
  %4110 = add i64 %4109, 3
  store i64 %4110, i64* %PC
  %4111 = inttoptr i64 %4106 to i32*
  store i32 %4107, i32* %4111
  %4112 = load i64, i64* %RBP
  %4113 = sub i64 %4112, 76
  %4114 = load i64, i64* %PC
  %4115 = add i64 %4114, 3
  store i64 %4115, i64* %PC
  %4116 = inttoptr i64 %4113 to i32*
  %4117 = load i32, i32* %4116
  %4118 = zext i32 %4117 to i64
  store i64 %4118, i64* %RAX, align 8, !tbaa !2428
  %4119 = load i64, i64* %RAX
  %4120 = load i64, i64* %RBP
  %4121 = sub i64 %4120, 80
  %4122 = load i64, i64* %PC
  %4123 = add i64 %4122, 3
  store i64 %4123, i64* %PC
  %4124 = trunc i64 %4119 to i32
  %4125 = inttoptr i64 %4121 to i32*
  %4126 = load i32, i32* %4125
  %4127 = add i32 %4126, %4124
  %4128 = zext i32 %4127 to i64
  store i64 %4128, i64* %RAX, align 8, !tbaa !2428
  %4129 = icmp ult i32 %4127, %4124
  %4130 = icmp ult i32 %4127, %4126
  %4131 = or i1 %4129, %4130
  %4132 = zext i1 %4131 to i8
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4132, i8* %4133, align 1, !tbaa !2432
  %4134 = and i32 %4127, 255
  %4135 = call i32 @llvm.ctpop.i32(i32 %4134) #16
  %4136 = trunc i32 %4135 to i8
  %4137 = and i8 %4136, 1
  %4138 = xor i8 %4137, 1
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4138, i8* %4139, align 1, !tbaa !2446
  %4140 = xor i32 %4126, %4124
  %4141 = xor i32 %4140, %4127
  %4142 = lshr i32 %4141, 4
  %4143 = trunc i32 %4142 to i8
  %4144 = and i8 %4143, 1
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4144, i8* %4145, align 1, !tbaa !2447
  %4146 = icmp eq i32 %4127, 0
  %4147 = zext i1 %4146 to i8
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4147, i8* %4148, align 1, !tbaa !2448
  %4149 = lshr i32 %4127, 31
  %4150 = trunc i32 %4149 to i8
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4150, i8* %4151, align 1, !tbaa !2449
  %4152 = lshr i32 %4124, 31
  %4153 = lshr i32 %4126, 31
  %4154 = xor i32 %4149, %4152
  %4155 = xor i32 %4149, %4153
  %4156 = add nuw nsw i32 %4154, %4155
  %4157 = icmp eq i32 %4156, 2
  %4158 = zext i1 %4157 to i8
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4158, i8* %4159, align 1, !tbaa !2450
  %4160 = load i64, i64* %RAX
  %4161 = load i64, i64* %PC
  %4162 = add i64 %4161, 3
  store i64 %4162, i64* %PC
  %4163 = and i64 %4160, 4294967295
  %4164 = shl i64 %4163, 6
  %4165 = trunc i64 %4164 to i32
  %4166 = icmp slt i32 %4165, 0
  %4167 = shl i32 %4165, 1
  %4168 = zext i32 %4167 to i64
  store i64 %4168, i64* %RAX, align 8, !tbaa !2428
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4170 = zext i1 %4166 to i8
  store i8 %4170, i8* %4169, align 1, !tbaa !2451
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4172 = and i32 %4167, 254
  %4173 = call i32 @llvm.ctpop.i32(i32 %4172) #16
  %4174 = trunc i32 %4173 to i8
  %4175 = and i8 %4174, 1
  %4176 = xor i8 %4175, 1
  store i8 %4176, i8* %4171, align 1, !tbaa !2451
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4177, align 1, !tbaa !2451
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4179 = icmp eq i32 %4167, 0
  %4180 = zext i1 %4179 to i8
  store i8 %4180, i8* %4178, align 1, !tbaa !2451
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4182 = lshr i32 %4167, 31
  %4183 = trunc i32 %4182 to i8
  store i8 %4183, i8* %4181, align 1, !tbaa !2451
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4184, align 1, !tbaa !2451
  %4185 = load i64, i64* %RBP
  %4186 = sub i64 %4185, 76
  %4187 = load i64, i64* %PC
  %4188 = add i64 %4187, 3
  store i64 %4188, i64* %PC
  %4189 = inttoptr i64 %4186 to i32*
  %4190 = load i32, i32* %4189
  %4191 = zext i32 %4190 to i64
  store i64 %4191, i64* %RCX, align 8, !tbaa !2428
  %4192 = load i64, i64* %RCX
  %4193 = load i64, i64* %RBP
  %4194 = sub i64 %4193, 80
  %4195 = load i64, i64* %PC
  %4196 = add i64 %4195, 3
  store i64 %4196, i64* %PC
  %4197 = trunc i64 %4192 to i32
  %4198 = inttoptr i64 %4194 to i32*
  %4199 = load i32, i32* %4198
  %4200 = add i32 %4199, %4197
  %4201 = zext i32 %4200 to i64
  store i64 %4201, i64* %RCX, align 8, !tbaa !2428
  %4202 = icmp ult i32 %4200, %4197
  %4203 = icmp ult i32 %4200, %4199
  %4204 = or i1 %4202, %4203
  %4205 = zext i1 %4204 to i8
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4205, i8* %4206, align 1, !tbaa !2432
  %4207 = and i32 %4200, 255
  %4208 = call i32 @llvm.ctpop.i32(i32 %4207) #16
  %4209 = trunc i32 %4208 to i8
  %4210 = and i8 %4209, 1
  %4211 = xor i8 %4210, 1
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4211, i8* %4212, align 1, !tbaa !2446
  %4213 = xor i32 %4199, %4197
  %4214 = xor i32 %4213, %4200
  %4215 = lshr i32 %4214, 4
  %4216 = trunc i32 %4215 to i8
  %4217 = and i8 %4216, 1
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4217, i8* %4218, align 1, !tbaa !2447
  %4219 = icmp eq i32 %4200, 0
  %4220 = zext i1 %4219 to i8
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4220, i8* %4221, align 1, !tbaa !2448
  %4222 = lshr i32 %4200, 31
  %4223 = trunc i32 %4222 to i8
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4223, i8* %4224, align 1, !tbaa !2449
  %4225 = lshr i32 %4197, 31
  %4226 = lshr i32 %4199, 31
  %4227 = xor i32 %4222, %4225
  %4228 = xor i32 %4222, %4226
  %4229 = add nuw nsw i32 %4227, %4228
  %4230 = icmp eq i32 %4229, 2
  %4231 = zext i1 %4230 to i8
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4231, i8* %4232, align 1, !tbaa !2450
  %4233 = load i64, i64* %RCX
  %4234 = load i64, i64* %PC
  %4235 = add i64 %4234, 3
  store i64 %4235, i64* %PC
  %4236 = and i64 %4233, 4294967295
  %4237 = lshr i64 %4236, 24
  %4238 = trunc i64 %4237 to i8
  %4239 = and i8 %4238, 1
  %4240 = lshr i64 %4237, 1
  %4241 = trunc i64 %4240 to i32
  %4242 = and i32 %4241, 2147483647
  %4243 = zext i32 %4242 to i64
  store i64 %4243, i64* %RCX, align 8, !tbaa !2428
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4239, i8* %4244, align 1, !tbaa !2451
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4246 = and i32 %4241, 255
  %4247 = call i32 @llvm.ctpop.i32(i32 %4246) #16
  %4248 = trunc i32 %4247 to i8
  %4249 = and i8 %4248, 1
  %4250 = xor i8 %4249, 1
  store i8 %4250, i8* %4245, align 1, !tbaa !2451
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4251, align 1, !tbaa !2451
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4253 = icmp eq i32 %4242, 0
  %4254 = zext i1 %4253 to i8
  store i8 %4254, i8* %4252, align 1, !tbaa !2451
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4255, align 1, !tbaa !2451
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4256, align 1, !tbaa !2451
  %4257 = load i64, i64* %RAX
  %4258 = load i32, i32* %ECX
  %4259 = zext i32 %4258 to i64
  %4260 = load i64, i64* %PC
  %4261 = add i64 %4260, 2
  store i64 %4261, i64* %PC
  %4262 = or i64 %4259, %4257
  %4263 = trunc i64 %4262 to i32
  %4264 = and i64 %4262, 4294967295
  store i64 %4264, i64* %RAX, align 8, !tbaa !2428
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4265, align 1, !tbaa !2432
  %4266 = and i32 %4263, 255
  %4267 = call i32 @llvm.ctpop.i32(i32 %4266) #16
  %4268 = trunc i32 %4267 to i8
  %4269 = and i8 %4268, 1
  %4270 = xor i8 %4269, 1
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4270, i8* %4271, align 1, !tbaa !2446
  %4272 = icmp eq i32 %4263, 0
  %4273 = zext i1 %4272 to i8
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4273, i8* %4274, align 1, !tbaa !2448
  %4275 = lshr i32 %4263, 31
  %4276 = trunc i32 %4275 to i8
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4276, i8* %4277, align 1, !tbaa !2449
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4278, align 1, !tbaa !2450
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4279, align 1, !tbaa !2447
  %4280 = load i64, i64* %RAX
  %4281 = load i64, i64* %RBP
  %4282 = sub i64 %4281, 72
  %4283 = load i64, i64* %PC
  %4284 = add i64 %4283, 3
  store i64 %4284, i64* %PC
  %4285 = trunc i64 %4280 to i32
  %4286 = inttoptr i64 %4282 to i32*
  %4287 = load i32, i32* %4286
  %4288 = xor i32 %4287, %4285
  %4289 = zext i32 %4288 to i64
  store i64 %4289, i64* %RAX, align 8, !tbaa !2428
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4290, align 1, !tbaa !2432
  %4291 = and i32 %4288, 255
  %4292 = call i32 @llvm.ctpop.i32(i32 %4291) #16
  %4293 = trunc i32 %4292 to i8
  %4294 = and i8 %4293, 1
  %4295 = xor i8 %4294, 1
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4295, i8* %4296, align 1, !tbaa !2446
  %4297 = icmp eq i32 %4288, 0
  %4298 = zext i1 %4297 to i8
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4298, i8* %4299, align 1, !tbaa !2448
  %4300 = lshr i32 %4288, 31
  %4301 = trunc i32 %4300 to i8
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4301, i8* %4302, align 1, !tbaa !2449
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4303, align 1, !tbaa !2450
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4304, align 1, !tbaa !2447
  %4305 = load i64, i64* %RBP
  %4306 = sub i64 %4305, 72
  %4307 = load i32, i32* %EAX
  %4308 = zext i32 %4307 to i64
  %4309 = load i64, i64* %PC
  %4310 = add i64 %4309, 3
  store i64 %4310, i64* %PC
  %4311 = inttoptr i64 %4306 to i32*
  store i32 %4307, i32* %4311
  %4312 = load i64, i64* %RBP
  %4313 = sub i64 %4312, 72
  %4314 = load i64, i64* %PC
  %4315 = add i64 %4314, 3
  store i64 %4315, i64* %PC
  %4316 = inttoptr i64 %4313 to i32*
  %4317 = load i32, i32* %4316
  %4318 = zext i32 %4317 to i64
  store i64 %4318, i64* %RAX, align 8, !tbaa !2428
  %4319 = load i64, i64* %RAX
  %4320 = load i64, i64* %RBP
  %4321 = sub i64 %4320, 76
  %4322 = load i64, i64* %PC
  %4323 = add i64 %4322, 3
  store i64 %4323, i64* %PC
  %4324 = trunc i64 %4319 to i32
  %4325 = inttoptr i64 %4321 to i32*
  %4326 = load i32, i32* %4325
  %4327 = add i32 %4326, %4324
  %4328 = zext i32 %4327 to i64
  store i64 %4328, i64* %RAX, align 8, !tbaa !2428
  %4329 = icmp ult i32 %4327, %4324
  %4330 = icmp ult i32 %4327, %4326
  %4331 = or i1 %4329, %4330
  %4332 = zext i1 %4331 to i8
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4332, i8* %4333, align 1, !tbaa !2432
  %4334 = and i32 %4327, 255
  %4335 = call i32 @llvm.ctpop.i32(i32 %4334) #16
  %4336 = trunc i32 %4335 to i8
  %4337 = and i8 %4336, 1
  %4338 = xor i8 %4337, 1
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4338, i8* %4339, align 1, !tbaa !2446
  %4340 = xor i32 %4326, %4324
  %4341 = xor i32 %4340, %4327
  %4342 = lshr i32 %4341, 4
  %4343 = trunc i32 %4342 to i8
  %4344 = and i8 %4343, 1
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4344, i8* %4345, align 1, !tbaa !2447
  %4346 = icmp eq i32 %4327, 0
  %4347 = zext i1 %4346 to i8
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4347, i8* %4348, align 1, !tbaa !2448
  %4349 = lshr i32 %4327, 31
  %4350 = trunc i32 %4349 to i8
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4350, i8* %4351, align 1, !tbaa !2449
  %4352 = lshr i32 %4324, 31
  %4353 = lshr i32 %4326, 31
  %4354 = xor i32 %4349, %4352
  %4355 = xor i32 %4349, %4353
  %4356 = add nuw nsw i32 %4354, %4355
  %4357 = icmp eq i32 %4356, 2
  %4358 = zext i1 %4357 to i8
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4358, i8* %4359, align 1, !tbaa !2450
  %4360 = load i64, i64* %RAX
  %4361 = load i64, i64* %PC
  %4362 = add i64 %4361, 3
  store i64 %4362, i64* %PC
  %4363 = and i64 %4360, 4294967295
  %4364 = shl i64 %4363, 8
  %4365 = trunc i64 %4364 to i32
  %4366 = icmp slt i32 %4365, 0
  %4367 = shl i32 %4365, 1
  %4368 = zext i32 %4367 to i64
  store i64 %4368, i64* %RAX, align 8, !tbaa !2428
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4370 = zext i1 %4366 to i8
  store i8 %4370, i8* %4369, align 1, !tbaa !2451
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4371, align 1, !tbaa !2451
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4372, align 1, !tbaa !2451
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4374 = icmp eq i32 %4367, 0
  %4375 = zext i1 %4374 to i8
  store i8 %4375, i8* %4373, align 1, !tbaa !2451
  %4376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4377 = lshr i32 %4367, 31
  %4378 = trunc i32 %4377 to i8
  store i8 %4378, i8* %4376, align 1, !tbaa !2451
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4379, align 1, !tbaa !2451
  %4380 = load i64, i64* %RBP
  %4381 = sub i64 %4380, 72
  %4382 = load i64, i64* %PC
  %4383 = add i64 %4382, 3
  store i64 %4383, i64* %PC
  %4384 = inttoptr i64 %4381 to i32*
  %4385 = load i32, i32* %4384
  %4386 = zext i32 %4385 to i64
  store i64 %4386, i64* %RCX, align 8, !tbaa !2428
  %4387 = load i64, i64* %RCX
  %4388 = load i64, i64* %RBP
  %4389 = sub i64 %4388, 76
  %4390 = load i64, i64* %PC
  %4391 = add i64 %4390, 3
  store i64 %4391, i64* %PC
  %4392 = trunc i64 %4387 to i32
  %4393 = inttoptr i64 %4389 to i32*
  %4394 = load i32, i32* %4393
  %4395 = add i32 %4394, %4392
  %4396 = zext i32 %4395 to i64
  store i64 %4396, i64* %RCX, align 8, !tbaa !2428
  %4397 = icmp ult i32 %4395, %4392
  %4398 = icmp ult i32 %4395, %4394
  %4399 = or i1 %4397, %4398
  %4400 = zext i1 %4399 to i8
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4400, i8* %4401, align 1, !tbaa !2432
  %4402 = and i32 %4395, 255
  %4403 = call i32 @llvm.ctpop.i32(i32 %4402) #16
  %4404 = trunc i32 %4403 to i8
  %4405 = and i8 %4404, 1
  %4406 = xor i8 %4405, 1
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4406, i8* %4407, align 1, !tbaa !2446
  %4408 = xor i32 %4394, %4392
  %4409 = xor i32 %4408, %4395
  %4410 = lshr i32 %4409, 4
  %4411 = trunc i32 %4410 to i8
  %4412 = and i8 %4411, 1
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4412, i8* %4413, align 1, !tbaa !2447
  %4414 = icmp eq i32 %4395, 0
  %4415 = zext i1 %4414 to i8
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4415, i8* %4416, align 1, !tbaa !2448
  %4417 = lshr i32 %4395, 31
  %4418 = trunc i32 %4417 to i8
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4418, i8* %4419, align 1, !tbaa !2449
  %4420 = lshr i32 %4392, 31
  %4421 = lshr i32 %4394, 31
  %4422 = xor i32 %4417, %4420
  %4423 = xor i32 %4417, %4421
  %4424 = add nuw nsw i32 %4422, %4423
  %4425 = icmp eq i32 %4424, 2
  %4426 = zext i1 %4425 to i8
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4426, i8* %4427, align 1, !tbaa !2450
  %4428 = load i64, i64* %RCX
  %4429 = load i64, i64* %PC
  %4430 = add i64 %4429, 3
  store i64 %4430, i64* %PC
  %4431 = and i64 %4428, 4294967295
  %4432 = lshr i64 %4431, 22
  %4433 = trunc i64 %4432 to i8
  %4434 = and i8 %4433, 1
  %4435 = lshr i64 %4432, 1
  %4436 = trunc i64 %4435 to i32
  %4437 = and i32 %4436, 2147483647
  %4438 = zext i32 %4437 to i64
  store i64 %4438, i64* %RCX, align 8, !tbaa !2428
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4434, i8* %4439, align 1, !tbaa !2451
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4441 = and i32 %4436, 255
  %4442 = call i32 @llvm.ctpop.i32(i32 %4441) #16
  %4443 = trunc i32 %4442 to i8
  %4444 = and i8 %4443, 1
  %4445 = xor i8 %4444, 1
  store i8 %4445, i8* %4440, align 1, !tbaa !2451
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4446, align 1, !tbaa !2451
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4448 = icmp eq i32 %4437, 0
  %4449 = zext i1 %4448 to i8
  store i8 %4449, i8* %4447, align 1, !tbaa !2451
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4450, align 1, !tbaa !2451
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4451, align 1, !tbaa !2451
  %4452 = load i64, i64* %RAX
  %4453 = load i32, i32* %ECX
  %4454 = zext i32 %4453 to i64
  %4455 = load i64, i64* %PC
  %4456 = add i64 %4455, 2
  store i64 %4456, i64* %PC
  %4457 = or i64 %4454, %4452
  %4458 = trunc i64 %4457 to i32
  %4459 = and i64 %4457, 4294967295
  store i64 %4459, i64* %RAX, align 8, !tbaa !2428
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4460, align 1, !tbaa !2432
  %4461 = and i32 %4458, 255
  %4462 = call i32 @llvm.ctpop.i32(i32 %4461) #16
  %4463 = trunc i32 %4462 to i8
  %4464 = and i8 %4463, 1
  %4465 = xor i8 %4464, 1
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4465, i8* %4466, align 1, !tbaa !2446
  %4467 = icmp eq i32 %4458, 0
  %4468 = zext i1 %4467 to i8
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4468, i8* %4469, align 1, !tbaa !2448
  %4470 = lshr i32 %4458, 31
  %4471 = trunc i32 %4470 to i8
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4471, i8* %4472, align 1, !tbaa !2449
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4473, align 1, !tbaa !2450
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4474, align 1, !tbaa !2447
  %4475 = load i64, i64* %RAX
  %4476 = load i64, i64* %RBP
  %4477 = sub i64 %4476, 68
  %4478 = load i64, i64* %PC
  %4479 = add i64 %4478, 3
  store i64 %4479, i64* %PC
  %4480 = trunc i64 %4475 to i32
  %4481 = inttoptr i64 %4477 to i32*
  %4482 = load i32, i32* %4481
  %4483 = xor i32 %4482, %4480
  %4484 = zext i32 %4483 to i64
  store i64 %4484, i64* %RAX, align 8, !tbaa !2428
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4485, align 1, !tbaa !2432
  %4486 = and i32 %4483, 255
  %4487 = call i32 @llvm.ctpop.i32(i32 %4486) #16
  %4488 = trunc i32 %4487 to i8
  %4489 = and i8 %4488, 1
  %4490 = xor i8 %4489, 1
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4490, i8* %4491, align 1, !tbaa !2446
  %4492 = icmp eq i32 %4483, 0
  %4493 = zext i1 %4492 to i8
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4493, i8* %4494, align 1, !tbaa !2448
  %4495 = lshr i32 %4483, 31
  %4496 = trunc i32 %4495 to i8
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4496, i8* %4497, align 1, !tbaa !2449
  %4498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4498, align 1, !tbaa !2450
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4499, align 1, !tbaa !2447
  %4500 = load i64, i64* %RBP
  %4501 = sub i64 %4500, 68
  %4502 = load i32, i32* %EAX
  %4503 = zext i32 %4502 to i64
  %4504 = load i64, i64* %PC
  %4505 = add i64 %4504, 3
  store i64 %4505, i64* %PC
  %4506 = inttoptr i64 %4501 to i32*
  store i32 %4502, i32* %4506
  %4507 = load i64, i64* %RBP
  %4508 = sub i64 %4507, 68
  %4509 = load i64, i64* %PC
  %4510 = add i64 %4509, 3
  store i64 %4510, i64* %PC
  %4511 = inttoptr i64 %4508 to i32*
  %4512 = load i32, i32* %4511
  %4513 = zext i32 %4512 to i64
  store i64 %4513, i64* %RAX, align 8, !tbaa !2428
  %4514 = load i64, i64* %RAX
  %4515 = load i64, i64* %RBP
  %4516 = sub i64 %4515, 72
  %4517 = load i64, i64* %PC
  %4518 = add i64 %4517, 3
  store i64 %4518, i64* %PC
  %4519 = trunc i64 %4514 to i32
  %4520 = inttoptr i64 %4516 to i32*
  %4521 = load i32, i32* %4520
  %4522 = add i32 %4521, %4519
  %4523 = zext i32 %4522 to i64
  store i64 %4523, i64* %RAX, align 8, !tbaa !2428
  %4524 = icmp ult i32 %4522, %4519
  %4525 = icmp ult i32 %4522, %4521
  %4526 = or i1 %4524, %4525
  %4527 = zext i1 %4526 to i8
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4527, i8* %4528, align 1, !tbaa !2432
  %4529 = and i32 %4522, 255
  %4530 = call i32 @llvm.ctpop.i32(i32 %4529) #16
  %4531 = trunc i32 %4530 to i8
  %4532 = and i8 %4531, 1
  %4533 = xor i8 %4532, 1
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4533, i8* %4534, align 1, !tbaa !2446
  %4535 = xor i32 %4521, %4519
  %4536 = xor i32 %4535, %4522
  %4537 = lshr i32 %4536, 4
  %4538 = trunc i32 %4537 to i8
  %4539 = and i8 %4538, 1
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4539, i8* %4540, align 1, !tbaa !2447
  %4541 = icmp eq i32 %4522, 0
  %4542 = zext i1 %4541 to i8
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4542, i8* %4543, align 1, !tbaa !2448
  %4544 = lshr i32 %4522, 31
  %4545 = trunc i32 %4544 to i8
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4545, i8* %4546, align 1, !tbaa !2449
  %4547 = lshr i32 %4519, 31
  %4548 = lshr i32 %4521, 31
  %4549 = xor i32 %4544, %4547
  %4550 = xor i32 %4544, %4548
  %4551 = add nuw nsw i32 %4549, %4550
  %4552 = icmp eq i32 %4551, 2
  %4553 = zext i1 %4552 to i8
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4553, i8* %4554, align 1, !tbaa !2450
  %4555 = load i64, i64* %RAX
  %4556 = load i64, i64* %PC
  %4557 = add i64 %4556, 3
  store i64 %4557, i64* %PC
  %4558 = and i64 %4555, 4294967295
  %4559 = shl i64 %4558, 12
  %4560 = trunc i64 %4559 to i32
  %4561 = icmp slt i32 %4560, 0
  %4562 = shl i32 %4560, 1
  %4563 = zext i32 %4562 to i64
  store i64 %4563, i64* %RAX, align 8, !tbaa !2428
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4565 = zext i1 %4561 to i8
  store i8 %4565, i8* %4564, align 1, !tbaa !2451
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4566, align 1, !tbaa !2451
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4567, align 1, !tbaa !2451
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4569 = icmp eq i32 %4562, 0
  %4570 = zext i1 %4569 to i8
  store i8 %4570, i8* %4568, align 1, !tbaa !2451
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4572 = lshr i32 %4562, 31
  %4573 = trunc i32 %4572 to i8
  store i8 %4573, i8* %4571, align 1, !tbaa !2451
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4574, align 1, !tbaa !2451
  %4575 = load i64, i64* %RBP
  %4576 = sub i64 %4575, 68
  %4577 = load i64, i64* %PC
  %4578 = add i64 %4577, 3
  store i64 %4578, i64* %PC
  %4579 = inttoptr i64 %4576 to i32*
  %4580 = load i32, i32* %4579
  %4581 = zext i32 %4580 to i64
  store i64 %4581, i64* %RCX, align 8, !tbaa !2428
  %4582 = load i64, i64* %RCX
  %4583 = load i64, i64* %RBP
  %4584 = sub i64 %4583, 72
  %4585 = load i64, i64* %PC
  %4586 = add i64 %4585, 3
  store i64 %4586, i64* %PC
  %4587 = trunc i64 %4582 to i32
  %4588 = inttoptr i64 %4584 to i32*
  %4589 = load i32, i32* %4588
  %4590 = add i32 %4589, %4587
  %4591 = zext i32 %4590 to i64
  store i64 %4591, i64* %RCX, align 8, !tbaa !2428
  %4592 = icmp ult i32 %4590, %4587
  %4593 = icmp ult i32 %4590, %4589
  %4594 = or i1 %4592, %4593
  %4595 = zext i1 %4594 to i8
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4595, i8* %4596, align 1, !tbaa !2432
  %4597 = and i32 %4590, 255
  %4598 = call i32 @llvm.ctpop.i32(i32 %4597) #16
  %4599 = trunc i32 %4598 to i8
  %4600 = and i8 %4599, 1
  %4601 = xor i8 %4600, 1
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4601, i8* %4602, align 1, !tbaa !2446
  %4603 = xor i32 %4589, %4587
  %4604 = xor i32 %4603, %4590
  %4605 = lshr i32 %4604, 4
  %4606 = trunc i32 %4605 to i8
  %4607 = and i8 %4606, 1
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4607, i8* %4608, align 1, !tbaa !2447
  %4609 = icmp eq i32 %4590, 0
  %4610 = zext i1 %4609 to i8
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4610, i8* %4611, align 1, !tbaa !2448
  %4612 = lshr i32 %4590, 31
  %4613 = trunc i32 %4612 to i8
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4613, i8* %4614, align 1, !tbaa !2449
  %4615 = lshr i32 %4587, 31
  %4616 = lshr i32 %4589, 31
  %4617 = xor i32 %4612, %4615
  %4618 = xor i32 %4612, %4616
  %4619 = add nuw nsw i32 %4617, %4618
  %4620 = icmp eq i32 %4619, 2
  %4621 = zext i1 %4620 to i8
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4621, i8* %4622, align 1, !tbaa !2450
  %4623 = load i64, i64* %RCX
  %4624 = load i64, i64* %PC
  %4625 = add i64 %4624, 3
  store i64 %4625, i64* %PC
  %4626 = and i64 %4623, 4294967295
  %4627 = lshr i64 %4626, 18
  %4628 = trunc i64 %4627 to i8
  %4629 = and i8 %4628, 1
  %4630 = lshr i64 %4627, 1
  %4631 = trunc i64 %4630 to i32
  %4632 = and i32 %4631, 2147483647
  %4633 = zext i32 %4632 to i64
  store i64 %4633, i64* %RCX, align 8, !tbaa !2428
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4629, i8* %4634, align 1, !tbaa !2451
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4636 = and i32 %4631, 255
  %4637 = call i32 @llvm.ctpop.i32(i32 %4636) #16
  %4638 = trunc i32 %4637 to i8
  %4639 = and i8 %4638, 1
  %4640 = xor i8 %4639, 1
  store i8 %4640, i8* %4635, align 1, !tbaa !2451
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4641, align 1, !tbaa !2451
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4643 = icmp eq i32 %4632, 0
  %4644 = zext i1 %4643 to i8
  store i8 %4644, i8* %4642, align 1, !tbaa !2451
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4645, align 1, !tbaa !2451
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4646, align 1, !tbaa !2451
  %4647 = load i64, i64* %RAX
  %4648 = load i32, i32* %ECX
  %4649 = zext i32 %4648 to i64
  %4650 = load i64, i64* %PC
  %4651 = add i64 %4650, 2
  store i64 %4651, i64* %PC
  %4652 = or i64 %4649, %4647
  %4653 = trunc i64 %4652 to i32
  %4654 = and i64 %4652, 4294967295
  store i64 %4654, i64* %RAX, align 8, !tbaa !2428
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4655, align 1, !tbaa !2432
  %4656 = and i32 %4653, 255
  %4657 = call i32 @llvm.ctpop.i32(i32 %4656) #16
  %4658 = trunc i32 %4657 to i8
  %4659 = and i8 %4658, 1
  %4660 = xor i8 %4659, 1
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4660, i8* %4661, align 1, !tbaa !2446
  %4662 = icmp eq i32 %4653, 0
  %4663 = zext i1 %4662 to i8
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4663, i8* %4664, align 1, !tbaa !2448
  %4665 = lshr i32 %4653, 31
  %4666 = trunc i32 %4665 to i8
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4666, i8* %4667, align 1, !tbaa !2449
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4668, align 1, !tbaa !2450
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4669, align 1, !tbaa !2447
  %4670 = load i64, i64* %RAX
  %4671 = load i64, i64* %RBP
  %4672 = sub i64 %4671, 80
  %4673 = load i64, i64* %PC
  %4674 = add i64 %4673, 3
  store i64 %4674, i64* %PC
  %4675 = trunc i64 %4670 to i32
  %4676 = inttoptr i64 %4672 to i32*
  %4677 = load i32, i32* %4676
  %4678 = xor i32 %4677, %4675
  %4679 = zext i32 %4678 to i64
  store i64 %4679, i64* %RAX, align 8, !tbaa !2428
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4680, align 1, !tbaa !2432
  %4681 = and i32 %4678, 255
  %4682 = call i32 @llvm.ctpop.i32(i32 %4681) #16
  %4683 = trunc i32 %4682 to i8
  %4684 = and i8 %4683, 1
  %4685 = xor i8 %4684, 1
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4685, i8* %4686, align 1, !tbaa !2446
  %4687 = icmp eq i32 %4678, 0
  %4688 = zext i1 %4687 to i8
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4688, i8* %4689, align 1, !tbaa !2448
  %4690 = lshr i32 %4678, 31
  %4691 = trunc i32 %4690 to i8
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4691, i8* %4692, align 1, !tbaa !2449
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4693, align 1, !tbaa !2450
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4694, align 1, !tbaa !2447
  %4695 = load i64, i64* %RBP
  %4696 = sub i64 %4695, 80
  %4697 = load i32, i32* %EAX
  %4698 = zext i32 %4697 to i64
  %4699 = load i64, i64* %PC
  %4700 = add i64 %4699, 3
  store i64 %4700, i64* %PC
  %4701 = inttoptr i64 %4696 to i32*
  store i32 %4697, i32* %4701
  %4702 = load i64, i64* %RBP
  %4703 = sub i64 %4702, 80
  %4704 = load i64, i64* %PC
  %4705 = add i64 %4704, 3
  store i64 %4705, i64* %PC
  %4706 = inttoptr i64 %4703 to i32*
  %4707 = load i32, i32* %4706
  %4708 = zext i32 %4707 to i64
  store i64 %4708, i64* %RAX, align 8, !tbaa !2428
  %4709 = load i64, i64* %RAX
  %4710 = load i64, i64* %RBP
  %4711 = sub i64 %4710, 68
  %4712 = load i64, i64* %PC
  %4713 = add i64 %4712, 3
  store i64 %4713, i64* %PC
  %4714 = trunc i64 %4709 to i32
  %4715 = inttoptr i64 %4711 to i32*
  %4716 = load i32, i32* %4715
  %4717 = add i32 %4716, %4714
  %4718 = zext i32 %4717 to i64
  store i64 %4718, i64* %RAX, align 8, !tbaa !2428
  %4719 = icmp ult i32 %4717, %4714
  %4720 = icmp ult i32 %4717, %4716
  %4721 = or i1 %4719, %4720
  %4722 = zext i1 %4721 to i8
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4722, i8* %4723, align 1, !tbaa !2432
  %4724 = and i32 %4717, 255
  %4725 = call i32 @llvm.ctpop.i32(i32 %4724) #16
  %4726 = trunc i32 %4725 to i8
  %4727 = and i8 %4726, 1
  %4728 = xor i8 %4727, 1
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4728, i8* %4729, align 1, !tbaa !2446
  %4730 = xor i32 %4716, %4714
  %4731 = xor i32 %4730, %4717
  %4732 = lshr i32 %4731, 4
  %4733 = trunc i32 %4732 to i8
  %4734 = and i8 %4733, 1
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4734, i8* %4735, align 1, !tbaa !2447
  %4736 = icmp eq i32 %4717, 0
  %4737 = zext i1 %4736 to i8
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4737, i8* %4738, align 1, !tbaa !2448
  %4739 = lshr i32 %4717, 31
  %4740 = trunc i32 %4739 to i8
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4740, i8* %4741, align 1, !tbaa !2449
  %4742 = lshr i32 %4714, 31
  %4743 = lshr i32 %4716, 31
  %4744 = xor i32 %4739, %4742
  %4745 = xor i32 %4739, %4743
  %4746 = add nuw nsw i32 %4744, %4745
  %4747 = icmp eq i32 %4746, 2
  %4748 = zext i1 %4747 to i8
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4748, i8* %4749, align 1, !tbaa !2450
  %4750 = load i64, i64* %RAX
  %4751 = load i64, i64* %PC
  %4752 = add i64 %4751, 3
  store i64 %4752, i64* %PC
  %4753 = and i64 %4750, 4294967295
  %4754 = shl i64 %4753, 17
  %4755 = trunc i64 %4754 to i32
  %4756 = icmp slt i32 %4755, 0
  %4757 = shl i32 %4755, 1
  %4758 = zext i32 %4757 to i64
  store i64 %4758, i64* %RAX, align 8, !tbaa !2428
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4760 = zext i1 %4756 to i8
  store i8 %4760, i8* %4759, align 1, !tbaa !2451
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %4761, align 1, !tbaa !2451
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4762, align 1, !tbaa !2451
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4764 = icmp eq i32 %4757, 0
  %4765 = zext i1 %4764 to i8
  store i8 %4765, i8* %4763, align 1, !tbaa !2451
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4767 = lshr i32 %4757, 31
  %4768 = trunc i32 %4767 to i8
  store i8 %4768, i8* %4766, align 1, !tbaa !2451
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4769, align 1, !tbaa !2451
  %4770 = load i64, i64* %RBP
  %4771 = sub i64 %4770, 80
  %4772 = load i64, i64* %PC
  %4773 = add i64 %4772, 3
  store i64 %4773, i64* %PC
  %4774 = inttoptr i64 %4771 to i32*
  %4775 = load i32, i32* %4774
  %4776 = zext i32 %4775 to i64
  store i64 %4776, i64* %RCX, align 8, !tbaa !2428
  %4777 = load i64, i64* %RCX
  %4778 = load i64, i64* %RBP
  %4779 = sub i64 %4778, 68
  %4780 = load i64, i64* %PC
  %4781 = add i64 %4780, 3
  store i64 %4781, i64* %PC
  %4782 = trunc i64 %4777 to i32
  %4783 = inttoptr i64 %4779 to i32*
  %4784 = load i32, i32* %4783
  %4785 = add i32 %4784, %4782
  %4786 = zext i32 %4785 to i64
  store i64 %4786, i64* %RCX, align 8, !tbaa !2428
  %4787 = icmp ult i32 %4785, %4782
  %4788 = icmp ult i32 %4785, %4784
  %4789 = or i1 %4787, %4788
  %4790 = zext i1 %4789 to i8
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4790, i8* %4791, align 1, !tbaa !2432
  %4792 = and i32 %4785, 255
  %4793 = call i32 @llvm.ctpop.i32(i32 %4792) #16
  %4794 = trunc i32 %4793 to i8
  %4795 = and i8 %4794, 1
  %4796 = xor i8 %4795, 1
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4796, i8* %4797, align 1, !tbaa !2446
  %4798 = xor i32 %4784, %4782
  %4799 = xor i32 %4798, %4785
  %4800 = lshr i32 %4799, 4
  %4801 = trunc i32 %4800 to i8
  %4802 = and i8 %4801, 1
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4802, i8* %4803, align 1, !tbaa !2447
  %4804 = icmp eq i32 %4785, 0
  %4805 = zext i1 %4804 to i8
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4805, i8* %4806, align 1, !tbaa !2448
  %4807 = lshr i32 %4785, 31
  %4808 = trunc i32 %4807 to i8
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4808, i8* %4809, align 1, !tbaa !2449
  %4810 = lshr i32 %4782, 31
  %4811 = lshr i32 %4784, 31
  %4812 = xor i32 %4807, %4810
  %4813 = xor i32 %4807, %4811
  %4814 = add nuw nsw i32 %4812, %4813
  %4815 = icmp eq i32 %4814, 2
  %4816 = zext i1 %4815 to i8
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4816, i8* %4817, align 1, !tbaa !2450
  %4818 = load i64, i64* %RCX
  %4819 = load i64, i64* %PC
  %4820 = add i64 %4819, 3
  store i64 %4820, i64* %PC
  %4821 = and i64 %4818, 4294967295
  %4822 = lshr i64 %4821, 13
  %4823 = trunc i64 %4822 to i8
  %4824 = and i8 %4823, 1
  %4825 = lshr i64 %4822, 1
  %4826 = trunc i64 %4825 to i32
  %4827 = and i32 %4826, 2147483647
  %4828 = zext i32 %4827 to i64
  store i64 %4828, i64* %RCX, align 8, !tbaa !2428
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4824, i8* %4829, align 1, !tbaa !2451
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4831 = and i32 %4826, 255
  %4832 = call i32 @llvm.ctpop.i32(i32 %4831) #16
  %4833 = trunc i32 %4832 to i8
  %4834 = and i8 %4833, 1
  %4835 = xor i8 %4834, 1
  store i8 %4835, i8* %4830, align 1, !tbaa !2451
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4836, align 1, !tbaa !2451
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4838 = icmp eq i32 %4827, 0
  %4839 = zext i1 %4838 to i8
  store i8 %4839, i8* %4837, align 1, !tbaa !2451
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4840, align 1, !tbaa !2451
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4841, align 1, !tbaa !2451
  %4842 = load i64, i64* %RAX
  %4843 = load i32, i32* %ECX
  %4844 = zext i32 %4843 to i64
  %4845 = load i64, i64* %PC
  %4846 = add i64 %4845, 2
  store i64 %4846, i64* %PC
  %4847 = or i64 %4844, %4842
  %4848 = trunc i64 %4847 to i32
  %4849 = and i64 %4847, 4294967295
  store i64 %4849, i64* %RAX, align 8, !tbaa !2428
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4850, align 1, !tbaa !2432
  %4851 = and i32 %4848, 255
  %4852 = call i32 @llvm.ctpop.i32(i32 %4851) #16
  %4853 = trunc i32 %4852 to i8
  %4854 = and i8 %4853, 1
  %4855 = xor i8 %4854, 1
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4855, i8* %4856, align 1, !tbaa !2446
  %4857 = icmp eq i32 %4848, 0
  %4858 = zext i1 %4857 to i8
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4858, i8* %4859, align 1, !tbaa !2448
  %4860 = lshr i32 %4848, 31
  %4861 = trunc i32 %4860 to i8
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4861, i8* %4862, align 1, !tbaa !2449
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4863, align 1, !tbaa !2450
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4864, align 1, !tbaa !2447
  %4865 = load i64, i64* %RAX
  %4866 = load i64, i64* %RBP
  %4867 = sub i64 %4866, 76
  %4868 = load i64, i64* %PC
  %4869 = add i64 %4868, 3
  store i64 %4869, i64* %PC
  %4870 = trunc i64 %4865 to i32
  %4871 = inttoptr i64 %4867 to i32*
  %4872 = load i32, i32* %4871
  %4873 = xor i32 %4872, %4870
  %4874 = zext i32 %4873 to i64
  store i64 %4874, i64* %RAX, align 8, !tbaa !2428
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4875, align 1, !tbaa !2432
  %4876 = and i32 %4873, 255
  %4877 = call i32 @llvm.ctpop.i32(i32 %4876) #16
  %4878 = trunc i32 %4877 to i8
  %4879 = and i8 %4878, 1
  %4880 = xor i8 %4879, 1
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4880, i8* %4881, align 1, !tbaa !2446
  %4882 = icmp eq i32 %4873, 0
  %4883 = zext i1 %4882 to i8
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4883, i8* %4884, align 1, !tbaa !2448
  %4885 = lshr i32 %4873, 31
  %4886 = trunc i32 %4885 to i8
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4886, i8* %4887, align 1, !tbaa !2449
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4888, align 1, !tbaa !2450
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4889, align 1, !tbaa !2447
  %4890 = load i64, i64* %RBP
  %4891 = sub i64 %4890, 76
  %4892 = load i32, i32* %EAX
  %4893 = zext i32 %4892 to i64
  %4894 = load i64, i64* %PC
  %4895 = add i64 %4894, 3
  store i64 %4895, i64* %PC
  %4896 = inttoptr i64 %4891 to i32*
  store i32 %4892, i32* %4896
  %4897 = load i64, i64* %RBP
  %4898 = sub i64 %4897, 56
  %4899 = load i64, i64* %PC
  %4900 = add i64 %4899, 3
  store i64 %4900, i64* %PC
  %4901 = inttoptr i64 %4898 to i32*
  %4902 = load i32, i32* %4901
  %4903 = zext i32 %4902 to i64
  store i64 %4903, i64* %RAX, align 8, !tbaa !2428
  %4904 = load i64, i64* %RAX
  %4905 = load i64, i64* %RBP
  %4906 = sub i64 %4905, 60
  %4907 = load i64, i64* %PC
  %4908 = add i64 %4907, 3
  store i64 %4908, i64* %PC
  %4909 = trunc i64 %4904 to i32
  %4910 = inttoptr i64 %4906 to i32*
  %4911 = load i32, i32* %4910
  %4912 = add i32 %4911, %4909
  %4913 = zext i32 %4912 to i64
  store i64 %4913, i64* %RAX, align 8, !tbaa !2428
  %4914 = icmp ult i32 %4912, %4909
  %4915 = icmp ult i32 %4912, %4911
  %4916 = or i1 %4914, %4915
  %4917 = zext i1 %4916 to i8
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4917, i8* %4918, align 1, !tbaa !2432
  %4919 = and i32 %4912, 255
  %4920 = call i32 @llvm.ctpop.i32(i32 %4919) #16
  %4921 = trunc i32 %4920 to i8
  %4922 = and i8 %4921, 1
  %4923 = xor i8 %4922, 1
  %4924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4923, i8* %4924, align 1, !tbaa !2446
  %4925 = xor i32 %4911, %4909
  %4926 = xor i32 %4925, %4912
  %4927 = lshr i32 %4926, 4
  %4928 = trunc i32 %4927 to i8
  %4929 = and i8 %4928, 1
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4929, i8* %4930, align 1, !tbaa !2447
  %4931 = icmp eq i32 %4912, 0
  %4932 = zext i1 %4931 to i8
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4932, i8* %4933, align 1, !tbaa !2448
  %4934 = lshr i32 %4912, 31
  %4935 = trunc i32 %4934 to i8
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4935, i8* %4936, align 1, !tbaa !2449
  %4937 = lshr i32 %4909, 31
  %4938 = lshr i32 %4911, 31
  %4939 = xor i32 %4934, %4937
  %4940 = xor i32 %4934, %4938
  %4941 = add nuw nsw i32 %4939, %4940
  %4942 = icmp eq i32 %4941, 2
  %4943 = zext i1 %4942 to i8
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4943, i8* %4944, align 1, !tbaa !2450
  %4945 = load i64, i64* %RAX
  %4946 = load i64, i64* %PC
  %4947 = add i64 %4946, 3
  store i64 %4947, i64* %PC
  %4948 = and i64 %4945, 4294967295
  %4949 = shl i64 %4948, 6
  %4950 = trunc i64 %4949 to i32
  %4951 = icmp slt i32 %4950, 0
  %4952 = shl i32 %4950, 1
  %4953 = zext i32 %4952 to i64
  store i64 %4953, i64* %RAX, align 8, !tbaa !2428
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4955 = zext i1 %4951 to i8
  store i8 %4955, i8* %4954, align 1, !tbaa !2451
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4957 = and i32 %4952, 254
  %4958 = call i32 @llvm.ctpop.i32(i32 %4957) #16
  %4959 = trunc i32 %4958 to i8
  %4960 = and i8 %4959, 1
  %4961 = xor i8 %4960, 1
  store i8 %4961, i8* %4956, align 1, !tbaa !2451
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4962, align 1, !tbaa !2451
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4964 = icmp eq i32 %4952, 0
  %4965 = zext i1 %4964 to i8
  store i8 %4965, i8* %4963, align 1, !tbaa !2451
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4967 = lshr i32 %4952, 31
  %4968 = trunc i32 %4967 to i8
  store i8 %4968, i8* %4966, align 1, !tbaa !2451
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4969, align 1, !tbaa !2451
  %4970 = load i64, i64* %RBP
  %4971 = sub i64 %4970, 56
  %4972 = load i64, i64* %PC
  %4973 = add i64 %4972, 3
  store i64 %4973, i64* %PC
  %4974 = inttoptr i64 %4971 to i32*
  %4975 = load i32, i32* %4974
  %4976 = zext i32 %4975 to i64
  store i64 %4976, i64* %RCX, align 8, !tbaa !2428
  %4977 = load i64, i64* %RCX
  %4978 = load i64, i64* %RBP
  %4979 = sub i64 %4978, 60
  %4980 = load i64, i64* %PC
  %4981 = add i64 %4980, 3
  store i64 %4981, i64* %PC
  %4982 = trunc i64 %4977 to i32
  %4983 = inttoptr i64 %4979 to i32*
  %4984 = load i32, i32* %4983
  %4985 = add i32 %4984, %4982
  %4986 = zext i32 %4985 to i64
  store i64 %4986, i64* %RCX, align 8, !tbaa !2428
  %4987 = icmp ult i32 %4985, %4982
  %4988 = icmp ult i32 %4985, %4984
  %4989 = or i1 %4987, %4988
  %4990 = zext i1 %4989 to i8
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4990, i8* %4991, align 1, !tbaa !2432
  %4992 = and i32 %4985, 255
  %4993 = call i32 @llvm.ctpop.i32(i32 %4992) #16
  %4994 = trunc i32 %4993 to i8
  %4995 = and i8 %4994, 1
  %4996 = xor i8 %4995, 1
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4996, i8* %4997, align 1, !tbaa !2446
  %4998 = xor i32 %4984, %4982
  %4999 = xor i32 %4998, %4985
  %5000 = lshr i32 %4999, 4
  %5001 = trunc i32 %5000 to i8
  %5002 = and i8 %5001, 1
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5002, i8* %5003, align 1, !tbaa !2447
  %5004 = icmp eq i32 %4985, 0
  %5005 = zext i1 %5004 to i8
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5005, i8* %5006, align 1, !tbaa !2448
  %5007 = lshr i32 %4985, 31
  %5008 = trunc i32 %5007 to i8
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5008, i8* %5009, align 1, !tbaa !2449
  %5010 = lshr i32 %4982, 31
  %5011 = lshr i32 %4984, 31
  %5012 = xor i32 %5007, %5010
  %5013 = xor i32 %5007, %5011
  %5014 = add nuw nsw i32 %5012, %5013
  %5015 = icmp eq i32 %5014, 2
  %5016 = zext i1 %5015 to i8
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5016, i8* %5017, align 1, !tbaa !2450
  %5018 = load i64, i64* %RCX
  %5019 = load i64, i64* %PC
  %5020 = add i64 %5019, 3
  store i64 %5020, i64* %PC
  %5021 = and i64 %5018, 4294967295
  %5022 = lshr i64 %5021, 24
  %5023 = trunc i64 %5022 to i8
  %5024 = and i8 %5023, 1
  %5025 = lshr i64 %5022, 1
  %5026 = trunc i64 %5025 to i32
  %5027 = and i32 %5026, 2147483647
  %5028 = zext i32 %5027 to i64
  store i64 %5028, i64* %RCX, align 8, !tbaa !2428
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5024, i8* %5029, align 1, !tbaa !2451
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5031 = and i32 %5026, 255
  %5032 = call i32 @llvm.ctpop.i32(i32 %5031) #16
  %5033 = trunc i32 %5032 to i8
  %5034 = and i8 %5033, 1
  %5035 = xor i8 %5034, 1
  store i8 %5035, i8* %5030, align 1, !tbaa !2451
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5036, align 1, !tbaa !2451
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5038 = icmp eq i32 %5027, 0
  %5039 = zext i1 %5038 to i8
  store i8 %5039, i8* %5037, align 1, !tbaa !2451
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5040, align 1, !tbaa !2451
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5041, align 1, !tbaa !2451
  %5042 = load i64, i64* %RAX
  %5043 = load i32, i32* %ECX
  %5044 = zext i32 %5043 to i64
  %5045 = load i64, i64* %PC
  %5046 = add i64 %5045, 2
  store i64 %5046, i64* %PC
  %5047 = or i64 %5044, %5042
  %5048 = trunc i64 %5047 to i32
  %5049 = and i64 %5047, 4294967295
  store i64 %5049, i64* %RAX, align 8, !tbaa !2428
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5050, align 1, !tbaa !2432
  %5051 = and i32 %5048, 255
  %5052 = call i32 @llvm.ctpop.i32(i32 %5051) #16
  %5053 = trunc i32 %5052 to i8
  %5054 = and i8 %5053, 1
  %5055 = xor i8 %5054, 1
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5055, i8* %5056, align 1, !tbaa !2446
  %5057 = icmp eq i32 %5048, 0
  %5058 = zext i1 %5057 to i8
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5058, i8* %5059, align 1, !tbaa !2448
  %5060 = lshr i32 %5048, 31
  %5061 = trunc i32 %5060 to i8
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5061, i8* %5062, align 1, !tbaa !2449
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5063, align 1, !tbaa !2450
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5064, align 1, !tbaa !2447
  %5065 = load i64, i64* %RAX
  %5066 = load i64, i64* %RBP
  %5067 = sub i64 %5066, 52
  %5068 = load i64, i64* %PC
  %5069 = add i64 %5068, 3
  store i64 %5069, i64* %PC
  %5070 = trunc i64 %5065 to i32
  %5071 = inttoptr i64 %5067 to i32*
  %5072 = load i32, i32* %5071
  %5073 = xor i32 %5072, %5070
  %5074 = zext i32 %5073 to i64
  store i64 %5074, i64* %RAX, align 8, !tbaa !2428
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5075, align 1, !tbaa !2432
  %5076 = and i32 %5073, 255
  %5077 = call i32 @llvm.ctpop.i32(i32 %5076) #16
  %5078 = trunc i32 %5077 to i8
  %5079 = and i8 %5078, 1
  %5080 = xor i8 %5079, 1
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5080, i8* %5081, align 1, !tbaa !2446
  %5082 = icmp eq i32 %5073, 0
  %5083 = zext i1 %5082 to i8
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5083, i8* %5084, align 1, !tbaa !2448
  %5085 = lshr i32 %5073, 31
  %5086 = trunc i32 %5085 to i8
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5086, i8* %5087, align 1, !tbaa !2449
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5088, align 1, !tbaa !2450
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5089, align 1, !tbaa !2447
  %5090 = load i64, i64* %RBP
  %5091 = sub i64 %5090, 52
  %5092 = load i32, i32* %EAX
  %5093 = zext i32 %5092 to i64
  %5094 = load i64, i64* %PC
  %5095 = add i64 %5094, 3
  store i64 %5095, i64* %PC
  %5096 = inttoptr i64 %5091 to i32*
  store i32 %5092, i32* %5096
  %5097 = load i64, i64* %RBP
  %5098 = sub i64 %5097, 52
  %5099 = load i64, i64* %PC
  %5100 = add i64 %5099, 3
  store i64 %5100, i64* %PC
  %5101 = inttoptr i64 %5098 to i32*
  %5102 = load i32, i32* %5101
  %5103 = zext i32 %5102 to i64
  store i64 %5103, i64* %RAX, align 8, !tbaa !2428
  %5104 = load i64, i64* %RAX
  %5105 = load i64, i64* %RBP
  %5106 = sub i64 %5105, 56
  %5107 = load i64, i64* %PC
  %5108 = add i64 %5107, 3
  store i64 %5108, i64* %PC
  %5109 = trunc i64 %5104 to i32
  %5110 = inttoptr i64 %5106 to i32*
  %5111 = load i32, i32* %5110
  %5112 = add i32 %5111, %5109
  %5113 = zext i32 %5112 to i64
  store i64 %5113, i64* %RAX, align 8, !tbaa !2428
  %5114 = icmp ult i32 %5112, %5109
  %5115 = icmp ult i32 %5112, %5111
  %5116 = or i1 %5114, %5115
  %5117 = zext i1 %5116 to i8
  %5118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5117, i8* %5118, align 1, !tbaa !2432
  %5119 = and i32 %5112, 255
  %5120 = call i32 @llvm.ctpop.i32(i32 %5119) #16
  %5121 = trunc i32 %5120 to i8
  %5122 = and i8 %5121, 1
  %5123 = xor i8 %5122, 1
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5123, i8* %5124, align 1, !tbaa !2446
  %5125 = xor i32 %5111, %5109
  %5126 = xor i32 %5125, %5112
  %5127 = lshr i32 %5126, 4
  %5128 = trunc i32 %5127 to i8
  %5129 = and i8 %5128, 1
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5129, i8* %5130, align 1, !tbaa !2447
  %5131 = icmp eq i32 %5112, 0
  %5132 = zext i1 %5131 to i8
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5132, i8* %5133, align 1, !tbaa !2448
  %5134 = lshr i32 %5112, 31
  %5135 = trunc i32 %5134 to i8
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5135, i8* %5136, align 1, !tbaa !2449
  %5137 = lshr i32 %5109, 31
  %5138 = lshr i32 %5111, 31
  %5139 = xor i32 %5134, %5137
  %5140 = xor i32 %5134, %5138
  %5141 = add nuw nsw i32 %5139, %5140
  %5142 = icmp eq i32 %5141, 2
  %5143 = zext i1 %5142 to i8
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5143, i8* %5144, align 1, !tbaa !2450
  %5145 = load i64, i64* %RAX
  %5146 = load i64, i64* %PC
  %5147 = add i64 %5146, 3
  store i64 %5147, i64* %PC
  %5148 = and i64 %5145, 4294967295
  %5149 = shl i64 %5148, 8
  %5150 = trunc i64 %5149 to i32
  %5151 = icmp slt i32 %5150, 0
  %5152 = shl i32 %5150, 1
  %5153 = zext i32 %5152 to i64
  store i64 %5153, i64* %RAX, align 8, !tbaa !2428
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5155 = zext i1 %5151 to i8
  store i8 %5155, i8* %5154, align 1, !tbaa !2451
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %5156, align 1, !tbaa !2451
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5157, align 1, !tbaa !2451
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5159 = icmp eq i32 %5152, 0
  %5160 = zext i1 %5159 to i8
  store i8 %5160, i8* %5158, align 1, !tbaa !2451
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5162 = lshr i32 %5152, 31
  %5163 = trunc i32 %5162 to i8
  store i8 %5163, i8* %5161, align 1, !tbaa !2451
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5164, align 1, !tbaa !2451
  %5165 = load i64, i64* %RBP
  %5166 = sub i64 %5165, 52
  %5167 = load i64, i64* %PC
  %5168 = add i64 %5167, 3
  store i64 %5168, i64* %PC
  %5169 = inttoptr i64 %5166 to i32*
  %5170 = load i32, i32* %5169
  %5171 = zext i32 %5170 to i64
  store i64 %5171, i64* %RCX, align 8, !tbaa !2428
  %5172 = load i64, i64* %RCX
  %5173 = load i64, i64* %RBP
  %5174 = sub i64 %5173, 56
  %5175 = load i64, i64* %PC
  %5176 = add i64 %5175, 3
  store i64 %5176, i64* %PC
  %5177 = trunc i64 %5172 to i32
  %5178 = inttoptr i64 %5174 to i32*
  %5179 = load i32, i32* %5178
  %5180 = add i32 %5179, %5177
  %5181 = zext i32 %5180 to i64
  store i64 %5181, i64* %RCX, align 8, !tbaa !2428
  %5182 = icmp ult i32 %5180, %5177
  %5183 = icmp ult i32 %5180, %5179
  %5184 = or i1 %5182, %5183
  %5185 = zext i1 %5184 to i8
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5185, i8* %5186, align 1, !tbaa !2432
  %5187 = and i32 %5180, 255
  %5188 = call i32 @llvm.ctpop.i32(i32 %5187) #16
  %5189 = trunc i32 %5188 to i8
  %5190 = and i8 %5189, 1
  %5191 = xor i8 %5190, 1
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5191, i8* %5192, align 1, !tbaa !2446
  %5193 = xor i32 %5179, %5177
  %5194 = xor i32 %5193, %5180
  %5195 = lshr i32 %5194, 4
  %5196 = trunc i32 %5195 to i8
  %5197 = and i8 %5196, 1
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5197, i8* %5198, align 1, !tbaa !2447
  %5199 = icmp eq i32 %5180, 0
  %5200 = zext i1 %5199 to i8
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5200, i8* %5201, align 1, !tbaa !2448
  %5202 = lshr i32 %5180, 31
  %5203 = trunc i32 %5202 to i8
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5203, i8* %5204, align 1, !tbaa !2449
  %5205 = lshr i32 %5177, 31
  %5206 = lshr i32 %5179, 31
  %5207 = xor i32 %5202, %5205
  %5208 = xor i32 %5202, %5206
  %5209 = add nuw nsw i32 %5207, %5208
  %5210 = icmp eq i32 %5209, 2
  %5211 = zext i1 %5210 to i8
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5211, i8* %5212, align 1, !tbaa !2450
  %5213 = load i64, i64* %RCX
  %5214 = load i64, i64* %PC
  %5215 = add i64 %5214, 3
  store i64 %5215, i64* %PC
  %5216 = and i64 %5213, 4294967295
  %5217 = lshr i64 %5216, 22
  %5218 = trunc i64 %5217 to i8
  %5219 = and i8 %5218, 1
  %5220 = lshr i64 %5217, 1
  %5221 = trunc i64 %5220 to i32
  %5222 = and i32 %5221, 2147483647
  %5223 = zext i32 %5222 to i64
  store i64 %5223, i64* %RCX, align 8, !tbaa !2428
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5219, i8* %5224, align 1, !tbaa !2451
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5226 = and i32 %5221, 255
  %5227 = call i32 @llvm.ctpop.i32(i32 %5226) #16
  %5228 = trunc i32 %5227 to i8
  %5229 = and i8 %5228, 1
  %5230 = xor i8 %5229, 1
  store i8 %5230, i8* %5225, align 1, !tbaa !2451
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5231, align 1, !tbaa !2451
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5233 = icmp eq i32 %5222, 0
  %5234 = zext i1 %5233 to i8
  store i8 %5234, i8* %5232, align 1, !tbaa !2451
  %5235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5235, align 1, !tbaa !2451
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5236, align 1, !tbaa !2451
  %5237 = load i64, i64* %RAX
  %5238 = load i32, i32* %ECX
  %5239 = zext i32 %5238 to i64
  %5240 = load i64, i64* %PC
  %5241 = add i64 %5240, 2
  store i64 %5241, i64* %PC
  %5242 = or i64 %5239, %5237
  %5243 = trunc i64 %5242 to i32
  %5244 = and i64 %5242, 4294967295
  store i64 %5244, i64* %RAX, align 8, !tbaa !2428
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5245, align 1, !tbaa !2432
  %5246 = and i32 %5243, 255
  %5247 = call i32 @llvm.ctpop.i32(i32 %5246) #16
  %5248 = trunc i32 %5247 to i8
  %5249 = and i8 %5248, 1
  %5250 = xor i8 %5249, 1
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5250, i8* %5251, align 1, !tbaa !2446
  %5252 = icmp eq i32 %5243, 0
  %5253 = zext i1 %5252 to i8
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5253, i8* %5254, align 1, !tbaa !2448
  %5255 = lshr i32 %5243, 31
  %5256 = trunc i32 %5255 to i8
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5256, i8* %5257, align 1, !tbaa !2449
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5258, align 1, !tbaa !2450
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5259, align 1, !tbaa !2447
  %5260 = load i64, i64* %RAX
  %5261 = load i64, i64* %RBP
  %5262 = sub i64 %5261, 64
  %5263 = load i64, i64* %PC
  %5264 = add i64 %5263, 3
  store i64 %5264, i64* %PC
  %5265 = trunc i64 %5260 to i32
  %5266 = inttoptr i64 %5262 to i32*
  %5267 = load i32, i32* %5266
  %5268 = xor i32 %5267, %5265
  %5269 = zext i32 %5268 to i64
  store i64 %5269, i64* %RAX, align 8, !tbaa !2428
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5270, align 1, !tbaa !2432
  %5271 = and i32 %5268, 255
  %5272 = call i32 @llvm.ctpop.i32(i32 %5271) #16
  %5273 = trunc i32 %5272 to i8
  %5274 = and i8 %5273, 1
  %5275 = xor i8 %5274, 1
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5275, i8* %5276, align 1, !tbaa !2446
  %5277 = icmp eq i32 %5268, 0
  %5278 = zext i1 %5277 to i8
  %5279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5278, i8* %5279, align 1, !tbaa !2448
  %5280 = lshr i32 %5268, 31
  %5281 = trunc i32 %5280 to i8
  %5282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5281, i8* %5282, align 1, !tbaa !2449
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5283, align 1, !tbaa !2450
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5284, align 1, !tbaa !2447
  %5285 = load i64, i64* %RBP
  %5286 = sub i64 %5285, 64
  %5287 = load i32, i32* %EAX
  %5288 = zext i32 %5287 to i64
  %5289 = load i64, i64* %PC
  %5290 = add i64 %5289, 3
  store i64 %5290, i64* %PC
  %5291 = inttoptr i64 %5286 to i32*
  store i32 %5287, i32* %5291
  %5292 = load i64, i64* %RBP
  %5293 = sub i64 %5292, 64
  %5294 = load i64, i64* %PC
  %5295 = add i64 %5294, 3
  store i64 %5295, i64* %PC
  %5296 = inttoptr i64 %5293 to i32*
  %5297 = load i32, i32* %5296
  %5298 = zext i32 %5297 to i64
  store i64 %5298, i64* %RAX, align 8, !tbaa !2428
  %5299 = load i64, i64* %RAX
  %5300 = load i64, i64* %RBP
  %5301 = sub i64 %5300, 52
  %5302 = load i64, i64* %PC
  %5303 = add i64 %5302, 3
  store i64 %5303, i64* %PC
  %5304 = trunc i64 %5299 to i32
  %5305 = inttoptr i64 %5301 to i32*
  %5306 = load i32, i32* %5305
  %5307 = add i32 %5306, %5304
  %5308 = zext i32 %5307 to i64
  store i64 %5308, i64* %RAX, align 8, !tbaa !2428
  %5309 = icmp ult i32 %5307, %5304
  %5310 = icmp ult i32 %5307, %5306
  %5311 = or i1 %5309, %5310
  %5312 = zext i1 %5311 to i8
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5312, i8* %5313, align 1, !tbaa !2432
  %5314 = and i32 %5307, 255
  %5315 = call i32 @llvm.ctpop.i32(i32 %5314) #16
  %5316 = trunc i32 %5315 to i8
  %5317 = and i8 %5316, 1
  %5318 = xor i8 %5317, 1
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5318, i8* %5319, align 1, !tbaa !2446
  %5320 = xor i32 %5306, %5304
  %5321 = xor i32 %5320, %5307
  %5322 = lshr i32 %5321, 4
  %5323 = trunc i32 %5322 to i8
  %5324 = and i8 %5323, 1
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5324, i8* %5325, align 1, !tbaa !2447
  %5326 = icmp eq i32 %5307, 0
  %5327 = zext i1 %5326 to i8
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5327, i8* %5328, align 1, !tbaa !2448
  %5329 = lshr i32 %5307, 31
  %5330 = trunc i32 %5329 to i8
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5330, i8* %5331, align 1, !tbaa !2449
  %5332 = lshr i32 %5304, 31
  %5333 = lshr i32 %5306, 31
  %5334 = xor i32 %5329, %5332
  %5335 = xor i32 %5329, %5333
  %5336 = add nuw nsw i32 %5334, %5335
  %5337 = icmp eq i32 %5336, 2
  %5338 = zext i1 %5337 to i8
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5338, i8* %5339, align 1, !tbaa !2450
  %5340 = load i64, i64* %RAX
  %5341 = load i64, i64* %PC
  %5342 = add i64 %5341, 3
  store i64 %5342, i64* %PC
  %5343 = and i64 %5340, 4294967295
  %5344 = shl i64 %5343, 12
  %5345 = trunc i64 %5344 to i32
  %5346 = icmp slt i32 %5345, 0
  %5347 = shl i32 %5345, 1
  %5348 = zext i32 %5347 to i64
  store i64 %5348, i64* %RAX, align 8, !tbaa !2428
  %5349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5350 = zext i1 %5346 to i8
  store i8 %5350, i8* %5349, align 1, !tbaa !2451
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %5351, align 1, !tbaa !2451
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5352, align 1, !tbaa !2451
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5354 = icmp eq i32 %5347, 0
  %5355 = zext i1 %5354 to i8
  store i8 %5355, i8* %5353, align 1, !tbaa !2451
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5357 = lshr i32 %5347, 31
  %5358 = trunc i32 %5357 to i8
  store i8 %5358, i8* %5356, align 1, !tbaa !2451
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5359, align 1, !tbaa !2451
  %5360 = load i64, i64* %RBP
  %5361 = sub i64 %5360, 64
  %5362 = load i64, i64* %PC
  %5363 = add i64 %5362, 3
  store i64 %5363, i64* %PC
  %5364 = inttoptr i64 %5361 to i32*
  %5365 = load i32, i32* %5364
  %5366 = zext i32 %5365 to i64
  store i64 %5366, i64* %RCX, align 8, !tbaa !2428
  %5367 = load i64, i64* %RCX
  %5368 = load i64, i64* %RBP
  %5369 = sub i64 %5368, 52
  %5370 = load i64, i64* %PC
  %5371 = add i64 %5370, 3
  store i64 %5371, i64* %PC
  %5372 = trunc i64 %5367 to i32
  %5373 = inttoptr i64 %5369 to i32*
  %5374 = load i32, i32* %5373
  %5375 = add i32 %5374, %5372
  %5376 = zext i32 %5375 to i64
  store i64 %5376, i64* %RCX, align 8, !tbaa !2428
  %5377 = icmp ult i32 %5375, %5372
  %5378 = icmp ult i32 %5375, %5374
  %5379 = or i1 %5377, %5378
  %5380 = zext i1 %5379 to i8
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5380, i8* %5381, align 1, !tbaa !2432
  %5382 = and i32 %5375, 255
  %5383 = call i32 @llvm.ctpop.i32(i32 %5382) #16
  %5384 = trunc i32 %5383 to i8
  %5385 = and i8 %5384, 1
  %5386 = xor i8 %5385, 1
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5386, i8* %5387, align 1, !tbaa !2446
  %5388 = xor i32 %5374, %5372
  %5389 = xor i32 %5388, %5375
  %5390 = lshr i32 %5389, 4
  %5391 = trunc i32 %5390 to i8
  %5392 = and i8 %5391, 1
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5392, i8* %5393, align 1, !tbaa !2447
  %5394 = icmp eq i32 %5375, 0
  %5395 = zext i1 %5394 to i8
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5395, i8* %5396, align 1, !tbaa !2448
  %5397 = lshr i32 %5375, 31
  %5398 = trunc i32 %5397 to i8
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5398, i8* %5399, align 1, !tbaa !2449
  %5400 = lshr i32 %5372, 31
  %5401 = lshr i32 %5374, 31
  %5402 = xor i32 %5397, %5400
  %5403 = xor i32 %5397, %5401
  %5404 = add nuw nsw i32 %5402, %5403
  %5405 = icmp eq i32 %5404, 2
  %5406 = zext i1 %5405 to i8
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5406, i8* %5407, align 1, !tbaa !2450
  %5408 = load i64, i64* %RCX
  %5409 = load i64, i64* %PC
  %5410 = add i64 %5409, 3
  store i64 %5410, i64* %PC
  %5411 = and i64 %5408, 4294967295
  %5412 = lshr i64 %5411, 18
  %5413 = trunc i64 %5412 to i8
  %5414 = and i8 %5413, 1
  %5415 = lshr i64 %5412, 1
  %5416 = trunc i64 %5415 to i32
  %5417 = and i32 %5416, 2147483647
  %5418 = zext i32 %5417 to i64
  store i64 %5418, i64* %RCX, align 8, !tbaa !2428
  %5419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5414, i8* %5419, align 1, !tbaa !2451
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5421 = and i32 %5416, 255
  %5422 = call i32 @llvm.ctpop.i32(i32 %5421) #16
  %5423 = trunc i32 %5422 to i8
  %5424 = and i8 %5423, 1
  %5425 = xor i8 %5424, 1
  store i8 %5425, i8* %5420, align 1, !tbaa !2451
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5426, align 1, !tbaa !2451
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5428 = icmp eq i32 %5417, 0
  %5429 = zext i1 %5428 to i8
  store i8 %5429, i8* %5427, align 1, !tbaa !2451
  %5430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5430, align 1, !tbaa !2451
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5431, align 1, !tbaa !2451
  %5432 = load i64, i64* %RAX
  %5433 = load i32, i32* %ECX
  %5434 = zext i32 %5433 to i64
  %5435 = load i64, i64* %PC
  %5436 = add i64 %5435, 2
  store i64 %5436, i64* %PC
  %5437 = or i64 %5434, %5432
  %5438 = trunc i64 %5437 to i32
  %5439 = and i64 %5437, 4294967295
  store i64 %5439, i64* %RAX, align 8, !tbaa !2428
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5440, align 1, !tbaa !2432
  %5441 = and i32 %5438, 255
  %5442 = call i32 @llvm.ctpop.i32(i32 %5441) #16
  %5443 = trunc i32 %5442 to i8
  %5444 = and i8 %5443, 1
  %5445 = xor i8 %5444, 1
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5445, i8* %5446, align 1, !tbaa !2446
  %5447 = icmp eq i32 %5438, 0
  %5448 = zext i1 %5447 to i8
  %5449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5448, i8* %5449, align 1, !tbaa !2448
  %5450 = lshr i32 %5438, 31
  %5451 = trunc i32 %5450 to i8
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5451, i8* %5452, align 1, !tbaa !2449
  %5453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5453, align 1, !tbaa !2450
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5454, align 1, !tbaa !2447
  %5455 = load i64, i64* %RAX
  %5456 = load i64, i64* %RBP
  %5457 = sub i64 %5456, 60
  %5458 = load i64, i64* %PC
  %5459 = add i64 %5458, 3
  store i64 %5459, i64* %PC
  %5460 = trunc i64 %5455 to i32
  %5461 = inttoptr i64 %5457 to i32*
  %5462 = load i32, i32* %5461
  %5463 = xor i32 %5462, %5460
  %5464 = zext i32 %5463 to i64
  store i64 %5464, i64* %RAX, align 8, !tbaa !2428
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5465, align 1, !tbaa !2432
  %5466 = and i32 %5463, 255
  %5467 = call i32 @llvm.ctpop.i32(i32 %5466) #16
  %5468 = trunc i32 %5467 to i8
  %5469 = and i8 %5468, 1
  %5470 = xor i8 %5469, 1
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5470, i8* %5471, align 1, !tbaa !2446
  %5472 = icmp eq i32 %5463, 0
  %5473 = zext i1 %5472 to i8
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5473, i8* %5474, align 1, !tbaa !2448
  %5475 = lshr i32 %5463, 31
  %5476 = trunc i32 %5475 to i8
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5476, i8* %5477, align 1, !tbaa !2449
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5478, align 1, !tbaa !2450
  %5479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5479, align 1, !tbaa !2447
  %5480 = load i64, i64* %RBP
  %5481 = sub i64 %5480, 60
  %5482 = load i32, i32* %EAX
  %5483 = zext i32 %5482 to i64
  %5484 = load i64, i64* %PC
  %5485 = add i64 %5484, 3
  store i64 %5485, i64* %PC
  %5486 = inttoptr i64 %5481 to i32*
  store i32 %5482, i32* %5486
  %5487 = load i64, i64* %RBP
  %5488 = sub i64 %5487, 60
  %5489 = load i64, i64* %PC
  %5490 = add i64 %5489, 3
  store i64 %5490, i64* %PC
  %5491 = inttoptr i64 %5488 to i32*
  %5492 = load i32, i32* %5491
  %5493 = zext i32 %5492 to i64
  store i64 %5493, i64* %RAX, align 8, !tbaa !2428
  %5494 = load i64, i64* %RAX
  %5495 = load i64, i64* %RBP
  %5496 = sub i64 %5495, 64
  %5497 = load i64, i64* %PC
  %5498 = add i64 %5497, 3
  store i64 %5498, i64* %PC
  %5499 = trunc i64 %5494 to i32
  %5500 = inttoptr i64 %5496 to i32*
  %5501 = load i32, i32* %5500
  %5502 = add i32 %5501, %5499
  %5503 = zext i32 %5502 to i64
  store i64 %5503, i64* %RAX, align 8, !tbaa !2428
  %5504 = icmp ult i32 %5502, %5499
  %5505 = icmp ult i32 %5502, %5501
  %5506 = or i1 %5504, %5505
  %5507 = zext i1 %5506 to i8
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5507, i8* %5508, align 1, !tbaa !2432
  %5509 = and i32 %5502, 255
  %5510 = call i32 @llvm.ctpop.i32(i32 %5509) #16
  %5511 = trunc i32 %5510 to i8
  %5512 = and i8 %5511, 1
  %5513 = xor i8 %5512, 1
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5513, i8* %5514, align 1, !tbaa !2446
  %5515 = xor i32 %5501, %5499
  %5516 = xor i32 %5515, %5502
  %5517 = lshr i32 %5516, 4
  %5518 = trunc i32 %5517 to i8
  %5519 = and i8 %5518, 1
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5519, i8* %5520, align 1, !tbaa !2447
  %5521 = icmp eq i32 %5502, 0
  %5522 = zext i1 %5521 to i8
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5522, i8* %5523, align 1, !tbaa !2448
  %5524 = lshr i32 %5502, 31
  %5525 = trunc i32 %5524 to i8
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5525, i8* %5526, align 1, !tbaa !2449
  %5527 = lshr i32 %5499, 31
  %5528 = lshr i32 %5501, 31
  %5529 = xor i32 %5524, %5527
  %5530 = xor i32 %5524, %5528
  %5531 = add nuw nsw i32 %5529, %5530
  %5532 = icmp eq i32 %5531, 2
  %5533 = zext i1 %5532 to i8
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5533, i8* %5534, align 1, !tbaa !2450
  %5535 = load i64, i64* %RAX
  %5536 = load i64, i64* %PC
  %5537 = add i64 %5536, 3
  store i64 %5537, i64* %PC
  %5538 = and i64 %5535, 4294967295
  %5539 = shl i64 %5538, 17
  %5540 = trunc i64 %5539 to i32
  %5541 = icmp slt i32 %5540, 0
  %5542 = shl i32 %5540, 1
  %5543 = zext i32 %5542 to i64
  store i64 %5543, i64* %RAX, align 8, !tbaa !2428
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5545 = zext i1 %5541 to i8
  store i8 %5545, i8* %5544, align 1, !tbaa !2451
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %5546, align 1, !tbaa !2451
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5547, align 1, !tbaa !2451
  %5548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5549 = icmp eq i32 %5542, 0
  %5550 = zext i1 %5549 to i8
  store i8 %5550, i8* %5548, align 1, !tbaa !2451
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5552 = lshr i32 %5542, 31
  %5553 = trunc i32 %5552 to i8
  store i8 %5553, i8* %5551, align 1, !tbaa !2451
  %5554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5554, align 1, !tbaa !2451
  %5555 = load i64, i64* %RBP
  %5556 = sub i64 %5555, 60
  %5557 = load i64, i64* %PC
  %5558 = add i64 %5557, 3
  store i64 %5558, i64* %PC
  %5559 = inttoptr i64 %5556 to i32*
  %5560 = load i32, i32* %5559
  %5561 = zext i32 %5560 to i64
  store i64 %5561, i64* %RCX, align 8, !tbaa !2428
  %5562 = load i64, i64* %RCX
  %5563 = load i64, i64* %RBP
  %5564 = sub i64 %5563, 64
  %5565 = load i64, i64* %PC
  %5566 = add i64 %5565, 3
  store i64 %5566, i64* %PC
  %5567 = trunc i64 %5562 to i32
  %5568 = inttoptr i64 %5564 to i32*
  %5569 = load i32, i32* %5568
  %5570 = add i32 %5569, %5567
  %5571 = zext i32 %5570 to i64
  store i64 %5571, i64* %RCX, align 8, !tbaa !2428
  %5572 = icmp ult i32 %5570, %5567
  %5573 = icmp ult i32 %5570, %5569
  %5574 = or i1 %5572, %5573
  %5575 = zext i1 %5574 to i8
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5575, i8* %5576, align 1, !tbaa !2432
  %5577 = and i32 %5570, 255
  %5578 = call i32 @llvm.ctpop.i32(i32 %5577) #16
  %5579 = trunc i32 %5578 to i8
  %5580 = and i8 %5579, 1
  %5581 = xor i8 %5580, 1
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5581, i8* %5582, align 1, !tbaa !2446
  %5583 = xor i32 %5569, %5567
  %5584 = xor i32 %5583, %5570
  %5585 = lshr i32 %5584, 4
  %5586 = trunc i32 %5585 to i8
  %5587 = and i8 %5586, 1
  %5588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5587, i8* %5588, align 1, !tbaa !2447
  %5589 = icmp eq i32 %5570, 0
  %5590 = zext i1 %5589 to i8
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5590, i8* %5591, align 1, !tbaa !2448
  %5592 = lshr i32 %5570, 31
  %5593 = trunc i32 %5592 to i8
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5593, i8* %5594, align 1, !tbaa !2449
  %5595 = lshr i32 %5567, 31
  %5596 = lshr i32 %5569, 31
  %5597 = xor i32 %5592, %5595
  %5598 = xor i32 %5592, %5596
  %5599 = add nuw nsw i32 %5597, %5598
  %5600 = icmp eq i32 %5599, 2
  %5601 = zext i1 %5600 to i8
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5601, i8* %5602, align 1, !tbaa !2450
  %5603 = load i64, i64* %RCX
  %5604 = load i64, i64* %PC
  %5605 = add i64 %5604, 3
  store i64 %5605, i64* %PC
  %5606 = and i64 %5603, 4294967295
  %5607 = lshr i64 %5606, 13
  %5608 = trunc i64 %5607 to i8
  %5609 = and i8 %5608, 1
  %5610 = lshr i64 %5607, 1
  %5611 = trunc i64 %5610 to i32
  %5612 = and i32 %5611, 2147483647
  %5613 = zext i32 %5612 to i64
  store i64 %5613, i64* %RCX, align 8, !tbaa !2428
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5609, i8* %5614, align 1, !tbaa !2451
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5616 = and i32 %5611, 255
  %5617 = call i32 @llvm.ctpop.i32(i32 %5616) #16
  %5618 = trunc i32 %5617 to i8
  %5619 = and i8 %5618, 1
  %5620 = xor i8 %5619, 1
  store i8 %5620, i8* %5615, align 1, !tbaa !2451
  %5621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5621, align 1, !tbaa !2451
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5623 = icmp eq i32 %5612, 0
  %5624 = zext i1 %5623 to i8
  store i8 %5624, i8* %5622, align 1, !tbaa !2451
  %5625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5625, align 1, !tbaa !2451
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5626, align 1, !tbaa !2451
  %5627 = load i64, i64* %RAX
  %5628 = load i32, i32* %ECX
  %5629 = zext i32 %5628 to i64
  %5630 = load i64, i64* %PC
  %5631 = add i64 %5630, 2
  store i64 %5631, i64* %PC
  %5632 = or i64 %5629, %5627
  %5633 = trunc i64 %5632 to i32
  %5634 = and i64 %5632, 4294967295
  store i64 %5634, i64* %RAX, align 8, !tbaa !2428
  %5635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5635, align 1, !tbaa !2432
  %5636 = and i32 %5633, 255
  %5637 = call i32 @llvm.ctpop.i32(i32 %5636) #16
  %5638 = trunc i32 %5637 to i8
  %5639 = and i8 %5638, 1
  %5640 = xor i8 %5639, 1
  %5641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5640, i8* %5641, align 1, !tbaa !2446
  %5642 = icmp eq i32 %5633, 0
  %5643 = zext i1 %5642 to i8
  %5644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5643, i8* %5644, align 1, !tbaa !2448
  %5645 = lshr i32 %5633, 31
  %5646 = trunc i32 %5645 to i8
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5646, i8* %5647, align 1, !tbaa !2449
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5648, align 1, !tbaa !2450
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5649, align 1, !tbaa !2447
  %5650 = load i64, i64* %RAX
  %5651 = load i64, i64* %RBP
  %5652 = sub i64 %5651, 56
  %5653 = load i64, i64* %PC
  %5654 = add i64 %5653, 3
  store i64 %5654, i64* %PC
  %5655 = trunc i64 %5650 to i32
  %5656 = inttoptr i64 %5652 to i32*
  %5657 = load i32, i32* %5656
  %5658 = xor i32 %5657, %5655
  %5659 = zext i32 %5658 to i64
  store i64 %5659, i64* %RAX, align 8, !tbaa !2428
  %5660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5660, align 1, !tbaa !2432
  %5661 = and i32 %5658, 255
  %5662 = call i32 @llvm.ctpop.i32(i32 %5661) #16
  %5663 = trunc i32 %5662 to i8
  %5664 = and i8 %5663, 1
  %5665 = xor i8 %5664, 1
  %5666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5665, i8* %5666, align 1, !tbaa !2446
  %5667 = icmp eq i32 %5658, 0
  %5668 = zext i1 %5667 to i8
  %5669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5668, i8* %5669, align 1, !tbaa !2448
  %5670 = lshr i32 %5658, 31
  %5671 = trunc i32 %5670 to i8
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5671, i8* %5672, align 1, !tbaa !2449
  %5673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5673, align 1, !tbaa !2450
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5674, align 1, !tbaa !2447
  %5675 = load i64, i64* %RBP
  %5676 = sub i64 %5675, 56
  %5677 = load i32, i32* %EAX
  %5678 = zext i32 %5677 to i64
  %5679 = load i64, i64* %PC
  %5680 = add i64 %5679, 3
  store i64 %5680, i64* %PC
  %5681 = inttoptr i64 %5676 to i32*
  store i32 %5677, i32* %5681
  %5682 = load i64, i64* %RBP
  %5683 = sub i64 %5682, 36
  %5684 = load i64, i64* %PC
  %5685 = add i64 %5684, 3
  store i64 %5685, i64* %PC
  %5686 = inttoptr i64 %5683 to i32*
  %5687 = load i32, i32* %5686
  %5688 = zext i32 %5687 to i64
  store i64 %5688, i64* %RAX, align 8, !tbaa !2428
  %5689 = load i64, i64* %RAX
  %5690 = load i64, i64* %RBP
  %5691 = sub i64 %5690, 40
  %5692 = load i64, i64* %PC
  %5693 = add i64 %5692, 3
  store i64 %5693, i64* %PC
  %5694 = trunc i64 %5689 to i32
  %5695 = inttoptr i64 %5691 to i32*
  %5696 = load i32, i32* %5695
  %5697 = add i32 %5696, %5694
  %5698 = zext i32 %5697 to i64
  store i64 %5698, i64* %RAX, align 8, !tbaa !2428
  %5699 = icmp ult i32 %5697, %5694
  %5700 = icmp ult i32 %5697, %5696
  %5701 = or i1 %5699, %5700
  %5702 = zext i1 %5701 to i8
  %5703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5702, i8* %5703, align 1, !tbaa !2432
  %5704 = and i32 %5697, 255
  %5705 = call i32 @llvm.ctpop.i32(i32 %5704) #16
  %5706 = trunc i32 %5705 to i8
  %5707 = and i8 %5706, 1
  %5708 = xor i8 %5707, 1
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5708, i8* %5709, align 1, !tbaa !2446
  %5710 = xor i32 %5696, %5694
  %5711 = xor i32 %5710, %5697
  %5712 = lshr i32 %5711, 4
  %5713 = trunc i32 %5712 to i8
  %5714 = and i8 %5713, 1
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5714, i8* %5715, align 1, !tbaa !2447
  %5716 = icmp eq i32 %5697, 0
  %5717 = zext i1 %5716 to i8
  %5718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5717, i8* %5718, align 1, !tbaa !2448
  %5719 = lshr i32 %5697, 31
  %5720 = trunc i32 %5719 to i8
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5720, i8* %5721, align 1, !tbaa !2449
  %5722 = lshr i32 %5694, 31
  %5723 = lshr i32 %5696, 31
  %5724 = xor i32 %5719, %5722
  %5725 = xor i32 %5719, %5723
  %5726 = add nuw nsw i32 %5724, %5725
  %5727 = icmp eq i32 %5726, 2
  %5728 = zext i1 %5727 to i8
  %5729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5728, i8* %5729, align 1, !tbaa !2450
  %5730 = load i64, i64* %RAX
  %5731 = load i64, i64* %PC
  %5732 = add i64 %5731, 3
  store i64 %5732, i64* %PC
  %5733 = and i64 %5730, 4294967295
  %5734 = shl i64 %5733, 6
  %5735 = trunc i64 %5734 to i32
  %5736 = icmp slt i32 %5735, 0
  %5737 = shl i32 %5735, 1
  %5738 = zext i32 %5737 to i64
  store i64 %5738, i64* %RAX, align 8, !tbaa !2428
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5740 = zext i1 %5736 to i8
  store i8 %5740, i8* %5739, align 1, !tbaa !2451
  %5741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5742 = and i32 %5737, 254
  %5743 = call i32 @llvm.ctpop.i32(i32 %5742) #16
  %5744 = trunc i32 %5743 to i8
  %5745 = and i8 %5744, 1
  %5746 = xor i8 %5745, 1
  store i8 %5746, i8* %5741, align 1, !tbaa !2451
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5747, align 1, !tbaa !2451
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5749 = icmp eq i32 %5737, 0
  %5750 = zext i1 %5749 to i8
  store i8 %5750, i8* %5748, align 1, !tbaa !2451
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5752 = lshr i32 %5737, 31
  %5753 = trunc i32 %5752 to i8
  store i8 %5753, i8* %5751, align 1, !tbaa !2451
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5754, align 1, !tbaa !2451
  %5755 = load i64, i64* %RBP
  %5756 = sub i64 %5755, 36
  %5757 = load i64, i64* %PC
  %5758 = add i64 %5757, 3
  store i64 %5758, i64* %PC
  %5759 = inttoptr i64 %5756 to i32*
  %5760 = load i32, i32* %5759
  %5761 = zext i32 %5760 to i64
  store i64 %5761, i64* %RCX, align 8, !tbaa !2428
  %5762 = load i64, i64* %RCX
  %5763 = load i64, i64* %RBP
  %5764 = sub i64 %5763, 40
  %5765 = load i64, i64* %PC
  %5766 = add i64 %5765, 3
  store i64 %5766, i64* %PC
  %5767 = trunc i64 %5762 to i32
  %5768 = inttoptr i64 %5764 to i32*
  %5769 = load i32, i32* %5768
  %5770 = add i32 %5769, %5767
  %5771 = zext i32 %5770 to i64
  store i64 %5771, i64* %RCX, align 8, !tbaa !2428
  %5772 = icmp ult i32 %5770, %5767
  %5773 = icmp ult i32 %5770, %5769
  %5774 = or i1 %5772, %5773
  %5775 = zext i1 %5774 to i8
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5775, i8* %5776, align 1, !tbaa !2432
  %5777 = and i32 %5770, 255
  %5778 = call i32 @llvm.ctpop.i32(i32 %5777) #16
  %5779 = trunc i32 %5778 to i8
  %5780 = and i8 %5779, 1
  %5781 = xor i8 %5780, 1
  %5782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5781, i8* %5782, align 1, !tbaa !2446
  %5783 = xor i32 %5769, %5767
  %5784 = xor i32 %5783, %5770
  %5785 = lshr i32 %5784, 4
  %5786 = trunc i32 %5785 to i8
  %5787 = and i8 %5786, 1
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5787, i8* %5788, align 1, !tbaa !2447
  %5789 = icmp eq i32 %5770, 0
  %5790 = zext i1 %5789 to i8
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5790, i8* %5791, align 1, !tbaa !2448
  %5792 = lshr i32 %5770, 31
  %5793 = trunc i32 %5792 to i8
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5793, i8* %5794, align 1, !tbaa !2449
  %5795 = lshr i32 %5767, 31
  %5796 = lshr i32 %5769, 31
  %5797 = xor i32 %5792, %5795
  %5798 = xor i32 %5792, %5796
  %5799 = add nuw nsw i32 %5797, %5798
  %5800 = icmp eq i32 %5799, 2
  %5801 = zext i1 %5800 to i8
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5801, i8* %5802, align 1, !tbaa !2450
  %5803 = load i64, i64* %RCX
  %5804 = load i64, i64* %PC
  %5805 = add i64 %5804, 3
  store i64 %5805, i64* %PC
  %5806 = and i64 %5803, 4294967295
  %5807 = lshr i64 %5806, 24
  %5808 = trunc i64 %5807 to i8
  %5809 = and i8 %5808, 1
  %5810 = lshr i64 %5807, 1
  %5811 = trunc i64 %5810 to i32
  %5812 = and i32 %5811, 2147483647
  %5813 = zext i32 %5812 to i64
  store i64 %5813, i64* %RCX, align 8, !tbaa !2428
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5809, i8* %5814, align 1, !tbaa !2451
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5816 = and i32 %5811, 255
  %5817 = call i32 @llvm.ctpop.i32(i32 %5816) #16
  %5818 = trunc i32 %5817 to i8
  %5819 = and i8 %5818, 1
  %5820 = xor i8 %5819, 1
  store i8 %5820, i8* %5815, align 1, !tbaa !2451
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5821, align 1, !tbaa !2451
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5823 = icmp eq i32 %5812, 0
  %5824 = zext i1 %5823 to i8
  store i8 %5824, i8* %5822, align 1, !tbaa !2451
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5825, align 1, !tbaa !2451
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5826, align 1, !tbaa !2451
  %5827 = load i64, i64* %RAX
  %5828 = load i32, i32* %ECX
  %5829 = zext i32 %5828 to i64
  %5830 = load i64, i64* %PC
  %5831 = add i64 %5830, 2
  store i64 %5831, i64* %PC
  %5832 = or i64 %5829, %5827
  %5833 = trunc i64 %5832 to i32
  %5834 = and i64 %5832, 4294967295
  store i64 %5834, i64* %RAX, align 8, !tbaa !2428
  %5835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5835, align 1, !tbaa !2432
  %5836 = and i32 %5833, 255
  %5837 = call i32 @llvm.ctpop.i32(i32 %5836) #16
  %5838 = trunc i32 %5837 to i8
  %5839 = and i8 %5838, 1
  %5840 = xor i8 %5839, 1
  %5841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5840, i8* %5841, align 1, !tbaa !2446
  %5842 = icmp eq i32 %5833, 0
  %5843 = zext i1 %5842 to i8
  %5844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5843, i8* %5844, align 1, !tbaa !2448
  %5845 = lshr i32 %5833, 31
  %5846 = trunc i32 %5845 to i8
  %5847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5846, i8* %5847, align 1, !tbaa !2449
  %5848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5848, align 1, !tbaa !2450
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5849, align 1, !tbaa !2447
  %5850 = load i64, i64* %RAX
  %5851 = load i64, i64* %RBP
  %5852 = sub i64 %5851, 48
  %5853 = load i64, i64* %PC
  %5854 = add i64 %5853, 3
  store i64 %5854, i64* %PC
  %5855 = trunc i64 %5850 to i32
  %5856 = inttoptr i64 %5852 to i32*
  %5857 = load i32, i32* %5856
  %5858 = xor i32 %5857, %5855
  %5859 = zext i32 %5858 to i64
  store i64 %5859, i64* %RAX, align 8, !tbaa !2428
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5860, align 1, !tbaa !2432
  %5861 = and i32 %5858, 255
  %5862 = call i32 @llvm.ctpop.i32(i32 %5861) #16
  %5863 = trunc i32 %5862 to i8
  %5864 = and i8 %5863, 1
  %5865 = xor i8 %5864, 1
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5865, i8* %5866, align 1, !tbaa !2446
  %5867 = icmp eq i32 %5858, 0
  %5868 = zext i1 %5867 to i8
  %5869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5868, i8* %5869, align 1, !tbaa !2448
  %5870 = lshr i32 %5858, 31
  %5871 = trunc i32 %5870 to i8
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5871, i8* %5872, align 1, !tbaa !2449
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5873, align 1, !tbaa !2450
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5874, align 1, !tbaa !2447
  %5875 = load i64, i64* %RBP
  %5876 = sub i64 %5875, 48
  %5877 = load i32, i32* %EAX
  %5878 = zext i32 %5877 to i64
  %5879 = load i64, i64* %PC
  %5880 = add i64 %5879, 3
  store i64 %5880, i64* %PC
  %5881 = inttoptr i64 %5876 to i32*
  store i32 %5877, i32* %5881
  %5882 = load i64, i64* %RBP
  %5883 = sub i64 %5882, 48
  %5884 = load i64, i64* %PC
  %5885 = add i64 %5884, 3
  store i64 %5885, i64* %PC
  %5886 = inttoptr i64 %5883 to i32*
  %5887 = load i32, i32* %5886
  %5888 = zext i32 %5887 to i64
  store i64 %5888, i64* %RAX, align 8, !tbaa !2428
  %5889 = load i64, i64* %RAX
  %5890 = load i64, i64* %RBP
  %5891 = sub i64 %5890, 36
  %5892 = load i64, i64* %PC
  %5893 = add i64 %5892, 3
  store i64 %5893, i64* %PC
  %5894 = trunc i64 %5889 to i32
  %5895 = inttoptr i64 %5891 to i32*
  %5896 = load i32, i32* %5895
  %5897 = add i32 %5896, %5894
  %5898 = zext i32 %5897 to i64
  store i64 %5898, i64* %RAX, align 8, !tbaa !2428
  %5899 = icmp ult i32 %5897, %5894
  %5900 = icmp ult i32 %5897, %5896
  %5901 = or i1 %5899, %5900
  %5902 = zext i1 %5901 to i8
  %5903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5902, i8* %5903, align 1, !tbaa !2432
  %5904 = and i32 %5897, 255
  %5905 = call i32 @llvm.ctpop.i32(i32 %5904) #16
  %5906 = trunc i32 %5905 to i8
  %5907 = and i8 %5906, 1
  %5908 = xor i8 %5907, 1
  %5909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5908, i8* %5909, align 1, !tbaa !2446
  %5910 = xor i32 %5896, %5894
  %5911 = xor i32 %5910, %5897
  %5912 = lshr i32 %5911, 4
  %5913 = trunc i32 %5912 to i8
  %5914 = and i8 %5913, 1
  %5915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5914, i8* %5915, align 1, !tbaa !2447
  %5916 = icmp eq i32 %5897, 0
  %5917 = zext i1 %5916 to i8
  %5918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5917, i8* %5918, align 1, !tbaa !2448
  %5919 = lshr i32 %5897, 31
  %5920 = trunc i32 %5919 to i8
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5920, i8* %5921, align 1, !tbaa !2449
  %5922 = lshr i32 %5894, 31
  %5923 = lshr i32 %5896, 31
  %5924 = xor i32 %5919, %5922
  %5925 = xor i32 %5919, %5923
  %5926 = add nuw nsw i32 %5924, %5925
  %5927 = icmp eq i32 %5926, 2
  %5928 = zext i1 %5927 to i8
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5928, i8* %5929, align 1, !tbaa !2450
  %5930 = load i64, i64* %RAX
  %5931 = load i64, i64* %PC
  %5932 = add i64 %5931, 3
  store i64 %5932, i64* %PC
  %5933 = and i64 %5930, 4294967295
  %5934 = shl i64 %5933, 8
  %5935 = trunc i64 %5934 to i32
  %5936 = icmp slt i32 %5935, 0
  %5937 = shl i32 %5935, 1
  %5938 = zext i32 %5937 to i64
  store i64 %5938, i64* %RAX, align 8, !tbaa !2428
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5940 = zext i1 %5936 to i8
  store i8 %5940, i8* %5939, align 1, !tbaa !2451
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %5941, align 1, !tbaa !2451
  %5942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5942, align 1, !tbaa !2451
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5944 = icmp eq i32 %5937, 0
  %5945 = zext i1 %5944 to i8
  store i8 %5945, i8* %5943, align 1, !tbaa !2451
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5947 = lshr i32 %5937, 31
  %5948 = trunc i32 %5947 to i8
  store i8 %5948, i8* %5946, align 1, !tbaa !2451
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5949, align 1, !tbaa !2451
  %5950 = load i64, i64* %RBP
  %5951 = sub i64 %5950, 48
  %5952 = load i64, i64* %PC
  %5953 = add i64 %5952, 3
  store i64 %5953, i64* %PC
  %5954 = inttoptr i64 %5951 to i32*
  %5955 = load i32, i32* %5954
  %5956 = zext i32 %5955 to i64
  store i64 %5956, i64* %RCX, align 8, !tbaa !2428
  %5957 = load i64, i64* %RCX
  %5958 = load i64, i64* %RBP
  %5959 = sub i64 %5958, 36
  %5960 = load i64, i64* %PC
  %5961 = add i64 %5960, 3
  store i64 %5961, i64* %PC
  %5962 = trunc i64 %5957 to i32
  %5963 = inttoptr i64 %5959 to i32*
  %5964 = load i32, i32* %5963
  %5965 = add i32 %5964, %5962
  %5966 = zext i32 %5965 to i64
  store i64 %5966, i64* %RCX, align 8, !tbaa !2428
  %5967 = icmp ult i32 %5965, %5962
  %5968 = icmp ult i32 %5965, %5964
  %5969 = or i1 %5967, %5968
  %5970 = zext i1 %5969 to i8
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5970, i8* %5971, align 1, !tbaa !2432
  %5972 = and i32 %5965, 255
  %5973 = call i32 @llvm.ctpop.i32(i32 %5972) #16
  %5974 = trunc i32 %5973 to i8
  %5975 = and i8 %5974, 1
  %5976 = xor i8 %5975, 1
  %5977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5976, i8* %5977, align 1, !tbaa !2446
  %5978 = xor i32 %5964, %5962
  %5979 = xor i32 %5978, %5965
  %5980 = lshr i32 %5979, 4
  %5981 = trunc i32 %5980 to i8
  %5982 = and i8 %5981, 1
  %5983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5982, i8* %5983, align 1, !tbaa !2447
  %5984 = icmp eq i32 %5965, 0
  %5985 = zext i1 %5984 to i8
  %5986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5985, i8* %5986, align 1, !tbaa !2448
  %5987 = lshr i32 %5965, 31
  %5988 = trunc i32 %5987 to i8
  %5989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5988, i8* %5989, align 1, !tbaa !2449
  %5990 = lshr i32 %5962, 31
  %5991 = lshr i32 %5964, 31
  %5992 = xor i32 %5987, %5990
  %5993 = xor i32 %5987, %5991
  %5994 = add nuw nsw i32 %5992, %5993
  %5995 = icmp eq i32 %5994, 2
  %5996 = zext i1 %5995 to i8
  %5997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5996, i8* %5997, align 1, !tbaa !2450
  %5998 = load i64, i64* %RCX
  %5999 = load i64, i64* %PC
  %6000 = add i64 %5999, 3
  store i64 %6000, i64* %PC
  %6001 = and i64 %5998, 4294967295
  %6002 = lshr i64 %6001, 22
  %6003 = trunc i64 %6002 to i8
  %6004 = and i8 %6003, 1
  %6005 = lshr i64 %6002, 1
  %6006 = trunc i64 %6005 to i32
  %6007 = and i32 %6006, 2147483647
  %6008 = zext i32 %6007 to i64
  store i64 %6008, i64* %RCX, align 8, !tbaa !2428
  %6009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6004, i8* %6009, align 1, !tbaa !2451
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6011 = and i32 %6006, 255
  %6012 = call i32 @llvm.ctpop.i32(i32 %6011) #16
  %6013 = trunc i32 %6012 to i8
  %6014 = and i8 %6013, 1
  %6015 = xor i8 %6014, 1
  store i8 %6015, i8* %6010, align 1, !tbaa !2451
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6016, align 1, !tbaa !2451
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6018 = icmp eq i32 %6007, 0
  %6019 = zext i1 %6018 to i8
  store i8 %6019, i8* %6017, align 1, !tbaa !2451
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6020, align 1, !tbaa !2451
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6021, align 1, !tbaa !2451
  %6022 = load i64, i64* %RAX
  %6023 = load i32, i32* %ECX
  %6024 = zext i32 %6023 to i64
  %6025 = load i64, i64* %PC
  %6026 = add i64 %6025, 2
  store i64 %6026, i64* %PC
  %6027 = or i64 %6024, %6022
  %6028 = trunc i64 %6027 to i32
  %6029 = and i64 %6027, 4294967295
  store i64 %6029, i64* %RAX, align 8, !tbaa !2428
  %6030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6030, align 1, !tbaa !2432
  %6031 = and i32 %6028, 255
  %6032 = call i32 @llvm.ctpop.i32(i32 %6031) #16
  %6033 = trunc i32 %6032 to i8
  %6034 = and i8 %6033, 1
  %6035 = xor i8 %6034, 1
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6035, i8* %6036, align 1, !tbaa !2446
  %6037 = icmp eq i32 %6028, 0
  %6038 = zext i1 %6037 to i8
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6038, i8* %6039, align 1, !tbaa !2448
  %6040 = lshr i32 %6028, 31
  %6041 = trunc i32 %6040 to i8
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6041, i8* %6042, align 1, !tbaa !2449
  %6043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6043, align 1, !tbaa !2450
  %6044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6044, align 1, !tbaa !2447
  %6045 = load i64, i64* %RAX
  %6046 = load i64, i64* %RBP
  %6047 = sub i64 %6046, 44
  %6048 = load i64, i64* %PC
  %6049 = add i64 %6048, 3
  store i64 %6049, i64* %PC
  %6050 = trunc i64 %6045 to i32
  %6051 = inttoptr i64 %6047 to i32*
  %6052 = load i32, i32* %6051
  %6053 = xor i32 %6052, %6050
  %6054 = zext i32 %6053 to i64
  store i64 %6054, i64* %RAX, align 8, !tbaa !2428
  %6055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6055, align 1, !tbaa !2432
  %6056 = and i32 %6053, 255
  %6057 = call i32 @llvm.ctpop.i32(i32 %6056) #16
  %6058 = trunc i32 %6057 to i8
  %6059 = and i8 %6058, 1
  %6060 = xor i8 %6059, 1
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6060, i8* %6061, align 1, !tbaa !2446
  %6062 = icmp eq i32 %6053, 0
  %6063 = zext i1 %6062 to i8
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6063, i8* %6064, align 1, !tbaa !2448
  %6065 = lshr i32 %6053, 31
  %6066 = trunc i32 %6065 to i8
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6066, i8* %6067, align 1, !tbaa !2449
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6068, align 1, !tbaa !2450
  %6069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6069, align 1, !tbaa !2447
  %6070 = load i64, i64* %RBP
  %6071 = sub i64 %6070, 44
  %6072 = load i32, i32* %EAX
  %6073 = zext i32 %6072 to i64
  %6074 = load i64, i64* %PC
  %6075 = add i64 %6074, 3
  store i64 %6075, i64* %PC
  %6076 = inttoptr i64 %6071 to i32*
  store i32 %6072, i32* %6076
  %6077 = load i64, i64* %RBP
  %6078 = sub i64 %6077, 44
  %6079 = load i64, i64* %PC
  %6080 = add i64 %6079, 3
  store i64 %6080, i64* %PC
  %6081 = inttoptr i64 %6078 to i32*
  %6082 = load i32, i32* %6081
  %6083 = zext i32 %6082 to i64
  store i64 %6083, i64* %RAX, align 8, !tbaa !2428
  %6084 = load i64, i64* %RAX
  %6085 = load i64, i64* %RBP
  %6086 = sub i64 %6085, 48
  %6087 = load i64, i64* %PC
  %6088 = add i64 %6087, 3
  store i64 %6088, i64* %PC
  %6089 = trunc i64 %6084 to i32
  %6090 = inttoptr i64 %6086 to i32*
  %6091 = load i32, i32* %6090
  %6092 = add i32 %6091, %6089
  %6093 = zext i32 %6092 to i64
  store i64 %6093, i64* %RAX, align 8, !tbaa !2428
  %6094 = icmp ult i32 %6092, %6089
  %6095 = icmp ult i32 %6092, %6091
  %6096 = or i1 %6094, %6095
  %6097 = zext i1 %6096 to i8
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6097, i8* %6098, align 1, !tbaa !2432
  %6099 = and i32 %6092, 255
  %6100 = call i32 @llvm.ctpop.i32(i32 %6099) #16
  %6101 = trunc i32 %6100 to i8
  %6102 = and i8 %6101, 1
  %6103 = xor i8 %6102, 1
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6103, i8* %6104, align 1, !tbaa !2446
  %6105 = xor i32 %6091, %6089
  %6106 = xor i32 %6105, %6092
  %6107 = lshr i32 %6106, 4
  %6108 = trunc i32 %6107 to i8
  %6109 = and i8 %6108, 1
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6109, i8* %6110, align 1, !tbaa !2447
  %6111 = icmp eq i32 %6092, 0
  %6112 = zext i1 %6111 to i8
  %6113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6112, i8* %6113, align 1, !tbaa !2448
  %6114 = lshr i32 %6092, 31
  %6115 = trunc i32 %6114 to i8
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6115, i8* %6116, align 1, !tbaa !2449
  %6117 = lshr i32 %6089, 31
  %6118 = lshr i32 %6091, 31
  %6119 = xor i32 %6114, %6117
  %6120 = xor i32 %6114, %6118
  %6121 = add nuw nsw i32 %6119, %6120
  %6122 = icmp eq i32 %6121, 2
  %6123 = zext i1 %6122 to i8
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6123, i8* %6124, align 1, !tbaa !2450
  %6125 = load i64, i64* %RAX
  %6126 = load i64, i64* %PC
  %6127 = add i64 %6126, 3
  store i64 %6127, i64* %PC
  %6128 = and i64 %6125, 4294967295
  %6129 = shl i64 %6128, 12
  %6130 = trunc i64 %6129 to i32
  %6131 = icmp slt i32 %6130, 0
  %6132 = shl i32 %6130, 1
  %6133 = zext i32 %6132 to i64
  store i64 %6133, i64* %RAX, align 8, !tbaa !2428
  %6134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6135 = zext i1 %6131 to i8
  store i8 %6135, i8* %6134, align 1, !tbaa !2451
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6136, align 1, !tbaa !2451
  %6137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6137, align 1, !tbaa !2451
  %6138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6139 = icmp eq i32 %6132, 0
  %6140 = zext i1 %6139 to i8
  store i8 %6140, i8* %6138, align 1, !tbaa !2451
  %6141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6142 = lshr i32 %6132, 31
  %6143 = trunc i32 %6142 to i8
  store i8 %6143, i8* %6141, align 1, !tbaa !2451
  %6144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6144, align 1, !tbaa !2451
  %6145 = load i64, i64* %RBP
  %6146 = sub i64 %6145, 44
  %6147 = load i64, i64* %PC
  %6148 = add i64 %6147, 3
  store i64 %6148, i64* %PC
  %6149 = inttoptr i64 %6146 to i32*
  %6150 = load i32, i32* %6149
  %6151 = zext i32 %6150 to i64
  store i64 %6151, i64* %RCX, align 8, !tbaa !2428
  %6152 = load i64, i64* %RCX
  %6153 = load i64, i64* %RBP
  %6154 = sub i64 %6153, 48
  %6155 = load i64, i64* %PC
  %6156 = add i64 %6155, 3
  store i64 %6156, i64* %PC
  %6157 = trunc i64 %6152 to i32
  %6158 = inttoptr i64 %6154 to i32*
  %6159 = load i32, i32* %6158
  %6160 = add i32 %6159, %6157
  %6161 = zext i32 %6160 to i64
  store i64 %6161, i64* %RCX, align 8, !tbaa !2428
  %6162 = icmp ult i32 %6160, %6157
  %6163 = icmp ult i32 %6160, %6159
  %6164 = or i1 %6162, %6163
  %6165 = zext i1 %6164 to i8
  %6166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6165, i8* %6166, align 1, !tbaa !2432
  %6167 = and i32 %6160, 255
  %6168 = call i32 @llvm.ctpop.i32(i32 %6167) #16
  %6169 = trunc i32 %6168 to i8
  %6170 = and i8 %6169, 1
  %6171 = xor i8 %6170, 1
  %6172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6171, i8* %6172, align 1, !tbaa !2446
  %6173 = xor i32 %6159, %6157
  %6174 = xor i32 %6173, %6160
  %6175 = lshr i32 %6174, 4
  %6176 = trunc i32 %6175 to i8
  %6177 = and i8 %6176, 1
  %6178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6177, i8* %6178, align 1, !tbaa !2447
  %6179 = icmp eq i32 %6160, 0
  %6180 = zext i1 %6179 to i8
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6180, i8* %6181, align 1, !tbaa !2448
  %6182 = lshr i32 %6160, 31
  %6183 = trunc i32 %6182 to i8
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6183, i8* %6184, align 1, !tbaa !2449
  %6185 = lshr i32 %6157, 31
  %6186 = lshr i32 %6159, 31
  %6187 = xor i32 %6182, %6185
  %6188 = xor i32 %6182, %6186
  %6189 = add nuw nsw i32 %6187, %6188
  %6190 = icmp eq i32 %6189, 2
  %6191 = zext i1 %6190 to i8
  %6192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6191, i8* %6192, align 1, !tbaa !2450
  %6193 = load i64, i64* %RCX
  %6194 = load i64, i64* %PC
  %6195 = add i64 %6194, 3
  store i64 %6195, i64* %PC
  %6196 = and i64 %6193, 4294967295
  %6197 = lshr i64 %6196, 18
  %6198 = trunc i64 %6197 to i8
  %6199 = and i8 %6198, 1
  %6200 = lshr i64 %6197, 1
  %6201 = trunc i64 %6200 to i32
  %6202 = and i32 %6201, 2147483647
  %6203 = zext i32 %6202 to i64
  store i64 %6203, i64* %RCX, align 8, !tbaa !2428
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6199, i8* %6204, align 1, !tbaa !2451
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6206 = and i32 %6201, 255
  %6207 = call i32 @llvm.ctpop.i32(i32 %6206) #16
  %6208 = trunc i32 %6207 to i8
  %6209 = and i8 %6208, 1
  %6210 = xor i8 %6209, 1
  store i8 %6210, i8* %6205, align 1, !tbaa !2451
  %6211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6211, align 1, !tbaa !2451
  %6212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6213 = icmp eq i32 %6202, 0
  %6214 = zext i1 %6213 to i8
  store i8 %6214, i8* %6212, align 1, !tbaa !2451
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6215, align 1, !tbaa !2451
  %6216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6216, align 1, !tbaa !2451
  %6217 = load i64, i64* %RAX
  %6218 = load i32, i32* %ECX
  %6219 = zext i32 %6218 to i64
  %6220 = load i64, i64* %PC
  %6221 = add i64 %6220, 2
  store i64 %6221, i64* %PC
  %6222 = or i64 %6219, %6217
  %6223 = trunc i64 %6222 to i32
  %6224 = and i64 %6222, 4294967295
  store i64 %6224, i64* %RAX, align 8, !tbaa !2428
  %6225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6225, align 1, !tbaa !2432
  %6226 = and i32 %6223, 255
  %6227 = call i32 @llvm.ctpop.i32(i32 %6226) #16
  %6228 = trunc i32 %6227 to i8
  %6229 = and i8 %6228, 1
  %6230 = xor i8 %6229, 1
  %6231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6230, i8* %6231, align 1, !tbaa !2446
  %6232 = icmp eq i32 %6223, 0
  %6233 = zext i1 %6232 to i8
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6233, i8* %6234, align 1, !tbaa !2448
  %6235 = lshr i32 %6223, 31
  %6236 = trunc i32 %6235 to i8
  %6237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6236, i8* %6237, align 1, !tbaa !2449
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6238, align 1, !tbaa !2450
  %6239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6239, align 1, !tbaa !2447
  %6240 = load i64, i64* %RAX
  %6241 = load i64, i64* %RBP
  %6242 = sub i64 %6241, 40
  %6243 = load i64, i64* %PC
  %6244 = add i64 %6243, 3
  store i64 %6244, i64* %PC
  %6245 = trunc i64 %6240 to i32
  %6246 = inttoptr i64 %6242 to i32*
  %6247 = load i32, i32* %6246
  %6248 = xor i32 %6247, %6245
  %6249 = zext i32 %6248 to i64
  store i64 %6249, i64* %RAX, align 8, !tbaa !2428
  %6250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6250, align 1, !tbaa !2432
  %6251 = and i32 %6248, 255
  %6252 = call i32 @llvm.ctpop.i32(i32 %6251) #16
  %6253 = trunc i32 %6252 to i8
  %6254 = and i8 %6253, 1
  %6255 = xor i8 %6254, 1
  %6256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6255, i8* %6256, align 1, !tbaa !2446
  %6257 = icmp eq i32 %6248, 0
  %6258 = zext i1 %6257 to i8
  %6259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6258, i8* %6259, align 1, !tbaa !2448
  %6260 = lshr i32 %6248, 31
  %6261 = trunc i32 %6260 to i8
  %6262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6261, i8* %6262, align 1, !tbaa !2449
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6263, align 1, !tbaa !2450
  %6264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6264, align 1, !tbaa !2447
  %6265 = load i64, i64* %RBP
  %6266 = sub i64 %6265, 40
  %6267 = load i32, i32* %EAX
  %6268 = zext i32 %6267 to i64
  %6269 = load i64, i64* %PC
  %6270 = add i64 %6269, 3
  store i64 %6270, i64* %PC
  %6271 = inttoptr i64 %6266 to i32*
  store i32 %6267, i32* %6271
  %6272 = load i64, i64* %RBP
  %6273 = sub i64 %6272, 40
  %6274 = load i64, i64* %PC
  %6275 = add i64 %6274, 3
  store i64 %6275, i64* %PC
  %6276 = inttoptr i64 %6273 to i32*
  %6277 = load i32, i32* %6276
  %6278 = zext i32 %6277 to i64
  store i64 %6278, i64* %RAX, align 8, !tbaa !2428
  %6279 = load i64, i64* %RAX
  %6280 = load i64, i64* %RBP
  %6281 = sub i64 %6280, 44
  %6282 = load i64, i64* %PC
  %6283 = add i64 %6282, 3
  store i64 %6283, i64* %PC
  %6284 = trunc i64 %6279 to i32
  %6285 = inttoptr i64 %6281 to i32*
  %6286 = load i32, i32* %6285
  %6287 = add i32 %6286, %6284
  %6288 = zext i32 %6287 to i64
  store i64 %6288, i64* %RAX, align 8, !tbaa !2428
  %6289 = icmp ult i32 %6287, %6284
  %6290 = icmp ult i32 %6287, %6286
  %6291 = or i1 %6289, %6290
  %6292 = zext i1 %6291 to i8
  %6293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6292, i8* %6293, align 1, !tbaa !2432
  %6294 = and i32 %6287, 255
  %6295 = call i32 @llvm.ctpop.i32(i32 %6294) #16
  %6296 = trunc i32 %6295 to i8
  %6297 = and i8 %6296, 1
  %6298 = xor i8 %6297, 1
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6298, i8* %6299, align 1, !tbaa !2446
  %6300 = xor i32 %6286, %6284
  %6301 = xor i32 %6300, %6287
  %6302 = lshr i32 %6301, 4
  %6303 = trunc i32 %6302 to i8
  %6304 = and i8 %6303, 1
  %6305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6304, i8* %6305, align 1, !tbaa !2447
  %6306 = icmp eq i32 %6287, 0
  %6307 = zext i1 %6306 to i8
  %6308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6307, i8* %6308, align 1, !tbaa !2448
  %6309 = lshr i32 %6287, 31
  %6310 = trunc i32 %6309 to i8
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6310, i8* %6311, align 1, !tbaa !2449
  %6312 = lshr i32 %6284, 31
  %6313 = lshr i32 %6286, 31
  %6314 = xor i32 %6309, %6312
  %6315 = xor i32 %6309, %6313
  %6316 = add nuw nsw i32 %6314, %6315
  %6317 = icmp eq i32 %6316, 2
  %6318 = zext i1 %6317 to i8
  %6319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6318, i8* %6319, align 1, !tbaa !2450
  %6320 = load i64, i64* %RAX
  %6321 = load i64, i64* %PC
  %6322 = add i64 %6321, 3
  store i64 %6322, i64* %PC
  %6323 = and i64 %6320, 4294967295
  %6324 = shl i64 %6323, 17
  %6325 = trunc i64 %6324 to i32
  %6326 = icmp slt i32 %6325, 0
  %6327 = shl i32 %6325, 1
  %6328 = zext i32 %6327 to i64
  store i64 %6328, i64* %RAX, align 8, !tbaa !2428
  %6329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6330 = zext i1 %6326 to i8
  store i8 %6330, i8* %6329, align 1, !tbaa !2451
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6331, align 1, !tbaa !2451
  %6332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6332, align 1, !tbaa !2451
  %6333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6334 = icmp eq i32 %6327, 0
  %6335 = zext i1 %6334 to i8
  store i8 %6335, i8* %6333, align 1, !tbaa !2451
  %6336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6337 = lshr i32 %6327, 31
  %6338 = trunc i32 %6337 to i8
  store i8 %6338, i8* %6336, align 1, !tbaa !2451
  %6339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6339, align 1, !tbaa !2451
  %6340 = load i64, i64* %RBP
  %6341 = sub i64 %6340, 40
  %6342 = load i64, i64* %PC
  %6343 = add i64 %6342, 3
  store i64 %6343, i64* %PC
  %6344 = inttoptr i64 %6341 to i32*
  %6345 = load i32, i32* %6344
  %6346 = zext i32 %6345 to i64
  store i64 %6346, i64* %RCX, align 8, !tbaa !2428
  %6347 = load i64, i64* %RCX
  %6348 = load i64, i64* %RBP
  %6349 = sub i64 %6348, 44
  %6350 = load i64, i64* %PC
  %6351 = add i64 %6350, 3
  store i64 %6351, i64* %PC
  %6352 = trunc i64 %6347 to i32
  %6353 = inttoptr i64 %6349 to i32*
  %6354 = load i32, i32* %6353
  %6355 = add i32 %6354, %6352
  %6356 = zext i32 %6355 to i64
  store i64 %6356, i64* %RCX, align 8, !tbaa !2428
  %6357 = icmp ult i32 %6355, %6352
  %6358 = icmp ult i32 %6355, %6354
  %6359 = or i1 %6357, %6358
  %6360 = zext i1 %6359 to i8
  %6361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6360, i8* %6361, align 1, !tbaa !2432
  %6362 = and i32 %6355, 255
  %6363 = call i32 @llvm.ctpop.i32(i32 %6362) #16
  %6364 = trunc i32 %6363 to i8
  %6365 = and i8 %6364, 1
  %6366 = xor i8 %6365, 1
  %6367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6366, i8* %6367, align 1, !tbaa !2446
  %6368 = xor i32 %6354, %6352
  %6369 = xor i32 %6368, %6355
  %6370 = lshr i32 %6369, 4
  %6371 = trunc i32 %6370 to i8
  %6372 = and i8 %6371, 1
  %6373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6372, i8* %6373, align 1, !tbaa !2447
  %6374 = icmp eq i32 %6355, 0
  %6375 = zext i1 %6374 to i8
  %6376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6375, i8* %6376, align 1, !tbaa !2448
  %6377 = lshr i32 %6355, 31
  %6378 = trunc i32 %6377 to i8
  %6379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6378, i8* %6379, align 1, !tbaa !2449
  %6380 = lshr i32 %6352, 31
  %6381 = lshr i32 %6354, 31
  %6382 = xor i32 %6377, %6380
  %6383 = xor i32 %6377, %6381
  %6384 = add nuw nsw i32 %6382, %6383
  %6385 = icmp eq i32 %6384, 2
  %6386 = zext i1 %6385 to i8
  %6387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6386, i8* %6387, align 1, !tbaa !2450
  %6388 = load i64, i64* %RCX
  %6389 = load i64, i64* %PC
  %6390 = add i64 %6389, 3
  store i64 %6390, i64* %PC
  %6391 = and i64 %6388, 4294967295
  %6392 = lshr i64 %6391, 13
  %6393 = trunc i64 %6392 to i8
  %6394 = and i8 %6393, 1
  %6395 = lshr i64 %6392, 1
  %6396 = trunc i64 %6395 to i32
  %6397 = and i32 %6396, 2147483647
  %6398 = zext i32 %6397 to i64
  store i64 %6398, i64* %RCX, align 8, !tbaa !2428
  %6399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6394, i8* %6399, align 1, !tbaa !2451
  %6400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6401 = and i32 %6396, 255
  %6402 = call i32 @llvm.ctpop.i32(i32 %6401) #16
  %6403 = trunc i32 %6402 to i8
  %6404 = and i8 %6403, 1
  %6405 = xor i8 %6404, 1
  store i8 %6405, i8* %6400, align 1, !tbaa !2451
  %6406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6406, align 1, !tbaa !2451
  %6407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6408 = icmp eq i32 %6397, 0
  %6409 = zext i1 %6408 to i8
  store i8 %6409, i8* %6407, align 1, !tbaa !2451
  %6410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6410, align 1, !tbaa !2451
  %6411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6411, align 1, !tbaa !2451
  %6412 = load i64, i64* %RAX
  %6413 = load i32, i32* %ECX
  %6414 = zext i32 %6413 to i64
  %6415 = load i64, i64* %PC
  %6416 = add i64 %6415, 2
  store i64 %6416, i64* %PC
  %6417 = or i64 %6414, %6412
  %6418 = trunc i64 %6417 to i32
  %6419 = and i64 %6417, 4294967295
  store i64 %6419, i64* %RAX, align 8, !tbaa !2428
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6420, align 1, !tbaa !2432
  %6421 = and i32 %6418, 255
  %6422 = call i32 @llvm.ctpop.i32(i32 %6421) #16
  %6423 = trunc i32 %6422 to i8
  %6424 = and i8 %6423, 1
  %6425 = xor i8 %6424, 1
  %6426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6425, i8* %6426, align 1, !tbaa !2446
  %6427 = icmp eq i32 %6418, 0
  %6428 = zext i1 %6427 to i8
  %6429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6428, i8* %6429, align 1, !tbaa !2448
  %6430 = lshr i32 %6418, 31
  %6431 = trunc i32 %6430 to i8
  %6432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6431, i8* %6432, align 1, !tbaa !2449
  %6433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6433, align 1, !tbaa !2450
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6434, align 1, !tbaa !2447
  %6435 = load i64, i64* %RAX
  %6436 = load i64, i64* %RBP
  %6437 = sub i64 %6436, 36
  %6438 = load i64, i64* %PC
  %6439 = add i64 %6438, 3
  store i64 %6439, i64* %PC
  %6440 = trunc i64 %6435 to i32
  %6441 = inttoptr i64 %6437 to i32*
  %6442 = load i32, i32* %6441
  %6443 = xor i32 %6442, %6440
  %6444 = zext i32 %6443 to i64
  store i64 %6444, i64* %RAX, align 8, !tbaa !2428
  %6445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6445, align 1, !tbaa !2432
  %6446 = and i32 %6443, 255
  %6447 = call i32 @llvm.ctpop.i32(i32 %6446) #16
  %6448 = trunc i32 %6447 to i8
  %6449 = and i8 %6448, 1
  %6450 = xor i8 %6449, 1
  %6451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6450, i8* %6451, align 1, !tbaa !2446
  %6452 = icmp eq i32 %6443, 0
  %6453 = zext i1 %6452 to i8
  %6454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6453, i8* %6454, align 1, !tbaa !2448
  %6455 = lshr i32 %6443, 31
  %6456 = trunc i32 %6455 to i8
  %6457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6456, i8* %6457, align 1, !tbaa !2449
  %6458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6458, align 1, !tbaa !2450
  %6459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6459, align 1, !tbaa !2447
  %6460 = load i64, i64* %RBP
  %6461 = sub i64 %6460, 36
  %6462 = load i32, i32* %EAX
  %6463 = zext i32 %6462 to i64
  %6464 = load i64, i64* %PC
  %6465 = add i64 %6464, 3
  store i64 %6465, i64* %PC
  %6466 = inttoptr i64 %6461 to i32*
  store i32 %6462, i32* %6466
  %6467 = load i64, i64* %RBP
  %6468 = sub i64 %6467, 20
  %6469 = load i64, i64* %PC
  %6470 = add i64 %6469, 3
  store i64 %6470, i64* %PC
  %6471 = inttoptr i64 %6468 to i32*
  %6472 = load i32, i32* %6471
  %6473 = zext i32 %6472 to i64
  store i64 %6473, i64* %RAX, align 8, !tbaa !2428
  %6474 = load i64, i64* %RAX
  %6475 = load i64, i64* %PC
  %6476 = add i64 %6475, 3
  store i64 %6476, i64* %PC
  %6477 = trunc i64 %6474 to i32
  %6478 = sub i32 %6477, 2
  %6479 = zext i32 %6478 to i64
  store i64 %6479, i64* %RAX, align 8, !tbaa !2428
  %6480 = icmp ult i32 %6477, 2
  %6481 = zext i1 %6480 to i8
  %6482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6481, i8* %6482, align 1, !tbaa !2432
  %6483 = and i32 %6478, 255
  %6484 = call i32 @llvm.ctpop.i32(i32 %6483) #16
  %6485 = trunc i32 %6484 to i8
  %6486 = and i8 %6485, 1
  %6487 = xor i8 %6486, 1
  %6488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6487, i8* %6488, align 1, !tbaa !2446
  %6489 = xor i64 2, %6474
  %6490 = trunc i64 %6489 to i32
  %6491 = xor i32 %6490, %6478
  %6492 = lshr i32 %6491, 4
  %6493 = trunc i32 %6492 to i8
  %6494 = and i8 %6493, 1
  %6495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6494, i8* %6495, align 1, !tbaa !2447
  %6496 = icmp eq i32 %6478, 0
  %6497 = zext i1 %6496 to i8
  %6498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6497, i8* %6498, align 1, !tbaa !2448
  %6499 = lshr i32 %6478, 31
  %6500 = trunc i32 %6499 to i8
  %6501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6500, i8* %6501, align 1, !tbaa !2449
  %6502 = lshr i32 %6477, 31
  %6503 = xor i32 %6499, %6502
  %6504 = add nuw nsw i32 %6503, %6502
  %6505 = icmp eq i32 %6504, 2
  %6506 = zext i1 %6505 to i8
  %6507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6506, i8* %6507, align 1, !tbaa !2450
  %6508 = load i64, i64* %RBP
  %6509 = sub i64 %6508, 20
  %6510 = load i32, i32* %EAX
  %6511 = zext i32 %6510 to i64
  %6512 = load i64, i64* %PC
  %6513 = add i64 %6512, 3
  store i64 %6513, i64* %PC
  %6514 = inttoptr i64 %6509 to i32*
  store i32 %6510, i32* %6514
  %6515 = load i64, i64* %PC
  %6516 = sub i64 %6515, 851
  %6517 = load i64, i64* %PC
  %6518 = add i64 %6517, 5
  store i64 %6518, i64* %PC
  %6519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6516, i64* %6519, align 8, !tbaa !2428
  br label %block_400567

block_4008d0:                                     ; preds = %block_4008c6
  %6520 = load i64, i64* %RBP
  %6521 = sub i64 %6520, 20
  %6522 = load i64, i64* %PC
  %6523 = add i64 %6522, 3
  store i64 %6523, i64* %PC
  %6524 = inttoptr i64 %6521 to i32*
  %6525 = load i32, i32* %6524
  %6526 = zext i32 %6525 to i64
  store i64 %6526, i64* %RAX, align 8, !tbaa !2428
  %6527 = load i32, i32* %EAX
  %6528 = zext i32 %6527 to i64
  %6529 = load i64, i64* %PC
  %6530 = add i64 %6529, 2
  store i64 %6530, i64* %PC
  %6531 = and i64 %6528, 4294967295
  store i64 %6531, i64* %RCX, align 8, !tbaa !2428
  %6532 = load i64, i64* %RBP
  %6533 = load i64, i64* %RCX
  %6534 = mul i64 %6533, 4
  %6535 = add i64 %6532, -96
  %6536 = add i64 %6535, %6534
  %6537 = load i64, i64* %PC
  %6538 = add i64 %6537, 4
  store i64 %6538, i64* %PC
  %6539 = inttoptr i64 %6536 to i32*
  %6540 = load i32, i32* %6539
  %6541 = zext i32 %6540 to i64
  store i64 %6541, i64* %RAX, align 8, !tbaa !2428
  %6542 = load i64, i64* %RBP
  %6543 = sub i64 %6542, 16
  %6544 = load i64, i64* %PC
  %6545 = add i64 %6544, 4
  store i64 %6545, i64* %PC
  %6546 = inttoptr i64 %6543 to i64*
  %6547 = load i64, i64* %6546
  store i64 %6547, i64* %RCX, align 8, !tbaa !2428
  %6548 = load i64, i64* %RBP
  %6549 = sub i64 %6548, 20
  %6550 = load i64, i64* %PC
  %6551 = add i64 %6550, 3
  store i64 %6551, i64* %PC
  %6552 = inttoptr i64 %6549 to i32*
  %6553 = load i32, i32* %6552
  %6554 = zext i32 %6553 to i64
  store i64 %6554, i64* %RDX, align 8, !tbaa !2428
  %6555 = load i32, i32* %EDX
  %6556 = zext i32 %6555 to i64
  %6557 = load i64, i64* %PC
  %6558 = add i64 %6557, 2
  store i64 %6558, i64* %PC
  %6559 = and i64 %6556, 4294967295
  store i64 %6559, i64* %RSI, align 8, !tbaa !2428
  %6560 = load i64, i64* %RAX
  %6561 = load i64, i64* %RCX
  %6562 = load i64, i64* %RSI
  %6563 = mul i64 %6562, 4
  %6564 = add i64 %6563, %6561
  %6565 = load i64, i64* %PC
  %6566 = add i64 %6565, 3
  store i64 %6566, i64* %PC
  %6567 = trunc i64 %6560 to i32
  %6568 = inttoptr i64 %6564 to i32*
  %6569 = load i32, i32* %6568
  %6570 = add i32 %6569, %6567
  %6571 = zext i32 %6570 to i64
  store i64 %6571, i64* %RAX, align 8, !tbaa !2428
  %6572 = icmp ult i32 %6570, %6567
  %6573 = icmp ult i32 %6570, %6569
  %6574 = or i1 %6572, %6573
  %6575 = zext i1 %6574 to i8
  %6576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6575, i8* %6576, align 1, !tbaa !2432
  %6577 = and i32 %6570, 255
  %6578 = call i32 @llvm.ctpop.i32(i32 %6577) #16
  %6579 = trunc i32 %6578 to i8
  %6580 = and i8 %6579, 1
  %6581 = xor i8 %6580, 1
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6581, i8* %6582, align 1, !tbaa !2446
  %6583 = xor i32 %6569, %6567
  %6584 = xor i32 %6583, %6570
  %6585 = lshr i32 %6584, 4
  %6586 = trunc i32 %6585 to i8
  %6587 = and i8 %6586, 1
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6587, i8* %6588, align 1, !tbaa !2447
  %6589 = icmp eq i32 %6570, 0
  %6590 = zext i1 %6589 to i8
  %6591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6590, i8* %6591, align 1, !tbaa !2448
  %6592 = lshr i32 %6570, 31
  %6593 = trunc i32 %6592 to i8
  %6594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6593, i8* %6594, align 1, !tbaa !2449
  %6595 = lshr i32 %6567, 31
  %6596 = lshr i32 %6569, 31
  %6597 = xor i32 %6592, %6595
  %6598 = xor i32 %6592, %6596
  %6599 = add nuw nsw i32 %6597, %6598
  %6600 = icmp eq i32 %6599, 2
  %6601 = zext i1 %6600 to i8
  %6602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6601, i8* %6602, align 1, !tbaa !2450
  %6603 = load i64, i64* %RBP
  %6604 = sub i64 %6603, 8
  %6605 = load i64, i64* %PC
  %6606 = add i64 %6605, 4
  store i64 %6606, i64* %PC
  %6607 = inttoptr i64 %6604 to i64*
  %6608 = load i64, i64* %6607
  store i64 %6608, i64* %RCX, align 8, !tbaa !2428
  %6609 = load i64, i64* %RBP
  %6610 = sub i64 %6609, 20
  %6611 = load i64, i64* %PC
  %6612 = add i64 %6611, 3
  store i64 %6612, i64* %PC
  %6613 = inttoptr i64 %6610 to i32*
  %6614 = load i32, i32* %6613
  %6615 = zext i32 %6614 to i64
  store i64 %6615, i64* %RDX, align 8, !tbaa !2428
  %6616 = load i32, i32* %EDX
  %6617 = zext i32 %6616 to i64
  %6618 = load i64, i64* %PC
  %6619 = add i64 %6618, 2
  store i64 %6619, i64* %PC
  %6620 = and i64 %6617, 4294967295
  store i64 %6620, i64* %RSI, align 8, !tbaa !2428
  %6621 = load i64, i64* %RCX
  %6622 = load i64, i64* %RSI
  %6623 = mul i64 %6622, 4
  %6624 = add i64 %6623, %6621
  %6625 = load i32, i32* %EAX
  %6626 = zext i32 %6625 to i64
  %6627 = load i64, i64* %PC
  %6628 = add i64 %6627, 3
  store i64 %6628, i64* %PC
  %6629 = inttoptr i64 %6624 to i32*
  store i32 %6625, i32* %6629
  %6630 = load i64, i64* %RBP
  %6631 = sub i64 %6630, 20
  %6632 = load i64, i64* %PC
  %6633 = add i64 %6632, 3
  store i64 %6633, i64* %PC
  %6634 = inttoptr i64 %6631 to i32*
  %6635 = load i32, i32* %6634
  %6636 = zext i32 %6635 to i64
  store i64 %6636, i64* %RAX, align 8, !tbaa !2428
  %6637 = load i64, i64* %RAX
  %6638 = load i64, i64* %PC
  %6639 = add i64 %6638, 3
  store i64 %6639, i64* %PC
  %6640 = trunc i64 %6637 to i32
  %6641 = add i32 1, %6640
  %6642 = zext i32 %6641 to i64
  store i64 %6642, i64* %RAX, align 8, !tbaa !2428
  %6643 = icmp ult i32 %6641, %6640
  %6644 = icmp ult i32 %6641, 1
  %6645 = or i1 %6643, %6644
  %6646 = zext i1 %6645 to i8
  %6647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6646, i8* %6647, align 1, !tbaa !2432
  %6648 = and i32 %6641, 255
  %6649 = call i32 @llvm.ctpop.i32(i32 %6648) #16
  %6650 = trunc i32 %6649 to i8
  %6651 = and i8 %6650, 1
  %6652 = xor i8 %6651, 1
  %6653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6652, i8* %6653, align 1, !tbaa !2446
  %6654 = xor i64 1, %6637
  %6655 = trunc i64 %6654 to i32
  %6656 = xor i32 %6655, %6641
  %6657 = lshr i32 %6656, 4
  %6658 = trunc i32 %6657 to i8
  %6659 = and i8 %6658, 1
  %6660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6659, i8* %6660, align 1, !tbaa !2447
  %6661 = icmp eq i32 %6641, 0
  %6662 = zext i1 %6661 to i8
  %6663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6662, i8* %6663, align 1, !tbaa !2448
  %6664 = lshr i32 %6641, 31
  %6665 = trunc i32 %6664 to i8
  %6666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6665, i8* %6666, align 1, !tbaa !2449
  %6667 = lshr i32 %6640, 31
  %6668 = xor i32 %6664, %6667
  %6669 = add nuw nsw i32 %6668, %6664
  %6670 = icmp eq i32 %6669, 2
  %6671 = zext i1 %6670 to i8
  %6672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6671, i8* %6672, align 1, !tbaa !2450
  %6673 = load i64, i64* %RBP
  %6674 = sub i64 %6673, 20
  %6675 = load i32, i32* %EAX
  %6676 = zext i32 %6675 to i64
  %6677 = load i64, i64* %PC
  %6678 = add i64 %6677, 3
  store i64 %6678, i64* %PC
  %6679 = inttoptr i64 %6674 to i32*
  store i32 %6675, i32* %6679
  %6680 = load i64, i64* %PC
  %6681 = sub i64 %6680, 52
  %6682 = load i64, i64* %PC
  %6683 = add i64 %6682, 5
  store i64 %6683, i64* %PC
  %6684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6681, i64* %6684, align 8, !tbaa !2428
  br label %block_4008c6

block_400533:                                     ; preds = %block_40053d, %block_400520
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400520 ], [ %MEMORY.0, %block_40053d ]
  %6685 = load i64, i64* %RBP
  %6686 = sub i64 %6685, 20
  %6687 = load i64, i64* %PC
  %6688 = add i64 %6687, 4
  store i64 %6688, i64* %PC
  %6689 = inttoptr i64 %6686 to i32*
  %6690 = load i32, i32* %6689
  %6691 = sub i32 %6690, 16
  %6692 = icmp ult i32 %6690, 16
  %6693 = zext i1 %6692 to i8
  %6694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6693, i8* %6694, align 1, !tbaa !2432
  %6695 = and i32 %6691, 255
  %6696 = call i32 @llvm.ctpop.i32(i32 %6695) #16
  %6697 = trunc i32 %6696 to i8
  %6698 = and i8 %6697, 1
  %6699 = xor i8 %6698, 1
  %6700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6699, i8* %6700, align 1, !tbaa !2446
  %6701 = xor i32 %6690, 16
  %6702 = xor i32 %6701, %6691
  %6703 = lshr i32 %6702, 4
  %6704 = trunc i32 %6703 to i8
  %6705 = and i8 %6704, 1
  %6706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6705, i8* %6706, align 1, !tbaa !2447
  %6707 = icmp eq i32 %6691, 0
  %6708 = zext i1 %6707 to i8
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6708, i8* %6709, align 1, !tbaa !2448
  %6710 = lshr i32 %6691, 31
  %6711 = trunc i32 %6710 to i8
  %6712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6711, i8* %6712, align 1, !tbaa !2449
  %6713 = lshr i32 %6690, 31
  %6714 = xor i32 %6710, %6713
  %6715 = add nuw nsw i32 %6714, %6713
  %6716 = icmp eq i32 %6715, 2
  %6717 = zext i1 %6716 to i8
  %6718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6717, i8* %6718, align 1, !tbaa !2450
  %6719 = load i64, i64* %PC
  %6720 = add i64 %6719, 41
  %6721 = load i64, i64* %PC
  %6722 = add i64 %6721, 6
  %6723 = load i64, i64* %PC
  %6724 = add i64 %6723, 6
  store i64 %6724, i64* %PC
  %6725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6726 = load i8, i8* %6725, align 1, !tbaa !2432
  %6727 = icmp eq i8 %6726, 0
  %6728 = zext i1 %6727 to i8
  store i8 %6728, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %6729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6730 = select i1 %6727, i64 %6720, i64 %6722
  store i64 %6730, i64* %6729, align 8, !tbaa !2428
  %6731 = load i8, i8* %BRANCH_TAKEN
  %6732 = icmp eq i8 %6731, 1
  %6733 = load i64, i64* %RBP
  br i1 %6732, label %block_400560, label %block_40053d

block_400567:                                     ; preds = %block_400560, %block_400571
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400560 ], [ %MEMORY.1, %block_400571 ]
  %6734 = load i64, i64* %RBP
  %6735 = sub i64 %6734, 20
  %6736 = load i64, i64* %PC
  %6737 = add i64 %6736, 4
  store i64 %6737, i64* %PC
  %6738 = inttoptr i64 %6735 to i32*
  %6739 = load i32, i32* %6738
  %6740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6740, align 1, !tbaa !2432
  %6741 = and i32 %6739, 255
  %6742 = call i32 @llvm.ctpop.i32(i32 %6741) #16
  %6743 = trunc i32 %6742 to i8
  %6744 = and i8 %6743, 1
  %6745 = xor i8 %6744, 1
  %6746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6745, i8* %6746, align 1, !tbaa !2446
  %6747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6747, align 1, !tbaa !2447
  %6748 = icmp eq i32 %6739, 0
  %6749 = zext i1 %6748 to i8
  %6750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6749, i8* %6750, align 1, !tbaa !2448
  %6751 = lshr i32 %6739, 31
  %6752 = trunc i32 %6751 to i8
  %6753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6752, i8* %6753, align 1, !tbaa !2449
  %6754 = lshr i32 %6739, 31
  %6755 = xor i32 %6751, %6754
  %6756 = add nuw nsw i32 %6755, %6754
  %6757 = icmp eq i32 %6756, 2
  %6758 = zext i1 %6757 to i8
  %6759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6758, i8* %6759, align 1, !tbaa !2450
  %6760 = load i64, i64* %PC
  %6761 = add i64 %6760, 852
  %6762 = load i64, i64* %PC
  %6763 = add i64 %6762, 6
  %6764 = load i64, i64* %PC
  %6765 = add i64 %6764, 6
  store i64 %6765, i64* %PC
  %6766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6767 = load i8, i8* %6766, align 1, !tbaa !2432
  %6768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6769 = load i8, i8* %6768, align 1, !tbaa !2448
  %6770 = or i8 %6769, %6767
  %6771 = icmp ne i8 %6770, 0
  %6772 = zext i1 %6771 to i8
  store i8 %6772, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %6773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6774 = select i1 %6771, i64 %6761, i64 %6763
  store i64 %6774, i64* %6773, align 8, !tbaa !2428
  %6775 = load i8, i8* %BRANCH_TAKEN
  %6776 = icmp eq i8 %6775, 1
  %6777 = load i64, i64* %RBP
  br i1 %6776, label %block_4008bf, label %block_400571

block_4008c6:                                     ; preds = %block_4008d0, %block_4008bf
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_4008bf ], [ %MEMORY.2, %block_4008d0 ]
  %6778 = load i64, i64* %RBP
  %6779 = sub i64 %6778, 20
  %6780 = load i64, i64* %PC
  %6781 = add i64 %6780, 4
  store i64 %6781, i64* %PC
  %6782 = inttoptr i64 %6779 to i32*
  %6783 = load i32, i32* %6782
  %6784 = sub i32 %6783, 16
  %6785 = icmp ult i32 %6783, 16
  %6786 = zext i1 %6785 to i8
  %6787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6786, i8* %6787, align 1, !tbaa !2432
  %6788 = and i32 %6784, 255
  %6789 = call i32 @llvm.ctpop.i32(i32 %6788) #16
  %6790 = trunc i32 %6789 to i8
  %6791 = and i8 %6790, 1
  %6792 = xor i8 %6791, 1
  %6793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6792, i8* %6793, align 1, !tbaa !2446
  %6794 = xor i32 %6783, 16
  %6795 = xor i32 %6794, %6784
  %6796 = lshr i32 %6795, 4
  %6797 = trunc i32 %6796 to i8
  %6798 = and i8 %6797, 1
  %6799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6798, i8* %6799, align 1, !tbaa !2447
  %6800 = icmp eq i32 %6784, 0
  %6801 = zext i1 %6800 to i8
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6801, i8* %6802, align 1, !tbaa !2448
  %6803 = lshr i32 %6784, 31
  %6804 = trunc i32 %6803 to i8
  %6805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6804, i8* %6805, align 1, !tbaa !2449
  %6806 = lshr i32 %6783, 31
  %6807 = xor i32 %6803, %6806
  %6808 = add nuw nsw i32 %6807, %6806
  %6809 = icmp eq i32 %6808, 2
  %6810 = zext i1 %6809 to i8
  %6811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6810, i8* %6811, align 1, !tbaa !2450
  %6812 = load i64, i64* %PC
  %6813 = add i64 %6812, 53
  %6814 = load i64, i64* %PC
  %6815 = add i64 %6814, 6
  %6816 = load i64, i64* %PC
  %6817 = add i64 %6816, 6
  store i64 %6817, i64* %PC
  %6818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6819 = load i8, i8* %6818, align 1, !tbaa !2432
  %6820 = icmp eq i8 %6819, 0
  %6821 = zext i1 %6820 to i8
  store i8 %6821, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %6822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6823 = select i1 %6820, i64 %6813, i64 %6815
  store i64 %6823, i64* %6822, align 8, !tbaa !2428
  %6824 = load i8, i8* %BRANCH_TAKEN
  %6825 = icmp eq i8 %6824, 1
  br i1 %6825, label %block_4008ff, label %block_4008d0

block_400560:                                     ; preds = %block_400533
  %6826 = sub i64 %6733, 20
  %6827 = load i64, i64* %PC
  %6828 = add i64 %6827, 7
  store i64 %6828, i64* %PC
  %6829 = inttoptr i64 %6826 to i32*
  store i32 20, i32* %6829
  br label %block_400567
}

; Function Attrs: noinline
define %struct.Memory* @sub_400980_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400980:
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
  br label %block_4009a4

block_4009ae:                                     ; preds = %block_4009a4
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
  br label %block_4009a4

block_400a07:                                     ; preds = %block_4009e5
  %325 = sub i64 %640, 247
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
  %336 = call %struct.Memory* @sub_400910_salsa_renamed_(%struct.State* %0, i64 %335, %struct.Memory* %MEMORY.0)
  %337 = load i64, i64* %PC
  %338 = add i64 %337, 10
  store i64 %338, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400ae0__rodata_type* @seg_400ae0__rodata to i64), i64 4), i64* %RDI, align 8, !tbaa !2428
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
  %422 = call %struct.Memory* @ext_6010d0_printf(%struct.State* %0, i64 %421, %struct.Memory* %336)
  %423 = load i64, i64* %PC
  %424 = add i64 %423, 10
  store i64 %424, i64* %PC
  store i64 add (i64 ptrtoint (%seg_400ae0__rodata_type* @seg_400ae0__rodata to i64), i64 19), i64* %RDI, align 8, !tbaa !2428
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
  %448 = call %struct.Memory* @ext_6010d0_printf(%struct.State* %0, i64 %447, %struct.Memory* %422)
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

block_4009de:                                     ; preds = %block_4009a4
  %576 = load i64, i64* %RBP
  %577 = sub i64 %576, 12
  %578 = load i64, i64* %PC
  %579 = add i64 %578, 7
  store i64 %579, i64* %PC
  %580 = inttoptr i64 %577 to i32*
  store i32 0, i32* %580
  br label %block_4009e5

block_4009e5:                                     ; preds = %block_4009f1, %block_4009de
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_4009de ], [ %652, %block_4009f1 ]
  %581 = load i64, i64* %RBP
  %582 = sub i64 %581, 12
  %583 = load i64, i64* %PC
  %584 = add i64 %583, 3
  store i64 %584, i64* %PC
  %585 = inttoptr i64 %582 to i32*
  %586 = load i32, i32* %585
  %587 = zext i32 %586 to i64
  store i64 %587, i64* %RAX, align 8, !tbaa !2428
  %588 = load i32, i32* %EAX
  %589 = zext i32 %588 to i64
  %590 = load i64, i64* %RBP
  %591 = sub i64 %590, 16
  %592 = load i64, i64* %PC
  %593 = add i64 %592, 3
  store i64 %593, i64* %PC
  %594 = inttoptr i64 %591 to i32*
  %595 = load i32, i32* %594
  %596 = sub i32 %588, %595
  %597 = icmp ult i32 %588, %595
  %598 = zext i1 %597 to i8
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %598, i8* %599, align 1, !tbaa !2432
  %600 = and i32 %596, 255
  %601 = call i32 @llvm.ctpop.i32(i32 %600) #16
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  %604 = xor i8 %603, 1
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %604, i8* %605, align 1, !tbaa !2446
  %606 = xor i32 %595, %588
  %607 = xor i32 %606, %596
  %608 = lshr i32 %607, 4
  %609 = trunc i32 %608 to i8
  %610 = and i8 %609, 1
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %610, i8* %611, align 1, !tbaa !2447
  %612 = icmp eq i32 %596, 0
  %613 = zext i1 %612 to i8
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %613, i8* %614, align 1, !tbaa !2448
  %615 = lshr i32 %596, 31
  %616 = trunc i32 %615 to i8
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %616, i8* %617, align 1, !tbaa !2449
  %618 = lshr i32 %588, 31
  %619 = lshr i32 %595, 31
  %620 = xor i32 %619, %618
  %621 = xor i32 %615, %618
  %622 = add nuw nsw i32 %621, %620
  %623 = icmp eq i32 %622, 2
  %624 = zext i1 %623 to i8
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %624, i8* %625, align 1, !tbaa !2450
  %626 = load i64, i64* %PC
  %627 = add i64 %626, 28
  %628 = load i64, i64* %PC
  %629 = add i64 %628, 6
  %630 = load i64, i64* %PC
  %631 = add i64 %630, 6
  store i64 %631, i64* %PC
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %633 = load i8, i8* %632, align 1, !tbaa !2432
  %634 = icmp eq i8 %633, 0
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %637 = select i1 %634, i64 %627, i64 %629
  store i64 %637, i64* %636, align 8, !tbaa !2428
  %638 = load i8, i8* %BRANCH_TAKEN
  %639 = icmp eq i8 %638, 1
  %640 = load i64, i64* %PC
  br i1 %639, label %block_400a07, label %block_4009f1

block_4009f1:                                     ; preds = %block_4009e5
  %641 = sub i64 %640, 225
  %642 = load i64, i64* %PC
  %643 = add i64 %642, 5
  %644 = load i64, i64* %PC
  %645 = add i64 %644, 5
  store i64 %645, i64* %PC
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %647 = load i64, i64* %646, align 8, !tbaa !2428
  %648 = add i64 %647, -8
  %649 = inttoptr i64 %648 to i64*
  store i64 %643, i64* %649
  store i64 %648, i64* %646, align 8, !tbaa !2428
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %641, i64* %650, align 8, !tbaa !2428
  %651 = load i64, i64* %PC
  %652 = call %struct.Memory* @sub_400910_salsa_renamed_(%struct.State* %0, i64 %651, %struct.Memory* %MEMORY.0)
  %653 = load i64, i64* %RBP
  %654 = sub i64 %653, 24
  %655 = load i32, i32* %EAX
  %656 = zext i32 %655 to i64
  %657 = load i64, i64* %PC
  %658 = add i64 %657, 3
  store i64 %658, i64* %PC
  %659 = inttoptr i64 %654 to i32*
  store i32 %655, i32* %659
  %660 = load i64, i64* %RBP
  %661 = sub i64 %660, 12
  %662 = load i64, i64* %PC
  %663 = add i64 %662, 3
  store i64 %663, i64* %PC
  %664 = inttoptr i64 %661 to i32*
  %665 = load i32, i32* %664
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RAX, align 8, !tbaa !2428
  %667 = load i64, i64* %RAX
  %668 = load i64, i64* %PC
  %669 = add i64 %668, 3
  store i64 %669, i64* %PC
  %670 = trunc i64 %667 to i32
  %671 = add i32 1, %670
  %672 = zext i32 %671 to i64
  store i64 %672, i64* %RAX, align 8, !tbaa !2428
  %673 = icmp ult i32 %671, %670
  %674 = icmp ult i32 %671, 1
  %675 = or i1 %673, %674
  %676 = zext i1 %675 to i8
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %676, i8* %677, align 1, !tbaa !2432
  %678 = and i32 %671, 255
  %679 = call i32 @llvm.ctpop.i32(i32 %678) #16
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = xor i8 %681, 1
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %682, i8* %683, align 1, !tbaa !2446
  %684 = xor i64 1, %667
  %685 = trunc i64 %684 to i32
  %686 = xor i32 %685, %671
  %687 = lshr i32 %686, 4
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %689, i8* %690, align 1, !tbaa !2447
  %691 = icmp eq i32 %671, 0
  %692 = zext i1 %691 to i8
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %692, i8* %693, align 1, !tbaa !2448
  %694 = lshr i32 %671, 31
  %695 = trunc i32 %694 to i8
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %695, i8* %696, align 1, !tbaa !2449
  %697 = lshr i32 %670, 31
  %698 = xor i32 %694, %697
  %699 = add nuw nsw i32 %698, %694
  %700 = icmp eq i32 %699, 2
  %701 = zext i1 %700 to i8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %701, i8* %702, align 1, !tbaa !2450
  %703 = load i64, i64* %RBP
  %704 = sub i64 %703, 12
  %705 = load i32, i32* %EAX
  %706 = zext i32 %705 to i64
  %707 = load i64, i64* %PC
  %708 = add i64 %707, 3
  store i64 %708, i64* %PC
  %709 = inttoptr i64 %704 to i32*
  store i32 %705, i32* %709
  %710 = load i64, i64* %PC
  %711 = sub i64 %710, 29
  %712 = load i64, i64* %PC
  %713 = add i64 %712, 5
  store i64 %713, i64* %PC
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %711, i64* %714, align 8, !tbaa !2428
  br label %block_4009e5

block_4009a4:                                     ; preds = %block_4009ae, %block_400980
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400980 ], [ %MEMORY.1, %block_4009ae ]
  %715 = load i64, i64* %RBP
  %716 = sub i64 %715, 12
  %717 = load i64, i64* %PC
  %718 = add i64 %717, 4
  store i64 %718, i64* %PC
  %719 = inttoptr i64 %716 to i32*
  %720 = load i32, i32* %719
  %721 = sub i32 %720, 16
  %722 = icmp ult i32 %720, 16
  %723 = zext i1 %722 to i8
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %723, i8* %724, align 1, !tbaa !2432
  %725 = and i32 %721, 255
  %726 = call i32 @llvm.ctpop.i32(i32 %725) #16
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  %729 = xor i8 %728, 1
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %729, i8* %730, align 1, !tbaa !2446
  %731 = xor i32 %720, 16
  %732 = xor i32 %731, %721
  %733 = lshr i32 %732, 4
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %735, i8* %736, align 1, !tbaa !2447
  %737 = icmp eq i32 %721, 0
  %738 = zext i1 %737 to i8
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %738, i8* %739, align 1, !tbaa !2448
  %740 = lshr i32 %721, 31
  %741 = trunc i32 %740 to i8
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %741, i8* %742, align 1, !tbaa !2449
  %743 = lshr i32 %720, 31
  %744 = xor i32 %740, %743
  %745 = add nuw nsw i32 %744, %743
  %746 = icmp eq i32 %745, 2
  %747 = zext i1 %746 to i8
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %747, i8* %748, align 1, !tbaa !2450
  %749 = load i64, i64* %PC
  %750 = add i64 %749, 54
  %751 = load i64, i64* %PC
  %752 = add i64 %751, 6
  %753 = load i64, i64* %PC
  %754 = add i64 %753, 6
  store i64 %754, i64* %PC
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %756 = load i8, i8* %755, align 1, !tbaa !2432
  %757 = icmp eq i8 %756, 0
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %760 = select i1 %757, i64 %750, i64 %752
  store i64 %760, i64* %759, align 8, !tbaa !2428
  %761 = load i8, i8* %BRANCH_TAKEN
  %762 = icmp eq i8 %761, 1
  br i1 %762, label %block_4009de, label %block_4009ae
}

; Function Attrs: noinline
define %struct.Memory* @sub_400a60___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400a60:
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
  store i64 ptrtoint (%seg_600de0__init_array_type* @seg_600de0__init_array to i64), i64* %R12, align 8, !tbaa !2428
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
  store i64 add (i64 ptrtoint (%seg_600de0__init_array_type* @seg_600de0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
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
  %211 = call %struct.Memory* @sub_4003f0__init_proc_renamed_(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  br i1 %245, label %block_400ab6, label %block_400a96

block_400ab6:                                     ; preds = %block_400aa0, %block_400a60
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_400a60 ], [ %387, %block_400aa0 ]
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

block_400a96:                                     ; preds = %block_400a60
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
  br label %block_400aa0

block_400aa0:                                     ; preds = %block_400aa0, %block_400a96
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_400a96 ], [ %387, %block_400aa0 ]
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
  br i1 %470, label %block_400aa0, label %block_400ab6
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004a0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  br i1 %190, label %block_4004d8, label %block_4004c3

block_4004da:                                     ; preds = %block_4004cd
  %191 = load i64, i64* %RAX
  %192 = load i64, i64* %RAX
  %193 = add i64 %192, %191
  %194 = load i16, i16* %AX
  %195 = zext i16 %194 to i64
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 6
  store i64 %197, i64* %PC
  %198 = load i64, i64* %PC
  %199 = tail call %struct.Memory* @sub_4004e0___do_global_dtors_aux(%struct.State* %0, i64 %198, %struct.Memory* %2)
  ret %struct.Memory* %199

block_4004d5:                                     ; preds = %block_4004cd
  %200 = load i64, i64* %RAX
  %201 = load i32, i32* %EAX
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC
  br label %block_4004d8

block_4004cd:                                     ; preds = %block_4004c3
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 1
  store i64 %206, i64* %PC
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %208 = load i64, i64* %207, align 8, !tbaa !2428
  %209 = add i64 %208, 8
  %210 = inttoptr i64 %208 to i64*
  %211 = load i64, i64* %210
  store i64 %211, i64* %RBP, align 8, !tbaa !2428
  store i64 %209, i64* %207, align 8, !tbaa !2428
  %212 = load i64, i64* %PC
  %213 = add i64 %212, 5
  store i64 %213, i64* %PC
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !2428
  %214 = load i64, i64* %RAX
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 2
  store i64 %216, i64* %PC
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %214, i64* %217, align 8, !tbaa !2428
  %218 = load i64, i64* %PC
  switch i64 %218, label %270 [
    i64 4195546, label %block_4004da
    i64 4195541, label %block_4004d5
  ]

block_4004d8:                                     ; preds = %block_4004c3, %block_4004d5, %block_4004a0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4004a0 ], [ %2, %block_4004c3 ], [ %2, %block_4004d5 ]
  %219 = load i64, i64* %PC
  %220 = add i64 %219, 1
  store i64 %220, i64* %PC
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %222 = load i64, i64* %221, align 8, !tbaa !2428
  %223 = add i64 %222, 8
  %224 = inttoptr i64 %222 to i64*
  %225 = load i64, i64* %224
  store i64 %225, i64* %RBP, align 8, !tbaa !2428
  store i64 %223, i64* %221, align 8, !tbaa !2428
  %226 = load i64, i64* %PC
  %227 = add i64 %226, 1
  store i64 %227, i64* %PC
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %230 = load i64, i64* %229, align 8, !tbaa !2428
  %231 = inttoptr i64 %230 to i64*
  %232 = load i64, i64* %231
  store i64 %232, i64* %228, align 8, !tbaa !2428
  %233 = add i64 %230, 8
  store i64 %233, i64* %229, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4004c3:                                     ; preds = %block_4004a0
  %234 = load i64, i64* %PC
  %235 = add i64 %234, 5
  store i64 %235, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %236 = load i64, i64* %RAX
  %237 = load i64, i64* %RAX
  %238 = load i64, i64* %PC
  %239 = add i64 %238, 3
  store i64 %239, i64* %PC
  %240 = and i64 %237, %236
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %241, align 1, !tbaa !2432
  %242 = trunc i64 %240 to i32
  %243 = and i32 %242, 255
  %244 = call i32 @llvm.ctpop.i32(i32 %243) #16
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %247, i8* %248, align 1, !tbaa !2446
  %249 = icmp eq i64 %240, 0
  %250 = zext i1 %249 to i8
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %250, i8* %251, align 1, !tbaa !2448
  %252 = lshr i64 %240, 63
  %253 = trunc i64 %252 to i8
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %253, i8* %254, align 1, !tbaa !2449
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %255, align 1, !tbaa !2450
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %256, align 1, !tbaa !2447
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 13
  %259 = load i64, i64* %PC
  %260 = add i64 %259, 2
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 2
  store i64 %262, i64* %PC
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %264 = load i8, i8* %263, align 1, !tbaa !2448
  store i8 %264, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %266 = icmp ne i8 %264, 0
  %267 = select i1 %266, i64 %258, i64 %260
  store i64 %267, i64* %265, align 8, !tbaa !2428
  %268 = load i8, i8* %BRANCH_TAKEN
  %269 = icmp eq i8 %268, 1
  br i1 %269, label %block_4004d8, label %block_4004cd

; <label>:270:                                    ; preds = %block_4004cd
  %271 = load i64, i64* %PC
  %272 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %271, %struct.Memory* %2)
  ret %struct.Memory* %272
}

; Function Attrs: noinline
define %struct.Memory* @sub_400510_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400510:
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
  %35 = tail call %struct.Memory* @sub_4004a0_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ad0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ad0:
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
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400510_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400510;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400510_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400510_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4004e0___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4004e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4004e0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4004e0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400ad0___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400ad0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400ad0___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400ad0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400a60___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400a60;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400a60___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400a60___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400980;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400980_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6010d8___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6010d0_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4003f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4003f0__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400ad4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400ad4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @salsa20() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400520;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400520_salsa20(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @salsa() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400910;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400910_salsa(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
  call void @callback_sub_400a60___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_400ad0___libc_csu_fini()
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
