; ModuleID = 'binary/test.mcsema.calls_renamed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400520__init_type = type <{ [23 x i8] }>
%seg_400540__plt_type = type <{ [112 x i8] }>
%seg_4005b0__text_type = type <{ [3810 x i8] }>
%seg_401494__fini_type = type <{ [9 x i8] }>
%seg_4014a0__rodata_type = type <{ [96 x i8], [7 x i8], [51 x i8], [8 x i8], [68 x i8] }>
%seg_401588__eh_frame_hdr_type = type <{ [164 x i8] }>
%seg_401630__eh_frame_type = type <{ [632 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64 }>
%seg_602048__data_type = type <{ [16 x i8] }>
%seg_602060__bss_type = type <{ [8 x i8], [8 x i8] }>
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
@stderr = external global i64, align 32
@seg_400520__init = internal constant %seg_400520__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\CD\1A \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400540__plt = internal constant %seg_400540__plt_type <{ [112 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\C2\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\BA\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\B2\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\AA\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\A2\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\9A\1A \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_4005b0__text = internal constant %seg_4005b0__text_type <{ [3810 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\90\14@\00H\C7\C1 \14@\00H\C7\C7\80\08@\00\FF\15\16\1A \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8X `\00H=X `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFX `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEX `\00UH\81\EEX `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFX `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\01\1A \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\EF\19 \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \B8\08\00\00\00\89\C6\C7E\FC\00\01@\00Hc}\FC\E8\B1\FE\FF\FF\0FW\C0H\89E\F0\F2\0F\11E\E0\C7E\EC\00\00\00\00\8BE\EC;E\FC\0F\8D%\00\00\00H\8BE\F0HcM\EC\F2\0F\10\04\C8\F2\0FXE\E0\F2\0F\11E\E0\8BE\EC\83\C0\01\89E\EC\E9\CF\FF\FF\FFH\8BE\F0H\89\C7\E8A\FE\FF\FFH\83\C4 ]\C3ff.\0F\1F\84\00\00\00\00\00UH\89\E5\E8w\FF\FF\FF]\C3\0F\1FD\00\00UH\89\E5\E8\E7\FF\FF\FF\E8\12\00\00\00\F2\0F\11\04%\90 `\00]\C3\0F\1F\80\00\00\00\00UH\89\E5\0FW\C0]\C3\0F\1F\80\00\00\00\00UH\89\E5\E8\E7\FF\FF\FF\F2\0F\11\04%\88 `\00]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC\10H\BF\00\15@\00\00\00\00\00\F2\0F\10\04%\88 `\00\F2\0F\5C\04%\90 `\00\B0\01\E8\B5\FD\FF\FF\89E\FCH\83\C4\10]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC H\89}\F8\89u\F4H\8B}\F8H\89}\E8Hc}\F4H\0F\AF}\E8H\89}\E8H\8B}\E8\E8\13\00\00\00H\89E\E0H\8BE\E0H\83\C4 ]\C3\0F\1FD\00\00UH\89\E5H\83\EC H\8DE\F0\B9 \00\00\00\89\CEH\89}\F8H\C7E\F0\00\00\00\00H\8BU\F8H\89\C7\E8u\FD\FF\FF\89E\ECH\83}\F0\00\0F\84\0A\00\00\00\83}\EC\00\0F\84&\00\00\00H\BE\07\15@\00\00\00\00\00H\8B<%` `\00\B0\00\E8$\FD\FF\FF\BF\01\00\00\00\89E\E8\E8'\FD\FF\FFH\8BE\F0H\83\C4 ]\C3ffff.\0F\1F\84\00\00\00\00\00UH\89\E5AWAVSH\81\EC\B8\00\00\00\B8\00$\F4\00\89\C1\B8\08\00\00\00\C7E\E4\00\00\00\00\89}\E0H\89u\D8\C7E\D4\A0\0F\00\00H\89\CF\89\C6\E8\05\FF\FF\FF\BE\00$\F4\00\89\F7\BE\08\00\00\00H\89E\B8\E8\F0\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\B0\E8\DB\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\A8\E8\C6\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\A0\E8\B1\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\98\E8\9C\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\90\E8\87\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\88\E8r\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\80\E8]\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89\85x\FF\FF\FF\E8E\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89\85p\FF\FF\FF\E8-\FE\FF\FFH\8Du\C8H\8DU\C0H\89\85h\FF\FF\FF\8B}\D4H\8BM\B8L\8BE\A8L\8BM\A0H\8BE\98L\8BU\90L\8B]\88H\8B]\80L\8B\B5p\FF\FF\FFL\8B\BDh\FF\FF\FFH\89\04$L\89T$\08L\89\5C$\10H\89\5C$\18L\89t$ L\89|$(\E8\8F\01\00\00\8B}\D4\F2\0F\10E\C8\F2\0F\10M\C0H\8Bu\B8H\8BU\B0H\8BM\A8L\8BE\A0L\8BM\98H\8BE\90L\8BU\88L\8B\9Dx\FF\FF\FFH\8B\9Dp\FF\FF\FFL\8B\B5h\FF\FF\FFH\89\04$L\89T$\08L\89\5C$\10H\89\5C$\18L\89t$ \E8$\03\00\00\8B}\D4\F2\0F\10E\C8\F2\0F\10M\C0H\8Bu\B8H\8BU\B0H\8BM\A8L\8BE\A0L\8BM\98H\8BE\90L\8BU\80L\8B\9Dx\FF\FF\FFH\8B\9Dp\FF\FF\FFL\8B\B5h\FF\FF\FFH\89\04$L\89T$\08L\89\5C$\10H\89\5C$\18L\89t$ \E8Y\05\00\00\8B}\D4H\8Bu\88H\8BU\80\E8\D9\07\00\00\83\F8\00\0F\85\0C\00\00\00\C7E\E4\01\00\00\00\E9\A0\00\00\00\8B}\D4H\8Bu\80\E8\A8\08\00\00H\8Bu\B8H\89\F7\E8l\FA\FF\FFH\8Bu\B0H\89\F7\E8`\FA\FF\FFH\8Bu\A8H\89\F7\E8T\FA\FF\FFH\8Bu\A0H\89\F7\E8H\FA\FF\FFH\8Bu\98H\89\F7\E8<\FA\FF\FFH\8Bu\90H\89\F7\E80\FA\FF\FFH\8Bu\88H\89\F7\E8$\FA\FF\FFH\8Bu\80H\89\F7\E8\18\FA\FF\FFH\8B\B5x\FF\FF\FFH\89\F7\E8\09\FA\FF\FFH\8B\B5p\FF\FF\FFH\89\F7\E8\FA\F9\FF\FFH\8B\B5h\FF\FF\FFH\89\F7\E8\EB\F9\FF\FF\C7E\E4\00\00\00\00\8BE\E4H\81\C4\B8\00\00\00[A^A_]\C3\0F\1F\00UH\89\E5AWAVSH\8BE8L\8BU0L\8B](H\8B] L\8Bu\18L\8B}\10\F2\0F\10\05\FF\08\00\00\F2\0F\10\0D\FF\08\00\00\89}\E4H\89u\D8H\89U\D0H\89M\C8L\89E\C0L\89M\B8H\8BM\D8\F2\0F\11\09H\8BM\D0\F2\0F\11\01\C7E\B4\00\00\00\00L\89}\A8L\89]\A0H\89]\98L\89u\90L\89U\88H\89E\80\8BE\B4;E\E4\0F\8D`\01\00\00\0FW\C0\F2\0F\10\0D\AA\08\00\00\F2\0F\10\15\AA\08\00\00\F2\0F\10\1D\AA\08\00\00\F2\0F\10%\AA\08\00\00\F2\0F\10-\AA\08\00\00\8BE\B4\F2\0F*\F0H\8BM\C0HcU\B4\F2\0F\114\D1\8BE\B4\83\C0\01\99\F7}\E4\F2\0F*\F0\F2\0F^\F5H\8BM\10Hcu\B4\F2\0F\114\F1\8BE\B4\83\C0\01\99\F7}\E4\F2\0F*\E8\F2\0F^\ECH\8BM\B8Hcu\B4\F2\0F\11,\F1\8BE\B4\83\C0\01\99\F7}\E4\F2\0F*\E0\F2\0F^\E3H\8BM\18Hcu\B4\F2\0F\11$\F1\8BE\B4\83\C0\01\99\F7}\E4\F2\0F*\D8\F2\0F^\DAH\8BM0Hcu\B4\F2\0F\11\1C\F1\8BE\B4\83\C0\01\99\F7}\E4\F2\0F*\D0\F2\0F^\D1H\8BM8Hcu\B4\F2\0F\11\14\F1H\8BM Hcu\B4\F2\0F\11\04\F1H\8BM(Hcu\B4\F2\0F\11\04\F1\C7E\B0\00\00\00\00\8BE\B0;E\E4\0F\8DF\00\00\00\8BE\B4\F2\0F*\C0\8BE\B0\F2\0F*\C8\F2\0FY\C1\8BE\E4\F2\0F*\C8\F2\0F^\C1H\8BM\C8HcU\B4Hi\D2\00}\00\00H\01\D1HcU\B0\F2\0F\11\04\D1\8BE\B0\83\C0\01\89E\B0\E9\AE\FF\FF\FF\E9\00\00\00\00\8BE\B4\83\C0\01\89E\B4\E9\94\FE\FF\FF[A^A_]\C3f\0F\1FD\00\00UH\89\E5AVSH\8BE0L\8BU(L\8B] H\8B]\18L\8Bu\10\89}\EC\F2\0F\11E\E0\F2\0F\11M\D8H\89u\D0H\89U\C8H\89M\C0L\89E\B8L\89M\B0\C7E\AC\00\00\00\00L\89u\A0L\89U\98L\89]\90H\89]\88H\89E\80\8BE\AC;E\EC\0F\8D\A6\00\00\00\C7E\A8\00\00\00\00\8BE\A8;E\EC\0F\8D\80\00\00\00H\8BE\D0HcM\ACHi\C9\00}\00\00H\01\C8HcM\A8\F2\0F\10\04\C8H\8BE\C0HcM\AC\F2\0F\10\0C\C8H\8BE\B8HcM\A8\F2\0FY\0C\C8\F2\0FX\C1H\8BE\B0HcM\AC\F2\0F\10\0C\C8H\8BE\10HcM\A8\F2\0FY\0C\C8\F2\0FX\C1H\8BE\C8HcM\ACHi\C9\00}\00\00H\01\C8HcM\A8\F2\0F\11\04\C8\8BE\A8\83\C0\01\89E\A8\E9t\FF\FF\FF\E9\00\00\00\00\8BE\AC\83\C0\01\89E\AC\E9N\FF\FF\FF\C7E\AC\00\00\00\00\8BE\AC;E\EC\0F\8D\8F\00\00\00\0FW\C0H\8BE HcM\AC\F2\0F\11\04\C8\C7E\A8\00\00\00\00\8BE\A8;E\EC\0F\8DY\00\00\00H\8BE HcM\AC\F2\0F\10\04\C8\F2\0F\10M\D8H\8BE\C8HcM\A8Hi\C9\00}\00\00H\01\C8HcM\AC\F2\0FY\0C\C8H\8BE(HcM\A8\F2\0FY\0C\C8\F2\0FX\C1H\8BE HcM\AC\F2\0F\11\04\C8\8BE\A8\83\C0\01\89E\A8\E9\9B\FF\FF\FF\E9\00\00\00\00\8BE\AC\83\C0\01\89E\AC\E9e\FF\FF\FF\C7E\AC\00\00\00\00\8BE\AC;E\EC\0F\8D5\00\00\00H\8BE HcM\AC\F2\0F\10\04\C8H\8BE0HcM\AC\F2\0FX\04\C8H\8BE HcM\AC\F2\0F\11\04\C8\8BE\AC\83\C0\01\89E\AC\E9\BF\FF\FF\FF\C7E\AC\00\00\00\00\8BE\AC;E\EC\0F\8D\7F\00\00\00\C7E\A8\00\00\00\00\8BE\A8;E\EC\0F\8DY\00\00\00H\8BE\18HcM\AC\F2\0F\10\04\C8\F2\0F\10M\E0H\8BE\C8HcM\ACHi\C9\00}\00\00H\01\C8HcM\A8\F2\0FY\0C\C8H\8BE HcM\A8\F2\0FY\0C\C8\F2\0FX\C1H\8BE\18HcM\AC\F2\0F\11\04\C8\8BE\A8\83\C0\01\89E\A8\E9\9B\FF\FF\FF\E9\00\00\00\00\8BE\AC\83\C0\01\89E\AC\E9u\FF\FF\FF[A^]\C3f\0F\1FD\00\00UH\89\E5AVSH\8BE0L\8BU(L\8B] H\8B]\18L\8Bu\10\89}\EC\F2\0F\11E\E0\F2\0F\11M\D8H\89u\D0H\89U\C8H\89M\C0L\89E\B8L\89M\B0\C7E\AC\00\00\00\00L\89u\A0L\89U\98L\89]\90H\89]\88H\89E\80\8BE\AC;E\EC\0F\8D\A6\00\00\00\C7E\A8\00\00\00\00\8BE\A8;E\EC\0F\8D\80\00\00\00H\8BE\D0HcM\ACHi\C9\00}\00\00H\01\C8HcM\A8\F2\0F\10\04\C8H\8BE\C0HcM\AC\F2\0F\10\0C\C8H\8BE\B8HcM\A8\F2\0FY\0C\C8\F2\0FX\C1H\8BE\B0HcM\AC\F2\0F\10\0C\C8H\8BE\10HcM\A8\F2\0FY\0C\C8\F2\0FX\C1H\8BE\C8HcM\ACHi\C9\00}\00\00H\01\C8HcM\A8\F2\0F\11\04\C8\8BE\A8\83\C0\01\89E\A8\E9t\FF\FF\FF\E9\00\00\00\00\8BE\AC\83\C0\01\89E\AC\E9N\FF\FF\FF\C7E\AC\00\00\00\00\8BE\AC;E\EC\0F\8D\8F\00\00\00\0FW\C0H\8BE HcM\AC\F2\0F\11\04\C8\C7E\A8\00\00\00\00\8BE\A8;E\EC\0F\8DY\00\00\00H\8BE HcM\AC\F2\0F\10\04\C8\F2\0F\10M\D8H\8BE\C8HcM\A8Hi\C9\00}\00\00H\01\C8HcM\AC\F2\0FY\0C\C8H\8BE(HcM\A8\F2\0FY\0C\C8\F2\0FX\C1H\8BE HcM\AC\F2\0F\11\04\C8\8BE\A8\83\C0\01\89E\A8\E9\9B\FF\FF\FF\E9\00\00\00\00\8BE\AC\83\C0\01\89E\AC\E9e\FF\FF\FF\C7E\AC\00\00\00\00\8BE\AC;E\EC\0F\8D5\00\00\00H\8BE HcM\AC\F2\0F\10\04\C8H\8BE0HcM\AC\F2\0FX\04\C8H\8BE HcM\AC\F2\0F\11\04\C8\8BE\AC\83\C0\01\89E\AC\E9\BF\FF\FF\FF\C7E\AC\00\00\00\00\8BE\AC;E\EC\0F\8D\7F\00\00\00\C7E\A8\00\00\00\00\8BE\A8;E\EC\0F\8DY\00\00\00H\8BE\18HcM\AC\F2\0F\10\04\C8\F2\0F\10M\E0H\8BE\C8HcM\ACHi\C9\00}\00\00H\01\C8HcM\A8\F2\0FY\0C\C8H\8BE HcM\A8\F2\0FY\0C\C8\F2\0FX\C1H\8BE\18HcM\AC\F2\0F\11\04\C8\8BE\A8\83\C0\01\89E\A8\E9\9B\FF\FF\FF\E9\00\00\00\00\8BE\AC\83\C0\01\89E\AC\E9u\FF\FF\FF[A^]\C3f\0F\1FD\00\00UH\89\E5H\83\ECP\F2\0F\10\05@\02\00\00\89}\F8H\89u\F0H\89U\E8\F2\0F\11E\D8\C7E\E4\00\00\00\00\8BE\E4;E\F8\0F\8D\9E\00\00\00H\8BE\F0HcM\E4\F2\0F\10\04\C8\F2\0F\11E\D0H\8BE\E8HcM\E4\F2\0F\10\04\C8\F2\0F\11E\C8\F2\0F\10E\D0\F2\0F\5CE\C8\0F(\0D\F8\01\00\00f\0F\DB\C1\F2\0F\11E\C0\F2\0F\10E\C0f\0F.E\D8\0F\86=\00\00\00H\BEB\15@\00\00\00\00\00H\8B<%` `\00\8BU\E4\F2\0F\10E\D0\8BM\E4\F2\0F\10M\C8\F2\0F\10U\D8\B0\03\E8A\F2\FF\FF\C7E\FC\00\00\00\00\89E\BC\E9\1A\00\00\00\E9\00\00\00\00\8BE\E4\83\C0\01\89E\E4\E9V\FF\FF\FF\C7E\FC\01\00\00\00\8BE\FCH\83\C4P]\C3ffffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \89}\FCH\89u\F0\C7E\EC\00\00\00\00\8BE\EC;E\FC\0F\8Dx\00\00\00H\BE:\15@\00\00\00\00\00H\8B<%` `\00H\8BE\F0HcM\EC\F2\0F\10\04\C8\B0\01\E8\B8\F1\FF\FF\BA\14\00\00\00D\8BE\EC\89E\E8D\89\C0\89U\E4\99D\8BE\E4A\F7\F8\83\FA\00\0F\85\1C\00\00\00H\BE\05\15@\00\00\00\00\00H\8B<%` `\00\B0\00\E8|\F1\FF\FF\89E\E0\E9\00\00\00\00\8BE\EC\83\C0\01\89E\EC\E9|\FF\FF\FFH\83\C4 ]\C3AWAVI\89\D7AUATL\8D%\BE\09 \00UH\8D-\BE\09 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\CF\F0\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_401494__fini = internal constant %seg_401494__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_4014a0__rodata = internal constant %seg_4014a0__rodata_type <{ [96 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\80\0C\C8@\00\00\00\00\80A\E5@\00\00\00\00\00\00\22@\00\00\00\00\00\00 @\00\00\00\00\00\00\18@\00\00\00\00\00\00\10@\00\00\00\00\00\00\00@\F1h\E3\88\B5\F8\E4>\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [7 x i8] c"%0.6f\0A\00", [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", [8 x i8] c"%0.2lf \00", [68 x i8] c"A[%d] = %lf and B[%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00" }>
@seg_401588__eh_frame_hdr = internal constant %seg_401588__eh_frame_hdr_type <{ [164 x i8] c"\01\1B\03;\A4\00\00\00\13\00\00\00\B8\EF\FF\FF\00\01\00\00(\F0\FF\FF\C0\00\00\00X\F0\FF\FF\EC\00\00\00\18\F1\FF\FF(\01\00\00\98\F1\FF\FFD\01\00\00\A8\F1\FF\FF`\01\00\00\C8\F1\FF\FF|\01\00\00\D8\F1\FF\FF\98\01\00\00\F8\F1\FF\FF\B4\01\00\008\F2\FF\FF\D0\01\00\00x\F2\FF\FF\EC\01\00\00\F8\F2\FF\FF\08\02\00\00\F8\F5\FF\FF(\02\00\00\E8\F7\FF\FFH\02\00\00x\FA\FF\FFh\02\00\00\08\FD\FF\FF\88\02\00\00\F8\FD\FF\FF\A4\02\00\00\98\FE\FF\FF\C0\02\00\00\08\FF\FF\FF\08\03\00\00" }>
@seg_401630__eh_frame = internal constant %seg_401630__eh_frame_type <{ [632 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00`\EF\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00d\EF\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00\B0\EE\FF\FFp\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\E8\EF\FF\FFu\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00L\F0\FF\FF\0B\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\90\00\00\00@\F0\FF\FF\19\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\AC\00\00\00D\F0\FF\FF\09\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C8\00\00\008\F0\FF\FF\14\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\E4\00\00\00<\F0\FF\FF4\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\00\01\00\00`\F0\FF\FF;\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\1C\01\00\00\84\F0\FF\FFs\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\008\01\00\00\E8\F0\FF\FF\FD\02\00\00\00A\0E\10\86\02C\0D\06L\83\05\8E\04\8F\03\1C\00\00\00X\01\00\00\C8\F3\FF\FF\EA\01\00\00\00A\0E\10\86\02C\0D\06E\83\05\8E\04\8F\03\1C\00\00\00x\01\00\00\98\F5\FF\FF\8A\02\00\00\00A\0E\10\86\02C\0D\06C\83\04\8E\03\00\00\1C\00\00\00\98\01\00\00\08\F8\FF\FF\8A\02\00\00\00A\0E\10\86\02C\0D\06C\83\04\8E\03\00\00\18\00\00\00\B8\01\00\00x\FA\FF\FF\E1\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\D4\01\00\00L\FB\FF\FF\A0\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00D\00\00\00\F0\01\00\00\D0\FB\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\008\02\00\00\F8\FB\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400690_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400660___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64)* @free to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 ptrtoint (i64 (i64, i64)* @calloc to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), i64 ptrtoint (i64 (i64)* @exit to i64), i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64) }>
@seg_602048__data = internal global %seg_602048__data_type zeroinitializer
@seg_602060__bss = internal global %seg_602060__bss_type zeroinitializer
@polybench_papi_counters_threadid = global %polybench_papi_counters_threadid_type zeroinitializer
@polybench_program_total_flops = global %polybench_program_total_flops_type zeroinitializer
@polybench_c_end = global %polybench_c_end_type zeroinitializer
@polybench_t_end = global %polybench_t_end_type zeroinitializer
@polybench_t_start = global %polybench_t_start_type zeroinitializer
@polybench_c_start = global %polybench_c_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400690_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400660___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401490___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401420___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_flush_cache_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_stop_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_start_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_alloc_data_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_print_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_prepare_instruments_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_4005f0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400800_xmalloc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400b80_init_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4006a0_polybench_flush_cache_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400720_polybench_prepare_instruments_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400520__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401290_check_FP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401380_print_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400d70_kernel_gemver_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400750_rtclock_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401000_kernel_gemver_StrictFP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

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
declare extern_weak x86_64_sysvcc i64 @posix_memalign(i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_400660___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400660:
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
  %14 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 8) to i8*)
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
  br i1 %47, label %block_400680, label %block_400669

block_400680:                                     ; preds = %block_400660
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

block_400669:                                     ; preds = %block_400660
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
  %78 = call %struct.Memory* @sub_4005f0_deregister_tm_clones_renamed_(%struct.State* %0, i64 %77, %struct.Memory* %2)
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 8) to i8*)
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
define %struct.Memory* @sub_401290_check_FP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401290:
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
  %51 = load i64, i64* %50, align 8, !tbaa !2451
  %52 = add i64 %51, -8
  %53 = inttoptr i64 %52 to i64*
  store i64 %47, i64* %53
  store i64 %52, i64* %50, align 8, !tbaa !2451
  %54 = load i64, i64* %RSP
  %55 = load i64, i64* %PC
  %56 = add i64 %55, 3
  store i64 %56, i64* %PC
  store i64 %54, i64* %RBP, align 8, !tbaa !2451
  %57 = load i64, i64* %RSP
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 4
  store i64 %59, i64* %PC
  %60 = sub i64 %57, 80
  store i64 %60, i64* %RSP, align 8, !tbaa !2451
  %61 = icmp ult i64 %57, 80
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %62, i8* %63, align 1, !tbaa !2428
  %64 = trunc i64 %60 to i32
  %65 = and i32 %64, 255
  %66 = call i32 @llvm.ctpop.i32(i32 %65) #16
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %69, i8* %70, align 1, !tbaa !2445
  %71 = xor i64 80, %57
  %72 = xor i64 %71, %60
  %73 = lshr i64 %72, 4
  %74 = trunc i64 %73 to i8
  %75 = and i8 %74, 1
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %75, i8* %76, align 1, !tbaa !2446
  %77 = icmp eq i64 %60, 0
  %78 = zext i1 %77 to i8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %78, i8* %79, align 1, !tbaa !2447
  %80 = lshr i64 %60, 63
  %81 = trunc i64 %80 to i8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %81, i8* %82, align 1, !tbaa !2448
  %83 = lshr i64 %57, 63
  %84 = xor i64 %80, %83
  %85 = add nuw nsw i64 %84, %83
  %86 = icmp eq i64 %85, 2
  %87 = zext i1 %86 to i8
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %87, i8* %88, align 1, !tbaa !2449
  %89 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 8
  store i64 %91, i64* %PC
  %92 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 64) to double*)
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
  br label %block_4012b7

block_4012b7:                                     ; preds = %block_40134e, %block_401290
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401290 ], [ %581, %block_40134e ]
  %128 = load i64, i64* %RBP
  %129 = sub i64 %128, 28
  %130 = load i64, i64* %PC
  %131 = add i64 %130, 3
  store i64 %131, i64* %PC
  %132 = inttoptr i64 %129 to i32*
  %133 = load i32, i32* %132
  %134 = zext i32 %133 to i64
  store i64 %134, i64* %RAX, align 8, !tbaa !2451
  %135 = load i32, i32* %EAX
  %136 = zext i32 %135 to i64
  %137 = load i64, i64* %RBP
  %138 = sub i64 %137, 8
  %139 = load i64, i64* %PC
  %140 = add i64 %139, 3
  store i64 %140, i64* %PC
  %141 = inttoptr i64 %138 to i32*
  %142 = load i32, i32* %141
  %143 = sub i32 %135, %142
  %144 = icmp ult i32 %135, %142
  %145 = zext i1 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %145, i8* %146, align 1, !tbaa !2428
  %147 = and i32 %143, 255
  %148 = call i32 @llvm.ctpop.i32(i32 %147) #16
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %151, i8* %152, align 1, !tbaa !2445
  %153 = xor i32 %142, %135
  %154 = xor i32 %153, %143
  %155 = lshr i32 %154, 4
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %157, i8* %158, align 1, !tbaa !2446
  %159 = icmp eq i32 %143, 0
  %160 = zext i1 %159 to i8
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %160, i8* %161, align 1, !tbaa !2447
  %162 = lshr i32 %143, 31
  %163 = trunc i32 %162 to i8
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %163, i8* %164, align 1, !tbaa !2448
  %165 = lshr i32 %135, 31
  %166 = lshr i32 %142, 31
  %167 = xor i32 %166, %165
  %168 = xor i32 %162, %165
  %169 = add nuw nsw i32 %168, %167
  %170 = icmp eq i32 %169, 2
  %171 = zext i1 %170 to i8
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %171, i8* %172, align 1, !tbaa !2449
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 164
  %175 = load i64, i64* %PC
  %176 = add i64 %175, 6
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 6
  store i64 %178, i64* %PC
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %180 = load i8, i8* %179, align 1, !tbaa !2448
  %181 = icmp ne i8 %180, 0
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %183 = load i8, i8* %182, align 1, !tbaa !2449
  %184 = icmp ne i8 %183, 0
  %185 = xor i1 %181, %184
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %189 = select i1 %185, i64 %176, i64 %174
  store i64 %189, i64* %188, align 8, !tbaa !2451
  %190 = load i8, i8* %BRANCH_TAKEN
  %191 = icmp eq i8 %190, 1
  %192 = load i64, i64* %RBP
  br i1 %191, label %block_401361, label %block_4012c3

block_401311:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %193 = add i64 %599, 10
  store i64 %193, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 162), i64* %RSI, align 8, !tbaa !2451
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 8
  store i64 %195, i64* %PC
  %196 = load i64, i64* @stderr
  store i64 %196, i64* %RDI, align 8, !tbaa !2451
  %197 = load i64, i64* %RBP
  %198 = sub i64 %197, 28
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 3
  store i64 %200, i64* %PC
  %201 = inttoptr i64 %198 to i32*
  %202 = load i32, i32* %201
  %203 = zext i32 %202 to i64
  store i64 %203, i64* %RDX, align 8, !tbaa !2451
  %204 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %205 = load i64, i64* %RBP
  %206 = sub i64 %205, 48
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 5
  store i64 %208, i64* %PC
  %209 = inttoptr i64 %206 to double*
  %210 = load double, double* %209
  %211 = bitcast i8* %204 to double*
  store double %210, double* %211, align 1, !tbaa !2452
  %212 = getelementptr inbounds i8, i8* %204, i64 8
  %213 = bitcast i8* %212 to double*
  store double 0.000000e+00, double* %213, align 1, !tbaa !2452
  %214 = load i64, i64* %RBP
  %215 = sub i64 %214, 28
  %216 = load i64, i64* %PC
  %217 = add i64 %216, 3
  store i64 %217, i64* %PC
  %218 = inttoptr i64 %215 to i32*
  %219 = load i32, i32* %218
  %220 = zext i32 %219 to i64
  store i64 %220, i64* %RCX, align 8, !tbaa !2451
  %221 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %222 = load i64, i64* %RBP
  %223 = sub i64 %222, 56
  %224 = load i64, i64* %PC
  %225 = add i64 %224, 5
  store i64 %225, i64* %PC
  %226 = inttoptr i64 %223 to double*
  %227 = load double, double* %226
  %228 = bitcast i8* %221 to double*
  store double %227, double* %228, align 1, !tbaa !2452
  %229 = getelementptr inbounds i8, i8* %221, i64 8
  %230 = bitcast i8* %229 to double*
  store double 0.000000e+00, double* %230, align 1, !tbaa !2452
  %231 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %232 = load i64, i64* %RBP
  %233 = sub i64 %232, 40
  %234 = load i64, i64* %PC
  %235 = add i64 %234, 5
  store i64 %235, i64* %PC
  %236 = inttoptr i64 %233 to double*
  %237 = load double, double* %236
  %238 = bitcast i8* %231 to double*
  store double %237, double* %238, align 1, !tbaa !2452
  %239 = getelementptr inbounds i8, i8* %231, i64 8
  %240 = bitcast i8* %239 to double*
  store double 0.000000e+00, double* %240, align 1, !tbaa !2452
  %241 = load i64, i64* %PC
  %242 = add i64 %241, 2
  store i64 %242, i64* %PC
  store i8 3, i8* %AL, align 1, !tbaa !2450
  %243 = load i64, i64* %PC
  %244 = sub i64 %243, 3514
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 5
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 5
  store i64 %248, i64* %PC
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %250 = load i64, i64* %249, align 8, !tbaa !2451
  %251 = add i64 %250, -8
  %252 = inttoptr i64 %251 to i64*
  store i64 %246, i64* %252
  store i64 %251, i64* %249, align 8, !tbaa !2451
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %244, i64* %253, align 8, !tbaa !2451
  %254 = load i64, i64* %PC
  %255 = call %struct.Memory* @ext_6020c0_fprintf(%struct.State* %0, i64 %254, %struct.Memory* %581)
  %256 = load i64, i64* %RBP
  %257 = sub i64 %256, 4
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 7
  store i64 %259, i64* %PC
  %260 = inttoptr i64 %257 to i32*
  store i32 0, i32* %260
  %261 = load i64, i64* %RBP
  %262 = sub i64 %261, 68
  %263 = load i32, i32* %EAX
  %264 = zext i32 %263 to i64
  %265 = load i64, i64* %PC
  %266 = add i64 %265, 3
  store i64 %266, i64* %PC
  %267 = inttoptr i64 %262 to i32*
  store i32 %263, i32* %267
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 31
  %270 = load i64, i64* %PC
  %271 = add i64 %270, 5
  store i64 %271, i64* %PC
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %269, i64* %272, align 8, !tbaa !2451
  br label %block_401368

block_40134e:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %273 = add i64 %599, 5
  %274 = load i64, i64* %PC
  %275 = add i64 %274, 5
  store i64 %275, i64* %PC
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %273, i64* %276, align 8, !tbaa !2451
  %277 = load i64, i64* %RBP
  %278 = sub i64 %277, 28
  %279 = load i64, i64* %PC
  %280 = add i64 %279, 3
  store i64 %280, i64* %PC
  %281 = inttoptr i64 %278 to i32*
  %282 = load i32, i32* %281
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RAX, align 8, !tbaa !2451
  %284 = load i64, i64* %RAX
  %285 = load i64, i64* %PC
  %286 = add i64 %285, 3
  store i64 %286, i64* %PC
  %287 = trunc i64 %284 to i32
  %288 = add i32 1, %287
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RAX, align 8, !tbaa !2451
  %290 = icmp ult i32 %288, %287
  %291 = icmp ult i32 %288, 1
  %292 = or i1 %290, %291
  %293 = zext i1 %292 to i8
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %293, i8* %294, align 1, !tbaa !2428
  %295 = and i32 %288, 255
  %296 = call i32 @llvm.ctpop.i32(i32 %295) #16
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %299, i8* %300, align 1, !tbaa !2445
  %301 = xor i64 1, %284
  %302 = trunc i64 %301 to i32
  %303 = xor i32 %302, %288
  %304 = lshr i32 %303, 4
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %306, i8* %307, align 1, !tbaa !2446
  %308 = icmp eq i32 %288, 0
  %309 = zext i1 %308 to i8
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %309, i8* %310, align 1, !tbaa !2447
  %311 = lshr i32 %288, 31
  %312 = trunc i32 %311 to i8
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %312, i8* %313, align 1, !tbaa !2448
  %314 = lshr i32 %287, 31
  %315 = xor i32 %311, %314
  %316 = add nuw nsw i32 %315, %311
  %317 = icmp eq i32 %316, 2
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %318, i8* %319, align 1, !tbaa !2449
  %320 = load i64, i64* %RBP
  %321 = sub i64 %320, 28
  %322 = load i32, i32* %EAX
  %323 = zext i32 %322 to i64
  %324 = load i64, i64* %PC
  %325 = add i64 %324, 3
  store i64 %325, i64* %PC
  %326 = inttoptr i64 %321 to i32*
  store i32 %322, i32* %326
  %327 = load i64, i64* %PC
  %328 = sub i64 %327, 165
  %329 = load i64, i64* %PC
  %330 = add i64 %329, 5
  store i64 %330, i64* %PC
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %328, i64* %331, align 8, !tbaa !2451
  br label %block_4012b7

block_401368:                                     ; preds = %block_401361, %block_401311
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_401361 ], [ %255, %block_401311 ]
  %332 = load i64, i64* %RBP
  %333 = sub i64 %332, 4
  %334 = load i64, i64* %PC
  %335 = add i64 %334, 3
  store i64 %335, i64* %PC
  %336 = inttoptr i64 %333 to i32*
  %337 = load i32, i32* %336
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %RAX, align 8, !tbaa !2451
  %339 = load i64, i64* %RSP
  %340 = load i64, i64* %PC
  %341 = add i64 %340, 4
  store i64 %341, i64* %PC
  %342 = add i64 80, %339
  store i64 %342, i64* %RSP, align 8, !tbaa !2451
  %343 = icmp ult i64 %342, %339
  %344 = icmp ult i64 %342, 80
  %345 = or i1 %343, %344
  %346 = zext i1 %345 to i8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %346, i8* %347, align 1, !tbaa !2428
  %348 = trunc i64 %342 to i32
  %349 = and i32 %348, 255
  %350 = call i32 @llvm.ctpop.i32(i32 %349) #16
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %353, i8* %354, align 1, !tbaa !2445
  %355 = xor i64 80, %339
  %356 = xor i64 %355, %342
  %357 = lshr i64 %356, 4
  %358 = trunc i64 %357 to i8
  %359 = and i8 %358, 1
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %359, i8* %360, align 1, !tbaa !2446
  %361 = icmp eq i64 %342, 0
  %362 = zext i1 %361 to i8
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %362, i8* %363, align 1, !tbaa !2447
  %364 = lshr i64 %342, 63
  %365 = trunc i64 %364 to i8
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %365, i8* %366, align 1, !tbaa !2448
  %367 = lshr i64 %339, 63
  %368 = xor i64 %364, %367
  %369 = add nuw nsw i64 %368, %364
  %370 = icmp eq i64 %369, 2
  %371 = zext i1 %370 to i8
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %371, i8* %372, align 1, !tbaa !2449
  %373 = load i64, i64* %PC
  %374 = add i64 %373, 1
  store i64 %374, i64* %PC
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %376 = load i64, i64* %375, align 8, !tbaa !2451
  %377 = add i64 %376, 8
  %378 = inttoptr i64 %376 to i64*
  %379 = load i64, i64* %378
  store i64 %379, i64* %RBP, align 8, !tbaa !2451
  store i64 %377, i64* %375, align 8, !tbaa !2451
  %380 = load i64, i64* %PC
  %381 = add i64 %380, 1
  store i64 %381, i64* %PC
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %384 = load i64, i64* %383, align 8, !tbaa !2451
  %385 = inttoptr i64 %384 to i64*
  %386 = load i64, i64* %385
  store i64 %386, i64* %382, align 8, !tbaa !2451
  %387 = add i64 %384, 8
  store i64 %387, i64* %383, align 8, !tbaa !2451
  ret %struct.Memory* %MEMORY.1

block_4012c3:                                     ; preds = %block_4012b7
  %388 = sub i64 %192, 16
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 4
  store i64 %390, i64* %PC
  %391 = inttoptr i64 %388 to i64*
  %392 = load i64, i64* %391
  store i64 %392, i64* %RAX, align 8, !tbaa !2451
  %393 = load i64, i64* %RBP
  %394 = sub i64 %393, 28
  %395 = load i64, i64* %PC
  %396 = add i64 %395, 4
  store i64 %396, i64* %PC
  %397 = inttoptr i64 %394 to i32*
  %398 = load i32, i32* %397
  %399 = sext i32 %398 to i64
  store i64 %399, i64* %RCX, align 8, !tbaa !2451
  %400 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %401 = load i64, i64* %RAX
  %402 = load i64, i64* %RCX
  %403 = mul i64 %402, 8
  %404 = add i64 %403, %401
  %405 = load i64, i64* %PC
  %406 = add i64 %405, 5
  store i64 %406, i64* %PC
  %407 = inttoptr i64 %404 to double*
  %408 = load double, double* %407
  %409 = bitcast i8* %400 to double*
  store double %408, double* %409, align 1, !tbaa !2452
  %410 = getelementptr inbounds i8, i8* %400, i64 8
  %411 = bitcast i8* %410 to double*
  store double 0.000000e+00, double* %411, align 1, !tbaa !2452
  %412 = load i64, i64* %RBP
  %413 = sub i64 %412, 48
  %414 = bitcast %union.vec128_t* %XMM0 to i8*
  %415 = load i64, i64* %PC
  %416 = add i64 %415, 5
  store i64 %416, i64* %PC
  %417 = bitcast i8* %414 to double*
  %418 = load double, double* %417, align 1
  %419 = inttoptr i64 %413 to double*
  store double %418, double* %419
  %420 = load i64, i64* %RBP
  %421 = sub i64 %420, 24
  %422 = load i64, i64* %PC
  %423 = add i64 %422, 4
  store i64 %423, i64* %PC
  %424 = inttoptr i64 %421 to i64*
  %425 = load i64, i64* %424
  store i64 %425, i64* %RAX, align 8, !tbaa !2451
  %426 = load i64, i64* %RBP
  %427 = sub i64 %426, 28
  %428 = load i64, i64* %PC
  %429 = add i64 %428, 4
  store i64 %429, i64* %PC
  %430 = inttoptr i64 %427 to i32*
  %431 = load i32, i32* %430
  %432 = sext i32 %431 to i64
  store i64 %432, i64* %RCX, align 8, !tbaa !2451
  %433 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %434 = load i64, i64* %RAX
  %435 = load i64, i64* %RCX
  %436 = mul i64 %435, 8
  %437 = add i64 %436, %434
  %438 = load i64, i64* %PC
  %439 = add i64 %438, 5
  store i64 %439, i64* %PC
  %440 = inttoptr i64 %437 to double*
  %441 = load double, double* %440
  %442 = bitcast i8* %433 to double*
  store double %441, double* %442, align 1, !tbaa !2452
  %443 = getelementptr inbounds i8, i8* %433, i64 8
  %444 = bitcast i8* %443 to double*
  store double 0.000000e+00, double* %444, align 1, !tbaa !2452
  %445 = load i64, i64* %RBP
  %446 = sub i64 %445, 56
  %447 = bitcast %union.vec128_t* %XMM0 to i8*
  %448 = load i64, i64* %PC
  %449 = add i64 %448, 5
  store i64 %449, i64* %PC
  %450 = bitcast i8* %447 to double*
  %451 = load double, double* %450, align 1
  %452 = inttoptr i64 %446 to double*
  store double %451, double* %452
  %453 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %454 = load i64, i64* %RBP
  %455 = sub i64 %454, 48
  %456 = load i64, i64* %PC
  %457 = add i64 %456, 5
  store i64 %457, i64* %PC
  %458 = inttoptr i64 %455 to double*
  %459 = load double, double* %458
  %460 = bitcast i8* %453 to double*
  store double %459, double* %460, align 1, !tbaa !2452
  %461 = getelementptr inbounds i8, i8* %453, i64 8
  %462 = bitcast i8* %461 to double*
  store double 0.000000e+00, double* %462, align 1, !tbaa !2452
  %463 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %464 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %465 = load i64, i64* %RBP
  %466 = sub i64 %465, 56
  %467 = load i64, i64* %PC
  %468 = add i64 %467, 5
  store i64 %468, i64* %PC
  %469 = bitcast i8* %464 to double*
  %470 = load double, double* %469, align 1
  %471 = getelementptr inbounds i8, i8* %464, i64 8
  %472 = bitcast i8* %471 to i64*
  %473 = load i64, i64* %472, align 1
  %474 = inttoptr i64 %466 to double*
  %475 = load double, double* %474
  %476 = fsub double %470, %475
  %477 = bitcast i8* %463 to double*
  store double %476, double* %477, align 1, !tbaa !2452
  %478 = getelementptr inbounds i8, i8* %463, i64 8
  %479 = bitcast i8* %478 to i64*
  store i64 %473, i64* %479, align 1, !tbaa !2452
  %480 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %481 = load i64, i64* %PC
  %482 = add i64 %481, 7
  store i64 %482, i64* %PC
  %483 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 80) to float*)
  %484 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 84) to float*)
  %485 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 88) to float*)
  %486 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 92) to float*)
  %487 = bitcast i8* %480 to float*
  store float %483, float* %487, align 1, !tbaa !2454
  %488 = getelementptr inbounds i8, i8* %480, i64 4
  %489 = bitcast i8* %488 to float*
  store float %484, float* %489, align 1, !tbaa !2454
  %490 = getelementptr inbounds i8, i8* %480, i64 8
  %491 = bitcast i8* %490 to float*
  store float %485, float* %491, align 1, !tbaa !2454
  %492 = getelementptr inbounds i8, i8* %480, i64 12
  %493 = bitcast i8* %492 to float*
  store float %486, float* %493, align 1, !tbaa !2454
  %494 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %495 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %496 = bitcast %union.vec128_t* %XMM1 to i8*
  %497 = load i64, i64* %PC
  %498 = add i64 %497, 4
  store i64 %498, i64* %PC
  %499 = bitcast i8* %495 to i64*
  %500 = load i64, i64* %499, align 1
  %501 = getelementptr inbounds i8, i8* %495, i64 8
  %502 = bitcast i8* %501 to i64*
  %503 = load i64, i64* %502, align 1
  %504 = bitcast i8* %496 to i64*
  %505 = load i64, i64* %504, align 1
  %506 = getelementptr inbounds i8, i8* %496, i64 8
  %507 = bitcast i8* %506 to i64*
  %508 = load i64, i64* %507, align 1
  %509 = and i64 %505, %500
  %510 = and i64 %508, %503
  %511 = trunc i64 %509 to i32
  %512 = lshr i64 %509, 32
  %513 = trunc i64 %512 to i32
  %514 = bitcast i8* %494 to i32*
  store i32 %511, i32* %514, align 1, !tbaa !2456
  %515 = getelementptr inbounds i8, i8* %494, i64 4
  %516 = bitcast i8* %515 to i32*
  store i32 %513, i32* %516, align 1, !tbaa !2456
  %517 = trunc i64 %510 to i32
  %518 = getelementptr inbounds i8, i8* %494, i64 8
  %519 = bitcast i8* %518 to i32*
  store i32 %517, i32* %519, align 1, !tbaa !2456
  %520 = lshr i64 %510, 32
  %521 = trunc i64 %520 to i32
  %522 = getelementptr inbounds i8, i8* %494, i64 12
  %523 = bitcast i8* %522 to i32*
  store i32 %521, i32* %523, align 1, !tbaa !2456
  %524 = load i64, i64* %RBP
  %525 = sub i64 %524, 64
  %526 = bitcast %union.vec128_t* %XMM0 to i8*
  %527 = load i64, i64* %PC
  %528 = add i64 %527, 5
  store i64 %528, i64* %PC
  %529 = bitcast i8* %526 to double*
  %530 = load double, double* %529, align 1
  %531 = inttoptr i64 %525 to double*
  store double %530, double* %531
  %532 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %533 = load i64, i64* %RBP
  %534 = sub i64 %533, 64
  %535 = load i64, i64* %PC
  %536 = add i64 %535, 5
  store i64 %536, i64* %PC
  %537 = inttoptr i64 %534 to double*
  %538 = load double, double* %537
  %539 = bitcast i8* %532 to double*
  store double %538, double* %539, align 1, !tbaa !2452
  %540 = getelementptr inbounds i8, i8* %532, i64 8
  %541 = bitcast i8* %540 to double*
  store double 0.000000e+00, double* %541, align 1, !tbaa !2452
  %542 = bitcast %union.vec128_t* %XMM0 to i8*
  %543 = load i64, i64* %RBP
  %544 = sub i64 %543, 40
  %545 = load i64, i64* %PC
  %546 = add i64 %545, 5
  store i64 %546, i64* %PC
  %547 = bitcast i8* %542 to double*
  %548 = load double, double* %547, align 1
  %549 = inttoptr i64 %544 to double*
  %550 = load double, double* %549
  %551 = fcmp uno double %548, %550
  br i1 %551, label %552, label %564

; <label>:552:                                    ; preds = %block_4012c3
  %553 = fadd double %548, %550
  %554 = bitcast double %553 to i64
  %555 = and i64 %554, 9221120237041090560
  %556 = icmp eq i64 %555, 9218868437227405312
  %557 = and i64 %554, 2251799813685247
  %558 = icmp ne i64 %557, 0
  %559 = and i1 %556, %558
  br i1 %559, label %560, label %570

; <label>:560:                                    ; preds = %552
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %562 = load i64, i64* %561, align 8, !tbaa !2451
  %563 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %562, %struct.Memory* %MEMORY.0) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:564:                                    ; preds = %block_4012c3
  %565 = fcmp ogt double %548, %550
  br i1 %565, label %570, label %566

; <label>:566:                                    ; preds = %564
  %567 = fcmp olt double %548, %550
  br i1 %567, label %570, label %568

; <label>:568:                                    ; preds = %566
  %569 = fcmp oeq double %548, %550
  br i1 %569, label %570, label %577

; <label>:570:                                    ; preds = %568, %566, %564, %552
  %571 = phi i8 [ 0, %564 ], [ 0, %566 ], [ 1, %568 ], [ 1, %552 ]
  %572 = phi i8 [ 0, %564 ], [ 0, %566 ], [ 0, %568 ], [ 1, %552 ]
  %573 = phi i8 [ 0, %564 ], [ 1, %566 ], [ 0, %568 ], [ 1, %552 ]
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %571, i8* %574, align 1, !tbaa !2450
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %572, i8* %575, align 1, !tbaa !2450
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %573, i8* %576, align 1, !tbaa !2450
  br label %577

; <label>:577:                                    ; preds = %570, %568
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %578, align 1, !tbaa !2450
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %579, align 1, !tbaa !2450
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %580, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %560, %577
  %581 = phi %struct.Memory* [ %563, %560 ], [ %MEMORY.0, %577 ]
  %582 = load i64, i64* %PC
  %583 = add i64 %582, 67
  %584 = load i64, i64* %PC
  %585 = add i64 %584, 6
  %586 = load i64, i64* %PC
  %587 = add i64 %586, 6
  store i64 %587, i64* %PC
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %589 = load i8, i8* %588, align 1, !tbaa !2428
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %591 = load i8, i8* %590, align 1, !tbaa !2447
  %592 = or i8 %591, %589
  %593 = icmp ne i8 %592, 0
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %596 = select i1 %593, i64 %583, i64 %585
  store i64 %596, i64* %595, align 8, !tbaa !2451
  %597 = load i8, i8* %BRANCH_TAKEN
  %598 = icmp eq i8 %597, 1
  %599 = load i64, i64* %PC
  br i1 %598, label %block_40134e, label %block_401311

block_401361:                                     ; preds = %block_4012b7
  %600 = sub i64 %192, 4
  %601 = load i64, i64* %PC
  %602 = add i64 %601, 7
  store i64 %602, i64* %PC
  %603 = inttoptr i64 %600 to i32*
  store i32 1, i32* %603
  br label %block_401368
}

; Function Attrs: noinline
define %struct.Memory* @sub_400780_polybench_timer_print(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400780:
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
  %28 = load i64, i64* %27, align 8, !tbaa !2451
  %29 = add i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  store i64 %24, i64* %30
  store i64 %29, i64* %27, align 8, !tbaa !2451
  %31 = load i64, i64* %RSP
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 3
  store i64 %33, i64* %PC
  store i64 %31, i64* %RBP, align 8, !tbaa !2451
  %34 = load i64, i64* %RSP
  %35 = load i64, i64* %PC
  %36 = add i64 %35, 4
  store i64 %36, i64* %PC
  %37 = sub i64 %34, 16
  store i64 %37, i64* %RSP, align 8, !tbaa !2451
  %38 = icmp ult i64 %34, 16
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %39, i8* %40, align 1, !tbaa !2428
  %41 = trunc i64 %37 to i32
  %42 = and i32 %41, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42) #16
  %44 = trunc i32 %43 to i8
  %45 = and i8 %44, 1
  %46 = xor i8 %45, 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %46, i8* %47, align 1, !tbaa !2445
  %48 = xor i64 16, %34
  %49 = xor i64 %48, %37
  %50 = lshr i64 %49, 4
  %51 = trunc i64 %50 to i8
  %52 = and i8 %51, 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %52, i8* %53, align 1, !tbaa !2446
  %54 = icmp eq i64 %37, 0
  %55 = zext i1 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %55, i8* %56, align 1, !tbaa !2447
  %57 = lshr i64 %37, 63
  %58 = trunc i64 %57 to i8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %58, i8* %59, align 1, !tbaa !2448
  %60 = lshr i64 %34, 63
  %61 = xor i64 %57, %60
  %62 = add nuw nsw i64 %61, %60
  %63 = icmp eq i64 %62, 2
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %64, i8* %65, align 1, !tbaa !2449
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 10
  store i64 %67, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 96), i64* %RDI, align 8, !tbaa !2451
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
  store i8 1, i8* %AL, align 1, !tbaa !2450
  %91 = load i64, i64* %PC
  %92 = sub i64 %91, 582
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
  %103 = call %struct.Memory* @ext_6020e0_printf(%struct.State* %0, i64 %102, %struct.Memory* %2)
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
  store i64 %114, i64* %RSP, align 8, !tbaa !2451
  %115 = icmp ult i64 %114, %111
  %116 = icmp ult i64 %114, 16
  %117 = or i1 %115, %116
  %118 = zext i1 %117 to i8
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %118, i8* %119, align 1, !tbaa !2428
  %120 = trunc i64 %114 to i32
  %121 = and i32 %120, 255
  %122 = call i32 @llvm.ctpop.i32(i32 %121) #16
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %125, i8* %126, align 1, !tbaa !2445
  %127 = xor i64 16, %111
  %128 = xor i64 %127, %114
  %129 = lshr i64 %128, 4
  %130 = trunc i64 %129 to i8
  %131 = and i8 %130, 1
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %131, i8* %132, align 1, !tbaa !2446
  %133 = icmp eq i64 %114, 0
  %134 = zext i1 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %134, i8* %135, align 1, !tbaa !2447
  %136 = lshr i64 %114, 63
  %137 = trunc i64 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %137, i8* %138, align 1, !tbaa !2448
  %139 = lshr i64 %111, 63
  %140 = xor i64 %136, %139
  %141 = add nuw nsw i64 %140, %136
  %142 = icmp eq i64 %141, 2
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %143, i8* %144, align 1, !tbaa !2449
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 1
  store i64 %146, i64* %PC
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %148 = load i64, i64* %147, align 8, !tbaa !2451
  %149 = add i64 %148, 8
  %150 = inttoptr i64 %148 to i64*
  %151 = load i64, i64* %150
  store i64 %151, i64* %RBP, align 8, !tbaa !2451
  store i64 %149, i64* %147, align 8, !tbaa !2451
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 1
  store i64 %153, i64* %PC
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %156 = load i64, i64* %155, align 8, !tbaa !2451
  %157 = inttoptr i64 %156 to i64*
  %158 = load i64, i64* %157
  store i64 %158, i64* %154, align 8, !tbaa !2451
  %159 = add i64 %156, 8
  store i64 %159, i64* %155, align 8, !tbaa !2451
  ret %struct.Memory* %103
}

; Function Attrs: noinline
define %struct.Memory* @sub_400720_polybench_prepare_instruments(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400720:
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
  %23 = sub i64 %22, 132
  %24 = load i64, i64* %PC
  %25 = add i64 %24, 5
  %26 = load i64, i64* %PC
  %27 = add i64 %26, 5
  store i64 %27, i64* %PC
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %29 = load i64, i64* %28, align 8, !tbaa !2451
  %30 = add i64 %29, -8
  %31 = inttoptr i64 %30 to i64*
  store i64 %25, i64* %31
  store i64 %30, i64* %28, align 8, !tbaa !2451
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %23, i64* %32, align 8, !tbaa !2451
  %33 = load i64, i64* %PC
  %34 = call %struct.Memory* @sub_4006a0_polybench_flush_cache_renamed_(%struct.State* %0, i64 %33, %struct.Memory* %2)
  %35 = load i64, i64* %PC
  %36 = add i64 %35, 1
  store i64 %36, i64* %PC
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %38 = load i64, i64* %37, align 8, !tbaa !2451
  %39 = add i64 %38, 8
  %40 = inttoptr i64 %38 to i64*
  %41 = load i64, i64* %40
  store i64 %41, i64* %RBP, align 8, !tbaa !2451
  store i64 %39, i64* %37, align 8, !tbaa !2451
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 1
  store i64 %43, i64* %PC
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %46 = load i64, i64* %45, align 8, !tbaa !2451
  %47 = inttoptr i64 %46 to i64*
  %48 = load i64, i64* %47
  store i64 %48, i64* %44, align 8, !tbaa !2451
  %49 = add i64 %46, 8
  store i64 %49, i64* %45, align 8, !tbaa !2451
  ret %struct.Memory* %34
}

; Function Attrs: noinline
define %struct.Memory* @sub_400750_rtclock(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %20 = load i64, i64* %19, align 8, !tbaa !2451
  %21 = add i64 %20, -8
  %22 = inttoptr i64 %21 to i64*
  store i64 %16, i64* %22
  store i64 %21, i64* %19, align 8, !tbaa !2451
  %23 = load i64, i64* %RSP
  %24 = load i64, i64* %PC
  %25 = add i64 %24, 3
  store i64 %25, i64* %PC
  store i64 %23, i64* %RBP, align 8, !tbaa !2451
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
  store i32 %43, i32* %46, align 1, !tbaa !2456
  %47 = getelementptr inbounds i8, i8* %26, i64 4
  %48 = bitcast i8* %47 to i32*
  store i32 %45, i32* %48, align 1, !tbaa !2456
  %49 = trunc i64 %42 to i32
  %50 = getelementptr inbounds i8, i8* %26, i64 8
  %51 = bitcast i8* %50 to i32*
  store i32 %49, i32* %51, align 1, !tbaa !2456
  %52 = lshr i64 %42, 32
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds i8, i8* %26, i64 12
  %55 = bitcast i8* %54 to i32*
  store i32 %53, i32* %55, align 1, !tbaa !2456
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 1
  store i64 %57, i64* %PC
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %59 = load i64, i64* %58, align 8, !tbaa !2451
  %60 = add i64 %59, 8
  %61 = inttoptr i64 %59 to i64*
  %62 = load i64, i64* %61
  store i64 %62, i64* %RBP, align 8, !tbaa !2451
  store i64 %60, i64* %58, align 8, !tbaa !2451
  %63 = load i64, i64* %PC
  %64 = add i64 %63, 1
  store i64 %64, i64* %PC
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %67 = load i64, i64* %66, align 8, !tbaa !2451
  %68 = inttoptr i64 %67 to i64*
  %69 = load i64, i64* %68
  store i64 %69, i64* %65, align 8, !tbaa !2451
  %70 = add i64 %67, 8
  store i64 %70, i64* %66, align 8, !tbaa !2451
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400620_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400620:
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
  store i64 6299736, i64* %RSI, align 8, !tbaa !2451
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
  %39 = sub i64 %36, 6299736
  store i64 %39, i64* %RSI, align 8, !tbaa !2451
  %40 = icmp ult i64 %36, 6299736
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
  %50 = xor i64 6299736, %36
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
  %63 = xor i64 %59, %62
  %64 = add nuw nsw i64 %63, %62
  %65 = icmp eq i64 %64, 2
  %66 = zext i1 %65 to i8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %66, i8* %67, align 1, !tbaa !2449
  %68 = load i64, i64* %RSP
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 3
  store i64 %70, i64* %PC
  store i64 %68, i64* %RBP, align 8, !tbaa !2451
  %71 = load i64, i64* %RSI
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 4
  store i64 %73, i64* %PC
  %74 = ashr i64 %71, 2
  %75 = trunc i64 %74 to i8
  %76 = and i8 %75, 1
  %77 = ashr i64 %74, 1
  store i64 %77, i64* %RSI, align 8, !tbaa !2451
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %76, i8* %78, align 1, !tbaa !2450
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %80 = trunc i64 %77 to i32
  %81 = and i32 %80, 255
  %82 = call i32 @llvm.ctpop.i32(i32 %81) #16
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  store i8 %85, i8* %79, align 1, !tbaa !2450
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %86, align 1, !tbaa !2450
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %88 = icmp eq i64 %77, 0
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %87, align 1, !tbaa !2450
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %91 = lshr i64 %77, 63
  %92 = trunc i64 %91 to i8
  store i8 %92, i8* %90, align 1, !tbaa !2450
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %93, align 1, !tbaa !2450
  %94 = load i64, i64* %RSI
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC
  store i64 %94, i64* %RAX, align 8, !tbaa !2451
  %97 = load i64, i64* %RAX
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 4
  store i64 %99, i64* %PC
  %100 = lshr i64 %97, 62
  %101 = trunc i64 %100 to i8
  %102 = and i8 %101, 1
  %103 = lshr i64 %100, 1
  store i64 %103, i64* %RAX, align 8, !tbaa !2451
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %102, i8* %104, align 1, !tbaa !2450
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %106 = trunc i64 %103 to i32
  %107 = and i32 %106, 255
  %108 = call i32 @llvm.ctpop.i32(i32 %107) #16
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %105, align 1, !tbaa !2450
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %112, align 1, !tbaa !2450
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %114 = icmp eq i64 %103, 0
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %113, align 1, !tbaa !2450
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %116, align 1, !tbaa !2450
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %117, align 1, !tbaa !2450
  %118 = load i64, i64* %RSI
  %119 = load i64, i64* %RAX
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 3
  store i64 %121, i64* %PC
  %122 = add i64 %119, %118
  store i64 %122, i64* %RSI, align 8, !tbaa !2451
  %123 = icmp ult i64 %122, %118
  %124 = icmp ult i64 %122, %119
  %125 = or i1 %123, %124
  %126 = zext i1 %125 to i8
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %126, i8* %127, align 1, !tbaa !2428
  %128 = trunc i64 %122 to i32
  %129 = and i32 %128, 255
  %130 = call i32 @llvm.ctpop.i32(i32 %129) #16
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %133, i8* %134, align 1, !tbaa !2445
  %135 = xor i64 %119, %118
  %136 = xor i64 %135, %122
  %137 = lshr i64 %136, 4
  %138 = trunc i64 %137 to i8
  %139 = and i8 %138, 1
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %139, i8* %140, align 1, !tbaa !2446
  %141 = icmp eq i64 %122, 0
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %142, i8* %143, align 1, !tbaa !2447
  %144 = lshr i64 %122, 63
  %145 = trunc i64 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %145, i8* %146, align 1, !tbaa !2448
  %147 = lshr i64 %118, 63
  %148 = lshr i64 %119, 63
  %149 = xor i64 %144, %147
  %150 = xor i64 %144, %148
  %151 = add nuw nsw i64 %149, %150
  %152 = icmp eq i64 %151, 2
  %153 = zext i1 %152 to i8
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %153, i8* %154, align 1, !tbaa !2449
  %155 = load i64, i64* %RSI
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 3
  store i64 %157, i64* %PC
  %158 = trunc i64 %155 to i8
  %159 = and i8 %158, 1
  %160 = ashr i64 %155, 1
  store i64 %160, i64* %RSI, align 8, !tbaa !2451
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %159, i8* %161, align 1, !tbaa !2450
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %163 = trunc i64 %160 to i32
  %164 = and i32 %163, 255
  %165 = call i32 @llvm.ctpop.i32(i32 %164) #16
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %162, align 1, !tbaa !2450
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %169, align 1, !tbaa !2450
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %171 = icmp eq i64 %160, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %170, align 1, !tbaa !2450
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %174 = lshr i64 %160, 63
  %175 = trunc i64 %174 to i8
  store i8 %175, i8* %173, align 1, !tbaa !2450
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %176, align 1, !tbaa !2450
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 23
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 2
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 2
  store i64 %182, i64* %PC
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %184 = load i8, i8* %183, align 1, !tbaa !2447
  store i8 %184, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %186 = icmp ne i8 %184, 0
  %187 = select i1 %186, i64 %178, i64 %180
  store i64 %187, i64* %185, align 8, !tbaa !2451
  %188 = load i8, i8* %BRANCH_TAKEN
  %189 = icmp eq i8 %188, 1
  br i1 %189, label %block_400658, label %block_400643

block_40065a:                                     ; preds = %block_40064d
  %190 = load i64, i64* %RAX
  %191 = load i64, i64* %RAX
  %192 = add i64 %191, %190
  %193 = load i16, i16* %AX
  %194 = zext i16 %193 to i64
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 6
  store i64 %196, i64* %PC
  %197 = load i64, i64* %PC
  %198 = tail call %struct.Memory* @sub_400660___do_global_dtors_aux(%struct.State* %0, i64 %197, %struct.Memory* %2)
  ret %struct.Memory* %198

block_400655:                                     ; preds = %block_40064d
  %199 = load i64, i64* %RAX
  %200 = load i32, i32* %EAX
  %201 = zext i32 %200 to i64
  %202 = load i64, i64* %PC
  %203 = add i64 %202, 3
  store i64 %203, i64* %PC
  br label %block_400658

block_40064d:                                     ; preds = %block_400643
  %204 = load i64, i64* %PC
  %205 = add i64 %204, 1
  store i64 %205, i64* %PC
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %207 = load i64, i64* %206, align 8, !tbaa !2451
  %208 = add i64 %207, 8
  %209 = inttoptr i64 %207 to i64*
  %210 = load i64, i64* %209
  store i64 %210, i64* %RBP, align 8, !tbaa !2451
  store i64 %208, i64* %206, align 8, !tbaa !2451
  %211 = load i64, i64* %PC
  %212 = add i64 %211, 5
  store i64 %212, i64* %PC
  store i64 6299736, i64* %RDI, align 8, !tbaa !2451
  %213 = load i64, i64* %RAX
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 2
  store i64 %215, i64* %PC
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %213, i64* %216, align 8, !tbaa !2451
  %217 = load i64, i64* %PC
  switch i64 %217, label %269 [
    i64 4195930, label %block_40065a
    i64 4195925, label %block_400655
  ]

block_400658:                                     ; preds = %block_400643, %block_400655, %block_400620
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400620 ], [ %2, %block_400643 ], [ %2, %block_400655 ]
  %218 = load i64, i64* %PC
  %219 = add i64 %218, 1
  store i64 %219, i64* %PC
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %221 = load i64, i64* %220, align 8, !tbaa !2451
  %222 = add i64 %221, 8
  %223 = inttoptr i64 %221 to i64*
  %224 = load i64, i64* %223
  store i64 %224, i64* %RBP, align 8, !tbaa !2451
  store i64 %222, i64* %220, align 8, !tbaa !2451
  %225 = load i64, i64* %PC
  %226 = add i64 %225, 1
  store i64 %226, i64* %PC
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %229 = load i64, i64* %228, align 8, !tbaa !2451
  %230 = inttoptr i64 %229 to i64*
  %231 = load i64, i64* %230
  store i64 %231, i64* %227, align 8, !tbaa !2451
  %232 = add i64 %229, 8
  store i64 %232, i64* %228, align 8, !tbaa !2451
  ret %struct.Memory* %MEMORY.0

block_400643:                                     ; preds = %block_400620
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 5
  store i64 %234, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2451
  %235 = load i64, i64* %RAX
  %236 = load i64, i64* %RAX
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 3
  store i64 %238, i64* %PC
  %239 = and i64 %236, %235
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %240, align 1, !tbaa !2428
  %241 = trunc i64 %239 to i32
  %242 = and i32 %241, 255
  %243 = call i32 @llvm.ctpop.i32(i32 %242) #16
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %246, i8* %247, align 1, !tbaa !2445
  %248 = icmp eq i64 %239, 0
  %249 = zext i1 %248 to i8
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %249, i8* %250, align 1, !tbaa !2447
  %251 = lshr i64 %239, 63
  %252 = trunc i64 %251 to i8
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %252, i8* %253, align 1, !tbaa !2448
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %254, align 1, !tbaa !2449
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %255, align 1, !tbaa !2446
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 13
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 2
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 2
  store i64 %261, i64* %PC
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %263 = load i8, i8* %262, align 1, !tbaa !2447
  store i8 %263, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %265 = icmp ne i8 %263, 0
  %266 = select i1 %265, i64 %257, i64 %259
  store i64 %266, i64* %264, align 8, !tbaa !2451
  %267 = load i8, i8* %BRANCH_TAKEN
  %268 = icmp eq i8 %267, 1
  br i1 %268, label %block_400658, label %block_40064d

; <label>:269:                                    ; preds = %block_40064d
  %270 = load i64, i64* %PC
  %271 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %270, %struct.Memory* %2)
  ret %struct.Memory* %271
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005b0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005b0:
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
  store i64 ptrtoint (void ()* @callback_sub_401490___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2451
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_401420___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2451
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
  %121 = load i64, i64* getelementptr inbounds (%seg_601ff0__got_type, %seg_601ff0__got_type* @seg_601ff0__got, i32 0, i32 0)
  store i64 %121, i64* %120, align 8, !tbaa !2451
  %122 = load i64, i64* %PC
  %123 = call %struct.Memory* @ext_6020e8___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007c0_polybench_alloc_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4007c0:
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
  %25 = load i64, i64* %24, align 8, !tbaa !2451
  %26 = add i64 %25, -8
  %27 = inttoptr i64 %26 to i64*
  store i64 %21, i64* %27
  store i64 %26, i64* %24, align 8, !tbaa !2451
  %28 = load i64, i64* %RSP
  %29 = load i64, i64* %PC
  %30 = add i64 %29, 3
  store i64 %30, i64* %PC
  store i64 %28, i64* %RBP, align 8, !tbaa !2451
  %31 = load i64, i64* %RSP
  %32 = load i64, i64* %PC
  %33 = add i64 %32, 4
  store i64 %33, i64* %PC
  %34 = sub i64 %31, 32
  store i64 %34, i64* %RSP, align 8, !tbaa !2451
  %35 = icmp ult i64 %31, 32
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %36, i8* %37, align 1, !tbaa !2428
  %38 = trunc i64 %34 to i32
  %39 = and i32 %38, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39) #16
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %43 = xor i8 %42, 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %43, i8* %44, align 1, !tbaa !2445
  %45 = xor i64 32, %31
  %46 = xor i64 %45, %34
  %47 = lshr i64 %46, 4
  %48 = trunc i64 %47 to i8
  %49 = and i8 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %49, i8* %50, align 1, !tbaa !2446
  %51 = icmp eq i64 %34, 0
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %52, i8* %53, align 1, !tbaa !2447
  %54 = lshr i64 %34, 63
  %55 = trunc i64 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %55, i8* %56, align 1, !tbaa !2448
  %57 = lshr i64 %31, 63
  %58 = xor i64 %54, %57
  %59 = add nuw nsw i64 %58, %57
  %60 = icmp eq i64 %59, 2
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %61, i8* %62, align 1, !tbaa !2449
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
  store i64 %81, i64* %RDI, align 8, !tbaa !2451
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
  store i64 %94, i64* %RDI, align 8, !tbaa !2451
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
  store i64 %111, i64* %RDI, align 8, !tbaa !2451
  %112 = sext i64 %111 to i128
  %113 = icmp ne i128 %112, %110
  %114 = zext i1 %113 to i8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %114, i8* %115, align 1, !tbaa !2428
  %116 = trunc i128 %110 to i32
  %117 = and i32 %116, 255
  %118 = call i32 @llvm.ctpop.i32(i32 %117) #16
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  %121 = xor i8 %120, 1
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %121, i8* %122, align 1, !tbaa !2445
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %123, align 1, !tbaa !2446
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %124, align 1, !tbaa !2447
  %125 = lshr i64 %111, 63
  %126 = trunc i64 %125 to i8
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %126, i8* %127, align 1, !tbaa !2448
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %114, i8* %128, align 1, !tbaa !2449
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
  store i64 %140, i64* %RDI, align 8, !tbaa !2451
  %141 = load i64, i64* %PC
  %142 = add i64 %141, 24
  %143 = load i64, i64* %PC
  %144 = add i64 %143, 5
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 5
  store i64 %146, i64* %PC
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %148 = load i64, i64* %147, align 8, !tbaa !2451
  %149 = add i64 %148, -8
  %150 = inttoptr i64 %149 to i64*
  store i64 %144, i64* %150
  store i64 %149, i64* %147, align 8, !tbaa !2451
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %142, i64* %151, align 8, !tbaa !2451
  %152 = load i64, i64* %PC
  %153 = call %struct.Memory* @sub_400800_xmalloc_renamed_(%struct.State* %0, i64 %152, %struct.Memory* %2)
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
  store i64 %165, i64* %RAX, align 8, !tbaa !2451
  %166 = load i64, i64* %RSP
  %167 = load i64, i64* %PC
  %168 = add i64 %167, 4
  store i64 %168, i64* %PC
  %169 = add i64 32, %166
  store i64 %169, i64* %RSP, align 8, !tbaa !2451
  %170 = icmp ult i64 %169, %166
  %171 = icmp ult i64 %169, 32
  %172 = or i1 %170, %171
  %173 = zext i1 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %173, i8* %174, align 1, !tbaa !2428
  %175 = trunc i64 %169 to i32
  %176 = and i32 %175, 255
  %177 = call i32 @llvm.ctpop.i32(i32 %176) #16
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  %180 = xor i8 %179, 1
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %180, i8* %181, align 1, !tbaa !2445
  %182 = xor i64 32, %166
  %183 = xor i64 %182, %169
  %184 = lshr i64 %183, 4
  %185 = trunc i64 %184 to i8
  %186 = and i8 %185, 1
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %186, i8* %187, align 1, !tbaa !2446
  %188 = icmp eq i64 %169, 0
  %189 = zext i1 %188 to i8
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %189, i8* %190, align 1, !tbaa !2447
  %191 = lshr i64 %169, 63
  %192 = trunc i64 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %192, i8* %193, align 1, !tbaa !2448
  %194 = lshr i64 %166, 63
  %195 = xor i64 %191, %194
  %196 = add nuw nsw i64 %195, %191
  %197 = icmp eq i64 %196, 2
  %198 = zext i1 %197 to i8
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %198, i8* %199, align 1, !tbaa !2449
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 1
  store i64 %201, i64* %PC
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %203 = load i64, i64* %202, align 8, !tbaa !2451
  %204 = add i64 %203, 8
  %205 = inttoptr i64 %203 to i64*
  %206 = load i64, i64* %205
  store i64 %206, i64* %RBP, align 8, !tbaa !2451
  store i64 %204, i64* %202, align 8, !tbaa !2451
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 1
  store i64 %208, i64* %PC
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %211 = load i64, i64* %210, align 8, !tbaa !2451
  %212 = inttoptr i64 %211 to i64*
  %213 = load i64, i64* %212
  store i64 %213, i64* %209, align 8, !tbaa !2451
  %214 = add i64 %211, 8
  store i64 %214, i64* %210, align 8, !tbaa !2451
  ret %struct.Memory* %153
}

; Function Attrs: noinline
define %struct.Memory* @sub_401380_print_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401380:
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %EDX = bitcast %union.anon* %15 to i32*
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 11
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %EDI = bitcast %union.anon* %18 to i32*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 17
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %R8D = bitcast %union.anon* %21 to i32*
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
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %44 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %43, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %44 to %"class.std::bitset"*
  %45 = load i64, i64* %RBP
  %46 = load i64, i64* %PC
  %47 = add i64 %46, 1
  store i64 %47, i64* %PC
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %49 = load i64, i64* %48, align 8, !tbaa !2451
  %50 = add i64 %49, -8
  %51 = inttoptr i64 %50 to i64*
  store i64 %45, i64* %51
  store i64 %50, i64* %48, align 8, !tbaa !2451
  %52 = load i64, i64* %RSP
  %53 = load i64, i64* %PC
  %54 = add i64 %53, 3
  store i64 %54, i64* %PC
  store i64 %52, i64* %RBP, align 8, !tbaa !2451
  %55 = load i64, i64* %RSP
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 4
  store i64 %57, i64* %PC
  %58 = sub i64 %55, 32
  store i64 %58, i64* %RSP, align 8, !tbaa !2451
  %59 = icmp ult i64 %55, 32
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %60, i8* %61, align 1, !tbaa !2428
  %62 = trunc i64 %58 to i32
  %63 = and i32 %62, 255
  %64 = call i32 @llvm.ctpop.i32(i32 %63) #16
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %67, i8* %68, align 1, !tbaa !2445
  %69 = xor i64 32, %55
  %70 = xor i64 %69, %58
  %71 = lshr i64 %70, 4
  %72 = trunc i64 %71 to i8
  %73 = and i8 %72, 1
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %73, i8* %74, align 1, !tbaa !2446
  %75 = icmp eq i64 %58, 0
  %76 = zext i1 %75 to i8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %76, i8* %77, align 1, !tbaa !2447
  %78 = lshr i64 %58, 63
  %79 = trunc i64 %78 to i8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %79, i8* %80, align 1, !tbaa !2448
  %81 = lshr i64 %55, 63
  %82 = xor i64 %78, %81
  %83 = add nuw nsw i64 %82, %81
  %84 = icmp eq i64 %83, 2
  %85 = zext i1 %84 to i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %85, i8* %86, align 1, !tbaa !2449
  %87 = load i64, i64* %RBP
  %88 = sub i64 %87, 4
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
  %101 = sub i64 %100, 20
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 7
  store i64 %103, i64* %PC
  %104 = inttoptr i64 %101 to i32*
  store i32 0, i32* %104
  br label %block_401396

block_401396:                                     ; preds = %block_401407, %block_401380
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_401380 ], [ %MEMORY.1, %block_401407 ]
  %105 = load i64, i64* %RBP
  %106 = sub i64 %105, 20
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 3
  store i64 %108, i64* %PC
  %109 = inttoptr i64 %106 to i32*
  %110 = load i32, i32* %109
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RAX, align 8, !tbaa !2451
  %112 = load i32, i32* %EAX
  %113 = zext i32 %112 to i64
  %114 = load i64, i64* %RBP
  %115 = sub i64 %114, 4
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 3
  store i64 %117, i64* %PC
  %118 = inttoptr i64 %115 to i32*
  %119 = load i32, i32* %118
  %120 = sub i32 %112, %119
  %121 = icmp ult i32 %112, %119
  %122 = zext i1 %121 to i8
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %122, i8* %123, align 1, !tbaa !2428
  %124 = and i32 %120, 255
  %125 = call i32 @llvm.ctpop.i32(i32 %124) #16
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %128, i8* %129, align 1, !tbaa !2445
  %130 = xor i32 %119, %112
  %131 = xor i32 %130, %120
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %134, i8* %135, align 1, !tbaa !2446
  %136 = icmp eq i32 %120, 0
  %137 = zext i1 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %137, i8* %138, align 1, !tbaa !2447
  %139 = lshr i32 %120, 31
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %140, i8* %141, align 1, !tbaa !2448
  %142 = lshr i32 %112, 31
  %143 = lshr i32 %119, 31
  %144 = xor i32 %143, %142
  %145 = xor i32 %139, %142
  %146 = add nuw nsw i32 %145, %144
  %147 = icmp eq i32 %146, 2
  %148 = zext i1 %147 to i8
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %148, i8* %149, align 1, !tbaa !2449
  %150 = load i64, i64* %PC
  %151 = add i64 %150, 126
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 6
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 6
  store i64 %155, i64* %PC
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %157 = load i8, i8* %156, align 1, !tbaa !2448
  %158 = icmp ne i8 %157, 0
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %160 = load i8, i8* %159, align 1, !tbaa !2449
  %161 = icmp ne i8 %160, 0
  %162 = xor i1 %158, %161
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %166 = select i1 %162, i64 %153, i64 %151
  store i64 %166, i64* %165, align 8, !tbaa !2451
  %167 = load i8, i8* %BRANCH_TAKEN
  %168 = icmp eq i8 %167, 1
  br i1 %168, label %block_40141a, label %block_4013a2

block_4013eb:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %169 = load i64, i64* %PC
  %170 = add i64 %169, 10
  store i64 %170, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 101), i64* %RSI, align 8, !tbaa !2451
  %171 = load i64, i64* %PC
  %172 = add i64 %171, 8
  store i64 %172, i64* %PC
  %173 = load i64, i64* @stderr
  store i64 %173, i64* %RDI, align 8, !tbaa !2451
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 2
  store i64 %175, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %176 = load i64, i64* %PC
  %177 = sub i64 %176, 3711
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 5
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 5
  store i64 %181, i64* %PC
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %183 = load i64, i64* %182, align 8, !tbaa !2451
  %184 = add i64 %183, -8
  %185 = inttoptr i64 %184 to i64*
  store i64 %179, i64* %185
  store i64 %184, i64* %182, align 8, !tbaa !2451
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %177, i64* %186, align 8, !tbaa !2451
  %187 = load i64, i64* %PC
  %188 = call %struct.Memory* @ext_6020c0_fprintf(%struct.State* %0, i64 %187, %struct.Memory* %382)
  %189 = load i64, i64* %RBP
  %190 = sub i64 %189, 32
  %191 = load i32, i32* %EAX
  %192 = zext i32 %191 to i64
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 3
  store i64 %194, i64* %PC
  %195 = inttoptr i64 %190 to i32*
  store i32 %191, i32* %195
  br label %block_401407

block_401407:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_4013eb
  %MEMORY.1 = phi %struct.Memory* [ %382, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %188, %block_4013eb ]
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 5
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 5
  store i64 %199, i64* %PC
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %197, i64* %200, align 8, !tbaa !2451
  %201 = load i64, i64* %RBP
  %202 = sub i64 %201, 20
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 3
  store i64 %204, i64* %PC
  %205 = inttoptr i64 %202 to i32*
  %206 = load i32, i32* %205
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %RAX, align 8, !tbaa !2451
  %208 = load i64, i64* %RAX
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 3
  store i64 %210, i64* %PC
  %211 = trunc i64 %208 to i32
  %212 = add i32 1, %211
  %213 = zext i32 %212 to i64
  store i64 %213, i64* %RAX, align 8, !tbaa !2451
  %214 = icmp ult i32 %212, %211
  %215 = icmp ult i32 %212, 1
  %216 = or i1 %214, %215
  %217 = zext i1 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %217, i8* %218, align 1, !tbaa !2428
  %219 = and i32 %212, 255
  %220 = call i32 @llvm.ctpop.i32(i32 %219) #16
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %223, i8* %224, align 1, !tbaa !2445
  %225 = xor i64 1, %208
  %226 = trunc i64 %225 to i32
  %227 = xor i32 %226, %212
  %228 = lshr i32 %227, 4
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %230, i8* %231, align 1, !tbaa !2446
  %232 = icmp eq i32 %212, 0
  %233 = zext i1 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %233, i8* %234, align 1, !tbaa !2447
  %235 = lshr i32 %212, 31
  %236 = trunc i32 %235 to i8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %236, i8* %237, align 1, !tbaa !2448
  %238 = lshr i32 %211, 31
  %239 = xor i32 %235, %238
  %240 = add nuw nsw i32 %239, %235
  %241 = icmp eq i32 %240, 2
  %242 = zext i1 %241 to i8
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %242, i8* %243, align 1, !tbaa !2449
  %244 = load i64, i64* %RBP
  %245 = sub i64 %244, 20
  %246 = load i32, i32* %EAX
  %247 = zext i32 %246 to i64
  %248 = load i64, i64* %PC
  %249 = add i64 %248, 3
  store i64 %249, i64* %PC
  %250 = inttoptr i64 %245 to i32*
  store i32 %246, i32* %250
  %251 = load i64, i64* %PC
  %252 = sub i64 %251, 127
  %253 = load i64, i64* %PC
  %254 = add i64 %253, 5
  store i64 %254, i64* %PC
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %252, i64* %255, align 8, !tbaa !2451
  br label %block_401396

block_4013a2:                                     ; preds = %block_401396
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 10
  store i64 %257, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 154), i64* %RSI, align 8, !tbaa !2451
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 8
  store i64 %259, i64* %PC
  %260 = load i64, i64* @stderr
  store i64 %260, i64* %RDI, align 8, !tbaa !2451
  %261 = load i64, i64* %RBP
  %262 = sub i64 %261, 16
  %263 = load i64, i64* %PC
  %264 = add i64 %263, 4
  store i64 %264, i64* %PC
  %265 = inttoptr i64 %262 to i64*
  %266 = load i64, i64* %265
  store i64 %266, i64* %RAX, align 8, !tbaa !2451
  %267 = load i64, i64* %RBP
  %268 = sub i64 %267, 20
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 4
  store i64 %270, i64* %PC
  %271 = inttoptr i64 %268 to i32*
  %272 = load i32, i32* %271
  %273 = sext i32 %272 to i64
  store i64 %273, i64* %RCX, align 8, !tbaa !2451
  %274 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %275 = load i64, i64* %RAX
  %276 = load i64, i64* %RCX
  %277 = mul i64 %276, 8
  %278 = add i64 %277, %275
  %279 = load i64, i64* %PC
  %280 = add i64 %279, 5
  store i64 %280, i64* %PC
  %281 = inttoptr i64 %278 to double*
  %282 = load double, double* %281
  %283 = bitcast i8* %274 to double*
  store double %282, double* %283, align 1, !tbaa !2452
  %284 = getelementptr inbounds i8, i8* %274, i64 8
  %285 = bitcast i8* %284 to double*
  store double 0.000000e+00, double* %285, align 1, !tbaa !2452
  %286 = load i64, i64* %PC
  %287 = add i64 %286, 2
  store i64 %287, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2450
  %288 = load i64, i64* %PC
  %289 = sub i64 %288, 3651
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
  %300 = call %struct.Memory* @ext_6020c0_fprintf(%struct.State* %0, i64 %299, %struct.Memory* %MEMORY.0)
  %301 = load i64, i64* %PC
  %302 = add i64 %301, 5
  store i64 %302, i64* %PC
  store i64 20, i64* %RDX, align 8, !tbaa !2451
  %303 = bitcast i32* %R8D to i64*
  %304 = load i64, i64* %RBP
  %305 = sub i64 %304, 20
  %306 = load i64, i64* %PC
  %307 = add i64 %306, 4
  store i64 %307, i64* %PC
  %308 = inttoptr i64 %305 to i32*
  %309 = load i32, i32* %308
  %310 = zext i32 %309 to i64
  store i64 %310, i64* %303, align 8, !tbaa !2451
  %311 = load i64, i64* %RBP
  %312 = sub i64 %311, 24
  %313 = load i32, i32* %EAX
  %314 = zext i32 %313 to i64
  %315 = load i64, i64* %PC
  %316 = add i64 %315, 3
  store i64 %316, i64* %PC
  %317 = inttoptr i64 %312 to i32*
  store i32 %313, i32* %317
  %318 = load i32, i32* %R8D
  %319 = zext i32 %318 to i64
  %320 = load i64, i64* %PC
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC
  %322 = and i64 %319, 4294967295
  store i64 %322, i64* %RAX, align 8, !tbaa !2451
  %323 = load i64, i64* %RBP
  %324 = sub i64 %323, 28
  %325 = load i32, i32* %EDX
  %326 = zext i32 %325 to i64
  %327 = load i64, i64* %PC
  %328 = add i64 %327, 3
  store i64 %328, i64* %PC
  %329 = inttoptr i64 %324 to i32*
  store i32 %325, i32* %329
  %330 = load i64, i64* %PC
  %331 = add i64 %330, 1
  store i64 %331, i64* %PC
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %334 = bitcast %union.anon* %333 to i32*
  %335 = load i32, i32* %334, align 8, !tbaa !2456
  %336 = sext i32 %335 to i64
  %337 = lshr i64 %336, 32
  store i64 %337, i64* %332, align 8, !tbaa !2451
  %338 = bitcast i32* %R8D to i64*
  %339 = load i64, i64* %RBP
  %340 = sub i64 %339, 28
  %341 = load i64, i64* %PC
  %342 = add i64 %341, 4
  store i64 %342, i64* %PC
  %343 = inttoptr i64 %340 to i32*
  %344 = load i32, i32* %343
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %338, align 8, !tbaa !2451
  %346 = load i32, i32* %R8D
  %347 = zext i32 %346 to i64
  %348 = load i64, i64* %PC
  %349 = add i64 %348, 3
  store i64 %349, i64* %PC
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %351 = bitcast %union.anon* %350 to i32*
  %352 = load i32, i32* %351, align 8, !tbaa !2456
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %355 = bitcast %union.anon* %354 to i32*
  %356 = load i32, i32* %355, align 8, !tbaa !2456
  %357 = zext i32 %356 to i64
  %358 = shl i64 %347, 32
  %359 = ashr exact i64 %358, 32
  %360 = shl nuw i64 %357, 32
  %361 = or i64 %360, %353
  %362 = sdiv i64 %361, %359
  %363 = shl i64 %362, 32
  %364 = ashr exact i64 %363, 32
  %365 = icmp eq i64 %362, %364
  br i1 %365, label %370, label %366

; <label>:366:                                    ; preds = %block_4013a2
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %368 = load i64, i64* %367, align 8, !tbaa !2451
  %369 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %368, %struct.Memory* %300) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:370:                                    ; preds = %block_4013a2
  %371 = srem i64 %361, %359
  %372 = getelementptr inbounds %union.anon, %union.anon* %350, i64 0, i32 0
  %373 = and i64 %362, 4294967295
  store i64 %373, i64* %372, align 8, !tbaa !2451
  %374 = getelementptr inbounds %union.anon, %union.anon* %354, i64 0, i32 0
  %375 = and i64 %371, 4294967295
  store i64 %375, i64* %374, align 8, !tbaa !2451
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %376, align 1, !tbaa !2428
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %377, align 1, !tbaa !2445
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %378, align 1, !tbaa !2446
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %379, align 1, !tbaa !2447
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %380, align 1, !tbaa !2448
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %381, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %366, %370
  %382 = phi %struct.Memory* [ %369, %366 ], [ %300, %370 ]
  %383 = load i32, i32* %EDX
  %384 = zext i32 %383 to i64
  %385 = load i64, i64* %PC
  %386 = add i64 %385, 3
  store i64 %386, i64* %PC
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %387, align 1, !tbaa !2428
  %388 = and i32 %383, 255
  %389 = call i32 @llvm.ctpop.i32(i32 %388) #16
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  %392 = xor i8 %391, 1
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %392, i8* %393, align 1, !tbaa !2445
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %394, align 1, !tbaa !2446
  %395 = icmp eq i32 %383, 0
  %396 = zext i1 %395 to i8
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %396, i8* %397, align 1, !tbaa !2447
  %398 = lshr i32 %383, 31
  %399 = trunc i32 %398 to i8
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %399, i8* %400, align 1, !tbaa !2448
  %401 = lshr i32 %383, 31
  %402 = xor i32 %398, %401
  %403 = add nuw nsw i32 %402, %401
  %404 = icmp eq i32 %403, 2
  %405 = zext i1 %404 to i8
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %405, i8* %406, align 1, !tbaa !2449
  %407 = load i64, i64* %PC
  %408 = add i64 %407, 34
  %409 = load i64, i64* %PC
  %410 = add i64 %409, 6
  %411 = load i64, i64* %PC
  %412 = add i64 %411, 6
  store i64 %412, i64* %PC
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %414 = load i8, i8* %413, align 1, !tbaa !2447
  %415 = icmp eq i8 %414, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %418 = select i1 %415, i64 %408, i64 %410
  store i64 %418, i64* %417, align 8, !tbaa !2451
  %419 = load i8, i8* %BRANCH_TAKEN
  %420 = icmp eq i8 %419, 1
  br i1 %420, label %block_401407, label %block_4013eb

block_40141a:                                     ; preds = %block_401396
  %421 = load i64, i64* %RSP
  %422 = load i64, i64* %PC
  %423 = add i64 %422, 4
  store i64 %423, i64* %PC
  %424 = add i64 32, %421
  store i64 %424, i64* %RSP, align 8, !tbaa !2451
  %425 = icmp ult i64 %424, %421
  %426 = icmp ult i64 %424, 32
  %427 = or i1 %425, %426
  %428 = zext i1 %427 to i8
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %428, i8* %429, align 1, !tbaa !2428
  %430 = trunc i64 %424 to i32
  %431 = and i32 %430, 255
  %432 = call i32 @llvm.ctpop.i32(i32 %431) #16
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %435, i8* %436, align 1, !tbaa !2445
  %437 = xor i64 32, %421
  %438 = xor i64 %437, %424
  %439 = lshr i64 %438, 4
  %440 = trunc i64 %439 to i8
  %441 = and i8 %440, 1
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %441, i8* %442, align 1, !tbaa !2446
  %443 = icmp eq i64 %424, 0
  %444 = zext i1 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %444, i8* %445, align 1, !tbaa !2447
  %446 = lshr i64 %424, 63
  %447 = trunc i64 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %447, i8* %448, align 1, !tbaa !2448
  %449 = lshr i64 %421, 63
  %450 = xor i64 %446, %449
  %451 = add nuw nsw i64 %450, %446
  %452 = icmp eq i64 %451, 2
  %453 = zext i1 %452 to i8
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %453, i8* %454, align 1, !tbaa !2449
  %455 = load i64, i64* %PC
  %456 = add i64 %455, 1
  store i64 %456, i64* %PC
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %458 = load i64, i64* %457, align 8, !tbaa !2451
  %459 = add i64 %458, 8
  %460 = inttoptr i64 %458 to i64*
  %461 = load i64, i64* %460
  store i64 %461, i64* %RBP, align 8, !tbaa !2451
  store i64 %459, i64* %457, align 8, !tbaa !2451
  %462 = load i64, i64* %PC
  %463 = add i64 %462, 1
  store i64 %463, i64* %PC
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %466 = load i64, i64* %465, align 8, !tbaa !2451
  %467 = inttoptr i64 %466 to i64*
  %468 = load i64, i64* %467
  store i64 %468, i64* %464, align 8, !tbaa !2451
  %469 = add i64 %466, 8
  store i64 %469, i64* %465, align 8, !tbaa !2451
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400690_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400690:
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
  %35 = tail call %struct.Memory* @sub_400620_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006a0_polybench_flush_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006a0:
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
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC
  store i64 8, i64* %RAX, align 8, !tbaa !2451
  %75 = load i32, i32* %EAX
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 2
  store i64 %78, i64* %PC
  %79 = and i64 %76, 4294967295
  store i64 %79, i64* %RSI, align 8, !tbaa !2451
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
  store i64 %91, i64* %RDI, align 8, !tbaa !2451
  %92 = load i64, i64* %PC
  %93 = sub i64 %92, 330
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 5
  %96 = load i64, i64* %PC
  %97 = add i64 %96, 5
  store i64 %97, i64* %PC
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %99 = load i64, i64* %98, align 8, !tbaa !2451
  %100 = add i64 %99, -8
  %101 = inttoptr i64 %100 to i64*
  store i64 %95, i64* %101
  store i64 %100, i64* %98, align 8, !tbaa !2451
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %93, i64* %102, align 8, !tbaa !2451
  %103 = load i64, i64* %PC
  %104 = call %struct.Memory* @ext_6020b8_calloc(%struct.State* %0, i64 %103, %struct.Memory* %2)
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
  store i32 %122, i32* %125, align 1, !tbaa !2456
  %126 = getelementptr inbounds i8, i8* %105, i64 4
  %127 = bitcast i8* %126 to i32*
  store i32 %124, i32* %127, align 1, !tbaa !2456
  %128 = trunc i64 %121 to i32
  %129 = getelementptr inbounds i8, i8* %105, i64 8
  %130 = bitcast i8* %129 to i32*
  store i32 %128, i32* %130, align 1, !tbaa !2456
  %131 = lshr i64 %121, 32
  %132 = trunc i64 %131 to i32
  %133 = getelementptr inbounds i8, i8* %105, i64 12
  %134 = bitcast i8* %133 to i32*
  store i32 %132, i32* %134, align 1, !tbaa !2456
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
  br label %block_4006d2

block_4006de:                                     ; preds = %block_4006d2
  %154 = load i64, i64* %RBP
  %155 = sub i64 %154, 20
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 4
  store i64 %157, i64* %PC
  %158 = inttoptr i64 %155 to i32*
  %159 = load i32, i32* %158
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %RCX, align 8, !tbaa !2451
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
  store i64 %204, i64* %RAX, align 8, !tbaa !2451
  %205 = load i64, i64* %RAX
  %206 = load i64, i64* %PC
  %207 = add i64 %206, 3
  store i64 %207, i64* %PC
  %208 = trunc i64 %205 to i32
  %209 = add i32 1, %208
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RAX, align 8, !tbaa !2451
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
  store i64 %249, i64* %252, align 8, !tbaa !2451
  br label %block_4006d2

block_400703:                                     ; preds = %block_4006d2
  %253 = load i64, i64* %RAX
  %254 = load i64, i64* %PC
  %255 = add i64 %254, 3
  store i64 %255, i64* %PC
  store i64 %253, i64* %RDI, align 8, !tbaa !2451
  %256 = load i64, i64* %PC
  %257 = sub i64 %256, 442
  %258 = load i64, i64* %PC
  %259 = add i64 %258, 5
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 5
  store i64 %261, i64* %PC
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %263 = load i64, i64* %262, align 8, !tbaa !2451
  %264 = add i64 %263, -8
  %265 = inttoptr i64 %264 to i64*
  store i64 %259, i64* %265
  store i64 %264, i64* %262, align 8, !tbaa !2451
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %257, i64* %266, align 8, !tbaa !2451
  %267 = load i64, i64* %PC
  %268 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %267, %struct.Memory* %MEMORY.0)
  %269 = load i64, i64* %RSP
  %270 = load i64, i64* %PC
  %271 = add i64 %270, 4
  store i64 %271, i64* %PC
  %272 = add i64 32, %269
  store i64 %272, i64* %RSP, align 8, !tbaa !2451
  %273 = icmp ult i64 %272, %269
  %274 = icmp ult i64 %272, 32
  %275 = or i1 %273, %274
  %276 = zext i1 %275 to i8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %276, i8* %277, align 1, !tbaa !2428
  %278 = trunc i64 %272 to i32
  %279 = and i32 %278, 255
  %280 = call i32 @llvm.ctpop.i32(i32 %279) #16
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %283, i8* %284, align 1, !tbaa !2445
  %285 = xor i64 32, %269
  %286 = xor i64 %285, %272
  %287 = lshr i64 %286, 4
  %288 = trunc i64 %287 to i8
  %289 = and i8 %288, 1
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %289, i8* %290, align 1, !tbaa !2446
  %291 = icmp eq i64 %272, 0
  %292 = zext i1 %291 to i8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %292, i8* %293, align 1, !tbaa !2447
  %294 = lshr i64 %272, 63
  %295 = trunc i64 %294 to i8
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %295, i8* %296, align 1, !tbaa !2448
  %297 = lshr i64 %269, 63
  %298 = xor i64 %294, %297
  %299 = add nuw nsw i64 %298, %294
  %300 = icmp eq i64 %299, 2
  %301 = zext i1 %300 to i8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %301, i8* %302, align 1, !tbaa !2449
  %303 = load i64, i64* %PC
  %304 = add i64 %303, 1
  store i64 %304, i64* %PC
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %306 = load i64, i64* %305, align 8, !tbaa !2451
  %307 = add i64 %306, 8
  %308 = inttoptr i64 %306 to i64*
  %309 = load i64, i64* %308
  store i64 %309, i64* %RBP, align 8, !tbaa !2451
  store i64 %307, i64* %305, align 8, !tbaa !2451
  %310 = load i64, i64* %PC
  %311 = add i64 %310, 1
  store i64 %311, i64* %PC
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %314 = load i64, i64* %313, align 8, !tbaa !2451
  %315 = inttoptr i64 %314 to i64*
  %316 = load i64, i64* %315
  store i64 %316, i64* %312, align 8, !tbaa !2451
  %317 = add i64 %314, 8
  store i64 %317, i64* %313, align 8, !tbaa !2451
  ret %struct.Memory* %268

block_4006d2:                                     ; preds = %block_4006de, %block_4006a0
  %MEMORY.0 = phi %struct.Memory* [ %104, %block_4006a0 ], [ %MEMORY.0, %block_4006de ]
  %318 = load i64, i64* %RBP
  %319 = sub i64 %318, 20
  %320 = load i64, i64* %PC
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC
  %322 = inttoptr i64 %319 to i32*
  %323 = load i32, i32* %322
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RAX, align 8, !tbaa !2451
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
  store i8 %335, i8* %336, align 1, !tbaa !2428
  %337 = and i32 %333, 255
  %338 = call i32 @llvm.ctpop.i32(i32 %337) #16
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %341, i8* %342, align 1, !tbaa !2445
  %343 = xor i32 %332, %325
  %344 = xor i32 %343, %333
  %345 = lshr i32 %344, 4
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %347, i8* %348, align 1, !tbaa !2446
  %349 = icmp eq i32 %333, 0
  %350 = zext i1 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %350, i8* %351, align 1, !tbaa !2447
  %352 = lshr i32 %333, 31
  %353 = trunc i32 %352 to i8
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %353, i8* %354, align 1, !tbaa !2448
  %355 = lshr i32 %325, 31
  %356 = lshr i32 %332, 31
  %357 = xor i32 %356, %355
  %358 = xor i32 %352, %355
  %359 = add nuw nsw i32 %358, %357
  %360 = icmp eq i32 %359, 2
  %361 = zext i1 %360 to i8
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %361, i8* %362, align 1, !tbaa !2449
  %363 = load i64, i64* %PC
  %364 = add i64 %363, 43
  %365 = load i64, i64* %PC
  %366 = add i64 %365, 6
  %367 = load i64, i64* %PC
  %368 = add i64 %367, 6
  store i64 %368, i64* %PC
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %370 = load i8, i8* %369, align 1, !tbaa !2448
  %371 = icmp ne i8 %370, 0
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %373 = load i8, i8* %372, align 1, !tbaa !2449
  %374 = icmp ne i8 %373, 0
  %375 = xor i1 %371, %374
  %376 = xor i1 %375, true
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %379 = select i1 %375, i64 %366, i64 %364
  store i64 %379, i64* %378, align 8, !tbaa !2451
  %380 = load i8, i8* %BRANCH_TAKEN
  %381 = icmp eq i8 %380, 1
  %382 = load i64, i64* %RBP
  %383 = sub i64 %382, 16
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 4
  store i64 %385, i64* %PC
  %386 = inttoptr i64 %383 to i64*
  %387 = load i64, i64* %386
  store i64 %387, i64* %RAX, align 8, !tbaa !2451
  br i1 %381, label %block_400703, label %block_4006de
}

; Function Attrs: noinline
define %struct.Memory* @sub_401494__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401494:
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
define %struct.Memory* @sub_400520__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %46 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_601ff0__got_type* @seg_601ff0__got to i64), i64 8) to i64*)
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
  br i1 %80, label %block_400532, label %block_400530

block_400530:                                     ; preds = %block_400520
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
  br label %block_400532

block_400532:                                     ; preds = %block_400530, %block_400520
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400520 ], [ %92, %block_400530 ]
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
define %struct.Memory* @sub_400d70_kernel_gemver(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400d70:
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EDI = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RAX = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RBX = bitcast %union.anon* %17 to i64*
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
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 13
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RSP = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 15
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %RBP = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.GPR, %struct.GPR* %33, i32 0, i32 17
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %34, i32 0, i32 0
  %R8 = bitcast %union.anon* %35 to i64*
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %37 = getelementptr inbounds %struct.GPR, %struct.GPR* %36, i32 0, i32 19
  %38 = getelementptr inbounds %struct.Reg, %struct.Reg* %37, i32 0, i32 0
  %R9 = bitcast %union.anon* %38 to i64*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 21
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %R10 = bitcast %union.anon* %41 to i64*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 23
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %R11 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R14 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %49 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %48, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %49 to %"class.std::bitset"*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %51 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %50, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %51 to %"class.std::bitset"*
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %53 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %53 to %union.vec128_t*
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %55 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %54, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %55 to %union.vec128_t*
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
  %66 = load i64, i64* %R14
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 2
  store i64 %68, i64* %PC
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %70 = load i64, i64* %69, align 8, !tbaa !2451
  %71 = add i64 %70, -8
  %72 = inttoptr i64 %71 to i64*
  store i64 %66, i64* %72
  store i64 %71, i64* %69, align 8, !tbaa !2451
  %73 = load i64, i64* %RBX
  %74 = load i64, i64* %PC
  %75 = add i64 %74, 1
  store i64 %75, i64* %PC
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %77 = load i64, i64* %76, align 8, !tbaa !2451
  %78 = add i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64 %73, i64* %79
  store i64 %78, i64* %76, align 8, !tbaa !2451
  %80 = load i64, i64* %RBP
  %81 = add i64 %80, 48
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC
  %84 = inttoptr i64 %81 to i64*
  %85 = load i64, i64* %84
  store i64 %85, i64* %RAX, align 8, !tbaa !2451
  %86 = load i64, i64* %RBP
  %87 = add i64 %86, 40
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC
  %90 = inttoptr i64 %87 to i64*
  %91 = load i64, i64* %90
  store i64 %91, i64* %R10, align 8, !tbaa !2451
  %92 = load i64, i64* %RBP
  %93 = add i64 %92, 32
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC
  %96 = inttoptr i64 %93 to i64*
  %97 = load i64, i64* %96
  store i64 %97, i64* %R11, align 8, !tbaa !2451
  %98 = load i64, i64* %RBP
  %99 = add i64 %98, 24
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 4
  store i64 %101, i64* %PC
  %102 = inttoptr i64 %99 to i64*
  %103 = load i64, i64* %102
  store i64 %103, i64* %RBX, align 8, !tbaa !2451
  %104 = load i64, i64* %RBP
  %105 = add i64 %104, 16
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %105 to i64*
  %109 = load i64, i64* %108
  store i64 %109, i64* %R14, align 8, !tbaa !2451
  %110 = load i64, i64* %RBP
  %111 = sub i64 %110, 20
  %112 = load i32, i32* %EDI
  %113 = zext i32 %112 to i64
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 3
  store i64 %115, i64* %PC
  %116 = inttoptr i64 %111 to i32*
  store i32 %112, i32* %116
  %117 = load i64, i64* %RBP
  %118 = sub i64 %117, 32
  %119 = bitcast %union.vec128_t* %XMM0 to i8*
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 5
  store i64 %121, i64* %PC
  %122 = bitcast i8* %119 to double*
  %123 = load double, double* %122, align 1
  %124 = inttoptr i64 %118 to double*
  store double %123, double* %124
  %125 = load i64, i64* %RBP
  %126 = sub i64 %125, 40
  %127 = bitcast %union.vec128_t* %XMM1 to i8*
  %128 = load i64, i64* %PC
  %129 = add i64 %128, 5
  store i64 %129, i64* %PC
  %130 = bitcast i8* %127 to double*
  %131 = load double, double* %130, align 1
  %132 = inttoptr i64 %126 to double*
  store double %131, double* %132
  %133 = load i64, i64* %RBP
  %134 = sub i64 %133, 48
  %135 = load i64, i64* %RSI
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 4
  store i64 %137, i64* %PC
  %138 = inttoptr i64 %134 to i64*
  store i64 %135, i64* %138
  %139 = load i64, i64* %RBP
  %140 = sub i64 %139, 56
  %141 = load i64, i64* %RDX
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 4
  store i64 %143, i64* %PC
  %144 = inttoptr i64 %140 to i64*
  store i64 %141, i64* %144
  %145 = load i64, i64* %RBP
  %146 = sub i64 %145, 64
  %147 = load i64, i64* %RCX
  %148 = load i64, i64* %PC
  %149 = add i64 %148, 4
  store i64 %149, i64* %PC
  %150 = inttoptr i64 %146 to i64*
  store i64 %147, i64* %150
  %151 = load i64, i64* %RBP
  %152 = sub i64 %151, 72
  %153 = load i64, i64* %R8
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 4
  store i64 %155, i64* %PC
  %156 = inttoptr i64 %152 to i64*
  store i64 %153, i64* %156
  %157 = load i64, i64* %RBP
  %158 = sub i64 %157, 80
  %159 = load i64, i64* %R9
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 4
  store i64 %161, i64* %PC
  %162 = inttoptr i64 %158 to i64*
  store i64 %159, i64* %162
  %163 = load i64, i64* %RBP
  %164 = sub i64 %163, 84
  %165 = load i64, i64* %PC
  %166 = add i64 %165, 7
  store i64 %166, i64* %PC
  %167 = inttoptr i64 %164 to i32*
  store i32 0, i32* %167
  %168 = load i64, i64* %RBP
  %169 = sub i64 %168, 96
  %170 = load i64, i64* %R14
  %171 = load i64, i64* %PC
  %172 = add i64 %171, 4
  store i64 %172, i64* %PC
  %173 = inttoptr i64 %169 to i64*
  store i64 %170, i64* %173
  %174 = load i64, i64* %RBP
  %175 = sub i64 %174, 104
  %176 = load i64, i64* %R10
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC
  %179 = inttoptr i64 %175 to i64*
  store i64 %176, i64* %179
  %180 = load i64, i64* %RBP
  %181 = sub i64 %180, 112
  %182 = load i64, i64* %R11
  %183 = load i64, i64* %PC
  %184 = add i64 %183, 4
  store i64 %184, i64* %PC
  %185 = inttoptr i64 %181 to i64*
  store i64 %182, i64* %185
  %186 = load i64, i64* %RBP
  %187 = sub i64 %186, 120
  %188 = load i64, i64* %RBX
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 4
  store i64 %190, i64* %PC
  %191 = inttoptr i64 %187 to i64*
  store i64 %188, i64* %191
  %192 = load i64, i64* %RBP
  %193 = sub i64 %192, 128
  %194 = load i64, i64* %RAX
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 4
  store i64 %196, i64* %PC
  %197 = inttoptr i64 %193 to i64*
  store i64 %194, i64* %197
  br label %block_400dc7

block_400f7d:                                     ; preds = %block_400f89, %block_400f76
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_400f76 ], [ %MEMORY.0, %block_400f89 ]
  %198 = load i64, i64* %RBP
  %199 = sub i64 %198, 88
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 3
  store i64 %201, i64* %PC
  %202 = inttoptr i64 %199 to i32*
  %203 = load i32, i32* %202
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %RAX, align 8, !tbaa !2451
  %205 = load i32, i32* %EAX
  %206 = zext i32 %205 to i64
  %207 = load i64, i64* %RBP
  %208 = sub i64 %207, 20
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 3
  store i64 %210, i64* %PC
  %211 = inttoptr i64 %208 to i32*
  %212 = load i32, i32* %211
  %213 = sub i32 %205, %212
  %214 = icmp ult i32 %205, %212
  %215 = zext i1 %214 to i8
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %215, i8* %216, align 1, !tbaa !2428
  %217 = and i32 %213, 255
  %218 = call i32 @llvm.ctpop.i32(i32 %217) #16
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %221, i8* %222, align 1, !tbaa !2445
  %223 = xor i32 %212, %205
  %224 = xor i32 %223, %213
  %225 = lshr i32 %224, 4
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %227, i8* %228, align 1, !tbaa !2446
  %229 = icmp eq i32 %213, 0
  %230 = zext i1 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %230, i8* %231, align 1, !tbaa !2447
  %232 = lshr i32 %213, 31
  %233 = trunc i32 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %233, i8* %234, align 1, !tbaa !2448
  %235 = lshr i32 %205, 31
  %236 = lshr i32 %212, 31
  %237 = xor i32 %236, %235
  %238 = xor i32 %232, %235
  %239 = add nuw nsw i32 %238, %237
  %240 = icmp eq i32 %239, 2
  %241 = zext i1 %240 to i8
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %241, i8* %242, align 1, !tbaa !2449
  %243 = load i64, i64* %PC
  %244 = add i64 %243, 95
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 6
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 6
  store i64 %248, i64* %PC
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %250 = load i8, i8* %249, align 1, !tbaa !2448
  %251 = icmp ne i8 %250, 0
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %253 = load i8, i8* %252, align 1, !tbaa !2449
  %254 = icmp ne i8 %253, 0
  %255 = xor i1 %251, %254
  %256 = xor i1 %255, true
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %259 = select i1 %255, i64 %246, i64 %244
  store i64 %259, i64* %258, align 8, !tbaa !2451
  %260 = load i8, i8* %BRANCH_TAKEN
  %261 = icmp eq i8 %260, 1
  br i1 %261, label %block_400fe2, label %block_400f89

block_400e79:                                     ; preds = %block_400dc7
  %262 = sub i64 %531, 84
  %263 = load i64, i64* %PC
  %264 = add i64 %263, 7
  store i64 %264, i64* %PC
  %265 = inttoptr i64 %262 to i32*
  store i32 0, i32* %265
  br label %block_400e80

block_400f76:                                     ; preds = %block_400f6a
  %266 = load i64, i64* %RBP
  %267 = sub i64 %266, 88
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 7
  store i64 %269, i64* %PC
  %270 = inttoptr i64 %267 to i32*
  store i32 0, i32* %270
  br label %block_400f7d

block_400f6a:                                     ; preds = %block_400fe2, %block_400f63
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.5, %block_400f63 ], [ %MEMORY.0, %block_400fe2 ]
  %271 = load i64, i64* %RBP
  %272 = sub i64 %271, 84
  %273 = load i64, i64* %PC
  %274 = add i64 %273, 3
  store i64 %274, i64* %PC
  %275 = inttoptr i64 %272 to i32*
  %276 = load i32, i32* %275
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %RAX, align 8, !tbaa !2451
  %278 = load i32, i32* %EAX
  %279 = zext i32 %278 to i64
  %280 = load i64, i64* %RBP
  %281 = sub i64 %280, 20
  %282 = load i64, i64* %PC
  %283 = add i64 %282, 3
  store i64 %283, i64* %PC
  %284 = inttoptr i64 %281 to i32*
  %285 = load i32, i32* %284
  %286 = sub i32 %278, %285
  %287 = icmp ult i32 %278, %285
  %288 = zext i1 %287 to i8
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %288, i8* %289, align 1, !tbaa !2428
  %290 = and i32 %286, 255
  %291 = call i32 @llvm.ctpop.i32(i32 %290) #16
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = xor i8 %293, 1
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %294, i8* %295, align 1, !tbaa !2445
  %296 = xor i32 %285, %278
  %297 = xor i32 %296, %286
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %300, i8* %301, align 1, !tbaa !2446
  %302 = icmp eq i32 %286, 0
  %303 = zext i1 %302 to i8
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %303, i8* %304, align 1, !tbaa !2447
  %305 = lshr i32 %286, 31
  %306 = trunc i32 %305 to i8
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %306, i8* %307, align 1, !tbaa !2448
  %308 = lshr i32 %278, 31
  %309 = lshr i32 %285, 31
  %310 = xor i32 %309, %308
  %311 = xor i32 %305, %308
  %312 = add nuw nsw i32 %311, %310
  %313 = icmp eq i32 %312, 2
  %314 = zext i1 %313 to i8
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %314, i8* %315, align 1, !tbaa !2449
  %316 = load i64, i64* %PC
  %317 = add i64 %316, 133
  %318 = load i64, i64* %PC
  %319 = add i64 %318, 6
  %320 = load i64, i64* %PC
  %321 = add i64 %320, 6
  store i64 %321, i64* %PC
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %323 = load i8, i8* %322, align 1, !tbaa !2448
  %324 = icmp ne i8 %323, 0
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %326 = load i8, i8* %325, align 1, !tbaa !2449
  %327 = icmp ne i8 %326, 0
  %328 = xor i1 %324, %327
  %329 = xor i1 %328, true
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %332 = select i1 %328, i64 %319, i64 %317
  store i64 %332, i64* %331, align 8, !tbaa !2451
  %333 = load i8, i8* %BRANCH_TAKEN
  %334 = icmp eq i8 %333, 1
  br i1 %334, label %block_400ff5, label %block_400f76

block_400e66:                                     ; preds = %block_400dda
  %335 = load i64, i64* %PC
  %336 = add i64 %335, 5
  %337 = load i64, i64* %PC
  %338 = add i64 %337, 5
  store i64 %338, i64* %PC
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %336, i64* %339, align 8, !tbaa !2451
  %340 = load i64, i64* %RBP
  %341 = sub i64 %340, 84
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
  %384 = sub i64 %383, 84
  %385 = load i32, i32* %EAX
  %386 = zext i32 %385 to i64
  %387 = load i64, i64* %PC
  %388 = add i64 %387, 3
  store i64 %388, i64* %PC
  %389 = inttoptr i64 %384 to i32*
  store i32 %385, i32* %389
  %390 = load i64, i64* %PC
  %391 = sub i64 %390, 173
  %392 = load i64, i64* %PC
  %393 = add i64 %392, 5
  store i64 %393, i64* %PC
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %391, i64* %394, align 8, !tbaa !2451
  br label %block_400dc7

block_400f63:                                     ; preds = %block_400f22
  %395 = sub i64 %978, 84
  %396 = load i64, i64* %PC
  %397 = add i64 %396, 7
  store i64 %397, i64* %PC
  %398 = inttoptr i64 %395 to i32*
  store i32 0, i32* %398
  br label %block_400f6a

block_400dda:                                     ; preds = %block_400de6, %block_400dd3
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.3, %block_400dd3 ], [ %MEMORY.2, %block_400de6 ]
  %399 = load i64, i64* %RBP
  %400 = sub i64 %399, 88
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 3
  store i64 %402, i64* %PC
  %403 = inttoptr i64 %400 to i32*
  %404 = load i32, i32* %403
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RAX, align 8, !tbaa !2451
  %406 = load i32, i32* %EAX
  %407 = zext i32 %406 to i64
  %408 = load i64, i64* %RBP
  %409 = sub i64 %408, 20
  %410 = load i64, i64* %PC
  %411 = add i64 %410, 3
  store i64 %411, i64* %PC
  %412 = inttoptr i64 %409 to i32*
  %413 = load i32, i32* %412
  %414 = sub i32 %406, %413
  %415 = icmp ult i32 %406, %413
  %416 = zext i1 %415 to i8
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %416, i8* %417, align 1, !tbaa !2428
  %418 = and i32 %414, 255
  %419 = call i32 @llvm.ctpop.i32(i32 %418) #16
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = xor i8 %421, 1
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %422, i8* %423, align 1, !tbaa !2445
  %424 = xor i32 %413, %406
  %425 = xor i32 %424, %414
  %426 = lshr i32 %425, 4
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %428, i8* %429, align 1, !tbaa !2446
  %430 = icmp eq i32 %414, 0
  %431 = zext i1 %430 to i8
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %431, i8* %432, align 1, !tbaa !2447
  %433 = lshr i32 %414, 31
  %434 = trunc i32 %433 to i8
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %434, i8* %435, align 1, !tbaa !2448
  %436 = lshr i32 %406, 31
  %437 = lshr i32 %413, 31
  %438 = xor i32 %437, %436
  %439 = xor i32 %433, %436
  %440 = add nuw nsw i32 %439, %438
  %441 = icmp eq i32 %440, 2
  %442 = zext i1 %441 to i8
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %442, i8* %443, align 1, !tbaa !2449
  %444 = load i64, i64* %PC
  %445 = add i64 %444, 134
  %446 = load i64, i64* %PC
  %447 = add i64 %446, 6
  %448 = load i64, i64* %PC
  %449 = add i64 %448, 6
  store i64 %449, i64* %PC
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %451 = load i8, i8* %450, align 1, !tbaa !2448
  %452 = icmp ne i8 %451, 0
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %454 = load i8, i8* %453, align 1, !tbaa !2449
  %455 = icmp ne i8 %454, 0
  %456 = xor i1 %452, %455
  %457 = xor i1 %456, true
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %460 = select i1 %456, i64 %447, i64 %445
  store i64 %460, i64* %459, align 8, !tbaa !2451
  %461 = load i8, i8* %BRANCH_TAKEN
  %462 = icmp eq i8 %461, 1
  br i1 %462, label %block_400e66, label %block_400de6

block_400dd3:                                     ; preds = %block_400dc7
  %463 = sub i64 %531, 88
  %464 = load i64, i64* %PC
  %465 = add i64 %464, 7
  store i64 %465, i64* %PC
  %466 = inttoptr i64 %463 to i32*
  store i32 0, i32* %466
  br label %block_400dda

block_400dc7:                                     ; preds = %block_400e66, %block_400d70
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_400d70 ], [ %MEMORY.2, %block_400e66 ]
  %467 = load i64, i64* %RBP
  %468 = sub i64 %467, 84
  %469 = load i64, i64* %PC
  %470 = add i64 %469, 3
  store i64 %470, i64* %PC
  %471 = inttoptr i64 %468 to i32*
  %472 = load i32, i32* %471
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RAX, align 8, !tbaa !2451
  %474 = load i32, i32* %EAX
  %475 = zext i32 %474 to i64
  %476 = load i64, i64* %RBP
  %477 = sub i64 %476, 20
  %478 = load i64, i64* %PC
  %479 = add i64 %478, 3
  store i64 %479, i64* %PC
  %480 = inttoptr i64 %477 to i32*
  %481 = load i32, i32* %480
  %482 = sub i32 %474, %481
  %483 = icmp ult i32 %474, %481
  %484 = zext i1 %483 to i8
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %484, i8* %485, align 1, !tbaa !2428
  %486 = and i32 %482, 255
  %487 = call i32 @llvm.ctpop.i32(i32 %486) #16
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %490, i8* %491, align 1, !tbaa !2445
  %492 = xor i32 %481, %474
  %493 = xor i32 %492, %482
  %494 = lshr i32 %493, 4
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %496, i8* %497, align 1, !tbaa !2446
  %498 = icmp eq i32 %482, 0
  %499 = zext i1 %498 to i8
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %499, i8* %500, align 1, !tbaa !2447
  %501 = lshr i32 %482, 31
  %502 = trunc i32 %501 to i8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %502, i8* %503, align 1, !tbaa !2448
  %504 = lshr i32 %474, 31
  %505 = lshr i32 %481, 31
  %506 = xor i32 %505, %504
  %507 = xor i32 %501, %504
  %508 = add nuw nsw i32 %507, %506
  %509 = icmp eq i32 %508, 2
  %510 = zext i1 %509 to i8
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %510, i8* %511, align 1, !tbaa !2449
  %512 = load i64, i64* %PC
  %513 = add i64 %512, 172
  %514 = load i64, i64* %PC
  %515 = add i64 %514, 6
  %516 = load i64, i64* %PC
  %517 = add i64 %516, 6
  store i64 %517, i64* %PC
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %519 = load i8, i8* %518, align 1, !tbaa !2448
  %520 = icmp ne i8 %519, 0
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %522 = load i8, i8* %521, align 1, !tbaa !2449
  %523 = icmp ne i8 %522, 0
  %524 = xor i1 %520, %523
  %525 = xor i1 %524, true
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %528 = select i1 %524, i64 %515, i64 %513
  store i64 %528, i64* %527, align 8, !tbaa !2451
  %529 = load i8, i8* %BRANCH_TAKEN
  %530 = icmp eq i8 %529, 1
  %531 = load i64, i64* %RBP
  br i1 %530, label %block_400e79, label %block_400dd3

block_400eaf:                                     ; preds = %block_400ea3
  %532 = load i64, i64* %RBP
  %533 = add i64 %532, 32
  %534 = load i64, i64* %PC
  %535 = add i64 %534, 4
  store i64 %535, i64* %PC
  %536 = inttoptr i64 %533 to i64*
  %537 = load i64, i64* %536
  store i64 %537, i64* %RAX, align 8, !tbaa !2451
  %538 = load i64, i64* %RBP
  %539 = sub i64 %538, 84
  %540 = load i64, i64* %PC
  %541 = add i64 %540, 4
  store i64 %541, i64* %PC
  %542 = inttoptr i64 %539 to i32*
  %543 = load i32, i32* %542
  %544 = sext i32 %543 to i64
  store i64 %544, i64* %RCX, align 8, !tbaa !2451
  %545 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %546 = load i64, i64* %RAX
  %547 = load i64, i64* %RCX
  %548 = mul i64 %547, 8
  %549 = add i64 %548, %546
  %550 = load i64, i64* %PC
  %551 = add i64 %550, 5
  store i64 %551, i64* %PC
  %552 = inttoptr i64 %549 to double*
  %553 = load double, double* %552
  %554 = bitcast i8* %545 to double*
  store double %553, double* %554, align 1, !tbaa !2452
  %555 = getelementptr inbounds i8, i8* %545, i64 8
  %556 = bitcast i8* %555 to double*
  store double 0.000000e+00, double* %556, align 1, !tbaa !2452
  %557 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %558 = load i64, i64* %RBP
  %559 = sub i64 %558, 40
  %560 = load i64, i64* %PC
  %561 = add i64 %560, 5
  store i64 %561, i64* %PC
  %562 = inttoptr i64 %559 to double*
  %563 = load double, double* %562
  %564 = bitcast i8* %557 to double*
  store double %563, double* %564, align 1, !tbaa !2452
  %565 = getelementptr inbounds i8, i8* %557, i64 8
  %566 = bitcast i8* %565 to double*
  store double 0.000000e+00, double* %566, align 1, !tbaa !2452
  %567 = load i64, i64* %RBP
  %568 = sub i64 %567, 56
  %569 = load i64, i64* %PC
  %570 = add i64 %569, 4
  store i64 %570, i64* %PC
  %571 = inttoptr i64 %568 to i64*
  %572 = load i64, i64* %571
  store i64 %572, i64* %RAX, align 8, !tbaa !2451
  %573 = load i64, i64* %RBP
  %574 = sub i64 %573, 88
  %575 = load i64, i64* %PC
  %576 = add i64 %575, 4
  store i64 %576, i64* %PC
  %577 = inttoptr i64 %574 to i32*
  %578 = load i32, i32* %577
  %579 = sext i32 %578 to i64
  store i64 %579, i64* %RCX, align 8, !tbaa !2451
  %580 = load i64, i64* %RCX
  %581 = load i64, i64* %PC
  %582 = add i64 %581, 7
  store i64 %582, i64* %PC
  %583 = sext i64 %580 to i128
  %584 = and i128 %583, -18446744073709551616
  %585 = zext i64 %580 to i128
  %586 = or i128 %584, %585
  %587 = mul nsw i128 32000, %586
  %588 = trunc i128 %587 to i64
  store i64 %588, i64* %RCX, align 8, !tbaa !2451
  %589 = sext i64 %588 to i128
  %590 = icmp ne i128 %589, %587
  %591 = zext i1 %590 to i8
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %591, i8* %592, align 1, !tbaa !2428
  %593 = trunc i128 %587 to i32
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %594, align 1, !tbaa !2445
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %595, align 1, !tbaa !2446
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %596, align 1, !tbaa !2447
  %597 = lshr i64 %588, 63
  %598 = trunc i64 %597 to i8
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %598, i8* %599, align 1, !tbaa !2448
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %591, i8* %600, align 1, !tbaa !2449
  %601 = load i64, i64* %RAX
  %602 = load i64, i64* %RCX
  %603 = load i64, i64* %PC
  %604 = add i64 %603, 3
  store i64 %604, i64* %PC
  %605 = add i64 %602, %601
  store i64 %605, i64* %RAX, align 8, !tbaa !2451
  %606 = icmp ult i64 %605, %601
  %607 = icmp ult i64 %605, %602
  %608 = or i1 %606, %607
  %609 = zext i1 %608 to i8
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %609, i8* %610, align 1, !tbaa !2428
  %611 = trunc i64 %605 to i32
  %612 = and i32 %611, 255
  %613 = call i32 @llvm.ctpop.i32(i32 %612) #16
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %616, i8* %617, align 1, !tbaa !2445
  %618 = xor i64 %602, %601
  %619 = xor i64 %618, %605
  %620 = lshr i64 %619, 4
  %621 = trunc i64 %620 to i8
  %622 = and i8 %621, 1
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %622, i8* %623, align 1, !tbaa !2446
  %624 = icmp eq i64 %605, 0
  %625 = zext i1 %624 to i8
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %625, i8* %626, align 1, !tbaa !2447
  %627 = lshr i64 %605, 63
  %628 = trunc i64 %627 to i8
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %628, i8* %629, align 1, !tbaa !2448
  %630 = lshr i64 %601, 63
  %631 = lshr i64 %602, 63
  %632 = xor i64 %627, %630
  %633 = xor i64 %627, %631
  %634 = add nuw nsw i64 %632, %633
  %635 = icmp eq i64 %634, 2
  %636 = zext i1 %635 to i8
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %636, i8* %637, align 1, !tbaa !2449
  %638 = load i64, i64* %RBP
  %639 = sub i64 %638, 84
  %640 = load i64, i64* %PC
  %641 = add i64 %640, 4
  store i64 %641, i64* %PC
  %642 = inttoptr i64 %639 to i32*
  %643 = load i32, i32* %642
  %644 = sext i32 %643 to i64
  store i64 %644, i64* %RCX, align 8, !tbaa !2451
  %645 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %646 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %647 = load i64, i64* %RAX
  %648 = load i64, i64* %RCX
  %649 = mul i64 %648, 8
  %650 = add i64 %649, %647
  %651 = load i64, i64* %PC
  %652 = add i64 %651, 5
  store i64 %652, i64* %PC
  %653 = bitcast i8* %646 to double*
  %654 = load double, double* %653, align 1
  %655 = getelementptr inbounds i8, i8* %646, i64 8
  %656 = bitcast i8* %655 to i64*
  %657 = load i64, i64* %656, align 1
  %658 = inttoptr i64 %650 to double*
  %659 = load double, double* %658
  %660 = fmul double %654, %659
  %661 = bitcast i8* %645 to double*
  store double %660, double* %661, align 1, !tbaa !2452
  %662 = getelementptr inbounds i8, i8* %645, i64 8
  %663 = bitcast i8* %662 to i64*
  store i64 %657, i64* %663, align 1, !tbaa !2452
  %664 = load i64, i64* %RBP
  %665 = add i64 %664, 40
  %666 = load i64, i64* %PC
  %667 = add i64 %666, 4
  store i64 %667, i64* %PC
  %668 = inttoptr i64 %665 to i64*
  %669 = load i64, i64* %668
  store i64 %669, i64* %RAX, align 8, !tbaa !2451
  %670 = load i64, i64* %RBP
  %671 = sub i64 %670, 88
  %672 = load i64, i64* %PC
  %673 = add i64 %672, 4
  store i64 %673, i64* %PC
  %674 = inttoptr i64 %671 to i32*
  %675 = load i32, i32* %674
  %676 = sext i32 %675 to i64
  store i64 %676, i64* %RCX, align 8, !tbaa !2451
  %677 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %678 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %679 = load i64, i64* %RAX
  %680 = load i64, i64* %RCX
  %681 = mul i64 %680, 8
  %682 = add i64 %681, %679
  %683 = load i64, i64* %PC
  %684 = add i64 %683, 5
  store i64 %684, i64* %PC
  %685 = bitcast i8* %678 to double*
  %686 = load double, double* %685, align 1
  %687 = getelementptr inbounds i8, i8* %678, i64 8
  %688 = bitcast i8* %687 to i64*
  %689 = load i64, i64* %688, align 1
  %690 = inttoptr i64 %682 to double*
  %691 = load double, double* %690
  %692 = fmul double %686, %691
  %693 = bitcast i8* %677 to double*
  store double %692, double* %693, align 1, !tbaa !2452
  %694 = getelementptr inbounds i8, i8* %677, i64 8
  %695 = bitcast i8* %694 to i64*
  store i64 %689, i64* %695, align 1, !tbaa !2452
  %696 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %697 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %698 = bitcast %union.vec128_t* %XMM1 to i8*
  %699 = load i64, i64* %PC
  %700 = add i64 %699, 4
  store i64 %700, i64* %PC
  %701 = bitcast i8* %697 to double*
  %702 = load double, double* %701, align 1
  %703 = getelementptr inbounds i8, i8* %697, i64 8
  %704 = bitcast i8* %703 to i64*
  %705 = load i64, i64* %704, align 1
  %706 = bitcast i8* %698 to double*
  %707 = load double, double* %706, align 1
  %708 = fadd double %702, %707
  %709 = bitcast i8* %696 to double*
  store double %708, double* %709, align 1, !tbaa !2452
  %710 = getelementptr inbounds i8, i8* %696, i64 8
  %711 = bitcast i8* %710 to i64*
  store i64 %705, i64* %711, align 1, !tbaa !2452
  %712 = load i64, i64* %RBP
  %713 = add i64 %712, 32
  %714 = load i64, i64* %PC
  %715 = add i64 %714, 4
  store i64 %715, i64* %PC
  %716 = inttoptr i64 %713 to i64*
  %717 = load i64, i64* %716
  store i64 %717, i64* %RAX, align 8, !tbaa !2451
  %718 = load i64, i64* %RBP
  %719 = sub i64 %718, 84
  %720 = load i64, i64* %PC
  %721 = add i64 %720, 4
  store i64 %721, i64* %PC
  %722 = inttoptr i64 %719 to i32*
  %723 = load i32, i32* %722
  %724 = sext i32 %723 to i64
  store i64 %724, i64* %RCX, align 8, !tbaa !2451
  %725 = load i64, i64* %RAX
  %726 = load i64, i64* %RCX
  %727 = mul i64 %726, 8
  %728 = add i64 %727, %725
  %729 = bitcast %union.vec128_t* %XMM0 to i8*
  %730 = load i64, i64* %PC
  %731 = add i64 %730, 5
  store i64 %731, i64* %PC
  %732 = bitcast i8* %729 to double*
  %733 = load double, double* %732, align 1
  %734 = inttoptr i64 %728 to double*
  store double %733, double* %734
  %735 = load i64, i64* %RBP
  %736 = sub i64 %735, 88
  %737 = load i64, i64* %PC
  %738 = add i64 %737, 3
  store i64 %738, i64* %PC
  %739 = inttoptr i64 %736 to i32*
  %740 = load i32, i32* %739
  %741 = zext i32 %740 to i64
  store i64 %741, i64* %RAX, align 8, !tbaa !2451
  %742 = load i64, i64* %RAX
  %743 = load i64, i64* %PC
  %744 = add i64 %743, 3
  store i64 %744, i64* %PC
  %745 = trunc i64 %742 to i32
  %746 = add i32 1, %745
  %747 = zext i32 %746 to i64
  store i64 %747, i64* %RAX, align 8, !tbaa !2451
  %748 = icmp ult i32 %746, %745
  %749 = icmp ult i32 %746, 1
  %750 = or i1 %748, %749
  %751 = zext i1 %750 to i8
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %751, i8* %752, align 1, !tbaa !2428
  %753 = and i32 %746, 255
  %754 = call i32 @llvm.ctpop.i32(i32 %753) #16
  %755 = trunc i32 %754 to i8
  %756 = and i8 %755, 1
  %757 = xor i8 %756, 1
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %757, i8* %758, align 1, !tbaa !2445
  %759 = xor i64 1, %742
  %760 = trunc i64 %759 to i32
  %761 = xor i32 %760, %746
  %762 = lshr i32 %761, 4
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %764, i8* %765, align 1, !tbaa !2446
  %766 = icmp eq i32 %746, 0
  %767 = zext i1 %766 to i8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %767, i8* %768, align 1, !tbaa !2447
  %769 = lshr i32 %746, 31
  %770 = trunc i32 %769 to i8
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %770, i8* %771, align 1, !tbaa !2448
  %772 = lshr i32 %745, 31
  %773 = xor i32 %769, %772
  %774 = add nuw nsw i32 %773, %769
  %775 = icmp eq i32 %774, 2
  %776 = zext i1 %775 to i8
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %776, i8* %777, align 1, !tbaa !2449
  %778 = load i64, i64* %RBP
  %779 = sub i64 %778, 88
  %780 = load i32, i32* %EAX
  %781 = zext i32 %780 to i64
  %782 = load i64, i64* %PC
  %783 = add i64 %782, 3
  store i64 %783, i64* %PC
  %784 = inttoptr i64 %779 to i32*
  store i32 %780, i32* %784
  %785 = load i64, i64* %PC
  %786 = sub i64 %785, 96
  %787 = load i64, i64* %PC
  %788 = add i64 %787, 5
  store i64 %788, i64* %PC
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %786, i64* %789, align 8, !tbaa !2451
  br label %block_400ea3

block_400fe2:                                     ; preds = %block_400f7d
  %790 = load i64, i64* %PC
  %791 = add i64 %790, 5
  %792 = load i64, i64* %PC
  %793 = add i64 %792, 5
  store i64 %793, i64* %PC
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %791, i64* %794, align 8, !tbaa !2451
  %795 = load i64, i64* %RBP
  %796 = sub i64 %795, 84
  %797 = load i64, i64* %PC
  %798 = add i64 %797, 3
  store i64 %798, i64* %PC
  %799 = inttoptr i64 %796 to i32*
  %800 = load i32, i32* %799
  %801 = zext i32 %800 to i64
  store i64 %801, i64* %RAX, align 8, !tbaa !2451
  %802 = load i64, i64* %RAX
  %803 = load i64, i64* %PC
  %804 = add i64 %803, 3
  store i64 %804, i64* %PC
  %805 = trunc i64 %802 to i32
  %806 = add i32 1, %805
  %807 = zext i32 %806 to i64
  store i64 %807, i64* %RAX, align 8, !tbaa !2451
  %808 = icmp ult i32 %806, %805
  %809 = icmp ult i32 %806, 1
  %810 = or i1 %808, %809
  %811 = zext i1 %810 to i8
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %811, i8* %812, align 1, !tbaa !2428
  %813 = and i32 %806, 255
  %814 = call i32 @llvm.ctpop.i32(i32 %813) #16
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  %817 = xor i8 %816, 1
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %817, i8* %818, align 1, !tbaa !2445
  %819 = xor i64 1, %802
  %820 = trunc i64 %819 to i32
  %821 = xor i32 %820, %806
  %822 = lshr i32 %821, 4
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %824, i8* %825, align 1, !tbaa !2446
  %826 = icmp eq i32 %806, 0
  %827 = zext i1 %826 to i8
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %827, i8* %828, align 1, !tbaa !2447
  %829 = lshr i32 %806, 31
  %830 = trunc i32 %829 to i8
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %830, i8* %831, align 1, !tbaa !2448
  %832 = lshr i32 %805, 31
  %833 = xor i32 %829, %832
  %834 = add nuw nsw i32 %833, %829
  %835 = icmp eq i32 %834, 2
  %836 = zext i1 %835 to i8
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %836, i8* %837, align 1, !tbaa !2449
  %838 = load i64, i64* %RBP
  %839 = sub i64 %838, 84
  %840 = load i32, i32* %EAX
  %841 = zext i32 %840 to i64
  %842 = load i64, i64* %PC
  %843 = add i64 %842, 3
  store i64 %843, i64* %PC
  %844 = inttoptr i64 %839 to i32*
  store i32 %840, i32* %844
  %845 = load i64, i64* %PC
  %846 = sub i64 %845, 134
  %847 = load i64, i64* %PC
  %848 = add i64 %847, 5
  store i64 %848, i64* %PC
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %846, i64* %849, align 8, !tbaa !2451
  br label %block_400f6a

block_400ea3:                                     ; preds = %block_400e8c, %block_400eaf
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.6, %block_400e8c ], [ %MEMORY.4, %block_400eaf ]
  %850 = load i64, i64* %RBP
  %851 = sub i64 %850, 88
  %852 = load i64, i64* %PC
  %853 = add i64 %852, 3
  store i64 %853, i64* %PC
  %854 = inttoptr i64 %851 to i32*
  %855 = load i32, i32* %854
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RAX, align 8, !tbaa !2451
  %857 = load i32, i32* %EAX
  %858 = zext i32 %857 to i64
  %859 = load i64, i64* %RBP
  %860 = sub i64 %859, 20
  %861 = load i64, i64* %PC
  %862 = add i64 %861, 3
  store i64 %862, i64* %PC
  %863 = inttoptr i64 %860 to i32*
  %864 = load i32, i32* %863
  %865 = sub i32 %857, %864
  %866 = icmp ult i32 %857, %864
  %867 = zext i1 %866 to i8
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %867, i8* %868, align 1, !tbaa !2428
  %869 = and i32 %865, 255
  %870 = call i32 @llvm.ctpop.i32(i32 %869) #16
  %871 = trunc i32 %870 to i8
  %872 = and i8 %871, 1
  %873 = xor i8 %872, 1
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %873, i8* %874, align 1, !tbaa !2445
  %875 = xor i32 %864, %857
  %876 = xor i32 %875, %865
  %877 = lshr i32 %876, 4
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %879, i8* %880, align 1, !tbaa !2446
  %881 = icmp eq i32 %865, 0
  %882 = zext i1 %881 to i8
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %882, i8* %883, align 1, !tbaa !2447
  %884 = lshr i32 %865, 31
  %885 = trunc i32 %884 to i8
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %885, i8* %886, align 1, !tbaa !2448
  %887 = lshr i32 %857, 31
  %888 = lshr i32 %864, 31
  %889 = xor i32 %888, %887
  %890 = xor i32 %884, %887
  %891 = add nuw nsw i32 %890, %889
  %892 = icmp eq i32 %891, 2
  %893 = zext i1 %892 to i8
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %893, i8* %894, align 1, !tbaa !2449
  %895 = load i64, i64* %PC
  %896 = add i64 %895, 95
  %897 = load i64, i64* %PC
  %898 = add i64 %897, 6
  %899 = load i64, i64* %PC
  %900 = add i64 %899, 6
  store i64 %900, i64* %PC
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %902 = load i8, i8* %901, align 1, !tbaa !2448
  %903 = icmp ne i8 %902, 0
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %905 = load i8, i8* %904, align 1, !tbaa !2449
  %906 = icmp ne i8 %905, 0
  %907 = xor i1 %903, %906
  %908 = xor i1 %907, true
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %911 = select i1 %907, i64 %898, i64 %896
  store i64 %911, i64* %910, align 8, !tbaa !2451
  %912 = load i8, i8* %BRANCH_TAKEN
  %913 = icmp eq i8 %912, 1
  br i1 %913, label %block_400f08, label %block_400eaf

block_400f22:                                     ; preds = %block_400f2e, %block_400f1b
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.6, %block_400f1b ], [ %MEMORY.5, %block_400f2e ]
  %914 = load i64, i64* %RBP
  %915 = sub i64 %914, 84
  %916 = load i64, i64* %PC
  %917 = add i64 %916, 3
  store i64 %917, i64* %PC
  %918 = inttoptr i64 %915 to i32*
  %919 = load i32, i32* %918
  %920 = zext i32 %919 to i64
  store i64 %920, i64* %RAX, align 8, !tbaa !2451
  %921 = load i32, i32* %EAX
  %922 = zext i32 %921 to i64
  %923 = load i64, i64* %RBP
  %924 = sub i64 %923, 20
  %925 = load i64, i64* %PC
  %926 = add i64 %925, 3
  store i64 %926, i64* %PC
  %927 = inttoptr i64 %924 to i32*
  %928 = load i32, i32* %927
  %929 = sub i32 %921, %928
  %930 = icmp ult i32 %921, %928
  %931 = zext i1 %930 to i8
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %931, i8* %932, align 1, !tbaa !2428
  %933 = and i32 %929, 255
  %934 = call i32 @llvm.ctpop.i32(i32 %933) #16
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  %937 = xor i8 %936, 1
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %937, i8* %938, align 1, !tbaa !2445
  %939 = xor i32 %928, %921
  %940 = xor i32 %939, %929
  %941 = lshr i32 %940, 4
  %942 = trunc i32 %941 to i8
  %943 = and i8 %942, 1
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %943, i8* %944, align 1, !tbaa !2446
  %945 = icmp eq i32 %929, 0
  %946 = zext i1 %945 to i8
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %946, i8* %947, align 1, !tbaa !2447
  %948 = lshr i32 %929, 31
  %949 = trunc i32 %948 to i8
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %949, i8* %950, align 1, !tbaa !2448
  %951 = lshr i32 %921, 31
  %952 = lshr i32 %928, 31
  %953 = xor i32 %952, %951
  %954 = xor i32 %948, %951
  %955 = add nuw nsw i32 %954, %953
  %956 = icmp eq i32 %955, 2
  %957 = zext i1 %956 to i8
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %957, i8* %958, align 1, !tbaa !2449
  %959 = load i64, i64* %PC
  %960 = add i64 %959, 59
  %961 = load i64, i64* %PC
  %962 = add i64 %961, 6
  %963 = load i64, i64* %PC
  %964 = add i64 %963, 6
  store i64 %964, i64* %PC
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %966 = load i8, i8* %965, align 1, !tbaa !2448
  %967 = icmp ne i8 %966, 0
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %969 = load i8, i8* %968, align 1, !tbaa !2449
  %970 = icmp ne i8 %969, 0
  %971 = xor i1 %967, %970
  %972 = xor i1 %971, true
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %975 = select i1 %971, i64 %962, i64 %960
  store i64 %975, i64* %974, align 8, !tbaa !2451
  %976 = load i8, i8* %BRANCH_TAKEN
  %977 = icmp eq i8 %976, 1
  %978 = load i64, i64* %RBP
  br i1 %977, label %block_400f63, label %block_400f2e

block_400f1b:                                     ; preds = %block_400e80
  %979 = load i64, i64* %RBP
  %980 = sub i64 %979, 84
  %981 = load i64, i64* %PC
  %982 = add i64 %981, 7
  store i64 %982, i64* %PC
  %983 = inttoptr i64 %980 to i32*
  store i32 0, i32* %983
  br label %block_400f22

block_400ff5:                                     ; preds = %block_400f6a
  %984 = load i64, i64* %PC
  %985 = add i64 %984, 1
  store i64 %985, i64* %PC
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %987 = load i64, i64* %986, align 8, !tbaa !2451
  %988 = add i64 %987, 8
  %989 = inttoptr i64 %987 to i64*
  %990 = load i64, i64* %989
  store i64 %990, i64* %RBX, align 8, !tbaa !2451
  store i64 %988, i64* %986, align 8, !tbaa !2451
  %991 = load i64, i64* %PC
  %992 = add i64 %991, 2
  store i64 %992, i64* %PC
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %994 = load i64, i64* %993, align 8, !tbaa !2451
  %995 = add i64 %994, 8
  %996 = inttoptr i64 %994 to i64*
  %997 = load i64, i64* %996
  store i64 %997, i64* %R14, align 8, !tbaa !2451
  store i64 %995, i64* %993, align 8, !tbaa !2451
  %998 = load i64, i64* %PC
  %999 = add i64 %998, 1
  store i64 %999, i64* %PC
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1001 = load i64, i64* %1000, align 8, !tbaa !2451
  %1002 = add i64 %1001, 8
  %1003 = inttoptr i64 %1001 to i64*
  %1004 = load i64, i64* %1003
  store i64 %1004, i64* %RBP, align 8, !tbaa !2451
  store i64 %1002, i64* %1000, align 8, !tbaa !2451
  %1005 = load i64, i64* %PC
  %1006 = add i64 %1005, 1
  store i64 %1006, i64* %PC
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1009 = load i64, i64* %1008, align 8, !tbaa !2451
  %1010 = inttoptr i64 %1009 to i64*
  %1011 = load i64, i64* %1010
  store i64 %1011, i64* %1007, align 8, !tbaa !2451
  %1012 = add i64 %1009, 8
  store i64 %1012, i64* %1008, align 8, !tbaa !2451
  ret %struct.Memory* %MEMORY.1

block_400e8c:                                     ; preds = %block_400e80
  %1013 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1014 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1015 = bitcast %union.vec128_t* %XMM0 to i8*
  %1016 = load i64, i64* %PC
  %1017 = add i64 %1016, 3
  store i64 %1017, i64* %PC
  %1018 = bitcast i8* %1014 to i64*
  %1019 = load i64, i64* %1018, align 1
  %1020 = getelementptr inbounds i8, i8* %1014, i64 8
  %1021 = bitcast i8* %1020 to i64*
  %1022 = load i64, i64* %1021, align 1
  %1023 = bitcast i8* %1015 to i64*
  %1024 = load i64, i64* %1023, align 1
  %1025 = getelementptr inbounds i8, i8* %1015, i64 8
  %1026 = bitcast i8* %1025 to i64*
  %1027 = load i64, i64* %1026, align 1
  %1028 = xor i64 %1024, %1019
  %1029 = xor i64 %1027, %1022
  %1030 = trunc i64 %1028 to i32
  %1031 = lshr i64 %1028, 32
  %1032 = trunc i64 %1031 to i32
  %1033 = bitcast i8* %1013 to i32*
  store i32 %1030, i32* %1033, align 1, !tbaa !2456
  %1034 = getelementptr inbounds i8, i8* %1013, i64 4
  %1035 = bitcast i8* %1034 to i32*
  store i32 %1032, i32* %1035, align 1, !tbaa !2456
  %1036 = trunc i64 %1029 to i32
  %1037 = getelementptr inbounds i8, i8* %1013, i64 8
  %1038 = bitcast i8* %1037 to i32*
  store i32 %1036, i32* %1038, align 1, !tbaa !2456
  %1039 = lshr i64 %1029, 32
  %1040 = trunc i64 %1039 to i32
  %1041 = getelementptr inbounds i8, i8* %1013, i64 12
  %1042 = bitcast i8* %1041 to i32*
  store i32 %1040, i32* %1042, align 1, !tbaa !2456
  %1043 = load i64, i64* %RBP
  %1044 = add i64 %1043, 32
  %1045 = load i64, i64* %PC
  %1046 = add i64 %1045, 4
  store i64 %1046, i64* %PC
  %1047 = inttoptr i64 %1044 to i64*
  %1048 = load i64, i64* %1047
  store i64 %1048, i64* %RAX, align 8, !tbaa !2451
  %1049 = load i64, i64* %RBP
  %1050 = sub i64 %1049, 84
  %1051 = load i64, i64* %PC
  %1052 = add i64 %1051, 4
  store i64 %1052, i64* %PC
  %1053 = inttoptr i64 %1050 to i32*
  %1054 = load i32, i32* %1053
  %1055 = sext i32 %1054 to i64
  store i64 %1055, i64* %RCX, align 8, !tbaa !2451
  %1056 = load i64, i64* %RAX
  %1057 = load i64, i64* %RCX
  %1058 = mul i64 %1057, 8
  %1059 = add i64 %1058, %1056
  %1060 = bitcast %union.vec128_t* %XMM0 to i8*
  %1061 = load i64, i64* %PC
  %1062 = add i64 %1061, 5
  store i64 %1062, i64* %PC
  %1063 = bitcast i8* %1060 to double*
  %1064 = load double, double* %1063, align 1
  %1065 = inttoptr i64 %1059 to double*
  store double %1064, double* %1065
  %1066 = load i64, i64* %RBP
  %1067 = sub i64 %1066, 88
  %1068 = load i64, i64* %PC
  %1069 = add i64 %1068, 7
  store i64 %1069, i64* %PC
  %1070 = inttoptr i64 %1067 to i32*
  store i32 0, i32* %1070
  br label %block_400ea3

block_400f89:                                     ; preds = %block_400f7d
  %1071 = load i64, i64* %RBP
  %1072 = add i64 %1071, 24
  %1073 = load i64, i64* %PC
  %1074 = add i64 %1073, 4
  store i64 %1074, i64* %PC
  %1075 = inttoptr i64 %1072 to i64*
  %1076 = load i64, i64* %1075
  store i64 %1076, i64* %RAX, align 8, !tbaa !2451
  %1077 = load i64, i64* %RBP
  %1078 = sub i64 %1077, 84
  %1079 = load i64, i64* %PC
  %1080 = add i64 %1079, 4
  store i64 %1080, i64* %PC
  %1081 = inttoptr i64 %1078 to i32*
  %1082 = load i32, i32* %1081
  %1083 = sext i32 %1082 to i64
  store i64 %1083, i64* %RCX, align 8, !tbaa !2451
  %1084 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1085 = load i64, i64* %RAX
  %1086 = load i64, i64* %RCX
  %1087 = mul i64 %1086, 8
  %1088 = add i64 %1087, %1085
  %1089 = load i64, i64* %PC
  %1090 = add i64 %1089, 5
  store i64 %1090, i64* %PC
  %1091 = inttoptr i64 %1088 to double*
  %1092 = load double, double* %1091
  %1093 = bitcast i8* %1084 to double*
  store double %1092, double* %1093, align 1, !tbaa !2452
  %1094 = getelementptr inbounds i8, i8* %1084, i64 8
  %1095 = bitcast i8* %1094 to double*
  store double 0.000000e+00, double* %1095, align 1, !tbaa !2452
  %1096 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1097 = load i64, i64* %RBP
  %1098 = sub i64 %1097, 32
  %1099 = load i64, i64* %PC
  %1100 = add i64 %1099, 5
  store i64 %1100, i64* %PC
  %1101 = inttoptr i64 %1098 to double*
  %1102 = load double, double* %1101
  %1103 = bitcast i8* %1096 to double*
  store double %1102, double* %1103, align 1, !tbaa !2452
  %1104 = getelementptr inbounds i8, i8* %1096, i64 8
  %1105 = bitcast i8* %1104 to double*
  store double 0.000000e+00, double* %1105, align 1, !tbaa !2452
  %1106 = load i64, i64* %RBP
  %1107 = sub i64 %1106, 56
  %1108 = load i64, i64* %PC
  %1109 = add i64 %1108, 4
  store i64 %1109, i64* %PC
  %1110 = inttoptr i64 %1107 to i64*
  %1111 = load i64, i64* %1110
  store i64 %1111, i64* %RAX, align 8, !tbaa !2451
  %1112 = load i64, i64* %RBP
  %1113 = sub i64 %1112, 84
  %1114 = load i64, i64* %PC
  %1115 = add i64 %1114, 4
  store i64 %1115, i64* %PC
  %1116 = inttoptr i64 %1113 to i32*
  %1117 = load i32, i32* %1116
  %1118 = sext i32 %1117 to i64
  store i64 %1118, i64* %RCX, align 8, !tbaa !2451
  %1119 = load i64, i64* %RCX
  %1120 = load i64, i64* %PC
  %1121 = add i64 %1120, 7
  store i64 %1121, i64* %PC
  %1122 = sext i64 %1119 to i128
  %1123 = and i128 %1122, -18446744073709551616
  %1124 = zext i64 %1119 to i128
  %1125 = or i128 %1123, %1124
  %1126 = mul nsw i128 32000, %1125
  %1127 = trunc i128 %1126 to i64
  store i64 %1127, i64* %RCX, align 8, !tbaa !2451
  %1128 = sext i64 %1127 to i128
  %1129 = icmp ne i128 %1128, %1126
  %1130 = zext i1 %1129 to i8
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1130, i8* %1131, align 1, !tbaa !2428
  %1132 = trunc i128 %1126 to i32
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1133, align 1, !tbaa !2445
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1134, align 1, !tbaa !2446
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1135, align 1, !tbaa !2447
  %1136 = lshr i64 %1127, 63
  %1137 = trunc i64 %1136 to i8
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1137, i8* %1138, align 1, !tbaa !2448
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1130, i8* %1139, align 1, !tbaa !2449
  %1140 = load i64, i64* %RAX
  %1141 = load i64, i64* %RCX
  %1142 = load i64, i64* %PC
  %1143 = add i64 %1142, 3
  store i64 %1143, i64* %PC
  %1144 = add i64 %1141, %1140
  store i64 %1144, i64* %RAX, align 8, !tbaa !2451
  %1145 = icmp ult i64 %1144, %1140
  %1146 = icmp ult i64 %1144, %1141
  %1147 = or i1 %1145, %1146
  %1148 = zext i1 %1147 to i8
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1148, i8* %1149, align 1, !tbaa !2428
  %1150 = trunc i64 %1144 to i32
  %1151 = and i32 %1150, 255
  %1152 = call i32 @llvm.ctpop.i32(i32 %1151) #16
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  %1155 = xor i8 %1154, 1
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1155, i8* %1156, align 1, !tbaa !2445
  %1157 = xor i64 %1141, %1140
  %1158 = xor i64 %1157, %1144
  %1159 = lshr i64 %1158, 4
  %1160 = trunc i64 %1159 to i8
  %1161 = and i8 %1160, 1
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1161, i8* %1162, align 1, !tbaa !2446
  %1163 = icmp eq i64 %1144, 0
  %1164 = zext i1 %1163 to i8
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1164, i8* %1165, align 1, !tbaa !2447
  %1166 = lshr i64 %1144, 63
  %1167 = trunc i64 %1166 to i8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1167, i8* %1168, align 1, !tbaa !2448
  %1169 = lshr i64 %1140, 63
  %1170 = lshr i64 %1141, 63
  %1171 = xor i64 %1166, %1169
  %1172 = xor i64 %1166, %1170
  %1173 = add nuw nsw i64 %1171, %1172
  %1174 = icmp eq i64 %1173, 2
  %1175 = zext i1 %1174 to i8
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1175, i8* %1176, align 1, !tbaa !2449
  %1177 = load i64, i64* %RBP
  %1178 = sub i64 %1177, 88
  %1179 = load i64, i64* %PC
  %1180 = add i64 %1179, 4
  store i64 %1180, i64* %PC
  %1181 = inttoptr i64 %1178 to i32*
  %1182 = load i32, i32* %1181
  %1183 = sext i32 %1182 to i64
  store i64 %1183, i64* %RCX, align 8, !tbaa !2451
  %1184 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1185 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1186 = load i64, i64* %RAX
  %1187 = load i64, i64* %RCX
  %1188 = mul i64 %1187, 8
  %1189 = add i64 %1188, %1186
  %1190 = load i64, i64* %PC
  %1191 = add i64 %1190, 5
  store i64 %1191, i64* %PC
  %1192 = bitcast i8* %1185 to double*
  %1193 = load double, double* %1192, align 1
  %1194 = getelementptr inbounds i8, i8* %1185, i64 8
  %1195 = bitcast i8* %1194 to i64*
  %1196 = load i64, i64* %1195, align 1
  %1197 = inttoptr i64 %1189 to double*
  %1198 = load double, double* %1197
  %1199 = fmul double %1193, %1198
  %1200 = bitcast i8* %1184 to double*
  store double %1199, double* %1200, align 1, !tbaa !2452
  %1201 = getelementptr inbounds i8, i8* %1184, i64 8
  %1202 = bitcast i8* %1201 to i64*
  store i64 %1196, i64* %1202, align 1, !tbaa !2452
  %1203 = load i64, i64* %RBP
  %1204 = add i64 %1203, 32
  %1205 = load i64, i64* %PC
  %1206 = add i64 %1205, 4
  store i64 %1206, i64* %PC
  %1207 = inttoptr i64 %1204 to i64*
  %1208 = load i64, i64* %1207
  store i64 %1208, i64* %RAX, align 8, !tbaa !2451
  %1209 = load i64, i64* %RBP
  %1210 = sub i64 %1209, 88
  %1211 = load i64, i64* %PC
  %1212 = add i64 %1211, 4
  store i64 %1212, i64* %PC
  %1213 = inttoptr i64 %1210 to i32*
  %1214 = load i32, i32* %1213
  %1215 = sext i32 %1214 to i64
  store i64 %1215, i64* %RCX, align 8, !tbaa !2451
  %1216 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1217 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1218 = load i64, i64* %RAX
  %1219 = load i64, i64* %RCX
  %1220 = mul i64 %1219, 8
  %1221 = add i64 %1220, %1218
  %1222 = load i64, i64* %PC
  %1223 = add i64 %1222, 5
  store i64 %1223, i64* %PC
  %1224 = bitcast i8* %1217 to double*
  %1225 = load double, double* %1224, align 1
  %1226 = getelementptr inbounds i8, i8* %1217, i64 8
  %1227 = bitcast i8* %1226 to i64*
  %1228 = load i64, i64* %1227, align 1
  %1229 = inttoptr i64 %1221 to double*
  %1230 = load double, double* %1229
  %1231 = fmul double %1225, %1230
  %1232 = bitcast i8* %1216 to double*
  store double %1231, double* %1232, align 1, !tbaa !2452
  %1233 = getelementptr inbounds i8, i8* %1216, i64 8
  %1234 = bitcast i8* %1233 to i64*
  store i64 %1228, i64* %1234, align 1, !tbaa !2452
  %1235 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1236 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1237 = bitcast %union.vec128_t* %XMM1 to i8*
  %1238 = load i64, i64* %PC
  %1239 = add i64 %1238, 4
  store i64 %1239, i64* %PC
  %1240 = bitcast i8* %1236 to double*
  %1241 = load double, double* %1240, align 1
  %1242 = getelementptr inbounds i8, i8* %1236, i64 8
  %1243 = bitcast i8* %1242 to i64*
  %1244 = load i64, i64* %1243, align 1
  %1245 = bitcast i8* %1237 to double*
  %1246 = load double, double* %1245, align 1
  %1247 = fadd double %1241, %1246
  %1248 = bitcast i8* %1235 to double*
  store double %1247, double* %1248, align 1, !tbaa !2452
  %1249 = getelementptr inbounds i8, i8* %1235, i64 8
  %1250 = bitcast i8* %1249 to i64*
  store i64 %1244, i64* %1250, align 1, !tbaa !2452
  %1251 = load i64, i64* %RBP
  %1252 = add i64 %1251, 24
  %1253 = load i64, i64* %PC
  %1254 = add i64 %1253, 4
  store i64 %1254, i64* %PC
  %1255 = inttoptr i64 %1252 to i64*
  %1256 = load i64, i64* %1255
  store i64 %1256, i64* %RAX, align 8, !tbaa !2451
  %1257 = load i64, i64* %RBP
  %1258 = sub i64 %1257, 84
  %1259 = load i64, i64* %PC
  %1260 = add i64 %1259, 4
  store i64 %1260, i64* %PC
  %1261 = inttoptr i64 %1258 to i32*
  %1262 = load i32, i32* %1261
  %1263 = sext i32 %1262 to i64
  store i64 %1263, i64* %RCX, align 8, !tbaa !2451
  %1264 = load i64, i64* %RAX
  %1265 = load i64, i64* %RCX
  %1266 = mul i64 %1265, 8
  %1267 = add i64 %1266, %1264
  %1268 = bitcast %union.vec128_t* %XMM0 to i8*
  %1269 = load i64, i64* %PC
  %1270 = add i64 %1269, 5
  store i64 %1270, i64* %PC
  %1271 = bitcast i8* %1268 to double*
  %1272 = load double, double* %1271, align 1
  %1273 = inttoptr i64 %1267 to double*
  store double %1272, double* %1273
  %1274 = load i64, i64* %RBP
  %1275 = sub i64 %1274, 88
  %1276 = load i64, i64* %PC
  %1277 = add i64 %1276, 3
  store i64 %1277, i64* %PC
  %1278 = inttoptr i64 %1275 to i32*
  %1279 = load i32, i32* %1278
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %RAX, align 8, !tbaa !2451
  %1281 = load i64, i64* %RAX
  %1282 = load i64, i64* %PC
  %1283 = add i64 %1282, 3
  store i64 %1283, i64* %PC
  %1284 = trunc i64 %1281 to i32
  %1285 = add i32 1, %1284
  %1286 = zext i32 %1285 to i64
  store i64 %1286, i64* %RAX, align 8, !tbaa !2451
  %1287 = icmp ult i32 %1285, %1284
  %1288 = icmp ult i32 %1285, 1
  %1289 = or i1 %1287, %1288
  %1290 = zext i1 %1289 to i8
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1290, i8* %1291, align 1, !tbaa !2428
  %1292 = and i32 %1285, 255
  %1293 = call i32 @llvm.ctpop.i32(i32 %1292) #16
  %1294 = trunc i32 %1293 to i8
  %1295 = and i8 %1294, 1
  %1296 = xor i8 %1295, 1
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1296, i8* %1297, align 1, !tbaa !2445
  %1298 = xor i64 1, %1281
  %1299 = trunc i64 %1298 to i32
  %1300 = xor i32 %1299, %1285
  %1301 = lshr i32 %1300, 4
  %1302 = trunc i32 %1301 to i8
  %1303 = and i8 %1302, 1
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1303, i8* %1304, align 1, !tbaa !2446
  %1305 = icmp eq i32 %1285, 0
  %1306 = zext i1 %1305 to i8
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1306, i8* %1307, align 1, !tbaa !2447
  %1308 = lshr i32 %1285, 31
  %1309 = trunc i32 %1308 to i8
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1309, i8* %1310, align 1, !tbaa !2448
  %1311 = lshr i32 %1284, 31
  %1312 = xor i32 %1308, %1311
  %1313 = add nuw nsw i32 %1312, %1308
  %1314 = icmp eq i32 %1313, 2
  %1315 = zext i1 %1314 to i8
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1315, i8* %1316, align 1, !tbaa !2449
  %1317 = load i64, i64* %RBP
  %1318 = sub i64 %1317, 88
  %1319 = load i32, i32* %EAX
  %1320 = zext i32 %1319 to i64
  %1321 = load i64, i64* %PC
  %1322 = add i64 %1321, 3
  store i64 %1322, i64* %PC
  %1323 = inttoptr i64 %1318 to i32*
  store i32 %1319, i32* %1323
  %1324 = load i64, i64* %PC
  %1325 = sub i64 %1324, 96
  %1326 = load i64, i64* %PC
  %1327 = add i64 %1326, 5
  store i64 %1327, i64* %PC
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1325, i64* %1328, align 8, !tbaa !2451
  br label %block_400f7d

block_400de6:                                     ; preds = %block_400dda
  %1329 = load i64, i64* %RBP
  %1330 = sub i64 %1329, 48
  %1331 = load i64, i64* %PC
  %1332 = add i64 %1331, 4
  store i64 %1332, i64* %PC
  %1333 = inttoptr i64 %1330 to i64*
  %1334 = load i64, i64* %1333
  store i64 %1334, i64* %RAX, align 8, !tbaa !2451
  %1335 = load i64, i64* %RBP
  %1336 = sub i64 %1335, 84
  %1337 = load i64, i64* %PC
  %1338 = add i64 %1337, 4
  store i64 %1338, i64* %PC
  %1339 = inttoptr i64 %1336 to i32*
  %1340 = load i32, i32* %1339
  %1341 = sext i32 %1340 to i64
  store i64 %1341, i64* %RCX, align 8, !tbaa !2451
  %1342 = load i64, i64* %RCX
  %1343 = load i64, i64* %PC
  %1344 = add i64 %1343, 7
  store i64 %1344, i64* %PC
  %1345 = sext i64 %1342 to i128
  %1346 = and i128 %1345, -18446744073709551616
  %1347 = zext i64 %1342 to i128
  %1348 = or i128 %1346, %1347
  %1349 = mul nsw i128 32000, %1348
  %1350 = trunc i128 %1349 to i64
  store i64 %1350, i64* %RCX, align 8, !tbaa !2451
  %1351 = sext i64 %1350 to i128
  %1352 = icmp ne i128 %1351, %1349
  %1353 = zext i1 %1352 to i8
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1353, i8* %1354, align 1, !tbaa !2428
  %1355 = trunc i128 %1349 to i32
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1356, align 1, !tbaa !2445
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1357, align 1, !tbaa !2446
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1358, align 1, !tbaa !2447
  %1359 = lshr i64 %1350, 63
  %1360 = trunc i64 %1359 to i8
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1360, i8* %1361, align 1, !tbaa !2448
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1353, i8* %1362, align 1, !tbaa !2449
  %1363 = load i64, i64* %RAX
  %1364 = load i64, i64* %RCX
  %1365 = load i64, i64* %PC
  %1366 = add i64 %1365, 3
  store i64 %1366, i64* %PC
  %1367 = add i64 %1364, %1363
  store i64 %1367, i64* %RAX, align 8, !tbaa !2451
  %1368 = icmp ult i64 %1367, %1363
  %1369 = icmp ult i64 %1367, %1364
  %1370 = or i1 %1368, %1369
  %1371 = zext i1 %1370 to i8
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1371, i8* %1372, align 1, !tbaa !2428
  %1373 = trunc i64 %1367 to i32
  %1374 = and i32 %1373, 255
  %1375 = call i32 @llvm.ctpop.i32(i32 %1374) #16
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  %1378 = xor i8 %1377, 1
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1378, i8* %1379, align 1, !tbaa !2445
  %1380 = xor i64 %1364, %1363
  %1381 = xor i64 %1380, %1367
  %1382 = lshr i64 %1381, 4
  %1383 = trunc i64 %1382 to i8
  %1384 = and i8 %1383, 1
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1384, i8* %1385, align 1, !tbaa !2446
  %1386 = icmp eq i64 %1367, 0
  %1387 = zext i1 %1386 to i8
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1387, i8* %1388, align 1, !tbaa !2447
  %1389 = lshr i64 %1367, 63
  %1390 = trunc i64 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1390, i8* %1391, align 1, !tbaa !2448
  %1392 = lshr i64 %1363, 63
  %1393 = lshr i64 %1364, 63
  %1394 = xor i64 %1389, %1392
  %1395 = xor i64 %1389, %1393
  %1396 = add nuw nsw i64 %1394, %1395
  %1397 = icmp eq i64 %1396, 2
  %1398 = zext i1 %1397 to i8
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1398, i8* %1399, align 1, !tbaa !2449
  %1400 = load i64, i64* %RBP
  %1401 = sub i64 %1400, 88
  %1402 = load i64, i64* %PC
  %1403 = add i64 %1402, 4
  store i64 %1403, i64* %PC
  %1404 = inttoptr i64 %1401 to i32*
  %1405 = load i32, i32* %1404
  %1406 = sext i32 %1405 to i64
  store i64 %1406, i64* %RCX, align 8, !tbaa !2451
  %1407 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1408 = load i64, i64* %RAX
  %1409 = load i64, i64* %RCX
  %1410 = mul i64 %1409, 8
  %1411 = add i64 %1410, %1408
  %1412 = load i64, i64* %PC
  %1413 = add i64 %1412, 5
  store i64 %1413, i64* %PC
  %1414 = inttoptr i64 %1411 to double*
  %1415 = load double, double* %1414
  %1416 = bitcast i8* %1407 to double*
  store double %1415, double* %1416, align 1, !tbaa !2452
  %1417 = getelementptr inbounds i8, i8* %1407, i64 8
  %1418 = bitcast i8* %1417 to double*
  store double 0.000000e+00, double* %1418, align 1, !tbaa !2452
  %1419 = load i64, i64* %RBP
  %1420 = sub i64 %1419, 64
  %1421 = load i64, i64* %PC
  %1422 = add i64 %1421, 4
  store i64 %1422, i64* %PC
  %1423 = inttoptr i64 %1420 to i64*
  %1424 = load i64, i64* %1423
  store i64 %1424, i64* %RAX, align 8, !tbaa !2451
  %1425 = load i64, i64* %RBP
  %1426 = sub i64 %1425, 84
  %1427 = load i64, i64* %PC
  %1428 = add i64 %1427, 4
  store i64 %1428, i64* %PC
  %1429 = inttoptr i64 %1426 to i32*
  %1430 = load i32, i32* %1429
  %1431 = sext i32 %1430 to i64
  store i64 %1431, i64* %RCX, align 8, !tbaa !2451
  %1432 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1433 = load i64, i64* %RAX
  %1434 = load i64, i64* %RCX
  %1435 = mul i64 %1434, 8
  %1436 = add i64 %1435, %1433
  %1437 = load i64, i64* %PC
  %1438 = add i64 %1437, 5
  store i64 %1438, i64* %PC
  %1439 = inttoptr i64 %1436 to double*
  %1440 = load double, double* %1439
  %1441 = bitcast i8* %1432 to double*
  store double %1440, double* %1441, align 1, !tbaa !2452
  %1442 = getelementptr inbounds i8, i8* %1432, i64 8
  %1443 = bitcast i8* %1442 to double*
  store double 0.000000e+00, double* %1443, align 1, !tbaa !2452
  %1444 = load i64, i64* %RBP
  %1445 = sub i64 %1444, 72
  %1446 = load i64, i64* %PC
  %1447 = add i64 %1446, 4
  store i64 %1447, i64* %PC
  %1448 = inttoptr i64 %1445 to i64*
  %1449 = load i64, i64* %1448
  store i64 %1449, i64* %RAX, align 8, !tbaa !2451
  %1450 = load i64, i64* %RBP
  %1451 = sub i64 %1450, 88
  %1452 = load i64, i64* %PC
  %1453 = add i64 %1452, 4
  store i64 %1453, i64* %PC
  %1454 = inttoptr i64 %1451 to i32*
  %1455 = load i32, i32* %1454
  %1456 = sext i32 %1455 to i64
  store i64 %1456, i64* %RCX, align 8, !tbaa !2451
  %1457 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1458 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1459 = load i64, i64* %RAX
  %1460 = load i64, i64* %RCX
  %1461 = mul i64 %1460, 8
  %1462 = add i64 %1461, %1459
  %1463 = load i64, i64* %PC
  %1464 = add i64 %1463, 5
  store i64 %1464, i64* %PC
  %1465 = bitcast i8* %1458 to double*
  %1466 = load double, double* %1465, align 1
  %1467 = getelementptr inbounds i8, i8* %1458, i64 8
  %1468 = bitcast i8* %1467 to i64*
  %1469 = load i64, i64* %1468, align 1
  %1470 = inttoptr i64 %1462 to double*
  %1471 = load double, double* %1470
  %1472 = fmul double %1466, %1471
  %1473 = bitcast i8* %1457 to double*
  store double %1472, double* %1473, align 1, !tbaa !2452
  %1474 = getelementptr inbounds i8, i8* %1457, i64 8
  %1475 = bitcast i8* %1474 to i64*
  store i64 %1469, i64* %1475, align 1, !tbaa !2452
  %1476 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1477 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1478 = bitcast %union.vec128_t* %XMM1 to i8*
  %1479 = load i64, i64* %PC
  %1480 = add i64 %1479, 4
  store i64 %1480, i64* %PC
  %1481 = bitcast i8* %1477 to double*
  %1482 = load double, double* %1481, align 1
  %1483 = getelementptr inbounds i8, i8* %1477, i64 8
  %1484 = bitcast i8* %1483 to i64*
  %1485 = load i64, i64* %1484, align 1
  %1486 = bitcast i8* %1478 to double*
  %1487 = load double, double* %1486, align 1
  %1488 = fadd double %1482, %1487
  %1489 = bitcast i8* %1476 to double*
  store double %1488, double* %1489, align 1, !tbaa !2452
  %1490 = getelementptr inbounds i8, i8* %1476, i64 8
  %1491 = bitcast i8* %1490 to i64*
  store i64 %1485, i64* %1491, align 1, !tbaa !2452
  %1492 = load i64, i64* %RBP
  %1493 = sub i64 %1492, 80
  %1494 = load i64, i64* %PC
  %1495 = add i64 %1494, 4
  store i64 %1495, i64* %PC
  %1496 = inttoptr i64 %1493 to i64*
  %1497 = load i64, i64* %1496
  store i64 %1497, i64* %RAX, align 8, !tbaa !2451
  %1498 = load i64, i64* %RBP
  %1499 = sub i64 %1498, 84
  %1500 = load i64, i64* %PC
  %1501 = add i64 %1500, 4
  store i64 %1501, i64* %PC
  %1502 = inttoptr i64 %1499 to i32*
  %1503 = load i32, i32* %1502
  %1504 = sext i32 %1503 to i64
  store i64 %1504, i64* %RCX, align 8, !tbaa !2451
  %1505 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1506 = load i64, i64* %RAX
  %1507 = load i64, i64* %RCX
  %1508 = mul i64 %1507, 8
  %1509 = add i64 %1508, %1506
  %1510 = load i64, i64* %PC
  %1511 = add i64 %1510, 5
  store i64 %1511, i64* %PC
  %1512 = inttoptr i64 %1509 to double*
  %1513 = load double, double* %1512
  %1514 = bitcast i8* %1505 to double*
  store double %1513, double* %1514, align 1, !tbaa !2452
  %1515 = getelementptr inbounds i8, i8* %1505, i64 8
  %1516 = bitcast i8* %1515 to double*
  store double 0.000000e+00, double* %1516, align 1, !tbaa !2452
  %1517 = load i64, i64* %RBP
  %1518 = add i64 %1517, 16
  %1519 = load i64, i64* %PC
  %1520 = add i64 %1519, 4
  store i64 %1520, i64* %PC
  %1521 = inttoptr i64 %1518 to i64*
  %1522 = load i64, i64* %1521
  store i64 %1522, i64* %RAX, align 8, !tbaa !2451
  %1523 = load i64, i64* %RBP
  %1524 = sub i64 %1523, 88
  %1525 = load i64, i64* %PC
  %1526 = add i64 %1525, 4
  store i64 %1526, i64* %PC
  %1527 = inttoptr i64 %1524 to i32*
  %1528 = load i32, i32* %1527
  %1529 = sext i32 %1528 to i64
  store i64 %1529, i64* %RCX, align 8, !tbaa !2451
  %1530 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1531 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1532 = load i64, i64* %RAX
  %1533 = load i64, i64* %RCX
  %1534 = mul i64 %1533, 8
  %1535 = add i64 %1534, %1532
  %1536 = load i64, i64* %PC
  %1537 = add i64 %1536, 5
  store i64 %1537, i64* %PC
  %1538 = bitcast i8* %1531 to double*
  %1539 = load double, double* %1538, align 1
  %1540 = getelementptr inbounds i8, i8* %1531, i64 8
  %1541 = bitcast i8* %1540 to i64*
  %1542 = load i64, i64* %1541, align 1
  %1543 = inttoptr i64 %1535 to double*
  %1544 = load double, double* %1543
  %1545 = fmul double %1539, %1544
  %1546 = bitcast i8* %1530 to double*
  store double %1545, double* %1546, align 1, !tbaa !2452
  %1547 = getelementptr inbounds i8, i8* %1530, i64 8
  %1548 = bitcast i8* %1547 to i64*
  store i64 %1542, i64* %1548, align 1, !tbaa !2452
  %1549 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1550 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1551 = bitcast %union.vec128_t* %XMM1 to i8*
  %1552 = load i64, i64* %PC
  %1553 = add i64 %1552, 4
  store i64 %1553, i64* %PC
  %1554 = bitcast i8* %1550 to double*
  %1555 = load double, double* %1554, align 1
  %1556 = getelementptr inbounds i8, i8* %1550, i64 8
  %1557 = bitcast i8* %1556 to i64*
  %1558 = load i64, i64* %1557, align 1
  %1559 = bitcast i8* %1551 to double*
  %1560 = load double, double* %1559, align 1
  %1561 = fadd double %1555, %1560
  %1562 = bitcast i8* %1549 to double*
  store double %1561, double* %1562, align 1, !tbaa !2452
  %1563 = getelementptr inbounds i8, i8* %1549, i64 8
  %1564 = bitcast i8* %1563 to i64*
  store i64 %1558, i64* %1564, align 1, !tbaa !2452
  %1565 = load i64, i64* %RBP
  %1566 = sub i64 %1565, 56
  %1567 = load i64, i64* %PC
  %1568 = add i64 %1567, 4
  store i64 %1568, i64* %PC
  %1569 = inttoptr i64 %1566 to i64*
  %1570 = load i64, i64* %1569
  store i64 %1570, i64* %RAX, align 8, !tbaa !2451
  %1571 = load i64, i64* %RBP
  %1572 = sub i64 %1571, 84
  %1573 = load i64, i64* %PC
  %1574 = add i64 %1573, 4
  store i64 %1574, i64* %PC
  %1575 = inttoptr i64 %1572 to i32*
  %1576 = load i32, i32* %1575
  %1577 = sext i32 %1576 to i64
  store i64 %1577, i64* %RCX, align 8, !tbaa !2451
  %1578 = load i64, i64* %RCX
  %1579 = load i64, i64* %PC
  %1580 = add i64 %1579, 7
  store i64 %1580, i64* %PC
  %1581 = sext i64 %1578 to i128
  %1582 = and i128 %1581, -18446744073709551616
  %1583 = zext i64 %1578 to i128
  %1584 = or i128 %1582, %1583
  %1585 = mul nsw i128 32000, %1584
  %1586 = trunc i128 %1585 to i64
  store i64 %1586, i64* %RCX, align 8, !tbaa !2451
  %1587 = sext i64 %1586 to i128
  %1588 = icmp ne i128 %1587, %1585
  %1589 = zext i1 %1588 to i8
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1589, i8* %1590, align 1, !tbaa !2428
  %1591 = trunc i128 %1585 to i32
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1592, align 1, !tbaa !2445
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1593, align 1, !tbaa !2446
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1594, align 1, !tbaa !2447
  %1595 = lshr i64 %1586, 63
  %1596 = trunc i64 %1595 to i8
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1596, i8* %1597, align 1, !tbaa !2448
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1589, i8* %1598, align 1, !tbaa !2449
  %1599 = load i64, i64* %RAX
  %1600 = load i64, i64* %RCX
  %1601 = load i64, i64* %PC
  %1602 = add i64 %1601, 3
  store i64 %1602, i64* %PC
  %1603 = add i64 %1600, %1599
  store i64 %1603, i64* %RAX, align 8, !tbaa !2451
  %1604 = icmp ult i64 %1603, %1599
  %1605 = icmp ult i64 %1603, %1600
  %1606 = or i1 %1604, %1605
  %1607 = zext i1 %1606 to i8
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1607, i8* %1608, align 1, !tbaa !2428
  %1609 = trunc i64 %1603 to i32
  %1610 = and i32 %1609, 255
  %1611 = call i32 @llvm.ctpop.i32(i32 %1610) #16
  %1612 = trunc i32 %1611 to i8
  %1613 = and i8 %1612, 1
  %1614 = xor i8 %1613, 1
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1614, i8* %1615, align 1, !tbaa !2445
  %1616 = xor i64 %1600, %1599
  %1617 = xor i64 %1616, %1603
  %1618 = lshr i64 %1617, 4
  %1619 = trunc i64 %1618 to i8
  %1620 = and i8 %1619, 1
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1620, i8* %1621, align 1, !tbaa !2446
  %1622 = icmp eq i64 %1603, 0
  %1623 = zext i1 %1622 to i8
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1623, i8* %1624, align 1, !tbaa !2447
  %1625 = lshr i64 %1603, 63
  %1626 = trunc i64 %1625 to i8
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1626, i8* %1627, align 1, !tbaa !2448
  %1628 = lshr i64 %1599, 63
  %1629 = lshr i64 %1600, 63
  %1630 = xor i64 %1625, %1628
  %1631 = xor i64 %1625, %1629
  %1632 = add nuw nsw i64 %1630, %1631
  %1633 = icmp eq i64 %1632, 2
  %1634 = zext i1 %1633 to i8
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1634, i8* %1635, align 1, !tbaa !2449
  %1636 = load i64, i64* %RBP
  %1637 = sub i64 %1636, 88
  %1638 = load i64, i64* %PC
  %1639 = add i64 %1638, 4
  store i64 %1639, i64* %PC
  %1640 = inttoptr i64 %1637 to i32*
  %1641 = load i32, i32* %1640
  %1642 = sext i32 %1641 to i64
  store i64 %1642, i64* %RCX, align 8, !tbaa !2451
  %1643 = load i64, i64* %RAX
  %1644 = load i64, i64* %RCX
  %1645 = mul i64 %1644, 8
  %1646 = add i64 %1645, %1643
  %1647 = bitcast %union.vec128_t* %XMM0 to i8*
  %1648 = load i64, i64* %PC
  %1649 = add i64 %1648, 5
  store i64 %1649, i64* %PC
  %1650 = bitcast i8* %1647 to double*
  %1651 = load double, double* %1650, align 1
  %1652 = inttoptr i64 %1646 to double*
  store double %1651, double* %1652
  %1653 = load i64, i64* %RBP
  %1654 = sub i64 %1653, 88
  %1655 = load i64, i64* %PC
  %1656 = add i64 %1655, 3
  store i64 %1656, i64* %PC
  %1657 = inttoptr i64 %1654 to i32*
  %1658 = load i32, i32* %1657
  %1659 = zext i32 %1658 to i64
  store i64 %1659, i64* %RAX, align 8, !tbaa !2451
  %1660 = load i64, i64* %RAX
  %1661 = load i64, i64* %PC
  %1662 = add i64 %1661, 3
  store i64 %1662, i64* %PC
  %1663 = trunc i64 %1660 to i32
  %1664 = add i32 1, %1663
  %1665 = zext i32 %1664 to i64
  store i64 %1665, i64* %RAX, align 8, !tbaa !2451
  %1666 = icmp ult i32 %1664, %1663
  %1667 = icmp ult i32 %1664, 1
  %1668 = or i1 %1666, %1667
  %1669 = zext i1 %1668 to i8
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1669, i8* %1670, align 1, !tbaa !2428
  %1671 = and i32 %1664, 255
  %1672 = call i32 @llvm.ctpop.i32(i32 %1671) #16
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  %1675 = xor i8 %1674, 1
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1675, i8* %1676, align 1, !tbaa !2445
  %1677 = xor i64 1, %1660
  %1678 = trunc i64 %1677 to i32
  %1679 = xor i32 %1678, %1664
  %1680 = lshr i32 %1679, 4
  %1681 = trunc i32 %1680 to i8
  %1682 = and i8 %1681, 1
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1682, i8* %1683, align 1, !tbaa !2446
  %1684 = icmp eq i32 %1664, 0
  %1685 = zext i1 %1684 to i8
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1685, i8* %1686, align 1, !tbaa !2447
  %1687 = lshr i32 %1664, 31
  %1688 = trunc i32 %1687 to i8
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1688, i8* %1689, align 1, !tbaa !2448
  %1690 = lshr i32 %1663, 31
  %1691 = xor i32 %1687, %1690
  %1692 = add nuw nsw i32 %1691, %1687
  %1693 = icmp eq i32 %1692, 2
  %1694 = zext i1 %1693 to i8
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1694, i8* %1695, align 1, !tbaa !2449
  %1696 = load i64, i64* %RBP
  %1697 = sub i64 %1696, 88
  %1698 = load i32, i32* %EAX
  %1699 = zext i32 %1698 to i64
  %1700 = load i64, i64* %PC
  %1701 = add i64 %1700, 3
  store i64 %1701, i64* %PC
  %1702 = inttoptr i64 %1697 to i32*
  store i32 %1698, i32* %1702
  %1703 = load i64, i64* %PC
  %1704 = sub i64 %1703, 135
  %1705 = load i64, i64* %PC
  %1706 = add i64 %1705, 5
  store i64 %1706, i64* %PC
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1704, i64* %1707, align 8, !tbaa !2451
  br label %block_400dda

block_400f08:                                     ; preds = %block_400ea3
  %1708 = load i64, i64* %PC
  %1709 = add i64 %1708, 5
  %1710 = load i64, i64* %PC
  %1711 = add i64 %1710, 5
  store i64 %1711, i64* %PC
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1709, i64* %1712, align 8, !tbaa !2451
  %1713 = load i64, i64* %RBP
  %1714 = sub i64 %1713, 84
  %1715 = load i64, i64* %PC
  %1716 = add i64 %1715, 3
  store i64 %1716, i64* %PC
  %1717 = inttoptr i64 %1714 to i32*
  %1718 = load i32, i32* %1717
  %1719 = zext i32 %1718 to i64
  store i64 %1719, i64* %RAX, align 8, !tbaa !2451
  %1720 = load i64, i64* %RAX
  %1721 = load i64, i64* %PC
  %1722 = add i64 %1721, 3
  store i64 %1722, i64* %PC
  %1723 = trunc i64 %1720 to i32
  %1724 = add i32 1, %1723
  %1725 = zext i32 %1724 to i64
  store i64 %1725, i64* %RAX, align 8, !tbaa !2451
  %1726 = icmp ult i32 %1724, %1723
  %1727 = icmp ult i32 %1724, 1
  %1728 = or i1 %1726, %1727
  %1729 = zext i1 %1728 to i8
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1729, i8* %1730, align 1, !tbaa !2428
  %1731 = and i32 %1724, 255
  %1732 = call i32 @llvm.ctpop.i32(i32 %1731) #16
  %1733 = trunc i32 %1732 to i8
  %1734 = and i8 %1733, 1
  %1735 = xor i8 %1734, 1
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1735, i8* %1736, align 1, !tbaa !2445
  %1737 = xor i64 1, %1720
  %1738 = trunc i64 %1737 to i32
  %1739 = xor i32 %1738, %1724
  %1740 = lshr i32 %1739, 4
  %1741 = trunc i32 %1740 to i8
  %1742 = and i8 %1741, 1
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1742, i8* %1743, align 1, !tbaa !2446
  %1744 = icmp eq i32 %1724, 0
  %1745 = zext i1 %1744 to i8
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1745, i8* %1746, align 1, !tbaa !2447
  %1747 = lshr i32 %1724, 31
  %1748 = trunc i32 %1747 to i8
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1748, i8* %1749, align 1, !tbaa !2448
  %1750 = lshr i32 %1723, 31
  %1751 = xor i32 %1747, %1750
  %1752 = add nuw nsw i32 %1751, %1747
  %1753 = icmp eq i32 %1752, 2
  %1754 = zext i1 %1753 to i8
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1754, i8* %1755, align 1, !tbaa !2449
  %1756 = load i64, i64* %RBP
  %1757 = sub i64 %1756, 84
  %1758 = load i32, i32* %EAX
  %1759 = zext i32 %1758 to i64
  %1760 = load i64, i64* %PC
  %1761 = add i64 %1760, 3
  store i64 %1761, i64* %PC
  %1762 = inttoptr i64 %1757 to i32*
  store i32 %1758, i32* %1762
  %1763 = load i64, i64* %PC
  %1764 = sub i64 %1763, 150
  %1765 = load i64, i64* %PC
  %1766 = add i64 %1765, 5
  store i64 %1766, i64* %PC
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1764, i64* %1767, align 8, !tbaa !2451
  br label %block_400e80

block_400f2e:                                     ; preds = %block_400f22
  %1768 = add i64 %978, 32
  %1769 = load i64, i64* %PC
  %1770 = add i64 %1769, 4
  store i64 %1770, i64* %PC
  %1771 = inttoptr i64 %1768 to i64*
  %1772 = load i64, i64* %1771
  store i64 %1772, i64* %RAX, align 8, !tbaa !2451
  %1773 = load i64, i64* %RBP
  %1774 = sub i64 %1773, 84
  %1775 = load i64, i64* %PC
  %1776 = add i64 %1775, 4
  store i64 %1776, i64* %PC
  %1777 = inttoptr i64 %1774 to i32*
  %1778 = load i32, i32* %1777
  %1779 = sext i32 %1778 to i64
  store i64 %1779, i64* %RCX, align 8, !tbaa !2451
  %1780 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1781 = load i64, i64* %RAX
  %1782 = load i64, i64* %RCX
  %1783 = mul i64 %1782, 8
  %1784 = add i64 %1783, %1781
  %1785 = load i64, i64* %PC
  %1786 = add i64 %1785, 5
  store i64 %1786, i64* %PC
  %1787 = inttoptr i64 %1784 to double*
  %1788 = load double, double* %1787
  %1789 = bitcast i8* %1780 to double*
  store double %1788, double* %1789, align 1, !tbaa !2452
  %1790 = getelementptr inbounds i8, i8* %1780, i64 8
  %1791 = bitcast i8* %1790 to double*
  store double 0.000000e+00, double* %1791, align 1, !tbaa !2452
  %1792 = load i64, i64* %RBP
  %1793 = add i64 %1792, 48
  %1794 = load i64, i64* %PC
  %1795 = add i64 %1794, 4
  store i64 %1795, i64* %PC
  %1796 = inttoptr i64 %1793 to i64*
  %1797 = load i64, i64* %1796
  store i64 %1797, i64* %RAX, align 8, !tbaa !2451
  %1798 = load i64, i64* %RBP
  %1799 = sub i64 %1798, 84
  %1800 = load i64, i64* %PC
  %1801 = add i64 %1800, 4
  store i64 %1801, i64* %PC
  %1802 = inttoptr i64 %1799 to i32*
  %1803 = load i32, i32* %1802
  %1804 = sext i32 %1803 to i64
  store i64 %1804, i64* %RCX, align 8, !tbaa !2451
  %1805 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1806 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1807 = load i64, i64* %RAX
  %1808 = load i64, i64* %RCX
  %1809 = mul i64 %1808, 8
  %1810 = add i64 %1809, %1807
  %1811 = load i64, i64* %PC
  %1812 = add i64 %1811, 5
  store i64 %1812, i64* %PC
  %1813 = bitcast i8* %1806 to double*
  %1814 = load double, double* %1813, align 1
  %1815 = getelementptr inbounds i8, i8* %1806, i64 8
  %1816 = bitcast i8* %1815 to i64*
  %1817 = load i64, i64* %1816, align 1
  %1818 = inttoptr i64 %1810 to double*
  %1819 = load double, double* %1818
  %1820 = fadd double %1814, %1819
  %1821 = bitcast i8* %1805 to double*
  store double %1820, double* %1821, align 1, !tbaa !2452
  %1822 = getelementptr inbounds i8, i8* %1805, i64 8
  %1823 = bitcast i8* %1822 to i64*
  store i64 %1817, i64* %1823, align 1, !tbaa !2452
  %1824 = load i64, i64* %RBP
  %1825 = add i64 %1824, 32
  %1826 = load i64, i64* %PC
  %1827 = add i64 %1826, 4
  store i64 %1827, i64* %PC
  %1828 = inttoptr i64 %1825 to i64*
  %1829 = load i64, i64* %1828
  store i64 %1829, i64* %RAX, align 8, !tbaa !2451
  %1830 = load i64, i64* %RBP
  %1831 = sub i64 %1830, 84
  %1832 = load i64, i64* %PC
  %1833 = add i64 %1832, 4
  store i64 %1833, i64* %PC
  %1834 = inttoptr i64 %1831 to i32*
  %1835 = load i32, i32* %1834
  %1836 = sext i32 %1835 to i64
  store i64 %1836, i64* %RCX, align 8, !tbaa !2451
  %1837 = load i64, i64* %RAX
  %1838 = load i64, i64* %RCX
  %1839 = mul i64 %1838, 8
  %1840 = add i64 %1839, %1837
  %1841 = bitcast %union.vec128_t* %XMM0 to i8*
  %1842 = load i64, i64* %PC
  %1843 = add i64 %1842, 5
  store i64 %1843, i64* %PC
  %1844 = bitcast i8* %1841 to double*
  %1845 = load double, double* %1844, align 1
  %1846 = inttoptr i64 %1840 to double*
  store double %1845, double* %1846
  %1847 = load i64, i64* %RBP
  %1848 = sub i64 %1847, 84
  %1849 = load i64, i64* %PC
  %1850 = add i64 %1849, 3
  store i64 %1850, i64* %PC
  %1851 = inttoptr i64 %1848 to i32*
  %1852 = load i32, i32* %1851
  %1853 = zext i32 %1852 to i64
  store i64 %1853, i64* %RAX, align 8, !tbaa !2451
  %1854 = load i64, i64* %RAX
  %1855 = load i64, i64* %PC
  %1856 = add i64 %1855, 3
  store i64 %1856, i64* %PC
  %1857 = trunc i64 %1854 to i32
  %1858 = add i32 1, %1857
  %1859 = zext i32 %1858 to i64
  store i64 %1859, i64* %RAX, align 8, !tbaa !2451
  %1860 = icmp ult i32 %1858, %1857
  %1861 = icmp ult i32 %1858, 1
  %1862 = or i1 %1860, %1861
  %1863 = zext i1 %1862 to i8
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1863, i8* %1864, align 1, !tbaa !2428
  %1865 = and i32 %1858, 255
  %1866 = call i32 @llvm.ctpop.i32(i32 %1865) #16
  %1867 = trunc i32 %1866 to i8
  %1868 = and i8 %1867, 1
  %1869 = xor i8 %1868, 1
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1869, i8* %1870, align 1, !tbaa !2445
  %1871 = xor i64 1, %1854
  %1872 = trunc i64 %1871 to i32
  %1873 = xor i32 %1872, %1858
  %1874 = lshr i32 %1873, 4
  %1875 = trunc i32 %1874 to i8
  %1876 = and i8 %1875, 1
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1876, i8* %1877, align 1, !tbaa !2446
  %1878 = icmp eq i32 %1858, 0
  %1879 = zext i1 %1878 to i8
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1879, i8* %1880, align 1, !tbaa !2447
  %1881 = lshr i32 %1858, 31
  %1882 = trunc i32 %1881 to i8
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1882, i8* %1883, align 1, !tbaa !2448
  %1884 = lshr i32 %1857, 31
  %1885 = xor i32 %1881, %1884
  %1886 = add nuw nsw i32 %1885, %1881
  %1887 = icmp eq i32 %1886, 2
  %1888 = zext i1 %1887 to i8
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1888, i8* %1889, align 1, !tbaa !2449
  %1890 = load i64, i64* %RBP
  %1891 = sub i64 %1890, 84
  %1892 = load i32, i32* %EAX
  %1893 = zext i32 %1892 to i64
  %1894 = load i64, i64* %PC
  %1895 = add i64 %1894, 3
  store i64 %1895, i64* %PC
  %1896 = inttoptr i64 %1891 to i32*
  store i32 %1892, i32* %1896
  %1897 = load i64, i64* %PC
  %1898 = sub i64 %1897, 60
  %1899 = load i64, i64* %PC
  %1900 = add i64 %1899, 5
  store i64 %1900, i64* %PC
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1898, i64* %1901, align 8, !tbaa !2451
  br label %block_400f22

block_400e80:                                     ; preds = %block_400f08, %block_400e79
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.3, %block_400e79 ], [ %MEMORY.4, %block_400f08 ]
  %1902 = load i64, i64* %RBP
  %1903 = sub i64 %1902, 84
  %1904 = load i64, i64* %PC
  %1905 = add i64 %1904, 3
  store i64 %1905, i64* %PC
  %1906 = inttoptr i64 %1903 to i32*
  %1907 = load i32, i32* %1906
  %1908 = zext i32 %1907 to i64
  store i64 %1908, i64* %RAX, align 8, !tbaa !2451
  %1909 = load i32, i32* %EAX
  %1910 = zext i32 %1909 to i64
  %1911 = load i64, i64* %RBP
  %1912 = sub i64 %1911, 20
  %1913 = load i64, i64* %PC
  %1914 = add i64 %1913, 3
  store i64 %1914, i64* %PC
  %1915 = inttoptr i64 %1912 to i32*
  %1916 = load i32, i32* %1915
  %1917 = sub i32 %1909, %1916
  %1918 = icmp ult i32 %1909, %1916
  %1919 = zext i1 %1918 to i8
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1919, i8* %1920, align 1, !tbaa !2428
  %1921 = and i32 %1917, 255
  %1922 = call i32 @llvm.ctpop.i32(i32 %1921) #16
  %1923 = trunc i32 %1922 to i8
  %1924 = and i8 %1923, 1
  %1925 = xor i8 %1924, 1
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1925, i8* %1926, align 1, !tbaa !2445
  %1927 = xor i32 %1916, %1909
  %1928 = xor i32 %1927, %1917
  %1929 = lshr i32 %1928, 4
  %1930 = trunc i32 %1929 to i8
  %1931 = and i8 %1930, 1
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1931, i8* %1932, align 1, !tbaa !2446
  %1933 = icmp eq i32 %1917, 0
  %1934 = zext i1 %1933 to i8
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1934, i8* %1935, align 1, !tbaa !2447
  %1936 = lshr i32 %1917, 31
  %1937 = trunc i32 %1936 to i8
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1937, i8* %1938, align 1, !tbaa !2448
  %1939 = lshr i32 %1909, 31
  %1940 = lshr i32 %1916, 31
  %1941 = xor i32 %1940, %1939
  %1942 = xor i32 %1936, %1939
  %1943 = add nuw nsw i32 %1942, %1941
  %1944 = icmp eq i32 %1943, 2
  %1945 = zext i1 %1944 to i8
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1945, i8* %1946, align 1, !tbaa !2449
  %1947 = load i64, i64* %PC
  %1948 = add i64 %1947, 149
  %1949 = load i64, i64* %PC
  %1950 = add i64 %1949, 6
  %1951 = load i64, i64* %PC
  %1952 = add i64 %1951, 6
  store i64 %1952, i64* %PC
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1954 = load i8, i8* %1953, align 1, !tbaa !2448
  %1955 = icmp ne i8 %1954, 0
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1957 = load i8, i8* %1956, align 1, !tbaa !2449
  %1958 = icmp ne i8 %1957, 0
  %1959 = xor i1 %1955, %1958
  %1960 = xor i1 %1959, true
  %1961 = zext i1 %1960 to i8
  store i8 %1961, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1963 = select i1 %1959, i64 %1950, i64 %1948
  store i64 %1963, i64* %1962, align 8, !tbaa !2451
  %1964 = load i8, i8* %BRANCH_TAKEN
  %1965 = icmp eq i8 %1964, 1
  br i1 %1965, label %block_400f1b, label %block_400e8c
}

; Function Attrs: noinline
define %struct.Memory* @sub_400800_xmalloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400800:
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
  %41 = load i64, i64* %40, align 8, !tbaa !2451
  %42 = add i64 %41, -8
  %43 = inttoptr i64 %42 to i64*
  store i64 %37, i64* %43
  store i64 %42, i64* %40, align 8, !tbaa !2451
  %44 = load i64, i64* %RSP
  %45 = load i64, i64* %PC
  %46 = add i64 %45, 3
  store i64 %46, i64* %PC
  store i64 %44, i64* %RBP, align 8, !tbaa !2451
  %47 = load i64, i64* %RSP
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 4
  store i64 %49, i64* %PC
  %50 = sub i64 %47, 32
  store i64 %50, i64* %RSP, align 8, !tbaa !2451
  %51 = icmp ult i64 %47, 32
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %52, i8* %53, align 1, !tbaa !2428
  %54 = trunc i64 %50 to i32
  %55 = and i32 %54, 255
  %56 = call i32 @llvm.ctpop.i32(i32 %55) #16
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  %59 = xor i8 %58, 1
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %59, i8* %60, align 1, !tbaa !2445
  %61 = xor i64 32, %47
  %62 = xor i64 %61, %50
  %63 = lshr i64 %62, 4
  %64 = trunc i64 %63 to i8
  %65 = and i8 %64, 1
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %65, i8* %66, align 1, !tbaa !2446
  %67 = icmp eq i64 %50, 0
  %68 = zext i1 %67 to i8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %68, i8* %69, align 1, !tbaa !2447
  %70 = lshr i64 %50, 63
  %71 = trunc i64 %70 to i8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %71, i8* %72, align 1, !tbaa !2448
  %73 = lshr i64 %47, 63
  %74 = xor i64 %70, %73
  %75 = add nuw nsw i64 %74, %73
  %76 = icmp eq i64 %75, 2
  %77 = zext i1 %76 to i8
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %77, i8* %78, align 1, !tbaa !2449
  %79 = load i64, i64* %RBP
  %80 = sub i64 %79, 16
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 4
  store i64 %82, i64* %PC
  store i64 %80, i64* %RAX, align 8, !tbaa !2451
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 5
  store i64 %84, i64* %PC
  store i64 32, i64* %RCX, align 8, !tbaa !2451
  %85 = load i32, i32* %ECX
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 2
  store i64 %88, i64* %PC
  %89 = and i64 %86, 4294967295
  store i64 %89, i64* %RSI, align 8, !tbaa !2451
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
  store i64 %106, i64* %RDX, align 8, !tbaa !2451
  %107 = load i64, i64* %RAX
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 3
  store i64 %109, i64* %PC
  store i64 %107, i64* %RDI, align 8, !tbaa !2451
  %110 = load i64, i64* %PC
  %111 = sub i64 %110, 646
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 5
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 5
  store i64 %115, i64* %PC
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %117 = load i64, i64* %116, align 8, !tbaa !2451
  %118 = add i64 %117, -8
  %119 = inttoptr i64 %118 to i64*
  store i64 %113, i64* %119
  store i64 %118, i64* %116, align 8, !tbaa !2451
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %111, i64* %120, align 8, !tbaa !2451
  %121 = load i64, i64* %PC
  %122 = call %struct.Memory* @ext_602108_posix_memalign(%struct.State* %0, i64 %121, %struct.Memory* %2)
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
  store i8 0, i8* %136, align 1, !tbaa !2428
  %137 = trunc i64 %135 to i32
  %138 = and i32 %137, 255
  %139 = call i32 @llvm.ctpop.i32(i32 %138) #16
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %142, i8* %143, align 1, !tbaa !2445
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %144, align 1, !tbaa !2446
  %145 = icmp eq i64 %135, 0
  %146 = zext i1 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %146, i8* %147, align 1, !tbaa !2447
  %148 = lshr i64 %135, 63
  %149 = trunc i64 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %149, i8* %150, align 1, !tbaa !2448
  %151 = lshr i64 %135, 63
  %152 = xor i64 %148, %151
  %153 = add nuw nsw i64 %152, %151
  %154 = icmp eq i64 %153, 2
  %155 = zext i1 %154 to i8
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %155, i8* %156, align 1, !tbaa !2449
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 16
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 6
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 6
  store i64 %162, i64* %PC
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %164 = load i8, i8* %163, align 1, !tbaa !2447
  store i8 %164, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %166 = icmp ne i8 %164, 0
  %167 = select i1 %166, i64 %158, i64 %160
  store i64 %167, i64* %165, align 8, !tbaa !2451
  %168 = load i8, i8* %BRANCH_TAKEN
  %169 = icmp eq i8 %168, 1
  br i1 %169, label %block_400843, label %block_400839

block_400843:                                     ; preds = %block_400839, %block_400800
  %MEMORY.0 = phi %struct.Memory* [ %122, %block_400800 ], [ %122, %block_400839 ]
  %170 = load i64, i64* %PC
  %171 = add i64 %170, 10
  store i64 %171, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 103), i64* %RSI, align 8, !tbaa !2451
  %172 = load i64, i64* %PC
  %173 = add i64 %172, 8
  store i64 %173, i64* %PC
  %174 = load i64, i64* @stderr
  store i64 %174, i64* %RDI, align 8, !tbaa !2451
  %175 = load i64, i64* %PC
  %176 = add i64 %175, 2
  store i64 %176, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2450
  %177 = load i64, i64* %PC
  %178 = sub i64 %177, 727
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 5
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 5
  store i64 %182, i64* %PC
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %184 = load i64, i64* %183, align 8, !tbaa !2451
  %185 = add i64 %184, -8
  %186 = inttoptr i64 %185 to i64*
  store i64 %180, i64* %186
  store i64 %185, i64* %183, align 8, !tbaa !2451
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %178, i64* %187, align 8, !tbaa !2451
  %188 = load i64, i64* %PC
  %189 = call %struct.Memory* @ext_6020c0_fprintf(%struct.State* %0, i64 %188, %struct.Memory* %MEMORY.0)
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 5
  store i64 %191, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2451
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
  %206 = load i64, i64* %205, align 8, !tbaa !2451
  %207 = add i64 %206, -8
  %208 = inttoptr i64 %207 to i64*
  store i64 %202, i64* %208
  store i64 %207, i64* %205, align 8, !tbaa !2451
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %200, i64* %209, align 8, !tbaa !2451
  %210 = load i64, i64* %PC
  %211 = call %struct.Memory* @ext_6020c8_exit(%struct.State* %0, i64 %210, %struct.Memory* %189)
  %212 = load i64, i64* %PC
  %213 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %212, %struct.Memory* %211)
  ret %struct.Memory* %213

block_400839:                                     ; preds = %block_400800
  %214 = load i64, i64* %RBP
  %215 = sub i64 %214, 20
  %216 = load i64, i64* %PC
  %217 = add i64 %216, 4
  store i64 %217, i64* %PC
  %218 = inttoptr i64 %215 to i32*
  %219 = load i32, i32* %218
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %220, align 1, !tbaa !2428
  %221 = and i32 %219, 255
  %222 = call i32 @llvm.ctpop.i32(i32 %221) #16
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %225, i8* %226, align 1, !tbaa !2445
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %227, align 1, !tbaa !2446
  %228 = icmp eq i32 %219, 0
  %229 = zext i1 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %229, i8* %230, align 1, !tbaa !2447
  %231 = lshr i32 %219, 31
  %232 = trunc i32 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %232, i8* %233, align 1, !tbaa !2448
  %234 = lshr i32 %219, 31
  %235 = xor i32 %231, %234
  %236 = add nuw nsw i32 %235, %234
  %237 = icmp eq i32 %236, 2
  %238 = zext i1 %237 to i8
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %238, i8* %239, align 1, !tbaa !2449
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 44
  %242 = load i64, i64* %PC
  %243 = add i64 %242, 6
  %244 = load i64, i64* %PC
  %245 = add i64 %244, 6
  store i64 %245, i64* %PC
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %247 = load i8, i8* %246, align 1, !tbaa !2447
  store i8 %247, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %249 = icmp ne i8 %247, 0
  %250 = select i1 %249, i64 %241, i64 %243
  store i64 %250, i64* %248, align 8, !tbaa !2451
  %251 = load i8, i8* %BRANCH_TAKEN
  %252 = icmp eq i8 %251, 1
  br i1 %252, label %block_400869, label %block_400843

block_400869:                                     ; preds = %block_400839
  %253 = load i64, i64* %RBP
  %254 = sub i64 %253, 16
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 4
  store i64 %256, i64* %PC
  %257 = inttoptr i64 %254 to i64*
  %258 = load i64, i64* %257
  store i64 %258, i64* %RAX, align 8, !tbaa !2451
  %259 = load i64, i64* %RSP
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 4
  store i64 %261, i64* %PC
  %262 = add i64 32, %259
  store i64 %262, i64* %RSP, align 8, !tbaa !2451
  %263 = icmp ult i64 %262, %259
  %264 = icmp ult i64 %262, 32
  %265 = or i1 %263, %264
  %266 = zext i1 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %266, i8* %267, align 1, !tbaa !2428
  %268 = trunc i64 %262 to i32
  %269 = and i32 %268, 255
  %270 = call i32 @llvm.ctpop.i32(i32 %269) #16
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  %273 = xor i8 %272, 1
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %273, i8* %274, align 1, !tbaa !2445
  %275 = xor i64 32, %259
  %276 = xor i64 %275, %262
  %277 = lshr i64 %276, 4
  %278 = trunc i64 %277 to i8
  %279 = and i8 %278, 1
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %279, i8* %280, align 1, !tbaa !2446
  %281 = icmp eq i64 %262, 0
  %282 = zext i1 %281 to i8
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %282, i8* %283, align 1, !tbaa !2447
  %284 = lshr i64 %262, 63
  %285 = trunc i64 %284 to i8
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %285, i8* %286, align 1, !tbaa !2448
  %287 = lshr i64 %259, 63
  %288 = xor i64 %284, %287
  %289 = add nuw nsw i64 %288, %284
  %290 = icmp eq i64 %289, 2
  %291 = zext i1 %290 to i8
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %291, i8* %292, align 1, !tbaa !2449
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 1
  store i64 %294, i64* %PC
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %296 = load i64, i64* %295, align 8, !tbaa !2451
  %297 = add i64 %296, 8
  %298 = inttoptr i64 %296 to i64*
  %299 = load i64, i64* %298
  store i64 %299, i64* %RBP, align 8, !tbaa !2451
  store i64 %297, i64* %295, align 8, !tbaa !2451
  %300 = load i64, i64* %PC
  %301 = add i64 %300, 1
  store i64 %301, i64* %PC
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %304 = load i64, i64* %303, align 8, !tbaa !2451
  %305 = inttoptr i64 %304 to i64*
  %306 = load i64, i64* %305
  store i64 %306, i64* %302, align 8, !tbaa !2451
  %307 = add i64 %304, 8
  store i64 %307, i64* %303, align 8, !tbaa !2451
  ret %struct.Memory* %122
}

; Function Attrs: noinline
define %struct.Memory* @sub_401420___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401420:
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
  store i64 ptrtoint (%seg_601df0__init_array_type* @seg_601df0__init_array to i64), i64* %R12, align 8, !tbaa !2451
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
  store i64 add (i64 ptrtoint (%seg_601df0__init_array_type* @seg_601df0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2451
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
  %200 = sub i64 %199, 3884
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
  %211 = call %struct.Memory* @sub_400520__init_proc_renamed_(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  br i1 %245, label %block_401476, label %block_401456

block_401476:                                     ; preds = %block_401460, %block_401420
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_401420 ], [ %387, %block_401460 ]
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

block_401456:                                     ; preds = %block_401420
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
  br label %block_401460

block_401460:                                     ; preds = %block_401460, %block_401456
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_401456 ], [ %387, %block_401460 ]
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
  br i1 %470, label %block_401460, label %block_401476
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005e0__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005e0:
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
define %struct.Memory* @sub_401490___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401490:
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
define %struct.Memory* @sub_400880_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400880:
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
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RBX = bitcast %union.anon* %20 to i64*
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 17
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %R8 = bitcast %union.anon* %41 to i64*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 19
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %R9 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 21
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R10 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 23
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %R11 = bitcast %union.anon* %50 to i64*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 29
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %R14 = bitcast %union.anon* %53 to i64*
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %55 = getelementptr inbounds %struct.GPR, %struct.GPR* %54, i32 0, i32 31
  %56 = getelementptr inbounds %struct.Reg, %struct.Reg* %55, i32 0, i32 0
  %R15 = bitcast %union.anon* %56 to i64*
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %58 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %57, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %58 to %"class.std::bitset"*
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %60 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %59, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %60 to %"class.std::bitset"*
  %61 = load i64, i64* %RBP
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8, !tbaa !2451
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %61, i64* %67
  store i64 %66, i64* %64, align 8, !tbaa !2451
  %68 = load i64, i64* %RSP
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 3
  store i64 %70, i64* %PC
  store i64 %68, i64* %RBP, align 8, !tbaa !2451
  %71 = load i64, i64* %R15
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 2
  store i64 %73, i64* %PC
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %75 = load i64, i64* %74, align 8, !tbaa !2451
  %76 = add i64 %75, -8
  %77 = inttoptr i64 %76 to i64*
  store i64 %71, i64* %77
  store i64 %76, i64* %74, align 8, !tbaa !2451
  %78 = load i64, i64* %R14
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 2
  store i64 %80, i64* %PC
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %82 = load i64, i64* %81, align 8, !tbaa !2451
  %83 = add i64 %82, -8
  %84 = inttoptr i64 %83 to i64*
  store i64 %78, i64* %84
  store i64 %83, i64* %81, align 8, !tbaa !2451
  %85 = load i64, i64* %RBX
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 1
  store i64 %87, i64* %PC
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %89 = load i64, i64* %88, align 8, !tbaa !2451
  %90 = add i64 %89, -8
  %91 = inttoptr i64 %90 to i64*
  store i64 %85, i64* %91
  store i64 %90, i64* %88, align 8, !tbaa !2451
  %92 = load i64, i64* %RSP
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 7
  store i64 %94, i64* %PC
  %95 = sub i64 %92, 184
  store i64 %95, i64* %RSP, align 8, !tbaa !2451
  %96 = icmp ult i64 %92, 184
  %97 = zext i1 %96 to i8
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %97, i8* %98, align 1, !tbaa !2428
  %99 = trunc i64 %95 to i32
  %100 = and i32 %99, 255
  %101 = call i32 @llvm.ctpop.i32(i32 %100) #16
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %104, i8* %105, align 1, !tbaa !2445
  %106 = xor i64 184, %92
  %107 = xor i64 %106, %95
  %108 = lshr i64 %107, 4
  %109 = trunc i64 %108 to i8
  %110 = and i8 %109, 1
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %110, i8* %111, align 1, !tbaa !2446
  %112 = icmp eq i64 %95, 0
  %113 = zext i1 %112 to i8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %113, i8* %114, align 1, !tbaa !2447
  %115 = lshr i64 %95, 63
  %116 = trunc i64 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %116, i8* %117, align 1, !tbaa !2448
  %118 = lshr i64 %92, 63
  %119 = xor i64 %115, %118
  %120 = add nuw nsw i64 %119, %118
  %121 = icmp eq i64 %120, 2
  %122 = zext i1 %121 to i8
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %122, i8* %123, align 1, !tbaa !2449
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 5
  store i64 %125, i64* %PC
  store i64 16000000, i64* %RAX, align 8, !tbaa !2451
  %126 = load i32, i32* %EAX
  %127 = zext i32 %126 to i64
  %128 = load i64, i64* %PC
  %129 = add i64 %128, 2
  store i64 %129, i64* %PC
  %130 = and i64 %127, 4294967295
  store i64 %130, i64* %RCX, align 8, !tbaa !2451
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 5
  store i64 %132, i64* %PC
  store i64 8, i64* %RAX, align 8, !tbaa !2451
  %133 = load i64, i64* %RBP
  %134 = sub i64 %133, 28
  %135 = load i64, i64* %PC
  %136 = add i64 %135, 7
  store i64 %136, i64* %PC
  %137 = inttoptr i64 %134 to i32*
  store i32 0, i32* %137
  %138 = load i64, i64* %RBP
  %139 = sub i64 %138, 32
  %140 = load i32, i32* %EDI
  %141 = zext i32 %140 to i64
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 3
  store i64 %143, i64* %PC
  %144 = inttoptr i64 %139 to i32*
  store i32 %140, i32* %144
  %145 = load i64, i64* %RBP
  %146 = sub i64 %145, 40
  %147 = load i64, i64* %RSI
  %148 = load i64, i64* %PC
  %149 = add i64 %148, 4
  store i64 %149, i64* %PC
  %150 = inttoptr i64 %146 to i64*
  store i64 %147, i64* %150
  %151 = load i64, i64* %RBP
  %152 = sub i64 %151, 44
  %153 = load i64, i64* %PC
  %154 = add i64 %153, 7
  store i64 %154, i64* %PC
  %155 = inttoptr i64 %152 to i32*
  store i32 4000, i32* %155
  %156 = load i64, i64* %RCX
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 3
  store i64 %158, i64* %PC
  store i64 %156, i64* %RDI, align 8, !tbaa !2451
  %159 = load i32, i32* %EAX
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 2
  store i64 %162, i64* %PC
  %163 = and i64 %160, 4294967295
  store i64 %163, i64* %RSI, align 8, !tbaa !2451
  %164 = load i64, i64* %PC
  %165 = sub i64 %164, 246
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 5
  %168 = load i64, i64* %PC
  %169 = add i64 %168, 5
  store i64 %169, i64* %PC
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %171 = load i64, i64* %170, align 8, !tbaa !2451
  %172 = add i64 %171, -8
  %173 = inttoptr i64 %172 to i64*
  store i64 %167, i64* %173
  store i64 %172, i64* %170, align 8, !tbaa !2451
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %165, i64* %174, align 8, !tbaa !2451
  %175 = load i64, i64* %PC
  %176 = call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* %0, i64 %175, %struct.Memory* %2)
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 5
  store i64 %178, i64* %PC
  store i64 16000000, i64* %RSI, align 8, !tbaa !2451
  %179 = load i32, i32* %ESI
  %180 = zext i32 %179 to i64
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 2
  store i64 %182, i64* %PC
  %183 = and i64 %180, 4294967295
  store i64 %183, i64* %RDI, align 8, !tbaa !2451
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 5
  store i64 %185, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2451
  %186 = load i64, i64* %RBP
  %187 = sub i64 %186, 72
  %188 = load i64, i64* %RAX
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 4
  store i64 %190, i64* %PC
  %191 = inttoptr i64 %187 to i64*
  store i64 %188, i64* %191
  %192 = load i64, i64* %PC
  %193 = sub i64 %192, 267
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 5
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 5
  store i64 %197, i64* %PC
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %199 = load i64, i64* %198, align 8, !tbaa !2451
  %200 = add i64 %199, -8
  %201 = inttoptr i64 %200 to i64*
  store i64 %195, i64* %201
  store i64 %200, i64* %198, align 8, !tbaa !2451
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %193, i64* %202, align 8, !tbaa !2451
  %203 = load i64, i64* %PC
  %204 = call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* %0, i64 %203, %struct.Memory* %176)
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 5
  store i64 %206, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2451
  %207 = load i32, i32* %ESI
  %208 = zext i32 %207 to i64
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 2
  store i64 %210, i64* %PC
  %211 = and i64 %208, 4294967295
  store i64 %211, i64* %RDI, align 8, !tbaa !2451
  %212 = load i64, i64* %PC
  %213 = add i64 %212, 5
  store i64 %213, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2451
  %214 = load i64, i64* %RBP
  %215 = sub i64 %214, 80
  %216 = load i64, i64* %RAX
  %217 = load i64, i64* %PC
  %218 = add i64 %217, 4
  store i64 %218, i64* %PC
  %219 = inttoptr i64 %215 to i64*
  store i64 %216, i64* %219
  %220 = load i64, i64* %PC
  %221 = sub i64 %220, 288
  %222 = load i64, i64* %PC
  %223 = add i64 %222, 5
  %224 = load i64, i64* %PC
  %225 = add i64 %224, 5
  store i64 %225, i64* %PC
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %227 = load i64, i64* %226, align 8, !tbaa !2451
  %228 = add i64 %227, -8
  %229 = inttoptr i64 %228 to i64*
  store i64 %223, i64* %229
  store i64 %228, i64* %226, align 8, !tbaa !2451
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %221, i64* %230, align 8, !tbaa !2451
  %231 = load i64, i64* %PC
  %232 = call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* %0, i64 %231, %struct.Memory* %204)
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 5
  store i64 %234, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2451
  %235 = load i32, i32* %ESI
  %236 = zext i32 %235 to i64
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 2
  store i64 %238, i64* %PC
  %239 = and i64 %236, 4294967295
  store i64 %239, i64* %RDI, align 8, !tbaa !2451
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 5
  store i64 %241, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2451
  %242 = load i64, i64* %RBP
  %243 = sub i64 %242, 88
  %244 = load i64, i64* %RAX
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 4
  store i64 %246, i64* %PC
  %247 = inttoptr i64 %243 to i64*
  store i64 %244, i64* %247
  %248 = load i64, i64* %PC
  %249 = sub i64 %248, 309
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 5
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 5
  store i64 %253, i64* %PC
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %255 = load i64, i64* %254, align 8, !tbaa !2451
  %256 = add i64 %255, -8
  %257 = inttoptr i64 %256 to i64*
  store i64 %251, i64* %257
  store i64 %256, i64* %254, align 8, !tbaa !2451
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %249, i64* %258, align 8, !tbaa !2451
  %259 = load i64, i64* %PC
  %260 = call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* %0, i64 %259, %struct.Memory* %232)
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 5
  store i64 %262, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2451
  %263 = load i32, i32* %ESI
  %264 = zext i32 %263 to i64
  %265 = load i64, i64* %PC
  %266 = add i64 %265, 2
  store i64 %266, i64* %PC
  %267 = and i64 %264, 4294967295
  store i64 %267, i64* %RDI, align 8, !tbaa !2451
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 5
  store i64 %269, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2451
  %270 = load i64, i64* %RBP
  %271 = sub i64 %270, 96
  %272 = load i64, i64* %RAX
  %273 = load i64, i64* %PC
  %274 = add i64 %273, 4
  store i64 %274, i64* %PC
  %275 = inttoptr i64 %271 to i64*
  store i64 %272, i64* %275
  %276 = load i64, i64* %PC
  %277 = sub i64 %276, 330
  %278 = load i64, i64* %PC
  %279 = add i64 %278, 5
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 5
  store i64 %281, i64* %PC
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %283 = load i64, i64* %282, align 8, !tbaa !2451
  %284 = add i64 %283, -8
  %285 = inttoptr i64 %284 to i64*
  store i64 %279, i64* %285
  store i64 %284, i64* %282, align 8, !tbaa !2451
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %277, i64* %286, align 8, !tbaa !2451
  %287 = load i64, i64* %PC
  %288 = call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* %0, i64 %287, %struct.Memory* %260)
  %289 = load i64, i64* %PC
  %290 = add i64 %289, 5
  store i64 %290, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2451
  %291 = load i32, i32* %ESI
  %292 = zext i32 %291 to i64
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 2
  store i64 %294, i64* %PC
  %295 = and i64 %292, 4294967295
  store i64 %295, i64* %RDI, align 8, !tbaa !2451
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 5
  store i64 %297, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2451
  %298 = load i64, i64* %RBP
  %299 = sub i64 %298, 104
  %300 = load i64, i64* %RAX
  %301 = load i64, i64* %PC
  %302 = add i64 %301, 4
  store i64 %302, i64* %PC
  %303 = inttoptr i64 %299 to i64*
  store i64 %300, i64* %303
  %304 = load i64, i64* %PC
  %305 = sub i64 %304, 351
  %306 = load i64, i64* %PC
  %307 = add i64 %306, 5
  %308 = load i64, i64* %PC
  %309 = add i64 %308, 5
  store i64 %309, i64* %PC
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %311 = load i64, i64* %310, align 8, !tbaa !2451
  %312 = add i64 %311, -8
  %313 = inttoptr i64 %312 to i64*
  store i64 %307, i64* %313
  store i64 %312, i64* %310, align 8, !tbaa !2451
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %305, i64* %314, align 8, !tbaa !2451
  %315 = load i64, i64* %PC
  %316 = call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* %0, i64 %315, %struct.Memory* %288)
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 5
  store i64 %318, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2451
  %319 = load i32, i32* %ESI
  %320 = zext i32 %319 to i64
  %321 = load i64, i64* %PC
  %322 = add i64 %321, 2
  store i64 %322, i64* %PC
  %323 = and i64 %320, 4294967295
  store i64 %323, i64* %RDI, align 8, !tbaa !2451
  %324 = load i64, i64* %PC
  %325 = add i64 %324, 5
  store i64 %325, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2451
  %326 = load i64, i64* %RBP
  %327 = sub i64 %326, 112
  %328 = load i64, i64* %RAX
  %329 = load i64, i64* %PC
  %330 = add i64 %329, 4
  store i64 %330, i64* %PC
  %331 = inttoptr i64 %327 to i64*
  store i64 %328, i64* %331
  %332 = load i64, i64* %PC
  %333 = sub i64 %332, 372
  %334 = load i64, i64* %PC
  %335 = add i64 %334, 5
  %336 = load i64, i64* %PC
  %337 = add i64 %336, 5
  store i64 %337, i64* %PC
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %339 = load i64, i64* %338, align 8, !tbaa !2451
  %340 = add i64 %339, -8
  %341 = inttoptr i64 %340 to i64*
  store i64 %335, i64* %341
  store i64 %340, i64* %338, align 8, !tbaa !2451
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %333, i64* %342, align 8, !tbaa !2451
  %343 = load i64, i64* %PC
  %344 = call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* %0, i64 %343, %struct.Memory* %316)
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 5
  store i64 %346, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2451
  %347 = load i32, i32* %ESI
  %348 = zext i32 %347 to i64
  %349 = load i64, i64* %PC
  %350 = add i64 %349, 2
  store i64 %350, i64* %PC
  %351 = and i64 %348, 4294967295
  store i64 %351, i64* %RDI, align 8, !tbaa !2451
  %352 = load i64, i64* %PC
  %353 = add i64 %352, 5
  store i64 %353, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2451
  %354 = load i64, i64* %RBP
  %355 = sub i64 %354, 120
  %356 = load i64, i64* %RAX
  %357 = load i64, i64* %PC
  %358 = add i64 %357, 4
  store i64 %358, i64* %PC
  %359 = inttoptr i64 %355 to i64*
  store i64 %356, i64* %359
  %360 = load i64, i64* %PC
  %361 = sub i64 %360, 393
  %362 = load i64, i64* %PC
  %363 = add i64 %362, 5
  %364 = load i64, i64* %PC
  %365 = add i64 %364, 5
  store i64 %365, i64* %PC
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %367 = load i64, i64* %366, align 8, !tbaa !2451
  %368 = add i64 %367, -8
  %369 = inttoptr i64 %368 to i64*
  store i64 %363, i64* %369
  store i64 %368, i64* %366, align 8, !tbaa !2451
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %361, i64* %370, align 8, !tbaa !2451
  %371 = load i64, i64* %PC
  %372 = call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* %0, i64 %371, %struct.Memory* %344)
  %373 = load i64, i64* %PC
  %374 = add i64 %373, 5
  store i64 %374, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2451
  %375 = load i32, i32* %ESI
  %376 = zext i32 %375 to i64
  %377 = load i64, i64* %PC
  %378 = add i64 %377, 2
  store i64 %378, i64* %PC
  %379 = and i64 %376, 4294967295
  store i64 %379, i64* %RDI, align 8, !tbaa !2451
  %380 = load i64, i64* %PC
  %381 = add i64 %380, 5
  store i64 %381, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2451
  %382 = load i64, i64* %RBP
  %383 = sub i64 %382, 128
  %384 = load i64, i64* %RAX
  %385 = load i64, i64* %PC
  %386 = add i64 %385, 4
  store i64 %386, i64* %PC
  %387 = inttoptr i64 %383 to i64*
  store i64 %384, i64* %387
  %388 = load i64, i64* %PC
  %389 = sub i64 %388, 414
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 5
  %392 = load i64, i64* %PC
  %393 = add i64 %392, 5
  store i64 %393, i64* %PC
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %395 = load i64, i64* %394, align 8, !tbaa !2451
  %396 = add i64 %395, -8
  %397 = inttoptr i64 %396 to i64*
  store i64 %391, i64* %397
  store i64 %396, i64* %394, align 8, !tbaa !2451
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %389, i64* %398, align 8, !tbaa !2451
  %399 = load i64, i64* %PC
  %400 = call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* %0, i64 %399, %struct.Memory* %372)
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 5
  store i64 %402, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2451
  %403 = load i32, i32* %ESI
  %404 = zext i32 %403 to i64
  %405 = load i64, i64* %PC
  %406 = add i64 %405, 2
  store i64 %406, i64* %PC
  %407 = and i64 %404, 4294967295
  store i64 %407, i64* %RDI, align 8, !tbaa !2451
  %408 = load i64, i64* %PC
  %409 = add i64 %408, 5
  store i64 %409, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2451
  %410 = load i64, i64* %RBP
  %411 = sub i64 %410, 136
  %412 = load i64, i64* %RAX
  %413 = load i64, i64* %PC
  %414 = add i64 %413, 7
  store i64 %414, i64* %PC
  %415 = inttoptr i64 %411 to i64*
  store i64 %412, i64* %415
  %416 = load i64, i64* %PC
  %417 = sub i64 %416, 438
  %418 = load i64, i64* %PC
  %419 = add i64 %418, 5
  %420 = load i64, i64* %PC
  %421 = add i64 %420, 5
  store i64 %421, i64* %PC
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %423 = load i64, i64* %422, align 8, !tbaa !2451
  %424 = add i64 %423, -8
  %425 = inttoptr i64 %424 to i64*
  store i64 %419, i64* %425
  store i64 %424, i64* %422, align 8, !tbaa !2451
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %417, i64* %426, align 8, !tbaa !2451
  %427 = load i64, i64* %PC
  %428 = call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* %0, i64 %427, %struct.Memory* %400)
  %429 = load i64, i64* %PC
  %430 = add i64 %429, 5
  store i64 %430, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2451
  %431 = load i32, i32* %ESI
  %432 = zext i32 %431 to i64
  %433 = load i64, i64* %PC
  %434 = add i64 %433, 2
  store i64 %434, i64* %PC
  %435 = and i64 %432, 4294967295
  store i64 %435, i64* %RDI, align 8, !tbaa !2451
  %436 = load i64, i64* %PC
  %437 = add i64 %436, 5
  store i64 %437, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2451
  %438 = load i64, i64* %RBP
  %439 = sub i64 %438, 144
  %440 = load i64, i64* %RAX
  %441 = load i64, i64* %PC
  %442 = add i64 %441, 7
  store i64 %442, i64* %PC
  %443 = inttoptr i64 %439 to i64*
  store i64 %440, i64* %443
  %444 = load i64, i64* %PC
  %445 = sub i64 %444, 462
  %446 = load i64, i64* %PC
  %447 = add i64 %446, 5
  %448 = load i64, i64* %PC
  %449 = add i64 %448, 5
  store i64 %449, i64* %PC
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %451 = load i64, i64* %450, align 8, !tbaa !2451
  %452 = add i64 %451, -8
  %453 = inttoptr i64 %452 to i64*
  store i64 %447, i64* %453
  store i64 %452, i64* %450, align 8, !tbaa !2451
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %445, i64* %454, align 8, !tbaa !2451
  %455 = load i64, i64* %PC
  %456 = call %struct.Memory* @sub_4007c0_polybench_alloc_data_renamed_(%struct.State* %0, i64 %455, %struct.Memory* %428)
  %457 = load i64, i64* %RBP
  %458 = sub i64 %457, 56
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 4
  store i64 %460, i64* %PC
  store i64 %458, i64* %RSI, align 8, !tbaa !2451
  %461 = load i64, i64* %RBP
  %462 = sub i64 %461, 64
  %463 = load i64, i64* %PC
  %464 = add i64 %463, 4
  store i64 %464, i64* %PC
  store i64 %462, i64* %RDX, align 8, !tbaa !2451
  %465 = load i64, i64* %RBP
  %466 = sub i64 %465, 152
  %467 = load i64, i64* %RAX
  %468 = load i64, i64* %PC
  %469 = add i64 %468, 7
  store i64 %469, i64* %PC
  %470 = inttoptr i64 %466 to i64*
  store i64 %467, i64* %470
  %471 = load i64, i64* %RBP
  %472 = sub i64 %471, 44
  %473 = load i64, i64* %PC
  %474 = add i64 %473, 3
  store i64 %474, i64* %PC
  %475 = inttoptr i64 %472 to i32*
  %476 = load i32, i32* %475
  %477 = zext i32 %476 to i64
  store i64 %477, i64* %RDI, align 8, !tbaa !2451
  %478 = load i64, i64* %RBP
  %479 = sub i64 %478, 72
  %480 = load i64, i64* %PC
  %481 = add i64 %480, 4
  store i64 %481, i64* %PC
  %482 = inttoptr i64 %479 to i64*
  %483 = load i64, i64* %482
  store i64 %483, i64* %RCX, align 8, !tbaa !2451
  %484 = load i64, i64* %RBP
  %485 = sub i64 %484, 88
  %486 = load i64, i64* %PC
  %487 = add i64 %486, 4
  store i64 %487, i64* %PC
  %488 = inttoptr i64 %485 to i64*
  %489 = load i64, i64* %488
  store i64 %489, i64* %R8, align 8, !tbaa !2451
  %490 = load i64, i64* %RBP
  %491 = sub i64 %490, 96
  %492 = load i64, i64* %PC
  %493 = add i64 %492, 4
  store i64 %493, i64* %PC
  %494 = inttoptr i64 %491 to i64*
  %495 = load i64, i64* %494
  store i64 %495, i64* %R9, align 8, !tbaa !2451
  %496 = load i64, i64* %RBP
  %497 = sub i64 %496, 104
  %498 = load i64, i64* %PC
  %499 = add i64 %498, 4
  store i64 %499, i64* %PC
  %500 = inttoptr i64 %497 to i64*
  %501 = load i64, i64* %500
  store i64 %501, i64* %RAX, align 8, !tbaa !2451
  %502 = load i64, i64* %RBP
  %503 = sub i64 %502, 112
  %504 = load i64, i64* %PC
  %505 = add i64 %504, 4
  store i64 %505, i64* %PC
  %506 = inttoptr i64 %503 to i64*
  %507 = load i64, i64* %506
  store i64 %507, i64* %R10, align 8, !tbaa !2451
  %508 = load i64, i64* %RBP
  %509 = sub i64 %508, 120
  %510 = load i64, i64* %PC
  %511 = add i64 %510, 4
  store i64 %511, i64* %PC
  %512 = inttoptr i64 %509 to i64*
  %513 = load i64, i64* %512
  store i64 %513, i64* %R11, align 8, !tbaa !2451
  %514 = load i64, i64* %RBP
  %515 = sub i64 %514, 128
  %516 = load i64, i64* %PC
  %517 = add i64 %516, 4
  store i64 %517, i64* %PC
  %518 = inttoptr i64 %515 to i64*
  %519 = load i64, i64* %518
  store i64 %519, i64* %RBX, align 8, !tbaa !2451
  %520 = load i64, i64* %RBP
  %521 = sub i64 %520, 144
  %522 = load i64, i64* %PC
  %523 = add i64 %522, 7
  store i64 %523, i64* %PC
  %524 = inttoptr i64 %521 to i64*
  %525 = load i64, i64* %524
  store i64 %525, i64* %R14, align 8, !tbaa !2451
  %526 = load i64, i64* %RBP
  %527 = sub i64 %526, 152
  %528 = load i64, i64* %PC
  %529 = add i64 %528, 7
  store i64 %529, i64* %PC
  %530 = inttoptr i64 %527 to i64*
  %531 = load i64, i64* %530
  store i64 %531, i64* %R15, align 8, !tbaa !2451
  %532 = load i64, i64* %RSP
  %533 = load i64, i64* %RAX
  %534 = load i64, i64* %PC
  %535 = add i64 %534, 4
  store i64 %535, i64* %PC
  %536 = inttoptr i64 %532 to i64*
  store i64 %533, i64* %536
  %537 = load i64, i64* %RSP
  %538 = add i64 %537, 8
  %539 = load i64, i64* %R10
  %540 = load i64, i64* %PC
  %541 = add i64 %540, 5
  store i64 %541, i64* %PC
  %542 = inttoptr i64 %538 to i64*
  store i64 %539, i64* %542
  %543 = load i64, i64* %RSP
  %544 = add i64 %543, 16
  %545 = load i64, i64* %R11
  %546 = load i64, i64* %PC
  %547 = add i64 %546, 5
  store i64 %547, i64* %PC
  %548 = inttoptr i64 %544 to i64*
  store i64 %545, i64* %548
  %549 = load i64, i64* %RSP
  %550 = add i64 %549, 24
  %551 = load i64, i64* %RBX
  %552 = load i64, i64* %PC
  %553 = add i64 %552, 5
  store i64 %553, i64* %PC
  %554 = inttoptr i64 %550 to i64*
  store i64 %551, i64* %554
  %555 = load i64, i64* %RSP
  %556 = add i64 %555, 32
  %557 = load i64, i64* %R14
  %558 = load i64, i64* %PC
  %559 = add i64 %558, 5
  store i64 %559, i64* %PC
  %560 = inttoptr i64 %556 to i64*
  store i64 %557, i64* %560
  %561 = load i64, i64* %RSP
  %562 = add i64 %561, 40
  %563 = load i64, i64* %R15
  %564 = load i64, i64* %PC
  %565 = add i64 %564, 5
  store i64 %565, i64* %PC
  %566 = inttoptr i64 %562 to i64*
  store i64 %563, i64* %566
  %567 = load i64, i64* %PC
  %568 = add i64 %567, 404
  %569 = load i64, i64* %PC
  %570 = add i64 %569, 5
  %571 = load i64, i64* %PC
  %572 = add i64 %571, 5
  store i64 %572, i64* %PC
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %574 = load i64, i64* %573, align 8, !tbaa !2451
  %575 = add i64 %574, -8
  %576 = inttoptr i64 %575 to i64*
  store i64 %570, i64* %576
  store i64 %575, i64* %573, align 8, !tbaa !2451
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %568, i64* %577, align 8, !tbaa !2451
  %578 = load i64, i64* %PC
  %579 = call %struct.Memory* @sub_400b80_init_array_renamed_(%struct.State* %0, i64 %578, %struct.Memory* %456)
  %580 = load i64, i64* %RBP
  %581 = sub i64 %580, 44
  %582 = load i64, i64* %PC
  %583 = add i64 %582, 3
  store i64 %583, i64* %PC
  %584 = inttoptr i64 %581 to i32*
  %585 = load i32, i32* %584
  %586 = zext i32 %585 to i64
  store i64 %586, i64* %RDI, align 8, !tbaa !2451
  %587 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %588 = load i64, i64* %RBP
  %589 = sub i64 %588, 56
  %590 = load i64, i64* %PC
  %591 = add i64 %590, 5
  store i64 %591, i64* %PC
  %592 = inttoptr i64 %589 to double*
  %593 = load double, double* %592
  %594 = bitcast i8* %587 to double*
  store double %593, double* %594, align 1, !tbaa !2452
  %595 = getelementptr inbounds i8, i8* %587, i64 8
  %596 = bitcast i8* %595 to double*
  store double 0.000000e+00, double* %596, align 1, !tbaa !2452
  %597 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %598 = load i64, i64* %RBP
  %599 = sub i64 %598, 64
  %600 = load i64, i64* %PC
  %601 = add i64 %600, 5
  store i64 %601, i64* %PC
  %602 = inttoptr i64 %599 to double*
  %603 = load double, double* %602
  %604 = bitcast i8* %597 to double*
  store double %603, double* %604, align 1, !tbaa !2452
  %605 = getelementptr inbounds i8, i8* %597, i64 8
  %606 = bitcast i8* %605 to double*
  store double 0.000000e+00, double* %606, align 1, !tbaa !2452
  %607 = load i64, i64* %RBP
  %608 = sub i64 %607, 72
  %609 = load i64, i64* %PC
  %610 = add i64 %609, 4
  store i64 %610, i64* %PC
  %611 = inttoptr i64 %608 to i64*
  %612 = load i64, i64* %611
  store i64 %612, i64* %RSI, align 8, !tbaa !2451
  %613 = load i64, i64* %RBP
  %614 = sub i64 %613, 80
  %615 = load i64, i64* %PC
  %616 = add i64 %615, 4
  store i64 %616, i64* %PC
  %617 = inttoptr i64 %614 to i64*
  %618 = load i64, i64* %617
  store i64 %618, i64* %RDX, align 8, !tbaa !2451
  %619 = load i64, i64* %RBP
  %620 = sub i64 %619, 88
  %621 = load i64, i64* %PC
  %622 = add i64 %621, 4
  store i64 %622, i64* %PC
  %623 = inttoptr i64 %620 to i64*
  %624 = load i64, i64* %623
  store i64 %624, i64* %RCX, align 8, !tbaa !2451
  %625 = load i64, i64* %RBP
  %626 = sub i64 %625, 96
  %627 = load i64, i64* %PC
  %628 = add i64 %627, 4
  store i64 %628, i64* %PC
  %629 = inttoptr i64 %626 to i64*
  %630 = load i64, i64* %629
  store i64 %630, i64* %R8, align 8, !tbaa !2451
  %631 = load i64, i64* %RBP
  %632 = sub i64 %631, 104
  %633 = load i64, i64* %PC
  %634 = add i64 %633, 4
  store i64 %634, i64* %PC
  %635 = inttoptr i64 %632 to i64*
  %636 = load i64, i64* %635
  store i64 %636, i64* %R9, align 8, !tbaa !2451
  %637 = load i64, i64* %RBP
  %638 = sub i64 %637, 112
  %639 = load i64, i64* %PC
  %640 = add i64 %639, 4
  store i64 %640, i64* %PC
  %641 = inttoptr i64 %638 to i64*
  %642 = load i64, i64* %641
  store i64 %642, i64* %RAX, align 8, !tbaa !2451
  %643 = load i64, i64* %RBP
  %644 = sub i64 %643, 120
  %645 = load i64, i64* %PC
  %646 = add i64 %645, 4
  store i64 %646, i64* %PC
  %647 = inttoptr i64 %644 to i64*
  %648 = load i64, i64* %647
  store i64 %648, i64* %R10, align 8, !tbaa !2451
  %649 = load i64, i64* %RBP
  %650 = sub i64 %649, 136
  %651 = load i64, i64* %PC
  %652 = add i64 %651, 7
  store i64 %652, i64* %PC
  %653 = inttoptr i64 %650 to i64*
  %654 = load i64, i64* %653
  store i64 %654, i64* %R11, align 8, !tbaa !2451
  %655 = load i64, i64* %RBP
  %656 = sub i64 %655, 144
  %657 = load i64, i64* %PC
  %658 = add i64 %657, 7
  store i64 %658, i64* %PC
  %659 = inttoptr i64 %656 to i64*
  %660 = load i64, i64* %659
  store i64 %660, i64* %RBX, align 8, !tbaa !2451
  %661 = load i64, i64* %RBP
  %662 = sub i64 %661, 152
  %663 = load i64, i64* %PC
  %664 = add i64 %663, 7
  store i64 %664, i64* %PC
  %665 = inttoptr i64 %662 to i64*
  %666 = load i64, i64* %665
  store i64 %666, i64* %R14, align 8, !tbaa !2451
  %667 = load i64, i64* %RSP
  %668 = load i64, i64* %RAX
  %669 = load i64, i64* %PC
  %670 = add i64 %669, 4
  store i64 %670, i64* %PC
  %671 = inttoptr i64 %667 to i64*
  store i64 %668, i64* %671
  %672 = load i64, i64* %RSP
  %673 = add i64 %672, 8
  %674 = load i64, i64* %R10
  %675 = load i64, i64* %PC
  %676 = add i64 %675, 5
  store i64 %676, i64* %PC
  %677 = inttoptr i64 %673 to i64*
  store i64 %674, i64* %677
  %678 = load i64, i64* %RSP
  %679 = add i64 %678, 16
  %680 = load i64, i64* %R11
  %681 = load i64, i64* %PC
  %682 = add i64 %681, 5
  store i64 %682, i64* %PC
  %683 = inttoptr i64 %679 to i64*
  store i64 %680, i64* %683
  %684 = load i64, i64* %RSP
  %685 = add i64 %684, 24
  %686 = load i64, i64* %RBX
  %687 = load i64, i64* %PC
  %688 = add i64 %687, 5
  store i64 %688, i64* %PC
  %689 = inttoptr i64 %685 to i64*
  store i64 %686, i64* %689
  %690 = load i64, i64* %RSP
  %691 = add i64 %690, 32
  %692 = load i64, i64* %R14
  %693 = load i64, i64* %PC
  %694 = add i64 %693, 5
  store i64 %694, i64* %PC
  %695 = inttoptr i64 %691 to i64*
  store i64 %692, i64* %695
  %696 = load i64, i64* %PC
  %697 = add i64 %696, 809
  %698 = load i64, i64* %PC
  %699 = add i64 %698, 5
  %700 = load i64, i64* %PC
  %701 = add i64 %700, 5
  store i64 %701, i64* %PC
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %703 = load i64, i64* %702, align 8, !tbaa !2451
  %704 = add i64 %703, -8
  %705 = inttoptr i64 %704 to i64*
  store i64 %699, i64* %705
  store i64 %704, i64* %702, align 8, !tbaa !2451
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %697, i64* %706, align 8, !tbaa !2451
  %707 = load i64, i64* %PC
  %708 = call %struct.Memory* @sub_400d70_kernel_gemver_renamed_(%struct.State* %0, i64 %707, %struct.Memory* %579)
  %709 = load i64, i64* %RBP
  %710 = sub i64 %709, 44
  %711 = load i64, i64* %PC
  %712 = add i64 %711, 3
  store i64 %712, i64* %PC
  %713 = inttoptr i64 %710 to i32*
  %714 = load i32, i32* %713
  %715 = zext i32 %714 to i64
  store i64 %715, i64* %RDI, align 8, !tbaa !2451
  %716 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %717 = load i64, i64* %RBP
  %718 = sub i64 %717, 56
  %719 = load i64, i64* %PC
  %720 = add i64 %719, 5
  store i64 %720, i64* %PC
  %721 = inttoptr i64 %718 to double*
  %722 = load double, double* %721
  %723 = bitcast i8* %716 to double*
  store double %722, double* %723, align 1, !tbaa !2452
  %724 = getelementptr inbounds i8, i8* %716, i64 8
  %725 = bitcast i8* %724 to double*
  store double 0.000000e+00, double* %725, align 1, !tbaa !2452
  %726 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %727 = load i64, i64* %RBP
  %728 = sub i64 %727, 64
  %729 = load i64, i64* %PC
  %730 = add i64 %729, 5
  store i64 %730, i64* %PC
  %731 = inttoptr i64 %728 to double*
  %732 = load double, double* %731
  %733 = bitcast i8* %726 to double*
  store double %732, double* %733, align 1, !tbaa !2452
  %734 = getelementptr inbounds i8, i8* %726, i64 8
  %735 = bitcast i8* %734 to double*
  store double 0.000000e+00, double* %735, align 1, !tbaa !2452
  %736 = load i64, i64* %RBP
  %737 = sub i64 %736, 72
  %738 = load i64, i64* %PC
  %739 = add i64 %738, 4
  store i64 %739, i64* %PC
  %740 = inttoptr i64 %737 to i64*
  %741 = load i64, i64* %740
  store i64 %741, i64* %RSI, align 8, !tbaa !2451
  %742 = load i64, i64* %RBP
  %743 = sub i64 %742, 80
  %744 = load i64, i64* %PC
  %745 = add i64 %744, 4
  store i64 %745, i64* %PC
  %746 = inttoptr i64 %743 to i64*
  %747 = load i64, i64* %746
  store i64 %747, i64* %RDX, align 8, !tbaa !2451
  %748 = load i64, i64* %RBP
  %749 = sub i64 %748, 88
  %750 = load i64, i64* %PC
  %751 = add i64 %750, 4
  store i64 %751, i64* %PC
  %752 = inttoptr i64 %749 to i64*
  %753 = load i64, i64* %752
  store i64 %753, i64* %RCX, align 8, !tbaa !2451
  %754 = load i64, i64* %RBP
  %755 = sub i64 %754, 96
  %756 = load i64, i64* %PC
  %757 = add i64 %756, 4
  store i64 %757, i64* %PC
  %758 = inttoptr i64 %755 to i64*
  %759 = load i64, i64* %758
  store i64 %759, i64* %R8, align 8, !tbaa !2451
  %760 = load i64, i64* %RBP
  %761 = sub i64 %760, 104
  %762 = load i64, i64* %PC
  %763 = add i64 %762, 4
  store i64 %763, i64* %PC
  %764 = inttoptr i64 %761 to i64*
  %765 = load i64, i64* %764
  store i64 %765, i64* %R9, align 8, !tbaa !2451
  %766 = load i64, i64* %RBP
  %767 = sub i64 %766, 112
  %768 = load i64, i64* %PC
  %769 = add i64 %768, 4
  store i64 %769, i64* %PC
  %770 = inttoptr i64 %767 to i64*
  %771 = load i64, i64* %770
  store i64 %771, i64* %RAX, align 8, !tbaa !2451
  %772 = load i64, i64* %RBP
  %773 = sub i64 %772, 128
  %774 = load i64, i64* %PC
  %775 = add i64 %774, 4
  store i64 %775, i64* %PC
  %776 = inttoptr i64 %773 to i64*
  %777 = load i64, i64* %776
  store i64 %777, i64* %R10, align 8, !tbaa !2451
  %778 = load i64, i64* %RBP
  %779 = sub i64 %778, 136
  %780 = load i64, i64* %PC
  %781 = add i64 %780, 7
  store i64 %781, i64* %PC
  %782 = inttoptr i64 %779 to i64*
  %783 = load i64, i64* %782
  store i64 %783, i64* %R11, align 8, !tbaa !2451
  %784 = load i64, i64* %RBP
  %785 = sub i64 %784, 144
  %786 = load i64, i64* %PC
  %787 = add i64 %786, 7
  store i64 %787, i64* %PC
  %788 = inttoptr i64 %785 to i64*
  %789 = load i64, i64* %788
  store i64 %789, i64* %RBX, align 8, !tbaa !2451
  %790 = load i64, i64* %RBP
  %791 = sub i64 %790, 152
  %792 = load i64, i64* %PC
  %793 = add i64 %792, 7
  store i64 %793, i64* %PC
  %794 = inttoptr i64 %791 to i64*
  %795 = load i64, i64* %794
  store i64 %795, i64* %R14, align 8, !tbaa !2451
  %796 = load i64, i64* %RSP
  %797 = load i64, i64* %RAX
  %798 = load i64, i64* %PC
  %799 = add i64 %798, 4
  store i64 %799, i64* %PC
  %800 = inttoptr i64 %796 to i64*
  store i64 %797, i64* %800
  %801 = load i64, i64* %RSP
  %802 = add i64 %801, 8
  %803 = load i64, i64* %R10
  %804 = load i64, i64* %PC
  %805 = add i64 %804, 5
  store i64 %805, i64* %PC
  %806 = inttoptr i64 %802 to i64*
  store i64 %803, i64* %806
  %807 = load i64, i64* %RSP
  %808 = add i64 %807, 16
  %809 = load i64, i64* %R11
  %810 = load i64, i64* %PC
  %811 = add i64 %810, 5
  store i64 %811, i64* %PC
  %812 = inttoptr i64 %808 to i64*
  store i64 %809, i64* %812
  %813 = load i64, i64* %RSP
  %814 = add i64 %813, 24
  %815 = load i64, i64* %RBX
  %816 = load i64, i64* %PC
  %817 = add i64 %816, 5
  store i64 %817, i64* %PC
  %818 = inttoptr i64 %814 to i64*
  store i64 %815, i64* %818
  %819 = load i64, i64* %RSP
  %820 = add i64 %819, 32
  %821 = load i64, i64* %R14
  %822 = load i64, i64* %PC
  %823 = add i64 %822, 5
  store i64 %823, i64* %PC
  %824 = inttoptr i64 %820 to i64*
  store i64 %821, i64* %824
  %825 = load i64, i64* %PC
  %826 = add i64 %825, 1374
  %827 = load i64, i64* %PC
  %828 = add i64 %827, 5
  %829 = load i64, i64* %PC
  %830 = add i64 %829, 5
  store i64 %830, i64* %PC
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %832 = load i64, i64* %831, align 8, !tbaa !2451
  %833 = add i64 %832, -8
  %834 = inttoptr i64 %833 to i64*
  store i64 %828, i64* %834
  store i64 %833, i64* %831, align 8, !tbaa !2451
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %826, i64* %835, align 8, !tbaa !2451
  %836 = load i64, i64* %PC
  %837 = call %struct.Memory* @sub_401000_kernel_gemver_StrictFP_renamed_(%struct.State* %0, i64 %836, %struct.Memory* %708)
  %838 = load i64, i64* %RBP
  %839 = sub i64 %838, 44
  %840 = load i64, i64* %PC
  %841 = add i64 %840, 3
  store i64 %841, i64* %PC
  %842 = inttoptr i64 %839 to i32*
  %843 = load i32, i32* %842
  %844 = zext i32 %843 to i64
  store i64 %844, i64* %RDI, align 8, !tbaa !2451
  %845 = load i64, i64* %RBP
  %846 = sub i64 %845, 120
  %847 = load i64, i64* %PC
  %848 = add i64 %847, 4
  store i64 %848, i64* %PC
  %849 = inttoptr i64 %846 to i64*
  %850 = load i64, i64* %849
  store i64 %850, i64* %RSI, align 8, !tbaa !2451
  %851 = load i64, i64* %RBP
  %852 = sub i64 %851, 128
  %853 = load i64, i64* %PC
  %854 = add i64 %853, 4
  store i64 %854, i64* %PC
  %855 = inttoptr i64 %852 to i64*
  %856 = load i64, i64* %855
  store i64 %856, i64* %RDX, align 8, !tbaa !2451
  %857 = load i64, i64* %PC
  %858 = add i64 %857, 2014
  %859 = load i64, i64* %PC
  %860 = add i64 %859, 5
  %861 = load i64, i64* %PC
  %862 = add i64 %861, 5
  store i64 %862, i64* %PC
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %864 = load i64, i64* %863, align 8, !tbaa !2451
  %865 = add i64 %864, -8
  %866 = inttoptr i64 %865 to i64*
  store i64 %860, i64* %866
  store i64 %865, i64* %863, align 8, !tbaa !2451
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %858, i64* %867, align 8, !tbaa !2451
  %868 = load i64, i64* %PC
  %869 = call %struct.Memory* @sub_401290_check_FP_renamed_(%struct.State* %0, i64 %868, %struct.Memory* %837)
  %870 = load i32, i32* %EAX
  %871 = zext i32 %870 to i64
  %872 = load i64, i64* %PC
  %873 = add i64 %872, 3
  store i64 %873, i64* %PC
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %874, align 1, !tbaa !2428
  %875 = and i32 %870, 255
  %876 = call i32 @llvm.ctpop.i32(i32 %875) #16
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  %879 = xor i8 %878, 1
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %879, i8* %880, align 1, !tbaa !2445
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %881, align 1, !tbaa !2446
  %882 = icmp eq i32 %870, 0
  %883 = zext i1 %882 to i8
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %883, i8* %884, align 1, !tbaa !2447
  %885 = lshr i32 %870, 31
  %886 = trunc i32 %885 to i8
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %886, i8* %887, align 1, !tbaa !2448
  %888 = lshr i32 %870, 31
  %889 = xor i32 %885, %888
  %890 = add nuw nsw i32 %889, %888
  %891 = icmp eq i32 %890, 2
  %892 = zext i1 %891 to i8
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %892, i8* %893, align 1, !tbaa !2449
  %894 = load i64, i64* %PC
  %895 = add i64 %894, 18
  %896 = load i64, i64* %PC
  %897 = add i64 %896, 6
  %898 = load i64, i64* %PC
  %899 = add i64 %898, 6
  store i64 %899, i64* %PC
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %901 = load i8, i8* %900, align 1, !tbaa !2447
  %902 = icmp eq i8 %901, 0
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %905 = select i1 %902, i64 %895, i64 %897
  store i64 %905, i64* %904, align 8, !tbaa !2451
  %906 = load i8, i8* %BRANCH_TAKEN
  %907 = icmp eq i8 %906, 1
  %908 = load i64, i64* %RBP
  br i1 %907, label %block_400acc, label %block_400ac0

block_400acc:                                     ; preds = %block_400880
  %909 = sub i64 %908, 44
  %910 = load i64, i64* %PC
  %911 = add i64 %910, 3
  store i64 %911, i64* %PC
  %912 = inttoptr i64 %909 to i32*
  %913 = load i32, i32* %912
  %914 = zext i32 %913 to i64
  store i64 %914, i64* %RDI, align 8, !tbaa !2451
  %915 = load i64, i64* %RBP
  %916 = sub i64 %915, 128
  %917 = load i64, i64* %PC
  %918 = add i64 %917, 4
  store i64 %918, i64* %PC
  %919 = inttoptr i64 %916 to i64*
  %920 = load i64, i64* %919
  store i64 %920, i64* %RSI, align 8, !tbaa !2451
  %921 = load i64, i64* %PC
  %922 = add i64 %921, 2221
  %923 = load i64, i64* %PC
  %924 = add i64 %923, 5
  %925 = load i64, i64* %PC
  %926 = add i64 %925, 5
  store i64 %926, i64* %PC
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %928 = load i64, i64* %927, align 8, !tbaa !2451
  %929 = add i64 %928, -8
  %930 = inttoptr i64 %929 to i64*
  store i64 %924, i64* %930
  store i64 %929, i64* %927, align 8, !tbaa !2451
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %922, i64* %931, align 8, !tbaa !2451
  %932 = load i64, i64* %PC
  %933 = call %struct.Memory* @sub_401380_print_array_renamed_(%struct.State* %0, i64 %932, %struct.Memory* %869)
  %934 = load i64, i64* %RBP
  %935 = sub i64 %934, 72
  %936 = load i64, i64* %PC
  %937 = add i64 %936, 4
  store i64 %937, i64* %PC
  %938 = inttoptr i64 %935 to i64*
  %939 = load i64, i64* %938
  store i64 %939, i64* %RSI, align 8, !tbaa !2451
  %940 = load i64, i64* %RSI
  %941 = load i64, i64* %PC
  %942 = add i64 %941, 3
  store i64 %942, i64* %PC
  store i64 %940, i64* %RDI, align 8, !tbaa !2451
  %943 = load i64, i64* %PC
  %944 = sub i64 %943, 1423
  %945 = load i64, i64* %PC
  %946 = add i64 %945, 5
  %947 = load i64, i64* %PC
  %948 = add i64 %947, 5
  store i64 %948, i64* %PC
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %950 = load i64, i64* %949, align 8, !tbaa !2451
  %951 = add i64 %950, -8
  %952 = inttoptr i64 %951 to i64*
  store i64 %946, i64* %952
  store i64 %951, i64* %949, align 8, !tbaa !2451
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %944, i64* %953, align 8, !tbaa !2451
  %954 = load i64, i64* %PC
  %955 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %954, %struct.Memory* %933)
  %956 = load i64, i64* %RBP
  %957 = sub i64 %956, 80
  %958 = load i64, i64* %PC
  %959 = add i64 %958, 4
  store i64 %959, i64* %PC
  %960 = inttoptr i64 %957 to i64*
  %961 = load i64, i64* %960
  store i64 %961, i64* %RSI, align 8, !tbaa !2451
  %962 = load i64, i64* %RSI
  %963 = load i64, i64* %PC
  %964 = add i64 %963, 3
  store i64 %964, i64* %PC
  store i64 %962, i64* %RDI, align 8, !tbaa !2451
  %965 = load i64, i64* %PC
  %966 = sub i64 %965, 1435
  %967 = load i64, i64* %PC
  %968 = add i64 %967, 5
  %969 = load i64, i64* %PC
  %970 = add i64 %969, 5
  store i64 %970, i64* %PC
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %972 = load i64, i64* %971, align 8, !tbaa !2451
  %973 = add i64 %972, -8
  %974 = inttoptr i64 %973 to i64*
  store i64 %968, i64* %974
  store i64 %973, i64* %971, align 8, !tbaa !2451
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %966, i64* %975, align 8, !tbaa !2451
  %976 = load i64, i64* %PC
  %977 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %976, %struct.Memory* %955)
  %978 = load i64, i64* %RBP
  %979 = sub i64 %978, 88
  %980 = load i64, i64* %PC
  %981 = add i64 %980, 4
  store i64 %981, i64* %PC
  %982 = inttoptr i64 %979 to i64*
  %983 = load i64, i64* %982
  store i64 %983, i64* %RSI, align 8, !tbaa !2451
  %984 = load i64, i64* %RSI
  %985 = load i64, i64* %PC
  %986 = add i64 %985, 3
  store i64 %986, i64* %PC
  store i64 %984, i64* %RDI, align 8, !tbaa !2451
  %987 = load i64, i64* %PC
  %988 = sub i64 %987, 1447
  %989 = load i64, i64* %PC
  %990 = add i64 %989, 5
  %991 = load i64, i64* %PC
  %992 = add i64 %991, 5
  store i64 %992, i64* %PC
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %994 = load i64, i64* %993, align 8, !tbaa !2451
  %995 = add i64 %994, -8
  %996 = inttoptr i64 %995 to i64*
  store i64 %990, i64* %996
  store i64 %995, i64* %993, align 8, !tbaa !2451
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %988, i64* %997, align 8, !tbaa !2451
  %998 = load i64, i64* %PC
  %999 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %998, %struct.Memory* %977)
  %1000 = load i64, i64* %RBP
  %1001 = sub i64 %1000, 96
  %1002 = load i64, i64* %PC
  %1003 = add i64 %1002, 4
  store i64 %1003, i64* %PC
  %1004 = inttoptr i64 %1001 to i64*
  %1005 = load i64, i64* %1004
  store i64 %1005, i64* %RSI, align 8, !tbaa !2451
  %1006 = load i64, i64* %RSI
  %1007 = load i64, i64* %PC
  %1008 = add i64 %1007, 3
  store i64 %1008, i64* %PC
  store i64 %1006, i64* %RDI, align 8, !tbaa !2451
  %1009 = load i64, i64* %PC
  %1010 = sub i64 %1009, 1459
  %1011 = load i64, i64* %PC
  %1012 = add i64 %1011, 5
  %1013 = load i64, i64* %PC
  %1014 = add i64 %1013, 5
  store i64 %1014, i64* %PC
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1016 = load i64, i64* %1015, align 8, !tbaa !2451
  %1017 = add i64 %1016, -8
  %1018 = inttoptr i64 %1017 to i64*
  store i64 %1012, i64* %1018
  store i64 %1017, i64* %1015, align 8, !tbaa !2451
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1010, i64* %1019, align 8, !tbaa !2451
  %1020 = load i64, i64* %PC
  %1021 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %1020, %struct.Memory* %999)
  %1022 = load i64, i64* %RBP
  %1023 = sub i64 %1022, 104
  %1024 = load i64, i64* %PC
  %1025 = add i64 %1024, 4
  store i64 %1025, i64* %PC
  %1026 = inttoptr i64 %1023 to i64*
  %1027 = load i64, i64* %1026
  store i64 %1027, i64* %RSI, align 8, !tbaa !2451
  %1028 = load i64, i64* %RSI
  %1029 = load i64, i64* %PC
  %1030 = add i64 %1029, 3
  store i64 %1030, i64* %PC
  store i64 %1028, i64* %RDI, align 8, !tbaa !2451
  %1031 = load i64, i64* %PC
  %1032 = sub i64 %1031, 1471
  %1033 = load i64, i64* %PC
  %1034 = add i64 %1033, 5
  %1035 = load i64, i64* %PC
  %1036 = add i64 %1035, 5
  store i64 %1036, i64* %PC
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1038 = load i64, i64* %1037, align 8, !tbaa !2451
  %1039 = add i64 %1038, -8
  %1040 = inttoptr i64 %1039 to i64*
  store i64 %1034, i64* %1040
  store i64 %1039, i64* %1037, align 8, !tbaa !2451
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1032, i64* %1041, align 8, !tbaa !2451
  %1042 = load i64, i64* %PC
  %1043 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %1042, %struct.Memory* %1021)
  %1044 = load i64, i64* %RBP
  %1045 = sub i64 %1044, 112
  %1046 = load i64, i64* %PC
  %1047 = add i64 %1046, 4
  store i64 %1047, i64* %PC
  %1048 = inttoptr i64 %1045 to i64*
  %1049 = load i64, i64* %1048
  store i64 %1049, i64* %RSI, align 8, !tbaa !2451
  %1050 = load i64, i64* %RSI
  %1051 = load i64, i64* %PC
  %1052 = add i64 %1051, 3
  store i64 %1052, i64* %PC
  store i64 %1050, i64* %RDI, align 8, !tbaa !2451
  %1053 = load i64, i64* %PC
  %1054 = sub i64 %1053, 1483
  %1055 = load i64, i64* %PC
  %1056 = add i64 %1055, 5
  %1057 = load i64, i64* %PC
  %1058 = add i64 %1057, 5
  store i64 %1058, i64* %PC
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1060 = load i64, i64* %1059, align 8, !tbaa !2451
  %1061 = add i64 %1060, -8
  %1062 = inttoptr i64 %1061 to i64*
  store i64 %1056, i64* %1062
  store i64 %1061, i64* %1059, align 8, !tbaa !2451
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1054, i64* %1063, align 8, !tbaa !2451
  %1064 = load i64, i64* %PC
  %1065 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %1064, %struct.Memory* %1043)
  %1066 = load i64, i64* %RBP
  %1067 = sub i64 %1066, 120
  %1068 = load i64, i64* %PC
  %1069 = add i64 %1068, 4
  store i64 %1069, i64* %PC
  %1070 = inttoptr i64 %1067 to i64*
  %1071 = load i64, i64* %1070
  store i64 %1071, i64* %RSI, align 8, !tbaa !2451
  %1072 = load i64, i64* %RSI
  %1073 = load i64, i64* %PC
  %1074 = add i64 %1073, 3
  store i64 %1074, i64* %PC
  store i64 %1072, i64* %RDI, align 8, !tbaa !2451
  %1075 = load i64, i64* %PC
  %1076 = sub i64 %1075, 1495
  %1077 = load i64, i64* %PC
  %1078 = add i64 %1077, 5
  %1079 = load i64, i64* %PC
  %1080 = add i64 %1079, 5
  store i64 %1080, i64* %PC
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1082 = load i64, i64* %1081, align 8, !tbaa !2451
  %1083 = add i64 %1082, -8
  %1084 = inttoptr i64 %1083 to i64*
  store i64 %1078, i64* %1084
  store i64 %1083, i64* %1081, align 8, !tbaa !2451
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1076, i64* %1085, align 8, !tbaa !2451
  %1086 = load i64, i64* %PC
  %1087 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %1086, %struct.Memory* %1065)
  %1088 = load i64, i64* %RBP
  %1089 = sub i64 %1088, 128
  %1090 = load i64, i64* %PC
  %1091 = add i64 %1090, 4
  store i64 %1091, i64* %PC
  %1092 = inttoptr i64 %1089 to i64*
  %1093 = load i64, i64* %1092
  store i64 %1093, i64* %RSI, align 8, !tbaa !2451
  %1094 = load i64, i64* %RSI
  %1095 = load i64, i64* %PC
  %1096 = add i64 %1095, 3
  store i64 %1096, i64* %PC
  store i64 %1094, i64* %RDI, align 8, !tbaa !2451
  %1097 = load i64, i64* %PC
  %1098 = sub i64 %1097, 1507
  %1099 = load i64, i64* %PC
  %1100 = add i64 %1099, 5
  %1101 = load i64, i64* %PC
  %1102 = add i64 %1101, 5
  store i64 %1102, i64* %PC
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1104 = load i64, i64* %1103, align 8, !tbaa !2451
  %1105 = add i64 %1104, -8
  %1106 = inttoptr i64 %1105 to i64*
  store i64 %1100, i64* %1106
  store i64 %1105, i64* %1103, align 8, !tbaa !2451
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1098, i64* %1107, align 8, !tbaa !2451
  %1108 = load i64, i64* %PC
  %1109 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %1108, %struct.Memory* %1087)
  %1110 = load i64, i64* %RBP
  %1111 = sub i64 %1110, 136
  %1112 = load i64, i64* %PC
  %1113 = add i64 %1112, 7
  store i64 %1113, i64* %PC
  %1114 = inttoptr i64 %1111 to i64*
  %1115 = load i64, i64* %1114
  store i64 %1115, i64* %RSI, align 8, !tbaa !2451
  %1116 = load i64, i64* %RSI
  %1117 = load i64, i64* %PC
  %1118 = add i64 %1117, 3
  store i64 %1118, i64* %PC
  store i64 %1116, i64* %RDI, align 8, !tbaa !2451
  %1119 = load i64, i64* %PC
  %1120 = sub i64 %1119, 1522
  %1121 = load i64, i64* %PC
  %1122 = add i64 %1121, 5
  %1123 = load i64, i64* %PC
  %1124 = add i64 %1123, 5
  store i64 %1124, i64* %PC
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1126 = load i64, i64* %1125, align 8, !tbaa !2451
  %1127 = add i64 %1126, -8
  %1128 = inttoptr i64 %1127 to i64*
  store i64 %1122, i64* %1128
  store i64 %1127, i64* %1125, align 8, !tbaa !2451
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1120, i64* %1129, align 8, !tbaa !2451
  %1130 = load i64, i64* %PC
  %1131 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %1130, %struct.Memory* %1109)
  %1132 = load i64, i64* %RBP
  %1133 = sub i64 %1132, 144
  %1134 = load i64, i64* %PC
  %1135 = add i64 %1134, 7
  store i64 %1135, i64* %PC
  %1136 = inttoptr i64 %1133 to i64*
  %1137 = load i64, i64* %1136
  store i64 %1137, i64* %RSI, align 8, !tbaa !2451
  %1138 = load i64, i64* %RSI
  %1139 = load i64, i64* %PC
  %1140 = add i64 %1139, 3
  store i64 %1140, i64* %PC
  store i64 %1138, i64* %RDI, align 8, !tbaa !2451
  %1141 = load i64, i64* %PC
  %1142 = sub i64 %1141, 1537
  %1143 = load i64, i64* %PC
  %1144 = add i64 %1143, 5
  %1145 = load i64, i64* %PC
  %1146 = add i64 %1145, 5
  store i64 %1146, i64* %PC
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1148 = load i64, i64* %1147, align 8, !tbaa !2451
  %1149 = add i64 %1148, -8
  %1150 = inttoptr i64 %1149 to i64*
  store i64 %1144, i64* %1150
  store i64 %1149, i64* %1147, align 8, !tbaa !2451
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1142, i64* %1151, align 8, !tbaa !2451
  %1152 = load i64, i64* %PC
  %1153 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %1152, %struct.Memory* %1131)
  %1154 = load i64, i64* %RBP
  %1155 = sub i64 %1154, 152
  %1156 = load i64, i64* %PC
  %1157 = add i64 %1156, 7
  store i64 %1157, i64* %PC
  %1158 = inttoptr i64 %1155 to i64*
  %1159 = load i64, i64* %1158
  store i64 %1159, i64* %RSI, align 8, !tbaa !2451
  %1160 = load i64, i64* %RSI
  %1161 = load i64, i64* %PC
  %1162 = add i64 %1161, 3
  store i64 %1162, i64* %PC
  store i64 %1160, i64* %RDI, align 8, !tbaa !2451
  %1163 = load i64, i64* %PC
  %1164 = sub i64 %1163, 1552
  %1165 = load i64, i64* %PC
  %1166 = add i64 %1165, 5
  %1167 = load i64, i64* %PC
  %1168 = add i64 %1167, 5
  store i64 %1168, i64* %PC
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1170 = load i64, i64* %1169, align 8, !tbaa !2451
  %1171 = add i64 %1170, -8
  %1172 = inttoptr i64 %1171 to i64*
  store i64 %1166, i64* %1172
  store i64 %1171, i64* %1169, align 8, !tbaa !2451
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1164, i64* %1173, align 8, !tbaa !2451
  %1174 = load i64, i64* %PC
  %1175 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %1174, %struct.Memory* %1153)
  %1176 = load i64, i64* %RBP
  %1177 = sub i64 %1176, 28
  %1178 = load i64, i64* %PC
  %1179 = add i64 %1178, 7
  store i64 %1179, i64* %PC
  %1180 = inttoptr i64 %1177 to i32*
  store i32 0, i32* %1180
  br label %block_400b6c

block_400b6c:                                     ; preds = %block_400ac0, %block_400acc
  %MEMORY.0 = phi %struct.Memory* [ %1175, %block_400acc ], [ %869, %block_400ac0 ]
  %1181 = load i64, i64* %RBP
  %1182 = sub i64 %1181, 28
  %1183 = load i64, i64* %PC
  %1184 = add i64 %1183, 3
  store i64 %1184, i64* %PC
  %1185 = inttoptr i64 %1182 to i32*
  %1186 = load i32, i32* %1185
  %1187 = zext i32 %1186 to i64
  store i64 %1187, i64* %RAX, align 8, !tbaa !2451
  %1188 = load i64, i64* %RSP
  %1189 = load i64, i64* %PC
  %1190 = add i64 %1189, 7
  store i64 %1190, i64* %PC
  %1191 = add i64 184, %1188
  store i64 %1191, i64* %RSP, align 8, !tbaa !2451
  %1192 = icmp ult i64 %1191, %1188
  %1193 = icmp ult i64 %1191, 184
  %1194 = or i1 %1192, %1193
  %1195 = zext i1 %1194 to i8
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1195, i8* %1196, align 1, !tbaa !2428
  %1197 = trunc i64 %1191 to i32
  %1198 = and i32 %1197, 255
  %1199 = call i32 @llvm.ctpop.i32(i32 %1198) #16
  %1200 = trunc i32 %1199 to i8
  %1201 = and i8 %1200, 1
  %1202 = xor i8 %1201, 1
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1202, i8* %1203, align 1, !tbaa !2445
  %1204 = xor i64 184, %1188
  %1205 = xor i64 %1204, %1191
  %1206 = lshr i64 %1205, 4
  %1207 = trunc i64 %1206 to i8
  %1208 = and i8 %1207, 1
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1208, i8* %1209, align 1, !tbaa !2446
  %1210 = icmp eq i64 %1191, 0
  %1211 = zext i1 %1210 to i8
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1211, i8* %1212, align 1, !tbaa !2447
  %1213 = lshr i64 %1191, 63
  %1214 = trunc i64 %1213 to i8
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1214, i8* %1215, align 1, !tbaa !2448
  %1216 = lshr i64 %1188, 63
  %1217 = xor i64 %1213, %1216
  %1218 = add nuw nsw i64 %1217, %1213
  %1219 = icmp eq i64 %1218, 2
  %1220 = zext i1 %1219 to i8
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1220, i8* %1221, align 1, !tbaa !2449
  %1222 = load i64, i64* %PC
  %1223 = add i64 %1222, 1
  store i64 %1223, i64* %PC
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1225 = load i64, i64* %1224, align 8, !tbaa !2451
  %1226 = add i64 %1225, 8
  %1227 = inttoptr i64 %1225 to i64*
  %1228 = load i64, i64* %1227
  store i64 %1228, i64* %RBX, align 8, !tbaa !2451
  store i64 %1226, i64* %1224, align 8, !tbaa !2451
  %1229 = load i64, i64* %PC
  %1230 = add i64 %1229, 2
  store i64 %1230, i64* %PC
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1232 = load i64, i64* %1231, align 8, !tbaa !2451
  %1233 = add i64 %1232, 8
  %1234 = inttoptr i64 %1232 to i64*
  %1235 = load i64, i64* %1234
  store i64 %1235, i64* %R14, align 8, !tbaa !2451
  store i64 %1233, i64* %1231, align 8, !tbaa !2451
  %1236 = load i64, i64* %PC
  %1237 = add i64 %1236, 2
  store i64 %1237, i64* %PC
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1239 = load i64, i64* %1238, align 8, !tbaa !2451
  %1240 = add i64 %1239, 8
  %1241 = inttoptr i64 %1239 to i64*
  %1242 = load i64, i64* %1241
  store i64 %1242, i64* %R15, align 8, !tbaa !2451
  store i64 %1240, i64* %1238, align 8, !tbaa !2451
  %1243 = load i64, i64* %PC
  %1244 = add i64 %1243, 1
  store i64 %1244, i64* %PC
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1246 = load i64, i64* %1245, align 8, !tbaa !2451
  %1247 = add i64 %1246, 8
  %1248 = inttoptr i64 %1246 to i64*
  %1249 = load i64, i64* %1248
  store i64 %1249, i64* %RBP, align 8, !tbaa !2451
  store i64 %1247, i64* %1245, align 8, !tbaa !2451
  %1250 = load i64, i64* %PC
  %1251 = add i64 %1250, 1
  store i64 %1251, i64* %PC
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1254 = load i64, i64* %1253, align 8, !tbaa !2451
  %1255 = inttoptr i64 %1254 to i64*
  %1256 = load i64, i64* %1255
  store i64 %1256, i64* %1252, align 8, !tbaa !2451
  %1257 = add i64 %1254, 8
  store i64 %1257, i64* %1253, align 8, !tbaa !2451
  ret %struct.Memory* %MEMORY.0

block_400ac0:                                     ; preds = %block_400880
  %1258 = sub i64 %908, 28
  %1259 = load i64, i64* %PC
  %1260 = add i64 %1259, 7
  store i64 %1260, i64* %PC
  %1261 = inttoptr i64 %1258 to i32*
  store i32 1, i32* %1261
  %1262 = load i64, i64* %PC
  %1263 = add i64 %1262, 165
  %1264 = load i64, i64* %PC
  %1265 = add i64 %1264, 5
  store i64 %1265, i64* %PC
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1263, i64* %1266, align 8, !tbaa !2451
  br label %block_400b6c
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005f0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005f0:
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
  store i64 6299736, i64* %RAX, align 8, !tbaa !2451
  %33 = load i64, i64* %RAX
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 6
  store i64 %35, i64* %PC
  %36 = sub i64 %33, 6299736
  %37 = icmp ult i64 %33, 6299736
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
  %47 = xor i64 6299736, %33
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
  %60 = xor i64 %56, %59
  %61 = add nuw nsw i64 %60, %59
  %62 = icmp eq i64 %61, 2
  %63 = zext i1 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %63, i8* %64, align 1, !tbaa !2449
  %65 = load i64, i64* %RSP
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 3
  store i64 %67, i64* %PC
  store i64 %65, i64* %RBP, align 8, !tbaa !2451
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 25
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
  br i1 %80, label %block_400618, label %block_400601

block_400618:                                     ; preds = %block_400601, %block_400613, %block_4005f0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005f0 ], [ %2, %block_400601 ], [ %2, %block_400613 ]
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
  ret %struct.Memory* %MEMORY.0

block_40061a:                                     ; preds = %block_40060b
  %96 = load i64, i64* %RAX
  %97 = load i64, i64* %RAX
  %98 = add i64 %97, %96
  %99 = load i16, i16* %AX
  %100 = zext i16 %99 to i64
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 6
  store i64 %102, i64* %PC
  %103 = load i64, i64* %PC
  %104 = tail call %struct.Memory* @sub_400620_register_tm_clones(%struct.State* %0, i64 %103, %struct.Memory* %2)
  ret %struct.Memory* %104

block_400613:                                     ; preds = %block_40060b
  %105 = load i64, i64* %RAX
  %106 = load i64, i64* %RAX
  %107 = add i64 %106, %105
  %108 = load i32, i32* %EAX
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 5
  store i64 %111, i64* %PC
  br label %block_400618

block_40060b:                                     ; preds = %block_400601
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 1
  store i64 %113, i64* %PC
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %115 = load i64, i64* %114, align 8, !tbaa !2451
  %116 = add i64 %115, 8
  %117 = inttoptr i64 %115 to i64*
  %118 = load i64, i64* %117
  store i64 %118, i64* %RBP, align 8, !tbaa !2451
  store i64 %116, i64* %114, align 8, !tbaa !2451
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 5
  store i64 %120, i64* %PC
  store i64 6299736, i64* %RDI, align 8, !tbaa !2451
  %121 = load i64, i64* %RAX
  %122 = load i64, i64* %PC
  %123 = add i64 %122, 2
  store i64 %123, i64* %PC
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %121, i64* %124, align 8, !tbaa !2451
  %125 = load i64, i64* %PC
  switch i64 %125, label %162 [
    i64 4195866, label %block_40061a
    i64 4195859, label %block_400613
  ]

block_400601:                                     ; preds = %block_4005f0
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 5
  store i64 %127, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2451
  %128 = load i64, i64* %RAX
  %129 = load i64, i64* %RAX
  %130 = load i64, i64* %PC
  %131 = add i64 %130, 3
  store i64 %131, i64* %PC
  %132 = and i64 %129, %128
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %133, align 1, !tbaa !2428
  %134 = trunc i64 %132 to i32
  %135 = and i32 %134, 255
  %136 = call i32 @llvm.ctpop.i32(i32 %135) #16
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  %139 = xor i8 %138, 1
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %139, i8* %140, align 1, !tbaa !2445
  %141 = icmp eq i64 %132, 0
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %142, i8* %143, align 1, !tbaa !2447
  %144 = lshr i64 %132, 63
  %145 = trunc i64 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %145, i8* %146, align 1, !tbaa !2448
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %147, align 1, !tbaa !2449
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %148, align 1, !tbaa !2446
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 15
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 2
  %153 = load i64, i64* %PC
  %154 = add i64 %153, 2
  store i64 %154, i64* %PC
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %156 = load i8, i8* %155, align 1, !tbaa !2447
  store i8 %156, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %158 = icmp ne i8 %156, 0
  %159 = select i1 %158, i64 %150, i64 %152
  store i64 %159, i64* %157, align 8, !tbaa !2451
  %160 = load i8, i8* %BRANCH_TAKEN
  %161 = icmp eq i8 %160, 1
  br i1 %161, label %block_400618, label %block_40060b

; <label>:162:                                    ; preds = %block_40060b
  %163 = load i64, i64* %PC
  %164 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %163, %struct.Memory* %2)
  ret %struct.Memory* %164
}

; Function Attrs: noinline
define %struct.Memory* @sub_400b80_init_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400b80:
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EDI = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RAX = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RBX = bitcast %union.anon* %17 to i64*
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
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 13
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RSP = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 15
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %RBP = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.GPR, %struct.GPR* %33, i32 0, i32 17
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %34, i32 0, i32 0
  %R8 = bitcast %union.anon* %35 to i64*
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %37 = getelementptr inbounds %struct.GPR, %struct.GPR* %36, i32 0, i32 19
  %38 = getelementptr inbounds %struct.Reg, %struct.Reg* %37, i32 0, i32 0
  %R9 = bitcast %union.anon* %38 to i64*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 21
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %R10 = bitcast %union.anon* %41 to i64*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 23
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %R11 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R14 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 31
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %R15 = bitcast %union.anon* %50 to i64*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %52 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %51, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %52 to %"class.std::bitset"*
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %54 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %53, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %54 to %"class.std::bitset"*
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %56 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %55, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %56 to %"class.std::bitset"*
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %58 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %57, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %58 to %"class.std::bitset"*
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %60 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %59, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %60 to %"class.std::bitset"*
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %62 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %61, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %62 to %"class.std::bitset"*
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %64 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %63, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %64 to %"class.std::bitset"*
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %66 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %65, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %66 to %union.vec128_t*
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %68 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %67, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %68 to %union.vec128_t*
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %70 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %69, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %70 to %union.vec128_t*
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %72 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %71, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %72 to %union.vec128_t*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %74 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %73, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %74 to %union.vec128_t*
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %76 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %75, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %76 to %union.vec128_t*
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %78 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %77, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %78 to %union.vec128_t*
  %79 = load i64, i64* %RBP
  %80 = load i64, i64* %PC
  %81 = add i64 %80, 1
  store i64 %81, i64* %PC
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %83 = load i64, i64* %82, align 8, !tbaa !2451
  %84 = add i64 %83, -8
  %85 = inttoptr i64 %84 to i64*
  store i64 %79, i64* %85
  store i64 %84, i64* %82, align 8, !tbaa !2451
  %86 = load i64, i64* %RSP
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 3
  store i64 %88, i64* %PC
  store i64 %86, i64* %RBP, align 8, !tbaa !2451
  %89 = load i64, i64* %R15
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 2
  store i64 %91, i64* %PC
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %93 = load i64, i64* %92, align 8, !tbaa !2451
  %94 = add i64 %93, -8
  %95 = inttoptr i64 %94 to i64*
  store i64 %89, i64* %95
  store i64 %94, i64* %92, align 8, !tbaa !2451
  %96 = load i64, i64* %R14
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 2
  store i64 %98, i64* %PC
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %100 = load i64, i64* %99, align 8, !tbaa !2451
  %101 = add i64 %100, -8
  %102 = inttoptr i64 %101 to i64*
  store i64 %96, i64* %102
  store i64 %101, i64* %99, align 8, !tbaa !2451
  %103 = load i64, i64* %RBX
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 1
  store i64 %105, i64* %PC
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %107 = load i64, i64* %106, align 8, !tbaa !2451
  %108 = add i64 %107, -8
  %109 = inttoptr i64 %108 to i64*
  store i64 %103, i64* %109
  store i64 %108, i64* %106, align 8, !tbaa !2451
  %110 = load i64, i64* %RBP
  %111 = add i64 %110, 56
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 4
  store i64 %113, i64* %PC
  %114 = inttoptr i64 %111 to i64*
  %115 = load i64, i64* %114
  store i64 %115, i64* %RAX, align 8, !tbaa !2451
  %116 = load i64, i64* %RBP
  %117 = add i64 %116, 48
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC
  %120 = inttoptr i64 %117 to i64*
  %121 = load i64, i64* %120
  store i64 %121, i64* %R10, align 8, !tbaa !2451
  %122 = load i64, i64* %RBP
  %123 = add i64 %122, 40
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 4
  store i64 %125, i64* %PC
  %126 = inttoptr i64 %123 to i64*
  %127 = load i64, i64* %126
  store i64 %127, i64* %R11, align 8, !tbaa !2451
  %128 = load i64, i64* %RBP
  %129 = add i64 %128, 32
  %130 = load i64, i64* %PC
  %131 = add i64 %130, 4
  store i64 %131, i64* %PC
  %132 = inttoptr i64 %129 to i64*
  %133 = load i64, i64* %132
  store i64 %133, i64* %RBX, align 8, !tbaa !2451
  %134 = load i64, i64* %RBP
  %135 = add i64 %134, 24
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 4
  store i64 %137, i64* %PC
  %138 = inttoptr i64 %135 to i64*
  %139 = load i64, i64* %138
  store i64 %139, i64* %R14, align 8, !tbaa !2451
  %140 = load i64, i64* %RBP
  %141 = add i64 %140, 16
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 4
  store i64 %143, i64* %PC
  %144 = inttoptr i64 %141 to i64*
  %145 = load i64, i64* %144
  store i64 %145, i64* %R15, align 8, !tbaa !2451
  %146 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %147 = load i64, i64* %PC
  %148 = add i64 %147, 8
  store i64 %148, i64* %PC
  %149 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 8) to double*)
  %150 = bitcast i8* %146 to double*
  store double %149, double* %150, align 1, !tbaa !2452
  %151 = getelementptr inbounds i8, i8* %146, i64 8
  %152 = bitcast i8* %151 to double*
  store double 0.000000e+00, double* %152, align 1, !tbaa !2452
  %153 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 8
  store i64 %155, i64* %PC
  %156 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 16) to double*)
  %157 = bitcast i8* %153 to double*
  store double %156, double* %157, align 1, !tbaa !2452
  %158 = getelementptr inbounds i8, i8* %153, i64 8
  %159 = bitcast i8* %158 to double*
  store double 0.000000e+00, double* %159, align 1, !tbaa !2452
  %160 = load i64, i64* %RBP
  %161 = sub i64 %160, 28
  %162 = load i32, i32* %EDI
  %163 = zext i32 %162 to i64
  %164 = load i64, i64* %PC
  %165 = add i64 %164, 3
  store i64 %165, i64* %PC
  %166 = inttoptr i64 %161 to i32*
  store i32 %162, i32* %166
  %167 = load i64, i64* %RBP
  %168 = sub i64 %167, 40
  %169 = load i64, i64* %RSI
  %170 = load i64, i64* %PC
  %171 = add i64 %170, 4
  store i64 %171, i64* %PC
  %172 = inttoptr i64 %168 to i64*
  store i64 %169, i64* %172
  %173 = load i64, i64* %RBP
  %174 = sub i64 %173, 48
  %175 = load i64, i64* %RDX
  %176 = load i64, i64* %PC
  %177 = add i64 %176, 4
  store i64 %177, i64* %PC
  %178 = inttoptr i64 %174 to i64*
  store i64 %175, i64* %178
  %179 = load i64, i64* %RBP
  %180 = sub i64 %179, 56
  %181 = load i64, i64* %RCX
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 4
  store i64 %183, i64* %PC
  %184 = inttoptr i64 %180 to i64*
  store i64 %181, i64* %184
  %185 = load i64, i64* %RBP
  %186 = sub i64 %185, 64
  %187 = load i64, i64* %R8
  %188 = load i64, i64* %PC
  %189 = add i64 %188, 4
  store i64 %189, i64* %PC
  %190 = inttoptr i64 %186 to i64*
  store i64 %187, i64* %190
  %191 = load i64, i64* %RBP
  %192 = sub i64 %191, 72
  %193 = load i64, i64* %R9
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 4
  store i64 %195, i64* %PC
  %196 = inttoptr i64 %192 to i64*
  store i64 %193, i64* %196
  %197 = load i64, i64* %RBP
  %198 = sub i64 %197, 40
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 4
  store i64 %200, i64* %PC
  %201 = inttoptr i64 %198 to i64*
  %202 = load i64, i64* %201
  store i64 %202, i64* %RCX, align 8, !tbaa !2451
  %203 = load i64, i64* %RCX
  %204 = bitcast %union.vec128_t* %XMM1 to i8*
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 4
  store i64 %206, i64* %PC
  %207 = bitcast i8* %204 to double*
  %208 = load double, double* %207, align 1
  %209 = inttoptr i64 %203 to double*
  store double %208, double* %209
  %210 = load i64, i64* %RBP
  %211 = sub i64 %210, 48
  %212 = load i64, i64* %PC
  %213 = add i64 %212, 4
  store i64 %213, i64* %PC
  %214 = inttoptr i64 %211 to i64*
  %215 = load i64, i64* %214
  store i64 %215, i64* %RCX, align 8, !tbaa !2451
  %216 = load i64, i64* %RCX
  %217 = bitcast %union.vec128_t* %XMM0 to i8*
  %218 = load i64, i64* %PC
  %219 = add i64 %218, 4
  store i64 %219, i64* %PC
  %220 = bitcast i8* %217 to double*
  %221 = load double, double* %220, align 1
  %222 = inttoptr i64 %216 to double*
  store double %221, double* %222
  %223 = load i64, i64* %RBP
  %224 = sub i64 %223, 76
  %225 = load i64, i64* %PC
  %226 = add i64 %225, 7
  store i64 %226, i64* %PC
  %227 = inttoptr i64 %224 to i32*
  store i32 0, i32* %227
  %228 = load i64, i64* %RBP
  %229 = sub i64 %228, 88
  %230 = load i64, i64* %R15
  %231 = load i64, i64* %PC
  %232 = add i64 %231, 4
  store i64 %232, i64* %PC
  %233 = inttoptr i64 %229 to i64*
  store i64 %230, i64* %233
  %234 = load i64, i64* %RBP
  %235 = sub i64 %234, 96
  %236 = load i64, i64* %R11
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 4
  store i64 %238, i64* %PC
  %239 = inttoptr i64 %235 to i64*
  store i64 %236, i64* %239
  %240 = load i64, i64* %RBP
  %241 = sub i64 %240, 104
  %242 = load i64, i64* %RBX
  %243 = load i64, i64* %PC
  %244 = add i64 %243, 4
  store i64 %244, i64* %PC
  %245 = inttoptr i64 %241 to i64*
  store i64 %242, i64* %245
  %246 = load i64, i64* %RBP
  %247 = sub i64 %246, 112
  %248 = load i64, i64* %R14
  %249 = load i64, i64* %PC
  %250 = add i64 %249, 4
  store i64 %250, i64* %PC
  %251 = inttoptr i64 %247 to i64*
  store i64 %248, i64* %251
  %252 = load i64, i64* %RBP
  %253 = sub i64 %252, 120
  %254 = load i64, i64* %R10
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 4
  store i64 %256, i64* %PC
  %257 = inttoptr i64 %253 to i64*
  store i64 %254, i64* %257
  %258 = load i64, i64* %RBP
  %259 = sub i64 %258, 128
  %260 = load i64, i64* %RAX
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 4
  store i64 %262, i64* %PC
  %263 = inttoptr i64 %259 to i64*
  store i64 %260, i64* %263
  br label %block_400bf7

block_400cfe:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit, %block_400d0a
  %MEMORY.0 = phi %struct.Memory* [ %1435, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ], [ %MEMORY.0, %block_400d0a ]
  %264 = load i64, i64* %RBP
  %265 = sub i64 %264, 80
  %266 = load i64, i64* %PC
  %267 = add i64 %266, 3
  store i64 %267, i64* %PC
  %268 = inttoptr i64 %265 to i32*
  %269 = load i32, i32* %268
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RAX, align 8, !tbaa !2451
  %271 = load i32, i32* %EAX
  %272 = zext i32 %271 to i64
  %273 = load i64, i64* %RBP
  %274 = sub i64 %273, 28
  %275 = load i64, i64* %PC
  %276 = add i64 %275, 3
  store i64 %276, i64* %PC
  %277 = inttoptr i64 %274 to i32*
  %278 = load i32, i32* %277
  %279 = sub i32 %271, %278
  %280 = icmp ult i32 %271, %278
  %281 = zext i1 %280 to i8
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %281, i8* %282, align 1, !tbaa !2428
  %283 = and i32 %279, 255
  %284 = call i32 @llvm.ctpop.i32(i32 %283) #16
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  %287 = xor i8 %286, 1
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %287, i8* %288, align 1, !tbaa !2445
  %289 = xor i32 %278, %271
  %290 = xor i32 %289, %279
  %291 = lshr i32 %290, 4
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %293, i8* %294, align 1, !tbaa !2446
  %295 = icmp eq i32 %279, 0
  %296 = zext i1 %295 to i8
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %296, i8* %297, align 1, !tbaa !2447
  %298 = lshr i32 %279, 31
  %299 = trunc i32 %298 to i8
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %299, i8* %300, align 1, !tbaa !2448
  %301 = lshr i32 %271, 31
  %302 = lshr i32 %278, 31
  %303 = xor i32 %302, %301
  %304 = xor i32 %298, %301
  %305 = add nuw nsw i32 %304, %303
  %306 = icmp eq i32 %305, 2
  %307 = zext i1 %306 to i8
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %307, i8* %308, align 1, !tbaa !2449
  %309 = load i64, i64* %PC
  %310 = add i64 %309, 76
  %311 = load i64, i64* %PC
  %312 = add i64 %311, 6
  %313 = load i64, i64* %PC
  %314 = add i64 %313, 6
  store i64 %314, i64* %PC
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %316 = load i8, i8* %315, align 1, !tbaa !2448
  %317 = icmp ne i8 %316, 0
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %319 = load i8, i8* %318, align 1, !tbaa !2449
  %320 = icmp ne i8 %319, 0
  %321 = xor i1 %317, %320
  %322 = xor i1 %321, true
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %325 = select i1 %321, i64 %312, i64 %310
  store i64 %325, i64* %324, align 8, !tbaa !2451
  %326 = load i8, i8* %BRANCH_TAKEN
  %327 = icmp eq i8 %326, 1
  br i1 %327, label %block_400d50, label %block_400d0a

block_400d50:                                     ; preds = %block_400cfe
  %328 = load i64, i64* %PC
  %329 = add i64 %328, 5
  %330 = load i64, i64* %PC
  %331 = add i64 %330, 5
  store i64 %331, i64* %PC
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %329, i64* %332, align 8, !tbaa !2451
  %333 = load i64, i64* %RBP
  %334 = sub i64 %333, 76
  %335 = load i64, i64* %PC
  %336 = add i64 %335, 3
  store i64 %336, i64* %PC
  %337 = inttoptr i64 %334 to i32*
  %338 = load i32, i32* %337
  %339 = zext i32 %338 to i64
  store i64 %339, i64* %RAX, align 8, !tbaa !2451
  %340 = load i64, i64* %RAX
  %341 = load i64, i64* %PC
  %342 = add i64 %341, 3
  store i64 %342, i64* %PC
  %343 = trunc i64 %340 to i32
  %344 = add i32 1, %343
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RAX, align 8, !tbaa !2451
  %346 = icmp ult i32 %344, %343
  %347 = icmp ult i32 %344, 1
  %348 = or i1 %346, %347
  %349 = zext i1 %348 to i8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %349, i8* %350, align 1, !tbaa !2428
  %351 = and i32 %344, 255
  %352 = call i32 @llvm.ctpop.i32(i32 %351) #16
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %355, i8* %356, align 1, !tbaa !2445
  %357 = xor i64 1, %340
  %358 = trunc i64 %357 to i32
  %359 = xor i32 %358, %344
  %360 = lshr i32 %359, 4
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %362, i8* %363, align 1, !tbaa !2446
  %364 = icmp eq i32 %344, 0
  %365 = zext i1 %364 to i8
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %365, i8* %366, align 1, !tbaa !2447
  %367 = lshr i32 %344, 31
  %368 = trunc i32 %367 to i8
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %368, i8* %369, align 1, !tbaa !2448
  %370 = lshr i32 %343, 31
  %371 = xor i32 %367, %370
  %372 = add nuw nsw i32 %371, %367
  %373 = icmp eq i32 %372, 2
  %374 = zext i1 %373 to i8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %374, i8* %375, align 1, !tbaa !2449
  %376 = load i64, i64* %RBP
  %377 = sub i64 %376, 76
  %378 = load i32, i32* %EAX
  %379 = zext i32 %378 to i64
  %380 = load i64, i64* %PC
  %381 = add i64 %380, 3
  store i64 %381, i64* %PC
  %382 = inttoptr i64 %377 to i32*
  store i32 %378, i32* %382
  %383 = load i64, i64* %PC
  %384 = sub i64 %383, 359
  %385 = load i64, i64* %PC
  %386 = add i64 %385, 5
  store i64 %386, i64* %PC
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %384, i64* %387, align 8, !tbaa !2451
  br label %block_400bf7

block_400bf7:                                     ; preds = %block_400d50, %block_400b80
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400b80 ], [ %MEMORY.0, %block_400d50 ]
  %388 = load i64, i64* %RBP
  %389 = sub i64 %388, 76
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 3
  store i64 %391, i64* %PC
  %392 = inttoptr i64 %389 to i32*
  %393 = load i32, i32* %392
  %394 = zext i32 %393 to i64
  store i64 %394, i64* %RAX, align 8, !tbaa !2451
  %395 = load i32, i32* %EAX
  %396 = zext i32 %395 to i64
  %397 = load i64, i64* %RBP
  %398 = sub i64 %397, 28
  %399 = load i64, i64* %PC
  %400 = add i64 %399, 3
  store i64 %400, i64* %PC
  %401 = inttoptr i64 %398 to i32*
  %402 = load i32, i32* %401
  %403 = sub i32 %395, %402
  %404 = icmp ult i32 %395, %402
  %405 = zext i1 %404 to i8
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %405, i8* %406, align 1, !tbaa !2428
  %407 = and i32 %403, 255
  %408 = call i32 @llvm.ctpop.i32(i32 %407) #16
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = xor i8 %410, 1
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %411, i8* %412, align 1, !tbaa !2445
  %413 = xor i32 %402, %395
  %414 = xor i32 %413, %403
  %415 = lshr i32 %414, 4
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %417, i8* %418, align 1, !tbaa !2446
  %419 = icmp eq i32 %403, 0
  %420 = zext i1 %419 to i8
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %420, i8* %421, align 1, !tbaa !2447
  %422 = lshr i32 %403, 31
  %423 = trunc i32 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %423, i8* %424, align 1, !tbaa !2448
  %425 = lshr i32 %395, 31
  %426 = lshr i32 %402, 31
  %427 = xor i32 %426, %425
  %428 = xor i32 %422, %425
  %429 = add nuw nsw i32 %428, %427
  %430 = icmp eq i32 %429, 2
  %431 = zext i1 %430 to i8
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %431, i8* %432, align 1, !tbaa !2449
  %433 = load i64, i64* %PC
  %434 = add i64 %433, 358
  %435 = load i64, i64* %PC
  %436 = add i64 %435, 6
  %437 = load i64, i64* %PC
  %438 = add i64 %437, 6
  store i64 %438, i64* %PC
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %440 = load i8, i8* %439, align 1, !tbaa !2448
  %441 = icmp ne i8 %440, 0
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %443 = load i8, i8* %442, align 1, !tbaa !2449
  %444 = icmp ne i8 %443, 0
  %445 = xor i1 %441, %444
  %446 = xor i1 %445, true
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %449 = select i1 %445, i64 %436, i64 %434
  store i64 %449, i64* %448, align 8, !tbaa !2451
  %450 = load i8, i8* %BRANCH_TAKEN
  %451 = icmp eq i8 %450, 1
  br i1 %451, label %block_400d63, label %block_400c03

block_400d0a:                                     ; preds = %block_400cfe
  %452 = load i64, i64* %RBP
  %453 = sub i64 %452, 76
  %454 = load i64, i64* %PC
  %455 = add i64 %454, 3
  store i64 %455, i64* %PC
  %456 = inttoptr i64 %453 to i32*
  %457 = load i32, i32* %456
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RAX, align 8, !tbaa !2451
  %459 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %460 = load i32, i32* %EAX
  %461 = zext i32 %460 to i64
  %462 = load i64, i64* %PC
  %463 = add i64 %462, 4
  store i64 %463, i64* %PC
  %464 = sitofp i32 %460 to double
  %465 = bitcast i8* %459 to double*
  store double %464, double* %465, align 1, !tbaa !2452
  %466 = load i64, i64* %RBP
  %467 = sub i64 %466, 80
  %468 = load i64, i64* %PC
  %469 = add i64 %468, 3
  store i64 %469, i64* %PC
  %470 = inttoptr i64 %467 to i32*
  %471 = load i32, i32* %470
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RAX, align 8, !tbaa !2451
  %473 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %474 = load i32, i32* %EAX
  %475 = zext i32 %474 to i64
  %476 = load i64, i64* %PC
  %477 = add i64 %476, 4
  store i64 %477, i64* %PC
  %478 = sitofp i32 %474 to double
  %479 = bitcast i8* %473 to double*
  store double %478, double* %479, align 1, !tbaa !2452
  %480 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %481 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %482 = bitcast %union.vec128_t* %XMM1 to i8*
  %483 = load i64, i64* %PC
  %484 = add i64 %483, 4
  store i64 %484, i64* %PC
  %485 = bitcast i8* %481 to double*
  %486 = load double, double* %485, align 1
  %487 = getelementptr inbounds i8, i8* %481, i64 8
  %488 = bitcast i8* %487 to i64*
  %489 = load i64, i64* %488, align 1
  %490 = bitcast i8* %482 to double*
  %491 = load double, double* %490, align 1
  %492 = fmul double %486, %491
  %493 = bitcast i8* %480 to double*
  store double %492, double* %493, align 1, !tbaa !2452
  %494 = getelementptr inbounds i8, i8* %480, i64 8
  %495 = bitcast i8* %494 to i64*
  store i64 %489, i64* %495, align 1, !tbaa !2452
  %496 = load i64, i64* %RBP
  %497 = sub i64 %496, 28
  %498 = load i64, i64* %PC
  %499 = add i64 %498, 3
  store i64 %499, i64* %PC
  %500 = inttoptr i64 %497 to i32*
  %501 = load i32, i32* %500
  %502 = zext i32 %501 to i64
  store i64 %502, i64* %RAX, align 8, !tbaa !2451
  %503 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %504 = load i32, i32* %EAX
  %505 = zext i32 %504 to i64
  %506 = load i64, i64* %PC
  %507 = add i64 %506, 4
  store i64 %507, i64* %PC
  %508 = sitofp i32 %504 to double
  %509 = bitcast i8* %503 to double*
  store double %508, double* %509, align 1, !tbaa !2452
  %510 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %511 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %512 = bitcast %union.vec128_t* %XMM1 to i8*
  %513 = load i64, i64* %PC
  %514 = add i64 %513, 4
  store i64 %514, i64* %PC
  %515 = bitcast i8* %511 to double*
  %516 = load double, double* %515, align 1
  %517 = getelementptr inbounds i8, i8* %511, i64 8
  %518 = bitcast i8* %517 to i64*
  %519 = load i64, i64* %518, align 1
  %520 = bitcast i8* %512 to double*
  %521 = load double, double* %520, align 1
  %522 = fdiv double %516, %521
  %523 = bitcast i8* %510 to double*
  store double %522, double* %523, align 1, !tbaa !2452
  %524 = getelementptr inbounds i8, i8* %510, i64 8
  %525 = bitcast i8* %524 to i64*
  store i64 %519, i64* %525, align 1, !tbaa !2452
  %526 = load i64, i64* %RBP
  %527 = sub i64 %526, 56
  %528 = load i64, i64* %PC
  %529 = add i64 %528, 4
  store i64 %529, i64* %PC
  %530 = inttoptr i64 %527 to i64*
  %531 = load i64, i64* %530
  store i64 %531, i64* %RCX, align 8, !tbaa !2451
  %532 = load i64, i64* %RBP
  %533 = sub i64 %532, 76
  %534 = load i64, i64* %PC
  %535 = add i64 %534, 4
  store i64 %535, i64* %PC
  %536 = inttoptr i64 %533 to i32*
  %537 = load i32, i32* %536
  %538 = sext i32 %537 to i64
  store i64 %538, i64* %RDX, align 8, !tbaa !2451
  %539 = load i64, i64* %RDX
  %540 = load i64, i64* %PC
  %541 = add i64 %540, 7
  store i64 %541, i64* %PC
  %542 = sext i64 %539 to i128
  %543 = and i128 %542, -18446744073709551616
  %544 = zext i64 %539 to i128
  %545 = or i128 %543, %544
  %546 = mul nsw i128 32000, %545
  %547 = trunc i128 %546 to i64
  store i64 %547, i64* %RDX, align 8, !tbaa !2451
  %548 = sext i64 %547 to i128
  %549 = icmp ne i128 %548, %546
  %550 = zext i1 %549 to i8
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %550, i8* %551, align 1, !tbaa !2428
  %552 = trunc i128 %546 to i32
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %553, align 1, !tbaa !2445
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %554, align 1, !tbaa !2446
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %555, align 1, !tbaa !2447
  %556 = lshr i64 %547, 63
  %557 = trunc i64 %556 to i8
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %557, i8* %558, align 1, !tbaa !2448
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %550, i8* %559, align 1, !tbaa !2449
  %560 = load i64, i64* %RCX
  %561 = load i64, i64* %RDX
  %562 = load i64, i64* %PC
  %563 = add i64 %562, 3
  store i64 %563, i64* %PC
  %564 = add i64 %561, %560
  store i64 %564, i64* %RCX, align 8, !tbaa !2451
  %565 = icmp ult i64 %564, %560
  %566 = icmp ult i64 %564, %561
  %567 = or i1 %565, %566
  %568 = zext i1 %567 to i8
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %568, i8* %569, align 1, !tbaa !2428
  %570 = trunc i64 %564 to i32
  %571 = and i32 %570, 255
  %572 = call i32 @llvm.ctpop.i32(i32 %571) #16
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = xor i8 %574, 1
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %575, i8* %576, align 1, !tbaa !2445
  %577 = xor i64 %561, %560
  %578 = xor i64 %577, %564
  %579 = lshr i64 %578, 4
  %580 = trunc i64 %579 to i8
  %581 = and i8 %580, 1
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %581, i8* %582, align 1, !tbaa !2446
  %583 = icmp eq i64 %564, 0
  %584 = zext i1 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %584, i8* %585, align 1, !tbaa !2447
  %586 = lshr i64 %564, 63
  %587 = trunc i64 %586 to i8
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %587, i8* %588, align 1, !tbaa !2448
  %589 = lshr i64 %560, 63
  %590 = lshr i64 %561, 63
  %591 = xor i64 %586, %589
  %592 = xor i64 %586, %590
  %593 = add nuw nsw i64 %591, %592
  %594 = icmp eq i64 %593, 2
  %595 = zext i1 %594 to i8
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %595, i8* %596, align 1, !tbaa !2449
  %597 = load i64, i64* %RBP
  %598 = sub i64 %597, 80
  %599 = load i64, i64* %PC
  %600 = add i64 %599, 4
  store i64 %600, i64* %PC
  %601 = inttoptr i64 %598 to i32*
  %602 = load i32, i32* %601
  %603 = sext i32 %602 to i64
  store i64 %603, i64* %RDX, align 8, !tbaa !2451
  %604 = load i64, i64* %RCX
  %605 = load i64, i64* %RDX
  %606 = mul i64 %605, 8
  %607 = add i64 %606, %604
  %608 = bitcast %union.vec128_t* %XMM0 to i8*
  %609 = load i64, i64* %PC
  %610 = add i64 %609, 5
  store i64 %610, i64* %PC
  %611 = bitcast i8* %608 to double*
  %612 = load double, double* %611, align 1
  %613 = inttoptr i64 %607 to double*
  store double %612, double* %613
  %614 = load i64, i64* %RBP
  %615 = sub i64 %614, 80
  %616 = load i64, i64* %PC
  %617 = add i64 %616, 3
  store i64 %617, i64* %PC
  %618 = inttoptr i64 %615 to i32*
  %619 = load i32, i32* %618
  %620 = zext i32 %619 to i64
  store i64 %620, i64* %RAX, align 8, !tbaa !2451
  %621 = load i64, i64* %RAX
  %622 = load i64, i64* %PC
  %623 = add i64 %622, 3
  store i64 %623, i64* %PC
  %624 = trunc i64 %621 to i32
  %625 = add i32 1, %624
  %626 = zext i32 %625 to i64
  store i64 %626, i64* %RAX, align 8, !tbaa !2451
  %627 = icmp ult i32 %625, %624
  %628 = icmp ult i32 %625, 1
  %629 = or i1 %627, %628
  %630 = zext i1 %629 to i8
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %630, i8* %631, align 1, !tbaa !2428
  %632 = and i32 %625, 255
  %633 = call i32 @llvm.ctpop.i32(i32 %632) #16
  %634 = trunc i32 %633 to i8
  %635 = and i8 %634, 1
  %636 = xor i8 %635, 1
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %636, i8* %637, align 1, !tbaa !2445
  %638 = xor i64 1, %621
  %639 = trunc i64 %638 to i32
  %640 = xor i32 %639, %625
  %641 = lshr i32 %640, 4
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %643, i8* %644, align 1, !tbaa !2446
  %645 = icmp eq i32 %625, 0
  %646 = zext i1 %645 to i8
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %646, i8* %647, align 1, !tbaa !2447
  %648 = lshr i32 %625, 31
  %649 = trunc i32 %648 to i8
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %649, i8* %650, align 1, !tbaa !2448
  %651 = lshr i32 %624, 31
  %652 = xor i32 %648, %651
  %653 = add nuw nsw i32 %652, %648
  %654 = icmp eq i32 %653, 2
  %655 = zext i1 %654 to i8
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %655, i8* %656, align 1, !tbaa !2449
  %657 = load i64, i64* %RBP
  %658 = sub i64 %657, 80
  %659 = load i32, i32* %EAX
  %660 = zext i32 %659 to i64
  %661 = load i64, i64* %PC
  %662 = add i64 %661, 3
  store i64 %662, i64* %PC
  %663 = inttoptr i64 %658 to i32*
  store i32 %659, i32* %663
  %664 = load i64, i64* %PC
  %665 = sub i64 %664, 77
  %666 = load i64, i64* %PC
  %667 = add i64 %666, 5
  store i64 %667, i64* %PC
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %665, i64* %668, align 8, !tbaa !2451
  br label %block_400cfe

block_400d63:                                     ; preds = %block_400bf7
  %669 = load i64, i64* %PC
  %670 = add i64 %669, 1
  store i64 %670, i64* %PC
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %672 = load i64, i64* %671, align 8, !tbaa !2451
  %673 = add i64 %672, 8
  %674 = inttoptr i64 %672 to i64*
  %675 = load i64, i64* %674
  store i64 %675, i64* %RBX, align 8, !tbaa !2451
  store i64 %673, i64* %671, align 8, !tbaa !2451
  %676 = load i64, i64* %PC
  %677 = add i64 %676, 2
  store i64 %677, i64* %PC
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %679 = load i64, i64* %678, align 8, !tbaa !2451
  %680 = add i64 %679, 8
  %681 = inttoptr i64 %679 to i64*
  %682 = load i64, i64* %681
  store i64 %682, i64* %R14, align 8, !tbaa !2451
  store i64 %680, i64* %678, align 8, !tbaa !2451
  %683 = load i64, i64* %PC
  %684 = add i64 %683, 2
  store i64 %684, i64* %PC
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %686 = load i64, i64* %685, align 8, !tbaa !2451
  %687 = add i64 %686, 8
  %688 = inttoptr i64 %686 to i64*
  %689 = load i64, i64* %688
  store i64 %689, i64* %R15, align 8, !tbaa !2451
  store i64 %687, i64* %685, align 8, !tbaa !2451
  %690 = load i64, i64* %PC
  %691 = add i64 %690, 1
  store i64 %691, i64* %PC
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %693 = load i64, i64* %692, align 8, !tbaa !2451
  %694 = add i64 %693, 8
  %695 = inttoptr i64 %693 to i64*
  %696 = load i64, i64* %695
  store i64 %696, i64* %RBP, align 8, !tbaa !2451
  store i64 %694, i64* %692, align 8, !tbaa !2451
  %697 = load i64, i64* %PC
  %698 = add i64 %697, 1
  store i64 %698, i64* %PC
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %701 = load i64, i64* %700, align 8, !tbaa !2451
  %702 = inttoptr i64 %701 to i64*
  %703 = load i64, i64* %702
  store i64 %703, i64* %699, align 8, !tbaa !2451
  %704 = add i64 %701, 8
  store i64 %704, i64* %700, align 8, !tbaa !2451
  ret %struct.Memory* %MEMORY.1

block_400c03:                                     ; preds = %block_400bf7
  %705 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %706 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %707 = bitcast %union.vec128_t* %XMM0 to i8*
  %708 = load i64, i64* %PC
  %709 = add i64 %708, 3
  store i64 %709, i64* %PC
  %710 = bitcast i8* %706 to i64*
  %711 = load i64, i64* %710, align 1
  %712 = getelementptr inbounds i8, i8* %706, i64 8
  %713 = bitcast i8* %712 to i64*
  %714 = load i64, i64* %713, align 1
  %715 = bitcast i8* %707 to i64*
  %716 = load i64, i64* %715, align 1
  %717 = getelementptr inbounds i8, i8* %707, i64 8
  %718 = bitcast i8* %717 to i64*
  %719 = load i64, i64* %718, align 1
  %720 = xor i64 %716, %711
  %721 = xor i64 %719, %714
  %722 = trunc i64 %720 to i32
  %723 = lshr i64 %720, 32
  %724 = trunc i64 %723 to i32
  %725 = bitcast i8* %705 to i32*
  store i32 %722, i32* %725, align 1, !tbaa !2456
  %726 = getelementptr inbounds i8, i8* %705, i64 4
  %727 = bitcast i8* %726 to i32*
  store i32 %724, i32* %727, align 1, !tbaa !2456
  %728 = trunc i64 %721 to i32
  %729 = getelementptr inbounds i8, i8* %705, i64 8
  %730 = bitcast i8* %729 to i32*
  store i32 %728, i32* %730, align 1, !tbaa !2456
  %731 = lshr i64 %721, 32
  %732 = trunc i64 %731 to i32
  %733 = getelementptr inbounds i8, i8* %705, i64 12
  %734 = bitcast i8* %733 to i32*
  store i32 %732, i32* %734, align 1, !tbaa !2456
  %735 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %736 = load i64, i64* %PC
  %737 = add i64 %736, 8
  store i64 %737, i64* %PC
  %738 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 24) to double*)
  %739 = bitcast i8* %735 to double*
  store double %738, double* %739, align 1, !tbaa !2452
  %740 = getelementptr inbounds i8, i8* %735, i64 8
  %741 = bitcast i8* %740 to double*
  store double 0.000000e+00, double* %741, align 1, !tbaa !2452
  %742 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %743 = load i64, i64* %PC
  %744 = add i64 %743, 8
  store i64 %744, i64* %PC
  %745 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 32) to double*)
  %746 = bitcast i8* %742 to double*
  store double %745, double* %746, align 1, !tbaa !2452
  %747 = getelementptr inbounds i8, i8* %742, i64 8
  %748 = bitcast i8* %747 to double*
  store double 0.000000e+00, double* %748, align 1, !tbaa !2452
  %749 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %750 = load i64, i64* %PC
  %751 = add i64 %750, 8
  store i64 %751, i64* %PC
  %752 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 40) to double*)
  %753 = bitcast i8* %749 to double*
  store double %752, double* %753, align 1, !tbaa !2452
  %754 = getelementptr inbounds i8, i8* %749, i64 8
  %755 = bitcast i8* %754 to double*
  store double 0.000000e+00, double* %755, align 1, !tbaa !2452
  %756 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %757 = load i64, i64* %PC
  %758 = add i64 %757, 8
  store i64 %758, i64* %PC
  %759 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 48) to double*)
  %760 = bitcast i8* %756 to double*
  store double %759, double* %760, align 1, !tbaa !2452
  %761 = getelementptr inbounds i8, i8* %756, i64 8
  %762 = bitcast i8* %761 to double*
  store double 0.000000e+00, double* %762, align 1, !tbaa !2452
  %763 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %764 = load i64, i64* %PC
  %765 = add i64 %764, 8
  store i64 %765, i64* %PC
  %766 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4014a0__rodata_type* @seg_4014a0__rodata to i64), i64 56) to double*)
  %767 = bitcast i8* %763 to double*
  store double %766, double* %767, align 1, !tbaa !2452
  %768 = getelementptr inbounds i8, i8* %763, i64 8
  %769 = bitcast i8* %768 to double*
  store double 0.000000e+00, double* %769, align 1, !tbaa !2452
  %770 = load i64, i64* %RBP
  %771 = sub i64 %770, 76
  %772 = load i64, i64* %PC
  %773 = add i64 %772, 3
  store i64 %773, i64* %PC
  %774 = inttoptr i64 %771 to i32*
  %775 = load i32, i32* %774
  %776 = zext i32 %775 to i64
  store i64 %776, i64* %RAX, align 8, !tbaa !2451
  %777 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %778 = load i32, i32* %EAX
  %779 = zext i32 %778 to i64
  %780 = load i64, i64* %PC
  %781 = add i64 %780, 4
  store i64 %781, i64* %PC
  %782 = sitofp i32 %778 to double
  %783 = bitcast i8* %777 to double*
  store double %782, double* %783, align 1, !tbaa !2452
  %784 = load i64, i64* %RBP
  %785 = sub i64 %784, 64
  %786 = load i64, i64* %PC
  %787 = add i64 %786, 4
  store i64 %787, i64* %PC
  %788 = inttoptr i64 %785 to i64*
  %789 = load i64, i64* %788
  store i64 %789, i64* %RCX, align 8, !tbaa !2451
  %790 = load i64, i64* %RBP
  %791 = sub i64 %790, 76
  %792 = load i64, i64* %PC
  %793 = add i64 %792, 4
  store i64 %793, i64* %PC
  %794 = inttoptr i64 %791 to i32*
  %795 = load i32, i32* %794
  %796 = sext i32 %795 to i64
  store i64 %796, i64* %RDX, align 8, !tbaa !2451
  %797 = load i64, i64* %RCX
  %798 = load i64, i64* %RDX
  %799 = mul i64 %798, 8
  %800 = add i64 %799, %797
  %801 = bitcast %union.vec128_t* %XMM6 to i8*
  %802 = load i64, i64* %PC
  %803 = add i64 %802, 5
  store i64 %803, i64* %PC
  %804 = bitcast i8* %801 to double*
  %805 = load double, double* %804, align 1
  %806 = inttoptr i64 %800 to double*
  store double %805, double* %806
  %807 = load i64, i64* %RBP
  %808 = sub i64 %807, 76
  %809 = load i64, i64* %PC
  %810 = add i64 %809, 3
  store i64 %810, i64* %PC
  %811 = inttoptr i64 %808 to i32*
  %812 = load i32, i32* %811
  %813 = zext i32 %812 to i64
  store i64 %813, i64* %RAX, align 8, !tbaa !2451
  %814 = load i64, i64* %RAX
  %815 = load i64, i64* %PC
  %816 = add i64 %815, 3
  store i64 %816, i64* %PC
  %817 = trunc i64 %814 to i32
  %818 = add i32 1, %817
  %819 = zext i32 %818 to i64
  store i64 %819, i64* %RAX, align 8, !tbaa !2451
  %820 = icmp ult i32 %818, %817
  %821 = icmp ult i32 %818, 1
  %822 = or i1 %820, %821
  %823 = zext i1 %822 to i8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %823, i8* %824, align 1, !tbaa !2428
  %825 = and i32 %818, 255
  %826 = call i32 @llvm.ctpop.i32(i32 %825) #16
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  %829 = xor i8 %828, 1
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %829, i8* %830, align 1, !tbaa !2445
  %831 = xor i64 1, %814
  %832 = trunc i64 %831 to i32
  %833 = xor i32 %832, %818
  %834 = lshr i32 %833, 4
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %836, i8* %837, align 1, !tbaa !2446
  %838 = icmp eq i32 %818, 0
  %839 = zext i1 %838 to i8
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %839, i8* %840, align 1, !tbaa !2447
  %841 = lshr i32 %818, 31
  %842 = trunc i32 %841 to i8
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %842, i8* %843, align 1, !tbaa !2448
  %844 = lshr i32 %817, 31
  %845 = xor i32 %841, %844
  %846 = add nuw nsw i32 %845, %841
  %847 = icmp eq i32 %846, 2
  %848 = zext i1 %847 to i8
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %848, i8* %849, align 1, !tbaa !2449
  %850 = load i64, i64* %PC
  %851 = add i64 %850, 1
  store i64 %851, i64* %PC
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %854 = bitcast %union.anon* %853 to i32*
  %855 = load i32, i32* %854, align 8, !tbaa !2456
  %856 = sext i32 %855 to i64
  %857 = lshr i64 %856, 32
  store i64 %857, i64* %852, align 8, !tbaa !2451
  %858 = load i64, i64* %RBP
  %859 = sub i64 %858, 28
  %860 = load i64, i64* %PC
  %861 = add i64 %860, 3
  store i64 %861, i64* %PC
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %863 = bitcast %union.anon* %862 to i32*
  %864 = load i32, i32* %863, align 8, !tbaa !2456
  %865 = zext i32 %864 to i64
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %867 = bitcast %union.anon* %866 to i32*
  %868 = load i32, i32* %867, align 8, !tbaa !2456
  %869 = zext i32 %868 to i64
  %870 = inttoptr i64 %859 to i32*
  %871 = load i32, i32* %870
  %872 = sext i32 %871 to i64
  %873 = shl nuw i64 %869, 32
  %874 = or i64 %873, %865
  %875 = sdiv i64 %874, %872
  %876 = shl i64 %875, 32
  %877 = ashr exact i64 %876, 32
  %878 = icmp eq i64 %875, %877
  br i1 %878, label %883, label %879

; <label>:879:                                    ; preds = %block_400c03
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %881 = load i64, i64* %880, align 8, !tbaa !2451
  %882 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %881, %struct.Memory* %MEMORY.1) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit4

; <label>:883:                                    ; preds = %block_400c03
  %884 = srem i64 %874, %872
  %885 = getelementptr inbounds %union.anon, %union.anon* %862, i64 0, i32 0
  %886 = and i64 %875, 4294967295
  store i64 %886, i64* %885, align 8, !tbaa !2451
  %887 = getelementptr inbounds %union.anon, %union.anon* %866, i64 0, i32 0
  %888 = and i64 %884, 4294967295
  store i64 %888, i64* %887, align 8, !tbaa !2451
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %889, align 1, !tbaa !2428
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %890, align 1, !tbaa !2445
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %891, align 1, !tbaa !2446
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %892, align 1, !tbaa !2447
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %893, align 1, !tbaa !2448
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %894, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit4

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit4: ; preds = %879, %883
  %895 = phi %struct.Memory* [ %882, %879 ], [ %MEMORY.1, %883 ]
  %896 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %897 = load i32, i32* %EAX
  %898 = zext i32 %897 to i64
  %899 = load i64, i64* %PC
  %900 = add i64 %899, 4
  store i64 %900, i64* %PC
  %901 = sitofp i32 %897 to double
  %902 = bitcast i8* %896 to double*
  store double %901, double* %902, align 1, !tbaa !2452
  %903 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %904 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %905 = bitcast %union.vec128_t* %XMM5 to i8*
  %906 = load i64, i64* %PC
  %907 = add i64 %906, 4
  store i64 %907, i64* %PC
  %908 = bitcast i8* %904 to double*
  %909 = load double, double* %908, align 1
  %910 = getelementptr inbounds i8, i8* %904, i64 8
  %911 = bitcast i8* %910 to i64*
  %912 = load i64, i64* %911, align 1
  %913 = bitcast i8* %905 to double*
  %914 = load double, double* %913, align 1
  %915 = fdiv double %909, %914
  %916 = bitcast i8* %903 to double*
  store double %915, double* %916, align 1, !tbaa !2452
  %917 = getelementptr inbounds i8, i8* %903, i64 8
  %918 = bitcast i8* %917 to i64*
  store i64 %912, i64* %918, align 1, !tbaa !2452
  %919 = load i64, i64* %RBP
  %920 = add i64 %919, 16
  %921 = load i64, i64* %PC
  %922 = add i64 %921, 4
  store i64 %922, i64* %PC
  %923 = inttoptr i64 %920 to i64*
  %924 = load i64, i64* %923
  store i64 %924, i64* %RCX, align 8, !tbaa !2451
  %925 = load i64, i64* %RBP
  %926 = sub i64 %925, 76
  %927 = load i64, i64* %PC
  %928 = add i64 %927, 4
  store i64 %928, i64* %PC
  %929 = inttoptr i64 %926 to i32*
  %930 = load i32, i32* %929
  %931 = sext i32 %930 to i64
  store i64 %931, i64* %RSI, align 8, !tbaa !2451
  %932 = load i64, i64* %RCX
  %933 = load i64, i64* %RSI
  %934 = mul i64 %933, 8
  %935 = add i64 %934, %932
  %936 = bitcast %union.vec128_t* %XMM6 to i8*
  %937 = load i64, i64* %PC
  %938 = add i64 %937, 5
  store i64 %938, i64* %PC
  %939 = bitcast i8* %936 to double*
  %940 = load double, double* %939, align 1
  %941 = inttoptr i64 %935 to double*
  store double %940, double* %941
  %942 = load i64, i64* %RBP
  %943 = sub i64 %942, 76
  %944 = load i64, i64* %PC
  %945 = add i64 %944, 3
  store i64 %945, i64* %PC
  %946 = inttoptr i64 %943 to i32*
  %947 = load i32, i32* %946
  %948 = zext i32 %947 to i64
  store i64 %948, i64* %RAX, align 8, !tbaa !2451
  %949 = load i64, i64* %RAX
  %950 = load i64, i64* %PC
  %951 = add i64 %950, 3
  store i64 %951, i64* %PC
  %952 = trunc i64 %949 to i32
  %953 = add i32 1, %952
  %954 = zext i32 %953 to i64
  store i64 %954, i64* %RAX, align 8, !tbaa !2451
  %955 = icmp ult i32 %953, %952
  %956 = icmp ult i32 %953, 1
  %957 = or i1 %955, %956
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %958, i8* %959, align 1, !tbaa !2428
  %960 = and i32 %953, 255
  %961 = call i32 @llvm.ctpop.i32(i32 %960) #16
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %964, i8* %965, align 1, !tbaa !2445
  %966 = xor i64 1, %949
  %967 = trunc i64 %966 to i32
  %968 = xor i32 %967, %953
  %969 = lshr i32 %968, 4
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %971, i8* %972, align 1, !tbaa !2446
  %973 = icmp eq i32 %953, 0
  %974 = zext i1 %973 to i8
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %974, i8* %975, align 1, !tbaa !2447
  %976 = lshr i32 %953, 31
  %977 = trunc i32 %976 to i8
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %977, i8* %978, align 1, !tbaa !2448
  %979 = lshr i32 %952, 31
  %980 = xor i32 %976, %979
  %981 = add nuw nsw i32 %980, %976
  %982 = icmp eq i32 %981, 2
  %983 = zext i1 %982 to i8
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %983, i8* %984, align 1, !tbaa !2449
  %985 = load i64, i64* %PC
  %986 = add i64 %985, 1
  store i64 %986, i64* %PC
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %989 = bitcast %union.anon* %988 to i32*
  %990 = load i32, i32* %989, align 8, !tbaa !2456
  %991 = sext i32 %990 to i64
  %992 = lshr i64 %991, 32
  store i64 %992, i64* %987, align 8, !tbaa !2451
  %993 = load i64, i64* %RBP
  %994 = sub i64 %993, 28
  %995 = load i64, i64* %PC
  %996 = add i64 %995, 3
  store i64 %996, i64* %PC
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %998 = bitcast %union.anon* %997 to i32*
  %999 = load i32, i32* %998, align 8, !tbaa !2456
  %1000 = zext i32 %999 to i64
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1002 = bitcast %union.anon* %1001 to i32*
  %1003 = load i32, i32* %1002, align 8, !tbaa !2456
  %1004 = zext i32 %1003 to i64
  %1005 = inttoptr i64 %994 to i32*
  %1006 = load i32, i32* %1005
  %1007 = sext i32 %1006 to i64
  %1008 = shl nuw i64 %1004, 32
  %1009 = or i64 %1008, %1000
  %1010 = sdiv i64 %1009, %1007
  %1011 = shl i64 %1010, 32
  %1012 = ashr exact i64 %1011, 32
  %1013 = icmp eq i64 %1010, %1012
  br i1 %1013, label %1018, label %1014

; <label>:1014:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit4
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1016 = load i64, i64* %1015, align 8, !tbaa !2451
  %1017 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1016, %struct.Memory* %895) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit3

; <label>:1018:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit4
  %1019 = srem i64 %1009, %1007
  %1020 = getelementptr inbounds %union.anon, %union.anon* %997, i64 0, i32 0
  %1021 = and i64 %1010, 4294967295
  store i64 %1021, i64* %1020, align 8, !tbaa !2451
  %1022 = getelementptr inbounds %union.anon, %union.anon* %1001, i64 0, i32 0
  %1023 = and i64 %1019, 4294967295
  store i64 %1023, i64* %1022, align 8, !tbaa !2451
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1024, align 1, !tbaa !2428
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1025, align 1, !tbaa !2445
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1026, align 1, !tbaa !2446
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1027, align 1, !tbaa !2447
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1028, align 1, !tbaa !2448
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1029, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit3

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit3: ; preds = %1014, %1018
  %1030 = phi %struct.Memory* [ %1017, %1014 ], [ %895, %1018 ]
  %1031 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %1032 = load i32, i32* %EAX
  %1033 = zext i32 %1032 to i64
  %1034 = load i64, i64* %PC
  %1035 = add i64 %1034, 4
  store i64 %1035, i64* %PC
  %1036 = sitofp i32 %1032 to double
  %1037 = bitcast i8* %1031 to double*
  store double %1036, double* %1037, align 1, !tbaa !2452
  %1038 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %1039 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %1040 = bitcast %union.vec128_t* %XMM4 to i8*
  %1041 = load i64, i64* %PC
  %1042 = add i64 %1041, 4
  store i64 %1042, i64* %PC
  %1043 = bitcast i8* %1039 to double*
  %1044 = load double, double* %1043, align 1
  %1045 = getelementptr inbounds i8, i8* %1039, i64 8
  %1046 = bitcast i8* %1045 to i64*
  %1047 = load i64, i64* %1046, align 1
  %1048 = bitcast i8* %1040 to double*
  %1049 = load double, double* %1048, align 1
  %1050 = fdiv double %1044, %1049
  %1051 = bitcast i8* %1038 to double*
  store double %1050, double* %1051, align 1, !tbaa !2452
  %1052 = getelementptr inbounds i8, i8* %1038, i64 8
  %1053 = bitcast i8* %1052 to i64*
  store i64 %1047, i64* %1053, align 1, !tbaa !2452
  %1054 = load i64, i64* %RBP
  %1055 = sub i64 %1054, 72
  %1056 = load i64, i64* %PC
  %1057 = add i64 %1056, 4
  store i64 %1057, i64* %PC
  %1058 = inttoptr i64 %1055 to i64*
  %1059 = load i64, i64* %1058
  store i64 %1059, i64* %RCX, align 8, !tbaa !2451
  %1060 = load i64, i64* %RBP
  %1061 = sub i64 %1060, 76
  %1062 = load i64, i64* %PC
  %1063 = add i64 %1062, 4
  store i64 %1063, i64* %PC
  %1064 = inttoptr i64 %1061 to i32*
  %1065 = load i32, i32* %1064
  %1066 = sext i32 %1065 to i64
  store i64 %1066, i64* %RSI, align 8, !tbaa !2451
  %1067 = load i64, i64* %RCX
  %1068 = load i64, i64* %RSI
  %1069 = mul i64 %1068, 8
  %1070 = add i64 %1069, %1067
  %1071 = bitcast %union.vec128_t* %XMM5 to i8*
  %1072 = load i64, i64* %PC
  %1073 = add i64 %1072, 5
  store i64 %1073, i64* %PC
  %1074 = bitcast i8* %1071 to double*
  %1075 = load double, double* %1074, align 1
  %1076 = inttoptr i64 %1070 to double*
  store double %1075, double* %1076
  %1077 = load i64, i64* %RBP
  %1078 = sub i64 %1077, 76
  %1079 = load i64, i64* %PC
  %1080 = add i64 %1079, 3
  store i64 %1080, i64* %PC
  %1081 = inttoptr i64 %1078 to i32*
  %1082 = load i32, i32* %1081
  %1083 = zext i32 %1082 to i64
  store i64 %1083, i64* %RAX, align 8, !tbaa !2451
  %1084 = load i64, i64* %RAX
  %1085 = load i64, i64* %PC
  %1086 = add i64 %1085, 3
  store i64 %1086, i64* %PC
  %1087 = trunc i64 %1084 to i32
  %1088 = add i32 1, %1087
  %1089 = zext i32 %1088 to i64
  store i64 %1089, i64* %RAX, align 8, !tbaa !2451
  %1090 = icmp ult i32 %1088, %1087
  %1091 = icmp ult i32 %1088, 1
  %1092 = or i1 %1090, %1091
  %1093 = zext i1 %1092 to i8
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1093, i8* %1094, align 1, !tbaa !2428
  %1095 = and i32 %1088, 255
  %1096 = call i32 @llvm.ctpop.i32(i32 %1095) #16
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  %1099 = xor i8 %1098, 1
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1099, i8* %1100, align 1, !tbaa !2445
  %1101 = xor i64 1, %1084
  %1102 = trunc i64 %1101 to i32
  %1103 = xor i32 %1102, %1088
  %1104 = lshr i32 %1103, 4
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1106, i8* %1107, align 1, !tbaa !2446
  %1108 = icmp eq i32 %1088, 0
  %1109 = zext i1 %1108 to i8
  %1110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1109, i8* %1110, align 1, !tbaa !2447
  %1111 = lshr i32 %1088, 31
  %1112 = trunc i32 %1111 to i8
  %1113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1112, i8* %1113, align 1, !tbaa !2448
  %1114 = lshr i32 %1087, 31
  %1115 = xor i32 %1111, %1114
  %1116 = add nuw nsw i32 %1115, %1111
  %1117 = icmp eq i32 %1116, 2
  %1118 = zext i1 %1117 to i8
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1118, i8* %1119, align 1, !tbaa !2449
  %1120 = load i64, i64* %PC
  %1121 = add i64 %1120, 1
  store i64 %1121, i64* %PC
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1124 = bitcast %union.anon* %1123 to i32*
  %1125 = load i32, i32* %1124, align 8, !tbaa !2456
  %1126 = sext i32 %1125 to i64
  %1127 = lshr i64 %1126, 32
  store i64 %1127, i64* %1122, align 8, !tbaa !2451
  %1128 = load i64, i64* %RBP
  %1129 = sub i64 %1128, 28
  %1130 = load i64, i64* %PC
  %1131 = add i64 %1130, 3
  store i64 %1131, i64* %PC
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1133 = bitcast %union.anon* %1132 to i32*
  %1134 = load i32, i32* %1133, align 8, !tbaa !2456
  %1135 = zext i32 %1134 to i64
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1137 = bitcast %union.anon* %1136 to i32*
  %1138 = load i32, i32* %1137, align 8, !tbaa !2456
  %1139 = zext i32 %1138 to i64
  %1140 = inttoptr i64 %1129 to i32*
  %1141 = load i32, i32* %1140
  %1142 = sext i32 %1141 to i64
  %1143 = shl nuw i64 %1139, 32
  %1144 = or i64 %1143, %1135
  %1145 = sdiv i64 %1144, %1142
  %1146 = shl i64 %1145, 32
  %1147 = ashr exact i64 %1146, 32
  %1148 = icmp eq i64 %1145, %1147
  br i1 %1148, label %1153, label %1149

; <label>:1149:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit3
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1151 = load i64, i64* %1150, align 8, !tbaa !2451
  %1152 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1151, %struct.Memory* %1030) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit2

; <label>:1153:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit3
  %1154 = srem i64 %1144, %1142
  %1155 = getelementptr inbounds %union.anon, %union.anon* %1132, i64 0, i32 0
  %1156 = and i64 %1145, 4294967295
  store i64 %1156, i64* %1155, align 8, !tbaa !2451
  %1157 = getelementptr inbounds %union.anon, %union.anon* %1136, i64 0, i32 0
  %1158 = and i64 %1154, 4294967295
  store i64 %1158, i64* %1157, align 8, !tbaa !2451
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1159, align 1, !tbaa !2428
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1160, align 1, !tbaa !2445
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1161, align 1, !tbaa !2446
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1162, align 1, !tbaa !2447
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1163, align 1, !tbaa !2448
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1164, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit2

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit2: ; preds = %1149, %1153
  %1165 = phi %struct.Memory* [ %1152, %1149 ], [ %1030, %1153 ]
  %1166 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %1167 = load i32, i32* %EAX
  %1168 = zext i32 %1167 to i64
  %1169 = load i64, i64* %PC
  %1170 = add i64 %1169, 4
  store i64 %1170, i64* %PC
  %1171 = sitofp i32 %1167 to double
  %1172 = bitcast i8* %1166 to double*
  store double %1171, double* %1172, align 1, !tbaa !2452
  %1173 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %1174 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %1175 = bitcast %union.vec128_t* %XMM3 to i8*
  %1176 = load i64, i64* %PC
  %1177 = add i64 %1176, 4
  store i64 %1177, i64* %PC
  %1178 = bitcast i8* %1174 to double*
  %1179 = load double, double* %1178, align 1
  %1180 = getelementptr inbounds i8, i8* %1174, i64 8
  %1181 = bitcast i8* %1180 to i64*
  %1182 = load i64, i64* %1181, align 1
  %1183 = bitcast i8* %1175 to double*
  %1184 = load double, double* %1183, align 1
  %1185 = fdiv double %1179, %1184
  %1186 = bitcast i8* %1173 to double*
  store double %1185, double* %1186, align 1, !tbaa !2452
  %1187 = getelementptr inbounds i8, i8* %1173, i64 8
  %1188 = bitcast i8* %1187 to i64*
  store i64 %1182, i64* %1188, align 1, !tbaa !2452
  %1189 = load i64, i64* %RBP
  %1190 = add i64 %1189, 24
  %1191 = load i64, i64* %PC
  %1192 = add i64 %1191, 4
  store i64 %1192, i64* %PC
  %1193 = inttoptr i64 %1190 to i64*
  %1194 = load i64, i64* %1193
  store i64 %1194, i64* %RCX, align 8, !tbaa !2451
  %1195 = load i64, i64* %RBP
  %1196 = sub i64 %1195, 76
  %1197 = load i64, i64* %PC
  %1198 = add i64 %1197, 4
  store i64 %1198, i64* %PC
  %1199 = inttoptr i64 %1196 to i32*
  %1200 = load i32, i32* %1199
  %1201 = sext i32 %1200 to i64
  store i64 %1201, i64* %RSI, align 8, !tbaa !2451
  %1202 = load i64, i64* %RCX
  %1203 = load i64, i64* %RSI
  %1204 = mul i64 %1203, 8
  %1205 = add i64 %1204, %1202
  %1206 = bitcast %union.vec128_t* %XMM4 to i8*
  %1207 = load i64, i64* %PC
  %1208 = add i64 %1207, 5
  store i64 %1208, i64* %PC
  %1209 = bitcast i8* %1206 to double*
  %1210 = load double, double* %1209, align 1
  %1211 = inttoptr i64 %1205 to double*
  store double %1210, double* %1211
  %1212 = load i64, i64* %RBP
  %1213 = sub i64 %1212, 76
  %1214 = load i64, i64* %PC
  %1215 = add i64 %1214, 3
  store i64 %1215, i64* %PC
  %1216 = inttoptr i64 %1213 to i32*
  %1217 = load i32, i32* %1216
  %1218 = zext i32 %1217 to i64
  store i64 %1218, i64* %RAX, align 8, !tbaa !2451
  %1219 = load i64, i64* %RAX
  %1220 = load i64, i64* %PC
  %1221 = add i64 %1220, 3
  store i64 %1221, i64* %PC
  %1222 = trunc i64 %1219 to i32
  %1223 = add i32 1, %1222
  %1224 = zext i32 %1223 to i64
  store i64 %1224, i64* %RAX, align 8, !tbaa !2451
  %1225 = icmp ult i32 %1223, %1222
  %1226 = icmp ult i32 %1223, 1
  %1227 = or i1 %1225, %1226
  %1228 = zext i1 %1227 to i8
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1228, i8* %1229, align 1, !tbaa !2428
  %1230 = and i32 %1223, 255
  %1231 = call i32 @llvm.ctpop.i32(i32 %1230) #16
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  %1234 = xor i8 %1233, 1
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1234, i8* %1235, align 1, !tbaa !2445
  %1236 = xor i64 1, %1219
  %1237 = trunc i64 %1236 to i32
  %1238 = xor i32 %1237, %1223
  %1239 = lshr i32 %1238, 4
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1241, i8* %1242, align 1, !tbaa !2446
  %1243 = icmp eq i32 %1223, 0
  %1244 = zext i1 %1243 to i8
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1244, i8* %1245, align 1, !tbaa !2447
  %1246 = lshr i32 %1223, 31
  %1247 = trunc i32 %1246 to i8
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1247, i8* %1248, align 1, !tbaa !2448
  %1249 = lshr i32 %1222, 31
  %1250 = xor i32 %1246, %1249
  %1251 = add nuw nsw i32 %1250, %1246
  %1252 = icmp eq i32 %1251, 2
  %1253 = zext i1 %1252 to i8
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1253, i8* %1254, align 1, !tbaa !2449
  %1255 = load i64, i64* %PC
  %1256 = add i64 %1255, 1
  store i64 %1256, i64* %PC
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1259 = bitcast %union.anon* %1258 to i32*
  %1260 = load i32, i32* %1259, align 8, !tbaa !2456
  %1261 = sext i32 %1260 to i64
  %1262 = lshr i64 %1261, 32
  store i64 %1262, i64* %1257, align 8, !tbaa !2451
  %1263 = load i64, i64* %RBP
  %1264 = sub i64 %1263, 28
  %1265 = load i64, i64* %PC
  %1266 = add i64 %1265, 3
  store i64 %1266, i64* %PC
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1268 = bitcast %union.anon* %1267 to i32*
  %1269 = load i32, i32* %1268, align 8, !tbaa !2456
  %1270 = zext i32 %1269 to i64
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1272 = bitcast %union.anon* %1271 to i32*
  %1273 = load i32, i32* %1272, align 8, !tbaa !2456
  %1274 = zext i32 %1273 to i64
  %1275 = inttoptr i64 %1264 to i32*
  %1276 = load i32, i32* %1275
  %1277 = sext i32 %1276 to i64
  %1278 = shl nuw i64 %1274, 32
  %1279 = or i64 %1278, %1270
  %1280 = sdiv i64 %1279, %1277
  %1281 = shl i64 %1280, 32
  %1282 = ashr exact i64 %1281, 32
  %1283 = icmp eq i64 %1280, %1282
  br i1 %1283, label %1288, label %1284

; <label>:1284:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit2
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1286 = load i64, i64* %1285, align 8, !tbaa !2451
  %1287 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1286, %struct.Memory* %1165) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:1288:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit2
  %1289 = srem i64 %1279, %1277
  %1290 = getelementptr inbounds %union.anon, %union.anon* %1267, i64 0, i32 0
  %1291 = and i64 %1280, 4294967295
  store i64 %1291, i64* %1290, align 8, !tbaa !2451
  %1292 = getelementptr inbounds %union.anon, %union.anon* %1271, i64 0, i32 0
  %1293 = and i64 %1289, 4294967295
  store i64 %1293, i64* %1292, align 8, !tbaa !2451
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1294, align 1, !tbaa !2428
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1295, align 1, !tbaa !2445
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1296, align 1, !tbaa !2446
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1297, align 1, !tbaa !2447
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1298, align 1, !tbaa !2448
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1299, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %1284, %1288
  %1300 = phi %struct.Memory* [ %1287, %1284 ], [ %1165, %1288 ]
  %1301 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %1302 = load i32, i32* %EAX
  %1303 = zext i32 %1302 to i64
  %1304 = load i64, i64* %PC
  %1305 = add i64 %1304, 4
  store i64 %1305, i64* %PC
  %1306 = sitofp i32 %1302 to double
  %1307 = bitcast i8* %1301 to double*
  store double %1306, double* %1307, align 1, !tbaa !2452
  %1308 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %1309 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %1310 = bitcast %union.vec128_t* %XMM2 to i8*
  %1311 = load i64, i64* %PC
  %1312 = add i64 %1311, 4
  store i64 %1312, i64* %PC
  %1313 = bitcast i8* %1309 to double*
  %1314 = load double, double* %1313, align 1
  %1315 = getelementptr inbounds i8, i8* %1309, i64 8
  %1316 = bitcast i8* %1315 to i64*
  %1317 = load i64, i64* %1316, align 1
  %1318 = bitcast i8* %1310 to double*
  %1319 = load double, double* %1318, align 1
  %1320 = fdiv double %1314, %1319
  %1321 = bitcast i8* %1308 to double*
  store double %1320, double* %1321, align 1, !tbaa !2452
  %1322 = getelementptr inbounds i8, i8* %1308, i64 8
  %1323 = bitcast i8* %1322 to i64*
  store i64 %1317, i64* %1323, align 1, !tbaa !2452
  %1324 = load i64, i64* %RBP
  %1325 = add i64 %1324, 48
  %1326 = load i64, i64* %PC
  %1327 = add i64 %1326, 4
  store i64 %1327, i64* %PC
  %1328 = inttoptr i64 %1325 to i64*
  %1329 = load i64, i64* %1328
  store i64 %1329, i64* %RCX, align 8, !tbaa !2451
  %1330 = load i64, i64* %RBP
  %1331 = sub i64 %1330, 76
  %1332 = load i64, i64* %PC
  %1333 = add i64 %1332, 4
  store i64 %1333, i64* %PC
  %1334 = inttoptr i64 %1331 to i32*
  %1335 = load i32, i32* %1334
  %1336 = sext i32 %1335 to i64
  store i64 %1336, i64* %RSI, align 8, !tbaa !2451
  %1337 = load i64, i64* %RCX
  %1338 = load i64, i64* %RSI
  %1339 = mul i64 %1338, 8
  %1340 = add i64 %1339, %1337
  %1341 = bitcast %union.vec128_t* %XMM3 to i8*
  %1342 = load i64, i64* %PC
  %1343 = add i64 %1342, 5
  store i64 %1343, i64* %PC
  %1344 = bitcast i8* %1341 to double*
  %1345 = load double, double* %1344, align 1
  %1346 = inttoptr i64 %1340 to double*
  store double %1345, double* %1346
  %1347 = load i64, i64* %RBP
  %1348 = sub i64 %1347, 76
  %1349 = load i64, i64* %PC
  %1350 = add i64 %1349, 3
  store i64 %1350, i64* %PC
  %1351 = inttoptr i64 %1348 to i32*
  %1352 = load i32, i32* %1351
  %1353 = zext i32 %1352 to i64
  store i64 %1353, i64* %RAX, align 8, !tbaa !2451
  %1354 = load i64, i64* %RAX
  %1355 = load i64, i64* %PC
  %1356 = add i64 %1355, 3
  store i64 %1356, i64* %PC
  %1357 = trunc i64 %1354 to i32
  %1358 = add i32 1, %1357
  %1359 = zext i32 %1358 to i64
  store i64 %1359, i64* %RAX, align 8, !tbaa !2451
  %1360 = icmp ult i32 %1358, %1357
  %1361 = icmp ult i32 %1358, 1
  %1362 = or i1 %1360, %1361
  %1363 = zext i1 %1362 to i8
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1363, i8* %1364, align 1, !tbaa !2428
  %1365 = and i32 %1358, 255
  %1366 = call i32 @llvm.ctpop.i32(i32 %1365) #16
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  %1369 = xor i8 %1368, 1
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1369, i8* %1370, align 1, !tbaa !2445
  %1371 = xor i64 1, %1354
  %1372 = trunc i64 %1371 to i32
  %1373 = xor i32 %1372, %1358
  %1374 = lshr i32 %1373, 4
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1376, i8* %1377, align 1, !tbaa !2446
  %1378 = icmp eq i32 %1358, 0
  %1379 = zext i1 %1378 to i8
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1379, i8* %1380, align 1, !tbaa !2447
  %1381 = lshr i32 %1358, 31
  %1382 = trunc i32 %1381 to i8
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1382, i8* %1383, align 1, !tbaa !2448
  %1384 = lshr i32 %1357, 31
  %1385 = xor i32 %1381, %1384
  %1386 = add nuw nsw i32 %1385, %1381
  %1387 = icmp eq i32 %1386, 2
  %1388 = zext i1 %1387 to i8
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1388, i8* %1389, align 1, !tbaa !2449
  %1390 = load i64, i64* %PC
  %1391 = add i64 %1390, 1
  store i64 %1391, i64* %PC
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1394 = bitcast %union.anon* %1393 to i32*
  %1395 = load i32, i32* %1394, align 8, !tbaa !2456
  %1396 = sext i32 %1395 to i64
  %1397 = lshr i64 %1396, 32
  store i64 %1397, i64* %1392, align 8, !tbaa !2451
  %1398 = load i64, i64* %RBP
  %1399 = sub i64 %1398, 28
  %1400 = load i64, i64* %PC
  %1401 = add i64 %1400, 3
  store i64 %1401, i64* %PC
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1403 = bitcast %union.anon* %1402 to i32*
  %1404 = load i32, i32* %1403, align 8, !tbaa !2456
  %1405 = zext i32 %1404 to i64
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1407 = bitcast %union.anon* %1406 to i32*
  %1408 = load i32, i32* %1407, align 8, !tbaa !2456
  %1409 = zext i32 %1408 to i64
  %1410 = inttoptr i64 %1399 to i32*
  %1411 = load i32, i32* %1410
  %1412 = sext i32 %1411 to i64
  %1413 = shl nuw i64 %1409, 32
  %1414 = or i64 %1413, %1405
  %1415 = sdiv i64 %1414, %1412
  %1416 = shl i64 %1415, 32
  %1417 = ashr exact i64 %1416, 32
  %1418 = icmp eq i64 %1415, %1417
  br i1 %1418, label %1423, label %1419

; <label>:1419:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1421 = load i64, i64* %1420, align 8, !tbaa !2451
  %1422 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1421, %struct.Memory* %1300) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:1423:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1
  %1424 = srem i64 %1414, %1412
  %1425 = getelementptr inbounds %union.anon, %union.anon* %1402, i64 0, i32 0
  %1426 = and i64 %1415, 4294967295
  store i64 %1426, i64* %1425, align 8, !tbaa !2451
  %1427 = getelementptr inbounds %union.anon, %union.anon* %1406, i64 0, i32 0
  %1428 = and i64 %1424, 4294967295
  store i64 %1428, i64* %1427, align 8, !tbaa !2451
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1429, align 1, !tbaa !2428
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1430, align 1, !tbaa !2445
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1431, align 1, !tbaa !2446
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1432, align 1, !tbaa !2447
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1433, align 1, !tbaa !2448
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1434, align 1, !tbaa !2449
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %1419, %1423
  %1435 = phi %struct.Memory* [ %1422, %1419 ], [ %1300, %1423 ]
  %1436 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1437 = load i32, i32* %EAX
  %1438 = zext i32 %1437 to i64
  %1439 = load i64, i64* %PC
  %1440 = add i64 %1439, 4
  store i64 %1440, i64* %PC
  %1441 = sitofp i32 %1437 to double
  %1442 = bitcast i8* %1436 to double*
  store double %1441, double* %1442, align 1, !tbaa !2452
  %1443 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1444 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1445 = bitcast %union.vec128_t* %XMM1 to i8*
  %1446 = load i64, i64* %PC
  %1447 = add i64 %1446, 4
  store i64 %1447, i64* %PC
  %1448 = bitcast i8* %1444 to double*
  %1449 = load double, double* %1448, align 1
  %1450 = getelementptr inbounds i8, i8* %1444, i64 8
  %1451 = bitcast i8* %1450 to i64*
  %1452 = load i64, i64* %1451, align 1
  %1453 = bitcast i8* %1445 to double*
  %1454 = load double, double* %1453, align 1
  %1455 = fdiv double %1449, %1454
  %1456 = bitcast i8* %1443 to double*
  store double %1455, double* %1456, align 1, !tbaa !2452
  %1457 = getelementptr inbounds i8, i8* %1443, i64 8
  %1458 = bitcast i8* %1457 to i64*
  store i64 %1452, i64* %1458, align 1, !tbaa !2452
  %1459 = load i64, i64* %RBP
  %1460 = add i64 %1459, 56
  %1461 = load i64, i64* %PC
  %1462 = add i64 %1461, 4
  store i64 %1462, i64* %PC
  %1463 = inttoptr i64 %1460 to i64*
  %1464 = load i64, i64* %1463
  store i64 %1464, i64* %RCX, align 8, !tbaa !2451
  %1465 = load i64, i64* %RBP
  %1466 = sub i64 %1465, 76
  %1467 = load i64, i64* %PC
  %1468 = add i64 %1467, 4
  store i64 %1468, i64* %PC
  %1469 = inttoptr i64 %1466 to i32*
  %1470 = load i32, i32* %1469
  %1471 = sext i32 %1470 to i64
  store i64 %1471, i64* %RSI, align 8, !tbaa !2451
  %1472 = load i64, i64* %RCX
  %1473 = load i64, i64* %RSI
  %1474 = mul i64 %1473, 8
  %1475 = add i64 %1474, %1472
  %1476 = bitcast %union.vec128_t* %XMM2 to i8*
  %1477 = load i64, i64* %PC
  %1478 = add i64 %1477, 5
  store i64 %1478, i64* %PC
  %1479 = bitcast i8* %1476 to double*
  %1480 = load double, double* %1479, align 1
  %1481 = inttoptr i64 %1475 to double*
  store double %1480, double* %1481
  %1482 = load i64, i64* %RBP
  %1483 = add i64 %1482, 32
  %1484 = load i64, i64* %PC
  %1485 = add i64 %1484, 4
  store i64 %1485, i64* %PC
  %1486 = inttoptr i64 %1483 to i64*
  %1487 = load i64, i64* %1486
  store i64 %1487, i64* %RCX, align 8, !tbaa !2451
  %1488 = load i64, i64* %RBP
  %1489 = sub i64 %1488, 76
  %1490 = load i64, i64* %PC
  %1491 = add i64 %1490, 4
  store i64 %1491, i64* %PC
  %1492 = inttoptr i64 %1489 to i32*
  %1493 = load i32, i32* %1492
  %1494 = sext i32 %1493 to i64
  store i64 %1494, i64* %RSI, align 8, !tbaa !2451
  %1495 = load i64, i64* %RCX
  %1496 = load i64, i64* %RSI
  %1497 = mul i64 %1496, 8
  %1498 = add i64 %1497, %1495
  %1499 = bitcast %union.vec128_t* %XMM0 to i8*
  %1500 = load i64, i64* %PC
  %1501 = add i64 %1500, 5
  store i64 %1501, i64* %PC
  %1502 = bitcast i8* %1499 to double*
  %1503 = load double, double* %1502, align 1
  %1504 = inttoptr i64 %1498 to double*
  store double %1503, double* %1504
  %1505 = load i64, i64* %RBP
  %1506 = add i64 %1505, 40
  %1507 = load i64, i64* %PC
  %1508 = add i64 %1507, 4
  store i64 %1508, i64* %PC
  %1509 = inttoptr i64 %1506 to i64*
  %1510 = load i64, i64* %1509
  store i64 %1510, i64* %RCX, align 8, !tbaa !2451
  %1511 = load i64, i64* %RBP
  %1512 = sub i64 %1511, 76
  %1513 = load i64, i64* %PC
  %1514 = add i64 %1513, 4
  store i64 %1514, i64* %PC
  %1515 = inttoptr i64 %1512 to i32*
  %1516 = load i32, i32* %1515
  %1517 = sext i32 %1516 to i64
  store i64 %1517, i64* %RSI, align 8, !tbaa !2451
  %1518 = load i64, i64* %RCX
  %1519 = load i64, i64* %RSI
  %1520 = mul i64 %1519, 8
  %1521 = add i64 %1520, %1518
  %1522 = bitcast %union.vec128_t* %XMM0 to i8*
  %1523 = load i64, i64* %PC
  %1524 = add i64 %1523, 5
  store i64 %1524, i64* %PC
  %1525 = bitcast i8* %1522 to double*
  %1526 = load double, double* %1525, align 1
  %1527 = inttoptr i64 %1521 to double*
  store double %1526, double* %1527
  %1528 = load i64, i64* %RBP
  %1529 = sub i64 %1528, 80
  %1530 = load i64, i64* %PC
  %1531 = add i64 %1530, 7
  store i64 %1531, i64* %PC
  %1532 = inttoptr i64 %1529 to i32*
  store i32 0, i32* %1532
  br label %block_400cfe
}

; Function Attrs: noinline
define %struct.Memory* @sub_400730_polybench_timer_start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400730:
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
  %18 = load i64, i64* %17, align 8, !tbaa !2451
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %14, i64* %20
  store i64 %19, i64* %17, align 8, !tbaa !2451
  %21 = load i64, i64* %RSP
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 3
  store i64 %23, i64* %PC
  store i64 %21, i64* %RBP, align 8, !tbaa !2451
  %24 = load i64, i64* %PC
  %25 = sub i64 %24, 20
  %26 = load i64, i64* %PC
  %27 = add i64 %26, 5
  %28 = load i64, i64* %PC
  %29 = add i64 %28, 5
  store i64 %29, i64* %PC
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !2451
  %32 = add i64 %31, -8
  %33 = inttoptr i64 %32 to i64*
  store i64 %27, i64* %33
  store i64 %32, i64* %30, align 8, !tbaa !2451
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %25, i64* %34, align 8, !tbaa !2451
  %35 = load i64, i64* %PC
  %36 = call %struct.Memory* @sub_400720_polybench_prepare_instruments_renamed_(%struct.State* %0, i64 %35, %struct.Memory* %2)
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 23
  %39 = load i64, i64* %PC
  %40 = add i64 %39, 5
  %41 = load i64, i64* %PC
  %42 = add i64 %41, 5
  store i64 %42, i64* %PC
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %44 = load i64, i64* %43, align 8, !tbaa !2451
  %45 = add i64 %44, -8
  %46 = inttoptr i64 %45 to i64*
  store i64 %40, i64* %46
  store i64 %45, i64* %43, align 8, !tbaa !2451
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %38, i64* %47, align 8, !tbaa !2451
  %48 = load i64, i64* %PC
  %49 = call %struct.Memory* @sub_400750_rtclock_renamed_(%struct.State* %0, i64 %48, %struct.Memory* %36)
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
  %58 = load i64, i64* %57, align 8, !tbaa !2451
  %59 = add i64 %58, 8
  %60 = inttoptr i64 %58 to i64*
  %61 = load i64, i64* %60
  store i64 %61, i64* %RBP, align 8, !tbaa !2451
  store i64 %59, i64* %57, align 8, !tbaa !2451
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %66 = load i64, i64* %65, align 8, !tbaa !2451
  %67 = inttoptr i64 %66 to i64*
  %68 = load i64, i64* %67
  store i64 %68, i64* %64, align 8, !tbaa !2451
  %69 = add i64 %66, 8
  store i64 %69, i64* %65, align 8, !tbaa !2451
  ret %struct.Memory* %49
}

; Function Attrs: noinline
define %struct.Memory* @sub_401000_kernel_gemver_StrictFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401000:
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EDI = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RAX = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RBX = bitcast %union.anon* %17 to i64*
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
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 13
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RSP = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 15
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %RBP = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.GPR, %struct.GPR* %33, i32 0, i32 17
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %34, i32 0, i32 0
  %R8 = bitcast %union.anon* %35 to i64*
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %37 = getelementptr inbounds %struct.GPR, %struct.GPR* %36, i32 0, i32 19
  %38 = getelementptr inbounds %struct.Reg, %struct.Reg* %37, i32 0, i32 0
  %R9 = bitcast %union.anon* %38 to i64*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 21
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %R10 = bitcast %union.anon* %41 to i64*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 23
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %R11 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R14 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %49 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %48, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %49 to %"class.std::bitset"*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %51 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %50, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %51 to %"class.std::bitset"*
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %53 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %52, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %53 to %union.vec128_t*
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %55 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %54, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %55 to %union.vec128_t*
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
  %66 = load i64, i64* %R14
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 2
  store i64 %68, i64* %PC
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %70 = load i64, i64* %69, align 8, !tbaa !2451
  %71 = add i64 %70, -8
  %72 = inttoptr i64 %71 to i64*
  store i64 %66, i64* %72
  store i64 %71, i64* %69, align 8, !tbaa !2451
  %73 = load i64, i64* %RBX
  %74 = load i64, i64* %PC
  %75 = add i64 %74, 1
  store i64 %75, i64* %PC
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %77 = load i64, i64* %76, align 8, !tbaa !2451
  %78 = add i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64 %73, i64* %79
  store i64 %78, i64* %76, align 8, !tbaa !2451
  %80 = load i64, i64* %RBP
  %81 = add i64 %80, 48
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC
  %84 = inttoptr i64 %81 to i64*
  %85 = load i64, i64* %84
  store i64 %85, i64* %RAX, align 8, !tbaa !2451
  %86 = load i64, i64* %RBP
  %87 = add i64 %86, 40
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC
  %90 = inttoptr i64 %87 to i64*
  %91 = load i64, i64* %90
  store i64 %91, i64* %R10, align 8, !tbaa !2451
  %92 = load i64, i64* %RBP
  %93 = add i64 %92, 32
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC
  %96 = inttoptr i64 %93 to i64*
  %97 = load i64, i64* %96
  store i64 %97, i64* %R11, align 8, !tbaa !2451
  %98 = load i64, i64* %RBP
  %99 = add i64 %98, 24
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 4
  store i64 %101, i64* %PC
  %102 = inttoptr i64 %99 to i64*
  %103 = load i64, i64* %102
  store i64 %103, i64* %RBX, align 8, !tbaa !2451
  %104 = load i64, i64* %RBP
  %105 = add i64 %104, 16
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %105 to i64*
  %109 = load i64, i64* %108
  store i64 %109, i64* %R14, align 8, !tbaa !2451
  %110 = load i64, i64* %RBP
  %111 = sub i64 %110, 20
  %112 = load i32, i32* %EDI
  %113 = zext i32 %112 to i64
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 3
  store i64 %115, i64* %PC
  %116 = inttoptr i64 %111 to i32*
  store i32 %112, i32* %116
  %117 = load i64, i64* %RBP
  %118 = sub i64 %117, 32
  %119 = bitcast %union.vec128_t* %XMM0 to i8*
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 5
  store i64 %121, i64* %PC
  %122 = bitcast i8* %119 to double*
  %123 = load double, double* %122, align 1
  %124 = inttoptr i64 %118 to double*
  store double %123, double* %124
  %125 = load i64, i64* %RBP
  %126 = sub i64 %125, 40
  %127 = bitcast %union.vec128_t* %XMM1 to i8*
  %128 = load i64, i64* %PC
  %129 = add i64 %128, 5
  store i64 %129, i64* %PC
  %130 = bitcast i8* %127 to double*
  %131 = load double, double* %130, align 1
  %132 = inttoptr i64 %126 to double*
  store double %131, double* %132
  %133 = load i64, i64* %RBP
  %134 = sub i64 %133, 48
  %135 = load i64, i64* %RSI
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 4
  store i64 %137, i64* %PC
  %138 = inttoptr i64 %134 to i64*
  store i64 %135, i64* %138
  %139 = load i64, i64* %RBP
  %140 = sub i64 %139, 56
  %141 = load i64, i64* %RDX
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 4
  store i64 %143, i64* %PC
  %144 = inttoptr i64 %140 to i64*
  store i64 %141, i64* %144
  %145 = load i64, i64* %RBP
  %146 = sub i64 %145, 64
  %147 = load i64, i64* %RCX
  %148 = load i64, i64* %PC
  %149 = add i64 %148, 4
  store i64 %149, i64* %PC
  %150 = inttoptr i64 %146 to i64*
  store i64 %147, i64* %150
  %151 = load i64, i64* %RBP
  %152 = sub i64 %151, 72
  %153 = load i64, i64* %R8
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 4
  store i64 %155, i64* %PC
  %156 = inttoptr i64 %152 to i64*
  store i64 %153, i64* %156
  %157 = load i64, i64* %RBP
  %158 = sub i64 %157, 80
  %159 = load i64, i64* %R9
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 4
  store i64 %161, i64* %PC
  %162 = inttoptr i64 %158 to i64*
  store i64 %159, i64* %162
  %163 = load i64, i64* %RBP
  %164 = sub i64 %163, 84
  %165 = load i64, i64* %PC
  %166 = add i64 %165, 7
  store i64 %166, i64* %PC
  %167 = inttoptr i64 %164 to i32*
  store i32 0, i32* %167
  %168 = load i64, i64* %RBP
  %169 = sub i64 %168, 96
  %170 = load i64, i64* %R14
  %171 = load i64, i64* %PC
  %172 = add i64 %171, 4
  store i64 %172, i64* %PC
  %173 = inttoptr i64 %169 to i64*
  store i64 %170, i64* %173
  %174 = load i64, i64* %RBP
  %175 = sub i64 %174, 104
  %176 = load i64, i64* %R10
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC
  %179 = inttoptr i64 %175 to i64*
  store i64 %176, i64* %179
  %180 = load i64, i64* %RBP
  %181 = sub i64 %180, 112
  %182 = load i64, i64* %R11
  %183 = load i64, i64* %PC
  %184 = add i64 %183, 4
  store i64 %184, i64* %PC
  %185 = inttoptr i64 %181 to i64*
  store i64 %182, i64* %185
  %186 = load i64, i64* %RBP
  %187 = sub i64 %186, 120
  %188 = load i64, i64* %RBX
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 4
  store i64 %190, i64* %PC
  %191 = inttoptr i64 %187 to i64*
  store i64 %188, i64* %191
  %192 = load i64, i64* %RBP
  %193 = sub i64 %192, 128
  %194 = load i64, i64* %RAX
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 4
  store i64 %196, i64* %PC
  %197 = inttoptr i64 %193 to i64*
  store i64 %194, i64* %197
  br label %block_401057

block_4011fa:                                     ; preds = %block_401272, %block_4011f3
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.3, %block_4011f3 ], [ %MEMORY.5, %block_401272 ]
  %198 = load i64, i64* %RBP
  %199 = sub i64 %198, 84
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 3
  store i64 %201, i64* %PC
  %202 = inttoptr i64 %199 to i32*
  %203 = load i32, i32* %202
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %RAX, align 8, !tbaa !2451
  %205 = load i32, i32* %EAX
  %206 = zext i32 %205 to i64
  %207 = load i64, i64* %RBP
  %208 = sub i64 %207, 20
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 3
  store i64 %210, i64* %PC
  %211 = inttoptr i64 %208 to i32*
  %212 = load i32, i32* %211
  %213 = sub i32 %205, %212
  %214 = icmp ult i32 %205, %212
  %215 = zext i1 %214 to i8
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %215, i8* %216, align 1, !tbaa !2428
  %217 = and i32 %213, 255
  %218 = call i32 @llvm.ctpop.i32(i32 %217) #16
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %221, i8* %222, align 1, !tbaa !2445
  %223 = xor i32 %212, %205
  %224 = xor i32 %223, %213
  %225 = lshr i32 %224, 4
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %227, i8* %228, align 1, !tbaa !2446
  %229 = icmp eq i32 %213, 0
  %230 = zext i1 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %230, i8* %231, align 1, !tbaa !2447
  %232 = lshr i32 %213, 31
  %233 = trunc i32 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %233, i8* %234, align 1, !tbaa !2448
  %235 = lshr i32 %205, 31
  %236 = lshr i32 %212, 31
  %237 = xor i32 %236, %235
  %238 = xor i32 %232, %235
  %239 = add nuw nsw i32 %238, %237
  %240 = icmp eq i32 %239, 2
  %241 = zext i1 %240 to i8
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %241, i8* %242, align 1, !tbaa !2449
  %243 = load i64, i64* %PC
  %244 = add i64 %243, 133
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 6
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 6
  store i64 %248, i64* %PC
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %250 = load i8, i8* %249, align 1, !tbaa !2448
  %251 = icmp ne i8 %250, 0
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %253 = load i8, i8* %252, align 1, !tbaa !2449
  %254 = icmp ne i8 %253, 0
  %255 = xor i1 %251, %254
  %256 = xor i1 %255, true
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %259 = select i1 %255, i64 %246, i64 %244
  store i64 %259, i64* %258, align 8, !tbaa !2451
  %260 = load i8, i8* %BRANCH_TAKEN
  %261 = icmp eq i8 %260, 1
  br i1 %261, label %block_401285, label %block_401206

block_4010f6:                                     ; preds = %block_40106a
  %262 = load i64, i64* %PC
  %263 = add i64 %262, 5
  %264 = load i64, i64* %PC
  %265 = add i64 %264, 5
  store i64 %265, i64* %PC
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %263, i64* %266, align 8, !tbaa !2451
  %267 = load i64, i64* %RBP
  %268 = sub i64 %267, 84
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 3
  store i64 %270, i64* %PC
  %271 = inttoptr i64 %268 to i32*
  %272 = load i32, i32* %271
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RAX, align 8, !tbaa !2451
  %274 = load i64, i64* %RAX
  %275 = load i64, i64* %PC
  %276 = add i64 %275, 3
  store i64 %276, i64* %PC
  %277 = trunc i64 %274 to i32
  %278 = add i32 1, %277
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RAX, align 8, !tbaa !2451
  %280 = icmp ult i32 %278, %277
  %281 = icmp ult i32 %278, 1
  %282 = or i1 %280, %281
  %283 = zext i1 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %283, i8* %284, align 1, !tbaa !2428
  %285 = and i32 %278, 255
  %286 = call i32 @llvm.ctpop.i32(i32 %285) #16
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %289, i8* %290, align 1, !tbaa !2445
  %291 = xor i64 1, %274
  %292 = trunc i64 %291 to i32
  %293 = xor i32 %292, %278
  %294 = lshr i32 %293, 4
  %295 = trunc i32 %294 to i8
  %296 = and i8 %295, 1
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %296, i8* %297, align 1, !tbaa !2446
  %298 = icmp eq i32 %278, 0
  %299 = zext i1 %298 to i8
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %299, i8* %300, align 1, !tbaa !2447
  %301 = lshr i32 %278, 31
  %302 = trunc i32 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %302, i8* %303, align 1, !tbaa !2448
  %304 = lshr i32 %277, 31
  %305 = xor i32 %301, %304
  %306 = add nuw nsw i32 %305, %301
  %307 = icmp eq i32 %306, 2
  %308 = zext i1 %307 to i8
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %308, i8* %309, align 1, !tbaa !2449
  %310 = load i64, i64* %RBP
  %311 = sub i64 %310, 84
  %312 = load i32, i32* %EAX
  %313 = zext i32 %312 to i64
  %314 = load i64, i64* %PC
  %315 = add i64 %314, 3
  store i64 %315, i64* %PC
  %316 = inttoptr i64 %311 to i32*
  store i32 %312, i32* %316
  %317 = load i64, i64* %PC
  %318 = sub i64 %317, 173
  %319 = load i64, i64* %PC
  %320 = add i64 %319, 5
  store i64 %320, i64* %PC
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %318, i64* %321, align 8, !tbaa !2451
  br label %block_401057

block_4011f3:                                     ; preds = %block_4011b2
  %322 = sub i64 %578, 84
  %323 = load i64, i64* %PC
  %324 = add i64 %323, 7
  store i64 %324, i64* %PC
  %325 = inttoptr i64 %322 to i32*
  store i32 0, i32* %325
  br label %block_4011fa

block_40106a:                                     ; preds = %block_401063, %block_401076
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.6, %block_401063 ], [ %MEMORY.1, %block_401076 ]
  %326 = load i64, i64* %RBP
  %327 = sub i64 %326, 88
  %328 = load i64, i64* %PC
  %329 = add i64 %328, 3
  store i64 %329, i64* %PC
  %330 = inttoptr i64 %327 to i32*
  %331 = load i32, i32* %330
  %332 = zext i32 %331 to i64
  store i64 %332, i64* %RAX, align 8, !tbaa !2451
  %333 = load i32, i32* %EAX
  %334 = zext i32 %333 to i64
  %335 = load i64, i64* %RBP
  %336 = sub i64 %335, 20
  %337 = load i64, i64* %PC
  %338 = add i64 %337, 3
  store i64 %338, i64* %PC
  %339 = inttoptr i64 %336 to i32*
  %340 = load i32, i32* %339
  %341 = sub i32 %333, %340
  %342 = icmp ult i32 %333, %340
  %343 = zext i1 %342 to i8
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %343, i8* %344, align 1, !tbaa !2428
  %345 = and i32 %341, 255
  %346 = call i32 @llvm.ctpop.i32(i32 %345) #16
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = xor i8 %348, 1
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %349, i8* %350, align 1, !tbaa !2445
  %351 = xor i32 %340, %333
  %352 = xor i32 %351, %341
  %353 = lshr i32 %352, 4
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %355, i8* %356, align 1, !tbaa !2446
  %357 = icmp eq i32 %341, 0
  %358 = zext i1 %357 to i8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %358, i8* %359, align 1, !tbaa !2447
  %360 = lshr i32 %341, 31
  %361 = trunc i32 %360 to i8
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %361, i8* %362, align 1, !tbaa !2448
  %363 = lshr i32 %333, 31
  %364 = lshr i32 %340, 31
  %365 = xor i32 %364, %363
  %366 = xor i32 %360, %363
  %367 = add nuw nsw i32 %366, %365
  %368 = icmp eq i32 %367, 2
  %369 = zext i1 %368 to i8
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %369, i8* %370, align 1, !tbaa !2449
  %371 = load i64, i64* %PC
  %372 = add i64 %371, 134
  %373 = load i64, i64* %PC
  %374 = add i64 %373, 6
  %375 = load i64, i64* %PC
  %376 = add i64 %375, 6
  store i64 %376, i64* %PC
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %378 = load i8, i8* %377, align 1, !tbaa !2448
  %379 = icmp ne i8 %378, 0
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %381 = load i8, i8* %380, align 1, !tbaa !2449
  %382 = icmp ne i8 %381, 0
  %383 = xor i1 %379, %382
  %384 = xor i1 %383, true
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %387 = select i1 %383, i64 %374, i64 %372
  store i64 %387, i64* %386, align 8, !tbaa !2451
  %388 = load i8, i8* %BRANCH_TAKEN
  %389 = icmp eq i8 %388, 1
  br i1 %389, label %block_4010f6, label %block_401076

block_401272:                                     ; preds = %block_40120d
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 5
  %392 = load i64, i64* %PC
  %393 = add i64 %392, 5
  store i64 %393, i64* %PC
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %391, i64* %394, align 8, !tbaa !2451
  %395 = load i64, i64* %RBP
  %396 = sub i64 %395, 84
  %397 = load i64, i64* %PC
  %398 = add i64 %397, 3
  store i64 %398, i64* %PC
  %399 = inttoptr i64 %396 to i32*
  %400 = load i32, i32* %399
  %401 = zext i32 %400 to i64
  store i64 %401, i64* %RAX, align 8, !tbaa !2451
  %402 = load i64, i64* %RAX
  %403 = load i64, i64* %PC
  %404 = add i64 %403, 3
  store i64 %404, i64* %PC
  %405 = trunc i64 %402 to i32
  %406 = add i32 1, %405
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RAX, align 8, !tbaa !2451
  %408 = icmp ult i32 %406, %405
  %409 = icmp ult i32 %406, 1
  %410 = or i1 %408, %409
  %411 = zext i1 %410 to i8
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %411, i8* %412, align 1, !tbaa !2428
  %413 = and i32 %406, 255
  %414 = call i32 @llvm.ctpop.i32(i32 %413) #16
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = xor i8 %416, 1
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %417, i8* %418, align 1, !tbaa !2445
  %419 = xor i64 1, %402
  %420 = trunc i64 %419 to i32
  %421 = xor i32 %420, %406
  %422 = lshr i32 %421, 4
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %424, i8* %425, align 1, !tbaa !2446
  %426 = icmp eq i32 %406, 0
  %427 = zext i1 %426 to i8
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %427, i8* %428, align 1, !tbaa !2447
  %429 = lshr i32 %406, 31
  %430 = trunc i32 %429 to i8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %430, i8* %431, align 1, !tbaa !2448
  %432 = lshr i32 %405, 31
  %433 = xor i32 %429, %432
  %434 = add nuw nsw i32 %433, %429
  %435 = icmp eq i32 %434, 2
  %436 = zext i1 %435 to i8
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %436, i8* %437, align 1, !tbaa !2449
  %438 = load i64, i64* %RBP
  %439 = sub i64 %438, 84
  %440 = load i32, i32* %EAX
  %441 = zext i32 %440 to i64
  %442 = load i64, i64* %PC
  %443 = add i64 %442, 3
  store i64 %443, i64* %PC
  %444 = inttoptr i64 %439 to i32*
  store i32 %440, i32* %444
  %445 = load i64, i64* %PC
  %446 = sub i64 %445, 134
  %447 = load i64, i64* %PC
  %448 = add i64 %447, 5
  store i64 %448, i64* %PC
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %446, i64* %449, align 8, !tbaa !2451
  br label %block_4011fa

block_401133:                                     ; preds = %block_40113f, %block_40111c
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.4, %block_40111c ], [ %MEMORY.2, %block_40113f ]
  %450 = load i64, i64* %RBP
  %451 = sub i64 %450, 88
  %452 = load i64, i64* %PC
  %453 = add i64 %452, 3
  store i64 %453, i64* %PC
  %454 = inttoptr i64 %451 to i32*
  %455 = load i32, i32* %454
  %456 = zext i32 %455 to i64
  store i64 %456, i64* %RAX, align 8, !tbaa !2451
  %457 = load i32, i32* %EAX
  %458 = zext i32 %457 to i64
  %459 = load i64, i64* %RBP
  %460 = sub i64 %459, 20
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 3
  store i64 %462, i64* %PC
  %463 = inttoptr i64 %460 to i32*
  %464 = load i32, i32* %463
  %465 = sub i32 %457, %464
  %466 = icmp ult i32 %457, %464
  %467 = zext i1 %466 to i8
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %467, i8* %468, align 1, !tbaa !2428
  %469 = and i32 %465, 255
  %470 = call i32 @llvm.ctpop.i32(i32 %469) #16
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = xor i8 %472, 1
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %473, i8* %474, align 1, !tbaa !2445
  %475 = xor i32 %464, %457
  %476 = xor i32 %475, %465
  %477 = lshr i32 %476, 4
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %479, i8* %480, align 1, !tbaa !2446
  %481 = icmp eq i32 %465, 0
  %482 = zext i1 %481 to i8
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %482, i8* %483, align 1, !tbaa !2447
  %484 = lshr i32 %465, 31
  %485 = trunc i32 %484 to i8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %485, i8* %486, align 1, !tbaa !2448
  %487 = lshr i32 %457, 31
  %488 = lshr i32 %464, 31
  %489 = xor i32 %488, %487
  %490 = xor i32 %484, %487
  %491 = add nuw nsw i32 %490, %489
  %492 = icmp eq i32 %491, 2
  %493 = zext i1 %492 to i8
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %493, i8* %494, align 1, !tbaa !2449
  %495 = load i64, i64* %PC
  %496 = add i64 %495, 95
  %497 = load i64, i64* %PC
  %498 = add i64 %497, 6
  %499 = load i64, i64* %PC
  %500 = add i64 %499, 6
  store i64 %500, i64* %PC
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %502 = load i8, i8* %501, align 1, !tbaa !2448
  %503 = icmp ne i8 %502, 0
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %505 = load i8, i8* %504, align 1, !tbaa !2449
  %506 = icmp ne i8 %505, 0
  %507 = xor i1 %503, %506
  %508 = xor i1 %507, true
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %511 = select i1 %507, i64 %498, i64 %496
  store i64 %511, i64* %510, align 8, !tbaa !2451
  %512 = load i8, i8* %BRANCH_TAKEN
  %513 = icmp eq i8 %512, 1
  br i1 %513, label %block_401198, label %block_40113f

block_4011b2:                                     ; preds = %block_4011be, %block_4011ab
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.4, %block_4011ab ], [ %MEMORY.3, %block_4011be ]
  %514 = load i64, i64* %RBP
  %515 = sub i64 %514, 84
  %516 = load i64, i64* %PC
  %517 = add i64 %516, 3
  store i64 %517, i64* %PC
  %518 = inttoptr i64 %515 to i32*
  %519 = load i32, i32* %518
  %520 = zext i32 %519 to i64
  store i64 %520, i64* %RAX, align 8, !tbaa !2451
  %521 = load i32, i32* %EAX
  %522 = zext i32 %521 to i64
  %523 = load i64, i64* %RBP
  %524 = sub i64 %523, 20
  %525 = load i64, i64* %PC
  %526 = add i64 %525, 3
  store i64 %526, i64* %PC
  %527 = inttoptr i64 %524 to i32*
  %528 = load i32, i32* %527
  %529 = sub i32 %521, %528
  %530 = icmp ult i32 %521, %528
  %531 = zext i1 %530 to i8
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %531, i8* %532, align 1, !tbaa !2428
  %533 = and i32 %529, 255
  %534 = call i32 @llvm.ctpop.i32(i32 %533) #16
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  %537 = xor i8 %536, 1
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %537, i8* %538, align 1, !tbaa !2445
  %539 = xor i32 %528, %521
  %540 = xor i32 %539, %529
  %541 = lshr i32 %540, 4
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %543, i8* %544, align 1, !tbaa !2446
  %545 = icmp eq i32 %529, 0
  %546 = zext i1 %545 to i8
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %546, i8* %547, align 1, !tbaa !2447
  %548 = lshr i32 %529, 31
  %549 = trunc i32 %548 to i8
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %549, i8* %550, align 1, !tbaa !2448
  %551 = lshr i32 %521, 31
  %552 = lshr i32 %528, 31
  %553 = xor i32 %552, %551
  %554 = xor i32 %548, %551
  %555 = add nuw nsw i32 %554, %553
  %556 = icmp eq i32 %555, 2
  %557 = zext i1 %556 to i8
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %557, i8* %558, align 1, !tbaa !2449
  %559 = load i64, i64* %PC
  %560 = add i64 %559, 59
  %561 = load i64, i64* %PC
  %562 = add i64 %561, 6
  %563 = load i64, i64* %PC
  %564 = add i64 %563, 6
  store i64 %564, i64* %PC
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %566 = load i8, i8* %565, align 1, !tbaa !2448
  %567 = icmp ne i8 %566, 0
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %569 = load i8, i8* %568, align 1, !tbaa !2449
  %570 = icmp ne i8 %569, 0
  %571 = xor i1 %567, %570
  %572 = xor i1 %571, true
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %575 = select i1 %571, i64 %562, i64 %560
  store i64 %575, i64* %574, align 8, !tbaa !2451
  %576 = load i8, i8* %BRANCH_TAKEN
  %577 = icmp eq i8 %576, 1
  %578 = load i64, i64* %RBP
  br i1 %577, label %block_4011f3, label %block_4011be

block_4011ab:                                     ; preds = %block_401110
  %579 = load i64, i64* %RBP
  %580 = sub i64 %579, 84
  %581 = load i64, i64* %PC
  %582 = add i64 %581, 7
  store i64 %582, i64* %PC
  %583 = inttoptr i64 %580 to i32*
  store i32 0, i32* %583
  br label %block_4011b2

block_40111c:                                     ; preds = %block_401110
  %584 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %585 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %586 = bitcast %union.vec128_t* %XMM0 to i8*
  %587 = load i64, i64* %PC
  %588 = add i64 %587, 3
  store i64 %588, i64* %PC
  %589 = bitcast i8* %585 to i64*
  %590 = load i64, i64* %589, align 1
  %591 = getelementptr inbounds i8, i8* %585, i64 8
  %592 = bitcast i8* %591 to i64*
  %593 = load i64, i64* %592, align 1
  %594 = bitcast i8* %586 to i64*
  %595 = load i64, i64* %594, align 1
  %596 = getelementptr inbounds i8, i8* %586, i64 8
  %597 = bitcast i8* %596 to i64*
  %598 = load i64, i64* %597, align 1
  %599 = xor i64 %595, %590
  %600 = xor i64 %598, %593
  %601 = trunc i64 %599 to i32
  %602 = lshr i64 %599, 32
  %603 = trunc i64 %602 to i32
  %604 = bitcast i8* %584 to i32*
  store i32 %601, i32* %604, align 1, !tbaa !2456
  %605 = getelementptr inbounds i8, i8* %584, i64 4
  %606 = bitcast i8* %605 to i32*
  store i32 %603, i32* %606, align 1, !tbaa !2456
  %607 = trunc i64 %600 to i32
  %608 = getelementptr inbounds i8, i8* %584, i64 8
  %609 = bitcast i8* %608 to i32*
  store i32 %607, i32* %609, align 1, !tbaa !2456
  %610 = lshr i64 %600, 32
  %611 = trunc i64 %610 to i32
  %612 = getelementptr inbounds i8, i8* %584, i64 12
  %613 = bitcast i8* %612 to i32*
  store i32 %611, i32* %613, align 1, !tbaa !2456
  %614 = load i64, i64* %RBP
  %615 = add i64 %614, 32
  %616 = load i64, i64* %PC
  %617 = add i64 %616, 4
  store i64 %617, i64* %PC
  %618 = inttoptr i64 %615 to i64*
  %619 = load i64, i64* %618
  store i64 %619, i64* %RAX, align 8, !tbaa !2451
  %620 = load i64, i64* %RBP
  %621 = sub i64 %620, 84
  %622 = load i64, i64* %PC
  %623 = add i64 %622, 4
  store i64 %623, i64* %PC
  %624 = inttoptr i64 %621 to i32*
  %625 = load i32, i32* %624
  %626 = sext i32 %625 to i64
  store i64 %626, i64* %RCX, align 8, !tbaa !2451
  %627 = load i64, i64* %RAX
  %628 = load i64, i64* %RCX
  %629 = mul i64 %628, 8
  %630 = add i64 %629, %627
  %631 = bitcast %union.vec128_t* %XMM0 to i8*
  %632 = load i64, i64* %PC
  %633 = add i64 %632, 5
  store i64 %633, i64* %PC
  %634 = bitcast i8* %631 to double*
  %635 = load double, double* %634, align 1
  %636 = inttoptr i64 %630 to double*
  store double %635, double* %636
  %637 = load i64, i64* %RBP
  %638 = sub i64 %637, 88
  %639 = load i64, i64* %PC
  %640 = add i64 %639, 7
  store i64 %640, i64* %PC
  %641 = inttoptr i64 %638 to i32*
  store i32 0, i32* %641
  br label %block_401133

block_401219:                                     ; preds = %block_40120d
  %642 = load i64, i64* %RBP
  %643 = add i64 %642, 24
  %644 = load i64, i64* %PC
  %645 = add i64 %644, 4
  store i64 %645, i64* %PC
  %646 = inttoptr i64 %643 to i64*
  %647 = load i64, i64* %646
  store i64 %647, i64* %RAX, align 8, !tbaa !2451
  %648 = load i64, i64* %RBP
  %649 = sub i64 %648, 84
  %650 = load i64, i64* %PC
  %651 = add i64 %650, 4
  store i64 %651, i64* %PC
  %652 = inttoptr i64 %649 to i32*
  %653 = load i32, i32* %652
  %654 = sext i32 %653 to i64
  store i64 %654, i64* %RCX, align 8, !tbaa !2451
  %655 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %656 = load i64, i64* %RAX
  %657 = load i64, i64* %RCX
  %658 = mul i64 %657, 8
  %659 = add i64 %658, %656
  %660 = load i64, i64* %PC
  %661 = add i64 %660, 5
  store i64 %661, i64* %PC
  %662 = inttoptr i64 %659 to double*
  %663 = load double, double* %662
  %664 = bitcast i8* %655 to double*
  store double %663, double* %664, align 1, !tbaa !2452
  %665 = getelementptr inbounds i8, i8* %655, i64 8
  %666 = bitcast i8* %665 to double*
  store double 0.000000e+00, double* %666, align 1, !tbaa !2452
  %667 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %668 = load i64, i64* %RBP
  %669 = sub i64 %668, 32
  %670 = load i64, i64* %PC
  %671 = add i64 %670, 5
  store i64 %671, i64* %PC
  %672 = inttoptr i64 %669 to double*
  %673 = load double, double* %672
  %674 = bitcast i8* %667 to double*
  store double %673, double* %674, align 1, !tbaa !2452
  %675 = getelementptr inbounds i8, i8* %667, i64 8
  %676 = bitcast i8* %675 to double*
  store double 0.000000e+00, double* %676, align 1, !tbaa !2452
  %677 = load i64, i64* %RBP
  %678 = sub i64 %677, 56
  %679 = load i64, i64* %PC
  %680 = add i64 %679, 4
  store i64 %680, i64* %PC
  %681 = inttoptr i64 %678 to i64*
  %682 = load i64, i64* %681
  store i64 %682, i64* %RAX, align 8, !tbaa !2451
  %683 = load i64, i64* %RBP
  %684 = sub i64 %683, 84
  %685 = load i64, i64* %PC
  %686 = add i64 %685, 4
  store i64 %686, i64* %PC
  %687 = inttoptr i64 %684 to i32*
  %688 = load i32, i32* %687
  %689 = sext i32 %688 to i64
  store i64 %689, i64* %RCX, align 8, !tbaa !2451
  %690 = load i64, i64* %RCX
  %691 = load i64, i64* %PC
  %692 = add i64 %691, 7
  store i64 %692, i64* %PC
  %693 = sext i64 %690 to i128
  %694 = and i128 %693, -18446744073709551616
  %695 = zext i64 %690 to i128
  %696 = or i128 %694, %695
  %697 = mul nsw i128 32000, %696
  %698 = trunc i128 %697 to i64
  store i64 %698, i64* %RCX, align 8, !tbaa !2451
  %699 = sext i64 %698 to i128
  %700 = icmp ne i128 %699, %697
  %701 = zext i1 %700 to i8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %701, i8* %702, align 1, !tbaa !2428
  %703 = trunc i128 %697 to i32
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %704, align 1, !tbaa !2445
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %705, align 1, !tbaa !2446
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %706, align 1, !tbaa !2447
  %707 = lshr i64 %698, 63
  %708 = trunc i64 %707 to i8
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %708, i8* %709, align 1, !tbaa !2448
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %701, i8* %710, align 1, !tbaa !2449
  %711 = load i64, i64* %RAX
  %712 = load i64, i64* %RCX
  %713 = load i64, i64* %PC
  %714 = add i64 %713, 3
  store i64 %714, i64* %PC
  %715 = add i64 %712, %711
  store i64 %715, i64* %RAX, align 8, !tbaa !2451
  %716 = icmp ult i64 %715, %711
  %717 = icmp ult i64 %715, %712
  %718 = or i1 %716, %717
  %719 = zext i1 %718 to i8
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %719, i8* %720, align 1, !tbaa !2428
  %721 = trunc i64 %715 to i32
  %722 = and i32 %721, 255
  %723 = call i32 @llvm.ctpop.i32(i32 %722) #16
  %724 = trunc i32 %723 to i8
  %725 = and i8 %724, 1
  %726 = xor i8 %725, 1
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %726, i8* %727, align 1, !tbaa !2445
  %728 = xor i64 %712, %711
  %729 = xor i64 %728, %715
  %730 = lshr i64 %729, 4
  %731 = trunc i64 %730 to i8
  %732 = and i8 %731, 1
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %732, i8* %733, align 1, !tbaa !2446
  %734 = icmp eq i64 %715, 0
  %735 = zext i1 %734 to i8
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %735, i8* %736, align 1, !tbaa !2447
  %737 = lshr i64 %715, 63
  %738 = trunc i64 %737 to i8
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %738, i8* %739, align 1, !tbaa !2448
  %740 = lshr i64 %711, 63
  %741 = lshr i64 %712, 63
  %742 = xor i64 %737, %740
  %743 = xor i64 %737, %741
  %744 = add nuw nsw i64 %742, %743
  %745 = icmp eq i64 %744, 2
  %746 = zext i1 %745 to i8
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %746, i8* %747, align 1, !tbaa !2449
  %748 = load i64, i64* %RBP
  %749 = sub i64 %748, 88
  %750 = load i64, i64* %PC
  %751 = add i64 %750, 4
  store i64 %751, i64* %PC
  %752 = inttoptr i64 %749 to i32*
  %753 = load i32, i32* %752
  %754 = sext i32 %753 to i64
  store i64 %754, i64* %RCX, align 8, !tbaa !2451
  %755 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %756 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %757 = load i64, i64* %RAX
  %758 = load i64, i64* %RCX
  %759 = mul i64 %758, 8
  %760 = add i64 %759, %757
  %761 = load i64, i64* %PC
  %762 = add i64 %761, 5
  store i64 %762, i64* %PC
  %763 = bitcast i8* %756 to double*
  %764 = load double, double* %763, align 1
  %765 = getelementptr inbounds i8, i8* %756, i64 8
  %766 = bitcast i8* %765 to i64*
  %767 = load i64, i64* %766, align 1
  %768 = inttoptr i64 %760 to double*
  %769 = load double, double* %768
  %770 = fmul double %764, %769
  %771 = bitcast i8* %755 to double*
  store double %770, double* %771, align 1, !tbaa !2452
  %772 = getelementptr inbounds i8, i8* %755, i64 8
  %773 = bitcast i8* %772 to i64*
  store i64 %767, i64* %773, align 1, !tbaa !2452
  %774 = load i64, i64* %RBP
  %775 = add i64 %774, 32
  %776 = load i64, i64* %PC
  %777 = add i64 %776, 4
  store i64 %777, i64* %PC
  %778 = inttoptr i64 %775 to i64*
  %779 = load i64, i64* %778
  store i64 %779, i64* %RAX, align 8, !tbaa !2451
  %780 = load i64, i64* %RBP
  %781 = sub i64 %780, 88
  %782 = load i64, i64* %PC
  %783 = add i64 %782, 4
  store i64 %783, i64* %PC
  %784 = inttoptr i64 %781 to i32*
  %785 = load i32, i32* %784
  %786 = sext i32 %785 to i64
  store i64 %786, i64* %RCX, align 8, !tbaa !2451
  %787 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %788 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %789 = load i64, i64* %RAX
  %790 = load i64, i64* %RCX
  %791 = mul i64 %790, 8
  %792 = add i64 %791, %789
  %793 = load i64, i64* %PC
  %794 = add i64 %793, 5
  store i64 %794, i64* %PC
  %795 = bitcast i8* %788 to double*
  %796 = load double, double* %795, align 1
  %797 = getelementptr inbounds i8, i8* %788, i64 8
  %798 = bitcast i8* %797 to i64*
  %799 = load i64, i64* %798, align 1
  %800 = inttoptr i64 %792 to double*
  %801 = load double, double* %800
  %802 = fmul double %796, %801
  %803 = bitcast i8* %787 to double*
  store double %802, double* %803, align 1, !tbaa !2452
  %804 = getelementptr inbounds i8, i8* %787, i64 8
  %805 = bitcast i8* %804 to i64*
  store i64 %799, i64* %805, align 1, !tbaa !2452
  %806 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %807 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %808 = bitcast %union.vec128_t* %XMM1 to i8*
  %809 = load i64, i64* %PC
  %810 = add i64 %809, 4
  store i64 %810, i64* %PC
  %811 = bitcast i8* %807 to double*
  %812 = load double, double* %811, align 1
  %813 = getelementptr inbounds i8, i8* %807, i64 8
  %814 = bitcast i8* %813 to i64*
  %815 = load i64, i64* %814, align 1
  %816 = bitcast i8* %808 to double*
  %817 = load double, double* %816, align 1
  %818 = fadd double %812, %817
  %819 = bitcast i8* %806 to double*
  store double %818, double* %819, align 1, !tbaa !2452
  %820 = getelementptr inbounds i8, i8* %806, i64 8
  %821 = bitcast i8* %820 to i64*
  store i64 %815, i64* %821, align 1, !tbaa !2452
  %822 = load i64, i64* %RBP
  %823 = add i64 %822, 24
  %824 = load i64, i64* %PC
  %825 = add i64 %824, 4
  store i64 %825, i64* %PC
  %826 = inttoptr i64 %823 to i64*
  %827 = load i64, i64* %826
  store i64 %827, i64* %RAX, align 8, !tbaa !2451
  %828 = load i64, i64* %RBP
  %829 = sub i64 %828, 84
  %830 = load i64, i64* %PC
  %831 = add i64 %830, 4
  store i64 %831, i64* %PC
  %832 = inttoptr i64 %829 to i32*
  %833 = load i32, i32* %832
  %834 = sext i32 %833 to i64
  store i64 %834, i64* %RCX, align 8, !tbaa !2451
  %835 = load i64, i64* %RAX
  %836 = load i64, i64* %RCX
  %837 = mul i64 %836, 8
  %838 = add i64 %837, %835
  %839 = bitcast %union.vec128_t* %XMM0 to i8*
  %840 = load i64, i64* %PC
  %841 = add i64 %840, 5
  store i64 %841, i64* %PC
  %842 = bitcast i8* %839 to double*
  %843 = load double, double* %842, align 1
  %844 = inttoptr i64 %838 to double*
  store double %843, double* %844
  %845 = load i64, i64* %RBP
  %846 = sub i64 %845, 88
  %847 = load i64, i64* %PC
  %848 = add i64 %847, 3
  store i64 %848, i64* %PC
  %849 = inttoptr i64 %846 to i32*
  %850 = load i32, i32* %849
  %851 = zext i32 %850 to i64
  store i64 %851, i64* %RAX, align 8, !tbaa !2451
  %852 = load i64, i64* %RAX
  %853 = load i64, i64* %PC
  %854 = add i64 %853, 3
  store i64 %854, i64* %PC
  %855 = trunc i64 %852 to i32
  %856 = add i32 1, %855
  %857 = zext i32 %856 to i64
  store i64 %857, i64* %RAX, align 8, !tbaa !2451
  %858 = icmp ult i32 %856, %855
  %859 = icmp ult i32 %856, 1
  %860 = or i1 %858, %859
  %861 = zext i1 %860 to i8
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %861, i8* %862, align 1, !tbaa !2428
  %863 = and i32 %856, 255
  %864 = call i32 @llvm.ctpop.i32(i32 %863) #16
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  %867 = xor i8 %866, 1
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %867, i8* %868, align 1, !tbaa !2445
  %869 = xor i64 1, %852
  %870 = trunc i64 %869 to i32
  %871 = xor i32 %870, %856
  %872 = lshr i32 %871, 4
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %874, i8* %875, align 1, !tbaa !2446
  %876 = icmp eq i32 %856, 0
  %877 = zext i1 %876 to i8
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %877, i8* %878, align 1, !tbaa !2447
  %879 = lshr i32 %856, 31
  %880 = trunc i32 %879 to i8
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %880, i8* %881, align 1, !tbaa !2448
  %882 = lshr i32 %855, 31
  %883 = xor i32 %879, %882
  %884 = add nuw nsw i32 %883, %879
  %885 = icmp eq i32 %884, 2
  %886 = zext i1 %885 to i8
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %886, i8* %887, align 1, !tbaa !2449
  %888 = load i64, i64* %RBP
  %889 = sub i64 %888, 88
  %890 = load i32, i32* %EAX
  %891 = zext i32 %890 to i64
  %892 = load i64, i64* %PC
  %893 = add i64 %892, 3
  store i64 %893, i64* %PC
  %894 = inttoptr i64 %889 to i32*
  store i32 %890, i32* %894
  %895 = load i64, i64* %PC
  %896 = sub i64 %895, 96
  %897 = load i64, i64* %PC
  %898 = add i64 %897, 5
  store i64 %898, i64* %PC
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %896, i64* %899, align 8, !tbaa !2451
  br label %block_40120d

block_401076:                                     ; preds = %block_40106a
  %900 = load i64, i64* %RBP
  %901 = sub i64 %900, 48
  %902 = load i64, i64* %PC
  %903 = add i64 %902, 4
  store i64 %903, i64* %PC
  %904 = inttoptr i64 %901 to i64*
  %905 = load i64, i64* %904
  store i64 %905, i64* %RAX, align 8, !tbaa !2451
  %906 = load i64, i64* %RBP
  %907 = sub i64 %906, 84
  %908 = load i64, i64* %PC
  %909 = add i64 %908, 4
  store i64 %909, i64* %PC
  %910 = inttoptr i64 %907 to i32*
  %911 = load i32, i32* %910
  %912 = sext i32 %911 to i64
  store i64 %912, i64* %RCX, align 8, !tbaa !2451
  %913 = load i64, i64* %RCX
  %914 = load i64, i64* %PC
  %915 = add i64 %914, 7
  store i64 %915, i64* %PC
  %916 = sext i64 %913 to i128
  %917 = and i128 %916, -18446744073709551616
  %918 = zext i64 %913 to i128
  %919 = or i128 %917, %918
  %920 = mul nsw i128 32000, %919
  %921 = trunc i128 %920 to i64
  store i64 %921, i64* %RCX, align 8, !tbaa !2451
  %922 = sext i64 %921 to i128
  %923 = icmp ne i128 %922, %920
  %924 = zext i1 %923 to i8
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %924, i8* %925, align 1, !tbaa !2428
  %926 = trunc i128 %920 to i32
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %927, align 1, !tbaa !2445
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %928, align 1, !tbaa !2446
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %929, align 1, !tbaa !2447
  %930 = lshr i64 %921, 63
  %931 = trunc i64 %930 to i8
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %931, i8* %932, align 1, !tbaa !2448
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %924, i8* %933, align 1, !tbaa !2449
  %934 = load i64, i64* %RAX
  %935 = load i64, i64* %RCX
  %936 = load i64, i64* %PC
  %937 = add i64 %936, 3
  store i64 %937, i64* %PC
  %938 = add i64 %935, %934
  store i64 %938, i64* %RAX, align 8, !tbaa !2451
  %939 = icmp ult i64 %938, %934
  %940 = icmp ult i64 %938, %935
  %941 = or i1 %939, %940
  %942 = zext i1 %941 to i8
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %942, i8* %943, align 1, !tbaa !2428
  %944 = trunc i64 %938 to i32
  %945 = and i32 %944, 255
  %946 = call i32 @llvm.ctpop.i32(i32 %945) #16
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  %949 = xor i8 %948, 1
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %949, i8* %950, align 1, !tbaa !2445
  %951 = xor i64 %935, %934
  %952 = xor i64 %951, %938
  %953 = lshr i64 %952, 4
  %954 = trunc i64 %953 to i8
  %955 = and i8 %954, 1
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %955, i8* %956, align 1, !tbaa !2446
  %957 = icmp eq i64 %938, 0
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %958, i8* %959, align 1, !tbaa !2447
  %960 = lshr i64 %938, 63
  %961 = trunc i64 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %961, i8* %962, align 1, !tbaa !2448
  %963 = lshr i64 %934, 63
  %964 = lshr i64 %935, 63
  %965 = xor i64 %960, %963
  %966 = xor i64 %960, %964
  %967 = add nuw nsw i64 %965, %966
  %968 = icmp eq i64 %967, 2
  %969 = zext i1 %968 to i8
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %969, i8* %970, align 1, !tbaa !2449
  %971 = load i64, i64* %RBP
  %972 = sub i64 %971, 88
  %973 = load i64, i64* %PC
  %974 = add i64 %973, 4
  store i64 %974, i64* %PC
  %975 = inttoptr i64 %972 to i32*
  %976 = load i32, i32* %975
  %977 = sext i32 %976 to i64
  store i64 %977, i64* %RCX, align 8, !tbaa !2451
  %978 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %979 = load i64, i64* %RAX
  %980 = load i64, i64* %RCX
  %981 = mul i64 %980, 8
  %982 = add i64 %981, %979
  %983 = load i64, i64* %PC
  %984 = add i64 %983, 5
  store i64 %984, i64* %PC
  %985 = inttoptr i64 %982 to double*
  %986 = load double, double* %985
  %987 = bitcast i8* %978 to double*
  store double %986, double* %987, align 1, !tbaa !2452
  %988 = getelementptr inbounds i8, i8* %978, i64 8
  %989 = bitcast i8* %988 to double*
  store double 0.000000e+00, double* %989, align 1, !tbaa !2452
  %990 = load i64, i64* %RBP
  %991 = sub i64 %990, 64
  %992 = load i64, i64* %PC
  %993 = add i64 %992, 4
  store i64 %993, i64* %PC
  %994 = inttoptr i64 %991 to i64*
  %995 = load i64, i64* %994
  store i64 %995, i64* %RAX, align 8, !tbaa !2451
  %996 = load i64, i64* %RBP
  %997 = sub i64 %996, 84
  %998 = load i64, i64* %PC
  %999 = add i64 %998, 4
  store i64 %999, i64* %PC
  %1000 = inttoptr i64 %997 to i32*
  %1001 = load i32, i32* %1000
  %1002 = sext i32 %1001 to i64
  store i64 %1002, i64* %RCX, align 8, !tbaa !2451
  %1003 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1004 = load i64, i64* %RAX
  %1005 = load i64, i64* %RCX
  %1006 = mul i64 %1005, 8
  %1007 = add i64 %1006, %1004
  %1008 = load i64, i64* %PC
  %1009 = add i64 %1008, 5
  store i64 %1009, i64* %PC
  %1010 = inttoptr i64 %1007 to double*
  %1011 = load double, double* %1010
  %1012 = bitcast i8* %1003 to double*
  store double %1011, double* %1012, align 1, !tbaa !2452
  %1013 = getelementptr inbounds i8, i8* %1003, i64 8
  %1014 = bitcast i8* %1013 to double*
  store double 0.000000e+00, double* %1014, align 1, !tbaa !2452
  %1015 = load i64, i64* %RBP
  %1016 = sub i64 %1015, 72
  %1017 = load i64, i64* %PC
  %1018 = add i64 %1017, 4
  store i64 %1018, i64* %PC
  %1019 = inttoptr i64 %1016 to i64*
  %1020 = load i64, i64* %1019
  store i64 %1020, i64* %RAX, align 8, !tbaa !2451
  %1021 = load i64, i64* %RBP
  %1022 = sub i64 %1021, 88
  %1023 = load i64, i64* %PC
  %1024 = add i64 %1023, 4
  store i64 %1024, i64* %PC
  %1025 = inttoptr i64 %1022 to i32*
  %1026 = load i32, i32* %1025
  %1027 = sext i32 %1026 to i64
  store i64 %1027, i64* %RCX, align 8, !tbaa !2451
  %1028 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1029 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1030 = load i64, i64* %RAX
  %1031 = load i64, i64* %RCX
  %1032 = mul i64 %1031, 8
  %1033 = add i64 %1032, %1030
  %1034 = load i64, i64* %PC
  %1035 = add i64 %1034, 5
  store i64 %1035, i64* %PC
  %1036 = bitcast i8* %1029 to double*
  %1037 = load double, double* %1036, align 1
  %1038 = getelementptr inbounds i8, i8* %1029, i64 8
  %1039 = bitcast i8* %1038 to i64*
  %1040 = load i64, i64* %1039, align 1
  %1041 = inttoptr i64 %1033 to double*
  %1042 = load double, double* %1041
  %1043 = fmul double %1037, %1042
  %1044 = bitcast i8* %1028 to double*
  store double %1043, double* %1044, align 1, !tbaa !2452
  %1045 = getelementptr inbounds i8, i8* %1028, i64 8
  %1046 = bitcast i8* %1045 to i64*
  store i64 %1040, i64* %1046, align 1, !tbaa !2452
  %1047 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1048 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1049 = bitcast %union.vec128_t* %XMM1 to i8*
  %1050 = load i64, i64* %PC
  %1051 = add i64 %1050, 4
  store i64 %1051, i64* %PC
  %1052 = bitcast i8* %1048 to double*
  %1053 = load double, double* %1052, align 1
  %1054 = getelementptr inbounds i8, i8* %1048, i64 8
  %1055 = bitcast i8* %1054 to i64*
  %1056 = load i64, i64* %1055, align 1
  %1057 = bitcast i8* %1049 to double*
  %1058 = load double, double* %1057, align 1
  %1059 = fadd double %1053, %1058
  %1060 = bitcast i8* %1047 to double*
  store double %1059, double* %1060, align 1, !tbaa !2452
  %1061 = getelementptr inbounds i8, i8* %1047, i64 8
  %1062 = bitcast i8* %1061 to i64*
  store i64 %1056, i64* %1062, align 1, !tbaa !2452
  %1063 = load i64, i64* %RBP
  %1064 = sub i64 %1063, 80
  %1065 = load i64, i64* %PC
  %1066 = add i64 %1065, 4
  store i64 %1066, i64* %PC
  %1067 = inttoptr i64 %1064 to i64*
  %1068 = load i64, i64* %1067
  store i64 %1068, i64* %RAX, align 8, !tbaa !2451
  %1069 = load i64, i64* %RBP
  %1070 = sub i64 %1069, 84
  %1071 = load i64, i64* %PC
  %1072 = add i64 %1071, 4
  store i64 %1072, i64* %PC
  %1073 = inttoptr i64 %1070 to i32*
  %1074 = load i32, i32* %1073
  %1075 = sext i32 %1074 to i64
  store i64 %1075, i64* %RCX, align 8, !tbaa !2451
  %1076 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1077 = load i64, i64* %RAX
  %1078 = load i64, i64* %RCX
  %1079 = mul i64 %1078, 8
  %1080 = add i64 %1079, %1077
  %1081 = load i64, i64* %PC
  %1082 = add i64 %1081, 5
  store i64 %1082, i64* %PC
  %1083 = inttoptr i64 %1080 to double*
  %1084 = load double, double* %1083
  %1085 = bitcast i8* %1076 to double*
  store double %1084, double* %1085, align 1, !tbaa !2452
  %1086 = getelementptr inbounds i8, i8* %1076, i64 8
  %1087 = bitcast i8* %1086 to double*
  store double 0.000000e+00, double* %1087, align 1, !tbaa !2452
  %1088 = load i64, i64* %RBP
  %1089 = add i64 %1088, 16
  %1090 = load i64, i64* %PC
  %1091 = add i64 %1090, 4
  store i64 %1091, i64* %PC
  %1092 = inttoptr i64 %1089 to i64*
  %1093 = load i64, i64* %1092
  store i64 %1093, i64* %RAX, align 8, !tbaa !2451
  %1094 = load i64, i64* %RBP
  %1095 = sub i64 %1094, 88
  %1096 = load i64, i64* %PC
  %1097 = add i64 %1096, 4
  store i64 %1097, i64* %PC
  %1098 = inttoptr i64 %1095 to i32*
  %1099 = load i32, i32* %1098
  %1100 = sext i32 %1099 to i64
  store i64 %1100, i64* %RCX, align 8, !tbaa !2451
  %1101 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1102 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1103 = load i64, i64* %RAX
  %1104 = load i64, i64* %RCX
  %1105 = mul i64 %1104, 8
  %1106 = add i64 %1105, %1103
  %1107 = load i64, i64* %PC
  %1108 = add i64 %1107, 5
  store i64 %1108, i64* %PC
  %1109 = bitcast i8* %1102 to double*
  %1110 = load double, double* %1109, align 1
  %1111 = getelementptr inbounds i8, i8* %1102, i64 8
  %1112 = bitcast i8* %1111 to i64*
  %1113 = load i64, i64* %1112, align 1
  %1114 = inttoptr i64 %1106 to double*
  %1115 = load double, double* %1114
  %1116 = fmul double %1110, %1115
  %1117 = bitcast i8* %1101 to double*
  store double %1116, double* %1117, align 1, !tbaa !2452
  %1118 = getelementptr inbounds i8, i8* %1101, i64 8
  %1119 = bitcast i8* %1118 to i64*
  store i64 %1113, i64* %1119, align 1, !tbaa !2452
  %1120 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1121 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1122 = bitcast %union.vec128_t* %XMM1 to i8*
  %1123 = load i64, i64* %PC
  %1124 = add i64 %1123, 4
  store i64 %1124, i64* %PC
  %1125 = bitcast i8* %1121 to double*
  %1126 = load double, double* %1125, align 1
  %1127 = getelementptr inbounds i8, i8* %1121, i64 8
  %1128 = bitcast i8* %1127 to i64*
  %1129 = load i64, i64* %1128, align 1
  %1130 = bitcast i8* %1122 to double*
  %1131 = load double, double* %1130, align 1
  %1132 = fadd double %1126, %1131
  %1133 = bitcast i8* %1120 to double*
  store double %1132, double* %1133, align 1, !tbaa !2452
  %1134 = getelementptr inbounds i8, i8* %1120, i64 8
  %1135 = bitcast i8* %1134 to i64*
  store i64 %1129, i64* %1135, align 1, !tbaa !2452
  %1136 = load i64, i64* %RBP
  %1137 = sub i64 %1136, 56
  %1138 = load i64, i64* %PC
  %1139 = add i64 %1138, 4
  store i64 %1139, i64* %PC
  %1140 = inttoptr i64 %1137 to i64*
  %1141 = load i64, i64* %1140
  store i64 %1141, i64* %RAX, align 8, !tbaa !2451
  %1142 = load i64, i64* %RBP
  %1143 = sub i64 %1142, 84
  %1144 = load i64, i64* %PC
  %1145 = add i64 %1144, 4
  store i64 %1145, i64* %PC
  %1146 = inttoptr i64 %1143 to i32*
  %1147 = load i32, i32* %1146
  %1148 = sext i32 %1147 to i64
  store i64 %1148, i64* %RCX, align 8, !tbaa !2451
  %1149 = load i64, i64* %RCX
  %1150 = load i64, i64* %PC
  %1151 = add i64 %1150, 7
  store i64 %1151, i64* %PC
  %1152 = sext i64 %1149 to i128
  %1153 = and i128 %1152, -18446744073709551616
  %1154 = zext i64 %1149 to i128
  %1155 = or i128 %1153, %1154
  %1156 = mul nsw i128 32000, %1155
  %1157 = trunc i128 %1156 to i64
  store i64 %1157, i64* %RCX, align 8, !tbaa !2451
  %1158 = sext i64 %1157 to i128
  %1159 = icmp ne i128 %1158, %1156
  %1160 = zext i1 %1159 to i8
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1160, i8* %1161, align 1, !tbaa !2428
  %1162 = trunc i128 %1156 to i32
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1163, align 1, !tbaa !2445
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1164, align 1, !tbaa !2446
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1165, align 1, !tbaa !2447
  %1166 = lshr i64 %1157, 63
  %1167 = trunc i64 %1166 to i8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1167, i8* %1168, align 1, !tbaa !2448
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1160, i8* %1169, align 1, !tbaa !2449
  %1170 = load i64, i64* %RAX
  %1171 = load i64, i64* %RCX
  %1172 = load i64, i64* %PC
  %1173 = add i64 %1172, 3
  store i64 %1173, i64* %PC
  %1174 = add i64 %1171, %1170
  store i64 %1174, i64* %RAX, align 8, !tbaa !2451
  %1175 = icmp ult i64 %1174, %1170
  %1176 = icmp ult i64 %1174, %1171
  %1177 = or i1 %1175, %1176
  %1178 = zext i1 %1177 to i8
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1178, i8* %1179, align 1, !tbaa !2428
  %1180 = trunc i64 %1174 to i32
  %1181 = and i32 %1180, 255
  %1182 = call i32 @llvm.ctpop.i32(i32 %1181) #16
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = xor i8 %1184, 1
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1185, i8* %1186, align 1, !tbaa !2445
  %1187 = xor i64 %1171, %1170
  %1188 = xor i64 %1187, %1174
  %1189 = lshr i64 %1188, 4
  %1190 = trunc i64 %1189 to i8
  %1191 = and i8 %1190, 1
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1191, i8* %1192, align 1, !tbaa !2446
  %1193 = icmp eq i64 %1174, 0
  %1194 = zext i1 %1193 to i8
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1194, i8* %1195, align 1, !tbaa !2447
  %1196 = lshr i64 %1174, 63
  %1197 = trunc i64 %1196 to i8
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1197, i8* %1198, align 1, !tbaa !2448
  %1199 = lshr i64 %1170, 63
  %1200 = lshr i64 %1171, 63
  %1201 = xor i64 %1196, %1199
  %1202 = xor i64 %1196, %1200
  %1203 = add nuw nsw i64 %1201, %1202
  %1204 = icmp eq i64 %1203, 2
  %1205 = zext i1 %1204 to i8
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1205, i8* %1206, align 1, !tbaa !2449
  %1207 = load i64, i64* %RBP
  %1208 = sub i64 %1207, 88
  %1209 = load i64, i64* %PC
  %1210 = add i64 %1209, 4
  store i64 %1210, i64* %PC
  %1211 = inttoptr i64 %1208 to i32*
  %1212 = load i32, i32* %1211
  %1213 = sext i32 %1212 to i64
  store i64 %1213, i64* %RCX, align 8, !tbaa !2451
  %1214 = load i64, i64* %RAX
  %1215 = load i64, i64* %RCX
  %1216 = mul i64 %1215, 8
  %1217 = add i64 %1216, %1214
  %1218 = bitcast %union.vec128_t* %XMM0 to i8*
  %1219 = load i64, i64* %PC
  %1220 = add i64 %1219, 5
  store i64 %1220, i64* %PC
  %1221 = bitcast i8* %1218 to double*
  %1222 = load double, double* %1221, align 1
  %1223 = inttoptr i64 %1217 to double*
  store double %1222, double* %1223
  %1224 = load i64, i64* %RBP
  %1225 = sub i64 %1224, 88
  %1226 = load i64, i64* %PC
  %1227 = add i64 %1226, 3
  store i64 %1227, i64* %PC
  %1228 = inttoptr i64 %1225 to i32*
  %1229 = load i32, i32* %1228
  %1230 = zext i32 %1229 to i64
  store i64 %1230, i64* %RAX, align 8, !tbaa !2451
  %1231 = load i64, i64* %RAX
  %1232 = load i64, i64* %PC
  %1233 = add i64 %1232, 3
  store i64 %1233, i64* %PC
  %1234 = trunc i64 %1231 to i32
  %1235 = add i32 1, %1234
  %1236 = zext i32 %1235 to i64
  store i64 %1236, i64* %RAX, align 8, !tbaa !2451
  %1237 = icmp ult i32 %1235, %1234
  %1238 = icmp ult i32 %1235, 1
  %1239 = or i1 %1237, %1238
  %1240 = zext i1 %1239 to i8
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1240, i8* %1241, align 1, !tbaa !2428
  %1242 = and i32 %1235, 255
  %1243 = call i32 @llvm.ctpop.i32(i32 %1242) #16
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1246, i8* %1247, align 1, !tbaa !2445
  %1248 = xor i64 1, %1231
  %1249 = trunc i64 %1248 to i32
  %1250 = xor i32 %1249, %1235
  %1251 = lshr i32 %1250, 4
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1253, i8* %1254, align 1, !tbaa !2446
  %1255 = icmp eq i32 %1235, 0
  %1256 = zext i1 %1255 to i8
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1256, i8* %1257, align 1, !tbaa !2447
  %1258 = lshr i32 %1235, 31
  %1259 = trunc i32 %1258 to i8
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1259, i8* %1260, align 1, !tbaa !2448
  %1261 = lshr i32 %1234, 31
  %1262 = xor i32 %1258, %1261
  %1263 = add nuw nsw i32 %1262, %1258
  %1264 = icmp eq i32 %1263, 2
  %1265 = zext i1 %1264 to i8
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1265, i8* %1266, align 1, !tbaa !2449
  %1267 = load i64, i64* %RBP
  %1268 = sub i64 %1267, 88
  %1269 = load i32, i32* %EAX
  %1270 = zext i32 %1269 to i64
  %1271 = load i64, i64* %PC
  %1272 = add i64 %1271, 3
  store i64 %1272, i64* %PC
  %1273 = inttoptr i64 %1268 to i32*
  store i32 %1269, i32* %1273
  %1274 = load i64, i64* %PC
  %1275 = sub i64 %1274, 135
  %1276 = load i64, i64* %PC
  %1277 = add i64 %1276, 5
  store i64 %1277, i64* %PC
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1275, i64* %1278, align 8, !tbaa !2451
  br label %block_40106a

block_401198:                                     ; preds = %block_401133
  %1279 = load i64, i64* %PC
  %1280 = add i64 %1279, 5
  %1281 = load i64, i64* %PC
  %1282 = add i64 %1281, 5
  store i64 %1282, i64* %PC
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1280, i64* %1283, align 8, !tbaa !2451
  %1284 = load i64, i64* %RBP
  %1285 = sub i64 %1284, 84
  %1286 = load i64, i64* %PC
  %1287 = add i64 %1286, 3
  store i64 %1287, i64* %PC
  %1288 = inttoptr i64 %1285 to i32*
  %1289 = load i32, i32* %1288
  %1290 = zext i32 %1289 to i64
  store i64 %1290, i64* %RAX, align 8, !tbaa !2451
  %1291 = load i64, i64* %RAX
  %1292 = load i64, i64* %PC
  %1293 = add i64 %1292, 3
  store i64 %1293, i64* %PC
  %1294 = trunc i64 %1291 to i32
  %1295 = add i32 1, %1294
  %1296 = zext i32 %1295 to i64
  store i64 %1296, i64* %RAX, align 8, !tbaa !2451
  %1297 = icmp ult i32 %1295, %1294
  %1298 = icmp ult i32 %1295, 1
  %1299 = or i1 %1297, %1298
  %1300 = zext i1 %1299 to i8
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1300, i8* %1301, align 1, !tbaa !2428
  %1302 = and i32 %1295, 255
  %1303 = call i32 @llvm.ctpop.i32(i32 %1302) #16
  %1304 = trunc i32 %1303 to i8
  %1305 = and i8 %1304, 1
  %1306 = xor i8 %1305, 1
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1306, i8* %1307, align 1, !tbaa !2445
  %1308 = xor i64 1, %1291
  %1309 = trunc i64 %1308 to i32
  %1310 = xor i32 %1309, %1295
  %1311 = lshr i32 %1310, 4
  %1312 = trunc i32 %1311 to i8
  %1313 = and i8 %1312, 1
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1313, i8* %1314, align 1, !tbaa !2446
  %1315 = icmp eq i32 %1295, 0
  %1316 = zext i1 %1315 to i8
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1316, i8* %1317, align 1, !tbaa !2447
  %1318 = lshr i32 %1295, 31
  %1319 = trunc i32 %1318 to i8
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1319, i8* %1320, align 1, !tbaa !2448
  %1321 = lshr i32 %1294, 31
  %1322 = xor i32 %1318, %1321
  %1323 = add nuw nsw i32 %1322, %1318
  %1324 = icmp eq i32 %1323, 2
  %1325 = zext i1 %1324 to i8
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1325, i8* %1326, align 1, !tbaa !2449
  %1327 = load i64, i64* %RBP
  %1328 = sub i64 %1327, 84
  %1329 = load i32, i32* %EAX
  %1330 = zext i32 %1329 to i64
  %1331 = load i64, i64* %PC
  %1332 = add i64 %1331, 3
  store i64 %1332, i64* %PC
  %1333 = inttoptr i64 %1328 to i32*
  store i32 %1329, i32* %1333
  %1334 = load i64, i64* %PC
  %1335 = sub i64 %1334, 150
  %1336 = load i64, i64* %PC
  %1337 = add i64 %1336, 5
  store i64 %1337, i64* %PC
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1335, i64* %1338, align 8, !tbaa !2451
  br label %block_401110

block_4011be:                                     ; preds = %block_4011b2
  %1339 = add i64 %578, 32
  %1340 = load i64, i64* %PC
  %1341 = add i64 %1340, 4
  store i64 %1341, i64* %PC
  %1342 = inttoptr i64 %1339 to i64*
  %1343 = load i64, i64* %1342
  store i64 %1343, i64* %RAX, align 8, !tbaa !2451
  %1344 = load i64, i64* %RBP
  %1345 = sub i64 %1344, 84
  %1346 = load i64, i64* %PC
  %1347 = add i64 %1346, 4
  store i64 %1347, i64* %PC
  %1348 = inttoptr i64 %1345 to i32*
  %1349 = load i32, i32* %1348
  %1350 = sext i32 %1349 to i64
  store i64 %1350, i64* %RCX, align 8, !tbaa !2451
  %1351 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1352 = load i64, i64* %RAX
  %1353 = load i64, i64* %RCX
  %1354 = mul i64 %1353, 8
  %1355 = add i64 %1354, %1352
  %1356 = load i64, i64* %PC
  %1357 = add i64 %1356, 5
  store i64 %1357, i64* %PC
  %1358 = inttoptr i64 %1355 to double*
  %1359 = load double, double* %1358
  %1360 = bitcast i8* %1351 to double*
  store double %1359, double* %1360, align 1, !tbaa !2452
  %1361 = getelementptr inbounds i8, i8* %1351, i64 8
  %1362 = bitcast i8* %1361 to double*
  store double 0.000000e+00, double* %1362, align 1, !tbaa !2452
  %1363 = load i64, i64* %RBP
  %1364 = add i64 %1363, 48
  %1365 = load i64, i64* %PC
  %1366 = add i64 %1365, 4
  store i64 %1366, i64* %PC
  %1367 = inttoptr i64 %1364 to i64*
  %1368 = load i64, i64* %1367
  store i64 %1368, i64* %RAX, align 8, !tbaa !2451
  %1369 = load i64, i64* %RBP
  %1370 = sub i64 %1369, 84
  %1371 = load i64, i64* %PC
  %1372 = add i64 %1371, 4
  store i64 %1372, i64* %PC
  %1373 = inttoptr i64 %1370 to i32*
  %1374 = load i32, i32* %1373
  %1375 = sext i32 %1374 to i64
  store i64 %1375, i64* %RCX, align 8, !tbaa !2451
  %1376 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1377 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1378 = load i64, i64* %RAX
  %1379 = load i64, i64* %RCX
  %1380 = mul i64 %1379, 8
  %1381 = add i64 %1380, %1378
  %1382 = load i64, i64* %PC
  %1383 = add i64 %1382, 5
  store i64 %1383, i64* %PC
  %1384 = bitcast i8* %1377 to double*
  %1385 = load double, double* %1384, align 1
  %1386 = getelementptr inbounds i8, i8* %1377, i64 8
  %1387 = bitcast i8* %1386 to i64*
  %1388 = load i64, i64* %1387, align 1
  %1389 = inttoptr i64 %1381 to double*
  %1390 = load double, double* %1389
  %1391 = fadd double %1385, %1390
  %1392 = bitcast i8* %1376 to double*
  store double %1391, double* %1392, align 1, !tbaa !2452
  %1393 = getelementptr inbounds i8, i8* %1376, i64 8
  %1394 = bitcast i8* %1393 to i64*
  store i64 %1388, i64* %1394, align 1, !tbaa !2452
  %1395 = load i64, i64* %RBP
  %1396 = add i64 %1395, 32
  %1397 = load i64, i64* %PC
  %1398 = add i64 %1397, 4
  store i64 %1398, i64* %PC
  %1399 = inttoptr i64 %1396 to i64*
  %1400 = load i64, i64* %1399
  store i64 %1400, i64* %RAX, align 8, !tbaa !2451
  %1401 = load i64, i64* %RBP
  %1402 = sub i64 %1401, 84
  %1403 = load i64, i64* %PC
  %1404 = add i64 %1403, 4
  store i64 %1404, i64* %PC
  %1405 = inttoptr i64 %1402 to i32*
  %1406 = load i32, i32* %1405
  %1407 = sext i32 %1406 to i64
  store i64 %1407, i64* %RCX, align 8, !tbaa !2451
  %1408 = load i64, i64* %RAX
  %1409 = load i64, i64* %RCX
  %1410 = mul i64 %1409, 8
  %1411 = add i64 %1410, %1408
  %1412 = bitcast %union.vec128_t* %XMM0 to i8*
  %1413 = load i64, i64* %PC
  %1414 = add i64 %1413, 5
  store i64 %1414, i64* %PC
  %1415 = bitcast i8* %1412 to double*
  %1416 = load double, double* %1415, align 1
  %1417 = inttoptr i64 %1411 to double*
  store double %1416, double* %1417
  %1418 = load i64, i64* %RBP
  %1419 = sub i64 %1418, 84
  %1420 = load i64, i64* %PC
  %1421 = add i64 %1420, 3
  store i64 %1421, i64* %PC
  %1422 = inttoptr i64 %1419 to i32*
  %1423 = load i32, i32* %1422
  %1424 = zext i32 %1423 to i64
  store i64 %1424, i64* %RAX, align 8, !tbaa !2451
  %1425 = load i64, i64* %RAX
  %1426 = load i64, i64* %PC
  %1427 = add i64 %1426, 3
  store i64 %1427, i64* %PC
  %1428 = trunc i64 %1425 to i32
  %1429 = add i32 1, %1428
  %1430 = zext i32 %1429 to i64
  store i64 %1430, i64* %RAX, align 8, !tbaa !2451
  %1431 = icmp ult i32 %1429, %1428
  %1432 = icmp ult i32 %1429, 1
  %1433 = or i1 %1431, %1432
  %1434 = zext i1 %1433 to i8
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1434, i8* %1435, align 1, !tbaa !2428
  %1436 = and i32 %1429, 255
  %1437 = call i32 @llvm.ctpop.i32(i32 %1436) #16
  %1438 = trunc i32 %1437 to i8
  %1439 = and i8 %1438, 1
  %1440 = xor i8 %1439, 1
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1440, i8* %1441, align 1, !tbaa !2445
  %1442 = xor i64 1, %1425
  %1443 = trunc i64 %1442 to i32
  %1444 = xor i32 %1443, %1429
  %1445 = lshr i32 %1444, 4
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1447, i8* %1448, align 1, !tbaa !2446
  %1449 = icmp eq i32 %1429, 0
  %1450 = zext i1 %1449 to i8
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1450, i8* %1451, align 1, !tbaa !2447
  %1452 = lshr i32 %1429, 31
  %1453 = trunc i32 %1452 to i8
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1453, i8* %1454, align 1, !tbaa !2448
  %1455 = lshr i32 %1428, 31
  %1456 = xor i32 %1452, %1455
  %1457 = add nuw nsw i32 %1456, %1452
  %1458 = icmp eq i32 %1457, 2
  %1459 = zext i1 %1458 to i8
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1459, i8* %1460, align 1, !tbaa !2449
  %1461 = load i64, i64* %RBP
  %1462 = sub i64 %1461, 84
  %1463 = load i32, i32* %EAX
  %1464 = zext i32 %1463 to i64
  %1465 = load i64, i64* %PC
  %1466 = add i64 %1465, 3
  store i64 %1466, i64* %PC
  %1467 = inttoptr i64 %1462 to i32*
  store i32 %1463, i32* %1467
  %1468 = load i64, i64* %PC
  %1469 = sub i64 %1468, 60
  %1470 = load i64, i64* %PC
  %1471 = add i64 %1470, 5
  store i64 %1471, i64* %PC
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1469, i64* %1472, align 8, !tbaa !2451
  br label %block_4011b2

block_401110:                                     ; preds = %block_401109, %block_401198
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.6, %block_401109 ], [ %MEMORY.2, %block_401198 ]
  %1473 = load i64, i64* %RBP
  %1474 = sub i64 %1473, 84
  %1475 = load i64, i64* %PC
  %1476 = add i64 %1475, 3
  store i64 %1476, i64* %PC
  %1477 = inttoptr i64 %1474 to i32*
  %1478 = load i32, i32* %1477
  %1479 = zext i32 %1478 to i64
  store i64 %1479, i64* %RAX, align 8, !tbaa !2451
  %1480 = load i32, i32* %EAX
  %1481 = zext i32 %1480 to i64
  %1482 = load i64, i64* %RBP
  %1483 = sub i64 %1482, 20
  %1484 = load i64, i64* %PC
  %1485 = add i64 %1484, 3
  store i64 %1485, i64* %PC
  %1486 = inttoptr i64 %1483 to i32*
  %1487 = load i32, i32* %1486
  %1488 = sub i32 %1480, %1487
  %1489 = icmp ult i32 %1480, %1487
  %1490 = zext i1 %1489 to i8
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1490, i8* %1491, align 1, !tbaa !2428
  %1492 = and i32 %1488, 255
  %1493 = call i32 @llvm.ctpop.i32(i32 %1492) #16
  %1494 = trunc i32 %1493 to i8
  %1495 = and i8 %1494, 1
  %1496 = xor i8 %1495, 1
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1496, i8* %1497, align 1, !tbaa !2445
  %1498 = xor i32 %1487, %1480
  %1499 = xor i32 %1498, %1488
  %1500 = lshr i32 %1499, 4
  %1501 = trunc i32 %1500 to i8
  %1502 = and i8 %1501, 1
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1502, i8* %1503, align 1, !tbaa !2446
  %1504 = icmp eq i32 %1488, 0
  %1505 = zext i1 %1504 to i8
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1505, i8* %1506, align 1, !tbaa !2447
  %1507 = lshr i32 %1488, 31
  %1508 = trunc i32 %1507 to i8
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1508, i8* %1509, align 1, !tbaa !2448
  %1510 = lshr i32 %1480, 31
  %1511 = lshr i32 %1487, 31
  %1512 = xor i32 %1511, %1510
  %1513 = xor i32 %1507, %1510
  %1514 = add nuw nsw i32 %1513, %1512
  %1515 = icmp eq i32 %1514, 2
  %1516 = zext i1 %1515 to i8
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1516, i8* %1517, align 1, !tbaa !2449
  %1518 = load i64, i64* %PC
  %1519 = add i64 %1518, 149
  %1520 = load i64, i64* %PC
  %1521 = add i64 %1520, 6
  %1522 = load i64, i64* %PC
  %1523 = add i64 %1522, 6
  store i64 %1523, i64* %PC
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1525 = load i8, i8* %1524, align 1, !tbaa !2448
  %1526 = icmp ne i8 %1525, 0
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1528 = load i8, i8* %1527, align 1, !tbaa !2449
  %1529 = icmp ne i8 %1528, 0
  %1530 = xor i1 %1526, %1529
  %1531 = xor i1 %1530, true
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1534 = select i1 %1530, i64 %1521, i64 %1519
  store i64 %1534, i64* %1533, align 8, !tbaa !2451
  %1535 = load i8, i8* %BRANCH_TAKEN
  %1536 = icmp eq i8 %1535, 1
  br i1 %1536, label %block_4011ab, label %block_40111c

block_40120d:                                     ; preds = %block_401206, %block_401219
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.0, %block_401206 ], [ %MEMORY.5, %block_401219 ]
  %1537 = load i64, i64* %RBP
  %1538 = sub i64 %1537, 88
  %1539 = load i64, i64* %PC
  %1540 = add i64 %1539, 3
  store i64 %1540, i64* %PC
  %1541 = inttoptr i64 %1538 to i32*
  %1542 = load i32, i32* %1541
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %RAX, align 8, !tbaa !2451
  %1544 = load i32, i32* %EAX
  %1545 = zext i32 %1544 to i64
  %1546 = load i64, i64* %RBP
  %1547 = sub i64 %1546, 20
  %1548 = load i64, i64* %PC
  %1549 = add i64 %1548, 3
  store i64 %1549, i64* %PC
  %1550 = inttoptr i64 %1547 to i32*
  %1551 = load i32, i32* %1550
  %1552 = sub i32 %1544, %1551
  %1553 = icmp ult i32 %1544, %1551
  %1554 = zext i1 %1553 to i8
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1554, i8* %1555, align 1, !tbaa !2428
  %1556 = and i32 %1552, 255
  %1557 = call i32 @llvm.ctpop.i32(i32 %1556) #16
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  %1560 = xor i8 %1559, 1
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1560, i8* %1561, align 1, !tbaa !2445
  %1562 = xor i32 %1551, %1544
  %1563 = xor i32 %1562, %1552
  %1564 = lshr i32 %1563, 4
  %1565 = trunc i32 %1564 to i8
  %1566 = and i8 %1565, 1
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1566, i8* %1567, align 1, !tbaa !2446
  %1568 = icmp eq i32 %1552, 0
  %1569 = zext i1 %1568 to i8
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1569, i8* %1570, align 1, !tbaa !2447
  %1571 = lshr i32 %1552, 31
  %1572 = trunc i32 %1571 to i8
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1572, i8* %1573, align 1, !tbaa !2448
  %1574 = lshr i32 %1544, 31
  %1575 = lshr i32 %1551, 31
  %1576 = xor i32 %1575, %1574
  %1577 = xor i32 %1571, %1574
  %1578 = add nuw nsw i32 %1577, %1576
  %1579 = icmp eq i32 %1578, 2
  %1580 = zext i1 %1579 to i8
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1580, i8* %1581, align 1, !tbaa !2449
  %1582 = load i64, i64* %PC
  %1583 = add i64 %1582, 95
  %1584 = load i64, i64* %PC
  %1585 = add i64 %1584, 6
  %1586 = load i64, i64* %PC
  %1587 = add i64 %1586, 6
  store i64 %1587, i64* %PC
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1589 = load i8, i8* %1588, align 1, !tbaa !2448
  %1590 = icmp ne i8 %1589, 0
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1592 = load i8, i8* %1591, align 1, !tbaa !2449
  %1593 = icmp ne i8 %1592, 0
  %1594 = xor i1 %1590, %1593
  %1595 = xor i1 %1594, true
  %1596 = zext i1 %1595 to i8
  store i8 %1596, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1598 = select i1 %1594, i64 %1585, i64 %1583
  store i64 %1598, i64* %1597, align 8, !tbaa !2451
  %1599 = load i8, i8* %BRANCH_TAKEN
  %1600 = icmp eq i8 %1599, 1
  br i1 %1600, label %block_401272, label %block_401219

block_401063:                                     ; preds = %block_401057
  %1601 = sub i64 %1707, 88
  %1602 = load i64, i64* %PC
  %1603 = add i64 %1602, 7
  store i64 %1603, i64* %PC
  %1604 = inttoptr i64 %1601 to i32*
  store i32 0, i32* %1604
  br label %block_40106a

block_401109:                                     ; preds = %block_401057
  %1605 = sub i64 %1707, 84
  %1606 = load i64, i64* %PC
  %1607 = add i64 %1606, 7
  store i64 %1607, i64* %PC
  %1608 = inttoptr i64 %1605 to i32*
  store i32 0, i32* %1608
  br label %block_401110

block_401206:                                     ; preds = %block_4011fa
  %1609 = load i64, i64* %RBP
  %1610 = sub i64 %1609, 88
  %1611 = load i64, i64* %PC
  %1612 = add i64 %1611, 7
  store i64 %1612, i64* %PC
  %1613 = inttoptr i64 %1610 to i32*
  store i32 0, i32* %1613
  br label %block_40120d

block_401285:                                     ; preds = %block_4011fa
  %1614 = load i64, i64* %PC
  %1615 = add i64 %1614, 1
  store i64 %1615, i64* %PC
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1617 = load i64, i64* %1616, align 8, !tbaa !2451
  %1618 = add i64 %1617, 8
  %1619 = inttoptr i64 %1617 to i64*
  %1620 = load i64, i64* %1619
  store i64 %1620, i64* %RBX, align 8, !tbaa !2451
  store i64 %1618, i64* %1616, align 8, !tbaa !2451
  %1621 = load i64, i64* %PC
  %1622 = add i64 %1621, 2
  store i64 %1622, i64* %PC
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1624 = load i64, i64* %1623, align 8, !tbaa !2451
  %1625 = add i64 %1624, 8
  %1626 = inttoptr i64 %1624 to i64*
  %1627 = load i64, i64* %1626
  store i64 %1627, i64* %R14, align 8, !tbaa !2451
  store i64 %1625, i64* %1623, align 8, !tbaa !2451
  %1628 = load i64, i64* %PC
  %1629 = add i64 %1628, 1
  store i64 %1629, i64* %PC
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1631 = load i64, i64* %1630, align 8, !tbaa !2451
  %1632 = add i64 %1631, 8
  %1633 = inttoptr i64 %1631 to i64*
  %1634 = load i64, i64* %1633
  store i64 %1634, i64* %RBP, align 8, !tbaa !2451
  store i64 %1632, i64* %1630, align 8, !tbaa !2451
  %1635 = load i64, i64* %PC
  %1636 = add i64 %1635, 1
  store i64 %1636, i64* %PC
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1639 = load i64, i64* %1638, align 8, !tbaa !2451
  %1640 = inttoptr i64 %1639 to i64*
  %1641 = load i64, i64* %1640
  store i64 %1641, i64* %1637, align 8, !tbaa !2451
  %1642 = add i64 %1639, 8
  store i64 %1642, i64* %1638, align 8, !tbaa !2451
  ret %struct.Memory* %MEMORY.0

block_401057:                                     ; preds = %block_4010f6, %block_401000
  %MEMORY.6 = phi %struct.Memory* [ %2, %block_401000 ], [ %MEMORY.1, %block_4010f6 ]
  %1643 = load i64, i64* %RBP
  %1644 = sub i64 %1643, 84
  %1645 = load i64, i64* %PC
  %1646 = add i64 %1645, 3
  store i64 %1646, i64* %PC
  %1647 = inttoptr i64 %1644 to i32*
  %1648 = load i32, i32* %1647
  %1649 = zext i32 %1648 to i64
  store i64 %1649, i64* %RAX, align 8, !tbaa !2451
  %1650 = load i32, i32* %EAX
  %1651 = zext i32 %1650 to i64
  %1652 = load i64, i64* %RBP
  %1653 = sub i64 %1652, 20
  %1654 = load i64, i64* %PC
  %1655 = add i64 %1654, 3
  store i64 %1655, i64* %PC
  %1656 = inttoptr i64 %1653 to i32*
  %1657 = load i32, i32* %1656
  %1658 = sub i32 %1650, %1657
  %1659 = icmp ult i32 %1650, %1657
  %1660 = zext i1 %1659 to i8
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1660, i8* %1661, align 1, !tbaa !2428
  %1662 = and i32 %1658, 255
  %1663 = call i32 @llvm.ctpop.i32(i32 %1662) #16
  %1664 = trunc i32 %1663 to i8
  %1665 = and i8 %1664, 1
  %1666 = xor i8 %1665, 1
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1666, i8* %1667, align 1, !tbaa !2445
  %1668 = xor i32 %1657, %1650
  %1669 = xor i32 %1668, %1658
  %1670 = lshr i32 %1669, 4
  %1671 = trunc i32 %1670 to i8
  %1672 = and i8 %1671, 1
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1672, i8* %1673, align 1, !tbaa !2446
  %1674 = icmp eq i32 %1658, 0
  %1675 = zext i1 %1674 to i8
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1675, i8* %1676, align 1, !tbaa !2447
  %1677 = lshr i32 %1658, 31
  %1678 = trunc i32 %1677 to i8
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1678, i8* %1679, align 1, !tbaa !2448
  %1680 = lshr i32 %1650, 31
  %1681 = lshr i32 %1657, 31
  %1682 = xor i32 %1681, %1680
  %1683 = xor i32 %1677, %1680
  %1684 = add nuw nsw i32 %1683, %1682
  %1685 = icmp eq i32 %1684, 2
  %1686 = zext i1 %1685 to i8
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1686, i8* %1687, align 1, !tbaa !2449
  %1688 = load i64, i64* %PC
  %1689 = add i64 %1688, 172
  %1690 = load i64, i64* %PC
  %1691 = add i64 %1690, 6
  %1692 = load i64, i64* %PC
  %1693 = add i64 %1692, 6
  store i64 %1693, i64* %PC
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1695 = load i8, i8* %1694, align 1, !tbaa !2448
  %1696 = icmp ne i8 %1695, 0
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1698 = load i8, i8* %1697, align 1, !tbaa !2449
  %1699 = icmp ne i8 %1698, 0
  %1700 = xor i1 %1696, %1699
  %1701 = xor i1 %1700, true
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %BRANCH_TAKEN, align 1, !tbaa !2450
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1704 = select i1 %1700, i64 %1691, i64 %1689
  store i64 %1704, i64* %1703, align 8, !tbaa !2451
  %1705 = load i8, i8* %BRANCH_TAKEN
  %1706 = icmp eq i8 %1705, 1
  %1707 = load i64, i64* %RBP
  br i1 %1706, label %block_401109, label %block_401063

block_40113f:                                     ; preds = %block_401133
  %1708 = load i64, i64* %RBP
  %1709 = add i64 %1708, 32
  %1710 = load i64, i64* %PC
  %1711 = add i64 %1710, 4
  store i64 %1711, i64* %PC
  %1712 = inttoptr i64 %1709 to i64*
  %1713 = load i64, i64* %1712
  store i64 %1713, i64* %RAX, align 8, !tbaa !2451
  %1714 = load i64, i64* %RBP
  %1715 = sub i64 %1714, 84
  %1716 = load i64, i64* %PC
  %1717 = add i64 %1716, 4
  store i64 %1717, i64* %PC
  %1718 = inttoptr i64 %1715 to i32*
  %1719 = load i32, i32* %1718
  %1720 = sext i32 %1719 to i64
  store i64 %1720, i64* %RCX, align 8, !tbaa !2451
  %1721 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1722 = load i64, i64* %RAX
  %1723 = load i64, i64* %RCX
  %1724 = mul i64 %1723, 8
  %1725 = add i64 %1724, %1722
  %1726 = load i64, i64* %PC
  %1727 = add i64 %1726, 5
  store i64 %1727, i64* %PC
  %1728 = inttoptr i64 %1725 to double*
  %1729 = load double, double* %1728
  %1730 = bitcast i8* %1721 to double*
  store double %1729, double* %1730, align 1, !tbaa !2452
  %1731 = getelementptr inbounds i8, i8* %1721, i64 8
  %1732 = bitcast i8* %1731 to double*
  store double 0.000000e+00, double* %1732, align 1, !tbaa !2452
  %1733 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1734 = load i64, i64* %RBP
  %1735 = sub i64 %1734, 40
  %1736 = load i64, i64* %PC
  %1737 = add i64 %1736, 5
  store i64 %1737, i64* %PC
  %1738 = inttoptr i64 %1735 to double*
  %1739 = load double, double* %1738
  %1740 = bitcast i8* %1733 to double*
  store double %1739, double* %1740, align 1, !tbaa !2452
  %1741 = getelementptr inbounds i8, i8* %1733, i64 8
  %1742 = bitcast i8* %1741 to double*
  store double 0.000000e+00, double* %1742, align 1, !tbaa !2452
  %1743 = load i64, i64* %RBP
  %1744 = sub i64 %1743, 56
  %1745 = load i64, i64* %PC
  %1746 = add i64 %1745, 4
  store i64 %1746, i64* %PC
  %1747 = inttoptr i64 %1744 to i64*
  %1748 = load i64, i64* %1747
  store i64 %1748, i64* %RAX, align 8, !tbaa !2451
  %1749 = load i64, i64* %RBP
  %1750 = sub i64 %1749, 88
  %1751 = load i64, i64* %PC
  %1752 = add i64 %1751, 4
  store i64 %1752, i64* %PC
  %1753 = inttoptr i64 %1750 to i32*
  %1754 = load i32, i32* %1753
  %1755 = sext i32 %1754 to i64
  store i64 %1755, i64* %RCX, align 8, !tbaa !2451
  %1756 = load i64, i64* %RCX
  %1757 = load i64, i64* %PC
  %1758 = add i64 %1757, 7
  store i64 %1758, i64* %PC
  %1759 = sext i64 %1756 to i128
  %1760 = and i128 %1759, -18446744073709551616
  %1761 = zext i64 %1756 to i128
  %1762 = or i128 %1760, %1761
  %1763 = mul nsw i128 32000, %1762
  %1764 = trunc i128 %1763 to i64
  store i64 %1764, i64* %RCX, align 8, !tbaa !2451
  %1765 = sext i64 %1764 to i128
  %1766 = icmp ne i128 %1765, %1763
  %1767 = zext i1 %1766 to i8
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1767, i8* %1768, align 1, !tbaa !2428
  %1769 = trunc i128 %1763 to i32
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1770, align 1, !tbaa !2445
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1771, align 1, !tbaa !2446
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1772, align 1, !tbaa !2447
  %1773 = lshr i64 %1764, 63
  %1774 = trunc i64 %1773 to i8
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1774, i8* %1775, align 1, !tbaa !2448
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1767, i8* %1776, align 1, !tbaa !2449
  %1777 = load i64, i64* %RAX
  %1778 = load i64, i64* %RCX
  %1779 = load i64, i64* %PC
  %1780 = add i64 %1779, 3
  store i64 %1780, i64* %PC
  %1781 = add i64 %1778, %1777
  store i64 %1781, i64* %RAX, align 8, !tbaa !2451
  %1782 = icmp ult i64 %1781, %1777
  %1783 = icmp ult i64 %1781, %1778
  %1784 = or i1 %1782, %1783
  %1785 = zext i1 %1784 to i8
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1785, i8* %1786, align 1, !tbaa !2428
  %1787 = trunc i64 %1781 to i32
  %1788 = and i32 %1787, 255
  %1789 = call i32 @llvm.ctpop.i32(i32 %1788) #16
  %1790 = trunc i32 %1789 to i8
  %1791 = and i8 %1790, 1
  %1792 = xor i8 %1791, 1
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1792, i8* %1793, align 1, !tbaa !2445
  %1794 = xor i64 %1778, %1777
  %1795 = xor i64 %1794, %1781
  %1796 = lshr i64 %1795, 4
  %1797 = trunc i64 %1796 to i8
  %1798 = and i8 %1797, 1
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1798, i8* %1799, align 1, !tbaa !2446
  %1800 = icmp eq i64 %1781, 0
  %1801 = zext i1 %1800 to i8
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1801, i8* %1802, align 1, !tbaa !2447
  %1803 = lshr i64 %1781, 63
  %1804 = trunc i64 %1803 to i8
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1804, i8* %1805, align 1, !tbaa !2448
  %1806 = lshr i64 %1777, 63
  %1807 = lshr i64 %1778, 63
  %1808 = xor i64 %1803, %1806
  %1809 = xor i64 %1803, %1807
  %1810 = add nuw nsw i64 %1808, %1809
  %1811 = icmp eq i64 %1810, 2
  %1812 = zext i1 %1811 to i8
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1812, i8* %1813, align 1, !tbaa !2449
  %1814 = load i64, i64* %RBP
  %1815 = sub i64 %1814, 84
  %1816 = load i64, i64* %PC
  %1817 = add i64 %1816, 4
  store i64 %1817, i64* %PC
  %1818 = inttoptr i64 %1815 to i32*
  %1819 = load i32, i32* %1818
  %1820 = sext i32 %1819 to i64
  store i64 %1820, i64* %RCX, align 8, !tbaa !2451
  %1821 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1822 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1823 = load i64, i64* %RAX
  %1824 = load i64, i64* %RCX
  %1825 = mul i64 %1824, 8
  %1826 = add i64 %1825, %1823
  %1827 = load i64, i64* %PC
  %1828 = add i64 %1827, 5
  store i64 %1828, i64* %PC
  %1829 = bitcast i8* %1822 to double*
  %1830 = load double, double* %1829, align 1
  %1831 = getelementptr inbounds i8, i8* %1822, i64 8
  %1832 = bitcast i8* %1831 to i64*
  %1833 = load i64, i64* %1832, align 1
  %1834 = inttoptr i64 %1826 to double*
  %1835 = load double, double* %1834
  %1836 = fmul double %1830, %1835
  %1837 = bitcast i8* %1821 to double*
  store double %1836, double* %1837, align 1, !tbaa !2452
  %1838 = getelementptr inbounds i8, i8* %1821, i64 8
  %1839 = bitcast i8* %1838 to i64*
  store i64 %1833, i64* %1839, align 1, !tbaa !2452
  %1840 = load i64, i64* %RBP
  %1841 = add i64 %1840, 40
  %1842 = load i64, i64* %PC
  %1843 = add i64 %1842, 4
  store i64 %1843, i64* %PC
  %1844 = inttoptr i64 %1841 to i64*
  %1845 = load i64, i64* %1844
  store i64 %1845, i64* %RAX, align 8, !tbaa !2451
  %1846 = load i64, i64* %RBP
  %1847 = sub i64 %1846, 88
  %1848 = load i64, i64* %PC
  %1849 = add i64 %1848, 4
  store i64 %1849, i64* %PC
  %1850 = inttoptr i64 %1847 to i32*
  %1851 = load i32, i32* %1850
  %1852 = sext i32 %1851 to i64
  store i64 %1852, i64* %RCX, align 8, !tbaa !2451
  %1853 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1854 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1855 = load i64, i64* %RAX
  %1856 = load i64, i64* %RCX
  %1857 = mul i64 %1856, 8
  %1858 = add i64 %1857, %1855
  %1859 = load i64, i64* %PC
  %1860 = add i64 %1859, 5
  store i64 %1860, i64* %PC
  %1861 = bitcast i8* %1854 to double*
  %1862 = load double, double* %1861, align 1
  %1863 = getelementptr inbounds i8, i8* %1854, i64 8
  %1864 = bitcast i8* %1863 to i64*
  %1865 = load i64, i64* %1864, align 1
  %1866 = inttoptr i64 %1858 to double*
  %1867 = load double, double* %1866
  %1868 = fmul double %1862, %1867
  %1869 = bitcast i8* %1853 to double*
  store double %1868, double* %1869, align 1, !tbaa !2452
  %1870 = getelementptr inbounds i8, i8* %1853, i64 8
  %1871 = bitcast i8* %1870 to i64*
  store i64 %1865, i64* %1871, align 1, !tbaa !2452
  %1872 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1873 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1874 = bitcast %union.vec128_t* %XMM1 to i8*
  %1875 = load i64, i64* %PC
  %1876 = add i64 %1875, 4
  store i64 %1876, i64* %PC
  %1877 = bitcast i8* %1873 to double*
  %1878 = load double, double* %1877, align 1
  %1879 = getelementptr inbounds i8, i8* %1873, i64 8
  %1880 = bitcast i8* %1879 to i64*
  %1881 = load i64, i64* %1880, align 1
  %1882 = bitcast i8* %1874 to double*
  %1883 = load double, double* %1882, align 1
  %1884 = fadd double %1878, %1883
  %1885 = bitcast i8* %1872 to double*
  store double %1884, double* %1885, align 1, !tbaa !2452
  %1886 = getelementptr inbounds i8, i8* %1872, i64 8
  %1887 = bitcast i8* %1886 to i64*
  store i64 %1881, i64* %1887, align 1, !tbaa !2452
  %1888 = load i64, i64* %RBP
  %1889 = add i64 %1888, 32
  %1890 = load i64, i64* %PC
  %1891 = add i64 %1890, 4
  store i64 %1891, i64* %PC
  %1892 = inttoptr i64 %1889 to i64*
  %1893 = load i64, i64* %1892
  store i64 %1893, i64* %RAX, align 8, !tbaa !2451
  %1894 = load i64, i64* %RBP
  %1895 = sub i64 %1894, 84
  %1896 = load i64, i64* %PC
  %1897 = add i64 %1896, 4
  store i64 %1897, i64* %PC
  %1898 = inttoptr i64 %1895 to i32*
  %1899 = load i32, i32* %1898
  %1900 = sext i32 %1899 to i64
  store i64 %1900, i64* %RCX, align 8, !tbaa !2451
  %1901 = load i64, i64* %RAX
  %1902 = load i64, i64* %RCX
  %1903 = mul i64 %1902, 8
  %1904 = add i64 %1903, %1901
  %1905 = bitcast %union.vec128_t* %XMM0 to i8*
  %1906 = load i64, i64* %PC
  %1907 = add i64 %1906, 5
  store i64 %1907, i64* %PC
  %1908 = bitcast i8* %1905 to double*
  %1909 = load double, double* %1908, align 1
  %1910 = inttoptr i64 %1904 to double*
  store double %1909, double* %1910
  %1911 = load i64, i64* %RBP
  %1912 = sub i64 %1911, 88
  %1913 = load i64, i64* %PC
  %1914 = add i64 %1913, 3
  store i64 %1914, i64* %PC
  %1915 = inttoptr i64 %1912 to i32*
  %1916 = load i32, i32* %1915
  %1917 = zext i32 %1916 to i64
  store i64 %1917, i64* %RAX, align 8, !tbaa !2451
  %1918 = load i64, i64* %RAX
  %1919 = load i64, i64* %PC
  %1920 = add i64 %1919, 3
  store i64 %1920, i64* %PC
  %1921 = trunc i64 %1918 to i32
  %1922 = add i32 1, %1921
  %1923 = zext i32 %1922 to i64
  store i64 %1923, i64* %RAX, align 8, !tbaa !2451
  %1924 = icmp ult i32 %1922, %1921
  %1925 = icmp ult i32 %1922, 1
  %1926 = or i1 %1924, %1925
  %1927 = zext i1 %1926 to i8
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1927, i8* %1928, align 1, !tbaa !2428
  %1929 = and i32 %1922, 255
  %1930 = call i32 @llvm.ctpop.i32(i32 %1929) #16
  %1931 = trunc i32 %1930 to i8
  %1932 = and i8 %1931, 1
  %1933 = xor i8 %1932, 1
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1933, i8* %1934, align 1, !tbaa !2445
  %1935 = xor i64 1, %1918
  %1936 = trunc i64 %1935 to i32
  %1937 = xor i32 %1936, %1922
  %1938 = lshr i32 %1937, 4
  %1939 = trunc i32 %1938 to i8
  %1940 = and i8 %1939, 1
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1940, i8* %1941, align 1, !tbaa !2446
  %1942 = icmp eq i32 %1922, 0
  %1943 = zext i1 %1942 to i8
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1943, i8* %1944, align 1, !tbaa !2447
  %1945 = lshr i32 %1922, 31
  %1946 = trunc i32 %1945 to i8
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1946, i8* %1947, align 1, !tbaa !2448
  %1948 = lshr i32 %1921, 31
  %1949 = xor i32 %1945, %1948
  %1950 = add nuw nsw i32 %1949, %1945
  %1951 = icmp eq i32 %1950, 2
  %1952 = zext i1 %1951 to i8
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1952, i8* %1953, align 1, !tbaa !2449
  %1954 = load i64, i64* %RBP
  %1955 = sub i64 %1954, 88
  %1956 = load i32, i32* %EAX
  %1957 = zext i32 %1956 to i64
  %1958 = load i64, i64* %PC
  %1959 = add i64 %1958, 3
  store i64 %1959, i64* %PC
  %1960 = inttoptr i64 %1955 to i32*
  store i32 %1956, i32* %1960
  %1961 = load i64, i64* %PC
  %1962 = sub i64 %1961, 96
  %1963 = load i64, i64* %PC
  %1964 = add i64 %1963, 5
  store i64 %1964, i64* %PC
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1962, i64* %1965, align 8, !tbaa !2451
  br label %block_401133
}

; Function Attrs: noinline
define %struct.Memory* @sub_400760_polybench_timer_stop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400760:
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
  %18 = load i64, i64* %17, align 8, !tbaa !2451
  %19 = add i64 %18, -8
  %20 = inttoptr i64 %19 to i64*
  store i64 %14, i64* %20
  store i64 %19, i64* %17, align 8, !tbaa !2451
  %21 = load i64, i64* %RSP
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 3
  store i64 %23, i64* %PC
  store i64 %21, i64* %RBP, align 8, !tbaa !2451
  %24 = load i64, i64* %PC
  %25 = sub i64 %24, 20
  %26 = load i64, i64* %PC
  %27 = add i64 %26, 5
  %28 = load i64, i64* %PC
  %29 = add i64 %28, 5
  store i64 %29, i64* %PC
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %31 = load i64, i64* %30, align 8, !tbaa !2451
  %32 = add i64 %31, -8
  %33 = inttoptr i64 %32 to i64*
  store i64 %27, i64* %33
  store i64 %32, i64* %30, align 8, !tbaa !2451
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %25, i64* %34, align 8, !tbaa !2451
  %35 = load i64, i64* %PC
  %36 = call %struct.Memory* @sub_400750_rtclock_renamed_(%struct.State* %0, i64 %35, %struct.Memory* %2)
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
  %45 = load i64, i64* %44, align 8, !tbaa !2451
  %46 = add i64 %45, 8
  %47 = inttoptr i64 %45 to i64*
  %48 = load i64, i64* %47
  store i64 %48, i64* %RBP, align 8, !tbaa !2451
  store i64 %46, i64* %44, align 8, !tbaa !2451
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 1
  store i64 %50, i64* %PC
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %53 = load i64, i64* %52, align 8, !tbaa !2451
  %54 = inttoptr i64 %53 to i64*
  %55 = load i64, i64* %54
  store i64 %55, i64* %51, align 8, !tbaa !2451
  %56 = add i64 %53, 8
  store i64 %56, i64* %52, align 8, !tbaa !2451
  ret %struct.Memory* %36
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400690_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400690;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400690_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400690_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400660___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400660;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400660___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400660___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020c0_fprintf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020e0_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401490___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401490;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401490___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401490___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401420___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401420;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401420___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401420___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400880;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400880_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020e8___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020d8_free(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020b8_calloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020c8_exit(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602108_posix_memalign(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_flush_cache() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4006a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4006a0_polybench_flush_cache(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_stop() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400760;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400760_polybench_timer_stop(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_start() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400730;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400730_polybench_timer_start(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400520;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400520__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401494;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @11, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_401494__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_alloc_data() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4007c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @12, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4007c0_polybench_alloc_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_print() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400780;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @13, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400780_polybench_timer_print(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_prepare_instruments() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400720;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @14, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400720_polybench_prepare_instruments(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
  call void @callback_sub_401420___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_401490___libc_csu_fini()
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
!2452 = !{!2453, !2453, i64 0}
!2453 = !{!"double", !2430, i64 0}
!2454 = !{!2455, !2455, i64 0}
!2455 = !{!"float", !2430, i64 0}
!2456 = !{!2444, !2444, i64 0}
