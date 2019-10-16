; ModuleID = '../binary/test.mcsema.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_4005c8__init_type = type <{ [23 x i8] }>
%seg_4005e0__plt_type = type <{ [144 x i8] }>
%seg_400670__text_type = type <{ [3186 x i8] }>
%seg_4012e4__fini_type = type <{ [9 x i8] }>
%seg_4012f0__rodata_type = type <{ [48 x i8], [7 x i8], [51 x i8], [68 x i8] }>
%seg_4013a0__eh_frame_hdr_type = type <{ [172 x i8] }>
%seg_401450__eh_frame_type = type <{ [648 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64, i64, i64 }>
%seg_602058__data_type = type <{ [16 x i8] }>
%seg_602080__bss_type = type <{ [8 x i8], [8 x i8] }>
%polybench_papi_counters_threadid_type = type <{ [8 x i8] }>
%polybench_program_total_flops_type = type <{ [8 x i8] }>
%polybench_c_end_type = type <{ [8 x i8] }>
%polybench_t_end_type = type <{ [8 x i8] }>
%polybench_t_start_type = type <{ [8 x i8] }>
%polybench_c_start_type = type <{ [8 x i8] }>
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
@stderr = external global i64, align 128
@seg_4005c8__init = internal constant %seg_4005c8__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05%\1A \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_4005e0__plt = internal constant %seg_4005e0__plt_type <{ [144 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\22\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\1A\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\12\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\0A\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\02\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\FA\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\F2\19 \00\00\00\00\00\00\00\00\00\00\00\FF%\EA\19 \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400670__text = internal constant %seg_400670__text_type <{ [3186 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\E0\12@\00H\C7\C1p\12@\00H\C7\C7@\09@\00\FF\15V\19 \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8h `\00H=h `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFh `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEh `\00UH\81\EEh `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFh `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=a\19 \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05O\19 \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \B8\08\00\00\00\89\C6\C7E\FC\00\01@\00Hc}\FC\E8\A1\FE\FF\FF\0FW\C0H\89E\F0\F2\0F\11E\E0\C7E\EC\00\00\00\00\8BE\EC;E\FC\0F\8D%\00\00\00H\8BE\F0HcM\EC\F2\0F\10\04\C8\F2\0FXE\E0\F2\0F\11E\E0\8BE\EC\83\C0\01\89E\EC\E9\CF\FF\FF\FFH\8BE\F0H\89\C7\E8!\FE\FF\FFH\83\C4 ]\C3ff.\0F\1F\84\00\00\00\00\00UH\89\E5\E8w\FF\FF\FF]\C3\0F\1FD\00\00UH\89\E5\E8\E7\FF\FF\FF\E8\12\00\00\00\F2\0F\11\04%\B0 `\00]\C3\0F\1F\80\00\00\00\00UH\89\E5\0FW\C0]\C3\0F\1F\80\00\00\00\00UH\89\E5\E8\E7\FF\FF\FF\F2\0F\11\04%\A8 `\00]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC\10H\BF \13@\00\00\00\00\00\F2\0F\10\04%\A8 `\00\F2\0F\5C\04%\B0 `\00\B0\01\E8\95\FD\FF\FF\89E\FCH\83\C4\10]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC H\89}\F8\89u\F4H\8B}\F8H\89}\E8Hc}\F4H\0F\AF}\E8H\89}\E8H\8B}\E8\E8\13\00\00\00H\89E\E0H\8BE\E0H\83\C4 ]\C3\0F\1FD\00\00UH\89\E5H\83\EC H\8DE\F0\B9 \00\00\00\89\CEH\89}\F8H\C7E\F0\00\00\00\00H\8BU\F8H\89\C7\E8u\FD\FF\FF\89E\ECH\83}\F0\00\0F\84\0A\00\00\00\83}\EC\00\0F\84&\00\00\00H\BE'\13@\00\00\00\00\00H\8B<%\80 `\00\B0\00\E8\14\FD\FF\FF\BF\01\00\00\00\89E\E8\E8'\FD\FF\FFH\8BE\F0H\83\C4 ]\C3ffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC`\B8\00$\F4\00\89\C1\B8\08\00\00\00\C7E\FC\00\00\00\00\89}\F8H\89u\F0\C7E\EC\A0\0F\00\00\C7E\E8\A0\0F\00\00H\89\CF\89\C6\E8\06\FF\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\E0\E8\F1\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\D8\E8\DC\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\D0\E8\C7\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\C8\E8\B2\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\C0\E8\9D\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\B8\E8\88\FE\FF\FFH\89E\B0\8B}\EC\8Bu\E8H\8BU\E0H\8BM\C0L\8BE\C8\E8\0D\01\00\00\8B}\EC\8Bu\E8H\8BU\E0H\8BM\D8L\8BE\D0L\8BM\C8H\8BE\C0H\89\04$\E8\EA\01\00\00\8B}\EC\8Bu\E8H\8BU\E0H\8BM\B8L\8BE\B0L\8BM\C8H\8BE\C0H\89\04$\E8\07\03\00\00\8B}\E8H\8Bu\D8H\8BU\B8\E87\04\00\00\83\F8\00\0F\85\0C\00\00\00\C7E\FC\01\00\00\00\E9\93\00\00\00\8B}\E8H\8Bu\D0H\8BU\B0\E8\12\04\00\00\83\F8\00\0F\85\0C\00\00\00\C7E\FC\01\00\00\00\E9n\00\00\00\8B}\EC\8Bu\E8H\8BU\B8H\8BM\B0\E8\DA\04\00\00H\8BM\E0H\89\CF\E8.\FB\FF\FFH\8BM\D8H\89\CF\E8\22\FB\FF\FFH\8BM\D0H\89\CF\E8\16\FB\FF\FFH\8BM\C8H\89\CF\E8\0A\FB\FF\FFH\8BM\C0H\89\CF\E8\FE\FA\FF\FFH\8BM\B8H\89\CF\E8\F2\FA\FF\FFH\8BM\B0H\89\CF\E8\E6\FA\FF\FF\C7E\FC\00\00\00\00\8BE\FCH\83\C4`]\C3f\0F\1FD\00\00UH\89\E5\89}\FC\89u\F8H\89U\F0H\89M\E8L\89E\E0\C7E\DC\00\00\00\00\8BE\DC;E\F8\0F\8D,\00\00\00\F2\0F\10\05\A7\07\00\00\F2\0F*M\DC\F2\0FY\C8H\8BE\E0HcM\DC\F2\0F\11\0C\C8\8BE\DC\83\C0\01\89E\DC\E9\C8\FF\FF\FF\C7E\DC\00\00\00\00\8BE\DC;E\FC\0F\8D\89\00\00\00\F2\0F\10\05h\07\00\00\F2\0F*M\DC\F2\0FY\C8H\8BE\E8HcM\DC\F2\0F\11\0C\C8\C7E\D8\00\00\00\00\8BE\D8;E\F8\0F\8DE\00\00\00\F2\0F*E\DC\8BE\D8\83\C0\01\F2\0F*\C8\F2\0FY\C1\F2\0F*M\FC\F2\0F^\C1H\8BM\F0HcU\DCHi\D2\00}\00\00H\01\D1HcU\D8\F2\0F\11\04\D1\8BE\D8\83\C0\01\89E\D8\E9\AF\FF\FF\FF\E9\00\00\00\00\8BE\DC\83\C0\01\89E\DC\E9k\FF\FF\FF]\C3ffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\8BE\10\89}\FC\89u\F8H\89U\F0H\89M\E8L\89E\E0L\89M\D8H\89E\D0\C7E\CC\00\00\00\00\8BE\CC;E\F8\0F\8D\1E\00\00\00\0FW\C0H\8BE\E8HcM\CC\F2\0F\11\04\C8\8BE\CC\83\C0\01\89E\CC\E9\D6\FF\FF\FF\C7E\CC\00\00\00\00\8BE\CC;E\FC\0F\8D\D0\00\00\00\0FW\C0H\8BE\E0HcM\CC\F2\0F\11\04\C8\C7E\C8\00\00\00\00\8BE\C8;E\F8\0F\8D\9A\00\00\00H\8BE\E8HcM\C8\F2\0F\10\04\C8H\8BE\D0HcM\CC\F2\0F\10\0C\C8H\8BE\F0HcM\CCHi\C9\00}\00\00H\01\C8HcM\C8\F2\0FY\0C\C8\F2\0FX\C1H\8BE\E8HcM\C8\F2\0F\11\04\C8H\8BE\E0HcM\CC\F2\0F\10\04\C8H\8BE\F0HcM\CCHi\C9\00}\00\00H\01\C8HcM\C8\F2\0F\10\0C\C8H\8BE\D8HcM\C8\F2\0FY\0C\C8\F2\0FX\C1H\8BE\E0HcM\CC\F2\0F\11\04\C8\8BE\C8\83\C0\01\89E\C8\E9Z\FF\FF\FF\E9\00\00\00\00\8BE\CC\83\C0\01\89E\CC\E9$\FF\FF\FF]\C3\0F\1F\84\00\00\00\00\00UH\89\E5H\8BE\10\89}\FC\89u\F8H\89U\F0H\89M\E8L\89E\E0L\89M\D8H\89E\D0\C7E\CC\00\00\00\00\8BE\CC;E\F8\0F\8D\1E\00\00\00\0FW\C0H\8BE\E8HcM\CC\F2\0F\11\04\C8\8BE\CC\83\C0\01\89E\CC\E9\D6\FF\FF\FF\C7E\CC\00\00\00\00\8BE\CC;E\FC\0F\8D\D0\00\00\00\0FW\C0H\8BE\E0HcM\CC\F2\0F\11\04\C8\C7E\C8\00\00\00\00\8BE\C8;E\F8\0F\8D\9A\00\00\00H\8BE\E8HcM\C8\F2\0F\10\04\C8H\8BE\D0HcM\CC\F2\0F\10\0C\C8H\8BE\F0HcM\CCHi\C9\00}\00\00H\01\C8HcM\C8\F2\0FY\0C\C8\F2\0FX\C1H\8BE\E8HcM\C8\F2\0F\11\04\C8H\8BE\E0HcM\CC\F2\0F\10\04\C8H\8BE\F0HcM\CCHi\C9\00}\00\00H\01\C8HcM\C8\F2\0F\10\0C\C8H\8BE\D8HcM\C8\F2\0FY\0C\C8\F2\0FX\C1H\8BE\E0HcM\CC\F2\0F\11\04\C8\8BE\C8\83\C0\01\89E\C8\E9Z\FF\FF\FF\E9\00\00\00\00\8BE\CC\83\C0\01\89E\CC\E9$\FF\FF\FF]\C3\0F\1F\84\00\00\00\00\00UH\89\E5H\83\ECP\F2\0F\10\05P\04\00\00\89}\F8H\89u\F0H\89U\E8\F2\0F\11E\D8\C7E\E4\00\00\00\00\8BE\E4;E\F8\0F\8D\9E\00\00\00H\8BE\F0HcM\E4\F2\0F\10\04\C8\F2\0F\11E\D0H\8BE\E8HcM\E4\F2\0F\10\04\C8\F2\0F\11E\C8\F2\0F\10E\D0\F2\0F\5CE\C8\0F(\0D\08\04\00\00f\0F\DB\C1\F2\0F\11E\C0\F2\0F\10E\C0f\0F.E\D8\0F\86=\00\00\00H\BEZ\13@\00\00\00\00\00H\8B<%\80 `\00\8BU\E4\F2\0F\10E\D0\8BM\E4\F2\0F\10M\C8\F2\0F\10U\D8\B0\03\E8\E1\F6\FF\FF\C7E\FC\00\00\00\00\89E\BC\E9\1A\00\00\00\E9\00\00\00\00\8BE\E4\83\C0\01\89E\E4\E9V\FF\FF\FF\C7E\FC\01\00\00\00\8BE\FCH\83\C4P]\C3ffffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC@\89}\FC\89u\F8H\89U\F0H\89M\E8\8Bu\FC;u\F8\0F\8E\0B\00\00\00\8BE\FC\89E\D4\E9\06\00\00\00\8BE\F8\89E\D4\8BE\D4\89E\E0\8BE\E0\C1\E0\04\83\C0\01Hc\F8\E8f\F6\FF\FFH\89E\D8H\8BE\D8\8BM\E0\C1\E1\04Hc\F9\C6\048\00\C7E\E4\00\00\00\00\8BE\E4;E\F8\0F\8D,\00\00\00H\8BE\F0HcM\E4\F2\0F\10\04\C8\8BU\E4\C1\E2\04H\8Bu\D8\89\D7\E8\A0\00\00\00\8BE\E4\83\C0\01\89E\E4\E9\C8\FF\FF\FFH\8BE\D8HcM\E4\C6\04\08\00H\8B}\D8H\8B4%\80 `\00\E8\C5\F5\FF\FF\C7E\E4\00\00\00\00\89E\D0\8BE\E4;E\FC\0F\8D,\00\00\00H\8BE\E8HcM\E4\F2\0F\10\04\C8\8BU\E4\C1\E2\04H\8Bu\D8\89\D7\E8A\00\00\00\8BE\E4\83\C0\01\89E\E4\E9\C8\FF\FF\FFH\8BE\D8HcM\E4\C6\04\08\00H\8B}\D8H\8B4%\80 `\00\E8f\F5\FF\FFH\8B}\D8\89E\CC\E8:\F5\FF\FFH\83\C4@]\C3\0F\1F@\00UH\89\E5\F2\0F\11E\F8\89}\F4H\89u\E8\F2\0F\10E\F8\F2\0F\11E\E0\0F\BE}\E0\83\E7\0F\83\C70@\88\F8H\8Bu\E8HcM\F4\88\04\0E\0F\BE}\E0\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\01\0F\BE}\E1\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\02\0F\BE}\E1\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\03\0F\BE}\E2\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\04\0F\BE}\E2\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\05\0F\BE}\E3\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\06\0F\BE}\E3\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\07\0F\BE}\E4\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\08\0F\BE}\E4\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\09\0F\BE}\E5\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0A\0F\BE}\E5\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0B\0F\BE}\E6\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0C\0F\BE}\E6\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0D\0F\BE}\E7\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0E\0F\BE}\E7\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0F]\C3\0F\1FD\00\00AWAVI\89\D7AUATL\8D%n\0B \00UH\8D-n\0B \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8'\F3\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_4012e4__fini = internal constant %seg_4012e4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_4012f0__rodata = internal constant %seg_4012f0__rodata_type <{ [48 x i8] c"\01\00\02\00\00\00\00\00\18-DT\FB!\09@\F1h\E3\88\B5\F8\E4>\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [7 x i8] c"%0.6f\0A\00", [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", [68 x i8] c"A[%d] = %lf and B[%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00" }>
@seg_4013a0__eh_frame_hdr = internal constant %seg_4013a0__eh_frame_hdr_type <{ [172 x i8] c"\01\1B\03;\AC\00\00\00\14\00\00\00@\F2\FF\FF\08\01\00\00\D0\F2\FF\FF\C8\00\00\00\00\F3\FF\FF\F4\00\00\00\C0\F3\FF\FF0\01\00\00@\F4\FF\FFL\01\00\00P\F4\FF\FFh\01\00\00p\F4\FF\FF\84\01\00\00\80\F4\FF\FF\A0\01\00\00\A0\F4\FF\FF\BC\01\00\00\E0\F4\FF\FF\D8\01\00\00 \F5\FF\FF\F4\01\00\00\A0\F5\FF\FF\10\02\00\00\80\F7\FF\FF,\02\00\00\80\F8\FF\FFH\02\00\00\C0\F9\FF\FFd\02\00\00\00\FB\FF\FF\80\02\00\00\F0\FB\FF\FF\9C\02\00\00 \FD\FF\FF\B8\02\00\00\D0\FE\FF\FF\D8\02\00\00@\FF\FF\FF \03\00\00" }>
@seg_401450__eh_frame = internal constant %seg_401450__eh_frame_type <{ [648 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00\00\F2\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00\04\F2\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\000\F1\FF\FF\90\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\88\F2\FF\FFu\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\EC\F2\FF\FF\0B\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\90\00\00\00\E0\F2\FF\FF\19\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\AC\00\00\00\E4\F2\FF\FF\09\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C8\00\00\00\D8\F2\FF\FF\14\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\E4\00\00\00\DC\F2\FF\FF4\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\00\01\00\00\00\F3\FF\FF;\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\1C\01\00\00$\F3\FF\FFs\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\01\00\00\88\F3\FF\FF\DA\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00T\01\00\00L\F5\FF\FF\F3\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00p\01\00\000\F6\FF\FF8\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\8C\01\00\00T\F7\FF\FF8\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\A8\01\00\00x\F8\FF\FF\E1\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C4\01\00\00L\F9\FF\FF,\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00\E0\01\00\00`\FA\FF\FF\AB\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00D\00\00\00\00\02\00\00\F0\FB\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00H\02\00\00\18\FC\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400750_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400720___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64)* @free to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 ptrtoint (i64 (i64, i64)* @fputs to i64), i64 ptrtoint (i64 (i64, i64)* @calloc to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), i64 ptrtoint (i64 (i64)* @malloc to i64), i64 ptrtoint (i64 (i64)* @exit to i64), i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64) }>
@seg_602058__data = internal global %seg_602058__data_type zeroinitializer
@seg_602080__bss = internal global %seg_602080__bss_type zeroinitializer
@polybench_papi_counters_threadid = global %polybench_papi_counters_threadid_type zeroinitializer
@polybench_program_total_flops = global %polybench_program_total_flops_type zeroinitializer
@polybench_c_end = global %polybench_c_end_type zeroinitializer
@polybench_t_end = global %polybench_t_end_type zeroinitializer
@polybench_t_start = global %polybench_t_start_type zeroinitializer
@polybench_c_start = global %polybench_c_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400750_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400720___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4012e0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401270___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_start_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_stop_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_alloc_data_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_prepare_instruments_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_flush_cache_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_print_wrapper
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
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @posix_memalign(i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fputs(i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_400b20_init_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %EDI = bitcast %union.anon* %14 to i32*
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %34 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %33, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %34 to %"class.std::bitset"*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %36 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %35, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %36 to %"class.std::bitset"*
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %38 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %37, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %38 to %union.vec128_t*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %40 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %40 to %union.vec128_t*
  %41 = load i64, i64* %RBP
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 1
  store i64 %43, i64* %PC
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !2428
  %46 = add i64 %45, -8
  %47 = inttoptr i64 %46 to i64*
  store i64 %41, i64* %47
  store i64 %46, i64* %44, align 8, !tbaa !2428
  %48 = load i64, i64* %RSP
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 3
  store i64 %50, i64* %PC
  store i64 %48, i64* %RBP, align 8, !tbaa !2428
  %51 = load i64, i64* %RBP
  %52 = sub i64 %51, 4
  %53 = load i32, i32* %EDI
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* %PC
  %56 = add i64 %55, 3
  store i64 %56, i64* %PC
  %57 = inttoptr i64 %52 to i32*
  store i32 %53, i32* %57
  %58 = load i64, i64* %RBP
  %59 = sub i64 %58, 8
  %60 = load i32, i32* %ESI
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 3
  store i64 %63, i64* %PC
  %64 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %64
  %65 = load i64, i64* %RBP
  %66 = sub i64 %65, 16
  %67 = load i64, i64* %RDX
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 4
  store i64 %69, i64* %PC
  %70 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %70
  %71 = load i64, i64* %RBP
  %72 = sub i64 %71, 24
  %73 = load i64, i64* %RCX
  %74 = load i64, i64* %PC
  %75 = add i64 %74, 4
  store i64 %75, i64* %PC
  %76 = inttoptr i64 %72 to i64*
  store i64 %73, i64* %76
  %77 = load i64, i64* %RBP
  %78 = sub i64 %77, 32
  %79 = load i64, i64* %R8
  %80 = load i64, i64* %PC
  %81 = add i64 %80, 4
  store i64 %81, i64* %PC
  %82 = inttoptr i64 %78 to i64*
  store i64 %79, i64* %82
  %83 = load i64, i64* %RBP
  %84 = sub i64 %83, 36
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 7
  store i64 %86, i64* %PC
  %87 = inttoptr i64 %84 to i32*
  store i32 0, i32* %87
  br label %block_400b3d

block_400b3d:                                     ; preds = %block_400b49, %block_400b20
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400b20 ], [ %MEMORY.0, %block_400b49 ]
  %88 = load i64, i64* %RBP
  %89 = sub i64 %88, 36
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 3
  store i64 %91, i64* %PC
  %92 = inttoptr i64 %89 to i32*
  %93 = load i32, i32* %92
  %94 = zext i32 %93 to i64
  store i64 %94, i64* %RAX, align 8, !tbaa !2428
  %95 = load i32, i32* %EAX
  %96 = zext i32 %95 to i64
  %97 = load i64, i64* %RBP
  %98 = sub i64 %97, 8
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 3
  store i64 %100, i64* %PC
  %101 = inttoptr i64 %98 to i32*
  %102 = load i32, i32* %101
  %103 = sub i32 %95, %102
  %104 = icmp ult i32 %95, %102
  %105 = zext i1 %104 to i8
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %105, i8* %106, align 1, !tbaa !2432
  %107 = and i32 %103, 255
  %108 = call i32 @llvm.ctpop.i32(i32 %107) #16
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %111, i8* %112, align 1, !tbaa !2446
  %113 = xor i32 %102, %95
  %114 = xor i32 %113, %103
  %115 = lshr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %117, i8* %118, align 1, !tbaa !2447
  %119 = icmp eq i32 %103, 0
  %120 = zext i1 %119 to i8
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %120, i8* %121, align 1, !tbaa !2448
  %122 = lshr i32 %103, 31
  %123 = trunc i32 %122 to i8
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %123, i8* %124, align 1, !tbaa !2449
  %125 = lshr i32 %95, 31
  %126 = lshr i32 %102, 31
  %127 = xor i32 %126, %125
  %128 = xor i32 %122, %125
  %129 = add nuw nsw i32 %128, %127
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %131, i8* %132, align 1, !tbaa !2450
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 50
  %135 = load i64, i64* %PC
  %136 = add i64 %135, 6
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 6
  store i64 %138, i64* %PC
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %140 = load i8, i8* %139, align 1, !tbaa !2449
  %141 = icmp ne i8 %140, 0
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %143 = load i8, i8* %142, align 1, !tbaa !2450
  %144 = icmp ne i8 %143, 0
  %145 = xor i1 %141, %144
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %149 = select i1 %145, i64 %136, i64 %134
  store i64 %149, i64* %148, align 8, !tbaa !2428
  %150 = load i8, i8* %BRANCH_TAKEN
  %151 = icmp eq i8 %150, 1
  br i1 %151, label %block_400b75, label %block_400b49

block_400bfe:                                     ; preds = %block_400bad
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 5
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 5
  store i64 %155, i64* %PC
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %153, i64* %156, align 8, !tbaa !2428
  %157 = load i64, i64* %RBP
  %158 = sub i64 %157, 36
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 3
  store i64 %160, i64* %PC
  %161 = inttoptr i64 %158 to i32*
  %162 = load i32, i32* %161
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %RAX, align 8, !tbaa !2428
  %164 = load i64, i64* %RAX
  %165 = load i64, i64* %PC
  %166 = add i64 %165, 3
  store i64 %166, i64* %PC
  %167 = trunc i64 %164 to i32
  %168 = add i32 1, %167
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RAX, align 8, !tbaa !2428
  %170 = icmp ult i32 %168, %167
  %171 = icmp ult i32 %168, 1
  %172 = or i1 %170, %171
  %173 = zext i1 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %173, i8* %174, align 1, !tbaa !2432
  %175 = and i32 %168, 255
  %176 = call i32 @llvm.ctpop.i32(i32 %175) #16
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %179, i8* %180, align 1, !tbaa !2446
  %181 = xor i64 1, %164
  %182 = trunc i64 %181 to i32
  %183 = xor i32 %182, %168
  %184 = lshr i32 %183, 4
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %186, i8* %187, align 1, !tbaa !2447
  %188 = icmp eq i32 %168, 0
  %189 = zext i1 %188 to i8
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %189, i8* %190, align 1, !tbaa !2448
  %191 = lshr i32 %168, 31
  %192 = trunc i32 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %192, i8* %193, align 1, !tbaa !2449
  %194 = lshr i32 %167, 31
  %195 = xor i32 %191, %194
  %196 = add nuw nsw i32 %195, %191
  %197 = icmp eq i32 %196, 2
  %198 = zext i1 %197 to i8
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %198, i8* %199, align 1, !tbaa !2450
  %200 = load i64, i64* %RBP
  %201 = sub i64 %200, 36
  %202 = load i32, i32* %EAX
  %203 = zext i32 %202 to i64
  %204 = load i64, i64* %PC
  %205 = add i64 %204, 3
  store i64 %205, i64* %PC
  %206 = inttoptr i64 %201 to i32*
  store i32 %202, i32* %206
  %207 = load i64, i64* %PC
  %208 = sub i64 %207, 144
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 5
  store i64 %210, i64* %PC
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %208, i64* %211, align 8, !tbaa !2428
  br label %block_400b7c

block_400b7c:                                     ; preds = %block_400b75, %block_400bfe
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400b75 ], [ %MEMORY.2, %block_400bfe ]
  %212 = load i64, i64* %RBP
  %213 = sub i64 %212, 36
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 3
  store i64 %215, i64* %PC
  %216 = inttoptr i64 %213 to i32*
  %217 = load i32, i32* %216
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RAX, align 8, !tbaa !2428
  %219 = load i32, i32* %EAX
  %220 = zext i32 %219 to i64
  %221 = load i64, i64* %RBP
  %222 = sub i64 %221, 4
  %223 = load i64, i64* %PC
  %224 = add i64 %223, 3
  store i64 %224, i64* %PC
  %225 = inttoptr i64 %222 to i32*
  %226 = load i32, i32* %225
  %227 = sub i32 %219, %226
  %228 = icmp ult i32 %219, %226
  %229 = zext i1 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %229, i8* %230, align 1, !tbaa !2432
  %231 = and i32 %227, 255
  %232 = call i32 @llvm.ctpop.i32(i32 %231) #16
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = xor i8 %234, 1
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %235, i8* %236, align 1, !tbaa !2446
  %237 = xor i32 %226, %219
  %238 = xor i32 %237, %227
  %239 = lshr i32 %238, 4
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %241, i8* %242, align 1, !tbaa !2447
  %243 = icmp eq i32 %227, 0
  %244 = zext i1 %243 to i8
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %244, i8* %245, align 1, !tbaa !2448
  %246 = lshr i32 %227, 31
  %247 = trunc i32 %246 to i8
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %247, i8* %248, align 1, !tbaa !2449
  %249 = lshr i32 %219, 31
  %250 = lshr i32 %226, 31
  %251 = xor i32 %250, %249
  %252 = xor i32 %246, %249
  %253 = add nuw nsw i32 %252, %251
  %254 = icmp eq i32 %253, 2
  %255 = zext i1 %254 to i8
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %255, i8* %256, align 1, !tbaa !2450
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 143
  %259 = load i64, i64* %PC
  %260 = add i64 %259, 6
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 6
  store i64 %262, i64* %PC
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %264 = load i8, i8* %263, align 1, !tbaa !2449
  %265 = icmp ne i8 %264, 0
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %267 = load i8, i8* %266, align 1, !tbaa !2450
  %268 = icmp ne i8 %267, 0
  %269 = xor i1 %265, %268
  %270 = xor i1 %269, true
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %273 = select i1 %269, i64 %260, i64 %258
  store i64 %273, i64* %272, align 8, !tbaa !2428
  %274 = load i8, i8* %BRANCH_TAKEN
  %275 = icmp eq i8 %274, 1
  br i1 %275, label %block_400c11, label %block_400b88

block_400bb9:                                     ; preds = %block_400bad
  %276 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %277 = load i64, i64* %RBP
  %278 = sub i64 %277, 36
  %279 = load i64, i64* %PC
  %280 = add i64 %279, 5
  store i64 %280, i64* %PC
  %281 = inttoptr i64 %278 to i32*
  %282 = load i32, i32* %281
  %283 = sitofp i32 %282 to double
  %284 = bitcast i8* %276 to double*
  store double %283, double* %284, align 1, !tbaa !2452
  %285 = load i64, i64* %RBP
  %286 = sub i64 %285, 40
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 3
  store i64 %288, i64* %PC
  %289 = inttoptr i64 %286 to i32*
  %290 = load i32, i32* %289
  %291 = zext i32 %290 to i64
  store i64 %291, i64* %RAX, align 8, !tbaa !2428
  %292 = load i64, i64* %RAX
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 3
  store i64 %294, i64* %PC
  %295 = trunc i64 %292 to i32
  %296 = add i32 1, %295
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RAX, align 8, !tbaa !2428
  %298 = icmp ult i32 %296, %295
  %299 = icmp ult i32 %296, 1
  %300 = or i1 %298, %299
  %301 = zext i1 %300 to i8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %301, i8* %302, align 1, !tbaa !2432
  %303 = and i32 %296, 255
  %304 = call i32 @llvm.ctpop.i32(i32 %303) #16
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  %307 = xor i8 %306, 1
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %307, i8* %308, align 1, !tbaa !2446
  %309 = xor i64 1, %292
  %310 = trunc i64 %309 to i32
  %311 = xor i32 %310, %296
  %312 = lshr i32 %311, 4
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %314, i8* %315, align 1, !tbaa !2447
  %316 = icmp eq i32 %296, 0
  %317 = zext i1 %316 to i8
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %317, i8* %318, align 1, !tbaa !2448
  %319 = lshr i32 %296, 31
  %320 = trunc i32 %319 to i8
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %320, i8* %321, align 1, !tbaa !2449
  %322 = lshr i32 %295, 31
  %323 = xor i32 %319, %322
  %324 = add nuw nsw i32 %323, %319
  %325 = icmp eq i32 %324, 2
  %326 = zext i1 %325 to i8
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %326, i8* %327, align 1, !tbaa !2450
  %328 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %329 = load i32, i32* %EAX
  %330 = zext i32 %329 to i64
  %331 = load i64, i64* %PC
  %332 = add i64 %331, 4
  store i64 %332, i64* %PC
  %333 = sitofp i32 %329 to double
  %334 = bitcast i8* %328 to double*
  store double %333, double* %334, align 1, !tbaa !2452
  %335 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %336 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %337 = bitcast %union.vec128_t* %XMM1 to i8*
  %338 = load i64, i64* %PC
  %339 = add i64 %338, 4
  store i64 %339, i64* %PC
  %340 = bitcast i8* %336 to double*
  %341 = load double, double* %340, align 1
  %342 = getelementptr inbounds i8, i8* %336, i64 8
  %343 = bitcast i8* %342 to i64*
  %344 = load i64, i64* %343, align 1
  %345 = bitcast i8* %337 to double*
  %346 = load double, double* %345, align 1
  %347 = fmul double %341, %346
  %348 = bitcast i8* %335 to double*
  store double %347, double* %348, align 1, !tbaa !2452
  %349 = getelementptr inbounds i8, i8* %335, i64 8
  %350 = bitcast i8* %349 to i64*
  store i64 %344, i64* %350, align 1, !tbaa !2452
  %351 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %352 = load i64, i64* %RBP
  %353 = sub i64 %352, 4
  %354 = load i64, i64* %PC
  %355 = add i64 %354, 5
  store i64 %355, i64* %PC
  %356 = inttoptr i64 %353 to i32*
  %357 = load i32, i32* %356
  %358 = sitofp i32 %357 to double
  %359 = bitcast i8* %351 to double*
  store double %358, double* %359, align 1, !tbaa !2452
  %360 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %361 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %362 = bitcast %union.vec128_t* %XMM1 to i8*
  %363 = load i64, i64* %PC
  %364 = add i64 %363, 4
  store i64 %364, i64* %PC
  %365 = bitcast i8* %361 to double*
  %366 = load double, double* %365, align 1
  %367 = getelementptr inbounds i8, i8* %361, i64 8
  %368 = bitcast i8* %367 to i64*
  %369 = load i64, i64* %368, align 1
  %370 = bitcast i8* %362 to double*
  %371 = load double, double* %370, align 1
  %372 = fdiv double %366, %371
  %373 = bitcast i8* %360 to double*
  store double %372, double* %373, align 1, !tbaa !2452
  %374 = getelementptr inbounds i8, i8* %360, i64 8
  %375 = bitcast i8* %374 to i64*
  store i64 %369, i64* %375, align 1, !tbaa !2452
  %376 = load i64, i64* %RBP
  %377 = sub i64 %376, 16
  %378 = load i64, i64* %PC
  %379 = add i64 %378, 4
  store i64 %379, i64* %PC
  %380 = inttoptr i64 %377 to i64*
  %381 = load i64, i64* %380
  store i64 %381, i64* %RCX, align 8, !tbaa !2428
  %382 = load i64, i64* %RBP
  %383 = sub i64 %382, 36
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 4
  store i64 %385, i64* %PC
  %386 = inttoptr i64 %383 to i32*
  %387 = load i32, i32* %386
  %388 = sext i32 %387 to i64
  store i64 %388, i64* %RDX, align 8, !tbaa !2428
  %389 = load i64, i64* %RDX
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 7
  store i64 %391, i64* %PC
  %392 = sext i64 %389 to i128
  %393 = and i128 %392, -18446744073709551616
  %394 = zext i64 %389 to i128
  %395 = or i128 %393, %394
  %396 = mul nsw i128 32000, %395
  %397 = trunc i128 %396 to i64
  store i64 %397, i64* %RDX, align 8, !tbaa !2428
  %398 = sext i64 %397 to i128
  %399 = icmp ne i128 %398, %396
  %400 = zext i1 %399 to i8
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %400, i8* %401, align 1, !tbaa !2432
  %402 = trunc i128 %396 to i32
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %403, align 1, !tbaa !2446
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %404, align 1, !tbaa !2447
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %405, align 1, !tbaa !2448
  %406 = lshr i64 %397, 63
  %407 = trunc i64 %406 to i8
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %407, i8* %408, align 1, !tbaa !2449
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %400, i8* %409, align 1, !tbaa !2450
  %410 = load i64, i64* %RCX
  %411 = load i64, i64* %RDX
  %412 = load i64, i64* %PC
  %413 = add i64 %412, 3
  store i64 %413, i64* %PC
  %414 = add i64 %411, %410
  store i64 %414, i64* %RCX, align 8, !tbaa !2428
  %415 = icmp ult i64 %414, %410
  %416 = icmp ult i64 %414, %411
  %417 = or i1 %415, %416
  %418 = zext i1 %417 to i8
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %418, i8* %419, align 1, !tbaa !2432
  %420 = trunc i64 %414 to i32
  %421 = and i32 %420, 255
  %422 = call i32 @llvm.ctpop.i32(i32 %421) #16
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %425, i8* %426, align 1, !tbaa !2446
  %427 = xor i64 %411, %410
  %428 = xor i64 %427, %414
  %429 = lshr i64 %428, 4
  %430 = trunc i64 %429 to i8
  %431 = and i8 %430, 1
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %431, i8* %432, align 1, !tbaa !2447
  %433 = icmp eq i64 %414, 0
  %434 = zext i1 %433 to i8
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %434, i8* %435, align 1, !tbaa !2448
  %436 = lshr i64 %414, 63
  %437 = trunc i64 %436 to i8
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %437, i8* %438, align 1, !tbaa !2449
  %439 = lshr i64 %410, 63
  %440 = lshr i64 %411, 63
  %441 = xor i64 %436, %439
  %442 = xor i64 %436, %440
  %443 = add nuw nsw i64 %441, %442
  %444 = icmp eq i64 %443, 2
  %445 = zext i1 %444 to i8
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %445, i8* %446, align 1, !tbaa !2450
  %447 = load i64, i64* %RBP
  %448 = sub i64 %447, 40
  %449 = load i64, i64* %PC
  %450 = add i64 %449, 4
  store i64 %450, i64* %PC
  %451 = inttoptr i64 %448 to i32*
  %452 = load i32, i32* %451
  %453 = sext i32 %452 to i64
  store i64 %453, i64* %RDX, align 8, !tbaa !2428
  %454 = load i64, i64* %RCX
  %455 = load i64, i64* %RDX
  %456 = mul i64 %455, 8
  %457 = add i64 %456, %454
  %458 = bitcast %union.vec128_t* %XMM0 to i8*
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 5
  store i64 %460, i64* %PC
  %461 = bitcast i8* %458 to double*
  %462 = load double, double* %461, align 1
  %463 = inttoptr i64 %457 to double*
  store double %462, double* %463
  %464 = load i64, i64* %RBP
  %465 = sub i64 %464, 40
  %466 = load i64, i64* %PC
  %467 = add i64 %466, 3
  store i64 %467, i64* %PC
  %468 = inttoptr i64 %465 to i32*
  %469 = load i32, i32* %468
  %470 = zext i32 %469 to i64
  store i64 %470, i64* %RAX, align 8, !tbaa !2428
  %471 = load i64, i64* %RAX
  %472 = load i64, i64* %PC
  %473 = add i64 %472, 3
  store i64 %473, i64* %PC
  %474 = trunc i64 %471 to i32
  %475 = add i32 1, %474
  %476 = zext i32 %475 to i64
  store i64 %476, i64* %RAX, align 8, !tbaa !2428
  %477 = icmp ult i32 %475, %474
  %478 = icmp ult i32 %475, 1
  %479 = or i1 %477, %478
  %480 = zext i1 %479 to i8
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %480, i8* %481, align 1, !tbaa !2432
  %482 = and i32 %475, 255
  %483 = call i32 @llvm.ctpop.i32(i32 %482) #16
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %486, i8* %487, align 1, !tbaa !2446
  %488 = xor i64 1, %471
  %489 = trunc i64 %488 to i32
  %490 = xor i32 %489, %475
  %491 = lshr i32 %490, 4
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %493, i8* %494, align 1, !tbaa !2447
  %495 = icmp eq i32 %475, 0
  %496 = zext i1 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %496, i8* %497, align 1, !tbaa !2448
  %498 = lshr i32 %475, 31
  %499 = trunc i32 %498 to i8
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %499, i8* %500, align 1, !tbaa !2449
  %501 = lshr i32 %474, 31
  %502 = xor i32 %498, %501
  %503 = add nuw nsw i32 %502, %498
  %504 = icmp eq i32 %503, 2
  %505 = zext i1 %504 to i8
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %505, i8* %506, align 1, !tbaa !2450
  %507 = load i64, i64* %RBP
  %508 = sub i64 %507, 40
  %509 = load i32, i32* %EAX
  %510 = zext i32 %509 to i64
  %511 = load i64, i64* %PC
  %512 = add i64 %511, 3
  store i64 %512, i64* %PC
  %513 = inttoptr i64 %508 to i32*
  store i32 %509, i32* %513
  %514 = load i64, i64* %PC
  %515 = sub i64 %514, 76
  %516 = load i64, i64* %PC
  %517 = add i64 %516, 5
  store i64 %517, i64* %PC
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %515, i64* %518, align 8, !tbaa !2428
  br label %block_400bad

block_400b75:                                     ; preds = %block_400b3d
  %519 = load i64, i64* %RBP
  %520 = sub i64 %519, 36
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 7
  store i64 %522, i64* %PC
  %523 = inttoptr i64 %520 to i32*
  store i32 0, i32* %523
  br label %block_400b7c

block_400c11:                                     ; preds = %block_400b7c
  %524 = load i64, i64* %PC
  %525 = add i64 %524, 1
  store i64 %525, i64* %PC
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %527 = load i64, i64* %526, align 8, !tbaa !2428
  %528 = add i64 %527, 8
  %529 = inttoptr i64 %527 to i64*
  %530 = load i64, i64* %529
  store i64 %530, i64* %RBP, align 8, !tbaa !2428
  store i64 %528, i64* %526, align 8, !tbaa !2428
  %531 = load i64, i64* %PC
  %532 = add i64 %531, 1
  store i64 %532, i64* %PC
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %535 = load i64, i64* %534, align 8, !tbaa !2428
  %536 = inttoptr i64 %535 to i64*
  %537 = load i64, i64* %536
  store i64 %537, i64* %533, align 8, !tbaa !2428
  %538 = add i64 %535, 8
  store i64 %538, i64* %534, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_400bad:                                     ; preds = %block_400b88, %block_400bb9
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_400b88 ], [ %MEMORY.2, %block_400bb9 ]
  %539 = load i64, i64* %RBP
  %540 = sub i64 %539, 40
  %541 = load i64, i64* %PC
  %542 = add i64 %541, 3
  store i64 %542, i64* %PC
  %543 = inttoptr i64 %540 to i32*
  %544 = load i32, i32* %543
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RAX, align 8, !tbaa !2428
  %546 = load i32, i32* %EAX
  %547 = zext i32 %546 to i64
  %548 = load i64, i64* %RBP
  %549 = sub i64 %548, 8
  %550 = load i64, i64* %PC
  %551 = add i64 %550, 3
  store i64 %551, i64* %PC
  %552 = inttoptr i64 %549 to i32*
  %553 = load i32, i32* %552
  %554 = sub i32 %546, %553
  %555 = icmp ult i32 %546, %553
  %556 = zext i1 %555 to i8
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %556, i8* %557, align 1, !tbaa !2432
  %558 = and i32 %554, 255
  %559 = call i32 @llvm.ctpop.i32(i32 %558) #16
  %560 = trunc i32 %559 to i8
  %561 = and i8 %560, 1
  %562 = xor i8 %561, 1
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %562, i8* %563, align 1, !tbaa !2446
  %564 = xor i32 %553, %546
  %565 = xor i32 %564, %554
  %566 = lshr i32 %565, 4
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %568, i8* %569, align 1, !tbaa !2447
  %570 = icmp eq i32 %554, 0
  %571 = zext i1 %570 to i8
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %571, i8* %572, align 1, !tbaa !2448
  %573 = lshr i32 %554, 31
  %574 = trunc i32 %573 to i8
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %574, i8* %575, align 1, !tbaa !2449
  %576 = lshr i32 %546, 31
  %577 = lshr i32 %553, 31
  %578 = xor i32 %577, %576
  %579 = xor i32 %573, %576
  %580 = add nuw nsw i32 %579, %578
  %581 = icmp eq i32 %580, 2
  %582 = zext i1 %581 to i8
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %582, i8* %583, align 1, !tbaa !2450
  %584 = load i64, i64* %PC
  %585 = add i64 %584, 75
  %586 = load i64, i64* %PC
  %587 = add i64 %586, 6
  %588 = load i64, i64* %PC
  %589 = add i64 %588, 6
  store i64 %589, i64* %PC
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %591 = load i8, i8* %590, align 1, !tbaa !2449
  %592 = icmp ne i8 %591, 0
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %594 = load i8, i8* %593, align 1, !tbaa !2450
  %595 = icmp ne i8 %594, 0
  %596 = xor i1 %592, %595
  %597 = xor i1 %596, true
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %600 = select i1 %596, i64 %587, i64 %585
  store i64 %600, i64* %599, align 8, !tbaa !2428
  %601 = load i8, i8* %BRANCH_TAKEN
  %602 = icmp eq i8 %601, 1
  br i1 %602, label %block_400bfe, label %block_400bb9

block_400b49:                                     ; preds = %block_400b3d
  %603 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %604 = load i64, i64* %PC
  %605 = add i64 %604, 8
  store i64 %605, i64* %PC
  %606 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4012f0__rodata_type* @seg_4012f0__rodata to i64), i64 8) to double*)
  %607 = bitcast i8* %603 to double*
  store double %606, double* %607, align 1, !tbaa !2452
  %608 = getelementptr inbounds i8, i8* %603, i64 8
  %609 = bitcast i8* %608 to double*
  store double 0.000000e+00, double* %609, align 1, !tbaa !2452
  %610 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %611 = load i64, i64* %RBP
  %612 = sub i64 %611, 36
  %613 = load i64, i64* %PC
  %614 = add i64 %613, 5
  store i64 %614, i64* %PC
  %615 = inttoptr i64 %612 to i32*
  %616 = load i32, i32* %615
  %617 = sitofp i32 %616 to double
  %618 = bitcast i8* %610 to double*
  store double %617, double* %618, align 1, !tbaa !2452
  %619 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %620 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %621 = bitcast %union.vec128_t* %XMM0 to i8*
  %622 = load i64, i64* %PC
  %623 = add i64 %622, 4
  store i64 %623, i64* %PC
  %624 = bitcast i8* %620 to double*
  %625 = load double, double* %624, align 1
  %626 = getelementptr inbounds i8, i8* %620, i64 8
  %627 = bitcast i8* %626 to i64*
  %628 = load i64, i64* %627, align 1
  %629 = bitcast i8* %621 to double*
  %630 = load double, double* %629, align 1
  %631 = fmul double %625, %630
  %632 = bitcast i8* %619 to double*
  store double %631, double* %632, align 1, !tbaa !2452
  %633 = getelementptr inbounds i8, i8* %619, i64 8
  %634 = bitcast i8* %633 to i64*
  store i64 %628, i64* %634, align 1, !tbaa !2452
  %635 = load i64, i64* %RBP
  %636 = sub i64 %635, 32
  %637 = load i64, i64* %PC
  %638 = add i64 %637, 4
  store i64 %638, i64* %PC
  %639 = inttoptr i64 %636 to i64*
  %640 = load i64, i64* %639
  store i64 %640, i64* %RAX, align 8, !tbaa !2428
  %641 = load i64, i64* %RBP
  %642 = sub i64 %641, 36
  %643 = load i64, i64* %PC
  %644 = add i64 %643, 4
  store i64 %644, i64* %PC
  %645 = inttoptr i64 %642 to i32*
  %646 = load i32, i32* %645
  %647 = sext i32 %646 to i64
  store i64 %647, i64* %RCX, align 8, !tbaa !2428
  %648 = load i64, i64* %RAX
  %649 = load i64, i64* %RCX
  %650 = mul i64 %649, 8
  %651 = add i64 %650, %648
  %652 = bitcast %union.vec128_t* %XMM1 to i8*
  %653 = load i64, i64* %PC
  %654 = add i64 %653, 5
  store i64 %654, i64* %PC
  %655 = bitcast i8* %652 to double*
  %656 = load double, double* %655, align 1
  %657 = inttoptr i64 %651 to double*
  store double %656, double* %657
  %658 = load i64, i64* %RBP
  %659 = sub i64 %658, 36
  %660 = load i64, i64* %PC
  %661 = add i64 %660, 3
  store i64 %661, i64* %PC
  %662 = inttoptr i64 %659 to i32*
  %663 = load i32, i32* %662
  %664 = zext i32 %663 to i64
  store i64 %664, i64* %RAX, align 8, !tbaa !2428
  %665 = load i64, i64* %RAX
  %666 = load i64, i64* %PC
  %667 = add i64 %666, 3
  store i64 %667, i64* %PC
  %668 = trunc i64 %665 to i32
  %669 = add i32 1, %668
  %670 = zext i32 %669 to i64
  store i64 %670, i64* %RAX, align 8, !tbaa !2428
  %671 = icmp ult i32 %669, %668
  %672 = icmp ult i32 %669, 1
  %673 = or i1 %671, %672
  %674 = zext i1 %673 to i8
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %674, i8* %675, align 1, !tbaa !2432
  %676 = and i32 %669, 255
  %677 = call i32 @llvm.ctpop.i32(i32 %676) #16
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  %680 = xor i8 %679, 1
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %680, i8* %681, align 1, !tbaa !2446
  %682 = xor i64 1, %665
  %683 = trunc i64 %682 to i32
  %684 = xor i32 %683, %669
  %685 = lshr i32 %684, 4
  %686 = trunc i32 %685 to i8
  %687 = and i8 %686, 1
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %687, i8* %688, align 1, !tbaa !2447
  %689 = icmp eq i32 %669, 0
  %690 = zext i1 %689 to i8
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %690, i8* %691, align 1, !tbaa !2448
  %692 = lshr i32 %669, 31
  %693 = trunc i32 %692 to i8
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %693, i8* %694, align 1, !tbaa !2449
  %695 = lshr i32 %668, 31
  %696 = xor i32 %692, %695
  %697 = add nuw nsw i32 %696, %692
  %698 = icmp eq i32 %697, 2
  %699 = zext i1 %698 to i8
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %699, i8* %700, align 1, !tbaa !2450
  %701 = load i64, i64* %RBP
  %702 = sub i64 %701, 36
  %703 = load i32, i32* %EAX
  %704 = zext i32 %703 to i64
  %705 = load i64, i64* %PC
  %706 = add i64 %705, 3
  store i64 %706, i64* %PC
  %707 = inttoptr i64 %702 to i32*
  store i32 %703, i32* %707
  %708 = load i64, i64* %PC
  %709 = sub i64 %708, 51
  %710 = load i64, i64* %PC
  %711 = add i64 %710, 5
  store i64 %711, i64* %PC
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %709, i64* %712, align 8, !tbaa !2428
  br label %block_400b3d

block_400b88:                                     ; preds = %block_400b7c
  %713 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %714 = load i64, i64* %PC
  %715 = add i64 %714, 8
  store i64 %715, i64* %PC
  %716 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4012f0__rodata_type* @seg_4012f0__rodata to i64), i64 8) to double*)
  %717 = bitcast i8* %713 to double*
  store double %716, double* %717, align 1, !tbaa !2452
  %718 = getelementptr inbounds i8, i8* %713, i64 8
  %719 = bitcast i8* %718 to double*
  store double 0.000000e+00, double* %719, align 1, !tbaa !2452
  %720 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %721 = load i64, i64* %RBP
  %722 = sub i64 %721, 36
  %723 = load i64, i64* %PC
  %724 = add i64 %723, 5
  store i64 %724, i64* %PC
  %725 = inttoptr i64 %722 to i32*
  %726 = load i32, i32* %725
  %727 = sitofp i32 %726 to double
  %728 = bitcast i8* %720 to double*
  store double %727, double* %728, align 1, !tbaa !2452
  %729 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %730 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %731 = bitcast %union.vec128_t* %XMM0 to i8*
  %732 = load i64, i64* %PC
  %733 = add i64 %732, 4
  store i64 %733, i64* %PC
  %734 = bitcast i8* %730 to double*
  %735 = load double, double* %734, align 1
  %736 = getelementptr inbounds i8, i8* %730, i64 8
  %737 = bitcast i8* %736 to i64*
  %738 = load i64, i64* %737, align 1
  %739 = bitcast i8* %731 to double*
  %740 = load double, double* %739, align 1
  %741 = fmul double %735, %740
  %742 = bitcast i8* %729 to double*
  store double %741, double* %742, align 1, !tbaa !2452
  %743 = getelementptr inbounds i8, i8* %729, i64 8
  %744 = bitcast i8* %743 to i64*
  store i64 %738, i64* %744, align 1, !tbaa !2452
  %745 = load i64, i64* %RBP
  %746 = sub i64 %745, 24
  %747 = load i64, i64* %PC
  %748 = add i64 %747, 4
  store i64 %748, i64* %PC
  %749 = inttoptr i64 %746 to i64*
  %750 = load i64, i64* %749
  store i64 %750, i64* %RAX, align 8, !tbaa !2428
  %751 = load i64, i64* %RBP
  %752 = sub i64 %751, 36
  %753 = load i64, i64* %PC
  %754 = add i64 %753, 4
  store i64 %754, i64* %PC
  %755 = inttoptr i64 %752 to i32*
  %756 = load i32, i32* %755
  %757 = sext i32 %756 to i64
  store i64 %757, i64* %RCX, align 8, !tbaa !2428
  %758 = load i64, i64* %RAX
  %759 = load i64, i64* %RCX
  %760 = mul i64 %759, 8
  %761 = add i64 %760, %758
  %762 = bitcast %union.vec128_t* %XMM1 to i8*
  %763 = load i64, i64* %PC
  %764 = add i64 %763, 5
  store i64 %764, i64* %PC
  %765 = bitcast i8* %762 to double*
  %766 = load double, double* %765, align 1
  %767 = inttoptr i64 %761 to double*
  store double %766, double* %767
  %768 = load i64, i64* %RBP
  %769 = sub i64 %768, 40
  %770 = load i64, i64* %PC
  %771 = add i64 %770, 7
  store i64 %771, i64* %PC
  %772 = inttoptr i64 %769 to i32*
  store i32 0, i32* %772
  br label %block_400bad
}

; Function Attrs: noinline
define %struct.Memory* @sub_400810_rtclock(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400810:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %15 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %14, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %15 to %union.vec128_t*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 1
  store i64 %18, i64* %PC
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %20 = load i64, i64* %19, align 8, !tbaa !2428
  %21 = add i64 %20, -8
  %22 = inttoptr i64 %21 to i64*
  store i64 %16, i64* %22
  store i64 %21, i64* %19, align 8, !tbaa !2428
  %23 = load i64, i64* %RSP
  %24 = load i64, i64* %PC
  %25 = add i64 %24, 3
  store i64 %25, i64* %PC
  store i64 %23, i64* %RBP, align 8, !tbaa !2428
  %26 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %27 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %28 = bitcast %union.vec128_t* %XMM0 to i8*
  %29 = load i64, i64* %PC
  %30 = add i64 %29, 3
  store i64 %30, i64* %PC
  %31 = bitcast i8* %27 to i64*
  %32 = load i64, i64* %31, align 1
  %33 = getelementptr inbounds i8, i8* %27, i64 8
  %34 = bitcast i8* %33 to i64*
  %35 = load i64, i64* %34, align 1
  %36 = bitcast i8* %28 to i64*
  %37 = load i64, i64* %36, align 1
  %38 = getelementptr inbounds i8, i8* %28, i64 8
  %39 = bitcast i8* %38 to i64*
  %40 = load i64, i64* %39, align 1
  %41 = xor i64 %37, %32
  %42 = xor i64 %40, %35
  %43 = trunc i64 %41 to i32
  %44 = lshr i64 %41, 32
  %45 = trunc i64 %44 to i32
  %46 = bitcast i8* %26 to i32*
  store i32 %43, i32* %46, align 1, !tbaa !2454
  %47 = getelementptr inbounds i8, i8* %26, i64 4
  %48 = bitcast i8* %47 to i32*
  store i32 %45, i32* %48, align 1, !tbaa !2454
  %49 = trunc i64 %42 to i32
  %50 = getelementptr inbounds i8, i8* %26, i64 8
  %51 = bitcast i8* %50 to i32*
  store i32 %49, i32* %51, align 1, !tbaa !2454
  %52 = lshr i64 %42, 32
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds i8, i8* %26, i64 12
  %55 = bitcast i8* %54 to i32*
  store i32 %53, i32* %55, align 1, !tbaa !2454
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 1
  store i64 %57, i64* %PC
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %59 = load i64, i64* %58, align 8, !tbaa !2428
  %60 = add i64 %59, 8
  %61 = inttoptr i64 %59 to i64*
  %62 = load i64, i64* %61
  store i64 %62, i64* %RBP, align 8, !tbaa !2428
  store i64 %60, i64* %58, align 8, !tbaa !2428
  %63 = load i64, i64* %PC
  %64 = add i64 %63, 1
  store i64 %64, i64* %PC
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %67 = load i64, i64* %66, align 8, !tbaa !2428
  %68 = inttoptr i64 %67 to i64*
  %69 = load i64, i64* %68
  store i64 %69, i64* %65, align 8, !tbaa !2428
  %70 = add i64 %67, 8
  store i64 %70, i64* %66, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007e0_polybench_prepare_instruments(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4007e0:
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
  %23 = sub i64 %22, 132
  %24 = load i64, i64* %PC
  %25 = add i64 %24, 5
  %26 = load i64, i64* %PC
  %27 = add i64 %26, 5
  store i64 %27, i64* %PC
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %29 = load i64, i64* %28, align 8, !tbaa !2428
  %30 = add i64 %29, -8
  %31 = inttoptr i64 %30 to i64*
  store i64 %25, i64* %31
  store i64 %30, i64* %28, align 8, !tbaa !2428
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %23, i64* %32, align 8, !tbaa !2428
  %33 = load i64, i64* %PC
  %34 = call %struct.Memory* @sub_400760_polybench_flush_cache(%struct.State* %0, i64 %33, %struct.Memory* %2)
  %35 = load i64, i64* %PC
  %36 = add i64 %35, 1
  store i64 %36, i64* %PC
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %38 = load i64, i64* %37, align 8, !tbaa !2428
  %39 = add i64 %38, 8
  %40 = inttoptr i64 %38 to i64*
  %41 = load i64, i64* %40
  store i64 %41, i64* %RBP, align 8, !tbaa !2428
  store i64 %39, i64* %37, align 8, !tbaa !2428
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 1
  store i64 %43, i64* %PC
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %46 = load i64, i64* %45, align 8, !tbaa !2428
  %47 = inttoptr i64 %46 to i64*
  %48 = load i64, i64* %47
  store i64 %48, i64* %44, align 8, !tbaa !2428
  %49 = add i64 %46, 8
  store i64 %49, i64* %45, align 8, !tbaa !2428
  ret %struct.Memory* %34
}

; Function Attrs: noinline
define %struct.Memory* @sub_400f90_print_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400f90:
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
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %43 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %42, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %43 to %"class.std::bitset"*
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
  %57 = sub i64 %54, 64
  store i64 %57, i64* %RSP, align 8, !tbaa !2428
  %58 = icmp ult i64 %54, 64
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
  %68 = xor i64 64, %54
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
  %88 = load i32, i32* %EDI
  %89 = zext i32 %88 to i64
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 3
  store i64 %91, i64* %PC
  %92 = inttoptr i64 %87 to i32*
  store i32 %88, i32* %92
  %93 = load i64, i64* %RBP
  %94 = sub i64 %93, 8
  %95 = load i32, i32* %ESI
  %96 = zext i32 %95 to i64
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 3
  store i64 %98, i64* %PC
  %99 = inttoptr i64 %94 to i32*
  store i32 %95, i32* %99
  %100 = load i64, i64* %RBP
  %101 = sub i64 %100, 16
  %102 = load i64, i64* %RDX
  %103 = load i64, i64* %PC
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC
  %105 = inttoptr i64 %101 to i64*
  store i64 %102, i64* %105
  %106 = load i64, i64* %RBP
  %107 = sub i64 %106, 24
  %108 = load i64, i64* %RCX
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 4
  store i64 %110, i64* %PC
  %111 = inttoptr i64 %107 to i64*
  store i64 %108, i64* %111
  %112 = load i64, i64* %RBP
  %113 = sub i64 %112, 4
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 3
  store i64 %115, i64* %PC
  %116 = inttoptr i64 %113 to i32*
  %117 = load i32, i32* %116
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RSI, align 8, !tbaa !2428
  %119 = load i32, i32* %ESI
  %120 = zext i32 %119 to i64
  %121 = load i64, i64* %RBP
  %122 = sub i64 %121, 8
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 3
  store i64 %124, i64* %PC
  %125 = inttoptr i64 %122 to i32*
  %126 = load i32, i32* %125
  %127 = sub i32 %119, %126
  %128 = icmp ult i32 %119, %126
  %129 = zext i1 %128 to i8
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %129, i8* %130, align 1, !tbaa !2432
  %131 = and i32 %127, 255
  %132 = call i32 @llvm.ctpop.i32(i32 %131) #16
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %135, i8* %136, align 1, !tbaa !2446
  %137 = xor i32 %126, %119
  %138 = xor i32 %137, %127
  %139 = lshr i32 %138, 4
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %141, i8* %142, align 1, !tbaa !2447
  %143 = icmp eq i32 %127, 0
  %144 = zext i1 %143 to i8
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %144, i8* %145, align 1, !tbaa !2448
  %146 = lshr i32 %127, 31
  %147 = trunc i32 %146 to i8
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %147, i8* %148, align 1, !tbaa !2449
  %149 = lshr i32 %119, 31
  %150 = lshr i32 %126, 31
  %151 = xor i32 %150, %149
  %152 = xor i32 %146, %149
  %153 = add nuw nsw i32 %152, %151
  %154 = icmp eq i32 %153, 2
  %155 = zext i1 %154 to i8
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %155, i8* %156, align 1, !tbaa !2450
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 17
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 6
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 6
  store i64 %162, i64* %PC
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %164 = load i8, i8* %163, align 1, !tbaa !2448
  %165 = icmp ne i8 %164, 0
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %167 = load i8, i8* %166, align 1, !tbaa !2449
  %168 = icmp ne i8 %167, 0
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %170 = load i8, i8* %169, align 1, !tbaa !2450
  %171 = icmp ne i8 %170, 0
  %172 = xor i1 %168, %171
  %173 = or i1 %165, %172
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %176 = select i1 %173, i64 %158, i64 %160
  store i64 %176, i64* %175, align 8, !tbaa !2428
  %177 = load i8, i8* %BRANCH_TAKEN
  %178 = icmp eq i8 %177, 1
  %179 = load i64, i64* %RBP
  br i1 %178, label %block_400fbd, label %block_400fb2

block_400ff6:                                     ; preds = %block_401002, %block_400fc3
  %MEMORY.0 = phi %struct.Memory* [ %441, %block_400fc3 ], [ %634, %block_401002 ]
  %180 = load i64, i64* %RBP
  %181 = sub i64 %180, 28
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 3
  store i64 %183, i64* %PC
  %184 = inttoptr i64 %181 to i32*
  %185 = load i32, i32* %184
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %RAX, align 8, !tbaa !2428
  %187 = load i32, i32* %EAX
  %188 = zext i32 %187 to i64
  %189 = load i64, i64* %RBP
  %190 = sub i64 %189, 8
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 3
  store i64 %192, i64* %PC
  %193 = inttoptr i64 %190 to i32*
  %194 = load i32, i32* %193
  %195 = sub i32 %187, %194
  %196 = icmp ult i32 %187, %194
  %197 = zext i1 %196 to i8
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %197, i8* %198, align 1, !tbaa !2432
  %199 = and i32 %195, 255
  %200 = call i32 @llvm.ctpop.i32(i32 %199) #16
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %203, i8* %204, align 1, !tbaa !2446
  %205 = xor i32 %194, %187
  %206 = xor i32 %205, %195
  %207 = lshr i32 %206, 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %209, i8* %210, align 1, !tbaa !2447
  %211 = icmp eq i32 %195, 0
  %212 = zext i1 %211 to i8
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %212, i8* %213, align 1, !tbaa !2448
  %214 = lshr i32 %195, 31
  %215 = trunc i32 %214 to i8
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %215, i8* %216, align 1, !tbaa !2449
  %217 = lshr i32 %187, 31
  %218 = lshr i32 %194, 31
  %219 = xor i32 %218, %217
  %220 = xor i32 %214, %217
  %221 = add nuw nsw i32 %220, %219
  %222 = icmp eq i32 %221, 2
  %223 = zext i1 %222 to i8
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %223, i8* %224, align 1, !tbaa !2450
  %225 = load i64, i64* %PC
  %226 = add i64 %225, 50
  %227 = load i64, i64* %PC
  %228 = add i64 %227, 6
  %229 = load i64, i64* %PC
  %230 = add i64 %229, 6
  store i64 %230, i64* %PC
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %232 = load i8, i8* %231, align 1, !tbaa !2449
  %233 = icmp ne i8 %232, 0
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %235 = load i8, i8* %234, align 1, !tbaa !2450
  %236 = icmp ne i8 %235, 0
  %237 = xor i1 %233, %236
  %238 = xor i1 %237, true
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %241 = select i1 %237, i64 %228, i64 %226
  store i64 %241, i64* %240, align 8, !tbaa !2428
  %242 = load i8, i8* %BRANCH_TAKEN
  %243 = icmp eq i8 %242, 1
  %244 = load i64, i64* %RBP
  br i1 %243, label %block_40102e, label %block_401002

block_401055:                                     ; preds = %block_401061, %block_40102e
  %MEMORY.1 = phi %struct.Memory* [ %542, %block_40102e ], [ %884, %block_401061 ]
  %245 = load i64, i64* %RBP
  %246 = sub i64 %245, 28
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 3
  store i64 %248, i64* %PC
  %249 = inttoptr i64 %246 to i32*
  %250 = load i32, i32* %249
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %RAX, align 8, !tbaa !2428
  %252 = load i32, i32* %EAX
  %253 = zext i32 %252 to i64
  %254 = load i64, i64* %RBP
  %255 = sub i64 %254, 4
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 3
  store i64 %257, i64* %PC
  %258 = inttoptr i64 %255 to i32*
  %259 = load i32, i32* %258
  %260 = sub i32 %252, %259
  %261 = icmp ult i32 %252, %259
  %262 = zext i1 %261 to i8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %262, i8* %263, align 1, !tbaa !2432
  %264 = and i32 %260, 255
  %265 = call i32 @llvm.ctpop.i32(i32 %264) #16
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = xor i8 %267, 1
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %268, i8* %269, align 1, !tbaa !2446
  %270 = xor i32 %259, %252
  %271 = xor i32 %270, %260
  %272 = lshr i32 %271, 4
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %274, i8* %275, align 1, !tbaa !2447
  %276 = icmp eq i32 %260, 0
  %277 = zext i1 %276 to i8
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %277, i8* %278, align 1, !tbaa !2448
  %279 = lshr i32 %260, 31
  %280 = trunc i32 %279 to i8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %280, i8* %281, align 1, !tbaa !2449
  %282 = lshr i32 %252, 31
  %283 = lshr i32 %259, 31
  %284 = xor i32 %283, %282
  %285 = xor i32 %279, %282
  %286 = add nuw nsw i32 %285, %284
  %287 = icmp eq i32 %286, 2
  %288 = zext i1 %287 to i8
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %288, i8* %289, align 1, !tbaa !2450
  %290 = load i64, i64* %PC
  %291 = add i64 %290, 50
  %292 = load i64, i64* %PC
  %293 = add i64 %292, 6
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 6
  store i64 %295, i64* %PC
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %297 = load i8, i8* %296, align 1, !tbaa !2449
  %298 = icmp ne i8 %297, 0
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %300 = load i8, i8* %299, align 1, !tbaa !2450
  %301 = icmp ne i8 %300, 0
  %302 = xor i1 %298, %301
  %303 = xor i1 %302, true
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %306 = select i1 %302, i64 %293, i64 %291
  store i64 %306, i64* %305, align 8, !tbaa !2428
  %307 = load i8, i8* %BRANCH_TAKEN
  %308 = icmp eq i8 %307, 1
  %309 = load i64, i64* %RBP
  br i1 %308, label %block_40108d, label %block_401061

block_400fbd:                                     ; preds = %block_400f90
  %310 = sub i64 %179, 8
  %311 = load i64, i64* %PC
  %312 = add i64 %311, 3
  store i64 %312, i64* %PC
  %313 = inttoptr i64 %310 to i32*
  %314 = load i32, i32* %313
  %315 = zext i32 %314 to i64
  store i64 %315, i64* %RAX, align 8, !tbaa !2428
  %316 = load i64, i64* %RBP
  %317 = sub i64 %316, 44
  %318 = load i32, i32* %EAX
  %319 = zext i32 %318 to i64
  %320 = load i64, i64* %PC
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC
  %322 = inttoptr i64 %317 to i32*
  store i32 %318, i32* %322
  br label %block_400fc3

block_400fb2:                                     ; preds = %block_400f90
  %323 = sub i64 %179, 4
  %324 = load i64, i64* %PC
  %325 = add i64 %324, 3
  store i64 %325, i64* %PC
  %326 = inttoptr i64 %323 to i32*
  %327 = load i32, i32* %326
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RAX, align 8, !tbaa !2428
  %329 = load i64, i64* %RBP
  %330 = sub i64 %329, 44
  %331 = load i32, i32* %EAX
  %332 = zext i32 %331 to i64
  %333 = load i64, i64* %PC
  %334 = add i64 %333, 3
  store i64 %334, i64* %PC
  %335 = inttoptr i64 %330 to i32*
  store i32 %331, i32* %335
  %336 = load i64, i64* %PC
  %337 = add i64 %336, 11
  %338 = load i64, i64* %PC
  %339 = add i64 %338, 5
  store i64 %339, i64* %PC
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %337, i64* %340, align 8, !tbaa !2428
  br label %block_400fc3

block_400fc3:                                     ; preds = %block_400fb2, %block_400fbd
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_400fbd ], [ %2, %block_400fb2 ]
  %341 = load i64, i64* %RBP
  %342 = sub i64 %341, 44
  %343 = load i64, i64* %PC
  %344 = add i64 %343, 3
  store i64 %344, i64* %PC
  %345 = inttoptr i64 %342 to i32*
  %346 = load i32, i32* %345
  %347 = zext i32 %346 to i64
  store i64 %347, i64* %RAX, align 8, !tbaa !2428
  %348 = load i64, i64* %RBP
  %349 = sub i64 %348, 32
  %350 = load i32, i32* %EAX
  %351 = zext i32 %350 to i64
  %352 = load i64, i64* %PC
  %353 = add i64 %352, 3
  store i64 %353, i64* %PC
  %354 = inttoptr i64 %349 to i32*
  store i32 %350, i32* %354
  %355 = load i64, i64* %RBP
  %356 = sub i64 %355, 32
  %357 = load i64, i64* %PC
  %358 = add i64 %357, 3
  store i64 %358, i64* %PC
  %359 = inttoptr i64 %356 to i32*
  %360 = load i32, i32* %359
  %361 = zext i32 %360 to i64
  store i64 %361, i64* %RAX, align 8, !tbaa !2428
  %362 = load i64, i64* %RAX
  %363 = load i64, i64* %PC
  %364 = add i64 %363, 3
  store i64 %364, i64* %PC
  %365 = and i64 %362, 4294967295
  %366 = shl i64 %365, 3
  %367 = trunc i64 %366 to i32
  %368 = icmp slt i32 %367, 0
  %369 = shl i32 %367, 1
  %370 = zext i32 %369 to i64
  store i64 %370, i64* %RAX, align 8, !tbaa !2428
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %372 = zext i1 %368 to i8
  store i8 %372, i8* %371, align 1, !tbaa !2451
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %374 = and i32 %369, 254
  %375 = call i32 @llvm.ctpop.i32(i32 %374) #16
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = xor i8 %377, 1
  store i8 %378, i8* %373, align 1, !tbaa !2451
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %379, align 1, !tbaa !2451
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %381 = icmp eq i32 %369, 0
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %380, align 1, !tbaa !2451
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %384 = lshr i32 %369, 31
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %383, align 1, !tbaa !2451
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %386, align 1, !tbaa !2451
  %387 = load i64, i64* %RAX
  %388 = load i64, i64* %PC
  %389 = add i64 %388, 3
  store i64 %389, i64* %PC
  %390 = trunc i64 %387 to i32
  %391 = add i32 1, %390
  %392 = zext i32 %391 to i64
  store i64 %392, i64* %RAX, align 8, !tbaa !2428
  %393 = icmp ult i32 %391, %390
  %394 = icmp ult i32 %391, 1
  %395 = or i1 %393, %394
  %396 = zext i1 %395 to i8
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %396, i8* %397, align 1, !tbaa !2432
  %398 = and i32 %391, 255
  %399 = call i32 @llvm.ctpop.i32(i32 %398) #16
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %402, i8* %403, align 1, !tbaa !2446
  %404 = xor i64 1, %387
  %405 = trunc i64 %404 to i32
  %406 = xor i32 %405, %391
  %407 = lshr i32 %406, 4
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %409, i8* %410, align 1, !tbaa !2447
  %411 = icmp eq i32 %391, 0
  %412 = zext i1 %411 to i8
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %412, i8* %413, align 1, !tbaa !2448
  %414 = lshr i32 %391, 31
  %415 = trunc i32 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %415, i8* %416, align 1, !tbaa !2449
  %417 = lshr i32 %390, 31
  %418 = xor i32 %414, %417
  %419 = add nuw nsw i32 %418, %414
  %420 = icmp eq i32 %419, 2
  %421 = zext i1 %420 to i8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %421, i8* %422, align 1, !tbaa !2450
  %423 = load i32, i32* %EAX
  %424 = zext i32 %423 to i64
  %425 = load i64, i64* %PC
  %426 = add i64 %425, 3
  store i64 %426, i64* %PC
  %427 = shl i64 %424, 32
  %428 = ashr exact i64 %427, 32
  store i64 %428, i64* %RDI, align 8, !tbaa !2428
  %429 = load i64, i64* %PC
  %430 = sub i64 %429, 2453
  %431 = load i64, i64* %PC
  %432 = add i64 %431, 5
  %433 = load i64, i64* %PC
  %434 = add i64 %433, 5
  store i64 %434, i64* %PC
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %436 = load i64, i64* %435, align 8, !tbaa !2428
  %437 = add i64 %436, -8
  %438 = inttoptr i64 %437 to i64*
  store i64 %432, i64* %438
  store i64 %437, i64* %435, align 8, !tbaa !2428
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %430, i64* %439, align 8, !tbaa !2428
  %440 = load i64, i64* %PC
  %441 = call %struct.Memory* @ext_6020f0_malloc(%struct.State* %0, i64 %440, %struct.Memory* %MEMORY.2)
  %442 = load i64, i64* %RBP
  %443 = sub i64 %442, 40
  %444 = load i64, i64* %RAX
  %445 = load i64, i64* %PC
  %446 = add i64 %445, 4
  store i64 %446, i64* %PC
  %447 = inttoptr i64 %443 to i64*
  store i64 %444, i64* %447
  %448 = load i64, i64* %RBP
  %449 = sub i64 %448, 40
  %450 = load i64, i64* %PC
  %451 = add i64 %450, 4
  store i64 %451, i64* %PC
  %452 = inttoptr i64 %449 to i64*
  %453 = load i64, i64* %452
  store i64 %453, i64* %RAX, align 8, !tbaa !2428
  %454 = load i64, i64* %RBP
  %455 = sub i64 %454, 32
  %456 = load i64, i64* %PC
  %457 = add i64 %456, 3
  store i64 %457, i64* %PC
  %458 = inttoptr i64 %455 to i32*
  %459 = load i32, i32* %458
  %460 = zext i32 %459 to i64
  store i64 %460, i64* %RCX, align 8, !tbaa !2428
  %461 = load i64, i64* %RCX
  %462 = load i64, i64* %PC
  %463 = add i64 %462, 3
  store i64 %463, i64* %PC
  %464 = and i64 %461, 4294967295
  %465 = shl i64 %464, 3
  %466 = trunc i64 %465 to i32
  %467 = icmp slt i32 %466, 0
  %468 = shl i32 %466, 1
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %RCX, align 8, !tbaa !2428
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %471 = zext i1 %467 to i8
  store i8 %471, i8* %470, align 1, !tbaa !2451
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %473 = and i32 %468, 254
  %474 = call i32 @llvm.ctpop.i32(i32 %473) #16
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = xor i8 %476, 1
  store i8 %477, i8* %472, align 1, !tbaa !2451
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %478, align 1, !tbaa !2451
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %480 = icmp eq i32 %468, 0
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %479, align 1, !tbaa !2451
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %483 = lshr i32 %468, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %482, align 1, !tbaa !2451
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %485, align 1, !tbaa !2451
  %486 = load i32, i32* %ECX
  %487 = zext i32 %486 to i64
  %488 = load i64, i64* %PC
  %489 = add i64 %488, 3
  store i64 %489, i64* %PC
  %490 = shl i64 %487, 32
  %491 = ashr exact i64 %490, 32
  store i64 %491, i64* %RDI, align 8, !tbaa !2428
  %492 = load i64, i64* %RAX
  %493 = load i64, i64* %RDI
  %494 = add i64 %493, %492
  %495 = load i64, i64* %PC
  %496 = add i64 %495, 4
  store i64 %496, i64* %PC
  %497 = inttoptr i64 %494 to i8*
  store i8 0, i8* %497
  %498 = load i64, i64* %RBP
  %499 = sub i64 %498, 28
  %500 = load i64, i64* %PC
  %501 = add i64 %500, 7
  store i64 %501, i64* %PC
  %502 = inttoptr i64 %499 to i32*
  store i32 0, i32* %502
  br label %block_400ff6

block_40102e:                                     ; preds = %block_400ff6
  %503 = sub i64 %244, 40
  %504 = load i64, i64* %PC
  %505 = add i64 %504, 4
  store i64 %505, i64* %PC
  %506 = inttoptr i64 %503 to i64*
  %507 = load i64, i64* %506
  store i64 %507, i64* %RAX, align 8, !tbaa !2428
  %508 = load i64, i64* %RBP
  %509 = sub i64 %508, 28
  %510 = load i64, i64* %PC
  %511 = add i64 %510, 4
  store i64 %511, i64* %PC
  %512 = inttoptr i64 %509 to i32*
  %513 = load i32, i32* %512
  %514 = sext i32 %513 to i64
  store i64 %514, i64* %RCX, align 8, !tbaa !2428
  %515 = load i64, i64* %RAX
  %516 = load i64, i64* %RCX
  %517 = add i64 %516, %515
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 4
  store i64 %519, i64* %PC
  %520 = inttoptr i64 %517 to i8*
  store i8 0, i8* %520
  %521 = load i64, i64* %RBP
  %522 = sub i64 %521, 40
  %523 = load i64, i64* %PC
  %524 = add i64 %523, 4
  store i64 %524, i64* %PC
  %525 = inttoptr i64 %522 to i64*
  %526 = load i64, i64* %525
  store i64 %526, i64* %RDI, align 8, !tbaa !2428
  %527 = load i64, i64* %PC
  %528 = add i64 %527, 8
  store i64 %528, i64* %PC
  %529 = load i64, i64* @stderr
  store i64 %529, i64* %RSI, align 8, !tbaa !2428
  %530 = load i64, i64* %PC
  %531 = sub i64 %530, 2614
  %532 = load i64, i64* %PC
  %533 = add i64 %532, 5
  %534 = load i64, i64* %PC
  %535 = add i64 %534, 5
  store i64 %535, i64* %PC
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %537 = load i64, i64* %536, align 8, !tbaa !2428
  %538 = add i64 %537, -8
  %539 = inttoptr i64 %538 to i64*
  store i64 %533, i64* %539
  store i64 %538, i64* %536, align 8, !tbaa !2428
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %531, i64* %540, align 8, !tbaa !2428
  %541 = load i64, i64* %PC
  %542 = call %struct.Memory* @ext_400610_fputs(%struct.State* %0, i64 %541, %struct.Memory* %MEMORY.0)
  %543 = load i64, i64* %RBP
  %544 = sub i64 %543, 28
  %545 = load i64, i64* %PC
  %546 = add i64 %545, 7
  store i64 %546, i64* %PC
  %547 = inttoptr i64 %544 to i32*
  store i32 0, i32* %547
  %548 = load i64, i64* %RBP
  %549 = sub i64 %548, 48
  %550 = load i32, i32* %EAX
  %551 = zext i32 %550 to i64
  %552 = load i64, i64* %PC
  %553 = add i64 %552, 3
  store i64 %553, i64* %PC
  %554 = inttoptr i64 %549 to i32*
  store i32 %550, i32* %554
  br label %block_401055

block_401002:                                     ; preds = %block_400ff6
  %555 = sub i64 %244, 16
  %556 = load i64, i64* %PC
  %557 = add i64 %556, 4
  store i64 %557, i64* %PC
  %558 = inttoptr i64 %555 to i64*
  %559 = load i64, i64* %558
  store i64 %559, i64* %RAX, align 8, !tbaa !2428
  %560 = load i64, i64* %RBP
  %561 = sub i64 %560, 28
  %562 = load i64, i64* %PC
  %563 = add i64 %562, 4
  store i64 %563, i64* %PC
  %564 = inttoptr i64 %561 to i32*
  %565 = load i32, i32* %564
  %566 = sext i32 %565 to i64
  store i64 %566, i64* %RCX, align 8, !tbaa !2428
  %567 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %568 = load i64, i64* %RAX
  %569 = load i64, i64* %RCX
  %570 = mul i64 %569, 8
  %571 = add i64 %570, %568
  %572 = load i64, i64* %PC
  %573 = add i64 %572, 5
  store i64 %573, i64* %PC
  %574 = inttoptr i64 %571 to double*
  %575 = load double, double* %574
  %576 = bitcast i8* %567 to double*
  store double %575, double* %576, align 1, !tbaa !2452
  %577 = getelementptr inbounds i8, i8* %567, i64 8
  %578 = bitcast i8* %577 to double*
  store double 0.000000e+00, double* %578, align 1, !tbaa !2452
  %579 = load i64, i64* %RBP
  %580 = sub i64 %579, 28
  %581 = load i64, i64* %PC
  %582 = add i64 %581, 3
  store i64 %582, i64* %PC
  %583 = inttoptr i64 %580 to i32*
  %584 = load i32, i32* %583
  %585 = zext i32 %584 to i64
  store i64 %585, i64* %RDX, align 8, !tbaa !2428
  %586 = load i64, i64* %RDX
  %587 = load i64, i64* %PC
  %588 = add i64 %587, 3
  store i64 %588, i64* %PC
  %589 = and i64 %586, 4294967295
  %590 = shl i64 %589, 3
  %591 = trunc i64 %590 to i32
  %592 = icmp slt i32 %591, 0
  %593 = shl i32 %591, 1
  %594 = zext i32 %593 to i64
  store i64 %594, i64* %RDX, align 8, !tbaa !2428
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %596 = zext i1 %592 to i8
  store i8 %596, i8* %595, align 1, !tbaa !2451
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %598 = and i32 %593, 254
  %599 = call i32 @llvm.ctpop.i32(i32 %598) #16
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = xor i8 %601, 1
  store i8 %602, i8* %597, align 1, !tbaa !2451
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %603, align 1, !tbaa !2451
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %605 = icmp eq i32 %593, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %604, align 1, !tbaa !2451
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %608 = lshr i32 %593, 31
  %609 = trunc i32 %608 to i8
  store i8 %609, i8* %607, align 1, !tbaa !2451
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %610, align 1, !tbaa !2451
  %611 = load i64, i64* %RBP
  %612 = sub i64 %611, 40
  %613 = load i64, i64* %PC
  %614 = add i64 %613, 4
  store i64 %614, i64* %PC
  %615 = inttoptr i64 %612 to i64*
  %616 = load i64, i64* %615
  store i64 %616, i64* %RSI, align 8, !tbaa !2428
  %617 = load i32, i32* %EDX
  %618 = zext i32 %617 to i64
  %619 = load i64, i64* %PC
  %620 = add i64 %619, 2
  store i64 %620, i64* %PC
  %621 = and i64 %618, 4294967295
  store i64 %621, i64* %RDI, align 8, !tbaa !2428
  %622 = load i64, i64* %PC
  %623 = add i64 %622, 165
  %624 = load i64, i64* %PC
  %625 = add i64 %624, 5
  %626 = load i64, i64* %PC
  %627 = add i64 %626, 5
  store i64 %627, i64* %PC
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %629 = load i64, i64* %628, align 8, !tbaa !2428
  %630 = add i64 %629, -8
  %631 = inttoptr i64 %630 to i64*
  store i64 %625, i64* %631
  store i64 %630, i64* %628, align 8, !tbaa !2428
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %623, i64* %632, align 8, !tbaa !2428
  %633 = load i64, i64* %PC
  %634 = call %struct.Memory* @sub_4010c0_print_element(%struct.State* %0, i64 %633, %struct.Memory* %MEMORY.0)
  %635 = load i64, i64* %RBP
  %636 = sub i64 %635, 28
  %637 = load i64, i64* %PC
  %638 = add i64 %637, 3
  store i64 %638, i64* %PC
  %639 = inttoptr i64 %636 to i32*
  %640 = load i32, i32* %639
  %641 = zext i32 %640 to i64
  store i64 %641, i64* %RAX, align 8, !tbaa !2428
  %642 = load i64, i64* %RAX
  %643 = load i64, i64* %PC
  %644 = add i64 %643, 3
  store i64 %644, i64* %PC
  %645 = trunc i64 %642 to i32
  %646 = add i32 1, %645
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %RAX, align 8, !tbaa !2428
  %648 = icmp ult i32 %646, %645
  %649 = icmp ult i32 %646, 1
  %650 = or i1 %648, %649
  %651 = zext i1 %650 to i8
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %651, i8* %652, align 1, !tbaa !2432
  %653 = and i32 %646, 255
  %654 = call i32 @llvm.ctpop.i32(i32 %653) #16
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %657, i8* %658, align 1, !tbaa !2446
  %659 = xor i64 1, %642
  %660 = trunc i64 %659 to i32
  %661 = xor i32 %660, %646
  %662 = lshr i32 %661, 4
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %664, i8* %665, align 1, !tbaa !2447
  %666 = icmp eq i32 %646, 0
  %667 = zext i1 %666 to i8
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %667, i8* %668, align 1, !tbaa !2448
  %669 = lshr i32 %646, 31
  %670 = trunc i32 %669 to i8
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %670, i8* %671, align 1, !tbaa !2449
  %672 = lshr i32 %645, 31
  %673 = xor i32 %669, %672
  %674 = add nuw nsw i32 %673, %669
  %675 = icmp eq i32 %674, 2
  %676 = zext i1 %675 to i8
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %676, i8* %677, align 1, !tbaa !2450
  %678 = load i64, i64* %RBP
  %679 = sub i64 %678, 28
  %680 = load i32, i32* %EAX
  %681 = zext i32 %680 to i64
  %682 = load i64, i64* %PC
  %683 = add i64 %682, 3
  store i64 %683, i64* %PC
  %684 = inttoptr i64 %679 to i32*
  store i32 %680, i32* %684
  %685 = load i64, i64* %PC
  %686 = sub i64 %685, 51
  %687 = load i64, i64* %PC
  %688 = add i64 %687, 5
  store i64 %688, i64* %PC
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %686, i64* %689, align 8, !tbaa !2428
  br label %block_400ff6

block_40108d:                                     ; preds = %block_401055
  %690 = sub i64 %309, 40
  %691 = load i64, i64* %PC
  %692 = add i64 %691, 4
  store i64 %692, i64* %PC
  %693 = inttoptr i64 %690 to i64*
  %694 = load i64, i64* %693
  store i64 %694, i64* %RAX, align 8, !tbaa !2428
  %695 = load i64, i64* %RBP
  %696 = sub i64 %695, 28
  %697 = load i64, i64* %PC
  %698 = add i64 %697, 4
  store i64 %698, i64* %PC
  %699 = inttoptr i64 %696 to i32*
  %700 = load i32, i32* %699
  %701 = sext i32 %700 to i64
  store i64 %701, i64* %RCX, align 8, !tbaa !2428
  %702 = load i64, i64* %RAX
  %703 = load i64, i64* %RCX
  %704 = add i64 %703, %702
  %705 = load i64, i64* %PC
  %706 = add i64 %705, 4
  store i64 %706, i64* %PC
  %707 = inttoptr i64 %704 to i8*
  store i8 0, i8* %707
  %708 = load i64, i64* %RBP
  %709 = sub i64 %708, 40
  %710 = load i64, i64* %PC
  %711 = add i64 %710, 4
  store i64 %711, i64* %PC
  %712 = inttoptr i64 %709 to i64*
  %713 = load i64, i64* %712
  store i64 %713, i64* %RDI, align 8, !tbaa !2428
  %714 = load i64, i64* %PC
  %715 = add i64 %714, 8
  store i64 %715, i64* %PC
  %716 = load i64, i64* @stderr
  store i64 %716, i64* %RSI, align 8, !tbaa !2428
  %717 = load i64, i64* %PC
  %718 = sub i64 %717, 2709
  %719 = load i64, i64* %PC
  %720 = add i64 %719, 5
  %721 = load i64, i64* %PC
  %722 = add i64 %721, 5
  store i64 %722, i64* %PC
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %724 = load i64, i64* %723, align 8, !tbaa !2428
  %725 = add i64 %724, -8
  %726 = inttoptr i64 %725 to i64*
  store i64 %720, i64* %726
  store i64 %725, i64* %723, align 8, !tbaa !2428
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %718, i64* %727, align 8, !tbaa !2428
  %728 = load i64, i64* %PC
  %729 = call %struct.Memory* @ext_400610_fputs(%struct.State* %0, i64 %728, %struct.Memory* %MEMORY.1)
  %730 = load i64, i64* %RBP
  %731 = sub i64 %730, 40
  %732 = load i64, i64* %PC
  %733 = add i64 %732, 4
  store i64 %733, i64* %PC
  %734 = inttoptr i64 %731 to i64*
  %735 = load i64, i64* %734
  store i64 %735, i64* %RDI, align 8, !tbaa !2428
  %736 = load i64, i64* %RBP
  %737 = sub i64 %736, 52
  %738 = load i32, i32* %EAX
  %739 = zext i32 %738 to i64
  %740 = load i64, i64* %PC
  %741 = add i64 %740, 3
  store i64 %741, i64* %PC
  %742 = inttoptr i64 %737 to i32*
  store i32 %738, i32* %742
  %743 = load i64, i64* %PC
  %744 = sub i64 %743, 2753
  %745 = load i64, i64* %PC
  %746 = add i64 %745, 5
  %747 = load i64, i64* %PC
  %748 = add i64 %747, 5
  store i64 %748, i64* %PC
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %750 = load i64, i64* %749, align 8, !tbaa !2428
  %751 = add i64 %750, -8
  %752 = inttoptr i64 %751 to i64*
  store i64 %746, i64* %752
  store i64 %751, i64* %749, align 8, !tbaa !2428
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %744, i64* %753, align 8, !tbaa !2428
  %754 = load i64, i64* %PC
  %755 = call %struct.Memory* @ext_4005f0_free(%struct.State* %0, i64 %754, %struct.Memory* %729)
  %756 = load i64, i64* %RSP
  %757 = load i64, i64* %PC
  %758 = add i64 %757, 4
  store i64 %758, i64* %PC
  %759 = add i64 64, %756
  store i64 %759, i64* %RSP, align 8, !tbaa !2428
  %760 = icmp ult i64 %759, %756
  %761 = icmp ult i64 %759, 64
  %762 = or i1 %760, %761
  %763 = zext i1 %762 to i8
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %763, i8* %764, align 1, !tbaa !2432
  %765 = trunc i64 %759 to i32
  %766 = and i32 %765, 255
  %767 = call i32 @llvm.ctpop.i32(i32 %766) #16
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  %770 = xor i8 %769, 1
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %770, i8* %771, align 1, !tbaa !2446
  %772 = xor i64 64, %756
  %773 = xor i64 %772, %759
  %774 = lshr i64 %773, 4
  %775 = trunc i64 %774 to i8
  %776 = and i8 %775, 1
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %776, i8* %777, align 1, !tbaa !2447
  %778 = icmp eq i64 %759, 0
  %779 = zext i1 %778 to i8
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %779, i8* %780, align 1, !tbaa !2448
  %781 = lshr i64 %759, 63
  %782 = trunc i64 %781 to i8
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %782, i8* %783, align 1, !tbaa !2449
  %784 = lshr i64 %756, 63
  %785 = xor i64 %781, %784
  %786 = add nuw nsw i64 %785, %781
  %787 = icmp eq i64 %786, 2
  %788 = zext i1 %787 to i8
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %788, i8* %789, align 1, !tbaa !2450
  %790 = load i64, i64* %PC
  %791 = add i64 %790, 1
  store i64 %791, i64* %PC
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %793 = load i64, i64* %792, align 8, !tbaa !2428
  %794 = add i64 %793, 8
  %795 = inttoptr i64 %793 to i64*
  %796 = load i64, i64* %795
  store i64 %796, i64* %RBP, align 8, !tbaa !2428
  store i64 %794, i64* %792, align 8, !tbaa !2428
  %797 = load i64, i64* %PC
  %798 = add i64 %797, 1
  store i64 %798, i64* %PC
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %801 = load i64, i64* %800, align 8, !tbaa !2428
  %802 = inttoptr i64 %801 to i64*
  %803 = load i64, i64* %802
  store i64 %803, i64* %799, align 8, !tbaa !2428
  %804 = add i64 %801, 8
  store i64 %804, i64* %800, align 8, !tbaa !2428
  ret %struct.Memory* %755

block_401061:                                     ; preds = %block_401055
  %805 = sub i64 %309, 24
  %806 = load i64, i64* %PC
  %807 = add i64 %806, 4
  store i64 %807, i64* %PC
  %808 = inttoptr i64 %805 to i64*
  %809 = load i64, i64* %808
  store i64 %809, i64* %RAX, align 8, !tbaa !2428
  %810 = load i64, i64* %RBP
  %811 = sub i64 %810, 28
  %812 = load i64, i64* %PC
  %813 = add i64 %812, 4
  store i64 %813, i64* %PC
  %814 = inttoptr i64 %811 to i32*
  %815 = load i32, i32* %814
  %816 = sext i32 %815 to i64
  store i64 %816, i64* %RCX, align 8, !tbaa !2428
  %817 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %818 = load i64, i64* %RAX
  %819 = load i64, i64* %RCX
  %820 = mul i64 %819, 8
  %821 = add i64 %820, %818
  %822 = load i64, i64* %PC
  %823 = add i64 %822, 5
  store i64 %823, i64* %PC
  %824 = inttoptr i64 %821 to double*
  %825 = load double, double* %824
  %826 = bitcast i8* %817 to double*
  store double %825, double* %826, align 1, !tbaa !2452
  %827 = getelementptr inbounds i8, i8* %817, i64 8
  %828 = bitcast i8* %827 to double*
  store double 0.000000e+00, double* %828, align 1, !tbaa !2452
  %829 = load i64, i64* %RBP
  %830 = sub i64 %829, 28
  %831 = load i64, i64* %PC
  %832 = add i64 %831, 3
  store i64 %832, i64* %PC
  %833 = inttoptr i64 %830 to i32*
  %834 = load i32, i32* %833
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RDX, align 8, !tbaa !2428
  %836 = load i64, i64* %RDX
  %837 = load i64, i64* %PC
  %838 = add i64 %837, 3
  store i64 %838, i64* %PC
  %839 = and i64 %836, 4294967295
  %840 = shl i64 %839, 3
  %841 = trunc i64 %840 to i32
  %842 = icmp slt i32 %841, 0
  %843 = shl i32 %841, 1
  %844 = zext i32 %843 to i64
  store i64 %844, i64* %RDX, align 8, !tbaa !2428
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %846 = zext i1 %842 to i8
  store i8 %846, i8* %845, align 1, !tbaa !2451
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %848 = and i32 %843, 254
  %849 = call i32 @llvm.ctpop.i32(i32 %848) #16
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  %852 = xor i8 %851, 1
  store i8 %852, i8* %847, align 1, !tbaa !2451
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %853, align 1, !tbaa !2451
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %855 = icmp eq i32 %843, 0
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %854, align 1, !tbaa !2451
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %858 = lshr i32 %843, 31
  %859 = trunc i32 %858 to i8
  store i8 %859, i8* %857, align 1, !tbaa !2451
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %860, align 1, !tbaa !2451
  %861 = load i64, i64* %RBP
  %862 = sub i64 %861, 40
  %863 = load i64, i64* %PC
  %864 = add i64 %863, 4
  store i64 %864, i64* %PC
  %865 = inttoptr i64 %862 to i64*
  %866 = load i64, i64* %865
  store i64 %866, i64* %RSI, align 8, !tbaa !2428
  %867 = load i32, i32* %EDX
  %868 = zext i32 %867 to i64
  %869 = load i64, i64* %PC
  %870 = add i64 %869, 2
  store i64 %870, i64* %PC
  %871 = and i64 %868, 4294967295
  store i64 %871, i64* %RDI, align 8, !tbaa !2428
  %872 = load i64, i64* %PC
  %873 = add i64 %872, 70
  %874 = load i64, i64* %PC
  %875 = add i64 %874, 5
  %876 = load i64, i64* %PC
  %877 = add i64 %876, 5
  store i64 %877, i64* %PC
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %879 = load i64, i64* %878, align 8, !tbaa !2428
  %880 = add i64 %879, -8
  %881 = inttoptr i64 %880 to i64*
  store i64 %875, i64* %881
  store i64 %880, i64* %878, align 8, !tbaa !2428
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %873, i64* %882, align 8, !tbaa !2428
  %883 = load i64, i64* %PC
  %884 = call %struct.Memory* @sub_4010c0_print_element(%struct.State* %0, i64 %883, %struct.Memory* %MEMORY.1)
  %885 = load i64, i64* %RBP
  %886 = sub i64 %885, 28
  %887 = load i64, i64* %PC
  %888 = add i64 %887, 3
  store i64 %888, i64* %PC
  %889 = inttoptr i64 %886 to i32*
  %890 = load i32, i32* %889
  %891 = zext i32 %890 to i64
  store i64 %891, i64* %RAX, align 8, !tbaa !2428
  %892 = load i64, i64* %RAX
  %893 = load i64, i64* %PC
  %894 = add i64 %893, 3
  store i64 %894, i64* %PC
  %895 = trunc i64 %892 to i32
  %896 = add i32 1, %895
  %897 = zext i32 %896 to i64
  store i64 %897, i64* %RAX, align 8, !tbaa !2428
  %898 = icmp ult i32 %896, %895
  %899 = icmp ult i32 %896, 1
  %900 = or i1 %898, %899
  %901 = zext i1 %900 to i8
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %901, i8* %902, align 1, !tbaa !2432
  %903 = and i32 %896, 255
  %904 = call i32 @llvm.ctpop.i32(i32 %903) #16
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  %907 = xor i8 %906, 1
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %907, i8* %908, align 1, !tbaa !2446
  %909 = xor i64 1, %892
  %910 = trunc i64 %909 to i32
  %911 = xor i32 %910, %896
  %912 = lshr i32 %911, 4
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %914, i8* %915, align 1, !tbaa !2447
  %916 = icmp eq i32 %896, 0
  %917 = zext i1 %916 to i8
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %917, i8* %918, align 1, !tbaa !2448
  %919 = lshr i32 %896, 31
  %920 = trunc i32 %919 to i8
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %920, i8* %921, align 1, !tbaa !2449
  %922 = lshr i32 %895, 31
  %923 = xor i32 %919, %922
  %924 = add nuw nsw i32 %923, %919
  %925 = icmp eq i32 %924, 2
  %926 = zext i1 %925 to i8
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %926, i8* %927, align 1, !tbaa !2450
  %928 = load i64, i64* %RBP
  %929 = sub i64 %928, 28
  %930 = load i32, i32* %EAX
  %931 = zext i32 %930 to i64
  %932 = load i64, i64* %PC
  %933 = add i64 %932, 3
  store i64 %933, i64* %PC
  %934 = inttoptr i64 %929 to i32*
  store i32 %930, i32* %934
  %935 = load i64, i64* %PC
  %936 = sub i64 %935, 51
  %937 = load i64, i64* %PC
  %938 = add i64 %937, 5
  store i64 %938, i64* %PC
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %936, i64* %939, align 8, !tbaa !2428
  br label %block_401055
}

; Function Attrs: noinline
define %struct.Memory* @sub_4012e0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4012e0:
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
define %struct.Memory* @sub_400750_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400750:
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
  %35 = tail call %struct.Memory* @sub_4006e0_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_4008c0_xmalloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4008c0:
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
  %50 = sub i64 %47, 32
  store i64 %50, i64* %RSP, align 8, !tbaa !2428
  %51 = icmp ult i64 %47, 32
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
  %61 = xor i64 32, %47
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
  %80 = sub i64 %79, 16
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 4
  store i64 %82, i64* %PC
  store i64 %80, i64* %RAX, align 8, !tbaa !2428
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 5
  store i64 %84, i64* %PC
  store i64 32, i64* %RCX, align 8, !tbaa !2428
  %85 = load i32, i32* %ECX
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 2
  store i64 %88, i64* %PC
  %89 = and i64 %86, 4294967295
  store i64 %89, i64* %RSI, align 8, !tbaa !2428
  %90 = load i64, i64* %RBP
  %91 = sub i64 %90, 8
  %92 = load i64, i64* %RDI
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC
  %95 = inttoptr i64 %91 to i64*
  store i64 %92, i64* %95
  %96 = load i64, i64* %RBP
  %97 = sub i64 %96, 16
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 8
  store i64 %99, i64* %PC
  %100 = inttoptr i64 %97 to i64*
  store i64 0, i64* %100
  %101 = load i64, i64* %RBP
  %102 = sub i64 %101, 8
  %103 = load i64, i64* %PC
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC
  %105 = inttoptr i64 %102 to i64*
  %106 = load i64, i64* %105
  store i64 %106, i64* %RDX, align 8, !tbaa !2428
  %107 = load i64, i64* %RAX
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 3
  store i64 %109, i64* %PC
  store i64 %107, i64* %RDI, align 8, !tbaa !2428
  %110 = load i64, i64* %PC
  %111 = sub i64 %110, 646
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 5
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 5
  store i64 %115, i64* %PC
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %117 = load i64, i64* %116, align 8, !tbaa !2428
  %118 = add i64 %117, -8
  %119 = inttoptr i64 %118 to i64*
  store i64 %113, i64* %119
  store i64 %118, i64* %116, align 8, !tbaa !2428
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %111, i64* %120, align 8, !tbaa !2428
  %121 = load i64, i64* %PC
  %122 = call %struct.Memory* @ext_400660_posix_memalign(%struct.State* %0, i64 %121, %struct.Memory* %2)
  %123 = load i64, i64* %RBP
  %124 = sub i64 %123, 20
  %125 = load i32, i32* %EAX
  %126 = zext i32 %125 to i64
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 3
  store i64 %128, i64* %PC
  %129 = inttoptr i64 %124 to i32*
  store i32 %125, i32* %129
  %130 = load i64, i64* %RBP
  %131 = sub i64 %130, 16
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 5
  store i64 %133, i64* %PC
  %134 = inttoptr i64 %131 to i64*
  %135 = load i64, i64* %134
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %136, align 1, !tbaa !2432
  %137 = trunc i64 %135 to i32
  %138 = and i32 %137, 255
  %139 = call i32 @llvm.ctpop.i32(i32 %138) #16
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %142, i8* %143, align 1, !tbaa !2446
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %144, align 1, !tbaa !2447
  %145 = icmp eq i64 %135, 0
  %146 = zext i1 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %146, i8* %147, align 1, !tbaa !2448
  %148 = lshr i64 %135, 63
  %149 = trunc i64 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %149, i8* %150, align 1, !tbaa !2449
  %151 = lshr i64 %135, 63
  %152 = xor i64 %148, %151
  %153 = add nuw nsw i64 %152, %151
  %154 = icmp eq i64 %153, 2
  %155 = zext i1 %154 to i8
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %155, i8* %156, align 1, !tbaa !2450
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 16
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 6
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 6
  store i64 %162, i64* %PC
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %164 = load i8, i8* %163, align 1, !tbaa !2448
  store i8 %164, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %166 = icmp ne i8 %164, 0
  %167 = select i1 %166, i64 %158, i64 %160
  store i64 %167, i64* %165, align 8, !tbaa !2428
  %168 = load i8, i8* %BRANCH_TAKEN
  %169 = icmp eq i8 %168, 1
  br i1 %169, label %block_400903, label %block_4008f9

block_400903:                                     ; preds = %block_4008f9, %block_4008c0
  %MEMORY.0 = phi %struct.Memory* [ %122, %block_4008c0 ], [ %122, %block_4008f9 ]
  %170 = load i64, i64* %PC
  %171 = add i64 %170, 10
  store i64 %171, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4012f0__rodata_type* @seg_4012f0__rodata to i64), i64 55), i64* %RSI, align 8, !tbaa !2428
  %172 = load i64, i64* %PC
  %173 = add i64 %172, 8
  store i64 %173, i64* %PC
  %174 = load i64, i64* @stderr
  store i64 %174, i64* %RDI, align 8, !tbaa !2428
  %175 = load i64, i64* %PC
  %176 = add i64 %175, 2
  store i64 %176, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %177 = load i64, i64* %PC
  %178 = sub i64 %177, 743
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 5
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 5
  store i64 %182, i64* %PC
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %184 = load i64, i64* %183, align 8, !tbaa !2428
  %185 = add i64 %184, -8
  %186 = inttoptr i64 %185 to i64*
  store i64 %180, i64* %186
  store i64 %185, i64* %183, align 8, !tbaa !2428
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %178, i64* %187, align 8, !tbaa !2428
  %188 = load i64, i64* %PC
  %189 = call %struct.Memory* @ext_6020e8_fprintf(%struct.State* %0, i64 %188, %struct.Memory* %MEMORY.0)
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 5
  store i64 %191, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %192 = load i64, i64* %RBP
  %193 = sub i64 %192, 24
  %194 = load i32, i32* %EAX
  %195 = zext i32 %194 to i64
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 3
  store i64 %197, i64* %PC
  %198 = inttoptr i64 %193 to i32*
  store i32 %194, i32* %198
  %199 = load i64, i64* %PC
  %200 = sub i64 %199, 724
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
  %211 = call %struct.Memory* @ext_6020f8_exit(%struct.State* %0, i64 %210, %struct.Memory* %189)
  %212 = load i64, i64* %PC
  %213 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %212, %struct.Memory* %211)
  ret %struct.Memory* %213

block_4008f9:                                     ; preds = %block_4008c0
  %214 = load i64, i64* %RBP
  %215 = sub i64 %214, 20
  %216 = load i64, i64* %PC
  %217 = add i64 %216, 4
  store i64 %217, i64* %PC
  %218 = inttoptr i64 %215 to i32*
  %219 = load i32, i32* %218
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %220, align 1, !tbaa !2432
  %221 = and i32 %219, 255
  %222 = call i32 @llvm.ctpop.i32(i32 %221) #16
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %225, i8* %226, align 1, !tbaa !2446
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %227, align 1, !tbaa !2447
  %228 = icmp eq i32 %219, 0
  %229 = zext i1 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %229, i8* %230, align 1, !tbaa !2448
  %231 = lshr i32 %219, 31
  %232 = trunc i32 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %232, i8* %233, align 1, !tbaa !2449
  %234 = lshr i32 %219, 31
  %235 = xor i32 %231, %234
  %236 = add nuw nsw i32 %235, %234
  %237 = icmp eq i32 %236, 2
  %238 = zext i1 %237 to i8
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %238, i8* %239, align 1, !tbaa !2450
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 44
  %242 = load i64, i64* %PC
  %243 = add i64 %242, 6
  %244 = load i64, i64* %PC
  %245 = add i64 %244, 6
  store i64 %245, i64* %PC
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %247 = load i8, i8* %246, align 1, !tbaa !2448
  store i8 %247, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %249 = icmp ne i8 %247, 0
  %250 = select i1 %249, i64 %241, i64 %243
  store i64 %250, i64* %248, align 8, !tbaa !2428
  %251 = load i8, i8* %BRANCH_TAKEN
  %252 = icmp eq i8 %251, 1
  br i1 %252, label %block_400929, label %block_400903

block_400929:                                     ; preds = %block_4008f9
  %253 = load i64, i64* %RBP
  %254 = sub i64 %253, 16
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 4
  store i64 %256, i64* %PC
  %257 = inttoptr i64 %254 to i64*
  %258 = load i64, i64* %257
  store i64 %258, i64* %RAX, align 8, !tbaa !2428
  %259 = load i64, i64* %RSP
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 4
  store i64 %261, i64* %PC
  %262 = add i64 32, %259
  store i64 %262, i64* %RSP, align 8, !tbaa !2428
  %263 = icmp ult i64 %262, %259
  %264 = icmp ult i64 %262, 32
  %265 = or i1 %263, %264
  %266 = zext i1 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %266, i8* %267, align 1, !tbaa !2432
  %268 = trunc i64 %262 to i32
  %269 = and i32 %268, 255
  %270 = call i32 @llvm.ctpop.i32(i32 %269) #16
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %273, i8* %274, align 1, !tbaa !2446
  %275 = xor i64 32, %259
  %276 = xor i64 %275, %262
  %277 = lshr i64 %276, 4
  %278 = trunc i64 %277 to i8
  %279 = and i8 %278, 1
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %279, i8* %280, align 1, !tbaa !2447
  %281 = icmp eq i64 %262, 0
  %282 = zext i1 %281 to i8
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %282, i8* %283, align 1, !tbaa !2448
  %284 = lshr i64 %262, 63
  %285 = trunc i64 %284 to i8
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %285, i8* %286, align 1, !tbaa !2449
  %287 = lshr i64 %259, 63
  %288 = xor i64 %284, %287
  %289 = add nuw nsw i64 %288, %284
  %290 = icmp eq i64 %289, 2
  %291 = zext i1 %290 to i8
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %291, i8* %292, align 1, !tbaa !2450
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 1
  store i64 %294, i64* %PC
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %296 = load i64, i64* %295, align 8, !tbaa !2428
  %297 = add i64 %296, 8
  %298 = inttoptr i64 %296 to i64*
  %299 = load i64, i64* %298
  store i64 %299, i64* %RBP, align 8, !tbaa !2428
  store i64 %297, i64* %295, align 8, !tbaa !2428
  %300 = load i64, i64* %PC
  %301 = add i64 %300, 1
  store i64 %301, i64* %PC
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %304 = load i64, i64* %303, align 8, !tbaa !2428
  %305 = inttoptr i64 %304 to i64*
  %306 = load i64, i64* %305
  store i64 %306, i64* %302, align 8, !tbaa !2428
  %307 = add i64 %304, 8
  store i64 %307, i64* %303, align 8, !tbaa !2428
  ret %struct.Memory* %122
}

; Function Attrs: noinline
define %struct.Memory* @sub_400670__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400670:
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
  store i64 ptrtoint (void ()* @callback_sub_4012e0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_401270___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
  %123 = call %struct.Memory* @ext_6020d8___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
define %struct.Memory* @sub_400840_polybench_timer_print(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400840:
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
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 13
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %RSP = bitcast %union.anon* %18 to i64*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 15
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %RBP = bitcast %union.anon* %21 to i64*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %23 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %22, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %23 to %"class.std::bitset"*
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
  %34 = load i64, i64* %RSP
  %35 = load i64, i64* %PC
  %36 = add i64 %35, 4
  store i64 %36, i64* %PC
  %37 = sub i64 %34, 16
  store i64 %37, i64* %RSP, align 8, !tbaa !2428
  %38 = icmp ult i64 %34, 16
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %39, i8* %40, align 1, !tbaa !2432
  %41 = trunc i64 %37 to i32
  %42 = and i32 %41, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42) #16
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %46, i8* %47, align 1, !tbaa !2446
  %48 = xor i64 16, %34
  %49 = xor i64 %48, %37
  %50 = lshr i64 %49, 4
  %51 = trunc i64 %50 to i8
  %52 = and i8 %51, 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %52, i8* %53, align 1, !tbaa !2447
  %54 = icmp eq i64 %37, 0
  %55 = zext i1 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %55, i8* %56, align 1, !tbaa !2448
  %57 = lshr i64 %37, 63
  %58 = trunc i64 %57 to i8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %58, i8* %59, align 1, !tbaa !2449
  %60 = lshr i64 %34, 63
  %61 = xor i64 %57, %60
  %62 = add nuw nsw i64 %61, %60
  %63 = icmp eq i64 %62, 2
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %64, i8* %65, align 1, !tbaa !2450
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 10
  store i64 %67, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4012f0__rodata_type* @seg_4012f0__rodata to i64), i64 48), i64* %RDI, align 8, !tbaa !2428
  %68 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 9
  store i64 %70, i64* %PC
  %71 = load double, double* bitcast (%polybench_t_end_type* @polybench_t_end to double*)
  %72 = bitcast i8* %68 to double*
  store double %71, double* %72, align 1, !tbaa !2452
  %73 = getelementptr inbounds i8, i8* %68, i64 8
  %74 = bitcast i8* %73 to double*
  store double 0.000000e+00, double* %74, align 1, !tbaa !2452
  %75 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %76 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 9
  store i64 %78, i64* %PC
  %79 = bitcast i8* %76 to double*
  %80 = load double, double* %79, align 1
  %81 = getelementptr inbounds i8, i8* %76, i64 8
  %82 = bitcast i8* %81 to i64*
  %83 = load i64, i64* %82, align 1
  %84 = load double, double* bitcast (%polybench_t_start_type* @polybench_t_start to double*)
  %85 = fsub double %80, %84
  %86 = bitcast i8* %75 to double*
  store double %85, double* %86, align 1, !tbaa !2452
  %87 = getelementptr inbounds i8, i8* %75, i64 8
  %88 = bitcast i8* %87 to i64*
  store i64 %83, i64* %88, align 1, !tbaa !2452
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 2
  store i64 %90, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %91 = load i64, i64* %PC
  %92 = sub i64 %91, 614
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 5
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 5
  store i64 %96, i64* %PC
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %98 = load i64, i64* %97, align 8, !tbaa !2428
  %99 = add i64 %98, -8
  %100 = inttoptr i64 %99 to i64*
  store i64 %94, i64* %100
  store i64 %99, i64* %97, align 8, !tbaa !2428
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %92, i64* %101, align 8, !tbaa !2428
  %102 = load i64, i64* %PC
  %103 = call %struct.Memory* @ext_6020c8_printf(%struct.State* %0, i64 %102, %struct.Memory* %2)
  %104 = load i64, i64* %RBP
  %105 = sub i64 %104, 4
  %106 = load i32, i32* %EAX
  %107 = zext i32 %106 to i64
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 3
  store i64 %109, i64* %PC
  %110 = inttoptr i64 %105 to i32*
  store i32 %106, i32* %110
  %111 = load i64, i64* %RSP
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 4
  store i64 %113, i64* %PC
  %114 = add i64 16, %111
  store i64 %114, i64* %RSP, align 8, !tbaa !2428
  %115 = icmp ult i64 %114, %111
  %116 = icmp ult i64 %114, 16
  %117 = or i1 %115, %116
  %118 = zext i1 %117 to i8
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %118, i8* %119, align 1, !tbaa !2432
  %120 = trunc i64 %114 to i32
  %121 = and i32 %120, 255
  %122 = call i32 @llvm.ctpop.i32(i32 %121) #16
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %125, i8* %126, align 1, !tbaa !2446
  %127 = xor i64 16, %111
  %128 = xor i64 %127, %114
  %129 = lshr i64 %128, 4
  %130 = trunc i64 %129 to i8
  %131 = and i8 %130, 1
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %131, i8* %132, align 1, !tbaa !2447
  %133 = icmp eq i64 %114, 0
  %134 = zext i1 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %134, i8* %135, align 1, !tbaa !2448
  %136 = lshr i64 %114, 63
  %137 = trunc i64 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %137, i8* %138, align 1, !tbaa !2449
  %139 = lshr i64 %111, 63
  %140 = xor i64 %136, %139
  %141 = add nuw nsw i64 %140, %136
  %142 = icmp eq i64 %141, 2
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %143, i8* %144, align 1, !tbaa !2450
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 1
  store i64 %146, i64* %PC
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %148 = load i64, i64* %147, align 8, !tbaa !2428
  %149 = add i64 %148, 8
  %150 = inttoptr i64 %148 to i64*
  %151 = load i64, i64* %150
  store i64 %151, i64* %RBP, align 8, !tbaa !2428
  store i64 %149, i64* %147, align 8, !tbaa !2428
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 1
  store i64 %153, i64* %PC
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %156 = load i64, i64* %155, align 8, !tbaa !2428
  %157 = inttoptr i64 %156 to i64*
  %158 = load i64, i64* %157
  store i64 %158, i64* %154, align 8, !tbaa !2428
  %159 = add i64 %156, 8
  store i64 %159, i64* %155, align 8, !tbaa !2428
  ret %struct.Memory* %103
}

; Function Attrs: noinline
define %struct.Memory* @sub_400760_polybench_flush_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400760:
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %28 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %27, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %28 to %"class.std::bitset"*
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %30 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %29, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %30 to %union.vec128_t*
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
  store i64 8, i64* %RAX, align 8, !tbaa !2428
  %75 = load i32, i32* %EAX
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 2
  store i64 %78, i64* %PC
  %79 = and i64 %76, 4294967295
  store i64 %79, i64* %RSI, align 8, !tbaa !2428
  %80 = load i64, i64* %RBP
  %81 = sub i64 %80, 4
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 7
  store i64 %83, i64* %PC
  %84 = inttoptr i64 %81 to i32*
  store i32 4194560, i32* %84
  %85 = load i64, i64* %RBP
  %86 = sub i64 %85, 4
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC
  %89 = inttoptr i64 %86 to i32*
  %90 = load i32, i32* %89
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %RDI, align 8, !tbaa !2428
  %92 = load i64, i64* %PC
  %93 = sub i64 %92, 346
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 5
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 5
  store i64 %97, i64* %PC
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %99 = load i64, i64* %98, align 8, !tbaa !2428
  %100 = add i64 %99, -8
  %101 = inttoptr i64 %100 to i64*
  store i64 %95, i64* %101
  store i64 %100, i64* %98, align 8, !tbaa !2428
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %93, i64* %102, align 8, !tbaa !2428
  %103 = load i64, i64* %PC
  %104 = call %struct.Memory* @ext_6020e0_calloc(%struct.State* %0, i64 %103, %struct.Memory* %2)
  %105 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %106 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %107 = bitcast %union.vec128_t* %XMM0 to i8*
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 3
  store i64 %109, i64* %PC
  %110 = bitcast i8* %106 to i64*
  %111 = load i64, i64* %110, align 1
  %112 = getelementptr inbounds i8, i8* %106, i64 8
  %113 = bitcast i8* %112 to i64*
  %114 = load i64, i64* %113, align 1
  %115 = bitcast i8* %107 to i64*
  %116 = load i64, i64* %115, align 1
  %117 = getelementptr inbounds i8, i8* %107, i64 8
  %118 = bitcast i8* %117 to i64*
  %119 = load i64, i64* %118, align 1
  %120 = xor i64 %116, %111
  %121 = xor i64 %119, %114
  %122 = trunc i64 %120 to i32
  %123 = lshr i64 %120, 32
  %124 = trunc i64 %123 to i32
  %125 = bitcast i8* %105 to i32*
  store i32 %122, i32* %125, align 1, !tbaa !2454
  %126 = getelementptr inbounds i8, i8* %105, i64 4
  %127 = bitcast i8* %126 to i32*
  store i32 %124, i32* %127, align 1, !tbaa !2454
  %128 = trunc i64 %121 to i32
  %129 = getelementptr inbounds i8, i8* %105, i64 8
  %130 = bitcast i8* %129 to i32*
  store i32 %128, i32* %130, align 1, !tbaa !2454
  %131 = lshr i64 %121, 32
  %132 = trunc i64 %131 to i32
  %133 = getelementptr inbounds i8, i8* %105, i64 12
  %134 = bitcast i8* %133 to i32*
  store i32 %132, i32* %134, align 1, !tbaa !2454
  %135 = load i64, i64* %RBP
  %136 = sub i64 %135, 16
  %137 = load i64, i64* %RAX
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 4
  store i64 %139, i64* %PC
  %140 = inttoptr i64 %136 to i64*
  store i64 %137, i64* %140
  %141 = load i64, i64* %RBP
  %142 = sub i64 %141, 32
  %143 = bitcast %union.vec128_t* %XMM0 to i8*
  %144 = load i64, i64* %PC
  %145 = add i64 %144, 5
  store i64 %145, i64* %PC
  %146 = bitcast i8* %143 to double*
  %147 = load double, double* %146, align 1
  %148 = inttoptr i64 %142 to double*
  store double %147, double* %148
  %149 = load i64, i64* %RBP
  %150 = sub i64 %149, 20
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 7
  store i64 %152, i64* %PC
  %153 = inttoptr i64 %150 to i32*
  store i32 0, i32* %153
  br label %block_400792

block_40079e:                                     ; preds = %block_400792
  %154 = load i64, i64* %RBP
  %155 = sub i64 %154, 20
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 4
  store i64 %157, i64* %PC
  %158 = inttoptr i64 %155 to i32*
  %159 = load i32, i32* %158
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %RCX, align 8, !tbaa !2428
  %161 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %162 = load i64, i64* %RAX
  %163 = load i64, i64* %RCX
  %164 = mul i64 %163, 8
  %165 = add i64 %164, %162
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 5
  store i64 %167, i64* %PC
  %168 = inttoptr i64 %165 to double*
  %169 = load double, double* %168
  %170 = bitcast i8* %161 to double*
  store double %169, double* %170, align 1, !tbaa !2452
  %171 = getelementptr inbounds i8, i8* %161, i64 8
  %172 = bitcast i8* %171 to double*
  store double 0.000000e+00, double* %172, align 1, !tbaa !2452
  %173 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %174 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %175 = load i64, i64* %RBP
  %176 = sub i64 %175, 32
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 5
  store i64 %178, i64* %PC
  %179 = bitcast i8* %174 to double*
  %180 = load double, double* %179, align 1
  %181 = getelementptr inbounds i8, i8* %174, i64 8
  %182 = bitcast i8* %181 to i64*
  %183 = load i64, i64* %182, align 1
  %184 = inttoptr i64 %176 to double*
  %185 = load double, double* %184
  %186 = fadd double %180, %185
  %187 = bitcast i8* %173 to double*
  store double %186, double* %187, align 1, !tbaa !2452
  %188 = getelementptr inbounds i8, i8* %173, i64 8
  %189 = bitcast i8* %188 to i64*
  store i64 %183, i64* %189, align 1, !tbaa !2452
  %190 = load i64, i64* %RBP
  %191 = sub i64 %190, 32
  %192 = bitcast %union.vec128_t* %XMM0 to i8*
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 5
  store i64 %194, i64* %PC
  %195 = bitcast i8* %192 to double*
  %196 = load double, double* %195, align 1
  %197 = inttoptr i64 %191 to double*
  store double %196, double* %197
  %198 = load i64, i64* %RBP
  %199 = sub i64 %198, 20
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 3
  store i64 %201, i64* %PC
  %202 = inttoptr i64 %199 to i32*
  %203 = load i32, i32* %202
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %RAX, align 8, !tbaa !2428
  %205 = load i64, i64* %RAX
  %206 = load i64, i64* %PC
  %207 = add i64 %206, 3
  store i64 %207, i64* %PC
  %208 = trunc i64 %205 to i32
  %209 = add i32 1, %208
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RAX, align 8, !tbaa !2428
  %211 = icmp ult i32 %209, %208
  %212 = icmp ult i32 %209, 1
  %213 = or i1 %211, %212
  %214 = zext i1 %213 to i8
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %214, i8* %215, align 1, !tbaa !2432
  %216 = and i32 %209, 255
  %217 = call i32 @llvm.ctpop.i32(i32 %216) #16
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %220, i8* %221, align 1, !tbaa !2446
  %222 = xor i64 1, %205
  %223 = trunc i64 %222 to i32
  %224 = xor i32 %223, %209
  %225 = lshr i32 %224, 4
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %227, i8* %228, align 1, !tbaa !2447
  %229 = icmp eq i32 %209, 0
  %230 = zext i1 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %230, i8* %231, align 1, !tbaa !2448
  %232 = lshr i32 %209, 31
  %233 = trunc i32 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %233, i8* %234, align 1, !tbaa !2449
  %235 = lshr i32 %208, 31
  %236 = xor i32 %232, %235
  %237 = add nuw nsw i32 %236, %232
  %238 = icmp eq i32 %237, 2
  %239 = zext i1 %238 to i8
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %239, i8* %240, align 1, !tbaa !2450
  %241 = load i64, i64* %RBP
  %242 = sub i64 %241, 20
  %243 = load i32, i32* %EAX
  %244 = zext i32 %243 to i64
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 3
  store i64 %246, i64* %PC
  %247 = inttoptr i64 %242 to i32*
  store i32 %243, i32* %247
  %248 = load i64, i64* %PC
  %249 = sub i64 %248, 44
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 5
  store i64 %251, i64* %PC
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %249, i64* %252, align 8, !tbaa !2428
  br label %block_400792

block_4007c3:                                     ; preds = %block_400792
  %253 = load i64, i64* %RAX
  %254 = load i64, i64* %PC
  %255 = add i64 %254, 3
  store i64 %255, i64* %PC
  store i64 %253, i64* %RDI, align 8, !tbaa !2428
  %256 = load i64, i64* %PC
  %257 = sub i64 %256, 474
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 5
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 5
  store i64 %261, i64* %PC
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %263 = load i64, i64* %262, align 8, !tbaa !2428
  %264 = add i64 %263, -8
  %265 = inttoptr i64 %264 to i64*
  store i64 %259, i64* %265
  store i64 %264, i64* %262, align 8, !tbaa !2428
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %257, i64* %266, align 8, !tbaa !2428
  %267 = load i64, i64* %PC
  %268 = call %struct.Memory* @ext_4005f0_free(%struct.State* %0, i64 %267, %struct.Memory* %MEMORY.0)
  %269 = load i64, i64* %RSP
  %270 = load i64, i64* %PC
  %271 = add i64 %270, 4
  store i64 %271, i64* %PC
  %272 = add i64 32, %269
  store i64 %272, i64* %RSP, align 8, !tbaa !2428
  %273 = icmp ult i64 %272, %269
  %274 = icmp ult i64 %272, 32
  %275 = or i1 %273, %274
  %276 = zext i1 %275 to i8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %276, i8* %277, align 1, !tbaa !2432
  %278 = trunc i64 %272 to i32
  %279 = and i32 %278, 255
  %280 = call i32 @llvm.ctpop.i32(i32 %279) #16
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %283, i8* %284, align 1, !tbaa !2446
  %285 = xor i64 32, %269
  %286 = xor i64 %285, %272
  %287 = lshr i64 %286, 4
  %288 = trunc i64 %287 to i8
  %289 = and i8 %288, 1
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %289, i8* %290, align 1, !tbaa !2447
  %291 = icmp eq i64 %272, 0
  %292 = zext i1 %291 to i8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %292, i8* %293, align 1, !tbaa !2448
  %294 = lshr i64 %272, 63
  %295 = trunc i64 %294 to i8
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %295, i8* %296, align 1, !tbaa !2449
  %297 = lshr i64 %269, 63
  %298 = xor i64 %294, %297
  %299 = add nuw nsw i64 %298, %294
  %300 = icmp eq i64 %299, 2
  %301 = zext i1 %300 to i8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %301, i8* %302, align 1, !tbaa !2450
  %303 = load i64, i64* %PC
  %304 = add i64 %303, 1
  store i64 %304, i64* %PC
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %306 = load i64, i64* %305, align 8, !tbaa !2428
  %307 = add i64 %306, 8
  %308 = inttoptr i64 %306 to i64*
  %309 = load i64, i64* %308
  store i64 %309, i64* %RBP, align 8, !tbaa !2428
  store i64 %307, i64* %305, align 8, !tbaa !2428
  %310 = load i64, i64* %PC
  %311 = add i64 %310, 1
  store i64 %311, i64* %PC
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %314 = load i64, i64* %313, align 8, !tbaa !2428
  %315 = inttoptr i64 %314 to i64*
  %316 = load i64, i64* %315
  store i64 %316, i64* %312, align 8, !tbaa !2428
  %317 = add i64 %314, 8
  store i64 %317, i64* %313, align 8, !tbaa !2428
  ret %struct.Memory* %268

block_400792:                                     ; preds = %block_40079e, %block_400760
  %MEMORY.0 = phi %struct.Memory* [ %104, %block_400760 ], [ %MEMORY.0, %block_40079e ]
  %318 = load i64, i64* %RBP
  %319 = sub i64 %318, 20
  %320 = load i64, i64* %PC
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC
  %322 = inttoptr i64 %319 to i32*
  %323 = load i32, i32* %322
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RAX, align 8, !tbaa !2428
  %325 = load i32, i32* %EAX
  %326 = zext i32 %325 to i64
  %327 = load i64, i64* %RBP
  %328 = sub i64 %327, 4
  %329 = load i64, i64* %PC
  %330 = add i64 %329, 3
  store i64 %330, i64* %PC
  %331 = inttoptr i64 %328 to i32*
  %332 = load i32, i32* %331
  %333 = sub i32 %325, %332
  %334 = icmp ult i32 %325, %332
  %335 = zext i1 %334 to i8
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %335, i8* %336, align 1, !tbaa !2432
  %337 = and i32 %333, 255
  %338 = call i32 @llvm.ctpop.i32(i32 %337) #16
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %341, i8* %342, align 1, !tbaa !2446
  %343 = xor i32 %332, %325
  %344 = xor i32 %343, %333
  %345 = lshr i32 %344, 4
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %347, i8* %348, align 1, !tbaa !2447
  %349 = icmp eq i32 %333, 0
  %350 = zext i1 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %350, i8* %351, align 1, !tbaa !2448
  %352 = lshr i32 %333, 31
  %353 = trunc i32 %352 to i8
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %353, i8* %354, align 1, !tbaa !2449
  %355 = lshr i32 %325, 31
  %356 = lshr i32 %332, 31
  %357 = xor i32 %356, %355
  %358 = xor i32 %352, %355
  %359 = add nuw nsw i32 %358, %357
  %360 = icmp eq i32 %359, 2
  %361 = zext i1 %360 to i8
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %361, i8* %362, align 1, !tbaa !2450
  %363 = load i64, i64* %PC
  %364 = add i64 %363, 43
  %365 = load i64, i64* %PC
  %366 = add i64 %365, 6
  %367 = load i64, i64* %PC
  %368 = add i64 %367, 6
  store i64 %368, i64* %PC
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %370 = load i8, i8* %369, align 1, !tbaa !2449
  %371 = icmp ne i8 %370, 0
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %373 = load i8, i8* %372, align 1, !tbaa !2450
  %374 = icmp ne i8 %373, 0
  %375 = xor i1 %371, %374
  %376 = xor i1 %375, true
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %379 = select i1 %375, i64 %366, i64 %364
  store i64 %379, i64* %378, align 8, !tbaa !2428
  %380 = load i8, i8* %BRANCH_TAKEN
  %381 = icmp eq i8 %380, 1
  %382 = load i64, i64* %RBP
  %383 = sub i64 %382, 16
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 4
  store i64 %385, i64* %PC
  %386 = inttoptr i64 %383 to i64*
  %387 = load i64, i64* %386
  store i64 %387, i64* %RAX, align 8, !tbaa !2428
  br i1 %381, label %block_4007c3, label %block_40079e
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ea0_check_FP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ea0:
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
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %38 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %37, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %38 to %"class.std::bitset"*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %40 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %40 to %"class.std::bitset"*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %42 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %41, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %42 to %"class.std::bitset"*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %44 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %43, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %44 to %union.vec128_t*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %46 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %45, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %46 to %union.vec128_t*
  %47 = load i64, i64* %RBP
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 1
  store i64 %49, i64* %PC
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %51 = load i64, i64* %50, align 8, !tbaa !2428
  %52 = add i64 %51, -8
  %53 = inttoptr i64 %52 to i64*
  store i64 %47, i64* %53
  store i64 %52, i64* %50, align 8, !tbaa !2428
  %54 = load i64, i64* %RSP
  %55 = load i64, i64* %PC
  %56 = add i64 %55, 3
  store i64 %56, i64* %PC
  store i64 %54, i64* %RBP, align 8, !tbaa !2428
  %57 = load i64, i64* %RSP
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 4
  store i64 %59, i64* %PC
  %60 = sub i64 %57, 80
  store i64 %60, i64* %RSP, align 8, !tbaa !2428
  %61 = icmp ult i64 %57, 80
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %62, i8* %63, align 1, !tbaa !2432
  %64 = trunc i64 %60 to i32
  %65 = and i32 %64, 255
  %66 = call i32 @llvm.ctpop.i32(i32 %65) #16
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %69, i8* %70, align 1, !tbaa !2446
  %71 = xor i64 80, %57
  %72 = xor i64 %71, %60
  %73 = lshr i64 %72, 4
  %74 = trunc i64 %73 to i8
  %75 = and i8 %74, 1
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %75, i8* %76, align 1, !tbaa !2447
  %77 = icmp eq i64 %60, 0
  %78 = zext i1 %77 to i8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %78, i8* %79, align 1, !tbaa !2448
  %80 = lshr i64 %60, 63
  %81 = trunc i64 %80 to i8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %81, i8* %82, align 1, !tbaa !2449
  %83 = lshr i64 %57, 63
  %84 = xor i64 %80, %83
  %85 = add nuw nsw i64 %84, %83
  %86 = icmp eq i64 %85, 2
  %87 = zext i1 %86 to i8
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %87, i8* %88, align 1, !tbaa !2450
  %89 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 8
  store i64 %91, i64* %PC
  %92 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4012f0__rodata_type* @seg_4012f0__rodata to i64), i64 16) to double*)
  %93 = bitcast i8* %89 to double*
  store double %92, double* %93, align 1, !tbaa !2452
  %94 = getelementptr inbounds i8, i8* %89, i64 8
  %95 = bitcast i8* %94 to double*
  store double 0.000000e+00, double* %95, align 1, !tbaa !2452
  %96 = load i64, i64* %RBP
  %97 = sub i64 %96, 8
  %98 = load i32, i32* %EDI
  %99 = zext i32 %98 to i64
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 3
  store i64 %101, i64* %PC
  %102 = inttoptr i64 %97 to i32*
  store i32 %98, i32* %102
  %103 = load i64, i64* %RBP
  %104 = sub i64 %103, 16
  %105 = load i64, i64* %RSI
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %104 to i64*
  store i64 %105, i64* %108
  %109 = load i64, i64* %RBP
  %110 = sub i64 %109, 24
  %111 = load i64, i64* %RDX
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 4
  store i64 %113, i64* %PC
  %114 = inttoptr i64 %110 to i64*
  store i64 %111, i64* %114
  %115 = load i64, i64* %RBP
  %116 = sub i64 %115, 40
  %117 = bitcast %union.vec128_t* %XMM0 to i8*
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 5
  store i64 %119, i64* %PC
  %120 = bitcast i8* %117 to double*
  %121 = load double, double* %120, align 1
  %122 = inttoptr i64 %116 to double*
  store double %121, double* %122
  %123 = load i64, i64* %RBP
  %124 = sub i64 %123, 28
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 7
  store i64 %126, i64* %PC
  %127 = inttoptr i64 %124 to i32*
  store i32 0, i32* %127
  br label %block_400ec7

block_400f5e:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %128 = add i64 %454, 5
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 5
  store i64 %130, i64* %PC
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %128, i64* %131, align 8, !tbaa !2428
  %132 = load i64, i64* %RBP
  %133 = sub i64 %132, 28
  %134 = load i64, i64* %PC
  %135 = add i64 %134, 3
  store i64 %135, i64* %PC
  %136 = inttoptr i64 %133 to i32*
  %137 = load i32, i32* %136
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
  %175 = load i64, i64* %RBP
  %176 = sub i64 %175, 28
  %177 = load i32, i32* %EAX
  %178 = zext i32 %177 to i64
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 3
  store i64 %180, i64* %PC
  %181 = inttoptr i64 %176 to i32*
  store i32 %177, i32* %181
  %182 = load i64, i64* %PC
  %183 = sub i64 %182, 165
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 5
  store i64 %185, i64* %PC
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %183, i64* %186, align 8, !tbaa !2428
  br label %block_400ec7

block_400f78:                                     ; preds = %block_400f71, %block_400f21
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_400f71 ], [ %582, %block_400f21 ]
  %187 = load i64, i64* %RBP
  %188 = sub i64 %187, 4
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 3
  store i64 %190, i64* %PC
  %191 = inttoptr i64 %188 to i32*
  %192 = load i32, i32* %191
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RAX, align 8, !tbaa !2428
  %194 = load i64, i64* %RSP
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 4
  store i64 %196, i64* %PC
  %197 = add i64 80, %194
  store i64 %197, i64* %RSP, align 8, !tbaa !2428
  %198 = icmp ult i64 %197, %194
  %199 = icmp ult i64 %197, 80
  %200 = or i1 %198, %199
  %201 = zext i1 %200 to i8
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %201, i8* %202, align 1, !tbaa !2432
  %203 = trunc i64 %197 to i32
  %204 = and i32 %203, 255
  %205 = call i32 @llvm.ctpop.i32(i32 %204) #16
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  %208 = xor i8 %207, 1
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %208, i8* %209, align 1, !tbaa !2446
  %210 = xor i64 80, %194
  %211 = xor i64 %210, %197
  %212 = lshr i64 %211, 4
  %213 = trunc i64 %212 to i8
  %214 = and i8 %213, 1
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %214, i8* %215, align 1, !tbaa !2447
  %216 = icmp eq i64 %197, 0
  %217 = zext i1 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %217, i8* %218, align 1, !tbaa !2448
  %219 = lshr i64 %197, 63
  %220 = trunc i64 %219 to i8
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %220, i8* %221, align 1, !tbaa !2449
  %222 = lshr i64 %194, 63
  %223 = xor i64 %219, %222
  %224 = add nuw nsw i64 %223, %219
  %225 = icmp eq i64 %224, 2
  %226 = zext i1 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %226, i8* %227, align 1, !tbaa !2450
  %228 = load i64, i64* %PC
  %229 = add i64 %228, 1
  store i64 %229, i64* %PC
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %231 = load i64, i64* %230, align 8, !tbaa !2428
  %232 = add i64 %231, 8
  %233 = inttoptr i64 %231 to i64*
  %234 = load i64, i64* %233
  store i64 %234, i64* %RBP, align 8, !tbaa !2428
  store i64 %232, i64* %230, align 8, !tbaa !2428
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 1
  store i64 %236, i64* %PC
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %239 = load i64, i64* %238, align 8, !tbaa !2428
  %240 = inttoptr i64 %239 to i64*
  %241 = load i64, i64* %240
  store i64 %241, i64* %237, align 8, !tbaa !2428
  %242 = add i64 %239, 8
  store i64 %242, i64* %238, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400ed3:                                     ; preds = %block_400ec7
  %243 = sub i64 %519, 16
  %244 = load i64, i64* %PC
  %245 = add i64 %244, 4
  store i64 %245, i64* %PC
  %246 = inttoptr i64 %243 to i64*
  %247 = load i64, i64* %246
  store i64 %247, i64* %RAX, align 8, !tbaa !2428
  %248 = load i64, i64* %RBP
  %249 = sub i64 %248, 28
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 4
  store i64 %251, i64* %PC
  %252 = inttoptr i64 %249 to i32*
  %253 = load i32, i32* %252
  %254 = sext i32 %253 to i64
  store i64 %254, i64* %RCX, align 8, !tbaa !2428
  %255 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %256 = load i64, i64* %RAX
  %257 = load i64, i64* %RCX
  %258 = mul i64 %257, 8
  %259 = add i64 %258, %256
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 5
  store i64 %261, i64* %PC
  %262 = inttoptr i64 %259 to double*
  %263 = load double, double* %262
  %264 = bitcast i8* %255 to double*
  store double %263, double* %264, align 1, !tbaa !2452
  %265 = getelementptr inbounds i8, i8* %255, i64 8
  %266 = bitcast i8* %265 to double*
  store double 0.000000e+00, double* %266, align 1, !tbaa !2452
  %267 = load i64, i64* %RBP
  %268 = sub i64 %267, 48
  %269 = bitcast %union.vec128_t* %XMM0 to i8*
  %270 = load i64, i64* %PC
  %271 = add i64 %270, 5
  store i64 %271, i64* %PC
  %272 = bitcast i8* %269 to double*
  %273 = load double, double* %272, align 1
  %274 = inttoptr i64 %268 to double*
  store double %273, double* %274
  %275 = load i64, i64* %RBP
  %276 = sub i64 %275, 24
  %277 = load i64, i64* %PC
  %278 = add i64 %277, 4
  store i64 %278, i64* %PC
  %279 = inttoptr i64 %276 to i64*
  %280 = load i64, i64* %279
  store i64 %280, i64* %RAX, align 8, !tbaa !2428
  %281 = load i64, i64* %RBP
  %282 = sub i64 %281, 28
  %283 = load i64, i64* %PC
  %284 = add i64 %283, 4
  store i64 %284, i64* %PC
  %285 = inttoptr i64 %282 to i32*
  %286 = load i32, i32* %285
  %287 = sext i32 %286 to i64
  store i64 %287, i64* %RCX, align 8, !tbaa !2428
  %288 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %289 = load i64, i64* %RAX
  %290 = load i64, i64* %RCX
  %291 = mul i64 %290, 8
  %292 = add i64 %291, %289
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 5
  store i64 %294, i64* %PC
  %295 = inttoptr i64 %292 to double*
  %296 = load double, double* %295
  %297 = bitcast i8* %288 to double*
  store double %296, double* %297, align 1, !tbaa !2452
  %298 = getelementptr inbounds i8, i8* %288, i64 8
  %299 = bitcast i8* %298 to double*
  store double 0.000000e+00, double* %299, align 1, !tbaa !2452
  %300 = load i64, i64* %RBP
  %301 = sub i64 %300, 56
  %302 = bitcast %union.vec128_t* %XMM0 to i8*
  %303 = load i64, i64* %PC
  %304 = add i64 %303, 5
  store i64 %304, i64* %PC
  %305 = bitcast i8* %302 to double*
  %306 = load double, double* %305, align 1
  %307 = inttoptr i64 %301 to double*
  store double %306, double* %307
  %308 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %309 = load i64, i64* %RBP
  %310 = sub i64 %309, 48
  %311 = load i64, i64* %PC
  %312 = add i64 %311, 5
  store i64 %312, i64* %PC
  %313 = inttoptr i64 %310 to double*
  %314 = load double, double* %313
  %315 = bitcast i8* %308 to double*
  store double %314, double* %315, align 1, !tbaa !2452
  %316 = getelementptr inbounds i8, i8* %308, i64 8
  %317 = bitcast i8* %316 to double*
  store double 0.000000e+00, double* %317, align 1, !tbaa !2452
  %318 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %319 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %320 = load i64, i64* %RBP
  %321 = sub i64 %320, 56
  %322 = load i64, i64* %PC
  %323 = add i64 %322, 5
  store i64 %323, i64* %PC
  %324 = bitcast i8* %319 to double*
  %325 = load double, double* %324, align 1
  %326 = getelementptr inbounds i8, i8* %319, i64 8
  %327 = bitcast i8* %326 to i64*
  %328 = load i64, i64* %327, align 1
  %329 = inttoptr i64 %321 to double*
  %330 = load double, double* %329
  %331 = fsub double %325, %330
  %332 = bitcast i8* %318 to double*
  store double %331, double* %332, align 1, !tbaa !2452
  %333 = getelementptr inbounds i8, i8* %318, i64 8
  %334 = bitcast i8* %333 to i64*
  store i64 %328, i64* %334, align 1, !tbaa !2452
  %335 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %336 = load i64, i64* %PC
  %337 = add i64 %336, 7
  store i64 %337, i64* %PC
  %338 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4012f0__rodata_type* @seg_4012f0__rodata to i64), i64 32) to float*)
  %339 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4012f0__rodata_type* @seg_4012f0__rodata to i64), i64 36) to float*)
  %340 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4012f0__rodata_type* @seg_4012f0__rodata to i64), i64 40) to float*)
  %341 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4012f0__rodata_type* @seg_4012f0__rodata to i64), i64 44) to float*)
  %342 = bitcast i8* %335 to float*
  store float %338, float* %342, align 1, !tbaa !2455
  %343 = getelementptr inbounds i8, i8* %335, i64 4
  %344 = bitcast i8* %343 to float*
  store float %339, float* %344, align 1, !tbaa !2455
  %345 = getelementptr inbounds i8, i8* %335, i64 8
  %346 = bitcast i8* %345 to float*
  store float %340, float* %346, align 1, !tbaa !2455
  %347 = getelementptr inbounds i8, i8* %335, i64 12
  %348 = bitcast i8* %347 to float*
  store float %341, float* %348, align 1, !tbaa !2455
  %349 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %350 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %351 = bitcast %union.vec128_t* %XMM1 to i8*
  %352 = load i64, i64* %PC
  %353 = add i64 %352, 4
  store i64 %353, i64* %PC
  %354 = bitcast i8* %350 to i64*
  %355 = load i64, i64* %354, align 1
  %356 = getelementptr inbounds i8, i8* %350, i64 8
  %357 = bitcast i8* %356 to i64*
  %358 = load i64, i64* %357, align 1
  %359 = bitcast i8* %351 to i64*
  %360 = load i64, i64* %359, align 1
  %361 = getelementptr inbounds i8, i8* %351, i64 8
  %362 = bitcast i8* %361 to i64*
  %363 = load i64, i64* %362, align 1
  %364 = and i64 %360, %355
  %365 = and i64 %363, %358
  %366 = trunc i64 %364 to i32
  %367 = lshr i64 %364, 32
  %368 = trunc i64 %367 to i32
  %369 = bitcast i8* %349 to i32*
  store i32 %366, i32* %369, align 1, !tbaa !2454
  %370 = getelementptr inbounds i8, i8* %349, i64 4
  %371 = bitcast i8* %370 to i32*
  store i32 %368, i32* %371, align 1, !tbaa !2454
  %372 = trunc i64 %365 to i32
  %373 = getelementptr inbounds i8, i8* %349, i64 8
  %374 = bitcast i8* %373 to i32*
  store i32 %372, i32* %374, align 1, !tbaa !2454
  %375 = lshr i64 %365, 32
  %376 = trunc i64 %375 to i32
  %377 = getelementptr inbounds i8, i8* %349, i64 12
  %378 = bitcast i8* %377 to i32*
  store i32 %376, i32* %378, align 1, !tbaa !2454
  %379 = load i64, i64* %RBP
  %380 = sub i64 %379, 64
  %381 = bitcast %union.vec128_t* %XMM0 to i8*
  %382 = load i64, i64* %PC
  %383 = add i64 %382, 5
  store i64 %383, i64* %PC
  %384 = bitcast i8* %381 to double*
  %385 = load double, double* %384, align 1
  %386 = inttoptr i64 %380 to double*
  store double %385, double* %386
  %387 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %388 = load i64, i64* %RBP
  %389 = sub i64 %388, 64
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 5
  store i64 %391, i64* %PC
  %392 = inttoptr i64 %389 to double*
  %393 = load double, double* %392
  %394 = bitcast i8* %387 to double*
  store double %393, double* %394, align 1, !tbaa !2452
  %395 = getelementptr inbounds i8, i8* %387, i64 8
  %396 = bitcast i8* %395 to double*
  store double 0.000000e+00, double* %396, align 1, !tbaa !2452
  %397 = bitcast %union.vec128_t* %XMM0 to i8*
  %398 = load i64, i64* %RBP
  %399 = sub i64 %398, 40
  %400 = load i64, i64* %PC
  %401 = add i64 %400, 5
  store i64 %401, i64* %PC
  %402 = bitcast i8* %397 to double*
  %403 = load double, double* %402, align 1
  %404 = inttoptr i64 %399 to double*
  %405 = load double, double* %404
  %406 = fcmp uno double %403, %405
  br i1 %406, label %407, label %419

; <label>:407:                                    ; preds = %block_400ed3
  %408 = fadd double %403, %405
  %409 = bitcast double %408 to i64
  %410 = and i64 %409, 9221120237041090560
  %411 = icmp eq i64 %410, 9218868437227405312
  %412 = and i64 %409, 2251799813685247
  %413 = icmp ne i64 %412, 0
  %414 = and i1 %411, %413
  br i1 %414, label %415, label %425

; <label>:415:                                    ; preds = %407
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %417 = load i64, i64* %416, align 8, !tbaa !2428
  %418 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %417, %struct.Memory* %MEMORY.1) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:419:                                    ; preds = %block_400ed3
  %420 = fcmp ogt double %403, %405
  br i1 %420, label %425, label %421

; <label>:421:                                    ; preds = %419
  %422 = fcmp olt double %403, %405
  br i1 %422, label %425, label %423

; <label>:423:                                    ; preds = %421
  %424 = fcmp oeq double %403, %405
  br i1 %424, label %425, label %432

; <label>:425:                                    ; preds = %423, %421, %419, %407
  %426 = phi i8 [ 0, %419 ], [ 0, %421 ], [ 1, %423 ], [ 1, %407 ]
  %427 = phi i8 [ 0, %419 ], [ 0, %421 ], [ 0, %423 ], [ 1, %407 ]
  %428 = phi i8 [ 0, %419 ], [ 1, %421 ], [ 0, %423 ], [ 1, %407 ]
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %426, i8* %429, align 1, !tbaa !2451
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %427, i8* %430, align 1, !tbaa !2451
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %428, i8* %431, align 1, !tbaa !2451
  br label %432

; <label>:432:                                    ; preds = %425, %423
  %433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %433, align 1, !tbaa !2451
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %434, align 1, !tbaa !2451
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %435, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %415, %432
  %436 = phi %struct.Memory* [ %418, %415 ], [ %MEMORY.1, %432 ]
  %437 = load i64, i64* %PC
  %438 = add i64 %437, 67
  %439 = load i64, i64* %PC
  %440 = add i64 %439, 6
  %441 = load i64, i64* %PC
  %442 = add i64 %441, 6
  store i64 %442, i64* %PC
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %444 = load i8, i8* %443, align 1, !tbaa !2432
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %446 = load i8, i8* %445, align 1, !tbaa !2448
  %447 = or i8 %446, %444
  %448 = icmp ne i8 %447, 0
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %451 = select i1 %448, i64 %438, i64 %440
  store i64 %451, i64* %450, align 8, !tbaa !2428
  %452 = load i8, i8* %BRANCH_TAKEN
  %453 = icmp eq i8 %452, 1
  %454 = load i64, i64* %PC
  br i1 %453, label %block_400f5e, label %block_400f21

block_400ec7:                                     ; preds = %block_400f5e, %block_400ea0
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400ea0 ], [ %436, %block_400f5e ]
  %455 = load i64, i64* %RBP
  %456 = sub i64 %455, 28
  %457 = load i64, i64* %PC
  %458 = add i64 %457, 3
  store i64 %458, i64* %PC
  %459 = inttoptr i64 %456 to i32*
  %460 = load i32, i32* %459
  %461 = zext i32 %460 to i64
  store i64 %461, i64* %RAX, align 8, !tbaa !2428
  %462 = load i32, i32* %EAX
  %463 = zext i32 %462 to i64
  %464 = load i64, i64* %RBP
  %465 = sub i64 %464, 8
  %466 = load i64, i64* %PC
  %467 = add i64 %466, 3
  store i64 %467, i64* %PC
  %468 = inttoptr i64 %465 to i32*
  %469 = load i32, i32* %468
  %470 = sub i32 %462, %469
  %471 = icmp ult i32 %462, %469
  %472 = zext i1 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %472, i8* %473, align 1, !tbaa !2432
  %474 = and i32 %470, 255
  %475 = call i32 @llvm.ctpop.i32(i32 %474) #16
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = xor i8 %477, 1
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %478, i8* %479, align 1, !tbaa !2446
  %480 = xor i32 %469, %462
  %481 = xor i32 %480, %470
  %482 = lshr i32 %481, 4
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %484, i8* %485, align 1, !tbaa !2447
  %486 = icmp eq i32 %470, 0
  %487 = zext i1 %486 to i8
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %487, i8* %488, align 1, !tbaa !2448
  %489 = lshr i32 %470, 31
  %490 = trunc i32 %489 to i8
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %490, i8* %491, align 1, !tbaa !2449
  %492 = lshr i32 %462, 31
  %493 = lshr i32 %469, 31
  %494 = xor i32 %493, %492
  %495 = xor i32 %489, %492
  %496 = add nuw nsw i32 %495, %494
  %497 = icmp eq i32 %496, 2
  %498 = zext i1 %497 to i8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %498, i8* %499, align 1, !tbaa !2450
  %500 = load i64, i64* %PC
  %501 = add i64 %500, 164
  %502 = load i64, i64* %PC
  %503 = add i64 %502, 6
  %504 = load i64, i64* %PC
  %505 = add i64 %504, 6
  store i64 %505, i64* %PC
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %507 = load i8, i8* %506, align 1, !tbaa !2449
  %508 = icmp ne i8 %507, 0
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %510 = load i8, i8* %509, align 1, !tbaa !2450
  %511 = icmp ne i8 %510, 0
  %512 = xor i1 %508, %511
  %513 = xor i1 %512, true
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %516 = select i1 %512, i64 %503, i64 %501
  store i64 %516, i64* %515, align 8, !tbaa !2428
  %517 = load i8, i8* %BRANCH_TAKEN
  %518 = icmp eq i8 %517, 1
  %519 = load i64, i64* %RBP
  br i1 %518, label %block_400f71, label %block_400ed3

block_400f21:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %520 = add i64 %454, 10
  store i64 %520, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4012f0__rodata_type* @seg_4012f0__rodata to i64), i64 106), i64* %RSI, align 8, !tbaa !2428
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 8
  store i64 %522, i64* %PC
  %523 = load i64, i64* @stderr
  store i64 %523, i64* %RDI, align 8, !tbaa !2428
  %524 = load i64, i64* %RBP
  %525 = sub i64 %524, 28
  %526 = load i64, i64* %PC
  %527 = add i64 %526, 3
  store i64 %527, i64* %PC
  %528 = inttoptr i64 %525 to i32*
  %529 = load i32, i32* %528
  %530 = zext i32 %529 to i64
  store i64 %530, i64* %RDX, align 8, !tbaa !2428
  %531 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %532 = load i64, i64* %RBP
  %533 = sub i64 %532, 48
  %534 = load i64, i64* %PC
  %535 = add i64 %534, 5
  store i64 %535, i64* %PC
  %536 = inttoptr i64 %533 to double*
  %537 = load double, double* %536
  %538 = bitcast i8* %531 to double*
  store double %537, double* %538, align 1, !tbaa !2452
  %539 = getelementptr inbounds i8, i8* %531, i64 8
  %540 = bitcast i8* %539 to double*
  store double 0.000000e+00, double* %540, align 1, !tbaa !2452
  %541 = load i64, i64* %RBP
  %542 = sub i64 %541, 28
  %543 = load i64, i64* %PC
  %544 = add i64 %543, 3
  store i64 %544, i64* %PC
  %545 = inttoptr i64 %542 to i32*
  %546 = load i32, i32* %545
  %547 = zext i32 %546 to i64
  store i64 %547, i64* %RCX, align 8, !tbaa !2428
  %548 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %549 = load i64, i64* %RBP
  %550 = sub i64 %549, 56
  %551 = load i64, i64* %PC
  %552 = add i64 %551, 5
  store i64 %552, i64* %PC
  %553 = inttoptr i64 %550 to double*
  %554 = load double, double* %553
  %555 = bitcast i8* %548 to double*
  store double %554, double* %555, align 1, !tbaa !2452
  %556 = getelementptr inbounds i8, i8* %548, i64 8
  %557 = bitcast i8* %556 to double*
  store double 0.000000e+00, double* %557, align 1, !tbaa !2452
  %558 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %559 = load i64, i64* %RBP
  %560 = sub i64 %559, 40
  %561 = load i64, i64* %PC
  %562 = add i64 %561, 5
  store i64 %562, i64* %PC
  %563 = inttoptr i64 %560 to double*
  %564 = load double, double* %563
  %565 = bitcast i8* %558 to double*
  store double %564, double* %565, align 1, !tbaa !2452
  %566 = getelementptr inbounds i8, i8* %558, i64 8
  %567 = bitcast i8* %566 to double*
  store double 0.000000e+00, double* %567, align 1, !tbaa !2452
  %568 = load i64, i64* %PC
  %569 = add i64 %568, 2
  store i64 %569, i64* %PC
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %570 = load i64, i64* %PC
  %571 = sub i64 %570, 2330
  %572 = load i64, i64* %PC
  %573 = add i64 %572, 5
  %574 = load i64, i64* %PC
  %575 = add i64 %574, 5
  store i64 %575, i64* %PC
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %577 = load i64, i64* %576, align 8, !tbaa !2428
  %578 = add i64 %577, -8
  %579 = inttoptr i64 %578 to i64*
  store i64 %573, i64* %579
  store i64 %578, i64* %576, align 8, !tbaa !2428
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %571, i64* %580, align 8, !tbaa !2428
  %581 = load i64, i64* %PC
  %582 = call %struct.Memory* @ext_6020e8_fprintf(%struct.State* %0, i64 %581, %struct.Memory* %436)
  %583 = load i64, i64* %RBP
  %584 = sub i64 %583, 4
  %585 = load i64, i64* %PC
  %586 = add i64 %585, 7
  store i64 %586, i64* %PC
  %587 = inttoptr i64 %584 to i32*
  store i32 0, i32* %587
  %588 = load i64, i64* %RBP
  %589 = sub i64 %588, 68
  %590 = load i32, i32* %EAX
  %591 = zext i32 %590 to i64
  %592 = load i64, i64* %PC
  %593 = add i64 %592, 3
  store i64 %593, i64* %PC
  %594 = inttoptr i64 %589 to i32*
  store i32 %590, i32* %594
  %595 = load i64, i64* %PC
  %596 = add i64 %595, 31
  %597 = load i64, i64* %PC
  %598 = add i64 %597, 5
  store i64 %598, i64* %PC
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %596, i64* %599, align 8, !tbaa !2428
  br label %block_400f78

block_400f71:                                     ; preds = %block_400ec7
  %600 = sub i64 %519, 4
  %601 = load i64, i64* %PC
  %602 = add i64 %601, 7
  store i64 %602, i64* %PC
  %603 = inttoptr i64 %600 to i32*
  store i32 1, i32* %603
  br label %block_400f78
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007f0_polybench_timer_start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4007f0:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RBP
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 1
  store i64 %16, i64* %PC
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %18 = load i64, i64* %17, align 8, !tbaa !2428
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %14, i64* %20
  store i64 %19, i64* %17, align 8, !tbaa !2428
  %21 = load i64, i64* %RSP
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 3
  store i64 %23, i64* %PC
  store i64 %21, i64* %RBP, align 8, !tbaa !2428
  %24 = load i64, i64* %PC
  %25 = sub i64 %24, 20
  %26 = load i64, i64* %PC
  %27 = add i64 %26, 5
  %28 = load i64, i64* %PC
  %29 = add i64 %28, 5
  store i64 %29, i64* %PC
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !2428
  %32 = add i64 %31, -8
  %33 = inttoptr i64 %32 to i64*
  store i64 %27, i64* %33
  store i64 %32, i64* %30, align 8, !tbaa !2428
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %25, i64* %34, align 8, !tbaa !2428
  %35 = load i64, i64* %PC
  %36 = call %struct.Memory* @sub_4007e0_polybench_prepare_instruments(%struct.State* %0, i64 %35, %struct.Memory* %2)
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 23
  %39 = load i64, i64* %PC
  %40 = add i64 %39, 5
  %41 = load i64, i64* %PC
  %42 = add i64 %41, 5
  store i64 %42, i64* %PC
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %44 = load i64, i64* %43, align 8, !tbaa !2428
  %45 = add i64 %44, -8
  %46 = inttoptr i64 %45 to i64*
  store i64 %40, i64* %46
  store i64 %45, i64* %43, align 8, !tbaa !2428
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %38, i64* %47, align 8, !tbaa !2428
  %48 = load i64, i64* %PC
  %49 = call %struct.Memory* @sub_400810_rtclock(%struct.State* %0, i64 %48, %struct.Memory* %36)
  %50 = bitcast %union.vec128_t* %XMM0 to i8*
  %51 = load i64, i64* %PC
  %52 = add i64 %51, 9
  store i64 %52, i64* %PC
  %53 = bitcast i8* %50 to double*
  %54 = load double, double* %53, align 1
  store double %54, double* bitcast (%polybench_t_start_type* @polybench_t_start to double*)
  %55 = load i64, i64* %PC
  %56 = add i64 %55, 1
  store i64 %56, i64* %PC
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %58 = load i64, i64* %57, align 8, !tbaa !2428
  %59 = add i64 %58, 8
  %60 = inttoptr i64 %58 to i64*
  %61 = load i64, i64* %60
  store i64 %61, i64* %RBP, align 8, !tbaa !2428
  store i64 %59, i64* %57, align 8, !tbaa !2428
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %66 = load i64, i64* %65, align 8, !tbaa !2428
  %67 = inttoptr i64 %66 to i64*
  %68 = load i64, i64* %67
  store i64 %68, i64* %64, align 8, !tbaa !2428
  %69 = add i64 %66, 8
  store i64 %69, i64* %65, align 8, !tbaa !2428
  ret %struct.Memory* %49
}

; Function Attrs: noinline
define %struct.Memory* @sub_400720___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400720:
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
  %14 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 8) to i8*)
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
  br i1 %47, label %block_400740, label %block_400729

block_400740:                                     ; preds = %block_400720
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

block_400729:                                     ; preds = %block_400720
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
  %78 = call %struct.Memory* @sub_4006b0_deregister_tm_clones(%struct.State* %0, i64 %77, %struct.Memory* %2)
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602080__bss_type* @seg_602080__bss to i64), i64 8) to i8*)
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
define %struct.Memory* @sub_4010c0_print_element(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4010c0:
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
  %15 = getelementptr inbounds %struct.GPR, %struct.GPR* %14, i32 0, i32 11
  %16 = getelementptr inbounds %struct.Reg, %struct.Reg* %15, i32 0, i32 0
  %EDI = bitcast %union.anon* %16 to i32*
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %RCX = bitcast %union.anon* %19 to i64*
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
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %33 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %32, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %33 to %"class.std::bitset"*
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %35 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %34, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %35 to %union.vec128_t*
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
  %46 = load i64, i64* %RBP
  %47 = sub i64 %46, 8
  %48 = bitcast %union.vec128_t* %XMM0 to i8*
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 5
  store i64 %50, i64* %PC
  %51 = bitcast i8* %48 to double*
  %52 = load double, double* %51, align 1
  %53 = inttoptr i64 %47 to double*
  store double %52, double* %53
  %54 = load i64, i64* %RBP
  %55 = sub i64 %54, 12
  %56 = load i32, i32* %EDI
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC
  %60 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %60
  %61 = load i64, i64* %RBP
  %62 = sub i64 %61, 24
  %63 = load i64, i64* %RSI
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 4
  store i64 %65, i64* %PC
  %66 = inttoptr i64 %62 to i64*
  store i64 %63, i64* %66
  %67 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %68 = load i64, i64* %RBP
  %69 = sub i64 %68, 8
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 5
  store i64 %71, i64* %PC
  %72 = inttoptr i64 %69 to double*
  %73 = load double, double* %72
  %74 = bitcast i8* %67 to double*
  store double %73, double* %74, align 1, !tbaa !2452
  %75 = getelementptr inbounds i8, i8* %67, i64 8
  %76 = bitcast i8* %75 to double*
  store double 0.000000e+00, double* %76, align 1, !tbaa !2452
  %77 = load i64, i64* %RBP
  %78 = sub i64 %77, 32
  %79 = bitcast %union.vec128_t* %XMM0 to i8*
  %80 = load i64, i64* %PC
  %81 = add i64 %80, 5
  store i64 %81, i64* %PC
  %82 = bitcast i8* %79 to double*
  %83 = load double, double* %82, align 1
  %84 = inttoptr i64 %78 to double*
  store double %83, double* %84
  %85 = load i64, i64* %RBP
  %86 = sub i64 %85, 32
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC
  %89 = inttoptr i64 %86 to i8*
  %90 = load i8, i8* %89
  %91 = sext i8 %90 to i64
  %92 = and i64 %91, 4294967295
  store i64 %92, i64* %RDI, align 8, !tbaa !2428
  %93 = load i64, i64* %RDI
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 3
  store i64 %95, i64* %PC
  %96 = and i64 15, %93
  %97 = trunc i64 %96 to i32
  store i64 %96, i64* %RDI, align 8, !tbaa !2428
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %98, align 1, !tbaa !2432
  %99 = and i32 %97, 255
  %100 = call i32 @llvm.ctpop.i32(i32 %99) #16
  %101 = trunc i32 %100 to i8
  %102 = and i8 %101, 1
  %103 = xor i8 %102, 1
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %103, i8* %104, align 1, !tbaa !2446
  %105 = icmp eq i32 %97, 0
  %106 = zext i1 %105 to i8
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %106, i8* %107, align 1, !tbaa !2448
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %108, align 1, !tbaa !2449
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %109, align 1, !tbaa !2450
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %110, align 1, !tbaa !2447
  %111 = load i64, i64* %RDI
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 3
  store i64 %113, i64* %PC
  %114 = trunc i64 %111 to i32
  %115 = add i32 48, %114
  %116 = zext i32 %115 to i64
  store i64 %116, i64* %RDI, align 8, !tbaa !2428
  %117 = icmp ult i32 %115, %114
  %118 = icmp ult i32 %115, 48
  %119 = or i1 %117, %118
  %120 = zext i1 %119 to i8
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %120, i8* %121, align 1, !tbaa !2432
  %122 = and i32 %115, 255
  %123 = call i32 @llvm.ctpop.i32(i32 %122) #16
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %126, i8* %127, align 1, !tbaa !2446
  %128 = xor i64 48, %111
  %129 = trunc i64 %128 to i32
  %130 = xor i32 %129, %115
  %131 = lshr i32 %130, 4
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %133, i8* %134, align 1, !tbaa !2447
  %135 = icmp eq i32 %115, 0
  %136 = zext i1 %135 to i8
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %136, i8* %137, align 1, !tbaa !2448
  %138 = lshr i32 %115, 31
  %139 = trunc i32 %138 to i8
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %139, i8* %140, align 1, !tbaa !2449
  %141 = lshr i32 %114, 31
  %142 = xor i32 %138, %141
  %143 = add nuw nsw i32 %142, %138
  %144 = icmp eq i32 %143, 2
  %145 = zext i1 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %145, i8* %146, align 1, !tbaa !2450
  %147 = load i8, i8* %DIL
  %148 = zext i8 %147 to i64
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 3
  store i64 %150, i64* %PC
  store i8 %147, i8* %AL, align 1, !tbaa !2451
  %151 = load i64, i64* %RBP
  %152 = sub i64 %151, 24
  %153 = load i64, i64* %PC
  %154 = add i64 %153, 4
  store i64 %154, i64* %PC
  %155 = inttoptr i64 %152 to i64*
  %156 = load i64, i64* %155
  store i64 %156, i64* %RSI, align 8, !tbaa !2428
  %157 = load i64, i64* %RBP
  %158 = sub i64 %157, 12
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 4
  store i64 %160, i64* %PC
  %161 = inttoptr i64 %158 to i32*
  %162 = load i32, i32* %161
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %RCX, align 8, !tbaa !2428
  %164 = load i64, i64* %RSI
  %165 = load i64, i64* %RCX
  %166 = add i64 %165, %164
  %167 = load i8, i8* %AL
  %168 = zext i8 %167 to i64
  %169 = load i64, i64* %PC
  %170 = add i64 %169, 3
  store i64 %170, i64* %PC
  %171 = inttoptr i64 %166 to i8*
  store i8 %167, i8* %171
  %172 = load i64, i64* %RBP
  %173 = sub i64 %172, 32
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 4
  store i64 %175, i64* %PC
  %176 = inttoptr i64 %173 to i8*
  %177 = load i8, i8* %176
  %178 = sext i8 %177 to i64
  %179 = and i64 %178, 4294967295
  store i64 %179, i64* %RDI, align 8, !tbaa !2428
  %180 = load i64, i64* %RDI
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 3
  store i64 %182, i64* %PC
  %183 = and i64 15, %180
  %184 = trunc i64 %183 to i32
  store i64 %183, i64* %RDI, align 8, !tbaa !2428
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %185, align 1, !tbaa !2432
  %186 = and i32 %184, 255
  %187 = call i32 @llvm.ctpop.i32(i32 %186) #16
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %190, i8* %191, align 1, !tbaa !2446
  %192 = icmp eq i32 %184, 0
  %193 = zext i1 %192 to i8
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %193, i8* %194, align 1, !tbaa !2448
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %195, align 1, !tbaa !2449
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %196, align 1, !tbaa !2450
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %197, align 1, !tbaa !2447
  %198 = load i64, i64* %RDI
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 3
  store i64 %200, i64* %PC
  %201 = trunc i64 %198 to i32
  %202 = add i32 48, %201
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %RDI, align 8, !tbaa !2428
  %204 = icmp ult i32 %202, %201
  %205 = icmp ult i32 %202, 48
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
  %215 = xor i64 48, %198
  %216 = trunc i64 %215 to i32
  %217 = xor i32 %216, %202
  %218 = lshr i32 %217, 4
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %220, i8* %221, align 1, !tbaa !2447
  %222 = icmp eq i32 %202, 0
  %223 = zext i1 %222 to i8
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %223, i8* %224, align 1, !tbaa !2448
  %225 = lshr i32 %202, 31
  %226 = trunc i32 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %226, i8* %227, align 1, !tbaa !2449
  %228 = lshr i32 %201, 31
  %229 = xor i32 %225, %228
  %230 = add nuw nsw i32 %229, %225
  %231 = icmp eq i32 %230, 2
  %232 = zext i1 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %232, i8* %233, align 1, !tbaa !2450
  %234 = load i8, i8* %DIL
  %235 = zext i8 %234 to i64
  %236 = load i64, i64* %PC
  %237 = add i64 %236, 3
  store i64 %237, i64* %PC
  store i8 %234, i8* %AL, align 1, !tbaa !2451
  %238 = load i64, i64* %RBP
  %239 = sub i64 %238, 24
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 4
  store i64 %241, i64* %PC
  %242 = inttoptr i64 %239 to i64*
  %243 = load i64, i64* %242
  store i64 %243, i64* %RCX, align 8, !tbaa !2428
  %244 = load i64, i64* %RBP
  %245 = sub i64 %244, 12
  %246 = load i64, i64* %PC
  %247 = add i64 %246, 4
  store i64 %247, i64* %PC
  %248 = inttoptr i64 %245 to i32*
  %249 = load i32, i32* %248
  %250 = sext i32 %249 to i64
  store i64 %250, i64* %RSI, align 8, !tbaa !2428
  %251 = load i64, i64* %RCX
  %252 = load i64, i64* %RSI
  %253 = add i64 %251, 1
  %254 = add i64 %253, %252
  %255 = load i8, i8* %AL
  %256 = zext i8 %255 to i64
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 4
  store i64 %258, i64* %PC
  %259 = inttoptr i64 %254 to i8*
  store i8 %255, i8* %259
  %260 = load i64, i64* %RBP
  %261 = sub i64 %260, 31
  %262 = load i64, i64* %PC
  %263 = add i64 %262, 4
  store i64 %263, i64* %PC
  %264 = inttoptr i64 %261 to i8*
  %265 = load i8, i8* %264
  %266 = sext i8 %265 to i64
  %267 = and i64 %266, 4294967295
  store i64 %267, i64* %RDI, align 8, !tbaa !2428
  %268 = load i64, i64* %RDI
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 3
  store i64 %270, i64* %PC
  %271 = and i64 15, %268
  %272 = trunc i64 %271 to i32
  store i64 %271, i64* %RDI, align 8, !tbaa !2428
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %273, align 1, !tbaa !2432
  %274 = and i32 %272, 255
  %275 = call i32 @llvm.ctpop.i32(i32 %274) #16
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  %278 = xor i8 %277, 1
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %278, i8* %279, align 1, !tbaa !2446
  %280 = icmp eq i32 %272, 0
  %281 = zext i1 %280 to i8
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %281, i8* %282, align 1, !tbaa !2448
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %283, align 1, !tbaa !2449
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %284, align 1, !tbaa !2450
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %285, align 1, !tbaa !2447
  %286 = load i64, i64* %RDI
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 3
  store i64 %288, i64* %PC
  %289 = trunc i64 %286 to i32
  %290 = add i32 48, %289
  %291 = zext i32 %290 to i64
  store i64 %291, i64* %RDI, align 8, !tbaa !2428
  %292 = icmp ult i32 %290, %289
  %293 = icmp ult i32 %290, 48
  %294 = or i1 %292, %293
  %295 = zext i1 %294 to i8
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %295, i8* %296, align 1, !tbaa !2432
  %297 = and i32 %290, 255
  %298 = call i32 @llvm.ctpop.i32(i32 %297) #16
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %301, i8* %302, align 1, !tbaa !2446
  %303 = xor i64 48, %286
  %304 = trunc i64 %303 to i32
  %305 = xor i32 %304, %290
  %306 = lshr i32 %305, 4
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %308, i8* %309, align 1, !tbaa !2447
  %310 = icmp eq i32 %290, 0
  %311 = zext i1 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %311, i8* %312, align 1, !tbaa !2448
  %313 = lshr i32 %290, 31
  %314 = trunc i32 %313 to i8
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %314, i8* %315, align 1, !tbaa !2449
  %316 = lshr i32 %289, 31
  %317 = xor i32 %313, %316
  %318 = add nuw nsw i32 %317, %313
  %319 = icmp eq i32 %318, 2
  %320 = zext i1 %319 to i8
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %320, i8* %321, align 1, !tbaa !2450
  %322 = load i8, i8* %DIL
  %323 = zext i8 %322 to i64
  %324 = load i64, i64* %PC
  %325 = add i64 %324, 3
  store i64 %325, i64* %PC
  store i8 %322, i8* %AL, align 1, !tbaa !2451
  %326 = load i64, i64* %RBP
  %327 = sub i64 %326, 24
  %328 = load i64, i64* %PC
  %329 = add i64 %328, 4
  store i64 %329, i64* %PC
  %330 = inttoptr i64 %327 to i64*
  %331 = load i64, i64* %330
  store i64 %331, i64* %RCX, align 8, !tbaa !2428
  %332 = load i64, i64* %RBP
  %333 = sub i64 %332, 12
  %334 = load i64, i64* %PC
  %335 = add i64 %334, 4
  store i64 %335, i64* %PC
  %336 = inttoptr i64 %333 to i32*
  %337 = load i32, i32* %336
  %338 = sext i32 %337 to i64
  store i64 %338, i64* %RSI, align 8, !tbaa !2428
  %339 = load i64, i64* %RCX
  %340 = load i64, i64* %RSI
  %341 = add i64 %339, 2
  %342 = add i64 %341, %340
  %343 = load i8, i8* %AL
  %344 = zext i8 %343 to i64
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 4
  store i64 %346, i64* %PC
  %347 = inttoptr i64 %342 to i8*
  store i8 %343, i8* %347
  %348 = load i64, i64* %RBP
  %349 = sub i64 %348, 31
  %350 = load i64, i64* %PC
  %351 = add i64 %350, 4
  store i64 %351, i64* %PC
  %352 = inttoptr i64 %349 to i8*
  %353 = load i8, i8* %352
  %354 = sext i8 %353 to i64
  %355 = and i64 %354, 4294967295
  store i64 %355, i64* %RDI, align 8, !tbaa !2428
  %356 = load i64, i64* %RDI
  %357 = load i64, i64* %PC
  %358 = add i64 %357, 3
  store i64 %358, i64* %PC
  %359 = and i64 15, %356
  %360 = trunc i64 %359 to i32
  store i64 %359, i64* %RDI, align 8, !tbaa !2428
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %361, align 1, !tbaa !2432
  %362 = and i32 %360, 255
  %363 = call i32 @llvm.ctpop.i32(i32 %362) #16
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %366, i8* %367, align 1, !tbaa !2446
  %368 = icmp eq i32 %360, 0
  %369 = zext i1 %368 to i8
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %369, i8* %370, align 1, !tbaa !2448
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %371, align 1, !tbaa !2449
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %372, align 1, !tbaa !2450
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %373, align 1, !tbaa !2447
  %374 = load i64, i64* %RDI
  %375 = load i64, i64* %PC
  %376 = add i64 %375, 3
  store i64 %376, i64* %PC
  %377 = trunc i64 %374 to i32
  %378 = add i32 48, %377
  %379 = zext i32 %378 to i64
  store i64 %379, i64* %RDI, align 8, !tbaa !2428
  %380 = icmp ult i32 %378, %377
  %381 = icmp ult i32 %378, 48
  %382 = or i1 %380, %381
  %383 = zext i1 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %383, i8* %384, align 1, !tbaa !2432
  %385 = and i32 %378, 255
  %386 = call i32 @llvm.ctpop.i32(i32 %385) #16
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %389, i8* %390, align 1, !tbaa !2446
  %391 = xor i64 48, %374
  %392 = trunc i64 %391 to i32
  %393 = xor i32 %392, %378
  %394 = lshr i32 %393, 4
  %395 = trunc i32 %394 to i8
  %396 = and i8 %395, 1
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %396, i8* %397, align 1, !tbaa !2447
  %398 = icmp eq i32 %378, 0
  %399 = zext i1 %398 to i8
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %399, i8* %400, align 1, !tbaa !2448
  %401 = lshr i32 %378, 31
  %402 = trunc i32 %401 to i8
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %402, i8* %403, align 1, !tbaa !2449
  %404 = lshr i32 %377, 31
  %405 = xor i32 %401, %404
  %406 = add nuw nsw i32 %405, %401
  %407 = icmp eq i32 %406, 2
  %408 = zext i1 %407 to i8
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %408, i8* %409, align 1, !tbaa !2450
  %410 = load i8, i8* %DIL
  %411 = zext i8 %410 to i64
  %412 = load i64, i64* %PC
  %413 = add i64 %412, 3
  store i64 %413, i64* %PC
  store i8 %410, i8* %AL, align 1, !tbaa !2451
  %414 = load i64, i64* %RBP
  %415 = sub i64 %414, 24
  %416 = load i64, i64* %PC
  %417 = add i64 %416, 4
  store i64 %417, i64* %PC
  %418 = inttoptr i64 %415 to i64*
  %419 = load i64, i64* %418
  store i64 %419, i64* %RCX, align 8, !tbaa !2428
  %420 = load i64, i64* %RBP
  %421 = sub i64 %420, 12
  %422 = load i64, i64* %PC
  %423 = add i64 %422, 4
  store i64 %423, i64* %PC
  %424 = inttoptr i64 %421 to i32*
  %425 = load i32, i32* %424
  %426 = sext i32 %425 to i64
  store i64 %426, i64* %RSI, align 8, !tbaa !2428
  %427 = load i64, i64* %RCX
  %428 = load i64, i64* %RSI
  %429 = add i64 %427, 3
  %430 = add i64 %429, %428
  %431 = load i8, i8* %AL
  %432 = zext i8 %431 to i64
  %433 = load i64, i64* %PC
  %434 = add i64 %433, 4
  store i64 %434, i64* %PC
  %435 = inttoptr i64 %430 to i8*
  store i8 %431, i8* %435
  %436 = load i64, i64* %RBP
  %437 = sub i64 %436, 30
  %438 = load i64, i64* %PC
  %439 = add i64 %438, 4
  store i64 %439, i64* %PC
  %440 = inttoptr i64 %437 to i8*
  %441 = load i8, i8* %440
  %442 = sext i8 %441 to i64
  %443 = and i64 %442, 4294967295
  store i64 %443, i64* %RDI, align 8, !tbaa !2428
  %444 = load i64, i64* %RDI
  %445 = load i64, i64* %PC
  %446 = add i64 %445, 3
  store i64 %446, i64* %PC
  %447 = and i64 15, %444
  %448 = trunc i64 %447 to i32
  store i64 %447, i64* %RDI, align 8, !tbaa !2428
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %449, align 1, !tbaa !2432
  %450 = and i32 %448, 255
  %451 = call i32 @llvm.ctpop.i32(i32 %450) #16
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = xor i8 %453, 1
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %454, i8* %455, align 1, !tbaa !2446
  %456 = icmp eq i32 %448, 0
  %457 = zext i1 %456 to i8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %457, i8* %458, align 1, !tbaa !2448
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %459, align 1, !tbaa !2449
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %460, align 1, !tbaa !2450
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %461, align 1, !tbaa !2447
  %462 = load i64, i64* %RDI
  %463 = load i64, i64* %PC
  %464 = add i64 %463, 3
  store i64 %464, i64* %PC
  %465 = trunc i64 %462 to i32
  %466 = add i32 48, %465
  %467 = zext i32 %466 to i64
  store i64 %467, i64* %RDI, align 8, !tbaa !2428
  %468 = icmp ult i32 %466, %465
  %469 = icmp ult i32 %466, 48
  %470 = or i1 %468, %469
  %471 = zext i1 %470 to i8
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %471, i8* %472, align 1, !tbaa !2432
  %473 = and i32 %466, 255
  %474 = call i32 @llvm.ctpop.i32(i32 %473) #16
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = xor i8 %476, 1
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %477, i8* %478, align 1, !tbaa !2446
  %479 = xor i64 48, %462
  %480 = trunc i64 %479 to i32
  %481 = xor i32 %480, %466
  %482 = lshr i32 %481, 4
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %484, i8* %485, align 1, !tbaa !2447
  %486 = icmp eq i32 %466, 0
  %487 = zext i1 %486 to i8
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %487, i8* %488, align 1, !tbaa !2448
  %489 = lshr i32 %466, 31
  %490 = trunc i32 %489 to i8
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %490, i8* %491, align 1, !tbaa !2449
  %492 = lshr i32 %465, 31
  %493 = xor i32 %489, %492
  %494 = add nuw nsw i32 %493, %489
  %495 = icmp eq i32 %494, 2
  %496 = zext i1 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %496, i8* %497, align 1, !tbaa !2450
  %498 = load i8, i8* %DIL
  %499 = zext i8 %498 to i64
  %500 = load i64, i64* %PC
  %501 = add i64 %500, 3
  store i64 %501, i64* %PC
  store i8 %498, i8* %AL, align 1, !tbaa !2451
  %502 = load i64, i64* %RBP
  %503 = sub i64 %502, 24
  %504 = load i64, i64* %PC
  %505 = add i64 %504, 4
  store i64 %505, i64* %PC
  %506 = inttoptr i64 %503 to i64*
  %507 = load i64, i64* %506
  store i64 %507, i64* %RCX, align 8, !tbaa !2428
  %508 = load i64, i64* %RBP
  %509 = sub i64 %508, 12
  %510 = load i64, i64* %PC
  %511 = add i64 %510, 4
  store i64 %511, i64* %PC
  %512 = inttoptr i64 %509 to i32*
  %513 = load i32, i32* %512
  %514 = sext i32 %513 to i64
  store i64 %514, i64* %RSI, align 8, !tbaa !2428
  %515 = load i64, i64* %RCX
  %516 = load i64, i64* %RSI
  %517 = add i64 %515, 4
  %518 = add i64 %517, %516
  %519 = load i8, i8* %AL
  %520 = zext i8 %519 to i64
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 4
  store i64 %522, i64* %PC
  %523 = inttoptr i64 %518 to i8*
  store i8 %519, i8* %523
  %524 = load i64, i64* %RBP
  %525 = sub i64 %524, 30
  %526 = load i64, i64* %PC
  %527 = add i64 %526, 4
  store i64 %527, i64* %PC
  %528 = inttoptr i64 %525 to i8*
  %529 = load i8, i8* %528
  %530 = sext i8 %529 to i64
  %531 = and i64 %530, 4294967295
  store i64 %531, i64* %RDI, align 8, !tbaa !2428
  %532 = load i64, i64* %RDI
  %533 = load i64, i64* %PC
  %534 = add i64 %533, 3
  store i64 %534, i64* %PC
  %535 = and i64 15, %532
  %536 = trunc i64 %535 to i32
  store i64 %535, i64* %RDI, align 8, !tbaa !2428
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %537, align 1, !tbaa !2432
  %538 = and i32 %536, 255
  %539 = call i32 @llvm.ctpop.i32(i32 %538) #16
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %542, i8* %543, align 1, !tbaa !2446
  %544 = icmp eq i32 %536, 0
  %545 = zext i1 %544 to i8
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %545, i8* %546, align 1, !tbaa !2448
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %547, align 1, !tbaa !2449
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %548, align 1, !tbaa !2450
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %549, align 1, !tbaa !2447
  %550 = load i64, i64* %RDI
  %551 = load i64, i64* %PC
  %552 = add i64 %551, 3
  store i64 %552, i64* %PC
  %553 = trunc i64 %550 to i32
  %554 = add i32 48, %553
  %555 = zext i32 %554 to i64
  store i64 %555, i64* %RDI, align 8, !tbaa !2428
  %556 = icmp ult i32 %554, %553
  %557 = icmp ult i32 %554, 48
  %558 = or i1 %556, %557
  %559 = zext i1 %558 to i8
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %559, i8* %560, align 1, !tbaa !2432
  %561 = and i32 %554, 255
  %562 = call i32 @llvm.ctpop.i32(i32 %561) #16
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %565, i8* %566, align 1, !tbaa !2446
  %567 = xor i64 48, %550
  %568 = trunc i64 %567 to i32
  %569 = xor i32 %568, %554
  %570 = lshr i32 %569, 4
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %572, i8* %573, align 1, !tbaa !2447
  %574 = icmp eq i32 %554, 0
  %575 = zext i1 %574 to i8
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %575, i8* %576, align 1, !tbaa !2448
  %577 = lshr i32 %554, 31
  %578 = trunc i32 %577 to i8
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %578, i8* %579, align 1, !tbaa !2449
  %580 = lshr i32 %553, 31
  %581 = xor i32 %577, %580
  %582 = add nuw nsw i32 %581, %577
  %583 = icmp eq i32 %582, 2
  %584 = zext i1 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %584, i8* %585, align 1, !tbaa !2450
  %586 = load i8, i8* %DIL
  %587 = zext i8 %586 to i64
  %588 = load i64, i64* %PC
  %589 = add i64 %588, 3
  store i64 %589, i64* %PC
  store i8 %586, i8* %AL, align 1, !tbaa !2451
  %590 = load i64, i64* %RBP
  %591 = sub i64 %590, 24
  %592 = load i64, i64* %PC
  %593 = add i64 %592, 4
  store i64 %593, i64* %PC
  %594 = inttoptr i64 %591 to i64*
  %595 = load i64, i64* %594
  store i64 %595, i64* %RCX, align 8, !tbaa !2428
  %596 = load i64, i64* %RBP
  %597 = sub i64 %596, 12
  %598 = load i64, i64* %PC
  %599 = add i64 %598, 4
  store i64 %599, i64* %PC
  %600 = inttoptr i64 %597 to i32*
  %601 = load i32, i32* %600
  %602 = sext i32 %601 to i64
  store i64 %602, i64* %RSI, align 8, !tbaa !2428
  %603 = load i64, i64* %RCX
  %604 = load i64, i64* %RSI
  %605 = add i64 %603, 5
  %606 = add i64 %605, %604
  %607 = load i8, i8* %AL
  %608 = zext i8 %607 to i64
  %609 = load i64, i64* %PC
  %610 = add i64 %609, 4
  store i64 %610, i64* %PC
  %611 = inttoptr i64 %606 to i8*
  store i8 %607, i8* %611
  %612 = load i64, i64* %RBP
  %613 = sub i64 %612, 29
  %614 = load i64, i64* %PC
  %615 = add i64 %614, 4
  store i64 %615, i64* %PC
  %616 = inttoptr i64 %613 to i8*
  %617 = load i8, i8* %616
  %618 = sext i8 %617 to i64
  %619 = and i64 %618, 4294967295
  store i64 %619, i64* %RDI, align 8, !tbaa !2428
  %620 = load i64, i64* %RDI
  %621 = load i64, i64* %PC
  %622 = add i64 %621, 3
  store i64 %622, i64* %PC
  %623 = and i64 15, %620
  %624 = trunc i64 %623 to i32
  store i64 %623, i64* %RDI, align 8, !tbaa !2428
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %625, align 1, !tbaa !2432
  %626 = and i32 %624, 255
  %627 = call i32 @llvm.ctpop.i32(i32 %626) #16
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %630, i8* %631, align 1, !tbaa !2446
  %632 = icmp eq i32 %624, 0
  %633 = zext i1 %632 to i8
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %633, i8* %634, align 1, !tbaa !2448
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %635, align 1, !tbaa !2449
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %636, align 1, !tbaa !2450
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %637, align 1, !tbaa !2447
  %638 = load i64, i64* %RDI
  %639 = load i64, i64* %PC
  %640 = add i64 %639, 3
  store i64 %640, i64* %PC
  %641 = trunc i64 %638 to i32
  %642 = add i32 48, %641
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RDI, align 8, !tbaa !2428
  %644 = icmp ult i32 %642, %641
  %645 = icmp ult i32 %642, 48
  %646 = or i1 %644, %645
  %647 = zext i1 %646 to i8
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %647, i8* %648, align 1, !tbaa !2432
  %649 = and i32 %642, 255
  %650 = call i32 @llvm.ctpop.i32(i32 %649) #16
  %651 = trunc i32 %650 to i8
  %652 = and i8 %651, 1
  %653 = xor i8 %652, 1
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %653, i8* %654, align 1, !tbaa !2446
  %655 = xor i64 48, %638
  %656 = trunc i64 %655 to i32
  %657 = xor i32 %656, %642
  %658 = lshr i32 %657, 4
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %660, i8* %661, align 1, !tbaa !2447
  %662 = icmp eq i32 %642, 0
  %663 = zext i1 %662 to i8
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %663, i8* %664, align 1, !tbaa !2448
  %665 = lshr i32 %642, 31
  %666 = trunc i32 %665 to i8
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %666, i8* %667, align 1, !tbaa !2449
  %668 = lshr i32 %641, 31
  %669 = xor i32 %665, %668
  %670 = add nuw nsw i32 %669, %665
  %671 = icmp eq i32 %670, 2
  %672 = zext i1 %671 to i8
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %672, i8* %673, align 1, !tbaa !2450
  %674 = load i8, i8* %DIL
  %675 = zext i8 %674 to i64
  %676 = load i64, i64* %PC
  %677 = add i64 %676, 3
  store i64 %677, i64* %PC
  store i8 %674, i8* %AL, align 1, !tbaa !2451
  %678 = load i64, i64* %RBP
  %679 = sub i64 %678, 24
  %680 = load i64, i64* %PC
  %681 = add i64 %680, 4
  store i64 %681, i64* %PC
  %682 = inttoptr i64 %679 to i64*
  %683 = load i64, i64* %682
  store i64 %683, i64* %RCX, align 8, !tbaa !2428
  %684 = load i64, i64* %RBP
  %685 = sub i64 %684, 12
  %686 = load i64, i64* %PC
  %687 = add i64 %686, 4
  store i64 %687, i64* %PC
  %688 = inttoptr i64 %685 to i32*
  %689 = load i32, i32* %688
  %690 = sext i32 %689 to i64
  store i64 %690, i64* %RSI, align 8, !tbaa !2428
  %691 = load i64, i64* %RCX
  %692 = load i64, i64* %RSI
  %693 = add i64 %691, 6
  %694 = add i64 %693, %692
  %695 = load i8, i8* %AL
  %696 = zext i8 %695 to i64
  %697 = load i64, i64* %PC
  %698 = add i64 %697, 4
  store i64 %698, i64* %PC
  %699 = inttoptr i64 %694 to i8*
  store i8 %695, i8* %699
  %700 = load i64, i64* %RBP
  %701 = sub i64 %700, 29
  %702 = load i64, i64* %PC
  %703 = add i64 %702, 4
  store i64 %703, i64* %PC
  %704 = inttoptr i64 %701 to i8*
  %705 = load i8, i8* %704
  %706 = sext i8 %705 to i64
  %707 = and i64 %706, 4294967295
  store i64 %707, i64* %RDI, align 8, !tbaa !2428
  %708 = load i64, i64* %RDI
  %709 = load i64, i64* %PC
  %710 = add i64 %709, 3
  store i64 %710, i64* %PC
  %711 = and i64 15, %708
  %712 = trunc i64 %711 to i32
  store i64 %711, i64* %RDI, align 8, !tbaa !2428
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %713, align 1, !tbaa !2432
  %714 = and i32 %712, 255
  %715 = call i32 @llvm.ctpop.i32(i32 %714) #16
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %718, i8* %719, align 1, !tbaa !2446
  %720 = icmp eq i32 %712, 0
  %721 = zext i1 %720 to i8
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %721, i8* %722, align 1, !tbaa !2448
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %723, align 1, !tbaa !2449
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %724, align 1, !tbaa !2450
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %725, align 1, !tbaa !2447
  %726 = load i64, i64* %RDI
  %727 = load i64, i64* %PC
  %728 = add i64 %727, 3
  store i64 %728, i64* %PC
  %729 = trunc i64 %726 to i32
  %730 = add i32 48, %729
  %731 = zext i32 %730 to i64
  store i64 %731, i64* %RDI, align 8, !tbaa !2428
  %732 = icmp ult i32 %730, %729
  %733 = icmp ult i32 %730, 48
  %734 = or i1 %732, %733
  %735 = zext i1 %734 to i8
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %735, i8* %736, align 1, !tbaa !2432
  %737 = and i32 %730, 255
  %738 = call i32 @llvm.ctpop.i32(i32 %737) #16
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  %741 = xor i8 %740, 1
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %741, i8* %742, align 1, !tbaa !2446
  %743 = xor i64 48, %726
  %744 = trunc i64 %743 to i32
  %745 = xor i32 %744, %730
  %746 = lshr i32 %745, 4
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %748, i8* %749, align 1, !tbaa !2447
  %750 = icmp eq i32 %730, 0
  %751 = zext i1 %750 to i8
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %751, i8* %752, align 1, !tbaa !2448
  %753 = lshr i32 %730, 31
  %754 = trunc i32 %753 to i8
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %754, i8* %755, align 1, !tbaa !2449
  %756 = lshr i32 %729, 31
  %757 = xor i32 %753, %756
  %758 = add nuw nsw i32 %757, %753
  %759 = icmp eq i32 %758, 2
  %760 = zext i1 %759 to i8
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %760, i8* %761, align 1, !tbaa !2450
  %762 = load i8, i8* %DIL
  %763 = zext i8 %762 to i64
  %764 = load i64, i64* %PC
  %765 = add i64 %764, 3
  store i64 %765, i64* %PC
  store i8 %762, i8* %AL, align 1, !tbaa !2451
  %766 = load i64, i64* %RBP
  %767 = sub i64 %766, 24
  %768 = load i64, i64* %PC
  %769 = add i64 %768, 4
  store i64 %769, i64* %PC
  %770 = inttoptr i64 %767 to i64*
  %771 = load i64, i64* %770
  store i64 %771, i64* %RCX, align 8, !tbaa !2428
  %772 = load i64, i64* %RBP
  %773 = sub i64 %772, 12
  %774 = load i64, i64* %PC
  %775 = add i64 %774, 4
  store i64 %775, i64* %PC
  %776 = inttoptr i64 %773 to i32*
  %777 = load i32, i32* %776
  %778 = sext i32 %777 to i64
  store i64 %778, i64* %RSI, align 8, !tbaa !2428
  %779 = load i64, i64* %RCX
  %780 = load i64, i64* %RSI
  %781 = add i64 %779, 7
  %782 = add i64 %781, %780
  %783 = load i8, i8* %AL
  %784 = zext i8 %783 to i64
  %785 = load i64, i64* %PC
  %786 = add i64 %785, 4
  store i64 %786, i64* %PC
  %787 = inttoptr i64 %782 to i8*
  store i8 %783, i8* %787
  %788 = load i64, i64* %RBP
  %789 = sub i64 %788, 28
  %790 = load i64, i64* %PC
  %791 = add i64 %790, 4
  store i64 %791, i64* %PC
  %792 = inttoptr i64 %789 to i8*
  %793 = load i8, i8* %792
  %794 = sext i8 %793 to i64
  %795 = and i64 %794, 4294967295
  store i64 %795, i64* %RDI, align 8, !tbaa !2428
  %796 = load i64, i64* %RDI
  %797 = load i64, i64* %PC
  %798 = add i64 %797, 3
  store i64 %798, i64* %PC
  %799 = and i64 15, %796
  %800 = trunc i64 %799 to i32
  store i64 %799, i64* %RDI, align 8, !tbaa !2428
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %801, align 1, !tbaa !2432
  %802 = and i32 %800, 255
  %803 = call i32 @llvm.ctpop.i32(i32 %802) #16
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  %806 = xor i8 %805, 1
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %806, i8* %807, align 1, !tbaa !2446
  %808 = icmp eq i32 %800, 0
  %809 = zext i1 %808 to i8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %809, i8* %810, align 1, !tbaa !2448
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %811, align 1, !tbaa !2449
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %812, align 1, !tbaa !2450
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %813, align 1, !tbaa !2447
  %814 = load i64, i64* %RDI
  %815 = load i64, i64* %PC
  %816 = add i64 %815, 3
  store i64 %816, i64* %PC
  %817 = trunc i64 %814 to i32
  %818 = add i32 48, %817
  %819 = zext i32 %818 to i64
  store i64 %819, i64* %RDI, align 8, !tbaa !2428
  %820 = icmp ult i32 %818, %817
  %821 = icmp ult i32 %818, 48
  %822 = or i1 %820, %821
  %823 = zext i1 %822 to i8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %823, i8* %824, align 1, !tbaa !2432
  %825 = and i32 %818, 255
  %826 = call i32 @llvm.ctpop.i32(i32 %825) #16
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  %829 = xor i8 %828, 1
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %829, i8* %830, align 1, !tbaa !2446
  %831 = xor i64 48, %814
  %832 = trunc i64 %831 to i32
  %833 = xor i32 %832, %818
  %834 = lshr i32 %833, 4
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %836, i8* %837, align 1, !tbaa !2447
  %838 = icmp eq i32 %818, 0
  %839 = zext i1 %838 to i8
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %839, i8* %840, align 1, !tbaa !2448
  %841 = lshr i32 %818, 31
  %842 = trunc i32 %841 to i8
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %842, i8* %843, align 1, !tbaa !2449
  %844 = lshr i32 %817, 31
  %845 = xor i32 %841, %844
  %846 = add nuw nsw i32 %845, %841
  %847 = icmp eq i32 %846, 2
  %848 = zext i1 %847 to i8
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %848, i8* %849, align 1, !tbaa !2450
  %850 = load i8, i8* %DIL
  %851 = zext i8 %850 to i64
  %852 = load i64, i64* %PC
  %853 = add i64 %852, 3
  store i64 %853, i64* %PC
  store i8 %850, i8* %AL, align 1, !tbaa !2451
  %854 = load i64, i64* %RBP
  %855 = sub i64 %854, 24
  %856 = load i64, i64* %PC
  %857 = add i64 %856, 4
  store i64 %857, i64* %PC
  %858 = inttoptr i64 %855 to i64*
  %859 = load i64, i64* %858
  store i64 %859, i64* %RCX, align 8, !tbaa !2428
  %860 = load i64, i64* %RBP
  %861 = sub i64 %860, 12
  %862 = load i64, i64* %PC
  %863 = add i64 %862, 4
  store i64 %863, i64* %PC
  %864 = inttoptr i64 %861 to i32*
  %865 = load i32, i32* %864
  %866 = sext i32 %865 to i64
  store i64 %866, i64* %RSI, align 8, !tbaa !2428
  %867 = load i64, i64* %RCX
  %868 = load i64, i64* %RSI
  %869 = add i64 %867, 8
  %870 = add i64 %869, %868
  %871 = load i8, i8* %AL
  %872 = zext i8 %871 to i64
  %873 = load i64, i64* %PC
  %874 = add i64 %873, 4
  store i64 %874, i64* %PC
  %875 = inttoptr i64 %870 to i8*
  store i8 %871, i8* %875
  %876 = load i64, i64* %RBP
  %877 = sub i64 %876, 28
  %878 = load i64, i64* %PC
  %879 = add i64 %878, 4
  store i64 %879, i64* %PC
  %880 = inttoptr i64 %877 to i8*
  %881 = load i8, i8* %880
  %882 = sext i8 %881 to i64
  %883 = and i64 %882, 4294967295
  store i64 %883, i64* %RDI, align 8, !tbaa !2428
  %884 = load i64, i64* %RDI
  %885 = load i64, i64* %PC
  %886 = add i64 %885, 3
  store i64 %886, i64* %PC
  %887 = and i64 15, %884
  %888 = trunc i64 %887 to i32
  store i64 %887, i64* %RDI, align 8, !tbaa !2428
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %889, align 1, !tbaa !2432
  %890 = and i32 %888, 255
  %891 = call i32 @llvm.ctpop.i32(i32 %890) #16
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %894, i8* %895, align 1, !tbaa !2446
  %896 = icmp eq i32 %888, 0
  %897 = zext i1 %896 to i8
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %897, i8* %898, align 1, !tbaa !2448
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %899, align 1, !tbaa !2449
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %900, align 1, !tbaa !2450
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %901, align 1, !tbaa !2447
  %902 = load i64, i64* %RDI
  %903 = load i64, i64* %PC
  %904 = add i64 %903, 3
  store i64 %904, i64* %PC
  %905 = trunc i64 %902 to i32
  %906 = add i32 48, %905
  %907 = zext i32 %906 to i64
  store i64 %907, i64* %RDI, align 8, !tbaa !2428
  %908 = icmp ult i32 %906, %905
  %909 = icmp ult i32 %906, 48
  %910 = or i1 %908, %909
  %911 = zext i1 %910 to i8
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %911, i8* %912, align 1, !tbaa !2432
  %913 = and i32 %906, 255
  %914 = call i32 @llvm.ctpop.i32(i32 %913) #16
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %917, i8* %918, align 1, !tbaa !2446
  %919 = xor i64 48, %902
  %920 = trunc i64 %919 to i32
  %921 = xor i32 %920, %906
  %922 = lshr i32 %921, 4
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %924, i8* %925, align 1, !tbaa !2447
  %926 = icmp eq i32 %906, 0
  %927 = zext i1 %926 to i8
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %927, i8* %928, align 1, !tbaa !2448
  %929 = lshr i32 %906, 31
  %930 = trunc i32 %929 to i8
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %930, i8* %931, align 1, !tbaa !2449
  %932 = lshr i32 %905, 31
  %933 = xor i32 %929, %932
  %934 = add nuw nsw i32 %933, %929
  %935 = icmp eq i32 %934, 2
  %936 = zext i1 %935 to i8
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %936, i8* %937, align 1, !tbaa !2450
  %938 = load i8, i8* %DIL
  %939 = zext i8 %938 to i64
  %940 = load i64, i64* %PC
  %941 = add i64 %940, 3
  store i64 %941, i64* %PC
  store i8 %938, i8* %AL, align 1, !tbaa !2451
  %942 = load i64, i64* %RBP
  %943 = sub i64 %942, 24
  %944 = load i64, i64* %PC
  %945 = add i64 %944, 4
  store i64 %945, i64* %PC
  %946 = inttoptr i64 %943 to i64*
  %947 = load i64, i64* %946
  store i64 %947, i64* %RCX, align 8, !tbaa !2428
  %948 = load i64, i64* %RBP
  %949 = sub i64 %948, 12
  %950 = load i64, i64* %PC
  %951 = add i64 %950, 4
  store i64 %951, i64* %PC
  %952 = inttoptr i64 %949 to i32*
  %953 = load i32, i32* %952
  %954 = sext i32 %953 to i64
  store i64 %954, i64* %RSI, align 8, !tbaa !2428
  %955 = load i64, i64* %RCX
  %956 = load i64, i64* %RSI
  %957 = add i64 %955, 9
  %958 = add i64 %957, %956
  %959 = load i8, i8* %AL
  %960 = zext i8 %959 to i64
  %961 = load i64, i64* %PC
  %962 = add i64 %961, 4
  store i64 %962, i64* %PC
  %963 = inttoptr i64 %958 to i8*
  store i8 %959, i8* %963
  %964 = load i64, i64* %RBP
  %965 = sub i64 %964, 27
  %966 = load i64, i64* %PC
  %967 = add i64 %966, 4
  store i64 %967, i64* %PC
  %968 = inttoptr i64 %965 to i8*
  %969 = load i8, i8* %968
  %970 = sext i8 %969 to i64
  %971 = and i64 %970, 4294967295
  store i64 %971, i64* %RDI, align 8, !tbaa !2428
  %972 = load i64, i64* %RDI
  %973 = load i64, i64* %PC
  %974 = add i64 %973, 3
  store i64 %974, i64* %PC
  %975 = and i64 15, %972
  %976 = trunc i64 %975 to i32
  store i64 %975, i64* %RDI, align 8, !tbaa !2428
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %977, align 1, !tbaa !2432
  %978 = and i32 %976, 255
  %979 = call i32 @llvm.ctpop.i32(i32 %978) #16
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %982, i8* %983, align 1, !tbaa !2446
  %984 = icmp eq i32 %976, 0
  %985 = zext i1 %984 to i8
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %985, i8* %986, align 1, !tbaa !2448
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %987, align 1, !tbaa !2449
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %988, align 1, !tbaa !2450
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %989, align 1, !tbaa !2447
  %990 = load i64, i64* %RDI
  %991 = load i64, i64* %PC
  %992 = add i64 %991, 3
  store i64 %992, i64* %PC
  %993 = trunc i64 %990 to i32
  %994 = add i32 48, %993
  %995 = zext i32 %994 to i64
  store i64 %995, i64* %RDI, align 8, !tbaa !2428
  %996 = icmp ult i32 %994, %993
  %997 = icmp ult i32 %994, 48
  %998 = or i1 %996, %997
  %999 = zext i1 %998 to i8
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %999, i8* %1000, align 1, !tbaa !2432
  %1001 = and i32 %994, 255
  %1002 = call i32 @llvm.ctpop.i32(i32 %1001) #16
  %1003 = trunc i32 %1002 to i8
  %1004 = and i8 %1003, 1
  %1005 = xor i8 %1004, 1
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1005, i8* %1006, align 1, !tbaa !2446
  %1007 = xor i64 48, %990
  %1008 = trunc i64 %1007 to i32
  %1009 = xor i32 %1008, %994
  %1010 = lshr i32 %1009, 4
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1012, i8* %1013, align 1, !tbaa !2447
  %1014 = icmp eq i32 %994, 0
  %1015 = zext i1 %1014 to i8
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1015, i8* %1016, align 1, !tbaa !2448
  %1017 = lshr i32 %994, 31
  %1018 = trunc i32 %1017 to i8
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1018, i8* %1019, align 1, !tbaa !2449
  %1020 = lshr i32 %993, 31
  %1021 = xor i32 %1017, %1020
  %1022 = add nuw nsw i32 %1021, %1017
  %1023 = icmp eq i32 %1022, 2
  %1024 = zext i1 %1023 to i8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1024, i8* %1025, align 1, !tbaa !2450
  %1026 = load i8, i8* %DIL
  %1027 = zext i8 %1026 to i64
  %1028 = load i64, i64* %PC
  %1029 = add i64 %1028, 3
  store i64 %1029, i64* %PC
  store i8 %1026, i8* %AL, align 1, !tbaa !2451
  %1030 = load i64, i64* %RBP
  %1031 = sub i64 %1030, 24
  %1032 = load i64, i64* %PC
  %1033 = add i64 %1032, 4
  store i64 %1033, i64* %PC
  %1034 = inttoptr i64 %1031 to i64*
  %1035 = load i64, i64* %1034
  store i64 %1035, i64* %RCX, align 8, !tbaa !2428
  %1036 = load i64, i64* %RBP
  %1037 = sub i64 %1036, 12
  %1038 = load i64, i64* %PC
  %1039 = add i64 %1038, 4
  store i64 %1039, i64* %PC
  %1040 = inttoptr i64 %1037 to i32*
  %1041 = load i32, i32* %1040
  %1042 = sext i32 %1041 to i64
  store i64 %1042, i64* %RSI, align 8, !tbaa !2428
  %1043 = load i64, i64* %RCX
  %1044 = load i64, i64* %RSI
  %1045 = add i64 %1043, 10
  %1046 = add i64 %1045, %1044
  %1047 = load i8, i8* %AL
  %1048 = zext i8 %1047 to i64
  %1049 = load i64, i64* %PC
  %1050 = add i64 %1049, 4
  store i64 %1050, i64* %PC
  %1051 = inttoptr i64 %1046 to i8*
  store i8 %1047, i8* %1051
  %1052 = load i64, i64* %RBP
  %1053 = sub i64 %1052, 27
  %1054 = load i64, i64* %PC
  %1055 = add i64 %1054, 4
  store i64 %1055, i64* %PC
  %1056 = inttoptr i64 %1053 to i8*
  %1057 = load i8, i8* %1056
  %1058 = sext i8 %1057 to i64
  %1059 = and i64 %1058, 4294967295
  store i64 %1059, i64* %RDI, align 8, !tbaa !2428
  %1060 = load i64, i64* %RDI
  %1061 = load i64, i64* %PC
  %1062 = add i64 %1061, 3
  store i64 %1062, i64* %PC
  %1063 = and i64 15, %1060
  %1064 = trunc i64 %1063 to i32
  store i64 %1063, i64* %RDI, align 8, !tbaa !2428
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1065, align 1, !tbaa !2432
  %1066 = and i32 %1064, 255
  %1067 = call i32 @llvm.ctpop.i32(i32 %1066) #16
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  %1070 = xor i8 %1069, 1
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1070, i8* %1071, align 1, !tbaa !2446
  %1072 = icmp eq i32 %1064, 0
  %1073 = zext i1 %1072 to i8
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1073, i8* %1074, align 1, !tbaa !2448
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1075, align 1, !tbaa !2449
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1076, align 1, !tbaa !2450
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1077, align 1, !tbaa !2447
  %1078 = load i64, i64* %RDI
  %1079 = load i64, i64* %PC
  %1080 = add i64 %1079, 3
  store i64 %1080, i64* %PC
  %1081 = trunc i64 %1078 to i32
  %1082 = add i32 48, %1081
  %1083 = zext i32 %1082 to i64
  store i64 %1083, i64* %RDI, align 8, !tbaa !2428
  %1084 = icmp ult i32 %1082, %1081
  %1085 = icmp ult i32 %1082, 48
  %1086 = or i1 %1084, %1085
  %1087 = zext i1 %1086 to i8
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1087, i8* %1088, align 1, !tbaa !2432
  %1089 = and i32 %1082, 255
  %1090 = call i32 @llvm.ctpop.i32(i32 %1089) #16
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = xor i8 %1092, 1
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1093, i8* %1094, align 1, !tbaa !2446
  %1095 = xor i64 48, %1078
  %1096 = trunc i64 %1095 to i32
  %1097 = xor i32 %1096, %1082
  %1098 = lshr i32 %1097, 4
  %1099 = trunc i32 %1098 to i8
  %1100 = and i8 %1099, 1
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1100, i8* %1101, align 1, !tbaa !2447
  %1102 = icmp eq i32 %1082, 0
  %1103 = zext i1 %1102 to i8
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1103, i8* %1104, align 1, !tbaa !2448
  %1105 = lshr i32 %1082, 31
  %1106 = trunc i32 %1105 to i8
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1106, i8* %1107, align 1, !tbaa !2449
  %1108 = lshr i32 %1081, 31
  %1109 = xor i32 %1105, %1108
  %1110 = add nuw nsw i32 %1109, %1105
  %1111 = icmp eq i32 %1110, 2
  %1112 = zext i1 %1111 to i8
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1112, i8* %1113, align 1, !tbaa !2450
  %1114 = load i8, i8* %DIL
  %1115 = zext i8 %1114 to i64
  %1116 = load i64, i64* %PC
  %1117 = add i64 %1116, 3
  store i64 %1117, i64* %PC
  store i8 %1114, i8* %AL, align 1, !tbaa !2451
  %1118 = load i64, i64* %RBP
  %1119 = sub i64 %1118, 24
  %1120 = load i64, i64* %PC
  %1121 = add i64 %1120, 4
  store i64 %1121, i64* %PC
  %1122 = inttoptr i64 %1119 to i64*
  %1123 = load i64, i64* %1122
  store i64 %1123, i64* %RCX, align 8, !tbaa !2428
  %1124 = load i64, i64* %RBP
  %1125 = sub i64 %1124, 12
  %1126 = load i64, i64* %PC
  %1127 = add i64 %1126, 4
  store i64 %1127, i64* %PC
  %1128 = inttoptr i64 %1125 to i32*
  %1129 = load i32, i32* %1128
  %1130 = sext i32 %1129 to i64
  store i64 %1130, i64* %RSI, align 8, !tbaa !2428
  %1131 = load i64, i64* %RCX
  %1132 = load i64, i64* %RSI
  %1133 = add i64 %1131, 11
  %1134 = add i64 %1133, %1132
  %1135 = load i8, i8* %AL
  %1136 = zext i8 %1135 to i64
  %1137 = load i64, i64* %PC
  %1138 = add i64 %1137, 4
  store i64 %1138, i64* %PC
  %1139 = inttoptr i64 %1134 to i8*
  store i8 %1135, i8* %1139
  %1140 = load i64, i64* %RBP
  %1141 = sub i64 %1140, 26
  %1142 = load i64, i64* %PC
  %1143 = add i64 %1142, 4
  store i64 %1143, i64* %PC
  %1144 = inttoptr i64 %1141 to i8*
  %1145 = load i8, i8* %1144
  %1146 = sext i8 %1145 to i64
  %1147 = and i64 %1146, 4294967295
  store i64 %1147, i64* %RDI, align 8, !tbaa !2428
  %1148 = load i64, i64* %RDI
  %1149 = load i64, i64* %PC
  %1150 = add i64 %1149, 3
  store i64 %1150, i64* %PC
  %1151 = and i64 15, %1148
  %1152 = trunc i64 %1151 to i32
  store i64 %1151, i64* %RDI, align 8, !tbaa !2428
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1153, align 1, !tbaa !2432
  %1154 = and i32 %1152, 255
  %1155 = call i32 @llvm.ctpop.i32(i32 %1154) #16
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1158, i8* %1159, align 1, !tbaa !2446
  %1160 = icmp eq i32 %1152, 0
  %1161 = zext i1 %1160 to i8
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1161, i8* %1162, align 1, !tbaa !2448
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1163, align 1, !tbaa !2449
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1164, align 1, !tbaa !2450
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1165, align 1, !tbaa !2447
  %1166 = load i64, i64* %RDI
  %1167 = load i64, i64* %PC
  %1168 = add i64 %1167, 3
  store i64 %1168, i64* %PC
  %1169 = trunc i64 %1166 to i32
  %1170 = add i32 48, %1169
  %1171 = zext i32 %1170 to i64
  store i64 %1171, i64* %RDI, align 8, !tbaa !2428
  %1172 = icmp ult i32 %1170, %1169
  %1173 = icmp ult i32 %1170, 48
  %1174 = or i1 %1172, %1173
  %1175 = zext i1 %1174 to i8
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1175, i8* %1176, align 1, !tbaa !2432
  %1177 = and i32 %1170, 255
  %1178 = call i32 @llvm.ctpop.i32(i32 %1177) #16
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = xor i8 %1180, 1
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1181, i8* %1182, align 1, !tbaa !2446
  %1183 = xor i64 48, %1166
  %1184 = trunc i64 %1183 to i32
  %1185 = xor i32 %1184, %1170
  %1186 = lshr i32 %1185, 4
  %1187 = trunc i32 %1186 to i8
  %1188 = and i8 %1187, 1
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1188, i8* %1189, align 1, !tbaa !2447
  %1190 = icmp eq i32 %1170, 0
  %1191 = zext i1 %1190 to i8
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1191, i8* %1192, align 1, !tbaa !2448
  %1193 = lshr i32 %1170, 31
  %1194 = trunc i32 %1193 to i8
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1194, i8* %1195, align 1, !tbaa !2449
  %1196 = lshr i32 %1169, 31
  %1197 = xor i32 %1193, %1196
  %1198 = add nuw nsw i32 %1197, %1193
  %1199 = icmp eq i32 %1198, 2
  %1200 = zext i1 %1199 to i8
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1200, i8* %1201, align 1, !tbaa !2450
  %1202 = load i8, i8* %DIL
  %1203 = zext i8 %1202 to i64
  %1204 = load i64, i64* %PC
  %1205 = add i64 %1204, 3
  store i64 %1205, i64* %PC
  store i8 %1202, i8* %AL, align 1, !tbaa !2451
  %1206 = load i64, i64* %RBP
  %1207 = sub i64 %1206, 24
  %1208 = load i64, i64* %PC
  %1209 = add i64 %1208, 4
  store i64 %1209, i64* %PC
  %1210 = inttoptr i64 %1207 to i64*
  %1211 = load i64, i64* %1210
  store i64 %1211, i64* %RCX, align 8, !tbaa !2428
  %1212 = load i64, i64* %RBP
  %1213 = sub i64 %1212, 12
  %1214 = load i64, i64* %PC
  %1215 = add i64 %1214, 4
  store i64 %1215, i64* %PC
  %1216 = inttoptr i64 %1213 to i32*
  %1217 = load i32, i32* %1216
  %1218 = sext i32 %1217 to i64
  store i64 %1218, i64* %RSI, align 8, !tbaa !2428
  %1219 = load i64, i64* %RCX
  %1220 = load i64, i64* %RSI
  %1221 = add i64 %1219, 12
  %1222 = add i64 %1221, %1220
  %1223 = load i8, i8* %AL
  %1224 = zext i8 %1223 to i64
  %1225 = load i64, i64* %PC
  %1226 = add i64 %1225, 4
  store i64 %1226, i64* %PC
  %1227 = inttoptr i64 %1222 to i8*
  store i8 %1223, i8* %1227
  %1228 = load i64, i64* %RBP
  %1229 = sub i64 %1228, 26
  %1230 = load i64, i64* %PC
  %1231 = add i64 %1230, 4
  store i64 %1231, i64* %PC
  %1232 = inttoptr i64 %1229 to i8*
  %1233 = load i8, i8* %1232
  %1234 = sext i8 %1233 to i64
  %1235 = and i64 %1234, 4294967295
  store i64 %1235, i64* %RDI, align 8, !tbaa !2428
  %1236 = load i64, i64* %RDI
  %1237 = load i64, i64* %PC
  %1238 = add i64 %1237, 3
  store i64 %1238, i64* %PC
  %1239 = and i64 15, %1236
  %1240 = trunc i64 %1239 to i32
  store i64 %1239, i64* %RDI, align 8, !tbaa !2428
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1241, align 1, !tbaa !2432
  %1242 = and i32 %1240, 255
  %1243 = call i32 @llvm.ctpop.i32(i32 %1242) #16
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1246, i8* %1247, align 1, !tbaa !2446
  %1248 = icmp eq i32 %1240, 0
  %1249 = zext i1 %1248 to i8
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1249, i8* %1250, align 1, !tbaa !2448
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1251, align 1, !tbaa !2449
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1252, align 1, !tbaa !2450
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1253, align 1, !tbaa !2447
  %1254 = load i64, i64* %RDI
  %1255 = load i64, i64* %PC
  %1256 = add i64 %1255, 3
  store i64 %1256, i64* %PC
  %1257 = trunc i64 %1254 to i32
  %1258 = add i32 48, %1257
  %1259 = zext i32 %1258 to i64
  store i64 %1259, i64* %RDI, align 8, !tbaa !2428
  %1260 = icmp ult i32 %1258, %1257
  %1261 = icmp ult i32 %1258, 48
  %1262 = or i1 %1260, %1261
  %1263 = zext i1 %1262 to i8
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1263, i8* %1264, align 1, !tbaa !2432
  %1265 = and i32 %1258, 255
  %1266 = call i32 @llvm.ctpop.i32(i32 %1265) #16
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  %1269 = xor i8 %1268, 1
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1269, i8* %1270, align 1, !tbaa !2446
  %1271 = xor i64 48, %1254
  %1272 = trunc i64 %1271 to i32
  %1273 = xor i32 %1272, %1258
  %1274 = lshr i32 %1273, 4
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1276, i8* %1277, align 1, !tbaa !2447
  %1278 = icmp eq i32 %1258, 0
  %1279 = zext i1 %1278 to i8
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1279, i8* %1280, align 1, !tbaa !2448
  %1281 = lshr i32 %1258, 31
  %1282 = trunc i32 %1281 to i8
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1282, i8* %1283, align 1, !tbaa !2449
  %1284 = lshr i32 %1257, 31
  %1285 = xor i32 %1281, %1284
  %1286 = add nuw nsw i32 %1285, %1281
  %1287 = icmp eq i32 %1286, 2
  %1288 = zext i1 %1287 to i8
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1288, i8* %1289, align 1, !tbaa !2450
  %1290 = load i8, i8* %DIL
  %1291 = zext i8 %1290 to i64
  %1292 = load i64, i64* %PC
  %1293 = add i64 %1292, 3
  store i64 %1293, i64* %PC
  store i8 %1290, i8* %AL, align 1, !tbaa !2451
  %1294 = load i64, i64* %RBP
  %1295 = sub i64 %1294, 24
  %1296 = load i64, i64* %PC
  %1297 = add i64 %1296, 4
  store i64 %1297, i64* %PC
  %1298 = inttoptr i64 %1295 to i64*
  %1299 = load i64, i64* %1298
  store i64 %1299, i64* %RCX, align 8, !tbaa !2428
  %1300 = load i64, i64* %RBP
  %1301 = sub i64 %1300, 12
  %1302 = load i64, i64* %PC
  %1303 = add i64 %1302, 4
  store i64 %1303, i64* %PC
  %1304 = inttoptr i64 %1301 to i32*
  %1305 = load i32, i32* %1304
  %1306 = sext i32 %1305 to i64
  store i64 %1306, i64* %RSI, align 8, !tbaa !2428
  %1307 = load i64, i64* %RCX
  %1308 = load i64, i64* %RSI
  %1309 = add i64 %1307, 13
  %1310 = add i64 %1309, %1308
  %1311 = load i8, i8* %AL
  %1312 = zext i8 %1311 to i64
  %1313 = load i64, i64* %PC
  %1314 = add i64 %1313, 4
  store i64 %1314, i64* %PC
  %1315 = inttoptr i64 %1310 to i8*
  store i8 %1311, i8* %1315
  %1316 = load i64, i64* %RBP
  %1317 = sub i64 %1316, 25
  %1318 = load i64, i64* %PC
  %1319 = add i64 %1318, 4
  store i64 %1319, i64* %PC
  %1320 = inttoptr i64 %1317 to i8*
  %1321 = load i8, i8* %1320
  %1322 = sext i8 %1321 to i64
  %1323 = and i64 %1322, 4294967295
  store i64 %1323, i64* %RDI, align 8, !tbaa !2428
  %1324 = load i64, i64* %RDI
  %1325 = load i64, i64* %PC
  %1326 = add i64 %1325, 3
  store i64 %1326, i64* %PC
  %1327 = and i64 15, %1324
  %1328 = trunc i64 %1327 to i32
  store i64 %1327, i64* %RDI, align 8, !tbaa !2428
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1329, align 1, !tbaa !2432
  %1330 = and i32 %1328, 255
  %1331 = call i32 @llvm.ctpop.i32(i32 %1330) #16
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  %1334 = xor i8 %1333, 1
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1334, i8* %1335, align 1, !tbaa !2446
  %1336 = icmp eq i32 %1328, 0
  %1337 = zext i1 %1336 to i8
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1337, i8* %1338, align 1, !tbaa !2448
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1339, align 1, !tbaa !2449
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1340, align 1, !tbaa !2450
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1341, align 1, !tbaa !2447
  %1342 = load i64, i64* %RDI
  %1343 = load i64, i64* %PC
  %1344 = add i64 %1343, 3
  store i64 %1344, i64* %PC
  %1345 = trunc i64 %1342 to i32
  %1346 = add i32 48, %1345
  %1347 = zext i32 %1346 to i64
  store i64 %1347, i64* %RDI, align 8, !tbaa !2428
  %1348 = icmp ult i32 %1346, %1345
  %1349 = icmp ult i32 %1346, 48
  %1350 = or i1 %1348, %1349
  %1351 = zext i1 %1350 to i8
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1351, i8* %1352, align 1, !tbaa !2432
  %1353 = and i32 %1346, 255
  %1354 = call i32 @llvm.ctpop.i32(i32 %1353) #16
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = xor i8 %1356, 1
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1357, i8* %1358, align 1, !tbaa !2446
  %1359 = xor i64 48, %1342
  %1360 = trunc i64 %1359 to i32
  %1361 = xor i32 %1360, %1346
  %1362 = lshr i32 %1361, 4
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1364, i8* %1365, align 1, !tbaa !2447
  %1366 = icmp eq i32 %1346, 0
  %1367 = zext i1 %1366 to i8
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1367, i8* %1368, align 1, !tbaa !2448
  %1369 = lshr i32 %1346, 31
  %1370 = trunc i32 %1369 to i8
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1370, i8* %1371, align 1, !tbaa !2449
  %1372 = lshr i32 %1345, 31
  %1373 = xor i32 %1369, %1372
  %1374 = add nuw nsw i32 %1373, %1369
  %1375 = icmp eq i32 %1374, 2
  %1376 = zext i1 %1375 to i8
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1376, i8* %1377, align 1, !tbaa !2450
  %1378 = load i8, i8* %DIL
  %1379 = zext i8 %1378 to i64
  %1380 = load i64, i64* %PC
  %1381 = add i64 %1380, 3
  store i64 %1381, i64* %PC
  store i8 %1378, i8* %AL, align 1, !tbaa !2451
  %1382 = load i64, i64* %RBP
  %1383 = sub i64 %1382, 24
  %1384 = load i64, i64* %PC
  %1385 = add i64 %1384, 4
  store i64 %1385, i64* %PC
  %1386 = inttoptr i64 %1383 to i64*
  %1387 = load i64, i64* %1386
  store i64 %1387, i64* %RCX, align 8, !tbaa !2428
  %1388 = load i64, i64* %RBP
  %1389 = sub i64 %1388, 12
  %1390 = load i64, i64* %PC
  %1391 = add i64 %1390, 4
  store i64 %1391, i64* %PC
  %1392 = inttoptr i64 %1389 to i32*
  %1393 = load i32, i32* %1392
  %1394 = sext i32 %1393 to i64
  store i64 %1394, i64* %RSI, align 8, !tbaa !2428
  %1395 = load i64, i64* %RCX
  %1396 = load i64, i64* %RSI
  %1397 = add i64 %1395, 14
  %1398 = add i64 %1397, %1396
  %1399 = load i8, i8* %AL
  %1400 = zext i8 %1399 to i64
  %1401 = load i64, i64* %PC
  %1402 = add i64 %1401, 4
  store i64 %1402, i64* %PC
  %1403 = inttoptr i64 %1398 to i8*
  store i8 %1399, i8* %1403
  %1404 = load i64, i64* %RBP
  %1405 = sub i64 %1404, 25
  %1406 = load i64, i64* %PC
  %1407 = add i64 %1406, 4
  store i64 %1407, i64* %PC
  %1408 = inttoptr i64 %1405 to i8*
  %1409 = load i8, i8* %1408
  %1410 = sext i8 %1409 to i64
  %1411 = and i64 %1410, 4294967295
  store i64 %1411, i64* %RDI, align 8, !tbaa !2428
  %1412 = load i64, i64* %RDI
  %1413 = load i64, i64* %PC
  %1414 = add i64 %1413, 3
  store i64 %1414, i64* %PC
  %1415 = and i64 15, %1412
  %1416 = trunc i64 %1415 to i32
  store i64 %1415, i64* %RDI, align 8, !tbaa !2428
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1417, align 1, !tbaa !2432
  %1418 = and i32 %1416, 255
  %1419 = call i32 @llvm.ctpop.i32(i32 %1418) #16
  %1420 = trunc i32 %1419 to i8
  %1421 = and i8 %1420, 1
  %1422 = xor i8 %1421, 1
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1422, i8* %1423, align 1, !tbaa !2446
  %1424 = icmp eq i32 %1416, 0
  %1425 = zext i1 %1424 to i8
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1425, i8* %1426, align 1, !tbaa !2448
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1427, align 1, !tbaa !2449
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1428, align 1, !tbaa !2450
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1429, align 1, !tbaa !2447
  %1430 = load i64, i64* %RDI
  %1431 = load i64, i64* %PC
  %1432 = add i64 %1431, 3
  store i64 %1432, i64* %PC
  %1433 = trunc i64 %1430 to i32
  %1434 = add i32 48, %1433
  %1435 = zext i32 %1434 to i64
  store i64 %1435, i64* %RDI, align 8, !tbaa !2428
  %1436 = icmp ult i32 %1434, %1433
  %1437 = icmp ult i32 %1434, 48
  %1438 = or i1 %1436, %1437
  %1439 = zext i1 %1438 to i8
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1439, i8* %1440, align 1, !tbaa !2432
  %1441 = and i32 %1434, 255
  %1442 = call i32 @llvm.ctpop.i32(i32 %1441) #16
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1445, i8* %1446, align 1, !tbaa !2446
  %1447 = xor i64 48, %1430
  %1448 = trunc i64 %1447 to i32
  %1449 = xor i32 %1448, %1434
  %1450 = lshr i32 %1449, 4
  %1451 = trunc i32 %1450 to i8
  %1452 = and i8 %1451, 1
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1452, i8* %1453, align 1, !tbaa !2447
  %1454 = icmp eq i32 %1434, 0
  %1455 = zext i1 %1454 to i8
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1455, i8* %1456, align 1, !tbaa !2448
  %1457 = lshr i32 %1434, 31
  %1458 = trunc i32 %1457 to i8
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1458, i8* %1459, align 1, !tbaa !2449
  %1460 = lshr i32 %1433, 31
  %1461 = xor i32 %1457, %1460
  %1462 = add nuw nsw i32 %1461, %1457
  %1463 = icmp eq i32 %1462, 2
  %1464 = zext i1 %1463 to i8
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1464, i8* %1465, align 1, !tbaa !2450
  %1466 = load i8, i8* %DIL
  %1467 = zext i8 %1466 to i64
  %1468 = load i64, i64* %PC
  %1469 = add i64 %1468, 3
  store i64 %1469, i64* %PC
  store i8 %1466, i8* %AL, align 1, !tbaa !2451
  %1470 = load i64, i64* %RBP
  %1471 = sub i64 %1470, 24
  %1472 = load i64, i64* %PC
  %1473 = add i64 %1472, 4
  store i64 %1473, i64* %PC
  %1474 = inttoptr i64 %1471 to i64*
  %1475 = load i64, i64* %1474
  store i64 %1475, i64* %RCX, align 8, !tbaa !2428
  %1476 = load i64, i64* %RBP
  %1477 = sub i64 %1476, 12
  %1478 = load i64, i64* %PC
  %1479 = add i64 %1478, 4
  store i64 %1479, i64* %PC
  %1480 = inttoptr i64 %1477 to i32*
  %1481 = load i32, i32* %1480
  %1482 = sext i32 %1481 to i64
  store i64 %1482, i64* %RSI, align 8, !tbaa !2428
  %1483 = load i64, i64* %RCX
  %1484 = load i64, i64* %RSI
  %1485 = add i64 %1483, 15
  %1486 = add i64 %1485, %1484
  %1487 = load i8, i8* %AL
  %1488 = zext i8 %1487 to i64
  %1489 = load i64, i64* %PC
  %1490 = add i64 %1489, 4
  store i64 %1490, i64* %PC
  %1491 = inttoptr i64 %1486 to i8*
  store i8 %1487, i8* %1491
  %1492 = load i64, i64* %PC
  %1493 = add i64 %1492, 1
  store i64 %1493, i64* %PC
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1495 = load i64, i64* %1494, align 8, !tbaa !2428
  %1496 = add i64 %1495, 8
  %1497 = inttoptr i64 %1495 to i64*
  %1498 = load i64, i64* %1497
  store i64 %1498, i64* %RBP, align 8, !tbaa !2428
  store i64 %1496, i64* %1494, align 8, !tbaa !2428
  %1499 = load i64, i64* %PC
  %1500 = add i64 %1499, 1
  store i64 %1500, i64* %PC
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1503 = load i64, i64* %1502, align 8, !tbaa !2428
  %1504 = inttoptr i64 %1503 to i64*
  %1505 = load i64, i64* %1504
  store i64 %1505, i64* %1501, align 8, !tbaa !2428
  %1506 = add i64 %1503, 8
  store i64 %1506, i64* %1502, align 8, !tbaa !2428
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005c8__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005c8:
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
  br i1 %80, label %block_4005da, label %block_4005d8

block_4005d8:                                     ; preds = %block_4005c8
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
  br label %block_4005da

block_4005da:                                     ; preds = %block_4005d8, %block_4005c8
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005c8 ], [ %92, %block_4005d8 ]
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
define %struct.Memory* @sub_4006b0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  store i64 6299752, i64* %RAX, align 8, !tbaa !2428
  %33 = load i64, i64* %RAX
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 6
  store i64 %35, i64* %PC
  %36 = sub i64 %33, 6299752
  %37 = icmp ult i64 %33, 6299752
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
  %47 = xor i64 6299752, %33
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
  %60 = xor i64 %56, %59
  %61 = add nuw nsw i64 %60, %59
  %62 = icmp eq i64 %61, 2
  %63 = zext i1 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %63, i8* %64, align 1, !tbaa !2450
  %65 = load i64, i64* %RSP
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 3
  store i64 %67, i64* %PC
  store i64 %65, i64* %RBP, align 8, !tbaa !2428
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 25
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
  br i1 %80, label %block_4006d8, label %block_4006c1

block_4006d8:                                     ; preds = %block_4006c1, %block_4006d3, %block_4006b0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4006b0 ], [ %2, %block_4006c1 ], [ %2, %block_4006d3 ]
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
  ret %struct.Memory* %MEMORY.0

block_4006da:                                     ; preds = %block_4006cb
  %96 = load i64, i64* %RAX
  %97 = load i64, i64* %RAX
  %98 = add i64 %97, %96
  %99 = load i16, i16* %AX
  %100 = zext i16 %99 to i64
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 6
  store i64 %102, i64* %PC
  %103 = load i64, i64* %PC
  %104 = tail call %struct.Memory* @sub_4006e0_register_tm_clones(%struct.State* %0, i64 %103, %struct.Memory* %2)
  ret %struct.Memory* %104

block_4006d3:                                     ; preds = %block_4006cb
  %105 = load i64, i64* %RAX
  %106 = load i64, i64* %RAX
  %107 = add i64 %106, %105
  %108 = load i32, i32* %EAX
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 5
  store i64 %111, i64* %PC
  br label %block_4006d8

block_4006cb:                                     ; preds = %block_4006c1
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 1
  store i64 %113, i64* %PC
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %115 = load i64, i64* %114, align 8, !tbaa !2428
  %116 = add i64 %115, 8
  %117 = inttoptr i64 %115 to i64*
  %118 = load i64, i64* %117
  store i64 %118, i64* %RBP, align 8, !tbaa !2428
  store i64 %116, i64* %114, align 8, !tbaa !2428
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 5
  store i64 %120, i64* %PC
  store i64 6299752, i64* %RDI, align 8, !tbaa !2428
  %121 = load i64, i64* %RAX
  %122 = load i64, i64* %PC
  %123 = add i64 %122, 2
  store i64 %123, i64* %PC
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %121, i64* %124, align 8, !tbaa !2428
  %125 = load i64, i64* %PC
  switch i64 %125, label %162 [
    i64 4196058, label %block_4006da
    i64 4196051, label %block_4006d3
  ]

block_4006c1:                                     ; preds = %block_4006b0
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 5
  store i64 %127, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %128 = load i64, i64* %RAX
  %129 = load i64, i64* %RAX
  %130 = load i64, i64* %PC
  %131 = add i64 %130, 3
  store i64 %131, i64* %PC
  %132 = and i64 %129, %128
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %133, align 1, !tbaa !2432
  %134 = trunc i64 %132 to i32
  %135 = and i32 %134, 255
  %136 = call i32 @llvm.ctpop.i32(i32 %135) #16
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %139, i8* %140, align 1, !tbaa !2446
  %141 = icmp eq i64 %132, 0
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %142, i8* %143, align 1, !tbaa !2448
  %144 = lshr i64 %132, 63
  %145 = trunc i64 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %145, i8* %146, align 1, !tbaa !2449
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %147, align 1, !tbaa !2450
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %148, align 1, !tbaa !2447
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 15
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 2
  %153 = load i64, i64* %PC
  %154 = add i64 %153, 2
  store i64 %154, i64* %PC
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %156 = load i8, i8* %155, align 1, !tbaa !2448
  store i8 %156, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %158 = icmp ne i8 %156, 0
  %159 = select i1 %158, i64 %150, i64 %152
  store i64 %159, i64* %157, align 8, !tbaa !2428
  %160 = load i8, i8* %BRANCH_TAKEN
  %161 = icmp eq i8 %160, 1
  br i1 %161, label %block_4006d8, label %block_4006cb

; <label>:162:                                    ; preds = %block_4006cb
  %163 = load i64, i64* %PC
  %164 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %163, %struct.Memory* %2)
  ret %struct.Memory* %164
}

; Function Attrs: noinline
define %struct.Memory* @sub_400c20_kernel_bicg(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400c20:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %EDI = bitcast %union.anon* %14 to i32*
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
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %37 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %36, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %37 to %"class.std::bitset"*
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %39 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %38, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %39 to %"class.std::bitset"*
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %41 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %41 to %union.vec128_t*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %43 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %42, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %43 to %union.vec128_t*
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
  %54 = load i64, i64* %RBP
  %55 = add i64 %54, 16
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 4
  store i64 %57, i64* %PC
  %58 = inttoptr i64 %55 to i64*
  %59 = load i64, i64* %58
  store i64 %59, i64* %RAX, align 8, !tbaa !2428
  %60 = load i64, i64* %RBP
  %61 = sub i64 %60, 4
  %62 = load i32, i32* %EDI
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 3
  store i64 %65, i64* %PC
  %66 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %66
  %67 = load i64, i64* %RBP
  %68 = sub i64 %67, 8
  %69 = load i32, i32* %ESI
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 3
  store i64 %72, i64* %PC
  %73 = inttoptr i64 %68 to i32*
  store i32 %69, i32* %73
  %74 = load i64, i64* %RBP
  %75 = sub i64 %74, 16
  %76 = load i64, i64* %RDX
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 4
  store i64 %78, i64* %PC
  %79 = inttoptr i64 %75 to i64*
  store i64 %76, i64* %79
  %80 = load i64, i64* %RBP
  %81 = sub i64 %80, 24
  %82 = load i64, i64* %RCX
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 4
  store i64 %84, i64* %PC
  %85 = inttoptr i64 %81 to i64*
  store i64 %82, i64* %85
  %86 = load i64, i64* %RBP
  %87 = sub i64 %86, 32
  %88 = load i64, i64* %R8
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 4
  store i64 %90, i64* %PC
  %91 = inttoptr i64 %87 to i64*
  store i64 %88, i64* %91
  %92 = load i64, i64* %RBP
  %93 = sub i64 %92, 40
  %94 = load i64, i64* %R9
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97
  %98 = load i64, i64* %RBP
  %99 = sub i64 %98, 48
  %100 = load i64, i64* %RAX
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 4
  store i64 %102, i64* %PC
  %103 = inttoptr i64 %99 to i64*
  store i64 %100, i64* %103
  %104 = load i64, i64* %RBP
  %105 = sub i64 %104, 52
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 7
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %105 to i32*
  store i32 0, i32* %108
  br label %block_400c49

block_400c9d:                                     ; preds = %block_400c86, %block_400ca9
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_400c86 ], [ %MEMORY.0, %block_400ca9 ]
  %109 = load i64, i64* %RBP
  %110 = sub i64 %109, 56
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC
  %113 = inttoptr i64 %110 to i32*
  %114 = load i32, i32* %113
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RAX, align 8, !tbaa !2428
  %116 = load i32, i32* %EAX
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* %RBP
  %119 = sub i64 %118, 8
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 3
  store i64 %121, i64* %PC
  %122 = inttoptr i64 %119 to i32*
  %123 = load i32, i32* %122
  %124 = sub i32 %116, %123
  %125 = icmp ult i32 %116, %123
  %126 = zext i1 %125 to i8
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %126, i8* %127, align 1, !tbaa !2432
  %128 = and i32 %124, 255
  %129 = call i32 @llvm.ctpop.i32(i32 %128) #16
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %132, i8* %133, align 1, !tbaa !2446
  %134 = xor i32 %123, %116
  %135 = xor i32 %134, %124
  %136 = lshr i32 %135, 4
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %138, i8* %139, align 1, !tbaa !2447
  %140 = icmp eq i32 %124, 0
  %141 = zext i1 %140 to i8
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %141, i8* %142, align 1, !tbaa !2448
  %143 = lshr i32 %124, 31
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %144, i8* %145, align 1, !tbaa !2449
  %146 = lshr i32 %116, 31
  %147 = lshr i32 %123, 31
  %148 = xor i32 %147, %146
  %149 = xor i32 %143, %146
  %150 = add nuw nsw i32 %149, %148
  %151 = icmp eq i32 %150, 2
  %152 = zext i1 %151 to i8
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %152, i8* %153, align 1, !tbaa !2450
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 160
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 6
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 6
  store i64 %159, i64* %PC
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %161 = load i8, i8* %160, align 1, !tbaa !2449
  %162 = icmp ne i8 %161, 0
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %164 = load i8, i8* %163, align 1, !tbaa !2450
  %165 = icmp ne i8 %164, 0
  %166 = xor i1 %162, %165
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %170 = select i1 %166, i64 %157, i64 %155
  store i64 %170, i64* %169, align 8, !tbaa !2428
  %171 = load i8, i8* %BRANCH_TAKEN
  %172 = icmp eq i8 %171, 1
  br i1 %172, label %block_400d43, label %block_400ca9

block_400c7a:                                     ; preds = %block_400d43, %block_400c73
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.2, %block_400c73 ], [ %MEMORY.0, %block_400d43 ]
  %173 = load i64, i64* %RBP
  %174 = sub i64 %173, 52
  %175 = load i64, i64* %PC
  %176 = add i64 %175, 3
  store i64 %176, i64* %PC
  %177 = inttoptr i64 %174 to i32*
  %178 = load i32, i32* %177
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RAX, align 8, !tbaa !2428
  %180 = load i32, i32* %EAX
  %181 = zext i32 %180 to i64
  %182 = load i64, i64* %RBP
  %183 = sub i64 %182, 4
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 3
  store i64 %185, i64* %PC
  %186 = inttoptr i64 %183 to i32*
  %187 = load i32, i32* %186
  %188 = sub i32 %180, %187
  %189 = icmp ult i32 %180, %187
  %190 = zext i1 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %190, i8* %191, align 1, !tbaa !2432
  %192 = and i32 %188, 255
  %193 = call i32 @llvm.ctpop.i32(i32 %192) #16
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %196, i8* %197, align 1, !tbaa !2446
  %198 = xor i32 %187, %180
  %199 = xor i32 %198, %188
  %200 = lshr i32 %199, 4
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %202, i8* %203, align 1, !tbaa !2447
  %204 = icmp eq i32 %188, 0
  %205 = zext i1 %204 to i8
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %205, i8* %206, align 1, !tbaa !2448
  %207 = lshr i32 %188, 31
  %208 = trunc i32 %207 to i8
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %208, i8* %209, align 1, !tbaa !2449
  %210 = lshr i32 %180, 31
  %211 = lshr i32 %187, 31
  %212 = xor i32 %211, %210
  %213 = xor i32 %207, %210
  %214 = add nuw nsw i32 %213, %212
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %216, i8* %217, align 1, !tbaa !2450
  %218 = load i64, i64* %PC
  %219 = add i64 %218, 214
  %220 = load i64, i64* %PC
  %221 = add i64 %220, 6
  %222 = load i64, i64* %PC
  %223 = add i64 %222, 6
  store i64 %223, i64* %PC
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %225 = load i8, i8* %224, align 1, !tbaa !2449
  %226 = icmp ne i8 %225, 0
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %228 = load i8, i8* %227, align 1, !tbaa !2450
  %229 = icmp ne i8 %228, 0
  %230 = xor i1 %226, %229
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %234 = select i1 %230, i64 %221, i64 %219
  store i64 %234, i64* %233, align 8, !tbaa !2428
  %235 = load i8, i8* %BRANCH_TAKEN
  %236 = icmp eq i8 %235, 1
  br i1 %236, label %block_400d56, label %block_400c86

block_400ca9:                                     ; preds = %block_400c9d
  %237 = load i64, i64* %RBP
  %238 = sub i64 %237, 24
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 4
  store i64 %240, i64* %PC
  %241 = inttoptr i64 %238 to i64*
  %242 = load i64, i64* %241
  store i64 %242, i64* %RAX, align 8, !tbaa !2428
  %243 = load i64, i64* %RBP
  %244 = sub i64 %243, 56
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 4
  store i64 %246, i64* %PC
  %247 = inttoptr i64 %244 to i32*
  %248 = load i32, i32* %247
  %249 = sext i32 %248 to i64
  store i64 %249, i64* %RCX, align 8, !tbaa !2428
  %250 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %251 = load i64, i64* %RAX
  %252 = load i64, i64* %RCX
  %253 = mul i64 %252, 8
  %254 = add i64 %253, %251
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 5
  store i64 %256, i64* %PC
  %257 = inttoptr i64 %254 to double*
  %258 = load double, double* %257
  %259 = bitcast i8* %250 to double*
  store double %258, double* %259, align 1, !tbaa !2452
  %260 = getelementptr inbounds i8, i8* %250, i64 8
  %261 = bitcast i8* %260 to double*
  store double 0.000000e+00, double* %261, align 1, !tbaa !2452
  %262 = load i64, i64* %RBP
  %263 = sub i64 %262, 48
  %264 = load i64, i64* %PC
  %265 = add i64 %264, 4
  store i64 %265, i64* %PC
  %266 = inttoptr i64 %263 to i64*
  %267 = load i64, i64* %266
  store i64 %267, i64* %RAX, align 8, !tbaa !2428
  %268 = load i64, i64* %RBP
  %269 = sub i64 %268, 52
  %270 = load i64, i64* %PC
  %271 = add i64 %270, 4
  store i64 %271, i64* %PC
  %272 = inttoptr i64 %269 to i32*
  %273 = load i32, i32* %272
  %274 = sext i32 %273 to i64
  store i64 %274, i64* %RCX, align 8, !tbaa !2428
  %275 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %276 = load i64, i64* %RAX
  %277 = load i64, i64* %RCX
  %278 = mul i64 %277, 8
  %279 = add i64 %278, %276
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 5
  store i64 %281, i64* %PC
  %282 = inttoptr i64 %279 to double*
  %283 = load double, double* %282
  %284 = bitcast i8* %275 to double*
  store double %283, double* %284, align 1, !tbaa !2452
  %285 = getelementptr inbounds i8, i8* %275, i64 8
  %286 = bitcast i8* %285 to double*
  store double 0.000000e+00, double* %286, align 1, !tbaa !2452
  %287 = load i64, i64* %RBP
  %288 = sub i64 %287, 16
  %289 = load i64, i64* %PC
  %290 = add i64 %289, 4
  store i64 %290, i64* %PC
  %291 = inttoptr i64 %288 to i64*
  %292 = load i64, i64* %291
  store i64 %292, i64* %RAX, align 8, !tbaa !2428
  %293 = load i64, i64* %RBP
  %294 = sub i64 %293, 52
  %295 = load i64, i64* %PC
  %296 = add i64 %295, 4
  store i64 %296, i64* %PC
  %297 = inttoptr i64 %294 to i32*
  %298 = load i32, i32* %297
  %299 = sext i32 %298 to i64
  store i64 %299, i64* %RCX, align 8, !tbaa !2428
  %300 = load i64, i64* %RCX
  %301 = load i64, i64* %PC
  %302 = add i64 %301, 7
  store i64 %302, i64* %PC
  %303 = sext i64 %300 to i128
  %304 = and i128 %303, -18446744073709551616
  %305 = zext i64 %300 to i128
  %306 = or i128 %304, %305
  %307 = mul nsw i128 32000, %306
  %308 = trunc i128 %307 to i64
  store i64 %308, i64* %RCX, align 8, !tbaa !2428
  %309 = sext i64 %308 to i128
  %310 = icmp ne i128 %309, %307
  %311 = zext i1 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %311, i8* %312, align 1, !tbaa !2432
  %313 = trunc i128 %307 to i32
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %314, align 1, !tbaa !2446
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %315, align 1, !tbaa !2447
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %316, align 1, !tbaa !2448
  %317 = lshr i64 %308, 63
  %318 = trunc i64 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %318, i8* %319, align 1, !tbaa !2449
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %311, i8* %320, align 1, !tbaa !2450
  %321 = load i64, i64* %RAX
  %322 = load i64, i64* %RCX
  %323 = load i64, i64* %PC
  %324 = add i64 %323, 3
  store i64 %324, i64* %PC
  %325 = add i64 %322, %321
  store i64 %325, i64* %RAX, align 8, !tbaa !2428
  %326 = icmp ult i64 %325, %321
  %327 = icmp ult i64 %325, %322
  %328 = or i1 %326, %327
  %329 = zext i1 %328 to i8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %329, i8* %330, align 1, !tbaa !2432
  %331 = trunc i64 %325 to i32
  %332 = and i32 %331, 255
  %333 = call i32 @llvm.ctpop.i32(i32 %332) #16
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %336, i8* %337, align 1, !tbaa !2446
  %338 = xor i64 %322, %321
  %339 = xor i64 %338, %325
  %340 = lshr i64 %339, 4
  %341 = trunc i64 %340 to i8
  %342 = and i8 %341, 1
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %342, i8* %343, align 1, !tbaa !2447
  %344 = icmp eq i64 %325, 0
  %345 = zext i1 %344 to i8
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %345, i8* %346, align 1, !tbaa !2448
  %347 = lshr i64 %325, 63
  %348 = trunc i64 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %348, i8* %349, align 1, !tbaa !2449
  %350 = lshr i64 %321, 63
  %351 = lshr i64 %322, 63
  %352 = xor i64 %347, %350
  %353 = xor i64 %347, %351
  %354 = add nuw nsw i64 %352, %353
  %355 = icmp eq i64 %354, 2
  %356 = zext i1 %355 to i8
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %356, i8* %357, align 1, !tbaa !2450
  %358 = load i64, i64* %RBP
  %359 = sub i64 %358, 56
  %360 = load i64, i64* %PC
  %361 = add i64 %360, 4
  store i64 %361, i64* %PC
  %362 = inttoptr i64 %359 to i32*
  %363 = load i32, i32* %362
  %364 = sext i32 %363 to i64
  store i64 %364, i64* %RCX, align 8, !tbaa !2428
  %365 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %366 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %367 = load i64, i64* %RAX
  %368 = load i64, i64* %RCX
  %369 = mul i64 %368, 8
  %370 = add i64 %369, %367
  %371 = load i64, i64* %PC
  %372 = add i64 %371, 5
  store i64 %372, i64* %PC
  %373 = bitcast i8* %366 to double*
  %374 = load double, double* %373, align 1
  %375 = getelementptr inbounds i8, i8* %366, i64 8
  %376 = bitcast i8* %375 to i64*
  %377 = load i64, i64* %376, align 1
  %378 = inttoptr i64 %370 to double*
  %379 = load double, double* %378
  %380 = fmul double %374, %379
  %381 = bitcast i8* %365 to double*
  store double %380, double* %381, align 1, !tbaa !2452
  %382 = getelementptr inbounds i8, i8* %365, i64 8
  %383 = bitcast i8* %382 to i64*
  store i64 %377, i64* %383, align 1, !tbaa !2452
  %384 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %385 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %386 = bitcast %union.vec128_t* %XMM1 to i8*
  %387 = load i64, i64* %PC
  %388 = add i64 %387, 4
  store i64 %388, i64* %PC
  %389 = bitcast i8* %385 to double*
  %390 = load double, double* %389, align 1
  %391 = getelementptr inbounds i8, i8* %385, i64 8
  %392 = bitcast i8* %391 to i64*
  %393 = load i64, i64* %392, align 1
  %394 = bitcast i8* %386 to double*
  %395 = load double, double* %394, align 1
  %396 = fadd double %390, %395
  %397 = bitcast i8* %384 to double*
  store double %396, double* %397, align 1, !tbaa !2452
  %398 = getelementptr inbounds i8, i8* %384, i64 8
  %399 = bitcast i8* %398 to i64*
  store i64 %393, i64* %399, align 1, !tbaa !2452
  %400 = load i64, i64* %RBP
  %401 = sub i64 %400, 24
  %402 = load i64, i64* %PC
  %403 = add i64 %402, 4
  store i64 %403, i64* %PC
  %404 = inttoptr i64 %401 to i64*
  %405 = load i64, i64* %404
  store i64 %405, i64* %RAX, align 8, !tbaa !2428
  %406 = load i64, i64* %RBP
  %407 = sub i64 %406, 56
  %408 = load i64, i64* %PC
  %409 = add i64 %408, 4
  store i64 %409, i64* %PC
  %410 = inttoptr i64 %407 to i32*
  %411 = load i32, i32* %410
  %412 = sext i32 %411 to i64
  store i64 %412, i64* %RCX, align 8, !tbaa !2428
  %413 = load i64, i64* %RAX
  %414 = load i64, i64* %RCX
  %415 = mul i64 %414, 8
  %416 = add i64 %415, %413
  %417 = bitcast %union.vec128_t* %XMM0 to i8*
  %418 = load i64, i64* %PC
  %419 = add i64 %418, 5
  store i64 %419, i64* %PC
  %420 = bitcast i8* %417 to double*
  %421 = load double, double* %420, align 1
  %422 = inttoptr i64 %416 to double*
  store double %421, double* %422
  %423 = load i64, i64* %RBP
  %424 = sub i64 %423, 32
  %425 = load i64, i64* %PC
  %426 = add i64 %425, 4
  store i64 %426, i64* %PC
  %427 = inttoptr i64 %424 to i64*
  %428 = load i64, i64* %427
  store i64 %428, i64* %RAX, align 8, !tbaa !2428
  %429 = load i64, i64* %RBP
  %430 = sub i64 %429, 52
  %431 = load i64, i64* %PC
  %432 = add i64 %431, 4
  store i64 %432, i64* %PC
  %433 = inttoptr i64 %430 to i32*
  %434 = load i32, i32* %433
  %435 = sext i32 %434 to i64
  store i64 %435, i64* %RCX, align 8, !tbaa !2428
  %436 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %437 = load i64, i64* %RAX
  %438 = load i64, i64* %RCX
  %439 = mul i64 %438, 8
  %440 = add i64 %439, %437
  %441 = load i64, i64* %PC
  %442 = add i64 %441, 5
  store i64 %442, i64* %PC
  %443 = inttoptr i64 %440 to double*
  %444 = load double, double* %443
  %445 = bitcast i8* %436 to double*
  store double %444, double* %445, align 1, !tbaa !2452
  %446 = getelementptr inbounds i8, i8* %436, i64 8
  %447 = bitcast i8* %446 to double*
  store double 0.000000e+00, double* %447, align 1, !tbaa !2452
  %448 = load i64, i64* %RBP
  %449 = sub i64 %448, 16
  %450 = load i64, i64* %PC
  %451 = add i64 %450, 4
  store i64 %451, i64* %PC
  %452 = inttoptr i64 %449 to i64*
  %453 = load i64, i64* %452
  store i64 %453, i64* %RAX, align 8, !tbaa !2428
  %454 = load i64, i64* %RBP
  %455 = sub i64 %454, 52
  %456 = load i64, i64* %PC
  %457 = add i64 %456, 4
  store i64 %457, i64* %PC
  %458 = inttoptr i64 %455 to i32*
  %459 = load i32, i32* %458
  %460 = sext i32 %459 to i64
  store i64 %460, i64* %RCX, align 8, !tbaa !2428
  %461 = load i64, i64* %RCX
  %462 = load i64, i64* %PC
  %463 = add i64 %462, 7
  store i64 %463, i64* %PC
  %464 = sext i64 %461 to i128
  %465 = and i128 %464, -18446744073709551616
  %466 = zext i64 %461 to i128
  %467 = or i128 %465, %466
  %468 = mul nsw i128 32000, %467
  %469 = trunc i128 %468 to i64
  store i64 %469, i64* %RCX, align 8, !tbaa !2428
  %470 = sext i64 %469 to i128
  %471 = icmp ne i128 %470, %468
  %472 = zext i1 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %472, i8* %473, align 1, !tbaa !2432
  %474 = trunc i128 %468 to i32
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %475, align 1, !tbaa !2446
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %476, align 1, !tbaa !2447
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %477, align 1, !tbaa !2448
  %478 = lshr i64 %469, 63
  %479 = trunc i64 %478 to i8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %479, i8* %480, align 1, !tbaa !2449
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %472, i8* %481, align 1, !tbaa !2450
  %482 = load i64, i64* %RAX
  %483 = load i64, i64* %RCX
  %484 = load i64, i64* %PC
  %485 = add i64 %484, 3
  store i64 %485, i64* %PC
  %486 = add i64 %483, %482
  store i64 %486, i64* %RAX, align 8, !tbaa !2428
  %487 = icmp ult i64 %486, %482
  %488 = icmp ult i64 %486, %483
  %489 = or i1 %487, %488
  %490 = zext i1 %489 to i8
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %490, i8* %491, align 1, !tbaa !2432
  %492 = trunc i64 %486 to i32
  %493 = and i32 %492, 255
  %494 = call i32 @llvm.ctpop.i32(i32 %493) #16
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  %497 = xor i8 %496, 1
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %497, i8* %498, align 1, !tbaa !2446
  %499 = xor i64 %483, %482
  %500 = xor i64 %499, %486
  %501 = lshr i64 %500, 4
  %502 = trunc i64 %501 to i8
  %503 = and i8 %502, 1
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %503, i8* %504, align 1, !tbaa !2447
  %505 = icmp eq i64 %486, 0
  %506 = zext i1 %505 to i8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %506, i8* %507, align 1, !tbaa !2448
  %508 = lshr i64 %486, 63
  %509 = trunc i64 %508 to i8
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %509, i8* %510, align 1, !tbaa !2449
  %511 = lshr i64 %482, 63
  %512 = lshr i64 %483, 63
  %513 = xor i64 %508, %511
  %514 = xor i64 %508, %512
  %515 = add nuw nsw i64 %513, %514
  %516 = icmp eq i64 %515, 2
  %517 = zext i1 %516 to i8
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %517, i8* %518, align 1, !tbaa !2450
  %519 = load i64, i64* %RBP
  %520 = sub i64 %519, 56
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 4
  store i64 %522, i64* %PC
  %523 = inttoptr i64 %520 to i32*
  %524 = load i32, i32* %523
  %525 = sext i32 %524 to i64
  store i64 %525, i64* %RCX, align 8, !tbaa !2428
  %526 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %527 = load i64, i64* %RAX
  %528 = load i64, i64* %RCX
  %529 = mul i64 %528, 8
  %530 = add i64 %529, %527
  %531 = load i64, i64* %PC
  %532 = add i64 %531, 5
  store i64 %532, i64* %PC
  %533 = inttoptr i64 %530 to double*
  %534 = load double, double* %533
  %535 = bitcast i8* %526 to double*
  store double %534, double* %535, align 1, !tbaa !2452
  %536 = getelementptr inbounds i8, i8* %526, i64 8
  %537 = bitcast i8* %536 to double*
  store double 0.000000e+00, double* %537, align 1, !tbaa !2452
  %538 = load i64, i64* %RBP
  %539 = sub i64 %538, 40
  %540 = load i64, i64* %PC
  %541 = add i64 %540, 4
  store i64 %541, i64* %PC
  %542 = inttoptr i64 %539 to i64*
  %543 = load i64, i64* %542
  store i64 %543, i64* %RAX, align 8, !tbaa !2428
  %544 = load i64, i64* %RBP
  %545 = sub i64 %544, 56
  %546 = load i64, i64* %PC
  %547 = add i64 %546, 4
  store i64 %547, i64* %PC
  %548 = inttoptr i64 %545 to i32*
  %549 = load i32, i32* %548
  %550 = sext i32 %549 to i64
  store i64 %550, i64* %RCX, align 8, !tbaa !2428
  %551 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %552 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %553 = load i64, i64* %RAX
  %554 = load i64, i64* %RCX
  %555 = mul i64 %554, 8
  %556 = add i64 %555, %553
  %557 = load i64, i64* %PC
  %558 = add i64 %557, 5
  store i64 %558, i64* %PC
  %559 = bitcast i8* %552 to double*
  %560 = load double, double* %559, align 1
  %561 = getelementptr inbounds i8, i8* %552, i64 8
  %562 = bitcast i8* %561 to i64*
  %563 = load i64, i64* %562, align 1
  %564 = inttoptr i64 %556 to double*
  %565 = load double, double* %564
  %566 = fmul double %560, %565
  %567 = bitcast i8* %551 to double*
  store double %566, double* %567, align 1, !tbaa !2452
  %568 = getelementptr inbounds i8, i8* %551, i64 8
  %569 = bitcast i8* %568 to i64*
  store i64 %563, i64* %569, align 1, !tbaa !2452
  %570 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %571 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %572 = bitcast %union.vec128_t* %XMM1 to i8*
  %573 = load i64, i64* %PC
  %574 = add i64 %573, 4
  store i64 %574, i64* %PC
  %575 = bitcast i8* %571 to double*
  %576 = load double, double* %575, align 1
  %577 = getelementptr inbounds i8, i8* %571, i64 8
  %578 = bitcast i8* %577 to i64*
  %579 = load i64, i64* %578, align 1
  %580 = bitcast i8* %572 to double*
  %581 = load double, double* %580, align 1
  %582 = fadd double %576, %581
  %583 = bitcast i8* %570 to double*
  store double %582, double* %583, align 1, !tbaa !2452
  %584 = getelementptr inbounds i8, i8* %570, i64 8
  %585 = bitcast i8* %584 to i64*
  store i64 %579, i64* %585, align 1, !tbaa !2452
  %586 = load i64, i64* %RBP
  %587 = sub i64 %586, 32
  %588 = load i64, i64* %PC
  %589 = add i64 %588, 4
  store i64 %589, i64* %PC
  %590 = inttoptr i64 %587 to i64*
  %591 = load i64, i64* %590
  store i64 %591, i64* %RAX, align 8, !tbaa !2428
  %592 = load i64, i64* %RBP
  %593 = sub i64 %592, 52
  %594 = load i64, i64* %PC
  %595 = add i64 %594, 4
  store i64 %595, i64* %PC
  %596 = inttoptr i64 %593 to i32*
  %597 = load i32, i32* %596
  %598 = sext i32 %597 to i64
  store i64 %598, i64* %RCX, align 8, !tbaa !2428
  %599 = load i64, i64* %RAX
  %600 = load i64, i64* %RCX
  %601 = mul i64 %600, 8
  %602 = add i64 %601, %599
  %603 = bitcast %union.vec128_t* %XMM0 to i8*
  %604 = load i64, i64* %PC
  %605 = add i64 %604, 5
  store i64 %605, i64* %PC
  %606 = bitcast i8* %603 to double*
  %607 = load double, double* %606, align 1
  %608 = inttoptr i64 %602 to double*
  store double %607, double* %608
  %609 = load i64, i64* %RBP
  %610 = sub i64 %609, 56
  %611 = load i64, i64* %PC
  %612 = add i64 %611, 3
  store i64 %612, i64* %PC
  %613 = inttoptr i64 %610 to i32*
  %614 = load i32, i32* %613
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %RAX, align 8, !tbaa !2428
  %616 = load i64, i64* %RAX
  %617 = load i64, i64* %PC
  %618 = add i64 %617, 3
  store i64 %618, i64* %PC
  %619 = trunc i64 %616 to i32
  %620 = add i32 1, %619
  %621 = zext i32 %620 to i64
  store i64 %621, i64* %RAX, align 8, !tbaa !2428
  %622 = icmp ult i32 %620, %619
  %623 = icmp ult i32 %620, 1
  %624 = or i1 %622, %623
  %625 = zext i1 %624 to i8
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %625, i8* %626, align 1, !tbaa !2432
  %627 = and i32 %620, 255
  %628 = call i32 @llvm.ctpop.i32(i32 %627) #16
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %631, i8* %632, align 1, !tbaa !2446
  %633 = xor i64 1, %616
  %634 = trunc i64 %633 to i32
  %635 = xor i32 %634, %620
  %636 = lshr i32 %635, 4
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %638, i8* %639, align 1, !tbaa !2447
  %640 = icmp eq i32 %620, 0
  %641 = zext i1 %640 to i8
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %641, i8* %642, align 1, !tbaa !2448
  %643 = lshr i32 %620, 31
  %644 = trunc i32 %643 to i8
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %644, i8* %645, align 1, !tbaa !2449
  %646 = lshr i32 %619, 31
  %647 = xor i32 %643, %646
  %648 = add nuw nsw i32 %647, %643
  %649 = icmp eq i32 %648, 2
  %650 = zext i1 %649 to i8
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %650, i8* %651, align 1, !tbaa !2450
  %652 = load i64, i64* %RBP
  %653 = sub i64 %652, 56
  %654 = load i32, i32* %EAX
  %655 = zext i32 %654 to i64
  %656 = load i64, i64* %PC
  %657 = add i64 %656, 3
  store i64 %657, i64* %PC
  %658 = inttoptr i64 %653 to i32*
  store i32 %654, i32* %658
  %659 = load i64, i64* %PC
  %660 = sub i64 %659, 161
  %661 = load i64, i64* %PC
  %662 = add i64 %661, 5
  store i64 %662, i64* %PC
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %660, i64* %663, align 8, !tbaa !2428
  br label %block_400c9d

block_400c55:                                     ; preds = %block_400c49
  %664 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %665 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %666 = bitcast %union.vec128_t* %XMM0 to i8*
  %667 = load i64, i64* %PC
  %668 = add i64 %667, 3
  store i64 %668, i64* %PC
  %669 = bitcast i8* %665 to i64*
  %670 = load i64, i64* %669, align 1
  %671 = getelementptr inbounds i8, i8* %665, i64 8
  %672 = bitcast i8* %671 to i64*
  %673 = load i64, i64* %672, align 1
  %674 = bitcast i8* %666 to i64*
  %675 = load i64, i64* %674, align 1
  %676 = getelementptr inbounds i8, i8* %666, i64 8
  %677 = bitcast i8* %676 to i64*
  %678 = load i64, i64* %677, align 1
  %679 = xor i64 %675, %670
  %680 = xor i64 %678, %673
  %681 = trunc i64 %679 to i32
  %682 = lshr i64 %679, 32
  %683 = trunc i64 %682 to i32
  %684 = bitcast i8* %664 to i32*
  store i32 %681, i32* %684, align 1, !tbaa !2454
  %685 = getelementptr inbounds i8, i8* %664, i64 4
  %686 = bitcast i8* %685 to i32*
  store i32 %683, i32* %686, align 1, !tbaa !2454
  %687 = trunc i64 %680 to i32
  %688 = getelementptr inbounds i8, i8* %664, i64 8
  %689 = bitcast i8* %688 to i32*
  store i32 %687, i32* %689, align 1, !tbaa !2454
  %690 = lshr i64 %680, 32
  %691 = trunc i64 %690 to i32
  %692 = getelementptr inbounds i8, i8* %664, i64 12
  %693 = bitcast i8* %692 to i32*
  store i32 %691, i32* %693, align 1, !tbaa !2454
  %694 = load i64, i64* %RBP
  %695 = sub i64 %694, 24
  %696 = load i64, i64* %PC
  %697 = add i64 %696, 4
  store i64 %697, i64* %PC
  %698 = inttoptr i64 %695 to i64*
  %699 = load i64, i64* %698
  store i64 %699, i64* %RAX, align 8, !tbaa !2428
  %700 = load i64, i64* %RBP
  %701 = sub i64 %700, 52
  %702 = load i64, i64* %PC
  %703 = add i64 %702, 4
  store i64 %703, i64* %PC
  %704 = inttoptr i64 %701 to i32*
  %705 = load i32, i32* %704
  %706 = sext i32 %705 to i64
  store i64 %706, i64* %RCX, align 8, !tbaa !2428
  %707 = load i64, i64* %RAX
  %708 = load i64, i64* %RCX
  %709 = mul i64 %708, 8
  %710 = add i64 %709, %707
  %711 = bitcast %union.vec128_t* %XMM0 to i8*
  %712 = load i64, i64* %PC
  %713 = add i64 %712, 5
  store i64 %713, i64* %PC
  %714 = bitcast i8* %711 to double*
  %715 = load double, double* %714, align 1
  %716 = inttoptr i64 %710 to double*
  store double %715, double* %716
  %717 = load i64, i64* %RBP
  %718 = sub i64 %717, 52
  %719 = load i64, i64* %PC
  %720 = add i64 %719, 3
  store i64 %720, i64* %PC
  %721 = inttoptr i64 %718 to i32*
  %722 = load i32, i32* %721
  %723 = zext i32 %722 to i64
  store i64 %723, i64* %RAX, align 8, !tbaa !2428
  %724 = load i64, i64* %RAX
  %725 = load i64, i64* %PC
  %726 = add i64 %725, 3
  store i64 %726, i64* %PC
  %727 = trunc i64 %724 to i32
  %728 = add i32 1, %727
  %729 = zext i32 %728 to i64
  store i64 %729, i64* %RAX, align 8, !tbaa !2428
  %730 = icmp ult i32 %728, %727
  %731 = icmp ult i32 %728, 1
  %732 = or i1 %730, %731
  %733 = zext i1 %732 to i8
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %733, i8* %734, align 1, !tbaa !2432
  %735 = and i32 %728, 255
  %736 = call i32 @llvm.ctpop.i32(i32 %735) #16
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %739, i8* %740, align 1, !tbaa !2446
  %741 = xor i64 1, %724
  %742 = trunc i64 %741 to i32
  %743 = xor i32 %742, %728
  %744 = lshr i32 %743, 4
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %746, i8* %747, align 1, !tbaa !2447
  %748 = icmp eq i32 %728, 0
  %749 = zext i1 %748 to i8
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %749, i8* %750, align 1, !tbaa !2448
  %751 = lshr i32 %728, 31
  %752 = trunc i32 %751 to i8
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %752, i8* %753, align 1, !tbaa !2449
  %754 = lshr i32 %727, 31
  %755 = xor i32 %751, %754
  %756 = add nuw nsw i32 %755, %751
  %757 = icmp eq i32 %756, 2
  %758 = zext i1 %757 to i8
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %758, i8* %759, align 1, !tbaa !2450
  %760 = load i64, i64* %RBP
  %761 = sub i64 %760, 52
  %762 = load i32, i32* %EAX
  %763 = zext i32 %762 to i64
  %764 = load i64, i64* %PC
  %765 = add i64 %764, 3
  store i64 %765, i64* %PC
  %766 = inttoptr i64 %761 to i32*
  store i32 %762, i32* %766
  %767 = load i64, i64* %PC
  %768 = sub i64 %767, 37
  %769 = load i64, i64* %PC
  %770 = add i64 %769, 5
  store i64 %770, i64* %PC
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %768, i64* %771, align 8, !tbaa !2428
  br label %block_400c49

block_400c49:                                     ; preds = %block_400c55, %block_400c20
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_400c20 ], [ %MEMORY.2, %block_400c55 ]
  %772 = load i64, i64* %RBP
  %773 = sub i64 %772, 52
  %774 = load i64, i64* %PC
  %775 = add i64 %774, 3
  store i64 %775, i64* %PC
  %776 = inttoptr i64 %773 to i32*
  %777 = load i32, i32* %776
  %778 = zext i32 %777 to i64
  store i64 %778, i64* %RAX, align 8, !tbaa !2428
  %779 = load i32, i32* %EAX
  %780 = zext i32 %779 to i64
  %781 = load i64, i64* %RBP
  %782 = sub i64 %781, 8
  %783 = load i64, i64* %PC
  %784 = add i64 %783, 3
  store i64 %784, i64* %PC
  %785 = inttoptr i64 %782 to i32*
  %786 = load i32, i32* %785
  %787 = sub i32 %779, %786
  %788 = icmp ult i32 %779, %786
  %789 = zext i1 %788 to i8
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %789, i8* %790, align 1, !tbaa !2432
  %791 = and i32 %787, 255
  %792 = call i32 @llvm.ctpop.i32(i32 %791) #16
  %793 = trunc i32 %792 to i8
  %794 = and i8 %793, 1
  %795 = xor i8 %794, 1
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %795, i8* %796, align 1, !tbaa !2446
  %797 = xor i32 %786, %779
  %798 = xor i32 %797, %787
  %799 = lshr i32 %798, 4
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %801, i8* %802, align 1, !tbaa !2447
  %803 = icmp eq i32 %787, 0
  %804 = zext i1 %803 to i8
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %804, i8* %805, align 1, !tbaa !2448
  %806 = lshr i32 %787, 31
  %807 = trunc i32 %806 to i8
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %807, i8* %808, align 1, !tbaa !2449
  %809 = lshr i32 %779, 31
  %810 = lshr i32 %786, 31
  %811 = xor i32 %810, %809
  %812 = xor i32 %806, %809
  %813 = add nuw nsw i32 %812, %811
  %814 = icmp eq i32 %813, 2
  %815 = zext i1 %814 to i8
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %815, i8* %816, align 1, !tbaa !2450
  %817 = load i64, i64* %PC
  %818 = add i64 %817, 36
  %819 = load i64, i64* %PC
  %820 = add i64 %819, 6
  %821 = load i64, i64* %PC
  %822 = add i64 %821, 6
  store i64 %822, i64* %PC
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %824 = load i8, i8* %823, align 1, !tbaa !2449
  %825 = icmp ne i8 %824, 0
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %827 = load i8, i8* %826, align 1, !tbaa !2450
  %828 = icmp ne i8 %827, 0
  %829 = xor i1 %825, %828
  %830 = xor i1 %829, true
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %833 = select i1 %829, i64 %820, i64 %818
  store i64 %833, i64* %832, align 8, !tbaa !2428
  %834 = load i8, i8* %BRANCH_TAKEN
  %835 = icmp eq i8 %834, 1
  br i1 %835, label %block_400c73, label %block_400c55

block_400d56:                                     ; preds = %block_400c7a
  %836 = load i64, i64* %PC
  %837 = add i64 %836, 1
  store i64 %837, i64* %PC
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %839 = load i64, i64* %838, align 8, !tbaa !2428
  %840 = add i64 %839, 8
  %841 = inttoptr i64 %839 to i64*
  %842 = load i64, i64* %841
  store i64 %842, i64* %RBP, align 8, !tbaa !2428
  store i64 %840, i64* %838, align 8, !tbaa !2428
  %843 = load i64, i64* %PC
  %844 = add i64 %843, 1
  store i64 %844, i64* %PC
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %847 = load i64, i64* %846, align 8, !tbaa !2428
  %848 = inttoptr i64 %847 to i64*
  %849 = load i64, i64* %848
  store i64 %849, i64* %845, align 8, !tbaa !2428
  %850 = add i64 %847, 8
  store i64 %850, i64* %846, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_400c86:                                     ; preds = %block_400c7a
  %851 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %852 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %853 = bitcast %union.vec128_t* %XMM0 to i8*
  %854 = load i64, i64* %PC
  %855 = add i64 %854, 3
  store i64 %855, i64* %PC
  %856 = bitcast i8* %852 to i64*
  %857 = load i64, i64* %856, align 1
  %858 = getelementptr inbounds i8, i8* %852, i64 8
  %859 = bitcast i8* %858 to i64*
  %860 = load i64, i64* %859, align 1
  %861 = bitcast i8* %853 to i64*
  %862 = load i64, i64* %861, align 1
  %863 = getelementptr inbounds i8, i8* %853, i64 8
  %864 = bitcast i8* %863 to i64*
  %865 = load i64, i64* %864, align 1
  %866 = xor i64 %862, %857
  %867 = xor i64 %865, %860
  %868 = trunc i64 %866 to i32
  %869 = lshr i64 %866, 32
  %870 = trunc i64 %869 to i32
  %871 = bitcast i8* %851 to i32*
  store i32 %868, i32* %871, align 1, !tbaa !2454
  %872 = getelementptr inbounds i8, i8* %851, i64 4
  %873 = bitcast i8* %872 to i32*
  store i32 %870, i32* %873, align 1, !tbaa !2454
  %874 = trunc i64 %867 to i32
  %875 = getelementptr inbounds i8, i8* %851, i64 8
  %876 = bitcast i8* %875 to i32*
  store i32 %874, i32* %876, align 1, !tbaa !2454
  %877 = lshr i64 %867, 32
  %878 = trunc i64 %877 to i32
  %879 = getelementptr inbounds i8, i8* %851, i64 12
  %880 = bitcast i8* %879 to i32*
  store i32 %878, i32* %880, align 1, !tbaa !2454
  %881 = load i64, i64* %RBP
  %882 = sub i64 %881, 32
  %883 = load i64, i64* %PC
  %884 = add i64 %883, 4
  store i64 %884, i64* %PC
  %885 = inttoptr i64 %882 to i64*
  %886 = load i64, i64* %885
  store i64 %886, i64* %RAX, align 8, !tbaa !2428
  %887 = load i64, i64* %RBP
  %888 = sub i64 %887, 52
  %889 = load i64, i64* %PC
  %890 = add i64 %889, 4
  store i64 %890, i64* %PC
  %891 = inttoptr i64 %888 to i32*
  %892 = load i32, i32* %891
  %893 = sext i32 %892 to i64
  store i64 %893, i64* %RCX, align 8, !tbaa !2428
  %894 = load i64, i64* %RAX
  %895 = load i64, i64* %RCX
  %896 = mul i64 %895, 8
  %897 = add i64 %896, %894
  %898 = bitcast %union.vec128_t* %XMM0 to i8*
  %899 = load i64, i64* %PC
  %900 = add i64 %899, 5
  store i64 %900, i64* %PC
  %901 = bitcast i8* %898 to double*
  %902 = load double, double* %901, align 1
  %903 = inttoptr i64 %897 to double*
  store double %902, double* %903
  %904 = load i64, i64* %RBP
  %905 = sub i64 %904, 56
  %906 = load i64, i64* %PC
  %907 = add i64 %906, 7
  store i64 %907, i64* %PC
  %908 = inttoptr i64 %905 to i32*
  store i32 0, i32* %908
  br label %block_400c9d

block_400c73:                                     ; preds = %block_400c49
  %909 = load i64, i64* %RBP
  %910 = sub i64 %909, 52
  %911 = load i64, i64* %PC
  %912 = add i64 %911, 7
  store i64 %912, i64* %PC
  %913 = inttoptr i64 %910 to i32*
  store i32 0, i32* %913
  br label %block_400c7a

block_400d43:                                     ; preds = %block_400c9d
  %914 = load i64, i64* %PC
  %915 = add i64 %914, 5
  %916 = load i64, i64* %PC
  %917 = add i64 %916, 5
  store i64 %917, i64* %PC
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %915, i64* %918, align 8, !tbaa !2428
  %919 = load i64, i64* %RBP
  %920 = sub i64 %919, 52
  %921 = load i64, i64* %PC
  %922 = add i64 %921, 3
  store i64 %922, i64* %PC
  %923 = inttoptr i64 %920 to i32*
  %924 = load i32, i32* %923
  %925 = zext i32 %924 to i64
  store i64 %925, i64* %RAX, align 8, !tbaa !2428
  %926 = load i64, i64* %RAX
  %927 = load i64, i64* %PC
  %928 = add i64 %927, 3
  store i64 %928, i64* %PC
  %929 = trunc i64 %926 to i32
  %930 = add i32 1, %929
  %931 = zext i32 %930 to i64
  store i64 %931, i64* %RAX, align 8, !tbaa !2428
  %932 = icmp ult i32 %930, %929
  %933 = icmp ult i32 %930, 1
  %934 = or i1 %932, %933
  %935 = zext i1 %934 to i8
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %935, i8* %936, align 1, !tbaa !2432
  %937 = and i32 %930, 255
  %938 = call i32 @llvm.ctpop.i32(i32 %937) #16
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  %941 = xor i8 %940, 1
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %941, i8* %942, align 1, !tbaa !2446
  %943 = xor i64 1, %926
  %944 = trunc i64 %943 to i32
  %945 = xor i32 %944, %930
  %946 = lshr i32 %945, 4
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %948, i8* %949, align 1, !tbaa !2447
  %950 = icmp eq i32 %930, 0
  %951 = zext i1 %950 to i8
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %951, i8* %952, align 1, !tbaa !2448
  %953 = lshr i32 %930, 31
  %954 = trunc i32 %953 to i8
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %954, i8* %955, align 1, !tbaa !2449
  %956 = lshr i32 %929, 31
  %957 = xor i32 %953, %956
  %958 = add nuw nsw i32 %957, %953
  %959 = icmp eq i32 %958, 2
  %960 = zext i1 %959 to i8
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %960, i8* %961, align 1, !tbaa !2450
  %962 = load i64, i64* %RBP
  %963 = sub i64 %962, 52
  %964 = load i32, i32* %EAX
  %965 = zext i32 %964 to i64
  %966 = load i64, i64* %PC
  %967 = add i64 %966, 3
  store i64 %967, i64* %PC
  %968 = inttoptr i64 %963 to i32*
  store i32 %964, i32* %968
  %969 = load i64, i64* %PC
  %970 = sub i64 %969, 215
  %971 = load i64, i64* %PC
  %972 = add i64 %971, 5
  store i64 %972, i64* %PC
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %970, i64* %973, align 8, !tbaa !2428
  br label %block_400c7a
}

; Function Attrs: noinline
define %struct.Memory* @sub_400d60_kernel_bicg_StrictFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400d60:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %EDI = bitcast %union.anon* %14 to i32*
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
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %37 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %36, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %37 to %"class.std::bitset"*
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %39 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %38, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %39 to %"class.std::bitset"*
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %41 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %41 to %union.vec128_t*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %43 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %42, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %43 to %union.vec128_t*
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
  %54 = load i64, i64* %RBP
  %55 = add i64 %54, 16
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 4
  store i64 %57, i64* %PC
  %58 = inttoptr i64 %55 to i64*
  %59 = load i64, i64* %58
  store i64 %59, i64* %RAX, align 8, !tbaa !2428
  %60 = load i64, i64* %RBP
  %61 = sub i64 %60, 4
  %62 = load i32, i32* %EDI
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 3
  store i64 %65, i64* %PC
  %66 = inttoptr i64 %61 to i32*
  store i32 %62, i32* %66
  %67 = load i64, i64* %RBP
  %68 = sub i64 %67, 8
  %69 = load i32, i32* %ESI
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 3
  store i64 %72, i64* %PC
  %73 = inttoptr i64 %68 to i32*
  store i32 %69, i32* %73
  %74 = load i64, i64* %RBP
  %75 = sub i64 %74, 16
  %76 = load i64, i64* %RDX
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 4
  store i64 %78, i64* %PC
  %79 = inttoptr i64 %75 to i64*
  store i64 %76, i64* %79
  %80 = load i64, i64* %RBP
  %81 = sub i64 %80, 24
  %82 = load i64, i64* %RCX
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 4
  store i64 %84, i64* %PC
  %85 = inttoptr i64 %81 to i64*
  store i64 %82, i64* %85
  %86 = load i64, i64* %RBP
  %87 = sub i64 %86, 32
  %88 = load i64, i64* %R8
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 4
  store i64 %90, i64* %PC
  %91 = inttoptr i64 %87 to i64*
  store i64 %88, i64* %91
  %92 = load i64, i64* %RBP
  %93 = sub i64 %92, 40
  %94 = load i64, i64* %R9
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97
  %98 = load i64, i64* %RBP
  %99 = sub i64 %98, 48
  %100 = load i64, i64* %RAX
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 4
  store i64 %102, i64* %PC
  %103 = inttoptr i64 %99 to i64*
  store i64 %100, i64* %103
  %104 = load i64, i64* %RBP
  %105 = sub i64 %104, 52
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 7
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %105 to i32*
  store i32 0, i32* %108
  br label %block_400d89

block_400ddd:                                     ; preds = %block_400dc6, %block_400de9
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_400dc6 ], [ %MEMORY.0, %block_400de9 ]
  %109 = load i64, i64* %RBP
  %110 = sub i64 %109, 56
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC
  %113 = inttoptr i64 %110 to i32*
  %114 = load i32, i32* %113
  %115 = zext i32 %114 to i64
  store i64 %115, i64* %RAX, align 8, !tbaa !2428
  %116 = load i32, i32* %EAX
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* %RBP
  %119 = sub i64 %118, 8
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 3
  store i64 %121, i64* %PC
  %122 = inttoptr i64 %119 to i32*
  %123 = load i32, i32* %122
  %124 = sub i32 %116, %123
  %125 = icmp ult i32 %116, %123
  %126 = zext i1 %125 to i8
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %126, i8* %127, align 1, !tbaa !2432
  %128 = and i32 %124, 255
  %129 = call i32 @llvm.ctpop.i32(i32 %128) #16
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %132, i8* %133, align 1, !tbaa !2446
  %134 = xor i32 %123, %116
  %135 = xor i32 %134, %124
  %136 = lshr i32 %135, 4
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %138, i8* %139, align 1, !tbaa !2447
  %140 = icmp eq i32 %124, 0
  %141 = zext i1 %140 to i8
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %141, i8* %142, align 1, !tbaa !2448
  %143 = lshr i32 %124, 31
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %144, i8* %145, align 1, !tbaa !2449
  %146 = lshr i32 %116, 31
  %147 = lshr i32 %123, 31
  %148 = xor i32 %147, %146
  %149 = xor i32 %143, %146
  %150 = add nuw nsw i32 %149, %148
  %151 = icmp eq i32 %150, 2
  %152 = zext i1 %151 to i8
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %152, i8* %153, align 1, !tbaa !2450
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 160
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 6
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 6
  store i64 %159, i64* %PC
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %161 = load i8, i8* %160, align 1, !tbaa !2449
  %162 = icmp ne i8 %161, 0
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %164 = load i8, i8* %163, align 1, !tbaa !2450
  %165 = icmp ne i8 %164, 0
  %166 = xor i1 %162, %165
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %170 = select i1 %166, i64 %157, i64 %155
  store i64 %170, i64* %169, align 8, !tbaa !2428
  %171 = load i8, i8* %BRANCH_TAKEN
  %172 = icmp eq i8 %171, 1
  br i1 %172, label %block_400e83, label %block_400de9

block_400dba:                                     ; preds = %block_400e83, %block_400db3
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.2, %block_400db3 ], [ %MEMORY.0, %block_400e83 ]
  %173 = load i64, i64* %RBP
  %174 = sub i64 %173, 52
  %175 = load i64, i64* %PC
  %176 = add i64 %175, 3
  store i64 %176, i64* %PC
  %177 = inttoptr i64 %174 to i32*
  %178 = load i32, i32* %177
  %179 = zext i32 %178 to i64
  store i64 %179, i64* %RAX, align 8, !tbaa !2428
  %180 = load i32, i32* %EAX
  %181 = zext i32 %180 to i64
  %182 = load i64, i64* %RBP
  %183 = sub i64 %182, 4
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 3
  store i64 %185, i64* %PC
  %186 = inttoptr i64 %183 to i32*
  %187 = load i32, i32* %186
  %188 = sub i32 %180, %187
  %189 = icmp ult i32 %180, %187
  %190 = zext i1 %189 to i8
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %190, i8* %191, align 1, !tbaa !2432
  %192 = and i32 %188, 255
  %193 = call i32 @llvm.ctpop.i32(i32 %192) #16
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  %196 = xor i8 %195, 1
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %196, i8* %197, align 1, !tbaa !2446
  %198 = xor i32 %187, %180
  %199 = xor i32 %198, %188
  %200 = lshr i32 %199, 4
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %202, i8* %203, align 1, !tbaa !2447
  %204 = icmp eq i32 %188, 0
  %205 = zext i1 %204 to i8
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %205, i8* %206, align 1, !tbaa !2448
  %207 = lshr i32 %188, 31
  %208 = trunc i32 %207 to i8
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %208, i8* %209, align 1, !tbaa !2449
  %210 = lshr i32 %180, 31
  %211 = lshr i32 %187, 31
  %212 = xor i32 %211, %210
  %213 = xor i32 %207, %210
  %214 = add nuw nsw i32 %213, %212
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %216, i8* %217, align 1, !tbaa !2450
  %218 = load i64, i64* %PC
  %219 = add i64 %218, 214
  %220 = load i64, i64* %PC
  %221 = add i64 %220, 6
  %222 = load i64, i64* %PC
  %223 = add i64 %222, 6
  store i64 %223, i64* %PC
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %225 = load i8, i8* %224, align 1, !tbaa !2449
  %226 = icmp ne i8 %225, 0
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %228 = load i8, i8* %227, align 1, !tbaa !2450
  %229 = icmp ne i8 %228, 0
  %230 = xor i1 %226, %229
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %234 = select i1 %230, i64 %221, i64 %219
  store i64 %234, i64* %233, align 8, !tbaa !2428
  %235 = load i8, i8* %BRANCH_TAKEN
  %236 = icmp eq i8 %235, 1
  br i1 %236, label %block_400e96, label %block_400dc6

block_400de9:                                     ; preds = %block_400ddd
  %237 = load i64, i64* %RBP
  %238 = sub i64 %237, 24
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 4
  store i64 %240, i64* %PC
  %241 = inttoptr i64 %238 to i64*
  %242 = load i64, i64* %241
  store i64 %242, i64* %RAX, align 8, !tbaa !2428
  %243 = load i64, i64* %RBP
  %244 = sub i64 %243, 56
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 4
  store i64 %246, i64* %PC
  %247 = inttoptr i64 %244 to i32*
  %248 = load i32, i32* %247
  %249 = sext i32 %248 to i64
  store i64 %249, i64* %RCX, align 8, !tbaa !2428
  %250 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %251 = load i64, i64* %RAX
  %252 = load i64, i64* %RCX
  %253 = mul i64 %252, 8
  %254 = add i64 %253, %251
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 5
  store i64 %256, i64* %PC
  %257 = inttoptr i64 %254 to double*
  %258 = load double, double* %257
  %259 = bitcast i8* %250 to double*
  store double %258, double* %259, align 1, !tbaa !2452
  %260 = getelementptr inbounds i8, i8* %250, i64 8
  %261 = bitcast i8* %260 to double*
  store double 0.000000e+00, double* %261, align 1, !tbaa !2452
  %262 = load i64, i64* %RBP
  %263 = sub i64 %262, 48
  %264 = load i64, i64* %PC
  %265 = add i64 %264, 4
  store i64 %265, i64* %PC
  %266 = inttoptr i64 %263 to i64*
  %267 = load i64, i64* %266
  store i64 %267, i64* %RAX, align 8, !tbaa !2428
  %268 = load i64, i64* %RBP
  %269 = sub i64 %268, 52
  %270 = load i64, i64* %PC
  %271 = add i64 %270, 4
  store i64 %271, i64* %PC
  %272 = inttoptr i64 %269 to i32*
  %273 = load i32, i32* %272
  %274 = sext i32 %273 to i64
  store i64 %274, i64* %RCX, align 8, !tbaa !2428
  %275 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %276 = load i64, i64* %RAX
  %277 = load i64, i64* %RCX
  %278 = mul i64 %277, 8
  %279 = add i64 %278, %276
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 5
  store i64 %281, i64* %PC
  %282 = inttoptr i64 %279 to double*
  %283 = load double, double* %282
  %284 = bitcast i8* %275 to double*
  store double %283, double* %284, align 1, !tbaa !2452
  %285 = getelementptr inbounds i8, i8* %275, i64 8
  %286 = bitcast i8* %285 to double*
  store double 0.000000e+00, double* %286, align 1, !tbaa !2452
  %287 = load i64, i64* %RBP
  %288 = sub i64 %287, 16
  %289 = load i64, i64* %PC
  %290 = add i64 %289, 4
  store i64 %290, i64* %PC
  %291 = inttoptr i64 %288 to i64*
  %292 = load i64, i64* %291
  store i64 %292, i64* %RAX, align 8, !tbaa !2428
  %293 = load i64, i64* %RBP
  %294 = sub i64 %293, 52
  %295 = load i64, i64* %PC
  %296 = add i64 %295, 4
  store i64 %296, i64* %PC
  %297 = inttoptr i64 %294 to i32*
  %298 = load i32, i32* %297
  %299 = sext i32 %298 to i64
  store i64 %299, i64* %RCX, align 8, !tbaa !2428
  %300 = load i64, i64* %RCX
  %301 = load i64, i64* %PC
  %302 = add i64 %301, 7
  store i64 %302, i64* %PC
  %303 = sext i64 %300 to i128
  %304 = and i128 %303, -18446744073709551616
  %305 = zext i64 %300 to i128
  %306 = or i128 %304, %305
  %307 = mul nsw i128 32000, %306
  %308 = trunc i128 %307 to i64
  store i64 %308, i64* %RCX, align 8, !tbaa !2428
  %309 = sext i64 %308 to i128
  %310 = icmp ne i128 %309, %307
  %311 = zext i1 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %311, i8* %312, align 1, !tbaa !2432
  %313 = trunc i128 %307 to i32
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %314, align 1, !tbaa !2446
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %315, align 1, !tbaa !2447
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %316, align 1, !tbaa !2448
  %317 = lshr i64 %308, 63
  %318 = trunc i64 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %318, i8* %319, align 1, !tbaa !2449
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %311, i8* %320, align 1, !tbaa !2450
  %321 = load i64, i64* %RAX
  %322 = load i64, i64* %RCX
  %323 = load i64, i64* %PC
  %324 = add i64 %323, 3
  store i64 %324, i64* %PC
  %325 = add i64 %322, %321
  store i64 %325, i64* %RAX, align 8, !tbaa !2428
  %326 = icmp ult i64 %325, %321
  %327 = icmp ult i64 %325, %322
  %328 = or i1 %326, %327
  %329 = zext i1 %328 to i8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %329, i8* %330, align 1, !tbaa !2432
  %331 = trunc i64 %325 to i32
  %332 = and i32 %331, 255
  %333 = call i32 @llvm.ctpop.i32(i32 %332) #16
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %336, i8* %337, align 1, !tbaa !2446
  %338 = xor i64 %322, %321
  %339 = xor i64 %338, %325
  %340 = lshr i64 %339, 4
  %341 = trunc i64 %340 to i8
  %342 = and i8 %341, 1
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %342, i8* %343, align 1, !tbaa !2447
  %344 = icmp eq i64 %325, 0
  %345 = zext i1 %344 to i8
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %345, i8* %346, align 1, !tbaa !2448
  %347 = lshr i64 %325, 63
  %348 = trunc i64 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %348, i8* %349, align 1, !tbaa !2449
  %350 = lshr i64 %321, 63
  %351 = lshr i64 %322, 63
  %352 = xor i64 %347, %350
  %353 = xor i64 %347, %351
  %354 = add nuw nsw i64 %352, %353
  %355 = icmp eq i64 %354, 2
  %356 = zext i1 %355 to i8
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %356, i8* %357, align 1, !tbaa !2450
  %358 = load i64, i64* %RBP
  %359 = sub i64 %358, 56
  %360 = load i64, i64* %PC
  %361 = add i64 %360, 4
  store i64 %361, i64* %PC
  %362 = inttoptr i64 %359 to i32*
  %363 = load i32, i32* %362
  %364 = sext i32 %363 to i64
  store i64 %364, i64* %RCX, align 8, !tbaa !2428
  %365 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %366 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %367 = load i64, i64* %RAX
  %368 = load i64, i64* %RCX
  %369 = mul i64 %368, 8
  %370 = add i64 %369, %367
  %371 = load i64, i64* %PC
  %372 = add i64 %371, 5
  store i64 %372, i64* %PC
  %373 = bitcast i8* %366 to double*
  %374 = load double, double* %373, align 1
  %375 = getelementptr inbounds i8, i8* %366, i64 8
  %376 = bitcast i8* %375 to i64*
  %377 = load i64, i64* %376, align 1
  %378 = inttoptr i64 %370 to double*
  %379 = load double, double* %378
  %380 = fmul double %374, %379
  %381 = bitcast i8* %365 to double*
  store double %380, double* %381, align 1, !tbaa !2452
  %382 = getelementptr inbounds i8, i8* %365, i64 8
  %383 = bitcast i8* %382 to i64*
  store i64 %377, i64* %383, align 1, !tbaa !2452
  %384 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %385 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %386 = bitcast %union.vec128_t* %XMM1 to i8*
  %387 = load i64, i64* %PC
  %388 = add i64 %387, 4
  store i64 %388, i64* %PC
  %389 = bitcast i8* %385 to double*
  %390 = load double, double* %389, align 1
  %391 = getelementptr inbounds i8, i8* %385, i64 8
  %392 = bitcast i8* %391 to i64*
  %393 = load i64, i64* %392, align 1
  %394 = bitcast i8* %386 to double*
  %395 = load double, double* %394, align 1
  %396 = fadd double %390, %395
  %397 = bitcast i8* %384 to double*
  store double %396, double* %397, align 1, !tbaa !2452
  %398 = getelementptr inbounds i8, i8* %384, i64 8
  %399 = bitcast i8* %398 to i64*
  store i64 %393, i64* %399, align 1, !tbaa !2452
  %400 = load i64, i64* %RBP
  %401 = sub i64 %400, 24
  %402 = load i64, i64* %PC
  %403 = add i64 %402, 4
  store i64 %403, i64* %PC
  %404 = inttoptr i64 %401 to i64*
  %405 = load i64, i64* %404
  store i64 %405, i64* %RAX, align 8, !tbaa !2428
  %406 = load i64, i64* %RBP
  %407 = sub i64 %406, 56
  %408 = load i64, i64* %PC
  %409 = add i64 %408, 4
  store i64 %409, i64* %PC
  %410 = inttoptr i64 %407 to i32*
  %411 = load i32, i32* %410
  %412 = sext i32 %411 to i64
  store i64 %412, i64* %RCX, align 8, !tbaa !2428
  %413 = load i64, i64* %RAX
  %414 = load i64, i64* %RCX
  %415 = mul i64 %414, 8
  %416 = add i64 %415, %413
  %417 = bitcast %union.vec128_t* %XMM0 to i8*
  %418 = load i64, i64* %PC
  %419 = add i64 %418, 5
  store i64 %419, i64* %PC
  %420 = bitcast i8* %417 to double*
  %421 = load double, double* %420, align 1
  %422 = inttoptr i64 %416 to double*
  store double %421, double* %422
  %423 = load i64, i64* %RBP
  %424 = sub i64 %423, 32
  %425 = load i64, i64* %PC
  %426 = add i64 %425, 4
  store i64 %426, i64* %PC
  %427 = inttoptr i64 %424 to i64*
  %428 = load i64, i64* %427
  store i64 %428, i64* %RAX, align 8, !tbaa !2428
  %429 = load i64, i64* %RBP
  %430 = sub i64 %429, 52
  %431 = load i64, i64* %PC
  %432 = add i64 %431, 4
  store i64 %432, i64* %PC
  %433 = inttoptr i64 %430 to i32*
  %434 = load i32, i32* %433
  %435 = sext i32 %434 to i64
  store i64 %435, i64* %RCX, align 8, !tbaa !2428
  %436 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %437 = load i64, i64* %RAX
  %438 = load i64, i64* %RCX
  %439 = mul i64 %438, 8
  %440 = add i64 %439, %437
  %441 = load i64, i64* %PC
  %442 = add i64 %441, 5
  store i64 %442, i64* %PC
  %443 = inttoptr i64 %440 to double*
  %444 = load double, double* %443
  %445 = bitcast i8* %436 to double*
  store double %444, double* %445, align 1, !tbaa !2452
  %446 = getelementptr inbounds i8, i8* %436, i64 8
  %447 = bitcast i8* %446 to double*
  store double 0.000000e+00, double* %447, align 1, !tbaa !2452
  %448 = load i64, i64* %RBP
  %449 = sub i64 %448, 16
  %450 = load i64, i64* %PC
  %451 = add i64 %450, 4
  store i64 %451, i64* %PC
  %452 = inttoptr i64 %449 to i64*
  %453 = load i64, i64* %452
  store i64 %453, i64* %RAX, align 8, !tbaa !2428
  %454 = load i64, i64* %RBP
  %455 = sub i64 %454, 52
  %456 = load i64, i64* %PC
  %457 = add i64 %456, 4
  store i64 %457, i64* %PC
  %458 = inttoptr i64 %455 to i32*
  %459 = load i32, i32* %458
  %460 = sext i32 %459 to i64
  store i64 %460, i64* %RCX, align 8, !tbaa !2428
  %461 = load i64, i64* %RCX
  %462 = load i64, i64* %PC
  %463 = add i64 %462, 7
  store i64 %463, i64* %PC
  %464 = sext i64 %461 to i128
  %465 = and i128 %464, -18446744073709551616
  %466 = zext i64 %461 to i128
  %467 = or i128 %465, %466
  %468 = mul nsw i128 32000, %467
  %469 = trunc i128 %468 to i64
  store i64 %469, i64* %RCX, align 8, !tbaa !2428
  %470 = sext i64 %469 to i128
  %471 = icmp ne i128 %470, %468
  %472 = zext i1 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %472, i8* %473, align 1, !tbaa !2432
  %474 = trunc i128 %468 to i32
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %475, align 1, !tbaa !2446
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %476, align 1, !tbaa !2447
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %477, align 1, !tbaa !2448
  %478 = lshr i64 %469, 63
  %479 = trunc i64 %478 to i8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %479, i8* %480, align 1, !tbaa !2449
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %472, i8* %481, align 1, !tbaa !2450
  %482 = load i64, i64* %RAX
  %483 = load i64, i64* %RCX
  %484 = load i64, i64* %PC
  %485 = add i64 %484, 3
  store i64 %485, i64* %PC
  %486 = add i64 %483, %482
  store i64 %486, i64* %RAX, align 8, !tbaa !2428
  %487 = icmp ult i64 %486, %482
  %488 = icmp ult i64 %486, %483
  %489 = or i1 %487, %488
  %490 = zext i1 %489 to i8
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %490, i8* %491, align 1, !tbaa !2432
  %492 = trunc i64 %486 to i32
  %493 = and i32 %492, 255
  %494 = call i32 @llvm.ctpop.i32(i32 %493) #16
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  %497 = xor i8 %496, 1
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %497, i8* %498, align 1, !tbaa !2446
  %499 = xor i64 %483, %482
  %500 = xor i64 %499, %486
  %501 = lshr i64 %500, 4
  %502 = trunc i64 %501 to i8
  %503 = and i8 %502, 1
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %503, i8* %504, align 1, !tbaa !2447
  %505 = icmp eq i64 %486, 0
  %506 = zext i1 %505 to i8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %506, i8* %507, align 1, !tbaa !2448
  %508 = lshr i64 %486, 63
  %509 = trunc i64 %508 to i8
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %509, i8* %510, align 1, !tbaa !2449
  %511 = lshr i64 %482, 63
  %512 = lshr i64 %483, 63
  %513 = xor i64 %508, %511
  %514 = xor i64 %508, %512
  %515 = add nuw nsw i64 %513, %514
  %516 = icmp eq i64 %515, 2
  %517 = zext i1 %516 to i8
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %517, i8* %518, align 1, !tbaa !2450
  %519 = load i64, i64* %RBP
  %520 = sub i64 %519, 56
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 4
  store i64 %522, i64* %PC
  %523 = inttoptr i64 %520 to i32*
  %524 = load i32, i32* %523
  %525 = sext i32 %524 to i64
  store i64 %525, i64* %RCX, align 8, !tbaa !2428
  %526 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %527 = load i64, i64* %RAX
  %528 = load i64, i64* %RCX
  %529 = mul i64 %528, 8
  %530 = add i64 %529, %527
  %531 = load i64, i64* %PC
  %532 = add i64 %531, 5
  store i64 %532, i64* %PC
  %533 = inttoptr i64 %530 to double*
  %534 = load double, double* %533
  %535 = bitcast i8* %526 to double*
  store double %534, double* %535, align 1, !tbaa !2452
  %536 = getelementptr inbounds i8, i8* %526, i64 8
  %537 = bitcast i8* %536 to double*
  store double 0.000000e+00, double* %537, align 1, !tbaa !2452
  %538 = load i64, i64* %RBP
  %539 = sub i64 %538, 40
  %540 = load i64, i64* %PC
  %541 = add i64 %540, 4
  store i64 %541, i64* %PC
  %542 = inttoptr i64 %539 to i64*
  %543 = load i64, i64* %542
  store i64 %543, i64* %RAX, align 8, !tbaa !2428
  %544 = load i64, i64* %RBP
  %545 = sub i64 %544, 56
  %546 = load i64, i64* %PC
  %547 = add i64 %546, 4
  store i64 %547, i64* %PC
  %548 = inttoptr i64 %545 to i32*
  %549 = load i32, i32* %548
  %550 = sext i32 %549 to i64
  store i64 %550, i64* %RCX, align 8, !tbaa !2428
  %551 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %552 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %553 = load i64, i64* %RAX
  %554 = load i64, i64* %RCX
  %555 = mul i64 %554, 8
  %556 = add i64 %555, %553
  %557 = load i64, i64* %PC
  %558 = add i64 %557, 5
  store i64 %558, i64* %PC
  %559 = bitcast i8* %552 to double*
  %560 = load double, double* %559, align 1
  %561 = getelementptr inbounds i8, i8* %552, i64 8
  %562 = bitcast i8* %561 to i64*
  %563 = load i64, i64* %562, align 1
  %564 = inttoptr i64 %556 to double*
  %565 = load double, double* %564
  %566 = fmul double %560, %565
  %567 = bitcast i8* %551 to double*
  store double %566, double* %567, align 1, !tbaa !2452
  %568 = getelementptr inbounds i8, i8* %551, i64 8
  %569 = bitcast i8* %568 to i64*
  store i64 %563, i64* %569, align 1, !tbaa !2452
  %570 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %571 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %572 = bitcast %union.vec128_t* %XMM1 to i8*
  %573 = load i64, i64* %PC
  %574 = add i64 %573, 4
  store i64 %574, i64* %PC
  %575 = bitcast i8* %571 to double*
  %576 = load double, double* %575, align 1
  %577 = getelementptr inbounds i8, i8* %571, i64 8
  %578 = bitcast i8* %577 to i64*
  %579 = load i64, i64* %578, align 1
  %580 = bitcast i8* %572 to double*
  %581 = load double, double* %580, align 1
  %582 = fadd double %576, %581
  %583 = bitcast i8* %570 to double*
  store double %582, double* %583, align 1, !tbaa !2452
  %584 = getelementptr inbounds i8, i8* %570, i64 8
  %585 = bitcast i8* %584 to i64*
  store i64 %579, i64* %585, align 1, !tbaa !2452
  %586 = load i64, i64* %RBP
  %587 = sub i64 %586, 32
  %588 = load i64, i64* %PC
  %589 = add i64 %588, 4
  store i64 %589, i64* %PC
  %590 = inttoptr i64 %587 to i64*
  %591 = load i64, i64* %590
  store i64 %591, i64* %RAX, align 8, !tbaa !2428
  %592 = load i64, i64* %RBP
  %593 = sub i64 %592, 52
  %594 = load i64, i64* %PC
  %595 = add i64 %594, 4
  store i64 %595, i64* %PC
  %596 = inttoptr i64 %593 to i32*
  %597 = load i32, i32* %596
  %598 = sext i32 %597 to i64
  store i64 %598, i64* %RCX, align 8, !tbaa !2428
  %599 = load i64, i64* %RAX
  %600 = load i64, i64* %RCX
  %601 = mul i64 %600, 8
  %602 = add i64 %601, %599
  %603 = bitcast %union.vec128_t* %XMM0 to i8*
  %604 = load i64, i64* %PC
  %605 = add i64 %604, 5
  store i64 %605, i64* %PC
  %606 = bitcast i8* %603 to double*
  %607 = load double, double* %606, align 1
  %608 = inttoptr i64 %602 to double*
  store double %607, double* %608
  %609 = load i64, i64* %RBP
  %610 = sub i64 %609, 56
  %611 = load i64, i64* %PC
  %612 = add i64 %611, 3
  store i64 %612, i64* %PC
  %613 = inttoptr i64 %610 to i32*
  %614 = load i32, i32* %613
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %RAX, align 8, !tbaa !2428
  %616 = load i64, i64* %RAX
  %617 = load i64, i64* %PC
  %618 = add i64 %617, 3
  store i64 %618, i64* %PC
  %619 = trunc i64 %616 to i32
  %620 = add i32 1, %619
  %621 = zext i32 %620 to i64
  store i64 %621, i64* %RAX, align 8, !tbaa !2428
  %622 = icmp ult i32 %620, %619
  %623 = icmp ult i32 %620, 1
  %624 = or i1 %622, %623
  %625 = zext i1 %624 to i8
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %625, i8* %626, align 1, !tbaa !2432
  %627 = and i32 %620, 255
  %628 = call i32 @llvm.ctpop.i32(i32 %627) #16
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  %631 = xor i8 %630, 1
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %631, i8* %632, align 1, !tbaa !2446
  %633 = xor i64 1, %616
  %634 = trunc i64 %633 to i32
  %635 = xor i32 %634, %620
  %636 = lshr i32 %635, 4
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %638, i8* %639, align 1, !tbaa !2447
  %640 = icmp eq i32 %620, 0
  %641 = zext i1 %640 to i8
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %641, i8* %642, align 1, !tbaa !2448
  %643 = lshr i32 %620, 31
  %644 = trunc i32 %643 to i8
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %644, i8* %645, align 1, !tbaa !2449
  %646 = lshr i32 %619, 31
  %647 = xor i32 %643, %646
  %648 = add nuw nsw i32 %647, %643
  %649 = icmp eq i32 %648, 2
  %650 = zext i1 %649 to i8
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %650, i8* %651, align 1, !tbaa !2450
  %652 = load i64, i64* %RBP
  %653 = sub i64 %652, 56
  %654 = load i32, i32* %EAX
  %655 = zext i32 %654 to i64
  %656 = load i64, i64* %PC
  %657 = add i64 %656, 3
  store i64 %657, i64* %PC
  %658 = inttoptr i64 %653 to i32*
  store i32 %654, i32* %658
  %659 = load i64, i64* %PC
  %660 = sub i64 %659, 161
  %661 = load i64, i64* %PC
  %662 = add i64 %661, 5
  store i64 %662, i64* %PC
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %660, i64* %663, align 8, !tbaa !2428
  br label %block_400ddd

block_400d95:                                     ; preds = %block_400d89
  %664 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %665 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %666 = bitcast %union.vec128_t* %XMM0 to i8*
  %667 = load i64, i64* %PC
  %668 = add i64 %667, 3
  store i64 %668, i64* %PC
  %669 = bitcast i8* %665 to i64*
  %670 = load i64, i64* %669, align 1
  %671 = getelementptr inbounds i8, i8* %665, i64 8
  %672 = bitcast i8* %671 to i64*
  %673 = load i64, i64* %672, align 1
  %674 = bitcast i8* %666 to i64*
  %675 = load i64, i64* %674, align 1
  %676 = getelementptr inbounds i8, i8* %666, i64 8
  %677 = bitcast i8* %676 to i64*
  %678 = load i64, i64* %677, align 1
  %679 = xor i64 %675, %670
  %680 = xor i64 %678, %673
  %681 = trunc i64 %679 to i32
  %682 = lshr i64 %679, 32
  %683 = trunc i64 %682 to i32
  %684 = bitcast i8* %664 to i32*
  store i32 %681, i32* %684, align 1, !tbaa !2454
  %685 = getelementptr inbounds i8, i8* %664, i64 4
  %686 = bitcast i8* %685 to i32*
  store i32 %683, i32* %686, align 1, !tbaa !2454
  %687 = trunc i64 %680 to i32
  %688 = getelementptr inbounds i8, i8* %664, i64 8
  %689 = bitcast i8* %688 to i32*
  store i32 %687, i32* %689, align 1, !tbaa !2454
  %690 = lshr i64 %680, 32
  %691 = trunc i64 %690 to i32
  %692 = getelementptr inbounds i8, i8* %664, i64 12
  %693 = bitcast i8* %692 to i32*
  store i32 %691, i32* %693, align 1, !tbaa !2454
  %694 = load i64, i64* %RBP
  %695 = sub i64 %694, 24
  %696 = load i64, i64* %PC
  %697 = add i64 %696, 4
  store i64 %697, i64* %PC
  %698 = inttoptr i64 %695 to i64*
  %699 = load i64, i64* %698
  store i64 %699, i64* %RAX, align 8, !tbaa !2428
  %700 = load i64, i64* %RBP
  %701 = sub i64 %700, 52
  %702 = load i64, i64* %PC
  %703 = add i64 %702, 4
  store i64 %703, i64* %PC
  %704 = inttoptr i64 %701 to i32*
  %705 = load i32, i32* %704
  %706 = sext i32 %705 to i64
  store i64 %706, i64* %RCX, align 8, !tbaa !2428
  %707 = load i64, i64* %RAX
  %708 = load i64, i64* %RCX
  %709 = mul i64 %708, 8
  %710 = add i64 %709, %707
  %711 = bitcast %union.vec128_t* %XMM0 to i8*
  %712 = load i64, i64* %PC
  %713 = add i64 %712, 5
  store i64 %713, i64* %PC
  %714 = bitcast i8* %711 to double*
  %715 = load double, double* %714, align 1
  %716 = inttoptr i64 %710 to double*
  store double %715, double* %716
  %717 = load i64, i64* %RBP
  %718 = sub i64 %717, 52
  %719 = load i64, i64* %PC
  %720 = add i64 %719, 3
  store i64 %720, i64* %PC
  %721 = inttoptr i64 %718 to i32*
  %722 = load i32, i32* %721
  %723 = zext i32 %722 to i64
  store i64 %723, i64* %RAX, align 8, !tbaa !2428
  %724 = load i64, i64* %RAX
  %725 = load i64, i64* %PC
  %726 = add i64 %725, 3
  store i64 %726, i64* %PC
  %727 = trunc i64 %724 to i32
  %728 = add i32 1, %727
  %729 = zext i32 %728 to i64
  store i64 %729, i64* %RAX, align 8, !tbaa !2428
  %730 = icmp ult i32 %728, %727
  %731 = icmp ult i32 %728, 1
  %732 = or i1 %730, %731
  %733 = zext i1 %732 to i8
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %733, i8* %734, align 1, !tbaa !2432
  %735 = and i32 %728, 255
  %736 = call i32 @llvm.ctpop.i32(i32 %735) #16
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %739, i8* %740, align 1, !tbaa !2446
  %741 = xor i64 1, %724
  %742 = trunc i64 %741 to i32
  %743 = xor i32 %742, %728
  %744 = lshr i32 %743, 4
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %746, i8* %747, align 1, !tbaa !2447
  %748 = icmp eq i32 %728, 0
  %749 = zext i1 %748 to i8
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %749, i8* %750, align 1, !tbaa !2448
  %751 = lshr i32 %728, 31
  %752 = trunc i32 %751 to i8
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %752, i8* %753, align 1, !tbaa !2449
  %754 = lshr i32 %727, 31
  %755 = xor i32 %751, %754
  %756 = add nuw nsw i32 %755, %751
  %757 = icmp eq i32 %756, 2
  %758 = zext i1 %757 to i8
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %758, i8* %759, align 1, !tbaa !2450
  %760 = load i64, i64* %RBP
  %761 = sub i64 %760, 52
  %762 = load i32, i32* %EAX
  %763 = zext i32 %762 to i64
  %764 = load i64, i64* %PC
  %765 = add i64 %764, 3
  store i64 %765, i64* %PC
  %766 = inttoptr i64 %761 to i32*
  store i32 %762, i32* %766
  %767 = load i64, i64* %PC
  %768 = sub i64 %767, 37
  %769 = load i64, i64* %PC
  %770 = add i64 %769, 5
  store i64 %770, i64* %PC
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %768, i64* %771, align 8, !tbaa !2428
  br label %block_400d89

block_400d89:                                     ; preds = %block_400d95, %block_400d60
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_400d60 ], [ %MEMORY.2, %block_400d95 ]
  %772 = load i64, i64* %RBP
  %773 = sub i64 %772, 52
  %774 = load i64, i64* %PC
  %775 = add i64 %774, 3
  store i64 %775, i64* %PC
  %776 = inttoptr i64 %773 to i32*
  %777 = load i32, i32* %776
  %778 = zext i32 %777 to i64
  store i64 %778, i64* %RAX, align 8, !tbaa !2428
  %779 = load i32, i32* %EAX
  %780 = zext i32 %779 to i64
  %781 = load i64, i64* %RBP
  %782 = sub i64 %781, 8
  %783 = load i64, i64* %PC
  %784 = add i64 %783, 3
  store i64 %784, i64* %PC
  %785 = inttoptr i64 %782 to i32*
  %786 = load i32, i32* %785
  %787 = sub i32 %779, %786
  %788 = icmp ult i32 %779, %786
  %789 = zext i1 %788 to i8
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %789, i8* %790, align 1, !tbaa !2432
  %791 = and i32 %787, 255
  %792 = call i32 @llvm.ctpop.i32(i32 %791) #16
  %793 = trunc i32 %792 to i8
  %794 = and i8 %793, 1
  %795 = xor i8 %794, 1
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %795, i8* %796, align 1, !tbaa !2446
  %797 = xor i32 %786, %779
  %798 = xor i32 %797, %787
  %799 = lshr i32 %798, 4
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %801, i8* %802, align 1, !tbaa !2447
  %803 = icmp eq i32 %787, 0
  %804 = zext i1 %803 to i8
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %804, i8* %805, align 1, !tbaa !2448
  %806 = lshr i32 %787, 31
  %807 = trunc i32 %806 to i8
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %807, i8* %808, align 1, !tbaa !2449
  %809 = lshr i32 %779, 31
  %810 = lshr i32 %786, 31
  %811 = xor i32 %810, %809
  %812 = xor i32 %806, %809
  %813 = add nuw nsw i32 %812, %811
  %814 = icmp eq i32 %813, 2
  %815 = zext i1 %814 to i8
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %815, i8* %816, align 1, !tbaa !2450
  %817 = load i64, i64* %PC
  %818 = add i64 %817, 36
  %819 = load i64, i64* %PC
  %820 = add i64 %819, 6
  %821 = load i64, i64* %PC
  %822 = add i64 %821, 6
  store i64 %822, i64* %PC
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %824 = load i8, i8* %823, align 1, !tbaa !2449
  %825 = icmp ne i8 %824, 0
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %827 = load i8, i8* %826, align 1, !tbaa !2450
  %828 = icmp ne i8 %827, 0
  %829 = xor i1 %825, %828
  %830 = xor i1 %829, true
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %833 = select i1 %829, i64 %820, i64 %818
  store i64 %833, i64* %832, align 8, !tbaa !2428
  %834 = load i8, i8* %BRANCH_TAKEN
  %835 = icmp eq i8 %834, 1
  br i1 %835, label %block_400db3, label %block_400d95

block_400e96:                                     ; preds = %block_400dba
  %836 = load i64, i64* %PC
  %837 = add i64 %836, 1
  store i64 %837, i64* %PC
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %839 = load i64, i64* %838, align 8, !tbaa !2428
  %840 = add i64 %839, 8
  %841 = inttoptr i64 %839 to i64*
  %842 = load i64, i64* %841
  store i64 %842, i64* %RBP, align 8, !tbaa !2428
  store i64 %840, i64* %838, align 8, !tbaa !2428
  %843 = load i64, i64* %PC
  %844 = add i64 %843, 1
  store i64 %844, i64* %PC
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %847 = load i64, i64* %846, align 8, !tbaa !2428
  %848 = inttoptr i64 %847 to i64*
  %849 = load i64, i64* %848
  store i64 %849, i64* %845, align 8, !tbaa !2428
  %850 = add i64 %847, 8
  store i64 %850, i64* %846, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_400dc6:                                     ; preds = %block_400dba
  %851 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %852 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %853 = bitcast %union.vec128_t* %XMM0 to i8*
  %854 = load i64, i64* %PC
  %855 = add i64 %854, 3
  store i64 %855, i64* %PC
  %856 = bitcast i8* %852 to i64*
  %857 = load i64, i64* %856, align 1
  %858 = getelementptr inbounds i8, i8* %852, i64 8
  %859 = bitcast i8* %858 to i64*
  %860 = load i64, i64* %859, align 1
  %861 = bitcast i8* %853 to i64*
  %862 = load i64, i64* %861, align 1
  %863 = getelementptr inbounds i8, i8* %853, i64 8
  %864 = bitcast i8* %863 to i64*
  %865 = load i64, i64* %864, align 1
  %866 = xor i64 %862, %857
  %867 = xor i64 %865, %860
  %868 = trunc i64 %866 to i32
  %869 = lshr i64 %866, 32
  %870 = trunc i64 %869 to i32
  %871 = bitcast i8* %851 to i32*
  store i32 %868, i32* %871, align 1, !tbaa !2454
  %872 = getelementptr inbounds i8, i8* %851, i64 4
  %873 = bitcast i8* %872 to i32*
  store i32 %870, i32* %873, align 1, !tbaa !2454
  %874 = trunc i64 %867 to i32
  %875 = getelementptr inbounds i8, i8* %851, i64 8
  %876 = bitcast i8* %875 to i32*
  store i32 %874, i32* %876, align 1, !tbaa !2454
  %877 = lshr i64 %867, 32
  %878 = trunc i64 %877 to i32
  %879 = getelementptr inbounds i8, i8* %851, i64 12
  %880 = bitcast i8* %879 to i32*
  store i32 %878, i32* %880, align 1, !tbaa !2454
  %881 = load i64, i64* %RBP
  %882 = sub i64 %881, 32
  %883 = load i64, i64* %PC
  %884 = add i64 %883, 4
  store i64 %884, i64* %PC
  %885 = inttoptr i64 %882 to i64*
  %886 = load i64, i64* %885
  store i64 %886, i64* %RAX, align 8, !tbaa !2428
  %887 = load i64, i64* %RBP
  %888 = sub i64 %887, 52
  %889 = load i64, i64* %PC
  %890 = add i64 %889, 4
  store i64 %890, i64* %PC
  %891 = inttoptr i64 %888 to i32*
  %892 = load i32, i32* %891
  %893 = sext i32 %892 to i64
  store i64 %893, i64* %RCX, align 8, !tbaa !2428
  %894 = load i64, i64* %RAX
  %895 = load i64, i64* %RCX
  %896 = mul i64 %895, 8
  %897 = add i64 %896, %894
  %898 = bitcast %union.vec128_t* %XMM0 to i8*
  %899 = load i64, i64* %PC
  %900 = add i64 %899, 5
  store i64 %900, i64* %PC
  %901 = bitcast i8* %898 to double*
  %902 = load double, double* %901, align 1
  %903 = inttoptr i64 %897 to double*
  store double %902, double* %903
  %904 = load i64, i64* %RBP
  %905 = sub i64 %904, 56
  %906 = load i64, i64* %PC
  %907 = add i64 %906, 7
  store i64 %907, i64* %PC
  %908 = inttoptr i64 %905 to i32*
  store i32 0, i32* %908
  br label %block_400ddd

block_400db3:                                     ; preds = %block_400d89
  %909 = load i64, i64* %RBP
  %910 = sub i64 %909, 52
  %911 = load i64, i64* %PC
  %912 = add i64 %911, 7
  store i64 %912, i64* %PC
  %913 = inttoptr i64 %910 to i32*
  store i32 0, i32* %913
  br label %block_400dba

block_400e83:                                     ; preds = %block_400ddd
  %914 = load i64, i64* %PC
  %915 = add i64 %914, 5
  %916 = load i64, i64* %PC
  %917 = add i64 %916, 5
  store i64 %917, i64* %PC
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %915, i64* %918, align 8, !tbaa !2428
  %919 = load i64, i64* %RBP
  %920 = sub i64 %919, 52
  %921 = load i64, i64* %PC
  %922 = add i64 %921, 3
  store i64 %922, i64* %PC
  %923 = inttoptr i64 %920 to i32*
  %924 = load i32, i32* %923
  %925 = zext i32 %924 to i64
  store i64 %925, i64* %RAX, align 8, !tbaa !2428
  %926 = load i64, i64* %RAX
  %927 = load i64, i64* %PC
  %928 = add i64 %927, 3
  store i64 %928, i64* %PC
  %929 = trunc i64 %926 to i32
  %930 = add i32 1, %929
  %931 = zext i32 %930 to i64
  store i64 %931, i64* %RAX, align 8, !tbaa !2428
  %932 = icmp ult i32 %930, %929
  %933 = icmp ult i32 %930, 1
  %934 = or i1 %932, %933
  %935 = zext i1 %934 to i8
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %935, i8* %936, align 1, !tbaa !2432
  %937 = and i32 %930, 255
  %938 = call i32 @llvm.ctpop.i32(i32 %937) #16
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  %941 = xor i8 %940, 1
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %941, i8* %942, align 1, !tbaa !2446
  %943 = xor i64 1, %926
  %944 = trunc i64 %943 to i32
  %945 = xor i32 %944, %930
  %946 = lshr i32 %945, 4
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %948, i8* %949, align 1, !tbaa !2447
  %950 = icmp eq i32 %930, 0
  %951 = zext i1 %950 to i8
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %951, i8* %952, align 1, !tbaa !2448
  %953 = lshr i32 %930, 31
  %954 = trunc i32 %953 to i8
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %954, i8* %955, align 1, !tbaa !2449
  %956 = lshr i32 %929, 31
  %957 = xor i32 %953, %956
  %958 = add nuw nsw i32 %957, %953
  %959 = icmp eq i32 %958, 2
  %960 = zext i1 %959 to i8
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %960, i8* %961, align 1, !tbaa !2450
  %962 = load i64, i64* %RBP
  %963 = sub i64 %962, 52
  %964 = load i32, i32* %EAX
  %965 = zext i32 %964 to i64
  %966 = load i64, i64* %PC
  %967 = add i64 %966, 3
  store i64 %967, i64* %PC
  %968 = inttoptr i64 %963 to i32*
  store i32 %964, i32* %968
  %969 = load i64, i64* %PC
  %970 = sub i64 %969, 215
  %971 = load i64, i64* %PC
  %972 = add i64 %971, 5
  store i64 %972, i64* %PC
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %970, i64* %973, align 8, !tbaa !2428
  br label %block_400dba
}

; Function Attrs: noinline
define %struct.Memory* @sub_400940_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400940:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %EDI = bitcast %union.anon* %14 to i32*
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
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %37 = getelementptr inbounds %struct.GPR, %struct.GPR* %36, i32 0, i32 17
  %38 = getelementptr inbounds %struct.Reg, %struct.Reg* %37, i32 0, i32 0
  %R8 = bitcast %union.anon* %38 to i64*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 19
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %R9 = bitcast %union.anon* %41 to i64*
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
  %55 = sub i64 %52, 96
  store i64 %55, i64* %RSP, align 8, !tbaa !2428
  %56 = icmp ult i64 %52, 96
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
  %66 = xor i64 96, %52
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
  %84 = load i64, i64* %PC
  %85 = add i64 %84, 5
  store i64 %85, i64* %PC
  store i64 16000000, i64* %RAX, align 8, !tbaa !2428
  %86 = load i32, i32* %EAX
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 2
  store i64 %89, i64* %PC
  %90 = and i64 %87, 4294967295
  store i64 %90, i64* %RCX, align 8, !tbaa !2428
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 5
  store i64 %92, i64* %PC
  store i64 8, i64* %RAX, align 8, !tbaa !2428
  %93 = load i64, i64* %RBP
  %94 = sub i64 %93, 4
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 7
  store i64 %96, i64* %PC
  %97 = inttoptr i64 %94 to i32*
  store i32 0, i32* %97
  %98 = load i64, i64* %RBP
  %99 = sub i64 %98, 8
  %100 = load i32, i32* %EDI
  %101 = zext i32 %100 to i64
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 3
  store i64 %103, i64* %PC
  %104 = inttoptr i64 %99 to i32*
  store i32 %100, i32* %104
  %105 = load i64, i64* %RBP
  %106 = sub i64 %105, 16
  %107 = load i64, i64* %RSI
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 4
  store i64 %109, i64* %PC
  %110 = inttoptr i64 %106 to i64*
  store i64 %107, i64* %110
  %111 = load i64, i64* %RBP
  %112 = sub i64 %111, 20
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 7
  store i64 %114, i64* %PC
  %115 = inttoptr i64 %112 to i32*
  store i32 4000, i32* %115
  %116 = load i64, i64* %RBP
  %117 = sub i64 %116, 24
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 7
  store i64 %119, i64* %PC
  %120 = inttoptr i64 %117 to i32*
  store i32 4000, i32* %120
  %121 = load i64, i64* %RCX
  %122 = load i64, i64* %PC
  %123 = add i64 %122, 3
  store i64 %123, i64* %PC
  store i64 %121, i64* %RDI, align 8, !tbaa !2428
  %124 = load i32, i32* %EAX
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 2
  store i64 %127, i64* %PC
  %128 = and i64 %125, 4294967295
  store i64 %128, i64* %RSI, align 8, !tbaa !2428
  %129 = load i64, i64* %PC
  %130 = sub i64 %129, 245
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 5
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 5
  store i64 %134, i64* %PC
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %136 = load i64, i64* %135, align 8, !tbaa !2428
  %137 = add i64 %136, -8
  %138 = inttoptr i64 %137 to i64*
  store i64 %132, i64* %138
  store i64 %137, i64* %135, align 8, !tbaa !2428
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %130, i64* %139, align 8, !tbaa !2428
  %140 = load i64, i64* %PC
  %141 = call %struct.Memory* @sub_400880_polybench_alloc_data(%struct.State* %0, i64 %140, %struct.Memory* %2)
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 5
  store i64 %143, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %144 = load i32, i32* %ESI
  %145 = zext i32 %144 to i64
  %146 = load i64, i64* %PC
  %147 = add i64 %146, 2
  store i64 %147, i64* %PC
  %148 = and i64 %145, 4294967295
  store i64 %148, i64* %RDI, align 8, !tbaa !2428
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 5
  store i64 %150, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %151 = load i64, i64* %RBP
  %152 = sub i64 %151, 32
  %153 = load i64, i64* %RAX
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 4
  store i64 %155, i64* %PC
  %156 = inttoptr i64 %152 to i64*
  store i64 %153, i64* %156
  %157 = load i64, i64* %PC
  %158 = sub i64 %157, 266
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 5
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 5
  store i64 %162, i64* %PC
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %164 = load i64, i64* %163, align 8, !tbaa !2428
  %165 = add i64 %164, -8
  %166 = inttoptr i64 %165 to i64*
  store i64 %160, i64* %166
  store i64 %165, i64* %163, align 8, !tbaa !2428
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %158, i64* %167, align 8, !tbaa !2428
  %168 = load i64, i64* %PC
  %169 = call %struct.Memory* @sub_400880_polybench_alloc_data(%struct.State* %0, i64 %168, %struct.Memory* %141)
  %170 = load i64, i64* %PC
  %171 = add i64 %170, 5
  store i64 %171, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %172 = load i32, i32* %ESI
  %173 = zext i32 %172 to i64
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 2
  store i64 %175, i64* %PC
  %176 = and i64 %173, 4294967295
  store i64 %176, i64* %RDI, align 8, !tbaa !2428
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 5
  store i64 %178, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %179 = load i64, i64* %RBP
  %180 = sub i64 %179, 40
  %181 = load i64, i64* %RAX
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 4
  store i64 %183, i64* %PC
  %184 = inttoptr i64 %180 to i64*
  store i64 %181, i64* %184
  %185 = load i64, i64* %PC
  %186 = sub i64 %185, 287
  %187 = load i64, i64* %PC
  %188 = add i64 %187, 5
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 5
  store i64 %190, i64* %PC
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %192 = load i64, i64* %191, align 8, !tbaa !2428
  %193 = add i64 %192, -8
  %194 = inttoptr i64 %193 to i64*
  store i64 %188, i64* %194
  store i64 %193, i64* %191, align 8, !tbaa !2428
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %186, i64* %195, align 8, !tbaa !2428
  %196 = load i64, i64* %PC
  %197 = call %struct.Memory* @sub_400880_polybench_alloc_data(%struct.State* %0, i64 %196, %struct.Memory* %169)
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 5
  store i64 %199, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %200 = load i32, i32* %ESI
  %201 = zext i32 %200 to i64
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 2
  store i64 %203, i64* %PC
  %204 = and i64 %201, 4294967295
  store i64 %204, i64* %RDI, align 8, !tbaa !2428
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 5
  store i64 %206, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %207 = load i64, i64* %RBP
  %208 = sub i64 %207, 48
  %209 = load i64, i64* %RAX
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 4
  store i64 %211, i64* %PC
  %212 = inttoptr i64 %208 to i64*
  store i64 %209, i64* %212
  %213 = load i64, i64* %PC
  %214 = sub i64 %213, 308
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 5
  %217 = load i64, i64* %PC
  %218 = add i64 %217, 5
  store i64 %218, i64* %PC
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %220 = load i64, i64* %219, align 8, !tbaa !2428
  %221 = add i64 %220, -8
  %222 = inttoptr i64 %221 to i64*
  store i64 %216, i64* %222
  store i64 %221, i64* %219, align 8, !tbaa !2428
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %214, i64* %223, align 8, !tbaa !2428
  %224 = load i64, i64* %PC
  %225 = call %struct.Memory* @sub_400880_polybench_alloc_data(%struct.State* %0, i64 %224, %struct.Memory* %197)
  %226 = load i64, i64* %PC
  %227 = add i64 %226, 5
  store i64 %227, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %228 = load i32, i32* %ESI
  %229 = zext i32 %228 to i64
  %230 = load i64, i64* %PC
  %231 = add i64 %230, 2
  store i64 %231, i64* %PC
  %232 = and i64 %229, 4294967295
  store i64 %232, i64* %RDI, align 8, !tbaa !2428
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 5
  store i64 %234, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %235 = load i64, i64* %RBP
  %236 = sub i64 %235, 56
  %237 = load i64, i64* %RAX
  %238 = load i64, i64* %PC
  %239 = add i64 %238, 4
  store i64 %239, i64* %PC
  %240 = inttoptr i64 %236 to i64*
  store i64 %237, i64* %240
  %241 = load i64, i64* %PC
  %242 = sub i64 %241, 329
  %243 = load i64, i64* %PC
  %244 = add i64 %243, 5
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 5
  store i64 %246, i64* %PC
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %248 = load i64, i64* %247, align 8, !tbaa !2428
  %249 = add i64 %248, -8
  %250 = inttoptr i64 %249 to i64*
  store i64 %244, i64* %250
  store i64 %249, i64* %247, align 8, !tbaa !2428
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %242, i64* %251, align 8, !tbaa !2428
  %252 = load i64, i64* %PC
  %253 = call %struct.Memory* @sub_400880_polybench_alloc_data(%struct.State* %0, i64 %252, %struct.Memory* %225)
  %254 = load i64, i64* %PC
  %255 = add i64 %254, 5
  store i64 %255, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %256 = load i32, i32* %ESI
  %257 = zext i32 %256 to i64
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 2
  store i64 %259, i64* %PC
  %260 = and i64 %257, 4294967295
  store i64 %260, i64* %RDI, align 8, !tbaa !2428
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 5
  store i64 %262, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %263 = load i64, i64* %RBP
  %264 = sub i64 %263, 64
  %265 = load i64, i64* %RAX
  %266 = load i64, i64* %PC
  %267 = add i64 %266, 4
  store i64 %267, i64* %PC
  %268 = inttoptr i64 %264 to i64*
  store i64 %265, i64* %268
  %269 = load i64, i64* %PC
  %270 = sub i64 %269, 350
  %271 = load i64, i64* %PC
  %272 = add i64 %271, 5
  %273 = load i64, i64* %PC
  %274 = add i64 %273, 5
  store i64 %274, i64* %PC
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %276 = load i64, i64* %275, align 8, !tbaa !2428
  %277 = add i64 %276, -8
  %278 = inttoptr i64 %277 to i64*
  store i64 %272, i64* %278
  store i64 %277, i64* %275, align 8, !tbaa !2428
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %270, i64* %279, align 8, !tbaa !2428
  %280 = load i64, i64* %PC
  %281 = call %struct.Memory* @sub_400880_polybench_alloc_data(%struct.State* %0, i64 %280, %struct.Memory* %253)
  %282 = load i64, i64* %PC
  %283 = add i64 %282, 5
  store i64 %283, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %284 = load i32, i32* %ESI
  %285 = zext i32 %284 to i64
  %286 = load i64, i64* %PC
  %287 = add i64 %286, 2
  store i64 %287, i64* %PC
  %288 = and i64 %285, 4294967295
  store i64 %288, i64* %RDI, align 8, !tbaa !2428
  %289 = load i64, i64* %PC
  %290 = add i64 %289, 5
  store i64 %290, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %291 = load i64, i64* %RBP
  %292 = sub i64 %291, 72
  %293 = load i64, i64* %RAX
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 4
  store i64 %295, i64* %PC
  %296 = inttoptr i64 %292 to i64*
  store i64 %293, i64* %296
  %297 = load i64, i64* %PC
  %298 = sub i64 %297, 371
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
  %309 = call %struct.Memory* @sub_400880_polybench_alloc_data(%struct.State* %0, i64 %308, %struct.Memory* %281)
  %310 = load i64, i64* %RBP
  %311 = sub i64 %310, 80
  %312 = load i64, i64* %RAX
  %313 = load i64, i64* %PC
  %314 = add i64 %313, 4
  store i64 %314, i64* %PC
  %315 = inttoptr i64 %311 to i64*
  store i64 %312, i64* %315
  %316 = load i64, i64* %RBP
  %317 = sub i64 %316, 20
  %318 = load i64, i64* %PC
  %319 = add i64 %318, 3
  store i64 %319, i64* %PC
  %320 = inttoptr i64 %317 to i32*
  %321 = load i32, i32* %320
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RDI, align 8, !tbaa !2428
  %323 = load i64, i64* %RBP
  %324 = sub i64 %323, 24
  %325 = load i64, i64* %PC
  %326 = add i64 %325, 3
  store i64 %326, i64* %PC
  %327 = inttoptr i64 %324 to i32*
  %328 = load i32, i32* %327
  %329 = zext i32 %328 to i64
  store i64 %329, i64* %RSI, align 8, !tbaa !2428
  %330 = load i64, i64* %RBP
  %331 = sub i64 %330, 32
  %332 = load i64, i64* %PC
  %333 = add i64 %332, 4
  store i64 %333, i64* %PC
  %334 = inttoptr i64 %331 to i64*
  %335 = load i64, i64* %334
  store i64 %335, i64* %RDX, align 8, !tbaa !2428
  %336 = load i64, i64* %RBP
  %337 = sub i64 %336, 64
  %338 = load i64, i64* %PC
  %339 = add i64 %338, 4
  store i64 %339, i64* %PC
  %340 = inttoptr i64 %337 to i64*
  %341 = load i64, i64* %340
  store i64 %341, i64* %RCX, align 8, !tbaa !2428
  %342 = load i64, i64* %RBP
  %343 = sub i64 %342, 56
  %344 = load i64, i64* %PC
  %345 = add i64 %344, 4
  store i64 %345, i64* %PC
  %346 = inttoptr i64 %343 to i64*
  %347 = load i64, i64* %346
  store i64 %347, i64* %R8, align 8, !tbaa !2428
  %348 = load i64, i64* %PC
  %349 = add i64 %348, 274
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
  %360 = call %struct.Memory* @sub_400b20_init_array(%struct.State* %0, i64 %359, %struct.Memory* %309)
  %361 = load i64, i64* %RBP
  %362 = sub i64 %361, 20
  %363 = load i64, i64* %PC
  %364 = add i64 %363, 3
  store i64 %364, i64* %PC
  %365 = inttoptr i64 %362 to i32*
  %366 = load i32, i32* %365
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RDI, align 8, !tbaa !2428
  %368 = load i64, i64* %RBP
  %369 = sub i64 %368, 24
  %370 = load i64, i64* %PC
  %371 = add i64 %370, 3
  store i64 %371, i64* %PC
  %372 = inttoptr i64 %369 to i32*
  %373 = load i32, i32* %372
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RSI, align 8, !tbaa !2428
  %375 = load i64, i64* %RBP
  %376 = sub i64 %375, 32
  %377 = load i64, i64* %PC
  %378 = add i64 %377, 4
  store i64 %378, i64* %PC
  %379 = inttoptr i64 %376 to i64*
  %380 = load i64, i64* %379
  store i64 %380, i64* %RDX, align 8, !tbaa !2428
  %381 = load i64, i64* %RBP
  %382 = sub i64 %381, 40
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 4
  store i64 %384, i64* %PC
  %385 = inttoptr i64 %382 to i64*
  %386 = load i64, i64* %385
  store i64 %386, i64* %RCX, align 8, !tbaa !2428
  %387 = load i64, i64* %RBP
  %388 = sub i64 %387, 48
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 4
  store i64 %390, i64* %PC
  %391 = inttoptr i64 %388 to i64*
  %392 = load i64, i64* %391
  store i64 %392, i64* %R8, align 8, !tbaa !2428
  %393 = load i64, i64* %RBP
  %394 = sub i64 %393, 56
  %395 = load i64, i64* %PC
  %396 = add i64 %395, 4
  store i64 %396, i64* %PC
  %397 = inttoptr i64 %394 to i64*
  %398 = load i64, i64* %397
  store i64 %398, i64* %R9, align 8, !tbaa !2428
  %399 = load i64, i64* %RBP
  %400 = sub i64 %399, 64
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 4
  store i64 %402, i64* %PC
  %403 = inttoptr i64 %400 to i64*
  %404 = load i64, i64* %403
  store i64 %404, i64* %RAX, align 8, !tbaa !2428
  %405 = load i64, i64* %RSP
  %406 = load i64, i64* %RAX
  %407 = load i64, i64* %PC
  %408 = add i64 %407, 4
  store i64 %408, i64* %PC
  %409 = inttoptr i64 %405 to i64*
  store i64 %406, i64* %409
  %410 = load i64, i64* %PC
  %411 = add i64 %410, 495
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
  %422 = call %struct.Memory* @sub_400c20_kernel_bicg(%struct.State* %0, i64 %421, %struct.Memory* %360)
  %423 = load i64, i64* %RBP
  %424 = sub i64 %423, 20
  %425 = load i64, i64* %PC
  %426 = add i64 %425, 3
  store i64 %426, i64* %PC
  %427 = inttoptr i64 %424 to i32*
  %428 = load i32, i32* %427
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RDI, align 8, !tbaa !2428
  %430 = load i64, i64* %RBP
  %431 = sub i64 %430, 24
  %432 = load i64, i64* %PC
  %433 = add i64 %432, 3
  store i64 %433, i64* %PC
  %434 = inttoptr i64 %431 to i32*
  %435 = load i32, i32* %434
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RSI, align 8, !tbaa !2428
  %437 = load i64, i64* %RBP
  %438 = sub i64 %437, 32
  %439 = load i64, i64* %PC
  %440 = add i64 %439, 4
  store i64 %440, i64* %PC
  %441 = inttoptr i64 %438 to i64*
  %442 = load i64, i64* %441
  store i64 %442, i64* %RDX, align 8, !tbaa !2428
  %443 = load i64, i64* %RBP
  %444 = sub i64 %443, 72
  %445 = load i64, i64* %PC
  %446 = add i64 %445, 4
  store i64 %446, i64* %PC
  %447 = inttoptr i64 %444 to i64*
  %448 = load i64, i64* %447
  store i64 %448, i64* %RCX, align 8, !tbaa !2428
  %449 = load i64, i64* %RBP
  %450 = sub i64 %449, 80
  %451 = load i64, i64* %PC
  %452 = add i64 %451, 4
  store i64 %452, i64* %PC
  %453 = inttoptr i64 %450 to i64*
  %454 = load i64, i64* %453
  store i64 %454, i64* %R8, align 8, !tbaa !2428
  %455 = load i64, i64* %RBP
  %456 = sub i64 %455, 56
  %457 = load i64, i64* %PC
  %458 = add i64 %457, 4
  store i64 %458, i64* %PC
  %459 = inttoptr i64 %456 to i64*
  %460 = load i64, i64* %459
  store i64 %460, i64* %R9, align 8, !tbaa !2428
  %461 = load i64, i64* %RBP
  %462 = sub i64 %461, 64
  %463 = load i64, i64* %PC
  %464 = add i64 %463, 4
  store i64 %464, i64* %PC
  %465 = inttoptr i64 %462 to i64*
  %466 = load i64, i64* %465
  store i64 %466, i64* %RAX, align 8, !tbaa !2428
  %467 = load i64, i64* %RSP
  %468 = load i64, i64* %RAX
  %469 = load i64, i64* %PC
  %470 = add i64 %469, 4
  store i64 %470, i64* %PC
  %471 = inttoptr i64 %467 to i64*
  store i64 %468, i64* %471
  %472 = load i64, i64* %PC
  %473 = add i64 %472, 780
  %474 = load i64, i64* %PC
  %475 = add i64 %474, 5
  %476 = load i64, i64* %PC
  %477 = add i64 %476, 5
  store i64 %477, i64* %PC
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %479 = load i64, i64* %478, align 8, !tbaa !2428
  %480 = add i64 %479, -8
  %481 = inttoptr i64 %480 to i64*
  store i64 %475, i64* %481
  store i64 %480, i64* %478, align 8, !tbaa !2428
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %473, i64* %482, align 8, !tbaa !2428
  %483 = load i64, i64* %PC
  %484 = call %struct.Memory* @sub_400d60_kernel_bicg_StrictFP(%struct.State* %0, i64 %483, %struct.Memory* %422)
  %485 = load i64, i64* %RBP
  %486 = sub i64 %485, 24
  %487 = load i64, i64* %PC
  %488 = add i64 %487, 3
  store i64 %488, i64* %PC
  %489 = inttoptr i64 %486 to i32*
  %490 = load i32, i32* %489
  %491 = zext i32 %490 to i64
  store i64 %491, i64* %RDI, align 8, !tbaa !2428
  %492 = load i64, i64* %RBP
  %493 = sub i64 %492, 40
  %494 = load i64, i64* %PC
  %495 = add i64 %494, 4
  store i64 %495, i64* %PC
  %496 = inttoptr i64 %493 to i64*
  %497 = load i64, i64* %496
  store i64 %497, i64* %RSI, align 8, !tbaa !2428
  %498 = load i64, i64* %RBP
  %499 = sub i64 %498, 72
  %500 = load i64, i64* %PC
  %501 = add i64 %500, 4
  store i64 %501, i64* %PC
  %502 = inttoptr i64 %499 to i64*
  %503 = load i64, i64* %502
  store i64 %503, i64* %RDX, align 8, !tbaa !2428
  %504 = load i64, i64* %PC
  %505 = add i64 %504, 1084
  %506 = load i64, i64* %PC
  %507 = add i64 %506, 5
  %508 = load i64, i64* %PC
  %509 = add i64 %508, 5
  store i64 %509, i64* %PC
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %511 = load i64, i64* %510, align 8, !tbaa !2428
  %512 = add i64 %511, -8
  %513 = inttoptr i64 %512 to i64*
  store i64 %507, i64* %513
  store i64 %512, i64* %510, align 8, !tbaa !2428
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %505, i64* %514, align 8, !tbaa !2428
  %515 = load i64, i64* %PC
  %516 = call %struct.Memory* @sub_400ea0_check_FP(%struct.State* %0, i64 %515, %struct.Memory* %484)
  %517 = load i32, i32* %EAX
  %518 = zext i32 %517 to i64
  %519 = load i64, i64* %PC
  %520 = add i64 %519, 3
  store i64 %520, i64* %PC
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %521, align 1, !tbaa !2432
  %522 = and i32 %517, 255
  %523 = call i32 @llvm.ctpop.i32(i32 %522) #16
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  %526 = xor i8 %525, 1
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %526, i8* %527, align 1, !tbaa !2446
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %528, align 1, !tbaa !2447
  %529 = icmp eq i32 %517, 0
  %530 = zext i1 %529 to i8
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %530, i8* %531, align 1, !tbaa !2448
  %532 = lshr i32 %517, 31
  %533 = trunc i32 %532 to i8
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %533, i8* %534, align 1, !tbaa !2449
  %535 = lshr i32 %517, 31
  %536 = xor i32 %532, %535
  %537 = add nuw nsw i32 %536, %535
  %538 = icmp eq i32 %537, 2
  %539 = zext i1 %538 to i8
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %539, i8* %540, align 1, !tbaa !2450
  %541 = load i64, i64* %PC
  %542 = add i64 %541, 18
  %543 = load i64, i64* %PC
  %544 = add i64 %543, 6
  %545 = load i64, i64* %PC
  %546 = add i64 %545, 6
  store i64 %546, i64* %PC
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %548 = load i8, i8* %547, align 1, !tbaa !2448
  %549 = icmp eq i8 %548, 0
  %550 = zext i1 %549 to i8
  store i8 %550, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %552 = select i1 %549, i64 %542, i64 %544
  store i64 %552, i64* %551, align 8, !tbaa !2428
  %553 = load i8, i8* %BRANCH_TAKEN
  %554 = icmp eq i8 %553, 1
  %555 = load i64, i64* %RBP
  br i1 %554, label %block_400a7e, label %block_400a72

block_400a7e:                                     ; preds = %block_400940
  %556 = sub i64 %555, 24
  %557 = load i64, i64* %PC
  %558 = add i64 %557, 3
  store i64 %558, i64* %PC
  %559 = inttoptr i64 %556 to i32*
  %560 = load i32, i32* %559
  %561 = zext i32 %560 to i64
  store i64 %561, i64* %RDI, align 8, !tbaa !2428
  %562 = load i64, i64* %RBP
  %563 = sub i64 %562, 48
  %564 = load i64, i64* %PC
  %565 = add i64 %564, 4
  store i64 %565, i64* %PC
  %566 = inttoptr i64 %563 to i64*
  %567 = load i64, i64* %566
  store i64 %567, i64* %RSI, align 8, !tbaa !2428
  %568 = load i64, i64* %RBP
  %569 = sub i64 %568, 80
  %570 = load i64, i64* %PC
  %571 = add i64 %570, 4
  store i64 %571, i64* %PC
  %572 = inttoptr i64 %569 to i64*
  %573 = load i64, i64* %572
  store i64 %573, i64* %RDX, align 8, !tbaa !2428
  %574 = load i64, i64* %PC
  %575 = add i64 %574, 1047
  %576 = load i64, i64* %PC
  %577 = add i64 %576, 5
  %578 = load i64, i64* %PC
  %579 = add i64 %578, 5
  store i64 %579, i64* %PC
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %581 = load i64, i64* %580, align 8, !tbaa !2428
  %582 = add i64 %581, -8
  %583 = inttoptr i64 %582 to i64*
  store i64 %577, i64* %583
  store i64 %582, i64* %580, align 8, !tbaa !2428
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %575, i64* %584, align 8, !tbaa !2428
  %585 = load i64, i64* %PC
  %586 = call %struct.Memory* @sub_400ea0_check_FP(%struct.State* %0, i64 %585, %struct.Memory* %516)
  %587 = load i32, i32* %EAX
  %588 = zext i32 %587 to i64
  %589 = load i64, i64* %PC
  %590 = add i64 %589, 3
  store i64 %590, i64* %PC
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %591, align 1, !tbaa !2432
  %592 = and i32 %587, 255
  %593 = call i32 @llvm.ctpop.i32(i32 %592) #16
  %594 = trunc i32 %593 to i8
  %595 = and i8 %594, 1
  %596 = xor i8 %595, 1
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %596, i8* %597, align 1, !tbaa !2446
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %598, align 1, !tbaa !2447
  %599 = icmp eq i32 %587, 0
  %600 = zext i1 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %600, i8* %601, align 1, !tbaa !2448
  %602 = lshr i32 %587, 31
  %603 = trunc i32 %602 to i8
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %603, i8* %604, align 1, !tbaa !2449
  %605 = lshr i32 %587, 31
  %606 = xor i32 %602, %605
  %607 = add nuw nsw i32 %606, %605
  %608 = icmp eq i32 %607, 2
  %609 = zext i1 %608 to i8
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %609, i8* %610, align 1, !tbaa !2450
  %611 = load i64, i64* %PC
  %612 = add i64 %611, 18
  %613 = load i64, i64* %PC
  %614 = add i64 %613, 6
  %615 = load i64, i64* %PC
  %616 = add i64 %615, 6
  store i64 %616, i64* %PC
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %618 = load i8, i8* %617, align 1, !tbaa !2448
  %619 = icmp eq i8 %618, 0
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %622 = select i1 %619, i64 %612, i64 %614
  store i64 %622, i64* %621, align 8, !tbaa !2428
  %623 = load i8, i8* %BRANCH_TAKEN
  %624 = icmp eq i8 %623, 1
  %625 = load i64, i64* %RBP
  br i1 %624, label %block_400aa3, label %block_400a97

block_400b11:                                     ; preds = %block_400a97, %block_400aa3, %block_400a72
  %MEMORY.0 = phi %struct.Memory* [ %882, %block_400aa3 ], [ %586, %block_400a97 ], [ %516, %block_400a72 ]
  %626 = load i64, i64* %RBP
  %627 = sub i64 %626, 4
  %628 = load i64, i64* %PC
  %629 = add i64 %628, 3
  store i64 %629, i64* %PC
  %630 = inttoptr i64 %627 to i32*
  %631 = load i32, i32* %630
  %632 = zext i32 %631 to i64
  store i64 %632, i64* %RAX, align 8, !tbaa !2428
  %633 = load i64, i64* %RSP
  %634 = load i64, i64* %PC
  %635 = add i64 %634, 4
  store i64 %635, i64* %PC
  %636 = add i64 96, %633
  store i64 %636, i64* %RSP, align 8, !tbaa !2428
  %637 = icmp ult i64 %636, %633
  %638 = icmp ult i64 %636, 96
  %639 = or i1 %637, %638
  %640 = zext i1 %639 to i8
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %640, i8* %641, align 1, !tbaa !2432
  %642 = trunc i64 %636 to i32
  %643 = and i32 %642, 255
  %644 = call i32 @llvm.ctpop.i32(i32 %643) #16
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  %647 = xor i8 %646, 1
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %647, i8* %648, align 1, !tbaa !2446
  %649 = xor i64 96, %633
  %650 = xor i64 %649, %636
  %651 = lshr i64 %650, 4
  %652 = trunc i64 %651 to i8
  %653 = and i8 %652, 1
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %653, i8* %654, align 1, !tbaa !2447
  %655 = icmp eq i64 %636, 0
  %656 = zext i1 %655 to i8
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %656, i8* %657, align 1, !tbaa !2448
  %658 = lshr i64 %636, 63
  %659 = trunc i64 %658 to i8
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %659, i8* %660, align 1, !tbaa !2449
  %661 = lshr i64 %633, 63
  %662 = xor i64 %658, %661
  %663 = add nuw nsw i64 %662, %658
  %664 = icmp eq i64 %663, 2
  %665 = zext i1 %664 to i8
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %665, i8* %666, align 1, !tbaa !2450
  %667 = load i64, i64* %PC
  %668 = add i64 %667, 1
  store i64 %668, i64* %PC
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %670 = load i64, i64* %669, align 8, !tbaa !2428
  %671 = add i64 %670, 8
  %672 = inttoptr i64 %670 to i64*
  %673 = load i64, i64* %672
  store i64 %673, i64* %RBP, align 8, !tbaa !2428
  store i64 %671, i64* %669, align 8, !tbaa !2428
  %674 = load i64, i64* %PC
  %675 = add i64 %674, 1
  store i64 %675, i64* %PC
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %678 = load i64, i64* %677, align 8, !tbaa !2428
  %679 = inttoptr i64 %678 to i64*
  %680 = load i64, i64* %679
  store i64 %680, i64* %676, align 8, !tbaa !2428
  %681 = add i64 %678, 8
  store i64 %681, i64* %677, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400a72:                                     ; preds = %block_400940
  %682 = sub i64 %555, 4
  %683 = load i64, i64* %PC
  %684 = add i64 %683, 7
  store i64 %684, i64* %PC
  %685 = inttoptr i64 %682 to i32*
  store i32 1, i32* %685
  %686 = load i64, i64* %PC
  %687 = add i64 %686, 152
  %688 = load i64, i64* %PC
  %689 = add i64 %688, 5
  store i64 %689, i64* %PC
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %687, i64* %690, align 8, !tbaa !2428
  br label %block_400b11

block_400aa3:                                     ; preds = %block_400a7e
  %691 = sub i64 %625, 20
  %692 = load i64, i64* %PC
  %693 = add i64 %692, 3
  store i64 %693, i64* %PC
  %694 = inttoptr i64 %691 to i32*
  %695 = load i32, i32* %694
  %696 = zext i32 %695 to i64
  store i64 %696, i64* %RDI, align 8, !tbaa !2428
  %697 = load i64, i64* %RBP
  %698 = sub i64 %697, 24
  %699 = load i64, i64* %PC
  %700 = add i64 %699, 3
  store i64 %700, i64* %PC
  %701 = inttoptr i64 %698 to i32*
  %702 = load i32, i32* %701
  %703 = zext i32 %702 to i64
  store i64 %703, i64* %RSI, align 8, !tbaa !2428
  %704 = load i64, i64* %RBP
  %705 = sub i64 %704, 72
  %706 = load i64, i64* %PC
  %707 = add i64 %706, 4
  store i64 %707, i64* %PC
  %708 = inttoptr i64 %705 to i64*
  %709 = load i64, i64* %708
  store i64 %709, i64* %RDX, align 8, !tbaa !2428
  %710 = load i64, i64* %RBP
  %711 = sub i64 %710, 80
  %712 = load i64, i64* %PC
  %713 = add i64 %712, 4
  store i64 %713, i64* %PC
  %714 = inttoptr i64 %711 to i64*
  %715 = load i64, i64* %714
  store i64 %715, i64* %RCX, align 8, !tbaa !2428
  %716 = load i64, i64* %PC
  %717 = add i64 %716, 1247
  %718 = load i64, i64* %PC
  %719 = add i64 %718, 5
  %720 = load i64, i64* %PC
  %721 = add i64 %720, 5
  store i64 %721, i64* %PC
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %723 = load i64, i64* %722, align 8, !tbaa !2428
  %724 = add i64 %723, -8
  %725 = inttoptr i64 %724 to i64*
  store i64 %719, i64* %725
  store i64 %724, i64* %722, align 8, !tbaa !2428
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %717, i64* %726, align 8, !tbaa !2428
  %727 = load i64, i64* %PC
  %728 = call %struct.Memory* @sub_400f90_print_array(%struct.State* %0, i64 %727, %struct.Memory* %586)
  %729 = load i64, i64* %RBP
  %730 = sub i64 %729, 32
  %731 = load i64, i64* %PC
  %732 = add i64 %731, 4
  store i64 %732, i64* %PC
  %733 = inttoptr i64 %730 to i64*
  %734 = load i64, i64* %733
  store i64 %734, i64* %RCX, align 8, !tbaa !2428
  %735 = load i64, i64* %RCX
  %736 = load i64, i64* %PC
  %737 = add i64 %736, 3
  store i64 %737, i64* %PC
  store i64 %735, i64* %RDI, align 8, !tbaa !2428
  %738 = load i64, i64* %PC
  %739 = sub i64 %738, 1229
  %740 = load i64, i64* %PC
  %741 = add i64 %740, 5
  %742 = load i64, i64* %PC
  %743 = add i64 %742, 5
  store i64 %743, i64* %PC
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %745 = load i64, i64* %744, align 8, !tbaa !2428
  %746 = add i64 %745, -8
  %747 = inttoptr i64 %746 to i64*
  store i64 %741, i64* %747
  store i64 %746, i64* %744, align 8, !tbaa !2428
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %739, i64* %748, align 8, !tbaa !2428
  %749 = load i64, i64* %PC
  %750 = call %struct.Memory* @ext_4005f0_free(%struct.State* %0, i64 %749, %struct.Memory* %728)
  %751 = load i64, i64* %RBP
  %752 = sub i64 %751, 40
  %753 = load i64, i64* %PC
  %754 = add i64 %753, 4
  store i64 %754, i64* %PC
  %755 = inttoptr i64 %752 to i64*
  %756 = load i64, i64* %755
  store i64 %756, i64* %RCX, align 8, !tbaa !2428
  %757 = load i64, i64* %RCX
  %758 = load i64, i64* %PC
  %759 = add i64 %758, 3
  store i64 %759, i64* %PC
  store i64 %757, i64* %RDI, align 8, !tbaa !2428
  %760 = load i64, i64* %PC
  %761 = sub i64 %760, 1241
  %762 = load i64, i64* %PC
  %763 = add i64 %762, 5
  %764 = load i64, i64* %PC
  %765 = add i64 %764, 5
  store i64 %765, i64* %PC
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %767 = load i64, i64* %766, align 8, !tbaa !2428
  %768 = add i64 %767, -8
  %769 = inttoptr i64 %768 to i64*
  store i64 %763, i64* %769
  store i64 %768, i64* %766, align 8, !tbaa !2428
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %761, i64* %770, align 8, !tbaa !2428
  %771 = load i64, i64* %PC
  %772 = call %struct.Memory* @ext_4005f0_free(%struct.State* %0, i64 %771, %struct.Memory* %750)
  %773 = load i64, i64* %RBP
  %774 = sub i64 %773, 48
  %775 = load i64, i64* %PC
  %776 = add i64 %775, 4
  store i64 %776, i64* %PC
  %777 = inttoptr i64 %774 to i64*
  %778 = load i64, i64* %777
  store i64 %778, i64* %RCX, align 8, !tbaa !2428
  %779 = load i64, i64* %RCX
  %780 = load i64, i64* %PC
  %781 = add i64 %780, 3
  store i64 %781, i64* %PC
  store i64 %779, i64* %RDI, align 8, !tbaa !2428
  %782 = load i64, i64* %PC
  %783 = sub i64 %782, 1253
  %784 = load i64, i64* %PC
  %785 = add i64 %784, 5
  %786 = load i64, i64* %PC
  %787 = add i64 %786, 5
  store i64 %787, i64* %PC
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %789 = load i64, i64* %788, align 8, !tbaa !2428
  %790 = add i64 %789, -8
  %791 = inttoptr i64 %790 to i64*
  store i64 %785, i64* %791
  store i64 %790, i64* %788, align 8, !tbaa !2428
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %783, i64* %792, align 8, !tbaa !2428
  %793 = load i64, i64* %PC
  %794 = call %struct.Memory* @ext_4005f0_free(%struct.State* %0, i64 %793, %struct.Memory* %772)
  %795 = load i64, i64* %RBP
  %796 = sub i64 %795, 56
  %797 = load i64, i64* %PC
  %798 = add i64 %797, 4
  store i64 %798, i64* %PC
  %799 = inttoptr i64 %796 to i64*
  %800 = load i64, i64* %799
  store i64 %800, i64* %RCX, align 8, !tbaa !2428
  %801 = load i64, i64* %RCX
  %802 = load i64, i64* %PC
  %803 = add i64 %802, 3
  store i64 %803, i64* %PC
  store i64 %801, i64* %RDI, align 8, !tbaa !2428
  %804 = load i64, i64* %PC
  %805 = sub i64 %804, 1265
  %806 = load i64, i64* %PC
  %807 = add i64 %806, 5
  %808 = load i64, i64* %PC
  %809 = add i64 %808, 5
  store i64 %809, i64* %PC
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %811 = load i64, i64* %810, align 8, !tbaa !2428
  %812 = add i64 %811, -8
  %813 = inttoptr i64 %812 to i64*
  store i64 %807, i64* %813
  store i64 %812, i64* %810, align 8, !tbaa !2428
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %805, i64* %814, align 8, !tbaa !2428
  %815 = load i64, i64* %PC
  %816 = call %struct.Memory* @ext_4005f0_free(%struct.State* %0, i64 %815, %struct.Memory* %794)
  %817 = load i64, i64* %RBP
  %818 = sub i64 %817, 64
  %819 = load i64, i64* %PC
  %820 = add i64 %819, 4
  store i64 %820, i64* %PC
  %821 = inttoptr i64 %818 to i64*
  %822 = load i64, i64* %821
  store i64 %822, i64* %RCX, align 8, !tbaa !2428
  %823 = load i64, i64* %RCX
  %824 = load i64, i64* %PC
  %825 = add i64 %824, 3
  store i64 %825, i64* %PC
  store i64 %823, i64* %RDI, align 8, !tbaa !2428
  %826 = load i64, i64* %PC
  %827 = sub i64 %826, 1277
  %828 = load i64, i64* %PC
  %829 = add i64 %828, 5
  %830 = load i64, i64* %PC
  %831 = add i64 %830, 5
  store i64 %831, i64* %PC
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %833 = load i64, i64* %832, align 8, !tbaa !2428
  %834 = add i64 %833, -8
  %835 = inttoptr i64 %834 to i64*
  store i64 %829, i64* %835
  store i64 %834, i64* %832, align 8, !tbaa !2428
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %827, i64* %836, align 8, !tbaa !2428
  %837 = load i64, i64* %PC
  %838 = call %struct.Memory* @ext_4005f0_free(%struct.State* %0, i64 %837, %struct.Memory* %816)
  %839 = load i64, i64* %RBP
  %840 = sub i64 %839, 72
  %841 = load i64, i64* %PC
  %842 = add i64 %841, 4
  store i64 %842, i64* %PC
  %843 = inttoptr i64 %840 to i64*
  %844 = load i64, i64* %843
  store i64 %844, i64* %RCX, align 8, !tbaa !2428
  %845 = load i64, i64* %RCX
  %846 = load i64, i64* %PC
  %847 = add i64 %846, 3
  store i64 %847, i64* %PC
  store i64 %845, i64* %RDI, align 8, !tbaa !2428
  %848 = load i64, i64* %PC
  %849 = sub i64 %848, 1289
  %850 = load i64, i64* %PC
  %851 = add i64 %850, 5
  %852 = load i64, i64* %PC
  %853 = add i64 %852, 5
  store i64 %853, i64* %PC
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %855 = load i64, i64* %854, align 8, !tbaa !2428
  %856 = add i64 %855, -8
  %857 = inttoptr i64 %856 to i64*
  store i64 %851, i64* %857
  store i64 %856, i64* %854, align 8, !tbaa !2428
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %849, i64* %858, align 8, !tbaa !2428
  %859 = load i64, i64* %PC
  %860 = call %struct.Memory* @ext_4005f0_free(%struct.State* %0, i64 %859, %struct.Memory* %838)
  %861 = load i64, i64* %RBP
  %862 = sub i64 %861, 80
  %863 = load i64, i64* %PC
  %864 = add i64 %863, 4
  store i64 %864, i64* %PC
  %865 = inttoptr i64 %862 to i64*
  %866 = load i64, i64* %865
  store i64 %866, i64* %RCX, align 8, !tbaa !2428
  %867 = load i64, i64* %RCX
  %868 = load i64, i64* %PC
  %869 = add i64 %868, 3
  store i64 %869, i64* %PC
  store i64 %867, i64* %RDI, align 8, !tbaa !2428
  %870 = load i64, i64* %PC
  %871 = sub i64 %870, 1301
  %872 = load i64, i64* %PC
  %873 = add i64 %872, 5
  %874 = load i64, i64* %PC
  %875 = add i64 %874, 5
  store i64 %875, i64* %PC
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %877 = load i64, i64* %876, align 8, !tbaa !2428
  %878 = add i64 %877, -8
  %879 = inttoptr i64 %878 to i64*
  store i64 %873, i64* %879
  store i64 %878, i64* %876, align 8, !tbaa !2428
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %871, i64* %880, align 8, !tbaa !2428
  %881 = load i64, i64* %PC
  %882 = call %struct.Memory* @ext_4005f0_free(%struct.State* %0, i64 %881, %struct.Memory* %860)
  %883 = load i64, i64* %RBP
  %884 = sub i64 %883, 4
  %885 = load i64, i64* %PC
  %886 = add i64 %885, 7
  store i64 %886, i64* %PC
  %887 = inttoptr i64 %884 to i32*
  store i32 0, i32* %887
  br label %block_400b11

block_400a97:                                     ; preds = %block_400a7e
  %888 = sub i64 %625, 4
  %889 = load i64, i64* %PC
  %890 = add i64 %889, 7
  store i64 %890, i64* %PC
  %891 = inttoptr i64 %888 to i32*
  store i32 1, i32* %891
  %892 = load i64, i64* %PC
  %893 = add i64 %892, 115
  %894 = load i64, i64* %PC
  %895 = add i64 %894, 5
  store i64 %895, i64* %PC
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %893, i64* %896, align 8, !tbaa !2428
  br label %block_400b11
}

; Function Attrs: noinline
define %struct.Memory* @sub_401270___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401270:
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
  %200 = sub i64 %199, 3284
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
  %211 = call %struct.Memory* @sub_4005c8__init_proc(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  br i1 %245, label %block_4012c6, label %block_4012a6

block_4012c6:                                     ; preds = %block_4012b0, %block_401270
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_401270 ], [ %387, %block_4012b0 ]
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

block_4012a6:                                     ; preds = %block_401270
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
  br label %block_4012b0

block_4012b0:                                     ; preds = %block_4012b0, %block_4012a6
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_4012a6 ], [ %387, %block_4012b0 ]
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
  br i1 %470, label %block_4012b0, label %block_4012c6
}

; Function Attrs: noinline
define %struct.Memory* @sub_400880_polybench_alloc_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400880:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
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
  %34 = sub i64 %31, 32
  store i64 %34, i64* %RSP, align 8, !tbaa !2428
  %35 = icmp ult i64 %31, 32
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
  %45 = xor i64 32, %31
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
  %63 = load i64, i64* %RBP
  %64 = sub i64 %63, 8
  %65 = load i64, i64* %RDI
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 4
  store i64 %67, i64* %PC
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68
  %69 = load i64, i64* %RBP
  %70 = sub i64 %69, 12
  %71 = load i32, i32* %ESI
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 3
  store i64 %74, i64* %PC
  %75 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %75
  %76 = load i64, i64* %RBP
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %PC
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC
  %80 = inttoptr i64 %77 to i64*
  %81 = load i64, i64* %80
  store i64 %81, i64* %RDI, align 8, !tbaa !2428
  %82 = load i64, i64* %RBP
  %83 = sub i64 %82, 24
  %84 = load i64, i64* %RDI
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 4
  store i64 %86, i64* %PC
  %87 = inttoptr i64 %83 to i64*
  store i64 %84, i64* %87
  %88 = load i64, i64* %RBP
  %89 = sub i64 %88, 12
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 4
  store i64 %91, i64* %PC
  %92 = inttoptr i64 %89 to i32*
  %93 = load i32, i32* %92
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %RDI, align 8, !tbaa !2428
  %95 = load i64, i64* %RDI
  %96 = load i64, i64* %RBP
  %97 = sub i64 %96, 24
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 5
  store i64 %99, i64* %PC
  %100 = inttoptr i64 %97 to i64*
  %101 = load i64, i64* %100
  %102 = sext i64 %95 to i128
  %103 = and i128 %102, -18446744073709551616
  %104 = sext i64 %101 to i128
  %105 = and i128 %104, -18446744073709551616
  %106 = zext i64 %95 to i128
  %107 = or i128 %103, %106
  %108 = zext i64 %101 to i128
  %109 = or i128 %105, %108
  %110 = mul nsw i128 %109, %107
  %111 = trunc i128 %110 to i64
  store i64 %111, i64* %RDI, align 8, !tbaa !2428
  %112 = sext i64 %111 to i128
  %113 = icmp ne i128 %112, %110
  %114 = zext i1 %113 to i8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %114, i8* %115, align 1, !tbaa !2432
  %116 = trunc i128 %110 to i32
  %117 = and i32 %116, 255
  %118 = call i32 @llvm.ctpop.i32(i32 %117) #16
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = xor i8 %120, 1
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %121, i8* %122, align 1, !tbaa !2446
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %123, align 1, !tbaa !2447
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %124, align 1, !tbaa !2448
  %125 = lshr i64 %111, 63
  %126 = trunc i64 %125 to i8
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %126, i8* %127, align 1, !tbaa !2449
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %114, i8* %128, align 1, !tbaa !2450
  %129 = load i64, i64* %RBP
  %130 = sub i64 %129, 24
  %131 = load i64, i64* %RDI
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 4
  store i64 %133, i64* %PC
  %134 = inttoptr i64 %130 to i64*
  store i64 %131, i64* %134
  %135 = load i64, i64* %RBP
  %136 = sub i64 %135, 24
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 4
  store i64 %138, i64* %PC
  %139 = inttoptr i64 %136 to i64*
  %140 = load i64, i64* %139
  store i64 %140, i64* %RDI, align 8, !tbaa !2428
  %141 = load i64, i64* %PC
  %142 = add i64 %141, 24
  %143 = load i64, i64* %PC
  %144 = add i64 %143, 5
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 5
  store i64 %146, i64* %PC
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %148 = load i64, i64* %147, align 8, !tbaa !2428
  %149 = add i64 %148, -8
  %150 = inttoptr i64 %149 to i64*
  store i64 %144, i64* %150
  store i64 %149, i64* %147, align 8, !tbaa !2428
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %142, i64* %151, align 8, !tbaa !2428
  %152 = load i64, i64* %PC
  %153 = call %struct.Memory* @sub_4008c0_xmalloc(%struct.State* %0, i64 %152, %struct.Memory* %2)
  %154 = load i64, i64* %RBP
  %155 = sub i64 %154, 32
  %156 = load i64, i64* %RAX
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 4
  store i64 %158, i64* %PC
  %159 = inttoptr i64 %155 to i64*
  store i64 %156, i64* %159
  %160 = load i64, i64* %RBP
  %161 = sub i64 %160, 32
  %162 = load i64, i64* %PC
  %163 = add i64 %162, 4
  store i64 %163, i64* %PC
  %164 = inttoptr i64 %161 to i64*
  %165 = load i64, i64* %164
  store i64 %165, i64* %RAX, align 8, !tbaa !2428
  %166 = load i64, i64* %RSP
  %167 = load i64, i64* %PC
  %168 = add i64 %167, 4
  store i64 %168, i64* %PC
  %169 = add i64 32, %166
  store i64 %169, i64* %RSP, align 8, !tbaa !2428
  %170 = icmp ult i64 %169, %166
  %171 = icmp ult i64 %169, 32
  %172 = or i1 %170, %171
  %173 = zext i1 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %173, i8* %174, align 1, !tbaa !2432
  %175 = trunc i64 %169 to i32
  %176 = and i32 %175, 255
  %177 = call i32 @llvm.ctpop.i32(i32 %176) #16
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  %180 = xor i8 %179, 1
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %180, i8* %181, align 1, !tbaa !2446
  %182 = xor i64 32, %166
  %183 = xor i64 %182, %169
  %184 = lshr i64 %183, 4
  %185 = trunc i64 %184 to i8
  %186 = and i8 %185, 1
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %186, i8* %187, align 1, !tbaa !2447
  %188 = icmp eq i64 %169, 0
  %189 = zext i1 %188 to i8
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %189, i8* %190, align 1, !tbaa !2448
  %191 = lshr i64 %169, 63
  %192 = trunc i64 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %192, i8* %193, align 1, !tbaa !2449
  %194 = lshr i64 %166, 63
  %195 = xor i64 %191, %194
  %196 = add nuw nsw i64 %195, %191
  %197 = icmp eq i64 %196, 2
  %198 = zext i1 %197 to i8
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %198, i8* %199, align 1, !tbaa !2450
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 1
  store i64 %201, i64* %PC
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %203 = load i64, i64* %202, align 8, !tbaa !2428
  %204 = add i64 %203, 8
  %205 = inttoptr i64 %203 to i64*
  %206 = load i64, i64* %205
  store i64 %206, i64* %RBP, align 8, !tbaa !2428
  store i64 %204, i64* %202, align 8, !tbaa !2428
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 1
  store i64 %208, i64* %PC
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %211 = load i64, i64* %210, align 8, !tbaa !2428
  %212 = inttoptr i64 %211 to i64*
  %213 = load i64, i64* %212
  store i64 %213, i64* %209, align 8, !tbaa !2428
  %214 = add i64 %211, 8
  store i64 %214, i64* %210, align 8, !tbaa !2428
  ret %struct.Memory* %153
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006e0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006e0:
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
  store i64 6299752, i64* %RSI, align 8, !tbaa !2428
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
  %39 = sub i64 %36, 6299752
  store i64 %39, i64* %RSI, align 8, !tbaa !2428
  %40 = icmp ult i64 %36, 6299752
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
  %50 = xor i64 6299752, %36
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
  %63 = xor i64 %59, %62
  %64 = add nuw nsw i64 %63, %62
  %65 = icmp eq i64 %64, 2
  %66 = zext i1 %65 to i8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %66, i8* %67, align 1, !tbaa !2450
  %68 = load i64, i64* %RSP
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 3
  store i64 %70, i64* %PC
  store i64 %68, i64* %RBP, align 8, !tbaa !2428
  %71 = load i64, i64* %RSI
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 4
  store i64 %73, i64* %PC
  %74 = ashr i64 %71, 2
  %75 = trunc i64 %74 to i8
  %76 = and i8 %75, 1
  %77 = ashr i64 %74, 1
  store i64 %77, i64* %RSI, align 8, !tbaa !2428
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %76, i8* %78, align 1, !tbaa !2451
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %80 = trunc i64 %77 to i32
  %81 = and i32 %80, 255
  %82 = call i32 @llvm.ctpop.i32(i32 %81) #16
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  store i8 %85, i8* %79, align 1, !tbaa !2451
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %86, align 1, !tbaa !2451
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %88 = icmp eq i64 %77, 0
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %87, align 1, !tbaa !2451
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %91 = lshr i64 %77, 63
  %92 = trunc i64 %91 to i8
  store i8 %92, i8* %90, align 1, !tbaa !2451
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %93, align 1, !tbaa !2451
  %94 = load i64, i64* %RSI
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC
  store i64 %94, i64* %RAX, align 8, !tbaa !2428
  %97 = load i64, i64* %RAX
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 4
  store i64 %99, i64* %PC
  %100 = lshr i64 %97, 62
  %101 = trunc i64 %100 to i8
  %102 = and i8 %101, 1
  %103 = lshr i64 %100, 1
  store i64 %103, i64* %RAX, align 8, !tbaa !2428
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %102, i8* %104, align 1, !tbaa !2451
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %106 = trunc i64 %103 to i32
  %107 = and i32 %106, 255
  %108 = call i32 @llvm.ctpop.i32(i32 %107) #16
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %105, align 1, !tbaa !2451
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %112, align 1, !tbaa !2451
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %114 = icmp eq i64 %103, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %113, align 1, !tbaa !2451
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %116, align 1, !tbaa !2451
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %117, align 1, !tbaa !2451
  %118 = load i64, i64* %RSI
  %119 = load i64, i64* %RAX
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 3
  store i64 %121, i64* %PC
  %122 = add i64 %119, %118
  store i64 %122, i64* %RSI, align 8, !tbaa !2428
  %123 = icmp ult i64 %122, %118
  %124 = icmp ult i64 %122, %119
  %125 = or i1 %123, %124
  %126 = zext i1 %125 to i8
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %126, i8* %127, align 1, !tbaa !2432
  %128 = trunc i64 %122 to i32
  %129 = and i32 %128, 255
  %130 = call i32 @llvm.ctpop.i32(i32 %129) #16
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %133, i8* %134, align 1, !tbaa !2446
  %135 = xor i64 %119, %118
  %136 = xor i64 %135, %122
  %137 = lshr i64 %136, 4
  %138 = trunc i64 %137 to i8
  %139 = and i8 %138, 1
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %139, i8* %140, align 1, !tbaa !2447
  %141 = icmp eq i64 %122, 0
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %142, i8* %143, align 1, !tbaa !2448
  %144 = lshr i64 %122, 63
  %145 = trunc i64 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %145, i8* %146, align 1, !tbaa !2449
  %147 = lshr i64 %118, 63
  %148 = lshr i64 %119, 63
  %149 = xor i64 %144, %147
  %150 = xor i64 %144, %148
  %151 = add nuw nsw i64 %149, %150
  %152 = icmp eq i64 %151, 2
  %153 = zext i1 %152 to i8
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %153, i8* %154, align 1, !tbaa !2450
  %155 = load i64, i64* %RSI
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 3
  store i64 %157, i64* %PC
  %158 = trunc i64 %155 to i8
  %159 = and i8 %158, 1
  %160 = ashr i64 %155, 1
  store i64 %160, i64* %RSI, align 8, !tbaa !2428
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %159, i8* %161, align 1, !tbaa !2451
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %163 = trunc i64 %160 to i32
  %164 = and i32 %163, 255
  %165 = call i32 @llvm.ctpop.i32(i32 %164) #16
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %162, align 1, !tbaa !2451
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %169, align 1, !tbaa !2451
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %171 = icmp eq i64 %160, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %170, align 1, !tbaa !2451
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %174 = lshr i64 %160, 63
  %175 = trunc i64 %174 to i8
  store i8 %175, i8* %173, align 1, !tbaa !2451
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %176, align 1, !tbaa !2451
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 23
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 2
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 2
  store i64 %182, i64* %PC
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %184 = load i8, i8* %183, align 1, !tbaa !2448
  store i8 %184, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %186 = icmp ne i8 %184, 0
  %187 = select i1 %186, i64 %178, i64 %180
  store i64 %187, i64* %185, align 8, !tbaa !2428
  %188 = load i8, i8* %BRANCH_TAKEN
  %189 = icmp eq i8 %188, 1
  br i1 %189, label %block_400718, label %block_400703

block_40071a:                                     ; preds = %block_40070d
  %190 = load i64, i64* %RAX
  %191 = load i64, i64* %RAX
  %192 = add i64 %191, %190
  %193 = load i16, i16* %AX
  %194 = zext i16 %193 to i64
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 6
  store i64 %196, i64* %PC
  %197 = load i64, i64* %PC
  %198 = tail call %struct.Memory* @sub_400720___do_global_dtors_aux(%struct.State* %0, i64 %197, %struct.Memory* %2)
  ret %struct.Memory* %198

block_400715:                                     ; preds = %block_40070d
  %199 = load i64, i64* %RAX
  %200 = load i32, i32* %EAX
  %201 = zext i32 %200 to i64
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 3
  store i64 %203, i64* %PC
  br label %block_400718

block_40070d:                                     ; preds = %block_400703
  %204 = load i64, i64* %PC
  %205 = add i64 %204, 1
  store i64 %205, i64* %PC
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %207 = load i64, i64* %206, align 8, !tbaa !2428
  %208 = add i64 %207, 8
  %209 = inttoptr i64 %207 to i64*
  %210 = load i64, i64* %209
  store i64 %210, i64* %RBP, align 8, !tbaa !2428
  store i64 %208, i64* %206, align 8, !tbaa !2428
  %211 = load i64, i64* %PC
  %212 = add i64 %211, 5
  store i64 %212, i64* %PC
  store i64 6299752, i64* %RDI, align 8, !tbaa !2428
  %213 = load i64, i64* %RAX
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 2
  store i64 %215, i64* %PC
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %213, i64* %216, align 8, !tbaa !2428
  %217 = load i64, i64* %PC
  switch i64 %217, label %269 [
    i64 4196122, label %block_40071a
    i64 4196117, label %block_400715
  ]

block_400718:                                     ; preds = %block_400703, %block_400715, %block_4006e0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4006e0 ], [ %2, %block_400703 ], [ %2, %block_400715 ]
  %218 = load i64, i64* %PC
  %219 = add i64 %218, 1
  store i64 %219, i64* %PC
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %221 = load i64, i64* %220, align 8, !tbaa !2428
  %222 = add i64 %221, 8
  %223 = inttoptr i64 %221 to i64*
  %224 = load i64, i64* %223
  store i64 %224, i64* %RBP, align 8, !tbaa !2428
  store i64 %222, i64* %220, align 8, !tbaa !2428
  %225 = load i64, i64* %PC
  %226 = add i64 %225, 1
  store i64 %226, i64* %PC
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %229 = load i64, i64* %228, align 8, !tbaa !2428
  %230 = inttoptr i64 %229 to i64*
  %231 = load i64, i64* %230
  store i64 %231, i64* %227, align 8, !tbaa !2428
  %232 = add i64 %229, 8
  store i64 %232, i64* %228, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400703:                                     ; preds = %block_4006e0
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 5
  store i64 %234, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %235 = load i64, i64* %RAX
  %236 = load i64, i64* %RAX
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 3
  store i64 %238, i64* %PC
  %239 = and i64 %236, %235
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %240, align 1, !tbaa !2432
  %241 = trunc i64 %239 to i32
  %242 = and i32 %241, 255
  %243 = call i32 @llvm.ctpop.i32(i32 %242) #16
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %246, i8* %247, align 1, !tbaa !2446
  %248 = icmp eq i64 %239, 0
  %249 = zext i1 %248 to i8
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %249, i8* %250, align 1, !tbaa !2448
  %251 = lshr i64 %239, 63
  %252 = trunc i64 %251 to i8
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %252, i8* %253, align 1, !tbaa !2449
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %254, align 1, !tbaa !2450
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %255, align 1, !tbaa !2447
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 13
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 2
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 2
  store i64 %261, i64* %PC
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %263 = load i8, i8* %262, align 1, !tbaa !2448
  store i8 %263, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %265 = icmp ne i8 %263, 0
  %266 = select i1 %265, i64 %257, i64 %259
  store i64 %266, i64* %264, align 8, !tbaa !2428
  %267 = load i8, i8* %BRANCH_TAKEN
  %268 = icmp eq i8 %267, 1
  br i1 %268, label %block_400718, label %block_40070d

; <label>:269:                                    ; preds = %block_40070d
  %270 = load i64, i64* %PC
  %271 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %270, %struct.Memory* %2)
  ret %struct.Memory* %271
}

; Function Attrs: noinline
define %struct.Memory* @sub_4012e4__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4012e4:
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
define %struct.Memory* @sub_400820_polybench_timer_stop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400820:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RBP
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 1
  store i64 %16, i64* %PC
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %18 = load i64, i64* %17, align 8, !tbaa !2428
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %14, i64* %20
  store i64 %19, i64* %17, align 8, !tbaa !2428
  %21 = load i64, i64* %RSP
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 3
  store i64 %23, i64* %PC
  store i64 %21, i64* %RBP, align 8, !tbaa !2428
  %24 = load i64, i64* %PC
  %25 = sub i64 %24, 20
  %26 = load i64, i64* %PC
  %27 = add i64 %26, 5
  %28 = load i64, i64* %PC
  %29 = add i64 %28, 5
  store i64 %29, i64* %PC
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !2428
  %32 = add i64 %31, -8
  %33 = inttoptr i64 %32 to i64*
  store i64 %27, i64* %33
  store i64 %32, i64* %30, align 8, !tbaa !2428
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %25, i64* %34, align 8, !tbaa !2428
  %35 = load i64, i64* %PC
  %36 = call %struct.Memory* @sub_400810_rtclock(%struct.State* %0, i64 %35, %struct.Memory* %2)
  %37 = bitcast %union.vec128_t* %XMM0 to i8*
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 9
  store i64 %39, i64* %PC
  %40 = bitcast i8* %37 to double*
  %41 = load double, double* %40, align 1
  store double %41, double* bitcast (%polybench_t_end_type* @polybench_t_end to double*)
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 1
  store i64 %43, i64* %PC
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %45 = load i64, i64* %44, align 8, !tbaa !2428
  %46 = add i64 %45, 8
  %47 = inttoptr i64 %45 to i64*
  %48 = load i64, i64* %47
  store i64 %48, i64* %RBP, align 8, !tbaa !2428
  store i64 %46, i64* %44, align 8, !tbaa !2428
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 1
  store i64 %50, i64* %PC
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %53 = load i64, i64* %52, align 8, !tbaa !2428
  %54 = inttoptr i64 %53 to i64*
  %55 = load i64, i64* %54
  store i64 %55, i64* %51, align 8, !tbaa !2428
  %56 = add i64 %53, 8
  store i64 %56, i64* %52, align 8, !tbaa !2428
  ret %struct.Memory* %36
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006a0__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006a0:
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
define internal void @callback_sub_400750_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400750;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400750_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400750_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400720___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400720;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400720___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400720___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020f0_malloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400610_fputs(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_4005f0_free(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020e8_fprintf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020f8_exit(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400660_posix_memalign(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4012e0___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4012e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4012e0___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4012e0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401270___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401270;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401270___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401270___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400940;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400940_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020d8___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020c8_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020e0_calloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_start() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4007f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
  ret void
}

define internal %struct.Memory* @polybench_timer_start_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4007f0_polybench_timer_start(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4005c8;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4005c8__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_stop() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400820;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
  ret void
}

define internal %struct.Memory* @polybench_timer_stop_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400820_polybench_timer_stop(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_alloc_data() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400880;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
  ret void
}

define internal %struct.Memory* @polybench_alloc_data_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400880_polybench_alloc_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_prepare_instruments() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4007e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @11, void ()** @2)
  ret void
}

define internal %struct.Memory* @polybench_prepare_instruments_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4007e0_polybench_prepare_instruments(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4012e4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @12, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4012e4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_flush_cache() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400760;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @13, void ()** @2)
  ret void
}

define internal %struct.Memory* @polybench_flush_cache_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400760_polybench_flush_cache(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_print() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400840;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @14, void ()** @2)
  ret void
}

define internal %struct.Memory* @polybench_timer_print_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400840_polybench_timer_print(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_4012e0___libc_csu_fini()
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
  call void @callback_sub_401270___libc_csu_init()
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
attributes #17 = { alwaysinline nobuiltin nounwind }

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
!2452 = !{!2453, !2453, i64 0}
!2453 = !{!"double", !2430, i64 0}
!2454 = !{!2445, !2445, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"float", !2430, i64 0}
