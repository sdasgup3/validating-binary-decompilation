; ModuleID = 'binary/test.mcsema.calls_renamed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4004d8__init_type = type <{ [23 x i8] }>
%seg_4004f0__plt_type = type <{ [112 x i8] }>
%seg_400560__text_type = type <{ [3122 x i8] }>
%seg_401194__fini_type = type <{ [9 x i8] }>
%seg_4011a0__rodata_type = type <{ [4 x i8], [12 x i8], [28 x i8], [34 x i8], [31 x i8], [27 x i8], [25 x i8], [25 x i8], [42 x i8], [37 x i8], [42 x i8], [35 x i8], [27 x i8] }>
%seg_401314__eh_frame_hdr_type = type <{ [180 x i8] }>
%seg_4013c8__eh_frame_type = type <{ [672 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64 }>
%seg_602048__data_type = type <{ [16 x i8] }>
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
@seg_4004d8__init = internal constant %seg_4004d8__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\15\1B \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_4004f0__plt = internal constant %seg_4004f0__plt_type <{ [112 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\12\1B \00\00\00\00\00\00\00\00\00\00\00\FF%\0A\1B \00\00\00\00\00\00\00\00\00\00\00\FF%\02\1B \00\00\00\00\00\00\00\00\00\00\00\FF%\FA\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\F2\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\EA\1A \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400560__text = internal constant %seg_400560__text_type <{ [3122 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\90\11@\00H\C7\C1 \11@\00H\C7\C7\80\10@\00\FF\15f\1A \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8X `\00H=X `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFX `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEX `\00UH\81\EEX `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFX `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=A\1A \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05/\1A \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\89}\F8H\89u\F0H\8Bu\F8H\8Bv\10H\89u\E8H\8Bu\F0H\8B}\E8H\89w\08H\8Bu\F8H\8B}\F0H\89w\08H\8Bu\F0H\8B}\F8H\89w\10H\8Bu\E8H\8B}\F0H\89w\10H\8Bu\F8\8B\06\83\C0\01\89\06]\C3ff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC H\89}\F0H\8B}\F0\E8k\00\00\00\83\F8\00\0F\84\0D\00\00\00H\C7E\F8\00\00\00\00\E9C\00\00\00H\8BE\F0H\8B@\10H\89E\E0H\8BE\E0H\8B@\10H\89E\E8H\8BE\F0H\8BM\E8H\89A\08H\8BE\E8H\8BM\F0H\89A\10H\8BE\F0\8B\10\83\C2\FF\89\10H\8BE\E0H\89E\F8H\8BE\F8H\83\C4 ]\C3\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC\10H\89}\F8H\8B}\F8\E8\1B\00\00\00\83\F8\00\0F\94\C1\80\E1\01\0F\B6\C1H\83\C4\10]\C3f\0F\1F\84\00\00\00\00\00UH\89\E5H\89}\F8H\8B}\F8\8B\07]\C3UH\89\E5H\89}\F8H\89u\F0H\8Bu\F8H\8Bv\08H\89u\E8H\8Bu\F0H\8B}\F8H\89w\08H\8Bu\F0H\8B}\E8H\89w\10H\8Bu\E8H\8B}\F0H\89w\08H\8Bu\F8H\8B}\F0H\89w\10H\8Bu\F8\8B\06\83\C0\01\89\06]\C3ff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC H\89}\F0H\8B}\F0\E8K\FF\FF\FF\83\F8\00\0F\84\0D\00\00\00H\C7E\F8\00\00\00\00\E9?\00\00\00H\8BE\F0H\8B@\08H\89E\E8H\8BE\E8H\8B@\08H\8BM\F0H\89A\08H\8BE\F0H\8BM\E8H\8BI\08H\89A\10H\8BE\F0\8B\10\83\C2\FF\89\10H\8BE\E8H\89E\F8H\8BE\F8H\83\C4 ]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\89}\F0H\89u\E8H\8Bu\F0H\89u\E0H\8Bu\E8H\89u\D8H\8BE\E0H\8B@\08H;E\F0\0F\84@\00\00\00H\8BE\E0\8B\08H\8BE\D8;\08\0F\84\0C\00\00\00\C7E\FC\00\00\00\00\E9X\00\00\00\E9\00\00\00\00H\8BE\E0H\8B@\08H\89E\E0H\8BE\D8H\8B@\08H\89E\D8\E9\AE\FF\FF\FFH\8BE\E0\8B\08H\8BE\D8;\08\0F\84\0C\00\00\00\C7E\FC\00\00\00\00\E9\18\00\00\00H\8BE\D8H\8B@\08H;E\E8\0F\94\C1\80\E1\01\0F\B6\D1\89U\FC\8BE\FC]\C3\0F\1F\80\00\00\00\00UH\89\E5H\83\EC@H\89}\F8H\89u\F0H\8Bu\F0H\8Bv\08H\89u\E0\C7E\DC\00\00\00\00H\8B}\F8\E8\E4\FB\FF\FFH\8B}\F0\89E\D8\E8(\FE\FF\FFH\BF\A4\11@\00\00\00\00\00\89\C6\B0\00\E8\D5\FB\FF\FFH\8B}\F0H\8B\7F\08H\89}\E8\89E\D4H\8BE\E8H\8B@\08H;E\E0\0F\84K\00\00\00H\BF\B0\11@\00\00\00\00\00\8BE\DC\83\C0\01\89E\DCH\8BM\E8\8B\11H\8BM\E8H\8BI\08\8B\09H\8Bu\E8H\8Bv\10D\8B\06\89\C6\B0\00\E8}\FB\FF\FF\89E\D0H\8BE\E8H\8B@\08H\89E\E8\E9\A3\FF\FF\FFH\BF\CC\11@\00\00\00\00\00\B0\00\E8X\FB\FF\FFH\BF\EE\11@\00\00\00\00\00H\8BM\E8H\8BI\08\8B1\89E\CC\B0\00\E8:\FB\FF\FF\89E\C8H\83\C4@]\C3\90UH\89\E5H\83\EC\10\B8\18\00\00\00\89\C7\E8,\FB\FF\FFH\89E\F8H\8BE\F8H\8B}\F8H\89G\08H\8BE\F8H\8B}\F8H\89G\10H\8BE\F8\C7\00\00\00\00\00H\8BE\F8H\83\C4\10]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \89}\FC\89u\F8\8Bu\FC;u\F8\0F\8E\12\00\00\00\8BE\FC\89E\F0\8BE\F8\89E\FC\8BE\F0\89E\F8\8BE\F8+E\FC\83\C0\01\89E\F4\8BE\F4\83\C0\01Hc\C8Hk\F9\18\E8\A6\FA\FF\FFH\89E\E0\8BU\FC\83\C2\FF\89U\FC\C7E\EC\00\00\00\00\C7E\E8\01\00\00\00\8BE\EC;E\F4\0F\8D\81\00\00\00H\8BE\E0\8BM\EC\83\C1\01Hc\D1Hk\D2\18H\01\D0H\8BU\E0Hcu\ECHk\F6\18H\01\F2H\89B\08H\8BE\E0\8BM\E8\83\E9\01Hc\D1Hk\D2\18H\01\D0H\8BU\E0Hcu\E8Hk\F6\18H\01\F2H\89B\10\8BM\FC\89\CF\83\C7\01\89}\FCH\8BE\E0HcU\ECHk\D2\18H\01\D0\89\08\8BE\EC\83\C0\01\89E\EC\8BE\E8\83\C0\01\89E\E8\E9s\FF\FF\FFH\8BE\E0HcM\F4Hk\C9\18H\01\C8H\8BM\E0H\89A\10H\8BE\E0H\8BM\E0HcU\F4Hk\D2\18H\01\D1H\89A\08H\8BE\E0\8Bu\F4\83\EE\01Hc\CEHk\C9\18H\01\C8H\8BM\E0HcU\F4Hk\D2\18H\01\D1H\89A\10\8Bu\FCH\8BE\E0HcM\F4Hk\C9\18H\01\C8\890\8Bu\F4H\8BE\E0\890H\8BE\E0H\83\C4 ]\C3f\90UH\89\E5H\83\EC0H\89}\F8H\8B}\F8\E8\9B\FB\FF\FF\89E\EC\8BE\EC\83\C0\01Hc\F8Hk\FF\18\E8V\F9\FF\FFH\89E\D8\C7E\F4\00\00\00\00\C7E\F0\01\00\00\00H\8BE\F8H\89E\E0\8BE\F4;E\EC\0F\8D~\00\00\00H\8BE\D8HcM\F0Hk\C9\18H\01\C8H\8BM\D8HcU\F4Hk\D2\18H\01\D1H\89A\08H\8BE\D8HcM\F4Hk\C9\18H\01\C8H\8BM\D8HcU\F0Hk\D2\18H\01\D1H\89A\10H\8BE\E0\8B0H\8BE\D8HcM\F4Hk\C9\18H\01\C8\890\8BE\F4\83\C0\01\89E\F4\8BE\F0\83\C0\01\89E\F0H\8BM\E0H\8BI\08H\89M\E0\E9v\FF\FF\FFH\8BE\D8HcM\ECHk\C9\18H\01\C8H\8BM\D8H\89A\10H\8BE\D8H\8BM\D8HcU\ECHk\D2\18H\01\D1H\89A\08H\8B}\F8\E8+\00\00\00\8B0H\8BE\D8HcM\ECHk\C9\18H\01\C8\890H\8BE\D8H\83\C40]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\89}\F8H\8B}\F8H\8BG\10]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\89}\F8H\8B}\F8H\89}\E8H\8BE\E8H\8B@\08H\89E\F0H\8BE\E8H\8B@\10H\8BM\E8H\89A\08H\8BE\F0H\8BM\E8H\89A\10H\8BE\F0H\89E\E8H\8BE\E8H;E\F8\0F\85\C2\FF\FF\FF]\C3UH\89\E5H\83\EC`\BF\01\00\00\00\BEd\00\00\00\C7E\FC\00\00\00\00\E8\D2\FC\FF\FFH\89E\F0H\8B}\F0\E85\FE\FF\FFH\89E\E8\E8l\FC\FF\FFH\89E\E0H\8B}\E8H\8Bu\F0\E8\BB\FA\FF\FF\83\F8\00\0F\85\1E\00\00\00H\BF\0D\12@\00\00\00\00\00\B0\00\E8q\F7\FF\FF\BF\01\00\00\00\89E\DC\E8\94\F7\FF\FF\E9\00\00\00\00H\8B}\E8\E8f\F9\FF\FF\83\F8\00\0F\95\C1\80\F1\FF\F6\C1\01\0F\85\05\00\00\00\E9%\00\00\00H\8B}\E0H\8BE\E8H\89}\D0H\89\C7\E8\DB\F9\FF\FFH\8B}\D0H\89\C6\E8O\F8\FF\FF\E9\BB\FF\FF\FFH\8B}\E8\E8!\F9\FF\FF\83\F8\00\0F\85\1E\00\00\00H\BF(\12@\00\00\00\00\00\B0\00\E8\F7\F6\FF\FF\BF\01\00\00\00\89E\CC\E8\1A\F7\FF\FF\E9\00\00\00\00H\8B}\E0\E8\EC\F8\FF\FF\83\F8\00\0F\95\C1\80\F1\FF\F6\C1\01\0F\85\05\00\00\00\E9%\00\00\00H\8B}\E8H\8BE\E0H\89}\C0H\89\C7\E8A\F8\FF\FFH\8B}\C0H\89\C6\E8\D5\F7\FF\FF\E9\BB\FF\FF\FFH\8B}\E0\E8\A7\F8\FF\FF\83\F8\00\0F\85\1E\00\00\00H\BFA\12@\00\00\00\00\00\B0\00\E8}\F6\FF\FF\BF\01\00\00\00\89E\BC\E8\A0\F6\FF\FFH\8B}\F0\E8G\FE\FF\FFH\8B}\F0\E8\9E\01\00\00\838d\0F\84.\00\00\00H\8B}\F0\E8\8C\01\00\00H\BFZ\12@\00\00\00\00\00\BEd\00\00\00\8B\10\B0\00\E84\F6\FF\FF\BF\01\00\00\00\89E\B8\E8W\F6\FF\FFH\8B}\F0\E8\DE\FD\FF\FF\838\01\0F\84.\00\00\00H\8B}\F0\E8\CC\FD\FF\FFH\BF\84\12@\00\00\00\00\00\BEd\00\00\00\8B\10\B0\00\E8\F4\F5\FF\FF\BF\01\00\00\00\89E\B4\E8\17\F6\FF\FFH\8B}\E8\E8\1E\01\00\00\838d\0F\84.\00\00\00H\8B}\E8\E8\0C\01\00\00H\BF\A9\12@\00\00\00\00\00\BEd\00\00\00\8B\10\B0\00\E8\B4\F5\FF\FF\BF\01\00\00\00\89E\B0\E8\D7\F5\FF\FFH\8B}\E8\E8^\FD\FF\FF\838\01\0F\84.\00\00\00H\8B}\E8\E8L\FD\FF\FFH\BF\84\12@\00\00\00\00\00\BEd\00\00\00\8B\10\B0\00\E8t\F5\FF\FF\BF\01\00\00\00\89E\AC\E8\97\F5\FF\FFH\8B}\F0\E8\9E\F7\FF\FF\83\F8d\0F\84.\00\00\00H\8B}\F0\E8\8C\F7\FF\FFH\BF\D3\12@\00\00\00\00\00\BEd\00\00\00\89\C2\B0\00\E84\F5\FF\FF\BF\01\00\00\00\89E\A8\E8W\F5\FF\FFH\8B}\F0H\8Bu\E8\E8J\F8\FF\FF\83\F8\00\0F\85\1E\00\00\00H\BF\F6\12@\00\00\00\00\00\B0\00\E8\00\F5\FF\FF\BF\01\00\00\00\89E\A4\E8#\F5\FF\FFH\8B}\F0\E8*\F7\FF\FF\89E\FCH\8B}\F0\E8\BE\F4\FF\FFH\8B}\E8\E8\B5\F4\FF\FFH\8B}\E0\E8\AC\F4\FF\FF\8BE\FCH\83\C4`]\C3\0F\1F\00UH\89\E5H\89}\F8H\8B}\F8H\8BG\08]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \C7E\FC\00\00\00\00\89}\F8H\89u\F0\83}\F8\02\0F\85\15\00\00\00H\8BE\F0H\8Bx\08\E8\93\F4\FF\FF\89E\E4\E9\0D\00\00\00\B8\C0\C6-\00\89E\E4\E9\00\00\00\00\8BE\E4\89E\EC\C7E\E8\00\00\00\00\8BE\EC\89\C1\83\C1\FF\89M\EC\83\F8\00\0F\84\0D\00\00\00\E8h\FC\FF\FF\89E\E8\E9\DF\FF\FF\FFH\BF\AC\11@\00\00\00\00\00\8Bu\E8\B0\00\E8\1C\F4\FF\FF1\F6\89E\E0\89\F0H\83\C4 ]\C3f.\0F\1F\84\00\00\00\00\00\0F\1FD\00\00AWAVI\89\D7AUATL\8D%\BE\0C \00UH\8D-\BE\0C \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\87\F3\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_401194__fini = internal constant %seg_401194__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_4011a0__rodata = internal constant %seg_4011a0__rodata_type <{ [4 x i8] c"\01\00\02\00", [12 x i8] c"length: %d\0A\00", [28 x i8] c"i:%3d  v:%3d  n:%3d  p:%3d\0A\00", [34 x i8] c"[last entry points to list head]\0A\00", [31 x i8] c"[val of next of tail is:  %d]\0A\00", [27 x i8] c"li2 and li1 are not equal\0A\00", [25 x i8] c"li2 should be empty now\0A\00", [25 x i8] c"li3 should be empty now\0A\00", [42 x i8] c"li1 first value wrong, wanted %d, got %d\0A\00", [37 x i8] c"last value wrong, wanted %d, got %d\0A\00", [42 x i8] c"li2 first value wrong, wanted %d, got %d\0A\00", [35 x i8] c"li1 size wrong, wanted %d, got %d\0A\00", [27 x i8] c"li1 and li2 are not equal\0A\00" }>
@seg_401314__eh_frame_hdr = internal constant %seg_401314__eh_frame_hdr_type <{ [180 x i8] c"\01\1B\03;\B0\00\00\00\15\00\00\00\DC\F1\FF\FF\0C\01\00\00L\F2\FF\FF\CC\00\00\00|\F2\FF\FF\F8\00\00\00<\F3\FF\FF4\01\00\00\9C\F3\FF\FFP\01\00\00\1C\F4\FF\FFl\01\00\00L\F4\FF\FF\88\01\00\00\5C\F4\FF\FF\A4\01\00\00\BC\F4\FF\FF\C0\01\00\00<\F5\FF\FF\DC\01\00\00\EC\F5\FF\FF\F8\01\00\00\DC\F6\FF\FF\14\02\00\00,\F7\FF\FF0\02\00\00\9C\F8\FF\FFL\02\00\00\CC\F9\FF\FFh\02\00\00\EC\F9\FF\FF\84\02\00\00<\FA\FF\FF\A0\02\00\00L\FD\FF\FF\BC\02\00\00l\FD\FF\FF\D8\02\00\00\0C\FE\FF\FF\F4\02\00\00|\FE\FF\FF<\03\00\00" }>
@seg_4013c8__eh_frame = internal constant %seg_4013c8__eh_frame_type <{ [672 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00x\F1\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00|\F1\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00\C8\F0\FF\FFp\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\00\F2\FF\FFU\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00D\F2\FF\FFx\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\90\00\00\00\A8\F2\FF\FF'\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\AC\00\00\00\BC\F2\FF\FF\10\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C8\00\00\00\B0\F2\FF\FFU\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\E4\00\00\00\F4\F2\FF\FFt\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\00\01\00\00X\F3\FF\FF\A9\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\1C\01\00\00\EC\F3\FF\FF\EF\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\01\00\00\C0\F4\FF\FFD\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00T\01\00\00\F4\F4\FF\FFn\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00p\01\00\00H\F6\FF\FF\22\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\8C\01\00\00\5C\F7\FF\FF\12\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\A8\01\00\00`\F7\FF\FFP\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C4\01\00\00\94\F7\FF\FF\0D\03\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\E0\01\00\00\88\FA\FF\FF\12\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\FC\01\00\00\8C\FA\FF\FF\91\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00D\00\00\00\18\02\00\00\10\FB\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00`\02\00\008\FB\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400640_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400610___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64)* @free to i64), i64 ptrtoint (i64 (i64)* @puts to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 ptrtoint (i64 (i64)* @malloc to i64), i64 ptrtoint (i64 (i64)* @atoi to i64), i64 ptrtoint (i64 (i64)* @exit to i64) }>
@seg_602048__data = internal global %seg_602048__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400640_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400610___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401190___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401120___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @list_push_head_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @list_reverse_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @list_pop_head_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @list_new_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @test_lists_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @list_print_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @list_equal_wrapper
@15 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @list_copy_wrapper
@16 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @list_sequence_wrapper
@17 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @list_push_tail_wrapper
@18 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@19 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @list_pop_tail_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

declare %struct.Memory* @sub_400ce0_list_last_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4007d0_list_pop_head_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4005a0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401060_list_first_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400a40_list_sequence_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400d50_test_lists_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400d00_list_reverse_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4004d8__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400bb0_list_copy_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400650_list_push_tail_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4006b0_list_pop_tail_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400760_list_length_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4009f0_list_new_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400850_list_equal_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400730_list_empty_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

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
declare extern_weak x86_64_sysvcc i64 @puts(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @atoi(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_400850_list_equal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400850:
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %ECX = bitcast %union.anon* %12 to i32*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %EDX = bitcast %union.anon* %15 to i32*
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
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 9
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %RSI = bitcast %union.anon* %27 to i64*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.GPR, %struct.GPR* %28, i32 0, i32 11
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %29, i32 0, i32 0
  %RDI = bitcast %union.anon* %30 to i64*
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 13
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0
  %RSP = bitcast %union.anon* %33 to i64*
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %35 = getelementptr inbounds %struct.GPR, %struct.GPR* %34, i32 0, i32 15
  %36 = getelementptr inbounds %struct.Reg, %struct.Reg* %35, i32 0, i32 0
  %RBP = bitcast %union.anon* %36 to i64*
  %37 = load i64, i64* %RBP
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 1
  store i64 %39, i64* %PC
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %41 = load i64, i64* %40, align 8, !tbaa !2428
  %42 = add i64 %41, -8
  %43 = inttoptr i64 %42 to i64*
  store i64 %37, i64* %43
  store i64 %42, i64* %40, align 8, !tbaa !2428
  %44 = load i64, i64* %RSP
  %45 = load i64, i64* %PC
  %46 = add i64 %45, 3
  store i64 %46, i64* %PC
  store i64 %44, i64* %RBP, align 8, !tbaa !2428
  %47 = load i64, i64* %RBP
  %48 = sub i64 %47, 16
  %49 = load i64, i64* %RDI
  %50 = load i64, i64* %PC
  %51 = add i64 %50, 4
  store i64 %51, i64* %PC
  %52 = inttoptr i64 %48 to i64*
  store i64 %49, i64* %52
  %53 = load i64, i64* %RBP
  %54 = sub i64 %53, 24
  %55 = load i64, i64* %RSI
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 4
  store i64 %57, i64* %PC
  %58 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %58
  %59 = load i64, i64* %RBP
  %60 = sub i64 %59, 16
  %61 = load i64, i64* %PC
  %62 = add i64 %61, 4
  store i64 %62, i64* %PC
  %63 = inttoptr i64 %60 to i64*
  %64 = load i64, i64* %63
  store i64 %64, i64* %RSI, align 8, !tbaa !2428
  %65 = load i64, i64* %RBP
  %66 = sub i64 %65, 32
  %67 = load i64, i64* %RSI
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 4
  store i64 %69, i64* %PC
  %70 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %70
  %71 = load i64, i64* %RBP
  %72 = sub i64 %71, 24
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC
  %75 = inttoptr i64 %72 to i64*
  %76 = load i64, i64* %75
  store i64 %76, i64* %RSI, align 8, !tbaa !2428
  %77 = load i64, i64* %RBP
  %78 = sub i64 %77, 40
  %79 = load i64, i64* %RSI
  %80 = load i64, i64* %PC
  %81 = add i64 %80, 4
  store i64 %81, i64* %PC
  %82 = inttoptr i64 %78 to i64*
  store i64 %79, i64* %82
  br label %block_40086c

block_4008d0:                                     ; preds = %block_4008be
  %83 = sub i64 %386, 4
  %84 = load i64, i64* %PC
  %85 = add i64 %84, 7
  store i64 %85, i64* %PC
  %86 = inttoptr i64 %83 to i32*
  store i32 0, i32* %86
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 29
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 5
  store i64 %90, i64* %PC
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %88, i64* %91, align 8, !tbaa !2428
  br label %block_4008f4

block_4008dc:                                     ; preds = %block_4008be
  %92 = sub i64 %386, 40
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC
  %95 = inttoptr i64 %92 to i64*
  %96 = load i64, i64* %95
  store i64 %96, i64* %RAX, align 8, !tbaa !2428
  %97 = load i64, i64* %RAX
  %98 = add i64 %97, 8
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 4
  store i64 %100, i64* %PC
  %101 = inttoptr i64 %98 to i64*
  %102 = load i64, i64* %101
  store i64 %102, i64* %RAX, align 8, !tbaa !2428
  %103 = load i64, i64* %RAX
  %104 = load i64, i64* %RBP
  %105 = sub i64 %104, 24
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %105 to i64*
  %109 = load i64, i64* %108
  %110 = sub i64 %103, %109
  %111 = icmp ugt i64 %109, %103
  %112 = zext i1 %111 to i8
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %112, i8* %113, align 1, !tbaa !2432
  %114 = trunc i64 %110 to i32
  %115 = and i32 %114, 255
  %116 = call i32 @llvm.ctpop.i32(i32 %115) #16
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  %119 = xor i8 %118, 1
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %119, i8* %120, align 1, !tbaa !2446
  %121 = xor i64 %109, %103
  %122 = xor i64 %121, %110
  %123 = lshr i64 %122, 4
  %124 = trunc i64 %123 to i8
  %125 = and i8 %124, 1
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %125, i8* %126, align 1, !tbaa !2447
  %127 = icmp eq i64 %110, 0
  %128 = zext i1 %127 to i8
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %128, i8* %129, align 1, !tbaa !2448
  %130 = lshr i64 %110, 63
  %131 = trunc i64 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %131, i8* %132, align 1, !tbaa !2449
  %133 = lshr i64 %103, 63
  %134 = lshr i64 %109, 63
  %135 = xor i64 %134, %133
  %136 = xor i64 %130, %133
  %137 = add nuw nsw i64 %136, %135
  %138 = icmp eq i64 %137, 2
  %139 = zext i1 %138 to i8
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %139, i8* %140, align 1, !tbaa !2450
  %141 = load i64, i64* %PC
  %142 = add i64 %141, 3
  store i64 %142, i64* %PC
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %144 = load i8, i8* %143, align 1, !tbaa !2448
  store i8 %144, i8* %CL, align 1, !tbaa !2451
  %145 = load i8, i8* %CL
  %146 = zext i8 %145 to i64
  %147 = load i64, i64* %PC
  %148 = add i64 %147, 3
  store i64 %148, i64* %PC
  %149 = and i64 1, %146
  %150 = trunc i64 %149 to i8
  store i8 %150, i8* %CL, align 1, !tbaa !2451
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %151, align 1, !tbaa !2432
  %152 = trunc i64 %149 to i32
  %153 = and i32 %152, 255
  %154 = call i32 @llvm.ctpop.i32(i32 %153) #16
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %157, i8* %158, align 1, !tbaa !2446
  %159 = icmp eq i8 %150, 0
  %160 = zext i1 %159 to i8
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %160, i8* %161, align 1, !tbaa !2448
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %162, align 1, !tbaa !2449
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %163, align 1, !tbaa !2450
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %164, align 1, !tbaa !2447
  %165 = load i8, i8* %CL
  %166 = zext i8 %165 to i64
  %167 = load i64, i64* %PC
  %168 = add i64 %167, 3
  store i64 %168, i64* %PC
  %169 = and i64 %166, 255
  store i64 %169, i64* %RDX, align 8, !tbaa !2428
  %170 = load i64, i64* %RBP
  %171 = sub i64 %170, 4
  %172 = load i32, i32* %EDX
  %173 = zext i32 %172 to i64
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 3
  store i64 %175, i64* %PC
  %176 = inttoptr i64 %171 to i32*
  store i32 %172, i32* %176
  br label %block_4008f4

block_40087e:                                     ; preds = %block_40086c
  br i1 %317, label %block_40089c, label %block_400890

block_400890:                                     ; preds = %block_40087e
  %177 = load i64, i64* %RBP
  %178 = sub i64 %177, 4
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 7
  store i64 %180, i64* %PC
  %181 = inttoptr i64 %178 to i32*
  store i32 0, i32* %181
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 93
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 5
  store i64 %185, i64* %PC
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %183, i64* %186, align 8, !tbaa !2428
  br label %block_4008f4

block_40086c:                                     ; preds = %block_40089c, %block_400850
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400850 ], [ %MEMORY.0, %block_40089c ]
  %187 = load i64, i64* %RBP
  %188 = sub i64 %187, 32
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 4
  store i64 %190, i64* %PC
  %191 = inttoptr i64 %188 to i64*
  %192 = load i64, i64* %191
  store i64 %192, i64* %RAX, align 8, !tbaa !2428
  %193 = load i64, i64* %RAX
  %194 = add i64 %193, 8
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 4
  store i64 %196, i64* %PC
  %197 = inttoptr i64 %194 to i64*
  %198 = load i64, i64* %197
  store i64 %198, i64* %RAX, align 8, !tbaa !2428
  %199 = load i64, i64* %RAX
  %200 = load i64, i64* %RBP
  %201 = sub i64 %200, 16
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 4
  store i64 %203, i64* %PC
  %204 = inttoptr i64 %201 to i64*
  %205 = load i64, i64* %204
  %206 = sub i64 %199, %205
  %207 = icmp ugt i64 %205, %199
  %208 = zext i1 %207 to i8
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %208, i8* %209, align 1, !tbaa !2432
  %210 = trunc i64 %206 to i32
  %211 = and i32 %210, 255
  %212 = call i32 @llvm.ctpop.i32(i32 %211) #16
  %213 = trunc i32 %212 to i8
  %214 = and i8 %213, 1
  %215 = xor i8 %214, 1
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %215, i8* %216, align 1, !tbaa !2446
  %217 = xor i64 %205, %199
  %218 = xor i64 %217, %206
  %219 = lshr i64 %218, 4
  %220 = trunc i64 %219 to i8
  %221 = and i8 %220, 1
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %221, i8* %222, align 1, !tbaa !2447
  %223 = icmp eq i64 %206, 0
  %224 = zext i1 %223 to i8
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %224, i8* %225, align 1, !tbaa !2448
  %226 = lshr i64 %206, 63
  %227 = trunc i64 %226 to i8
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %227, i8* %228, align 1, !tbaa !2449
  %229 = lshr i64 %199, 63
  %230 = lshr i64 %205, 63
  %231 = xor i64 %230, %229
  %232 = xor i64 %226, %229
  %233 = add nuw nsw i64 %232, %231
  %234 = icmp eq i64 %233, 2
  %235 = zext i1 %234 to i8
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %235, i8* %236, align 1, !tbaa !2450
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 70
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 6
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 6
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
  %250 = load i64, i64* %RBP
  %251 = sub i64 %250, 32
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 4
  store i64 %253, i64* %PC
  %254 = inttoptr i64 %251 to i64*
  %255 = load i64, i64* %254
  store i64 %255, i64* %RAX, align 8, !tbaa !2428
  %256 = load i64, i64* %RAX
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 2
  store i64 %258, i64* %PC
  %259 = inttoptr i64 %256 to i32*
  %260 = load i32, i32* %259
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RCX, align 8, !tbaa !2428
  %262 = load i64, i64* %RBP
  %263 = sub i64 %262, 40
  %264 = load i64, i64* %PC
  %265 = add i64 %264, 4
  store i64 %265, i64* %PC
  %266 = inttoptr i64 %263 to i64*
  %267 = load i64, i64* %266
  store i64 %267, i64* %RAX, align 8, !tbaa !2428
  %268 = load i32, i32* %ECX
  %269 = zext i32 %268 to i64
  %270 = load i64, i64* %RAX
  %271 = load i64, i64* %PC
  %272 = add i64 %271, 2
  store i64 %272, i64* %PC
  %273 = inttoptr i64 %270 to i32*
  %274 = load i32, i32* %273
  %275 = sub i32 %268, %274
  %276 = icmp ult i32 %268, %274
  %277 = zext i1 %276 to i8
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %277, i8* %278, align 1, !tbaa !2432
  %279 = and i32 %275, 255
  %280 = call i32 @llvm.ctpop.i32(i32 %279) #16
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %283, i8* %284, align 1, !tbaa !2446
  %285 = xor i32 %274, %268
  %286 = xor i32 %285, %275
  %287 = lshr i32 %286, 4
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %289, i8* %290, align 1, !tbaa !2447
  %291 = icmp eq i32 %275, 0
  %292 = zext i1 %291 to i8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %292, i8* %293, align 1, !tbaa !2448
  %294 = lshr i32 %275, 31
  %295 = trunc i32 %294 to i8
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %295, i8* %296, align 1, !tbaa !2449
  %297 = lshr i32 %268, 31
  %298 = lshr i32 %274, 31
  %299 = xor i32 %298, %297
  %300 = xor i32 %294, %297
  %301 = add nuw nsw i32 %300, %299
  %302 = icmp eq i32 %301, 2
  %303 = zext i1 %302 to i8
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %303, i8* %304, align 1, !tbaa !2450
  %305 = load i64, i64* %PC
  %306 = add i64 %305, 18
  %307 = load i64, i64* %PC
  %308 = add i64 %307, 6
  %309 = load i64, i64* %PC
  %310 = add i64 %309, 6
  store i64 %310, i64* %PC
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %312 = load i8, i8* %311, align 1, !tbaa !2448
  store i8 %312, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %314 = icmp ne i8 %312, 0
  %315 = select i1 %314, i64 %306, i64 %308
  store i64 %315, i64* %313, align 8, !tbaa !2428
  %316 = load i8, i8* %BRANCH_TAKEN
  %317 = icmp eq i8 %316, 1
  br i1 %249, label %block_4008be, label %block_40087e

block_4008f4:                                     ; preds = %block_400890, %block_4008dc, %block_4008d0
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_4008dc ], [ %MEMORY.0, %block_4008d0 ], [ %MEMORY.0, %block_400890 ]
  %318 = load i64, i64* %RBP
  %319 = sub i64 %318, 4
  %320 = load i64, i64* %PC
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC
  %322 = inttoptr i64 %319 to i32*
  %323 = load i32, i32* %322
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RAX, align 8, !tbaa !2428
  %325 = load i64, i64* %PC
  %326 = add i64 %325, 1
  store i64 %326, i64* %PC
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %328 = load i64, i64* %327, align 8, !tbaa !2428
  %329 = add i64 %328, 8
  %330 = inttoptr i64 %328 to i64*
  %331 = load i64, i64* %330
  store i64 %331, i64* %RBP, align 8, !tbaa !2428
  store i64 %329, i64* %327, align 8, !tbaa !2428
  %332 = load i64, i64* %PC
  %333 = add i64 %332, 1
  store i64 %333, i64* %PC
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %336 = load i64, i64* %335, align 8, !tbaa !2428
  %337 = inttoptr i64 %336 to i64*
  %338 = load i64, i64* %337
  store i64 %338, i64* %334, align 8, !tbaa !2428
  %339 = add i64 %336, 8
  store i64 %339, i64* %335, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_40089c:                                     ; preds = %block_40087e
  %340 = load i64, i64* %PC
  %341 = add i64 %340, 5
  %342 = load i64, i64* %PC
  %343 = add i64 %342, 5
  store i64 %343, i64* %PC
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %341, i64* %344, align 8, !tbaa !2428
  %345 = load i64, i64* %RBP
  %346 = sub i64 %345, 32
  %347 = load i64, i64* %PC
  %348 = add i64 %347, 4
  store i64 %348, i64* %PC
  %349 = inttoptr i64 %346 to i64*
  %350 = load i64, i64* %349
  store i64 %350, i64* %RAX, align 8, !tbaa !2428
  %351 = load i64, i64* %RAX
  %352 = add i64 %351, 8
  %353 = load i64, i64* %PC
  %354 = add i64 %353, 4
  store i64 %354, i64* %PC
  %355 = inttoptr i64 %352 to i64*
  %356 = load i64, i64* %355
  store i64 %356, i64* %RAX, align 8, !tbaa !2428
  %357 = load i64, i64* %RBP
  %358 = sub i64 %357, 32
  %359 = load i64, i64* %RAX
  %360 = load i64, i64* %PC
  %361 = add i64 %360, 4
  store i64 %361, i64* %PC
  %362 = inttoptr i64 %358 to i64*
  store i64 %359, i64* %362
  %363 = load i64, i64* %RBP
  %364 = sub i64 %363, 40
  %365 = load i64, i64* %PC
  %366 = add i64 %365, 4
  store i64 %366, i64* %PC
  %367 = inttoptr i64 %364 to i64*
  %368 = load i64, i64* %367
  store i64 %368, i64* %RAX, align 8, !tbaa !2428
  %369 = load i64, i64* %RAX
  %370 = add i64 %369, 8
  %371 = load i64, i64* %PC
  %372 = add i64 %371, 4
  store i64 %372, i64* %PC
  %373 = inttoptr i64 %370 to i64*
  %374 = load i64, i64* %373
  store i64 %374, i64* %RAX, align 8, !tbaa !2428
  %375 = load i64, i64* %RBP
  %376 = sub i64 %375, 40
  %377 = load i64, i64* %RAX
  %378 = load i64, i64* %PC
  %379 = add i64 %378, 4
  store i64 %379, i64* %PC
  %380 = inttoptr i64 %376 to i64*
  store i64 %377, i64* %380
  %381 = load i64, i64* %PC
  %382 = sub i64 %381, 77
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 5
  store i64 %384, i64* %PC
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %382, i64* %385, align 8, !tbaa !2428
  br label %block_40086c

block_4008be:                                     ; preds = %block_40086c
  %386 = load i64, i64* %RBP
  br i1 %317, label %block_4008dc, label %block_4008d0
}

; Function Attrs: noinline
define %struct.Memory* @sub_401190___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401190:
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
define %struct.Memory* @sub_400d00_list_reverse(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400d00:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
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
  %31 = load i64, i64* %RBP
  %32 = sub i64 %31, 8
  %33 = load i64, i64* %RDI
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 4
  store i64 %35, i64* %PC
  %36 = inttoptr i64 %32 to i64*
  store i64 %33, i64* %36
  %37 = load i64, i64* %RBP
  %38 = sub i64 %37, 8
  %39 = load i64, i64* %PC
  %40 = add i64 %39, 4
  store i64 %40, i64* %PC
  %41 = inttoptr i64 %38 to i64*
  %42 = load i64, i64* %41
  store i64 %42, i64* %RDI, align 8, !tbaa !2428
  %43 = load i64, i64* %RBP
  %44 = sub i64 %43, 24
  %45 = load i64, i64* %RDI
  %46 = load i64, i64* %PC
  %47 = add i64 %46, 4
  store i64 %47, i64* %PC
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48
  br label %block_400d10

block_400d10:                                     ; preds = %block_400d10, %block_400d00
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400d00 ], [ %MEMORY.0, %block_400d10 ]
  %49 = load i64, i64* %RBP
  %50 = sub i64 %49, 24
  %51 = load i64, i64* %PC
  %52 = add i64 %51, 4
  store i64 %52, i64* %PC
  %53 = inttoptr i64 %50 to i64*
  %54 = load i64, i64* %53
  store i64 %54, i64* %RAX, align 8, !tbaa !2428
  %55 = load i64, i64* %RAX
  %56 = add i64 %55, 8
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 4
  store i64 %58, i64* %PC
  %59 = inttoptr i64 %56 to i64*
  %60 = load i64, i64* %59
  store i64 %60, i64* %RAX, align 8, !tbaa !2428
  %61 = load i64, i64* %RBP
  %62 = sub i64 %61, 16
  %63 = load i64, i64* %RAX
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 4
  store i64 %65, i64* %PC
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66
  %67 = load i64, i64* %RBP
  %68 = sub i64 %67, 24
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 4
  store i64 %70, i64* %PC
  %71 = inttoptr i64 %68 to i64*
  %72 = load i64, i64* %71
  store i64 %72, i64* %RAX, align 8, !tbaa !2428
  %73 = load i64, i64* %RAX
  %74 = add i64 %73, 16
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 4
  store i64 %76, i64* %PC
  %77 = inttoptr i64 %74 to i64*
  %78 = load i64, i64* %77
  store i64 %78, i64* %RAX, align 8, !tbaa !2428
  %79 = load i64, i64* %RBP
  %80 = sub i64 %79, 24
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 4
  store i64 %82, i64* %PC
  %83 = inttoptr i64 %80 to i64*
  %84 = load i64, i64* %83
  store i64 %84, i64* %RCX, align 8, !tbaa !2428
  %85 = load i64, i64* %RCX
  %86 = add i64 %85, 8
  %87 = load i64, i64* %RAX
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC
  %90 = inttoptr i64 %86 to i64*
  store i64 %87, i64* %90
  %91 = load i64, i64* %RBP
  %92 = sub i64 %91, 16
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC
  %95 = inttoptr i64 %92 to i64*
  %96 = load i64, i64* %95
  store i64 %96, i64* %RAX, align 8, !tbaa !2428
  %97 = load i64, i64* %RBP
  %98 = sub i64 %97, 24
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 4
  store i64 %100, i64* %PC
  %101 = inttoptr i64 %98 to i64*
  %102 = load i64, i64* %101
  store i64 %102, i64* %RCX, align 8, !tbaa !2428
  %103 = load i64, i64* %RCX
  %104 = add i64 %103, 16
  %105 = load i64, i64* %RAX
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %104 to i64*
  store i64 %105, i64* %108
  %109 = load i64, i64* %RBP
  %110 = sub i64 %109, 16
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC
  %113 = inttoptr i64 %110 to i64*
  %114 = load i64, i64* %113
  store i64 %114, i64* %RAX, align 8, !tbaa !2428
  %115 = load i64, i64* %RBP
  %116 = sub i64 %115, 24
  %117 = load i64, i64* %RAX
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC
  %120 = inttoptr i64 %116 to i64*
  store i64 %117, i64* %120
  %121 = load i64, i64* %RBP
  %122 = sub i64 %121, 24
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 4
  store i64 %124, i64* %PC
  %125 = inttoptr i64 %122 to i64*
  %126 = load i64, i64* %125
  store i64 %126, i64* %RAX, align 8, !tbaa !2428
  %127 = load i64, i64* %RAX
  %128 = load i64, i64* %RBP
  %129 = sub i64 %128, 8
  %130 = load i64, i64* %PC
  %131 = add i64 %130, 4
  store i64 %131, i64* %PC
  %132 = inttoptr i64 %129 to i64*
  %133 = load i64, i64* %132
  %134 = sub i64 %127, %133
  %135 = icmp ugt i64 %133, %127
  %136 = zext i1 %135 to i8
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %136, i8* %137, align 1, !tbaa !2432
  %138 = trunc i64 %134 to i32
  %139 = and i32 %138, 255
  %140 = call i32 @llvm.ctpop.i32(i32 %139) #16
  %141 = trunc i32 %140 to i8
  %142 = and i8 %141, 1
  %143 = xor i8 %142, 1
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %143, i8* %144, align 1, !tbaa !2446
  %145 = xor i64 %133, %127
  %146 = xor i64 %145, %134
  %147 = lshr i64 %146, 4
  %148 = trunc i64 %147 to i8
  %149 = and i8 %148, 1
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %149, i8* %150, align 1, !tbaa !2447
  %151 = icmp eq i64 %134, 0
  %152 = zext i1 %151 to i8
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %152, i8* %153, align 1, !tbaa !2448
  %154 = lshr i64 %134, 63
  %155 = trunc i64 %154 to i8
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %155, i8* %156, align 1, !tbaa !2449
  %157 = lshr i64 %127, 63
  %158 = lshr i64 %133, 63
  %159 = xor i64 %158, %157
  %160 = xor i64 %154, %157
  %161 = add nuw nsw i64 %160, %159
  %162 = icmp eq i64 %161, 2
  %163 = zext i1 %162 to i8
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %163, i8* %164, align 1, !tbaa !2450
  %165 = load i64, i64* %PC
  %166 = sub i64 %165, 56
  %167 = load i64, i64* %PC
  %168 = add i64 %167, 6
  %169 = load i64, i64* %PC
  %170 = add i64 %169, 6
  store i64 %170, i64* %PC
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %172 = load i8, i8* %171, align 1, !tbaa !2448
  %173 = icmp eq i8 %172, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %176 = select i1 %173, i64 %166, i64 %168
  store i64 %176, i64* %175, align 8, !tbaa !2428
  %177 = load i8, i8* %BRANCH_TAKEN
  %178 = icmp eq i8 %177, 1
  br i1 %178, label %block_400d10, label %block_400d4e

block_400d4e:                                     ; preds = %block_400d10
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 1
  store i64 %180, i64* %PC
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %182 = load i64, i64* %181, align 8, !tbaa !2428
  %183 = add i64 %182, 8
  %184 = inttoptr i64 %182 to i64*
  %185 = load i64, i64* %184
  store i64 %185, i64* %RBP, align 8, !tbaa !2428
  store i64 %183, i64* %181, align 8, !tbaa !2428
  %186 = load i64, i64* %PC
  %187 = add i64 %186, 1
  store i64 %187, i64* %PC
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %190 = load i64, i64* %189, align 8, !tbaa !2428
  %191 = inttoptr i64 %190 to i64*
  %192 = load i64, i64* %191
  store i64 %192, i64* %188, align 8, !tbaa !2428
  %193 = add i64 %190, 8
  store i64 %193, i64* %189, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005a0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005a0:
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
  br i1 %81, label %block_4005c8, label %block_4005b1

block_4005bb:                                     ; preds = %block_4005b1
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
    i64 4195786, label %block_4005ca
    i64 4195779, label %block_4005c3
  ]

block_4005b1:                                     ; preds = %block_4005a0
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
  br i1 %131, label %block_4005c8, label %block_4005bb

block_4005c8:                                     ; preds = %block_4005c3, %block_4005b1, %block_4005a0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005a0 ], [ %2, %block_4005b1 ], [ %2, %block_4005c3 ]
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

block_4005ca:                                     ; preds = %block_4005bb
  %147 = load i64, i64* %RAX
  %148 = load i64, i64* %RAX
  %149 = add i64 %148, %147
  %150 = load i16, i16* %AX
  %151 = zext i16 %150 to i64
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 6
  store i64 %153, i64* %PC
  %154 = load i64, i64* %PC
  %155 = tail call %struct.Memory* @sub_4005d0_register_tm_clones(%struct.State* %0, i64 %154, %struct.Memory* %2)
  ret %struct.Memory* %155

block_4005c3:                                     ; preds = %block_4005bb
  %156 = load i64, i64* %RAX
  %157 = load i64, i64* %RAX
  %158 = add i64 %157, %156
  %159 = load i32, i32* %EAX
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 5
  store i64 %162, i64* %PC
  br label %block_4005c8

; <label>:163:                                    ; preds = %block_4005bb
  %164 = load i64, i64* %PC
  %165 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %164, %struct.Memory* %2)
  ret %struct.Memory* %165
}

; Function Attrs: noinline
define %struct.Memory* @sub_400900_list_print(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 17
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %R8D = bitcast %union.anon* %15 to i32*
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
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 9
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %RSI = bitcast %union.anon* %27 to i64*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.GPR, %struct.GPR* %28, i32 0, i32 11
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %29, i32 0, i32 0
  %RDI = bitcast %union.anon* %30 to i64*
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 13
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0
  %RSP = bitcast %union.anon* %33 to i64*
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %35 = getelementptr inbounds %struct.GPR, %struct.GPR* %34, i32 0, i32 15
  %36 = getelementptr inbounds %struct.Reg, %struct.Reg* %35, i32 0, i32 0
  %RBP = bitcast %union.anon* %36 to i64*
  %37 = load i64, i64* %RBP
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 1
  store i64 %39, i64* %PC
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %41 = load i64, i64* %40, align 8, !tbaa !2428
  %42 = add i64 %41, -8
  %43 = inttoptr i64 %42 to i64*
  store i64 %37, i64* %43
  store i64 %42, i64* %40, align 8, !tbaa !2428
  %44 = load i64, i64* %RSP
  %45 = load i64, i64* %PC
  %46 = add i64 %45, 3
  store i64 %46, i64* %PC
  store i64 %44, i64* %RBP, align 8, !tbaa !2428
  %47 = load i64, i64* %RSP
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 4
  store i64 %49, i64* %PC
  %50 = sub i64 %47, 64
  store i64 %50, i64* %RSP, align 8, !tbaa !2428
  %51 = icmp ult i64 %47, 64
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %52, i8* %53, align 1, !tbaa !2432
  %54 = trunc i64 %50 to i32
  %55 = and i32 %54, 255
  %56 = call i32 @llvm.ctpop.i32(i32 %55) #16
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  %59 = xor i8 %58, 1
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %59, i8* %60, align 1, !tbaa !2446
  %61 = xor i64 64, %47
  %62 = xor i64 %61, %50
  %63 = lshr i64 %62, 4
  %64 = trunc i64 %63 to i8
  %65 = and i8 %64, 1
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %65, i8* %66, align 1, !tbaa !2447
  %67 = icmp eq i64 %50, 0
  %68 = zext i1 %67 to i8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %68, i8* %69, align 1, !tbaa !2448
  %70 = lshr i64 %50, 63
  %71 = trunc i64 %70 to i8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %71, i8* %72, align 1, !tbaa !2449
  %73 = lshr i64 %47, 63
  %74 = xor i64 %70, %73
  %75 = add nuw nsw i64 %74, %73
  %76 = icmp eq i64 %75, 2
  %77 = zext i1 %76 to i8
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %77, i8* %78, align 1, !tbaa !2450
  %79 = load i64, i64* %RBP
  %80 = sub i64 %79, 8
  %81 = load i64, i64* %RDI
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC
  %84 = inttoptr i64 %80 to i64*
  store i64 %81, i64* %84
  %85 = load i64, i64* %RBP
  %86 = sub i64 %85, 16
  %87 = load i64, i64* %RSI
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC
  %90 = inttoptr i64 %86 to i64*
  store i64 %87, i64* %90
  %91 = load i64, i64* %RBP
  %92 = sub i64 %91, 16
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC
  %95 = inttoptr i64 %92 to i64*
  %96 = load i64, i64* %95
  store i64 %96, i64* %RSI, align 8, !tbaa !2428
  %97 = load i64, i64* %RSI
  %98 = add i64 %97, 8
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 4
  store i64 %100, i64* %PC
  %101 = inttoptr i64 %98 to i64*
  %102 = load i64, i64* %101
  store i64 %102, i64* %RSI, align 8, !tbaa !2428
  %103 = load i64, i64* %RBP
  %104 = sub i64 %103, 32
  %105 = load i64, i64* %RSI
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %104 to i64*
  store i64 %105, i64* %108
  %109 = load i64, i64* %RBP
  %110 = sub i64 %109, 36
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 7
  store i64 %112, i64* %PC
  %113 = inttoptr i64 %110 to i32*
  store i32 0, i32* %113
  %114 = load i64, i64* %RBP
  %115 = sub i64 %114, 8
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC
  %118 = inttoptr i64 %115 to i64*
  %119 = load i64, i64* %118
  store i64 %119, i64* %RDI, align 8, !tbaa !2428
  %120 = load i64, i64* %PC
  %121 = sub i64 %120, 1047
  %122 = load i64, i64* %PC
  %123 = add i64 %122, 5
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 5
  store i64 %125, i64* %PC
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %127 = load i64, i64* %126, align 8, !tbaa !2428
  %128 = add i64 %127, -8
  %129 = inttoptr i64 %128 to i64*
  store i64 %123, i64* %129
  store i64 %128, i64* %126, align 8, !tbaa !2428
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %121, i64* %130, align 8, !tbaa !2428
  %131 = load i64, i64* %PC
  %132 = call %struct.Memory* @ext_400510_puts(%struct.State* %0, i64 %131, %struct.Memory* %2)
  %133 = load i64, i64* %RBP
  %134 = sub i64 %133, 16
  %135 = load i64, i64* %PC
  %136 = add i64 %135, 4
  store i64 %136, i64* %PC
  %137 = inttoptr i64 %134 to i64*
  %138 = load i64, i64* %137
  store i64 %138, i64* %RDI, align 8, !tbaa !2428
  %139 = load i64, i64* %RBP
  %140 = sub i64 %139, 40
  %141 = load i32, i32* %EAX
  %142 = zext i32 %141 to i64
  %143 = load i64, i64* %PC
  %144 = add i64 %143, 3
  store i64 %144, i64* %PC
  %145 = inttoptr i64 %140 to i32*
  store i32 %141, i32* %145
  %146 = load i64, i64* %PC
  %147 = sub i64 %146, 467
  %148 = load i64, i64* %PC
  %149 = add i64 %148, 5
  %150 = load i64, i64* %PC
  %151 = add i64 %150, 5
  store i64 %151, i64* %PC
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %153 = load i64, i64* %152, align 8, !tbaa !2428
  %154 = add i64 %153, -8
  %155 = inttoptr i64 %154 to i64*
  store i64 %149, i64* %155
  store i64 %154, i64* %152, align 8, !tbaa !2428
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %147, i64* %156, align 8, !tbaa !2428
  %157 = load i64, i64* %PC
  %158 = call %struct.Memory* @sub_400760_list_length_renamed_(%struct.State* %0, i64 %157, %struct.Memory* %132)
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 10
  store i64 %160, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4011a0__rodata_type* @seg_4011a0__rodata to i64), i64 4), i64* %RDI, align 8, !tbaa !2428
  %161 = load i32, i32* %EAX
  %162 = zext i32 %161 to i64
  %163 = load i64, i64* %PC
  %164 = add i64 %163, 2
  store i64 %164, i64* %PC
  %165 = and i64 %162, 4294967295
  store i64 %165, i64* %RSI, align 8, !tbaa !2428
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 2
  store i64 %167, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %168 = load i64, i64* %PC
  %169 = sub i64 %168, 1062
  %170 = load i64, i64* %PC
  %171 = add i64 %170, 5
  %172 = load i64, i64* %PC
  %173 = add i64 %172, 5
  store i64 %173, i64* %PC
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %175 = load i64, i64* %174, align 8, !tbaa !2428
  %176 = add i64 %175, -8
  %177 = inttoptr i64 %176 to i64*
  store i64 %171, i64* %177
  store i64 %176, i64* %174, align 8, !tbaa !2428
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %169, i64* %178, align 8, !tbaa !2428
  %179 = load i64, i64* %PC
  %180 = call %struct.Memory* @ext_6020a8_printf(%struct.State* %0, i64 %179, %struct.Memory* %158)
  %181 = load i64, i64* %RBP
  %182 = sub i64 %181, 16
  %183 = load i64, i64* %PC
  %184 = add i64 %183, 4
  store i64 %184, i64* %PC
  %185 = inttoptr i64 %182 to i64*
  %186 = load i64, i64* %185
  store i64 %186, i64* %RDI, align 8, !tbaa !2428
  %187 = load i64, i64* %RDI
  %188 = add i64 %187, 8
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 4
  store i64 %190, i64* %PC
  %191 = inttoptr i64 %188 to i64*
  %192 = load i64, i64* %191
  store i64 %192, i64* %RDI, align 8, !tbaa !2428
  %193 = load i64, i64* %RBP
  %194 = sub i64 %193, 24
  %195 = load i64, i64* %RDI
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 4
  store i64 %197, i64* %PC
  %198 = inttoptr i64 %194 to i64*
  store i64 %195, i64* %198
  %199 = load i64, i64* %RBP
  %200 = sub i64 %199, 44
  %201 = load i32, i32* %EAX
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC
  %205 = inttoptr i64 %200 to i32*
  store i32 %201, i32* %205
  br label %block_40095a

block_4009b7:                                     ; preds = %block_40095a
  store i64 add (i64 ptrtoint (%seg_4011a0__rodata_type* @seg_4011a0__rodata to i64), i64 44), i64* %RDI, align 8, !tbaa !2428
  %206 = load i64, i64* %PC
  %207 = add i64 %206, 2
  store i64 %207, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %208 = load i64, i64* %PC
  %209 = sub i64 %208, 1187
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 5
  %212 = load i64, i64* %PC
  %213 = add i64 %212, 5
  store i64 %213, i64* %PC
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %215 = load i64, i64* %214, align 8, !tbaa !2428
  %216 = add i64 %215, -8
  %217 = inttoptr i64 %216 to i64*
  store i64 %211, i64* %217
  store i64 %216, i64* %214, align 8, !tbaa !2428
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %209, i64* %218, align 8, !tbaa !2428
  %219 = load i64, i64* %PC
  %220 = call %struct.Memory* @ext_6020a8_printf(%struct.State* %0, i64 %219, %struct.Memory* %MEMORY.0)
  %221 = load i64, i64* %PC
  %222 = add i64 %221, 10
  store i64 %222, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4011a0__rodata_type* @seg_4011a0__rodata to i64), i64 78), i64* %RDI, align 8, !tbaa !2428
  %223 = load i64, i64* %RBP
  %224 = sub i64 %223, 24
  %225 = load i64, i64* %PC
  %226 = add i64 %225, 4
  store i64 %226, i64* %PC
  %227 = inttoptr i64 %224 to i64*
  %228 = load i64, i64* %227
  store i64 %228, i64* %RCX, align 8, !tbaa !2428
  %229 = load i64, i64* %RCX
  %230 = add i64 %229, 8
  %231 = load i64, i64* %PC
  %232 = add i64 %231, 4
  store i64 %232, i64* %PC
  %233 = inttoptr i64 %230 to i64*
  %234 = load i64, i64* %233
  store i64 %234, i64* %RCX, align 8, !tbaa !2428
  %235 = load i64, i64* %RCX
  %236 = load i64, i64* %PC
  %237 = add i64 %236, 2
  store i64 %237, i64* %PC
  %238 = inttoptr i64 %235 to i32*
  %239 = load i32, i32* %238
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %RSI, align 8, !tbaa !2428
  %241 = load i64, i64* %RBP
  %242 = sub i64 %241, 52
  %243 = load i32, i32* %EAX
  %244 = zext i32 %243 to i64
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 3
  store i64 %246, i64* %PC
  %247 = inttoptr i64 %242 to i32*
  store i32 %243, i32* %247
  %248 = load i64, i64* %PC
  %249 = add i64 %248, 2
  store i64 %249, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %250 = load i64, i64* %PC
  %251 = sub i64 %250, 1217
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 5
  %254 = load i64, i64* %PC
  %255 = add i64 %254, 5
  store i64 %255, i64* %PC
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %257 = load i64, i64* %256, align 8, !tbaa !2428
  %258 = add i64 %257, -8
  %259 = inttoptr i64 %258 to i64*
  store i64 %253, i64* %259
  store i64 %258, i64* %256, align 8, !tbaa !2428
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %251, i64* %260, align 8, !tbaa !2428
  %261 = load i64, i64* %PC
  %262 = call %struct.Memory* @ext_6020a8_printf(%struct.State* %0, i64 %261, %struct.Memory* %220)
  %263 = load i64, i64* %RBP
  %264 = sub i64 %263, 56
  %265 = load i32, i32* %EAX
  %266 = zext i32 %265 to i64
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 3
  store i64 %268, i64* %PC
  %269 = inttoptr i64 %264 to i32*
  store i32 %265, i32* %269
  %270 = load i64, i64* %RSP
  %271 = load i64, i64* %PC
  %272 = add i64 %271, 4
  store i64 %272, i64* %PC
  %273 = add i64 64, %270
  store i64 %273, i64* %RSP, align 8, !tbaa !2428
  %274 = icmp ult i64 %273, %270
  %275 = icmp ult i64 %273, 64
  %276 = or i1 %274, %275
  %277 = zext i1 %276 to i8
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %277, i8* %278, align 1, !tbaa !2432
  %279 = trunc i64 %273 to i32
  %280 = and i32 %279, 255
  %281 = call i32 @llvm.ctpop.i32(i32 %280) #16
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = xor i8 %283, 1
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %284, i8* %285, align 1, !tbaa !2446
  %286 = xor i64 64, %270
  %287 = xor i64 %286, %273
  %288 = lshr i64 %287, 4
  %289 = trunc i64 %288 to i8
  %290 = and i8 %289, 1
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %290, i8* %291, align 1, !tbaa !2447
  %292 = icmp eq i64 %273, 0
  %293 = zext i1 %292 to i8
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %293, i8* %294, align 1, !tbaa !2448
  %295 = lshr i64 %273, 63
  %296 = trunc i64 %295 to i8
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %296, i8* %297, align 1, !tbaa !2449
  %298 = lshr i64 %270, 63
  %299 = xor i64 %295, %298
  %300 = add nuw nsw i64 %299, %295
  %301 = icmp eq i64 %300, 2
  %302 = zext i1 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %302, i8* %303, align 1, !tbaa !2450
  %304 = load i64, i64* %PC
  %305 = add i64 %304, 1
  store i64 %305, i64* %PC
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %307 = load i64, i64* %306, align 8, !tbaa !2428
  %308 = add i64 %307, 8
  %309 = inttoptr i64 %307 to i64*
  %310 = load i64, i64* %309
  store i64 %310, i64* %RBP, align 8, !tbaa !2428
  store i64 %308, i64* %306, align 8, !tbaa !2428
  %311 = load i64, i64* %PC
  %312 = add i64 %311, 1
  store i64 %312, i64* %PC
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %315 = load i64, i64* %314, align 8, !tbaa !2428
  %316 = inttoptr i64 %315 to i64*
  %317 = load i64, i64* %316
  store i64 %317, i64* %313, align 8, !tbaa !2428
  %318 = add i64 %315, 8
  store i64 %318, i64* %314, align 8, !tbaa !2428
  ret %struct.Memory* %262

block_40096c:                                     ; preds = %block_40095a
  store i64 add (i64 ptrtoint (%seg_4011a0__rodata_type* @seg_4011a0__rodata to i64), i64 16), i64* %RDI, align 8, !tbaa !2428
  %319 = load i64, i64* %RBP
  %320 = sub i64 %319, 36
  %321 = load i64, i64* %PC
  %322 = add i64 %321, 3
  store i64 %322, i64* %PC
  %323 = inttoptr i64 %320 to i32*
  %324 = load i32, i32* %323
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RAX, align 8, !tbaa !2428
  %326 = load i64, i64* %RAX
  %327 = load i64, i64* %PC
  %328 = add i64 %327, 3
  store i64 %328, i64* %PC
  %329 = trunc i64 %326 to i32
  %330 = add i32 1, %329
  %331 = zext i32 %330 to i64
  store i64 %331, i64* %RAX, align 8, !tbaa !2428
  %332 = icmp ult i32 %330, %329
  %333 = icmp ult i32 %330, 1
  %334 = or i1 %332, %333
  %335 = zext i1 %334 to i8
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %335, i8* %336, align 1, !tbaa !2432
  %337 = and i32 %330, 255
  %338 = call i32 @llvm.ctpop.i32(i32 %337) #16
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %341, i8* %342, align 1, !tbaa !2446
  %343 = xor i64 1, %326
  %344 = trunc i64 %343 to i32
  %345 = xor i32 %344, %330
  %346 = lshr i32 %345, 4
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %348, i8* %349, align 1, !tbaa !2447
  %350 = icmp eq i32 %330, 0
  %351 = zext i1 %350 to i8
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %351, i8* %352, align 1, !tbaa !2448
  %353 = lshr i32 %330, 31
  %354 = trunc i32 %353 to i8
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %354, i8* %355, align 1, !tbaa !2449
  %356 = lshr i32 %329, 31
  %357 = xor i32 %353, %356
  %358 = add nuw nsw i32 %357, %353
  %359 = icmp eq i32 %358, 2
  %360 = zext i1 %359 to i8
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %360, i8* %361, align 1, !tbaa !2450
  %362 = load i64, i64* %RBP
  %363 = sub i64 %362, 36
  %364 = load i32, i32* %EAX
  %365 = zext i32 %364 to i64
  %366 = load i64, i64* %PC
  %367 = add i64 %366, 3
  store i64 %367, i64* %PC
  %368 = inttoptr i64 %363 to i32*
  store i32 %364, i32* %368
  %369 = load i64, i64* %RBP
  %370 = sub i64 %369, 24
  %371 = load i64, i64* %PC
  %372 = add i64 %371, 4
  store i64 %372, i64* %PC
  %373 = inttoptr i64 %370 to i64*
  %374 = load i64, i64* %373
  store i64 %374, i64* %RCX, align 8, !tbaa !2428
  %375 = load i64, i64* %RCX
  %376 = load i64, i64* %PC
  %377 = add i64 %376, 2
  store i64 %377, i64* %PC
  %378 = inttoptr i64 %375 to i32*
  %379 = load i32, i32* %378
  %380 = zext i32 %379 to i64
  store i64 %380, i64* %RDX, align 8, !tbaa !2428
  %381 = load i64, i64* %RBP
  %382 = sub i64 %381, 24
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 4
  store i64 %384, i64* %PC
  %385 = inttoptr i64 %382 to i64*
  %386 = load i64, i64* %385
  store i64 %386, i64* %RCX, align 8, !tbaa !2428
  %387 = load i64, i64* %RCX
  %388 = add i64 %387, 8
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 4
  store i64 %390, i64* %PC
  %391 = inttoptr i64 %388 to i64*
  %392 = load i64, i64* %391
  store i64 %392, i64* %RCX, align 8, !tbaa !2428
  %393 = load i64, i64* %RCX
  %394 = load i64, i64* %PC
  %395 = add i64 %394, 2
  store i64 %395, i64* %PC
  %396 = inttoptr i64 %393 to i32*
  %397 = load i32, i32* %396
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RCX, align 8, !tbaa !2428
  %399 = load i64, i64* %RBP
  %400 = sub i64 %399, 24
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 4
  store i64 %402, i64* %PC
  %403 = inttoptr i64 %400 to i64*
  %404 = load i64, i64* %403
  store i64 %404, i64* %RSI, align 8, !tbaa !2428
  %405 = load i64, i64* %RSI
  %406 = add i64 %405, 16
  %407 = load i64, i64* %PC
  %408 = add i64 %407, 4
  store i64 %408, i64* %PC
  %409 = inttoptr i64 %406 to i64*
  %410 = load i64, i64* %409
  store i64 %410, i64* %RSI, align 8, !tbaa !2428
  %411 = bitcast i32* %R8D to i64*
  %412 = load i64, i64* %RSI
  %413 = load i64, i64* %PC
  %414 = add i64 %413, 3
  store i64 %414, i64* %PC
  %415 = inttoptr i64 %412 to i32*
  %416 = load i32, i32* %415
  %417 = zext i32 %416 to i64
  store i64 %417, i64* %411, align 8, !tbaa !2428
  %418 = load i32, i32* %EAX
  %419 = zext i32 %418 to i64
  %420 = load i64, i64* %PC
  %421 = add i64 %420, 2
  store i64 %421, i64* %PC
  %422 = and i64 %419, 4294967295
  store i64 %422, i64* %RSI, align 8, !tbaa !2428
  %423 = load i64, i64* %PC
  %424 = add i64 %423, 2
  store i64 %424, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %425 = load i64, i64* %PC
  %426 = sub i64 %425, 1150
  %427 = load i64, i64* %PC
  %428 = add i64 %427, 5
  %429 = load i64, i64* %PC
  %430 = add i64 %429, 5
  store i64 %430, i64* %PC
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %432 = load i64, i64* %431, align 8, !tbaa !2428
  %433 = add i64 %432, -8
  %434 = inttoptr i64 %433 to i64*
  store i64 %428, i64* %434
  store i64 %433, i64* %431, align 8, !tbaa !2428
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %426, i64* %435, align 8, !tbaa !2428
  %436 = load i64, i64* %PC
  %437 = call %struct.Memory* @ext_6020a8_printf(%struct.State* %0, i64 %436, %struct.Memory* %MEMORY.0)
  %438 = load i64, i64* %RBP
  %439 = sub i64 %438, 48
  %440 = load i32, i32* %EAX
  %441 = zext i32 %440 to i64
  %442 = load i64, i64* %PC
  %443 = add i64 %442, 3
  store i64 %443, i64* %PC
  %444 = inttoptr i64 %439 to i32*
  store i32 %440, i32* %444
  %445 = load i64, i64* %RBP
  %446 = sub i64 %445, 24
  %447 = load i64, i64* %PC
  %448 = add i64 %447, 4
  store i64 %448, i64* %PC
  %449 = inttoptr i64 %446 to i64*
  %450 = load i64, i64* %449
  store i64 %450, i64* %RAX, align 8, !tbaa !2428
  %451 = load i64, i64* %RAX
  %452 = add i64 %451, 8
  %453 = load i64, i64* %PC
  %454 = add i64 %453, 4
  store i64 %454, i64* %PC
  %455 = inttoptr i64 %452 to i64*
  %456 = load i64, i64* %455
  store i64 %456, i64* %RAX, align 8, !tbaa !2428
  %457 = load i64, i64* %RBP
  %458 = sub i64 %457, 24
  %459 = load i64, i64* %RAX
  %460 = load i64, i64* %PC
  %461 = add i64 %460, 4
  store i64 %461, i64* %PC
  %462 = inttoptr i64 %458 to i64*
  store i64 %459, i64* %462
  %463 = load i64, i64* %PC
  %464 = sub i64 %463, 88
  %465 = load i64, i64* %PC
  %466 = add i64 %465, 5
  store i64 %466, i64* %PC
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %464, i64* %467, align 8, !tbaa !2428
  br label %block_40095a

block_40095a:                                     ; preds = %block_40096c, %block_400900
  %MEMORY.0 = phi %struct.Memory* [ %180, %block_400900 ], [ %437, %block_40096c ]
  %468 = load i64, i64* %RBP
  %469 = sub i64 %468, 24
  %470 = load i64, i64* %PC
  %471 = add i64 %470, 4
  store i64 %471, i64* %PC
  %472 = inttoptr i64 %469 to i64*
  %473 = load i64, i64* %472
  store i64 %473, i64* %RAX, align 8, !tbaa !2428
  %474 = load i64, i64* %RAX
  %475 = add i64 %474, 8
  %476 = load i64, i64* %PC
  %477 = add i64 %476, 4
  store i64 %477, i64* %PC
  %478 = inttoptr i64 %475 to i64*
  %479 = load i64, i64* %478
  store i64 %479, i64* %RAX, align 8, !tbaa !2428
  %480 = load i64, i64* %RAX
  %481 = load i64, i64* %RBP
  %482 = sub i64 %481, 32
  %483 = load i64, i64* %PC
  %484 = add i64 %483, 4
  store i64 %484, i64* %PC
  %485 = inttoptr i64 %482 to i64*
  %486 = load i64, i64* %485
  %487 = sub i64 %480, %486
  %488 = icmp ugt i64 %486, %480
  %489 = zext i1 %488 to i8
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %489, i8* %490, align 1, !tbaa !2432
  %491 = trunc i64 %487 to i32
  %492 = and i32 %491, 255
  %493 = call i32 @llvm.ctpop.i32(i32 %492) #16
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  %496 = xor i8 %495, 1
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %496, i8* %497, align 1, !tbaa !2446
  %498 = xor i64 %486, %480
  %499 = xor i64 %498, %487
  %500 = lshr i64 %499, 4
  %501 = trunc i64 %500 to i8
  %502 = and i8 %501, 1
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %502, i8* %503, align 1, !tbaa !2447
  %504 = icmp eq i64 %487, 0
  %505 = zext i1 %504 to i8
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %505, i8* %506, align 1, !tbaa !2448
  %507 = lshr i64 %487, 63
  %508 = trunc i64 %507 to i8
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %508, i8* %509, align 1, !tbaa !2449
  %510 = lshr i64 %480, 63
  %511 = lshr i64 %486, 63
  %512 = xor i64 %511, %510
  %513 = xor i64 %507, %510
  %514 = add nuw nsw i64 %513, %512
  %515 = icmp eq i64 %514, 2
  %516 = zext i1 %515 to i8
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %516, i8* %517, align 1, !tbaa !2450
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 81
  %520 = load i64, i64* %PC
  %521 = add i64 %520, 6
  %522 = load i64, i64* %PC
  %523 = add i64 %522, 6
  store i64 %523, i64* %PC
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %525 = load i8, i8* %524, align 1, !tbaa !2448
  store i8 %525, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %527 = icmp ne i8 %525, 0
  %528 = select i1 %527, i64 %519, i64 %521
  store i64 %528, i64* %526, align 8, !tbaa !2428
  %529 = load i8, i8* %BRANCH_TAKEN
  %530 = icmp eq i8 %529, 1
  %531 = load i64, i64* %PC
  %532 = add i64 %531, 10
  store i64 %532, i64* %PC
  br i1 %530, label %block_4009b7, label %block_40096c
}

; Function Attrs: noinline
define %struct.Memory* @sub_401060_list_first(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401060:
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
  %28 = load i64, i64* %RBP
  %29 = sub i64 %28, 8
  %30 = load i64, i64* %RDI
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 4
  store i64 %32, i64* %PC
  %33 = inttoptr i64 %29 to i64*
  store i64 %30, i64* %33
  %34 = load i64, i64* %RBP
  %35 = sub i64 %34, 8
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC
  %38 = inttoptr i64 %35 to i64*
  %39 = load i64, i64* %38
  store i64 %39, i64* %RDI, align 8, !tbaa !2428
  %40 = load i64, i64* %RDI
  %41 = add i64 %40, 8
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC
  %44 = inttoptr i64 %41 to i64*
  %45 = load i64, i64* %44
  store i64 %45, i64* %RAX, align 8, !tbaa !2428
  %46 = load i64, i64* %PC
  %47 = add i64 %46, 1
  store i64 %47, i64* %PC
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %49 = load i64, i64* %48, align 8, !tbaa !2428
  %50 = add i64 %49, 8
  %51 = inttoptr i64 %49 to i64*
  %52 = load i64, i64* %51
  store i64 %52, i64* %RBP, align 8, !tbaa !2428
  store i64 %50, i64* %48, align 8, !tbaa !2428
  %53 = load i64, i64* %PC
  %54 = add i64 %53, 1
  store i64 %54, i64* %PC
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %57 = load i64, i64* %56, align 8, !tbaa !2428
  %58 = inttoptr i64 %57 to i64*
  %59 = load i64, i64* %58
  store i64 %59, i64* %55, align 8, !tbaa !2428
  %60 = add i64 %57, 8
  store i64 %60, i64* %56, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400a40_list_sequence(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400a40:
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
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 11
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %EDI = bitcast %union.anon* %20 to i32*
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
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 9
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %RSI = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.GPR, %struct.GPR* %33, i32 0, i32 11
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %34, i32 0, i32 0
  %RDI = bitcast %union.anon* %35 to i64*
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %37 = getelementptr inbounds %struct.GPR, %struct.GPR* %36, i32 0, i32 13
  %38 = getelementptr inbounds %struct.Reg, %struct.Reg* %37, i32 0, i32 0
  %RSP = bitcast %union.anon* %38 to i64*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 15
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %RBP = bitcast %union.anon* %41 to i64*
  %42 = load i64, i64* %RBP
  %43 = load i64, i64* %PC
  %44 = add i64 %43, 1
  store i64 %44, i64* %PC
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %46 = load i64, i64* %45, align 8, !tbaa !2428
  %47 = add i64 %46, -8
  %48 = inttoptr i64 %47 to i64*
  store i64 %42, i64* %48
  store i64 %47, i64* %45, align 8, !tbaa !2428
  %49 = load i64, i64* %RSP
  %50 = load i64, i64* %PC
  %51 = add i64 %50, 3
  store i64 %51, i64* %PC
  store i64 %49, i64* %RBP, align 8, !tbaa !2428
  %52 = load i64, i64* %RSP
  %53 = load i64, i64* %PC
  %54 = add i64 %53, 4
  store i64 %54, i64* %PC
  %55 = sub i64 %52, 32
  store i64 %55, i64* %RSP, align 8, !tbaa !2428
  %56 = icmp ult i64 %52, 32
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %57, i8* %58, align 1, !tbaa !2432
  %59 = trunc i64 %55 to i32
  %60 = and i32 %59, 255
  %61 = call i32 @llvm.ctpop.i32(i32 %60) #16
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  %64 = xor i8 %63, 1
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %64, i8* %65, align 1, !tbaa !2446
  %66 = xor i64 32, %52
  %67 = xor i64 %66, %55
  %68 = lshr i64 %67, 4
  %69 = trunc i64 %68 to i8
  %70 = and i8 %69, 1
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %70, i8* %71, align 1, !tbaa !2447
  %72 = icmp eq i64 %55, 0
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %73, i8* %74, align 1, !tbaa !2448
  %75 = lshr i64 %55, 63
  %76 = trunc i64 %75 to i8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %76, i8* %77, align 1, !tbaa !2449
  %78 = lshr i64 %52, 63
  %79 = xor i64 %75, %78
  %80 = add nuw nsw i64 %79, %78
  %81 = icmp eq i64 %80, 2
  %82 = zext i1 %81 to i8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %82, i8* %83, align 1, !tbaa !2450
  %84 = load i64, i64* %RBP
  %85 = sub i64 %84, 4
  %86 = load i32, i32* %EDI
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  %91 = load i64, i64* %RBP
  %92 = sub i64 %91, 8
  %93 = load i32, i32* %ESI
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC
  %97 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %97
  %98 = load i64, i64* %RBP
  %99 = sub i64 %98, 4
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 3
  store i64 %101, i64* %PC
  %102 = inttoptr i64 %99 to i32*
  %103 = load i32, i32* %102
  %104 = zext i32 %103 to i64
  store i64 %104, i64* %RSI, align 8, !tbaa !2428
  %105 = load i32, i32* %ESI
  %106 = zext i32 %105 to i64
  %107 = load i64, i64* %RBP
  %108 = sub i64 %107, 8
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 3
  store i64 %110, i64* %PC
  %111 = inttoptr i64 %108 to i32*
  %112 = load i32, i32* %111
  %113 = sub i32 %105, %112
  %114 = icmp ult i32 %105, %112
  %115 = zext i1 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %115, i8* %116, align 1, !tbaa !2432
  %117 = and i32 %113, 255
  %118 = call i32 @llvm.ctpop.i32(i32 %117) #16
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = xor i8 %120, 1
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %121, i8* %122, align 1, !tbaa !2446
  %123 = xor i32 %112, %105
  %124 = xor i32 %123, %113
  %125 = lshr i32 %124, 4
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %127, i8* %128, align 1, !tbaa !2447
  %129 = icmp eq i32 %113, 0
  %130 = zext i1 %129 to i8
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %130, i8* %131, align 1, !tbaa !2448
  %132 = lshr i32 %113, 31
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %133, i8* %134, align 1, !tbaa !2449
  %135 = lshr i32 %105, 31
  %136 = lshr i32 %112, 31
  %137 = xor i32 %136, %135
  %138 = xor i32 %132, %135
  %139 = add nuw nsw i32 %138, %137
  %140 = icmp eq i32 %139, 2
  %141 = zext i1 %140 to i8
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %141, i8* %142, align 1, !tbaa !2450
  %143 = load i64, i64* %PC
  %144 = add i64 %143, 24
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 6
  %147 = load i64, i64* %PC
  %148 = add i64 %147, 6
  store i64 %148, i64* %PC
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %150 = load i8, i8* %149, align 1, !tbaa !2448
  %151 = icmp ne i8 %150, 0
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %153 = load i8, i8* %152, align 1, !tbaa !2449
  %154 = icmp ne i8 %153, 0
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %156 = load i8, i8* %155, align 1, !tbaa !2450
  %157 = icmp ne i8 %156, 0
  %158 = xor i1 %154, %157
  %159 = or i1 %151, %158
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %162 = select i1 %159, i64 %144, i64 %146
  store i64 %162, i64* %161, align 8, !tbaa !2428
  %163 = load i8, i8* %BRANCH_TAKEN
  %164 = icmp eq i8 %163, 1
  br i1 %164, label %block_400a6c, label %block_400a5a

block_400a5a:                                     ; preds = %block_400a40
  %165 = load i64, i64* %RBP
  %166 = sub i64 %165, 4
  %167 = load i64, i64* %PC
  %168 = add i64 %167, 3
  store i64 %168, i64* %PC
  %169 = inttoptr i64 %166 to i32*
  %170 = load i32, i32* %169
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %RAX, align 8, !tbaa !2428
  %172 = load i64, i64* %RBP
  %173 = sub i64 %172, 16
  %174 = load i32, i32* %EAX
  %175 = zext i32 %174 to i64
  %176 = load i64, i64* %PC
  %177 = add i64 %176, 3
  store i64 %177, i64* %PC
  %178 = inttoptr i64 %173 to i32*
  store i32 %174, i32* %178
  %179 = load i64, i64* %RBP
  %180 = sub i64 %179, 8
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 3
  store i64 %182, i64* %PC
  %183 = inttoptr i64 %180 to i32*
  %184 = load i32, i32* %183
  %185 = zext i32 %184 to i64
  store i64 %185, i64* %RAX, align 8, !tbaa !2428
  %186 = load i64, i64* %RBP
  %187 = sub i64 %186, 4
  %188 = load i32, i32* %EAX
  %189 = zext i32 %188 to i64
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 3
  store i64 %191, i64* %PC
  %192 = inttoptr i64 %187 to i32*
  store i32 %188, i32* %192
  %193 = load i64, i64* %RBP
  %194 = sub i64 %193, 16
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 3
  store i64 %196, i64* %PC
  %197 = inttoptr i64 %194 to i32*
  %198 = load i32, i32* %197
  %199 = zext i32 %198 to i64
  store i64 %199, i64* %RAX, align 8, !tbaa !2428
  %200 = load i64, i64* %RBP
  %201 = sub i64 %200, 8
  %202 = load i32, i32* %EAX
  %203 = zext i32 %202 to i64
  %204 = load i64, i64* %PC
  %205 = add i64 %204, 3
  store i64 %205, i64* %PC
  %206 = inttoptr i64 %201 to i32*
  store i32 %202, i32* %206
  br label %block_400a6c

block_400b32:                                     ; preds = %block_400aa5
  %207 = sub i64 %1684, 12
  %208 = load i64, i64* %PC
  %209 = add i64 %208, 4
  store i64 %209, i64* %PC
  %210 = inttoptr i64 %207 to i32*
  %211 = load i32, i32* %210
  %212 = sext i32 %211 to i64
  store i64 %212, i64* %RCX, align 8, !tbaa !2428
  %213 = load i64, i64* %RCX
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 4
  store i64 %215, i64* %PC
  %216 = sext i64 %213 to i128
  %217 = and i128 %216, -18446744073709551616
  %218 = zext i64 %213 to i128
  %219 = or i128 %217, %218
  %220 = mul nsw i128 24, %219
  %221 = trunc i128 %220 to i64
  store i64 %221, i64* %RCX, align 8, !tbaa !2428
  %222 = sext i64 %221 to i128
  %223 = icmp ne i128 %222, %220
  %224 = zext i1 %223 to i8
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %224, i8* %225, align 1, !tbaa !2432
  %226 = trunc i128 %220 to i32
  %227 = and i32 %226, 255
  %228 = call i32 @llvm.ctpop.i32(i32 %227) #16
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %231, i8* %232, align 1, !tbaa !2446
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %233, align 1, !tbaa !2447
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %234, align 1, !tbaa !2448
  %235 = lshr i64 %221, 63
  %236 = trunc i64 %235 to i8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %236, i8* %237, align 1, !tbaa !2449
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %224, i8* %238, align 1, !tbaa !2450
  %239 = load i64, i64* %RAX
  %240 = load i64, i64* %RCX
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 3
  store i64 %242, i64* %PC
  %243 = add i64 %240, %239
  store i64 %243, i64* %RAX, align 8, !tbaa !2428
  %244 = icmp ult i64 %243, %239
  %245 = icmp ult i64 %243, %240
  %246 = or i1 %244, %245
  %247 = zext i1 %246 to i8
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %247, i8* %248, align 1, !tbaa !2432
  %249 = trunc i64 %243 to i32
  %250 = and i32 %249, 255
  %251 = call i32 @llvm.ctpop.i32(i32 %250) #16
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %254, i8* %255, align 1, !tbaa !2446
  %256 = xor i64 %240, %239
  %257 = xor i64 %256, %243
  %258 = lshr i64 %257, 4
  %259 = trunc i64 %258 to i8
  %260 = and i8 %259, 1
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %260, i8* %261, align 1, !tbaa !2447
  %262 = icmp eq i64 %243, 0
  %263 = zext i1 %262 to i8
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %263, i8* %264, align 1, !tbaa !2448
  %265 = lshr i64 %243, 63
  %266 = trunc i64 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %266, i8* %267, align 1, !tbaa !2449
  %268 = lshr i64 %239, 63
  %269 = lshr i64 %240, 63
  %270 = xor i64 %265, %268
  %271 = xor i64 %265, %269
  %272 = add nuw nsw i64 %270, %271
  %273 = icmp eq i64 %272, 2
  %274 = zext i1 %273 to i8
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %274, i8* %275, align 1, !tbaa !2450
  %276 = load i64, i64* %RBP
  %277 = sub i64 %276, 32
  %278 = load i64, i64* %PC
  %279 = add i64 %278, 4
  store i64 %279, i64* %PC
  %280 = inttoptr i64 %277 to i64*
  %281 = load i64, i64* %280
  store i64 %281, i64* %RCX, align 8, !tbaa !2428
  %282 = load i64, i64* %RCX
  %283 = add i64 %282, 16
  %284 = load i64, i64* %RAX
  %285 = load i64, i64* %PC
  %286 = add i64 %285, 4
  store i64 %286, i64* %PC
  %287 = inttoptr i64 %283 to i64*
  store i64 %284, i64* %287
  %288 = load i64, i64* %RBP
  %289 = sub i64 %288, 32
  %290 = load i64, i64* %PC
  %291 = add i64 %290, 4
  store i64 %291, i64* %PC
  %292 = inttoptr i64 %289 to i64*
  %293 = load i64, i64* %292
  store i64 %293, i64* %RAX, align 8, !tbaa !2428
  %294 = load i64, i64* %RBP
  %295 = sub i64 %294, 32
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 4
  store i64 %297, i64* %PC
  %298 = inttoptr i64 %295 to i64*
  %299 = load i64, i64* %298
  store i64 %299, i64* %RCX, align 8, !tbaa !2428
  %300 = load i64, i64* %RBP
  %301 = sub i64 %300, 12
  %302 = load i64, i64* %PC
  %303 = add i64 %302, 4
  store i64 %303, i64* %PC
  %304 = inttoptr i64 %301 to i32*
  %305 = load i32, i32* %304
  %306 = sext i32 %305 to i64
  store i64 %306, i64* %RDX, align 8, !tbaa !2428
  %307 = load i64, i64* %RDX
  %308 = load i64, i64* %PC
  %309 = add i64 %308, 4
  store i64 %309, i64* %PC
  %310 = sext i64 %307 to i128
  %311 = and i128 %310, -18446744073709551616
  %312 = zext i64 %307 to i128
  %313 = or i128 %311, %312
  %314 = mul nsw i128 24, %313
  %315 = trunc i128 %314 to i64
  store i64 %315, i64* %RDX, align 8, !tbaa !2428
  %316 = sext i64 %315 to i128
  %317 = icmp ne i128 %316, %314
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %318, i8* %319, align 1, !tbaa !2432
  %320 = trunc i128 %314 to i32
  %321 = and i32 %320, 255
  %322 = call i32 @llvm.ctpop.i32(i32 %321) #16
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %325, i8* %326, align 1, !tbaa !2446
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %327, align 1, !tbaa !2447
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %328, align 1, !tbaa !2448
  %329 = lshr i64 %315, 63
  %330 = trunc i64 %329 to i8
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %330, i8* %331, align 1, !tbaa !2449
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %318, i8* %332, align 1, !tbaa !2450
  %333 = load i64, i64* %RCX
  %334 = load i64, i64* %RDX
  %335 = load i64, i64* %PC
  %336 = add i64 %335, 3
  store i64 %336, i64* %PC
  %337 = add i64 %334, %333
  store i64 %337, i64* %RCX, align 8, !tbaa !2428
  %338 = icmp ult i64 %337, %333
  %339 = icmp ult i64 %337, %334
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
  %350 = xor i64 %334, %333
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
  %362 = lshr i64 %333, 63
  %363 = lshr i64 %334, 63
  %364 = xor i64 %359, %362
  %365 = xor i64 %359, %363
  %366 = add nuw nsw i64 %364, %365
  %367 = icmp eq i64 %366, 2
  %368 = zext i1 %367 to i8
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %368, i8* %369, align 1, !tbaa !2450
  %370 = load i64, i64* %RCX
  %371 = add i64 %370, 8
  %372 = load i64, i64* %RAX
  %373 = load i64, i64* %PC
  %374 = add i64 %373, 4
  store i64 %374, i64* %PC
  %375 = inttoptr i64 %371 to i64*
  store i64 %372, i64* %375
  %376 = load i64, i64* %RBP
  %377 = sub i64 %376, 32
  %378 = load i64, i64* %PC
  %379 = add i64 %378, 4
  store i64 %379, i64* %PC
  %380 = inttoptr i64 %377 to i64*
  %381 = load i64, i64* %380
  store i64 %381, i64* %RAX, align 8, !tbaa !2428
  %382 = load i64, i64* %RBP
  %383 = sub i64 %382, 12
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 3
  store i64 %385, i64* %PC
  %386 = inttoptr i64 %383 to i32*
  %387 = load i32, i32* %386
  %388 = zext i32 %387 to i64
  store i64 %388, i64* %RSI, align 8, !tbaa !2428
  %389 = load i64, i64* %RSI
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 3
  store i64 %391, i64* %PC
  %392 = trunc i64 %389 to i32
  %393 = sub i32 %392, 1
  %394 = zext i32 %393 to i64
  store i64 %394, i64* %RSI, align 8, !tbaa !2428
  %395 = icmp ult i32 %392, 1
  %396 = zext i1 %395 to i8
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %396, i8* %397, align 1, !tbaa !2432
  %398 = and i32 %393, 255
  %399 = call i32 @llvm.ctpop.i32(i32 %398) #16
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %402, i8* %403, align 1, !tbaa !2446
  %404 = xor i64 1, %389
  %405 = trunc i64 %404 to i32
  %406 = xor i32 %405, %393
  %407 = lshr i32 %406, 4
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %409, i8* %410, align 1, !tbaa !2447
  %411 = icmp eq i32 %393, 0
  %412 = zext i1 %411 to i8
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %412, i8* %413, align 1, !tbaa !2448
  %414 = lshr i32 %393, 31
  %415 = trunc i32 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %415, i8* %416, align 1, !tbaa !2449
  %417 = lshr i32 %392, 31
  %418 = xor i32 %414, %417
  %419 = add nuw nsw i32 %418, %417
  %420 = icmp eq i32 %419, 2
  %421 = zext i1 %420 to i8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %421, i8* %422, align 1, !tbaa !2450
  %423 = load i32, i32* %ESI
  %424 = zext i32 %423 to i64
  %425 = load i64, i64* %PC
  %426 = add i64 %425, 3
  store i64 %426, i64* %PC
  %427 = shl i64 %424, 32
  %428 = ashr exact i64 %427, 32
  store i64 %428, i64* %RCX, align 8, !tbaa !2428
  %429 = load i64, i64* %RCX
  %430 = load i64, i64* %PC
  %431 = add i64 %430, 4
  store i64 %431, i64* %PC
  %432 = sext i64 %429 to i128
  %433 = and i128 %432, -18446744073709551616
  %434 = zext i64 %429 to i128
  %435 = or i128 %433, %434
  %436 = mul nsw i128 24, %435
  %437 = trunc i128 %436 to i64
  store i64 %437, i64* %RCX, align 8, !tbaa !2428
  %438 = sext i64 %437 to i128
  %439 = icmp ne i128 %438, %436
  %440 = zext i1 %439 to i8
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %440, i8* %441, align 1, !tbaa !2432
  %442 = trunc i128 %436 to i32
  %443 = and i32 %442, 255
  %444 = call i32 @llvm.ctpop.i32(i32 %443) #16
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = xor i8 %446, 1
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %447, i8* %448, align 1, !tbaa !2446
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %449, align 1, !tbaa !2447
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %450, align 1, !tbaa !2448
  %451 = lshr i64 %437, 63
  %452 = trunc i64 %451 to i8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %452, i8* %453, align 1, !tbaa !2449
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %440, i8* %454, align 1, !tbaa !2450
  %455 = load i64, i64* %RAX
  %456 = load i64, i64* %RCX
  %457 = load i64, i64* %PC
  %458 = add i64 %457, 3
  store i64 %458, i64* %PC
  %459 = add i64 %456, %455
  store i64 %459, i64* %RAX, align 8, !tbaa !2428
  %460 = icmp ult i64 %459, %455
  %461 = icmp ult i64 %459, %456
  %462 = or i1 %460, %461
  %463 = zext i1 %462 to i8
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %463, i8* %464, align 1, !tbaa !2432
  %465 = trunc i64 %459 to i32
  %466 = and i32 %465, 255
  %467 = call i32 @llvm.ctpop.i32(i32 %466) #16
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %470, i8* %471, align 1, !tbaa !2446
  %472 = xor i64 %456, %455
  %473 = xor i64 %472, %459
  %474 = lshr i64 %473, 4
  %475 = trunc i64 %474 to i8
  %476 = and i8 %475, 1
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %476, i8* %477, align 1, !tbaa !2447
  %478 = icmp eq i64 %459, 0
  %479 = zext i1 %478 to i8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %479, i8* %480, align 1, !tbaa !2448
  %481 = lshr i64 %459, 63
  %482 = trunc i64 %481 to i8
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %482, i8* %483, align 1, !tbaa !2449
  %484 = lshr i64 %455, 63
  %485 = lshr i64 %456, 63
  %486 = xor i64 %481, %484
  %487 = xor i64 %481, %485
  %488 = add nuw nsw i64 %486, %487
  %489 = icmp eq i64 %488, 2
  %490 = zext i1 %489 to i8
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %490, i8* %491, align 1, !tbaa !2450
  %492 = load i64, i64* %RBP
  %493 = sub i64 %492, 32
  %494 = load i64, i64* %PC
  %495 = add i64 %494, 4
  store i64 %495, i64* %PC
  %496 = inttoptr i64 %493 to i64*
  %497 = load i64, i64* %496
  store i64 %497, i64* %RCX, align 8, !tbaa !2428
  %498 = load i64, i64* %RBP
  %499 = sub i64 %498, 12
  %500 = load i64, i64* %PC
  %501 = add i64 %500, 4
  store i64 %501, i64* %PC
  %502 = inttoptr i64 %499 to i32*
  %503 = load i32, i32* %502
  %504 = sext i32 %503 to i64
  store i64 %504, i64* %RDX, align 8, !tbaa !2428
  %505 = load i64, i64* %RDX
  %506 = load i64, i64* %PC
  %507 = add i64 %506, 4
  store i64 %507, i64* %PC
  %508 = sext i64 %505 to i128
  %509 = and i128 %508, -18446744073709551616
  %510 = zext i64 %505 to i128
  %511 = or i128 %509, %510
  %512 = mul nsw i128 24, %511
  %513 = trunc i128 %512 to i64
  store i64 %513, i64* %RDX, align 8, !tbaa !2428
  %514 = sext i64 %513 to i128
  %515 = icmp ne i128 %514, %512
  %516 = zext i1 %515 to i8
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %516, i8* %517, align 1, !tbaa !2432
  %518 = trunc i128 %512 to i32
  %519 = and i32 %518, 255
  %520 = call i32 @llvm.ctpop.i32(i32 %519) #16
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = xor i8 %522, 1
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %523, i8* %524, align 1, !tbaa !2446
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %525, align 1, !tbaa !2447
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %526, align 1, !tbaa !2448
  %527 = lshr i64 %513, 63
  %528 = trunc i64 %527 to i8
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %528, i8* %529, align 1, !tbaa !2449
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %516, i8* %530, align 1, !tbaa !2450
  %531 = load i64, i64* %RCX
  %532 = load i64, i64* %RDX
  %533 = load i64, i64* %PC
  %534 = add i64 %533, 3
  store i64 %534, i64* %PC
  %535 = add i64 %532, %531
  store i64 %535, i64* %RCX, align 8, !tbaa !2428
  %536 = icmp ult i64 %535, %531
  %537 = icmp ult i64 %535, %532
  %538 = or i1 %536, %537
  %539 = zext i1 %538 to i8
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %539, i8* %540, align 1, !tbaa !2432
  %541 = trunc i64 %535 to i32
  %542 = and i32 %541, 255
  %543 = call i32 @llvm.ctpop.i32(i32 %542) #16
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  %546 = xor i8 %545, 1
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %546, i8* %547, align 1, !tbaa !2446
  %548 = xor i64 %532, %531
  %549 = xor i64 %548, %535
  %550 = lshr i64 %549, 4
  %551 = trunc i64 %550 to i8
  %552 = and i8 %551, 1
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %552, i8* %553, align 1, !tbaa !2447
  %554 = icmp eq i64 %535, 0
  %555 = zext i1 %554 to i8
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %555, i8* %556, align 1, !tbaa !2448
  %557 = lshr i64 %535, 63
  %558 = trunc i64 %557 to i8
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %558, i8* %559, align 1, !tbaa !2449
  %560 = lshr i64 %531, 63
  %561 = lshr i64 %532, 63
  %562 = xor i64 %557, %560
  %563 = xor i64 %557, %561
  %564 = add nuw nsw i64 %562, %563
  %565 = icmp eq i64 %564, 2
  %566 = zext i1 %565 to i8
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %566, i8* %567, align 1, !tbaa !2450
  %568 = load i64, i64* %RCX
  %569 = add i64 %568, 16
  %570 = load i64, i64* %RAX
  %571 = load i64, i64* %PC
  %572 = add i64 %571, 4
  store i64 %572, i64* %PC
  %573 = inttoptr i64 %569 to i64*
  store i64 %570, i64* %573
  %574 = load i64, i64* %RBP
  %575 = sub i64 %574, 4
  %576 = load i64, i64* %PC
  %577 = add i64 %576, 3
  store i64 %577, i64* %PC
  %578 = inttoptr i64 %575 to i32*
  %579 = load i32, i32* %578
  %580 = zext i32 %579 to i64
  store i64 %580, i64* %RSI, align 8, !tbaa !2428
  %581 = load i64, i64* %RBP
  %582 = sub i64 %581, 32
  %583 = load i64, i64* %PC
  %584 = add i64 %583, 4
  store i64 %584, i64* %PC
  %585 = inttoptr i64 %582 to i64*
  %586 = load i64, i64* %585
  store i64 %586, i64* %RAX, align 8, !tbaa !2428
  %587 = load i64, i64* %RBP
  %588 = sub i64 %587, 12
  %589 = load i64, i64* %PC
  %590 = add i64 %589, 4
  store i64 %590, i64* %PC
  %591 = inttoptr i64 %588 to i32*
  %592 = load i32, i32* %591
  %593 = sext i32 %592 to i64
  store i64 %593, i64* %RCX, align 8, !tbaa !2428
  %594 = load i64, i64* %RCX
  %595 = load i64, i64* %PC
  %596 = add i64 %595, 4
  store i64 %596, i64* %PC
  %597 = sext i64 %594 to i128
  %598 = and i128 %597, -18446744073709551616
  %599 = zext i64 %594 to i128
  %600 = or i128 %598, %599
  %601 = mul nsw i128 24, %600
  %602 = trunc i128 %601 to i64
  store i64 %602, i64* %RCX, align 8, !tbaa !2428
  %603 = sext i64 %602 to i128
  %604 = icmp ne i128 %603, %601
  %605 = zext i1 %604 to i8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %605, i8* %606, align 1, !tbaa !2432
  %607 = trunc i128 %601 to i32
  %608 = and i32 %607, 255
  %609 = call i32 @llvm.ctpop.i32(i32 %608) #16
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  %612 = xor i8 %611, 1
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %612, i8* %613, align 1, !tbaa !2446
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %614, align 1, !tbaa !2447
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %615, align 1, !tbaa !2448
  %616 = lshr i64 %602, 63
  %617 = trunc i64 %616 to i8
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %617, i8* %618, align 1, !tbaa !2449
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %605, i8* %619, align 1, !tbaa !2450
  %620 = load i64, i64* %RAX
  %621 = load i64, i64* %RCX
  %622 = load i64, i64* %PC
  %623 = add i64 %622, 3
  store i64 %623, i64* %PC
  %624 = add i64 %621, %620
  store i64 %624, i64* %RAX, align 8, !tbaa !2428
  %625 = icmp ult i64 %624, %620
  %626 = icmp ult i64 %624, %621
  %627 = or i1 %625, %626
  %628 = zext i1 %627 to i8
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %628, i8* %629, align 1, !tbaa !2432
  %630 = trunc i64 %624 to i32
  %631 = and i32 %630, 255
  %632 = call i32 @llvm.ctpop.i32(i32 %631) #16
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  %635 = xor i8 %634, 1
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %635, i8* %636, align 1, !tbaa !2446
  %637 = xor i64 %621, %620
  %638 = xor i64 %637, %624
  %639 = lshr i64 %638, 4
  %640 = trunc i64 %639 to i8
  %641 = and i8 %640, 1
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %641, i8* %642, align 1, !tbaa !2447
  %643 = icmp eq i64 %624, 0
  %644 = zext i1 %643 to i8
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %644, i8* %645, align 1, !tbaa !2448
  %646 = lshr i64 %624, 63
  %647 = trunc i64 %646 to i8
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %647, i8* %648, align 1, !tbaa !2449
  %649 = lshr i64 %620, 63
  %650 = lshr i64 %621, 63
  %651 = xor i64 %646, %649
  %652 = xor i64 %646, %650
  %653 = add nuw nsw i64 %651, %652
  %654 = icmp eq i64 %653, 2
  %655 = zext i1 %654 to i8
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %655, i8* %656, align 1, !tbaa !2450
  %657 = load i64, i64* %RAX
  %658 = load i32, i32* %ESI
  %659 = zext i32 %658 to i64
  %660 = load i64, i64* %PC
  %661 = add i64 %660, 2
  store i64 %661, i64* %PC
  %662 = inttoptr i64 %657 to i32*
  store i32 %658, i32* %662
  %663 = load i64, i64* %RBP
  %664 = sub i64 %663, 12
  %665 = load i64, i64* %PC
  %666 = add i64 %665, 3
  store i64 %666, i64* %PC
  %667 = inttoptr i64 %664 to i32*
  %668 = load i32, i32* %667
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %RSI, align 8, !tbaa !2428
  %670 = load i64, i64* %RBP
  %671 = sub i64 %670, 32
  %672 = load i64, i64* %PC
  %673 = add i64 %672, 4
  store i64 %673, i64* %PC
  %674 = inttoptr i64 %671 to i64*
  %675 = load i64, i64* %674
  store i64 %675, i64* %RAX, align 8, !tbaa !2428
  %676 = load i64, i64* %RAX
  %677 = load i32, i32* %ESI
  %678 = zext i32 %677 to i64
  %679 = load i64, i64* %PC
  %680 = add i64 %679, 2
  store i64 %680, i64* %PC
  %681 = inttoptr i64 %676 to i32*
  store i32 %677, i32* %681
  %682 = load i64, i64* %RBP
  %683 = sub i64 %682, 32
  %684 = load i64, i64* %PC
  %685 = add i64 %684, 4
  store i64 %685, i64* %PC
  %686 = inttoptr i64 %683 to i64*
  %687 = load i64, i64* %686
  store i64 %687, i64* %RAX, align 8, !tbaa !2428
  %688 = load i64, i64* %RSP
  %689 = load i64, i64* %PC
  %690 = add i64 %689, 4
  store i64 %690, i64* %PC
  %691 = add i64 32, %688
  store i64 %691, i64* %RSP, align 8, !tbaa !2428
  %692 = icmp ult i64 %691, %688
  %693 = icmp ult i64 %691, 32
  %694 = or i1 %692, %693
  %695 = zext i1 %694 to i8
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %695, i8* %696, align 1, !tbaa !2432
  %697 = trunc i64 %691 to i32
  %698 = and i32 %697, 255
  %699 = call i32 @llvm.ctpop.i32(i32 %698) #16
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = xor i8 %701, 1
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %702, i8* %703, align 1, !tbaa !2446
  %704 = xor i64 32, %688
  %705 = xor i64 %704, %691
  %706 = lshr i64 %705, 4
  %707 = trunc i64 %706 to i8
  %708 = and i8 %707, 1
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %708, i8* %709, align 1, !tbaa !2447
  %710 = icmp eq i64 %691, 0
  %711 = zext i1 %710 to i8
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %711, i8* %712, align 1, !tbaa !2448
  %713 = lshr i64 %691, 63
  %714 = trunc i64 %713 to i8
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %714, i8* %715, align 1, !tbaa !2449
  %716 = lshr i64 %688, 63
  %717 = xor i64 %713, %716
  %718 = add nuw nsw i64 %717, %713
  %719 = icmp eq i64 %718, 2
  %720 = zext i1 %719 to i8
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %720, i8* %721, align 1, !tbaa !2450
  %722 = load i64, i64* %PC
  %723 = add i64 %722, 1
  store i64 %723, i64* %PC
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %725 = load i64, i64* %724, align 8, !tbaa !2428
  %726 = add i64 %725, 8
  %727 = inttoptr i64 %725 to i64*
  %728 = load i64, i64* %727
  store i64 %728, i64* %RBP, align 8, !tbaa !2428
  store i64 %726, i64* %724, align 8, !tbaa !2428
  %729 = load i64, i64* %PC
  %730 = add i64 %729, 1
  store i64 %730, i64* %PC
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %733 = load i64, i64* %732, align 8, !tbaa !2428
  %734 = inttoptr i64 %733 to i64*
  %735 = load i64, i64* %734
  store i64 %735, i64* %731, align 8, !tbaa !2428
  %736 = add i64 %733, 8
  store i64 %736, i64* %732, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_400ab1:                                     ; preds = %block_400aa5
  %737 = sub i64 %1684, 20
  %738 = load i64, i64* %PC
  %739 = add i64 %738, 3
  store i64 %739, i64* %PC
  %740 = inttoptr i64 %737 to i32*
  %741 = load i32, i32* %740
  %742 = zext i32 %741 to i64
  store i64 %742, i64* %RCX, align 8, !tbaa !2428
  %743 = load i64, i64* %RCX
  %744 = load i64, i64* %PC
  %745 = add i64 %744, 3
  store i64 %745, i64* %PC
  %746 = trunc i64 %743 to i32
  %747 = add i32 1, %746
  %748 = zext i32 %747 to i64
  store i64 %748, i64* %RCX, align 8, !tbaa !2428
  %749 = icmp ult i32 %747, %746
  %750 = icmp ult i32 %747, 1
  %751 = or i1 %749, %750
  %752 = zext i1 %751 to i8
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %752, i8* %753, align 1, !tbaa !2432
  %754 = and i32 %747, 255
  %755 = call i32 @llvm.ctpop.i32(i32 %754) #16
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  %758 = xor i8 %757, 1
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %758, i8* %759, align 1, !tbaa !2446
  %760 = xor i64 1, %743
  %761 = trunc i64 %760 to i32
  %762 = xor i32 %761, %747
  %763 = lshr i32 %762, 4
  %764 = trunc i32 %763 to i8
  %765 = and i8 %764, 1
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %765, i8* %766, align 1, !tbaa !2447
  %767 = icmp eq i32 %747, 0
  %768 = zext i1 %767 to i8
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %768, i8* %769, align 1, !tbaa !2448
  %770 = lshr i32 %747, 31
  %771 = trunc i32 %770 to i8
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %771, i8* %772, align 1, !tbaa !2449
  %773 = lshr i32 %746, 31
  %774 = xor i32 %770, %773
  %775 = add nuw nsw i32 %774, %770
  %776 = icmp eq i32 %775, 2
  %777 = zext i1 %776 to i8
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %777, i8* %778, align 1, !tbaa !2450
  %779 = load i32, i32* %ECX
  %780 = zext i32 %779 to i64
  %781 = load i64, i64* %PC
  %782 = add i64 %781, 3
  store i64 %782, i64* %PC
  %783 = shl i64 %780, 32
  %784 = ashr exact i64 %783, 32
  store i64 %784, i64* %RDX, align 8, !tbaa !2428
  %785 = load i64, i64* %RDX
  %786 = load i64, i64* %PC
  %787 = add i64 %786, 4
  store i64 %787, i64* %PC
  %788 = sext i64 %785 to i128
  %789 = and i128 %788, -18446744073709551616
  %790 = zext i64 %785 to i128
  %791 = or i128 %789, %790
  %792 = mul nsw i128 24, %791
  %793 = trunc i128 %792 to i64
  store i64 %793, i64* %RDX, align 8, !tbaa !2428
  %794 = sext i64 %793 to i128
  %795 = icmp ne i128 %794, %792
  %796 = zext i1 %795 to i8
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %796, i8* %797, align 1, !tbaa !2432
  %798 = trunc i128 %792 to i32
  %799 = and i32 %798, 255
  %800 = call i32 @llvm.ctpop.i32(i32 %799) #16
  %801 = trunc i32 %800 to i8
  %802 = and i8 %801, 1
  %803 = xor i8 %802, 1
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %803, i8* %804, align 1, !tbaa !2446
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %805, align 1, !tbaa !2447
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %806, align 1, !tbaa !2448
  %807 = lshr i64 %793, 63
  %808 = trunc i64 %807 to i8
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %808, i8* %809, align 1, !tbaa !2449
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %796, i8* %810, align 1, !tbaa !2450
  %811 = load i64, i64* %RAX
  %812 = load i64, i64* %RDX
  %813 = load i64, i64* %PC
  %814 = add i64 %813, 3
  store i64 %814, i64* %PC
  %815 = add i64 %812, %811
  store i64 %815, i64* %RAX, align 8, !tbaa !2428
  %816 = icmp ult i64 %815, %811
  %817 = icmp ult i64 %815, %812
  %818 = or i1 %816, %817
  %819 = zext i1 %818 to i8
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %819, i8* %820, align 1, !tbaa !2432
  %821 = trunc i64 %815 to i32
  %822 = and i32 %821, 255
  %823 = call i32 @llvm.ctpop.i32(i32 %822) #16
  %824 = trunc i32 %823 to i8
  %825 = and i8 %824, 1
  %826 = xor i8 %825, 1
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %826, i8* %827, align 1, !tbaa !2446
  %828 = xor i64 %812, %811
  %829 = xor i64 %828, %815
  %830 = lshr i64 %829, 4
  %831 = trunc i64 %830 to i8
  %832 = and i8 %831, 1
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %832, i8* %833, align 1, !tbaa !2447
  %834 = icmp eq i64 %815, 0
  %835 = zext i1 %834 to i8
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %835, i8* %836, align 1, !tbaa !2448
  %837 = lshr i64 %815, 63
  %838 = trunc i64 %837 to i8
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %838, i8* %839, align 1, !tbaa !2449
  %840 = lshr i64 %811, 63
  %841 = lshr i64 %812, 63
  %842 = xor i64 %837, %840
  %843 = xor i64 %837, %841
  %844 = add nuw nsw i64 %842, %843
  %845 = icmp eq i64 %844, 2
  %846 = zext i1 %845 to i8
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %846, i8* %847, align 1, !tbaa !2450
  %848 = load i64, i64* %RBP
  %849 = sub i64 %848, 32
  %850 = load i64, i64* %PC
  %851 = add i64 %850, 4
  store i64 %851, i64* %PC
  %852 = inttoptr i64 %849 to i64*
  %853 = load i64, i64* %852
  store i64 %853, i64* %RDX, align 8, !tbaa !2428
  %854 = load i64, i64* %RBP
  %855 = sub i64 %854, 20
  %856 = load i64, i64* %PC
  %857 = add i64 %856, 4
  store i64 %857, i64* %PC
  %858 = inttoptr i64 %855 to i32*
  %859 = load i32, i32* %858
  %860 = sext i32 %859 to i64
  store i64 %860, i64* %RSI, align 8, !tbaa !2428
  %861 = load i64, i64* %RSI
  %862 = load i64, i64* %PC
  %863 = add i64 %862, 4
  store i64 %863, i64* %PC
  %864 = sext i64 %861 to i128
  %865 = and i128 %864, -18446744073709551616
  %866 = zext i64 %861 to i128
  %867 = or i128 %865, %866
  %868 = mul nsw i128 24, %867
  %869 = trunc i128 %868 to i64
  store i64 %869, i64* %RSI, align 8, !tbaa !2428
  %870 = sext i64 %869 to i128
  %871 = icmp ne i128 %870, %868
  %872 = zext i1 %871 to i8
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %872, i8* %873, align 1, !tbaa !2432
  %874 = trunc i128 %868 to i32
  %875 = and i32 %874, 255
  %876 = call i32 @llvm.ctpop.i32(i32 %875) #16
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  %879 = xor i8 %878, 1
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %879, i8* %880, align 1, !tbaa !2446
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %881, align 1, !tbaa !2447
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %882, align 1, !tbaa !2448
  %883 = lshr i64 %869, 63
  %884 = trunc i64 %883 to i8
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %884, i8* %885, align 1, !tbaa !2449
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %872, i8* %886, align 1, !tbaa !2450
  %887 = load i64, i64* %RDX
  %888 = load i64, i64* %RSI
  %889 = load i64, i64* %PC
  %890 = add i64 %889, 3
  store i64 %890, i64* %PC
  %891 = add i64 %888, %887
  store i64 %891, i64* %RDX, align 8, !tbaa !2428
  %892 = icmp ult i64 %891, %887
  %893 = icmp ult i64 %891, %888
  %894 = or i1 %892, %893
  %895 = zext i1 %894 to i8
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %895, i8* %896, align 1, !tbaa !2432
  %897 = trunc i64 %891 to i32
  %898 = and i32 %897, 255
  %899 = call i32 @llvm.ctpop.i32(i32 %898) #16
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  %902 = xor i8 %901, 1
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %902, i8* %903, align 1, !tbaa !2446
  %904 = xor i64 %888, %887
  %905 = xor i64 %904, %891
  %906 = lshr i64 %905, 4
  %907 = trunc i64 %906 to i8
  %908 = and i8 %907, 1
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %908, i8* %909, align 1, !tbaa !2447
  %910 = icmp eq i64 %891, 0
  %911 = zext i1 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %911, i8* %912, align 1, !tbaa !2448
  %913 = lshr i64 %891, 63
  %914 = trunc i64 %913 to i8
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %914, i8* %915, align 1, !tbaa !2449
  %916 = lshr i64 %887, 63
  %917 = lshr i64 %888, 63
  %918 = xor i64 %913, %916
  %919 = xor i64 %913, %917
  %920 = add nuw nsw i64 %918, %919
  %921 = icmp eq i64 %920, 2
  %922 = zext i1 %921 to i8
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %922, i8* %923, align 1, !tbaa !2450
  %924 = load i64, i64* %RDX
  %925 = add i64 %924, 8
  %926 = load i64, i64* %RAX
  %927 = load i64, i64* %PC
  %928 = add i64 %927, 4
  store i64 %928, i64* %PC
  %929 = inttoptr i64 %925 to i64*
  store i64 %926, i64* %929
  %930 = load i64, i64* %RBP
  %931 = sub i64 %930, 32
  %932 = load i64, i64* %PC
  %933 = add i64 %932, 4
  store i64 %933, i64* %PC
  %934 = inttoptr i64 %931 to i64*
  %935 = load i64, i64* %934
  store i64 %935, i64* %RAX, align 8, !tbaa !2428
  %936 = load i64, i64* %RBP
  %937 = sub i64 %936, 24
  %938 = load i64, i64* %PC
  %939 = add i64 %938, 3
  store i64 %939, i64* %PC
  %940 = inttoptr i64 %937 to i32*
  %941 = load i32, i32* %940
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %RCX, align 8, !tbaa !2428
  %943 = load i64, i64* %RCX
  %944 = load i64, i64* %PC
  %945 = add i64 %944, 3
  store i64 %945, i64* %PC
  %946 = trunc i64 %943 to i32
  %947 = sub i32 %946, 1
  %948 = zext i32 %947 to i64
  store i64 %948, i64* %RCX, align 8, !tbaa !2428
  %949 = icmp ult i32 %946, 1
  %950 = zext i1 %949 to i8
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %950, i8* %951, align 1, !tbaa !2432
  %952 = and i32 %947, 255
  %953 = call i32 @llvm.ctpop.i32(i32 %952) #16
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %956, i8* %957, align 1, !tbaa !2446
  %958 = xor i64 1, %943
  %959 = trunc i64 %958 to i32
  %960 = xor i32 %959, %947
  %961 = lshr i32 %960, 4
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %963, i8* %964, align 1, !tbaa !2447
  %965 = icmp eq i32 %947, 0
  %966 = zext i1 %965 to i8
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %966, i8* %967, align 1, !tbaa !2448
  %968 = lshr i32 %947, 31
  %969 = trunc i32 %968 to i8
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %969, i8* %970, align 1, !tbaa !2449
  %971 = lshr i32 %946, 31
  %972 = xor i32 %968, %971
  %973 = add nuw nsw i32 %972, %971
  %974 = icmp eq i32 %973, 2
  %975 = zext i1 %974 to i8
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %975, i8* %976, align 1, !tbaa !2450
  %977 = load i32, i32* %ECX
  %978 = zext i32 %977 to i64
  %979 = load i64, i64* %PC
  %980 = add i64 %979, 3
  store i64 %980, i64* %PC
  %981 = shl i64 %978, 32
  %982 = ashr exact i64 %981, 32
  store i64 %982, i64* %RDX, align 8, !tbaa !2428
  %983 = load i64, i64* %RDX
  %984 = load i64, i64* %PC
  %985 = add i64 %984, 4
  store i64 %985, i64* %PC
  %986 = sext i64 %983 to i128
  %987 = and i128 %986, -18446744073709551616
  %988 = zext i64 %983 to i128
  %989 = or i128 %987, %988
  %990 = mul nsw i128 24, %989
  %991 = trunc i128 %990 to i64
  store i64 %991, i64* %RDX, align 8, !tbaa !2428
  %992 = sext i64 %991 to i128
  %993 = icmp ne i128 %992, %990
  %994 = zext i1 %993 to i8
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %994, i8* %995, align 1, !tbaa !2432
  %996 = trunc i128 %990 to i32
  %997 = and i32 %996, 255
  %998 = call i32 @llvm.ctpop.i32(i32 %997) #16
  %999 = trunc i32 %998 to i8
  %1000 = and i8 %999, 1
  %1001 = xor i8 %1000, 1
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1001, i8* %1002, align 1, !tbaa !2446
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1003, align 1, !tbaa !2447
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1004, align 1, !tbaa !2448
  %1005 = lshr i64 %991, 63
  %1006 = trunc i64 %1005 to i8
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1006, i8* %1007, align 1, !tbaa !2449
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %994, i8* %1008, align 1, !tbaa !2450
  %1009 = load i64, i64* %RAX
  %1010 = load i64, i64* %RDX
  %1011 = load i64, i64* %PC
  %1012 = add i64 %1011, 3
  store i64 %1012, i64* %PC
  %1013 = add i64 %1010, %1009
  store i64 %1013, i64* %RAX, align 8, !tbaa !2428
  %1014 = icmp ult i64 %1013, %1009
  %1015 = icmp ult i64 %1013, %1010
  %1016 = or i1 %1014, %1015
  %1017 = zext i1 %1016 to i8
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1017, i8* %1018, align 1, !tbaa !2432
  %1019 = trunc i64 %1013 to i32
  %1020 = and i32 %1019, 255
  %1021 = call i32 @llvm.ctpop.i32(i32 %1020) #16
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  %1024 = xor i8 %1023, 1
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1024, i8* %1025, align 1, !tbaa !2446
  %1026 = xor i64 %1010, %1009
  %1027 = xor i64 %1026, %1013
  %1028 = lshr i64 %1027, 4
  %1029 = trunc i64 %1028 to i8
  %1030 = and i8 %1029, 1
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1030, i8* %1031, align 1, !tbaa !2447
  %1032 = icmp eq i64 %1013, 0
  %1033 = zext i1 %1032 to i8
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1033, i8* %1034, align 1, !tbaa !2448
  %1035 = lshr i64 %1013, 63
  %1036 = trunc i64 %1035 to i8
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1036, i8* %1037, align 1, !tbaa !2449
  %1038 = lshr i64 %1009, 63
  %1039 = lshr i64 %1010, 63
  %1040 = xor i64 %1035, %1038
  %1041 = xor i64 %1035, %1039
  %1042 = add nuw nsw i64 %1040, %1041
  %1043 = icmp eq i64 %1042, 2
  %1044 = zext i1 %1043 to i8
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1044, i8* %1045, align 1, !tbaa !2450
  %1046 = load i64, i64* %RBP
  %1047 = sub i64 %1046, 32
  %1048 = load i64, i64* %PC
  %1049 = add i64 %1048, 4
  store i64 %1049, i64* %PC
  %1050 = inttoptr i64 %1047 to i64*
  %1051 = load i64, i64* %1050
  store i64 %1051, i64* %RDX, align 8, !tbaa !2428
  %1052 = load i64, i64* %RBP
  %1053 = sub i64 %1052, 24
  %1054 = load i64, i64* %PC
  %1055 = add i64 %1054, 4
  store i64 %1055, i64* %PC
  %1056 = inttoptr i64 %1053 to i32*
  %1057 = load i32, i32* %1056
  %1058 = sext i32 %1057 to i64
  store i64 %1058, i64* %RSI, align 8, !tbaa !2428
  %1059 = load i64, i64* %RSI
  %1060 = load i64, i64* %PC
  %1061 = add i64 %1060, 4
  store i64 %1061, i64* %PC
  %1062 = sext i64 %1059 to i128
  %1063 = and i128 %1062, -18446744073709551616
  %1064 = zext i64 %1059 to i128
  %1065 = or i128 %1063, %1064
  %1066 = mul nsw i128 24, %1065
  %1067 = trunc i128 %1066 to i64
  store i64 %1067, i64* %RSI, align 8, !tbaa !2428
  %1068 = sext i64 %1067 to i128
  %1069 = icmp ne i128 %1068, %1066
  %1070 = zext i1 %1069 to i8
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1070, i8* %1071, align 1, !tbaa !2432
  %1072 = trunc i128 %1066 to i32
  %1073 = and i32 %1072, 255
  %1074 = call i32 @llvm.ctpop.i32(i32 %1073) #16
  %1075 = trunc i32 %1074 to i8
  %1076 = and i8 %1075, 1
  %1077 = xor i8 %1076, 1
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1077, i8* %1078, align 1, !tbaa !2446
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1079, align 1, !tbaa !2447
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1080, align 1, !tbaa !2448
  %1081 = lshr i64 %1067, 63
  %1082 = trunc i64 %1081 to i8
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1082, i8* %1083, align 1, !tbaa !2449
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1070, i8* %1084, align 1, !tbaa !2450
  %1085 = load i64, i64* %RDX
  %1086 = load i64, i64* %RSI
  %1087 = load i64, i64* %PC
  %1088 = add i64 %1087, 3
  store i64 %1088, i64* %PC
  %1089 = add i64 %1086, %1085
  store i64 %1089, i64* %RDX, align 8, !tbaa !2428
  %1090 = icmp ult i64 %1089, %1085
  %1091 = icmp ult i64 %1089, %1086
  %1092 = or i1 %1090, %1091
  %1093 = zext i1 %1092 to i8
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1093, i8* %1094, align 1, !tbaa !2432
  %1095 = trunc i64 %1089 to i32
  %1096 = and i32 %1095, 255
  %1097 = call i32 @llvm.ctpop.i32(i32 %1096) #16
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1100, i8* %1101, align 1, !tbaa !2446
  %1102 = xor i64 %1086, %1085
  %1103 = xor i64 %1102, %1089
  %1104 = lshr i64 %1103, 4
  %1105 = trunc i64 %1104 to i8
  %1106 = and i8 %1105, 1
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1106, i8* %1107, align 1, !tbaa !2447
  %1108 = icmp eq i64 %1089, 0
  %1109 = zext i1 %1108 to i8
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1109, i8* %1110, align 1, !tbaa !2448
  %1111 = lshr i64 %1089, 63
  %1112 = trunc i64 %1111 to i8
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1112, i8* %1113, align 1, !tbaa !2449
  %1114 = lshr i64 %1085, 63
  %1115 = lshr i64 %1086, 63
  %1116 = xor i64 %1111, %1114
  %1117 = xor i64 %1111, %1115
  %1118 = add nuw nsw i64 %1116, %1117
  %1119 = icmp eq i64 %1118, 2
  %1120 = zext i1 %1119 to i8
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1120, i8* %1121, align 1, !tbaa !2450
  %1122 = load i64, i64* %RDX
  %1123 = add i64 %1122, 16
  %1124 = load i64, i64* %RAX
  %1125 = load i64, i64* %PC
  %1126 = add i64 %1125, 4
  store i64 %1126, i64* %PC
  %1127 = inttoptr i64 %1123 to i64*
  store i64 %1124, i64* %1127
  %1128 = load i64, i64* %RBP
  %1129 = sub i64 %1128, 4
  %1130 = load i64, i64* %PC
  %1131 = add i64 %1130, 3
  store i64 %1131, i64* %PC
  %1132 = inttoptr i64 %1129 to i32*
  %1133 = load i32, i32* %1132
  %1134 = zext i32 %1133 to i64
  store i64 %1134, i64* %RCX, align 8, !tbaa !2428
  %1135 = load i32, i32* %ECX
  %1136 = zext i32 %1135 to i64
  %1137 = load i64, i64* %PC
  %1138 = add i64 %1137, 2
  store i64 %1138, i64* %PC
  %1139 = and i64 %1136, 4294967295
  store i64 %1139, i64* %RDI, align 8, !tbaa !2428
  %1140 = load i64, i64* %RDI
  %1141 = load i64, i64* %PC
  %1142 = add i64 %1141, 3
  store i64 %1142, i64* %PC
  %1143 = trunc i64 %1140 to i32
  %1144 = add i32 1, %1143
  %1145 = zext i32 %1144 to i64
  store i64 %1145, i64* %RDI, align 8, !tbaa !2428
  %1146 = icmp ult i32 %1144, %1143
  %1147 = icmp ult i32 %1144, 1
  %1148 = or i1 %1146, %1147
  %1149 = zext i1 %1148 to i8
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1149, i8* %1150, align 1, !tbaa !2432
  %1151 = and i32 %1144, 255
  %1152 = call i32 @llvm.ctpop.i32(i32 %1151) #16
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  %1155 = xor i8 %1154, 1
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1155, i8* %1156, align 1, !tbaa !2446
  %1157 = xor i64 1, %1140
  %1158 = trunc i64 %1157 to i32
  %1159 = xor i32 %1158, %1144
  %1160 = lshr i32 %1159, 4
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1162, i8* %1163, align 1, !tbaa !2447
  %1164 = icmp eq i32 %1144, 0
  %1165 = zext i1 %1164 to i8
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1165, i8* %1166, align 1, !tbaa !2448
  %1167 = lshr i32 %1144, 31
  %1168 = trunc i32 %1167 to i8
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1168, i8* %1169, align 1, !tbaa !2449
  %1170 = lshr i32 %1143, 31
  %1171 = xor i32 %1167, %1170
  %1172 = add nuw nsw i32 %1171, %1167
  %1173 = icmp eq i32 %1172, 2
  %1174 = zext i1 %1173 to i8
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1174, i8* %1175, align 1, !tbaa !2450
  %1176 = load i64, i64* %RBP
  %1177 = sub i64 %1176, 4
  %1178 = load i32, i32* %EDI
  %1179 = zext i32 %1178 to i64
  %1180 = load i64, i64* %PC
  %1181 = add i64 %1180, 3
  store i64 %1181, i64* %PC
  %1182 = inttoptr i64 %1177 to i32*
  store i32 %1178, i32* %1182
  %1183 = load i64, i64* %RBP
  %1184 = sub i64 %1183, 32
  %1185 = load i64, i64* %PC
  %1186 = add i64 %1185, 4
  store i64 %1186, i64* %PC
  %1187 = inttoptr i64 %1184 to i64*
  %1188 = load i64, i64* %1187
  store i64 %1188, i64* %RAX, align 8, !tbaa !2428
  %1189 = load i64, i64* %RBP
  %1190 = sub i64 %1189, 20
  %1191 = load i64, i64* %PC
  %1192 = add i64 %1191, 4
  store i64 %1192, i64* %PC
  %1193 = inttoptr i64 %1190 to i32*
  %1194 = load i32, i32* %1193
  %1195 = sext i32 %1194 to i64
  store i64 %1195, i64* %RDX, align 8, !tbaa !2428
  %1196 = load i64, i64* %RDX
  %1197 = load i64, i64* %PC
  %1198 = add i64 %1197, 4
  store i64 %1198, i64* %PC
  %1199 = sext i64 %1196 to i128
  %1200 = and i128 %1199, -18446744073709551616
  %1201 = zext i64 %1196 to i128
  %1202 = or i128 %1200, %1201
  %1203 = mul nsw i128 24, %1202
  %1204 = trunc i128 %1203 to i64
  store i64 %1204, i64* %RDX, align 8, !tbaa !2428
  %1205 = sext i64 %1204 to i128
  %1206 = icmp ne i128 %1205, %1203
  %1207 = zext i1 %1206 to i8
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1207, i8* %1208, align 1, !tbaa !2432
  %1209 = trunc i128 %1203 to i32
  %1210 = and i32 %1209, 255
  %1211 = call i32 @llvm.ctpop.i32(i32 %1210) #16
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = xor i8 %1213, 1
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1214, i8* %1215, align 1, !tbaa !2446
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1216, align 1, !tbaa !2447
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1217, align 1, !tbaa !2448
  %1218 = lshr i64 %1204, 63
  %1219 = trunc i64 %1218 to i8
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1219, i8* %1220, align 1, !tbaa !2449
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1207, i8* %1221, align 1, !tbaa !2450
  %1222 = load i64, i64* %RAX
  %1223 = load i64, i64* %RDX
  %1224 = load i64, i64* %PC
  %1225 = add i64 %1224, 3
  store i64 %1225, i64* %PC
  %1226 = add i64 %1223, %1222
  store i64 %1226, i64* %RAX, align 8, !tbaa !2428
  %1227 = icmp ult i64 %1226, %1222
  %1228 = icmp ult i64 %1226, %1223
  %1229 = or i1 %1227, %1228
  %1230 = zext i1 %1229 to i8
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1230, i8* %1231, align 1, !tbaa !2432
  %1232 = trunc i64 %1226 to i32
  %1233 = and i32 %1232, 255
  %1234 = call i32 @llvm.ctpop.i32(i32 %1233) #16
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  %1237 = xor i8 %1236, 1
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1237, i8* %1238, align 1, !tbaa !2446
  %1239 = xor i64 %1223, %1222
  %1240 = xor i64 %1239, %1226
  %1241 = lshr i64 %1240, 4
  %1242 = trunc i64 %1241 to i8
  %1243 = and i8 %1242, 1
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1243, i8* %1244, align 1, !tbaa !2447
  %1245 = icmp eq i64 %1226, 0
  %1246 = zext i1 %1245 to i8
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1246, i8* %1247, align 1, !tbaa !2448
  %1248 = lshr i64 %1226, 63
  %1249 = trunc i64 %1248 to i8
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1249, i8* %1250, align 1, !tbaa !2449
  %1251 = lshr i64 %1222, 63
  %1252 = lshr i64 %1223, 63
  %1253 = xor i64 %1248, %1251
  %1254 = xor i64 %1248, %1252
  %1255 = add nuw nsw i64 %1253, %1254
  %1256 = icmp eq i64 %1255, 2
  %1257 = zext i1 %1256 to i8
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1257, i8* %1258, align 1, !tbaa !2450
  %1259 = load i64, i64* %RAX
  %1260 = load i32, i32* %ECX
  %1261 = zext i32 %1260 to i64
  %1262 = load i64, i64* %PC
  %1263 = add i64 %1262, 2
  store i64 %1263, i64* %PC
  %1264 = inttoptr i64 %1259 to i32*
  store i32 %1260, i32* %1264
  %1265 = load i64, i64* %RBP
  %1266 = sub i64 %1265, 20
  %1267 = load i64, i64* %PC
  %1268 = add i64 %1267, 3
  store i64 %1268, i64* %PC
  %1269 = inttoptr i64 %1266 to i32*
  %1270 = load i32, i32* %1269
  %1271 = zext i32 %1270 to i64
  store i64 %1271, i64* %RAX, align 8, !tbaa !2428
  %1272 = load i64, i64* %RAX
  %1273 = load i64, i64* %PC
  %1274 = add i64 %1273, 3
  store i64 %1274, i64* %PC
  %1275 = trunc i64 %1272 to i32
  %1276 = add i32 1, %1275
  %1277 = zext i32 %1276 to i64
  store i64 %1277, i64* %RAX, align 8, !tbaa !2428
  %1278 = icmp ult i32 %1276, %1275
  %1279 = icmp ult i32 %1276, 1
  %1280 = or i1 %1278, %1279
  %1281 = zext i1 %1280 to i8
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1281, i8* %1282, align 1, !tbaa !2432
  %1283 = and i32 %1276, 255
  %1284 = call i32 @llvm.ctpop.i32(i32 %1283) #16
  %1285 = trunc i32 %1284 to i8
  %1286 = and i8 %1285, 1
  %1287 = xor i8 %1286, 1
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1287, i8* %1288, align 1, !tbaa !2446
  %1289 = xor i64 1, %1272
  %1290 = trunc i64 %1289 to i32
  %1291 = xor i32 %1290, %1276
  %1292 = lshr i32 %1291, 4
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1294, i8* %1295, align 1, !tbaa !2447
  %1296 = icmp eq i32 %1276, 0
  %1297 = zext i1 %1296 to i8
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1297, i8* %1298, align 1, !tbaa !2448
  %1299 = lshr i32 %1276, 31
  %1300 = trunc i32 %1299 to i8
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1300, i8* %1301, align 1, !tbaa !2449
  %1302 = lshr i32 %1275, 31
  %1303 = xor i32 %1299, %1302
  %1304 = add nuw nsw i32 %1303, %1299
  %1305 = icmp eq i32 %1304, 2
  %1306 = zext i1 %1305 to i8
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1306, i8* %1307, align 1, !tbaa !2450
  %1308 = load i64, i64* %RBP
  %1309 = sub i64 %1308, 20
  %1310 = load i32, i32* %EAX
  %1311 = zext i32 %1310 to i64
  %1312 = load i64, i64* %PC
  %1313 = add i64 %1312, 3
  store i64 %1313, i64* %PC
  %1314 = inttoptr i64 %1309 to i32*
  store i32 %1310, i32* %1314
  %1315 = load i64, i64* %RBP
  %1316 = sub i64 %1315, 24
  %1317 = load i64, i64* %PC
  %1318 = add i64 %1317, 3
  store i64 %1318, i64* %PC
  %1319 = inttoptr i64 %1316 to i32*
  %1320 = load i32, i32* %1319
  %1321 = zext i32 %1320 to i64
  store i64 %1321, i64* %RAX, align 8, !tbaa !2428
  %1322 = load i64, i64* %RAX
  %1323 = load i64, i64* %PC
  %1324 = add i64 %1323, 3
  store i64 %1324, i64* %PC
  %1325 = trunc i64 %1322 to i32
  %1326 = add i32 1, %1325
  %1327 = zext i32 %1326 to i64
  store i64 %1327, i64* %RAX, align 8, !tbaa !2428
  %1328 = icmp ult i32 %1326, %1325
  %1329 = icmp ult i32 %1326, 1
  %1330 = or i1 %1328, %1329
  %1331 = zext i1 %1330 to i8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1331, i8* %1332, align 1, !tbaa !2432
  %1333 = and i32 %1326, 255
  %1334 = call i32 @llvm.ctpop.i32(i32 %1333) #16
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = xor i8 %1336, 1
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1337, i8* %1338, align 1, !tbaa !2446
  %1339 = xor i64 1, %1322
  %1340 = trunc i64 %1339 to i32
  %1341 = xor i32 %1340, %1326
  %1342 = lshr i32 %1341, 4
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1344, i8* %1345, align 1, !tbaa !2447
  %1346 = icmp eq i32 %1326, 0
  %1347 = zext i1 %1346 to i8
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1347, i8* %1348, align 1, !tbaa !2448
  %1349 = lshr i32 %1326, 31
  %1350 = trunc i32 %1349 to i8
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1350, i8* %1351, align 1, !tbaa !2449
  %1352 = lshr i32 %1325, 31
  %1353 = xor i32 %1349, %1352
  %1354 = add nuw nsw i32 %1353, %1349
  %1355 = icmp eq i32 %1354, 2
  %1356 = zext i1 %1355 to i8
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1356, i8* %1357, align 1, !tbaa !2450
  %1358 = load i64, i64* %RBP
  %1359 = sub i64 %1358, 24
  %1360 = load i32, i32* %EAX
  %1361 = zext i32 %1360 to i64
  %1362 = load i64, i64* %PC
  %1363 = add i64 %1362, 3
  store i64 %1363, i64* %PC
  %1364 = inttoptr i64 %1359 to i32*
  store i32 %1360, i32* %1364
  %1365 = load i64, i64* %PC
  %1366 = sub i64 %1365, 136
  %1367 = load i64, i64* %PC
  %1368 = add i64 %1367, 5
  store i64 %1368, i64* %PC
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1366, i64* %1369, align 8, !tbaa !2428
  br label %block_400aa5

block_400a6c:                                     ; preds = %block_400a5a, %block_400a40
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400a40 ], [ %2, %block_400a5a ]
  %1370 = load i64, i64* %RBP
  %1371 = sub i64 %1370, 8
  %1372 = load i64, i64* %PC
  %1373 = add i64 %1372, 3
  store i64 %1373, i64* %PC
  %1374 = inttoptr i64 %1371 to i32*
  %1375 = load i32, i32* %1374
  %1376 = zext i32 %1375 to i64
  store i64 %1376, i64* %RAX, align 8, !tbaa !2428
  %1377 = load i64, i64* %RAX
  %1378 = load i64, i64* %RBP
  %1379 = sub i64 %1378, 4
  %1380 = load i64, i64* %PC
  %1381 = add i64 %1380, 3
  store i64 %1381, i64* %PC
  %1382 = trunc i64 %1377 to i32
  %1383 = inttoptr i64 %1379 to i32*
  %1384 = load i32, i32* %1383
  %1385 = sub i32 %1382, %1384
  %1386 = zext i32 %1385 to i64
  store i64 %1386, i64* %RAX, align 8, !tbaa !2428
  %1387 = icmp ult i32 %1382, %1384
  %1388 = zext i1 %1387 to i8
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1388, i8* %1389, align 1, !tbaa !2432
  %1390 = and i32 %1385, 255
  %1391 = call i32 @llvm.ctpop.i32(i32 %1390) #16
  %1392 = trunc i32 %1391 to i8
  %1393 = and i8 %1392, 1
  %1394 = xor i8 %1393, 1
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1394, i8* %1395, align 1, !tbaa !2446
  %1396 = xor i32 %1384, %1382
  %1397 = xor i32 %1396, %1385
  %1398 = lshr i32 %1397, 4
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1400, i8* %1401, align 1, !tbaa !2447
  %1402 = icmp eq i32 %1385, 0
  %1403 = zext i1 %1402 to i8
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1403, i8* %1404, align 1, !tbaa !2448
  %1405 = lshr i32 %1385, 31
  %1406 = trunc i32 %1405 to i8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1406, i8* %1407, align 1, !tbaa !2449
  %1408 = lshr i32 %1382, 31
  %1409 = lshr i32 %1384, 31
  %1410 = xor i32 %1409, %1408
  %1411 = xor i32 %1405, %1408
  %1412 = add nuw nsw i32 %1411, %1410
  %1413 = icmp eq i32 %1412, 2
  %1414 = zext i1 %1413 to i8
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1414, i8* %1415, align 1, !tbaa !2450
  %1416 = load i64, i64* %RAX
  %1417 = load i64, i64* %PC
  %1418 = add i64 %1417, 3
  store i64 %1418, i64* %PC
  %1419 = trunc i64 %1416 to i32
  %1420 = add i32 1, %1419
  %1421 = zext i32 %1420 to i64
  store i64 %1421, i64* %RAX, align 8, !tbaa !2428
  %1422 = icmp ult i32 %1420, %1419
  %1423 = icmp ult i32 %1420, 1
  %1424 = or i1 %1422, %1423
  %1425 = zext i1 %1424 to i8
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1425, i8* %1426, align 1, !tbaa !2432
  %1427 = and i32 %1420, 255
  %1428 = call i32 @llvm.ctpop.i32(i32 %1427) #16
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  %1431 = xor i8 %1430, 1
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1431, i8* %1432, align 1, !tbaa !2446
  %1433 = xor i64 1, %1416
  %1434 = trunc i64 %1433 to i32
  %1435 = xor i32 %1434, %1420
  %1436 = lshr i32 %1435, 4
  %1437 = trunc i32 %1436 to i8
  %1438 = and i8 %1437, 1
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1438, i8* %1439, align 1, !tbaa !2447
  %1440 = icmp eq i32 %1420, 0
  %1441 = zext i1 %1440 to i8
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1441, i8* %1442, align 1, !tbaa !2448
  %1443 = lshr i32 %1420, 31
  %1444 = trunc i32 %1443 to i8
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1444, i8* %1445, align 1, !tbaa !2449
  %1446 = lshr i32 %1419, 31
  %1447 = xor i32 %1443, %1446
  %1448 = add nuw nsw i32 %1447, %1443
  %1449 = icmp eq i32 %1448, 2
  %1450 = zext i1 %1449 to i8
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1450, i8* %1451, align 1, !tbaa !2450
  %1452 = load i64, i64* %RBP
  %1453 = sub i64 %1452, 12
  %1454 = load i32, i32* %EAX
  %1455 = zext i32 %1454 to i64
  %1456 = load i64, i64* %PC
  %1457 = add i64 %1456, 3
  store i64 %1457, i64* %PC
  %1458 = inttoptr i64 %1453 to i32*
  store i32 %1454, i32* %1458
  %1459 = load i64, i64* %RBP
  %1460 = sub i64 %1459, 12
  %1461 = load i64, i64* %PC
  %1462 = add i64 %1461, 3
  store i64 %1462, i64* %PC
  %1463 = inttoptr i64 %1460 to i32*
  %1464 = load i32, i32* %1463
  %1465 = zext i32 %1464 to i64
  store i64 %1465, i64* %RAX, align 8, !tbaa !2428
  %1466 = load i64, i64* %RAX
  %1467 = load i64, i64* %PC
  %1468 = add i64 %1467, 3
  store i64 %1468, i64* %PC
  %1469 = trunc i64 %1466 to i32
  %1470 = add i32 1, %1469
  %1471 = zext i32 %1470 to i64
  store i64 %1471, i64* %RAX, align 8, !tbaa !2428
  %1472 = icmp ult i32 %1470, %1469
  %1473 = icmp ult i32 %1470, 1
  %1474 = or i1 %1472, %1473
  %1475 = zext i1 %1474 to i8
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1475, i8* %1476, align 1, !tbaa !2432
  %1477 = and i32 %1470, 255
  %1478 = call i32 @llvm.ctpop.i32(i32 %1477) #16
  %1479 = trunc i32 %1478 to i8
  %1480 = and i8 %1479, 1
  %1481 = xor i8 %1480, 1
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1481, i8* %1482, align 1, !tbaa !2446
  %1483 = xor i64 1, %1466
  %1484 = trunc i64 %1483 to i32
  %1485 = xor i32 %1484, %1470
  %1486 = lshr i32 %1485, 4
  %1487 = trunc i32 %1486 to i8
  %1488 = and i8 %1487, 1
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1488, i8* %1489, align 1, !tbaa !2447
  %1490 = icmp eq i32 %1470, 0
  %1491 = zext i1 %1490 to i8
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1491, i8* %1492, align 1, !tbaa !2448
  %1493 = lshr i32 %1470, 31
  %1494 = trunc i32 %1493 to i8
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1494, i8* %1495, align 1, !tbaa !2449
  %1496 = lshr i32 %1469, 31
  %1497 = xor i32 %1493, %1496
  %1498 = add nuw nsw i32 %1497, %1493
  %1499 = icmp eq i32 %1498, 2
  %1500 = zext i1 %1499 to i8
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1500, i8* %1501, align 1, !tbaa !2450
  %1502 = load i32, i32* %EAX
  %1503 = zext i32 %1502 to i64
  %1504 = load i64, i64* %PC
  %1505 = add i64 %1504, 3
  store i64 %1505, i64* %PC
  %1506 = shl i64 %1503, 32
  %1507 = ashr exact i64 %1506, 32
  store i64 %1507, i64* %RCX, align 8, !tbaa !2428
  %1508 = load i64, i64* %RCX
  %1509 = load i64, i64* %PC
  %1510 = add i64 %1509, 4
  store i64 %1510, i64* %PC
  %1511 = sext i64 %1508 to i128
  %1512 = and i128 %1511, -18446744073709551616
  %1513 = zext i64 %1508 to i128
  %1514 = or i128 %1512, %1513
  %1515 = mul nsw i128 24, %1514
  %1516 = trunc i128 %1515 to i64
  store i64 %1516, i64* %RDI, align 8, !tbaa !2428
  %1517 = sext i64 %1516 to i128
  %1518 = icmp ne i128 %1517, %1515
  %1519 = zext i1 %1518 to i8
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1519, i8* %1520, align 1, !tbaa !2432
  %1521 = trunc i128 %1515 to i32
  %1522 = and i32 %1521, 255
  %1523 = call i32 @llvm.ctpop.i32(i32 %1522) #16
  %1524 = trunc i32 %1523 to i8
  %1525 = and i8 %1524, 1
  %1526 = xor i8 %1525, 1
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1526, i8* %1527, align 1, !tbaa !2446
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1528, align 1, !tbaa !2447
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1529, align 1, !tbaa !2448
  %1530 = lshr i64 %1516, 63
  %1531 = trunc i64 %1530 to i8
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1531, i8* %1532, align 1, !tbaa !2449
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1519, i8* %1533, align 1, !tbaa !2450
  %1534 = load i64, i64* %PC
  %1535 = sub i64 %1534, 1365
  %1536 = load i64, i64* %PC
  %1537 = add i64 %1536, 5
  %1538 = load i64, i64* %PC
  %1539 = add i64 %1538, 5
  store i64 %1539, i64* %PC
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1541 = load i64, i64* %1540, align 8, !tbaa !2428
  %1542 = add i64 %1541, -8
  %1543 = inttoptr i64 %1542 to i64*
  store i64 %1537, i64* %1543
  store i64 %1542, i64* %1540, align 8, !tbaa !2428
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1535, i64* %1544, align 8, !tbaa !2428
  %1545 = load i64, i64* %PC
  %1546 = call %struct.Memory* @ext_400530_malloc(%struct.State* %0, i64 %1545, %struct.Memory* %MEMORY.0)
  %1547 = load i64, i64* %RBP
  %1548 = sub i64 %1547, 32
  %1549 = load i64, i64* %RAX
  %1550 = load i64, i64* %PC
  %1551 = add i64 %1550, 4
  store i64 %1551, i64* %PC
  %1552 = inttoptr i64 %1548 to i64*
  store i64 %1549, i64* %1552
  %1553 = load i64, i64* %RBP
  %1554 = sub i64 %1553, 4
  %1555 = load i64, i64* %PC
  %1556 = add i64 %1555, 3
  store i64 %1556, i64* %PC
  %1557 = inttoptr i64 %1554 to i32*
  %1558 = load i32, i32* %1557
  %1559 = zext i32 %1558 to i64
  store i64 %1559, i64* %RDX, align 8, !tbaa !2428
  %1560 = load i64, i64* %RDX
  %1561 = load i64, i64* %PC
  %1562 = add i64 %1561, 3
  store i64 %1562, i64* %PC
  %1563 = trunc i64 %1560 to i32
  %1564 = add i32 -1, %1563
  %1565 = zext i32 %1564 to i64
  store i64 %1565, i64* %RDX, align 8, !tbaa !2428
  %1566 = icmp ult i32 %1564, %1563
  %1567 = icmp ult i32 %1564, -1
  %1568 = or i1 %1566, %1567
  %1569 = zext i1 %1568 to i8
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1569, i8* %1570, align 1, !tbaa !2432
  %1571 = and i32 %1564, 255
  %1572 = call i32 @llvm.ctpop.i32(i32 %1571) #16
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = xor i8 %1574, 1
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1575, i8* %1576, align 1, !tbaa !2446
  %1577 = xor i64 -1, %1560
  %1578 = trunc i64 %1577 to i32
  %1579 = xor i32 %1578, %1564
  %1580 = lshr i32 %1579, 4
  %1581 = trunc i32 %1580 to i8
  %1582 = and i8 %1581, 1
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1582, i8* %1583, align 1, !tbaa !2447
  %1584 = icmp eq i32 %1564, 0
  %1585 = zext i1 %1584 to i8
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1585, i8* %1586, align 1, !tbaa !2448
  %1587 = lshr i32 %1564, 31
  %1588 = trunc i32 %1587 to i8
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1588, i8* %1589, align 1, !tbaa !2449
  %1590 = lshr i32 %1563, 31
  %1591 = xor i32 %1587, %1590
  %1592 = xor i32 %1587, 1
  %1593 = add nuw nsw i32 %1591, %1592
  %1594 = icmp eq i32 %1593, 2
  %1595 = zext i1 %1594 to i8
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1595, i8* %1596, align 1, !tbaa !2450
  %1597 = load i64, i64* %RBP
  %1598 = sub i64 %1597, 4
  %1599 = load i32, i32* %EDX
  %1600 = zext i32 %1599 to i64
  %1601 = load i64, i64* %PC
  %1602 = add i64 %1601, 3
  store i64 %1602, i64* %PC
  %1603 = inttoptr i64 %1598 to i32*
  store i32 %1599, i32* %1603
  %1604 = load i64, i64* %RBP
  %1605 = sub i64 %1604, 20
  %1606 = load i64, i64* %PC
  %1607 = add i64 %1606, 7
  store i64 %1607, i64* %PC
  %1608 = inttoptr i64 %1605 to i32*
  store i32 0, i32* %1608
  %1609 = load i64, i64* %RBP
  %1610 = sub i64 %1609, 24
  %1611 = load i64, i64* %PC
  %1612 = add i64 %1611, 7
  store i64 %1612, i64* %PC
  %1613 = inttoptr i64 %1610 to i32*
  store i32 1, i32* %1613
  br label %block_400aa5

block_400aa5:                                     ; preds = %block_400a6c, %block_400ab1
  %MEMORY.1 = phi %struct.Memory* [ %1546, %block_400a6c ], [ %MEMORY.1, %block_400ab1 ]
  %1614 = load i64, i64* %RBP
  %1615 = sub i64 %1614, 20
  %1616 = load i64, i64* %PC
  %1617 = add i64 %1616, 3
  store i64 %1617, i64* %PC
  %1618 = inttoptr i64 %1615 to i32*
  %1619 = load i32, i32* %1618
  %1620 = zext i32 %1619 to i64
  store i64 %1620, i64* %RAX, align 8, !tbaa !2428
  %1621 = load i32, i32* %EAX
  %1622 = zext i32 %1621 to i64
  %1623 = load i64, i64* %RBP
  %1624 = sub i64 %1623, 12
  %1625 = load i64, i64* %PC
  %1626 = add i64 %1625, 3
  store i64 %1626, i64* %PC
  %1627 = inttoptr i64 %1624 to i32*
  %1628 = load i32, i32* %1627
  %1629 = sub i32 %1621, %1628
  %1630 = icmp ult i32 %1621, %1628
  %1631 = zext i1 %1630 to i8
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1631, i8* %1632, align 1, !tbaa !2432
  %1633 = and i32 %1629, 255
  %1634 = call i32 @llvm.ctpop.i32(i32 %1633) #16
  %1635 = trunc i32 %1634 to i8
  %1636 = and i8 %1635, 1
  %1637 = xor i8 %1636, 1
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1637, i8* %1638, align 1, !tbaa !2446
  %1639 = xor i32 %1628, %1621
  %1640 = xor i32 %1639, %1629
  %1641 = lshr i32 %1640, 4
  %1642 = trunc i32 %1641 to i8
  %1643 = and i8 %1642, 1
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1643, i8* %1644, align 1, !tbaa !2447
  %1645 = icmp eq i32 %1629, 0
  %1646 = zext i1 %1645 to i8
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1646, i8* %1647, align 1, !tbaa !2448
  %1648 = lshr i32 %1629, 31
  %1649 = trunc i32 %1648 to i8
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1649, i8* %1650, align 1, !tbaa !2449
  %1651 = lshr i32 %1621, 31
  %1652 = lshr i32 %1628, 31
  %1653 = xor i32 %1652, %1651
  %1654 = xor i32 %1648, %1651
  %1655 = add nuw nsw i32 %1654, %1653
  %1656 = icmp eq i32 %1655, 2
  %1657 = zext i1 %1656 to i8
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1657, i8* %1658, align 1, !tbaa !2450
  %1659 = load i64, i64* %PC
  %1660 = add i64 %1659, 135
  %1661 = load i64, i64* %PC
  %1662 = add i64 %1661, 6
  %1663 = load i64, i64* %PC
  %1664 = add i64 %1663, 6
  store i64 %1664, i64* %PC
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1666 = load i8, i8* %1665, align 1, !tbaa !2449
  %1667 = icmp ne i8 %1666, 0
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1669 = load i8, i8* %1668, align 1, !tbaa !2450
  %1670 = icmp ne i8 %1669, 0
  %1671 = xor i1 %1667, %1670
  %1672 = xor i1 %1671, true
  %1673 = zext i1 %1672 to i8
  store i8 %1673, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1675 = select i1 %1671, i64 %1662, i64 %1660
  store i64 %1675, i64* %1674, align 8, !tbaa !2428
  %1676 = load i8, i8* %BRANCH_TAKEN
  %1677 = icmp eq i8 %1676, 1
  %1678 = load i64, i64* %RBP
  %1679 = sub i64 %1678, 32
  %1680 = load i64, i64* %PC
  %1681 = add i64 %1680, 4
  store i64 %1681, i64* %PC
  %1682 = inttoptr i64 %1679 to i64*
  %1683 = load i64, i64* %1682
  store i64 %1683, i64* %RAX, align 8, !tbaa !2428
  %1684 = load i64, i64* %RBP
  br i1 %1677, label %block_400b32, label %block_400ab1
}

; Function Attrs: noinline
define %struct.Memory* @sub_4009f0_list_new(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4009f0:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
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
  %31 = load i64, i64* %RSP
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 4
  store i64 %33, i64* %PC
  %34 = sub i64 %31, 16
  store i64 %34, i64* %RSP, align 8, !tbaa !2428
  %35 = icmp ult i64 %31, 16
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %36, i8* %37, align 1, !tbaa !2432
  %38 = trunc i64 %34 to i32
  %39 = and i32 %38, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39) #16
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = xor i8 %42, 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %43, i8* %44, align 1, !tbaa !2446
  %45 = xor i64 16, %31
  %46 = xor i64 %45, %34
  %47 = lshr i64 %46, 4
  %48 = trunc i64 %47 to i8
  %49 = and i8 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %49, i8* %50, align 1, !tbaa !2447
  %51 = icmp eq i64 %34, 0
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %52, i8* %53, align 1, !tbaa !2448
  %54 = lshr i64 %34, 63
  %55 = trunc i64 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %55, i8* %56, align 1, !tbaa !2449
  %57 = lshr i64 %31, 63
  %58 = xor i64 %54, %57
  %59 = add nuw nsw i64 %58, %57
  %60 = icmp eq i64 %59, 2
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %61, i8* %62, align 1, !tbaa !2450
  %63 = load i64, i64* %PC
  %64 = add i64 %63, 5
  store i64 %64, i64* %PC
  store i64 24, i64* %RAX, align 8, !tbaa !2428
  %65 = load i32, i32* %EAX
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 2
  store i64 %68, i64* %PC
  %69 = and i64 %66, 4294967295
  store i64 %69, i64* %RDI, align 8, !tbaa !2428
  %70 = load i64, i64* %PC
  %71 = sub i64 %70, 1231
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 5
  %74 = load i64, i64* %PC
  %75 = add i64 %74, 5
  store i64 %75, i64* %PC
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %77 = load i64, i64* %76, align 8, !tbaa !2428
  %78 = add i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64 %73, i64* %79
  store i64 %78, i64* %76, align 8, !tbaa !2428
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %71, i64* %80, align 8, !tbaa !2428
  %81 = load i64, i64* %PC
  %82 = call %struct.Memory* @ext_400530_malloc(%struct.State* %0, i64 %81, %struct.Memory* %2)
  %83 = load i64, i64* %RBP
  %84 = sub i64 %83, 8
  %85 = load i64, i64* %RAX
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 4
  store i64 %87, i64* %PC
  %88 = inttoptr i64 %84 to i64*
  store i64 %85, i64* %88
  %89 = load i64, i64* %RBP
  %90 = sub i64 %89, 8
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 4
  store i64 %92, i64* %PC
  %93 = inttoptr i64 %90 to i64*
  %94 = load i64, i64* %93
  store i64 %94, i64* %RAX, align 8, !tbaa !2428
  %95 = load i64, i64* %RBP
  %96 = sub i64 %95, 8
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 4
  store i64 %98, i64* %PC
  %99 = inttoptr i64 %96 to i64*
  %100 = load i64, i64* %99
  store i64 %100, i64* %RDI, align 8, !tbaa !2428
  %101 = load i64, i64* %RDI
  %102 = add i64 %101, 8
  %103 = load i64, i64* %RAX
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 4
  store i64 %105, i64* %PC
  %106 = inttoptr i64 %102 to i64*
  store i64 %103, i64* %106
  %107 = load i64, i64* %RBP
  %108 = sub i64 %107, 8
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 4
  store i64 %110, i64* %PC
  %111 = inttoptr i64 %108 to i64*
  %112 = load i64, i64* %111
  store i64 %112, i64* %RAX, align 8, !tbaa !2428
  %113 = load i64, i64* %RBP
  %114 = sub i64 %113, 8
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 4
  store i64 %116, i64* %PC
  %117 = inttoptr i64 %114 to i64*
  %118 = load i64, i64* %117
  store i64 %118, i64* %RDI, align 8, !tbaa !2428
  %119 = load i64, i64* %RDI
  %120 = add i64 %119, 16
  %121 = load i64, i64* %RAX
  %122 = load i64, i64* %PC
  %123 = add i64 %122, 4
  store i64 %123, i64* %PC
  %124 = inttoptr i64 %120 to i64*
  store i64 %121, i64* %124
  %125 = load i64, i64* %RBP
  %126 = sub i64 %125, 8
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 4
  store i64 %128, i64* %PC
  %129 = inttoptr i64 %126 to i64*
  %130 = load i64, i64* %129
  store i64 %130, i64* %RAX, align 8, !tbaa !2428
  %131 = load i64, i64* %RAX
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 6
  store i64 %133, i64* %PC
  %134 = inttoptr i64 %131 to i32*
  store i32 0, i32* %134
  %135 = load i64, i64* %RBP
  %136 = sub i64 %135, 8
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 4
  store i64 %138, i64* %PC
  %139 = inttoptr i64 %136 to i64*
  %140 = load i64, i64* %139
  store i64 %140, i64* %RAX, align 8, !tbaa !2428
  %141 = load i64, i64* %RSP
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 4
  store i64 %143, i64* %PC
  %144 = add i64 16, %141
  store i64 %144, i64* %RSP, align 8, !tbaa !2428
  %145 = icmp ult i64 %144, %141
  %146 = icmp ult i64 %144, 16
  %147 = or i1 %145, %146
  %148 = zext i1 %147 to i8
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %148, i8* %149, align 1, !tbaa !2432
  %150 = trunc i64 %144 to i32
  %151 = and i32 %150, 255
  %152 = call i32 @llvm.ctpop.i32(i32 %151) #16
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  %155 = xor i8 %154, 1
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %155, i8* %156, align 1, !tbaa !2446
  %157 = xor i64 16, %141
  %158 = xor i64 %157, %144
  %159 = lshr i64 %158, 4
  %160 = trunc i64 %159 to i8
  %161 = and i8 %160, 1
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %161, i8* %162, align 1, !tbaa !2447
  %163 = icmp eq i64 %144, 0
  %164 = zext i1 %163 to i8
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %164, i8* %165, align 1, !tbaa !2448
  %166 = lshr i64 %144, 63
  %167 = trunc i64 %166 to i8
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %167, i8* %168, align 1, !tbaa !2449
  %169 = lshr i64 %141, 63
  %170 = xor i64 %166, %169
  %171 = add nuw nsw i64 %170, %166
  %172 = icmp eq i64 %171, 2
  %173 = zext i1 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %173, i8* %174, align 1, !tbaa !2450
  %175 = load i64, i64* %PC
  %176 = add i64 %175, 1
  store i64 %176, i64* %PC
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %178 = load i64, i64* %177, align 8, !tbaa !2428
  %179 = add i64 %178, 8
  %180 = inttoptr i64 %178 to i64*
  %181 = load i64, i64* %180
  store i64 %181, i64* %RBP, align 8, !tbaa !2428
  store i64 %179, i64* %177, align 8, !tbaa !2428
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 1
  store i64 %183, i64* %PC
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %186 = load i64, i64* %185, align 8, !tbaa !2428
  %187 = inttoptr i64 %186 to i64*
  %188 = load i64, i64* %187
  store i64 %188, i64* %184, align 8, !tbaa !2428
  %189 = add i64 %186, 8
  store i64 %189, i64* %185, align 8, !tbaa !2428
  ret %struct.Memory* %82
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006b0_list_pop_tail(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006b0:
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
  %34 = load i64, i64* %33, align 8, !tbaa !2428
  %35 = add i64 %34, -8
  %36 = inttoptr i64 %35 to i64*
  store i64 %30, i64* %36
  store i64 %35, i64* %33, align 8, !tbaa !2428
  %37 = load i64, i64* %RSP
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 3
  store i64 %39, i64* %PC
  store i64 %37, i64* %RBP, align 8, !tbaa !2428
  %40 = load i64, i64* %RSP
  %41 = load i64, i64* %PC
  %42 = add i64 %41, 4
  store i64 %42, i64* %PC
  %43 = sub i64 %40, 32
  store i64 %43, i64* %RSP, align 8, !tbaa !2428
  %44 = icmp ult i64 %40, 32
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %45, i8* %46, align 1, !tbaa !2432
  %47 = trunc i64 %43 to i32
  %48 = and i32 %47, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %48) #16
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %52 = xor i8 %51, 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %52, i8* %53, align 1, !tbaa !2446
  %54 = xor i64 32, %40
  %55 = xor i64 %54, %43
  %56 = lshr i64 %55, 4
  %57 = trunc i64 %56 to i8
  %58 = and i8 %57, 1
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %58, i8* %59, align 1, !tbaa !2447
  %60 = icmp eq i64 %43, 0
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %61, i8* %62, align 1, !tbaa !2448
  %63 = lshr i64 %43, 63
  %64 = trunc i64 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %64, i8* %65, align 1, !tbaa !2449
  %66 = lshr i64 %40, 63
  %67 = xor i64 %63, %66
  %68 = add nuw nsw i64 %67, %66
  %69 = icmp eq i64 %68, 2
  %70 = zext i1 %69 to i8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %70, i8* %71, align 1, !tbaa !2450
  %72 = load i64, i64* %RBP
  %73 = sub i64 %72, 16
  %74 = load i64, i64* %RDI
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 4
  store i64 %76, i64* %PC
  %77 = inttoptr i64 %73 to i64*
  store i64 %74, i64* %77
  %78 = load i64, i64* %RBP
  %79 = sub i64 %78, 16
  %80 = load i64, i64* %PC
  %81 = add i64 %80, 4
  store i64 %81, i64* %PC
  %82 = inttoptr i64 %79 to i64*
  %83 = load i64, i64* %82
  store i64 %83, i64* %RDI, align 8, !tbaa !2428
  %84 = load i64, i64* %PC
  %85 = add i64 %84, 112
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 5
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 5
  store i64 %89, i64* %PC
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %91 = load i64, i64* %90, align 8, !tbaa !2428
  %92 = add i64 %91, -8
  %93 = inttoptr i64 %92 to i64*
  store i64 %87, i64* %93
  store i64 %92, i64* %90, align 8, !tbaa !2428
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %85, i64* %94, align 8, !tbaa !2428
  %95 = load i64, i64* %PC
  %96 = call %struct.Memory* @sub_400730_list_empty_renamed_(%struct.State* %0, i64 %95, %struct.Memory* %2)
  %97 = load i32, i32* %EAX
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 3
  store i64 %100, i64* %PC
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %101, align 1, !tbaa !2432
  %102 = and i32 %97, 255
  %103 = call i32 @llvm.ctpop.i32(i32 %102) #16
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = xor i8 %105, 1
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %106, i8* %107, align 1, !tbaa !2446
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %108, align 1, !tbaa !2447
  %109 = icmp eq i32 %97, 0
  %110 = zext i1 %109 to i8
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %110, i8* %111, align 1, !tbaa !2448
  %112 = lshr i32 %97, 31
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %113, i8* %114, align 1, !tbaa !2449
  %115 = lshr i32 %97, 31
  %116 = xor i32 %112, %115
  %117 = add nuw nsw i32 %116, %115
  %118 = icmp eq i32 %117, 2
  %119 = zext i1 %118 to i8
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %119, i8* %120, align 1, !tbaa !2450
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 19
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 6
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 6
  store i64 %126, i64* %PC
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %128 = load i8, i8* %127, align 1, !tbaa !2448
  store i8 %128, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %130 = icmp ne i8 %128, 0
  %131 = select i1 %130, i64 %122, i64 %124
  store i64 %131, i64* %129, align 8, !tbaa !2428
  %132 = load i8, i8* %BRANCH_TAKEN
  %133 = icmp eq i8 %132, 1
  %134 = load i64, i64* %RBP
  br i1 %133, label %block_4006db, label %block_4006ce

block_4006db:                                     ; preds = %block_4006b0
  %135 = sub i64 %134, 16
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 4
  store i64 %137, i64* %PC
  %138 = inttoptr i64 %135 to i64*
  %139 = load i64, i64* %138
  store i64 %139, i64* %RAX, align 8, !tbaa !2428
  %140 = load i64, i64* %RAX
  %141 = add i64 %140, 16
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 4
  store i64 %143, i64* %PC
  %144 = inttoptr i64 %141 to i64*
  %145 = load i64, i64* %144
  store i64 %145, i64* %RAX, align 8, !tbaa !2428
  %146 = load i64, i64* %RBP
  %147 = sub i64 %146, 32
  %148 = load i64, i64* %RAX
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 4
  store i64 %150, i64* %PC
  %151 = inttoptr i64 %147 to i64*
  store i64 %148, i64* %151
  %152 = load i64, i64* %RBP
  %153 = sub i64 %152, 32
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 4
  store i64 %155, i64* %PC
  %156 = inttoptr i64 %153 to i64*
  %157 = load i64, i64* %156
  store i64 %157, i64* %RAX, align 8, !tbaa !2428
  %158 = load i64, i64* %RAX
  %159 = add i64 %158, 16
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 4
  store i64 %161, i64* %PC
  %162 = inttoptr i64 %159 to i64*
  %163 = load i64, i64* %162
  store i64 %163, i64* %RAX, align 8, !tbaa !2428
  %164 = load i64, i64* %RBP
  %165 = sub i64 %164, 24
  %166 = load i64, i64* %RAX
  %167 = load i64, i64* %PC
  %168 = add i64 %167, 4
  store i64 %168, i64* %PC
  %169 = inttoptr i64 %165 to i64*
  store i64 %166, i64* %169
  %170 = load i64, i64* %RBP
  %171 = sub i64 %170, 16
  %172 = load i64, i64* %PC
  %173 = add i64 %172, 4
  store i64 %173, i64* %PC
  %174 = inttoptr i64 %171 to i64*
  %175 = load i64, i64* %174
  store i64 %175, i64* %RAX, align 8, !tbaa !2428
  %176 = load i64, i64* %RBP
  %177 = sub i64 %176, 24
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 4
  store i64 %179, i64* %PC
  %180 = inttoptr i64 %177 to i64*
  %181 = load i64, i64* %180
  store i64 %181, i64* %RCX, align 8, !tbaa !2428
  %182 = load i64, i64* %RCX
  %183 = add i64 %182, 8
  %184 = load i64, i64* %RAX
  %185 = load i64, i64* %PC
  %186 = add i64 %185, 4
  store i64 %186, i64* %PC
  %187 = inttoptr i64 %183 to i64*
  store i64 %184, i64* %187
  %188 = load i64, i64* %RBP
  %189 = sub i64 %188, 24
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 4
  store i64 %191, i64* %PC
  %192 = inttoptr i64 %189 to i64*
  %193 = load i64, i64* %192
  store i64 %193, i64* %RAX, align 8, !tbaa !2428
  %194 = load i64, i64* %RBP
  %195 = sub i64 %194, 16
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 4
  store i64 %197, i64* %PC
  %198 = inttoptr i64 %195 to i64*
  %199 = load i64, i64* %198
  store i64 %199, i64* %RCX, align 8, !tbaa !2428
  %200 = load i64, i64* %RCX
  %201 = add i64 %200, 16
  %202 = load i64, i64* %RAX
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 4
  store i64 %204, i64* %PC
  %205 = inttoptr i64 %201 to i64*
  store i64 %202, i64* %205
  %206 = load i64, i64* %RBP
  %207 = sub i64 %206, 16
  %208 = load i64, i64* %PC
  %209 = add i64 %208, 4
  store i64 %209, i64* %PC
  %210 = inttoptr i64 %207 to i64*
  %211 = load i64, i64* %210
  store i64 %211, i64* %RAX, align 8, !tbaa !2428
  %212 = load i64, i64* %RAX
  %213 = load i64, i64* %PC
  %214 = add i64 %213, 2
  store i64 %214, i64* %PC
  %215 = inttoptr i64 %212 to i32*
  %216 = load i32, i32* %215
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RDX, align 8, !tbaa !2428
  %218 = load i64, i64* %RDX
  %219 = load i64, i64* %PC
  %220 = add i64 %219, 3
  store i64 %220, i64* %PC
  %221 = trunc i64 %218 to i32
  %222 = add i32 -1, %221
  %223 = zext i32 %222 to i64
  store i64 %223, i64* %RDX, align 8, !tbaa !2428
  %224 = icmp ult i32 %222, %221
  %225 = icmp ult i32 %222, -1
  %226 = or i1 %224, %225
  %227 = zext i1 %226 to i8
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %227, i8* %228, align 1, !tbaa !2432
  %229 = and i32 %222, 255
  %230 = call i32 @llvm.ctpop.i32(i32 %229) #16
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = xor i8 %232, 1
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %233, i8* %234, align 1, !tbaa !2446
  %235 = xor i64 -1, %218
  %236 = trunc i64 %235 to i32
  %237 = xor i32 %236, %222
  %238 = lshr i32 %237, 4
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %240, i8* %241, align 1, !tbaa !2447
  %242 = icmp eq i32 %222, 0
  %243 = zext i1 %242 to i8
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %243, i8* %244, align 1, !tbaa !2448
  %245 = lshr i32 %222, 31
  %246 = trunc i32 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %246, i8* %247, align 1, !tbaa !2449
  %248 = lshr i32 %221, 31
  %249 = xor i32 %245, %248
  %250 = xor i32 %245, 1
  %251 = add nuw nsw i32 %249, %250
  %252 = icmp eq i32 %251, 2
  %253 = zext i1 %252 to i8
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %253, i8* %254, align 1, !tbaa !2450
  %255 = load i64, i64* %RAX
  %256 = load i32, i32* %EDX
  %257 = zext i32 %256 to i64
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 2
  store i64 %259, i64* %PC
  %260 = inttoptr i64 %255 to i32*
  store i32 %256, i32* %260
  %261 = load i64, i64* %RBP
  %262 = sub i64 %261, 32
  %263 = load i64, i64* %PC
  %264 = add i64 %263, 4
  store i64 %264, i64* %PC
  %265 = inttoptr i64 %262 to i64*
  %266 = load i64, i64* %265
  store i64 %266, i64* %RAX, align 8, !tbaa !2428
  %267 = load i64, i64* %RBP
  %268 = sub i64 %267, 8
  %269 = load i64, i64* %RAX
  %270 = load i64, i64* %PC
  %271 = add i64 %270, 4
  store i64 %271, i64* %PC
  %272 = inttoptr i64 %268 to i64*
  store i64 %269, i64* %272
  br label %block_40071e

block_40071e:                                     ; preds = %block_4006ce, %block_4006db
  %MEMORY.0 = phi %struct.Memory* [ %96, %block_4006db ], [ %96, %block_4006ce ]
  %273 = load i64, i64* %RBP
  %274 = sub i64 %273, 8
  %275 = load i64, i64* %PC
  %276 = add i64 %275, 4
  store i64 %276, i64* %PC
  %277 = inttoptr i64 %274 to i64*
  %278 = load i64, i64* %277
  store i64 %278, i64* %RAX, align 8, !tbaa !2428
  %279 = load i64, i64* %RSP
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 4
  store i64 %281, i64* %PC
  %282 = add i64 32, %279
  store i64 %282, i64* %RSP, align 8, !tbaa !2428
  %283 = icmp ult i64 %282, %279
  %284 = icmp ult i64 %282, 32
  %285 = or i1 %283, %284
  %286 = zext i1 %285 to i8
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %286, i8* %287, align 1, !tbaa !2432
  %288 = trunc i64 %282 to i32
  %289 = and i32 %288, 255
  %290 = call i32 @llvm.ctpop.i32(i32 %289) #16
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %293, i8* %294, align 1, !tbaa !2446
  %295 = xor i64 32, %279
  %296 = xor i64 %295, %282
  %297 = lshr i64 %296, 4
  %298 = trunc i64 %297 to i8
  %299 = and i8 %298, 1
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %299, i8* %300, align 1, !tbaa !2447
  %301 = icmp eq i64 %282, 0
  %302 = zext i1 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %302, i8* %303, align 1, !tbaa !2448
  %304 = lshr i64 %282, 63
  %305 = trunc i64 %304 to i8
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %305, i8* %306, align 1, !tbaa !2449
  %307 = lshr i64 %279, 63
  %308 = xor i64 %304, %307
  %309 = add nuw nsw i64 %308, %304
  %310 = icmp eq i64 %309, 2
  %311 = zext i1 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %311, i8* %312, align 1, !tbaa !2450
  %313 = load i64, i64* %PC
  %314 = add i64 %313, 1
  store i64 %314, i64* %PC
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %316 = load i64, i64* %315, align 8, !tbaa !2428
  %317 = add i64 %316, 8
  %318 = inttoptr i64 %316 to i64*
  %319 = load i64, i64* %318
  store i64 %319, i64* %RBP, align 8, !tbaa !2428
  store i64 %317, i64* %315, align 8, !tbaa !2428
  %320 = load i64, i64* %PC
  %321 = add i64 %320, 1
  store i64 %321, i64* %PC
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %324 = load i64, i64* %323, align 8, !tbaa !2428
  %325 = inttoptr i64 %324 to i64*
  %326 = load i64, i64* %325
  store i64 %326, i64* %322, align 8, !tbaa !2428
  %327 = add i64 %324, 8
  store i64 %327, i64* %323, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4006ce:                                     ; preds = %block_4006b0
  %328 = sub i64 %134, 8
  %329 = load i64, i64* %PC
  %330 = add i64 %329, 8
  store i64 %330, i64* %PC
  %331 = inttoptr i64 %328 to i64*
  store i64 0, i64* %331
  %332 = load i64, i64* %PC
  %333 = add i64 %332, 72
  %334 = load i64, i64* %PC
  %335 = add i64 %334, 5
  store i64 %335, i64* %PC
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %333, i64* %336, align 8, !tbaa !2428
  br label %block_40071e
}

; Function Attrs: noinline
define %struct.Memory* @sub_400d50_test_lists(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400d50:
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
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %RAX = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RDX = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RSI = bitcast %union.anon* %25 to i64*
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %27 = getelementptr inbounds %struct.GPR, %struct.GPR* %26, i32 0, i32 11
  %28 = getelementptr inbounds %struct.Reg, %struct.Reg* %27, i32 0, i32 0
  %RDI = bitcast %union.anon* %28 to i64*
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 13
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %RSP = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 15
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RBP = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RBP
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 1
  store i64 %37, i64* %PC
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8, !tbaa !2428
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8, !tbaa !2428
  %42 = load i64, i64* %RSP
  %43 = load i64, i64* %PC
  %44 = add i64 %43, 3
  store i64 %44, i64* %PC
  store i64 %42, i64* %RBP, align 8, !tbaa !2428
  %45 = load i64, i64* %RSP
  %46 = load i64, i64* %PC
  %47 = add i64 %46, 4
  store i64 %47, i64* %PC
  %48 = sub i64 %45, 96
  store i64 %48, i64* %RSP, align 8, !tbaa !2428
  %49 = icmp ult i64 %45, 96
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %50, i8* %51, align 1, !tbaa !2432
  %52 = trunc i64 %48 to i32
  %53 = and i32 %52, 255
  %54 = call i32 @llvm.ctpop.i32(i32 %53) #16
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  %57 = xor i8 %56, 1
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %57, i8* %58, align 1, !tbaa !2446
  %59 = xor i64 96, %45
  %60 = xor i64 %59, %48
  %61 = lshr i64 %60, 4
  %62 = trunc i64 %61 to i8
  %63 = and i8 %62, 1
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %63, i8* %64, align 1, !tbaa !2447
  %65 = icmp eq i64 %48, 0
  %66 = zext i1 %65 to i8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %66, i8* %67, align 1, !tbaa !2448
  %68 = lshr i64 %48, 63
  %69 = trunc i64 %68 to i8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %69, i8* %70, align 1, !tbaa !2449
  %71 = lshr i64 %45, 63
  %72 = xor i64 %68, %71
  %73 = add nuw nsw i64 %72, %71
  %74 = icmp eq i64 %73, 2
  %75 = zext i1 %74 to i8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %75, i8* %76, align 1, !tbaa !2450
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 5
  store i64 %78, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 5
  store i64 %80, i64* %PC
  store i64 100, i64* %RSI, align 8, !tbaa !2428
  %81 = load i64, i64* %RBP
  %82 = sub i64 %81, 4
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 7
  store i64 %84, i64* %PC
  %85 = inttoptr i64 %82 to i32*
  store i32 0, i32* %85
  %86 = load i64, i64* %PC
  %87 = sub i64 %86, 809
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 5
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 5
  store i64 %91, i64* %PC
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %93 = load i64, i64* %92, align 8, !tbaa !2428
  %94 = add i64 %93, -8
  %95 = inttoptr i64 %94 to i64*
  store i64 %89, i64* %95
  store i64 %94, i64* %92, align 8, !tbaa !2428
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %87, i64* %96, align 8, !tbaa !2428
  %97 = load i64, i64* %PC
  %98 = call %struct.Memory* @sub_400a40_list_sequence_renamed_(%struct.State* %0, i64 %97, %struct.Memory* %2)
  %99 = load i64, i64* %RBP
  %100 = sub i64 %99, 16
  %101 = load i64, i64* %RAX
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC
  %104 = inttoptr i64 %100 to i64*
  store i64 %101, i64* %104
  %105 = load i64, i64* %RBP
  %106 = sub i64 %105, 16
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 4
  store i64 %108, i64* %PC
  %109 = inttoptr i64 %106 to i64*
  %110 = load i64, i64* %109
  store i64 %110, i64* %RDI, align 8, !tbaa !2428
  %111 = load i64, i64* %PC
  %112 = sub i64 %111, 454
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 5
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 5
  store i64 %116, i64* %PC
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %118 = load i64, i64* %117, align 8, !tbaa !2428
  %119 = add i64 %118, -8
  %120 = inttoptr i64 %119 to i64*
  store i64 %114, i64* %120
  store i64 %119, i64* %117, align 8, !tbaa !2428
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %112, i64* %121, align 8, !tbaa !2428
  %122 = load i64, i64* %PC
  %123 = call %struct.Memory* @sub_400bb0_list_copy_renamed_(%struct.State* %0, i64 %122, %struct.Memory* %98)
  %124 = load i64, i64* %RBP
  %125 = sub i64 %124, 24
  %126 = load i64, i64* %RAX
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 4
  store i64 %128, i64* %PC
  %129 = inttoptr i64 %125 to i64*
  store i64 %126, i64* %129
  %130 = load i64, i64* %PC
  %131 = sub i64 %130, 911
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 5
  %134 = load i64, i64* %PC
  %135 = add i64 %134, 5
  store i64 %135, i64* %PC
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %137 = load i64, i64* %136, align 8, !tbaa !2428
  %138 = add i64 %137, -8
  %139 = inttoptr i64 %138 to i64*
  store i64 %133, i64* %139
  store i64 %138, i64* %136, align 8, !tbaa !2428
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %131, i64* %140, align 8, !tbaa !2428
  %141 = load i64, i64* %PC
  %142 = call %struct.Memory* @sub_4009f0_list_new_renamed_(%struct.State* %0, i64 %141, %struct.Memory* %123)
  %143 = load i64, i64* %RBP
  %144 = sub i64 %143, 32
  %145 = load i64, i64* %RAX
  %146 = load i64, i64* %PC
  %147 = add i64 %146, 4
  store i64 %147, i64* %PC
  %148 = inttoptr i64 %144 to i64*
  store i64 %145, i64* %148
  %149 = load i64, i64* %RBP
  %150 = sub i64 %149, 24
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 4
  store i64 %152, i64* %PC
  %153 = inttoptr i64 %150 to i64*
  %154 = load i64, i64* %153
  store i64 %154, i64* %RDI, align 8, !tbaa !2428
  %155 = load i64, i64* %RBP
  %156 = sub i64 %155, 16
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 4
  store i64 %158, i64* %PC
  %159 = inttoptr i64 %156 to i64*
  %160 = load i64, i64* %159
  store i64 %160, i64* %RSI, align 8, !tbaa !2428
  %161 = load i64, i64* %PC
  %162 = sub i64 %161, 1344
  %163 = load i64, i64* %PC
  %164 = add i64 %163, 5
  %165 = load i64, i64* %PC
  %166 = add i64 %165, 5
  store i64 %166, i64* %PC
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %168 = load i64, i64* %167, align 8, !tbaa !2428
  %169 = add i64 %168, -8
  %170 = inttoptr i64 %169 to i64*
  store i64 %164, i64* %170
  store i64 %169, i64* %167, align 8, !tbaa !2428
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %162, i64* %171, align 8, !tbaa !2428
  %172 = load i64, i64* %PC
  %173 = call %struct.Memory* @sub_400850_list_equal_renamed_(%struct.State* %0, i64 %172, %struct.Memory* %142)
  %174 = load i32, i32* %EAX
  %175 = zext i32 %174 to i64
  %176 = load i64, i64* %PC
  %177 = add i64 %176, 3
  store i64 %177, i64* %PC
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %178, align 1, !tbaa !2432
  %179 = and i32 %174, 255
  %180 = call i32 @llvm.ctpop.i32(i32 %179) #16
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  %183 = xor i8 %182, 1
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %183, i8* %184, align 1, !tbaa !2446
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %185, align 1, !tbaa !2447
  %186 = icmp eq i32 %174, 0
  %187 = zext i1 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %187, i8* %188, align 1, !tbaa !2448
  %189 = lshr i32 %174, 31
  %190 = trunc i32 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %190, i8* %191, align 1, !tbaa !2449
  %192 = lshr i32 %174, 31
  %193 = xor i32 %189, %192
  %194 = add nuw nsw i32 %193, %192
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %196, i8* %197, align 1, !tbaa !2450
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 36
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 6
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 6
  store i64 %203, i64* %PC
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %205 = load i8, i8* %204, align 1, !tbaa !2448
  %206 = icmp eq i8 %205, 0
  %207 = zext i1 %206 to i8
  store i8 %207, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %209 = select i1 %206, i64 %199, i64 %201
  store i64 %209, i64* %208, align 8, !tbaa !2428
  %210 = load i8, i8* %BRANCH_TAKEN
  %211 = icmp eq i8 %210, 1
  %212 = load i64, i64* %PC
  br i1 %211, label %block_400dbc, label %block_400d9e

block_400ddc:                                     ; preds = %block_400dc1
  %213 = load i64, i64* %PC
  %214 = add i64 %213, 42
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 5
  store i64 %216, i64* %PC
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %214, i64* %217, align 8, !tbaa !2428
  %218 = load i64, i64* %RBP
  %219 = sub i64 %218, 24
  %220 = load i64, i64* %PC
  %221 = add i64 %220, 4
  store i64 %221, i64* %PC
  %222 = inttoptr i64 %219 to i64*
  %223 = load i64, i64* %222
  store i64 %223, i64* %RDI, align 8, !tbaa !2428
  %224 = load i64, i64* %PC
  %225 = sub i64 %224, 1754
  %226 = load i64, i64* %PC
  %227 = add i64 %226, 5
  %228 = load i64, i64* %PC
  %229 = add i64 %228, 5
  store i64 %229, i64* %PC
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %231 = load i64, i64* %230, align 8, !tbaa !2428
  %232 = add i64 %231, -8
  %233 = inttoptr i64 %232 to i64*
  store i64 %227, i64* %233
  store i64 %232, i64* %230, align 8, !tbaa !2428
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %225, i64* %234, align 8, !tbaa !2428
  %235 = load i64, i64* %PC
  %236 = call %struct.Memory* @sub_400730_list_empty_renamed_(%struct.State* %0, i64 %235, %struct.Memory* %995)
  %237 = load i32, i32* %EAX
  %238 = zext i32 %237 to i64
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 3
  store i64 %240, i64* %PC
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %241, align 1, !tbaa !2432
  %242 = and i32 %237, 255
  %243 = call i32 @llvm.ctpop.i32(i32 %242) #16
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %246, i8* %247, align 1, !tbaa !2446
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %248, align 1, !tbaa !2447
  %249 = icmp eq i32 %237, 0
  %250 = zext i1 %249 to i8
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %250, i8* %251, align 1, !tbaa !2448
  %252 = lshr i32 %237, 31
  %253 = trunc i32 %252 to i8
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %253, i8* %254, align 1, !tbaa !2449
  %255 = lshr i32 %237, 31
  %256 = xor i32 %252, %255
  %257 = add nuw nsw i32 %256, %255
  %258 = icmp eq i32 %257, 2
  %259 = zext i1 %258 to i8
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %259, i8* %260, align 1, !tbaa !2450
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 36
  %263 = load i64, i64* %PC
  %264 = add i64 %263, 6
  %265 = load i64, i64* %PC
  %266 = add i64 %265, 6
  store i64 %266, i64* %PC
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %268 = load i8, i8* %267, align 1, !tbaa !2448
  %269 = icmp eq i8 %268, 0
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %272 = select i1 %269, i64 %262, i64 %264
  store i64 %272, i64* %271, align 8, !tbaa !2428
  %273 = load i8, i8* %BRANCH_TAKEN
  %274 = icmp eq i8 %273, 1
  %275 = load i64, i64* %PC
  br i1 %274, label %block_400e36, label %block_400e18

block_400e5b:                                     ; preds = %block_400e3b
  %276 = load i64, i64* %RBP
  %277 = sub i64 %276, 24
  %278 = load i64, i64* %PC
  %279 = add i64 %278, 4
  store i64 %279, i64* %PC
  %280 = inttoptr i64 %277 to i64*
  %281 = load i64, i64* %280
  store i64 %281, i64* %RDI, align 8, !tbaa !2428
  %282 = load i64, i64* %RBP
  %283 = sub i64 %282, 32
  %284 = load i64, i64* %PC
  %285 = add i64 %284, 4
  store i64 %285, i64* %PC
  %286 = inttoptr i64 %283 to i64*
  %287 = load i64, i64* %286
  store i64 %287, i64* %RAX, align 8, !tbaa !2428
  %288 = load i64, i64* %RBP
  %289 = sub i64 %288, 64
  %290 = load i64, i64* %RDI
  %291 = load i64, i64* %PC
  %292 = add i64 %291, 4
  store i64 %292, i64* %PC
  %293 = inttoptr i64 %289 to i64*
  store i64 %290, i64* %293
  %294 = load i64, i64* %RAX
  %295 = load i64, i64* %PC
  %296 = add i64 %295, 3
  store i64 %296, i64* %PC
  store i64 %294, i64* %RDI, align 8, !tbaa !2428
  %297 = load i64, i64* %PC
  %298 = sub i64 %297, 1978
  %299 = load i64, i64* %PC
  %300 = add i64 %299, 5
  %301 = load i64, i64* %PC
  %302 = add i64 %301, 5
  store i64 %302, i64* %PC
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %304 = load i64, i64* %303, align 8, !tbaa !2428
  %305 = add i64 %304, -8
  %306 = inttoptr i64 %305 to i64*
  store i64 %300, i64* %306
  store i64 %305, i64* %303, align 8, !tbaa !2428
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %298, i64* %307, align 8, !tbaa !2428
  %308 = load i64, i64* %PC
  %309 = call %struct.Memory* @sub_4006b0_list_pop_tail_renamed_(%struct.State* %0, i64 %308, %struct.Memory* %1139)
  %310 = load i64, i64* %RBP
  %311 = sub i64 %310, 64
  %312 = load i64, i64* %PC
  %313 = add i64 %312, 4
  store i64 %313, i64* %PC
  %314 = inttoptr i64 %311 to i64*
  %315 = load i64, i64* %314
  store i64 %315, i64* %RDI, align 8, !tbaa !2428
  %316 = load i64, i64* %RAX
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 3
  store i64 %318, i64* %PC
  store i64 %316, i64* %RSI, align 8, !tbaa !2428
  %319 = load i64, i64* %PC
  %320 = sub i64 %319, 2086
  %321 = load i64, i64* %PC
  %322 = add i64 %321, 5
  %323 = load i64, i64* %PC
  %324 = add i64 %323, 5
  store i64 %324, i64* %PC
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %326 = load i64, i64* %325, align 8, !tbaa !2428
  %327 = add i64 %326, -8
  %328 = inttoptr i64 %327 to i64*
  store i64 %322, i64* %328
  store i64 %327, i64* %325, align 8, !tbaa !2428
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %320, i64* %329, align 8, !tbaa !2428
  %330 = load i64, i64* %PC
  %331 = call %struct.Memory* @sub_400650_list_push_tail_renamed_(%struct.State* %0, i64 %330, %struct.Memory* %309)
  %332 = load i64, i64* %PC
  %333 = sub i64 %332, 64
  %334 = load i64, i64* %PC
  %335 = add i64 %334, 5
  store i64 %335, i64* %PC
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %333, i64* %336, align 8, !tbaa !2428
  br label %block_400e3b

block_400e56:                                     ; preds = %block_400e3b
  %337 = load i64, i64* %PC
  %338 = add i64 %337, 42
  %339 = load i64, i64* %PC
  %340 = add i64 %339, 5
  store i64 %340, i64* %PC
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %338, i64* %341, align 8, !tbaa !2428
  %342 = load i64, i64* %RBP
  %343 = sub i64 %342, 32
  %344 = load i64, i64* %PC
  %345 = add i64 %344, 4
  store i64 %345, i64* %PC
  %346 = inttoptr i64 %343 to i64*
  %347 = load i64, i64* %346
  store i64 %347, i64* %RDI, align 8, !tbaa !2428
  %348 = load i64, i64* %PC
  %349 = sub i64 %348, 1876
  %350 = load i64, i64* %PC
  %351 = add i64 %350, 5
  %352 = load i64, i64* %PC
  %353 = add i64 %352, 5
  store i64 %353, i64* %PC
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %355 = load i64, i64* %354, align 8, !tbaa !2428
  %356 = add i64 %355, -8
  %357 = inttoptr i64 %356 to i64*
  store i64 %351, i64* %357
  store i64 %356, i64* %354, align 8, !tbaa !2428
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %349, i64* %358, align 8, !tbaa !2428
  %359 = load i64, i64* %PC
  %360 = call %struct.Memory* @sub_400730_list_empty_renamed_(%struct.State* %0, i64 %359, %struct.Memory* %1139)
  %361 = load i32, i32* %EAX
  %362 = zext i32 %361 to i64
  %363 = load i64, i64* %PC
  %364 = add i64 %363, 3
  store i64 %364, i64* %PC
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %365, align 1, !tbaa !2432
  %366 = and i32 %361, 255
  %367 = call i32 @llvm.ctpop.i32(i32 %366) #16
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  %370 = xor i8 %369, 1
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %370, i8* %371, align 1, !tbaa !2446
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %372, align 1, !tbaa !2447
  %373 = icmp eq i32 %361, 0
  %374 = zext i1 %373 to i8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %374, i8* %375, align 1, !tbaa !2448
  %376 = lshr i32 %361, 31
  %377 = trunc i32 %376 to i8
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %377, i8* %378, align 1, !tbaa !2449
  %379 = lshr i32 %361, 31
  %380 = xor i32 %376, %379
  %381 = add nuw nsw i32 %380, %379
  %382 = icmp eq i32 %381, 2
  %383 = zext i1 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %383, i8* %384, align 1, !tbaa !2450
  %385 = load i64, i64* %PC
  %386 = add i64 %385, 36
  %387 = load i64, i64* %PC
  %388 = add i64 %387, 6
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 6
  store i64 %390, i64* %PC
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %392 = load i8, i8* %391, align 1, !tbaa !2448
  %393 = icmp eq i8 %392, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %396 = select i1 %393, i64 %386, i64 %388
  store i64 %396, i64* %395, align 8, !tbaa !2428
  %397 = load i8, i8* %BRANCH_TAKEN
  %398 = icmp eq i8 %397, 1
  br i1 %398, label %block_400eb0, label %block_400e92

block_400de1:                                     ; preds = %block_400dc1
  %399 = load i64, i64* %RBP
  %400 = sub i64 %399, 32
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 4
  store i64 %402, i64* %PC
  %403 = inttoptr i64 %400 to i64*
  %404 = load i64, i64* %403
  store i64 %404, i64* %RDI, align 8, !tbaa !2428
  %405 = load i64, i64* %RBP
  %406 = sub i64 %405, 24
  %407 = load i64, i64* %PC
  %408 = add i64 %407, 4
  store i64 %408, i64* %PC
  %409 = inttoptr i64 %406 to i64*
  %410 = load i64, i64* %409
  store i64 %410, i64* %RAX, align 8, !tbaa !2428
  %411 = load i64, i64* %RBP
  %412 = sub i64 %411, 48
  %413 = load i64, i64* %RDI
  %414 = load i64, i64* %PC
  %415 = add i64 %414, 4
  store i64 %415, i64* %PC
  %416 = inttoptr i64 %412 to i64*
  store i64 %413, i64* %416
  %417 = load i64, i64* %RAX
  %418 = load i64, i64* %PC
  %419 = add i64 %418, 3
  store i64 %419, i64* %PC
  store i64 %417, i64* %RDI, align 8, !tbaa !2428
  %420 = load i64, i64* %PC
  %421 = sub i64 %420, 1568
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
  %432 = call %struct.Memory* @sub_4007d0_list_pop_head_renamed_(%struct.State* %0, i64 %431, %struct.Memory* %995)
  %433 = load i64, i64* %RBP
  %434 = sub i64 %433, 48
  %435 = load i64, i64* %PC
  %436 = add i64 %435, 4
  store i64 %436, i64* %PC
  %437 = inttoptr i64 %434 to i64*
  %438 = load i64, i64* %437
  store i64 %438, i64* %RDI, align 8, !tbaa !2428
  %439 = load i64, i64* %RAX
  %440 = load i64, i64* %PC
  %441 = add i64 %440, 3
  store i64 %441, i64* %PC
  store i64 %439, i64* %RSI, align 8, !tbaa !2428
  %442 = load i64, i64* %PC
  %443 = sub i64 %442, 1964
  %444 = load i64, i64* %PC
  %445 = add i64 %444, 5
  %446 = load i64, i64* %PC
  %447 = add i64 %446, 5
  store i64 %447, i64* %PC
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %449 = load i64, i64* %448, align 8, !tbaa !2428
  %450 = add i64 %449, -8
  %451 = inttoptr i64 %450 to i64*
  store i64 %445, i64* %451
  store i64 %450, i64* %448, align 8, !tbaa !2428
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %443, i64* %452, align 8, !tbaa !2428
  %453 = load i64, i64* %PC
  %454 = call %struct.Memory* @sub_400650_list_push_tail_renamed_(%struct.State* %0, i64 %453, %struct.Memory* %432)
  %455 = load i64, i64* %PC
  %456 = sub i64 %455, 64
  %457 = load i64, i64* %PC
  %458 = add i64 %457, 5
  store i64 %458, i64* %PC
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %456, i64* %459, align 8, !tbaa !2428
  br label %block_400dc1

block_400dbc:                                     ; preds = %block_400d50
  %460 = add i64 %212, 5
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 5
  store i64 %462, i64* %PC
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %460, i64* %463, align 8, !tbaa !2428
  br label %block_400dc1

block_400f39:                                     ; preds = %block_400ef9
  %464 = sub i64 %808, 24
  %465 = load i64, i64* %PC
  %466 = add i64 %465, 4
  store i64 %466, i64* %PC
  %467 = inttoptr i64 %464 to i64*
  %468 = load i64, i64* %467
  store i64 %468, i64* %RDI, align 8, !tbaa !2428
  %469 = load i64, i64* %PC
  %470 = add i64 %469, 291
  %471 = load i64, i64* %PC
  %472 = add i64 %471, 5
  %473 = load i64, i64* %PC
  %474 = add i64 %473, 5
  store i64 %474, i64* %PC
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %476 = load i64, i64* %475, align 8, !tbaa !2428
  %477 = add i64 %476, -8
  %478 = inttoptr i64 %477 to i64*
  store i64 %472, i64* %478
  store i64 %477, i64* %475, align 8, !tbaa !2428
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %470, i64* %479, align 8, !tbaa !2428
  %480 = load i64, i64* %PC
  %481 = call %struct.Memory* @sub_401060_list_first_renamed_(%struct.State* %0, i64 %480, %struct.Memory* %761)
  %482 = load i64, i64* %RAX
  %483 = load i64, i64* %PC
  %484 = add i64 %483, 3
  store i64 %484, i64* %PC
  %485 = inttoptr i64 %482 to i32*
  %486 = load i32, i32* %485
  %487 = sub i32 %486, 100
  %488 = icmp ult i32 %486, 100
  %489 = zext i1 %488 to i8
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %489, i8* %490, align 1, !tbaa !2432
  %491 = and i32 %487, 255
  %492 = call i32 @llvm.ctpop.i32(i32 %491) #16
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %495, i8* %496, align 1, !tbaa !2446
  %497 = xor i32 %486, 100
  %498 = xor i32 %497, %487
  %499 = lshr i32 %498, 4
  %500 = trunc i32 %499 to i8
  %501 = and i8 %500, 1
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %501, i8* %502, align 1, !tbaa !2447
  %503 = icmp eq i32 %487, 0
  %504 = zext i1 %503 to i8
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %504, i8* %505, align 1, !tbaa !2448
  %506 = lshr i32 %487, 31
  %507 = trunc i32 %506 to i8
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %507, i8* %508, align 1, !tbaa !2449
  %509 = lshr i32 %486, 31
  %510 = xor i32 %506, %509
  %511 = add nuw nsw i32 %510, %509
  %512 = icmp eq i32 %511, 2
  %513 = zext i1 %512 to i8
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %513, i8* %514, align 1, !tbaa !2450
  %515 = load i64, i64* %PC
  %516 = add i64 %515, 52
  %517 = load i64, i64* %PC
  %518 = add i64 %517, 6
  %519 = load i64, i64* %PC
  %520 = add i64 %519, 6
  store i64 %520, i64* %PC
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %522 = load i8, i8* %521, align 1, !tbaa !2448
  store i8 %522, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %524 = icmp ne i8 %522, 0
  %525 = select i1 %524, i64 %516, i64 %518
  store i64 %525, i64* %523, align 8, !tbaa !2428
  %526 = load i8, i8* %BRANCH_TAKEN
  %527 = icmp eq i8 %526, 1
  %528 = load i64, i64* %RBP
  %529 = sub i64 %528, 24
  %530 = load i64, i64* %PC
  %531 = add i64 %530, 4
  store i64 %531, i64* %PC
  %532 = inttoptr i64 %529 to i64*
  %533 = load i64, i64* %532
  store i64 %533, i64* %RDI, align 8, !tbaa !2428
  %534 = load i64, i64* %PC
  br i1 %527, label %block_400f79, label %block_400f4b

block_400e36:                                     ; preds = %block_400ddc
  %535 = add i64 %275, 5
  %536 = load i64, i64* %PC
  %537 = add i64 %536, 5
  store i64 %537, i64* %PC
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %535, i64* %538, align 8, !tbaa !2428
  br label %block_400e3b

block_400eb0:                                     ; preds = %block_400e56
  %539 = load i64, i64* %RBP
  %540 = sub i64 %539, 16
  %541 = load i64, i64* %PC
  %542 = add i64 %541, 4
  store i64 %542, i64* %PC
  %543 = inttoptr i64 %540 to i64*
  %544 = load i64, i64* %543
  store i64 %544, i64* %RDI, align 8, !tbaa !2428
  %545 = load i64, i64* %PC
  %546 = sub i64 %545, 436
  %547 = load i64, i64* %PC
  %548 = add i64 %547, 5
  %549 = load i64, i64* %PC
  %550 = add i64 %549, 5
  store i64 %550, i64* %PC
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %552 = load i64, i64* %551, align 8, !tbaa !2428
  %553 = add i64 %552, -8
  %554 = inttoptr i64 %553 to i64*
  store i64 %548, i64* %554
  store i64 %553, i64* %551, align 8, !tbaa !2428
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %546, i64* %555, align 8, !tbaa !2428
  %556 = load i64, i64* %PC
  %557 = call %struct.Memory* @sub_400d00_list_reverse_renamed_(%struct.State* %0, i64 %556, %struct.Memory* %360)
  %558 = load i64, i64* %RBP
  %559 = sub i64 %558, 16
  %560 = load i64, i64* %PC
  %561 = add i64 %560, 4
  store i64 %561, i64* %PC
  %562 = inttoptr i64 %559 to i64*
  %563 = load i64, i64* %562
  store i64 %563, i64* %RDI, align 8, !tbaa !2428
  %564 = load i64, i64* %PC
  %565 = add i64 %564, 419
  %566 = load i64, i64* %PC
  %567 = add i64 %566, 5
  %568 = load i64, i64* %PC
  %569 = add i64 %568, 5
  store i64 %569, i64* %PC
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %571 = load i64, i64* %570, align 8, !tbaa !2428
  %572 = add i64 %571, -8
  %573 = inttoptr i64 %572 to i64*
  store i64 %567, i64* %573
  store i64 %572, i64* %570, align 8, !tbaa !2428
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %565, i64* %574, align 8, !tbaa !2428
  %575 = load i64, i64* %PC
  %576 = call %struct.Memory* @sub_401060_list_first_renamed_(%struct.State* %0, i64 %575, %struct.Memory* %557)
  %577 = load i64, i64* %RAX
  %578 = load i64, i64* %PC
  %579 = add i64 %578, 3
  store i64 %579, i64* %PC
  %580 = inttoptr i64 %577 to i32*
  %581 = load i32, i32* %580
  %582 = sub i32 %581, 100
  %583 = icmp ult i32 %581, 100
  %584 = zext i1 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %584, i8* %585, align 1, !tbaa !2432
  %586 = and i32 %582, 255
  %587 = call i32 @llvm.ctpop.i32(i32 %586) #16
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  %590 = xor i8 %589, 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %590, i8* %591, align 1, !tbaa !2446
  %592 = xor i32 %581, 100
  %593 = xor i32 %592, %582
  %594 = lshr i32 %593, 4
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %596, i8* %597, align 1, !tbaa !2447
  %598 = icmp eq i32 %582, 0
  %599 = zext i1 %598 to i8
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %599, i8* %600, align 1, !tbaa !2448
  %601 = lshr i32 %582, 31
  %602 = trunc i32 %601 to i8
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %602, i8* %603, align 1, !tbaa !2449
  %604 = lshr i32 %581, 31
  %605 = xor i32 %601, %604
  %606 = add nuw nsw i32 %605, %604
  %607 = icmp eq i32 %606, 2
  %608 = zext i1 %607 to i8
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %608, i8* %609, align 1, !tbaa !2450
  %610 = load i64, i64* %PC
  %611 = add i64 %610, 52
  %612 = load i64, i64* %PC
  %613 = add i64 %612, 6
  %614 = load i64, i64* %PC
  %615 = add i64 %614, 6
  store i64 %615, i64* %PC
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %617 = load i8, i8* %616, align 1, !tbaa !2448
  store i8 %617, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %619 = icmp ne i8 %617, 0
  %620 = select i1 %619, i64 %611, i64 %613
  store i64 %620, i64* %618, align 8, !tbaa !2428
  %621 = load i8, i8* %BRANCH_TAKEN
  %622 = icmp eq i8 %621, 1
  %623 = load i64, i64* %RBP
  %624 = sub i64 %623, 16
  %625 = load i64, i64* %PC
  %626 = add i64 %625, 4
  store i64 %626, i64* %PC
  %627 = inttoptr i64 %624 to i64*
  %628 = load i64, i64* %627
  store i64 %628, i64* %RDI, align 8, !tbaa !2428
  %629 = load i64, i64* %PC
  br i1 %622, label %block_400ef9, label %block_400ecb

block_400ecb:                                     ; preds = %block_400eb0
  %630 = add i64 %629, 401
  %631 = load i64, i64* %PC
  %632 = add i64 %631, 5
  %633 = load i64, i64* %PC
  %634 = add i64 %633, 5
  store i64 %634, i64* %PC
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %636 = load i64, i64* %635, align 8, !tbaa !2428
  %637 = add i64 %636, -8
  %638 = inttoptr i64 %637 to i64*
  store i64 %632, i64* %638
  store i64 %637, i64* %635, align 8, !tbaa !2428
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %630, i64* %639, align 8, !tbaa !2428
  %640 = load i64, i64* %PC
  %641 = call %struct.Memory* @sub_401060_list_first_renamed_(%struct.State* %0, i64 %640, %struct.Memory* %576)
  %642 = load i64, i64* %PC
  %643 = add i64 %642, 10
  store i64 %643, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4011a0__rodata_type* @seg_4011a0__rodata to i64), i64 186), i64* %RDI, align 8, !tbaa !2428
  %644 = load i64, i64* %PC
  %645 = add i64 %644, 5
  store i64 %645, i64* %PC
  store i64 100, i64* %RSI, align 8, !tbaa !2428
  %646 = load i64, i64* %RAX
  %647 = load i64, i64* %PC
  %648 = add i64 %647, 2
  store i64 %648, i64* %PC
  %649 = inttoptr i64 %646 to i32*
  %650 = load i32, i32* %649
  %651 = zext i32 %650 to i64
  store i64 %651, i64* %RDX, align 8, !tbaa !2428
  %652 = load i64, i64* %PC
  %653 = add i64 %652, 2
  store i64 %653, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %654 = load i64, i64* %PC
  %655 = sub i64 %654, 2503
  %656 = load i64, i64* %PC
  %657 = add i64 %656, 5
  %658 = load i64, i64* %PC
  %659 = add i64 %658, 5
  store i64 %659, i64* %PC
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %661 = load i64, i64* %660, align 8, !tbaa !2428
  %662 = add i64 %661, -8
  %663 = inttoptr i64 %662 to i64*
  store i64 %657, i64* %663
  store i64 %662, i64* %660, align 8, !tbaa !2428
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %655, i64* %664, align 8, !tbaa !2428
  %665 = load i64, i64* %PC
  %666 = call %struct.Memory* @ext_6020a8_printf(%struct.State* %0, i64 %665, %struct.Memory* %641)
  %667 = load i64, i64* %PC
  %668 = add i64 %667, 5
  store i64 %668, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %669 = load i64, i64* %RBP
  %670 = sub i64 %669, 72
  %671 = load i32, i32* %EAX
  %672 = zext i32 %671 to i64
  %673 = load i64, i64* %PC
  %674 = add i64 %673, 3
  store i64 %674, i64* %PC
  %675 = inttoptr i64 %670 to i32*
  store i32 %671, i32* %675
  %676 = load i64, i64* %PC
  %677 = sub i64 %676, 2468
  %678 = load i64, i64* %PC
  %679 = add i64 %678, 5
  %680 = load i64, i64* %PC
  %681 = add i64 %680, 5
  store i64 %681, i64* %PC
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %683 = load i64, i64* %682, align 8, !tbaa !2428
  %684 = add i64 %683, -8
  %685 = inttoptr i64 %684 to i64*
  store i64 %679, i64* %685
  store i64 %684, i64* %682, align 8, !tbaa !2428
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %677, i64* %686, align 8, !tbaa !2428
  %687 = load i64, i64* %PC
  %688 = call %struct.Memory* @ext_602090_exit(%struct.State* %0, i64 %687, %struct.Memory* %666)
  %689 = load i64, i64* %PC
  %690 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %689, %struct.Memory* %688)
  ret %struct.Memory* %690

block_400f79:                                     ; preds = %block_400f39
  %691 = sub i64 %534, 669
  %692 = load i64, i64* %PC
  %693 = add i64 %692, 5
  %694 = load i64, i64* %PC
  %695 = add i64 %694, 5
  store i64 %695, i64* %PC
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %697 = load i64, i64* %696, align 8, !tbaa !2428
  %698 = add i64 %697, -8
  %699 = inttoptr i64 %698 to i64*
  store i64 %693, i64* %699
  store i64 %698, i64* %696, align 8, !tbaa !2428
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %691, i64* %700, align 8, !tbaa !2428
  %701 = load i64, i64* %PC
  %702 = call %struct.Memory* @sub_400ce0_list_last_renamed_(%struct.State* %0, i64 %701, %struct.Memory* %481)
  %703 = load i64, i64* %RAX
  %704 = load i64, i64* %PC
  %705 = add i64 %704, 3
  store i64 %705, i64* %PC
  %706 = inttoptr i64 %703 to i32*
  %707 = load i32, i32* %706
  %708 = sub i32 %707, 1
  %709 = icmp ult i32 %707, 1
  %710 = zext i1 %709 to i8
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %710, i8* %711, align 1, !tbaa !2432
  %712 = and i32 %708, 255
  %713 = call i32 @llvm.ctpop.i32(i32 %712) #16
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = xor i8 %715, 1
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %716, i8* %717, align 1, !tbaa !2446
  %718 = xor i32 %707, 1
  %719 = xor i32 %718, %708
  %720 = lshr i32 %719, 4
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %722, i8* %723, align 1, !tbaa !2447
  %724 = icmp eq i32 %708, 0
  %725 = zext i1 %724 to i8
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %725, i8* %726, align 1, !tbaa !2448
  %727 = lshr i32 %708, 31
  %728 = trunc i32 %727 to i8
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %728, i8* %729, align 1, !tbaa !2449
  %730 = lshr i32 %707, 31
  %731 = xor i32 %727, %730
  %732 = add nuw nsw i32 %731, %730
  %733 = icmp eq i32 %732, 2
  %734 = zext i1 %733 to i8
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %734, i8* %735, align 1, !tbaa !2450
  %736 = load i64, i64* %PC
  %737 = add i64 %736, 52
  %738 = load i64, i64* %PC
  %739 = add i64 %738, 6
  %740 = load i64, i64* %PC
  %741 = add i64 %740, 6
  store i64 %741, i64* %PC
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %743 = load i8, i8* %742, align 1, !tbaa !2448
  store i8 %743, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %745 = icmp ne i8 %743, 0
  %746 = select i1 %745, i64 %737, i64 %739
  store i64 %746, i64* %744, align 8, !tbaa !2428
  %747 = load i8, i8* %BRANCH_TAKEN
  %748 = icmp eq i8 %747, 1
  %749 = load i64, i64* %RBP
  br i1 %748, label %block_400fb9, label %block_400f8b

block_400ef9:                                     ; preds = %block_400eb0
  %750 = sub i64 %629, 541
  %751 = load i64, i64* %PC
  %752 = add i64 %751, 5
  %753 = load i64, i64* %PC
  %754 = add i64 %753, 5
  store i64 %754, i64* %PC
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %756 = load i64, i64* %755, align 8, !tbaa !2428
  %757 = add i64 %756, -8
  %758 = inttoptr i64 %757 to i64*
  store i64 %752, i64* %758
  store i64 %757, i64* %755, align 8, !tbaa !2428
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %750, i64* %759, align 8, !tbaa !2428
  %760 = load i64, i64* %PC
  %761 = call %struct.Memory* @sub_400ce0_list_last_renamed_(%struct.State* %0, i64 %760, %struct.Memory* %576)
  %762 = load i64, i64* %RAX
  %763 = load i64, i64* %PC
  %764 = add i64 %763, 3
  store i64 %764, i64* %PC
  %765 = inttoptr i64 %762 to i32*
  %766 = load i32, i32* %765
  %767 = sub i32 %766, 1
  %768 = icmp ult i32 %766, 1
  %769 = zext i1 %768 to i8
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %769, i8* %770, align 1, !tbaa !2432
  %771 = and i32 %767, 255
  %772 = call i32 @llvm.ctpop.i32(i32 %771) #16
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  %775 = xor i8 %774, 1
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %775, i8* %776, align 1, !tbaa !2446
  %777 = xor i32 %766, 1
  %778 = xor i32 %777, %767
  %779 = lshr i32 %778, 4
  %780 = trunc i32 %779 to i8
  %781 = and i8 %780, 1
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %781, i8* %782, align 1, !tbaa !2447
  %783 = icmp eq i32 %767, 0
  %784 = zext i1 %783 to i8
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %784, i8* %785, align 1, !tbaa !2448
  %786 = lshr i32 %767, 31
  %787 = trunc i32 %786 to i8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %787, i8* %788, align 1, !tbaa !2449
  %789 = lshr i32 %766, 31
  %790 = xor i32 %786, %789
  %791 = add nuw nsw i32 %790, %789
  %792 = icmp eq i32 %791, 2
  %793 = zext i1 %792 to i8
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %793, i8* %794, align 1, !tbaa !2450
  %795 = load i64, i64* %PC
  %796 = add i64 %795, 52
  %797 = load i64, i64* %PC
  %798 = add i64 %797, 6
  %799 = load i64, i64* %PC
  %800 = add i64 %799, 6
  store i64 %800, i64* %PC
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %802 = load i8, i8* %801, align 1, !tbaa !2448
  store i8 %802, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %804 = icmp ne i8 %802, 0
  %805 = select i1 %804, i64 %796, i64 %798
  store i64 %805, i64* %803, align 8, !tbaa !2428
  %806 = load i8, i8* %BRANCH_TAKEN
  %807 = icmp eq i8 %806, 1
  %808 = load i64, i64* %RBP
  br i1 %807, label %block_400f39, label %block_400f0b

block_400f8b:                                     ; preds = %block_400f79
  %809 = sub i64 %749, 24
  %810 = load i64, i64* %PC
  %811 = add i64 %810, 4
  store i64 %811, i64* %PC
  %812 = inttoptr i64 %809 to i64*
  %813 = load i64, i64* %812
  store i64 %813, i64* %RDI, align 8, !tbaa !2428
  %814 = load i64, i64* %PC
  %815 = sub i64 %814, 687
  %816 = load i64, i64* %PC
  %817 = add i64 %816, 5
  %818 = load i64, i64* %PC
  %819 = add i64 %818, 5
  store i64 %819, i64* %PC
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %821 = load i64, i64* %820, align 8, !tbaa !2428
  %822 = add i64 %821, -8
  %823 = inttoptr i64 %822 to i64*
  store i64 %817, i64* %823
  store i64 %822, i64* %820, align 8, !tbaa !2428
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %815, i64* %824, align 8, !tbaa !2428
  %825 = load i64, i64* %PC
  %826 = call %struct.Memory* @sub_400ce0_list_last_renamed_(%struct.State* %0, i64 %825, %struct.Memory* %702)
  %827 = load i64, i64* %PC
  %828 = add i64 %827, 10
  store i64 %828, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4011a0__rodata_type* @seg_4011a0__rodata to i64), i64 228), i64* %RDI, align 8, !tbaa !2428
  %829 = load i64, i64* %PC
  %830 = add i64 %829, 5
  store i64 %830, i64* %PC
  store i64 100, i64* %RSI, align 8, !tbaa !2428
  %831 = load i64, i64* %RAX
  %832 = load i64, i64* %PC
  %833 = add i64 %832, 2
  store i64 %833, i64* %PC
  %834 = inttoptr i64 %831 to i32*
  %835 = load i32, i32* %834
  %836 = zext i32 %835 to i64
  store i64 %836, i64* %RDX, align 8, !tbaa !2428
  %837 = load i64, i64* %PC
  %838 = add i64 %837, 2
  store i64 %838, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %839 = load i64, i64* %PC
  %840 = sub i64 %839, 2695
  %841 = load i64, i64* %PC
  %842 = add i64 %841, 5
  %843 = load i64, i64* %PC
  %844 = add i64 %843, 5
  store i64 %844, i64* %PC
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %846 = load i64, i64* %845, align 8, !tbaa !2428
  %847 = add i64 %846, -8
  %848 = inttoptr i64 %847 to i64*
  store i64 %842, i64* %848
  store i64 %847, i64* %845, align 8, !tbaa !2428
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %840, i64* %849, align 8, !tbaa !2428
  %850 = load i64, i64* %PC
  %851 = call %struct.Memory* @ext_6020a8_printf(%struct.State* %0, i64 %850, %struct.Memory* %826)
  %852 = load i64, i64* %PC
  %853 = add i64 %852, 5
  store i64 %853, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %854 = load i64, i64* %RBP
  %855 = sub i64 %854, 84
  %856 = load i32, i32* %EAX
  %857 = zext i32 %856 to i64
  %858 = load i64, i64* %PC
  %859 = add i64 %858, 3
  store i64 %859, i64* %PC
  %860 = inttoptr i64 %855 to i32*
  store i32 %856, i32* %860
  %861 = load i64, i64* %PC
  %862 = sub i64 %861, 2660
  %863 = load i64, i64* %PC
  %864 = add i64 %863, 5
  %865 = load i64, i64* %PC
  %866 = add i64 %865, 5
  store i64 %866, i64* %PC
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %868 = load i64, i64* %867, align 8, !tbaa !2428
  %869 = add i64 %868, -8
  %870 = inttoptr i64 %869 to i64*
  store i64 %864, i64* %870
  store i64 %869, i64* %867, align 8, !tbaa !2428
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %862, i64* %871, align 8, !tbaa !2428
  %872 = load i64, i64* %PC
  %873 = call %struct.Memory* @ext_602090_exit(%struct.State* %0, i64 %872, %struct.Memory* %851)
  %874 = load i64, i64* %PC
  %875 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %874, %struct.Memory* %873)
  ret %struct.Memory* %875

block_400d9e:                                     ; preds = %block_400d50
  %876 = add i64 %212, 10
  store i64 %876, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4011a0__rodata_type* @seg_4011a0__rodata to i64), i64 109), i64* %RDI, align 8, !tbaa !2428
  %877 = load i64, i64* %PC
  %878 = add i64 %877, 2
  store i64 %878, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %879 = load i64, i64* %PC
  %880 = sub i64 %879, 2186
  %881 = load i64, i64* %PC
  %882 = add i64 %881, 5
  %883 = load i64, i64* %PC
  %884 = add i64 %883, 5
  store i64 %884, i64* %PC
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %886 = load i64, i64* %885, align 8, !tbaa !2428
  %887 = add i64 %886, -8
  %888 = inttoptr i64 %887 to i64*
  store i64 %882, i64* %888
  store i64 %887, i64* %885, align 8, !tbaa !2428
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %880, i64* %889, align 8, !tbaa !2428
  %890 = load i64, i64* %PC
  %891 = call %struct.Memory* @ext_6020a8_printf(%struct.State* %0, i64 %890, %struct.Memory* %173)
  %892 = load i64, i64* %PC
  %893 = add i64 %892, 5
  store i64 %893, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %894 = load i64, i64* %RBP
  %895 = sub i64 %894, 36
  %896 = load i32, i32* %EAX
  %897 = zext i32 %896 to i64
  %898 = load i64, i64* %PC
  %899 = add i64 %898, 3
  store i64 %899, i64* %PC
  %900 = inttoptr i64 %895 to i32*
  store i32 %896, i32* %900
  %901 = load i64, i64* %PC
  %902 = sub i64 %901, 2151
  %903 = load i64, i64* %PC
  %904 = add i64 %903, 5
  %905 = load i64, i64* %PC
  %906 = add i64 %905, 5
  store i64 %906, i64* %PC
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %908 = load i64, i64* %907, align 8, !tbaa !2428
  %909 = add i64 %908, -8
  %910 = inttoptr i64 %909 to i64*
  store i64 %904, i64* %910
  store i64 %909, i64* %907, align 8, !tbaa !2428
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %902, i64* %911, align 8, !tbaa !2428
  %912 = load i64, i64* %PC
  %913 = call %struct.Memory* @ext_602090_exit(%struct.State* %0, i64 %912, %struct.Memory* %891)
  %914 = load i64, i64* %PC
  %915 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %914, %struct.Memory* %913)
  ret %struct.Memory* %915

block_400fcb:                                     ; preds = %block_400fb9
  %916 = load i64, i64* %PC
  %917 = sub i64 %916, 2159
  %918 = load i64, i64* %PC
  %919 = add i64 %918, 5
  %920 = load i64, i64* %PC
  %921 = add i64 %920, 5
  store i64 %921, i64* %PC
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %923 = load i64, i64* %922, align 8, !tbaa !2428
  %924 = add i64 %923, -8
  %925 = inttoptr i64 %924 to i64*
  store i64 %919, i64* %925
  store i64 %924, i64* %922, align 8, !tbaa !2428
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %917, i64* %926, align 8, !tbaa !2428
  %927 = load i64, i64* %PC
  %928 = call %struct.Memory* @sub_400760_list_length_renamed_(%struct.State* %0, i64 %927, %struct.Memory* %1324)
  %929 = load i64, i64* %PC
  %930 = add i64 %929, 10
  store i64 %930, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4011a0__rodata_type* @seg_4011a0__rodata to i64), i64 307), i64* %RDI, align 8, !tbaa !2428
  %931 = load i64, i64* %PC
  %932 = add i64 %931, 5
  store i64 %932, i64* %PC
  store i64 100, i64* %RSI, align 8, !tbaa !2428
  %933 = load i32, i32* %EAX
  %934 = zext i32 %933 to i64
  %935 = load i64, i64* %PC
  %936 = add i64 %935, 2
  store i64 %936, i64* %PC
  %937 = and i64 %934, 4294967295
  store i64 %937, i64* %RDX, align 8, !tbaa !2428
  %938 = load i64, i64* %PC
  %939 = add i64 %938, 2
  store i64 %939, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %940 = load i64, i64* %PC
  %941 = sub i64 %940, 2759
  %942 = load i64, i64* %PC
  %943 = add i64 %942, 5
  %944 = load i64, i64* %PC
  %945 = add i64 %944, 5
  store i64 %945, i64* %PC
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %947 = load i64, i64* %946, align 8, !tbaa !2428
  %948 = add i64 %947, -8
  %949 = inttoptr i64 %948 to i64*
  store i64 %943, i64* %949
  store i64 %948, i64* %946, align 8, !tbaa !2428
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %941, i64* %950, align 8, !tbaa !2428
  %951 = load i64, i64* %PC
  %952 = call %struct.Memory* @ext_6020a8_printf(%struct.State* %0, i64 %951, %struct.Memory* %928)
  %953 = load i64, i64* %PC
  %954 = add i64 %953, 5
  store i64 %954, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %955 = load i64, i64* %RBP
  %956 = sub i64 %955, 88
  %957 = load i32, i32* %EAX
  %958 = zext i32 %957 to i64
  %959 = load i64, i64* %PC
  %960 = add i64 %959, 3
  store i64 %960, i64* %PC
  %961 = inttoptr i64 %956 to i32*
  store i32 %957, i32* %961
  %962 = load i64, i64* %PC
  %963 = sub i64 %962, 2724
  %964 = load i64, i64* %PC
  %965 = add i64 %964, 5
  %966 = load i64, i64* %PC
  %967 = add i64 %966, 5
  store i64 %967, i64* %PC
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %969 = load i64, i64* %968, align 8, !tbaa !2428
  %970 = add i64 %969, -8
  %971 = inttoptr i64 %970 to i64*
  store i64 %965, i64* %971
  store i64 %970, i64* %968, align 8, !tbaa !2428
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %963, i64* %972, align 8, !tbaa !2428
  %973 = load i64, i64* %PC
  %974 = call %struct.Memory* @ext_602090_exit(%struct.State* %0, i64 %973, %struct.Memory* %952)
  %975 = load i64, i64* %PC
  %976 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %975, %struct.Memory* %974)
  ret %struct.Memory* %976

block_400dc1:                                     ; preds = %block_400dbc, %block_400de1
  %MEMORY.0 = phi %struct.Memory* [ %173, %block_400dbc ], [ %454, %block_400de1 ]
  %977 = load i64, i64* %RBP
  %978 = sub i64 %977, 24
  %979 = load i64, i64* %PC
  %980 = add i64 %979, 4
  store i64 %980, i64* %PC
  %981 = inttoptr i64 %978 to i64*
  %982 = load i64, i64* %981
  store i64 %982, i64* %RDI, align 8, !tbaa !2428
  %983 = load i64, i64* %PC
  %984 = sub i64 %983, 1685
  %985 = load i64, i64* %PC
  %986 = add i64 %985, 5
  %987 = load i64, i64* %PC
  %988 = add i64 %987, 5
  store i64 %988, i64* %PC
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %990 = load i64, i64* %989, align 8, !tbaa !2428
  %991 = add i64 %990, -8
  %992 = inttoptr i64 %991 to i64*
  store i64 %986, i64* %992
  store i64 %991, i64* %989, align 8, !tbaa !2428
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %984, i64* %993, align 8, !tbaa !2428
  %994 = load i64, i64* %PC
  %995 = call %struct.Memory* @sub_400730_list_empty_renamed_(%struct.State* %0, i64 %994, %struct.Memory* %MEMORY.0)
  %996 = load i32, i32* %EAX
  %997 = zext i32 %996 to i64
  %998 = load i64, i64* %PC
  %999 = add i64 %998, 3
  store i64 %999, i64* %PC
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1000, align 1, !tbaa !2432
  %1001 = and i32 %996, 255
  %1002 = call i32 @llvm.ctpop.i32(i32 %1001) #16
  %1003 = trunc i32 %1002 to i8
  %1004 = and i8 %1003, 1
  %1005 = xor i8 %1004, 1
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1005, i8* %1006, align 1, !tbaa !2446
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1007, align 1, !tbaa !2447
  %1008 = icmp eq i32 %996, 0
  %1009 = zext i1 %1008 to i8
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1009, i8* %1010, align 1, !tbaa !2448
  %1011 = lshr i32 %996, 31
  %1012 = trunc i32 %1011 to i8
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1012, i8* %1013, align 1, !tbaa !2449
  %1014 = lshr i32 %996, 31
  %1015 = xor i32 %1011, %1014
  %1016 = add nuw nsw i32 %1015, %1014
  %1017 = icmp eq i32 %1016, 2
  %1018 = zext i1 %1017 to i8
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1018, i8* %1019, align 1, !tbaa !2450
  %1020 = load i64, i64* %PC
  %1021 = add i64 %1020, 3
  store i64 %1021, i64* %PC
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1023 = load i8, i8* %1022, align 1, !tbaa !2448
  %1024 = icmp eq i8 %1023, 0
  %1025 = zext i1 %1024 to i8
  store i8 %1025, i8* %CL, align 1, !tbaa !2451
  %1026 = load i8, i8* %CL
  %1027 = zext i8 %1026 to i64
  %1028 = load i64, i64* %PC
  %1029 = add i64 %1028, 3
  store i64 %1029, i64* %PC
  %1030 = xor i64 255, %1027
  %1031 = trunc i64 %1030 to i8
  store i8 %1031, i8* %CL, align 1, !tbaa !2451
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1032, align 1, !tbaa !2432
  %1033 = trunc i64 %1030 to i32
  %1034 = and i32 %1033, 255
  %1035 = call i32 @llvm.ctpop.i32(i32 %1034) #16
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = xor i8 %1037, 1
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1038, i8* %1039, align 1, !tbaa !2446
  %1040 = icmp eq i8 %1031, 0
  %1041 = zext i1 %1040 to i8
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1041, i8* %1042, align 1, !tbaa !2448
  %1043 = lshr i8 %1031, 7
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1043, i8* %1044, align 1, !tbaa !2449
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1045, align 1, !tbaa !2450
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1046, align 1, !tbaa !2447
  %1047 = load i8, i8* %CL
  %1048 = zext i8 %1047 to i64
  %1049 = load i64, i64* %PC
  %1050 = add i64 %1049, 3
  store i64 %1050, i64* %PC
  %1051 = and i64 1, %1048
  %1052 = trunc i64 %1051 to i8
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1053, align 1, !tbaa !2432
  %1054 = trunc i64 %1051 to i32
  %1055 = and i32 %1054, 255
  %1056 = call i32 @llvm.ctpop.i32(i32 %1055) #16
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  %1059 = xor i8 %1058, 1
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1059, i8* %1060, align 1, !tbaa !2446
  %1061 = icmp eq i8 %1052, 0
  %1062 = zext i1 %1061 to i8
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1062, i8* %1063, align 1, !tbaa !2448
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1064, align 1, !tbaa !2449
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1065, align 1, !tbaa !2450
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1066, align 1, !tbaa !2447
  %1067 = load i64, i64* %PC
  %1068 = add i64 %1067, 11
  %1069 = load i64, i64* %PC
  %1070 = add i64 %1069, 6
  %1071 = load i64, i64* %PC
  %1072 = add i64 %1071, 6
  store i64 %1072, i64* %PC
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1074 = load i8, i8* %1073, align 1, !tbaa !2448
  %1075 = icmp eq i8 %1074, 0
  %1076 = zext i1 %1075 to i8
  store i8 %1076, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1078 = select i1 %1075, i64 %1068, i64 %1070
  store i64 %1078, i64* %1077, align 8, !tbaa !2428
  %1079 = load i8, i8* %BRANCH_TAKEN
  %1080 = icmp eq i8 %1079, 1
  br i1 %1080, label %block_400de1, label %block_400ddc

block_400e18:                                     ; preds = %block_400ddc
  %1081 = add i64 %275, 10
  store i64 %1081, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4011a0__rodata_type* @seg_4011a0__rodata to i64), i64 136), i64* %RDI, align 8, !tbaa !2428
  %1082 = load i64, i64* %PC
  %1083 = add i64 %1082, 2
  store i64 %1083, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1084 = load i64, i64* %PC
  %1085 = sub i64 %1084, 2308
  %1086 = load i64, i64* %PC
  %1087 = add i64 %1086, 5
  %1088 = load i64, i64* %PC
  %1089 = add i64 %1088, 5
  store i64 %1089, i64* %PC
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1091 = load i64, i64* %1090, align 8, !tbaa !2428
  %1092 = add i64 %1091, -8
  %1093 = inttoptr i64 %1092 to i64*
  store i64 %1087, i64* %1093
  store i64 %1092, i64* %1090, align 8, !tbaa !2428
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1085, i64* %1094, align 8, !tbaa !2428
  %1095 = load i64, i64* %PC
  %1096 = call %struct.Memory* @ext_6020a8_printf(%struct.State* %0, i64 %1095, %struct.Memory* %236)
  %1097 = load i64, i64* %PC
  %1098 = add i64 %1097, 5
  store i64 %1098, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %1099 = load i64, i64* %RBP
  %1100 = sub i64 %1099, 52
  %1101 = load i32, i32* %EAX
  %1102 = zext i32 %1101 to i64
  %1103 = load i64, i64* %PC
  %1104 = add i64 %1103, 3
  store i64 %1104, i64* %PC
  %1105 = inttoptr i64 %1100 to i32*
  store i32 %1101, i32* %1105
  %1106 = load i64, i64* %PC
  %1107 = sub i64 %1106, 2273
  %1108 = load i64, i64* %PC
  %1109 = add i64 %1108, 5
  %1110 = load i64, i64* %PC
  %1111 = add i64 %1110, 5
  store i64 %1111, i64* %PC
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1113 = load i64, i64* %1112, align 8, !tbaa !2428
  %1114 = add i64 %1113, -8
  %1115 = inttoptr i64 %1114 to i64*
  store i64 %1109, i64* %1115
  store i64 %1114, i64* %1112, align 8, !tbaa !2428
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1107, i64* %1116, align 8, !tbaa !2428
  %1117 = load i64, i64* %PC
  %1118 = call %struct.Memory* @ext_602090_exit(%struct.State* %0, i64 %1117, %struct.Memory* %1096)
  %1119 = load i64, i64* %PC
  %1120 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %1119, %struct.Memory* %1118)
  ret %struct.Memory* %1120

block_400e3b:                                     ; preds = %block_400e36, %block_400e5b
  %MEMORY.1 = phi %struct.Memory* [ %236, %block_400e36 ], [ %331, %block_400e5b ]
  %1121 = load i64, i64* %RBP
  %1122 = sub i64 %1121, 32
  %1123 = load i64, i64* %PC
  %1124 = add i64 %1123, 4
  store i64 %1124, i64* %PC
  %1125 = inttoptr i64 %1122 to i64*
  %1126 = load i64, i64* %1125
  store i64 %1126, i64* %RDI, align 8, !tbaa !2428
  %1127 = load i64, i64* %PC
  %1128 = sub i64 %1127, 1807
  %1129 = load i64, i64* %PC
  %1130 = add i64 %1129, 5
  %1131 = load i64, i64* %PC
  %1132 = add i64 %1131, 5
  store i64 %1132, i64* %PC
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1134 = load i64, i64* %1133, align 8, !tbaa !2428
  %1135 = add i64 %1134, -8
  %1136 = inttoptr i64 %1135 to i64*
  store i64 %1130, i64* %1136
  store i64 %1135, i64* %1133, align 8, !tbaa !2428
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1128, i64* %1137, align 8, !tbaa !2428
  %1138 = load i64, i64* %PC
  %1139 = call %struct.Memory* @sub_400730_list_empty_renamed_(%struct.State* %0, i64 %1138, %struct.Memory* %MEMORY.1)
  %1140 = load i32, i32* %EAX
  %1141 = zext i32 %1140 to i64
  %1142 = load i64, i64* %PC
  %1143 = add i64 %1142, 3
  store i64 %1143, i64* %PC
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1144, align 1, !tbaa !2432
  %1145 = and i32 %1140, 255
  %1146 = call i32 @llvm.ctpop.i32(i32 %1145) #16
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  %1149 = xor i8 %1148, 1
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1149, i8* %1150, align 1, !tbaa !2446
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1151, align 1, !tbaa !2447
  %1152 = icmp eq i32 %1140, 0
  %1153 = zext i1 %1152 to i8
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1153, i8* %1154, align 1, !tbaa !2448
  %1155 = lshr i32 %1140, 31
  %1156 = trunc i32 %1155 to i8
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1156, i8* %1157, align 1, !tbaa !2449
  %1158 = lshr i32 %1140, 31
  %1159 = xor i32 %1155, %1158
  %1160 = add nuw nsw i32 %1159, %1158
  %1161 = icmp eq i32 %1160, 2
  %1162 = zext i1 %1161 to i8
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1162, i8* %1163, align 1, !tbaa !2450
  %1164 = load i64, i64* %PC
  %1165 = add i64 %1164, 3
  store i64 %1165, i64* %PC
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1167 = load i8, i8* %1166, align 1, !tbaa !2448
  %1168 = icmp eq i8 %1167, 0
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %CL, align 1, !tbaa !2451
  %1170 = load i8, i8* %CL
  %1171 = zext i8 %1170 to i64
  %1172 = load i64, i64* %PC
  %1173 = add i64 %1172, 3
  store i64 %1173, i64* %PC
  %1174 = xor i64 255, %1171
  %1175 = trunc i64 %1174 to i8
  store i8 %1175, i8* %CL, align 1, !tbaa !2451
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1176, align 1, !tbaa !2432
  %1177 = trunc i64 %1174 to i32
  %1178 = and i32 %1177, 255
  %1179 = call i32 @llvm.ctpop.i32(i32 %1178) #16
  %1180 = trunc i32 %1179 to i8
  %1181 = and i8 %1180, 1
  %1182 = xor i8 %1181, 1
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1182, i8* %1183, align 1, !tbaa !2446
  %1184 = icmp eq i8 %1175, 0
  %1185 = zext i1 %1184 to i8
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1185, i8* %1186, align 1, !tbaa !2448
  %1187 = lshr i8 %1175, 7
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1187, i8* %1188, align 1, !tbaa !2449
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1189, align 1, !tbaa !2450
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1190, align 1, !tbaa !2447
  %1191 = load i8, i8* %CL
  %1192 = zext i8 %1191 to i64
  %1193 = load i64, i64* %PC
  %1194 = add i64 %1193, 3
  store i64 %1194, i64* %PC
  %1195 = and i64 1, %1192
  %1196 = trunc i64 %1195 to i8
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1197, align 1, !tbaa !2432
  %1198 = trunc i64 %1195 to i32
  %1199 = and i32 %1198, 255
  %1200 = call i32 @llvm.ctpop.i32(i32 %1199) #16
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1203, i8* %1204, align 1, !tbaa !2446
  %1205 = icmp eq i8 %1196, 0
  %1206 = zext i1 %1205 to i8
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1206, i8* %1207, align 1, !tbaa !2448
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1208, align 1, !tbaa !2449
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1209, align 1, !tbaa !2450
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1210, align 1, !tbaa !2447
  %1211 = load i64, i64* %PC
  %1212 = add i64 %1211, 11
  %1213 = load i64, i64* %PC
  %1214 = add i64 %1213, 6
  %1215 = load i64, i64* %PC
  %1216 = add i64 %1215, 6
  store i64 %1216, i64* %PC
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1218 = load i8, i8* %1217, align 1, !tbaa !2448
  %1219 = icmp eq i8 %1218, 0
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1222 = select i1 %1219, i64 %1212, i64 %1214
  store i64 %1222, i64* %1221, align 8, !tbaa !2428
  %1223 = load i8, i8* %BRANCH_TAKEN
  %1224 = icmp eq i8 %1223, 1
  br i1 %1224, label %block_400e5b, label %block_400e56

block_400e92:                                     ; preds = %block_400e56
  %1225 = load i64, i64* %PC
  %1226 = add i64 %1225, 10
  store i64 %1226, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4011a0__rodata_type* @seg_4011a0__rodata to i64), i64 161), i64* %RDI, align 8, !tbaa !2428
  %1227 = load i64, i64* %PC
  %1228 = add i64 %1227, 2
  store i64 %1228, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1229 = load i64, i64* %PC
  %1230 = sub i64 %1229, 2430
  %1231 = load i64, i64* %PC
  %1232 = add i64 %1231, 5
  %1233 = load i64, i64* %PC
  %1234 = add i64 %1233, 5
  store i64 %1234, i64* %PC
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1236 = load i64, i64* %1235, align 8, !tbaa !2428
  %1237 = add i64 %1236, -8
  %1238 = inttoptr i64 %1237 to i64*
  store i64 %1232, i64* %1238
  store i64 %1237, i64* %1235, align 8, !tbaa !2428
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1230, i64* %1239, align 8, !tbaa !2428
  %1240 = load i64, i64* %PC
  %1241 = call %struct.Memory* @ext_6020a8_printf(%struct.State* %0, i64 %1240, %struct.Memory* %360)
  %1242 = load i64, i64* %PC
  %1243 = add i64 %1242, 5
  store i64 %1243, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %1244 = load i64, i64* %RBP
  %1245 = sub i64 %1244, 68
  %1246 = load i32, i32* %EAX
  %1247 = zext i32 %1246 to i64
  %1248 = load i64, i64* %PC
  %1249 = add i64 %1248, 3
  store i64 %1249, i64* %PC
  %1250 = inttoptr i64 %1245 to i32*
  store i32 %1246, i32* %1250
  %1251 = load i64, i64* %PC
  %1252 = sub i64 %1251, 2395
  %1253 = load i64, i64* %PC
  %1254 = add i64 %1253, 5
  %1255 = load i64, i64* %PC
  %1256 = add i64 %1255, 5
  store i64 %1256, i64* %PC
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1258 = load i64, i64* %1257, align 8, !tbaa !2428
  %1259 = add i64 %1258, -8
  %1260 = inttoptr i64 %1259 to i64*
  store i64 %1254, i64* %1260
  store i64 %1259, i64* %1257, align 8, !tbaa !2428
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1252, i64* %1261, align 8, !tbaa !2428
  %1262 = load i64, i64* %PC
  %1263 = call %struct.Memory* @ext_602090_exit(%struct.State* %0, i64 %1262, %struct.Memory* %1241)
  %1264 = load i64, i64* %PC
  %1265 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %1264, %struct.Memory* %1263)
  ret %struct.Memory* %1265

block_40100f:                                     ; preds = %block_400ff9
  %1266 = load i64, i64* %PC
  %1267 = add i64 %1266, 10
  store i64 %1267, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4011a0__rodata_type* @seg_4011a0__rodata to i64), i64 342), i64* %RDI, align 8, !tbaa !2428
  %1268 = load i64, i64* %PC
  %1269 = add i64 %1268, 2
  store i64 %1269, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1270 = load i64, i64* %PC
  %1271 = sub i64 %1270, 2811
  %1272 = load i64, i64* %PC
  %1273 = add i64 %1272, 5
  %1274 = load i64, i64* %PC
  %1275 = add i64 %1274, 5
  store i64 %1275, i64* %PC
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1277 = load i64, i64* %1276, align 8, !tbaa !2428
  %1278 = add i64 %1277, -8
  %1279 = inttoptr i64 %1278 to i64*
  store i64 %1273, i64* %1279
  store i64 %1278, i64* %1276, align 8, !tbaa !2428
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1271, i64* %1280, align 8, !tbaa !2428
  %1281 = load i64, i64* %PC
  %1282 = call %struct.Memory* @ext_6020a8_printf(%struct.State* %0, i64 %1281, %struct.Memory* %1601)
  %1283 = load i64, i64* %PC
  %1284 = add i64 %1283, 5
  store i64 %1284, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %1285 = load i64, i64* %RBP
  %1286 = sub i64 %1285, 92
  %1287 = load i32, i32* %EAX
  %1288 = zext i32 %1287 to i64
  %1289 = load i64, i64* %PC
  %1290 = add i64 %1289, 3
  store i64 %1290, i64* %PC
  %1291 = inttoptr i64 %1286 to i32*
  store i32 %1287, i32* %1291
  %1292 = load i64, i64* %PC
  %1293 = sub i64 %1292, 2776
  %1294 = load i64, i64* %PC
  %1295 = add i64 %1294, 5
  %1296 = load i64, i64* %PC
  %1297 = add i64 %1296, 5
  store i64 %1297, i64* %PC
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1299 = load i64, i64* %1298, align 8, !tbaa !2428
  %1300 = add i64 %1299, -8
  %1301 = inttoptr i64 %1300 to i64*
  store i64 %1295, i64* %1301
  store i64 %1300, i64* %1298, align 8, !tbaa !2428
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1293, i64* %1302, align 8, !tbaa !2428
  %1303 = load i64, i64* %PC
  %1304 = call %struct.Memory* @ext_602090_exit(%struct.State* %0, i64 %1303, %struct.Memory* %1282)
  %1305 = load i64, i64* %PC
  %1306 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %1305, %struct.Memory* %1304)
  ret %struct.Memory* %1306

block_400fb9:                                     ; preds = %block_400f79
  %1307 = sub i64 %749, 16
  %1308 = load i64, i64* %PC
  %1309 = add i64 %1308, 4
  store i64 %1309, i64* %PC
  %1310 = inttoptr i64 %1307 to i64*
  %1311 = load i64, i64* %1310
  store i64 %1311, i64* %RDI, align 8, !tbaa !2428
  %1312 = load i64, i64* %PC
  %1313 = sub i64 %1312, 2141
  %1314 = load i64, i64* %PC
  %1315 = add i64 %1314, 5
  %1316 = load i64, i64* %PC
  %1317 = add i64 %1316, 5
  store i64 %1317, i64* %PC
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1319 = load i64, i64* %1318, align 8, !tbaa !2428
  %1320 = add i64 %1319, -8
  %1321 = inttoptr i64 %1320 to i64*
  store i64 %1315, i64* %1321
  store i64 %1320, i64* %1318, align 8, !tbaa !2428
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1313, i64* %1322, align 8, !tbaa !2428
  %1323 = load i64, i64* %PC
  %1324 = call %struct.Memory* @sub_400760_list_length_renamed_(%struct.State* %0, i64 %1323, %struct.Memory* %702)
  %1325 = load i32, i32* %EAX
  %1326 = zext i32 %1325 to i64
  %1327 = load i64, i64* %PC
  %1328 = add i64 %1327, 3
  store i64 %1328, i64* %PC
  %1329 = sub i32 %1325, 100
  %1330 = icmp ult i32 %1325, 100
  %1331 = zext i1 %1330 to i8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1331, i8* %1332, align 1, !tbaa !2432
  %1333 = and i32 %1329, 255
  %1334 = call i32 @llvm.ctpop.i32(i32 %1333) #16
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = xor i8 %1336, 1
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1337, i8* %1338, align 1, !tbaa !2446
  %1339 = xor i64 100, %1326
  %1340 = trunc i64 %1339 to i32
  %1341 = xor i32 %1340, %1329
  %1342 = lshr i32 %1341, 4
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1344, i8* %1345, align 1, !tbaa !2447
  %1346 = icmp eq i32 %1329, 0
  %1347 = zext i1 %1346 to i8
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1347, i8* %1348, align 1, !tbaa !2448
  %1349 = lshr i32 %1329, 31
  %1350 = trunc i32 %1349 to i8
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1350, i8* %1351, align 1, !tbaa !2449
  %1352 = lshr i32 %1325, 31
  %1353 = xor i32 %1349, %1352
  %1354 = add nuw nsw i32 %1353, %1352
  %1355 = icmp eq i32 %1354, 2
  %1356 = zext i1 %1355 to i8
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1356, i8* %1357, align 1, !tbaa !2450
  %1358 = load i64, i64* %PC
  %1359 = add i64 %1358, 52
  %1360 = load i64, i64* %PC
  %1361 = add i64 %1360, 6
  %1362 = load i64, i64* %PC
  %1363 = add i64 %1362, 6
  store i64 %1363, i64* %PC
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1365 = load i8, i8* %1364, align 1, !tbaa !2448
  store i8 %1365, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1367 = icmp ne i8 %1365, 0
  %1368 = select i1 %1367, i64 %1359, i64 %1361
  store i64 %1368, i64* %1366, align 8, !tbaa !2428
  %1369 = load i8, i8* %BRANCH_TAKEN
  %1370 = icmp eq i8 %1369, 1
  %1371 = load i64, i64* %RBP
  %1372 = sub i64 %1371, 16
  %1373 = load i64, i64* %PC
  %1374 = add i64 %1373, 4
  store i64 %1374, i64* %PC
  %1375 = inttoptr i64 %1372 to i64*
  %1376 = load i64, i64* %1375
  store i64 %1376, i64* %RDI, align 8, !tbaa !2428
  br i1 %1370, label %block_400ff9, label %block_400fcb

block_40102d:                                     ; preds = %block_400ff9
  %1377 = load i64, i64* %RBP
  %1378 = sub i64 %1377, 16
  %1379 = load i64, i64* %PC
  %1380 = add i64 %1379, 4
  store i64 %1380, i64* %PC
  %1381 = inttoptr i64 %1378 to i64*
  %1382 = load i64, i64* %1381
  store i64 %1382, i64* %RDI, align 8, !tbaa !2428
  %1383 = load i64, i64* %PC
  %1384 = sub i64 %1383, 2257
  %1385 = load i64, i64* %PC
  %1386 = add i64 %1385, 5
  %1387 = load i64, i64* %PC
  %1388 = add i64 %1387, 5
  store i64 %1388, i64* %PC
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1390 = load i64, i64* %1389, align 8, !tbaa !2428
  %1391 = add i64 %1390, -8
  %1392 = inttoptr i64 %1391 to i64*
  store i64 %1386, i64* %1392
  store i64 %1391, i64* %1389, align 8, !tbaa !2428
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1384, i64* %1393, align 8, !tbaa !2428
  %1394 = load i64, i64* %PC
  %1395 = call %struct.Memory* @sub_400760_list_length_renamed_(%struct.State* %0, i64 %1394, %struct.Memory* %1601)
  %1396 = load i64, i64* %RBP
  %1397 = sub i64 %1396, 4
  %1398 = load i32, i32* %EAX
  %1399 = zext i32 %1398 to i64
  %1400 = load i64, i64* %PC
  %1401 = add i64 %1400, 3
  store i64 %1401, i64* %PC
  %1402 = inttoptr i64 %1397 to i32*
  store i32 %1398, i32* %1402
  %1403 = load i64, i64* %RBP
  %1404 = sub i64 %1403, 16
  %1405 = load i64, i64* %PC
  %1406 = add i64 %1405, 4
  store i64 %1406, i64* %PC
  %1407 = inttoptr i64 %1404 to i64*
  %1408 = load i64, i64* %1407
  store i64 %1408, i64* %RDI, align 8, !tbaa !2428
  %1409 = load i64, i64* %PC
  %1410 = sub i64 %1409, 2877
  %1411 = load i64, i64* %PC
  %1412 = add i64 %1411, 5
  %1413 = load i64, i64* %PC
  %1414 = add i64 %1413, 5
  store i64 %1414, i64* %PC
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1416 = load i64, i64* %1415, align 8, !tbaa !2428
  %1417 = add i64 %1416, -8
  %1418 = inttoptr i64 %1417 to i64*
  store i64 %1412, i64* %1418
  store i64 %1417, i64* %1415, align 8, !tbaa !2428
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1410, i64* %1419, align 8, !tbaa !2428
  %1420 = load i64, i64* %PC
  %1421 = call %struct.Memory* @ext_602098_free(%struct.State* %0, i64 %1420, %struct.Memory* %1395)
  %1422 = load i64, i64* %RBP
  %1423 = sub i64 %1422, 24
  %1424 = load i64, i64* %PC
  %1425 = add i64 %1424, 4
  store i64 %1425, i64* %PC
  %1426 = inttoptr i64 %1423 to i64*
  %1427 = load i64, i64* %1426
  store i64 %1427, i64* %RDI, align 8, !tbaa !2428
  %1428 = load i64, i64* %PC
  %1429 = sub i64 %1428, 2886
  %1430 = load i64, i64* %PC
  %1431 = add i64 %1430, 5
  %1432 = load i64, i64* %PC
  %1433 = add i64 %1432, 5
  store i64 %1433, i64* %PC
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1435 = load i64, i64* %1434, align 8, !tbaa !2428
  %1436 = add i64 %1435, -8
  %1437 = inttoptr i64 %1436 to i64*
  store i64 %1431, i64* %1437
  store i64 %1436, i64* %1434, align 8, !tbaa !2428
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1429, i64* %1438, align 8, !tbaa !2428
  %1439 = load i64, i64* %PC
  %1440 = call %struct.Memory* @ext_602098_free(%struct.State* %0, i64 %1439, %struct.Memory* %1421)
  %1441 = load i64, i64* %RBP
  %1442 = sub i64 %1441, 32
  %1443 = load i64, i64* %PC
  %1444 = add i64 %1443, 4
  store i64 %1444, i64* %PC
  %1445 = inttoptr i64 %1442 to i64*
  %1446 = load i64, i64* %1445
  store i64 %1446, i64* %RDI, align 8, !tbaa !2428
  %1447 = load i64, i64* %PC
  %1448 = sub i64 %1447, 2895
  %1449 = load i64, i64* %PC
  %1450 = add i64 %1449, 5
  %1451 = load i64, i64* %PC
  %1452 = add i64 %1451, 5
  store i64 %1452, i64* %PC
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1454 = load i64, i64* %1453, align 8, !tbaa !2428
  %1455 = add i64 %1454, -8
  %1456 = inttoptr i64 %1455 to i64*
  store i64 %1450, i64* %1456
  store i64 %1455, i64* %1453, align 8, !tbaa !2428
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1448, i64* %1457, align 8, !tbaa !2428
  %1458 = load i64, i64* %PC
  %1459 = call %struct.Memory* @ext_602098_free(%struct.State* %0, i64 %1458, %struct.Memory* %1440)
  %1460 = load i64, i64* %RBP
  %1461 = sub i64 %1460, 4
  %1462 = load i64, i64* %PC
  %1463 = add i64 %1462, 3
  store i64 %1463, i64* %PC
  %1464 = inttoptr i64 %1461 to i32*
  %1465 = load i32, i32* %1464
  %1466 = zext i32 %1465 to i64
  store i64 %1466, i64* %RAX, align 8, !tbaa !2428
  %1467 = load i64, i64* %RSP
  %1468 = load i64, i64* %PC
  %1469 = add i64 %1468, 4
  store i64 %1469, i64* %PC
  %1470 = add i64 96, %1467
  store i64 %1470, i64* %RSP, align 8, !tbaa !2428
  %1471 = icmp ult i64 %1470, %1467
  %1472 = icmp ult i64 %1470, 96
  %1473 = or i1 %1471, %1472
  %1474 = zext i1 %1473 to i8
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1474, i8* %1475, align 1, !tbaa !2432
  %1476 = trunc i64 %1470 to i32
  %1477 = and i32 %1476, 255
  %1478 = call i32 @llvm.ctpop.i32(i32 %1477) #16
  %1479 = trunc i32 %1478 to i8
  %1480 = and i8 %1479, 1
  %1481 = xor i8 %1480, 1
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1481, i8* %1482, align 1, !tbaa !2446
  %1483 = xor i64 96, %1467
  %1484 = xor i64 %1483, %1470
  %1485 = lshr i64 %1484, 4
  %1486 = trunc i64 %1485 to i8
  %1487 = and i8 %1486, 1
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1487, i8* %1488, align 1, !tbaa !2447
  %1489 = icmp eq i64 %1470, 0
  %1490 = zext i1 %1489 to i8
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1490, i8* %1491, align 1, !tbaa !2448
  %1492 = lshr i64 %1470, 63
  %1493 = trunc i64 %1492 to i8
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1493, i8* %1494, align 1, !tbaa !2449
  %1495 = lshr i64 %1467, 63
  %1496 = xor i64 %1492, %1495
  %1497 = add nuw nsw i64 %1496, %1492
  %1498 = icmp eq i64 %1497, 2
  %1499 = zext i1 %1498 to i8
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1499, i8* %1500, align 1, !tbaa !2450
  %1501 = load i64, i64* %PC
  %1502 = add i64 %1501, 1
  store i64 %1502, i64* %PC
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1504 = load i64, i64* %1503, align 8, !tbaa !2428
  %1505 = add i64 %1504, 8
  %1506 = inttoptr i64 %1504 to i64*
  %1507 = load i64, i64* %1506
  store i64 %1507, i64* %RBP, align 8, !tbaa !2428
  store i64 %1505, i64* %1503, align 8, !tbaa !2428
  %1508 = load i64, i64* %PC
  %1509 = add i64 %1508, 1
  store i64 %1509, i64* %PC
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1512 = load i64, i64* %1511, align 8, !tbaa !2428
  %1513 = inttoptr i64 %1512 to i64*
  %1514 = load i64, i64* %1513
  store i64 %1514, i64* %1510, align 8, !tbaa !2428
  %1515 = add i64 %1512, 8
  store i64 %1515, i64* %1511, align 8, !tbaa !2428
  ret %struct.Memory* %1459

block_400f0b:                                     ; preds = %block_400ef9
  %1516 = sub i64 %808, 16
  %1517 = load i64, i64* %PC
  %1518 = add i64 %1517, 4
  store i64 %1518, i64* %PC
  %1519 = inttoptr i64 %1516 to i64*
  %1520 = load i64, i64* %1519
  store i64 %1520, i64* %RDI, align 8, !tbaa !2428
  %1521 = load i64, i64* %PC
  %1522 = sub i64 %1521, 559
  %1523 = load i64, i64* %PC
  %1524 = add i64 %1523, 5
  %1525 = load i64, i64* %PC
  %1526 = add i64 %1525, 5
  store i64 %1526, i64* %PC
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1528 = load i64, i64* %1527, align 8, !tbaa !2428
  %1529 = add i64 %1528, -8
  %1530 = inttoptr i64 %1529 to i64*
  store i64 %1524, i64* %1530
  store i64 %1529, i64* %1527, align 8, !tbaa !2428
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1522, i64* %1531, align 8, !tbaa !2428
  %1532 = load i64, i64* %PC
  %1533 = call %struct.Memory* @sub_400ce0_list_last_renamed_(%struct.State* %0, i64 %1532, %struct.Memory* %761)
  %1534 = load i64, i64* %PC
  %1535 = add i64 %1534, 10
  store i64 %1535, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4011a0__rodata_type* @seg_4011a0__rodata to i64), i64 228), i64* %RDI, align 8, !tbaa !2428
  %1536 = load i64, i64* %PC
  %1537 = add i64 %1536, 5
  store i64 %1537, i64* %PC
  store i64 100, i64* %RSI, align 8, !tbaa !2428
  %1538 = load i64, i64* %RAX
  %1539 = load i64, i64* %PC
  %1540 = add i64 %1539, 2
  store i64 %1540, i64* %PC
  %1541 = inttoptr i64 %1538 to i32*
  %1542 = load i32, i32* %1541
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %RDX, align 8, !tbaa !2428
  %1544 = load i64, i64* %PC
  %1545 = add i64 %1544, 2
  store i64 %1545, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1546 = load i64, i64* %PC
  %1547 = sub i64 %1546, 2567
  %1548 = load i64, i64* %PC
  %1549 = add i64 %1548, 5
  %1550 = load i64, i64* %PC
  %1551 = add i64 %1550, 5
  store i64 %1551, i64* %PC
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1553 = load i64, i64* %1552, align 8, !tbaa !2428
  %1554 = add i64 %1553, -8
  %1555 = inttoptr i64 %1554 to i64*
  store i64 %1549, i64* %1555
  store i64 %1554, i64* %1552, align 8, !tbaa !2428
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1547, i64* %1556, align 8, !tbaa !2428
  %1557 = load i64, i64* %PC
  %1558 = call %struct.Memory* @ext_6020a8_printf(%struct.State* %0, i64 %1557, %struct.Memory* %1533)
  %1559 = load i64, i64* %PC
  %1560 = add i64 %1559, 5
  store i64 %1560, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %1561 = load i64, i64* %RBP
  %1562 = sub i64 %1561, 76
  %1563 = load i32, i32* %EAX
  %1564 = zext i32 %1563 to i64
  %1565 = load i64, i64* %PC
  %1566 = add i64 %1565, 3
  store i64 %1566, i64* %PC
  %1567 = inttoptr i64 %1562 to i32*
  store i32 %1563, i32* %1567
  %1568 = load i64, i64* %PC
  %1569 = sub i64 %1568, 2532
  %1570 = load i64, i64* %PC
  %1571 = add i64 %1570, 5
  %1572 = load i64, i64* %PC
  %1573 = add i64 %1572, 5
  store i64 %1573, i64* %PC
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1575 = load i64, i64* %1574, align 8, !tbaa !2428
  %1576 = add i64 %1575, -8
  %1577 = inttoptr i64 %1576 to i64*
  store i64 %1571, i64* %1577
  store i64 %1576, i64* %1574, align 8, !tbaa !2428
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1569, i64* %1578, align 8, !tbaa !2428
  %1579 = load i64, i64* %PC
  %1580 = call %struct.Memory* @ext_602090_exit(%struct.State* %0, i64 %1579, %struct.Memory* %1558)
  %1581 = load i64, i64* %PC
  %1582 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %1581, %struct.Memory* %1580)
  ret %struct.Memory* %1582

block_400ff9:                                     ; preds = %block_400fb9
  %1583 = load i64, i64* %RBP
  %1584 = sub i64 %1583, 24
  %1585 = load i64, i64* %PC
  %1586 = add i64 %1585, 4
  store i64 %1586, i64* %PC
  %1587 = inttoptr i64 %1584 to i64*
  %1588 = load i64, i64* %1587
  store i64 %1588, i64* %RSI, align 8, !tbaa !2428
  %1589 = load i64, i64* %PC
  %1590 = sub i64 %1589, 1969
  %1591 = load i64, i64* %PC
  %1592 = add i64 %1591, 5
  %1593 = load i64, i64* %PC
  %1594 = add i64 %1593, 5
  store i64 %1594, i64* %PC
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1596 = load i64, i64* %1595, align 8, !tbaa !2428
  %1597 = add i64 %1596, -8
  %1598 = inttoptr i64 %1597 to i64*
  store i64 %1592, i64* %1598
  store i64 %1597, i64* %1595, align 8, !tbaa !2428
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1590, i64* %1599, align 8, !tbaa !2428
  %1600 = load i64, i64* %PC
  %1601 = call %struct.Memory* @sub_400850_list_equal_renamed_(%struct.State* %0, i64 %1600, %struct.Memory* %1324)
  %1602 = load i32, i32* %EAX
  %1603 = zext i32 %1602 to i64
  %1604 = load i64, i64* %PC
  %1605 = add i64 %1604, 3
  store i64 %1605, i64* %PC
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1606, align 1, !tbaa !2432
  %1607 = and i32 %1602, 255
  %1608 = call i32 @llvm.ctpop.i32(i32 %1607) #16
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  %1611 = xor i8 %1610, 1
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1611, i8* %1612, align 1, !tbaa !2446
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1613, align 1, !tbaa !2447
  %1614 = icmp eq i32 %1602, 0
  %1615 = zext i1 %1614 to i8
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1615, i8* %1616, align 1, !tbaa !2448
  %1617 = lshr i32 %1602, 31
  %1618 = trunc i32 %1617 to i8
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1618, i8* %1619, align 1, !tbaa !2449
  %1620 = lshr i32 %1602, 31
  %1621 = xor i32 %1617, %1620
  %1622 = add nuw nsw i32 %1621, %1620
  %1623 = icmp eq i32 %1622, 2
  %1624 = zext i1 %1623 to i8
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1624, i8* %1625, align 1, !tbaa !2450
  %1626 = load i64, i64* %PC
  %1627 = add i64 %1626, 36
  %1628 = load i64, i64* %PC
  %1629 = add i64 %1628, 6
  %1630 = load i64, i64* %PC
  %1631 = add i64 %1630, 6
  store i64 %1631, i64* %PC
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1633 = load i8, i8* %1632, align 1, !tbaa !2448
  %1634 = icmp eq i8 %1633, 0
  %1635 = zext i1 %1634 to i8
  store i8 %1635, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1637 = select i1 %1634, i64 %1627, i64 %1629
  store i64 %1637, i64* %1636, align 8, !tbaa !2428
  %1638 = load i8, i8* %BRANCH_TAKEN
  %1639 = icmp eq i8 %1638, 1
  br i1 %1639, label %block_40102d, label %block_40100f

block_400f4b:                                     ; preds = %block_400f39
  %1640 = add i64 %534, 273
  %1641 = load i64, i64* %PC
  %1642 = add i64 %1641, 5
  %1643 = load i64, i64* %PC
  %1644 = add i64 %1643, 5
  store i64 %1644, i64* %PC
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1646 = load i64, i64* %1645, align 8, !tbaa !2428
  %1647 = add i64 %1646, -8
  %1648 = inttoptr i64 %1647 to i64*
  store i64 %1642, i64* %1648
  store i64 %1647, i64* %1645, align 8, !tbaa !2428
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1640, i64* %1649, align 8, !tbaa !2428
  %1650 = load i64, i64* %PC
  %1651 = call %struct.Memory* @sub_401060_list_first_renamed_(%struct.State* %0, i64 %1650, %struct.Memory* %481)
  %1652 = load i64, i64* %PC
  %1653 = add i64 %1652, 10
  store i64 %1653, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4011a0__rodata_type* @seg_4011a0__rodata to i64), i64 265), i64* %RDI, align 8, !tbaa !2428
  %1654 = load i64, i64* %PC
  %1655 = add i64 %1654, 5
  store i64 %1655, i64* %PC
  store i64 100, i64* %RSI, align 8, !tbaa !2428
  %1656 = load i64, i64* %RAX
  %1657 = load i64, i64* %PC
  %1658 = add i64 %1657, 2
  store i64 %1658, i64* %PC
  %1659 = inttoptr i64 %1656 to i32*
  %1660 = load i32, i32* %1659
  %1661 = zext i32 %1660 to i64
  store i64 %1661, i64* %RDX, align 8, !tbaa !2428
  %1662 = load i64, i64* %PC
  %1663 = add i64 %1662, 2
  store i64 %1663, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1664 = load i64, i64* %PC
  %1665 = sub i64 %1664, 2631
  %1666 = load i64, i64* %PC
  %1667 = add i64 %1666, 5
  %1668 = load i64, i64* %PC
  %1669 = add i64 %1668, 5
  store i64 %1669, i64* %PC
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1671 = load i64, i64* %1670, align 8, !tbaa !2428
  %1672 = add i64 %1671, -8
  %1673 = inttoptr i64 %1672 to i64*
  store i64 %1667, i64* %1673
  store i64 %1672, i64* %1670, align 8, !tbaa !2428
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1665, i64* %1674, align 8, !tbaa !2428
  %1675 = load i64, i64* %PC
  %1676 = call %struct.Memory* @ext_6020a8_printf(%struct.State* %0, i64 %1675, %struct.Memory* %1651)
  %1677 = load i64, i64* %PC
  %1678 = add i64 %1677, 5
  store i64 %1678, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %1679 = load i64, i64* %RBP
  %1680 = sub i64 %1679, 80
  %1681 = load i32, i32* %EAX
  %1682 = zext i32 %1681 to i64
  %1683 = load i64, i64* %PC
  %1684 = add i64 %1683, 3
  store i64 %1684, i64* %PC
  %1685 = inttoptr i64 %1680 to i32*
  store i32 %1681, i32* %1685
  %1686 = load i64, i64* %PC
  %1687 = sub i64 %1686, 2596
  %1688 = load i64, i64* %PC
  %1689 = add i64 %1688, 5
  %1690 = load i64, i64* %PC
  %1691 = add i64 %1690, 5
  store i64 %1691, i64* %PC
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1693 = load i64, i64* %1692, align 8, !tbaa !2428
  %1694 = add i64 %1693, -8
  %1695 = inttoptr i64 %1694 to i64*
  store i64 %1689, i64* %1695
  store i64 %1694, i64* %1692, align 8, !tbaa !2428
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1687, i64* %1696, align 8, !tbaa !2428
  %1697 = load i64, i64* %PC
  %1698 = call %struct.Memory* @ext_602090_exit(%struct.State* %0, i64 %1697, %struct.Memory* %1676)
  %1699 = load i64, i64* %PC
  %1700 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %1699, %struct.Memory* %1698)
  ret %struct.Memory* %1700
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005d0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005d0:
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
  br i1 %190, label %block_400608, label %block_4005f3

block_4005fd:                                     ; preds = %block_4005f3
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
    i64 4195850, label %block_40060a
    i64 4195845, label %block_400605
  ]

block_40060a:                                     ; preds = %block_4005fd
  %205 = load i64, i64* %RAX
  %206 = load i64, i64* %RAX
  %207 = add i64 %206, %205
  %208 = load i16, i16* %AX
  %209 = zext i16 %208 to i64
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 6
  store i64 %211, i64* %PC
  %212 = load i64, i64* %PC
  %213 = tail call %struct.Memory* @sub_400610___do_global_dtors_aux(%struct.State* %0, i64 %212, %struct.Memory* %2)
  ret %struct.Memory* %213

block_4005f3:                                     ; preds = %block_4005d0
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
  br i1 %249, label %block_400608, label %block_4005fd

block_400608:                                     ; preds = %block_400605, %block_4005f3, %block_4005d0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005d0 ], [ %2, %block_4005f3 ], [ %2, %block_400605 ]
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

block_400605:                                     ; preds = %block_4005fd
  %265 = load i64, i64* %RAX
  %266 = load i32, i32* %EAX
  %267 = zext i32 %266 to i64
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC
  br label %block_400608

; <label>:270:                                    ; preds = %block_4005fd
  %271 = load i64, i64* %PC
  %272 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %271, %struct.Memory* %2)
  ret %struct.Memory* %272
}

; Function Attrs: noinline
define %struct.Memory* @sub_400760_list_length(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400760:
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
  %28 = load i64, i64* %RBP
  %29 = sub i64 %28, 8
  %30 = load i64, i64* %RDI
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 4
  store i64 %32, i64* %PC
  %33 = inttoptr i64 %29 to i64*
  store i64 %30, i64* %33
  %34 = load i64, i64* %RBP
  %35 = sub i64 %34, 8
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC
  %38 = inttoptr i64 %35 to i64*
  %39 = load i64, i64* %38
  store i64 %39, i64* %RDI, align 8, !tbaa !2428
  %40 = load i64, i64* %RDI
  %41 = load i64, i64* %PC
  %42 = add i64 %41, 2
  store i64 %42, i64* %PC
  %43 = inttoptr i64 %40 to i32*
  %44 = load i32, i32* %43
  %45 = zext i32 %44 to i64
  store i64 %45, i64* %RAX, align 8, !tbaa !2428
  %46 = load i64, i64* %PC
  %47 = add i64 %46, 1
  store i64 %47, i64* %PC
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %49 = load i64, i64* %48, align 8, !tbaa !2428
  %50 = add i64 %49, 8
  %51 = inttoptr i64 %49 to i64*
  %52 = load i64, i64* %51
  store i64 %52, i64* %RBP, align 8, !tbaa !2428
  store i64 %50, i64* %48, align 8, !tbaa !2428
  %53 = load i64, i64* %PC
  %54 = add i64 %53, 1
  store i64 %54, i64* %PC
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %57 = load i64, i64* %56, align 8, !tbaa !2428
  %58 = inttoptr i64 %57 to i64*
  %59 = load i64, i64* %58
  store i64 %59, i64* %55, align 8, !tbaa !2428
  %60 = add i64 %57, 8
  store i64 %60, i64* %56, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400590__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400590:
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
define %struct.Memory* @sub_400770_list_push_head(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400770:
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
  %53 = add i64 %52, 8
  %54 = load i64, i64* %PC
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC
  %56 = inttoptr i64 %53 to i64*
  %57 = load i64, i64* %56
  store i64 %57, i64* %RSI, align 8, !tbaa !2428
  %58 = load i64, i64* %RBP
  %59 = sub i64 %58, 24
  %60 = load i64, i64* %RSI
  %61 = load i64, i64* %PC
  %62 = add i64 %61, 4
  store i64 %62, i64* %PC
  %63 = inttoptr i64 %59 to i64*
  store i64 %60, i64* %63
  %64 = load i64, i64* %RBP
  %65 = sub i64 %64, 16
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC
  %68 = inttoptr i64 %65 to i64*
  %69 = load i64, i64* %68
  store i64 %69, i64* %RSI, align 8, !tbaa !2428
  %70 = load i64, i64* %RBP
  %71 = sub i64 %70, 8
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 4
  store i64 %73, i64* %PC
  %74 = inttoptr i64 %71 to i64*
  %75 = load i64, i64* %74
  store i64 %75, i64* %RDI, align 8, !tbaa !2428
  %76 = load i64, i64* %RDI
  %77 = add i64 %76, 8
  %78 = load i64, i64* %RSI
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  %82 = load i64, i64* %RBP
  %83 = sub i64 %82, 16
  %84 = load i64, i64* %PC
  %85 = add i64 %84, 4
  store i64 %85, i64* %PC
  %86 = inttoptr i64 %83 to i64*
  %87 = load i64, i64* %86
  store i64 %87, i64* %RSI, align 8, !tbaa !2428
  %88 = load i64, i64* %RBP
  %89 = sub i64 %88, 24
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 4
  store i64 %91, i64* %PC
  %92 = inttoptr i64 %89 to i64*
  %93 = load i64, i64* %92
  store i64 %93, i64* %RDI, align 8, !tbaa !2428
  %94 = load i64, i64* %RDI
  %95 = add i64 %94, 16
  %96 = load i64, i64* %RSI
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 4
  store i64 %98, i64* %PC
  %99 = inttoptr i64 %95 to i64*
  store i64 %96, i64* %99
  %100 = load i64, i64* %RBP
  %101 = sub i64 %100, 24
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC
  %104 = inttoptr i64 %101 to i64*
  %105 = load i64, i64* %104
  store i64 %105, i64* %RSI, align 8, !tbaa !2428
  %106 = load i64, i64* %RBP
  %107 = sub i64 %106, 16
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 4
  store i64 %109, i64* %PC
  %110 = inttoptr i64 %107 to i64*
  %111 = load i64, i64* %110
  store i64 %111, i64* %RDI, align 8, !tbaa !2428
  %112 = load i64, i64* %RDI
  %113 = add i64 %112, 8
  %114 = load i64, i64* %RSI
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 4
  store i64 %116, i64* %PC
  %117 = inttoptr i64 %113 to i64*
  store i64 %114, i64* %117
  %118 = load i64, i64* %RBP
  %119 = sub i64 %118, 8
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 4
  store i64 %121, i64* %PC
  %122 = inttoptr i64 %119 to i64*
  %123 = load i64, i64* %122
  store i64 %123, i64* %RSI, align 8, !tbaa !2428
  %124 = load i64, i64* %RBP
  %125 = sub i64 %124, 16
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 4
  store i64 %127, i64* %PC
  %128 = inttoptr i64 %125 to i64*
  %129 = load i64, i64* %128
  store i64 %129, i64* %RDI, align 8, !tbaa !2428
  %130 = load i64, i64* %RDI
  %131 = add i64 %130, 16
  %132 = load i64, i64* %RSI
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 4
  store i64 %134, i64* %PC
  %135 = inttoptr i64 %131 to i64*
  store i64 %132, i64* %135
  %136 = load i64, i64* %RBP
  %137 = sub i64 %136, 8
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 4
  store i64 %139, i64* %PC
  %140 = inttoptr i64 %137 to i64*
  %141 = load i64, i64* %140
  store i64 %141, i64* %RSI, align 8, !tbaa !2428
  %142 = load i64, i64* %RSI
  %143 = load i64, i64* %PC
  %144 = add i64 %143, 2
  store i64 %144, i64* %PC
  %145 = inttoptr i64 %142 to i32*
  %146 = load i32, i32* %145
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RAX, align 8, !tbaa !2428
  %148 = load i64, i64* %RAX
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 3
  store i64 %150, i64* %PC
  %151 = trunc i64 %148 to i32
  %152 = add i32 1, %151
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RAX, align 8, !tbaa !2428
  %154 = icmp ult i32 %152, %151
  %155 = icmp ult i32 %152, 1
  %156 = or i1 %154, %155
  %157 = zext i1 %156 to i8
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %157, i8* %158, align 1, !tbaa !2432
  %159 = and i32 %152, 255
  %160 = call i32 @llvm.ctpop.i32(i32 %159) #16
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %163, i8* %164, align 1, !tbaa !2446
  %165 = xor i64 1, %148
  %166 = trunc i64 %165 to i32
  %167 = xor i32 %166, %152
  %168 = lshr i32 %167, 4
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %170, i8* %171, align 1, !tbaa !2447
  %172 = icmp eq i32 %152, 0
  %173 = zext i1 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %173, i8* %174, align 1, !tbaa !2448
  %175 = lshr i32 %152, 31
  %176 = trunc i32 %175 to i8
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %176, i8* %177, align 1, !tbaa !2449
  %178 = lshr i32 %151, 31
  %179 = xor i32 %175, %178
  %180 = add nuw nsw i32 %179, %175
  %181 = icmp eq i32 %180, 2
  %182 = zext i1 %181 to i8
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %182, i8* %183, align 1, !tbaa !2450
  %184 = load i64, i64* %RSI
  %185 = load i32, i32* %EAX
  %186 = zext i32 %185 to i64
  %187 = load i64, i64* %PC
  %188 = add i64 %187, 2
  store i64 %188, i64* %PC
  %189 = inttoptr i64 %184 to i32*
  store i32 %185, i32* %189
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 1
  store i64 %191, i64* %PC
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %193 = load i64, i64* %192, align 8, !tbaa !2428
  %194 = add i64 %193, 8
  %195 = inttoptr i64 %193 to i64*
  %196 = load i64, i64* %195
  store i64 %196, i64* %RBP, align 8, !tbaa !2428
  store i64 %194, i64* %192, align 8, !tbaa !2428
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 1
  store i64 %198, i64* %PC
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %201 = load i64, i64* %200, align 8, !tbaa !2428
  %202 = inttoptr i64 %201 to i64*
  %203 = load i64, i64* %202
  store i64 %203, i64* %199, align 8, !tbaa !2428
  %204 = add i64 %201, 8
  store i64 %204, i64* %200, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_401194__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401194:
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
define %struct.Memory* @sub_401080_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401080:
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
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %ESI = bitcast %union.anon* %18 to i32*
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
  %29 = getelementptr inbounds %struct.GPR, %struct.GPR* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %29, i32 0, i32 0
  %RSI = bitcast %union.anon* %30 to i64*
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 11
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0
  %RDI = bitcast %union.anon* %33 to i64*
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %35 = getelementptr inbounds %struct.GPR, %struct.GPR* %34, i32 0, i32 13
  %36 = getelementptr inbounds %struct.Reg, %struct.Reg* %35, i32 0, i32 0
  %RSP = bitcast %union.anon* %36 to i64*
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %38 = getelementptr inbounds %struct.GPR, %struct.GPR* %37, i32 0, i32 15
  %39 = getelementptr inbounds %struct.Reg, %struct.Reg* %38, i32 0, i32 0
  %RBP = bitcast %union.anon* %39 to i64*
  %40 = load i64, i64* %RBP
  %41 = load i64, i64* %PC
  %42 = add i64 %41, 1
  store i64 %42, i64* %PC
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %44 = load i64, i64* %43, align 8, !tbaa !2428
  %45 = add i64 %44, -8
  %46 = inttoptr i64 %45 to i64*
  store i64 %40, i64* %46
  store i64 %45, i64* %43, align 8, !tbaa !2428
  %47 = load i64, i64* %RSP
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 3
  store i64 %49, i64* %PC
  store i64 %47, i64* %RBP, align 8, !tbaa !2428
  %50 = load i64, i64* %RSP
  %51 = load i64, i64* %PC
  %52 = add i64 %51, 4
  store i64 %52, i64* %PC
  %53 = sub i64 %50, 32
  store i64 %53, i64* %RSP, align 8, !tbaa !2428
  %54 = icmp ult i64 %50, 32
  %55 = zext i1 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %55, i8* %56, align 1, !tbaa !2432
  %57 = trunc i64 %53 to i32
  %58 = and i32 %57, 255
  %59 = call i32 @llvm.ctpop.i32(i32 %58) #16
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  %62 = xor i8 %61, 1
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %62, i8* %63, align 1, !tbaa !2446
  %64 = xor i64 32, %50
  %65 = xor i64 %64, %53
  %66 = lshr i64 %65, 4
  %67 = trunc i64 %66 to i8
  %68 = and i8 %67, 1
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %68, i8* %69, align 1, !tbaa !2447
  %70 = icmp eq i64 %53, 0
  %71 = zext i1 %70 to i8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %71, i8* %72, align 1, !tbaa !2448
  %73 = lshr i64 %53, 63
  %74 = trunc i64 %73 to i8
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %74, i8* %75, align 1, !tbaa !2449
  %76 = lshr i64 %50, 63
  %77 = xor i64 %73, %76
  %78 = add nuw nsw i64 %77, %76
  %79 = icmp eq i64 %78, 2
  %80 = zext i1 %79 to i8
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %80, i8* %81, align 1, !tbaa !2450
  %82 = load i64, i64* %RBP
  %83 = sub i64 %82, 4
  %84 = load i64, i64* %PC
  %85 = add i64 %84, 7
  store i64 %85, i64* %PC
  %86 = inttoptr i64 %83 to i32*
  store i32 0, i32* %86
  %87 = load i64, i64* %RBP
  %88 = sub i64 %87, 8
  %89 = load i32, i32* %EDI
  %90 = zext i32 %89 to i64
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 3
  store i64 %92, i64* %PC
  %93 = inttoptr i64 %88 to i32*
  store i32 %89, i32* %93
  %94 = load i64, i64* %RBP
  %95 = sub i64 %94, 16
  %96 = load i64, i64* %RSI
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 4
  store i64 %98, i64* %PC
  %99 = inttoptr i64 %95 to i64*
  store i64 %96, i64* %99
  %100 = load i64, i64* %RBP
  %101 = sub i64 %100, 8
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC
  %104 = inttoptr i64 %101 to i32*
  %105 = load i32, i32* %104
  %106 = sub i32 %105, 2
  %107 = icmp ult i32 %105, 2
  %108 = zext i1 %107 to i8
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %108, i8* %109, align 1, !tbaa !2432
  %110 = and i32 %106, 255
  %111 = call i32 @llvm.ctpop.i32(i32 %110) #16
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %114, i8* %115, align 1, !tbaa !2446
  %116 = xor i32 %105, 2
  %117 = xor i32 %116, %106
  %118 = lshr i32 %117, 4
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %120, i8* %121, align 1, !tbaa !2447
  %122 = icmp eq i32 %106, 0
  %123 = zext i1 %122 to i8
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %123, i8* %124, align 1, !tbaa !2448
  %125 = lshr i32 %106, 31
  %126 = trunc i32 %125 to i8
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %126, i8* %127, align 1, !tbaa !2449
  %128 = lshr i32 %105, 31
  %129 = xor i32 %125, %128
  %130 = add nuw nsw i32 %129, %128
  %131 = icmp eq i32 %130, 2
  %132 = zext i1 %131 to i8
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %132, i8* %133, align 1, !tbaa !2450
  %134 = load i64, i64* %PC
  %135 = add i64 %134, 27
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 6
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 6
  store i64 %139, i64* %PC
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %141 = load i8, i8* %140, align 1, !tbaa !2448
  %142 = icmp eq i8 %141, 0
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %145 = select i1 %142, i64 %135, i64 %137
  store i64 %145, i64* %144, align 8, !tbaa !2428
  %146 = load i8, i8* %BRANCH_TAKEN
  %147 = icmp eq i8 %146, 1
  br i1 %147, label %block_4010b5, label %block_4010a0

block_4010b5:                                     ; preds = %block_401080
  %148 = load i64, i64* %PC
  %149 = add i64 %148, 5
  store i64 %149, i64* %PC
  store i64 3000000, i64* %RAX, align 8, !tbaa !2428
  %150 = load i64, i64* %RBP
  %151 = sub i64 %150, 28
  %152 = load i32, i32* %EAX
  %153 = zext i32 %152 to i64
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 3
  store i64 %155, i64* %PC
  %156 = inttoptr i64 %151 to i32*
  store i32 %152, i32* %156
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 5
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 5
  store i64 %160, i64* %PC
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %158, i64* %161, align 8, !tbaa !2428
  br label %block_4010c2

block_4010f0:                                     ; preds = %block_4010cf
  %162 = add i64 %362, 10
  store i64 %162, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4011a0__rodata_type* @seg_4011a0__rodata to i64), i64 12), i64* %RDI, align 8, !tbaa !2428
  %163 = load i64, i64* %RBP
  %164 = sub i64 %163, 24
  %165 = load i64, i64* %PC
  %166 = add i64 %165, 3
  store i64 %166, i64* %PC
  %167 = inttoptr i64 %164 to i32*
  %168 = load i32, i32* %167
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RSI, align 8, !tbaa !2428
  %170 = load i64, i64* %PC
  %171 = add i64 %170, 2
  store i64 %171, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %172 = load i64, i64* %PC
  %173 = sub i64 %172, 3039
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 5
  %176 = load i64, i64* %PC
  %177 = add i64 %176, 5
  store i64 %177, i64* %PC
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %179 = load i64, i64* %178, align 8, !tbaa !2428
  %180 = add i64 %179, -8
  %181 = inttoptr i64 %180 to i64*
  store i64 %175, i64* %181
  store i64 %180, i64* %178, align 8, !tbaa !2428
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %173, i64* %182, align 8, !tbaa !2428
  %183 = load i64, i64* %PC
  %184 = call %struct.Memory* @ext_6020a8_printf(%struct.State* %0, i64 %183, %struct.Memory* %MEMORY.0)
  %185 = load i64, i64* %RSI
  %186 = load i32, i32* %ESI
  %187 = zext i32 %186 to i64
  %188 = load i64, i64* %PC
  %189 = add i64 %188, 2
  store i64 %189, i64* %PC
  %190 = xor i64 %187, %185
  %191 = trunc i64 %190 to i32
  %192 = and i64 %190, 4294967295
  store i64 %192, i64* %RSI, align 8, !tbaa !2428
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %193, align 1, !tbaa !2432
  %194 = and i32 %191, 255
  %195 = call i32 @llvm.ctpop.i32(i32 %194) #16
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %198, i8* %199, align 1, !tbaa !2446
  %200 = icmp eq i32 %191, 0
  %201 = zext i1 %200 to i8
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %201, i8* %202, align 1, !tbaa !2448
  %203 = lshr i32 %191, 31
  %204 = trunc i32 %203 to i8
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %204, i8* %205, align 1, !tbaa !2449
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %206, align 1, !tbaa !2450
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %207, align 1, !tbaa !2447
  %208 = load i64, i64* %RBP
  %209 = sub i64 %208, 32
  %210 = load i32, i32* %EAX
  %211 = zext i32 %210 to i64
  %212 = load i64, i64* %PC
  %213 = add i64 %212, 3
  store i64 %213, i64* %PC
  %214 = inttoptr i64 %209 to i32*
  store i32 %210, i32* %214
  %215 = load i32, i32* %ESI
  %216 = zext i32 %215 to i64
  %217 = load i64, i64* %PC
  %218 = add i64 %217, 2
  store i64 %218, i64* %PC
  %219 = and i64 %216, 4294967295
  store i64 %219, i64* %RAX, align 8, !tbaa !2428
  %220 = load i64, i64* %RSP
  %221 = load i64, i64* %PC
  %222 = add i64 %221, 4
  store i64 %222, i64* %PC
  %223 = add i64 32, %220
  store i64 %223, i64* %RSP, align 8, !tbaa !2428
  %224 = icmp ult i64 %223, %220
  %225 = icmp ult i64 %223, 32
  %226 = or i1 %224, %225
  %227 = zext i1 %226 to i8
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %227, i8* %228, align 1, !tbaa !2432
  %229 = trunc i64 %223 to i32
  %230 = and i32 %229, 255
  %231 = call i32 @llvm.ctpop.i32(i32 %230) #16
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = xor i8 %233, 1
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %234, i8* %235, align 1, !tbaa !2446
  %236 = xor i64 32, %220
  %237 = xor i64 %236, %223
  %238 = lshr i64 %237, 4
  %239 = trunc i64 %238 to i8
  %240 = and i8 %239, 1
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %240, i8* %241, align 1, !tbaa !2447
  %242 = icmp eq i64 %223, 0
  %243 = zext i1 %242 to i8
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %243, i8* %244, align 1, !tbaa !2448
  %245 = lshr i64 %223, 63
  %246 = trunc i64 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %246, i8* %247, align 1, !tbaa !2449
  %248 = lshr i64 %220, 63
  %249 = xor i64 %245, %248
  %250 = add nuw nsw i64 %249, %245
  %251 = icmp eq i64 %250, 2
  %252 = zext i1 %251 to i8
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %252, i8* %253, align 1, !tbaa !2450
  %254 = load i64, i64* %PC
  %255 = add i64 %254, 1
  store i64 %255, i64* %PC
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %257 = load i64, i64* %256, align 8, !tbaa !2428
  %258 = add i64 %257, 8
  %259 = inttoptr i64 %257 to i64*
  %260 = load i64, i64* %259
  store i64 %260, i64* %RBP, align 8, !tbaa !2428
  store i64 %258, i64* %256, align 8, !tbaa !2428
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 1
  store i64 %262, i64* %PC
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %265 = load i64, i64* %264, align 8, !tbaa !2428
  %266 = inttoptr i64 %265 to i64*
  %267 = load i64, i64* %266
  store i64 %267, i64* %263, align 8, !tbaa !2428
  %268 = add i64 %265, 8
  store i64 %268, i64* %264, align 8, !tbaa !2428
  ret %struct.Memory* %184

block_4010cf:                                     ; preds = %block_4010c2, %block_4010e3
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_4010c2 ], [ %411, %block_4010e3 ]
  %269 = load i64, i64* %RBP
  %270 = sub i64 %269, 20
  %271 = load i64, i64* %PC
  %272 = add i64 %271, 3
  store i64 %272, i64* %PC
  %273 = inttoptr i64 %270 to i32*
  %274 = load i32, i32* %273
  %275 = zext i32 %274 to i64
  store i64 %275, i64* %RAX, align 8, !tbaa !2428
  %276 = load i32, i32* %EAX
  %277 = zext i32 %276 to i64
  %278 = load i64, i64* %PC
  %279 = add i64 %278, 2
  store i64 %279, i64* %PC
  %280 = and i64 %277, 4294967295
  store i64 %280, i64* %RCX, align 8, !tbaa !2428
  %281 = load i64, i64* %RCX
  %282 = load i64, i64* %PC
  %283 = add i64 %282, 3
  store i64 %283, i64* %PC
  %284 = trunc i64 %281 to i32
  %285 = add i32 -1, %284
  %286 = zext i32 %285 to i64
  store i64 %286, i64* %RCX, align 8, !tbaa !2428
  %287 = icmp ult i32 %285, %284
  %288 = icmp ult i32 %285, -1
  %289 = or i1 %287, %288
  %290 = zext i1 %289 to i8
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %290, i8* %291, align 1, !tbaa !2432
  %292 = and i32 %285, 255
  %293 = call i32 @llvm.ctpop.i32(i32 %292) #16
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %296, i8* %297, align 1, !tbaa !2446
  %298 = xor i64 -1, %281
  %299 = trunc i64 %298 to i32
  %300 = xor i32 %299, %285
  %301 = lshr i32 %300, 4
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %303, i8* %304, align 1, !tbaa !2447
  %305 = icmp eq i32 %285, 0
  %306 = zext i1 %305 to i8
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %306, i8* %307, align 1, !tbaa !2448
  %308 = lshr i32 %285, 31
  %309 = trunc i32 %308 to i8
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %309, i8* %310, align 1, !tbaa !2449
  %311 = lshr i32 %284, 31
  %312 = xor i32 %308, %311
  %313 = xor i32 %308, 1
  %314 = add nuw nsw i32 %312, %313
  %315 = icmp eq i32 %314, 2
  %316 = zext i1 %315 to i8
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %316, i8* %317, align 1, !tbaa !2450
  %318 = load i64, i64* %RBP
  %319 = sub i64 %318, 20
  %320 = load i32, i32* %ECX
  %321 = zext i32 %320 to i64
  %322 = load i64, i64* %PC
  %323 = add i64 %322, 3
  store i64 %323, i64* %PC
  %324 = inttoptr i64 %319 to i32*
  store i32 %320, i32* %324
  %325 = load i32, i32* %EAX
  %326 = zext i32 %325 to i64
  %327 = load i64, i64* %PC
  %328 = add i64 %327, 3
  store i64 %328, i64* %PC
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %329, align 1, !tbaa !2432
  %330 = and i32 %325, 255
  %331 = call i32 @llvm.ctpop.i32(i32 %330) #16
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %334, i8* %335, align 1, !tbaa !2446
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %336, align 1, !tbaa !2447
  %337 = icmp eq i32 %325, 0
  %338 = zext i1 %337 to i8
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %338, i8* %339, align 1, !tbaa !2448
  %340 = lshr i32 %325, 31
  %341 = trunc i32 %340 to i8
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %341, i8* %342, align 1, !tbaa !2449
  %343 = lshr i32 %325, 31
  %344 = xor i32 %340, %343
  %345 = add nuw nsw i32 %344, %343
  %346 = icmp eq i32 %345, 2
  %347 = zext i1 %346 to i8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %347, i8* %348, align 1, !tbaa !2450
  %349 = load i64, i64* %PC
  %350 = add i64 %349, 19
  %351 = load i64, i64* %PC
  %352 = add i64 %351, 6
  %353 = load i64, i64* %PC
  %354 = add i64 %353, 6
  store i64 %354, i64* %PC
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %356 = load i8, i8* %355, align 1, !tbaa !2448
  store i8 %356, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %358 = icmp ne i8 %356, 0
  %359 = select i1 %358, i64 %350, i64 %352
  store i64 %359, i64* %357, align 8, !tbaa !2428
  %360 = load i8, i8* %BRANCH_TAKEN
  %361 = icmp eq i8 %360, 1
  %362 = load i64, i64* %PC
  br i1 %361, label %block_4010f0, label %block_4010e3

block_4010a0:                                     ; preds = %block_401080
  %363 = load i64, i64* %RBP
  %364 = sub i64 %363, 16
  %365 = load i64, i64* %PC
  %366 = add i64 %365, 4
  store i64 %366, i64* %PC
  %367 = inttoptr i64 %364 to i64*
  %368 = load i64, i64* %367
  store i64 %368, i64* %RAX, align 8, !tbaa !2428
  %369 = load i64, i64* %RAX
  %370 = add i64 %369, 8
  %371 = load i64, i64* %PC
  %372 = add i64 %371, 4
  store i64 %372, i64* %PC
  %373 = inttoptr i64 %370 to i64*
  %374 = load i64, i64* %373
  store i64 %374, i64* %RDI, align 8, !tbaa !2428
  %375 = load i64, i64* %PC
  %376 = sub i64 %375, 2920
  %377 = load i64, i64* %PC
  %378 = add i64 %377, 5
  %379 = load i64, i64* %PC
  %380 = add i64 %379, 5
  store i64 %380, i64* %PC
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %382 = load i64, i64* %381, align 8, !tbaa !2428
  %383 = add i64 %382, -8
  %384 = inttoptr i64 %383 to i64*
  store i64 %378, i64* %384
  store i64 %383, i64* %381, align 8, !tbaa !2428
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %376, i64* %385, align 8, !tbaa !2428
  %386 = load i64, i64* %PC
  %387 = call %struct.Memory* @ext_602088_atoi(%struct.State* %0, i64 %386, %struct.Memory* %2)
  %388 = load i64, i64* %RBP
  %389 = sub i64 %388, 28
  %390 = load i32, i32* %EAX
  %391 = zext i32 %390 to i64
  %392 = load i64, i64* %PC
  %393 = add i64 %392, 3
  store i64 %393, i64* %PC
  %394 = inttoptr i64 %389 to i32*
  store i32 %390, i32* %394
  %395 = load i64, i64* %PC
  %396 = add i64 %395, 18
  %397 = load i64, i64* %PC
  %398 = add i64 %397, 5
  store i64 %398, i64* %PC
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %396, i64* %399, align 8, !tbaa !2428
  br label %block_4010c2

block_4010e3:                                     ; preds = %block_4010cf
  %400 = sub i64 %362, 915
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 5
  %403 = load i64, i64* %PC
  %404 = add i64 %403, 5
  store i64 %404, i64* %PC
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %406 = load i64, i64* %405, align 8, !tbaa !2428
  %407 = add i64 %406, -8
  %408 = inttoptr i64 %407 to i64*
  store i64 %402, i64* %408
  store i64 %407, i64* %405, align 8, !tbaa !2428
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %400, i64* %409, align 8, !tbaa !2428
  %410 = load i64, i64* %PC
  %411 = call %struct.Memory* @sub_400d50_test_lists_renamed_(%struct.State* %0, i64 %410, %struct.Memory* %MEMORY.0)
  %412 = load i64, i64* %RBP
  %413 = sub i64 %412, 24
  %414 = load i32, i32* %EAX
  %415 = zext i32 %414 to i64
  %416 = load i64, i64* %PC
  %417 = add i64 %416, 3
  store i64 %417, i64* %PC
  %418 = inttoptr i64 %413 to i32*
  store i32 %414, i32* %418
  %419 = load i64, i64* %PC
  %420 = sub i64 %419, 28
  %421 = load i64, i64* %PC
  %422 = add i64 %421, 5
  store i64 %422, i64* %PC
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %420, i64* %423, align 8, !tbaa !2428
  br label %block_4010cf

block_4010c2:                                     ; preds = %block_4010a0, %block_4010b5
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_4010b5 ], [ %387, %block_4010a0 ]
  %424 = load i64, i64* %RBP
  %425 = sub i64 %424, 28
  %426 = load i64, i64* %PC
  %427 = add i64 %426, 3
  store i64 %427, i64* %PC
  %428 = inttoptr i64 %425 to i32*
  %429 = load i32, i32* %428
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RAX, align 8, !tbaa !2428
  %431 = load i64, i64* %RBP
  %432 = sub i64 %431, 20
  %433 = load i32, i32* %EAX
  %434 = zext i32 %433 to i64
  %435 = load i64, i64* %PC
  %436 = add i64 %435, 3
  store i64 %436, i64* %PC
  %437 = inttoptr i64 %432 to i32*
  store i32 %433, i32* %437
  %438 = load i64, i64* %RBP
  %439 = sub i64 %438, 24
  %440 = load i64, i64* %PC
  %441 = add i64 %440, 7
  store i64 %441, i64* %PC
  %442 = inttoptr i64 %439 to i32*
  store i32 0, i32* %442
  br label %block_4010cf
}

; Function Attrs: noinline
define %struct.Memory* @sub_401120___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401120:
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
  %200 = sub i64 %199, 3188
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
  %211 = call %struct.Memory* @sub_4004d8__init_proc_renamed_(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  br i1 %245, label %block_401176, label %block_401156

block_401176:                                     ; preds = %block_401160, %block_401120
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_401120 ], [ %387, %block_401160 ]
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

block_401156:                                     ; preds = %block_401120
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
  br label %block_401160

block_401160:                                     ; preds = %block_401160, %block_401156
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_401156 ], [ %387, %block_401160 ]
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
  br i1 %470, label %block_401160, label %block_401176
}

; Function Attrs: noinline
define %struct.Memory* @sub_400730_list_empty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400730:
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RAX = bitcast %union.anon* %15 to i64*
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 11
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %RDI = bitcast %union.anon* %18 to i64*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 13
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %RSP = bitcast %union.anon* %21 to i64*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 15
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %RBP = bitcast %union.anon* %24 to i64*
  %25 = load i64, i64* %RBP
  %26 = load i64, i64* %PC
  %27 = add i64 %26, 1
  store i64 %27, i64* %PC
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %29 = load i64, i64* %28, align 8, !tbaa !2428
  %30 = add i64 %29, -8
  %31 = inttoptr i64 %30 to i64*
  store i64 %25, i64* %31
  store i64 %30, i64* %28, align 8, !tbaa !2428
  %32 = load i64, i64* %RSP
  %33 = load i64, i64* %PC
  %34 = add i64 %33, 3
  store i64 %34, i64* %PC
  store i64 %32, i64* %RBP, align 8, !tbaa !2428
  %35 = load i64, i64* %RSP
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC
  %38 = sub i64 %35, 16
  store i64 %38, i64* %RSP, align 8, !tbaa !2428
  %39 = icmp ult i64 %35, 16
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %41, align 1, !tbaa !2432
  %42 = trunc i64 %38 to i32
  %43 = and i32 %42, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43) #16
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 1
  %47 = xor i8 %46, 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %47, i8* %48, align 1, !tbaa !2446
  %49 = xor i64 16, %35
  %50 = xor i64 %49, %38
  %51 = lshr i64 %50, 4
  %52 = trunc i64 %51 to i8
  %53 = and i8 %52, 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %53, i8* %54, align 1, !tbaa !2447
  %55 = icmp eq i64 %38, 0
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %56, i8* %57, align 1, !tbaa !2448
  %58 = lshr i64 %38, 63
  %59 = trunc i64 %58 to i8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %59, i8* %60, align 1, !tbaa !2449
  %61 = lshr i64 %35, 63
  %62 = xor i64 %58, %61
  %63 = add nuw nsw i64 %62, %61
  %64 = icmp eq i64 %63, 2
  %65 = zext i1 %64 to i8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %65, i8* %66, align 1, !tbaa !2450
  %67 = load i64, i64* %RBP
  %68 = sub i64 %67, 8
  %69 = load i64, i64* %RDI
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 4
  store i64 %71, i64* %PC
  %72 = inttoptr i64 %68 to i64*
  store i64 %69, i64* %72
  %73 = load i64, i64* %RBP
  %74 = sub i64 %73, 8
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 4
  store i64 %76, i64* %PC
  %77 = inttoptr i64 %74 to i64*
  %78 = load i64, i64* %77
  store i64 %78, i64* %RDI, align 8, !tbaa !2428
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 32
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 5
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 5
  store i64 %84, i64* %PC
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %86 = load i64, i64* %85, align 8, !tbaa !2428
  %87 = add i64 %86, -8
  %88 = inttoptr i64 %87 to i64*
  store i64 %82, i64* %88
  store i64 %87, i64* %85, align 8, !tbaa !2428
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %80, i64* %89, align 8, !tbaa !2428
  %90 = load i64, i64* %PC
  %91 = call %struct.Memory* @sub_400760_list_length_renamed_(%struct.State* %0, i64 %90, %struct.Memory* %2)
  %92 = load i32, i32* %EAX
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 3
  store i64 %95, i64* %PC
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %96, align 1, !tbaa !2432
  %97 = and i32 %92, 255
  %98 = call i32 @llvm.ctpop.i32(i32 %97) #16
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  %101 = xor i8 %100, 1
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %101, i8* %102, align 1, !tbaa !2446
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %103, align 1, !tbaa !2447
  %104 = icmp eq i32 %92, 0
  %105 = zext i1 %104 to i8
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %105, i8* %106, align 1, !tbaa !2448
  %107 = lshr i32 %92, 31
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %108, i8* %109, align 1, !tbaa !2449
  %110 = lshr i32 %92, 31
  %111 = xor i32 %107, %110
  %112 = add nuw nsw i32 %111, %110
  %113 = icmp eq i32 %112, 2
  %114 = zext i1 %113 to i8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %114, i8* %115, align 1, !tbaa !2450
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 3
  store i64 %117, i64* %PC
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %119 = load i8, i8* %118, align 1, !tbaa !2448
  store i8 %119, i8* %CL, align 1, !tbaa !2451
  %120 = load i8, i8* %CL
  %121 = zext i8 %120 to i64
  %122 = load i64, i64* %PC
  %123 = add i64 %122, 3
  store i64 %123, i64* %PC
  %124 = and i64 1, %121
  %125 = trunc i64 %124 to i8
  store i8 %125, i8* %CL, align 1, !tbaa !2451
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %126, align 1, !tbaa !2432
  %127 = trunc i64 %124 to i32
  %128 = and i32 %127, 255
  %129 = call i32 @llvm.ctpop.i32(i32 %128) #16
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %132, i8* %133, align 1, !tbaa !2446
  %134 = icmp eq i8 %125, 0
  %135 = zext i1 %134 to i8
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %135, i8* %136, align 1, !tbaa !2448
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %137, align 1, !tbaa !2449
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %138, align 1, !tbaa !2450
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %139, align 1, !tbaa !2447
  %140 = load i8, i8* %CL
  %141 = zext i8 %140 to i64
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 3
  store i64 %143, i64* %PC
  %144 = and i64 %141, 255
  store i64 %144, i64* %RAX, align 8, !tbaa !2428
  %145 = load i64, i64* %RSP
  %146 = load i64, i64* %PC
  %147 = add i64 %146, 4
  store i64 %147, i64* %PC
  %148 = add i64 16, %145
  store i64 %148, i64* %RSP, align 8, !tbaa !2428
  %149 = icmp ult i64 %148, %145
  %150 = icmp ult i64 %148, 16
  %151 = or i1 %149, %150
  %152 = zext i1 %151 to i8
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %152, i8* %153, align 1, !tbaa !2432
  %154 = trunc i64 %148 to i32
  %155 = and i32 %154, 255
  %156 = call i32 @llvm.ctpop.i32(i32 %155) #16
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %159, i8* %160, align 1, !tbaa !2446
  %161 = xor i64 16, %145
  %162 = xor i64 %161, %148
  %163 = lshr i64 %162, 4
  %164 = trunc i64 %163 to i8
  %165 = and i8 %164, 1
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %165, i8* %166, align 1, !tbaa !2447
  %167 = icmp eq i64 %148, 0
  %168 = zext i1 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %168, i8* %169, align 1, !tbaa !2448
  %170 = lshr i64 %148, 63
  %171 = trunc i64 %170 to i8
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %171, i8* %172, align 1, !tbaa !2449
  %173 = lshr i64 %145, 63
  %174 = xor i64 %170, %173
  %175 = add nuw nsw i64 %174, %170
  %176 = icmp eq i64 %175, 2
  %177 = zext i1 %176 to i8
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %177, i8* %178, align 1, !tbaa !2450
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 1
  store i64 %180, i64* %PC
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %182 = load i64, i64* %181, align 8, !tbaa !2428
  %183 = add i64 %182, 8
  %184 = inttoptr i64 %182 to i64*
  %185 = load i64, i64* %184
  store i64 %185, i64* %RBP, align 8, !tbaa !2428
  store i64 %183, i64* %181, align 8, !tbaa !2428
  %186 = load i64, i64* %PC
  %187 = add i64 %186, 1
  store i64 %187, i64* %PC
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %190 = load i64, i64* %189, align 8, !tbaa !2428
  %191 = inttoptr i64 %190 to i64*
  %192 = load i64, i64* %191
  store i64 %192, i64* %188, align 8, !tbaa !2428
  %193 = add i64 %190, 8
  store i64 %193, i64* %189, align 8, !tbaa !2428
  ret %struct.Memory* %91
}

; Function Attrs: noinline
define %struct.Memory* @sub_400560__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400560:
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
  store i64 ptrtoint (void ()* @callback_sub_401190___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_401120___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
  %123 = call %struct.Memory* @ext_602078___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004d8__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4004d8:
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
  br i1 %80, label %block_4004ea, label %block_4004e8

block_4004e8:                                     ; preds = %block_4004d8
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
  br label %block_4004ea

block_4004ea:                                     ; preds = %block_4004e8, %block_4004d8
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4004d8 ], [ %92, %block_4004e8 ]
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
define %struct.Memory* @sub_400610___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400610:
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
  br i1 %47, label %block_400630, label %block_400619

block_400630:                                     ; preds = %block_400610
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

block_400619:                                     ; preds = %block_400610
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
  %78 = call %struct.Memory* @sub_4005a0_deregister_tm_clones_renamed_(%struct.State* %0, i64 %77, %struct.Memory* %2)
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
define %struct.Memory* @sub_400bb0_list_copy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400bb0:
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ESI = bitcast %union.anon* %11 to i32*
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
  %76 = sub i64 %75, 8
  %77 = load i64, i64* %RDI
  %78 = load i64, i64* %PC
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC
  %80 = inttoptr i64 %76 to i64*
  store i64 %77, i64* %80
  %81 = load i64, i64* %RBP
  %82 = sub i64 %81, 8
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 4
  store i64 %84, i64* %PC
  %85 = inttoptr i64 %82 to i64*
  %86 = load i64, i64* %85
  store i64 %86, i64* %RDI, align 8, !tbaa !2428
  %87 = load i64, i64* %PC
  %88 = sub i64 %87, 1120
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 5
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 5
  store i64 %92, i64* %PC
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %94 = load i64, i64* %93, align 8, !tbaa !2428
  %95 = add i64 %94, -8
  %96 = inttoptr i64 %95 to i64*
  store i64 %90, i64* %96
  store i64 %95, i64* %93, align 8, !tbaa !2428
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %88, i64* %97, align 8, !tbaa !2428
  %98 = load i64, i64* %PC
  %99 = call %struct.Memory* @sub_400760_list_length_renamed_(%struct.State* %0, i64 %98, %struct.Memory* %2)
  %100 = load i64, i64* %RBP
  %101 = sub i64 %100, 20
  %102 = load i32, i32* %EAX
  %103 = zext i32 %102 to i64
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC
  %106 = inttoptr i64 %101 to i32*
  store i32 %102, i32* %106
  %107 = load i64, i64* %RBP
  %108 = sub i64 %107, 20
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 3
  store i64 %110, i64* %PC
  %111 = inttoptr i64 %108 to i32*
  %112 = load i32, i32* %111
  %113 = zext i32 %112 to i64
  store i64 %113, i64* %RAX, align 8, !tbaa !2428
  %114 = load i64, i64* %RAX
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 3
  store i64 %116, i64* %PC
  %117 = trunc i64 %114 to i32
  %118 = add i32 1, %117
  %119 = zext i32 %118 to i64
  store i64 %119, i64* %RAX, align 8, !tbaa !2428
  %120 = icmp ult i32 %118, %117
  %121 = icmp ult i32 %118, 1
  %122 = or i1 %120, %121
  %123 = zext i1 %122 to i8
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %123, i8* %124, align 1, !tbaa !2432
  %125 = and i32 %118, 255
  %126 = call i32 @llvm.ctpop.i32(i32 %125) #16
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = xor i8 %128, 1
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %129, i8* %130, align 1, !tbaa !2446
  %131 = xor i64 1, %114
  %132 = trunc i64 %131 to i32
  %133 = xor i32 %132, %118
  %134 = lshr i32 %133, 4
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %136, i8* %137, align 1, !tbaa !2447
  %138 = icmp eq i32 %118, 0
  %139 = zext i1 %138 to i8
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %139, i8* %140, align 1, !tbaa !2448
  %141 = lshr i32 %118, 31
  %142 = trunc i32 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %142, i8* %143, align 1, !tbaa !2449
  %144 = lshr i32 %117, 31
  %145 = xor i32 %141, %144
  %146 = add nuw nsw i32 %145, %141
  %147 = icmp eq i32 %146, 2
  %148 = zext i1 %147 to i8
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %148, i8* %149, align 1, !tbaa !2450
  %150 = load i32, i32* %EAX
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 3
  store i64 %153, i64* %PC
  %154 = shl i64 %151, 32
  %155 = ashr exact i64 %154, 32
  store i64 %155, i64* %RDI, align 8, !tbaa !2428
  %156 = load i64, i64* %RDI
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 4
  store i64 %158, i64* %PC
  %159 = sext i64 %156 to i128
  %160 = and i128 %159, -18446744073709551616
  %161 = zext i64 %156 to i128
  %162 = or i128 %160, %161
  %163 = mul nsw i128 24, %162
  %164 = trunc i128 %163 to i64
  store i64 %164, i64* %RDI, align 8, !tbaa !2428
  %165 = sext i64 %164 to i128
  %166 = icmp ne i128 %165, %163
  %167 = zext i1 %166 to i8
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %167, i8* %168, align 1, !tbaa !2432
  %169 = trunc i128 %163 to i32
  %170 = and i32 %169, 255
  %171 = call i32 @llvm.ctpop.i32(i32 %170) #16
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %174, i8* %175, align 1, !tbaa !2446
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %176, align 1, !tbaa !2447
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %177, align 1, !tbaa !2448
  %178 = lshr i64 %164, 63
  %179 = trunc i64 %178 to i8
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %179, i8* %180, align 1, !tbaa !2449
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %167, i8* %181, align 1, !tbaa !2450
  %182 = load i64, i64* %PC
  %183 = sub i64 %182, 1701
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 5
  %186 = load i64, i64* %PC
  %187 = add i64 %186, 5
  store i64 %187, i64* %PC
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %189 = load i64, i64* %188, align 8, !tbaa !2428
  %190 = add i64 %189, -8
  %191 = inttoptr i64 %190 to i64*
  store i64 %185, i64* %191
  store i64 %190, i64* %188, align 8, !tbaa !2428
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %183, i64* %192, align 8, !tbaa !2428
  %193 = load i64, i64* %PC
  %194 = call %struct.Memory* @ext_400530_malloc(%struct.State* %0, i64 %193, %struct.Memory* %99)
  %195 = load i64, i64* %RBP
  %196 = sub i64 %195, 40
  %197 = load i64, i64* %RAX
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 4
  store i64 %199, i64* %PC
  %200 = inttoptr i64 %196 to i64*
  store i64 %197, i64* %200
  %201 = load i64, i64* %RBP
  %202 = sub i64 %201, 12
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 7
  store i64 %204, i64* %PC
  %205 = inttoptr i64 %202 to i32*
  store i32 0, i32* %205
  %206 = load i64, i64* %RBP
  %207 = sub i64 %206, 16
  %208 = load i64, i64* %PC
  %209 = add i64 %208, 7
  store i64 %209, i64* %PC
  %210 = inttoptr i64 %207 to i32*
  store i32 1, i32* %210
  %211 = load i64, i64* %RBP
  %212 = sub i64 %211, 8
  %213 = load i64, i64* %PC
  %214 = add i64 %213, 4
  store i64 %214, i64* %PC
  %215 = inttoptr i64 %212 to i64*
  %216 = load i64, i64* %215
  store i64 %216, i64* %RAX, align 8, !tbaa !2428
  %217 = load i64, i64* %RBP
  %218 = sub i64 %217, 32
  %219 = load i64, i64* %RAX
  %220 = load i64, i64* %PC
  %221 = add i64 %220, 4
  store i64 %221, i64* %PC
  %222 = inttoptr i64 %218 to i64*
  store i64 %219, i64* %222
  br label %block_400bf4

block_400c7e:                                     ; preds = %block_400bf4
  %223 = sub i64 %624, 20
  %224 = load i64, i64* %PC
  %225 = add i64 %224, 4
  store i64 %225, i64* %PC
  %226 = inttoptr i64 %223 to i32*
  %227 = load i32, i32* %226
  %228 = sext i32 %227 to i64
  store i64 %228, i64* %RCX, align 8, !tbaa !2428
  %229 = load i64, i64* %RCX
  %230 = load i64, i64* %PC
  %231 = add i64 %230, 4
  store i64 %231, i64* %PC
  %232 = sext i64 %229 to i128
  %233 = and i128 %232, -18446744073709551616
  %234 = zext i64 %229 to i128
  %235 = or i128 %233, %234
  %236 = mul nsw i128 24, %235
  %237 = trunc i128 %236 to i64
  store i64 %237, i64* %RCX, align 8, !tbaa !2428
  %238 = sext i64 %237 to i128
  %239 = icmp ne i128 %238, %236
  %240 = zext i1 %239 to i8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %240, i8* %241, align 1, !tbaa !2432
  %242 = trunc i128 %236 to i32
  %243 = and i32 %242, 255
  %244 = call i32 @llvm.ctpop.i32(i32 %243) #16
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %247, i8* %248, align 1, !tbaa !2446
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %249, align 1, !tbaa !2447
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %250, align 1, !tbaa !2448
  %251 = lshr i64 %237, 63
  %252 = trunc i64 %251 to i8
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %252, i8* %253, align 1, !tbaa !2449
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %240, i8* %254, align 1, !tbaa !2450
  %255 = load i64, i64* %RAX
  %256 = load i64, i64* %RCX
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 3
  store i64 %258, i64* %PC
  %259 = add i64 %256, %255
  store i64 %259, i64* %RAX, align 8, !tbaa !2428
  %260 = icmp ult i64 %259, %255
  %261 = icmp ult i64 %259, %256
  %262 = or i1 %260, %261
  %263 = zext i1 %262 to i8
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %263, i8* %264, align 1, !tbaa !2432
  %265 = trunc i64 %259 to i32
  %266 = and i32 %265, 255
  %267 = call i32 @llvm.ctpop.i32(i32 %266) #16
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  %270 = xor i8 %269, 1
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %270, i8* %271, align 1, !tbaa !2446
  %272 = xor i64 %256, %255
  %273 = xor i64 %272, %259
  %274 = lshr i64 %273, 4
  %275 = trunc i64 %274 to i8
  %276 = and i8 %275, 1
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %276, i8* %277, align 1, !tbaa !2447
  %278 = icmp eq i64 %259, 0
  %279 = zext i1 %278 to i8
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %279, i8* %280, align 1, !tbaa !2448
  %281 = lshr i64 %259, 63
  %282 = trunc i64 %281 to i8
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %282, i8* %283, align 1, !tbaa !2449
  %284 = lshr i64 %255, 63
  %285 = lshr i64 %256, 63
  %286 = xor i64 %281, %284
  %287 = xor i64 %281, %285
  %288 = add nuw nsw i64 %286, %287
  %289 = icmp eq i64 %288, 2
  %290 = zext i1 %289 to i8
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %290, i8* %291, align 1, !tbaa !2450
  %292 = load i64, i64* %RBP
  %293 = sub i64 %292, 40
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 4
  store i64 %295, i64* %PC
  %296 = inttoptr i64 %293 to i64*
  %297 = load i64, i64* %296
  store i64 %297, i64* %RCX, align 8, !tbaa !2428
  %298 = load i64, i64* %RCX
  %299 = add i64 %298, 16
  %300 = load i64, i64* %RAX
  %301 = load i64, i64* %PC
  %302 = add i64 %301, 4
  store i64 %302, i64* %PC
  %303 = inttoptr i64 %299 to i64*
  store i64 %300, i64* %303
  %304 = load i64, i64* %RBP
  %305 = sub i64 %304, 40
  %306 = load i64, i64* %PC
  %307 = add i64 %306, 4
  store i64 %307, i64* %PC
  %308 = inttoptr i64 %305 to i64*
  %309 = load i64, i64* %308
  store i64 %309, i64* %RAX, align 8, !tbaa !2428
  %310 = load i64, i64* %RBP
  %311 = sub i64 %310, 40
  %312 = load i64, i64* %PC
  %313 = add i64 %312, 4
  store i64 %313, i64* %PC
  %314 = inttoptr i64 %311 to i64*
  %315 = load i64, i64* %314
  store i64 %315, i64* %RCX, align 8, !tbaa !2428
  %316 = load i64, i64* %RBP
  %317 = sub i64 %316, 20
  %318 = load i64, i64* %PC
  %319 = add i64 %318, 4
  store i64 %319, i64* %PC
  %320 = inttoptr i64 %317 to i32*
  %321 = load i32, i32* %320
  %322 = sext i32 %321 to i64
  store i64 %322, i64* %RDX, align 8, !tbaa !2428
  %323 = load i64, i64* %RDX
  %324 = load i64, i64* %PC
  %325 = add i64 %324, 4
  store i64 %325, i64* %PC
  %326 = sext i64 %323 to i128
  %327 = and i128 %326, -18446744073709551616
  %328 = zext i64 %323 to i128
  %329 = or i128 %327, %328
  %330 = mul nsw i128 24, %329
  %331 = trunc i128 %330 to i64
  store i64 %331, i64* %RDX, align 8, !tbaa !2428
  %332 = sext i64 %331 to i128
  %333 = icmp ne i128 %332, %330
  %334 = zext i1 %333 to i8
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %334, i8* %335, align 1, !tbaa !2432
  %336 = trunc i128 %330 to i32
  %337 = and i32 %336, 255
  %338 = call i32 @llvm.ctpop.i32(i32 %337) #16
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %341, i8* %342, align 1, !tbaa !2446
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %343, align 1, !tbaa !2447
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %344, align 1, !tbaa !2448
  %345 = lshr i64 %331, 63
  %346 = trunc i64 %345 to i8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %346, i8* %347, align 1, !tbaa !2449
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %334, i8* %348, align 1, !tbaa !2450
  %349 = load i64, i64* %RCX
  %350 = load i64, i64* %RDX
  %351 = load i64, i64* %PC
  %352 = add i64 %351, 3
  store i64 %352, i64* %PC
  %353 = add i64 %350, %349
  store i64 %353, i64* %RCX, align 8, !tbaa !2428
  %354 = icmp ult i64 %353, %349
  %355 = icmp ult i64 %353, %350
  %356 = or i1 %354, %355
  %357 = zext i1 %356 to i8
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %357, i8* %358, align 1, !tbaa !2432
  %359 = trunc i64 %353 to i32
  %360 = and i32 %359, 255
  %361 = call i32 @llvm.ctpop.i32(i32 %360) #16
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %364, i8* %365, align 1, !tbaa !2446
  %366 = xor i64 %350, %349
  %367 = xor i64 %366, %353
  %368 = lshr i64 %367, 4
  %369 = trunc i64 %368 to i8
  %370 = and i8 %369, 1
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %370, i8* %371, align 1, !tbaa !2447
  %372 = icmp eq i64 %353, 0
  %373 = zext i1 %372 to i8
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %373, i8* %374, align 1, !tbaa !2448
  %375 = lshr i64 %353, 63
  %376 = trunc i64 %375 to i8
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %376, i8* %377, align 1, !tbaa !2449
  %378 = lshr i64 %349, 63
  %379 = lshr i64 %350, 63
  %380 = xor i64 %375, %378
  %381 = xor i64 %375, %379
  %382 = add nuw nsw i64 %380, %381
  %383 = icmp eq i64 %382, 2
  %384 = zext i1 %383 to i8
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %384, i8* %385, align 1, !tbaa !2450
  %386 = load i64, i64* %RCX
  %387 = add i64 %386, 8
  %388 = load i64, i64* %RAX
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 4
  store i64 %390, i64* %PC
  %391 = inttoptr i64 %387 to i64*
  store i64 %388, i64* %391
  %392 = load i64, i64* %RBP
  %393 = sub i64 %392, 8
  %394 = load i64, i64* %PC
  %395 = add i64 %394, 4
  store i64 %395, i64* %PC
  %396 = inttoptr i64 %393 to i64*
  %397 = load i64, i64* %396
  store i64 %397, i64* %RDI, align 8, !tbaa !2428
  %398 = load i64, i64* %PC
  %399 = add i64 %398, 48
  %400 = load i64, i64* %PC
  %401 = add i64 %400, 5
  %402 = load i64, i64* %PC
  %403 = add i64 %402, 5
  store i64 %403, i64* %PC
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %405 = load i64, i64* %404, align 8, !tbaa !2428
  %406 = add i64 %405, -8
  %407 = inttoptr i64 %406 to i64*
  store i64 %401, i64* %407
  store i64 %406, i64* %404, align 8, !tbaa !2428
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %399, i64* %408, align 8, !tbaa !2428
  %409 = load i64, i64* %PC
  %410 = call %struct.Memory* @sub_400ce0_list_last_renamed_(%struct.State* %0, i64 %409, %struct.Memory* %MEMORY.0)
  %411 = load i64, i64* %RAX
  %412 = load i64, i64* %PC
  %413 = add i64 %412, 2
  store i64 %413, i64* %PC
  %414 = inttoptr i64 %411 to i32*
  %415 = load i32, i32* %414
  %416 = zext i32 %415 to i64
  store i64 %416, i64* %RSI, align 8, !tbaa !2428
  %417 = load i64, i64* %RBP
  %418 = sub i64 %417, 40
  %419 = load i64, i64* %PC
  %420 = add i64 %419, 4
  store i64 %420, i64* %PC
  %421 = inttoptr i64 %418 to i64*
  %422 = load i64, i64* %421
  store i64 %422, i64* %RAX, align 8, !tbaa !2428
  %423 = load i64, i64* %RBP
  %424 = sub i64 %423, 20
  %425 = load i64, i64* %PC
  %426 = add i64 %425, 4
  store i64 %426, i64* %PC
  %427 = inttoptr i64 %424 to i32*
  %428 = load i32, i32* %427
  %429 = sext i32 %428 to i64
  store i64 %429, i64* %RCX, align 8, !tbaa !2428
  %430 = load i64, i64* %RCX
  %431 = load i64, i64* %PC
  %432 = add i64 %431, 4
  store i64 %432, i64* %PC
  %433 = sext i64 %430 to i128
  %434 = and i128 %433, -18446744073709551616
  %435 = zext i64 %430 to i128
  %436 = or i128 %434, %435
  %437 = mul nsw i128 24, %436
  %438 = trunc i128 %437 to i64
  store i64 %438, i64* %RCX, align 8, !tbaa !2428
  %439 = sext i64 %438 to i128
  %440 = icmp ne i128 %439, %437
  %441 = zext i1 %440 to i8
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %441, i8* %442, align 1, !tbaa !2432
  %443 = trunc i128 %437 to i32
  %444 = and i32 %443, 255
  %445 = call i32 @llvm.ctpop.i32(i32 %444) #16
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = xor i8 %447, 1
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %448, i8* %449, align 1, !tbaa !2446
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %450, align 1, !tbaa !2447
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %451, align 1, !tbaa !2448
  %452 = lshr i64 %438, 63
  %453 = trunc i64 %452 to i8
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %453, i8* %454, align 1, !tbaa !2449
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %441, i8* %455, align 1, !tbaa !2450
  %456 = load i64, i64* %RAX
  %457 = load i64, i64* %RCX
  %458 = load i64, i64* %PC
  %459 = add i64 %458, 3
  store i64 %459, i64* %PC
  %460 = add i64 %457, %456
  store i64 %460, i64* %RAX, align 8, !tbaa !2428
  %461 = icmp ult i64 %460, %456
  %462 = icmp ult i64 %460, %457
  %463 = or i1 %461, %462
  %464 = zext i1 %463 to i8
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %464, i8* %465, align 1, !tbaa !2432
  %466 = trunc i64 %460 to i32
  %467 = and i32 %466, 255
  %468 = call i32 @llvm.ctpop.i32(i32 %467) #16
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %471, i8* %472, align 1, !tbaa !2446
  %473 = xor i64 %457, %456
  %474 = xor i64 %473, %460
  %475 = lshr i64 %474, 4
  %476 = trunc i64 %475 to i8
  %477 = and i8 %476, 1
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %477, i8* %478, align 1, !tbaa !2447
  %479 = icmp eq i64 %460, 0
  %480 = zext i1 %479 to i8
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %480, i8* %481, align 1, !tbaa !2448
  %482 = lshr i64 %460, 63
  %483 = trunc i64 %482 to i8
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %483, i8* %484, align 1, !tbaa !2449
  %485 = lshr i64 %456, 63
  %486 = lshr i64 %457, 63
  %487 = xor i64 %482, %485
  %488 = xor i64 %482, %486
  %489 = add nuw nsw i64 %487, %488
  %490 = icmp eq i64 %489, 2
  %491 = zext i1 %490 to i8
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %491, i8* %492, align 1, !tbaa !2450
  %493 = load i64, i64* %RAX
  %494 = load i32, i32* %ESI
  %495 = zext i32 %494 to i64
  %496 = load i64, i64* %PC
  %497 = add i64 %496, 2
  store i64 %497, i64* %PC
  %498 = inttoptr i64 %493 to i32*
  store i32 %494, i32* %498
  %499 = load i64, i64* %RBP
  %500 = sub i64 %499, 40
  %501 = load i64, i64* %PC
  %502 = add i64 %501, 4
  store i64 %502, i64* %PC
  %503 = inttoptr i64 %500 to i64*
  %504 = load i64, i64* %503
  store i64 %504, i64* %RAX, align 8, !tbaa !2428
  %505 = load i64, i64* %RSP
  %506 = load i64, i64* %PC
  %507 = add i64 %506, 4
  store i64 %507, i64* %PC
  %508 = add i64 48, %505
  store i64 %508, i64* %RSP, align 8, !tbaa !2428
  %509 = icmp ult i64 %508, %505
  %510 = icmp ult i64 %508, 48
  %511 = or i1 %509, %510
  %512 = zext i1 %511 to i8
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %512, i8* %513, align 1, !tbaa !2432
  %514 = trunc i64 %508 to i32
  %515 = and i32 %514, 255
  %516 = call i32 @llvm.ctpop.i32(i32 %515) #16
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  %519 = xor i8 %518, 1
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %519, i8* %520, align 1, !tbaa !2446
  %521 = xor i64 48, %505
  %522 = xor i64 %521, %508
  %523 = lshr i64 %522, 4
  %524 = trunc i64 %523 to i8
  %525 = and i8 %524, 1
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %525, i8* %526, align 1, !tbaa !2447
  %527 = icmp eq i64 %508, 0
  %528 = zext i1 %527 to i8
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %528, i8* %529, align 1, !tbaa !2448
  %530 = lshr i64 %508, 63
  %531 = trunc i64 %530 to i8
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %531, i8* %532, align 1, !tbaa !2449
  %533 = lshr i64 %505, 63
  %534 = xor i64 %530, %533
  %535 = add nuw nsw i64 %534, %530
  %536 = icmp eq i64 %535, 2
  %537 = zext i1 %536 to i8
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %537, i8* %538, align 1, !tbaa !2450
  %539 = load i64, i64* %PC
  %540 = add i64 %539, 1
  store i64 %540, i64* %PC
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %542 = load i64, i64* %541, align 8, !tbaa !2428
  %543 = add i64 %542, 8
  %544 = inttoptr i64 %542 to i64*
  %545 = load i64, i64* %544
  store i64 %545, i64* %RBP, align 8, !tbaa !2428
  store i64 %543, i64* %541, align 8, !tbaa !2428
  %546 = load i64, i64* %PC
  %547 = add i64 %546, 1
  store i64 %547, i64* %PC
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %550 = load i64, i64* %549, align 8, !tbaa !2428
  %551 = inttoptr i64 %550 to i64*
  %552 = load i64, i64* %551
  store i64 %552, i64* %548, align 8, !tbaa !2428
  %553 = add i64 %550, 8
  store i64 %553, i64* %549, align 8, !tbaa !2428
  ret %struct.Memory* %410

block_400bf4:                                     ; preds = %block_400c00, %block_400bb0
  %MEMORY.0 = phi %struct.Memory* [ %194, %block_400bb0 ], [ %MEMORY.0, %block_400c00 ]
  %554 = load i64, i64* %RBP
  %555 = sub i64 %554, 12
  %556 = load i64, i64* %PC
  %557 = add i64 %556, 3
  store i64 %557, i64* %PC
  %558 = inttoptr i64 %555 to i32*
  %559 = load i32, i32* %558
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %RAX, align 8, !tbaa !2428
  %561 = load i32, i32* %EAX
  %562 = zext i32 %561 to i64
  %563 = load i64, i64* %RBP
  %564 = sub i64 %563, 20
  %565 = load i64, i64* %PC
  %566 = add i64 %565, 3
  store i64 %566, i64* %PC
  %567 = inttoptr i64 %564 to i32*
  %568 = load i32, i32* %567
  %569 = sub i32 %561, %568
  %570 = icmp ult i32 %561, %568
  %571 = zext i1 %570 to i8
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %571, i8* %572, align 1, !tbaa !2432
  %573 = and i32 %569, 255
  %574 = call i32 @llvm.ctpop.i32(i32 %573) #16
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %577, i8* %578, align 1, !tbaa !2446
  %579 = xor i32 %568, %561
  %580 = xor i32 %579, %569
  %581 = lshr i32 %580, 4
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %583, i8* %584, align 1, !tbaa !2447
  %585 = icmp eq i32 %569, 0
  %586 = zext i1 %585 to i8
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %586, i8* %587, align 1, !tbaa !2448
  %588 = lshr i32 %569, 31
  %589 = trunc i32 %588 to i8
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %589, i8* %590, align 1, !tbaa !2449
  %591 = lshr i32 %561, 31
  %592 = lshr i32 %568, 31
  %593 = xor i32 %592, %591
  %594 = xor i32 %588, %591
  %595 = add nuw nsw i32 %594, %593
  %596 = icmp eq i32 %595, 2
  %597 = zext i1 %596 to i8
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %597, i8* %598, align 1, !tbaa !2450
  %599 = load i64, i64* %PC
  %600 = add i64 %599, 132
  %601 = load i64, i64* %PC
  %602 = add i64 %601, 6
  %603 = load i64, i64* %PC
  %604 = add i64 %603, 6
  store i64 %604, i64* %PC
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %606 = load i8, i8* %605, align 1, !tbaa !2449
  %607 = icmp ne i8 %606, 0
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %609 = load i8, i8* %608, align 1, !tbaa !2450
  %610 = icmp ne i8 %609, 0
  %611 = xor i1 %607, %610
  %612 = xor i1 %611, true
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %615 = select i1 %611, i64 %602, i64 %600
  store i64 %615, i64* %614, align 8, !tbaa !2428
  %616 = load i8, i8* %BRANCH_TAKEN
  %617 = icmp eq i8 %616, 1
  %618 = load i64, i64* %RBP
  %619 = sub i64 %618, 40
  %620 = load i64, i64* %PC
  %621 = add i64 %620, 4
  store i64 %621, i64* %PC
  %622 = inttoptr i64 %619 to i64*
  %623 = load i64, i64* %622
  store i64 %623, i64* %RAX, align 8, !tbaa !2428
  %624 = load i64, i64* %RBP
  br i1 %617, label %block_400c7e, label %block_400c00

block_400c00:                                     ; preds = %block_400bf4
  %625 = sub i64 %624, 16
  %626 = load i64, i64* %PC
  %627 = add i64 %626, 4
  store i64 %627, i64* %PC
  %628 = inttoptr i64 %625 to i32*
  %629 = load i32, i32* %628
  %630 = sext i32 %629 to i64
  store i64 %630, i64* %RCX, align 8, !tbaa !2428
  %631 = load i64, i64* %RCX
  %632 = load i64, i64* %PC
  %633 = add i64 %632, 4
  store i64 %633, i64* %PC
  %634 = sext i64 %631 to i128
  %635 = and i128 %634, -18446744073709551616
  %636 = zext i64 %631 to i128
  %637 = or i128 %635, %636
  %638 = mul nsw i128 24, %637
  %639 = trunc i128 %638 to i64
  store i64 %639, i64* %RCX, align 8, !tbaa !2428
  %640 = sext i64 %639 to i128
  %641 = icmp ne i128 %640, %638
  %642 = zext i1 %641 to i8
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %642, i8* %643, align 1, !tbaa !2432
  %644 = trunc i128 %638 to i32
  %645 = and i32 %644, 255
  %646 = call i32 @llvm.ctpop.i32(i32 %645) #16
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %649, i8* %650, align 1, !tbaa !2446
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %651, align 1, !tbaa !2447
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %652, align 1, !tbaa !2448
  %653 = lshr i64 %639, 63
  %654 = trunc i64 %653 to i8
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %654, i8* %655, align 1, !tbaa !2449
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %642, i8* %656, align 1, !tbaa !2450
  %657 = load i64, i64* %RAX
  %658 = load i64, i64* %RCX
  %659 = load i64, i64* %PC
  %660 = add i64 %659, 3
  store i64 %660, i64* %PC
  %661 = add i64 %658, %657
  store i64 %661, i64* %RAX, align 8, !tbaa !2428
  %662 = icmp ult i64 %661, %657
  %663 = icmp ult i64 %661, %658
  %664 = or i1 %662, %663
  %665 = zext i1 %664 to i8
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %665, i8* %666, align 1, !tbaa !2432
  %667 = trunc i64 %661 to i32
  %668 = and i32 %667, 255
  %669 = call i32 @llvm.ctpop.i32(i32 %668) #16
  %670 = trunc i32 %669 to i8
  %671 = and i8 %670, 1
  %672 = xor i8 %671, 1
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %672, i8* %673, align 1, !tbaa !2446
  %674 = xor i64 %658, %657
  %675 = xor i64 %674, %661
  %676 = lshr i64 %675, 4
  %677 = trunc i64 %676 to i8
  %678 = and i8 %677, 1
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %678, i8* %679, align 1, !tbaa !2447
  %680 = icmp eq i64 %661, 0
  %681 = zext i1 %680 to i8
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %681, i8* %682, align 1, !tbaa !2448
  %683 = lshr i64 %661, 63
  %684 = trunc i64 %683 to i8
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %684, i8* %685, align 1, !tbaa !2449
  %686 = lshr i64 %657, 63
  %687 = lshr i64 %658, 63
  %688 = xor i64 %683, %686
  %689 = xor i64 %683, %687
  %690 = add nuw nsw i64 %688, %689
  %691 = icmp eq i64 %690, 2
  %692 = zext i1 %691 to i8
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %692, i8* %693, align 1, !tbaa !2450
  %694 = load i64, i64* %RBP
  %695 = sub i64 %694, 40
  %696 = load i64, i64* %PC
  %697 = add i64 %696, 4
  store i64 %697, i64* %PC
  %698 = inttoptr i64 %695 to i64*
  %699 = load i64, i64* %698
  store i64 %699, i64* %RCX, align 8, !tbaa !2428
  %700 = load i64, i64* %RBP
  %701 = sub i64 %700, 12
  %702 = load i64, i64* %PC
  %703 = add i64 %702, 4
  store i64 %703, i64* %PC
  %704 = inttoptr i64 %701 to i32*
  %705 = load i32, i32* %704
  %706 = sext i32 %705 to i64
  store i64 %706, i64* %RDX, align 8, !tbaa !2428
  %707 = load i64, i64* %RDX
  %708 = load i64, i64* %PC
  %709 = add i64 %708, 4
  store i64 %709, i64* %PC
  %710 = sext i64 %707 to i128
  %711 = and i128 %710, -18446744073709551616
  %712 = zext i64 %707 to i128
  %713 = or i128 %711, %712
  %714 = mul nsw i128 24, %713
  %715 = trunc i128 %714 to i64
  store i64 %715, i64* %RDX, align 8, !tbaa !2428
  %716 = sext i64 %715 to i128
  %717 = icmp ne i128 %716, %714
  %718 = zext i1 %717 to i8
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %718, i8* %719, align 1, !tbaa !2432
  %720 = trunc i128 %714 to i32
  %721 = and i32 %720, 255
  %722 = call i32 @llvm.ctpop.i32(i32 %721) #16
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %725, i8* %726, align 1, !tbaa !2446
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %727, align 1, !tbaa !2447
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %728, align 1, !tbaa !2448
  %729 = lshr i64 %715, 63
  %730 = trunc i64 %729 to i8
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %730, i8* %731, align 1, !tbaa !2449
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %718, i8* %732, align 1, !tbaa !2450
  %733 = load i64, i64* %RCX
  %734 = load i64, i64* %RDX
  %735 = load i64, i64* %PC
  %736 = add i64 %735, 3
  store i64 %736, i64* %PC
  %737 = add i64 %734, %733
  store i64 %737, i64* %RCX, align 8, !tbaa !2428
  %738 = icmp ult i64 %737, %733
  %739 = icmp ult i64 %737, %734
  %740 = or i1 %738, %739
  %741 = zext i1 %740 to i8
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %741, i8* %742, align 1, !tbaa !2432
  %743 = trunc i64 %737 to i32
  %744 = and i32 %743, 255
  %745 = call i32 @llvm.ctpop.i32(i32 %744) #16
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  %748 = xor i8 %747, 1
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %748, i8* %749, align 1, !tbaa !2446
  %750 = xor i64 %734, %733
  %751 = xor i64 %750, %737
  %752 = lshr i64 %751, 4
  %753 = trunc i64 %752 to i8
  %754 = and i8 %753, 1
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %754, i8* %755, align 1, !tbaa !2447
  %756 = icmp eq i64 %737, 0
  %757 = zext i1 %756 to i8
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %757, i8* %758, align 1, !tbaa !2448
  %759 = lshr i64 %737, 63
  %760 = trunc i64 %759 to i8
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %760, i8* %761, align 1, !tbaa !2449
  %762 = lshr i64 %733, 63
  %763 = lshr i64 %734, 63
  %764 = xor i64 %759, %762
  %765 = xor i64 %759, %763
  %766 = add nuw nsw i64 %764, %765
  %767 = icmp eq i64 %766, 2
  %768 = zext i1 %767 to i8
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %768, i8* %769, align 1, !tbaa !2450
  %770 = load i64, i64* %RCX
  %771 = add i64 %770, 8
  %772 = load i64, i64* %RAX
  %773 = load i64, i64* %PC
  %774 = add i64 %773, 4
  store i64 %774, i64* %PC
  %775 = inttoptr i64 %771 to i64*
  store i64 %772, i64* %775
  %776 = load i64, i64* %RBP
  %777 = sub i64 %776, 40
  %778 = load i64, i64* %PC
  %779 = add i64 %778, 4
  store i64 %779, i64* %PC
  %780 = inttoptr i64 %777 to i64*
  %781 = load i64, i64* %780
  store i64 %781, i64* %RAX, align 8, !tbaa !2428
  %782 = load i64, i64* %RBP
  %783 = sub i64 %782, 12
  %784 = load i64, i64* %PC
  %785 = add i64 %784, 4
  store i64 %785, i64* %PC
  %786 = inttoptr i64 %783 to i32*
  %787 = load i32, i32* %786
  %788 = sext i32 %787 to i64
  store i64 %788, i64* %RCX, align 8, !tbaa !2428
  %789 = load i64, i64* %RCX
  %790 = load i64, i64* %PC
  %791 = add i64 %790, 4
  store i64 %791, i64* %PC
  %792 = sext i64 %789 to i128
  %793 = and i128 %792, -18446744073709551616
  %794 = zext i64 %789 to i128
  %795 = or i128 %793, %794
  %796 = mul nsw i128 24, %795
  %797 = trunc i128 %796 to i64
  store i64 %797, i64* %RCX, align 8, !tbaa !2428
  %798 = sext i64 %797 to i128
  %799 = icmp ne i128 %798, %796
  %800 = zext i1 %799 to i8
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %800, i8* %801, align 1, !tbaa !2432
  %802 = trunc i128 %796 to i32
  %803 = and i32 %802, 255
  %804 = call i32 @llvm.ctpop.i32(i32 %803) #16
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  %807 = xor i8 %806, 1
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %807, i8* %808, align 1, !tbaa !2446
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %809, align 1, !tbaa !2447
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %810, align 1, !tbaa !2448
  %811 = lshr i64 %797, 63
  %812 = trunc i64 %811 to i8
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %812, i8* %813, align 1, !tbaa !2449
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %800, i8* %814, align 1, !tbaa !2450
  %815 = load i64, i64* %RAX
  %816 = load i64, i64* %RCX
  %817 = load i64, i64* %PC
  %818 = add i64 %817, 3
  store i64 %818, i64* %PC
  %819 = add i64 %816, %815
  store i64 %819, i64* %RAX, align 8, !tbaa !2428
  %820 = icmp ult i64 %819, %815
  %821 = icmp ult i64 %819, %816
  %822 = or i1 %820, %821
  %823 = zext i1 %822 to i8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %823, i8* %824, align 1, !tbaa !2432
  %825 = trunc i64 %819 to i32
  %826 = and i32 %825, 255
  %827 = call i32 @llvm.ctpop.i32(i32 %826) #16
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  %830 = xor i8 %829, 1
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %830, i8* %831, align 1, !tbaa !2446
  %832 = xor i64 %816, %815
  %833 = xor i64 %832, %819
  %834 = lshr i64 %833, 4
  %835 = trunc i64 %834 to i8
  %836 = and i8 %835, 1
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %836, i8* %837, align 1, !tbaa !2447
  %838 = icmp eq i64 %819, 0
  %839 = zext i1 %838 to i8
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %839, i8* %840, align 1, !tbaa !2448
  %841 = lshr i64 %819, 63
  %842 = trunc i64 %841 to i8
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %842, i8* %843, align 1, !tbaa !2449
  %844 = lshr i64 %815, 63
  %845 = lshr i64 %816, 63
  %846 = xor i64 %841, %844
  %847 = xor i64 %841, %845
  %848 = add nuw nsw i64 %846, %847
  %849 = icmp eq i64 %848, 2
  %850 = zext i1 %849 to i8
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %850, i8* %851, align 1, !tbaa !2450
  %852 = load i64, i64* %RBP
  %853 = sub i64 %852, 40
  %854 = load i64, i64* %PC
  %855 = add i64 %854, 4
  store i64 %855, i64* %PC
  %856 = inttoptr i64 %853 to i64*
  %857 = load i64, i64* %856
  store i64 %857, i64* %RCX, align 8, !tbaa !2428
  %858 = load i64, i64* %RBP
  %859 = sub i64 %858, 16
  %860 = load i64, i64* %PC
  %861 = add i64 %860, 4
  store i64 %861, i64* %PC
  %862 = inttoptr i64 %859 to i32*
  %863 = load i32, i32* %862
  %864 = sext i32 %863 to i64
  store i64 %864, i64* %RDX, align 8, !tbaa !2428
  %865 = load i64, i64* %RDX
  %866 = load i64, i64* %PC
  %867 = add i64 %866, 4
  store i64 %867, i64* %PC
  %868 = sext i64 %865 to i128
  %869 = and i128 %868, -18446744073709551616
  %870 = zext i64 %865 to i128
  %871 = or i128 %869, %870
  %872 = mul nsw i128 24, %871
  %873 = trunc i128 %872 to i64
  store i64 %873, i64* %RDX, align 8, !tbaa !2428
  %874 = sext i64 %873 to i128
  %875 = icmp ne i128 %874, %872
  %876 = zext i1 %875 to i8
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %876, i8* %877, align 1, !tbaa !2432
  %878 = trunc i128 %872 to i32
  %879 = and i32 %878, 255
  %880 = call i32 @llvm.ctpop.i32(i32 %879) #16
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = xor i8 %882, 1
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %883, i8* %884, align 1, !tbaa !2446
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %885, align 1, !tbaa !2447
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %886, align 1, !tbaa !2448
  %887 = lshr i64 %873, 63
  %888 = trunc i64 %887 to i8
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %888, i8* %889, align 1, !tbaa !2449
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %876, i8* %890, align 1, !tbaa !2450
  %891 = load i64, i64* %RCX
  %892 = load i64, i64* %RDX
  %893 = load i64, i64* %PC
  %894 = add i64 %893, 3
  store i64 %894, i64* %PC
  %895 = add i64 %892, %891
  store i64 %895, i64* %RCX, align 8, !tbaa !2428
  %896 = icmp ult i64 %895, %891
  %897 = icmp ult i64 %895, %892
  %898 = or i1 %896, %897
  %899 = zext i1 %898 to i8
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %899, i8* %900, align 1, !tbaa !2432
  %901 = trunc i64 %895 to i32
  %902 = and i32 %901, 255
  %903 = call i32 @llvm.ctpop.i32(i32 %902) #16
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  %906 = xor i8 %905, 1
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %906, i8* %907, align 1, !tbaa !2446
  %908 = xor i64 %892, %891
  %909 = xor i64 %908, %895
  %910 = lshr i64 %909, 4
  %911 = trunc i64 %910 to i8
  %912 = and i8 %911, 1
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %912, i8* %913, align 1, !tbaa !2447
  %914 = icmp eq i64 %895, 0
  %915 = zext i1 %914 to i8
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %915, i8* %916, align 1, !tbaa !2448
  %917 = lshr i64 %895, 63
  %918 = trunc i64 %917 to i8
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %918, i8* %919, align 1, !tbaa !2449
  %920 = lshr i64 %891, 63
  %921 = lshr i64 %892, 63
  %922 = xor i64 %917, %920
  %923 = xor i64 %917, %921
  %924 = add nuw nsw i64 %922, %923
  %925 = icmp eq i64 %924, 2
  %926 = zext i1 %925 to i8
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %926, i8* %927, align 1, !tbaa !2450
  %928 = load i64, i64* %RCX
  %929 = add i64 %928, 16
  %930 = load i64, i64* %RAX
  %931 = load i64, i64* %PC
  %932 = add i64 %931, 4
  store i64 %932, i64* %PC
  %933 = inttoptr i64 %929 to i64*
  store i64 %930, i64* %933
  %934 = load i64, i64* %RBP
  %935 = sub i64 %934, 32
  %936 = load i64, i64* %PC
  %937 = add i64 %936, 4
  store i64 %937, i64* %PC
  %938 = inttoptr i64 %935 to i64*
  %939 = load i64, i64* %938
  store i64 %939, i64* %RAX, align 8, !tbaa !2428
  %940 = load i64, i64* %RAX
  %941 = load i64, i64* %PC
  %942 = add i64 %941, 2
  store i64 %942, i64* %PC
  %943 = inttoptr i64 %940 to i32*
  %944 = load i32, i32* %943
  %945 = zext i32 %944 to i64
  store i64 %945, i64* %RSI, align 8, !tbaa !2428
  %946 = load i64, i64* %RBP
  %947 = sub i64 %946, 40
  %948 = load i64, i64* %PC
  %949 = add i64 %948, 4
  store i64 %949, i64* %PC
  %950 = inttoptr i64 %947 to i64*
  %951 = load i64, i64* %950
  store i64 %951, i64* %RAX, align 8, !tbaa !2428
  %952 = load i64, i64* %RBP
  %953 = sub i64 %952, 12
  %954 = load i64, i64* %PC
  %955 = add i64 %954, 4
  store i64 %955, i64* %PC
  %956 = inttoptr i64 %953 to i32*
  %957 = load i32, i32* %956
  %958 = sext i32 %957 to i64
  store i64 %958, i64* %RCX, align 8, !tbaa !2428
  %959 = load i64, i64* %RCX
  %960 = load i64, i64* %PC
  %961 = add i64 %960, 4
  store i64 %961, i64* %PC
  %962 = sext i64 %959 to i128
  %963 = and i128 %962, -18446744073709551616
  %964 = zext i64 %959 to i128
  %965 = or i128 %963, %964
  %966 = mul nsw i128 24, %965
  %967 = trunc i128 %966 to i64
  store i64 %967, i64* %RCX, align 8, !tbaa !2428
  %968 = sext i64 %967 to i128
  %969 = icmp ne i128 %968, %966
  %970 = zext i1 %969 to i8
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %970, i8* %971, align 1, !tbaa !2432
  %972 = trunc i128 %966 to i32
  %973 = and i32 %972, 255
  %974 = call i32 @llvm.ctpop.i32(i32 %973) #16
  %975 = trunc i32 %974 to i8
  %976 = and i8 %975, 1
  %977 = xor i8 %976, 1
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %977, i8* %978, align 1, !tbaa !2446
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %979, align 1, !tbaa !2447
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %980, align 1, !tbaa !2448
  %981 = lshr i64 %967, 63
  %982 = trunc i64 %981 to i8
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %982, i8* %983, align 1, !tbaa !2449
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %970, i8* %984, align 1, !tbaa !2450
  %985 = load i64, i64* %RAX
  %986 = load i64, i64* %RCX
  %987 = load i64, i64* %PC
  %988 = add i64 %987, 3
  store i64 %988, i64* %PC
  %989 = add i64 %986, %985
  store i64 %989, i64* %RAX, align 8, !tbaa !2428
  %990 = icmp ult i64 %989, %985
  %991 = icmp ult i64 %989, %986
  %992 = or i1 %990, %991
  %993 = zext i1 %992 to i8
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %993, i8* %994, align 1, !tbaa !2432
  %995 = trunc i64 %989 to i32
  %996 = and i32 %995, 255
  %997 = call i32 @llvm.ctpop.i32(i32 %996) #16
  %998 = trunc i32 %997 to i8
  %999 = and i8 %998, 1
  %1000 = xor i8 %999, 1
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1000, i8* %1001, align 1, !tbaa !2446
  %1002 = xor i64 %986, %985
  %1003 = xor i64 %1002, %989
  %1004 = lshr i64 %1003, 4
  %1005 = trunc i64 %1004 to i8
  %1006 = and i8 %1005, 1
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1006, i8* %1007, align 1, !tbaa !2447
  %1008 = icmp eq i64 %989, 0
  %1009 = zext i1 %1008 to i8
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1009, i8* %1010, align 1, !tbaa !2448
  %1011 = lshr i64 %989, 63
  %1012 = trunc i64 %1011 to i8
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1012, i8* %1013, align 1, !tbaa !2449
  %1014 = lshr i64 %985, 63
  %1015 = lshr i64 %986, 63
  %1016 = xor i64 %1011, %1014
  %1017 = xor i64 %1011, %1015
  %1018 = add nuw nsw i64 %1016, %1017
  %1019 = icmp eq i64 %1018, 2
  %1020 = zext i1 %1019 to i8
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1020, i8* %1021, align 1, !tbaa !2450
  %1022 = load i64, i64* %RAX
  %1023 = load i32, i32* %ESI
  %1024 = zext i32 %1023 to i64
  %1025 = load i64, i64* %PC
  %1026 = add i64 %1025, 2
  store i64 %1026, i64* %PC
  %1027 = inttoptr i64 %1022 to i32*
  store i32 %1023, i32* %1027
  %1028 = load i64, i64* %RBP
  %1029 = sub i64 %1028, 12
  %1030 = load i64, i64* %PC
  %1031 = add i64 %1030, 3
  store i64 %1031, i64* %PC
  %1032 = inttoptr i64 %1029 to i32*
  %1033 = load i32, i32* %1032
  %1034 = zext i32 %1033 to i64
  store i64 %1034, i64* %RAX, align 8, !tbaa !2428
  %1035 = load i64, i64* %RAX
  %1036 = load i64, i64* %PC
  %1037 = add i64 %1036, 3
  store i64 %1037, i64* %PC
  %1038 = trunc i64 %1035 to i32
  %1039 = add i32 1, %1038
  %1040 = zext i32 %1039 to i64
  store i64 %1040, i64* %RAX, align 8, !tbaa !2428
  %1041 = icmp ult i32 %1039, %1038
  %1042 = icmp ult i32 %1039, 1
  %1043 = or i1 %1041, %1042
  %1044 = zext i1 %1043 to i8
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1044, i8* %1045, align 1, !tbaa !2432
  %1046 = and i32 %1039, 255
  %1047 = call i32 @llvm.ctpop.i32(i32 %1046) #16
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  %1050 = xor i8 %1049, 1
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1050, i8* %1051, align 1, !tbaa !2446
  %1052 = xor i64 1, %1035
  %1053 = trunc i64 %1052 to i32
  %1054 = xor i32 %1053, %1039
  %1055 = lshr i32 %1054, 4
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1057, i8* %1058, align 1, !tbaa !2447
  %1059 = icmp eq i32 %1039, 0
  %1060 = zext i1 %1059 to i8
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1060, i8* %1061, align 1, !tbaa !2448
  %1062 = lshr i32 %1039, 31
  %1063 = trunc i32 %1062 to i8
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1063, i8* %1064, align 1, !tbaa !2449
  %1065 = lshr i32 %1038, 31
  %1066 = xor i32 %1062, %1065
  %1067 = add nuw nsw i32 %1066, %1062
  %1068 = icmp eq i32 %1067, 2
  %1069 = zext i1 %1068 to i8
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1069, i8* %1070, align 1, !tbaa !2450
  %1071 = load i64, i64* %RBP
  %1072 = sub i64 %1071, 12
  %1073 = load i32, i32* %EAX
  %1074 = zext i32 %1073 to i64
  %1075 = load i64, i64* %PC
  %1076 = add i64 %1075, 3
  store i64 %1076, i64* %PC
  %1077 = inttoptr i64 %1072 to i32*
  store i32 %1073, i32* %1077
  %1078 = load i64, i64* %RBP
  %1079 = sub i64 %1078, 16
  %1080 = load i64, i64* %PC
  %1081 = add i64 %1080, 3
  store i64 %1081, i64* %PC
  %1082 = inttoptr i64 %1079 to i32*
  %1083 = load i32, i32* %1082
  %1084 = zext i32 %1083 to i64
  store i64 %1084, i64* %RAX, align 8, !tbaa !2428
  %1085 = load i64, i64* %RAX
  %1086 = load i64, i64* %PC
  %1087 = add i64 %1086, 3
  store i64 %1087, i64* %PC
  %1088 = trunc i64 %1085 to i32
  %1089 = add i32 1, %1088
  %1090 = zext i32 %1089 to i64
  store i64 %1090, i64* %RAX, align 8, !tbaa !2428
  %1091 = icmp ult i32 %1089, %1088
  %1092 = icmp ult i32 %1089, 1
  %1093 = or i1 %1091, %1092
  %1094 = zext i1 %1093 to i8
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1094, i8* %1095, align 1, !tbaa !2432
  %1096 = and i32 %1089, 255
  %1097 = call i32 @llvm.ctpop.i32(i32 %1096) #16
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1100, i8* %1101, align 1, !tbaa !2446
  %1102 = xor i64 1, %1085
  %1103 = trunc i64 %1102 to i32
  %1104 = xor i32 %1103, %1089
  %1105 = lshr i32 %1104, 4
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1107, i8* %1108, align 1, !tbaa !2447
  %1109 = icmp eq i32 %1089, 0
  %1110 = zext i1 %1109 to i8
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1110, i8* %1111, align 1, !tbaa !2448
  %1112 = lshr i32 %1089, 31
  %1113 = trunc i32 %1112 to i8
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1113, i8* %1114, align 1, !tbaa !2449
  %1115 = lshr i32 %1088, 31
  %1116 = xor i32 %1112, %1115
  %1117 = add nuw nsw i32 %1116, %1112
  %1118 = icmp eq i32 %1117, 2
  %1119 = zext i1 %1118 to i8
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1119, i8* %1120, align 1, !tbaa !2450
  %1121 = load i64, i64* %RBP
  %1122 = sub i64 %1121, 16
  %1123 = load i32, i32* %EAX
  %1124 = zext i32 %1123 to i64
  %1125 = load i64, i64* %PC
  %1126 = add i64 %1125, 3
  store i64 %1126, i64* %PC
  %1127 = inttoptr i64 %1122 to i32*
  store i32 %1123, i32* %1127
  %1128 = load i64, i64* %RBP
  %1129 = sub i64 %1128, 32
  %1130 = load i64, i64* %PC
  %1131 = add i64 %1130, 4
  store i64 %1131, i64* %PC
  %1132 = inttoptr i64 %1129 to i64*
  %1133 = load i64, i64* %1132
  store i64 %1133, i64* %RCX, align 8, !tbaa !2428
  %1134 = load i64, i64* %RCX
  %1135 = add i64 %1134, 8
  %1136 = load i64, i64* %PC
  %1137 = add i64 %1136, 4
  store i64 %1137, i64* %PC
  %1138 = inttoptr i64 %1135 to i64*
  %1139 = load i64, i64* %1138
  store i64 %1139, i64* %RCX, align 8, !tbaa !2428
  %1140 = load i64, i64* %RBP
  %1141 = sub i64 %1140, 32
  %1142 = load i64, i64* %RCX
  %1143 = load i64, i64* %PC
  %1144 = add i64 %1143, 4
  store i64 %1144, i64* %PC
  %1145 = inttoptr i64 %1141 to i64*
  store i64 %1142, i64* %1145
  %1146 = load i64, i64* %PC
  %1147 = sub i64 %1146, 133
  %1148 = load i64, i64* %PC
  %1149 = add i64 %1148, 5
  store i64 %1149, i64* %PC
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1147, i64* %1150, align 8, !tbaa !2428
  br label %block_400bf4
}

; Function Attrs: noinline
define %struct.Memory* @sub_400650_list_push_tail(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400650:
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
  %53 = add i64 %52, 16
  %54 = load i64, i64* %PC
  %55 = add i64 %54, 4
  store i64 %55, i64* %PC
  %56 = inttoptr i64 %53 to i64*
  %57 = load i64, i64* %56
  store i64 %57, i64* %RSI, align 8, !tbaa !2428
  %58 = load i64, i64* %RBP
  %59 = sub i64 %58, 24
  %60 = load i64, i64* %RSI
  %61 = load i64, i64* %PC
  %62 = add i64 %61, 4
  store i64 %62, i64* %PC
  %63 = inttoptr i64 %59 to i64*
  store i64 %60, i64* %63
  %64 = load i64, i64* %RBP
  %65 = sub i64 %64, 16
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC
  %68 = inttoptr i64 %65 to i64*
  %69 = load i64, i64* %68
  store i64 %69, i64* %RSI, align 8, !tbaa !2428
  %70 = load i64, i64* %RBP
  %71 = sub i64 %70, 24
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 4
  store i64 %73, i64* %PC
  %74 = inttoptr i64 %71 to i64*
  %75 = load i64, i64* %74
  store i64 %75, i64* %RDI, align 8, !tbaa !2428
  %76 = load i64, i64* %RDI
  %77 = add i64 %76, 8
  %78 = load i64, i64* %RSI
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  %82 = load i64, i64* %RBP
  %83 = sub i64 %82, 8
  %84 = load i64, i64* %PC
  %85 = add i64 %84, 4
  store i64 %85, i64* %PC
  %86 = inttoptr i64 %83 to i64*
  %87 = load i64, i64* %86
  store i64 %87, i64* %RSI, align 8, !tbaa !2428
  %88 = load i64, i64* %RBP
  %89 = sub i64 %88, 16
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 4
  store i64 %91, i64* %PC
  %92 = inttoptr i64 %89 to i64*
  %93 = load i64, i64* %92
  store i64 %93, i64* %RDI, align 8, !tbaa !2428
  %94 = load i64, i64* %RDI
  %95 = add i64 %94, 8
  %96 = load i64, i64* %RSI
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 4
  store i64 %98, i64* %PC
  %99 = inttoptr i64 %95 to i64*
  store i64 %96, i64* %99
  %100 = load i64, i64* %RBP
  %101 = sub i64 %100, 16
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC
  %104 = inttoptr i64 %101 to i64*
  %105 = load i64, i64* %104
  store i64 %105, i64* %RSI, align 8, !tbaa !2428
  %106 = load i64, i64* %RBP
  %107 = sub i64 %106, 8
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 4
  store i64 %109, i64* %PC
  %110 = inttoptr i64 %107 to i64*
  %111 = load i64, i64* %110
  store i64 %111, i64* %RDI, align 8, !tbaa !2428
  %112 = load i64, i64* %RDI
  %113 = add i64 %112, 16
  %114 = load i64, i64* %RSI
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 4
  store i64 %116, i64* %PC
  %117 = inttoptr i64 %113 to i64*
  store i64 %114, i64* %117
  %118 = load i64, i64* %RBP
  %119 = sub i64 %118, 24
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 4
  store i64 %121, i64* %PC
  %122 = inttoptr i64 %119 to i64*
  %123 = load i64, i64* %122
  store i64 %123, i64* %RSI, align 8, !tbaa !2428
  %124 = load i64, i64* %RBP
  %125 = sub i64 %124, 16
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 4
  store i64 %127, i64* %PC
  %128 = inttoptr i64 %125 to i64*
  %129 = load i64, i64* %128
  store i64 %129, i64* %RDI, align 8, !tbaa !2428
  %130 = load i64, i64* %RDI
  %131 = add i64 %130, 16
  %132 = load i64, i64* %RSI
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 4
  store i64 %134, i64* %PC
  %135 = inttoptr i64 %131 to i64*
  store i64 %132, i64* %135
  %136 = load i64, i64* %RBP
  %137 = sub i64 %136, 8
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 4
  store i64 %139, i64* %PC
  %140 = inttoptr i64 %137 to i64*
  %141 = load i64, i64* %140
  store i64 %141, i64* %RSI, align 8, !tbaa !2428
  %142 = load i64, i64* %RSI
  %143 = load i64, i64* %PC
  %144 = add i64 %143, 2
  store i64 %144, i64* %PC
  %145 = inttoptr i64 %142 to i32*
  %146 = load i32, i32* %145
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RAX, align 8, !tbaa !2428
  %148 = load i64, i64* %RAX
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 3
  store i64 %150, i64* %PC
  %151 = trunc i64 %148 to i32
  %152 = add i32 1, %151
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RAX, align 8, !tbaa !2428
  %154 = icmp ult i32 %152, %151
  %155 = icmp ult i32 %152, 1
  %156 = or i1 %154, %155
  %157 = zext i1 %156 to i8
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %157, i8* %158, align 1, !tbaa !2432
  %159 = and i32 %152, 255
  %160 = call i32 @llvm.ctpop.i32(i32 %159) #16
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  %163 = xor i8 %162, 1
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %163, i8* %164, align 1, !tbaa !2446
  %165 = xor i64 1, %148
  %166 = trunc i64 %165 to i32
  %167 = xor i32 %166, %152
  %168 = lshr i32 %167, 4
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %170, i8* %171, align 1, !tbaa !2447
  %172 = icmp eq i32 %152, 0
  %173 = zext i1 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %173, i8* %174, align 1, !tbaa !2448
  %175 = lshr i32 %152, 31
  %176 = trunc i32 %175 to i8
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %176, i8* %177, align 1, !tbaa !2449
  %178 = lshr i32 %151, 31
  %179 = xor i32 %175, %178
  %180 = add nuw nsw i32 %179, %175
  %181 = icmp eq i32 %180, 2
  %182 = zext i1 %181 to i8
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %182, i8* %183, align 1, !tbaa !2450
  %184 = load i64, i64* %RSI
  %185 = load i32, i32* %EAX
  %186 = zext i32 %185 to i64
  %187 = load i64, i64* %PC
  %188 = add i64 %187, 2
  store i64 %188, i64* %PC
  %189 = inttoptr i64 %184 to i32*
  store i32 %185, i32* %189
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 1
  store i64 %191, i64* %PC
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %193 = load i64, i64* %192, align 8, !tbaa !2428
  %194 = add i64 %193, 8
  %195 = inttoptr i64 %193 to i64*
  %196 = load i64, i64* %195
  store i64 %196, i64* %RBP, align 8, !tbaa !2428
  store i64 %194, i64* %192, align 8, !tbaa !2428
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 1
  store i64 %198, i64* %PC
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %201 = load i64, i64* %200, align 8, !tbaa !2428
  %202 = inttoptr i64 %201 to i64*
  %203 = load i64, i64* %202
  store i64 %203, i64* %199, align 8, !tbaa !2428
  %204 = add i64 %201, 8
  store i64 %204, i64* %200, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400640_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400640:
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
  %35 = tail call %struct.Memory* @sub_4005d0_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ce0_list_last(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ce0:
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
  %28 = load i64, i64* %RBP
  %29 = sub i64 %28, 8
  %30 = load i64, i64* %RDI
  %31 = load i64, i64* %PC
  %32 = add i64 %31, 4
  store i64 %32, i64* %PC
  %33 = inttoptr i64 %29 to i64*
  store i64 %30, i64* %33
  %34 = load i64, i64* %RBP
  %35 = sub i64 %34, 8
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC
  %38 = inttoptr i64 %35 to i64*
  %39 = load i64, i64* %38
  store i64 %39, i64* %RDI, align 8, !tbaa !2428
  %40 = load i64, i64* %RDI
  %41 = add i64 %40, 16
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC
  %44 = inttoptr i64 %41 to i64*
  %45 = load i64, i64* %44
  store i64 %45, i64* %RAX, align 8, !tbaa !2428
  %46 = load i64, i64* %PC
  %47 = add i64 %46, 1
  store i64 %47, i64* %PC
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %49 = load i64, i64* %48, align 8, !tbaa !2428
  %50 = add i64 %49, 8
  %51 = inttoptr i64 %49 to i64*
  %52 = load i64, i64* %51
  store i64 %52, i64* %RBP, align 8, !tbaa !2428
  store i64 %50, i64* %48, align 8, !tbaa !2428
  %53 = load i64, i64* %PC
  %54 = add i64 %53, 1
  store i64 %54, i64* %PC
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %57 = load i64, i64* %56, align 8, !tbaa !2428
  %58 = inttoptr i64 %57 to i64*
  %59 = load i64, i64* %58
  store i64 %59, i64* %55, align 8, !tbaa !2428
  %60 = add i64 %57, 8
  store i64 %60, i64* %56, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007d0_list_pop_head(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4007d0:
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
  %34 = load i64, i64* %33, align 8, !tbaa !2428
  %35 = add i64 %34, -8
  %36 = inttoptr i64 %35 to i64*
  store i64 %30, i64* %36
  store i64 %35, i64* %33, align 8, !tbaa !2428
  %37 = load i64, i64* %RSP
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 3
  store i64 %39, i64* %PC
  store i64 %37, i64* %RBP, align 8, !tbaa !2428
  %40 = load i64, i64* %RSP
  %41 = load i64, i64* %PC
  %42 = add i64 %41, 4
  store i64 %42, i64* %PC
  %43 = sub i64 %40, 32
  store i64 %43, i64* %RSP, align 8, !tbaa !2428
  %44 = icmp ult i64 %40, 32
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %45, i8* %46, align 1, !tbaa !2432
  %47 = trunc i64 %43 to i32
  %48 = and i32 %47, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %48) #16
  %50 = trunc i32 %49 to i8
  %51 = and i8 %50, 1
  %52 = xor i8 %51, 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %52, i8* %53, align 1, !tbaa !2446
  %54 = xor i64 32, %40
  %55 = xor i64 %54, %43
  %56 = lshr i64 %55, 4
  %57 = trunc i64 %56 to i8
  %58 = and i8 %57, 1
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %58, i8* %59, align 1, !tbaa !2447
  %60 = icmp eq i64 %43, 0
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %61, i8* %62, align 1, !tbaa !2448
  %63 = lshr i64 %43, 63
  %64 = trunc i64 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %64, i8* %65, align 1, !tbaa !2449
  %66 = lshr i64 %40, 63
  %67 = xor i64 %63, %66
  %68 = add nuw nsw i64 %67, %66
  %69 = icmp eq i64 %68, 2
  %70 = zext i1 %69 to i8
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %70, i8* %71, align 1, !tbaa !2450
  %72 = load i64, i64* %RBP
  %73 = sub i64 %72, 16
  %74 = load i64, i64* %RDI
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 4
  store i64 %76, i64* %PC
  %77 = inttoptr i64 %73 to i64*
  store i64 %74, i64* %77
  %78 = load i64, i64* %RBP
  %79 = sub i64 %78, 16
  %80 = load i64, i64* %PC
  %81 = add i64 %80, 4
  store i64 %81, i64* %PC
  %82 = inttoptr i64 %79 to i64*
  %83 = load i64, i64* %82
  store i64 %83, i64* %RDI, align 8, !tbaa !2428
  %84 = load i64, i64* %PC
  %85 = sub i64 %84, 176
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 5
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 5
  store i64 %89, i64* %PC
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %91 = load i64, i64* %90, align 8, !tbaa !2428
  %92 = add i64 %91, -8
  %93 = inttoptr i64 %92 to i64*
  store i64 %87, i64* %93
  store i64 %92, i64* %90, align 8, !tbaa !2428
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %85, i64* %94, align 8, !tbaa !2428
  %95 = load i64, i64* %PC
  %96 = call %struct.Memory* @sub_400730_list_empty_renamed_(%struct.State* %0, i64 %95, %struct.Memory* %2)
  %97 = load i32, i32* %EAX
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 3
  store i64 %100, i64* %PC
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %101, align 1, !tbaa !2432
  %102 = and i32 %97, 255
  %103 = call i32 @llvm.ctpop.i32(i32 %102) #16
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  %106 = xor i8 %105, 1
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %106, i8* %107, align 1, !tbaa !2446
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %108, align 1, !tbaa !2447
  %109 = icmp eq i32 %97, 0
  %110 = zext i1 %109 to i8
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %110, i8* %111, align 1, !tbaa !2448
  %112 = lshr i32 %97, 31
  %113 = trunc i32 %112 to i8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %113, i8* %114, align 1, !tbaa !2449
  %115 = lshr i32 %97, 31
  %116 = xor i32 %112, %115
  %117 = add nuw nsw i32 %116, %115
  %118 = icmp eq i32 %117, 2
  %119 = zext i1 %118 to i8
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %119, i8* %120, align 1, !tbaa !2450
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 19
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 6
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 6
  store i64 %126, i64* %PC
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %128 = load i8, i8* %127, align 1, !tbaa !2448
  store i8 %128, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %130 = icmp ne i8 %128, 0
  %131 = select i1 %130, i64 %122, i64 %124
  store i64 %131, i64* %129, align 8, !tbaa !2428
  %132 = load i8, i8* %BRANCH_TAKEN
  %133 = icmp eq i8 %132, 1
  %134 = load i64, i64* %RBP
  br i1 %133, label %block_4007fb, label %block_4007ee

block_4007fb:                                     ; preds = %block_4007d0
  %135 = sub i64 %134, 16
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 4
  store i64 %137, i64* %PC
  %138 = inttoptr i64 %135 to i64*
  %139 = load i64, i64* %138
  store i64 %139, i64* %RAX, align 8, !tbaa !2428
  %140 = load i64, i64* %RAX
  %141 = add i64 %140, 8
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 4
  store i64 %143, i64* %PC
  %144 = inttoptr i64 %141 to i64*
  %145 = load i64, i64* %144
  store i64 %145, i64* %RAX, align 8, !tbaa !2428
  %146 = load i64, i64* %RBP
  %147 = sub i64 %146, 24
  %148 = load i64, i64* %RAX
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 4
  store i64 %150, i64* %PC
  %151 = inttoptr i64 %147 to i64*
  store i64 %148, i64* %151
  %152 = load i64, i64* %RBP
  %153 = sub i64 %152, 24
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 4
  store i64 %155, i64* %PC
  %156 = inttoptr i64 %153 to i64*
  %157 = load i64, i64* %156
  store i64 %157, i64* %RAX, align 8, !tbaa !2428
  %158 = load i64, i64* %RAX
  %159 = add i64 %158, 8
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 4
  store i64 %161, i64* %PC
  %162 = inttoptr i64 %159 to i64*
  %163 = load i64, i64* %162
  store i64 %163, i64* %RAX, align 8, !tbaa !2428
  %164 = load i64, i64* %RBP
  %165 = sub i64 %164, 16
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 4
  store i64 %167, i64* %PC
  %168 = inttoptr i64 %165 to i64*
  %169 = load i64, i64* %168
  store i64 %169, i64* %RCX, align 8, !tbaa !2428
  %170 = load i64, i64* %RCX
  %171 = add i64 %170, 8
  %172 = load i64, i64* %RAX
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 4
  store i64 %174, i64* %PC
  %175 = inttoptr i64 %171 to i64*
  store i64 %172, i64* %175
  %176 = load i64, i64* %RBP
  %177 = sub i64 %176, 16
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 4
  store i64 %179, i64* %PC
  %180 = inttoptr i64 %177 to i64*
  %181 = load i64, i64* %180
  store i64 %181, i64* %RAX, align 8, !tbaa !2428
  %182 = load i64, i64* %RBP
  %183 = sub i64 %182, 24
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 4
  store i64 %185, i64* %PC
  %186 = inttoptr i64 %183 to i64*
  %187 = load i64, i64* %186
  store i64 %187, i64* %RCX, align 8, !tbaa !2428
  %188 = load i64, i64* %RCX
  %189 = add i64 %188, 8
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 4
  store i64 %191, i64* %PC
  %192 = inttoptr i64 %189 to i64*
  %193 = load i64, i64* %192
  store i64 %193, i64* %RCX, align 8, !tbaa !2428
  %194 = load i64, i64* %RCX
  %195 = add i64 %194, 16
  %196 = load i64, i64* %RAX
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 4
  store i64 %198, i64* %PC
  %199 = inttoptr i64 %195 to i64*
  store i64 %196, i64* %199
  %200 = load i64, i64* %RBP
  %201 = sub i64 %200, 16
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 4
  store i64 %203, i64* %PC
  %204 = inttoptr i64 %201 to i64*
  %205 = load i64, i64* %204
  store i64 %205, i64* %RAX, align 8, !tbaa !2428
  %206 = load i64, i64* %RAX
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 2
  store i64 %208, i64* %PC
  %209 = inttoptr i64 %206 to i32*
  %210 = load i32, i32* %209
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RDX, align 8, !tbaa !2428
  %212 = load i64, i64* %RDX
  %213 = load i64, i64* %PC
  %214 = add i64 %213, 3
  store i64 %214, i64* %PC
  %215 = trunc i64 %212 to i32
  %216 = add i32 -1, %215
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RDX, align 8, !tbaa !2428
  %218 = icmp ult i32 %216, %215
  %219 = icmp ult i32 %216, -1
  %220 = or i1 %218, %219
  %221 = zext i1 %220 to i8
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %221, i8* %222, align 1, !tbaa !2432
  %223 = and i32 %216, 255
  %224 = call i32 @llvm.ctpop.i32(i32 %223) #16
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %227, i8* %228, align 1, !tbaa !2446
  %229 = xor i64 -1, %212
  %230 = trunc i64 %229 to i32
  %231 = xor i32 %230, %216
  %232 = lshr i32 %231, 4
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %234, i8* %235, align 1, !tbaa !2447
  %236 = icmp eq i32 %216, 0
  %237 = zext i1 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %237, i8* %238, align 1, !tbaa !2448
  %239 = lshr i32 %216, 31
  %240 = trunc i32 %239 to i8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %240, i8* %241, align 1, !tbaa !2449
  %242 = lshr i32 %215, 31
  %243 = xor i32 %239, %242
  %244 = xor i32 %239, 1
  %245 = add nuw nsw i32 %243, %244
  %246 = icmp eq i32 %245, 2
  %247 = zext i1 %246 to i8
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %247, i8* %248, align 1, !tbaa !2450
  %249 = load i64, i64* %RAX
  %250 = load i32, i32* %EDX
  %251 = zext i32 %250 to i64
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 2
  store i64 %253, i64* %PC
  %254 = inttoptr i64 %249 to i32*
  store i32 %250, i32* %254
  %255 = load i64, i64* %RBP
  %256 = sub i64 %255, 24
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 4
  store i64 %258, i64* %PC
  %259 = inttoptr i64 %256 to i64*
  %260 = load i64, i64* %259
  store i64 %260, i64* %RAX, align 8, !tbaa !2428
  %261 = load i64, i64* %RBP
  %262 = sub i64 %261, 8
  %263 = load i64, i64* %RAX
  %264 = load i64, i64* %PC
  %265 = add i64 %264, 4
  store i64 %265, i64* %PC
  %266 = inttoptr i64 %262 to i64*
  store i64 %263, i64* %266
  br label %block_40083a

block_40083a:                                     ; preds = %block_4007ee, %block_4007fb
  %MEMORY.0 = phi %struct.Memory* [ %96, %block_4007fb ], [ %96, %block_4007ee ]
  %267 = load i64, i64* %RBP
  %268 = sub i64 %267, 8
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 4
  store i64 %270, i64* %PC
  %271 = inttoptr i64 %268 to i64*
  %272 = load i64, i64* %271
  store i64 %272, i64* %RAX, align 8, !tbaa !2428
  %273 = load i64, i64* %RSP
  %274 = load i64, i64* %PC
  %275 = add i64 %274, 4
  store i64 %275, i64* %PC
  %276 = add i64 32, %273
  store i64 %276, i64* %RSP, align 8, !tbaa !2428
  %277 = icmp ult i64 %276, %273
  %278 = icmp ult i64 %276, 32
  %279 = or i1 %277, %278
  %280 = zext i1 %279 to i8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %280, i8* %281, align 1, !tbaa !2432
  %282 = trunc i64 %276 to i32
  %283 = and i32 %282, 255
  %284 = call i32 @llvm.ctpop.i32(i32 %283) #16
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  %287 = xor i8 %286, 1
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %287, i8* %288, align 1, !tbaa !2446
  %289 = xor i64 32, %273
  %290 = xor i64 %289, %276
  %291 = lshr i64 %290, 4
  %292 = trunc i64 %291 to i8
  %293 = and i8 %292, 1
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %293, i8* %294, align 1, !tbaa !2447
  %295 = icmp eq i64 %276, 0
  %296 = zext i1 %295 to i8
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %296, i8* %297, align 1, !tbaa !2448
  %298 = lshr i64 %276, 63
  %299 = trunc i64 %298 to i8
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %299, i8* %300, align 1, !tbaa !2449
  %301 = lshr i64 %273, 63
  %302 = xor i64 %298, %301
  %303 = add nuw nsw i64 %302, %298
  %304 = icmp eq i64 %303, 2
  %305 = zext i1 %304 to i8
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %305, i8* %306, align 1, !tbaa !2450
  %307 = load i64, i64* %PC
  %308 = add i64 %307, 1
  store i64 %308, i64* %PC
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %310 = load i64, i64* %309, align 8, !tbaa !2428
  %311 = add i64 %310, 8
  %312 = inttoptr i64 %310 to i64*
  %313 = load i64, i64* %312
  store i64 %313, i64* %RBP, align 8, !tbaa !2428
  store i64 %311, i64* %309, align 8, !tbaa !2428
  %314 = load i64, i64* %PC
  %315 = add i64 %314, 1
  store i64 %315, i64* %PC
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %318 = load i64, i64* %317, align 8, !tbaa !2428
  %319 = inttoptr i64 %318 to i64*
  %320 = load i64, i64* %319
  store i64 %320, i64* %316, align 8, !tbaa !2428
  %321 = add i64 %318, 8
  store i64 %321, i64* %317, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_4007ee:                                     ; preds = %block_4007d0
  %322 = sub i64 %134, 8
  %323 = load i64, i64* %PC
  %324 = add i64 %323, 8
  store i64 %324, i64* %PC
  %325 = inttoptr i64 %322 to i64*
  store i64 0, i64* %325
  %326 = load i64, i64* %PC
  %327 = add i64 %326, 68
  %328 = load i64, i64* %PC
  %329 = add i64 %328, 5
  store i64 %329, i64* %PC
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %327, i64* %330, align 8, !tbaa !2428
  br label %block_40083a
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400640_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400640;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400640_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400640_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400610___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400610;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400610___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400610___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020a8_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400510_puts(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @puts to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400530_malloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602090_exit(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602098_free(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602088_atoi(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @atoi to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401190___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401190;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401190___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401190___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401120___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401120;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401120___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401120___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401080;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_401080_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602078___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @list_push_head() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400770;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
  ret void
}

define internal %struct.Memory* @list_push_head_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400770_list_push_head(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @list_reverse() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400d00;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
  ret void
}

define internal %struct.Memory* @list_reverse_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400d00_list_reverse(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @list_pop_head() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4007d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
  ret void
}

define internal %struct.Memory* @list_pop_head_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4007d0_list_pop_head(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @list_new() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4009f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
  ret void
}

define internal %struct.Memory* @list_new_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4009f0_list_new(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401194;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @11, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_401194__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @test_lists() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400d50;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @12, void ()** @2)
  ret void
}

define internal %struct.Memory* @test_lists_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400d50_test_lists(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @list_print() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400900;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @13, void ()** @2)
  ret void
}

define internal %struct.Memory* @list_print_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400900_list_print(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @list_equal() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400850;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @14, void ()** @2)
  ret void
}

define internal %struct.Memory* @list_equal_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400850_list_equal(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @list_copy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400bb0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @15, void ()** @2)
  ret void
}

define internal %struct.Memory* @list_copy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400bb0_list_copy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @list_sequence() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400a40;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @16, void ()** @2)
  ret void
}

define internal %struct.Memory* @list_sequence_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400a40_list_sequence(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @list_push_tail() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400650;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @17, void ()** @2)
  ret void
}

define internal %struct.Memory* @list_push_tail_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400650_list_push_tail(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4004d8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @18, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4004d8__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @list_pop_tail() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4006b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @19, void ()** @2)
  ret void
}

define internal %struct.Memory* @list_pop_tail_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4006b0_list_pop_tail(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_401190___libc_csu_fini()
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
  call void @callback_sub_401120___libc_csu_init()
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
