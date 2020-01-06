; ModuleID = 'binary/test.mcsema.calls_renamed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400400__init_type = type <{ [23 x i8] }>
%seg_400420__plt_type = type <{ [48 x i8] }>
%seg_400450__text_type = type <{ [3538 x i8] }>
%seg_401224__fini_type = type <{ [9 x i8] }>
%seg_401230__rodata_type = type <{ [4 x i8], [3 x i8], [17 x i8], [21 x i8], [10 x i8], [10 x i8], [33 x i8], [19 x i8], [2 x i8], [8 x i8], [13 x i8] }>
%seg_4012bc__eh_frame_hdr_type = type <{ [172 x i8] }>
%seg_401368__eh_frame_type = type <{ [648 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64 }>
%seg_602030__data_type = type <{ [16 x i8] }>
%alphabet_type = type <{ [28 x i8] }>
%tracing_type = type <{ [4 x i8] }>
%__bss_start_type = type <{ [16 x i8] }>
%tasktab_type = type <{ [88 x i8] }>
%tasklist_type = type <{ [8 x i8] }>
%qpktcount_type = type <{ [4 x i8] }>
%holdcount_type = type <{ [4 x i8] }>
%layout_type = type <{ [8 x i8] }>
%tcb_type = type <{ [8 x i8] }>
%v1_type = type <{ [8 x i8] }>
%taskid_type = type <{ [8 x i8] }>
%v2_type = type <{ [8 x i8] }>
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
@seg_400400__init = internal constant %seg_400400__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\ED\1B \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400420__plt = internal constant %seg_400420__plt_type <{ [48 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\E2\1B \00\00\00\00\00\00\00\00\00\00\00\FF%\DA\1B \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400450__text = internal constant %seg_400450__text_type <{ [3538 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0 \12@\00H\C7\C1\B0\11@\00H\C7\C7\80\0E@\00\FF\15v\1B \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8` `\00H=` `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BF` `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BE` `\00UH\81\EE` `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF` `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=Y\1B \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05G\1B \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC@H\8BE\10A\BA8\00\00\00E\89\D3\89}\FC\89u\F8H\89U\F0\89M\ECL\89E\E0L\89M\D8L\89\DFH\89E\C8\E8\CA\FE\FF\FFH\89E\D0H\8BE\D0HcU\FCH\89\04\D5p `\00H\8B\04%\C8 `\00H\8BU\D0H\89\02\8BM\FCH\8BE\D0\89H\08\8BM\F8H\8BE\D0\89H\0CH\8BE\F0H\8BU\D0H\89B\10\8BM\ECH\8BE\D0\89H\18H\8BE\E0H\8BU\D0H\89B H\8BE\D8H\8BU\D0H\89B(H\8BE\10H\8BU\D0H\89B0H\8BE\D0H\89\04%\C8 `\00H\83\C4@]\C3\0F\1F\80\00\00\00\00UH\89\E5H\83\EC \B8\18\00\00\00\89\C1H\89}\F8\89u\F4\89U\F0H\89\CF\E8\1F\FE\FF\FFH\89E\E0\C7E\EC\00\00\00\00\83}\EC\03\0F\8F\1B\00\00\00H\8BE\E0HcM\EC\C6D\08\14\00\8BE\EC\83\C0\01\89E\EC\E9\DB\FF\FF\FFH\8BE\F8H\8BM\E0H\89\01\8BU\F4H\8BE\E0\89P\08\8BU\F0H\8BE\E0\89P\0CH\8BE\E0\C7@\10\00\00\00\00H\8BE\E0H\83\C4 ]\C3ff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC\10@\88\F8\88E\FF\8B<%\D8 `\00\83\C7\FF\89<%\D8 `\00\83\FF\00\0F\8F\1F\00\00\00H\BF\90\12@\00\00\00\00\00\B0\00\E8g\FD\FF\FF\C7\04%\D8 `\002\00\00\00\89E\F8H\BF4\12@\00\00\00\00\00\0F\BEu\FF\B0\00\E8D\FD\FF\FF\89E\F4H\83\C4\10]\C3ff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC0H\83<%\E0 `\00\00\0F\84}\01\00\00H\C7E\F8\00\00\00\00H\8B\05\BA\19 \00\8BH\18\89\CA\83\EA\02\89M\EC\89U\E8\0F\82\89\00\00\00\E9\00\00\00\00\8BE\EC\83\E8\02\89E\E4\0F\84$\01\00\00\E9\00\00\00\00\8BE\EC\83\E8\03\89E\E0\0F\84\1C\00\00\00\E9\00\00\00\00\8BE\EC\83\C0\FC\83\E8\04\89E\DC\0F\82\F9\00\00\00\E9\0C\01\00\00\B8\01\00\00\001\C9H\8B\14%\E0 `\00H\8BR\10H\89U\F8H\8BU\F8H\8B\12H\8B4%\E0 `\00H\89V\10H\8B\14%\E0 `\00H\83z\10\00\0FD\C1H\8B\14%\E0 `\00\89B\18H\8B\04%\E0 `\00Hc@\08H\89\04%\F0 `\00H\8B\04%\E0 `\00H\8B@(H\89\04%\E8 `\00H\8B\04%\E0 `\00H\8B@0H\89\04%\F8 `\00\83<%\5C `\00\01\0F\85\16\00\00\00H\8B\04%\F0 `\00H\83\C00\88\C1\0F\BE\F9\E8m\FE\FF\FFH\8B\04%\E0 `\00H\8B@ H\8B}\F8\FF\D0H\89E\F0H\8B\04%\E8 `\00H\8B<%\E0 `\00H\89G(H\8B\04%\F8 `\00H\8B<%\E0 `\00H\89G0H\8BE\F0H\89\04%\E0 `\00\E9\1D\00\00\00H\8B\04%\E0 `\00H\8B\00H\89\04%\E0 `\00\E9\05\00\00\00\E9\05\00\00\00\E9t\FE\FF\FFH\83\C40]\C3f\0F\1FD\00\00UH\89\E5H\8B\04%\E0 `\00\8BH\18\83\C9\02\89H\18H\8B\04%\E0 `\00]\C3\90UH\89\E5\8B\04%\D4 `\00\83\C0\01\89\04%\D4 `\00H\8B\0C%\E0 `\00\8BA\18\83\C8\04\89A\18H\8B\0C%\E0 `\00H\8B\01]\C3ffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \B8\01\00\00\00\89}\FCH\C7E\F0\00\00\00\00;E\FC\0F\8F\1E\00\00\00HcE\FCH\83\F8\0A\0F\8F\10\00\00\00HcE\FCH\8B\04\C5p `\00H\89E\F0H\83}\F0\00\0F\85\17\00\00\00H\BF7\12@\00\00\00\00\00\8Bu\FC\B0\00\E8\D2\FA\FF\FF\89E\ECH\8BE\F0H\83\C4 ]\C3\0F\1FD\00\00UH\89\E5H\83\EC \89}\F4\8B}\F4\E8}\FF\FF\FFH\89E\E8H\83}\E8\00\0F\85\0D\00\00\00H\C7E\F8\00\00\00\00\E9A\00\00\00H\8BE\E8\8BH\18\81\E1\FB\FF\00\00\89H\18H\8BE\E8\8BH\0CH\8B\04%\E0 `\00;H\0C\0F\8E\0D\00\00\00H\8BE\E8H\89E\F8\E9\0C\00\00\00H\8B\04%\E0 `\00H\89E\F8H\8BE\F8H\83\C4 ]\C3f\0F\1FD\00\00UH\89\E5H\83\EC H\89}\F0H\8B}\F0\8B\7F\08\E8\F8\FE\FF\FFH\89E\E8H\83}\E8\00\0F\85\0D\00\00\00H\8BE\E8H\89E\F8\E9\9F\00\00\00\8B\04%\D0 `\00\83\C0\01\89\04%\D0 `\00H\8BM\F0H\C7\01\00\00\00\00H\8B\0C%\F0 `\00\89\C8H\8BM\F0\89A\08H\8BM\E8H\83y\10\00\0F\85C\00\00\00H\8BE\F0H\8BM\E8H\89A\10H\8BE\E8\8BP\18\83\CA\01\89P\18H\8BE\E8\8BP\0CH\8B\04%\E0 `\00;P\0C\0F\8E\0D\00\00\00H\8BE\E8H\89E\F8\E9%\00\00\00\E9\14\00\00\00H\8B}\F0H\8BE\E8H\83\C0\10H\89\C6\E8\19\00\00\00H\8B\04%\E0 `\00H\89E\F8H\8BE\F8H\83\C4 ]\C3\0F\1F\00UH\89\E5H\89}\F8H\89u\F0H\8Bu\F8H\C7\06\00\00\00\00H\8BE\F0H\838\00\0F\84\10\00\00\00H\8BE\F0H\8B\00H\89E\F0\E9\E2\FF\FF\FFH\8BE\F8H\8BM\F0H\89\01]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC\10H\89}\F0H\8B<%\F8 `\00H\83\C7\FFH\89<%\F8 `\00H\83<%\F8 `\00\00\0F\85\0E\00\00\00\E8l\FD\FF\FFH\89E\F8\E9q\00\00\00H\8B\04%\E8 `\00H\83\E0\01H\83\F8\00\0F\85-\00\00\00\BF\05\00\00\00H\8B\04%\E8 `\00H\C1\F8\01H%\FF\7F\00\00H\89\04%\E8 `\00\E8\D9\FD\FF\FFH\89E\F8\E9.\00\00\00\BF\06\00\00\00H\8B\04%\E8 `\00H\C1\F8\01H%\FF\7F\00\00H5\08\D0\00\00H\89\04%\E8 `\00\E8\A6\FD\FF\FFH\89E\F8H\8BE\F8H\83\C4\10]\C3\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC H\89}\F0H\83}\F0\00\0F\85\0E\00\00\00\E8\A4\FC\FF\FFH\89E\F8\E9\A9\00\00\00\B8\07\00\00\00\89\C1H+\0C%\E8 `\00H\89\0C%\E8 `\00H\8B\0C%\E8 `\00\89\C8H\8BM\F0\89A\08H\8BM\F0\C7A\10\00\00\00\00\C7E\EC\00\00\00\00\83}\EC\03\0F\8FX\00\00\00H\8B\04%\F8 `\00H\83\C0\01H\89\04%\F8 `\00H\83<%\F8 `\00\1A\0F\8E\0C\00\00\00H\C7\04%\F8 `\00\01\00\00\00H\8B\04%\F8 `\00\8A\0C\05@ `\00H\8BE\F0HcU\EC\88L\10\14\8BE\EC\83\C0\01\89E\EC\E9\9E\FF\FF\FFH\8B}\F0\E8F\FD\FF\FFH\89E\F8H\8BE\F8H\83\C4 ]\C3\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC0H\89}\F0H\83}\F0\00\0F\84/\00\00\00H\B8\F8 `\00\00\00\00\00H\B9\E8 `\00\00\00\00\00H\8B}\F0H\8BU\F0\81z\0C\E9\03\00\00H\0FD\C1H\89\C6\E8\CA\FD\FF\FFH\83<%\E8 `\00\00\0F\84\AB\00\00\00H\8B\04%\E8 `\00H\89E\E0H\8BE\E0\8BH\10\89M\EC\83}\EC\03\0F\8E%\00\00\00H\8B\04%\E8 `\00H\8B\00H\89\04%\E8 `\00H\8B}\E0\E8\9F\FC\FF\FFH\89E\F8\E9o\00\00\00H\83<%\F8 `\00\00\0F\84R\00\00\00H\8B\04%\F8 `\00H\89E\D8H\8B\04%\F8 `\00H\8B\00H\89\04%\F8 `\00H\8BE\E0HcM\EC\0F\BET\08\14H\8BE\D8\89P\10\8BU\EC\83\C2\01H\8BE\E0\89P\10H\8B}\D8\E8>\FC\FF\FFH\89E\F8\E9\0E\00\00\00\E9\00\00\00\00\E8\DB\FA\FF\FFH\89E\F8H\8BE\F8H\83\C40]\C3ffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC\10H\89}\F0H\83}\F0\00\0F\85G\00\00\00H\83<%\E8 `\00\00\0F\85\0E\00\00\00\E8\95\FA\FF\FFH\89E\F8\E9^\00\00\00H\8B\04%\E8 `\00H\89E\F0H\C7\04%\E8 `\00\00\00\00\00H\8B}\F0\E8\BB\FB\FF\FFH\89E\F8\E94\00\00\00H\8BE\F0H\89\04%\E8 `\00\83<%\5C `\00\01\0F\85\11\00\00\00H\8BE\F0\8BH\10\88\CA\0F\BE\FA\E8'\F8\FF\FF\E8R\FA\FF\FFH\89E\F8H\8BE\F8H\83\C4\10]\C3\0F\1F@\00UH\89\E5H\83\EC`H\BFH\12@\00\00\00\00\00\C7E\FC\00\00\00\00H\C7E\F0\00\00\00\00\B0\00\E8\88\F5\FF\FF\BF\01\00\00\001\C9I\B8 \0B@\00\00\00\00\00\BA\01\00\00\00A\89\D1\BA\80\96\98\00\89\D6H\8BU\F0H\89u\E0\89\CEH\C7\04$\80\96\98\00\89E\DC\E8^\F6\FF\FF1\C0\89\C71\F6\BA\E9\03\00\00\E8\0E\F7\FF\FF1\F6\BA\E9\03\00\00H\89E\F0H\8B}\F0\E8\FA\F6\FF\FF\BF\02\00\00\00\BE\E8\03\00\00\B9\03\00\00\00I\B8\E0\0B@\00\00\00\00\00\BA\03\00\00\00A\89\D11\D2A\89\D2H\89E\F0H\8BU\F0H\C7\04$\00\00\00\00L\89U\D0\E8\FB\F5\FF\FF1\C9\89\CF\BE\05\00\00\00\BA\E8\03\00\00\E8\A8\F6\FF\FF\BE\05\00\00\00\BA\E8\03\00\00H\89E\F0H\8B}\F0\E8\91\F6\FF\FF\BE\05\00\00\00\BA\E8\03\00\00H\89E\F0H\8B}\F0\E8z\F6\FF\FF\B9\03\00\00\00\BE\D0\07\00\00I\B8\C0\0C@\00\00\00\00\001\D2A\89\D1H\89E\F0H\8BU\F0\89\CFH\C7\04$\00\00\00\00\E8\8A\F5\FF\FF1\C9\89\CF\BE\06\00\00\00\BA\E8\03\00\00\E87\F6\FF\FF\BE\06\00\00\00\BA\E8\03\00\00H\89E\F0H\8B}\F0\E8 \F6\FF\FF\BE\06\00\00\00\BA\E8\03\00\00H\89E\F0H\8B}\F0\E8\09\F6\FF\FF\BF\04\00\00\00\BE\B8\0B\00\00\B9\03\00\00\00I\B8\C0\0C@\00\00\00\00\001\D2A\89\D1H\89E\F0H\8BU\F0H\C7\04$\00\00\00\00\E8\16\F5\FF\FF\BF\05\00\00\00\BE\A0\0F\00\00\B9\02\00\00\00I\B8\E0\0D@\00\00\00\00\00E1\DBE\89\D9H\C7E\F0\00\00\00\00H\8BU\F0H\C7\04$\00\00\00\00\E8\DE\F4\FF\FF\BF\06\00\00\00\BE\88\13\00\00\B9\02\00\00\00I\B8\E0\0D@\00\00\00\00\00E1\DBE\89\D9H\8BU\F0H\C7\04$\00\00\00\00\E8\AE\F4\FF\FFH\BF]\12@\00\00\00\00\00H\8B\04%\C8 `\00H\89\04%\E0 `\00\C7\04%\D4 `\00\00\00\00\00\C7\04%\D0 `\00\00\00\00\00\B0\00\E8g\F3\FF\FF\C7\04%\5C `\00\00\00\00\00\C7\04%\D8 `\00\00\00\00\00\89E\CC\E8\19\F6\FF\FFH\BFg\12@\00\00\00\00\00\B0\00\E88\F3\FF\FFH\BFq\12@\00\00\00\00\00\8B4%\D0 `\00\8B\14%\D4 `\00\89E\C8\B0\00\E8\16\F3\FF\FFH\BF\92\12@\00\00\00\00\00\89E\C4\B0\00\E8\02\F3\FF\FF\81<%\D0 `\00\96\FAb\01\89E\C0\0F\851\00\00\00\81<%\D4 `\00\D5\FD\8D\00\0F\85 \00\00\00H\BF\A7\12@\00\00\00\00\00\B0\00\E8\CC\F2\FF\FF\C7E\EC\00\00\00\00\89E\BC\E9\1B\00\00\00H\BF\A5\12@\00\00\00\00\00\B0\00\E8\AC\F2\FF\FF\C7E\EC\01\00\00\00\89E\B8H\BF\AF\12@\00\00\00\00\00\B0\00\E8\91\F2\FF\FF\8BM\EC\89E\B4\89\C8H\83\C4`]\C3\0F\1F\00AWAVI\89\D7AUATL\8D%.\0C \00UH\8D-.\0C \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\1F\F2\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_401224__fini = internal constant %seg_401224__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_401230__rodata = internal constant %seg_401230__rodata_type <{ [4 x i8] c"\01\00\02\00", [3 x i8] c"%c\00", [17 x i8] c"\0ABad task id %d\0A\00", [21 x i8] c"Bench mark starting\0A\00", [10 x i8] c"Starting\0A\00", [10 x i8] c"finished\0A\00", [33 x i8] c"qpkt count = %d  holdcount = %d\0A\00", [19 x i8] c"These results are \00", [2 x i8] c"in", [8 x i8] c"correct\00", [13 x i8] c"\0Aend of run\0A\00" }>
@seg_4012bc__eh_frame_hdr = internal constant %seg_4012bc__eh_frame_hdr_type <{ [172 x i8] c"\01\1B\03;\A8\00\00\00\14\00\00\00d\F1\FF\FF\04\01\00\00\94\F1\FF\FF\C4\00\00\00\C4\F1\FF\FF\F0\00\00\00\84\F2\FF\FF,\01\00\00D\F3\FF\FFH\01\00\00\D4\F3\FF\FFd\01\00\00D\F4\FF\FF\80\01\00\00\E4\F5\FF\FF\9C\01\00\00\04\F6\FF\FF\B8\01\00\00D\F6\FF\FF\D4\01\00\00\B4\F6\FF\FF\F0\01\00\004\F7\FF\FF\0C\02\00\00\14\F8\FF\FF(\02\00\00d\F8\FF\FFD\02\00\00$\F9\FF\FF`\02\00\00\04\FA\FF\FF|\02\00\00$\FB\FF\FF\98\02\00\00\C4\FB\FF\FF\B4\02\00\00\F4\FE\FF\FF\D4\02\00\00d\FF\FF\FF\1C\03\00\00" }>
@seg_401368__eh_frame = internal constant %seg_401368__eh_frame_type <{ [648 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00\C8\F0\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00\CC\F0\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00X\F0\FF\FF0\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00P\F1\FF\FF\B9\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\F4\F1\FF\FF\85\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\90\00\00\00h\F2\FF\FFe\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\AC\00\00\00\BC\F2\FF\FF\9A\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C8\00\00\00@\F4\FF\FF\1F\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\E4\00\00\00D\F4\FF\FF3\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\00\01\00\00h\F4\FF\FFk\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\1C\01\00\00\BC\F4\FF\FFz\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\01\00\00 \F5\FF\FF\DD\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00T\01\00\00\E4\F5\FF\FFB\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00p\01\00\00\18\F6\FF\FF\B8\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\8C\01\00\00\BC\F6\FF\FF\D8\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\A8\01\00\00\80\F7\FF\FF\13\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C4\01\00\00\84\F8\FF\FF\9C\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00\E0\01\00\00\08\F9\FF\FF-\03\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00D\00\00\00\00\02\00\00\18\FC\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00H\02\00\00@\FC\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400530_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400500___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 ptrtoint (i64 (i64)* @malloc to i64) }>
@seg_602030__data = internal global %seg_602030__data_type zeroinitializer
@alphabet = global %alphabet_type <{ [28 x i8] c"0ABCDEFGHIJKLMNOPQRSTUVWXYZ\00" }>
@tracing = global %tracing_type <{ [4 x i8] c"\01\00\00\00" }>
@__bss_start = global %__bss_start_type zeroinitializer
@tasktab = global %tasktab_type zeroinitializer
@tasklist = global %tasklist_type zeroinitializer
@qpktcount = global %qpktcount_type zeroinitializer
@holdcount = global %holdcount_type zeroinitializer
@layout = global %layout_type zeroinitializer
@tcb = global %tcb_type zeroinitializer
@v1 = global %v1_type zeroinitializer
@taskid = global %taskid_type zeroinitializer
@v2 = global %v2_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400530_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400500___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @idlefn_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @workfn_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @handlerfn_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @devfn_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401220___libc_csu_fini_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4011b0___libc_csu_init_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @qpkt_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @release_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @trace_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @createtask_wrapper
@15 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @Wait_wrapper
@16 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @schedule_wrapper
@17 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@18 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@19 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @pkt_wrapper
@20 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @append_wrapper
@21 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @holdself_wrapper
@22 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @findtcb_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_400ad0_append_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400490_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4008c0_holdself_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400690_trace_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4008a0_Wait_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400600_pkt_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400970_release_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400700_schedule_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400540_createtask_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400400__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4009f0_qpkt_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400900_findtcb_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

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
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_400cc0_handlerfn(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400cc0:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RAX = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RCX = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RDX = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 9
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RSI = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 11
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RDI = bitcast %union.anon* %26 to i64*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 13
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RSP = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 15
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %RBP = bitcast %union.anon* %32 to i64*
  %33 = load i64, i64* %RBP
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 1
  store i64 %35, i64* %PC
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %37 = load i64, i64* %36, align 8, !tbaa !2428
  %38 = add i64 %37, -8
  %39 = inttoptr i64 %38 to i64*
  store i64 %33, i64* %39
  store i64 %38, i64* %36, align 8, !tbaa !2428
  %40 = load i64, i64* %RSP
  %41 = load i64, i64* %PC
  %42 = add i64 %41, 3
  store i64 %42, i64* %PC
  store i64 %40, i64* %RBP, align 8, !tbaa !2428
  %43 = load i64, i64* %RSP
  %44 = load i64, i64* %PC
  %45 = add i64 %44, 4
  store i64 %45, i64* %PC
  %46 = sub i64 %43, 48
  store i64 %46, i64* %RSP, align 8, !tbaa !2428
  %47 = icmp ult i64 %43, 48
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %48, i8* %49, align 1, !tbaa !2432
  %50 = trunc i64 %46 to i32
  %51 = and i32 %50, 255
  %52 = call i32 @llvm.ctpop.i32(i32 %51) #16
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %55, i8* %56, align 1, !tbaa !2446
  %57 = xor i64 48, %43
  %58 = xor i64 %57, %46
  %59 = lshr i64 %58, 4
  %60 = trunc i64 %59 to i8
  %61 = and i8 %60, 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %61, i8* %62, align 1, !tbaa !2447
  %63 = icmp eq i64 %46, 0
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %64, i8* %65, align 1, !tbaa !2448
  %66 = lshr i64 %46, 63
  %67 = trunc i64 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %67, i8* %68, align 1, !tbaa !2449
  %69 = lshr i64 %43, 63
  %70 = xor i64 %66, %69
  %71 = add nuw nsw i64 %70, %69
  %72 = icmp eq i64 %71, 2
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %73, i8* %74, align 1, !tbaa !2450
  %75 = load i64, i64* %RBP
  %76 = sub i64 %75, 16
  %77 = load i64, i64* %RDI
  %78 = load i64, i64* %PC
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC
  %80 = inttoptr i64 %76 to i64*
  store i64 %77, i64* %80
  %81 = load i64, i64* %RBP
  %82 = sub i64 %81, 16
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 5
  store i64 %84, i64* %PC
  %85 = inttoptr i64 %82 to i64*
  %86 = load i64, i64* %85
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %87, align 1, !tbaa !2432
  %88 = trunc i64 %86 to i32
  %89 = and i32 %88, 255
  %90 = call i32 @llvm.ctpop.i32(i32 %89) #16
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = xor i8 %92, 1
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %93, i8* %94, align 1, !tbaa !2446
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %95, align 1, !tbaa !2447
  %96 = icmp eq i64 %86, 0
  %97 = zext i1 %96 to i8
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %97, i8* %98, align 1, !tbaa !2448
  %99 = lshr i64 %86, 63
  %100 = trunc i64 %99 to i8
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %100, i8* %101, align 1, !tbaa !2449
  %102 = lshr i64 %86, 63
  %103 = xor i64 %99, %102
  %104 = add nuw nsw i64 %103, %102
  %105 = icmp eq i64 %104, 2
  %106 = zext i1 %105 to i8
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %106, i8* %107, align 1, !tbaa !2450
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 53
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 6
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 6
  store i64 %113, i64* %PC
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %115 = load i8, i8* %114, align 1, !tbaa !2448
  store i8 %115, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %117 = icmp ne i8 %115, 0
  %118 = select i1 %117, i64 %109, i64 %111
  store i64 %118, i64* %116, align 8, !tbaa !2428
  %119 = load i8, i8* %BRANCH_TAKEN
  %120 = icmp eq i8 %119, 1
  br i1 %120, label %block_400d06, label %block_400cd7

block_400d15:                                     ; preds = %block_400d06
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 8
  store i64 %122, i64* %PC
  %123 = load i64, i64* bitcast (%v1_type* @v1 to i64*)
  store i64 %123, i64* %RAX, align 8, !tbaa !2428
  %124 = load i64, i64* %RBP
  %125 = sub i64 %124, 32
  %126 = load i64, i64* %RAX
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 4
  store i64 %128, i64* %PC
  %129 = inttoptr i64 %125 to i64*
  store i64 %126, i64* %129
  %130 = load i64, i64* %RBP
  %131 = sub i64 %130, 32
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 4
  store i64 %133, i64* %PC
  %134 = inttoptr i64 %131 to i64*
  %135 = load i64, i64* %134
  store i64 %135, i64* %RAX, align 8, !tbaa !2428
  %136 = load i64, i64* %RAX
  %137 = add i64 %136, 16
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 3
  store i64 %139, i64* %PC
  %140 = inttoptr i64 %137 to i32*
  %141 = load i32, i32* %140
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RCX, align 8, !tbaa !2428
  %143 = load i64, i64* %RBP
  %144 = sub i64 %143, 20
  %145 = load i32, i32* %ECX
  %146 = zext i32 %145 to i64
  %147 = load i64, i64* %PC
  %148 = add i64 %147, 3
  store i64 %148, i64* %PC
  %149 = inttoptr i64 %144 to i32*
  store i32 %145, i32* %149
  %150 = load i64, i64* %RBP
  %151 = sub i64 %150, 20
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 4
  store i64 %153, i64* %PC
  %154 = inttoptr i64 %151 to i32*
  %155 = load i32, i32* %154
  %156 = sub i32 %155, 3
  %157 = icmp ult i32 %155, 3
  %158 = zext i1 %157 to i8
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %158, i8* %159, align 1, !tbaa !2432
  %160 = and i32 %156, 255
  %161 = call i32 @llvm.ctpop.i32(i32 %160) #16
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  %164 = xor i8 %163, 1
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %164, i8* %165, align 1, !tbaa !2446
  %166 = xor i32 %155, 3
  %167 = xor i32 %166, %156
  %168 = lshr i32 %167, 4
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %170, i8* %171, align 1, !tbaa !2447
  %172 = icmp eq i32 %156, 0
  %173 = zext i1 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %173, i8* %174, align 1, !tbaa !2448
  %175 = lshr i32 %156, 31
  %176 = trunc i32 %175 to i8
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %176, i8* %177, align 1, !tbaa !2449
  %178 = lshr i32 %155, 31
  %179 = xor i32 %175, %178
  %180 = add nuw nsw i32 %179, %178
  %181 = icmp eq i32 %180, 2
  %182 = zext i1 %181 to i8
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %182, i8* %183, align 1, !tbaa !2450
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 43
  %186 = load i64, i64* %PC
  %187 = add i64 %186, 6
  %188 = load i64, i64* %PC
  %189 = add i64 %188, 6
  store i64 %189, i64* %PC
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %191 = load i8, i8* %190, align 1, !tbaa !2448
  %192 = icmp ne i8 %191, 0
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %194 = load i8, i8* %193, align 1, !tbaa !2449
  %195 = icmp ne i8 %194, 0
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %197 = load i8, i8* %196, align 1, !tbaa !2450
  %198 = icmp ne i8 %197, 0
  %199 = xor i1 %195, %198
  %200 = or i1 %192, %199
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %203 = select i1 %200, i64 %185, i64 %187
  store i64 %203, i64* %202, align 8, !tbaa !2428
  %204 = load i8, i8* %BRANCH_TAKEN
  %205 = icmp eq i8 %204, 1
  %206 = load i64, i64* %PC
  br i1 %205, label %block_400d5a, label %block_400d35

block_400dbb:                                     ; preds = %block_400d5a
  %207 = add i64 %613, 5
  %208 = load i64, i64* %PC
  %209 = add i64 %208, 5
  store i64 %209, i64* %PC
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %207, i64* %210, align 8, !tbaa !2428
  br label %block_400dc0

block_400d35:                                     ; preds = %block_400d15
  %211 = add i64 %206, 8
  store i64 %211, i64* %PC
  %212 = load i64, i64* bitcast (%v1_type* @v1 to i64*)
  store i64 %212, i64* %RAX, align 8, !tbaa !2428
  %213 = load i64, i64* %RAX
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC
  %216 = inttoptr i64 %213 to i64*
  %217 = load i64, i64* %216
  store i64 %217, i64* %RAX, align 8, !tbaa !2428
  %218 = load i64, i64* %RAX
  %219 = load i64, i64* %PC
  %220 = add i64 %219, 8
  store i64 %220, i64* %PC
  store i64 %218, i64* bitcast (%v1_type* @v1 to i64*)
  %221 = load i64, i64* %RBP
  %222 = sub i64 %221, 32
  %223 = load i64, i64* %PC
  %224 = add i64 %223, 4
  store i64 %224, i64* %PC
  %225 = inttoptr i64 %222 to i64*
  %226 = load i64, i64* %225
  store i64 %226, i64* %RDI, align 8, !tbaa !2428
  %227 = load i64, i64* %PC
  %228 = sub i64 %227, 860
  %229 = load i64, i64* %PC
  %230 = add i64 %229, 5
  %231 = load i64, i64* %PC
  %232 = add i64 %231, 5
  store i64 %232, i64* %PC
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %234 = load i64, i64* %233, align 8, !tbaa !2428
  %235 = add i64 %234, -8
  %236 = inttoptr i64 %235 to i64*
  store i64 %230, i64* %236
  store i64 %235, i64* %233, align 8, !tbaa !2428
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %228, i64* %237, align 8, !tbaa !2428
  %238 = load i64, i64* %PC
  %239 = call %struct.Memory* @sub_4009f0_qpkt_renamed_(%struct.State* %0, i64 %238, %struct.Memory* %MEMORY.1)
  %240 = load i64, i64* %RBP
  %241 = sub i64 %240, 8
  %242 = load i64, i64* %RAX
  %243 = load i64, i64* %PC
  %244 = add i64 %243, 4
  store i64 %244, i64* %PC
  %245 = inttoptr i64 %241 to i64*
  store i64 %242, i64* %245
  %246 = load i64, i64* %PC
  %247 = add i64 %246, 116
  %248 = load i64, i64* %PC
  %249 = add i64 %248, 5
  store i64 %249, i64* %PC
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %247, i64* %250, align 8, !tbaa !2428
  br label %block_400dc9

block_400dc9:                                     ; preds = %block_400dc0, %block_400d69, %block_400d35
  %MEMORY.0 = phi %struct.Memory* [ %570, %block_400dc0 ], [ %509, %block_400d69 ], [ %239, %block_400d35 ]
  %251 = load i64, i64* %RBP
  %252 = sub i64 %251, 8
  %253 = load i64, i64* %PC
  %254 = add i64 %253, 4
  store i64 %254, i64* %PC
  %255 = inttoptr i64 %252 to i64*
  %256 = load i64, i64* %255
  store i64 %256, i64* %RAX, align 8, !tbaa !2428
  %257 = load i64, i64* %RSP
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 4
  store i64 %259, i64* %PC
  %260 = add i64 48, %257
  store i64 %260, i64* %RSP, align 8, !tbaa !2428
  %261 = icmp ult i64 %260, %257
  %262 = icmp ult i64 %260, 48
  %263 = or i1 %261, %262
  %264 = zext i1 %263 to i8
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %264, i8* %265, align 1, !tbaa !2432
  %266 = trunc i64 %260 to i32
  %267 = and i32 %266, 255
  %268 = call i32 @llvm.ctpop.i32(i32 %267) #16
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %271, i8* %272, align 1, !tbaa !2446
  %273 = xor i64 48, %257
  %274 = xor i64 %273, %260
  %275 = lshr i64 %274, 4
  %276 = trunc i64 %275 to i8
  %277 = and i8 %276, 1
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %277, i8* %278, align 1, !tbaa !2447
  %279 = icmp eq i64 %260, 0
  %280 = zext i1 %279 to i8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %280, i8* %281, align 1, !tbaa !2448
  %282 = lshr i64 %260, 63
  %283 = trunc i64 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %283, i8* %284, align 1, !tbaa !2449
  %285 = lshr i64 %257, 63
  %286 = xor i64 %282, %285
  %287 = add nuw nsw i64 %286, %282
  %288 = icmp eq i64 %287, 2
  %289 = zext i1 %288 to i8
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %289, i8* %290, align 1, !tbaa !2450
  %291 = load i64, i64* %PC
  %292 = add i64 %291, 1
  store i64 %292, i64* %PC
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %294 = load i64, i64* %293, align 8, !tbaa !2428
  %295 = add i64 %294, 8
  %296 = inttoptr i64 %294 to i64*
  %297 = load i64, i64* %296
  store i64 %297, i64* %RBP, align 8, !tbaa !2428
  store i64 %295, i64* %293, align 8, !tbaa !2428
  %298 = load i64, i64* %PC
  %299 = add i64 %298, 1
  store i64 %299, i64* %PC
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %302 = load i64, i64* %301, align 8, !tbaa !2428
  %303 = inttoptr i64 %302 to i64*
  %304 = load i64, i64* %303
  store i64 %304, i64* %300, align 8, !tbaa !2428
  %305 = add i64 %302, 8
  store i64 %305, i64* %301, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400cd7:                                     ; preds = %block_400cc0
  %306 = load i64, i64* %PC
  %307 = add i64 %306, 10
  store i64 %307, i64* %PC
  store i64 ptrtoint (%v2_type* @v2 to i64), i64* %RAX, align 8, !tbaa !2428
  %308 = load i64, i64* %PC
  %309 = add i64 %308, 10
  store i64 %309, i64* %PC
  store i64 ptrtoint (%v1_type* @v1 to i64), i64* %RCX, align 8, !tbaa !2428
  %310 = load i64, i64* %RBP
  %311 = sub i64 %310, 16
  %312 = load i64, i64* %PC
  %313 = add i64 %312, 4
  store i64 %313, i64* %PC
  %314 = inttoptr i64 %311 to i64*
  %315 = load i64, i64* %314
  store i64 %315, i64* %RDI, align 8, !tbaa !2428
  %316 = load i64, i64* %RBP
  %317 = sub i64 %316, 16
  %318 = load i64, i64* %PC
  %319 = add i64 %318, 4
  store i64 %319, i64* %PC
  %320 = inttoptr i64 %317 to i64*
  %321 = load i64, i64* %320
  store i64 %321, i64* %RDX, align 8, !tbaa !2428
  %322 = load i64, i64* %RDX
  %323 = add i64 %322, 12
  %324 = load i64, i64* %PC
  %325 = add i64 %324, 7
  store i64 %325, i64* %PC
  %326 = inttoptr i64 %323 to i32*
  %327 = load i32, i32* %326
  %328 = sub i32 %327, 1001
  %329 = icmp ult i32 %327, 1001
  %330 = zext i1 %329 to i8
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %330, i8* %331, align 1, !tbaa !2432
  %332 = and i32 %328, 255
  %333 = call i32 @llvm.ctpop.i32(i32 %332) #16
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %336, i8* %337, align 1, !tbaa !2446
  %338 = xor i32 %327, 1001
  %339 = xor i32 %338, %328
  %340 = lshr i32 %339, 4
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %342, i8* %343, align 1, !tbaa !2447
  %344 = icmp eq i32 %328, 0
  %345 = zext i1 %344 to i8
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %345, i8* %346, align 1, !tbaa !2448
  %347 = lshr i32 %328, 31
  %348 = trunc i32 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %348, i8* %349, align 1, !tbaa !2449
  %350 = lshr i32 %327, 31
  %351 = xor i32 %347, %350
  %352 = add nuw nsw i32 %351, %350
  %353 = icmp eq i32 %352, 2
  %354 = zext i1 %353 to i8
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %354, i8* %355, align 1, !tbaa !2450
  %356 = load i64, i64* %RCX
  %357 = load i64, i64* %PC
  %358 = add i64 %357, 4
  store i64 %358, i64* %PC
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %360 = load i8, i8* %359, align 1, !tbaa !2448
  %361 = icmp ne i8 %360, 0
  %362 = load i64, i64* %RAX, align 8, !tbaa !2428
  %363 = select i1 %361, i64 %356, i64 %362
  store i64 %363, i64* %RAX, align 8, !tbaa !2428
  %364 = load i64, i64* %RAX
  %365 = load i64, i64* %PC
  %366 = add i64 %365, 3
  store i64 %366, i64* %PC
  store i64 %364, i64* %RSI, align 8, !tbaa !2428
  %367 = load i64, i64* %PC
  %368 = sub i64 %367, 561
  %369 = load i64, i64* %PC
  %370 = add i64 %369, 5
  %371 = load i64, i64* %PC
  %372 = add i64 %371, 5
  store i64 %372, i64* %PC
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %374 = load i64, i64* %373, align 8, !tbaa !2428
  %375 = add i64 %374, -8
  %376 = inttoptr i64 %375 to i64*
  store i64 %370, i64* %376
  store i64 %375, i64* %373, align 8, !tbaa !2428
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %368, i64* %377, align 8, !tbaa !2428
  %378 = load i64, i64* %PC
  %379 = call %struct.Memory* @sub_400ad0_append_renamed_(%struct.State* %0, i64 %378, %struct.Memory* %2)
  br label %block_400d06

block_400d69:                                     ; preds = %block_400d5a
  %380 = add i64 %613, 8
  store i64 %380, i64* %PC
  %381 = load i64, i64* bitcast (%v2_type* @v2 to i64*)
  store i64 %381, i64* %RAX, align 8, !tbaa !2428
  %382 = load i64, i64* %RBP
  %383 = sub i64 %382, 40
  %384 = load i64, i64* %RAX
  %385 = load i64, i64* %PC
  %386 = add i64 %385, 4
  store i64 %386, i64* %PC
  %387 = inttoptr i64 %383 to i64*
  store i64 %384, i64* %387
  %388 = load i64, i64* %PC
  %389 = add i64 %388, 8
  store i64 %389, i64* %PC
  %390 = load i64, i64* bitcast (%v2_type* @v2 to i64*)
  store i64 %390, i64* %RAX, align 8, !tbaa !2428
  %391 = load i64, i64* %RAX
  %392 = load i64, i64* %PC
  %393 = add i64 %392, 3
  store i64 %393, i64* %PC
  %394 = inttoptr i64 %391 to i64*
  %395 = load i64, i64* %394
  store i64 %395, i64* %RAX, align 8, !tbaa !2428
  %396 = load i64, i64* %RAX
  %397 = load i64, i64* %PC
  %398 = add i64 %397, 8
  store i64 %398, i64* %PC
  store i64 %396, i64* bitcast (%v2_type* @v2 to i64*)
  %399 = load i64, i64* %RBP
  %400 = sub i64 %399, 32
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 4
  store i64 %402, i64* %PC
  %403 = inttoptr i64 %400 to i64*
  %404 = load i64, i64* %403
  store i64 %404, i64* %RAX, align 8, !tbaa !2428
  %405 = load i64, i64* %RBP
  %406 = sub i64 %405, 20
  %407 = load i64, i64* %PC
  %408 = add i64 %407, 4
  store i64 %408, i64* %PC
  %409 = inttoptr i64 %406 to i32*
  %410 = load i32, i32* %409
  %411 = sext i32 %410 to i64
  store i64 %411, i64* %RCX, align 8, !tbaa !2428
  %412 = load i64, i64* %RAX
  %413 = load i64, i64* %RCX
  %414 = add i64 %412, 20
  %415 = add i64 %414, %413
  %416 = load i64, i64* %PC
  %417 = add i64 %416, 5
  store i64 %417, i64* %PC
  %418 = inttoptr i64 %415 to i8*
  %419 = load i8, i8* %418
  %420 = sext i8 %419 to i64
  %421 = and i64 %420, 4294967295
  store i64 %421, i64* %RDX, align 8, !tbaa !2428
  %422 = load i64, i64* %RBP
  %423 = sub i64 %422, 40
  %424 = load i64, i64* %PC
  %425 = add i64 %424, 4
  store i64 %425, i64* %PC
  %426 = inttoptr i64 %423 to i64*
  %427 = load i64, i64* %426
  store i64 %427, i64* %RAX, align 8, !tbaa !2428
  %428 = load i64, i64* %RAX
  %429 = add i64 %428, 16
  %430 = load i32, i32* %EDX
  %431 = zext i32 %430 to i64
  %432 = load i64, i64* %PC
  %433 = add i64 %432, 3
  store i64 %433, i64* %PC
  %434 = inttoptr i64 %429 to i32*
  store i32 %430, i32* %434
  %435 = load i64, i64* %RBP
  %436 = sub i64 %435, 20
  %437 = load i64, i64* %PC
  %438 = add i64 %437, 3
  store i64 %438, i64* %PC
  %439 = inttoptr i64 %436 to i32*
  %440 = load i32, i32* %439
  %441 = zext i32 %440 to i64
  store i64 %441, i64* %RDX, align 8, !tbaa !2428
  %442 = load i64, i64* %RDX
  %443 = load i64, i64* %PC
  %444 = add i64 %443, 3
  store i64 %444, i64* %PC
  %445 = trunc i64 %442 to i32
  %446 = add i32 1, %445
  %447 = zext i32 %446 to i64
  store i64 %447, i64* %RDX, align 8, !tbaa !2428
  %448 = icmp ult i32 %446, %445
  %449 = icmp ult i32 %446, 1
  %450 = or i1 %448, %449
  %451 = zext i1 %450 to i8
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %451, i8* %452, align 1, !tbaa !2432
  %453 = and i32 %446, 255
  %454 = call i32 @llvm.ctpop.i32(i32 %453) #16
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %457, i8* %458, align 1, !tbaa !2446
  %459 = xor i64 1, %442
  %460 = trunc i64 %459 to i32
  %461 = xor i32 %460, %446
  %462 = lshr i32 %461, 4
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %464, i8* %465, align 1, !tbaa !2447
  %466 = icmp eq i32 %446, 0
  %467 = zext i1 %466 to i8
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %467, i8* %468, align 1, !tbaa !2448
  %469 = lshr i32 %446, 31
  %470 = trunc i32 %469 to i8
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %470, i8* %471, align 1, !tbaa !2449
  %472 = lshr i32 %445, 31
  %473 = xor i32 %469, %472
  %474 = add nuw nsw i32 %473, %469
  %475 = icmp eq i32 %474, 2
  %476 = zext i1 %475 to i8
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %476, i8* %477, align 1, !tbaa !2450
  %478 = load i64, i64* %RBP
  %479 = sub i64 %478, 32
  %480 = load i64, i64* %PC
  %481 = add i64 %480, 4
  store i64 %481, i64* %PC
  %482 = inttoptr i64 %479 to i64*
  %483 = load i64, i64* %482
  store i64 %483, i64* %RAX, align 8, !tbaa !2428
  %484 = load i64, i64* %RAX
  %485 = add i64 %484, 16
  %486 = load i32, i32* %EDX
  %487 = zext i32 %486 to i64
  %488 = load i64, i64* %PC
  %489 = add i64 %488, 3
  store i64 %489, i64* %PC
  %490 = inttoptr i64 %485 to i32*
  store i32 %486, i32* %490
  %491 = load i64, i64* %RBP
  %492 = sub i64 %491, 40
  %493 = load i64, i64* %PC
  %494 = add i64 %493, 4
  store i64 %494, i64* %PC
  %495 = inttoptr i64 %492 to i64*
  %496 = load i64, i64* %495
  store i64 %496, i64* %RDI, align 8, !tbaa !2428
  %497 = load i64, i64* %PC
  %498 = sub i64 %497, 957
  %499 = load i64, i64* %PC
  %500 = add i64 %499, 5
  %501 = load i64, i64* %PC
  %502 = add i64 %501, 5
  store i64 %502, i64* %PC
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %504 = load i64, i64* %503, align 8, !tbaa !2428
  %505 = add i64 %504, -8
  %506 = inttoptr i64 %505 to i64*
  store i64 %500, i64* %506
  store i64 %505, i64* %503, align 8, !tbaa !2428
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %498, i64* %507, align 8, !tbaa !2428
  %508 = load i64, i64* %PC
  %509 = call %struct.Memory* @sub_4009f0_qpkt_renamed_(%struct.State* %0, i64 %508, %struct.Memory* %MEMORY.1)
  %510 = load i64, i64* %RBP
  %511 = sub i64 %510, 8
  %512 = load i64, i64* %RAX
  %513 = load i64, i64* %PC
  %514 = add i64 %513, 4
  store i64 %514, i64* %PC
  %515 = inttoptr i64 %511 to i64*
  store i64 %512, i64* %515
  %516 = load i64, i64* %PC
  %517 = add i64 %516, 19
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 5
  store i64 %519, i64* %PC
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %517, i64* %520, align 8, !tbaa !2428
  br label %block_400dc9

block_400d06:                                     ; preds = %block_400cd7, %block_400cc0
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400cc0 ], [ %379, %block_400cd7 ]
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 9
  store i64 %522, i64* %PC
  %523 = load i64, i64* bitcast (%v1_type* @v1 to i64*)
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %524, align 1, !tbaa !2432
  %525 = trunc i64 %523 to i32
  %526 = and i32 %525, 255
  %527 = call i32 @llvm.ctpop.i32(i32 %526) #16
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  %530 = xor i8 %529, 1
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %530, i8* %531, align 1, !tbaa !2446
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %532, align 1, !tbaa !2447
  %533 = icmp eq i64 %523, 0
  %534 = zext i1 %533 to i8
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %534, i8* %535, align 1, !tbaa !2448
  %536 = lshr i64 %523, 63
  %537 = trunc i64 %536 to i8
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %537, i8* %538, align 1, !tbaa !2449
  %539 = lshr i64 %523, 63
  %540 = xor i64 %536, %539
  %541 = add nuw nsw i64 %540, %539
  %542 = icmp eq i64 %541, 2
  %543 = zext i1 %542 to i8
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %543, i8* %544, align 1, !tbaa !2450
  %545 = load i64, i64* %PC
  %546 = add i64 %545, 177
  %547 = load i64, i64* %PC
  %548 = add i64 %547, 6
  %549 = load i64, i64* %PC
  %550 = add i64 %549, 6
  store i64 %550, i64* %PC
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %552 = load i8, i8* %551, align 1, !tbaa !2448
  store i8 %552, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %554 = icmp ne i8 %552, 0
  %555 = select i1 %554, i64 %546, i64 %548
  store i64 %555, i64* %553, align 8, !tbaa !2428
  %556 = load i8, i8* %BRANCH_TAKEN
  %557 = icmp eq i8 %556, 1
  br i1 %557, label %block_400dc0, label %block_400d15

block_400dc0:                                     ; preds = %block_400d06, %block_400dbb
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_400d06 ], [ %MEMORY.1, %block_400dbb ]
  %558 = load i64, i64* %PC
  %559 = sub i64 %558, 1312
  %560 = load i64, i64* %PC
  %561 = add i64 %560, 5
  %562 = load i64, i64* %PC
  %563 = add i64 %562, 5
  store i64 %563, i64* %PC
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %565 = load i64, i64* %564, align 8, !tbaa !2428
  %566 = add i64 %565, -8
  %567 = inttoptr i64 %566 to i64*
  store i64 %561, i64* %567
  store i64 %566, i64* %564, align 8, !tbaa !2428
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %559, i64* %568, align 8, !tbaa !2428
  %569 = load i64, i64* %PC
  %570 = call %struct.Memory* @sub_4008a0_Wait_renamed_(%struct.State* %0, i64 %569, %struct.Memory* %MEMORY.2)
  %571 = load i64, i64* %RBP
  %572 = sub i64 %571, 8
  %573 = load i64, i64* %RAX
  %574 = load i64, i64* %PC
  %575 = add i64 %574, 4
  store i64 %575, i64* %PC
  %576 = inttoptr i64 %572 to i64*
  store i64 %573, i64* %576
  br label %block_400dc9

block_400d5a:                                     ; preds = %block_400d15
  %577 = add i64 %206, 9
  store i64 %577, i64* %PC
  %578 = load i64, i64* bitcast (%v2_type* @v2 to i64*)
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %579, align 1, !tbaa !2432
  %580 = trunc i64 %578 to i32
  %581 = and i32 %580, 255
  %582 = call i32 @llvm.ctpop.i32(i32 %581) #16
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = xor i8 %584, 1
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %585, i8* %586, align 1, !tbaa !2446
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %587, align 1, !tbaa !2447
  %588 = icmp eq i64 %578, 0
  %589 = zext i1 %588 to i8
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %589, i8* %590, align 1, !tbaa !2448
  %591 = lshr i64 %578, 63
  %592 = trunc i64 %591 to i8
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %592, i8* %593, align 1, !tbaa !2449
  %594 = lshr i64 %578, 63
  %595 = xor i64 %591, %594
  %596 = add nuw nsw i64 %595, %594
  %597 = icmp eq i64 %596, 2
  %598 = zext i1 %597 to i8
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %598, i8* %599, align 1, !tbaa !2450
  %600 = load i64, i64* %PC
  %601 = add i64 %600, 88
  %602 = load i64, i64* %PC
  %603 = add i64 %602, 6
  %604 = load i64, i64* %PC
  %605 = add i64 %604, 6
  store i64 %605, i64* %PC
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %607 = load i8, i8* %606, align 1, !tbaa !2448
  store i8 %607, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %609 = icmp ne i8 %607, 0
  %610 = select i1 %609, i64 %601, i64 %603
  store i64 %610, i64* %608, align 8, !tbaa !2428
  %611 = load i8, i8* %BRANCH_TAKEN
  %612 = icmp eq i8 %611, 1
  %613 = load i64, i64* %PC
  br i1 %612, label %block_400dbb, label %block_400d69
}

; Function Attrs: noinline
define %struct.Memory* @sub_400be0_workfn(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400be0:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %EAX = bitcast %union.anon* %12 to i32*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %ECX = bitcast %union.anon* %15 to i32*
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %RAX = bitcast %union.anon* %18 to i64*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %RCX = bitcast %union.anon* %21 to i64*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %RDX = bitcast %union.anon* %24 to i64*
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 11
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %RDI = bitcast %union.anon* %27 to i64*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.GPR, %struct.GPR* %28, i32 0, i32 13
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %29, i32 0, i32 0
  %RSP = bitcast %union.anon* %30 to i64*
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 15
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0
  %RBP = bitcast %union.anon* %33 to i64*
  %34 = load i64, i64* %RBP
  %35 = load i64, i64* %PC
  %36 = add i64 %35, 1
  store i64 %36, i64* %PC
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %38 = load i64, i64* %37, align 8, !tbaa !2428
  %39 = add i64 %38, -8
  %40 = inttoptr i64 %39 to i64*
  store i64 %34, i64* %40
  store i64 %39, i64* %37, align 8, !tbaa !2428
  %41 = load i64, i64* %RSP
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 3
  store i64 %43, i64* %PC
  store i64 %41, i64* %RBP, align 8, !tbaa !2428
  %44 = load i64, i64* %RSP
  %45 = load i64, i64* %PC
  %46 = add i64 %45, 4
  store i64 %46, i64* %PC
  %47 = sub i64 %44, 32
  store i64 %47, i64* %RSP, align 8, !tbaa !2428
  %48 = icmp ult i64 %44, 32
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %49, i8* %50, align 1, !tbaa !2432
  %51 = trunc i64 %47 to i32
  %52 = and i32 %51, 255
  %53 = call i32 @llvm.ctpop.i32(i32 %52) #16
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  %56 = xor i8 %55, 1
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %56, i8* %57, align 1, !tbaa !2446
  %58 = xor i64 32, %44
  %59 = xor i64 %58, %47
  %60 = lshr i64 %59, 4
  %61 = trunc i64 %60 to i8
  %62 = and i8 %61, 1
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %62, i8* %63, align 1, !tbaa !2447
  %64 = icmp eq i64 %47, 0
  %65 = zext i1 %64 to i8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %65, i8* %66, align 1, !tbaa !2448
  %67 = lshr i64 %47, 63
  %68 = trunc i64 %67 to i8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %68, i8* %69, align 1, !tbaa !2449
  %70 = lshr i64 %44, 63
  %71 = xor i64 %67, %70
  %72 = add nuw nsw i64 %71, %70
  %73 = icmp eq i64 %72, 2
  %74 = zext i1 %73 to i8
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %74, i8* %75, align 1, !tbaa !2450
  %76 = load i64, i64* %RBP
  %77 = sub i64 %76, 16
  %78 = load i64, i64* %RDI
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  %82 = load i64, i64* %RBP
  %83 = sub i64 %82, 16
  %84 = load i64, i64* %PC
  %85 = add i64 %84, 5
  store i64 %85, i64* %PC
  %86 = inttoptr i64 %83 to i64*
  %87 = load i64, i64* %86
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %88, align 1, !tbaa !2432
  %89 = trunc i64 %87 to i32
  %90 = and i32 %89, 255
  %91 = call i32 @llvm.ctpop.i32(i32 %90) #16
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  %94 = xor i8 %93, 1
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %94, i8* %95, align 1, !tbaa !2446
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %96, align 1, !tbaa !2447
  %97 = icmp eq i64 %87, 0
  %98 = zext i1 %97 to i8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %98, i8* %99, align 1, !tbaa !2448
  %100 = lshr i64 %87, 63
  %101 = trunc i64 %100 to i8
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %101, i8* %102, align 1, !tbaa !2449
  %103 = lshr i64 %87, 63
  %104 = xor i64 %100, %103
  %105 = add nuw nsw i64 %104, %103
  %106 = icmp eq i64 %105, 2
  %107 = zext i1 %106 to i8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %107, i8* %108, align 1, !tbaa !2450
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 20
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 6
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 6
  store i64 %114, i64* %PC
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %116 = load i8, i8* %115, align 1, !tbaa !2448
  %117 = icmp eq i8 %116, 0
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %120 = select i1 %117, i64 %110, i64 %112
  store i64 %120, i64* %119, align 8, !tbaa !2428
  %121 = load i8, i8* %BRANCH_TAKEN
  %122 = icmp eq i8 %121, 1
  %123 = load i64, i64* %PC
  br i1 %122, label %block_400c05, label %block_400bf7

block_400c3f:                                     ; preds = %block_400c05, %block_400c78
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400c05 ], [ %MEMORY.1, %block_400c78 ]
  %124 = load i64, i64* %RBP
  %125 = sub i64 %124, 20
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 4
  store i64 %127, i64* %PC
  %128 = inttoptr i64 %125 to i32*
  %129 = load i32, i32* %128
  %130 = sub i32 %129, 3
  %131 = icmp ult i32 %129, 3
  %132 = zext i1 %131 to i8
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %132, i8* %133, align 1, !tbaa !2432
  %134 = and i32 %130, 255
  %135 = call i32 @llvm.ctpop.i32(i32 %134) #16
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  %138 = xor i8 %137, 1
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %138, i8* %139, align 1, !tbaa !2446
  %140 = xor i32 %129, 3
  %141 = xor i32 %140, %130
  %142 = lshr i32 %141, 4
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %144, i8* %145, align 1, !tbaa !2447
  %146 = icmp eq i32 %130, 0
  %147 = zext i1 %146 to i8
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %147, i8* %148, align 1, !tbaa !2448
  %149 = lshr i32 %130, 31
  %150 = trunc i32 %149 to i8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %150, i8* %151, align 1, !tbaa !2449
  %152 = lshr i32 %129, 31
  %153 = xor i32 %149, %152
  %154 = add nuw nsw i32 %153, %152
  %155 = icmp eq i32 %154, 2
  %156 = zext i1 %155 to i8
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %156, i8* %157, align 1, !tbaa !2450
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 94
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 6
  %162 = load i64, i64* %PC
  %163 = add i64 %162, 6
  store i64 %163, i64* %PC
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %165 = load i8, i8* %164, align 1, !tbaa !2448
  %166 = icmp eq i8 %165, 0
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %168 = load i8, i8* %167, align 1, !tbaa !2449
  %169 = icmp ne i8 %168, 0
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %171 = load i8, i8* %170, align 1, !tbaa !2450
  %172 = icmp ne i8 %171, 0
  %173 = xor i1 %169, %172
  %174 = xor i1 %173, true
  %175 = and i1 %166, %174
  %176 = zext i1 %175 to i8
  store i8 %176, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %178 = select i1 %175, i64 %159, i64 %161
  store i64 %178, i64* %177, align 8, !tbaa !2428
  %179 = load i8, i8* %BRANCH_TAKEN
  %180 = icmp eq i8 %179, 1
  br i1 %180, label %block_400ca1, label %block_400c49

block_400bf7:                                     ; preds = %block_400be0
  %181 = sub i64 %123, 855
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 5
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 5
  store i64 %185, i64* %PC
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %187 = load i64, i64* %186, align 8, !tbaa !2428
  %188 = add i64 %187, -8
  %189 = inttoptr i64 %188 to i64*
  store i64 %183, i64* %189
  store i64 %188, i64* %186, align 8, !tbaa !2428
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %181, i64* %190, align 8, !tbaa !2428
  %191 = load i64, i64* %PC
  %192 = call %struct.Memory* @sub_4008a0_Wait_renamed_(%struct.State* %0, i64 %191, %struct.Memory* %2)
  %193 = load i64, i64* %RBP
  %194 = sub i64 %193, 8
  %195 = load i64, i64* %RAX
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 4
  store i64 %197, i64* %PC
  %198 = inttoptr i64 %194 to i64*
  store i64 %195, i64* %198
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 174
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 5
  store i64 %202, i64* %PC
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %200, i64* %203, align 8, !tbaa !2428
  br label %block_400cae

block_400c78:                                     ; preds = %block_400c49, %block_400c6c
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400c49 ], [ %MEMORY.0, %block_400c6c ]
  %204 = load i64, i64* %PC
  %205 = add i64 %204, 8
  store i64 %205, i64* %PC
  %206 = load i64, i64* bitcast (%v2_type* @v2 to i64*)
  store i64 %206, i64* %RAX, align 8, !tbaa !2428
  %207 = load i64, i64* %RAX
  %208 = add i64 %207, ptrtoint (%alphabet_type* @alphabet to i64)
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 7
  store i64 %210, i64* %PC
  %211 = inttoptr i64 %208 to i8*
  %212 = load i8, i8* %211
  store i8 %212, i8* %CL, align 1, !tbaa !2451
  %213 = load i64, i64* %RBP
  %214 = sub i64 %213, 16
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 4
  store i64 %216, i64* %PC
  %217 = inttoptr i64 %214 to i64*
  %218 = load i64, i64* %217
  store i64 %218, i64* %RAX, align 8, !tbaa !2428
  %219 = load i64, i64* %RBP
  %220 = sub i64 %219, 20
  %221 = load i64, i64* %PC
  %222 = add i64 %221, 4
  store i64 %222, i64* %PC
  %223 = inttoptr i64 %220 to i32*
  %224 = load i32, i32* %223
  %225 = sext i32 %224 to i64
  store i64 %225, i64* %RDX, align 8, !tbaa !2428
  %226 = load i64, i64* %RAX
  %227 = load i64, i64* %RDX
  %228 = add i64 %226, 20
  %229 = add i64 %228, %227
  %230 = load i8, i8* %CL
  %231 = zext i8 %230 to i64
  %232 = load i64, i64* %PC
  %233 = add i64 %232, 4
  store i64 %233, i64* %PC
  %234 = inttoptr i64 %229 to i8*
  store i8 %230, i8* %234
  %235 = load i64, i64* %RBP
  %236 = sub i64 %235, 20
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 3
  store i64 %238, i64* %PC
  %239 = inttoptr i64 %236 to i32*
  %240 = load i32, i32* %239
  %241 = zext i32 %240 to i64
  store i64 %241, i64* %RAX, align 8, !tbaa !2428
  %242 = load i64, i64* %RAX
  %243 = load i64, i64* %PC
  %244 = add i64 %243, 3
  store i64 %244, i64* %PC
  %245 = trunc i64 %242 to i32
  %246 = add i32 1, %245
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RAX, align 8, !tbaa !2428
  %248 = icmp ult i32 %246, %245
  %249 = icmp ult i32 %246, 1
  %250 = or i1 %248, %249
  %251 = zext i1 %250 to i8
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %251, i8* %252, align 1, !tbaa !2432
  %253 = and i32 %246, 255
  %254 = call i32 @llvm.ctpop.i32(i32 %253) #16
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  %257 = xor i8 %256, 1
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %257, i8* %258, align 1, !tbaa !2446
  %259 = xor i64 1, %242
  %260 = trunc i64 %259 to i32
  %261 = xor i32 %260, %246
  %262 = lshr i32 %261, 4
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %264, i8* %265, align 1, !tbaa !2447
  %266 = icmp eq i32 %246, 0
  %267 = zext i1 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %267, i8* %268, align 1, !tbaa !2448
  %269 = lshr i32 %246, 31
  %270 = trunc i32 %269 to i8
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %270, i8* %271, align 1, !tbaa !2449
  %272 = lshr i32 %245, 31
  %273 = xor i32 %269, %272
  %274 = add nuw nsw i32 %273, %269
  %275 = icmp eq i32 %274, 2
  %276 = zext i1 %275 to i8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %276, i8* %277, align 1, !tbaa !2450
  %278 = load i64, i64* %RBP
  %279 = sub i64 %278, 20
  %280 = load i32, i32* %EAX
  %281 = zext i32 %280 to i64
  %282 = load i64, i64* %PC
  %283 = add i64 %282, 3
  store i64 %283, i64* %PC
  %284 = inttoptr i64 %279 to i32*
  store i32 %280, i32* %284
  %285 = load i64, i64* %PC
  %286 = sub i64 %285, 93
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 5
  store i64 %288, i64* %PC
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %286, i64* %289, align 8, !tbaa !2428
  br label %block_400c3f

block_400cae:                                     ; preds = %block_400ca1, %block_400bf7
  %MEMORY.2 = phi %struct.Memory* [ %540, %block_400ca1 ], [ %192, %block_400bf7 ]
  %290 = load i64, i64* %RBP
  %291 = sub i64 %290, 8
  %292 = load i64, i64* %PC
  %293 = add i64 %292, 4
  store i64 %293, i64* %PC
  %294 = inttoptr i64 %291 to i64*
  %295 = load i64, i64* %294
  store i64 %295, i64* %RAX, align 8, !tbaa !2428
  %296 = load i64, i64* %RSP
  %297 = load i64, i64* %PC
  %298 = add i64 %297, 4
  store i64 %298, i64* %PC
  %299 = add i64 32, %296
  store i64 %299, i64* %RSP, align 8, !tbaa !2428
  %300 = icmp ult i64 %299, %296
  %301 = icmp ult i64 %299, 32
  %302 = or i1 %300, %301
  %303 = zext i1 %302 to i8
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %303, i8* %304, align 1, !tbaa !2432
  %305 = trunc i64 %299 to i32
  %306 = and i32 %305, 255
  %307 = call i32 @llvm.ctpop.i32(i32 %306) #16
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  %310 = xor i8 %309, 1
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %310, i8* %311, align 1, !tbaa !2446
  %312 = xor i64 32, %296
  %313 = xor i64 %312, %299
  %314 = lshr i64 %313, 4
  %315 = trunc i64 %314 to i8
  %316 = and i8 %315, 1
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %316, i8* %317, align 1, !tbaa !2447
  %318 = icmp eq i64 %299, 0
  %319 = zext i1 %318 to i8
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %319, i8* %320, align 1, !tbaa !2448
  %321 = lshr i64 %299, 63
  %322 = trunc i64 %321 to i8
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %322, i8* %323, align 1, !tbaa !2449
  %324 = lshr i64 %296, 63
  %325 = xor i64 %321, %324
  %326 = add nuw nsw i64 %325, %321
  %327 = icmp eq i64 %326, 2
  %328 = zext i1 %327 to i8
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %328, i8* %329, align 1, !tbaa !2450
  %330 = load i64, i64* %PC
  %331 = add i64 %330, 1
  store i64 %331, i64* %PC
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %333 = load i64, i64* %332, align 8, !tbaa !2428
  %334 = add i64 %333, 8
  %335 = inttoptr i64 %333 to i64*
  %336 = load i64, i64* %335
  store i64 %336, i64* %RBP, align 8, !tbaa !2428
  store i64 %334, i64* %332, align 8, !tbaa !2428
  %337 = load i64, i64* %PC
  %338 = add i64 %337, 1
  store i64 %338, i64* %PC
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %341 = load i64, i64* %340, align 8, !tbaa !2428
  %342 = inttoptr i64 %341 to i64*
  %343 = load i64, i64* %342
  store i64 %343, i64* %339, align 8, !tbaa !2428
  %344 = add i64 %341, 8
  store i64 %344, i64* %340, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.2

block_400c6c:                                     ; preds = %block_400c49
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 12
  store i64 %346, i64* %PC
  store i64 1, i64* bitcast (%v2_type* @v2 to i64*)
  br label %block_400c78

block_400c05:                                     ; preds = %block_400be0
  %347 = add i64 %123, 5
  store i64 %347, i64* %PC
  store i64 7, i64* %RAX, align 8, !tbaa !2428
  %348 = load i32, i32* %EAX
  %349 = zext i32 %348 to i64
  %350 = load i64, i64* %PC
  %351 = add i64 %350, 2
  store i64 %351, i64* %PC
  %352 = and i64 %349, 4294967295
  store i64 %352, i64* %RCX, align 8, !tbaa !2428
  %353 = load i64, i64* %RCX
  %354 = load i64, i64* %PC
  %355 = add i64 %354, 8
  store i64 %355, i64* %PC
  %356 = load i64, i64* bitcast (%v1_type* @v1 to i64*)
  %357 = sub i64 %353, %356
  store i64 %357, i64* %RCX, align 8, !tbaa !2428
  %358 = icmp ugt i64 %356, %353
  %359 = zext i1 %358 to i8
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %359, i8* %360, align 1, !tbaa !2432
  %361 = trunc i64 %357 to i32
  %362 = and i32 %361, 255
  %363 = call i32 @llvm.ctpop.i32(i32 %362) #16
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %366, i8* %367, align 1, !tbaa !2446
  %368 = xor i64 %356, %353
  %369 = xor i64 %368, %357
  %370 = lshr i64 %369, 4
  %371 = trunc i64 %370 to i8
  %372 = and i8 %371, 1
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %372, i8* %373, align 1, !tbaa !2447
  %374 = icmp eq i64 %357, 0
  %375 = zext i1 %374 to i8
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %375, i8* %376, align 1, !tbaa !2448
  %377 = lshr i64 %357, 63
  %378 = trunc i64 %377 to i8
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %378, i8* %379, align 1, !tbaa !2449
  %380 = lshr i64 %353, 63
  %381 = lshr i64 %356, 63
  %382 = xor i64 %381, %380
  %383 = xor i64 %377, %380
  %384 = add nuw nsw i64 %383, %382
  %385 = icmp eq i64 %384, 2
  %386 = zext i1 %385 to i8
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %386, i8* %387, align 1, !tbaa !2450
  %388 = load i64, i64* %RCX
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 8
  store i64 %390, i64* %PC
  store i64 %388, i64* bitcast (%v1_type* @v1 to i64*)
  %391 = load i64, i64* %PC
  %392 = add i64 %391, 8
  store i64 %392, i64* %PC
  %393 = load i64, i64* bitcast (%v1_type* @v1 to i64*)
  store i64 %393, i64* %RCX, align 8, !tbaa !2428
  %394 = load i32, i32* %ECX
  %395 = zext i32 %394 to i64
  %396 = load i64, i64* %PC
  %397 = add i64 %396, 2
  store i64 %397, i64* %PC
  %398 = and i64 %395, 4294967295
  store i64 %398, i64* %RAX, align 8, !tbaa !2428
  %399 = load i64, i64* %RBP
  %400 = sub i64 %399, 16
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 4
  store i64 %402, i64* %PC
  %403 = inttoptr i64 %400 to i64*
  %404 = load i64, i64* %403
  store i64 %404, i64* %RCX, align 8, !tbaa !2428
  %405 = load i64, i64* %RCX
  %406 = add i64 %405, 8
  %407 = load i32, i32* %EAX
  %408 = zext i32 %407 to i64
  %409 = load i64, i64* %PC
  %410 = add i64 %409, 3
  store i64 %410, i64* %PC
  %411 = inttoptr i64 %406 to i32*
  store i32 %407, i32* %411
  %412 = load i64, i64* %RBP
  %413 = sub i64 %412, 16
  %414 = load i64, i64* %PC
  %415 = add i64 %414, 4
  store i64 %415, i64* %PC
  %416 = inttoptr i64 %413 to i64*
  %417 = load i64, i64* %416
  store i64 %417, i64* %RCX, align 8, !tbaa !2428
  %418 = load i64, i64* %RCX
  %419 = add i64 %418, 16
  %420 = load i64, i64* %PC
  %421 = add i64 %420, 7
  store i64 %421, i64* %PC
  %422 = inttoptr i64 %419 to i32*
  store i32 0, i32* %422
  %423 = load i64, i64* %RBP
  %424 = sub i64 %423, 20
  %425 = load i64, i64* %PC
  %426 = add i64 %425, 7
  store i64 %426, i64* %PC
  %427 = inttoptr i64 %424 to i32*
  store i32 0, i32* %427
  br label %block_400c3f

block_400c49:                                     ; preds = %block_400c3f
  %428 = load i64, i64* %PC
  %429 = add i64 %428, 8
  store i64 %429, i64* %PC
  %430 = load i64, i64* bitcast (%v2_type* @v2 to i64*)
  store i64 %430, i64* %RAX, align 8, !tbaa !2428
  %431 = load i64, i64* %RAX
  %432 = load i64, i64* %PC
  %433 = add i64 %432, 4
  store i64 %433, i64* %PC
  %434 = add i64 1, %431
  store i64 %434, i64* %RAX, align 8, !tbaa !2428
  %435 = icmp ult i64 %434, %431
  %436 = icmp ult i64 %434, 1
  %437 = or i1 %435, %436
  %438 = zext i1 %437 to i8
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %438, i8* %439, align 1, !tbaa !2432
  %440 = trunc i64 %434 to i32
  %441 = and i32 %440, 255
  %442 = call i32 @llvm.ctpop.i32(i32 %441) #16
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %445, i8* %446, align 1, !tbaa !2446
  %447 = xor i64 1, %431
  %448 = xor i64 %447, %434
  %449 = lshr i64 %448, 4
  %450 = trunc i64 %449 to i8
  %451 = and i8 %450, 1
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %451, i8* %452, align 1, !tbaa !2447
  %453 = icmp eq i64 %434, 0
  %454 = zext i1 %453 to i8
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %454, i8* %455, align 1, !tbaa !2448
  %456 = lshr i64 %434, 63
  %457 = trunc i64 %456 to i8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %457, i8* %458, align 1, !tbaa !2449
  %459 = lshr i64 %431, 63
  %460 = xor i64 %456, %459
  %461 = add nuw nsw i64 %460, %456
  %462 = icmp eq i64 %461, 2
  %463 = zext i1 %462 to i8
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %463, i8* %464, align 1, !tbaa !2450
  %465 = load i64, i64* %RAX
  %466 = load i64, i64* %PC
  %467 = add i64 %466, 8
  store i64 %467, i64* %PC
  store i64 %465, i64* bitcast (%v2_type* @v2 to i64*)
  %468 = load i64, i64* %PC
  %469 = add i64 %468, 9
  store i64 %469, i64* %PC
  %470 = load i64, i64* bitcast (%v2_type* @v2 to i64*)
  %471 = sub i64 %470, 26
  %472 = icmp ult i64 %470, 26
  %473 = zext i1 %472 to i8
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %473, i8* %474, align 1, !tbaa !2432
  %475 = trunc i64 %471 to i32
  %476 = and i32 %475, 255
  %477 = call i32 @llvm.ctpop.i32(i32 %476) #16
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = xor i8 %479, 1
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %480, i8* %481, align 1, !tbaa !2446
  %482 = xor i64 %470, 26
  %483 = xor i64 %482, %471
  %484 = lshr i64 %483, 4
  %485 = trunc i64 %484 to i8
  %486 = and i8 %485, 1
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %486, i8* %487, align 1, !tbaa !2447
  %488 = icmp eq i64 %471, 0
  %489 = zext i1 %488 to i8
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %489, i8* %490, align 1, !tbaa !2448
  %491 = lshr i64 %471, 63
  %492 = trunc i64 %491 to i8
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %492, i8* %493, align 1, !tbaa !2449
  %494 = lshr i64 %470, 63
  %495 = xor i64 %491, %494
  %496 = add nuw nsw i64 %495, %494
  %497 = icmp eq i64 %496, 2
  %498 = zext i1 %497 to i8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %498, i8* %499, align 1, !tbaa !2450
  %500 = load i64, i64* %PC
  %501 = add i64 %500, 18
  %502 = load i64, i64* %PC
  %503 = add i64 %502, 6
  %504 = load i64, i64* %PC
  %505 = add i64 %504, 6
  store i64 %505, i64* %PC
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %507 = load i8, i8* %506, align 1, !tbaa !2448
  %508 = icmp ne i8 %507, 0
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %510 = load i8, i8* %509, align 1, !tbaa !2449
  %511 = icmp ne i8 %510, 0
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %513 = load i8, i8* %512, align 1, !tbaa !2450
  %514 = icmp ne i8 %513, 0
  %515 = xor i1 %511, %514
  %516 = or i1 %508, %515
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %519 = select i1 %516, i64 %501, i64 %503
  store i64 %519, i64* %518, align 8, !tbaa !2428
  %520 = load i8, i8* %BRANCH_TAKEN
  %521 = icmp eq i8 %520, 1
  br i1 %521, label %block_400c78, label %block_400c6c

block_400ca1:                                     ; preds = %block_400c3f
  %522 = load i64, i64* %RBP
  %523 = sub i64 %522, 16
  %524 = load i64, i64* %PC
  %525 = add i64 %524, 4
  store i64 %525, i64* %PC
  %526 = inttoptr i64 %523 to i64*
  %527 = load i64, i64* %526
  store i64 %527, i64* %RDI, align 8, !tbaa !2428
  %528 = load i64, i64* %PC
  %529 = sub i64 %528, 693
  %530 = load i64, i64* %PC
  %531 = add i64 %530, 5
  %532 = load i64, i64* %PC
  %533 = add i64 %532, 5
  store i64 %533, i64* %PC
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %535 = load i64, i64* %534, align 8, !tbaa !2428
  %536 = add i64 %535, -8
  %537 = inttoptr i64 %536 to i64*
  store i64 %531, i64* %537
  store i64 %536, i64* %534, align 8, !tbaa !2428
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %529, i64* %538, align 8, !tbaa !2428
  %539 = load i64, i64* %PC
  %540 = call %struct.Memory* @sub_4009f0_qpkt_renamed_(%struct.State* %0, i64 %539, %struct.Memory* %MEMORY.0)
  %541 = load i64, i64* %RBP
  %542 = sub i64 %541, 8
  %543 = load i64, i64* %RAX
  %544 = load i64, i64* %PC
  %545 = add i64 %544, 4
  store i64 %545, i64* %PC
  %546 = inttoptr i64 %542 to i64*
  store i64 %543, i64* %546
  br label %block_400cae
}

; Function Attrs: noinline
define %struct.Memory* @sub_400480__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400480:
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
define %struct.Memory* @sub_400540_createtask(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400540:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %EDI = bitcast %union.anon* %14 to i32*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 21
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %R10D = bitcast %union.anon* %17 to i32*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 23
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %R11D = bitcast %union.anon* %20 to i32*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RAX = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RCX = bitcast %union.anon* %26 to i64*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 7
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RDX = bitcast %union.anon* %29 to i64*
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
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 17
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %R8 = bitcast %union.anon* %41 to i64*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 19
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %R9 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 23
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R11 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %RBP
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 1
  store i64 %50, i64* %PC
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8, !tbaa !2428
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %48, i64* %54
  store i64 %53, i64* %51, align 8, !tbaa !2428
  %55 = load i64, i64* %RSP
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 3
  store i64 %57, i64* %PC
  store i64 %55, i64* %RBP, align 8, !tbaa !2428
  %58 = load i64, i64* %RSP
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 4
  store i64 %60, i64* %PC
  %61 = sub i64 %58, 64
  store i64 %61, i64* %RSP, align 8, !tbaa !2428
  %62 = icmp ult i64 %58, 64
  %63 = zext i1 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %63, i8* %64, align 1, !tbaa !2432
  %65 = trunc i64 %61 to i32
  %66 = and i32 %65, 255
  %67 = call i32 @llvm.ctpop.i32(i32 %66) #16
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 1
  %70 = xor i8 %69, 1
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %70, i8* %71, align 1, !tbaa !2446
  %72 = xor i64 64, %58
  %73 = xor i64 %72, %61
  %74 = lshr i64 %73, 4
  %75 = trunc i64 %74 to i8
  %76 = and i8 %75, 1
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %76, i8* %77, align 1, !tbaa !2447
  %78 = icmp eq i64 %61, 0
  %79 = zext i1 %78 to i8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %79, i8* %80, align 1, !tbaa !2448
  %81 = lshr i64 %61, 63
  %82 = trunc i64 %81 to i8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %82, i8* %83, align 1, !tbaa !2449
  %84 = lshr i64 %58, 63
  %85 = xor i64 %81, %84
  %86 = add nuw nsw i64 %85, %84
  %87 = icmp eq i64 %86, 2
  %88 = zext i1 %87 to i8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %88, i8* %89, align 1, !tbaa !2450
  %90 = load i64, i64* %RBP
  %91 = add i64 %90, 16
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 4
  store i64 %93, i64* %PC
  %94 = inttoptr i64 %91 to i64*
  %95 = load i64, i64* %94
  store i64 %95, i64* %RAX, align 8, !tbaa !2428
  %96 = bitcast i32* %R10D to i64*
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 6
  store i64 %98, i64* %PC
  store i64 56, i64* %96, align 8, !tbaa !2428
  %99 = bitcast i32* %R11D to i64*
  %100 = load i32, i32* %R10D
  %101 = zext i32 %100 to i64
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 3
  store i64 %103, i64* %PC
  %104 = and i64 %101, 4294967295
  store i64 %104, i64* %99, align 8, !tbaa !2428
  %105 = load i64, i64* %RBP
  %106 = sub i64 %105, 4
  %107 = load i32, i32* %EDI
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 3
  store i64 %110, i64* %PC
  %111 = inttoptr i64 %106 to i32*
  store i32 %107, i32* %111
  %112 = load i64, i64* %RBP
  %113 = sub i64 %112, 8
  %114 = load i32, i32* %ESI
  %115 = zext i32 %114 to i64
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 3
  store i64 %117, i64* %PC
  %118 = inttoptr i64 %113 to i32*
  store i32 %114, i32* %118
  %119 = load i64, i64* %RBP
  %120 = sub i64 %119, 16
  %121 = load i64, i64* %RDX
  %122 = load i64, i64* %PC
  %123 = add i64 %122, 4
  store i64 %123, i64* %PC
  %124 = inttoptr i64 %120 to i64*
  store i64 %121, i64* %124
  %125 = load i64, i64* %RBP
  %126 = sub i64 %125, 20
  %127 = load i32, i32* %ECX
  %128 = zext i32 %127 to i64
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 3
  store i64 %130, i64* %PC
  %131 = inttoptr i64 %126 to i32*
  store i32 %127, i32* %131
  %132 = load i64, i64* %RBP
  %133 = sub i64 %132, 32
  %134 = load i64, i64* %R8
  %135 = load i64, i64* %PC
  %136 = add i64 %135, 4
  store i64 %136, i64* %PC
  %137 = inttoptr i64 %133 to i64*
  store i64 %134, i64* %137
  %138 = load i64, i64* %RBP
  %139 = sub i64 %138, 40
  %140 = load i64, i64* %R9
  %141 = load i64, i64* %PC
  %142 = add i64 %141, 4
  store i64 %142, i64* %PC
  %143 = inttoptr i64 %139 to i64*
  store i64 %140, i64* %143
  %144 = load i64, i64* %R11
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 3
  store i64 %146, i64* %PC
  store i64 %144, i64* %RDI, align 8, !tbaa !2428
  %147 = load i64, i64* %RBP
  %148 = sub i64 %147, 56
  %149 = load i64, i64* %RAX
  %150 = load i64, i64* %PC
  %151 = add i64 %150, 4
  store i64 %151, i64* %PC
  %152 = inttoptr i64 %148 to i64*
  store i64 %149, i64* %152
  %153 = load i64, i64* %PC
  %154 = sub i64 %153, 305
  %155 = load i64, i64* %PC
  %156 = add i64 %155, 5
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 5
  store i64 %158, i64* %PC
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %160 = load i64, i64* %159, align 8, !tbaa !2428
  %161 = add i64 %160, -8
  %162 = inttoptr i64 %161 to i64*
  store i64 %156, i64* %162
  store i64 %161, i64* %159, align 8, !tbaa !2428
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %154, i64* %163, align 8, !tbaa !2428
  %164 = load i64, i64* %PC
  %165 = call %struct.Memory* @ext_602128_malloc(%struct.State* %0, i64 %164, %struct.Memory* %2)
  %166 = load i64, i64* %RBP
  %167 = sub i64 %166, 48
  %168 = load i64, i64* %RAX
  %169 = load i64, i64* %PC
  %170 = add i64 %169, 4
  store i64 %170, i64* %PC
  %171 = inttoptr i64 %167 to i64*
  store i64 %168, i64* %171
  %172 = load i64, i64* %RBP
  %173 = sub i64 %172, 48
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 4
  store i64 %175, i64* %PC
  %176 = inttoptr i64 %173 to i64*
  %177 = load i64, i64* %176
  store i64 %177, i64* %RAX, align 8, !tbaa !2428
  %178 = load i64, i64* %RBP
  %179 = sub i64 %178, 4
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 4
  store i64 %181, i64* %PC
  %182 = inttoptr i64 %179 to i32*
  %183 = load i32, i32* %182
  %184 = sext i32 %183 to i64
  store i64 %184, i64* %RDX, align 8, !tbaa !2428
  %185 = load i64, i64* %RDX
  %186 = mul i64 %185, 8
  %187 = add i64 %186, ptrtoint (%tasktab_type* @tasktab to i64)
  %188 = load i64, i64* %RAX
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 8
  store i64 %190, i64* %PC
  %191 = inttoptr i64 %187 to i64*
  store i64 %188, i64* %191
  %192 = load i64, i64* %PC
  %193 = add i64 %192, 8
  store i64 %193, i64* %PC
  %194 = load i64, i64* bitcast (%tasklist_type* @tasklist to i64*)
  store i64 %194, i64* %RAX, align 8, !tbaa !2428
  %195 = load i64, i64* %RBP
  %196 = sub i64 %195, 48
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 4
  store i64 %198, i64* %PC
  %199 = inttoptr i64 %196 to i64*
  %200 = load i64, i64* %199
  store i64 %200, i64* %RDX, align 8, !tbaa !2428
  %201 = load i64, i64* %RDX
  %202 = load i64, i64* %RAX
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC
  %205 = inttoptr i64 %201 to i64*
  store i64 %202, i64* %205
  %206 = load i64, i64* %RBP
  %207 = sub i64 %206, 4
  %208 = load i64, i64* %PC
  %209 = add i64 %208, 3
  store i64 %209, i64* %PC
  %210 = inttoptr i64 %207 to i32*
  %211 = load i32, i32* %210
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %RCX, align 8, !tbaa !2428
  %213 = load i64, i64* %RBP
  %214 = sub i64 %213, 48
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 4
  store i64 %216, i64* %PC
  %217 = inttoptr i64 %214 to i64*
  %218 = load i64, i64* %217
  store i64 %218, i64* %RAX, align 8, !tbaa !2428
  %219 = load i64, i64* %RAX
  %220 = add i64 %219, 8
  %221 = load i32, i32* %ECX
  %222 = zext i32 %221 to i64
  %223 = load i64, i64* %PC
  %224 = add i64 %223, 3
  store i64 %224, i64* %PC
  %225 = inttoptr i64 %220 to i32*
  store i32 %221, i32* %225
  %226 = load i64, i64* %RBP
  %227 = sub i64 %226, 8
  %228 = load i64, i64* %PC
  %229 = add i64 %228, 3
  store i64 %229, i64* %PC
  %230 = inttoptr i64 %227 to i32*
  %231 = load i32, i32* %230
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %RCX, align 8, !tbaa !2428
  %233 = load i64, i64* %RBP
  %234 = sub i64 %233, 48
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 4
  store i64 %236, i64* %PC
  %237 = inttoptr i64 %234 to i64*
  %238 = load i64, i64* %237
  store i64 %238, i64* %RAX, align 8, !tbaa !2428
  %239 = load i64, i64* %RAX
  %240 = add i64 %239, 12
  %241 = load i32, i32* %ECX
  %242 = zext i32 %241 to i64
  %243 = load i64, i64* %PC
  %244 = add i64 %243, 3
  store i64 %244, i64* %PC
  %245 = inttoptr i64 %240 to i32*
  store i32 %241, i32* %245
  %246 = load i64, i64* %RBP
  %247 = sub i64 %246, 16
  %248 = load i64, i64* %PC
  %249 = add i64 %248, 4
  store i64 %249, i64* %PC
  %250 = inttoptr i64 %247 to i64*
  %251 = load i64, i64* %250
  store i64 %251, i64* %RAX, align 8, !tbaa !2428
  %252 = load i64, i64* %RBP
  %253 = sub i64 %252, 48
  %254 = load i64, i64* %PC
  %255 = add i64 %254, 4
  store i64 %255, i64* %PC
  %256 = inttoptr i64 %253 to i64*
  %257 = load i64, i64* %256
  store i64 %257, i64* %RDX, align 8, !tbaa !2428
  %258 = load i64, i64* %RDX
  %259 = add i64 %258, 16
  %260 = load i64, i64* %RAX
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 4
  store i64 %262, i64* %PC
  %263 = inttoptr i64 %259 to i64*
  store i64 %260, i64* %263
  %264 = load i64, i64* %RBP
  %265 = sub i64 %264, 20
  %266 = load i64, i64* %PC
  %267 = add i64 %266, 3
  store i64 %267, i64* %PC
  %268 = inttoptr i64 %265 to i32*
  %269 = load i32, i32* %268
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RCX, align 8, !tbaa !2428
  %271 = load i64, i64* %RBP
  %272 = sub i64 %271, 48
  %273 = load i64, i64* %PC
  %274 = add i64 %273, 4
  store i64 %274, i64* %PC
  %275 = inttoptr i64 %272 to i64*
  %276 = load i64, i64* %275
  store i64 %276, i64* %RAX, align 8, !tbaa !2428
  %277 = load i64, i64* %RAX
  %278 = add i64 %277, 24
  %279 = load i32, i32* %ECX
  %280 = zext i32 %279 to i64
  %281 = load i64, i64* %PC
  %282 = add i64 %281, 3
  store i64 %282, i64* %PC
  %283 = inttoptr i64 %278 to i32*
  store i32 %279, i32* %283
  %284 = load i64, i64* %RBP
  %285 = sub i64 %284, 32
  %286 = load i64, i64* %PC
  %287 = add i64 %286, 4
  store i64 %287, i64* %PC
  %288 = inttoptr i64 %285 to i64*
  %289 = load i64, i64* %288
  store i64 %289, i64* %RAX, align 8, !tbaa !2428
  %290 = load i64, i64* %RBP
  %291 = sub i64 %290, 48
  %292 = load i64, i64* %PC
  %293 = add i64 %292, 4
  store i64 %293, i64* %PC
  %294 = inttoptr i64 %291 to i64*
  %295 = load i64, i64* %294
  store i64 %295, i64* %RDX, align 8, !tbaa !2428
  %296 = load i64, i64* %RDX
  %297 = add i64 %296, 32
  %298 = load i64, i64* %RAX
  %299 = load i64, i64* %PC
  %300 = add i64 %299, 4
  store i64 %300, i64* %PC
  %301 = inttoptr i64 %297 to i64*
  store i64 %298, i64* %301
  %302 = load i64, i64* %RBP
  %303 = sub i64 %302, 40
  %304 = load i64, i64* %PC
  %305 = add i64 %304, 4
  store i64 %305, i64* %PC
  %306 = inttoptr i64 %303 to i64*
  %307 = load i64, i64* %306
  store i64 %307, i64* %RAX, align 8, !tbaa !2428
  %308 = load i64, i64* %RBP
  %309 = sub i64 %308, 48
  %310 = load i64, i64* %PC
  %311 = add i64 %310, 4
  store i64 %311, i64* %PC
  %312 = inttoptr i64 %309 to i64*
  %313 = load i64, i64* %312
  store i64 %313, i64* %RDX, align 8, !tbaa !2428
  %314 = load i64, i64* %RDX
  %315 = add i64 %314, 40
  %316 = load i64, i64* %RAX
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 4
  store i64 %318, i64* %PC
  %319 = inttoptr i64 %315 to i64*
  store i64 %316, i64* %319
  %320 = load i64, i64* %RBP
  %321 = add i64 %320, 16
  %322 = load i64, i64* %PC
  %323 = add i64 %322, 4
  store i64 %323, i64* %PC
  %324 = inttoptr i64 %321 to i64*
  %325 = load i64, i64* %324
  store i64 %325, i64* %RAX, align 8, !tbaa !2428
  %326 = load i64, i64* %RBP
  %327 = sub i64 %326, 48
  %328 = load i64, i64* %PC
  %329 = add i64 %328, 4
  store i64 %329, i64* %PC
  %330 = inttoptr i64 %327 to i64*
  %331 = load i64, i64* %330
  store i64 %331, i64* %RDX, align 8, !tbaa !2428
  %332 = load i64, i64* %RDX
  %333 = add i64 %332, 48
  %334 = load i64, i64* %RAX
  %335 = load i64, i64* %PC
  %336 = add i64 %335, 4
  store i64 %336, i64* %PC
  %337 = inttoptr i64 %333 to i64*
  store i64 %334, i64* %337
  %338 = load i64, i64* %RBP
  %339 = sub i64 %338, 48
  %340 = load i64, i64* %PC
  %341 = add i64 %340, 4
  store i64 %341, i64* %PC
  %342 = inttoptr i64 %339 to i64*
  %343 = load i64, i64* %342
  store i64 %343, i64* %RAX, align 8, !tbaa !2428
  %344 = load i64, i64* %RAX
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 8
  store i64 %346, i64* %PC
  store i64 %344, i64* bitcast (%tasklist_type* @tasklist to i64*)
  %347 = load i64, i64* %RSP
  %348 = load i64, i64* %PC
  %349 = add i64 %348, 4
  store i64 %349, i64* %PC
  %350 = add i64 64, %347
  store i64 %350, i64* %RSP, align 8, !tbaa !2428
  %351 = icmp ult i64 %350, %347
  %352 = icmp ult i64 %350, 64
  %353 = or i1 %351, %352
  %354 = zext i1 %353 to i8
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %354, i8* %355, align 1, !tbaa !2432
  %356 = trunc i64 %350 to i32
  %357 = and i32 %356, 255
  %358 = call i32 @llvm.ctpop.i32(i32 %357) #16
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  %361 = xor i8 %360, 1
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %361, i8* %362, align 1, !tbaa !2446
  %363 = xor i64 64, %347
  %364 = xor i64 %363, %350
  %365 = lshr i64 %364, 4
  %366 = trunc i64 %365 to i8
  %367 = and i8 %366, 1
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %367, i8* %368, align 1, !tbaa !2447
  %369 = icmp eq i64 %350, 0
  %370 = zext i1 %369 to i8
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %370, i8* %371, align 1, !tbaa !2448
  %372 = lshr i64 %350, 63
  %373 = trunc i64 %372 to i8
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %373, i8* %374, align 1, !tbaa !2449
  %375 = lshr i64 %347, 63
  %376 = xor i64 %372, %375
  %377 = add nuw nsw i64 %376, %372
  %378 = icmp eq i64 %377, 2
  %379 = zext i1 %378 to i8
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %379, i8* %380, align 1, !tbaa !2450
  %381 = load i64, i64* %PC
  %382 = add i64 %381, 1
  store i64 %382, i64* %PC
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %384 = load i64, i64* %383, align 8, !tbaa !2428
  %385 = add i64 %384, 8
  %386 = inttoptr i64 %384 to i64*
  %387 = load i64, i64* %386
  store i64 %387, i64* %RBP, align 8, !tbaa !2428
  store i64 %385, i64* %383, align 8, !tbaa !2428
  %388 = load i64, i64* %PC
  %389 = add i64 %388, 1
  store i64 %389, i64* %PC
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %392 = load i64, i64* %391, align 8, !tbaa !2428
  %393 = inttoptr i64 %392 to i64*
  %394 = load i64, i64* %393
  store i64 %394, i64* %390, align 8, !tbaa !2428
  %395 = add i64 %392, 8
  store i64 %395, i64* %391, align 8, !tbaa !2428
  ret %struct.Memory* %165
}

; Function Attrs: noinline
define %struct.Memory* @sub_400e80_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400e80:
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
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 9
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %ESI = bitcast %union.anon* %21 to i32*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 19
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %R9D = bitcast %union.anon* %24 to i32*
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 21
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %R10D = bitcast %union.anon* %27 to i32*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.GPR, %struct.GPR* %28, i32 0, i32 23
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %29, i32 0, i32 0
  %R11D = bitcast %union.anon* %30 to i32*
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0
  %RAX = bitcast %union.anon* %33 to i64*
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %35 = getelementptr inbounds %struct.GPR, %struct.GPR* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.Reg, %struct.Reg* %35, i32 0, i32 0
  %RCX = bitcast %union.anon* %36 to i64*
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %38 = getelementptr inbounds %struct.GPR, %struct.GPR* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.Reg, %struct.Reg* %38, i32 0, i32 0
  %RDX = bitcast %union.anon* %39 to i64*
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %41 = getelementptr inbounds %struct.GPR, %struct.GPR* %40, i32 0, i32 9
  %42 = getelementptr inbounds %struct.Reg, %struct.Reg* %41, i32 0, i32 0
  %RSI = bitcast %union.anon* %42 to i64*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 11
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0
  %RDI = bitcast %union.anon* %45 to i64*
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %47 = getelementptr inbounds %struct.GPR, %struct.GPR* %46, i32 0, i32 13
  %48 = getelementptr inbounds %struct.Reg, %struct.Reg* %47, i32 0, i32 0
  %RSP = bitcast %union.anon* %48 to i64*
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %50 = getelementptr inbounds %struct.GPR, %struct.GPR* %49, i32 0, i32 15
  %51 = getelementptr inbounds %struct.Reg, %struct.Reg* %50, i32 0, i32 0
  %RBP = bitcast %union.anon* %51 to i64*
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %53 = getelementptr inbounds %struct.GPR, %struct.GPR* %52, i32 0, i32 17
  %54 = getelementptr inbounds %struct.Reg, %struct.Reg* %53, i32 0, i32 0
  %R8 = bitcast %union.anon* %54 to i64*
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 21
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %R10 = bitcast %union.anon* %57 to i64*
  %58 = load i64, i64* %RBP
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 1
  store i64 %60, i64* %PC
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %62 = load i64, i64* %61, align 8, !tbaa !2428
  %63 = add i64 %62, -8
  %64 = inttoptr i64 %63 to i64*
  store i64 %58, i64* %64
  store i64 %63, i64* %61, align 8, !tbaa !2428
  %65 = load i64, i64* %RSP
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 3
  store i64 %67, i64* %PC
  store i64 %65, i64* %RBP, align 8, !tbaa !2428
  %68 = load i64, i64* %RSP
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 4
  store i64 %70, i64* %PC
  %71 = sub i64 %68, 96
  store i64 %71, i64* %RSP, align 8, !tbaa !2428
  %72 = icmp ult i64 %68, 96
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %73, i8* %74, align 1, !tbaa !2432
  %75 = trunc i64 %71 to i32
  %76 = and i32 %75, 255
  %77 = call i32 @llvm.ctpop.i32(i32 %76) #16
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  %80 = xor i8 %79, 1
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %80, i8* %81, align 1, !tbaa !2446
  %82 = xor i64 96, %68
  %83 = xor i64 %82, %71
  %84 = lshr i64 %83, 4
  %85 = trunc i64 %84 to i8
  %86 = and i8 %85, 1
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %86, i8* %87, align 1, !tbaa !2447
  %88 = icmp eq i64 %71, 0
  %89 = zext i1 %88 to i8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %89, i8* %90, align 1, !tbaa !2448
  %91 = lshr i64 %71, 63
  %92 = trunc i64 %91 to i8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %92, i8* %93, align 1, !tbaa !2449
  %94 = lshr i64 %68, 63
  %95 = xor i64 %91, %94
  %96 = add nuw nsw i64 %95, %94
  %97 = icmp eq i64 %96, 2
  %98 = zext i1 %97 to i8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %98, i8* %99, align 1, !tbaa !2450
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 10
  store i64 %101, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401230__rodata_type* @seg_401230__rodata to i64), i64 24), i64* %RDI, align 8, !tbaa !2428
  %102 = load i64, i64* %RBP
  %103 = sub i64 %102, 4
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 7
  store i64 %105, i64* %PC
  %106 = inttoptr i64 %103 to i32*
  store i32 0, i32* %106
  %107 = load i64, i64* %RBP
  %108 = sub i64 %107, 16
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 8
  store i64 %110, i64* %PC
  %111 = inttoptr i64 %108 to i64*
  store i64 0, i64* %111
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 2
  store i64 %113, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %114 = load i64, i64* %PC
  %115 = sub i64 %114, 2675
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 5
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 5
  store i64 %119, i64* %PC
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %121 = load i64, i64* %120, align 8, !tbaa !2428
  %122 = add i64 %121, -8
  %123 = inttoptr i64 %122 to i64*
  store i64 %117, i64* %123
  store i64 %122, i64* %120, align 8, !tbaa !2428
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %115, i64* %124, align 8, !tbaa !2428
  %125 = load i64, i64* %PC
  %126 = call %struct.Memory* @ext_602118_printf(%struct.State* %0, i64 %125, %struct.Memory* %2)
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 5
  store i64 %128, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %129 = load i64, i64* %RCX
  %130 = load i32, i32* %ECX
  %131 = zext i32 %130 to i64
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 2
  store i64 %133, i64* %PC
  %134 = xor i64 %131, %129
  %135 = trunc i64 %134 to i32
  %136 = and i64 %134, 4294967295
  store i64 %136, i64* %RCX, align 8, !tbaa !2428
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %137, align 1, !tbaa !2432
  %138 = and i32 %135, 255
  %139 = call i32 @llvm.ctpop.i32(i32 %138) #16
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %142, i8* %143, align 1, !tbaa !2446
  %144 = icmp eq i32 %135, 0
  %145 = zext i1 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %145, i8* %146, align 1, !tbaa !2448
  %147 = lshr i32 %135, 31
  %148 = trunc i32 %147 to i8
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %148, i8* %149, align 1, !tbaa !2449
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %150, align 1, !tbaa !2450
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %151, align 1, !tbaa !2447
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 10
  store i64 %153, i64* %PC
  store i64 ptrtoint (void ()* @idlefn to i64), i64* %R8, align 8, !tbaa !2428
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 5
  store i64 %155, i64* %PC
  store i64 1, i64* %RDX, align 8, !tbaa !2428
  %156 = bitcast i32* %R9D to i64*
  %157 = load i32, i32* %EDX
  %158 = zext i32 %157 to i64
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 3
  store i64 %160, i64* %PC
  %161 = and i64 %158, 4294967295
  store i64 %161, i64* %156, align 8, !tbaa !2428
  %162 = load i64, i64* %PC
  %163 = add i64 %162, 5
  store i64 %163, i64* %PC
  store i64 10000000, i64* %RDX, align 8, !tbaa !2428
  %164 = load i32, i32* %EDX
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 2
  store i64 %167, i64* %PC
  %168 = and i64 %165, 4294967295
  store i64 %168, i64* %RSI, align 8, !tbaa !2428
  %169 = load i64, i64* %RBP
  %170 = sub i64 %169, 16
  %171 = load i64, i64* %PC
  %172 = add i64 %171, 4
  store i64 %172, i64* %PC
  %173 = inttoptr i64 %170 to i64*
  %174 = load i64, i64* %173
  store i64 %174, i64* %RDX, align 8, !tbaa !2428
  %175 = load i64, i64* %RBP
  %176 = sub i64 %175, 32
  %177 = load i64, i64* %RSI
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 4
  store i64 %179, i64* %PC
  %180 = inttoptr i64 %176 to i64*
  store i64 %177, i64* %180
  %181 = load i32, i32* %ECX
  %182 = zext i32 %181 to i64
  %183 = load i64, i64* %PC
  %184 = add i64 %183, 2
  store i64 %184, i64* %PC
  %185 = and i64 %182, 4294967295
  store i64 %185, i64* %RSI, align 8, !tbaa !2428
  %186 = load i64, i64* %RSP
  %187 = load i64, i64* %PC
  %188 = add i64 %187, 8
  store i64 %188, i64* %PC
  %189 = inttoptr i64 %186 to i64*
  store i64 10000000, i64* %189
  %190 = load i64, i64* %RBP
  %191 = sub i64 %190, 36
  %192 = load i32, i32* %EAX
  %193 = zext i32 %192 to i64
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 3
  store i64 %195, i64* %PC
  %196 = inttoptr i64 %191 to i32*
  store i32 %192, i32* %196
  %197 = load i64, i64* %PC
  %198 = sub i64 %197, 2461
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 5
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 5
  store i64 %202, i64* %PC
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %204 = load i64, i64* %203, align 8, !tbaa !2428
  %205 = add i64 %204, -8
  %206 = inttoptr i64 %205 to i64*
  store i64 %200, i64* %206
  store i64 %205, i64* %203, align 8, !tbaa !2428
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %198, i64* %207, align 8, !tbaa !2428
  %208 = load i64, i64* %PC
  %209 = call %struct.Memory* @sub_400540_createtask_renamed_(%struct.State* %0, i64 %208, %struct.Memory* %126)
  %210 = load i64, i64* %RAX
  %211 = load i32, i32* %EAX
  %212 = zext i32 %211 to i64
  %213 = load i64, i64* %PC
  %214 = add i64 %213, 2
  store i64 %214, i64* %PC
  %215 = xor i64 %212, %210
  %216 = trunc i64 %215 to i32
  %217 = and i64 %215, 4294967295
  store i64 %217, i64* %RAX, align 8, !tbaa !2428
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %218, align 1, !tbaa !2432
  %219 = and i32 %216, 255
  %220 = call i32 @llvm.ctpop.i32(i32 %219) #16
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %223, i8* %224, align 1, !tbaa !2446
  %225 = icmp eq i32 %216, 0
  %226 = zext i1 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %226, i8* %227, align 1, !tbaa !2448
  %228 = lshr i32 %216, 31
  %229 = trunc i32 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %229, i8* %230, align 1, !tbaa !2449
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %231, align 1, !tbaa !2450
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %232, align 1, !tbaa !2447
  %233 = load i32, i32* %EAX
  %234 = zext i32 %233 to i64
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 2
  store i64 %236, i64* %PC
  %237 = and i64 %234, 4294967295
  store i64 %237, i64* %RDI, align 8, !tbaa !2428
  %238 = load i64, i64* %RSI
  %239 = load i32, i32* %ESI
  %240 = zext i32 %239 to i64
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 2
  store i64 %242, i64* %PC
  %243 = xor i64 %240, %238
  %244 = trunc i64 %243 to i32
  %245 = and i64 %243, 4294967295
  store i64 %245, i64* %RSI, align 8, !tbaa !2428
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %246, align 1, !tbaa !2432
  %247 = and i32 %244, 255
  %248 = call i32 @llvm.ctpop.i32(i32 %247) #16
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  %251 = xor i8 %250, 1
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %251, i8* %252, align 1, !tbaa !2446
  %253 = icmp eq i32 %244, 0
  %254 = zext i1 %253 to i8
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %254, i8* %255, align 1, !tbaa !2448
  %256 = lshr i32 %244, 31
  %257 = trunc i32 %256 to i8
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %257, i8* %258, align 1, !tbaa !2449
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %259, align 1, !tbaa !2450
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %260, align 1, !tbaa !2447
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 5
  store i64 %262, i64* %PC
  store i64 1001, i64* %RDX, align 8, !tbaa !2428
  %263 = load i64, i64* %PC
  %264 = sub i64 %263, 2285
  %265 = load i64, i64* %PC
  %266 = add i64 %265, 5
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 5
  store i64 %268, i64* %PC
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %270 = load i64, i64* %269, align 8, !tbaa !2428
  %271 = add i64 %270, -8
  %272 = inttoptr i64 %271 to i64*
  store i64 %266, i64* %272
  store i64 %271, i64* %269, align 8, !tbaa !2428
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %264, i64* %273, align 8, !tbaa !2428
  %274 = load i64, i64* %PC
  %275 = call %struct.Memory* @sub_400600_pkt_renamed_(%struct.State* %0, i64 %274, %struct.Memory* %209)
  %276 = load i64, i64* %RSI
  %277 = load i32, i32* %ESI
  %278 = zext i32 %277 to i64
  %279 = load i64, i64* %PC
  %280 = add i64 %279, 2
  store i64 %280, i64* %PC
  %281 = xor i64 %278, %276
  %282 = trunc i64 %281 to i32
  %283 = and i64 %281, 4294967295
  store i64 %283, i64* %RSI, align 8, !tbaa !2428
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %284, align 1, !tbaa !2432
  %285 = and i32 %282, 255
  %286 = call i32 @llvm.ctpop.i32(i32 %285) #16
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %289, i8* %290, align 1, !tbaa !2446
  %291 = icmp eq i32 %282, 0
  %292 = zext i1 %291 to i8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %292, i8* %293, align 1, !tbaa !2448
  %294 = lshr i32 %282, 31
  %295 = trunc i32 %294 to i8
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %295, i8* %296, align 1, !tbaa !2449
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %297, align 1, !tbaa !2450
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %298, align 1, !tbaa !2447
  %299 = load i64, i64* %PC
  %300 = add i64 %299, 5
  store i64 %300, i64* %PC
  store i64 1001, i64* %RDX, align 8, !tbaa !2428
  %301 = load i64, i64* %RBP
  %302 = sub i64 %301, 16
  %303 = load i64, i64* %RAX
  %304 = load i64, i64* %PC
  %305 = add i64 %304, 4
  store i64 %305, i64* %PC
  %306 = inttoptr i64 %302 to i64*
  store i64 %303, i64* %306
  %307 = load i64, i64* %RBP
  %308 = sub i64 %307, 16
  %309 = load i64, i64* %PC
  %310 = add i64 %309, 4
  store i64 %310, i64* %PC
  %311 = inttoptr i64 %308 to i64*
  %312 = load i64, i64* %311
  store i64 %312, i64* %RDI, align 8, !tbaa !2428
  %313 = load i64, i64* %PC
  %314 = sub i64 %313, 2305
  %315 = load i64, i64* %PC
  %316 = add i64 %315, 5
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 5
  store i64 %318, i64* %PC
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %320 = load i64, i64* %319, align 8, !tbaa !2428
  %321 = add i64 %320, -8
  %322 = inttoptr i64 %321 to i64*
  store i64 %316, i64* %322
  store i64 %321, i64* %319, align 8, !tbaa !2428
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %314, i64* %323, align 8, !tbaa !2428
  %324 = load i64, i64* %PC
  %325 = call %struct.Memory* @sub_400600_pkt_renamed_(%struct.State* %0, i64 %324, %struct.Memory* %275)
  %326 = load i64, i64* %PC
  %327 = add i64 %326, 5
  store i64 %327, i64* %PC
  store i64 2, i64* %RDI, align 8, !tbaa !2428
  %328 = load i64, i64* %PC
  %329 = add i64 %328, 5
  store i64 %329, i64* %PC
  store i64 1000, i64* %RSI, align 8, !tbaa !2428
  %330 = load i64, i64* %PC
  %331 = add i64 %330, 5
  store i64 %331, i64* %PC
  store i64 3, i64* %RCX, align 8, !tbaa !2428
  %332 = load i64, i64* %PC
  %333 = add i64 %332, 10
  store i64 %333, i64* %PC
  store i64 ptrtoint (void ()* @workfn to i64), i64* %R8, align 8, !tbaa !2428
  %334 = load i64, i64* %PC
  %335 = add i64 %334, 5
  store i64 %335, i64* %PC
  store i64 3, i64* %RDX, align 8, !tbaa !2428
  %336 = bitcast i32* %R9D to i64*
  %337 = load i32, i32* %EDX
  %338 = zext i32 %337 to i64
  %339 = load i64, i64* %PC
  %340 = add i64 %339, 3
  store i64 %340, i64* %PC
  %341 = and i64 %338, 4294967295
  store i64 %341, i64* %336, align 8, !tbaa !2428
  %342 = load i64, i64* %RDX
  %343 = load i32, i32* %EDX
  %344 = zext i32 %343 to i64
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 2
  store i64 %346, i64* %PC
  %347 = xor i64 %344, %342
  %348 = trunc i64 %347 to i32
  %349 = and i64 %347, 4294967295
  store i64 %349, i64* %RDX, align 8, !tbaa !2428
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %350, align 1, !tbaa !2432
  %351 = and i32 %348, 255
  %352 = call i32 @llvm.ctpop.i32(i32 %351) #16
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %355, i8* %356, align 1, !tbaa !2446
  %357 = icmp eq i32 %348, 0
  %358 = zext i1 %357 to i8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %358, i8* %359, align 1, !tbaa !2448
  %360 = lshr i32 %348, 31
  %361 = trunc i32 %360 to i8
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %361, i8* %362, align 1, !tbaa !2449
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %363, align 1, !tbaa !2450
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %364, align 1, !tbaa !2447
  %365 = bitcast i32* %R10D to i64*
  %366 = load i32, i32* %EDX
  %367 = zext i32 %366 to i64
  %368 = load i64, i64* %PC
  %369 = add i64 %368, 3
  store i64 %369, i64* %PC
  %370 = and i64 %367, 4294967295
  store i64 %370, i64* %365, align 8, !tbaa !2428
  %371 = load i64, i64* %RBP
  %372 = sub i64 %371, 16
  %373 = load i64, i64* %RAX
  %374 = load i64, i64* %PC
  %375 = add i64 %374, 4
  store i64 %375, i64* %PC
  %376 = inttoptr i64 %372 to i64*
  store i64 %373, i64* %376
  %377 = load i64, i64* %RBP
  %378 = sub i64 %377, 16
  %379 = load i64, i64* %PC
  %380 = add i64 %379, 4
  store i64 %380, i64* %PC
  %381 = inttoptr i64 %378 to i64*
  %382 = load i64, i64* %381
  store i64 %382, i64* %RDX, align 8, !tbaa !2428
  %383 = load i64, i64* %RSP
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 8
  store i64 %385, i64* %PC
  %386 = inttoptr i64 %383 to i64*
  store i64 0, i64* %386
  %387 = load i64, i64* %RBP
  %388 = sub i64 %387, 48
  %389 = load i64, i64* %R10
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 4
  store i64 %391, i64* %PC
  %392 = inttoptr i64 %388 to i64*
  store i64 %389, i64* %392
  %393 = load i64, i64* %PC
  %394 = sub i64 %393, 2560
  %395 = load i64, i64* %PC
  %396 = add i64 %395, 5
  %397 = load i64, i64* %PC
  %398 = add i64 %397, 5
  store i64 %398, i64* %PC
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %400 = load i64, i64* %399, align 8, !tbaa !2428
  %401 = add i64 %400, -8
  %402 = inttoptr i64 %401 to i64*
  store i64 %396, i64* %402
  store i64 %401, i64* %399, align 8, !tbaa !2428
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %394, i64* %403, align 8, !tbaa !2428
  %404 = load i64, i64* %PC
  %405 = call %struct.Memory* @sub_400540_createtask_renamed_(%struct.State* %0, i64 %404, %struct.Memory* %325)
  %406 = load i64, i64* %RCX
  %407 = load i32, i32* %ECX
  %408 = zext i32 %407 to i64
  %409 = load i64, i64* %PC
  %410 = add i64 %409, 2
  store i64 %410, i64* %PC
  %411 = xor i64 %408, %406
  %412 = trunc i64 %411 to i32
  %413 = and i64 %411, 4294967295
  store i64 %413, i64* %RCX, align 8, !tbaa !2428
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %414, align 1, !tbaa !2432
  %415 = and i32 %412, 255
  %416 = call i32 @llvm.ctpop.i32(i32 %415) #16
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %419, i8* %420, align 1, !tbaa !2446
  %421 = icmp eq i32 %412, 0
  %422 = zext i1 %421 to i8
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %422, i8* %423, align 1, !tbaa !2448
  %424 = lshr i32 %412, 31
  %425 = trunc i32 %424 to i8
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %425, i8* %426, align 1, !tbaa !2449
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %427, align 1, !tbaa !2450
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %428, align 1, !tbaa !2447
  %429 = load i32, i32* %ECX
  %430 = zext i32 %429 to i64
  %431 = load i64, i64* %PC
  %432 = add i64 %431, 2
  store i64 %432, i64* %PC
  %433 = and i64 %430, 4294967295
  store i64 %433, i64* %RDI, align 8, !tbaa !2428
  %434 = load i64, i64* %PC
  %435 = add i64 %434, 5
  store i64 %435, i64* %PC
  store i64 5, i64* %RSI, align 8, !tbaa !2428
  %436 = load i64, i64* %PC
  %437 = add i64 %436, 5
  store i64 %437, i64* %PC
  store i64 1000, i64* %RDX, align 8, !tbaa !2428
  %438 = load i64, i64* %PC
  %439 = sub i64 %438, 2387
  %440 = load i64, i64* %PC
  %441 = add i64 %440, 5
  %442 = load i64, i64* %PC
  %443 = add i64 %442, 5
  store i64 %443, i64* %PC
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %445 = load i64, i64* %444, align 8, !tbaa !2428
  %446 = add i64 %445, -8
  %447 = inttoptr i64 %446 to i64*
  store i64 %441, i64* %447
  store i64 %446, i64* %444, align 8, !tbaa !2428
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %439, i64* %448, align 8, !tbaa !2428
  %449 = load i64, i64* %PC
  %450 = call %struct.Memory* @sub_400600_pkt_renamed_(%struct.State* %0, i64 %449, %struct.Memory* %405)
  %451 = load i64, i64* %PC
  %452 = add i64 %451, 5
  store i64 %452, i64* %PC
  store i64 5, i64* %RSI, align 8, !tbaa !2428
  %453 = load i64, i64* %PC
  %454 = add i64 %453, 5
  store i64 %454, i64* %PC
  store i64 1000, i64* %RDX, align 8, !tbaa !2428
  %455 = load i64, i64* %RBP
  %456 = sub i64 %455, 16
  %457 = load i64, i64* %RAX
  %458 = load i64, i64* %PC
  %459 = add i64 %458, 4
  store i64 %459, i64* %PC
  %460 = inttoptr i64 %456 to i64*
  store i64 %457, i64* %460
  %461 = load i64, i64* %RBP
  %462 = sub i64 %461, 16
  %463 = load i64, i64* %PC
  %464 = add i64 %463, 4
  store i64 %464, i64* %PC
  %465 = inttoptr i64 %462 to i64*
  %466 = load i64, i64* %465
  store i64 %466, i64* %RDI, align 8, !tbaa !2428
  %467 = load i64, i64* %PC
  %468 = sub i64 %467, 2410
  %469 = load i64, i64* %PC
  %470 = add i64 %469, 5
  %471 = load i64, i64* %PC
  %472 = add i64 %471, 5
  store i64 %472, i64* %PC
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %474 = load i64, i64* %473, align 8, !tbaa !2428
  %475 = add i64 %474, -8
  %476 = inttoptr i64 %475 to i64*
  store i64 %470, i64* %476
  store i64 %475, i64* %473, align 8, !tbaa !2428
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %468, i64* %477, align 8, !tbaa !2428
  %478 = load i64, i64* %PC
  %479 = call %struct.Memory* @sub_400600_pkt_renamed_(%struct.State* %0, i64 %478, %struct.Memory* %450)
  %480 = load i64, i64* %PC
  %481 = add i64 %480, 5
  store i64 %481, i64* %PC
  store i64 5, i64* %RSI, align 8, !tbaa !2428
  %482 = load i64, i64* %PC
  %483 = add i64 %482, 5
  store i64 %483, i64* %PC
  store i64 1000, i64* %RDX, align 8, !tbaa !2428
  %484 = load i64, i64* %RBP
  %485 = sub i64 %484, 16
  %486 = load i64, i64* %RAX
  %487 = load i64, i64* %PC
  %488 = add i64 %487, 4
  store i64 %488, i64* %PC
  %489 = inttoptr i64 %485 to i64*
  store i64 %486, i64* %489
  %490 = load i64, i64* %RBP
  %491 = sub i64 %490, 16
  %492 = load i64, i64* %PC
  %493 = add i64 %492, 4
  store i64 %493, i64* %PC
  %494 = inttoptr i64 %491 to i64*
  %495 = load i64, i64* %494
  store i64 %495, i64* %RDI, align 8, !tbaa !2428
  %496 = load i64, i64* %PC
  %497 = sub i64 %496, 2433
  %498 = load i64, i64* %PC
  %499 = add i64 %498, 5
  %500 = load i64, i64* %PC
  %501 = add i64 %500, 5
  store i64 %501, i64* %PC
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %503 = load i64, i64* %502, align 8, !tbaa !2428
  %504 = add i64 %503, -8
  %505 = inttoptr i64 %504 to i64*
  store i64 %499, i64* %505
  store i64 %504, i64* %502, align 8, !tbaa !2428
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %497, i64* %506, align 8, !tbaa !2428
  %507 = load i64, i64* %PC
  %508 = call %struct.Memory* @sub_400600_pkt_renamed_(%struct.State* %0, i64 %507, %struct.Memory* %479)
  %509 = load i64, i64* %PC
  %510 = add i64 %509, 5
  store i64 %510, i64* %PC
  store i64 3, i64* %RCX, align 8, !tbaa !2428
  %511 = load i64, i64* %PC
  %512 = add i64 %511, 5
  store i64 %512, i64* %PC
  store i64 2000, i64* %RSI, align 8, !tbaa !2428
  %513 = load i64, i64* %PC
  %514 = add i64 %513, 10
  store i64 %514, i64* %PC
  store i64 ptrtoint (void ()* @handlerfn to i64), i64* %R8, align 8, !tbaa !2428
  %515 = load i64, i64* %RDX
  %516 = load i32, i32* %EDX
  %517 = zext i32 %516 to i64
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 2
  store i64 %519, i64* %PC
  %520 = xor i64 %517, %515
  %521 = trunc i64 %520 to i32
  %522 = and i64 %520, 4294967295
  store i64 %522, i64* %RDX, align 8, !tbaa !2428
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %523, align 1, !tbaa !2432
  %524 = and i32 %521, 255
  %525 = call i32 @llvm.ctpop.i32(i32 %524) #16
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %528, i8* %529, align 1, !tbaa !2446
  %530 = icmp eq i32 %521, 0
  %531 = zext i1 %530 to i8
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %531, i8* %532, align 1, !tbaa !2448
  %533 = lshr i32 %521, 31
  %534 = trunc i32 %533 to i8
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %534, i8* %535, align 1, !tbaa !2449
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %536, align 1, !tbaa !2450
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %537, align 1, !tbaa !2447
  %538 = bitcast i32* %R9D to i64*
  %539 = load i32, i32* %EDX
  %540 = zext i32 %539 to i64
  %541 = load i64, i64* %PC
  %542 = add i64 %541, 3
  store i64 %542, i64* %PC
  %543 = and i64 %540, 4294967295
  store i64 %543, i64* %538, align 8, !tbaa !2428
  %544 = load i64, i64* %RBP
  %545 = sub i64 %544, 16
  %546 = load i64, i64* %RAX
  %547 = load i64, i64* %PC
  %548 = add i64 %547, 4
  store i64 %548, i64* %PC
  %549 = inttoptr i64 %545 to i64*
  store i64 %546, i64* %549
  %550 = load i64, i64* %RBP
  %551 = sub i64 %550, 16
  %552 = load i64, i64* %PC
  %553 = add i64 %552, 4
  store i64 %553, i64* %PC
  %554 = inttoptr i64 %551 to i64*
  %555 = load i64, i64* %554
  store i64 %555, i64* %RDX, align 8, !tbaa !2428
  %556 = load i32, i32* %ECX
  %557 = zext i32 %556 to i64
  %558 = load i64, i64* %PC
  %559 = add i64 %558, 2
  store i64 %559, i64* %PC
  %560 = and i64 %557, 4294967295
  store i64 %560, i64* %RDI, align 8, !tbaa !2428
  %561 = load i64, i64* %RSP
  %562 = load i64, i64* %PC
  %563 = add i64 %562, 8
  store i64 %563, i64* %PC
  %564 = inttoptr i64 %561 to i64*
  store i64 0, i64* %564
  %565 = load i64, i64* %PC
  %566 = sub i64 %565, 2673
  %567 = load i64, i64* %PC
  %568 = add i64 %567, 5
  %569 = load i64, i64* %PC
  %570 = add i64 %569, 5
  store i64 %570, i64* %PC
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %572 = load i64, i64* %571, align 8, !tbaa !2428
  %573 = add i64 %572, -8
  %574 = inttoptr i64 %573 to i64*
  store i64 %568, i64* %574
  store i64 %573, i64* %571, align 8, !tbaa !2428
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %566, i64* %575, align 8, !tbaa !2428
  %576 = load i64, i64* %PC
  %577 = call %struct.Memory* @sub_400540_createtask_renamed_(%struct.State* %0, i64 %576, %struct.Memory* %508)
  %578 = load i64, i64* %RCX
  %579 = load i32, i32* %ECX
  %580 = zext i32 %579 to i64
  %581 = load i64, i64* %PC
  %582 = add i64 %581, 2
  store i64 %582, i64* %PC
  %583 = xor i64 %580, %578
  %584 = trunc i64 %583 to i32
  %585 = and i64 %583, 4294967295
  store i64 %585, i64* %RCX, align 8, !tbaa !2428
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %586, align 1, !tbaa !2432
  %587 = and i32 %584, 255
  %588 = call i32 @llvm.ctpop.i32(i32 %587) #16
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  %591 = xor i8 %590, 1
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %591, i8* %592, align 1, !tbaa !2446
  %593 = icmp eq i32 %584, 0
  %594 = zext i1 %593 to i8
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %594, i8* %595, align 1, !tbaa !2448
  %596 = lshr i32 %584, 31
  %597 = trunc i32 %596 to i8
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %597, i8* %598, align 1, !tbaa !2449
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %599, align 1, !tbaa !2450
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %600, align 1, !tbaa !2447
  %601 = load i32, i32* %ECX
  %602 = zext i32 %601 to i64
  %603 = load i64, i64* %PC
  %604 = add i64 %603, 2
  store i64 %604, i64* %PC
  %605 = and i64 %602, 4294967295
  store i64 %605, i64* %RDI, align 8, !tbaa !2428
  %606 = load i64, i64* %PC
  %607 = add i64 %606, 5
  store i64 %607, i64* %PC
  store i64 6, i64* %RSI, align 8, !tbaa !2428
  %608 = load i64, i64* %PC
  %609 = add i64 %608, 5
  store i64 %609, i64* %PC
  store i64 1000, i64* %RDX, align 8, !tbaa !2428
  %610 = load i64, i64* %PC
  %611 = sub i64 %610, 2500
  %612 = load i64, i64* %PC
  %613 = add i64 %612, 5
  %614 = load i64, i64* %PC
  %615 = add i64 %614, 5
  store i64 %615, i64* %PC
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %617 = load i64, i64* %616, align 8, !tbaa !2428
  %618 = add i64 %617, -8
  %619 = inttoptr i64 %618 to i64*
  store i64 %613, i64* %619
  store i64 %618, i64* %616, align 8, !tbaa !2428
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %611, i64* %620, align 8, !tbaa !2428
  %621 = load i64, i64* %PC
  %622 = call %struct.Memory* @sub_400600_pkt_renamed_(%struct.State* %0, i64 %621, %struct.Memory* %577)
  %623 = load i64, i64* %PC
  %624 = add i64 %623, 5
  store i64 %624, i64* %PC
  store i64 6, i64* %RSI, align 8, !tbaa !2428
  %625 = load i64, i64* %PC
  %626 = add i64 %625, 5
  store i64 %626, i64* %PC
  store i64 1000, i64* %RDX, align 8, !tbaa !2428
  %627 = load i64, i64* %RBP
  %628 = sub i64 %627, 16
  %629 = load i64, i64* %RAX
  %630 = load i64, i64* %PC
  %631 = add i64 %630, 4
  store i64 %631, i64* %PC
  %632 = inttoptr i64 %628 to i64*
  store i64 %629, i64* %632
  %633 = load i64, i64* %RBP
  %634 = sub i64 %633, 16
  %635 = load i64, i64* %PC
  %636 = add i64 %635, 4
  store i64 %636, i64* %PC
  %637 = inttoptr i64 %634 to i64*
  %638 = load i64, i64* %637
  store i64 %638, i64* %RDI, align 8, !tbaa !2428
  %639 = load i64, i64* %PC
  %640 = sub i64 %639, 2523
  %641 = load i64, i64* %PC
  %642 = add i64 %641, 5
  %643 = load i64, i64* %PC
  %644 = add i64 %643, 5
  store i64 %644, i64* %PC
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %646 = load i64, i64* %645, align 8, !tbaa !2428
  %647 = add i64 %646, -8
  %648 = inttoptr i64 %647 to i64*
  store i64 %642, i64* %648
  store i64 %647, i64* %645, align 8, !tbaa !2428
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %640, i64* %649, align 8, !tbaa !2428
  %650 = load i64, i64* %PC
  %651 = call %struct.Memory* @sub_400600_pkt_renamed_(%struct.State* %0, i64 %650, %struct.Memory* %622)
  %652 = load i64, i64* %PC
  %653 = add i64 %652, 5
  store i64 %653, i64* %PC
  store i64 6, i64* %RSI, align 8, !tbaa !2428
  %654 = load i64, i64* %PC
  %655 = add i64 %654, 5
  store i64 %655, i64* %PC
  store i64 1000, i64* %RDX, align 8, !tbaa !2428
  %656 = load i64, i64* %RBP
  %657 = sub i64 %656, 16
  %658 = load i64, i64* %RAX
  %659 = load i64, i64* %PC
  %660 = add i64 %659, 4
  store i64 %660, i64* %PC
  %661 = inttoptr i64 %657 to i64*
  store i64 %658, i64* %661
  %662 = load i64, i64* %RBP
  %663 = sub i64 %662, 16
  %664 = load i64, i64* %PC
  %665 = add i64 %664, 4
  store i64 %665, i64* %PC
  %666 = inttoptr i64 %663 to i64*
  %667 = load i64, i64* %666
  store i64 %667, i64* %RDI, align 8, !tbaa !2428
  %668 = load i64, i64* %PC
  %669 = sub i64 %668, 2546
  %670 = load i64, i64* %PC
  %671 = add i64 %670, 5
  %672 = load i64, i64* %PC
  %673 = add i64 %672, 5
  store i64 %673, i64* %PC
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %675 = load i64, i64* %674, align 8, !tbaa !2428
  %676 = add i64 %675, -8
  %677 = inttoptr i64 %676 to i64*
  store i64 %671, i64* %677
  store i64 %676, i64* %674, align 8, !tbaa !2428
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %669, i64* %678, align 8, !tbaa !2428
  %679 = load i64, i64* %PC
  %680 = call %struct.Memory* @sub_400600_pkt_renamed_(%struct.State* %0, i64 %679, %struct.Memory* %651)
  %681 = load i64, i64* %PC
  %682 = add i64 %681, 5
  store i64 %682, i64* %PC
  store i64 4, i64* %RDI, align 8, !tbaa !2428
  %683 = load i64, i64* %PC
  %684 = add i64 %683, 5
  store i64 %684, i64* %PC
  store i64 3000, i64* %RSI, align 8, !tbaa !2428
  %685 = load i64, i64* %PC
  %686 = add i64 %685, 5
  store i64 %686, i64* %PC
  store i64 3, i64* %RCX, align 8, !tbaa !2428
  %687 = load i64, i64* %PC
  %688 = add i64 %687, 10
  store i64 %688, i64* %PC
  store i64 ptrtoint (void ()* @handlerfn to i64), i64* %R8, align 8, !tbaa !2428
  %689 = load i64, i64* %RDX
  %690 = load i32, i32* %EDX
  %691 = zext i32 %690 to i64
  %692 = load i64, i64* %PC
  %693 = add i64 %692, 2
  store i64 %693, i64* %PC
  %694 = xor i64 %691, %689
  %695 = trunc i64 %694 to i32
  %696 = and i64 %694, 4294967295
  store i64 %696, i64* %RDX, align 8, !tbaa !2428
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %697, align 1, !tbaa !2432
  %698 = and i32 %695, 255
  %699 = call i32 @llvm.ctpop.i32(i32 %698) #16
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = xor i8 %701, 1
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %702, i8* %703, align 1, !tbaa !2446
  %704 = icmp eq i32 %695, 0
  %705 = zext i1 %704 to i8
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %705, i8* %706, align 1, !tbaa !2448
  %707 = lshr i32 %695, 31
  %708 = trunc i32 %707 to i8
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %708, i8* %709, align 1, !tbaa !2449
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %710, align 1, !tbaa !2450
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %711, align 1, !tbaa !2447
  %712 = bitcast i32* %R9D to i64*
  %713 = load i32, i32* %EDX
  %714 = zext i32 %713 to i64
  %715 = load i64, i64* %PC
  %716 = add i64 %715, 3
  store i64 %716, i64* %PC
  %717 = and i64 %714, 4294967295
  store i64 %717, i64* %712, align 8, !tbaa !2428
  %718 = load i64, i64* %RBP
  %719 = sub i64 %718, 16
  %720 = load i64, i64* %RAX
  %721 = load i64, i64* %PC
  %722 = add i64 %721, 4
  store i64 %722, i64* %PC
  %723 = inttoptr i64 %719 to i64*
  store i64 %720, i64* %723
  %724 = load i64, i64* %RBP
  %725 = sub i64 %724, 16
  %726 = load i64, i64* %PC
  %727 = add i64 %726, 4
  store i64 %727, i64* %PC
  %728 = inttoptr i64 %725 to i64*
  %729 = load i64, i64* %728
  store i64 %729, i64* %RDX, align 8, !tbaa !2428
  %730 = load i64, i64* %RSP
  %731 = load i64, i64* %PC
  %732 = add i64 %731, 8
  store i64 %732, i64* %PC
  %733 = inttoptr i64 %730 to i64*
  store i64 0, i64* %733
  %734 = load i64, i64* %PC
  %735 = sub i64 %734, 2789
  %736 = load i64, i64* %PC
  %737 = add i64 %736, 5
  %738 = load i64, i64* %PC
  %739 = add i64 %738, 5
  store i64 %739, i64* %PC
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %741 = load i64, i64* %740, align 8, !tbaa !2428
  %742 = add i64 %741, -8
  %743 = inttoptr i64 %742 to i64*
  store i64 %737, i64* %743
  store i64 %742, i64* %740, align 8, !tbaa !2428
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %735, i64* %744, align 8, !tbaa !2428
  %745 = load i64, i64* %PC
  %746 = call %struct.Memory* @sub_400540_createtask_renamed_(%struct.State* %0, i64 %745, %struct.Memory* %680)
  %747 = load i64, i64* %PC
  %748 = add i64 %747, 5
  store i64 %748, i64* %PC
  store i64 5, i64* %RDI, align 8, !tbaa !2428
  %749 = load i64, i64* %PC
  %750 = add i64 %749, 5
  store i64 %750, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %751 = load i64, i64* %PC
  %752 = add i64 %751, 5
  store i64 %752, i64* %PC
  store i64 2, i64* %RCX, align 8, !tbaa !2428
  %753 = load i64, i64* %PC
  %754 = add i64 %753, 10
  store i64 %754, i64* %PC
  store i64 ptrtoint (void ()* @devfn to i64), i64* %R8, align 8, !tbaa !2428
  %755 = bitcast i32* %R11D to i64*
  %756 = load i32, i32* %R11D
  %757 = zext i32 %756 to i64
  %758 = load i32, i32* %R11D
  %759 = zext i32 %758 to i64
  %760 = load i64, i64* %PC
  %761 = add i64 %760, 3
  store i64 %761, i64* %PC
  %762 = xor i64 %759, %757
  %763 = trunc i64 %762 to i32
  %764 = and i64 %762, 4294967295
  store i64 %764, i64* %755, align 8, !tbaa !2428
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %765, align 1, !tbaa !2432
  %766 = and i32 %763, 255
  %767 = call i32 @llvm.ctpop.i32(i32 %766) #16
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  %770 = xor i8 %769, 1
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %770, i8* %771, align 1, !tbaa !2446
  %772 = icmp eq i32 %763, 0
  %773 = zext i1 %772 to i8
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %773, i8* %774, align 1, !tbaa !2448
  %775 = lshr i32 %763, 31
  %776 = trunc i32 %775 to i8
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %776, i8* %777, align 1, !tbaa !2449
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %778, align 1, !tbaa !2450
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %779, align 1, !tbaa !2447
  %780 = bitcast i32* %R9D to i64*
  %781 = load i32, i32* %R11D
  %782 = zext i32 %781 to i64
  %783 = load i64, i64* %PC
  %784 = add i64 %783, 3
  store i64 %784, i64* %PC
  %785 = and i64 %782, 4294967295
  store i64 %785, i64* %780, align 8, !tbaa !2428
  %786 = load i64, i64* %RBP
  %787 = sub i64 %786, 16
  %788 = load i64, i64* %PC
  %789 = add i64 %788, 8
  store i64 %789, i64* %PC
  %790 = inttoptr i64 %787 to i64*
  store i64 0, i64* %790
  %791 = load i64, i64* %RBP
  %792 = sub i64 %791, 16
  %793 = load i64, i64* %PC
  %794 = add i64 %793, 4
  store i64 %794, i64* %PC
  %795 = inttoptr i64 %792 to i64*
  %796 = load i64, i64* %795
  store i64 %796, i64* %RDX, align 8, !tbaa !2428
  %797 = load i64, i64* %RSP
  %798 = load i64, i64* %PC
  %799 = add i64 %798, 8
  store i64 %799, i64* %PC
  %800 = inttoptr i64 %797 to i64*
  store i64 0, i64* %800
  %801 = load i64, i64* %PC
  %802 = sub i64 %801, 2845
  %803 = load i64, i64* %PC
  %804 = add i64 %803, 5
  %805 = load i64, i64* %PC
  %806 = add i64 %805, 5
  store i64 %806, i64* %PC
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %808 = load i64, i64* %807, align 8, !tbaa !2428
  %809 = add i64 %808, -8
  %810 = inttoptr i64 %809 to i64*
  store i64 %804, i64* %810
  store i64 %809, i64* %807, align 8, !tbaa !2428
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %802, i64* %811, align 8, !tbaa !2428
  %812 = load i64, i64* %PC
  %813 = call %struct.Memory* @sub_400540_createtask_renamed_(%struct.State* %0, i64 %812, %struct.Memory* %746)
  %814 = load i64, i64* %PC
  %815 = add i64 %814, 5
  store i64 %815, i64* %PC
  store i64 6, i64* %RDI, align 8, !tbaa !2428
  %816 = load i64, i64* %PC
  %817 = add i64 %816, 5
  store i64 %817, i64* %PC
  store i64 5000, i64* %RSI, align 8, !tbaa !2428
  %818 = load i64, i64* %PC
  %819 = add i64 %818, 5
  store i64 %819, i64* %PC
  store i64 2, i64* %RCX, align 8, !tbaa !2428
  %820 = load i64, i64* %PC
  %821 = add i64 %820, 10
  store i64 %821, i64* %PC
  store i64 ptrtoint (void ()* @devfn to i64), i64* %R8, align 8, !tbaa !2428
  %822 = bitcast i32* %R11D to i64*
  %823 = load i32, i32* %R11D
  %824 = zext i32 %823 to i64
  %825 = load i32, i32* %R11D
  %826 = zext i32 %825 to i64
  %827 = load i64, i64* %PC
  %828 = add i64 %827, 3
  store i64 %828, i64* %PC
  %829 = xor i64 %826, %824
  %830 = trunc i64 %829 to i32
  %831 = and i64 %829, 4294967295
  store i64 %831, i64* %822, align 8, !tbaa !2428
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %832, align 1, !tbaa !2432
  %833 = and i32 %830, 255
  %834 = call i32 @llvm.ctpop.i32(i32 %833) #16
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  %837 = xor i8 %836, 1
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %837, i8* %838, align 1, !tbaa !2446
  %839 = icmp eq i32 %830, 0
  %840 = zext i1 %839 to i8
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %840, i8* %841, align 1, !tbaa !2448
  %842 = lshr i32 %830, 31
  %843 = trunc i32 %842 to i8
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %843, i8* %844, align 1, !tbaa !2449
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %845, align 1, !tbaa !2450
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %846, align 1, !tbaa !2447
  %847 = bitcast i32* %R9D to i64*
  %848 = load i32, i32* %R11D
  %849 = zext i32 %848 to i64
  %850 = load i64, i64* %PC
  %851 = add i64 %850, 3
  store i64 %851, i64* %PC
  %852 = and i64 %849, 4294967295
  store i64 %852, i64* %847, align 8, !tbaa !2428
  %853 = load i64, i64* %RBP
  %854 = sub i64 %853, 16
  %855 = load i64, i64* %PC
  %856 = add i64 %855, 4
  store i64 %856, i64* %PC
  %857 = inttoptr i64 %854 to i64*
  %858 = load i64, i64* %857
  store i64 %858, i64* %RDX, align 8, !tbaa !2428
  %859 = load i64, i64* %RSP
  %860 = load i64, i64* %PC
  %861 = add i64 %860, 8
  store i64 %861, i64* %PC
  %862 = inttoptr i64 %859 to i64*
  store i64 0, i64* %862
  %863 = load i64, i64* %PC
  %864 = sub i64 %863, 2893
  %865 = load i64, i64* %PC
  %866 = add i64 %865, 5
  %867 = load i64, i64* %PC
  %868 = add i64 %867, 5
  store i64 %868, i64* %PC
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %870 = load i64, i64* %869, align 8, !tbaa !2428
  %871 = add i64 %870, -8
  %872 = inttoptr i64 %871 to i64*
  store i64 %866, i64* %872
  store i64 %871, i64* %869, align 8, !tbaa !2428
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %864, i64* %873, align 8, !tbaa !2428
  %874 = load i64, i64* %PC
  %875 = call %struct.Memory* @sub_400540_createtask_renamed_(%struct.State* %0, i64 %874, %struct.Memory* %813)
  %876 = load i64, i64* %PC
  %877 = add i64 %876, 10
  store i64 %877, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401230__rodata_type* @seg_401230__rodata to i64), i64 45), i64* %RDI, align 8, !tbaa !2428
  %878 = load i64, i64* %PC
  %879 = add i64 %878, 8
  store i64 %879, i64* %PC
  %880 = load i64, i64* bitcast (%tasklist_type* @tasklist to i64*)
  store i64 %880, i64* %RAX, align 8, !tbaa !2428
  %881 = load i64, i64* %RAX
  %882 = load i64, i64* %PC
  %883 = add i64 %882, 8
  store i64 %883, i64* %PC
  store i64 %881, i64* bitcast (%tcb_type* @tcb to i64*)
  %884 = load i64, i64* %PC
  %885 = add i64 %884, 11
  store i64 %885, i64* %PC
  store i32 0, i32* bitcast (%holdcount_type* @holdcount to i32*)
  %886 = load i64, i64* %PC
  %887 = add i64 %886, 11
  store i64 %887, i64* %PC
  store i32 0, i32* bitcast (%qpktcount_type* @qpktcount to i32*)
  %888 = load i64, i64* %PC
  %889 = add i64 %888, 2
  store i64 %889, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %890 = load i64, i64* %PC
  %891 = sub i64 %890, 3220
  %892 = load i64, i64* %PC
  %893 = add i64 %892, 5
  %894 = load i64, i64* %PC
  %895 = add i64 %894, 5
  store i64 %895, i64* %PC
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %897 = load i64, i64* %896, align 8, !tbaa !2428
  %898 = add i64 %897, -8
  %899 = inttoptr i64 %898 to i64*
  store i64 %893, i64* %899
  store i64 %898, i64* %896, align 8, !tbaa !2428
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %891, i64* %900, align 8, !tbaa !2428
  %901 = load i64, i64* %PC
  %902 = call %struct.Memory* @ext_602118_printf(%struct.State* %0, i64 %901, %struct.Memory* %875)
  %903 = load i64, i64* %PC
  %904 = add i64 %903, 11
  store i64 %904, i64* %PC
  store i32 0, i32* bitcast (%tracing_type* @tracing to i32*)
  %905 = load i64, i64* %PC
  %906 = add i64 %905, 11
  store i64 %906, i64* %PC
  store i32 0, i32* bitcast (%layout_type* @layout to i32*)
  %907 = load i64, i64* %RBP
  %908 = sub i64 %907, 52
  %909 = load i32, i32* %EAX
  %910 = zext i32 %909 to i64
  %911 = load i64, i64* %PC
  %912 = add i64 %911, 3
  store i64 %912, i64* %PC
  %913 = inttoptr i64 %908 to i32*
  store i32 %909, i32* %913
  %914 = load i64, i64* %PC
  %915 = sub i64 %914, 2530
  %916 = load i64, i64* %PC
  %917 = add i64 %916, 5
  %918 = load i64, i64* %PC
  %919 = add i64 %918, 5
  store i64 %919, i64* %PC
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %921 = load i64, i64* %920, align 8, !tbaa !2428
  %922 = add i64 %921, -8
  %923 = inttoptr i64 %922 to i64*
  store i64 %917, i64* %923
  store i64 %922, i64* %920, align 8, !tbaa !2428
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %915, i64* %924, align 8, !tbaa !2428
  %925 = load i64, i64* %PC
  %926 = call %struct.Memory* @sub_400700_schedule_renamed_(%struct.State* %0, i64 %925, %struct.Memory* %902)
  %927 = load i64, i64* %PC
  %928 = add i64 %927, 10
  store i64 %928, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401230__rodata_type* @seg_401230__rodata to i64), i64 55), i64* %RDI, align 8, !tbaa !2428
  %929 = load i64, i64* %PC
  %930 = add i64 %929, 2
  store i64 %930, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %931 = load i64, i64* %PC
  %932 = sub i64 %931, 3267
  %933 = load i64, i64* %PC
  %934 = add i64 %933, 5
  %935 = load i64, i64* %PC
  %936 = add i64 %935, 5
  store i64 %936, i64* %PC
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %938 = load i64, i64* %937, align 8, !tbaa !2428
  %939 = add i64 %938, -8
  %940 = inttoptr i64 %939 to i64*
  store i64 %934, i64* %940
  store i64 %939, i64* %937, align 8, !tbaa !2428
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %932, i64* %941, align 8, !tbaa !2428
  %942 = load i64, i64* %PC
  %943 = call %struct.Memory* @ext_602118_printf(%struct.State* %0, i64 %942, %struct.Memory* %926)
  %944 = load i64, i64* %PC
  %945 = add i64 %944, 10
  store i64 %945, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401230__rodata_type* @seg_401230__rodata to i64), i64 65), i64* %RDI, align 8, !tbaa !2428
  %946 = load i64, i64* %PC
  %947 = add i64 %946, 7
  store i64 %947, i64* %PC
  %948 = load i32, i32* bitcast (%qpktcount_type* @qpktcount to i32*)
  %949 = zext i32 %948 to i64
  store i64 %949, i64* %RSI, align 8, !tbaa !2428
  %950 = load i64, i64* %PC
  %951 = add i64 %950, 7
  store i64 %951, i64* %PC
  %952 = load i32, i32* bitcast (%holdcount_type* @holdcount to i32*)
  %953 = zext i32 %952 to i64
  store i64 %953, i64* %RDX, align 8, !tbaa !2428
  %954 = load i64, i64* %RBP
  %955 = sub i64 %954, 56
  %956 = load i32, i32* %EAX
  %957 = zext i32 %956 to i64
  %958 = load i64, i64* %PC
  %959 = add i64 %958, 3
  store i64 %959, i64* %PC
  %960 = inttoptr i64 %955 to i32*
  store i32 %956, i32* %960
  %961 = load i64, i64* %PC
  %962 = add i64 %961, 2
  store i64 %962, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %963 = load i64, i64* %PC
  %964 = sub i64 %963, 3301
  %965 = load i64, i64* %PC
  %966 = add i64 %965, 5
  %967 = load i64, i64* %PC
  %968 = add i64 %967, 5
  store i64 %968, i64* %PC
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %970 = load i64, i64* %969, align 8, !tbaa !2428
  %971 = add i64 %970, -8
  %972 = inttoptr i64 %971 to i64*
  store i64 %966, i64* %972
  store i64 %971, i64* %969, align 8, !tbaa !2428
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %964, i64* %973, align 8, !tbaa !2428
  %974 = load i64, i64* %PC
  %975 = call %struct.Memory* @ext_602118_printf(%struct.State* %0, i64 %974, %struct.Memory* %943)
  %976 = load i64, i64* %PC
  %977 = add i64 %976, 10
  store i64 %977, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401230__rodata_type* @seg_401230__rodata to i64), i64 98), i64* %RDI, align 8, !tbaa !2428
  %978 = load i64, i64* %RBP
  %979 = sub i64 %978, 60
  %980 = load i32, i32* %EAX
  %981 = zext i32 %980 to i64
  %982 = load i64, i64* %PC
  %983 = add i64 %982, 3
  store i64 %983, i64* %PC
  %984 = inttoptr i64 %979 to i32*
  store i32 %980, i32* %984
  %985 = load i64, i64* %PC
  %986 = add i64 %985, 2
  store i64 %986, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %987 = load i64, i64* %PC
  %988 = sub i64 %987, 3321
  %989 = load i64, i64* %PC
  %990 = add i64 %989, 5
  %991 = load i64, i64* %PC
  %992 = add i64 %991, 5
  store i64 %992, i64* %PC
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %994 = load i64, i64* %993, align 8, !tbaa !2428
  %995 = add i64 %994, -8
  %996 = inttoptr i64 %995 to i64*
  store i64 %990, i64* %996
  store i64 %995, i64* %993, align 8, !tbaa !2428
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %988, i64* %997, align 8, !tbaa !2428
  %998 = load i64, i64* %PC
  %999 = call %struct.Memory* @ext_602118_printf(%struct.State* %0, i64 %998, %struct.Memory* %975)
  %1000 = load i64, i64* %PC
  %1001 = add i64 %1000, 11
  store i64 %1001, i64* %PC
  %1002 = load i32, i32* bitcast (%qpktcount_type* @qpktcount to i32*)
  %1003 = sub i32 %1002, 23263894
  %1004 = icmp ult i32 %1002, 23263894
  %1005 = zext i1 %1004 to i8
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1005, i8* %1006, align 1, !tbaa !2432
  %1007 = and i32 %1003, 255
  %1008 = call i32 @llvm.ctpop.i32(i32 %1007) #16
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  %1011 = xor i8 %1010, 1
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1011, i8* %1012, align 1, !tbaa !2446
  %1013 = xor i32 %1002, 23263894
  %1014 = xor i32 %1013, %1003
  %1015 = lshr i32 %1014, 4
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1017, i8* %1018, align 1, !tbaa !2447
  %1019 = icmp eq i32 %1003, 0
  %1020 = zext i1 %1019 to i8
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1020, i8* %1021, align 1, !tbaa !2448
  %1022 = lshr i32 %1003, 31
  %1023 = trunc i32 %1022 to i8
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1023, i8* %1024, align 1, !tbaa !2449
  %1025 = lshr i32 %1002, 31
  %1026 = xor i32 %1022, %1025
  %1027 = add nuw nsw i32 %1026, %1025
  %1028 = icmp eq i32 %1027, 2
  %1029 = zext i1 %1028 to i8
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1029, i8* %1030, align 1, !tbaa !2450
  %1031 = load i64, i64* %RBP
  %1032 = sub i64 %1031, 64
  %1033 = load i32, i32* %EAX
  %1034 = zext i32 %1033 to i64
  %1035 = load i64, i64* %PC
  %1036 = add i64 %1035, 3
  store i64 %1036, i64* %PC
  %1037 = inttoptr i64 %1032 to i32*
  store i32 %1033, i32* %1037
  %1038 = load i64, i64* %PC
  %1039 = add i64 %1038, 55
  %1040 = load i64, i64* %PC
  %1041 = add i64 %1040, 6
  %1042 = load i64, i64* %PC
  %1043 = add i64 %1042, 6
  store i64 %1043, i64* %PC
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1045 = load i8, i8* %1044, align 1, !tbaa !2448
  %1046 = icmp eq i8 %1045, 0
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1049 = select i1 %1046, i64 %1039, i64 %1041
  store i64 %1049, i64* %1048, align 8, !tbaa !2428
  %1050 = load i8, i8* %BRANCH_TAKEN
  %1051 = icmp eq i8 %1050, 1
  br i1 %1051, label %block_401173, label %block_401142

block_401153:                                     ; preds = %block_401142
  %1052 = load i64, i64* %PC
  %1053 = add i64 %1052, 10
  store i64 %1053, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401230__rodata_type* @seg_401230__rodata to i64), i64 119), i64* %RDI, align 8, !tbaa !2428
  %1054 = load i64, i64* %PC
  %1055 = add i64 %1054, 2
  store i64 %1055, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1056 = load i64, i64* %PC
  %1057 = sub i64 %1056, 3375
  %1058 = load i64, i64* %PC
  %1059 = add i64 %1058, 5
  %1060 = load i64, i64* %PC
  %1061 = add i64 %1060, 5
  store i64 %1061, i64* %PC
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1063 = load i64, i64* %1062, align 8, !tbaa !2428
  %1064 = add i64 %1063, -8
  %1065 = inttoptr i64 %1064 to i64*
  store i64 %1059, i64* %1065
  store i64 %1064, i64* %1062, align 8, !tbaa !2428
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1057, i64* %1066, align 8, !tbaa !2428
  %1067 = load i64, i64* %PC
  %1068 = call %struct.Memory* @ext_602118_printf(%struct.State* %0, i64 %1067, %struct.Memory* %999)
  %1069 = load i64, i64* %RBP
  %1070 = sub i64 %1069, 20
  %1071 = load i64, i64* %PC
  %1072 = add i64 %1071, 7
  store i64 %1072, i64* %PC
  %1073 = inttoptr i64 %1070 to i32*
  store i32 0, i32* %1073
  %1074 = load i64, i64* %RBP
  %1075 = sub i64 %1074, 68
  %1076 = load i32, i32* %EAX
  %1077 = zext i32 %1076 to i64
  %1078 = load i64, i64* %PC
  %1079 = add i64 %1078, 3
  store i64 %1079, i64* %PC
  %1080 = inttoptr i64 %1075 to i32*
  store i32 %1076, i32* %1080
  %1081 = load i64, i64* %PC
  %1082 = add i64 %1081, 32
  %1083 = load i64, i64* %PC
  %1084 = add i64 %1083, 5
  store i64 %1084, i64* %PC
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1082, i64* %1085, align 8, !tbaa !2428
  br label %block_40118e

block_40118e:                                     ; preds = %block_401173, %block_401153
  %MEMORY.0 = phi %struct.Memory* [ %1187, %block_401173 ], [ %1068, %block_401153 ]
  %1086 = load i64, i64* %PC
  %1087 = add i64 %1086, 10
  store i64 %1087, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401230__rodata_type* @seg_401230__rodata to i64), i64 127), i64* %RDI, align 8, !tbaa !2428
  %1088 = load i64, i64* %PC
  %1089 = add i64 %1088, 2
  store i64 %1089, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1090 = load i64, i64* %PC
  %1091 = sub i64 %1090, 3434
  %1092 = load i64, i64* %PC
  %1093 = add i64 %1092, 5
  %1094 = load i64, i64* %PC
  %1095 = add i64 %1094, 5
  store i64 %1095, i64* %PC
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1097 = load i64, i64* %1096, align 8, !tbaa !2428
  %1098 = add i64 %1097, -8
  %1099 = inttoptr i64 %1098 to i64*
  store i64 %1093, i64* %1099
  store i64 %1098, i64* %1096, align 8, !tbaa !2428
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1091, i64* %1100, align 8, !tbaa !2428
  %1101 = load i64, i64* %PC
  %1102 = call %struct.Memory* @ext_602118_printf(%struct.State* %0, i64 %1101, %struct.Memory* %MEMORY.0)
  %1103 = load i64, i64* %RBP
  %1104 = sub i64 %1103, 20
  %1105 = load i64, i64* %PC
  %1106 = add i64 %1105, 3
  store i64 %1106, i64* %PC
  %1107 = inttoptr i64 %1104 to i32*
  %1108 = load i32, i32* %1107
  %1109 = zext i32 %1108 to i64
  store i64 %1109, i64* %RCX, align 8, !tbaa !2428
  %1110 = load i64, i64* %RBP
  %1111 = sub i64 %1110, 76
  %1112 = load i32, i32* %EAX
  %1113 = zext i32 %1112 to i64
  %1114 = load i64, i64* %PC
  %1115 = add i64 %1114, 3
  store i64 %1115, i64* %PC
  %1116 = inttoptr i64 %1111 to i32*
  store i32 %1112, i32* %1116
  %1117 = load i32, i32* %ECX
  %1118 = zext i32 %1117 to i64
  %1119 = load i64, i64* %PC
  %1120 = add i64 %1119, 2
  store i64 %1120, i64* %PC
  %1121 = and i64 %1118, 4294967295
  store i64 %1121, i64* %RAX, align 8, !tbaa !2428
  %1122 = load i64, i64* %RSP
  %1123 = load i64, i64* %PC
  %1124 = add i64 %1123, 4
  store i64 %1124, i64* %PC
  %1125 = add i64 96, %1122
  store i64 %1125, i64* %RSP, align 8, !tbaa !2428
  %1126 = icmp ult i64 %1125, %1122
  %1127 = icmp ult i64 %1125, 96
  %1128 = or i1 %1126, %1127
  %1129 = zext i1 %1128 to i8
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1129, i8* %1130, align 1, !tbaa !2432
  %1131 = trunc i64 %1125 to i32
  %1132 = and i32 %1131, 255
  %1133 = call i32 @llvm.ctpop.i32(i32 %1132) #16
  %1134 = trunc i32 %1133 to i8
  %1135 = and i8 %1134, 1
  %1136 = xor i8 %1135, 1
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1136, i8* %1137, align 1, !tbaa !2446
  %1138 = xor i64 96, %1122
  %1139 = xor i64 %1138, %1125
  %1140 = lshr i64 %1139, 4
  %1141 = trunc i64 %1140 to i8
  %1142 = and i8 %1141, 1
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1142, i8* %1143, align 1, !tbaa !2447
  %1144 = icmp eq i64 %1125, 0
  %1145 = zext i1 %1144 to i8
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1145, i8* %1146, align 1, !tbaa !2448
  %1147 = lshr i64 %1125, 63
  %1148 = trunc i64 %1147 to i8
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1148, i8* %1149, align 1, !tbaa !2449
  %1150 = lshr i64 %1122, 63
  %1151 = xor i64 %1147, %1150
  %1152 = add nuw nsw i64 %1151, %1147
  %1153 = icmp eq i64 %1152, 2
  %1154 = zext i1 %1153 to i8
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1154, i8* %1155, align 1, !tbaa !2450
  %1156 = load i64, i64* %PC
  %1157 = add i64 %1156, 1
  store i64 %1157, i64* %PC
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1159 = load i64, i64* %1158, align 8, !tbaa !2428
  %1160 = add i64 %1159, 8
  %1161 = inttoptr i64 %1159 to i64*
  %1162 = load i64, i64* %1161
  store i64 %1162, i64* %RBP, align 8, !tbaa !2428
  store i64 %1160, i64* %1158, align 8, !tbaa !2428
  %1163 = load i64, i64* %PC
  %1164 = add i64 %1163, 1
  store i64 %1164, i64* %PC
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1167 = load i64, i64* %1166, align 8, !tbaa !2428
  %1168 = inttoptr i64 %1167 to i64*
  %1169 = load i64, i64* %1168
  store i64 %1169, i64* %1165, align 8, !tbaa !2428
  %1170 = add i64 %1167, 8
  store i64 %1170, i64* %1166, align 8, !tbaa !2428
  ret %struct.Memory* %1102

block_401173:                                     ; preds = %block_401142, %block_400e80
  %MEMORY.1 = phi %struct.Memory* [ %999, %block_400e80 ], [ %999, %block_401142 ]
  %1171 = load i64, i64* %PC
  %1172 = add i64 %1171, 10
  store i64 %1172, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401230__rodata_type* @seg_401230__rodata to i64), i64 117), i64* %RDI, align 8, !tbaa !2428
  %1173 = load i64, i64* %PC
  %1174 = add i64 %1173, 2
  store i64 %1174, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1175 = load i64, i64* %PC
  %1176 = sub i64 %1175, 3407
  %1177 = load i64, i64* %PC
  %1178 = add i64 %1177, 5
  %1179 = load i64, i64* %PC
  %1180 = add i64 %1179, 5
  store i64 %1180, i64* %PC
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1182 = load i64, i64* %1181, align 8, !tbaa !2428
  %1183 = add i64 %1182, -8
  %1184 = inttoptr i64 %1183 to i64*
  store i64 %1178, i64* %1184
  store i64 %1183, i64* %1181, align 8, !tbaa !2428
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1176, i64* %1185, align 8, !tbaa !2428
  %1186 = load i64, i64* %PC
  %1187 = call %struct.Memory* @ext_602118_printf(%struct.State* %0, i64 %1186, %struct.Memory* %MEMORY.1)
  %1188 = load i64, i64* %RBP
  %1189 = sub i64 %1188, 20
  %1190 = load i64, i64* %PC
  %1191 = add i64 %1190, 7
  store i64 %1191, i64* %PC
  %1192 = inttoptr i64 %1189 to i32*
  store i32 1, i32* %1192
  %1193 = load i64, i64* %RBP
  %1194 = sub i64 %1193, 72
  %1195 = load i32, i32* %EAX
  %1196 = zext i32 %1195 to i64
  %1197 = load i64, i64* %PC
  %1198 = add i64 %1197, 3
  store i64 %1198, i64* %PC
  %1199 = inttoptr i64 %1194 to i32*
  store i32 %1195, i32* %1199
  br label %block_40118e

block_401142:                                     ; preds = %block_400e80
  %1200 = load i64, i64* %PC
  %1201 = add i64 %1200, 11
  store i64 %1201, i64* %PC
  %1202 = load i32, i32* bitcast (%holdcount_type* @holdcount to i32*)
  %1203 = sub i32 %1202, 9305557
  %1204 = icmp ult i32 %1202, 9305557
  %1205 = zext i1 %1204 to i8
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1205, i8* %1206, align 1, !tbaa !2432
  %1207 = and i32 %1203, 255
  %1208 = call i32 @llvm.ctpop.i32(i32 %1207) #16
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  %1211 = xor i8 %1210, 1
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1211, i8* %1212, align 1, !tbaa !2446
  %1213 = xor i32 %1202, 9305557
  %1214 = xor i32 %1213, %1203
  %1215 = lshr i32 %1214, 4
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1217, i8* %1218, align 1, !tbaa !2447
  %1219 = icmp eq i32 %1203, 0
  %1220 = zext i1 %1219 to i8
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1220, i8* %1221, align 1, !tbaa !2448
  %1222 = lshr i32 %1203, 31
  %1223 = trunc i32 %1222 to i8
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1223, i8* %1224, align 1, !tbaa !2449
  %1225 = lshr i32 %1202, 31
  %1226 = xor i32 %1222, %1225
  %1227 = add nuw nsw i32 %1226, %1225
  %1228 = icmp eq i32 %1227, 2
  %1229 = zext i1 %1228 to i8
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1229, i8* %1230, align 1, !tbaa !2450
  %1231 = load i64, i64* %PC
  %1232 = add i64 %1231, 38
  %1233 = load i64, i64* %PC
  %1234 = add i64 %1233, 6
  %1235 = load i64, i64* %PC
  %1236 = add i64 %1235, 6
  store i64 %1236, i64* %PC
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1238 = load i8, i8* %1237, align 1, !tbaa !2448
  %1239 = icmp eq i8 %1238, 0
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1242 = select i1 %1239, i64 %1232, i64 %1234
  store i64 %1242, i64* %1241, align 8, !tbaa !2428
  %1243 = load i8, i8* %BRANCH_TAKEN
  %1244 = icmp eq i8 %1243, 1
  br i1 %1244, label %block_401173, label %block_401153
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ad0_append(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ad0:
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
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
  %31 = load i64, i64* %RSP
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 3
  store i64 %33, i64* %PC
  store i64 %31, i64* %RBP, align 8, !tbaa !2428
  %34 = load i64, i64* %RBP
  %35 = sub i64 %34, 8
  %36 = load i64, i64* %RDI
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 4
  store i64 %38, i64* %PC
  %39 = inttoptr i64 %35 to i64*
  store i64 %36, i64* %39
  %40 = load i64, i64* %RBP
  %41 = sub i64 %40, 16
  %42 = load i64, i64* %RSI
  %43 = load i64, i64* %PC
  %44 = add i64 %43, 4
  store i64 %44, i64* %PC
  %45 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %45
  %46 = load i64, i64* %RBP
  %47 = sub i64 %46, 8
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 4
  store i64 %49, i64* %PC
  %50 = inttoptr i64 %47 to i64*
  %51 = load i64, i64* %50
  store i64 %51, i64* %RSI, align 8, !tbaa !2428
  %52 = load i64, i64* %RSI
  %53 = load i64, i64* %PC
  %54 = add i64 %53, 7
  store i64 %54, i64* %PC
  %55 = inttoptr i64 %52 to i64*
  store i64 0, i64* %55
  br label %block_400ae7

block_400af5:                                     ; preds = %block_400ae7
  %56 = sub i64 %153, 16
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 4
  store i64 %58, i64* %PC
  %59 = inttoptr i64 %56 to i64*
  %60 = load i64, i64* %59
  store i64 %60, i64* %RAX, align 8, !tbaa !2428
  %61 = load i64, i64* %RAX
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 3
  store i64 %63, i64* %PC
  %64 = inttoptr i64 %61 to i64*
  %65 = load i64, i64* %64
  store i64 %65, i64* %RAX, align 8, !tbaa !2428
  %66 = load i64, i64* %RBP
  %67 = sub i64 %66, 16
  %68 = load i64, i64* %RAX
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 4
  store i64 %70, i64* %PC
  %71 = inttoptr i64 %67 to i64*
  store i64 %68, i64* %71
  %72 = load i64, i64* %PC
  %73 = sub i64 %72, 25
  %74 = load i64, i64* %PC
  %75 = add i64 %74, 5
  store i64 %75, i64* %PC
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %73, i64* %76, align 8, !tbaa !2428
  br label %block_400ae7

block_400b05:                                     ; preds = %block_400ae7
  %77 = sub i64 %153, 8
  %78 = load i64, i64* %PC
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC
  %80 = inttoptr i64 %77 to i64*
  %81 = load i64, i64* %80
  store i64 %81, i64* %RAX, align 8, !tbaa !2428
  %82 = load i64, i64* %RBP
  %83 = sub i64 %82, 16
  %84 = load i64, i64* %PC
  %85 = add i64 %84, 4
  store i64 %85, i64* %PC
  %86 = inttoptr i64 %83 to i64*
  %87 = load i64, i64* %86
  store i64 %87, i64* %RCX, align 8, !tbaa !2428
  %88 = load i64, i64* %RCX
  %89 = load i64, i64* %RAX
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 3
  store i64 %91, i64* %PC
  %92 = inttoptr i64 %88 to i64*
  store i64 %89, i64* %92
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 1
  store i64 %94, i64* %PC
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %96 = load i64, i64* %95, align 8, !tbaa !2428
  %97 = add i64 %96, 8
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98
  store i64 %99, i64* %RBP, align 8, !tbaa !2428
  store i64 %97, i64* %95, align 8, !tbaa !2428
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 1
  store i64 %101, i64* %PC
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %104 = load i64, i64* %103, align 8, !tbaa !2428
  %105 = inttoptr i64 %104 to i64*
  %106 = load i64, i64* %105
  store i64 %106, i64* %102, align 8, !tbaa !2428
  %107 = add i64 %104, 8
  store i64 %107, i64* %103, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400ae7:                                     ; preds = %block_400af5, %block_400ad0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400ad0 ], [ %MEMORY.0, %block_400af5 ]
  %108 = load i64, i64* %RBP
  %109 = sub i64 %108, 16
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 4
  store i64 %111, i64* %PC
  %112 = inttoptr i64 %109 to i64*
  %113 = load i64, i64* %112
  store i64 %113, i64* %RAX, align 8, !tbaa !2428
  %114 = load i64, i64* %RAX
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 4
  store i64 %116, i64* %PC
  %117 = inttoptr i64 %114 to i64*
  %118 = load i64, i64* %117
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %119, align 1, !tbaa !2432
  %120 = trunc i64 %118 to i32
  %121 = and i32 %120, 255
  %122 = call i32 @llvm.ctpop.i32(i32 %121) #16
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %125, i8* %126, align 1, !tbaa !2446
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %127, align 1, !tbaa !2447
  %128 = icmp eq i64 %118, 0
  %129 = zext i1 %128 to i8
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %129, i8* %130, align 1, !tbaa !2448
  %131 = lshr i64 %118, 63
  %132 = trunc i64 %131 to i8
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %132, i8* %133, align 1, !tbaa !2449
  %134 = lshr i64 %118, 63
  %135 = xor i64 %131, %134
  %136 = add nuw nsw i64 %135, %134
  %137 = icmp eq i64 %136, 2
  %138 = zext i1 %137 to i8
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %138, i8* %139, align 1, !tbaa !2450
  %140 = load i64, i64* %PC
  %141 = add i64 %140, 22
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 6
  %144 = load i64, i64* %PC
  %145 = add i64 %144, 6
  store i64 %145, i64* %PC
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %147 = load i8, i8* %146, align 1, !tbaa !2448
  store i8 %147, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %149 = icmp ne i8 %147, 0
  %150 = select i1 %149, i64 %141, i64 %143
  store i64 %150, i64* %148, align 8, !tbaa !2428
  %151 = load i8, i8* %BRANCH_TAKEN
  %152 = icmp eq i8 %151, 1
  %153 = load i64, i64* %RBP
  br i1 %152, label %block_400b05, label %block_400af5
}

; Function Attrs: noinline
define %struct.Memory* @sub_400450__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400450:
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
  store i64 ptrtoint (void ()* @callback_sub_401220___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_4011b0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
  %121 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i32 0, i32 0)
  store i64 %121, i64* %120, align 8, !tbaa !2428
  %122 = load i64, i64* %PC
  %123 = call %struct.Memory* @ext_602120___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
define %struct.Memory* @sub_401224__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401224:
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
define %struct.Memory* @sub_400600_pkt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %ESI = bitcast %union.anon* %14 to i32*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RAX = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RCX = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RDX = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 11
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RDI = bitcast %union.anon* %26 to i64*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 13
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RSP = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 15
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %RBP = bitcast %union.anon* %32 to i64*
  %33 = load i64, i64* %RBP
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 1
  store i64 %35, i64* %PC
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %37 = load i64, i64* %36, align 8, !tbaa !2428
  %38 = add i64 %37, -8
  %39 = inttoptr i64 %38 to i64*
  store i64 %33, i64* %39
  store i64 %38, i64* %36, align 8, !tbaa !2428
  %40 = load i64, i64* %RSP
  %41 = load i64, i64* %PC
  %42 = add i64 %41, 3
  store i64 %42, i64* %PC
  store i64 %40, i64* %RBP, align 8, !tbaa !2428
  %43 = load i64, i64* %RSP
  %44 = load i64, i64* %PC
  %45 = add i64 %44, 4
  store i64 %45, i64* %PC
  %46 = sub i64 %43, 32
  store i64 %46, i64* %RSP, align 8, !tbaa !2428
  %47 = icmp ult i64 %43, 32
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %48, i8* %49, align 1, !tbaa !2432
  %50 = trunc i64 %46 to i32
  %51 = and i32 %50, 255
  %52 = call i32 @llvm.ctpop.i32(i32 %51) #16
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %55, i8* %56, align 1, !tbaa !2446
  %57 = xor i64 32, %43
  %58 = xor i64 %57, %46
  %59 = lshr i64 %58, 4
  %60 = trunc i64 %59 to i8
  %61 = and i8 %60, 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %61, i8* %62, align 1, !tbaa !2447
  %63 = icmp eq i64 %46, 0
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %64, i8* %65, align 1, !tbaa !2448
  %66 = lshr i64 %46, 63
  %67 = trunc i64 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %67, i8* %68, align 1, !tbaa !2449
  %69 = lshr i64 %43, 63
  %70 = xor i64 %66, %69
  %71 = add nuw nsw i64 %70, %69
  %72 = icmp eq i64 %71, 2
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %73, i8* %74, align 1, !tbaa !2450
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 5
  store i64 %76, i64* %PC
  store i64 24, i64* %RAX, align 8, !tbaa !2428
  %77 = load i32, i32* %EAX
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 2
  store i64 %80, i64* %PC
  %81 = and i64 %78, 4294967295
  store i64 %81, i64* %RCX, align 8, !tbaa !2428
  %82 = load i64, i64* %RBP
  %83 = sub i64 %82, 8
  %84 = load i64, i64* %RDI
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 4
  store i64 %86, i64* %PC
  %87 = inttoptr i64 %83 to i64*
  store i64 %84, i64* %87
  %88 = load i64, i64* %RBP
  %89 = sub i64 %88, 12
  %90 = load i32, i32* %ESI
  %91 = zext i32 %90 to i64
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 3
  store i64 %93, i64* %PC
  %94 = inttoptr i64 %89 to i32*
  store i32 %90, i32* %94
  %95 = load i64, i64* %RBP
  %96 = sub i64 %95, 16
  %97 = load i32, i32* %EDX
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 3
  store i64 %100, i64* %PC
  %101 = inttoptr i64 %96 to i32*
  store i32 %97, i32* %101
  %102 = load i64, i64* %RCX
  %103 = load i64, i64* %PC
  %104 = add i64 %103, 3
  store i64 %104, i64* %PC
  store i64 %102, i64* %RDI, align 8, !tbaa !2428
  %105 = load i64, i64* %PC
  %106 = sub i64 %105, 476
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 5
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 5
  store i64 %110, i64* %PC
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %112 = load i64, i64* %111, align 8, !tbaa !2428
  %113 = add i64 %112, -8
  %114 = inttoptr i64 %113 to i64*
  store i64 %108, i64* %114
  store i64 %113, i64* %111, align 8, !tbaa !2428
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %106, i64* %115, align 8, !tbaa !2428
  %116 = load i64, i64* %PC
  %117 = call %struct.Memory* @ext_602128_malloc(%struct.State* %0, i64 %116, %struct.Memory* %2)
  %118 = load i64, i64* %RBP
  %119 = sub i64 %118, 32
  %120 = load i64, i64* %RAX
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 4
  store i64 %122, i64* %PC
  %123 = inttoptr i64 %119 to i64*
  store i64 %120, i64* %123
  %124 = load i64, i64* %RBP
  %125 = sub i64 %124, 20
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 7
  store i64 %127, i64* %PC
  %128 = inttoptr i64 %125 to i32*
  store i32 0, i32* %128
  br label %block_40062c

block_400636:                                     ; preds = %block_40062c
  %129 = sub i64 %260, 32
  %130 = load i64, i64* %PC
  %131 = add i64 %130, 4
  store i64 %131, i64* %PC
  %132 = inttoptr i64 %129 to i64*
  %133 = load i64, i64* %132
  store i64 %133, i64* %RAX, align 8, !tbaa !2428
  %134 = load i64, i64* %RBP
  %135 = sub i64 %134, 20
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 4
  store i64 %137, i64* %PC
  %138 = inttoptr i64 %135 to i32*
  %139 = load i32, i32* %138
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %RCX, align 8, !tbaa !2428
  %141 = load i64, i64* %RAX
  %142 = load i64, i64* %RCX
  %143 = add i64 %141, 20
  %144 = add i64 %143, %142
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 5
  store i64 %146, i64* %PC
  %147 = inttoptr i64 %144 to i8*
  store i8 0, i8* %147
  %148 = load i64, i64* %RBP
  %149 = sub i64 %148, 20
  %150 = load i64, i64* %PC
  %151 = add i64 %150, 3
  store i64 %151, i64* %PC
  %152 = inttoptr i64 %149 to i32*
  %153 = load i32, i32* %152
  %154 = zext i32 %153 to i64
  store i64 %154, i64* %RAX, align 8, !tbaa !2428
  %155 = load i64, i64* %RAX
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 3
  store i64 %157, i64* %PC
  %158 = trunc i64 %155 to i32
  %159 = add i32 1, %158
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RAX, align 8, !tbaa !2428
  %161 = icmp ult i32 %159, %158
  %162 = icmp ult i32 %159, 1
  %163 = or i1 %161, %162
  %164 = zext i1 %163 to i8
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %164, i8* %165, align 1, !tbaa !2432
  %166 = and i32 %159, 255
  %167 = call i32 @llvm.ctpop.i32(i32 %166) #16
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %170, i8* %171, align 1, !tbaa !2446
  %172 = xor i64 1, %155
  %173 = trunc i64 %172 to i32
  %174 = xor i32 %173, %159
  %175 = lshr i32 %174, 4
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %177, i8* %178, align 1, !tbaa !2447
  %179 = icmp eq i32 %159, 0
  %180 = zext i1 %179 to i8
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %180, i8* %181, align 1, !tbaa !2448
  %182 = lshr i32 %159, 31
  %183 = trunc i32 %182 to i8
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %183, i8* %184, align 1, !tbaa !2449
  %185 = lshr i32 %158, 31
  %186 = xor i32 %182, %185
  %187 = add nuw nsw i32 %186, %182
  %188 = icmp eq i32 %187, 2
  %189 = zext i1 %188 to i8
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %189, i8* %190, align 1, !tbaa !2450
  %191 = load i64, i64* %RBP
  %192 = sub i64 %191, 20
  %193 = load i32, i32* %EAX
  %194 = zext i32 %193 to i64
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 3
  store i64 %196, i64* %PC
  %197 = inttoptr i64 %192 to i32*
  store i32 %193, i32* %197
  %198 = load i64, i64* %PC
  %199 = sub i64 %198, 32
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 5
  store i64 %201, i64* %PC
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %199, i64* %202, align 8, !tbaa !2428
  br label %block_40062c

block_40062c:                                     ; preds = %block_400636, %block_400600
  %MEMORY.0 = phi %struct.Memory* [ %117, %block_400600 ], [ %MEMORY.0, %block_400636 ]
  %203 = load i64, i64* %RBP
  %204 = sub i64 %203, 20
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 4
  store i64 %206, i64* %PC
  %207 = inttoptr i64 %204 to i32*
  %208 = load i32, i32* %207
  %209 = sub i32 %208, 3
  %210 = icmp ult i32 %208, 3
  %211 = zext i1 %210 to i8
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %211, i8* %212, align 1, !tbaa !2432
  %213 = and i32 %209, 255
  %214 = call i32 @llvm.ctpop.i32(i32 %213) #16
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %217, i8* %218, align 1, !tbaa !2446
  %219 = xor i32 %208, 3
  %220 = xor i32 %219, %209
  %221 = lshr i32 %220, 4
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %223, i8* %224, align 1, !tbaa !2447
  %225 = icmp eq i32 %209, 0
  %226 = zext i1 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %226, i8* %227, align 1, !tbaa !2448
  %228 = lshr i32 %209, 31
  %229 = trunc i32 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %229, i8* %230, align 1, !tbaa !2449
  %231 = lshr i32 %208, 31
  %232 = xor i32 %228, %231
  %233 = add nuw nsw i32 %232, %231
  %234 = icmp eq i32 %233, 2
  %235 = zext i1 %234 to i8
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %235, i8* %236, align 1, !tbaa !2450
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 33
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 6
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 6
  store i64 %242, i64* %PC
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %244 = load i8, i8* %243, align 1, !tbaa !2448
  %245 = icmp eq i8 %244, 0
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %247 = load i8, i8* %246, align 1, !tbaa !2449
  %248 = icmp ne i8 %247, 0
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %250 = load i8, i8* %249, align 1, !tbaa !2450
  %251 = icmp ne i8 %250, 0
  %252 = xor i1 %248, %251
  %253 = xor i1 %252, true
  %254 = and i1 %245, %253
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %257 = select i1 %254, i64 %238, i64 %240
  store i64 %257, i64* %256, align 8, !tbaa !2428
  %258 = load i8, i8* %BRANCH_TAKEN
  %259 = icmp eq i8 %258, 1
  %260 = load i64, i64* %RBP
  br i1 %259, label %block_400651, label %block_400636

block_400651:                                     ; preds = %block_40062c
  %261 = sub i64 %260, 8
  %262 = load i64, i64* %PC
  %263 = add i64 %262, 4
  store i64 %263, i64* %PC
  %264 = inttoptr i64 %261 to i64*
  %265 = load i64, i64* %264
  store i64 %265, i64* %RAX, align 8, !tbaa !2428
  %266 = load i64, i64* %RBP
  %267 = sub i64 %266, 32
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 4
  store i64 %269, i64* %PC
  %270 = inttoptr i64 %267 to i64*
  %271 = load i64, i64* %270
  store i64 %271, i64* %RCX, align 8, !tbaa !2428
  %272 = load i64, i64* %RCX
  %273 = load i64, i64* %RAX
  %274 = load i64, i64* %PC
  %275 = add i64 %274, 3
  store i64 %275, i64* %PC
  %276 = inttoptr i64 %272 to i64*
  store i64 %273, i64* %276
  %277 = load i64, i64* %RBP
  %278 = sub i64 %277, 12
  %279 = load i64, i64* %PC
  %280 = add i64 %279, 3
  store i64 %280, i64* %PC
  %281 = inttoptr i64 %278 to i32*
  %282 = load i32, i32* %281
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RDX, align 8, !tbaa !2428
  %284 = load i64, i64* %RBP
  %285 = sub i64 %284, 32
  %286 = load i64, i64* %PC
  %287 = add i64 %286, 4
  store i64 %287, i64* %PC
  %288 = inttoptr i64 %285 to i64*
  %289 = load i64, i64* %288
  store i64 %289, i64* %RAX, align 8, !tbaa !2428
  %290 = load i64, i64* %RAX
  %291 = add i64 %290, 8
  %292 = load i32, i32* %EDX
  %293 = zext i32 %292 to i64
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 3
  store i64 %295, i64* %PC
  %296 = inttoptr i64 %291 to i32*
  store i32 %292, i32* %296
  %297 = load i64, i64* %RBP
  %298 = sub i64 %297, 16
  %299 = load i64, i64* %PC
  %300 = add i64 %299, 3
  store i64 %300, i64* %PC
  %301 = inttoptr i64 %298 to i32*
  %302 = load i32, i32* %301
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RDX, align 8, !tbaa !2428
  %304 = load i64, i64* %RBP
  %305 = sub i64 %304, 32
  %306 = load i64, i64* %PC
  %307 = add i64 %306, 4
  store i64 %307, i64* %PC
  %308 = inttoptr i64 %305 to i64*
  %309 = load i64, i64* %308
  store i64 %309, i64* %RAX, align 8, !tbaa !2428
  %310 = load i64, i64* %RAX
  %311 = add i64 %310, 12
  %312 = load i32, i32* %EDX
  %313 = zext i32 %312 to i64
  %314 = load i64, i64* %PC
  %315 = add i64 %314, 3
  store i64 %315, i64* %PC
  %316 = inttoptr i64 %311 to i32*
  store i32 %312, i32* %316
  %317 = load i64, i64* %RBP
  %318 = sub i64 %317, 32
  %319 = load i64, i64* %PC
  %320 = add i64 %319, 4
  store i64 %320, i64* %PC
  %321 = inttoptr i64 %318 to i64*
  %322 = load i64, i64* %321
  store i64 %322, i64* %RAX, align 8, !tbaa !2428
  %323 = load i64, i64* %RAX
  %324 = add i64 %323, 16
  %325 = load i64, i64* %PC
  %326 = add i64 %325, 7
  store i64 %326, i64* %PC
  %327 = inttoptr i64 %324 to i32*
  store i32 0, i32* %327
  %328 = load i64, i64* %RBP
  %329 = sub i64 %328, 32
  %330 = load i64, i64* %PC
  %331 = add i64 %330, 4
  store i64 %331, i64* %PC
  %332 = inttoptr i64 %329 to i64*
  %333 = load i64, i64* %332
  store i64 %333, i64* %RAX, align 8, !tbaa !2428
  %334 = load i64, i64* %RSP
  %335 = load i64, i64* %PC
  %336 = add i64 %335, 4
  store i64 %336, i64* %PC
  %337 = add i64 32, %334
  store i64 %337, i64* %RSP, align 8, !tbaa !2428
  %338 = icmp ult i64 %337, %334
  %339 = icmp ult i64 %337, 32
  %340 = or i1 %338, %339
  %341 = zext i1 %340 to i8
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %341, i8* %342, align 1, !tbaa !2432
  %343 = trunc i64 %337 to i32
  %344 = and i32 %343, 255
  %345 = call i32 @llvm.ctpop.i32(i32 %344) #16
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = xor i8 %347, 1
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %348, i8* %349, align 1, !tbaa !2446
  %350 = xor i64 32, %334
  %351 = xor i64 %350, %337
  %352 = lshr i64 %351, 4
  %353 = trunc i64 %352 to i8
  %354 = and i8 %353, 1
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %354, i8* %355, align 1, !tbaa !2447
  %356 = icmp eq i64 %337, 0
  %357 = zext i1 %356 to i8
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %357, i8* %358, align 1, !tbaa !2448
  %359 = lshr i64 %337, 63
  %360 = trunc i64 %359 to i8
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %360, i8* %361, align 1, !tbaa !2449
  %362 = lshr i64 %334, 63
  %363 = xor i64 %359, %362
  %364 = add nuw nsw i64 %363, %359
  %365 = icmp eq i64 %364, 2
  %366 = zext i1 %365 to i8
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %366, i8* %367, align 1, !tbaa !2450
  %368 = load i64, i64* %PC
  %369 = add i64 %368, 1
  store i64 %369, i64* %PC
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %371 = load i64, i64* %370, align 8, !tbaa !2428
  %372 = add i64 %371, 8
  %373 = inttoptr i64 %371 to i64*
  %374 = load i64, i64* %373
  store i64 %374, i64* %RBP, align 8, !tbaa !2428
  store i64 %372, i64* %370, align 8, !tbaa !2428
  %375 = load i64, i64* %PC
  %376 = add i64 %375, 1
  store i64 %376, i64* %PC
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %379 = load i64, i64* %378, align 8, !tbaa !2428
  %380 = inttoptr i64 %379 to i64*
  %381 = load i64, i64* %380
  store i64 %381, i64* %377, align 8, !tbaa !2428
  %382 = add i64 %379, 8
  store i64 %382, i64* %378, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400de0_devfn(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400de0:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %15 = getelementptr inbounds %struct.GPR, %struct.GPR* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %15, i32 0, i32 0
  %RAX = bitcast %union.anon* %16 to i64*
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %RCX = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 11
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RDI = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 13
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RSP = bitcast %union.anon* %25 to i64*
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %27 = getelementptr inbounds %struct.GPR, %struct.GPR* %26, i32 0, i32 15
  %28 = getelementptr inbounds %struct.Reg, %struct.Reg* %27, i32 0, i32 0
  %RBP = bitcast %union.anon* %28 to i64*
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
  %36 = load i64, i64* %RSP
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 3
  store i64 %38, i64* %PC
  store i64 %36, i64* %RBP, align 8, !tbaa !2428
  %39 = load i64, i64* %RSP
  %40 = load i64, i64* %PC
  %41 = add i64 %40, 4
  store i64 %41, i64* %PC
  %42 = sub i64 %39, 16
  store i64 %42, i64* %RSP, align 8, !tbaa !2428
  %43 = icmp ult i64 %39, 16
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %44, i8* %45, align 1, !tbaa !2432
  %46 = trunc i64 %42 to i32
  %47 = and i32 %46, 255
  %48 = call i32 @llvm.ctpop.i32(i32 %47) #16
  %49 = trunc i32 %48 to i8
  %50 = and i8 %49, 1
  %51 = xor i8 %50, 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %51, i8* %52, align 1, !tbaa !2446
  %53 = xor i64 16, %39
  %54 = xor i64 %53, %42
  %55 = lshr i64 %54, 4
  %56 = trunc i64 %55 to i8
  %57 = and i8 %56, 1
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %57, i8* %58, align 1, !tbaa !2447
  %59 = icmp eq i64 %42, 0
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %60, i8* %61, align 1, !tbaa !2448
  %62 = lshr i64 %42, 63
  %63 = trunc i64 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %63, i8* %64, align 1, !tbaa !2449
  %65 = lshr i64 %39, 63
  %66 = xor i64 %62, %65
  %67 = add nuw nsw i64 %66, %65
  %68 = icmp eq i64 %67, 2
  %69 = zext i1 %68 to i8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %69, i8* %70, align 1, !tbaa !2450
  %71 = load i64, i64* %RBP
  %72 = sub i64 %71, 16
  %73 = load i64, i64* %RDI
  %74 = load i64, i64* %PC
  %75 = add i64 %74, 4
  store i64 %75, i64* %PC
  %76 = inttoptr i64 %72 to i64*
  store i64 %73, i64* %76
  %77 = load i64, i64* %RBP
  %78 = sub i64 %77, 16
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 5
  store i64 %80, i64* %PC
  %81 = inttoptr i64 %78 to i64*
  %82 = load i64, i64* %81
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %83, align 1, !tbaa !2432
  %84 = trunc i64 %82 to i32
  %85 = and i32 %84, 255
  %86 = call i32 @llvm.ctpop.i32(i32 %85) #16
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %89, i8* %90, align 1, !tbaa !2446
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %91, align 1, !tbaa !2447
  %92 = icmp eq i64 %82, 0
  %93 = zext i1 %92 to i8
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %93, i8* %94, align 1, !tbaa !2448
  %95 = lshr i64 %82, 63
  %96 = trunc i64 %95 to i8
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %96, i8* %97, align 1, !tbaa !2449
  %98 = lshr i64 %82, 63
  %99 = xor i64 %95, %98
  %100 = add nuw nsw i64 %99, %98
  %101 = icmp eq i64 %100, 2
  %102 = zext i1 %101 to i8
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %102, i8* %103, align 1, !tbaa !2450
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 77
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 6
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 6
  store i64 %109, i64* %PC
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %111 = load i8, i8* %110, align 1, !tbaa !2448
  %112 = icmp eq i8 %111, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %115 = select i1 %112, i64 %105, i64 %107
  store i64 %115, i64* %114, align 8, !tbaa !2428
  %116 = load i8, i8* %BRANCH_TAKEN
  %117 = icmp eq i8 %116, 1
  br i1 %117, label %block_400e3e, label %block_400df7

block_400e3e:                                     ; preds = %block_400de0
  %118 = load i64, i64* %RBP
  %119 = sub i64 %118, 16
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 4
  store i64 %121, i64* %PC
  %122 = inttoptr i64 %119 to i64*
  %123 = load i64, i64* %122
  store i64 %123, i64* %RAX, align 8, !tbaa !2428
  %124 = load i64, i64* %RAX
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 8
  store i64 %126, i64* %PC
  store i64 %124, i64* bitcast (%v1_type* @v1 to i64*)
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 8
  store i64 %128, i64* %PC
  %129 = load i32, i32* bitcast (%tracing_type* @tracing to i32*)
  %130 = sub i32 %129, 1
  %131 = icmp ult i32 %129, 1
  %132 = zext i1 %131 to i8
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %132, i8* %133, align 1, !tbaa !2432
  %134 = and i32 %130, 255
  %135 = call i32 @llvm.ctpop.i32(i32 %134) #16
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  %138 = xor i8 %137, 1
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %138, i8* %139, align 1, !tbaa !2446
  %140 = xor i32 %129, 1
  %141 = xor i32 %140, %130
  %142 = lshr i32 %141, 4
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %144, i8* %145, align 1, !tbaa !2447
  %146 = icmp eq i32 %130, 0
  %147 = zext i1 %146 to i8
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %147, i8* %148, align 1, !tbaa !2448
  %149 = lshr i32 %130, 31
  %150 = trunc i32 %149 to i8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %150, i8* %151, align 1, !tbaa !2449
  %152 = lshr i32 %129, 31
  %153 = xor i32 %149, %152
  %154 = add nuw nsw i32 %153, %152
  %155 = icmp eq i32 %154, 2
  %156 = zext i1 %155 to i8
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %156, i8* %157, align 1, !tbaa !2450
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 23
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 6
  %162 = load i64, i64* %PC
  %163 = add i64 %162, 6
  store i64 %163, i64* %PC
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %165 = load i8, i8* %164, align 1, !tbaa !2448
  %166 = icmp eq i8 %165, 0
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %169 = select i1 %166, i64 %159, i64 %161
  store i64 %169, i64* %168, align 8, !tbaa !2428
  %170 = load i8, i8* %BRANCH_TAKEN
  %171 = icmp eq i8 %170, 1
  br i1 %171, label %block_400e69, label %block_400e58

block_400e58:                                     ; preds = %block_400e3e
  %172 = load i64, i64* %RBP
  %173 = sub i64 %172, 16
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 4
  store i64 %175, i64* %PC
  %176 = inttoptr i64 %173 to i64*
  %177 = load i64, i64* %176
  store i64 %177, i64* %RAX, align 8, !tbaa !2428
  %178 = load i64, i64* %RAX
  %179 = add i64 %178, 16
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 3
  store i64 %181, i64* %PC
  %182 = inttoptr i64 %179 to i32*
  %183 = load i32, i32* %182
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RCX, align 8, !tbaa !2428
  %185 = load i8, i8* %CL
  %186 = zext i8 %185 to i64
  %187 = load i64, i64* %PC
  %188 = add i64 %187, 2
  store i64 %188, i64* %PC
  store i8 %185, i8* %DL, align 1, !tbaa !2451
  %189 = load i8, i8* %DL
  %190 = zext i8 %189 to i64
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 3
  store i64 %192, i64* %PC
  %193 = trunc i64 %190 to i32
  %194 = shl i32 %193, 24
  %195 = ashr exact i32 %194, 24
  %196 = zext i32 %195 to i64
  store i64 %196, i64* %RDI, align 8, !tbaa !2428
  %197 = load i64, i64* %PC
  %198 = sub i64 %197, 2004
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 5
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 5
  store i64 %202, i64* %PC
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %204 = load i64, i64* %203, align 8, !tbaa !2428
  %205 = add i64 %204, -8
  %206 = inttoptr i64 %205 to i64*
  store i64 %200, i64* %206
  store i64 %205, i64* %203, align 8, !tbaa !2428
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %198, i64* %207, align 8, !tbaa !2428
  %208 = load i64, i64* %PC
  %209 = call %struct.Memory* @sub_400690_trace_renamed_(%struct.State* %0, i64 %208, %struct.Memory* %2)
  br label %block_400e69

block_400df7:                                     ; preds = %block_400de0
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 9
  store i64 %211, i64* %PC
  %212 = load i64, i64* bitcast (%v1_type* @v1 to i64*)
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %213, align 1, !tbaa !2432
  %214 = trunc i64 %212 to i32
  %215 = and i32 %214, 255
  %216 = call i32 @llvm.ctpop.i32(i32 %215) #16
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  %219 = xor i8 %218, 1
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %219, i8* %220, align 1, !tbaa !2446
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %221, align 1, !tbaa !2447
  %222 = icmp eq i64 %212, 0
  %223 = zext i1 %222 to i8
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %223, i8* %224, align 1, !tbaa !2448
  %225 = lshr i64 %212, 63
  %226 = trunc i64 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %226, i8* %227, align 1, !tbaa !2449
  %228 = lshr i64 %212, 63
  %229 = xor i64 %225, %228
  %230 = add nuw nsw i64 %229, %228
  %231 = icmp eq i64 %230, 2
  %232 = zext i1 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %232, i8* %233, align 1, !tbaa !2450
  %234 = load i64, i64* %PC
  %235 = add i64 %234, 20
  %236 = load i64, i64* %PC
  %237 = add i64 %236, 6
  %238 = load i64, i64* %PC
  %239 = add i64 %238, 6
  store i64 %239, i64* %PC
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %241 = load i8, i8* %240, align 1, !tbaa !2448
  %242 = icmp eq i8 %241, 0
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %245 = select i1 %242, i64 %235, i64 %237
  store i64 %245, i64* %244, align 8, !tbaa !2428
  %246 = load i8, i8* %BRANCH_TAKEN
  %247 = icmp eq i8 %246, 1
  %248 = load i64, i64* %PC
  br i1 %247, label %block_400e14, label %block_400e06

block_400e14:                                     ; preds = %block_400df7
  %249 = add i64 %248, 8
  store i64 %249, i64* %PC
  %250 = load i64, i64* bitcast (%v1_type* @v1 to i64*)
  store i64 %250, i64* %RAX, align 8, !tbaa !2428
  %251 = load i64, i64* %RBP
  %252 = sub i64 %251, 16
  %253 = load i64, i64* %RAX
  %254 = load i64, i64* %PC
  %255 = add i64 %254, 4
  store i64 %255, i64* %PC
  %256 = inttoptr i64 %252 to i64*
  store i64 %253, i64* %256
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 12
  store i64 %258, i64* %PC
  store i64 0, i64* bitcast (%v1_type* @v1 to i64*)
  %259 = load i64, i64* %RBP
  %260 = sub i64 %259, 16
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 4
  store i64 %262, i64* %PC
  %263 = inttoptr i64 %260 to i64*
  %264 = load i64, i64* %263
  store i64 %264, i64* %RDI, align 8, !tbaa !2428
  %265 = load i64, i64* %PC
  %266 = sub i64 %265, 1088
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 5
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 5
  store i64 %270, i64* %PC
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %272 = load i64, i64* %271, align 8, !tbaa !2428
  %273 = add i64 %272, -8
  %274 = inttoptr i64 %273 to i64*
  store i64 %268, i64* %274
  store i64 %273, i64* %271, align 8, !tbaa !2428
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %266, i64* %275, align 8, !tbaa !2428
  %276 = load i64, i64* %PC
  %277 = call %struct.Memory* @sub_4009f0_qpkt_renamed_(%struct.State* %0, i64 %276, %struct.Memory* %2)
  %278 = load i64, i64* %RBP
  %279 = sub i64 %278, 8
  %280 = load i64, i64* %RAX
  %281 = load i64, i64* %PC
  %282 = add i64 %281, 4
  store i64 %282, i64* %PC
  %283 = inttoptr i64 %279 to i64*
  store i64 %280, i64* %283
  %284 = load i64, i64* %PC
  %285 = add i64 %284, 57
  %286 = load i64, i64* %PC
  %287 = add i64 %286, 5
  store i64 %287, i64* %PC
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %285, i64* %288, align 8, !tbaa !2428
  br label %block_400e72

block_400e72:                                     ; preds = %block_400e06, %block_400e69, %block_400e14
  %MEMORY.0 = phi %struct.Memory* [ %356, %block_400e69 ], [ %277, %block_400e14 ], [ %374, %block_400e06 ]
  %289 = load i64, i64* %RBP
  %290 = sub i64 %289, 8
  %291 = load i64, i64* %PC
  %292 = add i64 %291, 4
  store i64 %292, i64* %PC
  %293 = inttoptr i64 %290 to i64*
  %294 = load i64, i64* %293
  store i64 %294, i64* %RAX, align 8, !tbaa !2428
  %295 = load i64, i64* %RSP
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 4
  store i64 %297, i64* %PC
  %298 = add i64 16, %295
  store i64 %298, i64* %RSP, align 8, !tbaa !2428
  %299 = icmp ult i64 %298, %295
  %300 = icmp ult i64 %298, 16
  %301 = or i1 %299, %300
  %302 = zext i1 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %302, i8* %303, align 1, !tbaa !2432
  %304 = trunc i64 %298 to i32
  %305 = and i32 %304, 255
  %306 = call i32 @llvm.ctpop.i32(i32 %305) #16
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %309, i8* %310, align 1, !tbaa !2446
  %311 = xor i64 16, %295
  %312 = xor i64 %311, %298
  %313 = lshr i64 %312, 4
  %314 = trunc i64 %313 to i8
  %315 = and i8 %314, 1
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %315, i8* %316, align 1, !tbaa !2447
  %317 = icmp eq i64 %298, 0
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %318, i8* %319, align 1, !tbaa !2448
  %320 = lshr i64 %298, 63
  %321 = trunc i64 %320 to i8
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %321, i8* %322, align 1, !tbaa !2449
  %323 = lshr i64 %295, 63
  %324 = xor i64 %320, %323
  %325 = add nuw nsw i64 %324, %320
  %326 = icmp eq i64 %325, 2
  %327 = zext i1 %326 to i8
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %327, i8* %328, align 1, !tbaa !2450
  %329 = load i64, i64* %PC
  %330 = add i64 %329, 1
  store i64 %330, i64* %PC
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %332 = load i64, i64* %331, align 8, !tbaa !2428
  %333 = add i64 %332, 8
  %334 = inttoptr i64 %332 to i64*
  %335 = load i64, i64* %334
  store i64 %335, i64* %RBP, align 8, !tbaa !2428
  store i64 %333, i64* %331, align 8, !tbaa !2428
  %336 = load i64, i64* %PC
  %337 = add i64 %336, 1
  store i64 %337, i64* %PC
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %340 = load i64, i64* %339, align 8, !tbaa !2428
  %341 = inttoptr i64 %340 to i64*
  %342 = load i64, i64* %341
  store i64 %342, i64* %338, align 8, !tbaa !2428
  %343 = add i64 %340, 8
  store i64 %343, i64* %339, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400e69:                                     ; preds = %block_400e58, %block_400e3e
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400e3e ], [ %209, %block_400e58 ]
  %344 = load i64, i64* %PC
  %345 = sub i64 %344, 1449
  %346 = load i64, i64* %PC
  %347 = add i64 %346, 5
  %348 = load i64, i64* %PC
  %349 = add i64 %348, 5
  store i64 %349, i64* %PC
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %351 = load i64, i64* %350, align 8, !tbaa !2428
  %352 = add i64 %351, -8
  %353 = inttoptr i64 %352 to i64*
  store i64 %347, i64* %353
  store i64 %352, i64* %350, align 8, !tbaa !2428
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %345, i64* %354, align 8, !tbaa !2428
  %355 = load i64, i64* %PC
  %356 = call %struct.Memory* @sub_4008c0_holdself_renamed_(%struct.State* %0, i64 %355, %struct.Memory* %MEMORY.1)
  %357 = load i64, i64* %RBP
  %358 = sub i64 %357, 8
  %359 = load i64, i64* %RAX
  %360 = load i64, i64* %PC
  %361 = add i64 %360, 4
  store i64 %361, i64* %PC
  %362 = inttoptr i64 %358 to i64*
  store i64 %359, i64* %362
  br label %block_400e72

block_400e06:                                     ; preds = %block_400df7
  %363 = sub i64 %248, 1382
  %364 = load i64, i64* %PC
  %365 = add i64 %364, 5
  %366 = load i64, i64* %PC
  %367 = add i64 %366, 5
  store i64 %367, i64* %PC
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %369 = load i64, i64* %368, align 8, !tbaa !2428
  %370 = add i64 %369, -8
  %371 = inttoptr i64 %370 to i64*
  store i64 %365, i64* %371
  store i64 %370, i64* %368, align 8, !tbaa !2428
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %363, i64* %372, align 8, !tbaa !2428
  %373 = load i64, i64* %PC
  %374 = call %struct.Memory* @sub_4008a0_Wait_renamed_(%struct.State* %0, i64 %373, %struct.Memory* %2)
  %375 = load i64, i64* %RBP
  %376 = sub i64 %375, 8
  %377 = load i64, i64* %RAX
  %378 = load i64, i64* %PC
  %379 = add i64 %378, 4
  store i64 %379, i64* %PC
  %380 = inttoptr i64 %376 to i64*
  store i64 %377, i64* %380
  %381 = load i64, i64* %PC
  %382 = add i64 %381, 99
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 5
  store i64 %384, i64* %PC
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %382, i64* %385, align 8, !tbaa !2428
  br label %block_400e72
}

; Function Attrs: noinline
define %struct.Memory* @sub_400700_schedule(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400700:
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
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %EDX = bitcast %union.anon* %22 to i32*
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
  %57 = sub i64 %54, 48
  store i64 %57, i64* %RSP, align 8, !tbaa !2428
  %58 = icmp ult i64 %54, 48
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
  %68 = xor i64 48, %54
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
  br label %block_400708

block_40077e:                                     ; preds = %block_40074e
  store i64 %565, i64* %PC
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %86 = load i64, i64* %RCX
  %87 = load i32, i32* %ECX
  %88 = zext i32 %87 to i64
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 2
  store i64 %90, i64* %PC
  %91 = xor i64 %88, %86
  %92 = trunc i64 %91 to i32
  %93 = and i64 %91, 4294967295
  store i64 %93, i64* %RCX, align 8, !tbaa !2428
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %94, align 1, !tbaa !2432
  %95 = and i32 %92, 255
  %96 = call i32 @llvm.ctpop.i32(i32 %95) #16
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %99, i8* %100, align 1, !tbaa !2446
  %101 = icmp eq i32 %92, 0
  %102 = zext i1 %101 to i8
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %102, i8* %103, align 1, !tbaa !2448
  %104 = lshr i32 %92, 31
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %105, i8* %106, align 1, !tbaa !2449
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %107, align 1, !tbaa !2450
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %108, align 1, !tbaa !2447
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 8
  store i64 %110, i64* %PC
  %111 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %111, i64* %RDX, align 8, !tbaa !2428
  %112 = load i64, i64* %RDX
  %113 = add i64 %112, 16
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 4
  store i64 %115, i64* %PC
  %116 = inttoptr i64 %113 to i64*
  %117 = load i64, i64* %116
  store i64 %117, i64* %RDX, align 8, !tbaa !2428
  %118 = load i64, i64* %RBP
  %119 = sub i64 %118, 8
  %120 = load i64, i64* %RDX
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 4
  store i64 %122, i64* %PC
  %123 = inttoptr i64 %119 to i64*
  store i64 %120, i64* %123
  %124 = load i64, i64* %RBP
  %125 = sub i64 %124, 8
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 4
  store i64 %127, i64* %PC
  %128 = inttoptr i64 %125 to i64*
  %129 = load i64, i64* %128
  store i64 %129, i64* %RDX, align 8, !tbaa !2428
  %130 = load i64, i64* %RDX
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 3
  store i64 %132, i64* %PC
  %133 = inttoptr i64 %130 to i64*
  %134 = load i64, i64* %133
  store i64 %134, i64* %RDX, align 8, !tbaa !2428
  %135 = load i64, i64* %PC
  %136 = add i64 %135, 8
  store i64 %136, i64* %PC
  %137 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %137, i64* %RSI, align 8, !tbaa !2428
  %138 = load i64, i64* %RSI
  %139 = add i64 %138, 16
  %140 = load i64, i64* %RDX
  %141 = load i64, i64* %PC
  %142 = add i64 %141, 4
  store i64 %142, i64* %PC
  %143 = inttoptr i64 %139 to i64*
  store i64 %140, i64* %143
  %144 = load i64, i64* %PC
  %145 = add i64 %144, 8
  store i64 %145, i64* %PC
  %146 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %146, i64* %RDX, align 8, !tbaa !2428
  %147 = load i64, i64* %RDX
  %148 = add i64 %147, 16
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 5
  store i64 %150, i64* %PC
  %151 = inttoptr i64 %148 to i64*
  %152 = load i64, i64* %151
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %153, align 1, !tbaa !2432
  %154 = trunc i64 %152 to i32
  %155 = and i32 %154, 255
  %156 = call i32 @llvm.ctpop.i32(i32 %155) #16
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %159, i8* %160, align 1, !tbaa !2446
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %161, align 1, !tbaa !2447
  %162 = icmp eq i64 %152, 0
  %163 = zext i1 %162 to i8
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %163, i8* %164, align 1, !tbaa !2448
  %165 = lshr i64 %152, 63
  %166 = trunc i64 %165 to i8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %166, i8* %167, align 1, !tbaa !2449
  %168 = lshr i64 %152, 63
  %169 = xor i64 %165, %168
  %170 = add nuw nsw i64 %169, %168
  %171 = icmp eq i64 %170, 2
  %172 = zext i1 %171 to i8
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %172, i8* %173, align 1, !tbaa !2450
  %174 = load i32, i32* %ECX
  %175 = zext i32 %174 to i64
  %176 = load i64, i64* %PC
  %177 = add i64 %176, 3
  store i64 %177, i64* %PC
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %179 = load i8, i8* %178, align 1, !tbaa !2448
  %180 = icmp ne i8 %179, 0
  %181 = load i64, i64* %RAX, align 8, !tbaa !2428
  %182 = select i1 %180, i64 %175, i64 %181
  %183 = and i64 %182, 4294967295
  store i64 %183, i64* %RAX, align 8, !tbaa !2428
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 8
  store i64 %185, i64* %PC
  %186 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %186, i64* %RDX, align 8, !tbaa !2428
  %187 = load i64, i64* %RDX
  %188 = add i64 %187, 24
  %189 = load i32, i32* %EAX
  %190 = zext i32 %189 to i64
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 3
  store i64 %192, i64* %PC
  %193 = inttoptr i64 %188 to i32*
  store i32 %189, i32* %193
  br label %block_4007c3

block_40073a:                                     ; preds = %block_400717
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 5
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 5
  store i64 %197, i64* %PC
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %195, i64* %198, align 8, !tbaa !2428
  %199 = load i64, i64* %RBP
  %200 = sub i64 %199, 20
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 3
  store i64 %202, i64* %PC
  %203 = inttoptr i64 %200 to i32*
  %204 = load i32, i32* %203
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %RAX, align 8, !tbaa !2428
  %206 = load i64, i64* %RAX
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC
  %209 = trunc i64 %206 to i32
  %210 = sub i32 %209, 2
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RAX, align 8, !tbaa !2428
  %212 = icmp ult i32 %209, 2
  %213 = zext i1 %212 to i8
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %213, i8* %214, align 1, !tbaa !2432
  %215 = and i32 %210, 255
  %216 = call i32 @llvm.ctpop.i32(i32 %215) #16
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  %219 = xor i8 %218, 1
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %219, i8* %220, align 1, !tbaa !2446
  %221 = xor i64 2, %206
  %222 = trunc i64 %221 to i32
  %223 = xor i32 %222, %210
  %224 = lshr i32 %223, 4
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %226, i8* %227, align 1, !tbaa !2447
  %228 = icmp eq i32 %210, 0
  %229 = zext i1 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %229, i8* %230, align 1, !tbaa !2448
  %231 = lshr i32 %210, 31
  %232 = trunc i32 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %232, i8* %233, align 1, !tbaa !2449
  %234 = lshr i32 %209, 31
  %235 = xor i32 %231, %234
  %236 = add nuw nsw i32 %235, %234
  %237 = icmp eq i32 %236, 2
  %238 = zext i1 %237 to i8
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %238, i8* %239, align 1, !tbaa !2450
  %240 = load i64, i64* %RBP
  %241 = sub i64 %240, 28
  %242 = load i32, i32* %EAX
  %243 = zext i32 %242 to i64
  %244 = load i64, i64* %PC
  %245 = add i64 %244, 3
  store i64 %245, i64* %PC
  %246 = inttoptr i64 %241 to i32*
  store i32 %242, i32* %246
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 298
  %249 = load i64, i64* %PC
  %250 = add i64 %249, 6
  %251 = load i64, i64* %PC
  %252 = add i64 %251, 6
  store i64 %252, i64* %PC
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %254 = load i8, i8* %253, align 1, !tbaa !2448
  store i8 %254, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %256 = icmp ne i8 %254, 0
  %257 = select i1 %256, i64 %248, i64 %250
  store i64 %257, i64* %255, align 8, !tbaa !2428
  %258 = load i8, i8* %BRANCH_TAKEN
  %259 = icmp eq i8 %258, 1
  br i1 %259, label %block_400872, label %block_40074e

block_400779:                                     ; preds = %block_400762
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 273
  %262 = load i64, i64* %PC
  %263 = add i64 %262, 5
  store i64 %263, i64* %PC
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %261, i64* %264, align 8, !tbaa !2428
  %265 = load i64, i64* %PC
  %266 = add i64 %265, 10
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 5
  store i64 %268, i64* %PC
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %266, i64* %269, align 8, !tbaa !2428
  br label %block_400894

block_400717:                                     ; preds = %block_400708
  %270 = load i64, i64* %RBP
  %271 = sub i64 %270, 8
  %272 = load i64, i64* %PC
  %273 = add i64 %272, 8
  store i64 %273, i64* %PC
  %274 = inttoptr i64 %271 to i64*
  store i64 0, i64* %274
  %275 = load i64, i64* %PC
  %276 = add i64 %275, 7
  store i64 %276, i64* %PC
  %277 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %277, i64* %RAX, align 8, !tbaa !2428
  %278 = load i64, i64* %RAX
  %279 = add i64 %278, 24
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 3
  store i64 %281, i64* %PC
  %282 = inttoptr i64 %279 to i32*
  %283 = load i32, i32* %282
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RCX, align 8, !tbaa !2428
  %285 = load i32, i32* %ECX
  %286 = zext i32 %285 to i64
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 2
  store i64 %288, i64* %PC
  %289 = and i64 %286, 4294967295
  store i64 %289, i64* %RDX, align 8, !tbaa !2428
  %290 = load i64, i64* %RDX
  %291 = load i64, i64* %PC
  %292 = add i64 %291, 3
  store i64 %292, i64* %PC
  %293 = trunc i64 %290 to i32
  %294 = sub i32 %293, 2
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %RDX, align 8, !tbaa !2428
  %296 = icmp ult i32 %293, 2
  %297 = zext i1 %296 to i8
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %297, i8* %298, align 1, !tbaa !2432
  %299 = and i32 %294, 255
  %300 = call i32 @llvm.ctpop.i32(i32 %299) #16
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %303, i8* %304, align 1, !tbaa !2446
  %305 = xor i64 2, %290
  %306 = trunc i64 %305 to i32
  %307 = xor i32 %306, %294
  %308 = lshr i32 %307, 4
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %310, i8* %311, align 1, !tbaa !2447
  %312 = icmp eq i32 %294, 0
  %313 = zext i1 %312 to i8
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %313, i8* %314, align 1, !tbaa !2448
  %315 = lshr i32 %294, 31
  %316 = trunc i32 %315 to i8
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %316, i8* %317, align 1, !tbaa !2449
  %318 = lshr i32 %293, 31
  %319 = xor i32 %315, %318
  %320 = add nuw nsw i32 %319, %318
  %321 = icmp eq i32 %320, 2
  %322 = zext i1 %321 to i8
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %322, i8* %323, align 1, !tbaa !2450
  %324 = load i64, i64* %RBP
  %325 = sub i64 %324, 20
  %326 = load i32, i32* %ECX
  %327 = zext i32 %326 to i64
  %328 = load i64, i64* %PC
  %329 = add i64 %328, 3
  store i64 %329, i64* %PC
  %330 = inttoptr i64 %325 to i32*
  store i32 %326, i32* %330
  %331 = load i64, i64* %RBP
  %332 = sub i64 %331, 24
  %333 = load i32, i32* %EDX
  %334 = zext i32 %333 to i64
  %335 = load i64, i64* %PC
  %336 = add i64 %335, 3
  store i64 %336, i64* %PC
  %337 = inttoptr i64 %332 to i32*
  store i32 %333, i32* %337
  %338 = load i64, i64* %PC
  %339 = add i64 %338, 143
  %340 = load i64, i64* %PC
  %341 = add i64 %340, 6
  %342 = load i64, i64* %PC
  %343 = add i64 %342, 6
  store i64 %343, i64* %PC
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %345 = load i8, i8* %344, align 1, !tbaa !2432
  store i8 %345, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %347 = icmp ne i8 %345, 0
  %348 = select i1 %347, i64 %339, i64 %341
  store i64 %348, i64* %346, align 8, !tbaa !2428
  %349 = load i8, i8* %BRANCH_TAKEN
  %350 = icmp eq i8 %349, 1
  br i1 %350, label %block_4007c3, label %block_40073a

block_400894:                                     ; preds = %block_400708, %block_400779
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.3, %block_400708 ], [ %MEMORY.3, %block_400779 ]
  %351 = load i64, i64* %RSP
  %352 = load i64, i64* %PC
  %353 = add i64 %352, 4
  store i64 %353, i64* %PC
  %354 = add i64 48, %351
  store i64 %354, i64* %RSP, align 8, !tbaa !2428
  %355 = icmp ult i64 %354, %351
  %356 = icmp ult i64 %354, 48
  %357 = or i1 %355, %356
  %358 = zext i1 %357 to i8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %358, i8* %359, align 1, !tbaa !2432
  %360 = trunc i64 %354 to i32
  %361 = and i32 %360, 255
  %362 = call i32 @llvm.ctpop.i32(i32 %361) #16
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = xor i8 %364, 1
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %365, i8* %366, align 1, !tbaa !2446
  %367 = xor i64 48, %351
  %368 = xor i64 %367, %354
  %369 = lshr i64 %368, 4
  %370 = trunc i64 %369 to i8
  %371 = and i8 %370, 1
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %371, i8* %372, align 1, !tbaa !2447
  %373 = icmp eq i64 %354, 0
  %374 = zext i1 %373 to i8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %374, i8* %375, align 1, !tbaa !2448
  %376 = lshr i64 %354, 63
  %377 = trunc i64 %376 to i8
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %377, i8* %378, align 1, !tbaa !2449
  %379 = lshr i64 %351, 63
  %380 = xor i64 %376, %379
  %381 = add nuw nsw i64 %380, %376
  %382 = icmp eq i64 %381, 2
  %383 = zext i1 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %383, i8* %384, align 1, !tbaa !2450
  %385 = load i64, i64* %PC
  %386 = add i64 %385, 1
  store i64 %386, i64* %PC
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %388 = load i64, i64* %387, align 8, !tbaa !2428
  %389 = add i64 %388, 8
  %390 = inttoptr i64 %388 to i64*
  %391 = load i64, i64* %390
  store i64 %391, i64* %RBP, align 8, !tbaa !2428
  store i64 %389, i64* %387, align 8, !tbaa !2428
  %392 = load i64, i64* %PC
  %393 = add i64 %392, 1
  store i64 %393, i64* %PC
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %396 = load i64, i64* %395, align 8, !tbaa !2428
  %397 = inttoptr i64 %396 to i64*
  %398 = load i64, i64* %397
  store i64 %398, i64* %394, align 8, !tbaa !2428
  %399 = add i64 %396, 8
  store i64 %399, i64* %395, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4007c3:                                     ; preds = %block_400717, %block_40077e
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.3, %block_400717 ], [ %MEMORY.3, %block_40077e ]
  %400 = load i64, i64* %PC
  %401 = add i64 %400, 8
  store i64 %401, i64* %PC
  %402 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %402, i64* %RAX, align 8, !tbaa !2428
  %403 = load i64, i64* %RAX
  %404 = add i64 %403, 8
  %405 = load i64, i64* %PC
  %406 = add i64 %405, 4
  store i64 %406, i64* %PC
  %407 = inttoptr i64 %404 to i32*
  %408 = load i32, i32* %407
  %409 = sext i32 %408 to i64
  store i64 %409, i64* %RAX, align 8, !tbaa !2428
  %410 = load i64, i64* %RAX
  %411 = load i64, i64* %PC
  %412 = add i64 %411, 8
  store i64 %412, i64* %PC
  store i64 %410, i64* bitcast (%taskid_type* @taskid to i64*)
  %413 = load i64, i64* %PC
  %414 = add i64 %413, 8
  store i64 %414, i64* %PC
  %415 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %415, i64* %RAX, align 8, !tbaa !2428
  %416 = load i64, i64* %RAX
  %417 = add i64 %416, 40
  %418 = load i64, i64* %PC
  %419 = add i64 %418, 4
  store i64 %419, i64* %PC
  %420 = inttoptr i64 %417 to i64*
  %421 = load i64, i64* %420
  store i64 %421, i64* %RAX, align 8, !tbaa !2428
  %422 = load i64, i64* %RAX
  %423 = load i64, i64* %PC
  %424 = add i64 %423, 8
  store i64 %424, i64* %PC
  store i64 %422, i64* bitcast (%v1_type* @v1 to i64*)
  %425 = load i64, i64* %PC
  %426 = add i64 %425, 8
  store i64 %426, i64* %PC
  %427 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %427, i64* %RAX, align 8, !tbaa !2428
  %428 = load i64, i64* %RAX
  %429 = add i64 %428, 48
  %430 = load i64, i64* %PC
  %431 = add i64 %430, 4
  store i64 %431, i64* %PC
  %432 = inttoptr i64 %429 to i64*
  %433 = load i64, i64* %432
  store i64 %433, i64* %RAX, align 8, !tbaa !2428
  %434 = load i64, i64* %RAX
  %435 = load i64, i64* %PC
  %436 = add i64 %435, 8
  store i64 %436, i64* %PC
  store i64 %434, i64* bitcast (%v2_type* @v2 to i64*)
  %437 = load i64, i64* %PC
  %438 = add i64 %437, 8
  store i64 %438, i64* %PC
  %439 = load i32, i32* bitcast (%tracing_type* @tracing to i32*)
  %440 = sub i32 %439, 1
  %441 = icmp ult i32 %439, 1
  %442 = zext i1 %441 to i8
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %442, i8* %443, align 1, !tbaa !2432
  %444 = and i32 %440, 255
  %445 = call i32 @llvm.ctpop.i32(i32 %444) #16
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = xor i8 %447, 1
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %448, i8* %449, align 1, !tbaa !2446
  %450 = xor i32 %439, 1
  %451 = xor i32 %450, %440
  %452 = lshr i32 %451, 4
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %454, i8* %455, align 1, !tbaa !2447
  %456 = icmp eq i32 %440, 0
  %457 = zext i1 %456 to i8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %457, i8* %458, align 1, !tbaa !2448
  %459 = lshr i32 %440, 31
  %460 = trunc i32 %459 to i8
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %460, i8* %461, align 1, !tbaa !2449
  %462 = lshr i32 %439, 31
  %463 = xor i32 %459, %462
  %464 = add nuw nsw i32 %463, %462
  %465 = icmp eq i32 %464, 2
  %466 = zext i1 %465 to i8
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %466, i8* %467, align 1, !tbaa !2450
  %468 = load i64, i64* %PC
  %469 = add i64 %468, 28
  %470 = load i64, i64* %PC
  %471 = add i64 %470, 6
  %472 = load i64, i64* %PC
  %473 = add i64 %472, 6
  store i64 %473, i64* %PC
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %475 = load i8, i8* %474, align 1, !tbaa !2448
  %476 = icmp eq i8 %475, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %479 = select i1 %476, i64 %469, i64 %471
  store i64 %479, i64* %478, align 8, !tbaa !2428
  %480 = load i8, i8* %BRANCH_TAKEN
  %481 = icmp eq i8 %480, 1
  br i1 %481, label %block_400823, label %block_40080d

block_400872:                                     ; preds = %block_400762, %block_40073a
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.3, %block_40073a ], [ %MEMORY.3, %block_400762 ]
  %482 = load i64, i64* %PC
  %483 = add i64 %482, 8
  store i64 %483, i64* %PC
  %484 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %484, i64* %RAX, align 8, !tbaa !2428
  %485 = load i64, i64* %RAX
  %486 = load i64, i64* %PC
  %487 = add i64 %486, 3
  store i64 %487, i64* %PC
  %488 = inttoptr i64 %485 to i64*
  %489 = load i64, i64* %488
  store i64 %489, i64* %RAX, align 8, !tbaa !2428
  %490 = load i64, i64* %RAX
  %491 = load i64, i64* %PC
  %492 = add i64 %491, 8
  store i64 %492, i64* %PC
  store i64 %490, i64* bitcast (%tcb_type* @tcb to i64*)
  %493 = load i64, i64* %PC
  %494 = add i64 %493, 10
  %495 = load i64, i64* %PC
  %496 = add i64 %495, 5
  store i64 %496, i64* %PC
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %494, i64* %497, align 8, !tbaa !2428
  br label %block_40088f

block_40074e:                                     ; preds = %block_40073a
  %498 = load i64, i64* %PC
  %499 = add i64 %498, 5
  %500 = load i64, i64* %PC
  %501 = add i64 %500, 5
  store i64 %501, i64* %PC
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %499, i64* %502, align 8, !tbaa !2428
  %503 = load i64, i64* %RBP
  %504 = sub i64 %503, 20
  %505 = load i64, i64* %PC
  %506 = add i64 %505, 3
  store i64 %506, i64* %PC
  %507 = inttoptr i64 %504 to i32*
  %508 = load i32, i32* %507
  %509 = zext i32 %508 to i64
  store i64 %509, i64* %RAX, align 8, !tbaa !2428
  %510 = load i64, i64* %RAX
  %511 = load i64, i64* %PC
  %512 = add i64 %511, 3
  store i64 %512, i64* %PC
  %513 = trunc i64 %510 to i32
  %514 = sub i32 %513, 3
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RAX, align 8, !tbaa !2428
  %516 = icmp ult i32 %513, 3
  %517 = zext i1 %516 to i8
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %517, i8* %518, align 1, !tbaa !2432
  %519 = and i32 %514, 255
  %520 = call i32 @llvm.ctpop.i32(i32 %519) #16
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = xor i8 %522, 1
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %523, i8* %524, align 1, !tbaa !2446
  %525 = xor i64 3, %510
  %526 = trunc i64 %525 to i32
  %527 = xor i32 %526, %514
  %528 = lshr i32 %527, 4
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %530, i8* %531, align 1, !tbaa !2447
  %532 = icmp eq i32 %514, 0
  %533 = zext i1 %532 to i8
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %533, i8* %534, align 1, !tbaa !2448
  %535 = lshr i32 %514, 31
  %536 = trunc i32 %535 to i8
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %536, i8* %537, align 1, !tbaa !2449
  %538 = lshr i32 %513, 31
  %539 = xor i32 %535, %538
  %540 = add nuw nsw i32 %539, %538
  %541 = icmp eq i32 %540, 2
  %542 = zext i1 %541 to i8
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %542, i8* %543, align 1, !tbaa !2450
  %544 = load i64, i64* %RBP
  %545 = sub i64 %544, 32
  %546 = load i32, i32* %EAX
  %547 = zext i32 %546 to i64
  %548 = load i64, i64* %PC
  %549 = add i64 %548, 3
  store i64 %549, i64* %PC
  %550 = inttoptr i64 %545 to i32*
  store i32 %546, i32* %550
  %551 = load i64, i64* %PC
  %552 = add i64 %551, 34
  %553 = load i64, i64* %PC
  %554 = add i64 %553, 6
  %555 = load i64, i64* %PC
  %556 = add i64 %555, 6
  store i64 %556, i64* %PC
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %558 = load i8, i8* %557, align 1, !tbaa !2448
  store i8 %558, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %560 = icmp ne i8 %558, 0
  %561 = select i1 %560, i64 %552, i64 %554
  store i64 %561, i64* %559, align 8, !tbaa !2428
  %562 = load i8, i8* %BRANCH_TAKEN
  %563 = icmp eq i8 %562, 1
  %564 = load i64, i64* %PC
  %565 = add i64 %564, 5
  br i1 %563, label %block_40077e, label %block_400762

block_400708:                                     ; preds = %block_40088f, %block_400700
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_400700 ], [ %MEMORY.5, %block_40088f ]
  %566 = load i64, i64* %PC
  %567 = add i64 %566, 9
  store i64 %567, i64* %PC
  %568 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %569, align 1, !tbaa !2432
  %570 = trunc i64 %568 to i32
  %571 = and i32 %570, 255
  %572 = call i32 @llvm.ctpop.i32(i32 %571) #16
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = xor i8 %574, 1
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %575, i8* %576, align 1, !tbaa !2446
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %577, align 1, !tbaa !2447
  %578 = icmp eq i64 %568, 0
  %579 = zext i1 %578 to i8
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %579, i8* %580, align 1, !tbaa !2448
  %581 = lshr i64 %568, 63
  %582 = trunc i64 %581 to i8
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %582, i8* %583, align 1, !tbaa !2449
  %584 = lshr i64 %568, 63
  %585 = xor i64 %581, %584
  %586 = add nuw nsw i64 %585, %584
  %587 = icmp eq i64 %586, 2
  %588 = zext i1 %587 to i8
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %588, i8* %589, align 1, !tbaa !2450
  %590 = load i64, i64* %PC
  %591 = add i64 %590, 387
  %592 = load i64, i64* %PC
  %593 = add i64 %592, 6
  %594 = load i64, i64* %PC
  %595 = add i64 %594, 6
  store i64 %595, i64* %PC
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %597 = load i8, i8* %596, align 1, !tbaa !2448
  store i8 %597, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %599 = icmp ne i8 %597, 0
  %600 = select i1 %599, i64 %591, i64 %593
  store i64 %600, i64* %598, align 8, !tbaa !2428
  %601 = load i8, i8* %BRANCH_TAKEN
  %602 = icmp eq i8 %601, 1
  br i1 %602, label %block_400894, label %block_400717

block_400823:                                     ; preds = %block_40080d, %block_4007c3
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.1, %block_4007c3 ], [ %735, %block_40080d ]
  %603 = load i64, i64* %PC
  %604 = add i64 %603, 8
  store i64 %604, i64* %PC
  %605 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %605, i64* %RAX, align 8, !tbaa !2428
  %606 = load i64, i64* %RAX
  %607 = add i64 %606, 32
  %608 = load i64, i64* %PC
  %609 = add i64 %608, 4
  store i64 %609, i64* %PC
  %610 = inttoptr i64 %607 to i64*
  %611 = load i64, i64* %610
  store i64 %611, i64* %RAX, align 8, !tbaa !2428
  %612 = load i64, i64* %RBP
  %613 = sub i64 %612, 8
  %614 = load i64, i64* %PC
  %615 = add i64 %614, 4
  store i64 %615, i64* %PC
  %616 = inttoptr i64 %613 to i64*
  %617 = load i64, i64* %616
  store i64 %617, i64* %RDI, align 8, !tbaa !2428
  %618 = load i64, i64* %RAX
  %619 = load i64, i64* %PC
  %620 = add i64 %619, 2
  %621 = load i64, i64* %PC
  %622 = add i64 %621, 2
  store i64 %622, i64* %PC
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %624 = load i64, i64* %623, align 8, !tbaa !2428
  %625 = add i64 %624, -8
  %626 = inttoptr i64 %625 to i64*
  store i64 %620, i64* %626
  store i64 %625, i64* %623, align 8, !tbaa !2428
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %618, i64* %627, align 8, !tbaa !2428
  %628 = load i64, i64* %PC
  %629 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %628, %struct.Memory* %MEMORY.4)
  %630 = load i64, i64* %RBP
  %631 = sub i64 %630, 16
  %632 = load i64, i64* %RAX
  %633 = load i64, i64* %PC
  %634 = add i64 %633, 4
  store i64 %634, i64* %PC
  %635 = inttoptr i64 %631 to i64*
  store i64 %632, i64* %635
  %636 = load i64, i64* %PC
  %637 = add i64 %636, 8
  store i64 %637, i64* %PC
  %638 = load i64, i64* bitcast (%v1_type* @v1 to i64*)
  store i64 %638, i64* %RAX, align 8, !tbaa !2428
  %639 = load i64, i64* %PC
  %640 = add i64 %639, 8
  store i64 %640, i64* %PC
  %641 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %641, i64* %RDI, align 8, !tbaa !2428
  %642 = load i64, i64* %RDI
  %643 = add i64 %642, 40
  %644 = load i64, i64* %RAX
  %645 = load i64, i64* %PC
  %646 = add i64 %645, 4
  store i64 %646, i64* %PC
  %647 = inttoptr i64 %643 to i64*
  store i64 %644, i64* %647
  %648 = load i64, i64* %PC
  %649 = add i64 %648, 8
  store i64 %649, i64* %PC
  %650 = load i64, i64* bitcast (%v2_type* @v2 to i64*)
  store i64 %650, i64* %RAX, align 8, !tbaa !2428
  %651 = load i64, i64* %PC
  %652 = add i64 %651, 8
  store i64 %652, i64* %PC
  %653 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %653, i64* %RDI, align 8, !tbaa !2428
  %654 = load i64, i64* %RDI
  %655 = add i64 %654, 48
  %656 = load i64, i64* %RAX
  %657 = load i64, i64* %PC
  %658 = add i64 %657, 4
  store i64 %658, i64* %PC
  %659 = inttoptr i64 %655 to i64*
  store i64 %656, i64* %659
  %660 = load i64, i64* %RBP
  %661 = sub i64 %660, 16
  %662 = load i64, i64* %PC
  %663 = add i64 %662, 4
  store i64 %663, i64* %PC
  %664 = inttoptr i64 %661 to i64*
  %665 = load i64, i64* %664
  store i64 %665, i64* %RAX, align 8, !tbaa !2428
  %666 = load i64, i64* %RAX
  %667 = load i64, i64* %PC
  %668 = add i64 %667, 8
  store i64 %668, i64* %PC
  store i64 %666, i64* bitcast (%tcb_type* @tcb to i64*)
  %669 = load i64, i64* %PC
  %670 = add i64 %669, 34
  %671 = load i64, i64* %PC
  %672 = add i64 %671, 5
  store i64 %672, i64* %PC
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %670, i64* %673, align 8, !tbaa !2428
  br label %block_40088f

block_40080d:                                     ; preds = %block_4007c3
  %674 = load i64, i64* %PC
  %675 = add i64 %674, 8
  store i64 %675, i64* %PC
  %676 = load i64, i64* bitcast (%taskid_type* @taskid to i64*)
  store i64 %676, i64* %RAX, align 8, !tbaa !2428
  %677 = load i64, i64* %RAX
  %678 = load i64, i64* %PC
  %679 = add i64 %678, 4
  store i64 %679, i64* %PC
  %680 = add i64 48, %677
  store i64 %680, i64* %RAX, align 8, !tbaa !2428
  %681 = icmp ult i64 %680, %677
  %682 = icmp ult i64 %680, 48
  %683 = or i1 %681, %682
  %684 = zext i1 %683 to i8
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %684, i8* %685, align 1, !tbaa !2432
  %686 = trunc i64 %680 to i32
  %687 = and i32 %686, 255
  %688 = call i32 @llvm.ctpop.i32(i32 %687) #16
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  %691 = xor i8 %690, 1
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %691, i8* %692, align 1, !tbaa !2446
  %693 = xor i64 48, %677
  %694 = xor i64 %693, %680
  %695 = lshr i64 %694, 4
  %696 = trunc i64 %695 to i8
  %697 = and i8 %696, 1
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %697, i8* %698, align 1, !tbaa !2447
  %699 = icmp eq i64 %680, 0
  %700 = zext i1 %699 to i8
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %700, i8* %701, align 1, !tbaa !2448
  %702 = lshr i64 %680, 63
  %703 = trunc i64 %702 to i8
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %703, i8* %704, align 1, !tbaa !2449
  %705 = lshr i64 %677, 63
  %706 = xor i64 %702, %705
  %707 = add nuw nsw i64 %706, %702
  %708 = icmp eq i64 %707, 2
  %709 = zext i1 %708 to i8
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %709, i8* %710, align 1, !tbaa !2450
  %711 = load i8, i8* %AL
  %712 = zext i8 %711 to i64
  %713 = load i64, i64* %PC
  %714 = add i64 %713, 2
  store i64 %714, i64* %PC
  store i8 %711, i8* %CL, align 1, !tbaa !2451
  %715 = load i8, i8* %CL
  %716 = zext i8 %715 to i64
  %717 = load i64, i64* %PC
  %718 = add i64 %717, 3
  store i64 %718, i64* %PC
  %719 = trunc i64 %716 to i32
  %720 = shl i32 %719, 24
  %721 = ashr exact i32 %720, 24
  %722 = zext i32 %721 to i64
  store i64 %722, i64* %RDI, align 8, !tbaa !2428
  %723 = load i64, i64* %PC
  %724 = sub i64 %723, 398
  %725 = load i64, i64* %PC
  %726 = add i64 %725, 5
  %727 = load i64, i64* %PC
  %728 = add i64 %727, 5
  store i64 %728, i64* %PC
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %730 = load i64, i64* %729, align 8, !tbaa !2428
  %731 = add i64 %730, -8
  %732 = inttoptr i64 %731 to i64*
  store i64 %726, i64* %732
  store i64 %731, i64* %729, align 8, !tbaa !2428
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %724, i64* %733, align 8, !tbaa !2428
  %734 = load i64, i64* %PC
  %735 = call %struct.Memory* @sub_400690_trace_renamed_(%struct.State* %0, i64 %734, %struct.Memory* %MEMORY.1)
  br label %block_400823

block_400762:                                     ; preds = %block_40074e
  %736 = load i64, i64* %PC
  %737 = add i64 %736, 5
  store i64 %737, i64* %PC
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %565, i64* %738, align 8, !tbaa !2428
  %739 = load i64, i64* %RBP
  %740 = sub i64 %739, 20
  %741 = load i64, i64* %PC
  %742 = add i64 %741, 3
  store i64 %742, i64* %PC
  %743 = inttoptr i64 %740 to i32*
  %744 = load i32, i32* %743
  %745 = zext i32 %744 to i64
  store i64 %745, i64* %RAX, align 8, !tbaa !2428
  %746 = load i64, i64* %RAX
  %747 = load i64, i64* %PC
  %748 = add i64 %747, 3
  store i64 %748, i64* %PC
  %749 = trunc i64 %746 to i32
  %750 = add i32 -4, %749
  %751 = zext i32 %750 to i64
  store i64 %751, i64* %RAX, align 8, !tbaa !2428
  %752 = icmp ult i32 %750, %749
  %753 = icmp ult i32 %750, -4
  %754 = or i1 %752, %753
  %755 = zext i1 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %755, i8* %756, align 1, !tbaa !2432
  %757 = and i32 %750, 255
  %758 = call i32 @llvm.ctpop.i32(i32 %757) #16
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  %761 = xor i8 %760, 1
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %761, i8* %762, align 1, !tbaa !2446
  %763 = xor i64 -4, %746
  %764 = trunc i64 %763 to i32
  %765 = xor i32 %764, %750
  %766 = lshr i32 %765, 4
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %768, i8* %769, align 1, !tbaa !2447
  %770 = icmp eq i32 %750, 0
  %771 = zext i1 %770 to i8
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %771, i8* %772, align 1, !tbaa !2448
  %773 = lshr i32 %750, 31
  %774 = trunc i32 %773 to i8
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %774, i8* %775, align 1, !tbaa !2449
  %776 = lshr i32 %749, 31
  %777 = xor i32 %773, %776
  %778 = xor i32 %773, 1
  %779 = add nuw nsw i32 %777, %778
  %780 = icmp eq i32 %779, 2
  %781 = zext i1 %780 to i8
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %781, i8* %782, align 1, !tbaa !2450
  %783 = load i64, i64* %RAX
  %784 = load i64, i64* %PC
  %785 = add i64 %784, 3
  store i64 %785, i64* %PC
  %786 = trunc i64 %783 to i32
  %787 = sub i32 %786, 4
  %788 = zext i32 %787 to i64
  store i64 %788, i64* %RAX, align 8, !tbaa !2428
  %789 = icmp ult i32 %786, 4
  %790 = zext i1 %789 to i8
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %790, i8* %791, align 1, !tbaa !2432
  %792 = and i32 %787, 255
  %793 = call i32 @llvm.ctpop.i32(i32 %792) #16
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  %796 = xor i8 %795, 1
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %796, i8* %797, align 1, !tbaa !2446
  %798 = xor i64 4, %783
  %799 = trunc i64 %798 to i32
  %800 = xor i32 %799, %787
  %801 = lshr i32 %800, 4
  %802 = trunc i32 %801 to i8
  %803 = and i8 %802, 1
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %803, i8* %804, align 1, !tbaa !2447
  %805 = icmp eq i32 %787, 0
  %806 = zext i1 %805 to i8
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %806, i8* %807, align 1, !tbaa !2448
  %808 = lshr i32 %787, 31
  %809 = trunc i32 %808 to i8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %809, i8* %810, align 1, !tbaa !2449
  %811 = lshr i32 %786, 31
  %812 = xor i32 %808, %811
  %813 = add nuw nsw i32 %812, %811
  %814 = icmp eq i32 %813, 2
  %815 = zext i1 %814 to i8
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %815, i8* %816, align 1, !tbaa !2450
  %817 = load i64, i64* %RBP
  %818 = sub i64 %817, 36
  %819 = load i32, i32* %EAX
  %820 = zext i32 %819 to i64
  %821 = load i64, i64* %PC
  %822 = add i64 %821, 3
  store i64 %822, i64* %PC
  %823 = inttoptr i64 %818 to i32*
  store i32 %819, i32* %823
  %824 = load i64, i64* %PC
  %825 = add i64 %824, 255
  %826 = load i64, i64* %PC
  %827 = add i64 %826, 6
  %828 = load i64, i64* %PC
  %829 = add i64 %828, 6
  store i64 %829, i64* %PC
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %831 = load i8, i8* %830, align 1, !tbaa !2432
  store i8 %831, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %833 = icmp ne i8 %831, 0
  %834 = select i1 %833, i64 %825, i64 %827
  store i64 %834, i64* %832, align 8, !tbaa !2428
  %835 = load i8, i8* %BRANCH_TAKEN
  %836 = icmp eq i8 %835, 1
  br i1 %836, label %block_400872, label %block_400779

block_40088f:                                     ; preds = %block_400823, %block_400872
  %MEMORY.5 = phi %struct.Memory* [ %629, %block_400823 ], [ %MEMORY.2, %block_400872 ]
  %837 = load i64, i64* %PC
  %838 = sub i64 %837, 391
  %839 = load i64, i64* %PC
  %840 = add i64 %839, 5
  store i64 %840, i64* %PC
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %838, i64* %841, align 8, !tbaa !2428
  br label %block_400708
}

; Function Attrs: noinline
define %struct.Memory* @sub_400530_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400530:
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
  %35 = tail call %struct.Memory* @sub_4004c0_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004c0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  br i1 %190, label %block_4004f8, label %block_4004e3

block_4004fa:                                     ; preds = %block_4004ed
  %191 = load i64, i64* %RAX
  %192 = load i64, i64* %RAX
  %193 = add i64 %192, %191
  %194 = load i16, i16* %AX
  %195 = zext i16 %194 to i64
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 6
  store i64 %197, i64* %PC
  %198 = load i64, i64* %PC
  %199 = tail call %struct.Memory* @sub_400500___do_global_dtors_aux(%struct.State* %0, i64 %198, %struct.Memory* %2)
  ret %struct.Memory* %199

block_4004f5:                                     ; preds = %block_4004ed
  %200 = load i64, i64* %RAX
  %201 = load i32, i32* %EAX
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC
  br label %block_4004f8

block_4004ed:                                     ; preds = %block_4004e3
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
    i64 4195578, label %block_4004fa
    i64 4195573, label %block_4004f5
  ]

block_4004f8:                                     ; preds = %block_4004e3, %block_4004f5, %block_4004c0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4004c0 ], [ %2, %block_4004e3 ], [ %2, %block_4004f5 ]
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

block_4004e3:                                     ; preds = %block_4004c0
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
  br i1 %269, label %block_4004f8, label %block_4004ed

; <label>:270:                                    ; preds = %block_4004ed
  %271 = load i64, i64* %PC
  %272 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %271, %struct.Memory* %2)
  ret %struct.Memory* %272
}

; Function Attrs: noinline
define %struct.Memory* @sub_4011b0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4011b0:
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
  store i64 ptrtoint (%seg_601df0__init_array_type* @seg_601df0__init_array to i64), i64* %R12, align 8, !tbaa !2428
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
  store i64 add (i64 ptrtoint (%seg_601df0__init_array_type* @seg_601df0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
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
  %200 = sub i64 %199, 3548
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
  %211 = call %struct.Memory* @sub_400400__init_proc_renamed_(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  br i1 %245, label %block_401206, label %block_4011e6

block_401206:                                     ; preds = %block_4011f0, %block_4011b0
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_4011b0 ], [ %387, %block_4011f0 ]
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

block_4011e6:                                     ; preds = %block_4011b0
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
  br label %block_4011f0

block_4011f0:                                     ; preds = %block_4011f0, %block_4011e6
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_4011e6 ], [ %387, %block_4011f0 ]
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
  br i1 %470, label %block_4011f0, label %block_401206
}

; Function Attrs: noinline
define %struct.Memory* @sub_400500___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400500:
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
  br i1 %47, label %block_400520, label %block_400509

block_400520:                                     ; preds = %block_400500
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

block_400509:                                     ; preds = %block_400500
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
  %78 = call %struct.Memory* @sub_400490_deregister_tm_clones_renamed_(%struct.State* %0, i64 %77, %struct.Memory* %2)
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
define %struct.Memory* @sub_400490_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  br i1 %81, label %block_4004b8, label %block_4004a1

block_4004b8:                                     ; preds = %block_4004a1, %block_4004b3, %block_400490
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400490 ], [ %2, %block_4004a1 ], [ %2, %block_4004b3 ]
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

block_4004ba:                                     ; preds = %block_4004ab
  %97 = load i64, i64* %RAX
  %98 = load i64, i64* %RAX
  %99 = add i64 %98, %97
  %100 = load i16, i16* %AX
  %101 = zext i16 %100 to i64
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 6
  store i64 %103, i64* %PC
  %104 = load i64, i64* %PC
  %105 = tail call %struct.Memory* @sub_4004c0_register_tm_clones(%struct.State* %0, i64 %104, %struct.Memory* %2)
  ret %struct.Memory* %105

block_4004b3:                                     ; preds = %block_4004ab
  %106 = load i64, i64* %RAX
  %107 = load i64, i64* %RAX
  %108 = add i64 %107, %106
  %109 = load i32, i32* %EAX
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 5
  store i64 %112, i64* %PC
  br label %block_4004b8

block_4004ab:                                     ; preds = %block_4004a1
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
    i64 4195514, label %block_4004ba
    i64 4195507, label %block_4004b3
  ]

block_4004a1:                                     ; preds = %block_400490
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
  br i1 %162, label %block_4004b8, label %block_4004ab

; <label>:163:                                    ; preds = %block_4004ab
  %164 = load i64, i64* %PC
  %165 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %164, %struct.Memory* %2)
  ret %struct.Memory* %165
}

; Function Attrs: noinline
define %struct.Memory* @sub_4008c0_holdself(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4008c0:
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
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 13
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RSP = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 15
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RBP = bitcast %union.anon* %20 to i64*
  %21 = load i64, i64* %RBP
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 1
  store i64 %23, i64* %PC
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %25 = load i64, i64* %24, align 8, !tbaa !2428
  %26 = add i64 %25, -8
  %27 = inttoptr i64 %26 to i64*
  store i64 %21, i64* %27
  store i64 %26, i64* %24, align 8, !tbaa !2428
  %28 = load i64, i64* %RSP
  %29 = load i64, i64* %PC
  %30 = add i64 %29, 3
  store i64 %30, i64* %PC
  store i64 %28, i64* %RBP, align 8, !tbaa !2428
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 7
  store i64 %32, i64* %PC
  %33 = load i32, i32* bitcast (%holdcount_type* @holdcount to i32*)
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %RAX, align 8, !tbaa !2428
  %35 = load i64, i64* %RAX
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 3
  store i64 %37, i64* %PC
  %38 = trunc i64 %35 to i32
  %39 = add i32 1, %38
  %40 = zext i32 %39 to i64
  store i64 %40, i64* %RAX, align 8, !tbaa !2428
  %41 = icmp ult i32 %39, %38
  %42 = icmp ult i32 %39, 1
  %43 = or i1 %41, %42
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %44, i8* %45, align 1, !tbaa !2432
  %46 = and i32 %39, 255
  %47 = call i32 @llvm.ctpop.i32(i32 %46) #16
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, 1
  %50 = xor i8 %49, 1
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %50, i8* %51, align 1, !tbaa !2446
  %52 = xor i64 1, %35
  %53 = trunc i64 %52 to i32
  %54 = xor i32 %53, %39
  %55 = lshr i32 %54, 4
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %57, i8* %58, align 1, !tbaa !2447
  %59 = icmp eq i32 %39, 0
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %60, i8* %61, align 1, !tbaa !2448
  %62 = lshr i32 %39, 31
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %63, i8* %64, align 1, !tbaa !2449
  %65 = lshr i32 %38, 31
  %66 = xor i32 %62, %65
  %67 = add nuw nsw i32 %66, %62
  %68 = icmp eq i32 %67, 2
  %69 = zext i1 %68 to i8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %69, i8* %70, align 1, !tbaa !2450
  %71 = load i32, i32* %EAX
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 7
  store i64 %74, i64* %PC
  store i32 %71, i32* bitcast (%holdcount_type* @holdcount to i32*)
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 8
  store i64 %76, i64* %PC
  %77 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %77, i64* %RCX, align 8, !tbaa !2428
  %78 = load i64, i64* %RCX
  %79 = add i64 %78, 24
  %80 = load i64, i64* %PC
  %81 = add i64 %80, 3
  store i64 %81, i64* %PC
  %82 = inttoptr i64 %79 to i32*
  %83 = load i32, i32* %82
  %84 = zext i32 %83 to i64
  store i64 %84, i64* %RAX, align 8, !tbaa !2428
  %85 = load i64, i64* %RAX
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 3
  store i64 %87, i64* %PC
  %88 = or i64 4, %85
  %89 = trunc i64 %88 to i32
  %90 = and i64 %88, 4294967295
  store i64 %90, i64* %RAX, align 8, !tbaa !2428
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %91, align 1, !tbaa !2432
  %92 = and i32 %89, 255
  %93 = call i32 @llvm.ctpop.i32(i32 %92) #16
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %96, i8* %97, align 1, !tbaa !2446
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %98, align 1, !tbaa !2448
  %99 = lshr i32 %89, 31
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %100, i8* %101, align 1, !tbaa !2449
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %102, align 1, !tbaa !2450
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %103, align 1, !tbaa !2447
  %104 = load i64, i64* %RCX
  %105 = add i64 %104, 24
  %106 = load i32, i32* %EAX
  %107 = zext i32 %106 to i64
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 3
  store i64 %109, i64* %PC
  %110 = inttoptr i64 %105 to i32*
  store i32 %106, i32* %110
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 8
  store i64 %112, i64* %PC
  %113 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %113, i64* %RCX, align 8, !tbaa !2428
  %114 = load i64, i64* %RCX
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 3
  store i64 %116, i64* %PC
  %117 = inttoptr i64 %114 to i64*
  %118 = load i64, i64* %117
  store i64 %118, i64* %RAX, align 8, !tbaa !2428
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 1
  store i64 %120, i64* %PC
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %122 = load i64, i64* %121, align 8, !tbaa !2428
  %123 = add i64 %122, 8
  %124 = inttoptr i64 %122 to i64*
  %125 = load i64, i64* %124
  store i64 %125, i64* %RBP, align 8, !tbaa !2428
  store i64 %123, i64* %121, align 8, !tbaa !2428
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 1
  store i64 %127, i64* %PC
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %130 = load i64, i64* %129, align 8, !tbaa !2428
  %131 = inttoptr i64 %130 to i64*
  %132 = load i64, i64* %131
  store i64 %132, i64* %128, align 8, !tbaa !2428
  %133 = add i64 %130, 8
  store i64 %133, i64* %129, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400900_findtcb(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %EAX = bitcast %union.anon* %12 to i32*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 11
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %EDI = bitcast %union.anon* %15 to i32*
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %RAX = bitcast %union.anon* %18 to i64*
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
  %35 = load i64, i64* %34, align 8, !tbaa !2428
  %36 = add i64 %35, -8
  %37 = inttoptr i64 %36 to i64*
  store i64 %31, i64* %37
  store i64 %36, i64* %34, align 8, !tbaa !2428
  %38 = load i64, i64* %RSP
  %39 = load i64, i64* %PC
  %40 = add i64 %39, 3
  store i64 %40, i64* %PC
  store i64 %38, i64* %RBP, align 8, !tbaa !2428
  %41 = load i64, i64* %RSP
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC
  %44 = sub i64 %41, 32
  store i64 %44, i64* %RSP, align 8, !tbaa !2428
  %45 = icmp ult i64 %41, 32
  %46 = zext i1 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %46, i8* %47, align 1, !tbaa !2432
  %48 = trunc i64 %44 to i32
  %49 = and i32 %48, 255
  %50 = call i32 @llvm.ctpop.i32(i32 %49) #16
  %51 = trunc i32 %50 to i8
  %52 = and i8 %51, 1
  %53 = xor i8 %52, 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %53, i8* %54, align 1, !tbaa !2446
  %55 = xor i64 32, %41
  %56 = xor i64 %55, %44
  %57 = lshr i64 %56, 4
  %58 = trunc i64 %57 to i8
  %59 = and i8 %58, 1
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %59, i8* %60, align 1, !tbaa !2447
  %61 = icmp eq i64 %44, 0
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %62, i8* %63, align 1, !tbaa !2448
  %64 = lshr i64 %44, 63
  %65 = trunc i64 %64 to i8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %65, i8* %66, align 1, !tbaa !2449
  %67 = lshr i64 %41, 63
  %68 = xor i64 %64, %67
  %69 = add nuw nsw i64 %68, %67
  %70 = icmp eq i64 %69, 2
  %71 = zext i1 %70 to i8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %71, i8* %72, align 1, !tbaa !2450
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC
  store i64 1, i64* %RAX, align 8, !tbaa !2428
  %75 = load i64, i64* %RBP
  %76 = sub i64 %75, 4
  %77 = load i32, i32* %EDI
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 3
  store i64 %80, i64* %PC
  %81 = inttoptr i64 %76 to i32*
  store i32 %77, i32* %81
  %82 = load i64, i64* %RBP
  %83 = sub i64 %82, 16
  %84 = load i64, i64* %PC
  %85 = add i64 %84, 8
  store i64 %85, i64* %PC
  %86 = inttoptr i64 %83 to i64*
  store i64 0, i64* %86
  %87 = load i32, i32* %EAX
  %88 = zext i32 %87 to i64
  %89 = load i64, i64* %RBP
  %90 = sub i64 %89, 4
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 3
  store i64 %92, i64* %PC
  %93 = inttoptr i64 %90 to i32*
  %94 = load i32, i32* %93
  %95 = sub i32 %87, %94
  %96 = icmp ult i32 %87, %94
  %97 = zext i1 %96 to i8
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %97, i8* %98, align 1, !tbaa !2432
  %99 = and i32 %95, 255
  %100 = call i32 @llvm.ctpop.i32(i32 %99) #16
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  %103 = xor i8 %102, 1
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %103, i8* %104, align 1, !tbaa !2446
  %105 = xor i32 %94, %87
  %106 = xor i32 %105, %95
  %107 = lshr i32 %106, 4
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %109, i8* %110, align 1, !tbaa !2447
  %111 = icmp eq i32 %95, 0
  %112 = zext i1 %111 to i8
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %112, i8* %113, align 1, !tbaa !2448
  %114 = lshr i32 %95, 31
  %115 = trunc i32 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %115, i8* %116, align 1, !tbaa !2449
  %117 = lshr i32 %87, 31
  %118 = lshr i32 %94, 31
  %119 = xor i32 %118, %117
  %120 = xor i32 %114, %117
  %121 = add nuw nsw i32 %120, %119
  %122 = icmp eq i32 %121, 2
  %123 = zext i1 %122 to i8
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %123, i8* %124, align 1, !tbaa !2450
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 36
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 6
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 6
  store i64 %130, i64* %PC
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %132 = load i8, i8* %131, align 1, !tbaa !2448
  %133 = icmp eq i8 %132, 0
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %135 = load i8, i8* %134, align 1, !tbaa !2449
  %136 = icmp ne i8 %135, 0
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %138 = load i8, i8* %137, align 1, !tbaa !2450
  %139 = icmp ne i8 %138, 0
  %140 = xor i1 %136, %139
  %141 = xor i1 %140, true
  %142 = and i1 %133, %141
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %145 = select i1 %142, i64 %126, i64 %128
  store i64 %145, i64* %144, align 8, !tbaa !2428
  %146 = load i8, i8* %BRANCH_TAKEN
  %147 = icmp eq i8 %146, 1
  br i1 %147, label %block_40093f, label %block_400921

block_40094a:                                     ; preds = %block_40093f
  %148 = load i64, i64* %PC
  %149 = add i64 %148, 10
  store i64 %149, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401230__rodata_type* @seg_401230__rodata to i64), i64 7), i64* %RDI, align 8, !tbaa !2428
  %150 = load i64, i64* %RBP
  %151 = sub i64 %150, 4
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 3
  store i64 %153, i64* %PC
  %154 = inttoptr i64 %151 to i32*
  %155 = load i32, i32* %154
  %156 = zext i32 %155 to i64
  store i64 %156, i64* %RSI, align 8, !tbaa !2428
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 2
  store i64 %158, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %159 = load i64, i64* %PC
  %160 = sub i64 %159, 1321
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 5
  %163 = load i64, i64* %PC
  %164 = add i64 %163, 5
  store i64 %164, i64* %PC
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %166 = load i64, i64* %165, align 8, !tbaa !2428
  %167 = add i64 %166, -8
  %168 = inttoptr i64 %167 to i64*
  store i64 %162, i64* %168
  store i64 %167, i64* %165, align 8, !tbaa !2428
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %160, i64* %169, align 8, !tbaa !2428
  %170 = load i64, i64* %PC
  %171 = call %struct.Memory* @ext_602118_printf(%struct.State* %0, i64 %170, %struct.Memory* %MEMORY.1)
  %172 = load i64, i64* %RBP
  %173 = sub i64 %172, 20
  %174 = load i32, i32* %EAX
  %175 = zext i32 %174 to i64
  %176 = load i64, i64* %PC
  %177 = add i64 %176, 3
  store i64 %177, i64* %PC
  %178 = inttoptr i64 %173 to i32*
  store i32 %174, i32* %178
  br label %block_400961

block_400961:                                     ; preds = %block_40093f, %block_40094a
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_40093f ], [ %171, %block_40094a ]
  %179 = load i64, i64* %RBP
  %180 = sub i64 %179, 16
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 4
  store i64 %182, i64* %PC
  %183 = inttoptr i64 %180 to i64*
  %184 = load i64, i64* %183
  store i64 %184, i64* %RAX, align 8, !tbaa !2428
  %185 = load i64, i64* %RSP
  %186 = load i64, i64* %PC
  %187 = add i64 %186, 4
  store i64 %187, i64* %PC
  %188 = add i64 32, %185
  store i64 %188, i64* %RSP, align 8, !tbaa !2428
  %189 = icmp ult i64 %188, %185
  %190 = icmp ult i64 %188, 32
  %191 = or i1 %189, %190
  %192 = zext i1 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %192, i8* %193, align 1, !tbaa !2432
  %194 = trunc i64 %188 to i32
  %195 = and i32 %194, 255
  %196 = call i32 @llvm.ctpop.i32(i32 %195) #16
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %199, i8* %200, align 1, !tbaa !2446
  %201 = xor i64 32, %185
  %202 = xor i64 %201, %188
  %203 = lshr i64 %202, 4
  %204 = trunc i64 %203 to i8
  %205 = and i8 %204, 1
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %205, i8* %206, align 1, !tbaa !2447
  %207 = icmp eq i64 %188, 0
  %208 = zext i1 %207 to i8
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %208, i8* %209, align 1, !tbaa !2448
  %210 = lshr i64 %188, 63
  %211 = trunc i64 %210 to i8
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %211, i8* %212, align 1, !tbaa !2449
  %213 = lshr i64 %185, 63
  %214 = xor i64 %210, %213
  %215 = add nuw nsw i64 %214, %210
  %216 = icmp eq i64 %215, 2
  %217 = zext i1 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %217, i8* %218, align 1, !tbaa !2450
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

block_40092f:                                     ; preds = %block_400921
  %234 = load i64, i64* %RBP
  %235 = sub i64 %234, 4
  %236 = load i64, i64* %PC
  %237 = add i64 %236, 4
  store i64 %237, i64* %PC
  %238 = inttoptr i64 %235 to i32*
  %239 = load i32, i32* %238
  %240 = sext i32 %239 to i64
  store i64 %240, i64* %RAX, align 8, !tbaa !2428
  %241 = load i64, i64* %RAX
  %242 = mul i64 %241, 8
  %243 = add i64 %242, ptrtoint (%tasktab_type* @tasktab to i64)
  %244 = load i64, i64* %PC
  %245 = add i64 %244, 8
  store i64 %245, i64* %PC
  %246 = inttoptr i64 %243 to i64*
  %247 = load i64, i64* %246
  store i64 %247, i64* %RAX, align 8, !tbaa !2428
  %248 = load i64, i64* %RBP
  %249 = sub i64 %248, 16
  %250 = load i64, i64* %RAX
  %251 = load i64, i64* %PC
  %252 = add i64 %251, 4
  store i64 %252, i64* %PC
  %253 = inttoptr i64 %249 to i64*
  store i64 %250, i64* %253
  br label %block_40093f

block_400921:                                     ; preds = %block_400900
  %254 = load i64, i64* %RBP
  %255 = sub i64 %254, 4
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 4
  store i64 %257, i64* %PC
  %258 = inttoptr i64 %255 to i32*
  %259 = load i32, i32* %258
  %260 = sext i32 %259 to i64
  store i64 %260, i64* %RAX, align 8, !tbaa !2428
  %261 = load i64, i64* %RAX
  %262 = load i64, i64* %PC
  %263 = add i64 %262, 4
  store i64 %263, i64* %PC
  %264 = sub i64 %261, 10
  %265 = icmp ult i64 %261, 10
  %266 = zext i1 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %266, i8* %267, align 1, !tbaa !2432
  %268 = trunc i64 %264 to i32
  %269 = and i32 %268, 255
  %270 = call i32 @llvm.ctpop.i32(i32 %269) #16
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %273, i8* %274, align 1, !tbaa !2446
  %275 = xor i64 10, %261
  %276 = xor i64 %275, %264
  %277 = lshr i64 %276, 4
  %278 = trunc i64 %277 to i8
  %279 = and i8 %278, 1
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %279, i8* %280, align 1, !tbaa !2447
  %281 = icmp eq i64 %264, 0
  %282 = zext i1 %281 to i8
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %282, i8* %283, align 1, !tbaa !2448
  %284 = lshr i64 %264, 63
  %285 = trunc i64 %284 to i8
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %285, i8* %286, align 1, !tbaa !2449
  %287 = lshr i64 %261, 63
  %288 = xor i64 %284, %287
  %289 = add nuw nsw i64 %288, %287
  %290 = icmp eq i64 %289, 2
  %291 = zext i1 %290 to i8
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %291, i8* %292, align 1, !tbaa !2450
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 22
  %295 = load i64, i64* %PC
  %296 = add i64 %295, 6
  %297 = load i64, i64* %PC
  %298 = add i64 %297, 6
  store i64 %298, i64* %PC
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %300 = load i8, i8* %299, align 1, !tbaa !2448
  %301 = icmp eq i8 %300, 0
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %303 = load i8, i8* %302, align 1, !tbaa !2449
  %304 = icmp ne i8 %303, 0
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %306 = load i8, i8* %305, align 1, !tbaa !2450
  %307 = icmp ne i8 %306, 0
  %308 = xor i1 %304, %307
  %309 = xor i1 %308, true
  %310 = and i1 %301, %309
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %313 = select i1 %310, i64 %294, i64 %296
  store i64 %313, i64* %312, align 8, !tbaa !2428
  %314 = load i8, i8* %BRANCH_TAKEN
  %315 = icmp eq i8 %314, 1
  br i1 %315, label %block_40093f, label %block_40092f

block_40093f:                                     ; preds = %block_400921, %block_40092f, %block_400900
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400900 ], [ %2, %block_400921 ], [ %2, %block_40092f ]
  %316 = load i64, i64* %RBP
  %317 = sub i64 %316, 16
  %318 = load i64, i64* %PC
  %319 = add i64 %318, 5
  store i64 %319, i64* %PC
  %320 = inttoptr i64 %317 to i64*
  %321 = load i64, i64* %320
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %322, align 1, !tbaa !2432
  %323 = trunc i64 %321 to i32
  %324 = and i32 %323, 255
  %325 = call i32 @llvm.ctpop.i32(i32 %324) #16
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %328, i8* %329, align 1, !tbaa !2446
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %330, align 1, !tbaa !2447
  %331 = icmp eq i64 %321, 0
  %332 = zext i1 %331 to i8
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %332, i8* %333, align 1, !tbaa !2448
  %334 = lshr i64 %321, 63
  %335 = trunc i64 %334 to i8
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %335, i8* %336, align 1, !tbaa !2449
  %337 = lshr i64 %321, 63
  %338 = xor i64 %334, %337
  %339 = add nuw nsw i64 %338, %337
  %340 = icmp eq i64 %339, 2
  %341 = zext i1 %340 to i8
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %341, i8* %342, align 1, !tbaa !2450
  %343 = load i64, i64* %PC
  %344 = add i64 %343, 29
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 6
  %347 = load i64, i64* %PC
  %348 = add i64 %347, 6
  store i64 %348, i64* %PC
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %350 = load i8, i8* %349, align 1, !tbaa !2448
  %351 = icmp eq i8 %350, 0
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %354 = select i1 %351, i64 %344, i64 %346
  store i64 %354, i64* %353, align 8, !tbaa !2428
  %355 = load i8, i8* %BRANCH_TAKEN
  %356 = icmp eq i8 %355, 1
  br i1 %356, label %block_400961, label %block_40094a
}

; Function Attrs: noinline
define %struct.Memory* @sub_400970_release(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400970:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EDI = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RAX = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RCX = bitcast %union.anon* %17 to i64*
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
  %37 = load i64, i64* %RSP
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 4
  store i64 %39, i64* %PC
  %40 = sub i64 %37, 32
  store i64 %40, i64* %RSP, align 8, !tbaa !2428
  %41 = icmp ult i64 %37, 32
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %42, i8* %43, align 1, !tbaa !2432
  %44 = trunc i64 %40 to i32
  %45 = and i32 %44, 255
  %46 = call i32 @llvm.ctpop.i32(i32 %45) #16
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = xor i8 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %49, i8* %50, align 1, !tbaa !2446
  %51 = xor i64 32, %37
  %52 = xor i64 %51, %40
  %53 = lshr i64 %52, 4
  %54 = trunc i64 %53 to i8
  %55 = and i8 %54, 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %55, i8* %56, align 1, !tbaa !2447
  %57 = icmp eq i64 %40, 0
  %58 = zext i1 %57 to i8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %58, i8* %59, align 1, !tbaa !2448
  %60 = lshr i64 %40, 63
  %61 = trunc i64 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %61, i8* %62, align 1, !tbaa !2449
  %63 = lshr i64 %37, 63
  %64 = xor i64 %60, %63
  %65 = add nuw nsw i64 %64, %63
  %66 = icmp eq i64 %65, 2
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %67, i8* %68, align 1, !tbaa !2450
  %69 = load i64, i64* %RBP
  %70 = sub i64 %69, 12
  %71 = load i32, i32* %EDI
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 3
  store i64 %74, i64* %PC
  %75 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %75
  %76 = load i64, i64* %RBP
  %77 = sub i64 %76, 12
  %78 = load i64, i64* %PC
  %79 = add i64 %78, 3
  store i64 %79, i64* %PC
  %80 = inttoptr i64 %77 to i32*
  %81 = load i32, i32* %80
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %RDI, align 8, !tbaa !2428
  %83 = load i64, i64* %PC
  %84 = sub i64 %83, 126
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 5
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 5
  store i64 %88, i64* %PC
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %90 = load i64, i64* %89, align 8, !tbaa !2428
  %91 = add i64 %90, -8
  %92 = inttoptr i64 %91 to i64*
  store i64 %86, i64* %92
  store i64 %91, i64* %89, align 8, !tbaa !2428
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %84, i64* %93, align 8, !tbaa !2428
  %94 = load i64, i64* %PC
  %95 = call %struct.Memory* @sub_400900_findtcb_renamed_(%struct.State* %0, i64 %94, %struct.Memory* %2)
  %96 = load i64, i64* %RBP
  %97 = sub i64 %96, 24
  %98 = load i64, i64* %RAX
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 4
  store i64 %100, i64* %PC
  %101 = inttoptr i64 %97 to i64*
  store i64 %98, i64* %101
  %102 = load i64, i64* %RBP
  %103 = sub i64 %102, 24
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 5
  store i64 %105, i64* %PC
  %106 = inttoptr i64 %103 to i64*
  %107 = load i64, i64* %106
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %108, align 1, !tbaa !2432
  %109 = trunc i64 %107 to i32
  %110 = and i32 %109, 255
  %111 = call i32 @llvm.ctpop.i32(i32 %110) #16
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %114, i8* %115, align 1, !tbaa !2446
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %116, align 1, !tbaa !2447
  %117 = icmp eq i64 %107, 0
  %118 = zext i1 %117 to i8
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %118, i8* %119, align 1, !tbaa !2448
  %120 = lshr i64 %107, 63
  %121 = trunc i64 %120 to i8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %121, i8* %122, align 1, !tbaa !2449
  %123 = lshr i64 %107, 63
  %124 = xor i64 %120, %123
  %125 = add nuw nsw i64 %124, %123
  %126 = icmp eq i64 %125, 2
  %127 = zext i1 %126 to i8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %127, i8* %128, align 1, !tbaa !2450
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 19
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 6
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 6
  store i64 %134, i64* %PC
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %136 = load i8, i8* %135, align 1, !tbaa !2448
  %137 = icmp eq i8 %136, 0
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %140 = select i1 %137, i64 %130, i64 %132
  store i64 %140, i64* %139, align 8, !tbaa !2428
  %141 = load i8, i8* %BRANCH_TAKEN
  %142 = icmp eq i8 %141, 1
  %143 = load i64, i64* %RBP
  br i1 %142, label %block_40099f, label %block_400992

block_40099f:                                     ; preds = %block_400970
  %144 = sub i64 %143, 24
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 4
  store i64 %146, i64* %PC
  %147 = inttoptr i64 %144 to i64*
  %148 = load i64, i64* %147
  store i64 %148, i64* %RAX, align 8, !tbaa !2428
  %149 = load i64, i64* %RAX
  %150 = add i64 %149, 24
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 3
  store i64 %152, i64* %PC
  %153 = inttoptr i64 %150 to i32*
  %154 = load i32, i32* %153
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RCX, align 8, !tbaa !2428
  %156 = load i64, i64* %RCX
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 6
  store i64 %158, i64* %PC
  %159 = and i64 65531, %156
  %160 = trunc i64 %159 to i32
  store i64 %159, i64* %RCX, align 8, !tbaa !2428
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %161, align 1, !tbaa !2432
  %162 = and i32 %160, 255
  %163 = call i32 @llvm.ctpop.i32(i32 %162) #16
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %166, i8* %167, align 1, !tbaa !2446
  %168 = icmp eq i32 %160, 0
  %169 = zext i1 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %169, i8* %170, align 1, !tbaa !2448
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %171, align 1, !tbaa !2449
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %172, align 1, !tbaa !2450
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %173, align 1, !tbaa !2447
  %174 = load i64, i64* %RAX
  %175 = add i64 %174, 24
  %176 = load i32, i32* %ECX
  %177 = zext i32 %176 to i64
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 3
  store i64 %179, i64* %PC
  %180 = inttoptr i64 %175 to i32*
  store i32 %176, i32* %180
  %181 = load i64, i64* %RBP
  %182 = sub i64 %181, 24
  %183 = load i64, i64* %PC
  %184 = add i64 %183, 4
  store i64 %184, i64* %PC
  %185 = inttoptr i64 %182 to i64*
  %186 = load i64, i64* %185
  store i64 %186, i64* %RAX, align 8, !tbaa !2428
  %187 = load i64, i64* %RAX
  %188 = add i64 %187, 12
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 3
  store i64 %190, i64* %PC
  %191 = inttoptr i64 %188 to i32*
  %192 = load i32, i32* %191
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RCX, align 8, !tbaa !2428
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 8
  store i64 %195, i64* %PC
  %196 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %196, i64* %RAX, align 8, !tbaa !2428
  %197 = load i32, i32* %ECX
  %198 = zext i32 %197 to i64
  %199 = load i64, i64* %RAX
  %200 = add i64 %199, 12
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 3
  store i64 %202, i64* %PC
  %203 = inttoptr i64 %200 to i32*
  %204 = load i32, i32* %203
  %205 = sub i32 %197, %204
  %206 = icmp ult i32 %197, %204
  %207 = zext i1 %206 to i8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %207, i8* %208, align 1, !tbaa !2432
  %209 = and i32 %205, 255
  %210 = call i32 @llvm.ctpop.i32(i32 %209) #16
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %213, i8* %214, align 1, !tbaa !2446
  %215 = xor i32 %204, %197
  %216 = xor i32 %215, %205
  %217 = lshr i32 %216, 4
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %219, i8* %220, align 1, !tbaa !2447
  %221 = icmp eq i32 %205, 0
  %222 = zext i1 %221 to i8
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %222, i8* %223, align 1, !tbaa !2448
  %224 = lshr i32 %205, 31
  %225 = trunc i32 %224 to i8
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %225, i8* %226, align 1, !tbaa !2449
  %227 = lshr i32 %197, 31
  %228 = lshr i32 %204, 31
  %229 = xor i32 %228, %227
  %230 = xor i32 %224, %227
  %231 = add nuw nsw i32 %230, %229
  %232 = icmp eq i32 %231, 2
  %233 = zext i1 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %233, i8* %234, align 1, !tbaa !2450
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 19
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 6
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 6
  store i64 %240, i64* %PC
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %242 = load i8, i8* %241, align 1, !tbaa !2448
  %243 = icmp ne i8 %242, 0
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %245 = load i8, i8* %244, align 1, !tbaa !2449
  %246 = icmp ne i8 %245, 0
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %248 = load i8, i8* %247, align 1, !tbaa !2450
  %249 = icmp ne i8 %248, 0
  %250 = xor i1 %246, %249
  %251 = or i1 %243, %250
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %254 = select i1 %251, i64 %236, i64 %238
  store i64 %254, i64* %253, align 8, !tbaa !2428
  %255 = load i8, i8* %BRANCH_TAKEN
  %256 = icmp eq i8 %255, 1
  br i1 %256, label %block_4009d4, label %block_4009c7

block_4009d4:                                     ; preds = %block_40099f
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 8
  store i64 %258, i64* %PC
  %259 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %259, i64* %RAX, align 8, !tbaa !2428
  %260 = load i64, i64* %RBP
  %261 = sub i64 %260, 8
  %262 = load i64, i64* %RAX
  %263 = load i64, i64* %PC
  %264 = add i64 %263, 4
  store i64 %264, i64* %PC
  %265 = inttoptr i64 %261 to i64*
  store i64 %262, i64* %265
  br label %block_4009e0

block_400992:                                     ; preds = %block_400970
  %266 = sub i64 %143, 8
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 8
  store i64 %268, i64* %PC
  %269 = inttoptr i64 %266 to i64*
  store i64 0, i64* %269
  %270 = load i64, i64* %PC
  %271 = add i64 %270, 70
  %272 = load i64, i64* %PC
  %273 = add i64 %272, 5
  store i64 %273, i64* %PC
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %271, i64* %274, align 8, !tbaa !2428
  br label %block_4009e0

block_4009c7:                                     ; preds = %block_40099f
  %275 = load i64, i64* %RBP
  %276 = sub i64 %275, 24
  %277 = load i64, i64* %PC
  %278 = add i64 %277, 4
  store i64 %278, i64* %PC
  %279 = inttoptr i64 %276 to i64*
  %280 = load i64, i64* %279
  store i64 %280, i64* %RAX, align 8, !tbaa !2428
  %281 = load i64, i64* %RBP
  %282 = sub i64 %281, 8
  %283 = load i64, i64* %RAX
  %284 = load i64, i64* %PC
  %285 = add i64 %284, 4
  store i64 %285, i64* %PC
  %286 = inttoptr i64 %282 to i64*
  store i64 %283, i64* %286
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 17
  %289 = load i64, i64* %PC
  %290 = add i64 %289, 5
  store i64 %290, i64* %PC
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %288, i64* %291, align 8, !tbaa !2428
  br label %block_4009e0

block_4009e0:                                     ; preds = %block_4009c7, %block_400992, %block_4009d4
  %MEMORY.0 = phi %struct.Memory* [ %95, %block_4009d4 ], [ %95, %block_4009c7 ], [ %95, %block_400992 ]
  %292 = load i64, i64* %RBP
  %293 = sub i64 %292, 8
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 4
  store i64 %295, i64* %PC
  %296 = inttoptr i64 %293 to i64*
  %297 = load i64, i64* %296
  store i64 %297, i64* %RAX, align 8, !tbaa !2428
  %298 = load i64, i64* %RSP
  %299 = load i64, i64* %PC
  %300 = add i64 %299, 4
  store i64 %300, i64* %PC
  %301 = add i64 32, %298
  store i64 %301, i64* %RSP, align 8, !tbaa !2428
  %302 = icmp ult i64 %301, %298
  %303 = icmp ult i64 %301, 32
  %304 = or i1 %302, %303
  %305 = zext i1 %304 to i8
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %305, i8* %306, align 1, !tbaa !2432
  %307 = trunc i64 %301 to i32
  %308 = and i32 %307, 255
  %309 = call i32 @llvm.ctpop.i32(i32 %308) #16
  %310 = trunc i32 %309 to i8
  %311 = and i8 %310, 1
  %312 = xor i8 %311, 1
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %312, i8* %313, align 1, !tbaa !2446
  %314 = xor i64 32, %298
  %315 = xor i64 %314, %301
  %316 = lshr i64 %315, 4
  %317 = trunc i64 %316 to i8
  %318 = and i8 %317, 1
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %318, i8* %319, align 1, !tbaa !2447
  %320 = icmp eq i64 %301, 0
  %321 = zext i1 %320 to i8
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %321, i8* %322, align 1, !tbaa !2448
  %323 = lshr i64 %301, 63
  %324 = trunc i64 %323 to i8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %324, i8* %325, align 1, !tbaa !2449
  %326 = lshr i64 %298, 63
  %327 = xor i64 %323, %326
  %328 = add nuw nsw i64 %327, %323
  %329 = icmp eq i64 %328, 2
  %330 = zext i1 %329 to i8
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %330, i8* %331, align 1, !tbaa !2450
  %332 = load i64, i64* %PC
  %333 = add i64 %332, 1
  store i64 %333, i64* %PC
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %335 = load i64, i64* %334, align 8, !tbaa !2428
  %336 = add i64 %335, 8
  %337 = inttoptr i64 %335 to i64*
  %338 = load i64, i64* %337
  store i64 %338, i64* %RBP, align 8, !tbaa !2428
  store i64 %336, i64* %334, align 8, !tbaa !2428
  %339 = load i64, i64* %PC
  %340 = add i64 %339, 1
  store i64 %340, i64* %PC
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %343 = load i64, i64* %342, align 8, !tbaa !2428
  %344 = inttoptr i64 %343 to i64*
  %345 = load i64, i64* %344
  store i64 %345, i64* %341, align 8, !tbaa !2428
  %346 = add i64 %343, 8
  store i64 %346, i64* %342, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_401220___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401220:
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
define %struct.Memory* @sub_400690_trace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400690:
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %15 = getelementptr inbounds %struct.GPR, %struct.GPR* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %15, i32 0, i32 0
  %EAX = bitcast %union.anon* %16 to i32*
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 11
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %EDI = bitcast %union.anon* %19 to i32*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSI = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 11
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RDI = bitcast %union.anon* %25 to i64*
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %27 = getelementptr inbounds %struct.GPR, %struct.GPR* %26, i32 0, i32 13
  %28 = getelementptr inbounds %struct.Reg, %struct.Reg* %27, i32 0, i32 0
  %RSP = bitcast %union.anon* %28 to i64*
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 15
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %RBP = bitcast %union.anon* %31 to i64*
  %32 = load i64, i64* %RBP
  %33 = load i64, i64* %PC
  %34 = add i64 %33, 1
  store i64 %34, i64* %PC
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %36 = load i64, i64* %35, align 8, !tbaa !2428
  %37 = add i64 %36, -8
  %38 = inttoptr i64 %37 to i64*
  store i64 %32, i64* %38
  store i64 %37, i64* %35, align 8, !tbaa !2428
  %39 = load i64, i64* %RSP
  %40 = load i64, i64* %PC
  %41 = add i64 %40, 3
  store i64 %41, i64* %PC
  store i64 %39, i64* %RBP, align 8, !tbaa !2428
  %42 = load i64, i64* %RSP
  %43 = load i64, i64* %PC
  %44 = add i64 %43, 4
  store i64 %44, i64* %PC
  %45 = sub i64 %42, 16
  store i64 %45, i64* %RSP, align 8, !tbaa !2428
  %46 = icmp ult i64 %42, 16
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %47, i8* %48, align 1, !tbaa !2432
  %49 = trunc i64 %45 to i32
  %50 = and i32 %49, 255
  %51 = call i32 @llvm.ctpop.i32(i32 %50) #16
  %52 = trunc i32 %51 to i8
  %53 = and i8 %52, 1
  %54 = xor i8 %53, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %54, i8* %55, align 1, !tbaa !2446
  %56 = xor i64 16, %42
  %57 = xor i64 %56, %45
  %58 = lshr i64 %57, 4
  %59 = trunc i64 %58 to i8
  %60 = and i8 %59, 1
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %60, i8* %61, align 1, !tbaa !2447
  %62 = icmp eq i64 %45, 0
  %63 = zext i1 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %63, i8* %64, align 1, !tbaa !2448
  %65 = lshr i64 %45, 63
  %66 = trunc i64 %65 to i8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %66, i8* %67, align 1, !tbaa !2449
  %68 = lshr i64 %42, 63
  %69 = xor i64 %65, %68
  %70 = add nuw nsw i64 %69, %68
  %71 = icmp eq i64 %70, 2
  %72 = zext i1 %71 to i8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %72, i8* %73, align 1, !tbaa !2450
  %74 = load i8, i8* %DIL
  %75 = zext i8 %74 to i64
  %76 = load i64, i64* %PC
  %77 = add i64 %76, 3
  store i64 %77, i64* %PC
  store i8 %74, i8* %AL, align 1, !tbaa !2451
  %78 = load i64, i64* %RBP
  %79 = sub i64 %78, 1
  %80 = load i8, i8* %AL
  %81 = zext i8 %80 to i64
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 3
  store i64 %83, i64* %PC
  %84 = inttoptr i64 %79 to i8*
  store i8 %80, i8* %84
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 7
  store i64 %86, i64* %PC
  %87 = load i32, i32* bitcast (%layout_type* @layout to i32*)
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RDI, align 8, !tbaa !2428
  %89 = load i64, i64* %RDI
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 3
  store i64 %91, i64* %PC
  %92 = trunc i64 %89 to i32
  %93 = add i32 -1, %92
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %RDI, align 8, !tbaa !2428
  %95 = icmp ult i32 %93, %92
  %96 = icmp ult i32 %93, -1
  %97 = or i1 %95, %96
  %98 = zext i1 %97 to i8
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %98, i8* %99, align 1, !tbaa !2432
  %100 = and i32 %93, 255
  %101 = call i32 @llvm.ctpop.i32(i32 %100) #16
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %104, i8* %105, align 1, !tbaa !2446
  %106 = xor i64 -1, %89
  %107 = trunc i64 %106 to i32
  %108 = xor i32 %107, %93
  %109 = lshr i32 %108, 4
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %111, i8* %112, align 1, !tbaa !2447
  %113 = icmp eq i32 %93, 0
  %114 = zext i1 %113 to i8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %114, i8* %115, align 1, !tbaa !2448
  %116 = lshr i32 %93, 31
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %117, i8* %118, align 1, !tbaa !2449
  %119 = lshr i32 %92, 31
  %120 = xor i32 %116, %119
  %121 = xor i32 %116, 1
  %122 = add nuw nsw i32 %120, %121
  %123 = icmp eq i32 %122, 2
  %124 = zext i1 %123 to i8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %124, i8* %125, align 1, !tbaa !2450
  %126 = load i32, i32* %EDI
  %127 = zext i32 %126 to i64
  %128 = load i64, i64* %PC
  %129 = add i64 %128, 7
  store i64 %129, i64* %PC
  store i32 %126, i32* bitcast (%layout_type* @layout to i32*)
  %130 = load i32, i32* %EDI
  %131 = zext i32 %130 to i64
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 3
  store i64 %133, i64* %PC
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %134, align 1, !tbaa !2432
  %135 = and i32 %130, 255
  %136 = call i32 @llvm.ctpop.i32(i32 %135) #16
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %139, i8* %140, align 1, !tbaa !2446
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %141, align 1, !tbaa !2447
  %142 = icmp eq i32 %130, 0
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %143, i8* %144, align 1, !tbaa !2448
  %145 = lshr i32 %130, 31
  %146 = trunc i32 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %146, i8* %147, align 1, !tbaa !2449
  %148 = lshr i32 %130, 31
  %149 = xor i32 %145, %148
  %150 = add nuw nsw i32 %149, %148
  %151 = icmp eq i32 %150, 2
  %152 = zext i1 %151 to i8
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %152, i8* %153, align 1, !tbaa !2450
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 37
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 6
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 6
  store i64 %159, i64* %PC
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %161 = load i8, i8* %160, align 1, !tbaa !2448
  %162 = icmp eq i8 %161, 0
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %164 = load i8, i8* %163, align 1, !tbaa !2449
  %165 = icmp ne i8 %164, 0
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %167 = load i8, i8* %166, align 1, !tbaa !2450
  %168 = icmp ne i8 %167, 0
  %169 = xor i1 %165, %168
  %170 = xor i1 %169, true
  %171 = and i1 %162, %170
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %174 = select i1 %171, i64 %155, i64 %157
  store i64 %174, i64* %173, align 8, !tbaa !2428
  %175 = load i8, i8* %BRANCH_TAKEN
  %176 = icmp eq i8 %175, 1
  br i1 %176, label %block_4006d7, label %block_4006b8

block_4006d7:                                     ; preds = %block_4006b8, %block_400690
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400690 ], [ %274, %block_4006b8 ]
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 10
  store i64 %178, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401230__rodata_type* @seg_401230__rodata to i64), i64 4), i64* %RDI, align 8, !tbaa !2428
  %179 = load i64, i64* %RBP
  %180 = sub i64 %179, 1
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 4
  store i64 %182, i64* %PC
  %183 = inttoptr i64 %180 to i8*
  %184 = load i8, i8* %183
  %185 = sext i8 %184 to i64
  %186 = and i64 %185, 4294967295
  store i64 %186, i64* %RSI, align 8, !tbaa !2428
  %187 = load i64, i64* %PC
  %188 = add i64 %187, 2
  store i64 %188, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %189 = load i64, i64* %PC
  %190 = sub i64 %189, 695
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 5
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 5
  store i64 %194, i64* %PC
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %196 = load i64, i64* %195, align 8, !tbaa !2428
  %197 = add i64 %196, -8
  %198 = inttoptr i64 %197 to i64*
  store i64 %192, i64* %198
  store i64 %197, i64* %195, align 8, !tbaa !2428
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %190, i64* %199, align 8, !tbaa !2428
  %200 = load i64, i64* %PC
  %201 = call %struct.Memory* @ext_602118_printf(%struct.State* %0, i64 %200, %struct.Memory* %MEMORY.0)
  %202 = load i64, i64* %RBP
  %203 = sub i64 %202, 12
  %204 = load i32, i32* %EAX
  %205 = zext i32 %204 to i64
  %206 = load i64, i64* %PC
  %207 = add i64 %206, 3
  store i64 %207, i64* %PC
  %208 = inttoptr i64 %203 to i32*
  store i32 %204, i32* %208
  %209 = load i64, i64* %RSP
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 4
  store i64 %211, i64* %PC
  %212 = add i64 16, %209
  store i64 %212, i64* %RSP, align 8, !tbaa !2428
  %213 = icmp ult i64 %212, %209
  %214 = icmp ult i64 %212, 16
  %215 = or i1 %213, %214
  %216 = zext i1 %215 to i8
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %216, i8* %217, align 1, !tbaa !2432
  %218 = trunc i64 %212 to i32
  %219 = and i32 %218, 255
  %220 = call i32 @llvm.ctpop.i32(i32 %219) #16
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %223, i8* %224, align 1, !tbaa !2446
  %225 = xor i64 16, %209
  %226 = xor i64 %225, %212
  %227 = lshr i64 %226, 4
  %228 = trunc i64 %227 to i8
  %229 = and i8 %228, 1
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %229, i8* %230, align 1, !tbaa !2447
  %231 = icmp eq i64 %212, 0
  %232 = zext i1 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %232, i8* %233, align 1, !tbaa !2448
  %234 = lshr i64 %212, 63
  %235 = trunc i64 %234 to i8
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %235, i8* %236, align 1, !tbaa !2449
  %237 = lshr i64 %209, 63
  %238 = xor i64 %234, %237
  %239 = add nuw nsw i64 %238, %234
  %240 = icmp eq i64 %239, 2
  %241 = zext i1 %240 to i8
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %241, i8* %242, align 1, !tbaa !2450
  %243 = load i64, i64* %PC
  %244 = add i64 %243, 1
  store i64 %244, i64* %PC
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %246 = load i64, i64* %245, align 8, !tbaa !2428
  %247 = add i64 %246, 8
  %248 = inttoptr i64 %246 to i64*
  %249 = load i64, i64* %248
  store i64 %249, i64* %RBP, align 8, !tbaa !2428
  store i64 %247, i64* %245, align 8, !tbaa !2428
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 1
  store i64 %251, i64* %PC
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %254 = load i64, i64* %253, align 8, !tbaa !2428
  %255 = inttoptr i64 %254 to i64*
  %256 = load i64, i64* %255
  store i64 %256, i64* %252, align 8, !tbaa !2428
  %257 = add i64 %254, 8
  store i64 %257, i64* %253, align 8, !tbaa !2428
  ret %struct.Memory* %201

block_4006b8:                                     ; preds = %block_400690
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 10
  store i64 %259, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401230__rodata_type* @seg_401230__rodata to i64), i64 96), i64* %RDI, align 8, !tbaa !2428
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 2
  store i64 %261, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %262 = load i64, i64* %PC
  %263 = sub i64 %262, 660
  %264 = load i64, i64* %PC
  %265 = add i64 %264, 5
  %266 = load i64, i64* %PC
  %267 = add i64 %266, 5
  store i64 %267, i64* %PC
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %269 = load i64, i64* %268, align 8, !tbaa !2428
  %270 = add i64 %269, -8
  %271 = inttoptr i64 %270 to i64*
  store i64 %265, i64* %271
  store i64 %270, i64* %268, align 8, !tbaa !2428
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %263, i64* %272, align 8, !tbaa !2428
  %273 = load i64, i64* %PC
  %274 = call %struct.Memory* @ext_602118_printf(%struct.State* %0, i64 %273, %struct.Memory* %2)
  %275 = load i64, i64* %PC
  %276 = add i64 %275, 11
  store i64 %276, i64* %PC
  store i32 50, i32* bitcast (%layout_type* @layout to i32*)
  %277 = load i64, i64* %RBP
  %278 = sub i64 %277, 8
  %279 = load i32, i32* %EAX
  %280 = zext i32 %279 to i64
  %281 = load i64, i64* %PC
  %282 = add i64 %281, 3
  store i64 %282, i64* %PC
  %283 = inttoptr i64 %278 to i32*
  store i32 %279, i32* %283
  br label %block_4006d7
}

; Function Attrs: noinline
define %struct.Memory* @sub_4008a0_Wait(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4008a0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 13
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RSP = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 15
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RBP = bitcast %union.anon* %20 to i64*
  %21 = load i64, i64* %RBP
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 1
  store i64 %23, i64* %PC
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %25 = load i64, i64* %24, align 8, !tbaa !2428
  %26 = add i64 %25, -8
  %27 = inttoptr i64 %26 to i64*
  store i64 %21, i64* %27
  store i64 %26, i64* %24, align 8, !tbaa !2428
  %28 = load i64, i64* %RSP
  %29 = load i64, i64* %PC
  %30 = add i64 %29, 3
  store i64 %30, i64* %PC
  store i64 %28, i64* %RBP, align 8, !tbaa !2428
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 8
  store i64 %32, i64* %PC
  %33 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %33, i64* %RAX, align 8, !tbaa !2428
  %34 = load i64, i64* %RAX
  %35 = add i64 %34, 24
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 3
  store i64 %37, i64* %PC
  %38 = inttoptr i64 %35 to i32*
  %39 = load i32, i32* %38
  %40 = zext i32 %39 to i64
  store i64 %40, i64* %RCX, align 8, !tbaa !2428
  %41 = load i64, i64* %RCX
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 3
  store i64 %43, i64* %PC
  %44 = or i64 2, %41
  %45 = trunc i64 %44 to i32
  %46 = and i64 %44, 4294967295
  store i64 %46, i64* %RCX, align 8, !tbaa !2428
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %47, align 1, !tbaa !2432
  %48 = and i32 %45, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %48) #16
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %52 = xor i8 %51, 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %52, i8* %53, align 1, !tbaa !2446
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %54, align 1, !tbaa !2448
  %55 = lshr i32 %45, 31
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %56, i8* %57, align 1, !tbaa !2449
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %58, align 1, !tbaa !2450
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %59, align 1, !tbaa !2447
  %60 = load i64, i64* %RAX
  %61 = add i64 %60, 24
  %62 = load i32, i32* %ECX
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 3
  store i64 %65, i64* %PC
  %66 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %66
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 8
  store i64 %68, i64* %PC
  %69 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %69, i64* %RAX, align 8, !tbaa !2428
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
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400400__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400400:
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
  %46 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_601ff0__got_type* @seg_601ff0__got to i64), i64 8) to i64*)
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
  br i1 %80, label %block_400412, label %block_400410

block_400410:                                     ; preds = %block_400400
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
  br label %block_400412

block_400412:                                     ; preds = %block_400410, %block_400400
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400400 ], [ %92, %block_400410 ]
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
define %struct.Memory* @sub_400b20_idlefn(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400b20:
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
  %18 = load i64, i64* %RBP
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 1
  store i64 %20, i64* %PC
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %22 = load i64, i64* %21, align 8, !tbaa !2428
  %23 = add i64 %22, -8
  %24 = inttoptr i64 %23 to i64*
  store i64 %18, i64* %24
  store i64 %23, i64* %21, align 8, !tbaa !2428
  %25 = load i64, i64* %RSP
  %26 = load i64, i64* %PC
  %27 = add i64 %26, 3
  store i64 %27, i64* %PC
  store i64 %25, i64* %RBP, align 8, !tbaa !2428
  %28 = load i64, i64* %RSP
  %29 = load i64, i64* %PC
  %30 = add i64 %29, 4
  store i64 %30, i64* %PC
  %31 = sub i64 %28, 16
  store i64 %31, i64* %RSP, align 8, !tbaa !2428
  %32 = icmp ult i64 %28, 16
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %34, align 1, !tbaa !2432
  %35 = trunc i64 %31 to i32
  %36 = and i32 %35, 255
  %37 = call i32 @llvm.ctpop.i32(i32 %36) #16
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = xor i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %40, i8* %41, align 1, !tbaa !2446
  %42 = xor i64 16, %28
  %43 = xor i64 %42, %31
  %44 = lshr i64 %43, 4
  %45 = trunc i64 %44 to i8
  %46 = and i8 %45, 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %46, i8* %47, align 1, !tbaa !2447
  %48 = icmp eq i64 %31, 0
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %49, i8* %50, align 1, !tbaa !2448
  %51 = lshr i64 %31, 63
  %52 = trunc i64 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %52, i8* %53, align 1, !tbaa !2449
  %54 = lshr i64 %28, 63
  %55 = xor i64 %51, %54
  %56 = add nuw nsw i64 %55, %54
  %57 = icmp eq i64 %56, 2
  %58 = zext i1 %57 to i8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %58, i8* %59, align 1, !tbaa !2450
  %60 = load i64, i64* %RBP
  %61 = sub i64 %60, 16
  %62 = load i64, i64* %RDI
  %63 = load i64, i64* %PC
  %64 = add i64 %63, 4
  store i64 %64, i64* %PC
  %65 = inttoptr i64 %61 to i64*
  store i64 %62, i64* %65
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 8
  store i64 %67, i64* %PC
  %68 = load i64, i64* bitcast (%v2_type* @v2 to i64*)
  store i64 %68, i64* %RDI, align 8, !tbaa !2428
  %69 = load i64, i64* %RDI
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 4
  store i64 %71, i64* %PC
  %72 = add i64 -1, %69
  store i64 %72, i64* %RDI, align 8, !tbaa !2428
  %73 = icmp ult i64 %72, %69
  %74 = icmp ult i64 %72, -1
  %75 = or i1 %73, %74
  %76 = zext i1 %75 to i8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %76, i8* %77, align 1, !tbaa !2432
  %78 = trunc i64 %72 to i32
  %79 = and i32 %78, 255
  %80 = call i32 @llvm.ctpop.i32(i32 %79) #16
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %83, i8* %84, align 1, !tbaa !2446
  %85 = xor i64 -1, %69
  %86 = xor i64 %85, %72
  %87 = lshr i64 %86, 4
  %88 = trunc i64 %87 to i8
  %89 = and i8 %88, 1
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %89, i8* %90, align 1, !tbaa !2447
  %91 = icmp eq i64 %72, 0
  %92 = zext i1 %91 to i8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %92, i8* %93, align 1, !tbaa !2448
  %94 = lshr i64 %72, 63
  %95 = trunc i64 %94 to i8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %95, i8* %96, align 1, !tbaa !2449
  %97 = lshr i64 %69, 63
  %98 = xor i64 %94, %97
  %99 = xor i64 %94, 1
  %100 = add nuw nsw i64 %98, %99
  %101 = icmp eq i64 %100, 2
  %102 = zext i1 %101 to i8
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %102, i8* %103, align 1, !tbaa !2450
  %104 = load i64, i64* %RDI
  %105 = load i64, i64* %PC
  %106 = add i64 %105, 8
  store i64 %106, i64* %PC
  store i64 %104, i64* bitcast (%v2_type* @v2 to i64*)
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 9
  store i64 %108, i64* %PC
  %109 = load i64, i64* bitcast (%v2_type* @v2 to i64*)
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %110, align 1, !tbaa !2432
  %111 = trunc i64 %109 to i32
  %112 = and i32 %111, 255
  %113 = call i32 @llvm.ctpop.i32(i32 %112) #16
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %116, i8* %117, align 1, !tbaa !2446
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %118, align 1, !tbaa !2447
  %119 = icmp eq i64 %109, 0
  %120 = zext i1 %119 to i8
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %120, i8* %121, align 1, !tbaa !2448
  %122 = lshr i64 %109, 63
  %123 = trunc i64 %122 to i8
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %123, i8* %124, align 1, !tbaa !2449
  %125 = lshr i64 %109, 63
  %126 = xor i64 %122, %125
  %127 = add nuw nsw i64 %126, %125
  %128 = icmp eq i64 %127, 2
  %129 = zext i1 %128 to i8
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %129, i8* %130, align 1, !tbaa !2450
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 20
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 6
  %135 = load i64, i64* %PC
  %136 = add i64 %135, 6
  store i64 %136, i64* %PC
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %138 = load i8, i8* %137, align 1, !tbaa !2448
  %139 = icmp eq i8 %138, 0
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %142 = select i1 %139, i64 %132, i64 %134
  store i64 %142, i64* %141, align 8, !tbaa !2428
  %143 = load i8, i8* %BRANCH_TAKEN
  %144 = icmp eq i8 %143, 1
  %145 = load i64, i64* %PC
  br i1 %144, label %block_400b5d, label %block_400b4f

block_400b5d:                                     ; preds = %block_400b20
  %146 = add i64 %145, 8
  store i64 %146, i64* %PC
  %147 = load i64, i64* bitcast (%v1_type* @v1 to i64*)
  store i64 %147, i64* %RAX, align 8, !tbaa !2428
  %148 = load i64, i64* %RAX
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 4
  store i64 %150, i64* %PC
  %151 = and i64 1, %148
  store i64 %151, i64* %RAX, align 8, !tbaa !2428
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %152, align 1, !tbaa !2432
  %153 = trunc i64 %151 to i32
  %154 = and i32 %153, 255
  %155 = call i32 @llvm.ctpop.i32(i32 %154) #16
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %158, i8* %159, align 1, !tbaa !2446
  %160 = icmp eq i64 %151, 0
  %161 = zext i1 %160 to i8
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %161, i8* %162, align 1, !tbaa !2448
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %163, align 1, !tbaa !2449
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %164, align 1, !tbaa !2450
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %165, align 1, !tbaa !2447
  %166 = load i64, i64* %RAX
  %167 = load i64, i64* %PC
  %168 = add i64 %167, 4
  store i64 %168, i64* %PC
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %169, align 1, !tbaa !2432
  %170 = trunc i64 %166 to i32
  %171 = and i32 %170, 255
  %172 = call i32 @llvm.ctpop.i32(i32 %171) #16
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %175, i8* %176, align 1, !tbaa !2446
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %177, align 1, !tbaa !2447
  %178 = icmp eq i64 %166, 0
  %179 = zext i1 %178 to i8
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %179, i8* %180, align 1, !tbaa !2448
  %181 = lshr i64 %166, 63
  %182 = trunc i64 %181 to i8
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %182, i8* %183, align 1, !tbaa !2449
  %184 = lshr i64 %166, 63
  %185 = xor i64 %181, %184
  %186 = add nuw nsw i64 %185, %184
  %187 = icmp eq i64 %186, 2
  %188 = zext i1 %187 to i8
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %188, i8* %189, align 1, !tbaa !2450
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 51
  %192 = load i64, i64* %PC
  %193 = add i64 %192, 6
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 6
  store i64 %195, i64* %PC
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %197 = load i8, i8* %196, align 1, !tbaa !2448
  %198 = icmp eq i8 %197, 0
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %201 = select i1 %198, i64 %191, i64 %193
  store i64 %201, i64* %200, align 8, !tbaa !2428
  %202 = load i8, i8* %BRANCH_TAKEN
  %203 = icmp eq i8 %202, 1
  %204 = load i64, i64* %PC
  %205 = add i64 %204, 5
  store i64 %205, i64* %PC
  br i1 %203, label %block_400ba0, label %block_400b73

block_400b4f:                                     ; preds = %block_400b20
  %206 = sub i64 %145, 655
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 5
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 5
  store i64 %210, i64* %PC
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %212 = load i64, i64* %211, align 8, !tbaa !2428
  %213 = add i64 %212, -8
  %214 = inttoptr i64 %213 to i64*
  store i64 %208, i64* %214
  store i64 %213, i64* %211, align 8, !tbaa !2428
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %206, i64* %215, align 8, !tbaa !2428
  %216 = load i64, i64* %PC
  %217 = call %struct.Memory* @sub_4008c0_holdself_renamed_(%struct.State* %0, i64 %216, %struct.Memory* %2)
  %218 = load i64, i64* %RBP
  %219 = sub i64 %218, 8
  %220 = load i64, i64* %RAX
  %221 = load i64, i64* %PC
  %222 = add i64 %221, 4
  store i64 %222, i64* %PC
  %223 = inttoptr i64 %219 to i64*
  store i64 %220, i64* %223
  %224 = load i64, i64* %PC
  %225 = add i64 %224, 118
  %226 = load i64, i64* %PC
  %227 = add i64 %226, 5
  store i64 %227, i64* %PC
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %225, i64* %228, align 8, !tbaa !2428
  br label %block_400bce

block_400b73:                                     ; preds = %block_400b5d
  store i64 5, i64* %RDI, align 8, !tbaa !2428
  %229 = load i64, i64* %PC
  %230 = add i64 %229, 8
  store i64 %230, i64* %PC
  %231 = load i64, i64* bitcast (%v1_type* @v1 to i64*)
  store i64 %231, i64* %RAX, align 8, !tbaa !2428
  %232 = load i64, i64* %RAX
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 4
  store i64 %234, i64* %PC
  %235 = trunc i64 %232 to i8
  %236 = and i8 %235, 1
  %237 = ashr i64 %232, 1
  store i64 %237, i64* %RAX, align 8, !tbaa !2428
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %236, i8* %238, align 1, !tbaa !2451
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %240 = trunc i64 %237 to i32
  %241 = and i32 %240, 255
  %242 = call i32 @llvm.ctpop.i32(i32 %241) #16
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %239, align 1, !tbaa !2451
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %246, align 1, !tbaa !2451
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %248 = icmp eq i64 %237, 0
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %247, align 1, !tbaa !2451
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %251 = lshr i64 %237, 63
  %252 = trunc i64 %251 to i8
  store i8 %252, i8* %250, align 1, !tbaa !2451
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %253, align 1, !tbaa !2451
  %254 = load i64, i64* %RAX
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 6
  store i64 %256, i64* %PC
  %257 = and i64 32767, %254
  store i64 %257, i64* %RAX, align 8, !tbaa !2428
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %258, align 1, !tbaa !2432
  %259 = trunc i64 %257 to i32
  %260 = and i32 %259, 255
  %261 = call i32 @llvm.ctpop.i32(i32 %260) #16
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  %264 = xor i8 %263, 1
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %264, i8* %265, align 1, !tbaa !2446
  %266 = icmp eq i64 %257, 0
  %267 = zext i1 %266 to i8
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %267, i8* %268, align 1, !tbaa !2448
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %269, align 1, !tbaa !2449
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %270, align 1, !tbaa !2450
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %271, align 1, !tbaa !2447
  %272 = load i64, i64* %RAX
  %273 = load i64, i64* %PC
  %274 = add i64 %273, 8
  store i64 %274, i64* %PC
  store i64 %272, i64* bitcast (%v1_type* @v1 to i64*)
  %275 = load i64, i64* %PC
  %276 = sub i64 %275, 546
  %277 = load i64, i64* %PC
  %278 = add i64 %277, 5
  %279 = load i64, i64* %PC
  %280 = add i64 %279, 5
  store i64 %280, i64* %PC
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %282 = load i64, i64* %281, align 8, !tbaa !2428
  %283 = add i64 %282, -8
  %284 = inttoptr i64 %283 to i64*
  store i64 %278, i64* %284
  store i64 %283, i64* %281, align 8, !tbaa !2428
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %276, i64* %285, align 8, !tbaa !2428
  %286 = load i64, i64* %PC
  %287 = call %struct.Memory* @sub_400970_release_renamed_(%struct.State* %0, i64 %286, %struct.Memory* %2)
  %288 = load i64, i64* %RBP
  %289 = sub i64 %288, 8
  %290 = load i64, i64* %RAX
  %291 = load i64, i64* %PC
  %292 = add i64 %291, 4
  store i64 %292, i64* %PC
  %293 = inttoptr i64 %289 to i64*
  store i64 %290, i64* %293
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 51
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 5
  store i64 %297, i64* %PC
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %295, i64* %298, align 8, !tbaa !2428
  br label %block_400bce

block_400bce:                                     ; preds = %block_400ba0, %block_400b73, %block_400b4f
  %MEMORY.0 = phi %struct.Memory* [ %432, %block_400ba0 ], [ %287, %block_400b73 ], [ %217, %block_400b4f ]
  %299 = load i64, i64* %RBP
  %300 = sub i64 %299, 8
  %301 = load i64, i64* %PC
  %302 = add i64 %301, 4
  store i64 %302, i64* %PC
  %303 = inttoptr i64 %300 to i64*
  %304 = load i64, i64* %303
  store i64 %304, i64* %RAX, align 8, !tbaa !2428
  %305 = load i64, i64* %RSP
  %306 = load i64, i64* %PC
  %307 = add i64 %306, 4
  store i64 %307, i64* %PC
  %308 = add i64 16, %305
  store i64 %308, i64* %RSP, align 8, !tbaa !2428
  %309 = icmp ult i64 %308, %305
  %310 = icmp ult i64 %308, 16
  %311 = or i1 %309, %310
  %312 = zext i1 %311 to i8
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %312, i8* %313, align 1, !tbaa !2432
  %314 = trunc i64 %308 to i32
  %315 = and i32 %314, 255
  %316 = call i32 @llvm.ctpop.i32(i32 %315) #16
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  %319 = xor i8 %318, 1
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %319, i8* %320, align 1, !tbaa !2446
  %321 = xor i64 16, %305
  %322 = xor i64 %321, %308
  %323 = lshr i64 %322, 4
  %324 = trunc i64 %323 to i8
  %325 = and i8 %324, 1
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %325, i8* %326, align 1, !tbaa !2447
  %327 = icmp eq i64 %308, 0
  %328 = zext i1 %327 to i8
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %328, i8* %329, align 1, !tbaa !2448
  %330 = lshr i64 %308, 63
  %331 = trunc i64 %330 to i8
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %331, i8* %332, align 1, !tbaa !2449
  %333 = lshr i64 %305, 63
  %334 = xor i64 %330, %333
  %335 = add nuw nsw i64 %334, %330
  %336 = icmp eq i64 %335, 2
  %337 = zext i1 %336 to i8
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %337, i8* %338, align 1, !tbaa !2450
  %339 = load i64, i64* %PC
  %340 = add i64 %339, 1
  store i64 %340, i64* %PC
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %342 = load i64, i64* %341, align 8, !tbaa !2428
  %343 = add i64 %342, 8
  %344 = inttoptr i64 %342 to i64*
  %345 = load i64, i64* %344
  store i64 %345, i64* %RBP, align 8, !tbaa !2428
  store i64 %343, i64* %341, align 8, !tbaa !2428
  %346 = load i64, i64* %PC
  %347 = add i64 %346, 1
  store i64 %347, i64* %PC
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %350 = load i64, i64* %349, align 8, !tbaa !2428
  %351 = inttoptr i64 %350 to i64*
  %352 = load i64, i64* %351
  store i64 %352, i64* %348, align 8, !tbaa !2428
  %353 = add i64 %350, 8
  store i64 %353, i64* %349, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400ba0:                                     ; preds = %block_400b5d
  store i64 6, i64* %RDI, align 8, !tbaa !2428
  %354 = load i64, i64* %PC
  %355 = add i64 %354, 8
  store i64 %355, i64* %PC
  %356 = load i64, i64* bitcast (%v1_type* @v1 to i64*)
  store i64 %356, i64* %RAX, align 8, !tbaa !2428
  %357 = load i64, i64* %RAX
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 4
  store i64 %359, i64* %PC
  %360 = trunc i64 %357 to i8
  %361 = and i8 %360, 1
  %362 = ashr i64 %357, 1
  store i64 %362, i64* %RAX, align 8, !tbaa !2428
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %361, i8* %363, align 1, !tbaa !2451
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %365 = trunc i64 %362 to i32
  %366 = and i32 %365, 255
  %367 = call i32 @llvm.ctpop.i32(i32 %366) #16
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  %370 = xor i8 %369, 1
  store i8 %370, i8* %364, align 1, !tbaa !2451
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %371, align 1, !tbaa !2451
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %373 = icmp eq i64 %362, 0
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %372, align 1, !tbaa !2451
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %376 = lshr i64 %362, 63
  %377 = trunc i64 %376 to i8
  store i8 %377, i8* %375, align 1, !tbaa !2451
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %378, align 1, !tbaa !2451
  %379 = load i64, i64* %RAX
  %380 = load i64, i64* %PC
  %381 = add i64 %380, 6
  store i64 %381, i64* %PC
  %382 = and i64 32767, %379
  store i64 %382, i64* %RAX, align 8, !tbaa !2428
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %383, align 1, !tbaa !2432
  %384 = trunc i64 %382 to i32
  %385 = and i32 %384, 255
  %386 = call i32 @llvm.ctpop.i32(i32 %385) #16
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %389, i8* %390, align 1, !tbaa !2446
  %391 = icmp eq i64 %382, 0
  %392 = zext i1 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %392, i8* %393, align 1, !tbaa !2448
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %394, align 1, !tbaa !2449
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %395, align 1, !tbaa !2450
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %396, align 1, !tbaa !2447
  %397 = load i64, i64* %RAX
  %398 = load i64, i64* %PC
  %399 = add i64 %398, 6
  store i64 %399, i64* %PC
  %400 = xor i64 53256, %397
  store i64 %400, i64* %RAX, align 8, !tbaa !2428
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %401, align 1, !tbaa !2432
  %402 = trunc i64 %400 to i32
  %403 = and i32 %402, 255
  %404 = call i32 @llvm.ctpop.i32(i32 %403) #16
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = xor i8 %406, 1
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %407, i8* %408, align 1, !tbaa !2446
  %409 = icmp eq i64 %400, 0
  %410 = zext i1 %409 to i8
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %410, i8* %411, align 1, !tbaa !2448
  %412 = lshr i64 %400, 63
  %413 = trunc i64 %412 to i8
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %413, i8* %414, align 1, !tbaa !2449
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %415, align 1, !tbaa !2450
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %416, align 1, !tbaa !2447
  %417 = load i64, i64* %RAX
  %418 = load i64, i64* %PC
  %419 = add i64 %418, 8
  store i64 %419, i64* %PC
  store i64 %417, i64* bitcast (%v1_type* @v1 to i64*)
  %420 = load i64, i64* %PC
  %421 = sub i64 %420, 597
  %422 = load i64, i64* %PC
  %423 = add i64 %422, 5
  %424 = load i64, i64* %PC
  %425 = add i64 %424, 5
  store i64 %425, i64* %PC
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %427 = load i64, i64* %426, align 8, !tbaa !2428
  %428 = add i64 %427, -8
  %429 = inttoptr i64 %428 to i64*
  store i64 %423, i64* %429
  store i64 %428, i64* %426, align 8, !tbaa !2428
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %421, i64* %430, align 8, !tbaa !2428
  %431 = load i64, i64* %PC
  %432 = call %struct.Memory* @sub_400970_release_renamed_(%struct.State* %0, i64 %431, %struct.Memory* %2)
  %433 = load i64, i64* %RBP
  %434 = sub i64 %433, 8
  %435 = load i64, i64* %RAX
  %436 = load i64, i64* %PC
  %437 = add i64 %436, 4
  store i64 %437, i64* %PC
  %438 = inttoptr i64 %434 to i64*
  store i64 %435, i64* %438
  br label %block_400bce
}

; Function Attrs: noinline
define %struct.Memory* @sub_4009f0_qpkt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4009f0:
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
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RAX = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RCX = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RDX = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RSI = bitcast %union.anon* %26 to i64*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 11
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RDI = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 13
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %RSP = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.GPR, %struct.GPR* %33, i32 0, i32 15
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %34, i32 0, i32 0
  %RBP = bitcast %union.anon* %35 to i64*
  %36 = load i64, i64* %RBP
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 1
  store i64 %38, i64* %PC
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %40 = load i64, i64* %39, align 8, !tbaa !2428
  %41 = add i64 %40, -8
  %42 = inttoptr i64 %41 to i64*
  store i64 %36, i64* %42
  store i64 %41, i64* %39, align 8, !tbaa !2428
  %43 = load i64, i64* %RSP
  %44 = load i64, i64* %PC
  %45 = add i64 %44, 3
  store i64 %45, i64* %PC
  store i64 %43, i64* %RBP, align 8, !tbaa !2428
  %46 = load i64, i64* %RSP
  %47 = load i64, i64* %PC
  %48 = add i64 %47, 4
  store i64 %48, i64* %PC
  %49 = sub i64 %46, 32
  store i64 %49, i64* %RSP, align 8, !tbaa !2428
  %50 = icmp ult i64 %46, 32
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %51, i8* %52, align 1, !tbaa !2432
  %53 = trunc i64 %49 to i32
  %54 = and i32 %53, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54) #16
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %58, i8* %59, align 1, !tbaa !2446
  %60 = xor i64 32, %46
  %61 = xor i64 %60, %49
  %62 = lshr i64 %61, 4
  %63 = trunc i64 %62 to i8
  %64 = and i8 %63, 1
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %64, i8* %65, align 1, !tbaa !2447
  %66 = icmp eq i64 %49, 0
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %67, i8* %68, align 1, !tbaa !2448
  %69 = lshr i64 %49, 63
  %70 = trunc i64 %69 to i8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %70, i8* %71, align 1, !tbaa !2449
  %72 = lshr i64 %46, 63
  %73 = xor i64 %69, %72
  %74 = add nuw nsw i64 %73, %72
  %75 = icmp eq i64 %74, 2
  %76 = zext i1 %75 to i8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %76, i8* %77, align 1, !tbaa !2450
  %78 = load i64, i64* %RBP
  %79 = sub i64 %78, 16
  %80 = load i64, i64* %RDI
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 4
  store i64 %82, i64* %PC
  %83 = inttoptr i64 %79 to i64*
  store i64 %80, i64* %83
  %84 = load i64, i64* %RBP
  %85 = sub i64 %84, 16
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 4
  store i64 %87, i64* %PC
  %88 = inttoptr i64 %85 to i64*
  %89 = load i64, i64* %88
  store i64 %89, i64* %RDI, align 8, !tbaa !2428
  %90 = load i64, i64* %RDI
  %91 = add i64 %90, 8
  %92 = load i64, i64* %PC
  %93 = add i64 %92, 3
  store i64 %93, i64* %PC
  %94 = inttoptr i64 %91 to i32*
  %95 = load i32, i32* %94
  %96 = zext i32 %95 to i64
  store i64 %96, i64* %RDI, align 8, !tbaa !2428
  %97 = load i64, i64* %PC
  %98 = sub i64 %97, 259
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 5
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 5
  store i64 %102, i64* %PC
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %104 = load i64, i64* %103, align 8, !tbaa !2428
  %105 = add i64 %104, -8
  %106 = inttoptr i64 %105 to i64*
  store i64 %100, i64* %106
  store i64 %105, i64* %103, align 8, !tbaa !2428
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %98, i64* %107, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = call %struct.Memory* @sub_400900_findtcb_renamed_(%struct.State* %0, i64 %108, %struct.Memory* %2)
  %110 = load i64, i64* %RBP
  %111 = sub i64 %110, 24
  %112 = load i64, i64* %RAX
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 4
  store i64 %114, i64* %PC
  %115 = inttoptr i64 %111 to i64*
  store i64 %112, i64* %115
  %116 = load i64, i64* %RBP
  %117 = sub i64 %116, 24
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 5
  store i64 %119, i64* %PC
  %120 = inttoptr i64 %117 to i64*
  %121 = load i64, i64* %120
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %122, align 1, !tbaa !2432
  %123 = trunc i64 %121 to i32
  %124 = and i32 %123, 255
  %125 = call i32 @llvm.ctpop.i32(i32 %124) #16
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %128, i8* %129, align 1, !tbaa !2446
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %130, align 1, !tbaa !2447
  %131 = icmp eq i64 %121, 0
  %132 = zext i1 %131 to i8
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %132, i8* %133, align 1, !tbaa !2448
  %134 = lshr i64 %121, 63
  %135 = trunc i64 %134 to i8
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %135, i8* %136, align 1, !tbaa !2449
  %137 = lshr i64 %121, 63
  %138 = xor i64 %134, %137
  %139 = add nuw nsw i64 %138, %137
  %140 = icmp eq i64 %139, 2
  %141 = zext i1 %140 to i8
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %141, i8* %142, align 1, !tbaa !2450
  %143 = load i64, i64* %PC
  %144 = add i64 %143, 19
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 6
  %147 = load i64, i64* %PC
  %148 = add i64 %147, 6
  store i64 %148, i64* %PC
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %150 = load i8, i8* %149, align 1, !tbaa !2448
  %151 = icmp eq i8 %150, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %154 = select i1 %151, i64 %144, i64 %146
  store i64 %154, i64* %153, align 8, !tbaa !2428
  %155 = load i8, i8* %BRANCH_TAKEN
  %156 = icmp eq i8 %155, 1
  br i1 %156, label %block_400a24, label %block_400a17

block_400a9e:                                     ; preds = %block_400a60
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 25
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 5
  store i64 %160, i64* %PC
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %158, i64* %161, align 8, !tbaa !2428
  br label %block_400ab7

block_400a91:                                     ; preds = %block_400a60
  %162 = load i64, i64* %RBP
  %163 = sub i64 %162, 24
  %164 = load i64, i64* %PC
  %165 = add i64 %164, 4
  store i64 %165, i64* %PC
  %166 = inttoptr i64 %163 to i64*
  %167 = load i64, i64* %166
  store i64 %167, i64* %RAX, align 8, !tbaa !2428
  %168 = load i64, i64* %RBP
  %169 = sub i64 %168, 8
  %170 = load i64, i64* %RAX
  %171 = load i64, i64* %PC
  %172 = add i64 %171, 4
  store i64 %172, i64* %PC
  %173 = inttoptr i64 %169 to i64*
  store i64 %170, i64* %173
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 42
  %176 = load i64, i64* %PC
  %177 = add i64 %176, 5
  store i64 %177, i64* %PC
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %175, i64* %178, align 8, !tbaa !2428
  br label %block_400ac3

block_400ab7:                                     ; preds = %block_400aa3, %block_400a9e
  %MEMORY.0 = phi %struct.Memory* [ %388, %block_400aa3 ], [ %109, %block_400a9e ]
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 8
  store i64 %180, i64* %PC
  %181 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %181, i64* %RAX, align 8, !tbaa !2428
  %182 = load i64, i64* %RBP
  %183 = sub i64 %182, 8
  %184 = load i64, i64* %RAX
  %185 = load i64, i64* %PC
  %186 = add i64 %185, 4
  store i64 %186, i64* %PC
  %187 = inttoptr i64 %183 to i64*
  store i64 %184, i64* %187
  br label %block_400ac3

block_400a17:                                     ; preds = %block_4009f0
  %188 = load i64, i64* %RBP
  %189 = sub i64 %188, 24
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 4
  store i64 %191, i64* %PC
  %192 = inttoptr i64 %189 to i64*
  %193 = load i64, i64* %192
  store i64 %193, i64* %RAX, align 8, !tbaa !2428
  %194 = load i64, i64* %RBP
  %195 = sub i64 %194, 8
  %196 = load i64, i64* %RAX
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 4
  store i64 %198, i64* %PC
  %199 = inttoptr i64 %195 to i64*
  store i64 %196, i64* %199
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 164
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 5
  store i64 %203, i64* %PC
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %201, i64* %204, align 8, !tbaa !2428
  br label %block_400ac3

block_400a24:                                     ; preds = %block_4009f0
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 7
  store i64 %206, i64* %PC
  %207 = load i32, i32* bitcast (%qpktcount_type* @qpktcount to i32*)
  %208 = zext i32 %207 to i64
  store i64 %208, i64* %RAX, align 8, !tbaa !2428
  %209 = load i64, i64* %RAX
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 3
  store i64 %211, i64* %PC
  %212 = trunc i64 %209 to i32
  %213 = add i32 1, %212
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RAX, align 8, !tbaa !2428
  %215 = icmp ult i32 %213, %212
  %216 = icmp ult i32 %213, 1
  %217 = or i1 %215, %216
  %218 = zext i1 %217 to i8
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %218, i8* %219, align 1, !tbaa !2432
  %220 = and i32 %213, 255
  %221 = call i32 @llvm.ctpop.i32(i32 %220) #16
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  %224 = xor i8 %223, 1
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %224, i8* %225, align 1, !tbaa !2446
  %226 = xor i64 1, %209
  %227 = trunc i64 %226 to i32
  %228 = xor i32 %227, %213
  %229 = lshr i32 %228, 4
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %231, i8* %232, align 1, !tbaa !2447
  %233 = icmp eq i32 %213, 0
  %234 = zext i1 %233 to i8
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %234, i8* %235, align 1, !tbaa !2448
  %236 = lshr i32 %213, 31
  %237 = trunc i32 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %237, i8* %238, align 1, !tbaa !2449
  %239 = lshr i32 %212, 31
  %240 = xor i32 %236, %239
  %241 = add nuw nsw i32 %240, %236
  %242 = icmp eq i32 %241, 2
  %243 = zext i1 %242 to i8
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %243, i8* %244, align 1, !tbaa !2450
  %245 = load i32, i32* %EAX
  %246 = zext i32 %245 to i64
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 7
  store i64 %248, i64* %PC
  store i32 %245, i32* bitcast (%qpktcount_type* @qpktcount to i32*)
  %249 = load i64, i64* %RBP
  %250 = sub i64 %249, 16
  %251 = load i64, i64* %PC
  %252 = add i64 %251, 4
  store i64 %252, i64* %PC
  %253 = inttoptr i64 %250 to i64*
  %254 = load i64, i64* %253
  store i64 %254, i64* %RCX, align 8, !tbaa !2428
  %255 = load i64, i64* %RCX
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 7
  store i64 %257, i64* %PC
  %258 = inttoptr i64 %255 to i64*
  store i64 0, i64* %258
  %259 = load i64, i64* %PC
  %260 = add i64 %259, 8
  store i64 %260, i64* %PC
  %261 = load i64, i64* bitcast (%taskid_type* @taskid to i64*)
  store i64 %261, i64* %RCX, align 8, !tbaa !2428
  %262 = load i32, i32* %ECX
  %263 = zext i32 %262 to i64
  %264 = load i64, i64* %PC
  %265 = add i64 %264, 2
  store i64 %265, i64* %PC
  %266 = and i64 %263, 4294967295
  store i64 %266, i64* %RAX, align 8, !tbaa !2428
  %267 = load i64, i64* %RBP
  %268 = sub i64 %267, 16
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 4
  store i64 %270, i64* %PC
  %271 = inttoptr i64 %268 to i64*
  %272 = load i64, i64* %271
  store i64 %272, i64* %RCX, align 8, !tbaa !2428
  %273 = load i64, i64* %RCX
  %274 = add i64 %273, 8
  %275 = load i32, i32* %EAX
  %276 = zext i32 %275 to i64
  %277 = load i64, i64* %PC
  %278 = add i64 %277, 3
  store i64 %278, i64* %PC
  %279 = inttoptr i64 %274 to i32*
  store i32 %275, i32* %279
  %280 = load i64, i64* %RBP
  %281 = sub i64 %280, 24
  %282 = load i64, i64* %PC
  %283 = add i64 %282, 4
  store i64 %283, i64* %PC
  %284 = inttoptr i64 %281 to i64*
  %285 = load i64, i64* %284
  store i64 %285, i64* %RCX, align 8, !tbaa !2428
  %286 = load i64, i64* %RCX
  %287 = add i64 %286, 16
  %288 = load i64, i64* %PC
  %289 = add i64 %288, 5
  store i64 %289, i64* %PC
  %290 = inttoptr i64 %287 to i64*
  %291 = load i64, i64* %290
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %292, align 1, !tbaa !2432
  %293 = trunc i64 %291 to i32
  %294 = and i32 %293, 255
  %295 = call i32 @llvm.ctpop.i32(i32 %294) #16
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  %298 = xor i8 %297, 1
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %298, i8* %299, align 1, !tbaa !2446
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %300, align 1, !tbaa !2447
  %301 = icmp eq i64 %291, 0
  %302 = zext i1 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %302, i8* %303, align 1, !tbaa !2448
  %304 = lshr i64 %291, 63
  %305 = trunc i64 %304 to i8
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %305, i8* %306, align 1, !tbaa !2449
  %307 = lshr i64 %291, 63
  %308 = xor i64 %304, %307
  %309 = add nuw nsw i64 %308, %307
  %310 = icmp eq i64 %309, 2
  %311 = zext i1 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %311, i8* %312, align 1, !tbaa !2450
  %313 = load i64, i64* %PC
  %314 = add i64 %313, 73
  %315 = load i64, i64* %PC
  %316 = add i64 %315, 6
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 6
  store i64 %318, i64* %PC
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %320 = load i8, i8* %319, align 1, !tbaa !2448
  %321 = icmp eq i8 %320, 0
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %324 = select i1 %321, i64 %314, i64 %316
  store i64 %324, i64* %323, align 8, !tbaa !2428
  %325 = load i8, i8* %BRANCH_TAKEN
  %326 = icmp eq i8 %325, 1
  %327 = load i64, i64* %RBP
  %328 = sub i64 %327, 16
  %329 = load i64, i64* %PC
  %330 = add i64 %329, 4
  store i64 %330, i64* %PC
  br i1 %326, label %block_400aa3, label %block_400a60

block_400aa3:                                     ; preds = %block_400a24
  %331 = inttoptr i64 %328 to i64*
  %332 = load i64, i64* %331
  store i64 %332, i64* %RDI, align 8, !tbaa !2428
  %333 = load i64, i64* %RBP
  %334 = sub i64 %333, 24
  %335 = load i64, i64* %PC
  %336 = add i64 %335, 4
  store i64 %336, i64* %PC
  %337 = inttoptr i64 %334 to i64*
  %338 = load i64, i64* %337
  store i64 %338, i64* %RAX, align 8, !tbaa !2428
  %339 = load i64, i64* %RAX
  %340 = load i64, i64* %PC
  %341 = add i64 %340, 4
  store i64 %341, i64* %PC
  %342 = add i64 16, %339
  store i64 %342, i64* %RAX, align 8, !tbaa !2428
  %343 = icmp ult i64 %342, %339
  %344 = icmp ult i64 %342, 16
  %345 = or i1 %343, %344
  %346 = zext i1 %345 to i8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %346, i8* %347, align 1, !tbaa !2432
  %348 = trunc i64 %342 to i32
  %349 = and i32 %348, 255
  %350 = call i32 @llvm.ctpop.i32(i32 %349) #16
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %353, i8* %354, align 1, !tbaa !2446
  %355 = xor i64 16, %339
  %356 = xor i64 %355, %342
  %357 = lshr i64 %356, 4
  %358 = trunc i64 %357 to i8
  %359 = and i8 %358, 1
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %359, i8* %360, align 1, !tbaa !2447
  %361 = icmp eq i64 %342, 0
  %362 = zext i1 %361 to i8
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %362, i8* %363, align 1, !tbaa !2448
  %364 = lshr i64 %342, 63
  %365 = trunc i64 %364 to i8
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %365, i8* %366, align 1, !tbaa !2449
  %367 = lshr i64 %339, 63
  %368 = xor i64 %364, %367
  %369 = add nuw nsw i64 %368, %364
  %370 = icmp eq i64 %369, 2
  %371 = zext i1 %370 to i8
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %371, i8* %372, align 1, !tbaa !2450
  %373 = load i64, i64* %RAX
  %374 = load i64, i64* %PC
  %375 = add i64 %374, 3
  store i64 %375, i64* %PC
  store i64 %373, i64* %RSI, align 8, !tbaa !2428
  %376 = load i64, i64* %PC
  %377 = add i64 %376, 30
  %378 = load i64, i64* %PC
  %379 = add i64 %378, 5
  %380 = load i64, i64* %PC
  %381 = add i64 %380, 5
  store i64 %381, i64* %PC
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %383 = load i64, i64* %382, align 8, !tbaa !2428
  %384 = add i64 %383, -8
  %385 = inttoptr i64 %384 to i64*
  store i64 %379, i64* %385
  store i64 %384, i64* %382, align 8, !tbaa !2428
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %377, i64* %386, align 8, !tbaa !2428
  %387 = load i64, i64* %PC
  %388 = call %struct.Memory* @sub_400ad0_append_renamed_(%struct.State* %0, i64 %387, %struct.Memory* %109)
  br label %block_400ab7

block_400ac3:                                     ; preds = %block_400a17, %block_400ab7, %block_400a91
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400ab7 ], [ %109, %block_400a91 ], [ %109, %block_400a17 ]
  %389 = load i64, i64* %RBP
  %390 = sub i64 %389, 8
  %391 = load i64, i64* %PC
  %392 = add i64 %391, 4
  store i64 %392, i64* %PC
  %393 = inttoptr i64 %390 to i64*
  %394 = load i64, i64* %393
  store i64 %394, i64* %RAX, align 8, !tbaa !2428
  %395 = load i64, i64* %RSP
  %396 = load i64, i64* %PC
  %397 = add i64 %396, 4
  store i64 %397, i64* %PC
  %398 = add i64 32, %395
  store i64 %398, i64* %RSP, align 8, !tbaa !2428
  %399 = icmp ult i64 %398, %395
  %400 = icmp ult i64 %398, 32
  %401 = or i1 %399, %400
  %402 = zext i1 %401 to i8
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %402, i8* %403, align 1, !tbaa !2432
  %404 = trunc i64 %398 to i32
  %405 = and i32 %404, 255
  %406 = call i32 @llvm.ctpop.i32(i32 %405) #16
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %409, i8* %410, align 1, !tbaa !2446
  %411 = xor i64 32, %395
  %412 = xor i64 %411, %398
  %413 = lshr i64 %412, 4
  %414 = trunc i64 %413 to i8
  %415 = and i8 %414, 1
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %415, i8* %416, align 1, !tbaa !2447
  %417 = icmp eq i64 %398, 0
  %418 = zext i1 %417 to i8
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %418, i8* %419, align 1, !tbaa !2448
  %420 = lshr i64 %398, 63
  %421 = trunc i64 %420 to i8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %421, i8* %422, align 1, !tbaa !2449
  %423 = lshr i64 %395, 63
  %424 = xor i64 %420, %423
  %425 = add nuw nsw i64 %424, %420
  %426 = icmp eq i64 %425, 2
  %427 = zext i1 %426 to i8
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %427, i8* %428, align 1, !tbaa !2450
  %429 = load i64, i64* %PC
  %430 = add i64 %429, 1
  store i64 %430, i64* %PC
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %432 = load i64, i64* %431, align 8, !tbaa !2428
  %433 = add i64 %432, 8
  %434 = inttoptr i64 %432 to i64*
  %435 = load i64, i64* %434
  store i64 %435, i64* %RBP, align 8, !tbaa !2428
  store i64 %433, i64* %431, align 8, !tbaa !2428
  %436 = load i64, i64* %PC
  %437 = add i64 %436, 1
  store i64 %437, i64* %PC
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %440 = load i64, i64* %439, align 8, !tbaa !2428
  %441 = inttoptr i64 %440 to i64*
  %442 = load i64, i64* %441
  store i64 %442, i64* %438, align 8, !tbaa !2428
  %443 = add i64 %440, 8
  store i64 %443, i64* %439, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_400a60:                                     ; preds = %block_400a24
  %444 = inttoptr i64 %328 to i64*
  %445 = load i64, i64* %444
  store i64 %445, i64* %RAX, align 8, !tbaa !2428
  %446 = load i64, i64* %RBP
  %447 = sub i64 %446, 24
  %448 = load i64, i64* %PC
  %449 = add i64 %448, 4
  store i64 %449, i64* %PC
  %450 = inttoptr i64 %447 to i64*
  %451 = load i64, i64* %450
  store i64 %451, i64* %RCX, align 8, !tbaa !2428
  %452 = load i64, i64* %RCX
  %453 = add i64 %452, 16
  %454 = load i64, i64* %RAX
  %455 = load i64, i64* %PC
  %456 = add i64 %455, 4
  store i64 %456, i64* %PC
  %457 = inttoptr i64 %453 to i64*
  store i64 %454, i64* %457
  %458 = load i64, i64* %RBP
  %459 = sub i64 %458, 24
  %460 = load i64, i64* %PC
  %461 = add i64 %460, 4
  store i64 %461, i64* %PC
  %462 = inttoptr i64 %459 to i64*
  %463 = load i64, i64* %462
  store i64 %463, i64* %RAX, align 8, !tbaa !2428
  %464 = load i64, i64* %RAX
  %465 = add i64 %464, 24
  %466 = load i64, i64* %PC
  %467 = add i64 %466, 3
  store i64 %467, i64* %PC
  %468 = inttoptr i64 %465 to i32*
  %469 = load i32, i32* %468
  %470 = zext i32 %469 to i64
  store i64 %470, i64* %RDX, align 8, !tbaa !2428
  %471 = load i64, i64* %RDX
  %472 = load i64, i64* %PC
  %473 = add i64 %472, 3
  store i64 %473, i64* %PC
  %474 = or i64 1, %471
  %475 = trunc i64 %474 to i32
  %476 = and i64 %474, 4294967295
  store i64 %476, i64* %RDX, align 8, !tbaa !2428
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %477, align 1, !tbaa !2432
  %478 = and i32 %475, 255
  %479 = call i32 @llvm.ctpop.i32(i32 %478) #16
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %482, i8* %483, align 1, !tbaa !2446
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %484, align 1, !tbaa !2448
  %485 = lshr i32 %475, 31
  %486 = trunc i32 %485 to i8
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %486, i8* %487, align 1, !tbaa !2449
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %488, align 1, !tbaa !2450
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %489, align 1, !tbaa !2447
  %490 = load i64, i64* %RAX
  %491 = add i64 %490, 24
  %492 = load i32, i32* %EDX
  %493 = zext i32 %492 to i64
  %494 = load i64, i64* %PC
  %495 = add i64 %494, 3
  store i64 %495, i64* %PC
  %496 = inttoptr i64 %491 to i32*
  store i32 %492, i32* %496
  %497 = load i64, i64* %RBP
  %498 = sub i64 %497, 24
  %499 = load i64, i64* %PC
  %500 = add i64 %499, 4
  store i64 %500, i64* %PC
  %501 = inttoptr i64 %498 to i64*
  %502 = load i64, i64* %501
  store i64 %502, i64* %RAX, align 8, !tbaa !2428
  %503 = load i64, i64* %RAX
  %504 = add i64 %503, 12
  %505 = load i64, i64* %PC
  %506 = add i64 %505, 3
  store i64 %506, i64* %PC
  %507 = inttoptr i64 %504 to i32*
  %508 = load i32, i32* %507
  %509 = zext i32 %508 to i64
  store i64 %509, i64* %RDX, align 8, !tbaa !2428
  %510 = load i64, i64* %PC
  %511 = add i64 %510, 8
  store i64 %511, i64* %PC
  %512 = load i64, i64* bitcast (%tcb_type* @tcb to i64*)
  store i64 %512, i64* %RAX, align 8, !tbaa !2428
  %513 = load i32, i32* %EDX
  %514 = zext i32 %513 to i64
  %515 = load i64, i64* %RAX
  %516 = add i64 %515, 12
  %517 = load i64, i64* %PC
  %518 = add i64 %517, 3
  store i64 %518, i64* %PC
  %519 = inttoptr i64 %516 to i32*
  %520 = load i32, i32* %519
  %521 = sub i32 %513, %520
  %522 = icmp ult i32 %513, %520
  %523 = zext i1 %522 to i8
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %523, i8* %524, align 1, !tbaa !2432
  %525 = and i32 %521, 255
  %526 = call i32 @llvm.ctpop.i32(i32 %525) #16
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  %529 = xor i8 %528, 1
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %529, i8* %530, align 1, !tbaa !2446
  %531 = xor i32 %520, %513
  %532 = xor i32 %531, %521
  %533 = lshr i32 %532, 4
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %535, i8* %536, align 1, !tbaa !2447
  %537 = icmp eq i32 %521, 0
  %538 = zext i1 %537 to i8
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %538, i8* %539, align 1, !tbaa !2448
  %540 = lshr i32 %521, 31
  %541 = trunc i32 %540 to i8
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %541, i8* %542, align 1, !tbaa !2449
  %543 = lshr i32 %513, 31
  %544 = lshr i32 %520, 31
  %545 = xor i32 %544, %543
  %546 = xor i32 %540, %543
  %547 = add nuw nsw i32 %546, %545
  %548 = icmp eq i32 %547, 2
  %549 = zext i1 %548 to i8
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %549, i8* %550, align 1, !tbaa !2450
  %551 = load i64, i64* %PC
  %552 = add i64 %551, 19
  %553 = load i64, i64* %PC
  %554 = add i64 %553, 6
  %555 = load i64, i64* %PC
  %556 = add i64 %555, 6
  store i64 %556, i64* %PC
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %558 = load i8, i8* %557, align 1, !tbaa !2448
  %559 = icmp ne i8 %558, 0
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %561 = load i8, i8* %560, align 1, !tbaa !2449
  %562 = icmp ne i8 %561, 0
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %564 = load i8, i8* %563, align 1, !tbaa !2450
  %565 = icmp ne i8 %564, 0
  %566 = xor i1 %562, %565
  %567 = or i1 %559, %566
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %570 = select i1 %567, i64 %552, i64 %554
  store i64 %570, i64* %569, align 8, !tbaa !2428
  %571 = load i8, i8* %BRANCH_TAKEN
  %572 = icmp eq i8 %571, 1
  br i1 %572, label %block_400a9e, label %block_400a91
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400530_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400530;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400530_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400530_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400500___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400500;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400500___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400500___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602128_malloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602118_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @idlefn() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400b20;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @idlefn_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400b20_idlefn(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @workfn() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400be0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @workfn_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400be0_workfn(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @handlerfn() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400cc0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
  ret void
}

define internal %struct.Memory* @handlerfn_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400cc0_handlerfn(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @devfn() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400de0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
  ret void
}

define internal %struct.Memory* @devfn_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400de0_devfn(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401220___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401220;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401220___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401220___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4011b0___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4011b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4011b0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4011b0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400e80;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400e80_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602120___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @qpkt() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4009f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @11, void ()** @2)
  ret void
}

define internal %struct.Memory* @qpkt_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4009f0_qpkt(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @release() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400970;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @12, void ()** @2)
  ret void
}

define internal %struct.Memory* @release_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400970_release(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @trace() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400690;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @13, void ()** @2)
  ret void
}

define internal %struct.Memory* @trace_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400690_trace(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @createtask() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400540;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @14, void ()** @2)
  ret void
}

define internal %struct.Memory* @createtask_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400540_createtask(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @Wait() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4008a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @15, void ()** @2)
  ret void
}

define internal %struct.Memory* @Wait_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4008a0_Wait(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @schedule() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400700;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @16, void ()** @2)
  ret void
}

define internal %struct.Memory* @schedule_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400700_schedule(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401224;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @17, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_401224__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400400;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @18, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400400__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @pkt() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400600;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @19, void ()** @2)
  ret void
}

define internal %struct.Memory* @pkt_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400600_pkt(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @append() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400ad0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @20, void ()** @2)
  ret void
}

define internal %struct.Memory* @append_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400ad0_append(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @holdself() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4008c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @21, void ()** @2)
  ret void
}

define internal %struct.Memory* @holdself_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4008c0_holdself(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @findtcb() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400900;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @22, void ()** @2)
  ret void
}

define internal %struct.Memory* @findtcb_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400900_findtcb(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
  call void @callback_sub_4011b0___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_401220___libc_csu_fini()
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
