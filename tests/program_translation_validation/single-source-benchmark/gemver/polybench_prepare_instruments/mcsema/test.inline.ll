; ModuleID = '../binary/test.mcsema.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400550__init_type = type <{ [23 x i8] }>
%seg_400570__plt_type = type <{ [112 x i8] }>
%seg_4005e0__text_type = type <{ [3810 x i8] }>
%seg_4014c4__fini_type = type <{ [9 x i8] }>
%seg_4014d0__rodata_type = type <{ [96 x i8], [7 x i8], [51 x i8], [8 x i8], [68 x i8] }>
%seg_4015b8__eh_frame_hdr_type = type <{ [164 x i8] }>
%seg_401660__eh_frame_type = type <{ [632 x i8] }>
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
@seg_400550__init = internal constant %seg_400550__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\9D\1A \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400570__plt = internal constant %seg_400570__plt_type <{ [112 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\92\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\8A\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\82\1A \00\00\00\00\00\00\00\00\00\00\00\FF%z\1A \00\00\00\00\00\00\00\00\00\00\00\FF%r\1A \00\00\00\00\00\00\00\00\00\00\00\FF%j\1A \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_4005e0__text = internal constant %seg_4005e0__text_type <{ [3810 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\C0\14@\00H\C7\C1P\14@\00H\C7\C7\B0\08@\00\FF\15\E6\19 \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8X `\00H=X `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFX `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEX `\00UH\81\EEX `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFX `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\D1\19 \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\BF\19 \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \B8\08\00\00\00\89\C6\C7E\FC\00\01@\00Hc}\FC\E8\B1\FE\FF\FF\0FW\C0H\89E\F0\F2\0F\11E\E0\C7E\EC\00\00\00\00\8BE\EC;E\FC\0F\8D%\00\00\00H\8BE\F0HcM\EC\F2\0F\10\04\C8\F2\0FXE\E0\F2\0F\11E\E0\8BE\EC\83\C0\01\89E\EC\E9\CF\FF\FF\FFH\8BE\F0H\89\C7\E8A\FE\FF\FFH\83\C4 ]\C3ff.\0F\1F\84\00\00\00\00\00UH\89\E5\E8w\FF\FF\FF]\C3\0F\1FD\00\00UH\89\E5\E8\E7\FF\FF\FF\E8\12\00\00\00\F2\0F\11\04%\90 `\00]\C3\0F\1F\80\00\00\00\00UH\89\E5\0FW\C0]\C3\0F\1F\80\00\00\00\00UH\89\E5\E8\E7\FF\FF\FF\F2\0F\11\04%\88 `\00]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC\10H\BF0\15@\00\00\00\00\00\F2\0F\10\04%\88 `\00\F2\0F\5C\04%\90 `\00\B0\01\E8\B5\FD\FF\FF\89E\FCH\83\C4\10]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC H\89}\F8\89u\F4H\8B}\F8H\89}\E8Hc}\F4H\0F\AF}\E8H\89}\E8H\8B}\E8\E8\13\00\00\00H\89E\E0H\8BE\E0H\83\C4 ]\C3\0F\1FD\00\00UH\89\E5H\83\EC H\8DE\F0\B9 \00\00\00\89\CEH\89}\F8H\C7E\F0\00\00\00\00H\8BU\F8H\89\C7\E8u\FD\FF\FF\89E\ECH\83}\F0\00\0F\84\0A\00\00\00\83}\EC\00\0F\84&\00\00\00H\BE7\15@\00\00\00\00\00H\8B<%` `\00\B0\00\E8$\FD\FF\FF\BF\01\00\00\00\89E\E8\E8'\FD\FF\FFH\8BE\F0H\83\C4 ]\C3ffff.\0F\1F\84\00\00\00\00\00UH\89\E5AWAVSH\81\EC\B8\00\00\00\B8\00$\F4\00\89\C1\B8\08\00\00\00\C7E\E4\00\00\00\00\89}\E0H\89u\D8\C7E\D4\A0\0F\00\00H\89\CF\89\C6\E8\05\FF\FF\FF\BE\00$\F4\00\89\F7\BE\08\00\00\00H\89E\B8\E8\F0\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\B0\E8\DB\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\A8\E8\C6\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\A0\E8\B1\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\98\E8\9C\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\90\E8\87\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\88\E8r\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\80\E8]\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89\85x\FF\FF\FF\E8E\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89\85p\FF\FF\FF\E8-\FE\FF\FFH\8Du\C8H\8DU\C0H\89\85h\FF\FF\FF\8B}\D4H\8BM\B8L\8BE\A8L\8BM\A0H\8BE\98L\8BU\90L\8B]\88H\8B]\80L\8B\B5p\FF\FF\FFL\8B\BDh\FF\FF\FFH\89\04$L\89T$\08L\89\5C$\10H\89\5C$\18L\89t$ L\89|$(\E8\8F\01\00\00\8B}\D4\F2\0F\10E\C8\F2\0F\10M\C0H\8Bu\B8H\8BU\B0H\8BM\A8L\8BE\A0L\8BM\98H\8BE\90L\8BU\88L\8B\9Dx\FF\FF\FFH\8B\9Dp\FF\FF\FFL\8B\B5h\FF\FF\FFH\89\04$L\89T$\08L\89\5C$\10H\89\5C$\18L\89t$ \E8$\03\00\00\8B}\D4\F2\0F\10E\C8\F2\0F\10M\C0H\8Bu\B8H\8BU\B0H\8BM\A8L\8BE\A0L\8BM\98H\8BE\90L\8BU\80L\8B\9Dx\FF\FF\FFH\8B\9Dp\FF\FF\FFL\8B\B5h\FF\FF\FFH\89\04$L\89T$\08L\89\5C$\10H\89\5C$\18L\89t$ \E8Y\05\00\00\8B}\D4H\8Bu\88H\8BU\80\E8\D9\07\00\00\83\F8\00\0F\85\0C\00\00\00\C7E\E4\01\00\00\00\E9\A0\00\00\00\8B}\D4H\8Bu\80\E8\A8\08\00\00H\8Bu\B8H\89\F7\E8l\FA\FF\FFH\8Bu\B0H\89\F7\E8`\FA\FF\FFH\8Bu\A8H\89\F7\E8T\FA\FF\FFH\8Bu\A0H\89\F7\E8H\FA\FF\FFH\8Bu\98H\89\F7\E8<\FA\FF\FFH\8Bu\90H\89\F7\E80\FA\FF\FFH\8Bu\88H\89\F7\E8$\FA\FF\FFH\8Bu\80H\89\F7\E8\18\FA\FF\FFH\8B\B5x\FF\FF\FFH\89\F7\E8\09\FA\FF\FFH\8B\B5p\FF\FF\FFH\89\F7\E8\FA\F9\FF\FFH\8B\B5h\FF\FF\FFH\89\F7\E8\EB\F9\FF\FF\C7E\E4\00\00\00\00\8BE\E4H\81\C4\B8\00\00\00[A^A_]\C3\0F\1F\00UH\89\E5AWAVSH\8BE8L\8BU0L\8B](H\8B] L\8Bu\18L\8B}\10\F2\0F\10\05\FF\08\00\00\F2\0F\10\0D\FF\08\00\00\89}\E4H\89u\D8H\89U\D0H\89M\C8L\89E\C0L\89M\B8L\89}\B0L\89u\A8H\89]\A0L\89]\98L\89U\90H\89E\88H\8BE\D8\F2\0F\11\08H\8BE\D0\F2\0F\11\00\C7E\84\00\00\00\00\8BE\84;E\E4\0F\8DZ\01\00\00\0FW\C0\F2\0F\10\0D\AA\08\00\00\F2\0F\10\15\AA\08\00\00\F2\0F\10\1D\AA\08\00\00\F2\0F\10%\AA\08\00\00\F2\0F\10-\AA\08\00\00\F2\0F*u\84H\8BE\C0HcM\84\F2\0F\114\C8\8BU\84\83\C2\01\89\D0\99\F7}\E4\F2\0F*\F0\F2\0F^\F5H\8BM\B0Hcu\84\F2\0F\114\F1\8BE\84\83\C0\01\99\F7}\E4\F2\0F*\E8\F2\0F^\ECH\8BM\B8Hcu\84\F2\0F\11,\F1\8BE\84\83\C0\01\99\F7}\E4\F2\0F*\E0\F2\0F^\E3H\8BM\A8Hcu\84\F2\0F\11$\F1\8BE\84\83\C0\01\99\F7}\E4\F2\0F*\D8\F2\0F^\DAH\8BM\90Hcu\84\F2\0F\11\1C\F1\8BE\84\83\C0\01\99\F7}\E4\F2\0F*\D0\F2\0F^\D1H\8BM\88Hcu\84\F2\0F\11\14\F1H\8BM\A0Hcu\84\F2\0F\11\04\F1H\8BM\98Hcu\84\F2\0F\11\04\F1\C7E\80\00\00\00\00\8BE\80;E\E4\0F\8D@\00\00\00\F2\0F*E\84\F2\0F*M\80\F2\0FY\C1\F2\0F*M\E4\F2\0F^\C1H\8BE\C8HcM\84Hi\C9\00}\00\00H\01\C8HcM\80\F2\0F\11\04\C8\8BE\80\83\C0\01\89E\80\E9\B4\FF\FF\FF\E9\00\00\00\00\8BE\84\83\C0\01\89E\84\E9\9A\FE\FF\FF[A^A_]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5AVSH\8BE0L\8BU(L\8B] H\8B]\18L\8Bu\10\89}\EC\F2\0F\11E\E0\F2\0F\11M\D8H\89u\D0H\89U\C8H\89M\C0L\89E\B8L\89M\B0L\89u\A8H\89]\A0L\89]\98L\89U\90H\89E\88\C7E\84\00\00\00\00\8BE\84;E\EC\0F\8D\A6\00\00\00\C7E\80\00\00\00\00\8BE\80;E\EC\0F\8D\80\00\00\00H\8BE\D0HcM\84Hi\C9\00}\00\00H\01\C8HcM\80\F2\0F\10\04\C8H\8BE\C0HcM\84\F2\0F\10\0C\C8H\8BE\B8HcM\80\F2\0FY\0C\C8\F2\0FX\C1H\8BE\B0HcM\84\F2\0F\10\0C\C8H\8BE\A8HcM\80\F2\0FY\0C\C8\F2\0FX\C1H\8BE\C8HcM\84Hi\C9\00}\00\00H\01\C8HcM\80\F2\0F\11\04\C8\8BE\80\83\C0\01\89E\80\E9t\FF\FF\FF\E9\00\00\00\00\8BE\84\83\C0\01\89E\84\E9N\FF\FF\FF\C7E\84\00\00\00\00\8BE\84;E\EC\0F\8D\8F\00\00\00\0FW\C0H\8BE\98HcM\84\F2\0F\11\04\C8\C7E\80\00\00\00\00\8BE\80;E\EC\0F\8DY\00\00\00H\8BE\98HcM\84\F2\0F\10\04\C8\F2\0F\10M\D8H\8BE\C8HcM\80Hi\C9\00}\00\00H\01\C8HcM\84\F2\0FY\0C\C8H\8BE\90HcM\80\F2\0FY\0C\C8\F2\0FX\C1H\8BE\98HcM\84\F2\0F\11\04\C8\8BE\80\83\C0\01\89E\80\E9\9B\FF\FF\FF\E9\00\00\00\00\8BE\84\83\C0\01\89E\84\E9e\FF\FF\FF\C7E\84\00\00\00\00\8BE\84;E\EC\0F\8D5\00\00\00H\8BE\98HcM\84\F2\0F\10\04\C8H\8BE\88HcM\84\F2\0FX\04\C8H\8BE\98HcM\84\F2\0F\11\04\C8\8BE\84\83\C0\01\89E\84\E9\BF\FF\FF\FF\C7E\84\00\00\00\00\8BE\84;E\EC\0F\8D\7F\00\00\00\C7E\80\00\00\00\00\8BE\80;E\EC\0F\8DY\00\00\00H\8BE\A0HcM\84\F2\0F\10\04\C8\F2\0F\10M\E0H\8BE\C8HcM\84Hi\C9\00}\00\00H\01\C8HcM\80\F2\0FY\0C\C8H\8BE\98HcM\80\F2\0FY\0C\C8\F2\0FX\C1H\8BE\A0HcM\84\F2\0F\11\04\C8\8BE\80\83\C0\01\89E\80\E9\9B\FF\FF\FF\E9\00\00\00\00\8BE\84\83\C0\01\89E\84\E9u\FF\FF\FF[A^]\C3f\0F\1FD\00\00UH\89\E5AVSH\8BE0L\8BU(L\8B] H\8B]\18L\8Bu\10\89}\EC\F2\0F\11E\E0\F2\0F\11M\D8H\89u\D0H\89U\C8H\89M\C0L\89E\B8L\89M\B0L\89u\A8H\89]\A0L\89]\98L\89U\90H\89E\88\C7E\84\00\00\00\00\8BE\84;E\EC\0F\8D\A6\00\00\00\C7E\80\00\00\00\00\8BE\80;E\EC\0F\8D\80\00\00\00H\8BE\D0HcM\84Hi\C9\00}\00\00H\01\C8HcM\80\F2\0F\10\04\C8H\8BE\C0HcM\84\F2\0F\10\0C\C8H\8BE\B8HcM\80\F2\0FY\0C\C8\F2\0FX\C1H\8BE\B0HcM\84\F2\0F\10\0C\C8H\8BE\A8HcM\80\F2\0FY\0C\C8\F2\0FX\C1H\8BE\C8HcM\84Hi\C9\00}\00\00H\01\C8HcM\80\F2\0F\11\04\C8\8BE\80\83\C0\01\89E\80\E9t\FF\FF\FF\E9\00\00\00\00\8BE\84\83\C0\01\89E\84\E9N\FF\FF\FF\C7E\84\00\00\00\00\8BE\84;E\EC\0F\8D\8F\00\00\00\0FW\C0H\8BE\98HcM\84\F2\0F\11\04\C8\C7E\80\00\00\00\00\8BE\80;E\EC\0F\8DY\00\00\00H\8BE\98HcM\84\F2\0F\10\04\C8\F2\0F\10M\D8H\8BE\C8HcM\80Hi\C9\00}\00\00H\01\C8HcM\84\F2\0FY\0C\C8H\8BE\90HcM\80\F2\0FY\0C\C8\F2\0FX\C1H\8BE\98HcM\84\F2\0F\11\04\C8\8BE\80\83\C0\01\89E\80\E9\9B\FF\FF\FF\E9\00\00\00\00\8BE\84\83\C0\01\89E\84\E9e\FF\FF\FF\C7E\84\00\00\00\00\8BE\84;E\EC\0F\8D5\00\00\00H\8BE\98HcM\84\F2\0F\10\04\C8H\8BE\88HcM\84\F2\0FX\04\C8H\8BE\98HcM\84\F2\0F\11\04\C8\8BE\84\83\C0\01\89E\84\E9\BF\FF\FF\FF\C7E\84\00\00\00\00\8BE\84;E\EC\0F\8D\7F\00\00\00\C7E\80\00\00\00\00\8BE\80;E\EC\0F\8DY\00\00\00H\8BE\A0HcM\84\F2\0F\10\04\C8\F2\0F\10M\E0H\8BE\C8HcM\84Hi\C9\00}\00\00H\01\C8HcM\80\F2\0FY\0C\C8H\8BE\98HcM\80\F2\0FY\0C\C8\F2\0FX\C1H\8BE\A0HcM\84\F2\0F\11\04\C8\8BE\80\83\C0\01\89E\80\E9\9B\FF\FF\FF\E9\00\00\00\00\8BE\84\83\C0\01\89E\84\E9u\FF\FF\FF[A^]\C3f\0F\1FD\00\00UH\89\E5H\83\ECP\F2\0F\10\05@\02\00\00\89}\F8H\89u\F0H\89U\E8\F2\0F\11E\D8\C7E\E4\00\00\00\00\8BE\E4;E\F8\0F\8D\9E\00\00\00H\8BE\F0HcM\E4\F2\0F\10\04\C8\F2\0F\11E\D0H\8BE\E8HcM\E4\F2\0F\10\04\C8\F2\0F\11E\C8\F2\0F\10E\D0\F2\0F\5CE\C8\0F(\0D\F8\01\00\00f\0F\DB\C1\F2\0F\11E\C0\F2\0F\10E\C0f\0F.E\D8\0F\86=\00\00\00H\BEr\15@\00\00\00\00\00H\8B<%` `\00\8BU\E4\F2\0F\10E\D0\8BM\E4\F2\0F\10M\C8\F2\0F\10U\D8\B0\03\E8A\F2\FF\FF\C7E\FC\00\00\00\00\89E\BC\E9\1A\00\00\00\E9\00\00\00\00\8BE\E4\83\C0\01\89E\E4\E9V\FF\FF\FF\C7E\FC\01\00\00\00\8BE\FCH\83\C4P]\C3ffffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \89}\FCH\89u\F0\C7E\EC\00\00\00\00\8BE\EC;E\FC\0F\8Dx\00\00\00H\BEj\15@\00\00\00\00\00H\8B<%` `\00H\8BE\F0HcM\EC\F2\0F\10\04\C8\B0\01\E8\B8\F1\FF\FF\BA\14\00\00\00D\8BE\EC\89E\E8D\89\C0\89U\E4\99D\8BE\E4A\F7\F8\83\FA\00\0F\85\1C\00\00\00H\BE5\15@\00\00\00\00\00H\8B<%` `\00\B0\00\E8|\F1\FF\FF\89E\E0\E9\00\00\00\00\8BE\EC\83\C0\01\89E\EC\E9|\FF\FF\FFH\83\C4 ]\C3AWAVI\89\D7AUATL\8D%\8E\09 \00UH\8D-\8E\09 \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\CF\F0\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_4014c4__fini = internal constant %seg_4014c4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_4014d0__rodata = internal constant %seg_4014d0__rodata_type <{ [96 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\80\0C\C8@\00\00\00\00\80A\E5@\00\00\00\00\00\00\22@\00\00\00\00\00\00 @\00\00\00\00\00\00\18@\00\00\00\00\00\00\10@\00\00\00\00\00\00\00@\F1h\E3\88\B5\F8\E4>\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [7 x i8] c"%0.6f\0A\00", [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", [8 x i8] c"%0.2lf \00", [68 x i8] c"A[%d] = %lf and B[%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00" }>
@seg_4015b8__eh_frame_hdr = internal constant %seg_4015b8__eh_frame_hdr_type <{ [164 x i8] c"\01\1B\03;\A4\00\00\00\13\00\00\00\B8\EF\FF\FF\00\01\00\00(\F0\FF\FF\C0\00\00\00X\F0\FF\FF\EC\00\00\00\18\F1\FF\FF(\01\00\00\98\F1\FF\FFD\01\00\00\A8\F1\FF\FF`\01\00\00\C8\F1\FF\FF|\01\00\00\D8\F1\FF\FF\98\01\00\00\F8\F1\FF\FF\B4\01\00\008\F2\FF\FF\D0\01\00\00x\F2\FF\FF\EC\01\00\00\F8\F2\FF\FF\08\02\00\00\F8\F5\FF\FF(\02\00\00\E8\F7\FF\FFH\02\00\00x\FA\FF\FFh\02\00\00\08\FD\FF\FF\88\02\00\00\F8\FD\FF\FF\A4\02\00\00\98\FE\FF\FF\C0\02\00\00\08\FF\FF\FF\08\03\00\00" }>
@seg_401660__eh_frame = internal constant %seg_401660__eh_frame_type <{ [632 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00`\EF\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00d\EF\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00\B0\EE\FF\FFp\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\E8\EF\FF\FFu\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00L\F0\FF\FF\0B\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\90\00\00\00@\F0\FF\FF\19\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\AC\00\00\00D\F0\FF\FF\09\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C8\00\00\008\F0\FF\FF\14\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\E4\00\00\00<\F0\FF\FF4\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\00\01\00\00`\F0\FF\FF;\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\1C\01\00\00\84\F0\FF\FFs\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\008\01\00\00\E8\F0\FF\FF\FD\02\00\00\00A\0E\10\86\02C\0D\06L\83\05\8E\04\8F\03\1C\00\00\00X\01\00\00\C8\F3\FF\FF\E4\01\00\00\00A\0E\10\86\02C\0D\06E\83\05\8E\04\8F\03\1C\00\00\00x\01\00\00\98\F5\FF\FF\8A\02\00\00\00A\0E\10\86\02C\0D\06C\83\04\8E\03\00\00\1C\00\00\00\98\01\00\00\08\F8\FF\FF\8A\02\00\00\00A\0E\10\86\02C\0D\06C\83\04\8E\03\00\00\18\00\00\00\B8\01\00\00x\FA\FF\FF\E1\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\D4\01\00\00L\FB\FF\FF\A0\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00D\00\00\00\F0\01\00\00\D0\FB\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\008\02\00\00\F8\FB\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_4006c0_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400690___do_global_dtors_aux to i64) }>
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
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4006c0_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400690___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4014c0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401450___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_alloc_data_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_flush_cache_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_print_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_stop_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_prepare_instruments_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_start_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
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
declare extern_weak x86_64_sysvcc i64 @exit(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @free(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @posix_memalign(i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_400620_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  store i64 6299736, i64* %RAX, align 8, !tbaa !2428
  %33 = load i64, i64* %RAX
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 6
  store i64 %35, i64* %PC
  %36 = sub i64 %33, 6299736
  %37 = icmp ult i64 %33, 6299736
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
  %47 = xor i64 6299736, %33
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
  br i1 %80, label %block_400648, label %block_400631

block_40063b:                                     ; preds = %block_400631
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
  %89 = add i64 %88, 5
  store i64 %89, i64* %PC
  store i64 6299736, i64* %RDI, align 8, !tbaa !2428
  %90 = load i64, i64* %RAX
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 2
  store i64 %92, i64* %PC
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %90, i64* %93, align 8, !tbaa !2428
  %94 = load i64, i64* %PC
  switch i64 %94, label %162 [
    i64 4195914, label %block_40064a
    i64 4195907, label %block_400643
  ]

block_400631:                                     ; preds = %block_400620
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 5
  store i64 %96, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %97 = load i64, i64* %RAX
  %98 = load i64, i64* %RAX
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 3
  store i64 %100, i64* %PC
  %101 = and i64 %98, %97
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %102, align 1, !tbaa !2432
  %103 = trunc i64 %101 to i32
  %104 = and i32 %103, 255
  %105 = call i32 @llvm.ctpop.i32(i32 %104) #16
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = xor i8 %107, 1
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %108, i8* %109, align 1, !tbaa !2446
  %110 = icmp eq i64 %101, 0
  %111 = zext i1 %110 to i8
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %111, i8* %112, align 1, !tbaa !2448
  %113 = lshr i64 %101, 63
  %114 = trunc i64 %113 to i8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %114, i8* %115, align 1, !tbaa !2449
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %116, align 1, !tbaa !2450
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %117, align 1, !tbaa !2447
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 15
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 2
  %122 = load i64, i64* %PC
  %123 = add i64 %122, 2
  store i64 %123, i64* %PC
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %125 = load i8, i8* %124, align 1, !tbaa !2448
  store i8 %125, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %127 = icmp ne i8 %125, 0
  %128 = select i1 %127, i64 %119, i64 %121
  store i64 %128, i64* %126, align 8, !tbaa !2428
  %129 = load i8, i8* %BRANCH_TAKEN
  %130 = icmp eq i8 %129, 1
  br i1 %130, label %block_400648, label %block_40063b

block_400648:                                     ; preds = %block_400643, %block_400631, %block_400620
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400620 ], [ %2, %block_400631 ], [ %2, %block_400643 ]
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 1
  store i64 %132, i64* %PC
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %134 = load i64, i64* %133, align 8, !tbaa !2428
  %135 = add i64 %134, 8
  %136 = inttoptr i64 %134 to i64*
  %137 = load i64, i64* %136
  store i64 %137, i64* %RBP, align 8, !tbaa !2428
  store i64 %135, i64* %133, align 8, !tbaa !2428
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 1
  store i64 %139, i64* %PC
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %142 = load i64, i64* %141, align 8, !tbaa !2428
  %143 = inttoptr i64 %142 to i64*
  %144 = load i64, i64* %143
  store i64 %144, i64* %140, align 8, !tbaa !2428
  %145 = add i64 %142, 8
  store i64 %145, i64* %141, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_40064a:                                     ; preds = %block_40063b
  %146 = load i64, i64* %RAX
  %147 = load i64, i64* %RAX
  %148 = add i64 %147, %146
  %149 = load i16, i16* %AX
  %150 = zext i16 %149 to i64
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 6
  store i64 %152, i64* %PC
  %153 = load i64, i64* %PC
  %154 = tail call %struct.Memory* @sub_400650_register_tm_clones(%struct.State* %0, i64 %153, %struct.Memory* %2)
  ret %struct.Memory* %154

block_400643:                                     ; preds = %block_40063b
  %155 = load i64, i64* %RAX
  %156 = load i64, i64* %RAX
  %157 = add i64 %156, %155
  %158 = load i32, i32* %EAX
  %159 = zext i32 %158 to i64
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 5
  store i64 %161, i64* %PC
  br label %block_400648

; <label>:162:                                    ; preds = %block_40063b
  %163 = load i64, i64* %PC
  %164 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %163, %struct.Memory* %2)
  ret %struct.Memory* %164
}

; Function Attrs: noinline
define %struct.Memory* @sub_400550__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  br i1 %80, label %block_400562, label %block_400560

block_400560:                                     ; preds = %block_400550
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
  br label %block_400562

block_400562:                                     ; preds = %block_400560, %block_400550
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400550 ], [ %92, %block_400560 ]
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
define %struct.Memory* @sub_400750_polybench_prepare_instruments(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %34 = call %struct.Memory* @sub_4006d0_polybench_flush_cache(%struct.State* %0, i64 %33, %struct.Memory* %2)
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
define %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4007f0:
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
  %153 = call %struct.Memory* @sub_400830_xmalloc(%struct.State* %0, i64 %152, %struct.Memory* %2)
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
define %struct.Memory* @sub_4013b0_print_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4013b0:
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
  %49 = load i64, i64* %48, align 8, !tbaa !2428
  %50 = add i64 %49, -8
  %51 = inttoptr i64 %50 to i64*
  store i64 %45, i64* %51
  store i64 %50, i64* %48, align 8, !tbaa !2428
  %52 = load i64, i64* %RSP
  %53 = load i64, i64* %PC
  %54 = add i64 %53, 3
  store i64 %54, i64* %PC
  store i64 %52, i64* %RBP, align 8, !tbaa !2428
  %55 = load i64, i64* %RSP
  %56 = load i64, i64* %PC
  %57 = add i64 %56, 4
  store i64 %57, i64* %PC
  %58 = sub i64 %55, 32
  store i64 %58, i64* %RSP, align 8, !tbaa !2428
  %59 = icmp ult i64 %55, 32
  %60 = zext i1 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %60, i8* %61, align 1, !tbaa !2432
  %62 = trunc i64 %58 to i32
  %63 = and i32 %62, 255
  %64 = call i32 @llvm.ctpop.i32(i32 %63) #16
  %65 = trunc i32 %64 to i8
  %66 = and i8 %65, 1
  %67 = xor i8 %66, 1
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %67, i8* %68, align 1, !tbaa !2446
  %69 = xor i64 32, %55
  %70 = xor i64 %69, %58
  %71 = lshr i64 %70, 4
  %72 = trunc i64 %71 to i8
  %73 = and i8 %72, 1
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %73, i8* %74, align 1, !tbaa !2447
  %75 = icmp eq i64 %58, 0
  %76 = zext i1 %75 to i8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %76, i8* %77, align 1, !tbaa !2448
  %78 = lshr i64 %58, 63
  %79 = trunc i64 %78 to i8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %79, i8* %80, align 1, !tbaa !2449
  %81 = lshr i64 %55, 63
  %82 = xor i64 %78, %81
  %83 = add nuw nsw i64 %82, %81
  %84 = icmp eq i64 %83, 2
  %85 = zext i1 %84 to i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %85, i8* %86, align 1, !tbaa !2450
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
  br label %block_4013c6

block_40141b:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %105 = load i64, i64* %PC
  %106 = add i64 %105, 10
  store i64 %106, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 101), i64* %RSI, align 8, !tbaa !2428
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 8
  store i64 %108, i64* %PC
  %109 = load i64, i64* @stderr
  store i64 %109, i64* %RDI, align 8, !tbaa !2428
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 2
  store i64 %111, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %112 = load i64, i64* %PC
  %113 = sub i64 %112, 3711
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 5
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 5
  store i64 %117, i64* %PC
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %119 = load i64, i64* %118, align 8, !tbaa !2428
  %120 = add i64 %119, -8
  %121 = inttoptr i64 %120 to i64*
  store i64 %115, i64* %121
  store i64 %120, i64* %118, align 8, !tbaa !2428
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %113, i64* %122, align 8, !tbaa !2428
  %123 = load i64, i64* %PC
  %124 = call %struct.Memory* @ext_4005b0_fprintf(%struct.State* %0, i64 %123, %struct.Memory* %318)
  %125 = load i64, i64* %RBP
  %126 = sub i64 %125, 32
  %127 = load i32, i32* %EAX
  %128 = zext i32 %127 to i64
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 3
  store i64 %130, i64* %PC
  %131 = inttoptr i64 %126 to i32*
  store i32 %127, i32* %131
  br label %block_401437

block_401437:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_40141b
  %MEMORY.0 = phi %struct.Memory* [ %318, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %124, %block_40141b ]
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 5
  %134 = load i64, i64* %PC
  %135 = add i64 %134, 5
  store i64 %135, i64* %PC
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %133, i64* %136, align 8, !tbaa !2428
  %137 = load i64, i64* %RBP
  %138 = sub i64 %137, 20
  %139 = load i64, i64* %PC
  %140 = add i64 %139, 3
  store i64 %140, i64* %PC
  %141 = inttoptr i64 %138 to i32*
  %142 = load i32, i32* %141
  %143 = zext i32 %142 to i64
  store i64 %143, i64* %RAX, align 8, !tbaa !2428
  %144 = load i64, i64* %RAX
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 3
  store i64 %146, i64* %PC
  %147 = trunc i64 %144 to i32
  %148 = add i32 1, %147
  %149 = zext i32 %148 to i64
  store i64 %149, i64* %RAX, align 8, !tbaa !2428
  %150 = icmp ult i32 %148, %147
  %151 = icmp ult i32 %148, 1
  %152 = or i1 %150, %151
  %153 = zext i1 %152 to i8
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %153, i8* %154, align 1, !tbaa !2432
  %155 = and i32 %148, 255
  %156 = call i32 @llvm.ctpop.i32(i32 %155) #16
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %159, i8* %160, align 1, !tbaa !2446
  %161 = xor i64 1, %144
  %162 = trunc i64 %161 to i32
  %163 = xor i32 %162, %148
  %164 = lshr i32 %163, 4
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %166, i8* %167, align 1, !tbaa !2447
  %168 = icmp eq i32 %148, 0
  %169 = zext i1 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %169, i8* %170, align 1, !tbaa !2448
  %171 = lshr i32 %148, 31
  %172 = trunc i32 %171 to i8
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %172, i8* %173, align 1, !tbaa !2449
  %174 = lshr i32 %147, 31
  %175 = xor i32 %171, %174
  %176 = add nuw nsw i32 %175, %171
  %177 = icmp eq i32 %176, 2
  %178 = zext i1 %177 to i8
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %178, i8* %179, align 1, !tbaa !2450
  %180 = load i64, i64* %RBP
  %181 = sub i64 %180, 20
  %182 = load i32, i32* %EAX
  %183 = zext i32 %182 to i64
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 3
  store i64 %185, i64* %PC
  %186 = inttoptr i64 %181 to i32*
  store i32 %182, i32* %186
  %187 = load i64, i64* %PC
  %188 = sub i64 %187, 127
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 5
  store i64 %190, i64* %PC
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %188, i64* %191, align 8, !tbaa !2428
  br label %block_4013c6

block_4013d2:                                     ; preds = %block_4013c6
  %192 = load i64, i64* %PC
  %193 = add i64 %192, 10
  store i64 %193, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 154), i64* %RSI, align 8, !tbaa !2428
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 8
  store i64 %195, i64* %PC
  %196 = load i64, i64* @stderr
  store i64 %196, i64* %RDI, align 8, !tbaa !2428
  %197 = load i64, i64* %RBP
  %198 = sub i64 %197, 16
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 4
  store i64 %200, i64* %PC
  %201 = inttoptr i64 %198 to i64*
  %202 = load i64, i64* %201
  store i64 %202, i64* %RAX, align 8, !tbaa !2428
  %203 = load i64, i64* %RBP
  %204 = sub i64 %203, 20
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 4
  store i64 %206, i64* %PC
  %207 = inttoptr i64 %204 to i32*
  %208 = load i32, i32* %207
  %209 = sext i32 %208 to i64
  store i64 %209, i64* %RCX, align 8, !tbaa !2428
  %210 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %211 = load i64, i64* %RAX
  %212 = load i64, i64* %RCX
  %213 = mul i64 %212, 8
  %214 = add i64 %213, %211
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 5
  store i64 %216, i64* %PC
  %217 = inttoptr i64 %214 to double*
  %218 = load double, double* %217
  %219 = bitcast i8* %210 to double*
  store double %218, double* %219, align 1, !tbaa !2452
  %220 = getelementptr inbounds i8, i8* %210, i64 8
  %221 = bitcast i8* %220 to double*
  store double 0.000000e+00, double* %221, align 1, !tbaa !2452
  %222 = load i64, i64* %PC
  %223 = add i64 %222, 2
  store i64 %223, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %224 = load i64, i64* %PC
  %225 = sub i64 %224, 3651
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
  %236 = call %struct.Memory* @ext_4005b0_fprintf(%struct.State* %0, i64 %235, %struct.Memory* %MEMORY.1)
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 5
  store i64 %238, i64* %PC
  store i64 20, i64* %RDX, align 8, !tbaa !2428
  %239 = bitcast i32* %R8D to i64*
  %240 = load i64, i64* %RBP
  %241 = sub i64 %240, 20
  %242 = load i64, i64* %PC
  %243 = add i64 %242, 4
  store i64 %243, i64* %PC
  %244 = inttoptr i64 %241 to i32*
  %245 = load i32, i32* %244
  %246 = zext i32 %245 to i64
  store i64 %246, i64* %239, align 8, !tbaa !2428
  %247 = load i64, i64* %RBP
  %248 = sub i64 %247, 24
  %249 = load i32, i32* %EAX
  %250 = zext i32 %249 to i64
  %251 = load i64, i64* %PC
  %252 = add i64 %251, 3
  store i64 %252, i64* %PC
  %253 = inttoptr i64 %248 to i32*
  store i32 %249, i32* %253
  %254 = load i32, i32* %R8D
  %255 = zext i32 %254 to i64
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 3
  store i64 %257, i64* %PC
  %258 = and i64 %255, 4294967295
  store i64 %258, i64* %RAX, align 8, !tbaa !2428
  %259 = load i64, i64* %RBP
  %260 = sub i64 %259, 28
  %261 = load i32, i32* %EDX
  %262 = zext i32 %261 to i64
  %263 = load i64, i64* %PC
  %264 = add i64 %263, 3
  store i64 %264, i64* %PC
  %265 = inttoptr i64 %260 to i32*
  store i32 %261, i32* %265
  %266 = load i64, i64* %PC
  %267 = add i64 %266, 1
  store i64 %267, i64* %PC
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %270 = bitcast %union.anon* %269 to i32*
  %271 = load i32, i32* %270, align 8, !tbaa !2454
  %272 = sext i32 %271 to i64
  %273 = lshr i64 %272, 32
  store i64 %273, i64* %268, align 8, !tbaa !2428
  %274 = bitcast i32* %R8D to i64*
  %275 = load i64, i64* %RBP
  %276 = sub i64 %275, 28
  %277 = load i64, i64* %PC
  %278 = add i64 %277, 4
  store i64 %278, i64* %PC
  %279 = inttoptr i64 %276 to i32*
  %280 = load i32, i32* %279
  %281 = zext i32 %280 to i64
  store i64 %281, i64* %274, align 8, !tbaa !2428
  %282 = load i32, i32* %R8D
  %283 = zext i32 %282 to i64
  %284 = load i64, i64* %PC
  %285 = add i64 %284, 3
  store i64 %285, i64* %PC
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %287 = bitcast %union.anon* %286 to i32*
  %288 = load i32, i32* %287, align 8, !tbaa !2454
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %291 = bitcast %union.anon* %290 to i32*
  %292 = load i32, i32* %291, align 8, !tbaa !2454
  %293 = zext i32 %292 to i64
  %294 = shl i64 %283, 32
  %295 = ashr exact i64 %294, 32
  %296 = shl nuw i64 %293, 32
  %297 = or i64 %296, %289
  %298 = sdiv i64 %297, %295
  %299 = shl i64 %298, 32
  %300 = ashr exact i64 %299, 32
  %301 = icmp eq i64 %298, %300
  br i1 %301, label %306, label %302

; <label>:302:                                    ; preds = %block_4013d2
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %304 = load i64, i64* %303, align 8, !tbaa !2428
  %305 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %304, %struct.Memory* %236) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:306:                                    ; preds = %block_4013d2
  %307 = srem i64 %297, %295
  %308 = getelementptr inbounds %union.anon, %union.anon* %286, i64 0, i32 0
  %309 = and i64 %298, 4294967295
  store i64 %309, i64* %308, align 8, !tbaa !2428
  %310 = getelementptr inbounds %union.anon, %union.anon* %290, i64 0, i32 0
  %311 = and i64 %307, 4294967295
  store i64 %311, i64* %310, align 8, !tbaa !2428
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %312, align 1, !tbaa !2432
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %313, align 1, !tbaa !2446
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %314, align 1, !tbaa !2447
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %315, align 1, !tbaa !2448
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %316, align 1, !tbaa !2449
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %317, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %302, %306
  %318 = phi %struct.Memory* [ %305, %302 ], [ %236, %306 ]
  %319 = load i32, i32* %EDX
  %320 = zext i32 %319 to i64
  %321 = load i64, i64* %PC
  %322 = add i64 %321, 3
  store i64 %322, i64* %PC
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %323, align 1, !tbaa !2432
  %324 = and i32 %319, 255
  %325 = call i32 @llvm.ctpop.i32(i32 %324) #16
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %328, i8* %329, align 1, !tbaa !2446
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %330, align 1, !tbaa !2447
  %331 = icmp eq i32 %319, 0
  %332 = zext i1 %331 to i8
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %332, i8* %333, align 1, !tbaa !2448
  %334 = lshr i32 %319, 31
  %335 = trunc i32 %334 to i8
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %335, i8* %336, align 1, !tbaa !2449
  %337 = lshr i32 %319, 31
  %338 = xor i32 %334, %337
  %339 = add nuw nsw i32 %338, %337
  %340 = icmp eq i32 %339, 2
  %341 = zext i1 %340 to i8
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %341, i8* %342, align 1, !tbaa !2450
  %343 = load i64, i64* %PC
  %344 = add i64 %343, 34
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
  br i1 %356, label %block_401437, label %block_40141b

block_40144a:                                     ; preds = %block_4013c6
  %357 = load i64, i64* %RSP
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 4
  store i64 %359, i64* %PC
  %360 = add i64 32, %357
  store i64 %360, i64* %RSP, align 8, !tbaa !2428
  %361 = icmp ult i64 %360, %357
  %362 = icmp ult i64 %360, 32
  %363 = or i1 %361, %362
  %364 = zext i1 %363 to i8
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %364, i8* %365, align 1, !tbaa !2432
  %366 = trunc i64 %360 to i32
  %367 = and i32 %366, 255
  %368 = call i32 @llvm.ctpop.i32(i32 %367) #16
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = xor i8 %370, 1
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %371, i8* %372, align 1, !tbaa !2446
  %373 = xor i64 32, %357
  %374 = xor i64 %373, %360
  %375 = lshr i64 %374, 4
  %376 = trunc i64 %375 to i8
  %377 = and i8 %376, 1
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %377, i8* %378, align 1, !tbaa !2447
  %379 = icmp eq i64 %360, 0
  %380 = zext i1 %379 to i8
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %380, i8* %381, align 1, !tbaa !2448
  %382 = lshr i64 %360, 63
  %383 = trunc i64 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %383, i8* %384, align 1, !tbaa !2449
  %385 = lshr i64 %357, 63
  %386 = xor i64 %382, %385
  %387 = add nuw nsw i64 %386, %382
  %388 = icmp eq i64 %387, 2
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %389, i8* %390, align 1, !tbaa !2450
  %391 = load i64, i64* %PC
  %392 = add i64 %391, 1
  store i64 %392, i64* %PC
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %394 = load i64, i64* %393, align 8, !tbaa !2428
  %395 = add i64 %394, 8
  %396 = inttoptr i64 %394 to i64*
  %397 = load i64, i64* %396
  store i64 %397, i64* %RBP, align 8, !tbaa !2428
  store i64 %395, i64* %393, align 8, !tbaa !2428
  %398 = load i64, i64* %PC
  %399 = add i64 %398, 1
  store i64 %399, i64* %PC
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %402 = load i64, i64* %401, align 8, !tbaa !2428
  %403 = inttoptr i64 %402 to i64*
  %404 = load i64, i64* %403
  store i64 %404, i64* %400, align 8, !tbaa !2428
  %405 = add i64 %402, 8
  store i64 %405, i64* %401, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_4013c6:                                     ; preds = %block_401437, %block_4013b0
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_4013b0 ], [ %MEMORY.0, %block_401437 ]
  %406 = load i64, i64* %RBP
  %407 = sub i64 %406, 20
  %408 = load i64, i64* %PC
  %409 = add i64 %408, 3
  store i64 %409, i64* %PC
  %410 = inttoptr i64 %407 to i32*
  %411 = load i32, i32* %410
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RAX, align 8, !tbaa !2428
  %413 = load i32, i32* %EAX
  %414 = zext i32 %413 to i64
  %415 = load i64, i64* %RBP
  %416 = sub i64 %415, 4
  %417 = load i64, i64* %PC
  %418 = add i64 %417, 3
  store i64 %418, i64* %PC
  %419 = inttoptr i64 %416 to i32*
  %420 = load i32, i32* %419
  %421 = sub i32 %413, %420
  %422 = icmp ult i32 %413, %420
  %423 = zext i1 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %423, i8* %424, align 1, !tbaa !2432
  %425 = and i32 %421, 255
  %426 = call i32 @llvm.ctpop.i32(i32 %425) #16
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %429, i8* %430, align 1, !tbaa !2446
  %431 = xor i32 %420, %413
  %432 = xor i32 %431, %421
  %433 = lshr i32 %432, 4
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %435, i8* %436, align 1, !tbaa !2447
  %437 = icmp eq i32 %421, 0
  %438 = zext i1 %437 to i8
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %438, i8* %439, align 1, !tbaa !2448
  %440 = lshr i32 %421, 31
  %441 = trunc i32 %440 to i8
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %441, i8* %442, align 1, !tbaa !2449
  %443 = lshr i32 %413, 31
  %444 = lshr i32 %420, 31
  %445 = xor i32 %444, %443
  %446 = xor i32 %440, %443
  %447 = add nuw nsw i32 %446, %445
  %448 = icmp eq i32 %447, 2
  %449 = zext i1 %448 to i8
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %449, i8* %450, align 1, !tbaa !2450
  %451 = load i64, i64* %PC
  %452 = add i64 %451, 126
  %453 = load i64, i64* %PC
  %454 = add i64 %453, 6
  %455 = load i64, i64* %PC
  %456 = add i64 %455, 6
  store i64 %456, i64* %PC
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %458 = load i8, i8* %457, align 1, !tbaa !2449
  %459 = icmp ne i8 %458, 0
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %461 = load i8, i8* %460, align 1, !tbaa !2450
  %462 = icmp ne i8 %461, 0
  %463 = xor i1 %459, %462
  %464 = xor i1 %463, true
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %467 = select i1 %463, i64 %454, i64 %452
  store i64 %467, i64* %466, align 8, !tbaa !2428
  %468 = load i8, i8* %BRANCH_TAKEN
  %469 = icmp eq i8 %468, 1
  br i1 %469, label %block_40144a, label %block_4013d2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006c0_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006c0:
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
  %35 = tail call %struct.Memory* @sub_400650_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_400830_xmalloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400830:
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
  br i1 %169, label %block_400873, label %block_400869

block_400873:                                     ; preds = %block_400869, %block_400830
  %MEMORY.0 = phi %struct.Memory* [ %122, %block_400830 ], [ %122, %block_400869 ]
  %170 = load i64, i64* %PC
  %171 = add i64 %170, 10
  store i64 %171, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 103), i64* %RSI, align 8, !tbaa !2428
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
  %178 = sub i64 %177, 727
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
  %189 = call %struct.Memory* @ext_4005b0_fprintf(%struct.State* %0, i64 %188, %struct.Memory* %MEMORY.0)
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
  %211 = call %struct.Memory* @ext_4005c0_exit(%struct.State* %0, i64 %210, %struct.Memory* %189)
  %212 = load i64, i64* %PC
  %213 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %212, %struct.Memory* %211)
  ret %struct.Memory* %213

block_400869:                                     ; preds = %block_400830
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
  br i1 %252, label %block_400899, label %block_400873

block_400899:                                     ; preds = %block_400869
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
define %struct.Memory* @sub_400da0_kernel_gemver(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400da0:
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
  %66 = load i64, i64* %R14
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 2
  store i64 %68, i64* %PC
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %70 = load i64, i64* %69, align 8, !tbaa !2428
  %71 = add i64 %70, -8
  %72 = inttoptr i64 %71 to i64*
  store i64 %66, i64* %72
  store i64 %71, i64* %69, align 8, !tbaa !2428
  %73 = load i64, i64* %RBX
  %74 = load i64, i64* %PC
  %75 = add i64 %74, 1
  store i64 %75, i64* %PC
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %77 = load i64, i64* %76, align 8, !tbaa !2428
  %78 = add i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64 %73, i64* %79
  store i64 %78, i64* %76, align 8, !tbaa !2428
  %80 = load i64, i64* %RBP
  %81 = add i64 %80, 48
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC
  %84 = inttoptr i64 %81 to i64*
  %85 = load i64, i64* %84
  store i64 %85, i64* %RAX, align 8, !tbaa !2428
  %86 = load i64, i64* %RBP
  %87 = add i64 %86, 40
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC
  %90 = inttoptr i64 %87 to i64*
  %91 = load i64, i64* %90
  store i64 %91, i64* %R10, align 8, !tbaa !2428
  %92 = load i64, i64* %RBP
  %93 = add i64 %92, 32
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC
  %96 = inttoptr i64 %93 to i64*
  %97 = load i64, i64* %96
  store i64 %97, i64* %R11, align 8, !tbaa !2428
  %98 = load i64, i64* %RBP
  %99 = add i64 %98, 24
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 4
  store i64 %101, i64* %PC
  %102 = inttoptr i64 %99 to i64*
  %103 = load i64, i64* %102
  store i64 %103, i64* %RBX, align 8, !tbaa !2428
  %104 = load i64, i64* %RBP
  %105 = add i64 %104, 16
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %105 to i64*
  %109 = load i64, i64* %108
  store i64 %109, i64* %R14, align 8, !tbaa !2428
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
  %164 = sub i64 %163, 88
  %165 = load i64, i64* %R14
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 4
  store i64 %167, i64* %PC
  %168 = inttoptr i64 %164 to i64*
  store i64 %165, i64* %168
  %169 = load i64, i64* %RBP
  %170 = sub i64 %169, 96
  %171 = load i64, i64* %RBX
  %172 = load i64, i64* %PC
  %173 = add i64 %172, 4
  store i64 %173, i64* %PC
  %174 = inttoptr i64 %170 to i64*
  store i64 %171, i64* %174
  %175 = load i64, i64* %RBP
  %176 = sub i64 %175, 104
  %177 = load i64, i64* %R11
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 4
  store i64 %179, i64* %PC
  %180 = inttoptr i64 %176 to i64*
  store i64 %177, i64* %180
  %181 = load i64, i64* %RBP
  %182 = sub i64 %181, 112
  %183 = load i64, i64* %R10
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 4
  store i64 %185, i64* %PC
  %186 = inttoptr i64 %182 to i64*
  store i64 %183, i64* %186
  %187 = load i64, i64* %RBP
  %188 = sub i64 %187, 120
  %189 = load i64, i64* %RAX
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 4
  store i64 %191, i64* %PC
  %192 = inttoptr i64 %188 to i64*
  store i64 %189, i64* %192
  %193 = load i64, i64* %RBP
  %194 = sub i64 %193, 124
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 7
  store i64 %196, i64* %PC
  %197 = inttoptr i64 %194 to i32*
  store i32 0, i32* %197
  br label %block_400df7

block_400f52:                                     ; preds = %block_400f5e, %block_400f4b
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_400f4b ], [ %MEMORY.0, %block_400f5e ]
  %198 = load i64, i64* %RBP
  %199 = sub i64 %198, 124
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 3
  store i64 %201, i64* %PC
  %202 = inttoptr i64 %199 to i32*
  %203 = load i32, i32* %202
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %RAX, align 8, !tbaa !2428
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
  store i8 %215, i8* %216, align 1, !tbaa !2432
  %217 = and i32 %213, 255
  %218 = call i32 @llvm.ctpop.i32(i32 %217) #16
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %221, i8* %222, align 1, !tbaa !2446
  %223 = xor i32 %212, %205
  %224 = xor i32 %223, %213
  %225 = lshr i32 %224, 4
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %227, i8* %228, align 1, !tbaa !2447
  %229 = icmp eq i32 %213, 0
  %230 = zext i1 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %230, i8* %231, align 1, !tbaa !2448
  %232 = lshr i32 %213, 31
  %233 = trunc i32 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %233, i8* %234, align 1, !tbaa !2449
  %235 = lshr i32 %205, 31
  %236 = lshr i32 %212, 31
  %237 = xor i32 %236, %235
  %238 = xor i32 %232, %235
  %239 = add nuw nsw i32 %238, %237
  %240 = icmp eq i32 %239, 2
  %241 = zext i1 %240 to i8
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %241, i8* %242, align 1, !tbaa !2450
  %243 = load i64, i64* %PC
  %244 = add i64 %243, 59
  %245 = load i64, i64* %PC
  %246 = add i64 %245, 6
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 6
  store i64 %248, i64* %PC
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %250 = load i8, i8* %249, align 1, !tbaa !2449
  %251 = icmp ne i8 %250, 0
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %253 = load i8, i8* %252, align 1, !tbaa !2450
  %254 = icmp ne i8 %253, 0
  %255 = xor i1 %251, %254
  %256 = xor i1 %255, true
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %259 = select i1 %255, i64 %246, i64 %244
  store i64 %259, i64* %258, align 8, !tbaa !2428
  %260 = load i8, i8* %BRANCH_TAKEN
  %261 = icmp eq i8 %260, 1
  %262 = load i64, i64* %RBP
  br i1 %261, label %block_400f93, label %block_400f5e

block_400f4b:                                     ; preds = %block_400eb0
  %263 = load i64, i64* %RBP
  %264 = sub i64 %263, 124
  %265 = load i64, i64* %PC
  %266 = add i64 %265, 7
  store i64 %266, i64* %PC
  %267 = inttoptr i64 %264 to i32*
  store i32 0, i32* %267
  br label %block_400f52

block_400ebc:                                     ; preds = %block_400eb0
  %268 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %269 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %270 = bitcast %union.vec128_t* %XMM0 to i8*
  %271 = load i64, i64* %PC
  %272 = add i64 %271, 3
  store i64 %272, i64* %PC
  %273 = bitcast i8* %269 to i64*
  %274 = load i64, i64* %273, align 1
  %275 = getelementptr inbounds i8, i8* %269, i64 8
  %276 = bitcast i8* %275 to i64*
  %277 = load i64, i64* %276, align 1
  %278 = bitcast i8* %270 to i64*
  %279 = load i64, i64* %278, align 1
  %280 = getelementptr inbounds i8, i8* %270, i64 8
  %281 = bitcast i8* %280 to i64*
  %282 = load i64, i64* %281, align 1
  %283 = xor i64 %279, %274
  %284 = xor i64 %282, %277
  %285 = trunc i64 %283 to i32
  %286 = lshr i64 %283, 32
  %287 = trunc i64 %286 to i32
  %288 = bitcast i8* %268 to i32*
  store i32 %285, i32* %288, align 1, !tbaa !2454
  %289 = getelementptr inbounds i8, i8* %268, i64 4
  %290 = bitcast i8* %289 to i32*
  store i32 %287, i32* %290, align 1, !tbaa !2454
  %291 = trunc i64 %284 to i32
  %292 = getelementptr inbounds i8, i8* %268, i64 8
  %293 = bitcast i8* %292 to i32*
  store i32 %291, i32* %293, align 1, !tbaa !2454
  %294 = lshr i64 %284, 32
  %295 = trunc i64 %294 to i32
  %296 = getelementptr inbounds i8, i8* %268, i64 12
  %297 = bitcast i8* %296 to i32*
  store i32 %295, i32* %297, align 1, !tbaa !2454
  %298 = load i64, i64* %RBP
  %299 = sub i64 %298, 104
  %300 = load i64, i64* %PC
  %301 = add i64 %300, 4
  store i64 %301, i64* %PC
  %302 = inttoptr i64 %299 to i64*
  %303 = load i64, i64* %302
  store i64 %303, i64* %RAX, align 8, !tbaa !2428
  %304 = load i64, i64* %RBP
  %305 = sub i64 %304, 124
  %306 = load i64, i64* %PC
  %307 = add i64 %306, 4
  store i64 %307, i64* %PC
  %308 = inttoptr i64 %305 to i32*
  %309 = load i32, i32* %308
  %310 = sext i32 %309 to i64
  store i64 %310, i64* %RCX, align 8, !tbaa !2428
  %311 = load i64, i64* %RAX
  %312 = load i64, i64* %RCX
  %313 = mul i64 %312, 8
  %314 = add i64 %313, %311
  %315 = bitcast %union.vec128_t* %XMM0 to i8*
  %316 = load i64, i64* %PC
  %317 = add i64 %316, 5
  store i64 %317, i64* %PC
  %318 = bitcast i8* %315 to double*
  %319 = load double, double* %318, align 1
  %320 = inttoptr i64 %314 to double*
  store double %319, double* %320
  %321 = load i64, i64* %RBP
  %322 = sub i64 %321, 128
  %323 = load i64, i64* %PC
  %324 = add i64 %323, 7
  store i64 %324, i64* %PC
  %325 = inttoptr i64 %322 to i32*
  store i32 0, i32* %325
  br label %block_400ed3

block_400fb9:                                     ; preds = %block_400fad
  %326 = load i64, i64* %RBP
  %327 = sub i64 %326, 96
  %328 = load i64, i64* %PC
  %329 = add i64 %328, 4
  store i64 %329, i64* %PC
  %330 = inttoptr i64 %327 to i64*
  %331 = load i64, i64* %330
  store i64 %331, i64* %RAX, align 8, !tbaa !2428
  %332 = load i64, i64* %RBP
  %333 = sub i64 %332, 124
  %334 = load i64, i64* %PC
  %335 = add i64 %334, 4
  store i64 %335, i64* %PC
  %336 = inttoptr i64 %333 to i32*
  %337 = load i32, i32* %336
  %338 = sext i32 %337 to i64
  store i64 %338, i64* %RCX, align 8, !tbaa !2428
  %339 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %340 = load i64, i64* %RAX
  %341 = load i64, i64* %RCX
  %342 = mul i64 %341, 8
  %343 = add i64 %342, %340
  %344 = load i64, i64* %PC
  %345 = add i64 %344, 5
  store i64 %345, i64* %PC
  %346 = inttoptr i64 %343 to double*
  %347 = load double, double* %346
  %348 = bitcast i8* %339 to double*
  store double %347, double* %348, align 1, !tbaa !2452
  %349 = getelementptr inbounds i8, i8* %339, i64 8
  %350 = bitcast i8* %349 to double*
  store double 0.000000e+00, double* %350, align 1, !tbaa !2452
  %351 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %352 = load i64, i64* %RBP
  %353 = sub i64 %352, 32
  %354 = load i64, i64* %PC
  %355 = add i64 %354, 5
  store i64 %355, i64* %PC
  %356 = inttoptr i64 %353 to double*
  %357 = load double, double* %356
  %358 = bitcast i8* %351 to double*
  store double %357, double* %358, align 1, !tbaa !2452
  %359 = getelementptr inbounds i8, i8* %351, i64 8
  %360 = bitcast i8* %359 to double*
  store double 0.000000e+00, double* %360, align 1, !tbaa !2452
  %361 = load i64, i64* %RBP
  %362 = sub i64 %361, 56
  %363 = load i64, i64* %PC
  %364 = add i64 %363, 4
  store i64 %364, i64* %PC
  %365 = inttoptr i64 %362 to i64*
  %366 = load i64, i64* %365
  store i64 %366, i64* %RAX, align 8, !tbaa !2428
  %367 = load i64, i64* %RBP
  %368 = sub i64 %367, 124
  %369 = load i64, i64* %PC
  %370 = add i64 %369, 4
  store i64 %370, i64* %PC
  %371 = inttoptr i64 %368 to i32*
  %372 = load i32, i32* %371
  %373 = sext i32 %372 to i64
  store i64 %373, i64* %RCX, align 8, !tbaa !2428
  %374 = load i64, i64* %RCX
  %375 = load i64, i64* %PC
  %376 = add i64 %375, 7
  store i64 %376, i64* %PC
  %377 = sext i64 %374 to i128
  %378 = and i128 %377, -18446744073709551616
  %379 = zext i64 %374 to i128
  %380 = or i128 %378, %379
  %381 = mul nsw i128 32000, %380
  %382 = trunc i128 %381 to i64
  store i64 %382, i64* %RCX, align 8, !tbaa !2428
  %383 = sext i64 %382 to i128
  %384 = icmp ne i128 %383, %381
  %385 = zext i1 %384 to i8
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %385, i8* %386, align 1, !tbaa !2432
  %387 = trunc i128 %381 to i32
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %388, align 1, !tbaa !2446
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %389, align 1, !tbaa !2447
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %390, align 1, !tbaa !2448
  %391 = lshr i64 %382, 63
  %392 = trunc i64 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %392, i8* %393, align 1, !tbaa !2449
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %385, i8* %394, align 1, !tbaa !2450
  %395 = load i64, i64* %RAX
  %396 = load i64, i64* %RCX
  %397 = load i64, i64* %PC
  %398 = add i64 %397, 3
  store i64 %398, i64* %PC
  %399 = add i64 %396, %395
  store i64 %399, i64* %RAX, align 8, !tbaa !2428
  %400 = icmp ult i64 %399, %395
  %401 = icmp ult i64 %399, %396
  %402 = or i1 %400, %401
  %403 = zext i1 %402 to i8
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %403, i8* %404, align 1, !tbaa !2432
  %405 = trunc i64 %399 to i32
  %406 = and i32 %405, 255
  %407 = call i32 @llvm.ctpop.i32(i32 %406) #16
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %410, i8* %411, align 1, !tbaa !2446
  %412 = xor i64 %396, %395
  %413 = xor i64 %412, %399
  %414 = lshr i64 %413, 4
  %415 = trunc i64 %414 to i8
  %416 = and i8 %415, 1
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %416, i8* %417, align 1, !tbaa !2447
  %418 = icmp eq i64 %399, 0
  %419 = zext i1 %418 to i8
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %419, i8* %420, align 1, !tbaa !2448
  %421 = lshr i64 %399, 63
  %422 = trunc i64 %421 to i8
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %422, i8* %423, align 1, !tbaa !2449
  %424 = lshr i64 %395, 63
  %425 = lshr i64 %396, 63
  %426 = xor i64 %421, %424
  %427 = xor i64 %421, %425
  %428 = add nuw nsw i64 %426, %427
  %429 = icmp eq i64 %428, 2
  %430 = zext i1 %429 to i8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %430, i8* %431, align 1, !tbaa !2450
  %432 = load i64, i64* %RBP
  %433 = sub i64 %432, 128
  %434 = load i64, i64* %PC
  %435 = add i64 %434, 4
  store i64 %435, i64* %PC
  %436 = inttoptr i64 %433 to i32*
  %437 = load i32, i32* %436
  %438 = sext i32 %437 to i64
  store i64 %438, i64* %RCX, align 8, !tbaa !2428
  %439 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %440 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %441 = load i64, i64* %RAX
  %442 = load i64, i64* %RCX
  %443 = mul i64 %442, 8
  %444 = add i64 %443, %441
  %445 = load i64, i64* %PC
  %446 = add i64 %445, 5
  store i64 %446, i64* %PC
  %447 = bitcast i8* %440 to double*
  %448 = load double, double* %447, align 1
  %449 = getelementptr inbounds i8, i8* %440, i64 8
  %450 = bitcast i8* %449 to i64*
  %451 = load i64, i64* %450, align 1
  %452 = inttoptr i64 %444 to double*
  %453 = load double, double* %452
  %454 = fmul double %448, %453
  %455 = bitcast i8* %439 to double*
  store double %454, double* %455, align 1, !tbaa !2452
  %456 = getelementptr inbounds i8, i8* %439, i64 8
  %457 = bitcast i8* %456 to i64*
  store i64 %451, i64* %457, align 1, !tbaa !2452
  %458 = load i64, i64* %RBP
  %459 = sub i64 %458, 104
  %460 = load i64, i64* %PC
  %461 = add i64 %460, 4
  store i64 %461, i64* %PC
  %462 = inttoptr i64 %459 to i64*
  %463 = load i64, i64* %462
  store i64 %463, i64* %RAX, align 8, !tbaa !2428
  %464 = load i64, i64* %RBP
  %465 = sub i64 %464, 128
  %466 = load i64, i64* %PC
  %467 = add i64 %466, 4
  store i64 %467, i64* %PC
  %468 = inttoptr i64 %465 to i32*
  %469 = load i32, i32* %468
  %470 = sext i32 %469 to i64
  store i64 %470, i64* %RCX, align 8, !tbaa !2428
  %471 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %472 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %473 = load i64, i64* %RAX
  %474 = load i64, i64* %RCX
  %475 = mul i64 %474, 8
  %476 = add i64 %475, %473
  %477 = load i64, i64* %PC
  %478 = add i64 %477, 5
  store i64 %478, i64* %PC
  %479 = bitcast i8* %472 to double*
  %480 = load double, double* %479, align 1
  %481 = getelementptr inbounds i8, i8* %472, i64 8
  %482 = bitcast i8* %481 to i64*
  %483 = load i64, i64* %482, align 1
  %484 = inttoptr i64 %476 to double*
  %485 = load double, double* %484
  %486 = fmul double %480, %485
  %487 = bitcast i8* %471 to double*
  store double %486, double* %487, align 1, !tbaa !2452
  %488 = getelementptr inbounds i8, i8* %471, i64 8
  %489 = bitcast i8* %488 to i64*
  store i64 %483, i64* %489, align 1, !tbaa !2452
  %490 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %491 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %492 = bitcast %union.vec128_t* %XMM1 to i8*
  %493 = load i64, i64* %PC
  %494 = add i64 %493, 4
  store i64 %494, i64* %PC
  %495 = bitcast i8* %491 to double*
  %496 = load double, double* %495, align 1
  %497 = getelementptr inbounds i8, i8* %491, i64 8
  %498 = bitcast i8* %497 to i64*
  %499 = load i64, i64* %498, align 1
  %500 = bitcast i8* %492 to double*
  %501 = load double, double* %500, align 1
  %502 = fadd double %496, %501
  %503 = bitcast i8* %490 to double*
  store double %502, double* %503, align 1, !tbaa !2452
  %504 = getelementptr inbounds i8, i8* %490, i64 8
  %505 = bitcast i8* %504 to i64*
  store i64 %499, i64* %505, align 1, !tbaa !2452
  %506 = load i64, i64* %RBP
  %507 = sub i64 %506, 96
  %508 = load i64, i64* %PC
  %509 = add i64 %508, 4
  store i64 %509, i64* %PC
  %510 = inttoptr i64 %507 to i64*
  %511 = load i64, i64* %510
  store i64 %511, i64* %RAX, align 8, !tbaa !2428
  %512 = load i64, i64* %RBP
  %513 = sub i64 %512, 124
  %514 = load i64, i64* %PC
  %515 = add i64 %514, 4
  store i64 %515, i64* %PC
  %516 = inttoptr i64 %513 to i32*
  %517 = load i32, i32* %516
  %518 = sext i32 %517 to i64
  store i64 %518, i64* %RCX, align 8, !tbaa !2428
  %519 = load i64, i64* %RAX
  %520 = load i64, i64* %RCX
  %521 = mul i64 %520, 8
  %522 = add i64 %521, %519
  %523 = bitcast %union.vec128_t* %XMM0 to i8*
  %524 = load i64, i64* %PC
  %525 = add i64 %524, 5
  store i64 %525, i64* %PC
  %526 = bitcast i8* %523 to double*
  %527 = load double, double* %526, align 1
  %528 = inttoptr i64 %522 to double*
  store double %527, double* %528
  %529 = load i64, i64* %RBP
  %530 = sub i64 %529, 128
  %531 = load i64, i64* %PC
  %532 = add i64 %531, 3
  store i64 %532, i64* %PC
  %533 = inttoptr i64 %530 to i32*
  %534 = load i32, i32* %533
  %535 = zext i32 %534 to i64
  store i64 %535, i64* %RAX, align 8, !tbaa !2428
  %536 = load i64, i64* %RAX
  %537 = load i64, i64* %PC
  %538 = add i64 %537, 3
  store i64 %538, i64* %PC
  %539 = trunc i64 %536 to i32
  %540 = add i32 1, %539
  %541 = zext i32 %540 to i64
  store i64 %541, i64* %RAX, align 8, !tbaa !2428
  %542 = icmp ult i32 %540, %539
  %543 = icmp ult i32 %540, 1
  %544 = or i1 %542, %543
  %545 = zext i1 %544 to i8
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %545, i8* %546, align 1, !tbaa !2432
  %547 = and i32 %540, 255
  %548 = call i32 @llvm.ctpop.i32(i32 %547) #16
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  %551 = xor i8 %550, 1
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %551, i8* %552, align 1, !tbaa !2446
  %553 = xor i64 1, %536
  %554 = trunc i64 %553 to i32
  %555 = xor i32 %554, %540
  %556 = lshr i32 %555, 4
  %557 = trunc i32 %556 to i8
  %558 = and i8 %557, 1
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %558, i8* %559, align 1, !tbaa !2447
  %560 = icmp eq i32 %540, 0
  %561 = zext i1 %560 to i8
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %561, i8* %562, align 1, !tbaa !2448
  %563 = lshr i32 %540, 31
  %564 = trunc i32 %563 to i8
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %564, i8* %565, align 1, !tbaa !2449
  %566 = lshr i32 %539, 31
  %567 = xor i32 %563, %566
  %568 = add nuw nsw i32 %567, %563
  %569 = icmp eq i32 %568, 2
  %570 = zext i1 %569 to i8
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %570, i8* %571, align 1, !tbaa !2450
  %572 = load i64, i64* %RBP
  %573 = sub i64 %572, 128
  %574 = load i32, i32* %EAX
  %575 = zext i32 %574 to i64
  %576 = load i64, i64* %PC
  %577 = add i64 %576, 3
  store i64 %577, i64* %PC
  %578 = inttoptr i64 %573 to i32*
  store i32 %574, i32* %578
  %579 = load i64, i64* %PC
  %580 = sub i64 %579, 96
  %581 = load i64, i64* %PC
  %582 = add i64 %581, 5
  store i64 %582, i64* %PC
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %580, i64* %583, align 8, !tbaa !2428
  br label %block_400fad

block_400f5e:                                     ; preds = %block_400f52
  %584 = sub i64 %262, 104
  %585 = load i64, i64* %PC
  %586 = add i64 %585, 4
  store i64 %586, i64* %PC
  %587 = inttoptr i64 %584 to i64*
  %588 = load i64, i64* %587
  store i64 %588, i64* %RAX, align 8, !tbaa !2428
  %589 = load i64, i64* %RBP
  %590 = sub i64 %589, 124
  %591 = load i64, i64* %PC
  %592 = add i64 %591, 4
  store i64 %592, i64* %PC
  %593 = inttoptr i64 %590 to i32*
  %594 = load i32, i32* %593
  %595 = sext i32 %594 to i64
  store i64 %595, i64* %RCX, align 8, !tbaa !2428
  %596 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %597 = load i64, i64* %RAX
  %598 = load i64, i64* %RCX
  %599 = mul i64 %598, 8
  %600 = add i64 %599, %597
  %601 = load i64, i64* %PC
  %602 = add i64 %601, 5
  store i64 %602, i64* %PC
  %603 = inttoptr i64 %600 to double*
  %604 = load double, double* %603
  %605 = bitcast i8* %596 to double*
  store double %604, double* %605, align 1, !tbaa !2452
  %606 = getelementptr inbounds i8, i8* %596, i64 8
  %607 = bitcast i8* %606 to double*
  store double 0.000000e+00, double* %607, align 1, !tbaa !2452
  %608 = load i64, i64* %RBP
  %609 = sub i64 %608, 120
  %610 = load i64, i64* %PC
  %611 = add i64 %610, 4
  store i64 %611, i64* %PC
  %612 = inttoptr i64 %609 to i64*
  %613 = load i64, i64* %612
  store i64 %613, i64* %RAX, align 8, !tbaa !2428
  %614 = load i64, i64* %RBP
  %615 = sub i64 %614, 124
  %616 = load i64, i64* %PC
  %617 = add i64 %616, 4
  store i64 %617, i64* %PC
  %618 = inttoptr i64 %615 to i32*
  %619 = load i32, i32* %618
  %620 = sext i32 %619 to i64
  store i64 %620, i64* %RCX, align 8, !tbaa !2428
  %621 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %622 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %623 = load i64, i64* %RAX
  %624 = load i64, i64* %RCX
  %625 = mul i64 %624, 8
  %626 = add i64 %625, %623
  %627 = load i64, i64* %PC
  %628 = add i64 %627, 5
  store i64 %628, i64* %PC
  %629 = bitcast i8* %622 to double*
  %630 = load double, double* %629, align 1
  %631 = getelementptr inbounds i8, i8* %622, i64 8
  %632 = bitcast i8* %631 to i64*
  %633 = load i64, i64* %632, align 1
  %634 = inttoptr i64 %626 to double*
  %635 = load double, double* %634
  %636 = fadd double %630, %635
  %637 = bitcast i8* %621 to double*
  store double %636, double* %637, align 1, !tbaa !2452
  %638 = getelementptr inbounds i8, i8* %621, i64 8
  %639 = bitcast i8* %638 to i64*
  store i64 %633, i64* %639, align 1, !tbaa !2452
  %640 = load i64, i64* %RBP
  %641 = sub i64 %640, 104
  %642 = load i64, i64* %PC
  %643 = add i64 %642, 4
  store i64 %643, i64* %PC
  %644 = inttoptr i64 %641 to i64*
  %645 = load i64, i64* %644
  store i64 %645, i64* %RAX, align 8, !tbaa !2428
  %646 = load i64, i64* %RBP
  %647 = sub i64 %646, 124
  %648 = load i64, i64* %PC
  %649 = add i64 %648, 4
  store i64 %649, i64* %PC
  %650 = inttoptr i64 %647 to i32*
  %651 = load i32, i32* %650
  %652 = sext i32 %651 to i64
  store i64 %652, i64* %RCX, align 8, !tbaa !2428
  %653 = load i64, i64* %RAX
  %654 = load i64, i64* %RCX
  %655 = mul i64 %654, 8
  %656 = add i64 %655, %653
  %657 = bitcast %union.vec128_t* %XMM0 to i8*
  %658 = load i64, i64* %PC
  %659 = add i64 %658, 5
  store i64 %659, i64* %PC
  %660 = bitcast i8* %657 to double*
  %661 = load double, double* %660, align 1
  %662 = inttoptr i64 %656 to double*
  store double %661, double* %662
  %663 = load i64, i64* %RBP
  %664 = sub i64 %663, 124
  %665 = load i64, i64* %PC
  %666 = add i64 %665, 3
  store i64 %666, i64* %PC
  %667 = inttoptr i64 %664 to i32*
  %668 = load i32, i32* %667
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %RAX, align 8, !tbaa !2428
  %670 = load i64, i64* %RAX
  %671 = load i64, i64* %PC
  %672 = add i64 %671, 3
  store i64 %672, i64* %PC
  %673 = trunc i64 %670 to i32
  %674 = add i32 1, %673
  %675 = zext i32 %674 to i64
  store i64 %675, i64* %RAX, align 8, !tbaa !2428
  %676 = icmp ult i32 %674, %673
  %677 = icmp ult i32 %674, 1
  %678 = or i1 %676, %677
  %679 = zext i1 %678 to i8
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %679, i8* %680, align 1, !tbaa !2432
  %681 = and i32 %674, 255
  %682 = call i32 @llvm.ctpop.i32(i32 %681) #16
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = xor i8 %684, 1
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %685, i8* %686, align 1, !tbaa !2446
  %687 = xor i64 1, %670
  %688 = trunc i64 %687 to i32
  %689 = xor i32 %688, %674
  %690 = lshr i32 %689, 4
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %692, i8* %693, align 1, !tbaa !2447
  %694 = icmp eq i32 %674, 0
  %695 = zext i1 %694 to i8
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %695, i8* %696, align 1, !tbaa !2448
  %697 = lshr i32 %674, 31
  %698 = trunc i32 %697 to i8
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %698, i8* %699, align 1, !tbaa !2449
  %700 = lshr i32 %673, 31
  %701 = xor i32 %697, %700
  %702 = add nuw nsw i32 %701, %697
  %703 = icmp eq i32 %702, 2
  %704 = zext i1 %703 to i8
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %704, i8* %705, align 1, !tbaa !2450
  %706 = load i64, i64* %RBP
  %707 = sub i64 %706, 124
  %708 = load i32, i32* %EAX
  %709 = zext i32 %708 to i64
  %710 = load i64, i64* %PC
  %711 = add i64 %710, 3
  store i64 %711, i64* %PC
  %712 = inttoptr i64 %707 to i32*
  store i32 %708, i32* %712
  %713 = load i64, i64* %PC
  %714 = sub i64 %713, 60
  %715 = load i64, i64* %PC
  %716 = add i64 %715, 5
  store i64 %716, i64* %PC
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %714, i64* %717, align 8, !tbaa !2428
  br label %block_400f52

block_400eb0:                                     ; preds = %block_400f38, %block_400ea9
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.3, %block_400ea9 ], [ %MEMORY.5, %block_400f38 ]
  %718 = load i64, i64* %RBP
  %719 = sub i64 %718, 124
  %720 = load i64, i64* %PC
  %721 = add i64 %720, 3
  store i64 %721, i64* %PC
  %722 = inttoptr i64 %719 to i32*
  %723 = load i32, i32* %722
  %724 = zext i32 %723 to i64
  store i64 %724, i64* %RAX, align 8, !tbaa !2428
  %725 = load i32, i32* %EAX
  %726 = zext i32 %725 to i64
  %727 = load i64, i64* %RBP
  %728 = sub i64 %727, 20
  %729 = load i64, i64* %PC
  %730 = add i64 %729, 3
  store i64 %730, i64* %PC
  %731 = inttoptr i64 %728 to i32*
  %732 = load i32, i32* %731
  %733 = sub i32 %725, %732
  %734 = icmp ult i32 %725, %732
  %735 = zext i1 %734 to i8
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %735, i8* %736, align 1, !tbaa !2432
  %737 = and i32 %733, 255
  %738 = call i32 @llvm.ctpop.i32(i32 %737) #16
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  %741 = xor i8 %740, 1
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %741, i8* %742, align 1, !tbaa !2446
  %743 = xor i32 %732, %725
  %744 = xor i32 %743, %733
  %745 = lshr i32 %744, 4
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %747, i8* %748, align 1, !tbaa !2447
  %749 = icmp eq i32 %733, 0
  %750 = zext i1 %749 to i8
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %750, i8* %751, align 1, !tbaa !2448
  %752 = lshr i32 %733, 31
  %753 = trunc i32 %752 to i8
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %753, i8* %754, align 1, !tbaa !2449
  %755 = lshr i32 %725, 31
  %756 = lshr i32 %732, 31
  %757 = xor i32 %756, %755
  %758 = xor i32 %752, %755
  %759 = add nuw nsw i32 %758, %757
  %760 = icmp eq i32 %759, 2
  %761 = zext i1 %760 to i8
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %761, i8* %762, align 1, !tbaa !2450
  %763 = load i64, i64* %PC
  %764 = add i64 %763, 149
  %765 = load i64, i64* %PC
  %766 = add i64 %765, 6
  %767 = load i64, i64* %PC
  %768 = add i64 %767, 6
  store i64 %768, i64* %PC
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %770 = load i8, i8* %769, align 1, !tbaa !2449
  %771 = icmp ne i8 %770, 0
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %773 = load i8, i8* %772, align 1, !tbaa !2450
  %774 = icmp ne i8 %773, 0
  %775 = xor i1 %771, %774
  %776 = xor i1 %775, true
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %779 = select i1 %775, i64 %766, i64 %764
  store i64 %779, i64* %778, align 8, !tbaa !2428
  %780 = load i8, i8* %BRANCH_TAKEN
  %781 = icmp eq i8 %780, 1
  br i1 %781, label %block_400f4b, label %block_400ebc

block_400fad:                                     ; preds = %block_400fa6, %block_400fb9
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.4, %block_400fa6 ], [ %MEMORY.2, %block_400fb9 ]
  %782 = load i64, i64* %RBP
  %783 = sub i64 %782, 128
  %784 = load i64, i64* %PC
  %785 = add i64 %784, 3
  store i64 %785, i64* %PC
  %786 = inttoptr i64 %783 to i32*
  %787 = load i32, i32* %786
  %788 = zext i32 %787 to i64
  store i64 %788, i64* %RAX, align 8, !tbaa !2428
  %789 = load i32, i32* %EAX
  %790 = zext i32 %789 to i64
  %791 = load i64, i64* %RBP
  %792 = sub i64 %791, 20
  %793 = load i64, i64* %PC
  %794 = add i64 %793, 3
  store i64 %794, i64* %PC
  %795 = inttoptr i64 %792 to i32*
  %796 = load i32, i32* %795
  %797 = sub i32 %789, %796
  %798 = icmp ult i32 %789, %796
  %799 = zext i1 %798 to i8
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %799, i8* %800, align 1, !tbaa !2432
  %801 = and i32 %797, 255
  %802 = call i32 @llvm.ctpop.i32(i32 %801) #16
  %803 = trunc i32 %802 to i8
  %804 = and i8 %803, 1
  %805 = xor i8 %804, 1
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %805, i8* %806, align 1, !tbaa !2446
  %807 = xor i32 %796, %789
  %808 = xor i32 %807, %797
  %809 = lshr i32 %808, 4
  %810 = trunc i32 %809 to i8
  %811 = and i8 %810, 1
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %811, i8* %812, align 1, !tbaa !2447
  %813 = icmp eq i32 %797, 0
  %814 = zext i1 %813 to i8
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %814, i8* %815, align 1, !tbaa !2448
  %816 = lshr i32 %797, 31
  %817 = trunc i32 %816 to i8
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %817, i8* %818, align 1, !tbaa !2449
  %819 = lshr i32 %789, 31
  %820 = lshr i32 %796, 31
  %821 = xor i32 %820, %819
  %822 = xor i32 %816, %819
  %823 = add nuw nsw i32 %822, %821
  %824 = icmp eq i32 %823, 2
  %825 = zext i1 %824 to i8
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %825, i8* %826, align 1, !tbaa !2450
  %827 = load i64, i64* %PC
  %828 = add i64 %827, 95
  %829 = load i64, i64* %PC
  %830 = add i64 %829, 6
  %831 = load i64, i64* %PC
  %832 = add i64 %831, 6
  store i64 %832, i64* %PC
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %834 = load i8, i8* %833, align 1, !tbaa !2449
  %835 = icmp ne i8 %834, 0
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %837 = load i8, i8* %836, align 1, !tbaa !2450
  %838 = icmp ne i8 %837, 0
  %839 = xor i1 %835, %838
  %840 = xor i1 %839, true
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %843 = select i1 %839, i64 %830, i64 %828
  store i64 %843, i64* %842, align 8, !tbaa !2428
  %844 = load i8, i8* %BRANCH_TAKEN
  %845 = icmp eq i8 %844, 1
  br i1 %845, label %block_401012, label %block_400fb9

block_400ea9:                                     ; preds = %block_400df7
  %846 = sub i64 %948, 124
  %847 = load i64, i64* %PC
  %848 = add i64 %847, 7
  store i64 %848, i64* %PC
  %849 = inttoptr i64 %846 to i32*
  store i32 0, i32* %849
  br label %block_400eb0

block_400fa6:                                     ; preds = %block_400f9a
  %850 = load i64, i64* %RBP
  %851 = sub i64 %850, 128
  %852 = load i64, i64* %PC
  %853 = add i64 %852, 7
  store i64 %853, i64* %PC
  %854 = inttoptr i64 %851 to i32*
  store i32 0, i32* %854
  br label %block_400fad

block_401025:                                     ; preds = %block_400f9a
  %855 = load i64, i64* %PC
  %856 = add i64 %855, 1
  store i64 %856, i64* %PC
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %858 = load i64, i64* %857, align 8, !tbaa !2428
  %859 = add i64 %858, 8
  %860 = inttoptr i64 %858 to i64*
  %861 = load i64, i64* %860
  store i64 %861, i64* %RBX, align 8, !tbaa !2428
  store i64 %859, i64* %857, align 8, !tbaa !2428
  %862 = load i64, i64* %PC
  %863 = add i64 %862, 2
  store i64 %863, i64* %PC
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %865 = load i64, i64* %864, align 8, !tbaa !2428
  %866 = add i64 %865, 8
  %867 = inttoptr i64 %865 to i64*
  %868 = load i64, i64* %867
  store i64 %868, i64* %R14, align 8, !tbaa !2428
  store i64 %866, i64* %864, align 8, !tbaa !2428
  %869 = load i64, i64* %PC
  %870 = add i64 %869, 1
  store i64 %870, i64* %PC
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %872 = load i64, i64* %871, align 8, !tbaa !2428
  %873 = add i64 %872, 8
  %874 = inttoptr i64 %872 to i64*
  %875 = load i64, i64* %874
  store i64 %875, i64* %RBP, align 8, !tbaa !2428
  store i64 %873, i64* %871, align 8, !tbaa !2428
  %876 = load i64, i64* %PC
  %877 = add i64 %876, 1
  store i64 %877, i64* %PC
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %880 = load i64, i64* %879, align 8, !tbaa !2428
  %881 = inttoptr i64 %880 to i64*
  %882 = load i64, i64* %881
  store i64 %882, i64* %878, align 8, !tbaa !2428
  %883 = add i64 %880, 8
  store i64 %883, i64* %879, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.4

block_400df7:                                     ; preds = %block_400e96, %block_400da0
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_400da0 ], [ %MEMORY.6, %block_400e96 ]
  %884 = load i64, i64* %RBP
  %885 = sub i64 %884, 124
  %886 = load i64, i64* %PC
  %887 = add i64 %886, 3
  store i64 %887, i64* %PC
  %888 = inttoptr i64 %885 to i32*
  %889 = load i32, i32* %888
  %890 = zext i32 %889 to i64
  store i64 %890, i64* %RAX, align 8, !tbaa !2428
  %891 = load i32, i32* %EAX
  %892 = zext i32 %891 to i64
  %893 = load i64, i64* %RBP
  %894 = sub i64 %893, 20
  %895 = load i64, i64* %PC
  %896 = add i64 %895, 3
  store i64 %896, i64* %PC
  %897 = inttoptr i64 %894 to i32*
  %898 = load i32, i32* %897
  %899 = sub i32 %891, %898
  %900 = icmp ult i32 %891, %898
  %901 = zext i1 %900 to i8
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %901, i8* %902, align 1, !tbaa !2432
  %903 = and i32 %899, 255
  %904 = call i32 @llvm.ctpop.i32(i32 %903) #16
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  %907 = xor i8 %906, 1
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %907, i8* %908, align 1, !tbaa !2446
  %909 = xor i32 %898, %891
  %910 = xor i32 %909, %899
  %911 = lshr i32 %910, 4
  %912 = trunc i32 %911 to i8
  %913 = and i8 %912, 1
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %913, i8* %914, align 1, !tbaa !2447
  %915 = icmp eq i32 %899, 0
  %916 = zext i1 %915 to i8
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %916, i8* %917, align 1, !tbaa !2448
  %918 = lshr i32 %899, 31
  %919 = trunc i32 %918 to i8
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %919, i8* %920, align 1, !tbaa !2449
  %921 = lshr i32 %891, 31
  %922 = lshr i32 %898, 31
  %923 = xor i32 %922, %921
  %924 = xor i32 %918, %921
  %925 = add nuw nsw i32 %924, %923
  %926 = icmp eq i32 %925, 2
  %927 = zext i1 %926 to i8
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %927, i8* %928, align 1, !tbaa !2450
  %929 = load i64, i64* %PC
  %930 = add i64 %929, 172
  %931 = load i64, i64* %PC
  %932 = add i64 %931, 6
  %933 = load i64, i64* %PC
  %934 = add i64 %933, 6
  store i64 %934, i64* %PC
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %936 = load i8, i8* %935, align 1, !tbaa !2449
  %937 = icmp ne i8 %936, 0
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %939 = load i8, i8* %938, align 1, !tbaa !2450
  %940 = icmp ne i8 %939, 0
  %941 = xor i1 %937, %940
  %942 = xor i1 %941, true
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %945 = select i1 %941, i64 %932, i64 %930
  store i64 %945, i64* %944, align 8, !tbaa !2428
  %946 = load i8, i8* %BRANCH_TAKEN
  %947 = icmp eq i8 %946, 1
  %948 = load i64, i64* %RBP
  br i1 %947, label %block_400ea9, label %block_400e03

block_400edf:                                     ; preds = %block_400ed3
  %949 = load i64, i64* %RBP
  %950 = sub i64 %949, 104
  %951 = load i64, i64* %PC
  %952 = add i64 %951, 4
  store i64 %952, i64* %PC
  %953 = inttoptr i64 %950 to i64*
  %954 = load i64, i64* %953
  store i64 %954, i64* %RAX, align 8, !tbaa !2428
  %955 = load i64, i64* %RBP
  %956 = sub i64 %955, 124
  %957 = load i64, i64* %PC
  %958 = add i64 %957, 4
  store i64 %958, i64* %PC
  %959 = inttoptr i64 %956 to i32*
  %960 = load i32, i32* %959
  %961 = sext i32 %960 to i64
  store i64 %961, i64* %RCX, align 8, !tbaa !2428
  %962 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %963 = load i64, i64* %RAX
  %964 = load i64, i64* %RCX
  %965 = mul i64 %964, 8
  %966 = add i64 %965, %963
  %967 = load i64, i64* %PC
  %968 = add i64 %967, 5
  store i64 %968, i64* %PC
  %969 = inttoptr i64 %966 to double*
  %970 = load double, double* %969
  %971 = bitcast i8* %962 to double*
  store double %970, double* %971, align 1, !tbaa !2452
  %972 = getelementptr inbounds i8, i8* %962, i64 8
  %973 = bitcast i8* %972 to double*
  store double 0.000000e+00, double* %973, align 1, !tbaa !2452
  %974 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %975 = load i64, i64* %RBP
  %976 = sub i64 %975, 40
  %977 = load i64, i64* %PC
  %978 = add i64 %977, 5
  store i64 %978, i64* %PC
  %979 = inttoptr i64 %976 to double*
  %980 = load double, double* %979
  %981 = bitcast i8* %974 to double*
  store double %980, double* %981, align 1, !tbaa !2452
  %982 = getelementptr inbounds i8, i8* %974, i64 8
  %983 = bitcast i8* %982 to double*
  store double 0.000000e+00, double* %983, align 1, !tbaa !2452
  %984 = load i64, i64* %RBP
  %985 = sub i64 %984, 56
  %986 = load i64, i64* %PC
  %987 = add i64 %986, 4
  store i64 %987, i64* %PC
  %988 = inttoptr i64 %985 to i64*
  %989 = load i64, i64* %988
  store i64 %989, i64* %RAX, align 8, !tbaa !2428
  %990 = load i64, i64* %RBP
  %991 = sub i64 %990, 128
  %992 = load i64, i64* %PC
  %993 = add i64 %992, 4
  store i64 %993, i64* %PC
  %994 = inttoptr i64 %991 to i32*
  %995 = load i32, i32* %994
  %996 = sext i32 %995 to i64
  store i64 %996, i64* %RCX, align 8, !tbaa !2428
  %997 = load i64, i64* %RCX
  %998 = load i64, i64* %PC
  %999 = add i64 %998, 7
  store i64 %999, i64* %PC
  %1000 = sext i64 %997 to i128
  %1001 = and i128 %1000, -18446744073709551616
  %1002 = zext i64 %997 to i128
  %1003 = or i128 %1001, %1002
  %1004 = mul nsw i128 32000, %1003
  %1005 = trunc i128 %1004 to i64
  store i64 %1005, i64* %RCX, align 8, !tbaa !2428
  %1006 = sext i64 %1005 to i128
  %1007 = icmp ne i128 %1006, %1004
  %1008 = zext i1 %1007 to i8
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1008, i8* %1009, align 1, !tbaa !2432
  %1010 = trunc i128 %1004 to i32
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1011, align 1, !tbaa !2446
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1012, align 1, !tbaa !2447
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1013, align 1, !tbaa !2448
  %1014 = lshr i64 %1005, 63
  %1015 = trunc i64 %1014 to i8
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1015, i8* %1016, align 1, !tbaa !2449
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1008, i8* %1017, align 1, !tbaa !2450
  %1018 = load i64, i64* %RAX
  %1019 = load i64, i64* %RCX
  %1020 = load i64, i64* %PC
  %1021 = add i64 %1020, 3
  store i64 %1021, i64* %PC
  %1022 = add i64 %1019, %1018
  store i64 %1022, i64* %RAX, align 8, !tbaa !2428
  %1023 = icmp ult i64 %1022, %1018
  %1024 = icmp ult i64 %1022, %1019
  %1025 = or i1 %1023, %1024
  %1026 = zext i1 %1025 to i8
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1026, i8* %1027, align 1, !tbaa !2432
  %1028 = trunc i64 %1022 to i32
  %1029 = and i32 %1028, 255
  %1030 = call i32 @llvm.ctpop.i32(i32 %1029) #16
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1033, i8* %1034, align 1, !tbaa !2446
  %1035 = xor i64 %1019, %1018
  %1036 = xor i64 %1035, %1022
  %1037 = lshr i64 %1036, 4
  %1038 = trunc i64 %1037 to i8
  %1039 = and i8 %1038, 1
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1039, i8* %1040, align 1, !tbaa !2447
  %1041 = icmp eq i64 %1022, 0
  %1042 = zext i1 %1041 to i8
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1042, i8* %1043, align 1, !tbaa !2448
  %1044 = lshr i64 %1022, 63
  %1045 = trunc i64 %1044 to i8
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1045, i8* %1046, align 1, !tbaa !2449
  %1047 = lshr i64 %1018, 63
  %1048 = lshr i64 %1019, 63
  %1049 = xor i64 %1044, %1047
  %1050 = xor i64 %1044, %1048
  %1051 = add nuw nsw i64 %1049, %1050
  %1052 = icmp eq i64 %1051, 2
  %1053 = zext i1 %1052 to i8
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1053, i8* %1054, align 1, !tbaa !2450
  %1055 = load i64, i64* %RBP
  %1056 = sub i64 %1055, 124
  %1057 = load i64, i64* %PC
  %1058 = add i64 %1057, 4
  store i64 %1058, i64* %PC
  %1059 = inttoptr i64 %1056 to i32*
  %1060 = load i32, i32* %1059
  %1061 = sext i32 %1060 to i64
  store i64 %1061, i64* %RCX, align 8, !tbaa !2428
  %1062 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1063 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1064 = load i64, i64* %RAX
  %1065 = load i64, i64* %RCX
  %1066 = mul i64 %1065, 8
  %1067 = add i64 %1066, %1064
  %1068 = load i64, i64* %PC
  %1069 = add i64 %1068, 5
  store i64 %1069, i64* %PC
  %1070 = bitcast i8* %1063 to double*
  %1071 = load double, double* %1070, align 1
  %1072 = getelementptr inbounds i8, i8* %1063, i64 8
  %1073 = bitcast i8* %1072 to i64*
  %1074 = load i64, i64* %1073, align 1
  %1075 = inttoptr i64 %1067 to double*
  %1076 = load double, double* %1075
  %1077 = fmul double %1071, %1076
  %1078 = bitcast i8* %1062 to double*
  store double %1077, double* %1078, align 1, !tbaa !2452
  %1079 = getelementptr inbounds i8, i8* %1062, i64 8
  %1080 = bitcast i8* %1079 to i64*
  store i64 %1074, i64* %1080, align 1, !tbaa !2452
  %1081 = load i64, i64* %RBP
  %1082 = sub i64 %1081, 112
  %1083 = load i64, i64* %PC
  %1084 = add i64 %1083, 4
  store i64 %1084, i64* %PC
  %1085 = inttoptr i64 %1082 to i64*
  %1086 = load i64, i64* %1085
  store i64 %1086, i64* %RAX, align 8, !tbaa !2428
  %1087 = load i64, i64* %RBP
  %1088 = sub i64 %1087, 128
  %1089 = load i64, i64* %PC
  %1090 = add i64 %1089, 4
  store i64 %1090, i64* %PC
  %1091 = inttoptr i64 %1088 to i32*
  %1092 = load i32, i32* %1091
  %1093 = sext i32 %1092 to i64
  store i64 %1093, i64* %RCX, align 8, !tbaa !2428
  %1094 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1095 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1096 = load i64, i64* %RAX
  %1097 = load i64, i64* %RCX
  %1098 = mul i64 %1097, 8
  %1099 = add i64 %1098, %1096
  %1100 = load i64, i64* %PC
  %1101 = add i64 %1100, 5
  store i64 %1101, i64* %PC
  %1102 = bitcast i8* %1095 to double*
  %1103 = load double, double* %1102, align 1
  %1104 = getelementptr inbounds i8, i8* %1095, i64 8
  %1105 = bitcast i8* %1104 to i64*
  %1106 = load i64, i64* %1105, align 1
  %1107 = inttoptr i64 %1099 to double*
  %1108 = load double, double* %1107
  %1109 = fmul double %1103, %1108
  %1110 = bitcast i8* %1094 to double*
  store double %1109, double* %1110, align 1, !tbaa !2452
  %1111 = getelementptr inbounds i8, i8* %1094, i64 8
  %1112 = bitcast i8* %1111 to i64*
  store i64 %1106, i64* %1112, align 1, !tbaa !2452
  %1113 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1114 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1115 = bitcast %union.vec128_t* %XMM1 to i8*
  %1116 = load i64, i64* %PC
  %1117 = add i64 %1116, 4
  store i64 %1117, i64* %PC
  %1118 = bitcast i8* %1114 to double*
  %1119 = load double, double* %1118, align 1
  %1120 = getelementptr inbounds i8, i8* %1114, i64 8
  %1121 = bitcast i8* %1120 to i64*
  %1122 = load i64, i64* %1121, align 1
  %1123 = bitcast i8* %1115 to double*
  %1124 = load double, double* %1123, align 1
  %1125 = fadd double %1119, %1124
  %1126 = bitcast i8* %1113 to double*
  store double %1125, double* %1126, align 1, !tbaa !2452
  %1127 = getelementptr inbounds i8, i8* %1113, i64 8
  %1128 = bitcast i8* %1127 to i64*
  store i64 %1122, i64* %1128, align 1, !tbaa !2452
  %1129 = load i64, i64* %RBP
  %1130 = sub i64 %1129, 104
  %1131 = load i64, i64* %PC
  %1132 = add i64 %1131, 4
  store i64 %1132, i64* %PC
  %1133 = inttoptr i64 %1130 to i64*
  %1134 = load i64, i64* %1133
  store i64 %1134, i64* %RAX, align 8, !tbaa !2428
  %1135 = load i64, i64* %RBP
  %1136 = sub i64 %1135, 124
  %1137 = load i64, i64* %PC
  %1138 = add i64 %1137, 4
  store i64 %1138, i64* %PC
  %1139 = inttoptr i64 %1136 to i32*
  %1140 = load i32, i32* %1139
  %1141 = sext i32 %1140 to i64
  store i64 %1141, i64* %RCX, align 8, !tbaa !2428
  %1142 = load i64, i64* %RAX
  %1143 = load i64, i64* %RCX
  %1144 = mul i64 %1143, 8
  %1145 = add i64 %1144, %1142
  %1146 = bitcast %union.vec128_t* %XMM0 to i8*
  %1147 = load i64, i64* %PC
  %1148 = add i64 %1147, 5
  store i64 %1148, i64* %PC
  %1149 = bitcast i8* %1146 to double*
  %1150 = load double, double* %1149, align 1
  %1151 = inttoptr i64 %1145 to double*
  store double %1150, double* %1151
  %1152 = load i64, i64* %RBP
  %1153 = sub i64 %1152, 128
  %1154 = load i64, i64* %PC
  %1155 = add i64 %1154, 3
  store i64 %1155, i64* %PC
  %1156 = inttoptr i64 %1153 to i32*
  %1157 = load i32, i32* %1156
  %1158 = zext i32 %1157 to i64
  store i64 %1158, i64* %RAX, align 8, !tbaa !2428
  %1159 = load i64, i64* %RAX
  %1160 = load i64, i64* %PC
  %1161 = add i64 %1160, 3
  store i64 %1161, i64* %PC
  %1162 = trunc i64 %1159 to i32
  %1163 = add i32 1, %1162
  %1164 = zext i32 %1163 to i64
  store i64 %1164, i64* %RAX, align 8, !tbaa !2428
  %1165 = icmp ult i32 %1163, %1162
  %1166 = icmp ult i32 %1163, 1
  %1167 = or i1 %1165, %1166
  %1168 = zext i1 %1167 to i8
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1168, i8* %1169, align 1, !tbaa !2432
  %1170 = and i32 %1163, 255
  %1171 = call i32 @llvm.ctpop.i32(i32 %1170) #16
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  %1174 = xor i8 %1173, 1
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1174, i8* %1175, align 1, !tbaa !2446
  %1176 = xor i64 1, %1159
  %1177 = trunc i64 %1176 to i32
  %1178 = xor i32 %1177, %1163
  %1179 = lshr i32 %1178, 4
  %1180 = trunc i32 %1179 to i8
  %1181 = and i8 %1180, 1
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1181, i8* %1182, align 1, !tbaa !2447
  %1183 = icmp eq i32 %1163, 0
  %1184 = zext i1 %1183 to i8
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1184, i8* %1185, align 1, !tbaa !2448
  %1186 = lshr i32 %1163, 31
  %1187 = trunc i32 %1186 to i8
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1187, i8* %1188, align 1, !tbaa !2449
  %1189 = lshr i32 %1162, 31
  %1190 = xor i32 %1186, %1189
  %1191 = add nuw nsw i32 %1190, %1186
  %1192 = icmp eq i32 %1191, 2
  %1193 = zext i1 %1192 to i8
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1193, i8* %1194, align 1, !tbaa !2450
  %1195 = load i64, i64* %RBP
  %1196 = sub i64 %1195, 128
  %1197 = load i32, i32* %EAX
  %1198 = zext i32 %1197 to i64
  %1199 = load i64, i64* %PC
  %1200 = add i64 %1199, 3
  store i64 %1200, i64* %PC
  %1201 = inttoptr i64 %1196 to i32*
  store i32 %1197, i32* %1201
  %1202 = load i64, i64* %PC
  %1203 = sub i64 %1202, 96
  %1204 = load i64, i64* %PC
  %1205 = add i64 %1204, 5
  store i64 %1205, i64* %PC
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1203, i64* %1206, align 8, !tbaa !2428
  br label %block_400ed3

block_400f9a:                                     ; preds = %block_401012, %block_400f93
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.0, %block_400f93 ], [ %MEMORY.2, %block_401012 ]
  %1207 = load i64, i64* %RBP
  %1208 = sub i64 %1207, 124
  %1209 = load i64, i64* %PC
  %1210 = add i64 %1209, 3
  store i64 %1210, i64* %PC
  %1211 = inttoptr i64 %1208 to i32*
  %1212 = load i32, i32* %1211
  %1213 = zext i32 %1212 to i64
  store i64 %1213, i64* %RAX, align 8, !tbaa !2428
  %1214 = load i32, i32* %EAX
  %1215 = zext i32 %1214 to i64
  %1216 = load i64, i64* %RBP
  %1217 = sub i64 %1216, 20
  %1218 = load i64, i64* %PC
  %1219 = add i64 %1218, 3
  store i64 %1219, i64* %PC
  %1220 = inttoptr i64 %1217 to i32*
  %1221 = load i32, i32* %1220
  %1222 = sub i32 %1214, %1221
  %1223 = icmp ult i32 %1214, %1221
  %1224 = zext i1 %1223 to i8
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1224, i8* %1225, align 1, !tbaa !2432
  %1226 = and i32 %1222, 255
  %1227 = call i32 @llvm.ctpop.i32(i32 %1226) #16
  %1228 = trunc i32 %1227 to i8
  %1229 = and i8 %1228, 1
  %1230 = xor i8 %1229, 1
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1230, i8* %1231, align 1, !tbaa !2446
  %1232 = xor i32 %1221, %1214
  %1233 = xor i32 %1232, %1222
  %1234 = lshr i32 %1233, 4
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1236, i8* %1237, align 1, !tbaa !2447
  %1238 = icmp eq i32 %1222, 0
  %1239 = zext i1 %1238 to i8
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1239, i8* %1240, align 1, !tbaa !2448
  %1241 = lshr i32 %1222, 31
  %1242 = trunc i32 %1241 to i8
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1242, i8* %1243, align 1, !tbaa !2449
  %1244 = lshr i32 %1214, 31
  %1245 = lshr i32 %1221, 31
  %1246 = xor i32 %1245, %1244
  %1247 = xor i32 %1241, %1244
  %1248 = add nuw nsw i32 %1247, %1246
  %1249 = icmp eq i32 %1248, 2
  %1250 = zext i1 %1249 to i8
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1250, i8* %1251, align 1, !tbaa !2450
  %1252 = load i64, i64* %PC
  %1253 = add i64 %1252, 133
  %1254 = load i64, i64* %PC
  %1255 = add i64 %1254, 6
  %1256 = load i64, i64* %PC
  %1257 = add i64 %1256, 6
  store i64 %1257, i64* %PC
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1259 = load i8, i8* %1258, align 1, !tbaa !2449
  %1260 = icmp ne i8 %1259, 0
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1262 = load i8, i8* %1261, align 1, !tbaa !2450
  %1263 = icmp ne i8 %1262, 0
  %1264 = xor i1 %1260, %1263
  %1265 = xor i1 %1264, true
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1268 = select i1 %1264, i64 %1255, i64 %1253
  store i64 %1268, i64* %1267, align 8, !tbaa !2428
  %1269 = load i8, i8* %BRANCH_TAKEN
  %1270 = icmp eq i8 %1269, 1
  br i1 %1270, label %block_401025, label %block_400fa6

block_400f38:                                     ; preds = %block_400ed3
  %1271 = load i64, i64* %PC
  %1272 = add i64 %1271, 5
  %1273 = load i64, i64* %PC
  %1274 = add i64 %1273, 5
  store i64 %1274, i64* %PC
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1272, i64* %1275, align 8, !tbaa !2428
  %1276 = load i64, i64* %RBP
  %1277 = sub i64 %1276, 124
  %1278 = load i64, i64* %PC
  %1279 = add i64 %1278, 3
  store i64 %1279, i64* %PC
  %1280 = inttoptr i64 %1277 to i32*
  %1281 = load i32, i32* %1280
  %1282 = zext i32 %1281 to i64
  store i64 %1282, i64* %RAX, align 8, !tbaa !2428
  %1283 = load i64, i64* %RAX
  %1284 = load i64, i64* %PC
  %1285 = add i64 %1284, 3
  store i64 %1285, i64* %PC
  %1286 = trunc i64 %1283 to i32
  %1287 = add i32 1, %1286
  %1288 = zext i32 %1287 to i64
  store i64 %1288, i64* %RAX, align 8, !tbaa !2428
  %1289 = icmp ult i32 %1287, %1286
  %1290 = icmp ult i32 %1287, 1
  %1291 = or i1 %1289, %1290
  %1292 = zext i1 %1291 to i8
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1292, i8* %1293, align 1, !tbaa !2432
  %1294 = and i32 %1287, 255
  %1295 = call i32 @llvm.ctpop.i32(i32 %1294) #16
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  %1298 = xor i8 %1297, 1
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1298, i8* %1299, align 1, !tbaa !2446
  %1300 = xor i64 1, %1283
  %1301 = trunc i64 %1300 to i32
  %1302 = xor i32 %1301, %1287
  %1303 = lshr i32 %1302, 4
  %1304 = trunc i32 %1303 to i8
  %1305 = and i8 %1304, 1
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1305, i8* %1306, align 1, !tbaa !2447
  %1307 = icmp eq i32 %1287, 0
  %1308 = zext i1 %1307 to i8
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1308, i8* %1309, align 1, !tbaa !2448
  %1310 = lshr i32 %1287, 31
  %1311 = trunc i32 %1310 to i8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1311, i8* %1312, align 1, !tbaa !2449
  %1313 = lshr i32 %1286, 31
  %1314 = xor i32 %1310, %1313
  %1315 = add nuw nsw i32 %1314, %1310
  %1316 = icmp eq i32 %1315, 2
  %1317 = zext i1 %1316 to i8
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1317, i8* %1318, align 1, !tbaa !2450
  %1319 = load i64, i64* %RBP
  %1320 = sub i64 %1319, 124
  %1321 = load i32, i32* %EAX
  %1322 = zext i32 %1321 to i64
  %1323 = load i64, i64* %PC
  %1324 = add i64 %1323, 3
  store i64 %1324, i64* %PC
  %1325 = inttoptr i64 %1320 to i32*
  store i32 %1321, i32* %1325
  %1326 = load i64, i64* %PC
  %1327 = sub i64 %1326, 150
  %1328 = load i64, i64* %PC
  %1329 = add i64 %1328, 5
  store i64 %1329, i64* %PC
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1327, i64* %1330, align 8, !tbaa !2428
  br label %block_400eb0

block_400e16:                                     ; preds = %block_400e0a
  %1331 = load i64, i64* %RBP
  %1332 = sub i64 %1331, 48
  %1333 = load i64, i64* %PC
  %1334 = add i64 %1333, 4
  store i64 %1334, i64* %PC
  %1335 = inttoptr i64 %1332 to i64*
  %1336 = load i64, i64* %1335
  store i64 %1336, i64* %RAX, align 8, !tbaa !2428
  %1337 = load i64, i64* %RBP
  %1338 = sub i64 %1337, 124
  %1339 = load i64, i64* %PC
  %1340 = add i64 %1339, 4
  store i64 %1340, i64* %PC
  %1341 = inttoptr i64 %1338 to i32*
  %1342 = load i32, i32* %1341
  %1343 = sext i32 %1342 to i64
  store i64 %1343, i64* %RCX, align 8, !tbaa !2428
  %1344 = load i64, i64* %RCX
  %1345 = load i64, i64* %PC
  %1346 = add i64 %1345, 7
  store i64 %1346, i64* %PC
  %1347 = sext i64 %1344 to i128
  %1348 = and i128 %1347, -18446744073709551616
  %1349 = zext i64 %1344 to i128
  %1350 = or i128 %1348, %1349
  %1351 = mul nsw i128 32000, %1350
  %1352 = trunc i128 %1351 to i64
  store i64 %1352, i64* %RCX, align 8, !tbaa !2428
  %1353 = sext i64 %1352 to i128
  %1354 = icmp ne i128 %1353, %1351
  %1355 = zext i1 %1354 to i8
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1355, i8* %1356, align 1, !tbaa !2432
  %1357 = trunc i128 %1351 to i32
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1358, align 1, !tbaa !2446
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1359, align 1, !tbaa !2447
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1360, align 1, !tbaa !2448
  %1361 = lshr i64 %1352, 63
  %1362 = trunc i64 %1361 to i8
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1362, i8* %1363, align 1, !tbaa !2449
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1355, i8* %1364, align 1, !tbaa !2450
  %1365 = load i64, i64* %RAX
  %1366 = load i64, i64* %RCX
  %1367 = load i64, i64* %PC
  %1368 = add i64 %1367, 3
  store i64 %1368, i64* %PC
  %1369 = add i64 %1366, %1365
  store i64 %1369, i64* %RAX, align 8, !tbaa !2428
  %1370 = icmp ult i64 %1369, %1365
  %1371 = icmp ult i64 %1369, %1366
  %1372 = or i1 %1370, %1371
  %1373 = zext i1 %1372 to i8
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1373, i8* %1374, align 1, !tbaa !2432
  %1375 = trunc i64 %1369 to i32
  %1376 = and i32 %1375, 255
  %1377 = call i32 @llvm.ctpop.i32(i32 %1376) #16
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  %1380 = xor i8 %1379, 1
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1380, i8* %1381, align 1, !tbaa !2446
  %1382 = xor i64 %1366, %1365
  %1383 = xor i64 %1382, %1369
  %1384 = lshr i64 %1383, 4
  %1385 = trunc i64 %1384 to i8
  %1386 = and i8 %1385, 1
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1386, i8* %1387, align 1, !tbaa !2447
  %1388 = icmp eq i64 %1369, 0
  %1389 = zext i1 %1388 to i8
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1389, i8* %1390, align 1, !tbaa !2448
  %1391 = lshr i64 %1369, 63
  %1392 = trunc i64 %1391 to i8
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1392, i8* %1393, align 1, !tbaa !2449
  %1394 = lshr i64 %1365, 63
  %1395 = lshr i64 %1366, 63
  %1396 = xor i64 %1391, %1394
  %1397 = xor i64 %1391, %1395
  %1398 = add nuw nsw i64 %1396, %1397
  %1399 = icmp eq i64 %1398, 2
  %1400 = zext i1 %1399 to i8
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1400, i8* %1401, align 1, !tbaa !2450
  %1402 = load i64, i64* %RBP
  %1403 = sub i64 %1402, 128
  %1404 = load i64, i64* %PC
  %1405 = add i64 %1404, 4
  store i64 %1405, i64* %PC
  %1406 = inttoptr i64 %1403 to i32*
  %1407 = load i32, i32* %1406
  %1408 = sext i32 %1407 to i64
  store i64 %1408, i64* %RCX, align 8, !tbaa !2428
  %1409 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1410 = load i64, i64* %RAX
  %1411 = load i64, i64* %RCX
  %1412 = mul i64 %1411, 8
  %1413 = add i64 %1412, %1410
  %1414 = load i64, i64* %PC
  %1415 = add i64 %1414, 5
  store i64 %1415, i64* %PC
  %1416 = inttoptr i64 %1413 to double*
  %1417 = load double, double* %1416
  %1418 = bitcast i8* %1409 to double*
  store double %1417, double* %1418, align 1, !tbaa !2452
  %1419 = getelementptr inbounds i8, i8* %1409, i64 8
  %1420 = bitcast i8* %1419 to double*
  store double 0.000000e+00, double* %1420, align 1, !tbaa !2452
  %1421 = load i64, i64* %RBP
  %1422 = sub i64 %1421, 64
  %1423 = load i64, i64* %PC
  %1424 = add i64 %1423, 4
  store i64 %1424, i64* %PC
  %1425 = inttoptr i64 %1422 to i64*
  %1426 = load i64, i64* %1425
  store i64 %1426, i64* %RAX, align 8, !tbaa !2428
  %1427 = load i64, i64* %RBP
  %1428 = sub i64 %1427, 124
  %1429 = load i64, i64* %PC
  %1430 = add i64 %1429, 4
  store i64 %1430, i64* %PC
  %1431 = inttoptr i64 %1428 to i32*
  %1432 = load i32, i32* %1431
  %1433 = sext i32 %1432 to i64
  store i64 %1433, i64* %RCX, align 8, !tbaa !2428
  %1434 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1435 = load i64, i64* %RAX
  %1436 = load i64, i64* %RCX
  %1437 = mul i64 %1436, 8
  %1438 = add i64 %1437, %1435
  %1439 = load i64, i64* %PC
  %1440 = add i64 %1439, 5
  store i64 %1440, i64* %PC
  %1441 = inttoptr i64 %1438 to double*
  %1442 = load double, double* %1441
  %1443 = bitcast i8* %1434 to double*
  store double %1442, double* %1443, align 1, !tbaa !2452
  %1444 = getelementptr inbounds i8, i8* %1434, i64 8
  %1445 = bitcast i8* %1444 to double*
  store double 0.000000e+00, double* %1445, align 1, !tbaa !2452
  %1446 = load i64, i64* %RBP
  %1447 = sub i64 %1446, 72
  %1448 = load i64, i64* %PC
  %1449 = add i64 %1448, 4
  store i64 %1449, i64* %PC
  %1450 = inttoptr i64 %1447 to i64*
  %1451 = load i64, i64* %1450
  store i64 %1451, i64* %RAX, align 8, !tbaa !2428
  %1452 = load i64, i64* %RBP
  %1453 = sub i64 %1452, 128
  %1454 = load i64, i64* %PC
  %1455 = add i64 %1454, 4
  store i64 %1455, i64* %PC
  %1456 = inttoptr i64 %1453 to i32*
  %1457 = load i32, i32* %1456
  %1458 = sext i32 %1457 to i64
  store i64 %1458, i64* %RCX, align 8, !tbaa !2428
  %1459 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1460 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1461 = load i64, i64* %RAX
  %1462 = load i64, i64* %RCX
  %1463 = mul i64 %1462, 8
  %1464 = add i64 %1463, %1461
  %1465 = load i64, i64* %PC
  %1466 = add i64 %1465, 5
  store i64 %1466, i64* %PC
  %1467 = bitcast i8* %1460 to double*
  %1468 = load double, double* %1467, align 1
  %1469 = getelementptr inbounds i8, i8* %1460, i64 8
  %1470 = bitcast i8* %1469 to i64*
  %1471 = load i64, i64* %1470, align 1
  %1472 = inttoptr i64 %1464 to double*
  %1473 = load double, double* %1472
  %1474 = fmul double %1468, %1473
  %1475 = bitcast i8* %1459 to double*
  store double %1474, double* %1475, align 1, !tbaa !2452
  %1476 = getelementptr inbounds i8, i8* %1459, i64 8
  %1477 = bitcast i8* %1476 to i64*
  store i64 %1471, i64* %1477, align 1, !tbaa !2452
  %1478 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1479 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1480 = bitcast %union.vec128_t* %XMM1 to i8*
  %1481 = load i64, i64* %PC
  %1482 = add i64 %1481, 4
  store i64 %1482, i64* %PC
  %1483 = bitcast i8* %1479 to double*
  %1484 = load double, double* %1483, align 1
  %1485 = getelementptr inbounds i8, i8* %1479, i64 8
  %1486 = bitcast i8* %1485 to i64*
  %1487 = load i64, i64* %1486, align 1
  %1488 = bitcast i8* %1480 to double*
  %1489 = load double, double* %1488, align 1
  %1490 = fadd double %1484, %1489
  %1491 = bitcast i8* %1478 to double*
  store double %1490, double* %1491, align 1, !tbaa !2452
  %1492 = getelementptr inbounds i8, i8* %1478, i64 8
  %1493 = bitcast i8* %1492 to i64*
  store i64 %1487, i64* %1493, align 1, !tbaa !2452
  %1494 = load i64, i64* %RBP
  %1495 = sub i64 %1494, 80
  %1496 = load i64, i64* %PC
  %1497 = add i64 %1496, 4
  store i64 %1497, i64* %PC
  %1498 = inttoptr i64 %1495 to i64*
  %1499 = load i64, i64* %1498
  store i64 %1499, i64* %RAX, align 8, !tbaa !2428
  %1500 = load i64, i64* %RBP
  %1501 = sub i64 %1500, 124
  %1502 = load i64, i64* %PC
  %1503 = add i64 %1502, 4
  store i64 %1503, i64* %PC
  %1504 = inttoptr i64 %1501 to i32*
  %1505 = load i32, i32* %1504
  %1506 = sext i32 %1505 to i64
  store i64 %1506, i64* %RCX, align 8, !tbaa !2428
  %1507 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1508 = load i64, i64* %RAX
  %1509 = load i64, i64* %RCX
  %1510 = mul i64 %1509, 8
  %1511 = add i64 %1510, %1508
  %1512 = load i64, i64* %PC
  %1513 = add i64 %1512, 5
  store i64 %1513, i64* %PC
  %1514 = inttoptr i64 %1511 to double*
  %1515 = load double, double* %1514
  %1516 = bitcast i8* %1507 to double*
  store double %1515, double* %1516, align 1, !tbaa !2452
  %1517 = getelementptr inbounds i8, i8* %1507, i64 8
  %1518 = bitcast i8* %1517 to double*
  store double 0.000000e+00, double* %1518, align 1, !tbaa !2452
  %1519 = load i64, i64* %RBP
  %1520 = sub i64 %1519, 88
  %1521 = load i64, i64* %PC
  %1522 = add i64 %1521, 4
  store i64 %1522, i64* %PC
  %1523 = inttoptr i64 %1520 to i64*
  %1524 = load i64, i64* %1523
  store i64 %1524, i64* %RAX, align 8, !tbaa !2428
  %1525 = load i64, i64* %RBP
  %1526 = sub i64 %1525, 128
  %1527 = load i64, i64* %PC
  %1528 = add i64 %1527, 4
  store i64 %1528, i64* %PC
  %1529 = inttoptr i64 %1526 to i32*
  %1530 = load i32, i32* %1529
  %1531 = sext i32 %1530 to i64
  store i64 %1531, i64* %RCX, align 8, !tbaa !2428
  %1532 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1533 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1534 = load i64, i64* %RAX
  %1535 = load i64, i64* %RCX
  %1536 = mul i64 %1535, 8
  %1537 = add i64 %1536, %1534
  %1538 = load i64, i64* %PC
  %1539 = add i64 %1538, 5
  store i64 %1539, i64* %PC
  %1540 = bitcast i8* %1533 to double*
  %1541 = load double, double* %1540, align 1
  %1542 = getelementptr inbounds i8, i8* %1533, i64 8
  %1543 = bitcast i8* %1542 to i64*
  %1544 = load i64, i64* %1543, align 1
  %1545 = inttoptr i64 %1537 to double*
  %1546 = load double, double* %1545
  %1547 = fmul double %1541, %1546
  %1548 = bitcast i8* %1532 to double*
  store double %1547, double* %1548, align 1, !tbaa !2452
  %1549 = getelementptr inbounds i8, i8* %1532, i64 8
  %1550 = bitcast i8* %1549 to i64*
  store i64 %1544, i64* %1550, align 1, !tbaa !2452
  %1551 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1552 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1553 = bitcast %union.vec128_t* %XMM1 to i8*
  %1554 = load i64, i64* %PC
  %1555 = add i64 %1554, 4
  store i64 %1555, i64* %PC
  %1556 = bitcast i8* %1552 to double*
  %1557 = load double, double* %1556, align 1
  %1558 = getelementptr inbounds i8, i8* %1552, i64 8
  %1559 = bitcast i8* %1558 to i64*
  %1560 = load i64, i64* %1559, align 1
  %1561 = bitcast i8* %1553 to double*
  %1562 = load double, double* %1561, align 1
  %1563 = fadd double %1557, %1562
  %1564 = bitcast i8* %1551 to double*
  store double %1563, double* %1564, align 1, !tbaa !2452
  %1565 = getelementptr inbounds i8, i8* %1551, i64 8
  %1566 = bitcast i8* %1565 to i64*
  store i64 %1560, i64* %1566, align 1, !tbaa !2452
  %1567 = load i64, i64* %RBP
  %1568 = sub i64 %1567, 56
  %1569 = load i64, i64* %PC
  %1570 = add i64 %1569, 4
  store i64 %1570, i64* %PC
  %1571 = inttoptr i64 %1568 to i64*
  %1572 = load i64, i64* %1571
  store i64 %1572, i64* %RAX, align 8, !tbaa !2428
  %1573 = load i64, i64* %RBP
  %1574 = sub i64 %1573, 124
  %1575 = load i64, i64* %PC
  %1576 = add i64 %1575, 4
  store i64 %1576, i64* %PC
  %1577 = inttoptr i64 %1574 to i32*
  %1578 = load i32, i32* %1577
  %1579 = sext i32 %1578 to i64
  store i64 %1579, i64* %RCX, align 8, !tbaa !2428
  %1580 = load i64, i64* %RCX
  %1581 = load i64, i64* %PC
  %1582 = add i64 %1581, 7
  store i64 %1582, i64* %PC
  %1583 = sext i64 %1580 to i128
  %1584 = and i128 %1583, -18446744073709551616
  %1585 = zext i64 %1580 to i128
  %1586 = or i128 %1584, %1585
  %1587 = mul nsw i128 32000, %1586
  %1588 = trunc i128 %1587 to i64
  store i64 %1588, i64* %RCX, align 8, !tbaa !2428
  %1589 = sext i64 %1588 to i128
  %1590 = icmp ne i128 %1589, %1587
  %1591 = zext i1 %1590 to i8
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1591, i8* %1592, align 1, !tbaa !2432
  %1593 = trunc i128 %1587 to i32
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1594, align 1, !tbaa !2446
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1595, align 1, !tbaa !2447
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1596, align 1, !tbaa !2448
  %1597 = lshr i64 %1588, 63
  %1598 = trunc i64 %1597 to i8
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1598, i8* %1599, align 1, !tbaa !2449
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1591, i8* %1600, align 1, !tbaa !2450
  %1601 = load i64, i64* %RAX
  %1602 = load i64, i64* %RCX
  %1603 = load i64, i64* %PC
  %1604 = add i64 %1603, 3
  store i64 %1604, i64* %PC
  %1605 = add i64 %1602, %1601
  store i64 %1605, i64* %RAX, align 8, !tbaa !2428
  %1606 = icmp ult i64 %1605, %1601
  %1607 = icmp ult i64 %1605, %1602
  %1608 = or i1 %1606, %1607
  %1609 = zext i1 %1608 to i8
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1609, i8* %1610, align 1, !tbaa !2432
  %1611 = trunc i64 %1605 to i32
  %1612 = and i32 %1611, 255
  %1613 = call i32 @llvm.ctpop.i32(i32 %1612) #16
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  %1616 = xor i8 %1615, 1
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1616, i8* %1617, align 1, !tbaa !2446
  %1618 = xor i64 %1602, %1601
  %1619 = xor i64 %1618, %1605
  %1620 = lshr i64 %1619, 4
  %1621 = trunc i64 %1620 to i8
  %1622 = and i8 %1621, 1
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1622, i8* %1623, align 1, !tbaa !2447
  %1624 = icmp eq i64 %1605, 0
  %1625 = zext i1 %1624 to i8
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1625, i8* %1626, align 1, !tbaa !2448
  %1627 = lshr i64 %1605, 63
  %1628 = trunc i64 %1627 to i8
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1628, i8* %1629, align 1, !tbaa !2449
  %1630 = lshr i64 %1601, 63
  %1631 = lshr i64 %1602, 63
  %1632 = xor i64 %1627, %1630
  %1633 = xor i64 %1627, %1631
  %1634 = add nuw nsw i64 %1632, %1633
  %1635 = icmp eq i64 %1634, 2
  %1636 = zext i1 %1635 to i8
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1636, i8* %1637, align 1, !tbaa !2450
  %1638 = load i64, i64* %RBP
  %1639 = sub i64 %1638, 128
  %1640 = load i64, i64* %PC
  %1641 = add i64 %1640, 4
  store i64 %1641, i64* %PC
  %1642 = inttoptr i64 %1639 to i32*
  %1643 = load i32, i32* %1642
  %1644 = sext i32 %1643 to i64
  store i64 %1644, i64* %RCX, align 8, !tbaa !2428
  %1645 = load i64, i64* %RAX
  %1646 = load i64, i64* %RCX
  %1647 = mul i64 %1646, 8
  %1648 = add i64 %1647, %1645
  %1649 = bitcast %union.vec128_t* %XMM0 to i8*
  %1650 = load i64, i64* %PC
  %1651 = add i64 %1650, 5
  store i64 %1651, i64* %PC
  %1652 = bitcast i8* %1649 to double*
  %1653 = load double, double* %1652, align 1
  %1654 = inttoptr i64 %1648 to double*
  store double %1653, double* %1654
  %1655 = load i64, i64* %RBP
  %1656 = sub i64 %1655, 128
  %1657 = load i64, i64* %PC
  %1658 = add i64 %1657, 3
  store i64 %1658, i64* %PC
  %1659 = inttoptr i64 %1656 to i32*
  %1660 = load i32, i32* %1659
  %1661 = zext i32 %1660 to i64
  store i64 %1661, i64* %RAX, align 8, !tbaa !2428
  %1662 = load i64, i64* %RAX
  %1663 = load i64, i64* %PC
  %1664 = add i64 %1663, 3
  store i64 %1664, i64* %PC
  %1665 = trunc i64 %1662 to i32
  %1666 = add i32 1, %1665
  %1667 = zext i32 %1666 to i64
  store i64 %1667, i64* %RAX, align 8, !tbaa !2428
  %1668 = icmp ult i32 %1666, %1665
  %1669 = icmp ult i32 %1666, 1
  %1670 = or i1 %1668, %1669
  %1671 = zext i1 %1670 to i8
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1671, i8* %1672, align 1, !tbaa !2432
  %1673 = and i32 %1666, 255
  %1674 = call i32 @llvm.ctpop.i32(i32 %1673) #16
  %1675 = trunc i32 %1674 to i8
  %1676 = and i8 %1675, 1
  %1677 = xor i8 %1676, 1
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1677, i8* %1678, align 1, !tbaa !2446
  %1679 = xor i64 1, %1662
  %1680 = trunc i64 %1679 to i32
  %1681 = xor i32 %1680, %1666
  %1682 = lshr i32 %1681, 4
  %1683 = trunc i32 %1682 to i8
  %1684 = and i8 %1683, 1
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1684, i8* %1685, align 1, !tbaa !2447
  %1686 = icmp eq i32 %1666, 0
  %1687 = zext i1 %1686 to i8
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1687, i8* %1688, align 1, !tbaa !2448
  %1689 = lshr i32 %1666, 31
  %1690 = trunc i32 %1689 to i8
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1690, i8* %1691, align 1, !tbaa !2449
  %1692 = lshr i32 %1665, 31
  %1693 = xor i32 %1689, %1692
  %1694 = add nuw nsw i32 %1693, %1689
  %1695 = icmp eq i32 %1694, 2
  %1696 = zext i1 %1695 to i8
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1696, i8* %1697, align 1, !tbaa !2450
  %1698 = load i64, i64* %RBP
  %1699 = sub i64 %1698, 128
  %1700 = load i32, i32* %EAX
  %1701 = zext i32 %1700 to i64
  %1702 = load i64, i64* %PC
  %1703 = add i64 %1702, 3
  store i64 %1703, i64* %PC
  %1704 = inttoptr i64 %1699 to i32*
  store i32 %1700, i32* %1704
  %1705 = load i64, i64* %PC
  %1706 = sub i64 %1705, 135
  %1707 = load i64, i64* %PC
  %1708 = add i64 %1707, 5
  store i64 %1708, i64* %PC
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1706, i64* %1709, align 8, !tbaa !2428
  br label %block_400e0a

block_400f93:                                     ; preds = %block_400f52
  %1710 = sub i64 %262, 124
  %1711 = load i64, i64* %PC
  %1712 = add i64 %1711, 7
  store i64 %1712, i64* %PC
  %1713 = inttoptr i64 %1710 to i32*
  store i32 0, i32* %1713
  br label %block_400f9a

block_400ed3:                                     ; preds = %block_400edf, %block_400ebc
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.1, %block_400ebc ], [ %MEMORY.5, %block_400edf ]
  %1714 = load i64, i64* %RBP
  %1715 = sub i64 %1714, 128
  %1716 = load i64, i64* %PC
  %1717 = add i64 %1716, 3
  store i64 %1717, i64* %PC
  %1718 = inttoptr i64 %1715 to i32*
  %1719 = load i32, i32* %1718
  %1720 = zext i32 %1719 to i64
  store i64 %1720, i64* %RAX, align 8, !tbaa !2428
  %1721 = load i32, i32* %EAX
  %1722 = zext i32 %1721 to i64
  %1723 = load i64, i64* %RBP
  %1724 = sub i64 %1723, 20
  %1725 = load i64, i64* %PC
  %1726 = add i64 %1725, 3
  store i64 %1726, i64* %PC
  %1727 = inttoptr i64 %1724 to i32*
  %1728 = load i32, i32* %1727
  %1729 = sub i32 %1721, %1728
  %1730 = icmp ult i32 %1721, %1728
  %1731 = zext i1 %1730 to i8
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1731, i8* %1732, align 1, !tbaa !2432
  %1733 = and i32 %1729, 255
  %1734 = call i32 @llvm.ctpop.i32(i32 %1733) #16
  %1735 = trunc i32 %1734 to i8
  %1736 = and i8 %1735, 1
  %1737 = xor i8 %1736, 1
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1737, i8* %1738, align 1, !tbaa !2446
  %1739 = xor i32 %1728, %1721
  %1740 = xor i32 %1739, %1729
  %1741 = lshr i32 %1740, 4
  %1742 = trunc i32 %1741 to i8
  %1743 = and i8 %1742, 1
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1743, i8* %1744, align 1, !tbaa !2447
  %1745 = icmp eq i32 %1729, 0
  %1746 = zext i1 %1745 to i8
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1746, i8* %1747, align 1, !tbaa !2448
  %1748 = lshr i32 %1729, 31
  %1749 = trunc i32 %1748 to i8
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1749, i8* %1750, align 1, !tbaa !2449
  %1751 = lshr i32 %1721, 31
  %1752 = lshr i32 %1728, 31
  %1753 = xor i32 %1752, %1751
  %1754 = xor i32 %1748, %1751
  %1755 = add nuw nsw i32 %1754, %1753
  %1756 = icmp eq i32 %1755, 2
  %1757 = zext i1 %1756 to i8
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1757, i8* %1758, align 1, !tbaa !2450
  %1759 = load i64, i64* %PC
  %1760 = add i64 %1759, 95
  %1761 = load i64, i64* %PC
  %1762 = add i64 %1761, 6
  %1763 = load i64, i64* %PC
  %1764 = add i64 %1763, 6
  store i64 %1764, i64* %PC
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1766 = load i8, i8* %1765, align 1, !tbaa !2449
  %1767 = icmp ne i8 %1766, 0
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1769 = load i8, i8* %1768, align 1, !tbaa !2450
  %1770 = icmp ne i8 %1769, 0
  %1771 = xor i1 %1767, %1770
  %1772 = xor i1 %1771, true
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1775 = select i1 %1771, i64 %1762, i64 %1760
  store i64 %1775, i64* %1774, align 8, !tbaa !2428
  %1776 = load i8, i8* %BRANCH_TAKEN
  %1777 = icmp eq i8 %1776, 1
  br i1 %1777, label %block_400f38, label %block_400edf

block_401012:                                     ; preds = %block_400fad
  %1778 = load i64, i64* %PC
  %1779 = add i64 %1778, 5
  %1780 = load i64, i64* %PC
  %1781 = add i64 %1780, 5
  store i64 %1781, i64* %PC
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1779, i64* %1782, align 8, !tbaa !2428
  %1783 = load i64, i64* %RBP
  %1784 = sub i64 %1783, 124
  %1785 = load i64, i64* %PC
  %1786 = add i64 %1785, 3
  store i64 %1786, i64* %PC
  %1787 = inttoptr i64 %1784 to i32*
  %1788 = load i32, i32* %1787
  %1789 = zext i32 %1788 to i64
  store i64 %1789, i64* %RAX, align 8, !tbaa !2428
  %1790 = load i64, i64* %RAX
  %1791 = load i64, i64* %PC
  %1792 = add i64 %1791, 3
  store i64 %1792, i64* %PC
  %1793 = trunc i64 %1790 to i32
  %1794 = add i32 1, %1793
  %1795 = zext i32 %1794 to i64
  store i64 %1795, i64* %RAX, align 8, !tbaa !2428
  %1796 = icmp ult i32 %1794, %1793
  %1797 = icmp ult i32 %1794, 1
  %1798 = or i1 %1796, %1797
  %1799 = zext i1 %1798 to i8
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1799, i8* %1800, align 1, !tbaa !2432
  %1801 = and i32 %1794, 255
  %1802 = call i32 @llvm.ctpop.i32(i32 %1801) #16
  %1803 = trunc i32 %1802 to i8
  %1804 = and i8 %1803, 1
  %1805 = xor i8 %1804, 1
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1805, i8* %1806, align 1, !tbaa !2446
  %1807 = xor i64 1, %1790
  %1808 = trunc i64 %1807 to i32
  %1809 = xor i32 %1808, %1794
  %1810 = lshr i32 %1809, 4
  %1811 = trunc i32 %1810 to i8
  %1812 = and i8 %1811, 1
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1812, i8* %1813, align 1, !tbaa !2447
  %1814 = icmp eq i32 %1794, 0
  %1815 = zext i1 %1814 to i8
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1815, i8* %1816, align 1, !tbaa !2448
  %1817 = lshr i32 %1794, 31
  %1818 = trunc i32 %1817 to i8
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1818, i8* %1819, align 1, !tbaa !2449
  %1820 = lshr i32 %1793, 31
  %1821 = xor i32 %1817, %1820
  %1822 = add nuw nsw i32 %1821, %1817
  %1823 = icmp eq i32 %1822, 2
  %1824 = zext i1 %1823 to i8
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1824, i8* %1825, align 1, !tbaa !2450
  %1826 = load i64, i64* %RBP
  %1827 = sub i64 %1826, 124
  %1828 = load i32, i32* %EAX
  %1829 = zext i32 %1828 to i64
  %1830 = load i64, i64* %PC
  %1831 = add i64 %1830, 3
  store i64 %1831, i64* %PC
  %1832 = inttoptr i64 %1827 to i32*
  store i32 %1828, i32* %1832
  %1833 = load i64, i64* %PC
  %1834 = sub i64 %1833, 134
  %1835 = load i64, i64* %PC
  %1836 = add i64 %1835, 5
  store i64 %1836, i64* %PC
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1834, i64* %1837, align 8, !tbaa !2428
  br label %block_400f9a

block_400e0a:                                     ; preds = %block_400e03, %block_400e16
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.3, %block_400e03 ], [ %MEMORY.6, %block_400e16 ]
  %1838 = load i64, i64* %RBP
  %1839 = sub i64 %1838, 128
  %1840 = load i64, i64* %PC
  %1841 = add i64 %1840, 3
  store i64 %1841, i64* %PC
  %1842 = inttoptr i64 %1839 to i32*
  %1843 = load i32, i32* %1842
  %1844 = zext i32 %1843 to i64
  store i64 %1844, i64* %RAX, align 8, !tbaa !2428
  %1845 = load i32, i32* %EAX
  %1846 = zext i32 %1845 to i64
  %1847 = load i64, i64* %RBP
  %1848 = sub i64 %1847, 20
  %1849 = load i64, i64* %PC
  %1850 = add i64 %1849, 3
  store i64 %1850, i64* %PC
  %1851 = inttoptr i64 %1848 to i32*
  %1852 = load i32, i32* %1851
  %1853 = sub i32 %1845, %1852
  %1854 = icmp ult i32 %1845, %1852
  %1855 = zext i1 %1854 to i8
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1855, i8* %1856, align 1, !tbaa !2432
  %1857 = and i32 %1853, 255
  %1858 = call i32 @llvm.ctpop.i32(i32 %1857) #16
  %1859 = trunc i32 %1858 to i8
  %1860 = and i8 %1859, 1
  %1861 = xor i8 %1860, 1
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1861, i8* %1862, align 1, !tbaa !2446
  %1863 = xor i32 %1852, %1845
  %1864 = xor i32 %1863, %1853
  %1865 = lshr i32 %1864, 4
  %1866 = trunc i32 %1865 to i8
  %1867 = and i8 %1866, 1
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1867, i8* %1868, align 1, !tbaa !2447
  %1869 = icmp eq i32 %1853, 0
  %1870 = zext i1 %1869 to i8
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1870, i8* %1871, align 1, !tbaa !2448
  %1872 = lshr i32 %1853, 31
  %1873 = trunc i32 %1872 to i8
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1873, i8* %1874, align 1, !tbaa !2449
  %1875 = lshr i32 %1845, 31
  %1876 = lshr i32 %1852, 31
  %1877 = xor i32 %1876, %1875
  %1878 = xor i32 %1872, %1875
  %1879 = add nuw nsw i32 %1878, %1877
  %1880 = icmp eq i32 %1879, 2
  %1881 = zext i1 %1880 to i8
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1881, i8* %1882, align 1, !tbaa !2450
  %1883 = load i64, i64* %PC
  %1884 = add i64 %1883, 134
  %1885 = load i64, i64* %PC
  %1886 = add i64 %1885, 6
  %1887 = load i64, i64* %PC
  %1888 = add i64 %1887, 6
  store i64 %1888, i64* %PC
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1890 = load i8, i8* %1889, align 1, !tbaa !2449
  %1891 = icmp ne i8 %1890, 0
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1893 = load i8, i8* %1892, align 1, !tbaa !2450
  %1894 = icmp ne i8 %1893, 0
  %1895 = xor i1 %1891, %1894
  %1896 = xor i1 %1895, true
  %1897 = zext i1 %1896 to i8
  store i8 %1897, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1899 = select i1 %1895, i64 %1886, i64 %1884
  store i64 %1899, i64* %1898, align 8, !tbaa !2428
  %1900 = load i8, i8* %BRANCH_TAKEN
  %1901 = icmp eq i8 %1900, 1
  br i1 %1901, label %block_400e96, label %block_400e16

block_400e96:                                     ; preds = %block_400e0a
  %1902 = load i64, i64* %PC
  %1903 = add i64 %1902, 5
  %1904 = load i64, i64* %PC
  %1905 = add i64 %1904, 5
  store i64 %1905, i64* %PC
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1903, i64* %1906, align 8, !tbaa !2428
  %1907 = load i64, i64* %RBP
  %1908 = sub i64 %1907, 124
  %1909 = load i64, i64* %PC
  %1910 = add i64 %1909, 3
  store i64 %1910, i64* %PC
  %1911 = inttoptr i64 %1908 to i32*
  %1912 = load i32, i32* %1911
  %1913 = zext i32 %1912 to i64
  store i64 %1913, i64* %RAX, align 8, !tbaa !2428
  %1914 = load i64, i64* %RAX
  %1915 = load i64, i64* %PC
  %1916 = add i64 %1915, 3
  store i64 %1916, i64* %PC
  %1917 = trunc i64 %1914 to i32
  %1918 = add i32 1, %1917
  %1919 = zext i32 %1918 to i64
  store i64 %1919, i64* %RAX, align 8, !tbaa !2428
  %1920 = icmp ult i32 %1918, %1917
  %1921 = icmp ult i32 %1918, 1
  %1922 = or i1 %1920, %1921
  %1923 = zext i1 %1922 to i8
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1923, i8* %1924, align 1, !tbaa !2432
  %1925 = and i32 %1918, 255
  %1926 = call i32 @llvm.ctpop.i32(i32 %1925) #16
  %1927 = trunc i32 %1926 to i8
  %1928 = and i8 %1927, 1
  %1929 = xor i8 %1928, 1
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1929, i8* %1930, align 1, !tbaa !2446
  %1931 = xor i64 1, %1914
  %1932 = trunc i64 %1931 to i32
  %1933 = xor i32 %1932, %1918
  %1934 = lshr i32 %1933, 4
  %1935 = trunc i32 %1934 to i8
  %1936 = and i8 %1935, 1
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1936, i8* %1937, align 1, !tbaa !2447
  %1938 = icmp eq i32 %1918, 0
  %1939 = zext i1 %1938 to i8
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1939, i8* %1940, align 1, !tbaa !2448
  %1941 = lshr i32 %1918, 31
  %1942 = trunc i32 %1941 to i8
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1942, i8* %1943, align 1, !tbaa !2449
  %1944 = lshr i32 %1917, 31
  %1945 = xor i32 %1941, %1944
  %1946 = add nuw nsw i32 %1945, %1941
  %1947 = icmp eq i32 %1946, 2
  %1948 = zext i1 %1947 to i8
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1948, i8* %1949, align 1, !tbaa !2450
  %1950 = load i64, i64* %RBP
  %1951 = sub i64 %1950, 124
  %1952 = load i32, i32* %EAX
  %1953 = zext i32 %1952 to i64
  %1954 = load i64, i64* %PC
  %1955 = add i64 %1954, 3
  store i64 %1955, i64* %PC
  %1956 = inttoptr i64 %1951 to i32*
  store i32 %1952, i32* %1956
  %1957 = load i64, i64* %PC
  %1958 = sub i64 %1957, 173
  %1959 = load i64, i64* %PC
  %1960 = add i64 %1959, 5
  store i64 %1960, i64* %PC
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1958, i64* %1961, align 8, !tbaa !2428
  br label %block_400df7

block_400e03:                                     ; preds = %block_400df7
  %1962 = sub i64 %948, 128
  %1963 = load i64, i64* %PC
  %1964 = add i64 %1963, 7
  store i64 %1964, i64* %PC
  %1965 = inttoptr i64 %1962 to i32*
  store i32 0, i32* %1965
  br label %block_400e0a
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007b0_polybench_timer_print(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4007b0:
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
  store i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 96), i64* %RDI, align 8, !tbaa !2428
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
  %92 = sub i64 %91, 582
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
  %103 = call %struct.Memory* @ext_400590_printf(%struct.State* %0, i64 %102, %struct.Memory* %2)
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
define %struct.Memory* @sub_400790_polybench_timer_stop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400790:
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
  %36 = call %struct.Memory* @sub_400780_rtclock(%struct.State* %0, i64 %35, %struct.Memory* %2)
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
define %struct.Memory* @sub_400690___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400690:
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
  br i1 %47, label %block_4006b0, label %block_400699

block_4006b0:                                     ; preds = %block_400690
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

block_400699:                                     ; preds = %block_400690
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
  %78 = call %struct.Memory* @sub_400620_deregister_tm_clones(%struct.State* %0, i64 %77, %struct.Memory* %2)
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 8) to i8*)
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
define %struct.Memory* @sub_400650_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400650:
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
  store i64 6299736, i64* %RSI, align 8, !tbaa !2428
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
  %39 = sub i64 %36, 6299736
  store i64 %39, i64* %RSI, align 8, !tbaa !2428
  %40 = icmp ult i64 %36, 6299736
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
  %50 = xor i64 6299736, %36
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
  br i1 %189, label %block_400688, label %block_400673

block_40067d:                                     ; preds = %block_400673
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
  %198 = add i64 %197, 5
  store i64 %198, i64* %PC
  store i64 6299736, i64* %RDI, align 8, !tbaa !2428
  %199 = load i64, i64* %RAX
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 2
  store i64 %201, i64* %PC
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %199, i64* %202, align 8, !tbaa !2428
  %203 = load i64, i64* %PC
  switch i64 %203, label %269 [
    i64 4195978, label %block_40068a
    i64 4195973, label %block_400685
  ]

block_40068a:                                     ; preds = %block_40067d
  %204 = load i64, i64* %RAX
  %205 = load i64, i64* %RAX
  %206 = add i64 %205, %204
  %207 = load i16, i16* %AX
  %208 = zext i16 %207 to i64
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 6
  store i64 %210, i64* %PC
  %211 = load i64, i64* %PC
  %212 = tail call %struct.Memory* @sub_400690___do_global_dtors_aux(%struct.State* %0, i64 %211, %struct.Memory* %2)
  ret %struct.Memory* %212

block_400673:                                     ; preds = %block_400650
  %213 = load i64, i64* %PC
  %214 = add i64 %213, 5
  store i64 %214, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !2428
  %215 = load i64, i64* %RAX
  %216 = load i64, i64* %RAX
  %217 = load i64, i64* %PC
  %218 = add i64 %217, 3
  store i64 %218, i64* %PC
  %219 = and i64 %216, %215
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %220, align 1, !tbaa !2432
  %221 = trunc i64 %219 to i32
  %222 = and i32 %221, 255
  %223 = call i32 @llvm.ctpop.i32(i32 %222) #16
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %226, i8* %227, align 1, !tbaa !2446
  %228 = icmp eq i64 %219, 0
  %229 = zext i1 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %229, i8* %230, align 1, !tbaa !2448
  %231 = lshr i64 %219, 63
  %232 = trunc i64 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %232, i8* %233, align 1, !tbaa !2449
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %234, align 1, !tbaa !2450
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %235, align 1, !tbaa !2447
  %236 = load i64, i64* %PC
  %237 = add i64 %236, 13
  %238 = load i64, i64* %PC
  %239 = add i64 %238, 2
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 2
  store i64 %241, i64* %PC
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %243 = load i8, i8* %242, align 1, !tbaa !2448
  store i8 %243, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %245 = icmp ne i8 %243, 0
  %246 = select i1 %245, i64 %237, i64 %239
  store i64 %246, i64* %244, align 8, !tbaa !2428
  %247 = load i8, i8* %BRANCH_TAKEN
  %248 = icmp eq i8 %247, 1
  br i1 %248, label %block_400688, label %block_40067d

block_400688:                                     ; preds = %block_400685, %block_400673, %block_400650
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400650 ], [ %2, %block_400673 ], [ %2, %block_400685 ]
  %249 = load i64, i64* %PC
  %250 = add i64 %249, 1
  store i64 %250, i64* %PC
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %252 = load i64, i64* %251, align 8, !tbaa !2428
  %253 = add i64 %252, 8
  %254 = inttoptr i64 %252 to i64*
  %255 = load i64, i64* %254
  store i64 %255, i64* %RBP, align 8, !tbaa !2428
  store i64 %253, i64* %251, align 8, !tbaa !2428
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 1
  store i64 %257, i64* %PC
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %260 = load i64, i64* %259, align 8, !tbaa !2428
  %261 = inttoptr i64 %260 to i64*
  %262 = load i64, i64* %261
  store i64 %262, i64* %258, align 8, !tbaa !2428
  %263 = add i64 %260, 8
  store i64 %263, i64* %259, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400685:                                     ; preds = %block_40067d
  %264 = load i64, i64* %RAX
  %265 = load i32, i32* %EAX
  %266 = zext i32 %265 to i64
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 3
  store i64 %268, i64* %PC
  br label %block_400688

; <label>:269:                                    ; preds = %block_40067d
  %270 = load i64, i64* %PC
  %271 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %270, %struct.Memory* %2)
  ret %struct.Memory* %271
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006d0_polybench_flush_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006d0:
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
  %93 = sub i64 %92, 330
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
  br label %block_400702

block_40070e:                                     ; preds = %block_400702
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
  br label %block_400702

block_400733:                                     ; preds = %block_400702
  %253 = load i64, i64* %RAX
  %254 = load i64, i64* %PC
  %255 = add i64 %254, 3
  store i64 %255, i64* %PC
  store i64 %253, i64* %RDI, align 8, !tbaa !2428
  %256 = load i64, i64* %PC
  %257 = sub i64 %256, 442
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
  %268 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %267, %struct.Memory* %MEMORY.0)
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

block_400702:                                     ; preds = %block_40070e, %block_4006d0
  %MEMORY.0 = phi %struct.Memory* [ %104, %block_4006d0 ], [ %MEMORY.0, %block_40070e ]
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
  br i1 %381, label %block_400733, label %block_40070e
}

; Function Attrs: noinline
define %struct.Memory* @sub_4014c4__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4014c4:
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
define %struct.Memory* @sub_401450___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401450:
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
  %200 = sub i64 %199, 3884
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
  %211 = call %struct.Memory* @sub_400550__init_proc(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  br i1 %245, label %block_4014a6, label %block_401486

block_4014a6:                                     ; preds = %block_401490, %block_401450
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_401450 ], [ %387, %block_401490 ]
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

block_401486:                                     ; preds = %block_401450
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
  br label %block_401490

block_401490:                                     ; preds = %block_401490, %block_401486
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_401486 ], [ %387, %block_401490 ]
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
  br i1 %470, label %block_401490, label %block_4014a6
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005e0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005e0:
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
  store i64 ptrtoint (void ()* @callback_sub_4014c0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_401450___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
  %123 = call %struct.Memory* @ext_6020e8___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
define %struct.Memory* @sub_400610__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400610:
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
define %struct.Memory* @sub_4014c0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4014c0:
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
define %struct.Memory* @sub_400bb0_init_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EDX = bitcast %union.anon* %11 to i32*
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
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 21
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %R10 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 23
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R11 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 29
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %R14 = bitcast %union.anon* %50 to i64*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 31
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %R15 = bitcast %union.anon* %53 to i64*
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %55 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %54, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %55 to %"class.std::bitset"*
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %57 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %56, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %57 to %"class.std::bitset"*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %59 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %58, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %59 to %"class.std::bitset"*
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %61 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %60, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %61 to %"class.std::bitset"*
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %63 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %62, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %63 to %"class.std::bitset"*
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %65 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %64, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %65 to %"class.std::bitset"*
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %67 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %66, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %67 to %"class.std::bitset"*
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %69 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %68, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %69 to %union.vec128_t*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %71 to %union.vec128_t*
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %73 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %72, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %73 to %union.vec128_t*
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %75 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %74, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %75 to %union.vec128_t*
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %77 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %76, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %77 to %union.vec128_t*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %79 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %78, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %79 to %union.vec128_t*
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %81 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %80, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %81 to %union.vec128_t*
  %82 = load i64, i64* %RBP
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 1
  store i64 %84, i64* %PC
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %86 = load i64, i64* %85, align 8, !tbaa !2428
  %87 = add i64 %86, -8
  %88 = inttoptr i64 %87 to i64*
  store i64 %82, i64* %88
  store i64 %87, i64* %85, align 8, !tbaa !2428
  %89 = load i64, i64* %RSP
  %90 = load i64, i64* %PC
  %91 = add i64 %90, 3
  store i64 %91, i64* %PC
  store i64 %89, i64* %RBP, align 8, !tbaa !2428
  %92 = load i64, i64* %R15
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 2
  store i64 %94, i64* %PC
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %96 = load i64, i64* %95, align 8, !tbaa !2428
  %97 = add i64 %96, -8
  %98 = inttoptr i64 %97 to i64*
  store i64 %92, i64* %98
  store i64 %97, i64* %95, align 8, !tbaa !2428
  %99 = load i64, i64* %R14
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 2
  store i64 %101, i64* %PC
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %103 = load i64, i64* %102, align 8, !tbaa !2428
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %99, i64* %105
  store i64 %104, i64* %102, align 8, !tbaa !2428
  %106 = load i64, i64* %RBX
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 1
  store i64 %108, i64* %PC
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %110 = load i64, i64* %109, align 8, !tbaa !2428
  %111 = add i64 %110, -8
  %112 = inttoptr i64 %111 to i64*
  store i64 %106, i64* %112
  store i64 %111, i64* %109, align 8, !tbaa !2428
  %113 = load i64, i64* %RBP
  %114 = add i64 %113, 56
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 4
  store i64 %116, i64* %PC
  %117 = inttoptr i64 %114 to i64*
  %118 = load i64, i64* %117
  store i64 %118, i64* %RAX, align 8, !tbaa !2428
  %119 = load i64, i64* %RBP
  %120 = add i64 %119, 48
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 4
  store i64 %122, i64* %PC
  %123 = inttoptr i64 %120 to i64*
  %124 = load i64, i64* %123
  store i64 %124, i64* %R10, align 8, !tbaa !2428
  %125 = load i64, i64* %RBP
  %126 = add i64 %125, 40
  %127 = load i64, i64* %PC
  %128 = add i64 %127, 4
  store i64 %128, i64* %PC
  %129 = inttoptr i64 %126 to i64*
  %130 = load i64, i64* %129
  store i64 %130, i64* %R11, align 8, !tbaa !2428
  %131 = load i64, i64* %RBP
  %132 = add i64 %131, 32
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 4
  store i64 %134, i64* %PC
  %135 = inttoptr i64 %132 to i64*
  %136 = load i64, i64* %135
  store i64 %136, i64* %RBX, align 8, !tbaa !2428
  %137 = load i64, i64* %RBP
  %138 = add i64 %137, 24
  %139 = load i64, i64* %PC
  %140 = add i64 %139, 4
  store i64 %140, i64* %PC
  %141 = inttoptr i64 %138 to i64*
  %142 = load i64, i64* %141
  store i64 %142, i64* %R14, align 8, !tbaa !2428
  %143 = load i64, i64* %RBP
  %144 = add i64 %143, 16
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 4
  store i64 %146, i64* %PC
  %147 = inttoptr i64 %144 to i64*
  %148 = load i64, i64* %147
  store i64 %148, i64* %R15, align 8, !tbaa !2428
  %149 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %150 = load i64, i64* %PC
  %151 = add i64 %150, 8
  store i64 %151, i64* %PC
  %152 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 8) to double*)
  %153 = bitcast i8* %149 to double*
  store double %152, double* %153, align 1, !tbaa !2452
  %154 = getelementptr inbounds i8, i8* %149, i64 8
  %155 = bitcast i8* %154 to double*
  store double 0.000000e+00, double* %155, align 1, !tbaa !2452
  %156 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %157 = load i64, i64* %PC
  %158 = add i64 %157, 8
  store i64 %158, i64* %PC
  %159 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 16) to double*)
  %160 = bitcast i8* %156 to double*
  store double %159, double* %160, align 1, !tbaa !2452
  %161 = getelementptr inbounds i8, i8* %156, i64 8
  %162 = bitcast i8* %161 to double*
  store double 0.000000e+00, double* %162, align 1, !tbaa !2452
  %163 = load i64, i64* %RBP
  %164 = sub i64 %163, 28
  %165 = load i32, i32* %EDI
  %166 = zext i32 %165 to i64
  %167 = load i64, i64* %PC
  %168 = add i64 %167, 3
  store i64 %168, i64* %PC
  %169 = inttoptr i64 %164 to i32*
  store i32 %165, i32* %169
  %170 = load i64, i64* %RBP
  %171 = sub i64 %170, 40
  %172 = load i64, i64* %RSI
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 4
  store i64 %174, i64* %PC
  %175 = inttoptr i64 %171 to i64*
  store i64 %172, i64* %175
  %176 = load i64, i64* %RBP
  %177 = sub i64 %176, 48
  %178 = load i64, i64* %RDX
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 4
  store i64 %180, i64* %PC
  %181 = inttoptr i64 %177 to i64*
  store i64 %178, i64* %181
  %182 = load i64, i64* %RBP
  %183 = sub i64 %182, 56
  %184 = load i64, i64* %RCX
  %185 = load i64, i64* %PC
  %186 = add i64 %185, 4
  store i64 %186, i64* %PC
  %187 = inttoptr i64 %183 to i64*
  store i64 %184, i64* %187
  %188 = load i64, i64* %RBP
  %189 = sub i64 %188, 64
  %190 = load i64, i64* %R8
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 4
  store i64 %192, i64* %PC
  %193 = inttoptr i64 %189 to i64*
  store i64 %190, i64* %193
  %194 = load i64, i64* %RBP
  %195 = sub i64 %194, 72
  %196 = load i64, i64* %R9
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 4
  store i64 %198, i64* %PC
  %199 = inttoptr i64 %195 to i64*
  store i64 %196, i64* %199
  %200 = load i64, i64* %RBP
  %201 = sub i64 %200, 80
  %202 = load i64, i64* %R15
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 4
  store i64 %204, i64* %PC
  %205 = inttoptr i64 %201 to i64*
  store i64 %202, i64* %205
  %206 = load i64, i64* %RBP
  %207 = sub i64 %206, 88
  %208 = load i64, i64* %R14
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 4
  store i64 %210, i64* %PC
  %211 = inttoptr i64 %207 to i64*
  store i64 %208, i64* %211
  %212 = load i64, i64* %RBP
  %213 = sub i64 %212, 96
  %214 = load i64, i64* %RBX
  %215 = load i64, i64* %PC
  %216 = add i64 %215, 4
  store i64 %216, i64* %PC
  %217 = inttoptr i64 %213 to i64*
  store i64 %214, i64* %217
  %218 = load i64, i64* %RBP
  %219 = sub i64 %218, 104
  %220 = load i64, i64* %R11
  %221 = load i64, i64* %PC
  %222 = add i64 %221, 4
  store i64 %222, i64* %PC
  %223 = inttoptr i64 %219 to i64*
  store i64 %220, i64* %223
  %224 = load i64, i64* %RBP
  %225 = sub i64 %224, 112
  %226 = load i64, i64* %R10
  %227 = load i64, i64* %PC
  %228 = add i64 %227, 4
  store i64 %228, i64* %PC
  %229 = inttoptr i64 %225 to i64*
  store i64 %226, i64* %229
  %230 = load i64, i64* %RBP
  %231 = sub i64 %230, 120
  %232 = load i64, i64* %RAX
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 4
  store i64 %234, i64* %PC
  %235 = inttoptr i64 %231 to i64*
  store i64 %232, i64* %235
  %236 = load i64, i64* %RBP
  %237 = sub i64 %236, 40
  %238 = load i64, i64* %PC
  %239 = add i64 %238, 4
  store i64 %239, i64* %PC
  %240 = inttoptr i64 %237 to i64*
  %241 = load i64, i64* %240
  store i64 %241, i64* %RAX, align 8, !tbaa !2428
  %242 = load i64, i64* %RAX
  %243 = bitcast %union.vec128_t* %XMM1 to i8*
  %244 = load i64, i64* %PC
  %245 = add i64 %244, 4
  store i64 %245, i64* %PC
  %246 = bitcast i8* %243 to double*
  %247 = load double, double* %246, align 1
  %248 = inttoptr i64 %242 to double*
  store double %247, double* %248
  %249 = load i64, i64* %RBP
  %250 = sub i64 %249, 48
  %251 = load i64, i64* %PC
  %252 = add i64 %251, 4
  store i64 %252, i64* %PC
  %253 = inttoptr i64 %250 to i64*
  %254 = load i64, i64* %253
  store i64 %254, i64* %RAX, align 8, !tbaa !2428
  %255 = load i64, i64* %RAX
  %256 = bitcast %union.vec128_t* %XMM0 to i8*
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 4
  store i64 %258, i64* %PC
  %259 = bitcast i8* %256 to double*
  %260 = load double, double* %259, align 1
  %261 = inttoptr i64 %255 to double*
  store double %260, double* %261
  %262 = load i64, i64* %RBP
  %263 = sub i64 %262, 124
  %264 = load i64, i64* %PC
  %265 = add i64 %264, 7
  store i64 %265, i64* %PC
  %266 = inttoptr i64 %263 to i32*
  store i32 0, i32* %266
  br label %block_400c27

block_400d7a:                                     ; preds = %block_400d2e
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 5
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 5
  store i64 %270, i64* %PC
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %268, i64* %271, align 8, !tbaa !2428
  %272 = load i64, i64* %RBP
  %273 = sub i64 %272, 124
  %274 = load i64, i64* %PC
  %275 = add i64 %274, 3
  store i64 %275, i64* %PC
  %276 = inttoptr i64 %273 to i32*
  %277 = load i32, i32* %276
  %278 = zext i32 %277 to i64
  store i64 %278, i64* %RAX, align 8, !tbaa !2428
  %279 = load i64, i64* %RAX
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 3
  store i64 %281, i64* %PC
  %282 = trunc i64 %279 to i32
  %283 = add i32 1, %282
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RAX, align 8, !tbaa !2428
  %285 = icmp ult i32 %283, %282
  %286 = icmp ult i32 %283, 1
  %287 = or i1 %285, %286
  %288 = zext i1 %287 to i8
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %288, i8* %289, align 1, !tbaa !2432
  %290 = and i32 %283, 255
  %291 = call i32 @llvm.ctpop.i32(i32 %290) #16
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = xor i8 %293, 1
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %294, i8* %295, align 1, !tbaa !2446
  %296 = xor i64 1, %279
  %297 = trunc i64 %296 to i32
  %298 = xor i32 %297, %283
  %299 = lshr i32 %298, 4
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %301, i8* %302, align 1, !tbaa !2447
  %303 = icmp eq i32 %283, 0
  %304 = zext i1 %303 to i8
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %304, i8* %305, align 1, !tbaa !2448
  %306 = lshr i32 %283, 31
  %307 = trunc i32 %306 to i8
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %307, i8* %308, align 1, !tbaa !2449
  %309 = lshr i32 %282, 31
  %310 = xor i32 %306, %309
  %311 = add nuw nsw i32 %310, %306
  %312 = icmp eq i32 %311, 2
  %313 = zext i1 %312 to i8
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %313, i8* %314, align 1, !tbaa !2450
  %315 = load i64, i64* %RBP
  %316 = sub i64 %315, 124
  %317 = load i32, i32* %EAX
  %318 = zext i32 %317 to i64
  %319 = load i64, i64* %PC
  %320 = add i64 %319, 3
  store i64 %320, i64* %PC
  %321 = inttoptr i64 %316 to i32*
  store i32 %317, i32* %321
  %322 = load i64, i64* %PC
  %323 = sub i64 %322, 353
  %324 = load i64, i64* %PC
  %325 = add i64 %324, 5
  store i64 %325, i64* %PC
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %323, i64* %326, align 8, !tbaa !2428
  br label %block_400c27

block_400c33:                                     ; preds = %block_400c27
  %327 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %328 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %329 = bitcast %union.vec128_t* %XMM0 to i8*
  %330 = load i64, i64* %PC
  %331 = add i64 %330, 3
  store i64 %331, i64* %PC
  %332 = bitcast i8* %328 to i64*
  %333 = load i64, i64* %332, align 1
  %334 = getelementptr inbounds i8, i8* %328, i64 8
  %335 = bitcast i8* %334 to i64*
  %336 = load i64, i64* %335, align 1
  %337 = bitcast i8* %329 to i64*
  %338 = load i64, i64* %337, align 1
  %339 = getelementptr inbounds i8, i8* %329, i64 8
  %340 = bitcast i8* %339 to i64*
  %341 = load i64, i64* %340, align 1
  %342 = xor i64 %338, %333
  %343 = xor i64 %341, %336
  %344 = trunc i64 %342 to i32
  %345 = lshr i64 %342, 32
  %346 = trunc i64 %345 to i32
  %347 = bitcast i8* %327 to i32*
  store i32 %344, i32* %347, align 1, !tbaa !2454
  %348 = getelementptr inbounds i8, i8* %327, i64 4
  %349 = bitcast i8* %348 to i32*
  store i32 %346, i32* %349, align 1, !tbaa !2454
  %350 = trunc i64 %343 to i32
  %351 = getelementptr inbounds i8, i8* %327, i64 8
  %352 = bitcast i8* %351 to i32*
  store i32 %350, i32* %352, align 1, !tbaa !2454
  %353 = lshr i64 %343, 32
  %354 = trunc i64 %353 to i32
  %355 = getelementptr inbounds i8, i8* %327, i64 12
  %356 = bitcast i8* %355 to i32*
  store i32 %354, i32* %356, align 1, !tbaa !2454
  %357 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %358 = load i64, i64* %PC
  %359 = add i64 %358, 8
  store i64 %359, i64* %PC
  %360 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 24) to double*)
  %361 = bitcast i8* %357 to double*
  store double %360, double* %361, align 1, !tbaa !2452
  %362 = getelementptr inbounds i8, i8* %357, i64 8
  %363 = bitcast i8* %362 to double*
  store double 0.000000e+00, double* %363, align 1, !tbaa !2452
  %364 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %365 = load i64, i64* %PC
  %366 = add i64 %365, 8
  store i64 %366, i64* %PC
  %367 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 32) to double*)
  %368 = bitcast i8* %364 to double*
  store double %367, double* %368, align 1, !tbaa !2452
  %369 = getelementptr inbounds i8, i8* %364, i64 8
  %370 = bitcast i8* %369 to double*
  store double 0.000000e+00, double* %370, align 1, !tbaa !2452
  %371 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %372 = load i64, i64* %PC
  %373 = add i64 %372, 8
  store i64 %373, i64* %PC
  %374 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 40) to double*)
  %375 = bitcast i8* %371 to double*
  store double %374, double* %375, align 1, !tbaa !2452
  %376 = getelementptr inbounds i8, i8* %371, i64 8
  %377 = bitcast i8* %376 to double*
  store double 0.000000e+00, double* %377, align 1, !tbaa !2452
  %378 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %379 = load i64, i64* %PC
  %380 = add i64 %379, 8
  store i64 %380, i64* %PC
  %381 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 48) to double*)
  %382 = bitcast i8* %378 to double*
  store double %381, double* %382, align 1, !tbaa !2452
  %383 = getelementptr inbounds i8, i8* %378, i64 8
  %384 = bitcast i8* %383 to double*
  store double 0.000000e+00, double* %384, align 1, !tbaa !2452
  %385 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %386 = load i64, i64* %PC
  %387 = add i64 %386, 8
  store i64 %387, i64* %PC
  %388 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 56) to double*)
  %389 = bitcast i8* %385 to double*
  store double %388, double* %389, align 1, !tbaa !2452
  %390 = getelementptr inbounds i8, i8* %385, i64 8
  %391 = bitcast i8* %390 to double*
  store double 0.000000e+00, double* %391, align 1, !tbaa !2452
  %392 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %393 = load i64, i64* %RBP
  %394 = sub i64 %393, 124
  %395 = load i64, i64* %PC
  %396 = add i64 %395, 5
  store i64 %396, i64* %PC
  %397 = inttoptr i64 %394 to i32*
  %398 = load i32, i32* %397
  %399 = sitofp i32 %398 to double
  %400 = bitcast i8* %392 to double*
  store double %399, double* %400, align 1, !tbaa !2452
  %401 = load i64, i64* %RBP
  %402 = sub i64 %401, 64
  %403 = load i64, i64* %PC
  %404 = add i64 %403, 4
  store i64 %404, i64* %PC
  %405 = inttoptr i64 %402 to i64*
  %406 = load i64, i64* %405
  store i64 %406, i64* %RAX, align 8, !tbaa !2428
  %407 = load i64, i64* %RBP
  %408 = sub i64 %407, 124
  %409 = load i64, i64* %PC
  %410 = add i64 %409, 4
  store i64 %410, i64* %PC
  %411 = inttoptr i64 %408 to i32*
  %412 = load i32, i32* %411
  %413 = sext i32 %412 to i64
  store i64 %413, i64* %RCX, align 8, !tbaa !2428
  %414 = load i64, i64* %RAX
  %415 = load i64, i64* %RCX
  %416 = mul i64 %415, 8
  %417 = add i64 %416, %414
  %418 = bitcast %union.vec128_t* %XMM6 to i8*
  %419 = load i64, i64* %PC
  %420 = add i64 %419, 5
  store i64 %420, i64* %PC
  %421 = bitcast i8* %418 to double*
  %422 = load double, double* %421, align 1
  %423 = inttoptr i64 %417 to double*
  store double %422, double* %423
  %424 = load i64, i64* %RBP
  %425 = sub i64 %424, 124
  %426 = load i64, i64* %PC
  %427 = add i64 %426, 3
  store i64 %427, i64* %PC
  %428 = inttoptr i64 %425 to i32*
  %429 = load i32, i32* %428
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RDX, align 8, !tbaa !2428
  %431 = load i64, i64* %RDX
  %432 = load i64, i64* %PC
  %433 = add i64 %432, 3
  store i64 %433, i64* %PC
  %434 = trunc i64 %431 to i32
  %435 = add i32 1, %434
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %RDX, align 8, !tbaa !2428
  %437 = icmp ult i32 %435, %434
  %438 = icmp ult i32 %435, 1
  %439 = or i1 %437, %438
  %440 = zext i1 %439 to i8
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %440, i8* %441, align 1, !tbaa !2432
  %442 = and i32 %435, 255
  %443 = call i32 @llvm.ctpop.i32(i32 %442) #16
  %444 = trunc i32 %443 to i8
  %445 = and i8 %444, 1
  %446 = xor i8 %445, 1
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %446, i8* %447, align 1, !tbaa !2446
  %448 = xor i64 1, %431
  %449 = trunc i64 %448 to i32
  %450 = xor i32 %449, %435
  %451 = lshr i32 %450, 4
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %453, i8* %454, align 1, !tbaa !2447
  %455 = icmp eq i32 %435, 0
  %456 = zext i1 %455 to i8
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %456, i8* %457, align 1, !tbaa !2448
  %458 = lshr i32 %435, 31
  %459 = trunc i32 %458 to i8
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %459, i8* %460, align 1, !tbaa !2449
  %461 = lshr i32 %434, 31
  %462 = xor i32 %458, %461
  %463 = add nuw nsw i32 %462, %458
  %464 = icmp eq i32 %463, 2
  %465 = zext i1 %464 to i8
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %465, i8* %466, align 1, !tbaa !2450
  %467 = load i32, i32* %EDX
  %468 = zext i32 %467 to i64
  %469 = load i64, i64* %PC
  %470 = add i64 %469, 2
  store i64 %470, i64* %PC
  %471 = and i64 %468, 4294967295
  store i64 %471, i64* %RAX, align 8, !tbaa !2428
  %472 = load i64, i64* %PC
  %473 = add i64 %472, 1
  store i64 %473, i64* %PC
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %476 = bitcast %union.anon* %475 to i32*
  %477 = load i32, i32* %476, align 8, !tbaa !2454
  %478 = sext i32 %477 to i64
  %479 = lshr i64 %478, 32
  store i64 %479, i64* %474, align 8, !tbaa !2428
  %480 = load i64, i64* %RBP
  %481 = sub i64 %480, 28
  %482 = load i64, i64* %PC
  %483 = add i64 %482, 3
  store i64 %483, i64* %PC
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %485 = bitcast %union.anon* %484 to i32*
  %486 = load i32, i32* %485, align 8, !tbaa !2454
  %487 = zext i32 %486 to i64
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %489 = bitcast %union.anon* %488 to i32*
  %490 = load i32, i32* %489, align 8, !tbaa !2454
  %491 = zext i32 %490 to i64
  %492 = inttoptr i64 %481 to i32*
  %493 = load i32, i32* %492
  %494 = sext i32 %493 to i64
  %495 = shl nuw i64 %491, 32
  %496 = or i64 %495, %487
  %497 = sdiv i64 %496, %494
  %498 = shl i64 %497, 32
  %499 = ashr exact i64 %498, 32
  %500 = icmp eq i64 %497, %499
  br i1 %500, label %505, label %501

; <label>:501:                                    ; preds = %block_400c33
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %503 = load i64, i64* %502, align 8, !tbaa !2428
  %504 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %503, %struct.Memory* %MEMORY.1) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit4

; <label>:505:                                    ; preds = %block_400c33
  %506 = srem i64 %496, %494
  %507 = getelementptr inbounds %union.anon, %union.anon* %484, i64 0, i32 0
  %508 = and i64 %497, 4294967295
  store i64 %508, i64* %507, align 8, !tbaa !2428
  %509 = getelementptr inbounds %union.anon, %union.anon* %488, i64 0, i32 0
  %510 = and i64 %506, 4294967295
  store i64 %510, i64* %509, align 8, !tbaa !2428
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %511, align 1, !tbaa !2432
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %512, align 1, !tbaa !2446
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %513, align 1, !tbaa !2447
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %514, align 1, !tbaa !2448
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %515, align 1, !tbaa !2449
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %516, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit4

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit4: ; preds = %501, %505
  %517 = phi %struct.Memory* [ %504, %501 ], [ %MEMORY.1, %505 ]
  %518 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %519 = load i32, i32* %EAX
  %520 = zext i32 %519 to i64
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 4
  store i64 %522, i64* %PC
  %523 = sitofp i32 %519 to double
  %524 = bitcast i8* %518 to double*
  store double %523, double* %524, align 1, !tbaa !2452
  %525 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %526 = bitcast %"class.std::bitset"* %YMM6 to i8*
  %527 = bitcast %union.vec128_t* %XMM5 to i8*
  %528 = load i64, i64* %PC
  %529 = add i64 %528, 4
  store i64 %529, i64* %PC
  %530 = bitcast i8* %526 to double*
  %531 = load double, double* %530, align 1
  %532 = getelementptr inbounds i8, i8* %526, i64 8
  %533 = bitcast i8* %532 to i64*
  %534 = load i64, i64* %533, align 1
  %535 = bitcast i8* %527 to double*
  %536 = load double, double* %535, align 1
  %537 = fdiv double %531, %536
  %538 = bitcast i8* %525 to double*
  store double %537, double* %538, align 1, !tbaa !2452
  %539 = getelementptr inbounds i8, i8* %525, i64 8
  %540 = bitcast i8* %539 to i64*
  store i64 %534, i64* %540, align 1, !tbaa !2452
  %541 = load i64, i64* %RBP
  %542 = sub i64 %541, 80
  %543 = load i64, i64* %PC
  %544 = add i64 %543, 4
  store i64 %544, i64* %PC
  %545 = inttoptr i64 %542 to i64*
  %546 = load i64, i64* %545
  store i64 %546, i64* %RCX, align 8, !tbaa !2428
  %547 = load i64, i64* %RBP
  %548 = sub i64 %547, 124
  %549 = load i64, i64* %PC
  %550 = add i64 %549, 4
  store i64 %550, i64* %PC
  %551 = inttoptr i64 %548 to i32*
  %552 = load i32, i32* %551
  %553 = sext i32 %552 to i64
  store i64 %553, i64* %RSI, align 8, !tbaa !2428
  %554 = load i64, i64* %RCX
  %555 = load i64, i64* %RSI
  %556 = mul i64 %555, 8
  %557 = add i64 %556, %554
  %558 = bitcast %union.vec128_t* %XMM6 to i8*
  %559 = load i64, i64* %PC
  %560 = add i64 %559, 5
  store i64 %560, i64* %PC
  %561 = bitcast i8* %558 to double*
  %562 = load double, double* %561, align 1
  %563 = inttoptr i64 %557 to double*
  store double %562, double* %563
  %564 = load i64, i64* %RBP
  %565 = sub i64 %564, 124
  %566 = load i64, i64* %PC
  %567 = add i64 %566, 3
  store i64 %567, i64* %PC
  %568 = inttoptr i64 %565 to i32*
  %569 = load i32, i32* %568
  %570 = zext i32 %569 to i64
  store i64 %570, i64* %RAX, align 8, !tbaa !2428
  %571 = load i64, i64* %RAX
  %572 = load i64, i64* %PC
  %573 = add i64 %572, 3
  store i64 %573, i64* %PC
  %574 = trunc i64 %571 to i32
  %575 = add i32 1, %574
  %576 = zext i32 %575 to i64
  store i64 %576, i64* %RAX, align 8, !tbaa !2428
  %577 = icmp ult i32 %575, %574
  %578 = icmp ult i32 %575, 1
  %579 = or i1 %577, %578
  %580 = zext i1 %579 to i8
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %580, i8* %581, align 1, !tbaa !2432
  %582 = and i32 %575, 255
  %583 = call i32 @llvm.ctpop.i32(i32 %582) #16
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  %586 = xor i8 %585, 1
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %586, i8* %587, align 1, !tbaa !2446
  %588 = xor i64 1, %571
  %589 = trunc i64 %588 to i32
  %590 = xor i32 %589, %575
  %591 = lshr i32 %590, 4
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %593, i8* %594, align 1, !tbaa !2447
  %595 = icmp eq i32 %575, 0
  %596 = zext i1 %595 to i8
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %596, i8* %597, align 1, !tbaa !2448
  %598 = lshr i32 %575, 31
  %599 = trunc i32 %598 to i8
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %599, i8* %600, align 1, !tbaa !2449
  %601 = lshr i32 %574, 31
  %602 = xor i32 %598, %601
  %603 = add nuw nsw i32 %602, %598
  %604 = icmp eq i32 %603, 2
  %605 = zext i1 %604 to i8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %605, i8* %606, align 1, !tbaa !2450
  %607 = load i64, i64* %PC
  %608 = add i64 %607, 1
  store i64 %608, i64* %PC
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %611 = bitcast %union.anon* %610 to i32*
  %612 = load i32, i32* %611, align 8, !tbaa !2454
  %613 = sext i32 %612 to i64
  %614 = lshr i64 %613, 32
  store i64 %614, i64* %609, align 8, !tbaa !2428
  %615 = load i64, i64* %RBP
  %616 = sub i64 %615, 28
  %617 = load i64, i64* %PC
  %618 = add i64 %617, 3
  store i64 %618, i64* %PC
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %620 = bitcast %union.anon* %619 to i32*
  %621 = load i32, i32* %620, align 8, !tbaa !2454
  %622 = zext i32 %621 to i64
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %624 = bitcast %union.anon* %623 to i32*
  %625 = load i32, i32* %624, align 8, !tbaa !2454
  %626 = zext i32 %625 to i64
  %627 = inttoptr i64 %616 to i32*
  %628 = load i32, i32* %627
  %629 = sext i32 %628 to i64
  %630 = shl nuw i64 %626, 32
  %631 = or i64 %630, %622
  %632 = sdiv i64 %631, %629
  %633 = shl i64 %632, 32
  %634 = ashr exact i64 %633, 32
  %635 = icmp eq i64 %632, %634
  br i1 %635, label %640, label %636

; <label>:636:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit4
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %638 = load i64, i64* %637, align 8, !tbaa !2428
  %639 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %638, %struct.Memory* %517) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit3

; <label>:640:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit4
  %641 = srem i64 %631, %629
  %642 = getelementptr inbounds %union.anon, %union.anon* %619, i64 0, i32 0
  %643 = and i64 %632, 4294967295
  store i64 %643, i64* %642, align 8, !tbaa !2428
  %644 = getelementptr inbounds %union.anon, %union.anon* %623, i64 0, i32 0
  %645 = and i64 %641, 4294967295
  store i64 %645, i64* %644, align 8, !tbaa !2428
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %646, align 1, !tbaa !2432
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %647, align 1, !tbaa !2446
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %648, align 1, !tbaa !2447
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %649, align 1, !tbaa !2448
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %650, align 1, !tbaa !2449
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %651, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit3

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit3: ; preds = %636, %640
  %652 = phi %struct.Memory* [ %639, %636 ], [ %517, %640 ]
  %653 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %654 = load i32, i32* %EAX
  %655 = zext i32 %654 to i64
  %656 = load i64, i64* %PC
  %657 = add i64 %656, 4
  store i64 %657, i64* %PC
  %658 = sitofp i32 %654 to double
  %659 = bitcast i8* %653 to double*
  store double %658, double* %659, align 1, !tbaa !2452
  %660 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %661 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %662 = bitcast %union.vec128_t* %XMM4 to i8*
  %663 = load i64, i64* %PC
  %664 = add i64 %663, 4
  store i64 %664, i64* %PC
  %665 = bitcast i8* %661 to double*
  %666 = load double, double* %665, align 1
  %667 = getelementptr inbounds i8, i8* %661, i64 8
  %668 = bitcast i8* %667 to i64*
  %669 = load i64, i64* %668, align 1
  %670 = bitcast i8* %662 to double*
  %671 = load double, double* %670, align 1
  %672 = fdiv double %666, %671
  %673 = bitcast i8* %660 to double*
  store double %672, double* %673, align 1, !tbaa !2452
  %674 = getelementptr inbounds i8, i8* %660, i64 8
  %675 = bitcast i8* %674 to i64*
  store i64 %669, i64* %675, align 1, !tbaa !2452
  %676 = load i64, i64* %RBP
  %677 = sub i64 %676, 72
  %678 = load i64, i64* %PC
  %679 = add i64 %678, 4
  store i64 %679, i64* %PC
  %680 = inttoptr i64 %677 to i64*
  %681 = load i64, i64* %680
  store i64 %681, i64* %RCX, align 8, !tbaa !2428
  %682 = load i64, i64* %RBP
  %683 = sub i64 %682, 124
  %684 = load i64, i64* %PC
  %685 = add i64 %684, 4
  store i64 %685, i64* %PC
  %686 = inttoptr i64 %683 to i32*
  %687 = load i32, i32* %686
  %688 = sext i32 %687 to i64
  store i64 %688, i64* %RSI, align 8, !tbaa !2428
  %689 = load i64, i64* %RCX
  %690 = load i64, i64* %RSI
  %691 = mul i64 %690, 8
  %692 = add i64 %691, %689
  %693 = bitcast %union.vec128_t* %XMM5 to i8*
  %694 = load i64, i64* %PC
  %695 = add i64 %694, 5
  store i64 %695, i64* %PC
  %696 = bitcast i8* %693 to double*
  %697 = load double, double* %696, align 1
  %698 = inttoptr i64 %692 to double*
  store double %697, double* %698
  %699 = load i64, i64* %RBP
  %700 = sub i64 %699, 124
  %701 = load i64, i64* %PC
  %702 = add i64 %701, 3
  store i64 %702, i64* %PC
  %703 = inttoptr i64 %700 to i32*
  %704 = load i32, i32* %703
  %705 = zext i32 %704 to i64
  store i64 %705, i64* %RAX, align 8, !tbaa !2428
  %706 = load i64, i64* %RAX
  %707 = load i64, i64* %PC
  %708 = add i64 %707, 3
  store i64 %708, i64* %PC
  %709 = trunc i64 %706 to i32
  %710 = add i32 1, %709
  %711 = zext i32 %710 to i64
  store i64 %711, i64* %RAX, align 8, !tbaa !2428
  %712 = icmp ult i32 %710, %709
  %713 = icmp ult i32 %710, 1
  %714 = or i1 %712, %713
  %715 = zext i1 %714 to i8
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %715, i8* %716, align 1, !tbaa !2432
  %717 = and i32 %710, 255
  %718 = call i32 @llvm.ctpop.i32(i32 %717) #16
  %719 = trunc i32 %718 to i8
  %720 = and i8 %719, 1
  %721 = xor i8 %720, 1
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %721, i8* %722, align 1, !tbaa !2446
  %723 = xor i64 1, %706
  %724 = trunc i64 %723 to i32
  %725 = xor i32 %724, %710
  %726 = lshr i32 %725, 4
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %728, i8* %729, align 1, !tbaa !2447
  %730 = icmp eq i32 %710, 0
  %731 = zext i1 %730 to i8
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %731, i8* %732, align 1, !tbaa !2448
  %733 = lshr i32 %710, 31
  %734 = trunc i32 %733 to i8
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %734, i8* %735, align 1, !tbaa !2449
  %736 = lshr i32 %709, 31
  %737 = xor i32 %733, %736
  %738 = add nuw nsw i32 %737, %733
  %739 = icmp eq i32 %738, 2
  %740 = zext i1 %739 to i8
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %740, i8* %741, align 1, !tbaa !2450
  %742 = load i64, i64* %PC
  %743 = add i64 %742, 1
  store i64 %743, i64* %PC
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %746 = bitcast %union.anon* %745 to i32*
  %747 = load i32, i32* %746, align 8, !tbaa !2454
  %748 = sext i32 %747 to i64
  %749 = lshr i64 %748, 32
  store i64 %749, i64* %744, align 8, !tbaa !2428
  %750 = load i64, i64* %RBP
  %751 = sub i64 %750, 28
  %752 = load i64, i64* %PC
  %753 = add i64 %752, 3
  store i64 %753, i64* %PC
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %755 = bitcast %union.anon* %754 to i32*
  %756 = load i32, i32* %755, align 8, !tbaa !2454
  %757 = zext i32 %756 to i64
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %759 = bitcast %union.anon* %758 to i32*
  %760 = load i32, i32* %759, align 8, !tbaa !2454
  %761 = zext i32 %760 to i64
  %762 = inttoptr i64 %751 to i32*
  %763 = load i32, i32* %762
  %764 = sext i32 %763 to i64
  %765 = shl nuw i64 %761, 32
  %766 = or i64 %765, %757
  %767 = sdiv i64 %766, %764
  %768 = shl i64 %767, 32
  %769 = ashr exact i64 %768, 32
  %770 = icmp eq i64 %767, %769
  br i1 %770, label %775, label %771

; <label>:771:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit3
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %773 = load i64, i64* %772, align 8, !tbaa !2428
  %774 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %773, %struct.Memory* %652) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit2

; <label>:775:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit3
  %776 = srem i64 %766, %764
  %777 = getelementptr inbounds %union.anon, %union.anon* %754, i64 0, i32 0
  %778 = and i64 %767, 4294967295
  store i64 %778, i64* %777, align 8, !tbaa !2428
  %779 = getelementptr inbounds %union.anon, %union.anon* %758, i64 0, i32 0
  %780 = and i64 %776, 4294967295
  store i64 %780, i64* %779, align 8, !tbaa !2428
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %781, align 1, !tbaa !2432
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %782, align 1, !tbaa !2446
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %783, align 1, !tbaa !2447
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %784, align 1, !tbaa !2448
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %785, align 1, !tbaa !2449
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %786, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit2

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit2: ; preds = %771, %775
  %787 = phi %struct.Memory* [ %774, %771 ], [ %652, %775 ]
  %788 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %789 = load i32, i32* %EAX
  %790 = zext i32 %789 to i64
  %791 = load i64, i64* %PC
  %792 = add i64 %791, 4
  store i64 %792, i64* %PC
  %793 = sitofp i32 %789 to double
  %794 = bitcast i8* %788 to double*
  store double %793, double* %794, align 1, !tbaa !2452
  %795 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %796 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %797 = bitcast %union.vec128_t* %XMM3 to i8*
  %798 = load i64, i64* %PC
  %799 = add i64 %798, 4
  store i64 %799, i64* %PC
  %800 = bitcast i8* %796 to double*
  %801 = load double, double* %800, align 1
  %802 = getelementptr inbounds i8, i8* %796, i64 8
  %803 = bitcast i8* %802 to i64*
  %804 = load i64, i64* %803, align 1
  %805 = bitcast i8* %797 to double*
  %806 = load double, double* %805, align 1
  %807 = fdiv double %801, %806
  %808 = bitcast i8* %795 to double*
  store double %807, double* %808, align 1, !tbaa !2452
  %809 = getelementptr inbounds i8, i8* %795, i64 8
  %810 = bitcast i8* %809 to i64*
  store i64 %804, i64* %810, align 1, !tbaa !2452
  %811 = load i64, i64* %RBP
  %812 = sub i64 %811, 88
  %813 = load i64, i64* %PC
  %814 = add i64 %813, 4
  store i64 %814, i64* %PC
  %815 = inttoptr i64 %812 to i64*
  %816 = load i64, i64* %815
  store i64 %816, i64* %RCX, align 8, !tbaa !2428
  %817 = load i64, i64* %RBP
  %818 = sub i64 %817, 124
  %819 = load i64, i64* %PC
  %820 = add i64 %819, 4
  store i64 %820, i64* %PC
  %821 = inttoptr i64 %818 to i32*
  %822 = load i32, i32* %821
  %823 = sext i32 %822 to i64
  store i64 %823, i64* %RSI, align 8, !tbaa !2428
  %824 = load i64, i64* %RCX
  %825 = load i64, i64* %RSI
  %826 = mul i64 %825, 8
  %827 = add i64 %826, %824
  %828 = bitcast %union.vec128_t* %XMM4 to i8*
  %829 = load i64, i64* %PC
  %830 = add i64 %829, 5
  store i64 %830, i64* %PC
  %831 = bitcast i8* %828 to double*
  %832 = load double, double* %831, align 1
  %833 = inttoptr i64 %827 to double*
  store double %832, double* %833
  %834 = load i64, i64* %RBP
  %835 = sub i64 %834, 124
  %836 = load i64, i64* %PC
  %837 = add i64 %836, 3
  store i64 %837, i64* %PC
  %838 = inttoptr i64 %835 to i32*
  %839 = load i32, i32* %838
  %840 = zext i32 %839 to i64
  store i64 %840, i64* %RAX, align 8, !tbaa !2428
  %841 = load i64, i64* %RAX
  %842 = load i64, i64* %PC
  %843 = add i64 %842, 3
  store i64 %843, i64* %PC
  %844 = trunc i64 %841 to i32
  %845 = add i32 1, %844
  %846 = zext i32 %845 to i64
  store i64 %846, i64* %RAX, align 8, !tbaa !2428
  %847 = icmp ult i32 %845, %844
  %848 = icmp ult i32 %845, 1
  %849 = or i1 %847, %848
  %850 = zext i1 %849 to i8
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %850, i8* %851, align 1, !tbaa !2432
  %852 = and i32 %845, 255
  %853 = call i32 @llvm.ctpop.i32(i32 %852) #16
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  %856 = xor i8 %855, 1
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %856, i8* %857, align 1, !tbaa !2446
  %858 = xor i64 1, %841
  %859 = trunc i64 %858 to i32
  %860 = xor i32 %859, %845
  %861 = lshr i32 %860, 4
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %863, i8* %864, align 1, !tbaa !2447
  %865 = icmp eq i32 %845, 0
  %866 = zext i1 %865 to i8
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %866, i8* %867, align 1, !tbaa !2448
  %868 = lshr i32 %845, 31
  %869 = trunc i32 %868 to i8
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %869, i8* %870, align 1, !tbaa !2449
  %871 = lshr i32 %844, 31
  %872 = xor i32 %868, %871
  %873 = add nuw nsw i32 %872, %868
  %874 = icmp eq i32 %873, 2
  %875 = zext i1 %874 to i8
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %875, i8* %876, align 1, !tbaa !2450
  %877 = load i64, i64* %PC
  %878 = add i64 %877, 1
  store i64 %878, i64* %PC
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %881 = bitcast %union.anon* %880 to i32*
  %882 = load i32, i32* %881, align 8, !tbaa !2454
  %883 = sext i32 %882 to i64
  %884 = lshr i64 %883, 32
  store i64 %884, i64* %879, align 8, !tbaa !2428
  %885 = load i64, i64* %RBP
  %886 = sub i64 %885, 28
  %887 = load i64, i64* %PC
  %888 = add i64 %887, 3
  store i64 %888, i64* %PC
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %890 = bitcast %union.anon* %889 to i32*
  %891 = load i32, i32* %890, align 8, !tbaa !2454
  %892 = zext i32 %891 to i64
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %894 = bitcast %union.anon* %893 to i32*
  %895 = load i32, i32* %894, align 8, !tbaa !2454
  %896 = zext i32 %895 to i64
  %897 = inttoptr i64 %886 to i32*
  %898 = load i32, i32* %897
  %899 = sext i32 %898 to i64
  %900 = shl nuw i64 %896, 32
  %901 = or i64 %900, %892
  %902 = sdiv i64 %901, %899
  %903 = shl i64 %902, 32
  %904 = ashr exact i64 %903, 32
  %905 = icmp eq i64 %902, %904
  br i1 %905, label %910, label %906

; <label>:906:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit2
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %908 = load i64, i64* %907, align 8, !tbaa !2428
  %909 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %908, %struct.Memory* %787) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:910:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit2
  %911 = srem i64 %901, %899
  %912 = getelementptr inbounds %union.anon, %union.anon* %889, i64 0, i32 0
  %913 = and i64 %902, 4294967295
  store i64 %913, i64* %912, align 8, !tbaa !2428
  %914 = getelementptr inbounds %union.anon, %union.anon* %893, i64 0, i32 0
  %915 = and i64 %911, 4294967295
  store i64 %915, i64* %914, align 8, !tbaa !2428
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %916, align 1, !tbaa !2432
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %917, align 1, !tbaa !2446
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %918, align 1, !tbaa !2447
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %919, align 1, !tbaa !2448
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %920, align 1, !tbaa !2449
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %921, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %906, %910
  %922 = phi %struct.Memory* [ %909, %906 ], [ %787, %910 ]
  %923 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %924 = load i32, i32* %EAX
  %925 = zext i32 %924 to i64
  %926 = load i64, i64* %PC
  %927 = add i64 %926, 4
  store i64 %927, i64* %PC
  %928 = sitofp i32 %924 to double
  %929 = bitcast i8* %923 to double*
  store double %928, double* %929, align 1, !tbaa !2452
  %930 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %931 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %932 = bitcast %union.vec128_t* %XMM2 to i8*
  %933 = load i64, i64* %PC
  %934 = add i64 %933, 4
  store i64 %934, i64* %PC
  %935 = bitcast i8* %931 to double*
  %936 = load double, double* %935, align 1
  %937 = getelementptr inbounds i8, i8* %931, i64 8
  %938 = bitcast i8* %937 to i64*
  %939 = load i64, i64* %938, align 1
  %940 = bitcast i8* %932 to double*
  %941 = load double, double* %940, align 1
  %942 = fdiv double %936, %941
  %943 = bitcast i8* %930 to double*
  store double %942, double* %943, align 1, !tbaa !2452
  %944 = getelementptr inbounds i8, i8* %930, i64 8
  %945 = bitcast i8* %944 to i64*
  store i64 %939, i64* %945, align 1, !tbaa !2452
  %946 = load i64, i64* %RBP
  %947 = sub i64 %946, 112
  %948 = load i64, i64* %PC
  %949 = add i64 %948, 4
  store i64 %949, i64* %PC
  %950 = inttoptr i64 %947 to i64*
  %951 = load i64, i64* %950
  store i64 %951, i64* %RCX, align 8, !tbaa !2428
  %952 = load i64, i64* %RBP
  %953 = sub i64 %952, 124
  %954 = load i64, i64* %PC
  %955 = add i64 %954, 4
  store i64 %955, i64* %PC
  %956 = inttoptr i64 %953 to i32*
  %957 = load i32, i32* %956
  %958 = sext i32 %957 to i64
  store i64 %958, i64* %RSI, align 8, !tbaa !2428
  %959 = load i64, i64* %RCX
  %960 = load i64, i64* %RSI
  %961 = mul i64 %960, 8
  %962 = add i64 %961, %959
  %963 = bitcast %union.vec128_t* %XMM3 to i8*
  %964 = load i64, i64* %PC
  %965 = add i64 %964, 5
  store i64 %965, i64* %PC
  %966 = bitcast i8* %963 to double*
  %967 = load double, double* %966, align 1
  %968 = inttoptr i64 %962 to double*
  store double %967, double* %968
  %969 = load i64, i64* %RBP
  %970 = sub i64 %969, 124
  %971 = load i64, i64* %PC
  %972 = add i64 %971, 3
  store i64 %972, i64* %PC
  %973 = inttoptr i64 %970 to i32*
  %974 = load i32, i32* %973
  %975 = zext i32 %974 to i64
  store i64 %975, i64* %RAX, align 8, !tbaa !2428
  %976 = load i64, i64* %RAX
  %977 = load i64, i64* %PC
  %978 = add i64 %977, 3
  store i64 %978, i64* %PC
  %979 = trunc i64 %976 to i32
  %980 = add i32 1, %979
  %981 = zext i32 %980 to i64
  store i64 %981, i64* %RAX, align 8, !tbaa !2428
  %982 = icmp ult i32 %980, %979
  %983 = icmp ult i32 %980, 1
  %984 = or i1 %982, %983
  %985 = zext i1 %984 to i8
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %985, i8* %986, align 1, !tbaa !2432
  %987 = and i32 %980, 255
  %988 = call i32 @llvm.ctpop.i32(i32 %987) #16
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  %991 = xor i8 %990, 1
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %991, i8* %992, align 1, !tbaa !2446
  %993 = xor i64 1, %976
  %994 = trunc i64 %993 to i32
  %995 = xor i32 %994, %980
  %996 = lshr i32 %995, 4
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %998, i8* %999, align 1, !tbaa !2447
  %1000 = icmp eq i32 %980, 0
  %1001 = zext i1 %1000 to i8
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1001, i8* %1002, align 1, !tbaa !2448
  %1003 = lshr i32 %980, 31
  %1004 = trunc i32 %1003 to i8
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1004, i8* %1005, align 1, !tbaa !2449
  %1006 = lshr i32 %979, 31
  %1007 = xor i32 %1003, %1006
  %1008 = add nuw nsw i32 %1007, %1003
  %1009 = icmp eq i32 %1008, 2
  %1010 = zext i1 %1009 to i8
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1010, i8* %1011, align 1, !tbaa !2450
  %1012 = load i64, i64* %PC
  %1013 = add i64 %1012, 1
  store i64 %1013, i64* %PC
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1016 = bitcast %union.anon* %1015 to i32*
  %1017 = load i32, i32* %1016, align 8, !tbaa !2454
  %1018 = sext i32 %1017 to i64
  %1019 = lshr i64 %1018, 32
  store i64 %1019, i64* %1014, align 8, !tbaa !2428
  %1020 = load i64, i64* %RBP
  %1021 = sub i64 %1020, 28
  %1022 = load i64, i64* %PC
  %1023 = add i64 %1022, 3
  store i64 %1023, i64* %PC
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1025 = bitcast %union.anon* %1024 to i32*
  %1026 = load i32, i32* %1025, align 8, !tbaa !2454
  %1027 = zext i32 %1026 to i64
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1029 = bitcast %union.anon* %1028 to i32*
  %1030 = load i32, i32* %1029, align 8, !tbaa !2454
  %1031 = zext i32 %1030 to i64
  %1032 = inttoptr i64 %1021 to i32*
  %1033 = load i32, i32* %1032
  %1034 = sext i32 %1033 to i64
  %1035 = shl nuw i64 %1031, 32
  %1036 = or i64 %1035, %1027
  %1037 = sdiv i64 %1036, %1034
  %1038 = shl i64 %1037, 32
  %1039 = ashr exact i64 %1038, 32
  %1040 = icmp eq i64 %1037, %1039
  br i1 %1040, label %1045, label %1041

; <label>:1041:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1043 = load i64, i64* %1042, align 8, !tbaa !2428
  %1044 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1043, %struct.Memory* %922) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:1045:                                   ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1
  %1046 = srem i64 %1036, %1034
  %1047 = getelementptr inbounds %union.anon, %union.anon* %1024, i64 0, i32 0
  %1048 = and i64 %1037, 4294967295
  store i64 %1048, i64* %1047, align 8, !tbaa !2428
  %1049 = getelementptr inbounds %union.anon, %union.anon* %1028, i64 0, i32 0
  %1050 = and i64 %1046, 4294967295
  store i64 %1050, i64* %1049, align 8, !tbaa !2428
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1051, align 1, !tbaa !2432
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1052, align 1, !tbaa !2446
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1053, align 1, !tbaa !2447
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1054, align 1, !tbaa !2448
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1055, align 1, !tbaa !2449
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1056, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %1041, %1045
  %1057 = phi %struct.Memory* [ %1044, %1041 ], [ %922, %1045 ]
  %1058 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1059 = load i32, i32* %EAX
  %1060 = zext i32 %1059 to i64
  %1061 = load i64, i64* %PC
  %1062 = add i64 %1061, 4
  store i64 %1062, i64* %PC
  %1063 = sitofp i32 %1059 to double
  %1064 = bitcast i8* %1058 to double*
  store double %1063, double* %1064, align 1, !tbaa !2452
  %1065 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1066 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1067 = bitcast %union.vec128_t* %XMM1 to i8*
  %1068 = load i64, i64* %PC
  %1069 = add i64 %1068, 4
  store i64 %1069, i64* %PC
  %1070 = bitcast i8* %1066 to double*
  %1071 = load double, double* %1070, align 1
  %1072 = getelementptr inbounds i8, i8* %1066, i64 8
  %1073 = bitcast i8* %1072 to i64*
  %1074 = load i64, i64* %1073, align 1
  %1075 = bitcast i8* %1067 to double*
  %1076 = load double, double* %1075, align 1
  %1077 = fdiv double %1071, %1076
  %1078 = bitcast i8* %1065 to double*
  store double %1077, double* %1078, align 1, !tbaa !2452
  %1079 = getelementptr inbounds i8, i8* %1065, i64 8
  %1080 = bitcast i8* %1079 to i64*
  store i64 %1074, i64* %1080, align 1, !tbaa !2452
  %1081 = load i64, i64* %RBP
  %1082 = sub i64 %1081, 120
  %1083 = load i64, i64* %PC
  %1084 = add i64 %1083, 4
  store i64 %1084, i64* %PC
  %1085 = inttoptr i64 %1082 to i64*
  %1086 = load i64, i64* %1085
  store i64 %1086, i64* %RCX, align 8, !tbaa !2428
  %1087 = load i64, i64* %RBP
  %1088 = sub i64 %1087, 124
  %1089 = load i64, i64* %PC
  %1090 = add i64 %1089, 4
  store i64 %1090, i64* %PC
  %1091 = inttoptr i64 %1088 to i32*
  %1092 = load i32, i32* %1091
  %1093 = sext i32 %1092 to i64
  store i64 %1093, i64* %RSI, align 8, !tbaa !2428
  %1094 = load i64, i64* %RCX
  %1095 = load i64, i64* %RSI
  %1096 = mul i64 %1095, 8
  %1097 = add i64 %1096, %1094
  %1098 = bitcast %union.vec128_t* %XMM2 to i8*
  %1099 = load i64, i64* %PC
  %1100 = add i64 %1099, 5
  store i64 %1100, i64* %PC
  %1101 = bitcast i8* %1098 to double*
  %1102 = load double, double* %1101, align 1
  %1103 = inttoptr i64 %1097 to double*
  store double %1102, double* %1103
  %1104 = load i64, i64* %RBP
  %1105 = sub i64 %1104, 96
  %1106 = load i64, i64* %PC
  %1107 = add i64 %1106, 4
  store i64 %1107, i64* %PC
  %1108 = inttoptr i64 %1105 to i64*
  %1109 = load i64, i64* %1108
  store i64 %1109, i64* %RCX, align 8, !tbaa !2428
  %1110 = load i64, i64* %RBP
  %1111 = sub i64 %1110, 124
  %1112 = load i64, i64* %PC
  %1113 = add i64 %1112, 4
  store i64 %1113, i64* %PC
  %1114 = inttoptr i64 %1111 to i32*
  %1115 = load i32, i32* %1114
  %1116 = sext i32 %1115 to i64
  store i64 %1116, i64* %RSI, align 8, !tbaa !2428
  %1117 = load i64, i64* %RCX
  %1118 = load i64, i64* %RSI
  %1119 = mul i64 %1118, 8
  %1120 = add i64 %1119, %1117
  %1121 = bitcast %union.vec128_t* %XMM0 to i8*
  %1122 = load i64, i64* %PC
  %1123 = add i64 %1122, 5
  store i64 %1123, i64* %PC
  %1124 = bitcast i8* %1121 to double*
  %1125 = load double, double* %1124, align 1
  %1126 = inttoptr i64 %1120 to double*
  store double %1125, double* %1126
  %1127 = load i64, i64* %RBP
  %1128 = sub i64 %1127, 104
  %1129 = load i64, i64* %PC
  %1130 = add i64 %1129, 4
  store i64 %1130, i64* %PC
  %1131 = inttoptr i64 %1128 to i64*
  %1132 = load i64, i64* %1131
  store i64 %1132, i64* %RCX, align 8, !tbaa !2428
  %1133 = load i64, i64* %RBP
  %1134 = sub i64 %1133, 124
  %1135 = load i64, i64* %PC
  %1136 = add i64 %1135, 4
  store i64 %1136, i64* %PC
  %1137 = inttoptr i64 %1134 to i32*
  %1138 = load i32, i32* %1137
  %1139 = sext i32 %1138 to i64
  store i64 %1139, i64* %RSI, align 8, !tbaa !2428
  %1140 = load i64, i64* %RCX
  %1141 = load i64, i64* %RSI
  %1142 = mul i64 %1141, 8
  %1143 = add i64 %1142, %1140
  %1144 = bitcast %union.vec128_t* %XMM0 to i8*
  %1145 = load i64, i64* %PC
  %1146 = add i64 %1145, 5
  store i64 %1146, i64* %PC
  %1147 = bitcast i8* %1144 to double*
  %1148 = load double, double* %1147, align 1
  %1149 = inttoptr i64 %1143 to double*
  store double %1148, double* %1149
  %1150 = load i64, i64* %RBP
  %1151 = sub i64 %1150, 128
  %1152 = load i64, i64* %PC
  %1153 = add i64 %1152, 7
  store i64 %1153, i64* %PC
  %1154 = inttoptr i64 %1151 to i32*
  store i32 0, i32* %1154
  br label %block_400d2e

block_400d2e:                                     ; preds = %block_400d3a, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit
  %MEMORY.0 = phi %struct.Memory* [ %1057, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ], [ %MEMORY.0, %block_400d3a ]
  %1155 = load i64, i64* %RBP
  %1156 = sub i64 %1155, 128
  %1157 = load i64, i64* %PC
  %1158 = add i64 %1157, 3
  store i64 %1158, i64* %PC
  %1159 = inttoptr i64 %1156 to i32*
  %1160 = load i32, i32* %1159
  %1161 = zext i32 %1160 to i64
  store i64 %1161, i64* %RAX, align 8, !tbaa !2428
  %1162 = load i32, i32* %EAX
  %1163 = zext i32 %1162 to i64
  %1164 = load i64, i64* %RBP
  %1165 = sub i64 %1164, 28
  %1166 = load i64, i64* %PC
  %1167 = add i64 %1166, 3
  store i64 %1167, i64* %PC
  %1168 = inttoptr i64 %1165 to i32*
  %1169 = load i32, i32* %1168
  %1170 = sub i32 %1162, %1169
  %1171 = icmp ult i32 %1162, %1169
  %1172 = zext i1 %1171 to i8
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1172, i8* %1173, align 1, !tbaa !2432
  %1174 = and i32 %1170, 255
  %1175 = call i32 @llvm.ctpop.i32(i32 %1174) #16
  %1176 = trunc i32 %1175 to i8
  %1177 = and i8 %1176, 1
  %1178 = xor i8 %1177, 1
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1178, i8* %1179, align 1, !tbaa !2446
  %1180 = xor i32 %1169, %1162
  %1181 = xor i32 %1180, %1170
  %1182 = lshr i32 %1181, 4
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1184, i8* %1185, align 1, !tbaa !2447
  %1186 = icmp eq i32 %1170, 0
  %1187 = zext i1 %1186 to i8
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1187, i8* %1188, align 1, !tbaa !2448
  %1189 = lshr i32 %1170, 31
  %1190 = trunc i32 %1189 to i8
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1190, i8* %1191, align 1, !tbaa !2449
  %1192 = lshr i32 %1162, 31
  %1193 = lshr i32 %1169, 31
  %1194 = xor i32 %1193, %1192
  %1195 = xor i32 %1189, %1192
  %1196 = add nuw nsw i32 %1195, %1194
  %1197 = icmp eq i32 %1196, 2
  %1198 = zext i1 %1197 to i8
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1198, i8* %1199, align 1, !tbaa !2450
  %1200 = load i64, i64* %PC
  %1201 = add i64 %1200, 70
  %1202 = load i64, i64* %PC
  %1203 = add i64 %1202, 6
  %1204 = load i64, i64* %PC
  %1205 = add i64 %1204, 6
  store i64 %1205, i64* %PC
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1207 = load i8, i8* %1206, align 1, !tbaa !2449
  %1208 = icmp ne i8 %1207, 0
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1210 = load i8, i8* %1209, align 1, !tbaa !2450
  %1211 = icmp ne i8 %1210, 0
  %1212 = xor i1 %1208, %1211
  %1213 = xor i1 %1212, true
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1216 = select i1 %1212, i64 %1203, i64 %1201
  store i64 %1216, i64* %1215, align 8, !tbaa !2428
  %1217 = load i8, i8* %BRANCH_TAKEN
  %1218 = icmp eq i8 %1217, 1
  br i1 %1218, label %block_400d7a, label %block_400d3a

block_400d8d:                                     ; preds = %block_400c27
  %1219 = load i64, i64* %PC
  %1220 = add i64 %1219, 1
  store i64 %1220, i64* %PC
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1222 = load i64, i64* %1221, align 8, !tbaa !2428
  %1223 = add i64 %1222, 8
  %1224 = inttoptr i64 %1222 to i64*
  %1225 = load i64, i64* %1224
  store i64 %1225, i64* %RBX, align 8, !tbaa !2428
  store i64 %1223, i64* %1221, align 8, !tbaa !2428
  %1226 = load i64, i64* %PC
  %1227 = add i64 %1226, 2
  store i64 %1227, i64* %PC
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1229 = load i64, i64* %1228, align 8, !tbaa !2428
  %1230 = add i64 %1229, 8
  %1231 = inttoptr i64 %1229 to i64*
  %1232 = load i64, i64* %1231
  store i64 %1232, i64* %R14, align 8, !tbaa !2428
  store i64 %1230, i64* %1228, align 8, !tbaa !2428
  %1233 = load i64, i64* %PC
  %1234 = add i64 %1233, 2
  store i64 %1234, i64* %PC
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1236 = load i64, i64* %1235, align 8, !tbaa !2428
  %1237 = add i64 %1236, 8
  %1238 = inttoptr i64 %1236 to i64*
  %1239 = load i64, i64* %1238
  store i64 %1239, i64* %R15, align 8, !tbaa !2428
  store i64 %1237, i64* %1235, align 8, !tbaa !2428
  %1240 = load i64, i64* %PC
  %1241 = add i64 %1240, 1
  store i64 %1241, i64* %PC
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1243 = load i64, i64* %1242, align 8, !tbaa !2428
  %1244 = add i64 %1243, 8
  %1245 = inttoptr i64 %1243 to i64*
  %1246 = load i64, i64* %1245
  store i64 %1246, i64* %RBP, align 8, !tbaa !2428
  store i64 %1244, i64* %1242, align 8, !tbaa !2428
  %1247 = load i64, i64* %PC
  %1248 = add i64 %1247, 1
  store i64 %1248, i64* %PC
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1251 = load i64, i64* %1250, align 8, !tbaa !2428
  %1252 = inttoptr i64 %1251 to i64*
  %1253 = load i64, i64* %1252
  store i64 %1253, i64* %1249, align 8, !tbaa !2428
  %1254 = add i64 %1251, 8
  store i64 %1254, i64* %1250, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_400d3a:                                     ; preds = %block_400d2e
  %1255 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1256 = load i64, i64* %RBP
  %1257 = sub i64 %1256, 124
  %1258 = load i64, i64* %PC
  %1259 = add i64 %1258, 5
  store i64 %1259, i64* %PC
  %1260 = inttoptr i64 %1257 to i32*
  %1261 = load i32, i32* %1260
  %1262 = sitofp i32 %1261 to double
  %1263 = bitcast i8* %1255 to double*
  store double %1262, double* %1263, align 1, !tbaa !2452
  %1264 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1265 = load i64, i64* %RBP
  %1266 = sub i64 %1265, 128
  %1267 = load i64, i64* %PC
  %1268 = add i64 %1267, 5
  store i64 %1268, i64* %PC
  %1269 = inttoptr i64 %1266 to i32*
  %1270 = load i32, i32* %1269
  %1271 = sitofp i32 %1270 to double
  %1272 = bitcast i8* %1264 to double*
  store double %1271, double* %1272, align 1, !tbaa !2452
  %1273 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1274 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1275 = bitcast %union.vec128_t* %XMM1 to i8*
  %1276 = load i64, i64* %PC
  %1277 = add i64 %1276, 4
  store i64 %1277, i64* %PC
  %1278 = bitcast i8* %1274 to double*
  %1279 = load double, double* %1278, align 1
  %1280 = getelementptr inbounds i8, i8* %1274, i64 8
  %1281 = bitcast i8* %1280 to i64*
  %1282 = load i64, i64* %1281, align 1
  %1283 = bitcast i8* %1275 to double*
  %1284 = load double, double* %1283, align 1
  %1285 = fmul double %1279, %1284
  %1286 = bitcast i8* %1273 to double*
  store double %1285, double* %1286, align 1, !tbaa !2452
  %1287 = getelementptr inbounds i8, i8* %1273, i64 8
  %1288 = bitcast i8* %1287 to i64*
  store i64 %1282, i64* %1288, align 1, !tbaa !2452
  %1289 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1290 = load i64, i64* %RBP
  %1291 = sub i64 %1290, 28
  %1292 = load i64, i64* %PC
  %1293 = add i64 %1292, 5
  store i64 %1293, i64* %PC
  %1294 = inttoptr i64 %1291 to i32*
  %1295 = load i32, i32* %1294
  %1296 = sitofp i32 %1295 to double
  %1297 = bitcast i8* %1289 to double*
  store double %1296, double* %1297, align 1, !tbaa !2452
  %1298 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1299 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1300 = bitcast %union.vec128_t* %XMM1 to i8*
  %1301 = load i64, i64* %PC
  %1302 = add i64 %1301, 4
  store i64 %1302, i64* %PC
  %1303 = bitcast i8* %1299 to double*
  %1304 = load double, double* %1303, align 1
  %1305 = getelementptr inbounds i8, i8* %1299, i64 8
  %1306 = bitcast i8* %1305 to i64*
  %1307 = load i64, i64* %1306, align 1
  %1308 = bitcast i8* %1300 to double*
  %1309 = load double, double* %1308, align 1
  %1310 = fdiv double %1304, %1309
  %1311 = bitcast i8* %1298 to double*
  store double %1310, double* %1311, align 1, !tbaa !2452
  %1312 = getelementptr inbounds i8, i8* %1298, i64 8
  %1313 = bitcast i8* %1312 to i64*
  store i64 %1307, i64* %1313, align 1, !tbaa !2452
  %1314 = load i64, i64* %RBP
  %1315 = sub i64 %1314, 56
  %1316 = load i64, i64* %PC
  %1317 = add i64 %1316, 4
  store i64 %1317, i64* %PC
  %1318 = inttoptr i64 %1315 to i64*
  %1319 = load i64, i64* %1318
  store i64 %1319, i64* %RAX, align 8, !tbaa !2428
  %1320 = load i64, i64* %RBP
  %1321 = sub i64 %1320, 124
  %1322 = load i64, i64* %PC
  %1323 = add i64 %1322, 4
  store i64 %1323, i64* %PC
  %1324 = inttoptr i64 %1321 to i32*
  %1325 = load i32, i32* %1324
  %1326 = sext i32 %1325 to i64
  store i64 %1326, i64* %RCX, align 8, !tbaa !2428
  %1327 = load i64, i64* %RCX
  %1328 = load i64, i64* %PC
  %1329 = add i64 %1328, 7
  store i64 %1329, i64* %PC
  %1330 = sext i64 %1327 to i128
  %1331 = and i128 %1330, -18446744073709551616
  %1332 = zext i64 %1327 to i128
  %1333 = or i128 %1331, %1332
  %1334 = mul nsw i128 32000, %1333
  %1335 = trunc i128 %1334 to i64
  store i64 %1335, i64* %RCX, align 8, !tbaa !2428
  %1336 = sext i64 %1335 to i128
  %1337 = icmp ne i128 %1336, %1334
  %1338 = zext i1 %1337 to i8
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1338, i8* %1339, align 1, !tbaa !2432
  %1340 = trunc i128 %1334 to i32
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1341, align 1, !tbaa !2446
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1342, align 1, !tbaa !2447
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1343, align 1, !tbaa !2448
  %1344 = lshr i64 %1335, 63
  %1345 = trunc i64 %1344 to i8
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1345, i8* %1346, align 1, !tbaa !2449
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1338, i8* %1347, align 1, !tbaa !2450
  %1348 = load i64, i64* %RAX
  %1349 = load i64, i64* %RCX
  %1350 = load i64, i64* %PC
  %1351 = add i64 %1350, 3
  store i64 %1351, i64* %PC
  %1352 = add i64 %1349, %1348
  store i64 %1352, i64* %RAX, align 8, !tbaa !2428
  %1353 = icmp ult i64 %1352, %1348
  %1354 = icmp ult i64 %1352, %1349
  %1355 = or i1 %1353, %1354
  %1356 = zext i1 %1355 to i8
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1356, i8* %1357, align 1, !tbaa !2432
  %1358 = trunc i64 %1352 to i32
  %1359 = and i32 %1358, 255
  %1360 = call i32 @llvm.ctpop.i32(i32 %1359) #16
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  %1363 = xor i8 %1362, 1
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1363, i8* %1364, align 1, !tbaa !2446
  %1365 = xor i64 %1349, %1348
  %1366 = xor i64 %1365, %1352
  %1367 = lshr i64 %1366, 4
  %1368 = trunc i64 %1367 to i8
  %1369 = and i8 %1368, 1
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1369, i8* %1370, align 1, !tbaa !2447
  %1371 = icmp eq i64 %1352, 0
  %1372 = zext i1 %1371 to i8
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1372, i8* %1373, align 1, !tbaa !2448
  %1374 = lshr i64 %1352, 63
  %1375 = trunc i64 %1374 to i8
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1375, i8* %1376, align 1, !tbaa !2449
  %1377 = lshr i64 %1348, 63
  %1378 = lshr i64 %1349, 63
  %1379 = xor i64 %1374, %1377
  %1380 = xor i64 %1374, %1378
  %1381 = add nuw nsw i64 %1379, %1380
  %1382 = icmp eq i64 %1381, 2
  %1383 = zext i1 %1382 to i8
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1383, i8* %1384, align 1, !tbaa !2450
  %1385 = load i64, i64* %RBP
  %1386 = sub i64 %1385, 128
  %1387 = load i64, i64* %PC
  %1388 = add i64 %1387, 4
  store i64 %1388, i64* %PC
  %1389 = inttoptr i64 %1386 to i32*
  %1390 = load i32, i32* %1389
  %1391 = sext i32 %1390 to i64
  store i64 %1391, i64* %RCX, align 8, !tbaa !2428
  %1392 = load i64, i64* %RAX
  %1393 = load i64, i64* %RCX
  %1394 = mul i64 %1393, 8
  %1395 = add i64 %1394, %1392
  %1396 = bitcast %union.vec128_t* %XMM0 to i8*
  %1397 = load i64, i64* %PC
  %1398 = add i64 %1397, 5
  store i64 %1398, i64* %PC
  %1399 = bitcast i8* %1396 to double*
  %1400 = load double, double* %1399, align 1
  %1401 = inttoptr i64 %1395 to double*
  store double %1400, double* %1401
  %1402 = load i64, i64* %RBP
  %1403 = sub i64 %1402, 128
  %1404 = load i64, i64* %PC
  %1405 = add i64 %1404, 3
  store i64 %1405, i64* %PC
  %1406 = inttoptr i64 %1403 to i32*
  %1407 = load i32, i32* %1406
  %1408 = zext i32 %1407 to i64
  store i64 %1408, i64* %RAX, align 8, !tbaa !2428
  %1409 = load i64, i64* %RAX
  %1410 = load i64, i64* %PC
  %1411 = add i64 %1410, 3
  store i64 %1411, i64* %PC
  %1412 = trunc i64 %1409 to i32
  %1413 = add i32 1, %1412
  %1414 = zext i32 %1413 to i64
  store i64 %1414, i64* %RAX, align 8, !tbaa !2428
  %1415 = icmp ult i32 %1413, %1412
  %1416 = icmp ult i32 %1413, 1
  %1417 = or i1 %1415, %1416
  %1418 = zext i1 %1417 to i8
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1418, i8* %1419, align 1, !tbaa !2432
  %1420 = and i32 %1413, 255
  %1421 = call i32 @llvm.ctpop.i32(i32 %1420) #16
  %1422 = trunc i32 %1421 to i8
  %1423 = and i8 %1422, 1
  %1424 = xor i8 %1423, 1
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1424, i8* %1425, align 1, !tbaa !2446
  %1426 = xor i64 1, %1409
  %1427 = trunc i64 %1426 to i32
  %1428 = xor i32 %1427, %1413
  %1429 = lshr i32 %1428, 4
  %1430 = trunc i32 %1429 to i8
  %1431 = and i8 %1430, 1
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1431, i8* %1432, align 1, !tbaa !2447
  %1433 = icmp eq i32 %1413, 0
  %1434 = zext i1 %1433 to i8
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1434, i8* %1435, align 1, !tbaa !2448
  %1436 = lshr i32 %1413, 31
  %1437 = trunc i32 %1436 to i8
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1437, i8* %1438, align 1, !tbaa !2449
  %1439 = lshr i32 %1412, 31
  %1440 = xor i32 %1436, %1439
  %1441 = add nuw nsw i32 %1440, %1436
  %1442 = icmp eq i32 %1441, 2
  %1443 = zext i1 %1442 to i8
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1443, i8* %1444, align 1, !tbaa !2450
  %1445 = load i64, i64* %RBP
  %1446 = sub i64 %1445, 128
  %1447 = load i32, i32* %EAX
  %1448 = zext i32 %1447 to i64
  %1449 = load i64, i64* %PC
  %1450 = add i64 %1449, 3
  store i64 %1450, i64* %PC
  %1451 = inttoptr i64 %1446 to i32*
  store i32 %1447, i32* %1451
  %1452 = load i64, i64* %PC
  %1453 = sub i64 %1452, 71
  %1454 = load i64, i64* %PC
  %1455 = add i64 %1454, 5
  store i64 %1455, i64* %PC
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1453, i64* %1456, align 8, !tbaa !2428
  br label %block_400d2e

block_400c27:                                     ; preds = %block_400d7a, %block_400bb0
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400bb0 ], [ %MEMORY.0, %block_400d7a ]
  %1457 = load i64, i64* %RBP
  %1458 = sub i64 %1457, 124
  %1459 = load i64, i64* %PC
  %1460 = add i64 %1459, 3
  store i64 %1460, i64* %PC
  %1461 = inttoptr i64 %1458 to i32*
  %1462 = load i32, i32* %1461
  %1463 = zext i32 %1462 to i64
  store i64 %1463, i64* %RAX, align 8, !tbaa !2428
  %1464 = load i32, i32* %EAX
  %1465 = zext i32 %1464 to i64
  %1466 = load i64, i64* %RBP
  %1467 = sub i64 %1466, 28
  %1468 = load i64, i64* %PC
  %1469 = add i64 %1468, 3
  store i64 %1469, i64* %PC
  %1470 = inttoptr i64 %1467 to i32*
  %1471 = load i32, i32* %1470
  %1472 = sub i32 %1464, %1471
  %1473 = icmp ult i32 %1464, %1471
  %1474 = zext i1 %1473 to i8
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1474, i8* %1475, align 1, !tbaa !2432
  %1476 = and i32 %1472, 255
  %1477 = call i32 @llvm.ctpop.i32(i32 %1476) #16
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  %1480 = xor i8 %1479, 1
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1480, i8* %1481, align 1, !tbaa !2446
  %1482 = xor i32 %1471, %1464
  %1483 = xor i32 %1482, %1472
  %1484 = lshr i32 %1483, 4
  %1485 = trunc i32 %1484 to i8
  %1486 = and i8 %1485, 1
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1486, i8* %1487, align 1, !tbaa !2447
  %1488 = icmp eq i32 %1472, 0
  %1489 = zext i1 %1488 to i8
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1489, i8* %1490, align 1, !tbaa !2448
  %1491 = lshr i32 %1472, 31
  %1492 = trunc i32 %1491 to i8
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1492, i8* %1493, align 1, !tbaa !2449
  %1494 = lshr i32 %1464, 31
  %1495 = lshr i32 %1471, 31
  %1496 = xor i32 %1495, %1494
  %1497 = xor i32 %1491, %1494
  %1498 = add nuw nsw i32 %1497, %1496
  %1499 = icmp eq i32 %1498, 2
  %1500 = zext i1 %1499 to i8
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1500, i8* %1501, align 1, !tbaa !2450
  %1502 = load i64, i64* %PC
  %1503 = add i64 %1502, 352
  %1504 = load i64, i64* %PC
  %1505 = add i64 %1504, 6
  %1506 = load i64, i64* %PC
  %1507 = add i64 %1506, 6
  store i64 %1507, i64* %PC
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1509 = load i8, i8* %1508, align 1, !tbaa !2449
  %1510 = icmp ne i8 %1509, 0
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1512 = load i8, i8* %1511, align 1, !tbaa !2450
  %1513 = icmp ne i8 %1512, 0
  %1514 = xor i1 %1510, %1513
  %1515 = xor i1 %1514, true
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1518 = select i1 %1514, i64 %1505, i64 %1503
  store i64 %1518, i64* %1517, align 8, !tbaa !2428
  %1519 = load i8, i8* %BRANCH_TAKEN
  %1520 = icmp eq i8 %1519, 1
  br i1 %1520, label %block_400d8d, label %block_400c33
}

; Function Attrs: noinline
define %struct.Memory* @sub_400780_rtclock(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400780:
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
define %struct.Memory* @sub_4012c0_check_FP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4012c0:
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
  %92 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 64) to double*)
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
  br label %block_4012e7

block_40137e:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
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
  br label %block_4012e7

block_401398:                                     ; preds = %block_401391, %block_401341
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_401391 ], [ %582, %block_401341 ]
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

block_4012f3:                                     ; preds = %block_4012e7
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
  %338 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 80) to float*)
  %339 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 84) to float*)
  %340 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 88) to float*)
  %341 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 92) to float*)
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

; <label>:407:                                    ; preds = %block_4012f3
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

; <label>:419:                                    ; preds = %block_4012f3
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
  br i1 %453, label %block_40137e, label %block_401341

block_4012e7:                                     ; preds = %block_40137e, %block_4012c0
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_4012c0 ], [ %436, %block_40137e ]
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
  br i1 %518, label %block_401391, label %block_4012f3

block_401341:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %520 = add i64 %454, 10
  store i64 %520, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4014d0__rodata_type* @seg_4014d0__rodata to i64), i64 162), i64* %RSI, align 8, !tbaa !2428
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
  %571 = sub i64 %570, 3514
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
  %582 = call %struct.Memory* @ext_4005b0_fprintf(%struct.State* %0, i64 %581, %struct.Memory* %436)
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
  br label %block_401398

block_401391:                                     ; preds = %block_4012e7
  %600 = sub i64 %519, 4
  %601 = load i64, i64* %PC
  %602 = add i64 %601, 7
  store i64 %602, i64* %PC
  %603 = inttoptr i64 %600 to i32*
  store i32 1, i32* %603
  br label %block_401398
}

; Function Attrs: noinline
define %struct.Memory* @sub_4008b0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %65 = load i64, i64* %64, align 8, !tbaa !2428
  %66 = add i64 %65, -8
  %67 = inttoptr i64 %66 to i64*
  store i64 %61, i64* %67
  store i64 %66, i64* %64, align 8, !tbaa !2428
  %68 = load i64, i64* %RSP
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 3
  store i64 %70, i64* %PC
  store i64 %68, i64* %RBP, align 8, !tbaa !2428
  %71 = load i64, i64* %R15
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 2
  store i64 %73, i64* %PC
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %75 = load i64, i64* %74, align 8, !tbaa !2428
  %76 = add i64 %75, -8
  %77 = inttoptr i64 %76 to i64*
  store i64 %71, i64* %77
  store i64 %76, i64* %74, align 8, !tbaa !2428
  %78 = load i64, i64* %R14
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 2
  store i64 %80, i64* %PC
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %82 = load i64, i64* %81, align 8, !tbaa !2428
  %83 = add i64 %82, -8
  %84 = inttoptr i64 %83 to i64*
  store i64 %78, i64* %84
  store i64 %83, i64* %81, align 8, !tbaa !2428
  %85 = load i64, i64* %RBX
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 1
  store i64 %87, i64* %PC
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %89 = load i64, i64* %88, align 8, !tbaa !2428
  %90 = add i64 %89, -8
  %91 = inttoptr i64 %90 to i64*
  store i64 %85, i64* %91
  store i64 %90, i64* %88, align 8, !tbaa !2428
  %92 = load i64, i64* %RSP
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 7
  store i64 %94, i64* %PC
  %95 = sub i64 %92, 184
  store i64 %95, i64* %RSP, align 8, !tbaa !2428
  %96 = icmp ult i64 %92, 184
  %97 = zext i1 %96 to i8
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %97, i8* %98, align 1, !tbaa !2432
  %99 = trunc i64 %95 to i32
  %100 = and i32 %99, 255
  %101 = call i32 @llvm.ctpop.i32(i32 %100) #16
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %104, i8* %105, align 1, !tbaa !2446
  %106 = xor i64 184, %92
  %107 = xor i64 %106, %95
  %108 = lshr i64 %107, 4
  %109 = trunc i64 %108 to i8
  %110 = and i8 %109, 1
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %110, i8* %111, align 1, !tbaa !2447
  %112 = icmp eq i64 %95, 0
  %113 = zext i1 %112 to i8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %113, i8* %114, align 1, !tbaa !2448
  %115 = lshr i64 %95, 63
  %116 = trunc i64 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %116, i8* %117, align 1, !tbaa !2449
  %118 = lshr i64 %92, 63
  %119 = xor i64 %115, %118
  %120 = add nuw nsw i64 %119, %118
  %121 = icmp eq i64 %120, 2
  %122 = zext i1 %121 to i8
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %122, i8* %123, align 1, !tbaa !2450
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 5
  store i64 %125, i64* %PC
  store i64 16000000, i64* %RAX, align 8, !tbaa !2428
  %126 = load i32, i32* %EAX
  %127 = zext i32 %126 to i64
  %128 = load i64, i64* %PC
  %129 = add i64 %128, 2
  store i64 %129, i64* %PC
  %130 = and i64 %127, 4294967295
  store i64 %130, i64* %RCX, align 8, !tbaa !2428
  %131 = load i64, i64* %PC
  %132 = add i64 %131, 5
  store i64 %132, i64* %PC
  store i64 8, i64* %RAX, align 8, !tbaa !2428
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
  store i64 %156, i64* %RDI, align 8, !tbaa !2428
  %159 = load i32, i32* %EAX
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 2
  store i64 %162, i64* %PC
  %163 = and i64 %160, 4294967295
  store i64 %163, i64* %RSI, align 8, !tbaa !2428
  %164 = load i64, i64* %PC
  %165 = sub i64 %164, 246
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 5
  %168 = load i64, i64* %PC
  %169 = add i64 %168, 5
  store i64 %169, i64* %PC
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %171 = load i64, i64* %170, align 8, !tbaa !2428
  %172 = add i64 %171, -8
  %173 = inttoptr i64 %172 to i64*
  store i64 %167, i64* %173
  store i64 %172, i64* %170, align 8, !tbaa !2428
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %165, i64* %174, align 8, !tbaa !2428
  %175 = load i64, i64* %PC
  %176 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %175, %struct.Memory* %2)
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 5
  store i64 %178, i64* %PC
  store i64 16000000, i64* %RSI, align 8, !tbaa !2428
  %179 = load i32, i32* %ESI
  %180 = zext i32 %179 to i64
  %181 = load i64, i64* %PC
  %182 = add i64 %181, 2
  store i64 %182, i64* %PC
  %183 = and i64 %180, 4294967295
  store i64 %183, i64* %RDI, align 8, !tbaa !2428
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 5
  store i64 %185, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
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
  %199 = load i64, i64* %198, align 8, !tbaa !2428
  %200 = add i64 %199, -8
  %201 = inttoptr i64 %200 to i64*
  store i64 %195, i64* %201
  store i64 %200, i64* %198, align 8, !tbaa !2428
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %193, i64* %202, align 8, !tbaa !2428
  %203 = load i64, i64* %PC
  %204 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %203, %struct.Memory* %176)
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 5
  store i64 %206, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %207 = load i32, i32* %ESI
  %208 = zext i32 %207 to i64
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 2
  store i64 %210, i64* %PC
  %211 = and i64 %208, 4294967295
  store i64 %211, i64* %RDI, align 8, !tbaa !2428
  %212 = load i64, i64* %PC
  %213 = add i64 %212, 5
  store i64 %213, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
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
  %227 = load i64, i64* %226, align 8, !tbaa !2428
  %228 = add i64 %227, -8
  %229 = inttoptr i64 %228 to i64*
  store i64 %223, i64* %229
  store i64 %228, i64* %226, align 8, !tbaa !2428
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %221, i64* %230, align 8, !tbaa !2428
  %231 = load i64, i64* %PC
  %232 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %231, %struct.Memory* %204)
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 5
  store i64 %234, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %235 = load i32, i32* %ESI
  %236 = zext i32 %235 to i64
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 2
  store i64 %238, i64* %PC
  %239 = and i64 %236, 4294967295
  store i64 %239, i64* %RDI, align 8, !tbaa !2428
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 5
  store i64 %241, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
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
  %255 = load i64, i64* %254, align 8, !tbaa !2428
  %256 = add i64 %255, -8
  %257 = inttoptr i64 %256 to i64*
  store i64 %251, i64* %257
  store i64 %256, i64* %254, align 8, !tbaa !2428
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %249, i64* %258, align 8, !tbaa !2428
  %259 = load i64, i64* %PC
  %260 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %259, %struct.Memory* %232)
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 5
  store i64 %262, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %263 = load i32, i32* %ESI
  %264 = zext i32 %263 to i64
  %265 = load i64, i64* %PC
  %266 = add i64 %265, 2
  store i64 %266, i64* %PC
  %267 = and i64 %264, 4294967295
  store i64 %267, i64* %RDI, align 8, !tbaa !2428
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 5
  store i64 %269, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
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
  %283 = load i64, i64* %282, align 8, !tbaa !2428
  %284 = add i64 %283, -8
  %285 = inttoptr i64 %284 to i64*
  store i64 %279, i64* %285
  store i64 %284, i64* %282, align 8, !tbaa !2428
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %277, i64* %286, align 8, !tbaa !2428
  %287 = load i64, i64* %PC
  %288 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %287, %struct.Memory* %260)
  %289 = load i64, i64* %PC
  %290 = add i64 %289, 5
  store i64 %290, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %291 = load i32, i32* %ESI
  %292 = zext i32 %291 to i64
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 2
  store i64 %294, i64* %PC
  %295 = and i64 %292, 4294967295
  store i64 %295, i64* %RDI, align 8, !tbaa !2428
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 5
  store i64 %297, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
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
  %311 = load i64, i64* %310, align 8, !tbaa !2428
  %312 = add i64 %311, -8
  %313 = inttoptr i64 %312 to i64*
  store i64 %307, i64* %313
  store i64 %312, i64* %310, align 8, !tbaa !2428
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %305, i64* %314, align 8, !tbaa !2428
  %315 = load i64, i64* %PC
  %316 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %315, %struct.Memory* %288)
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 5
  store i64 %318, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %319 = load i32, i32* %ESI
  %320 = zext i32 %319 to i64
  %321 = load i64, i64* %PC
  %322 = add i64 %321, 2
  store i64 %322, i64* %PC
  %323 = and i64 %320, 4294967295
  store i64 %323, i64* %RDI, align 8, !tbaa !2428
  %324 = load i64, i64* %PC
  %325 = add i64 %324, 5
  store i64 %325, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
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
  %339 = load i64, i64* %338, align 8, !tbaa !2428
  %340 = add i64 %339, -8
  %341 = inttoptr i64 %340 to i64*
  store i64 %335, i64* %341
  store i64 %340, i64* %338, align 8, !tbaa !2428
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %333, i64* %342, align 8, !tbaa !2428
  %343 = load i64, i64* %PC
  %344 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %343, %struct.Memory* %316)
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 5
  store i64 %346, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %347 = load i32, i32* %ESI
  %348 = zext i32 %347 to i64
  %349 = load i64, i64* %PC
  %350 = add i64 %349, 2
  store i64 %350, i64* %PC
  %351 = and i64 %348, 4294967295
  store i64 %351, i64* %RDI, align 8, !tbaa !2428
  %352 = load i64, i64* %PC
  %353 = add i64 %352, 5
  store i64 %353, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
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
  %367 = load i64, i64* %366, align 8, !tbaa !2428
  %368 = add i64 %367, -8
  %369 = inttoptr i64 %368 to i64*
  store i64 %363, i64* %369
  store i64 %368, i64* %366, align 8, !tbaa !2428
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %361, i64* %370, align 8, !tbaa !2428
  %371 = load i64, i64* %PC
  %372 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %371, %struct.Memory* %344)
  %373 = load i64, i64* %PC
  %374 = add i64 %373, 5
  store i64 %374, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %375 = load i32, i32* %ESI
  %376 = zext i32 %375 to i64
  %377 = load i64, i64* %PC
  %378 = add i64 %377, 2
  store i64 %378, i64* %PC
  %379 = and i64 %376, 4294967295
  store i64 %379, i64* %RDI, align 8, !tbaa !2428
  %380 = load i64, i64* %PC
  %381 = add i64 %380, 5
  store i64 %381, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
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
  %395 = load i64, i64* %394, align 8, !tbaa !2428
  %396 = add i64 %395, -8
  %397 = inttoptr i64 %396 to i64*
  store i64 %391, i64* %397
  store i64 %396, i64* %394, align 8, !tbaa !2428
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %389, i64* %398, align 8, !tbaa !2428
  %399 = load i64, i64* %PC
  %400 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %399, %struct.Memory* %372)
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 5
  store i64 %402, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %403 = load i32, i32* %ESI
  %404 = zext i32 %403 to i64
  %405 = load i64, i64* %PC
  %406 = add i64 %405, 2
  store i64 %406, i64* %PC
  %407 = and i64 %404, 4294967295
  store i64 %407, i64* %RDI, align 8, !tbaa !2428
  %408 = load i64, i64* %PC
  %409 = add i64 %408, 5
  store i64 %409, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
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
  %423 = load i64, i64* %422, align 8, !tbaa !2428
  %424 = add i64 %423, -8
  %425 = inttoptr i64 %424 to i64*
  store i64 %419, i64* %425
  store i64 %424, i64* %422, align 8, !tbaa !2428
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %417, i64* %426, align 8, !tbaa !2428
  %427 = load i64, i64* %PC
  %428 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %427, %struct.Memory* %400)
  %429 = load i64, i64* %PC
  %430 = add i64 %429, 5
  store i64 %430, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %431 = load i32, i32* %ESI
  %432 = zext i32 %431 to i64
  %433 = load i64, i64* %PC
  %434 = add i64 %433, 2
  store i64 %434, i64* %PC
  %435 = and i64 %432, 4294967295
  store i64 %435, i64* %RDI, align 8, !tbaa !2428
  %436 = load i64, i64* %PC
  %437 = add i64 %436, 5
  store i64 %437, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
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
  %451 = load i64, i64* %450, align 8, !tbaa !2428
  %452 = add i64 %451, -8
  %453 = inttoptr i64 %452 to i64*
  store i64 %447, i64* %453
  store i64 %452, i64* %450, align 8, !tbaa !2428
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %445, i64* %454, align 8, !tbaa !2428
  %455 = load i64, i64* %PC
  %456 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %455, %struct.Memory* %428)
  %457 = load i64, i64* %RBP
  %458 = sub i64 %457, 56
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 4
  store i64 %460, i64* %PC
  store i64 %458, i64* %RSI, align 8, !tbaa !2428
  %461 = load i64, i64* %RBP
  %462 = sub i64 %461, 64
  %463 = load i64, i64* %PC
  %464 = add i64 %463, 4
  store i64 %464, i64* %PC
  store i64 %462, i64* %RDX, align 8, !tbaa !2428
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
  store i64 %477, i64* %RDI, align 8, !tbaa !2428
  %478 = load i64, i64* %RBP
  %479 = sub i64 %478, 72
  %480 = load i64, i64* %PC
  %481 = add i64 %480, 4
  store i64 %481, i64* %PC
  %482 = inttoptr i64 %479 to i64*
  %483 = load i64, i64* %482
  store i64 %483, i64* %RCX, align 8, !tbaa !2428
  %484 = load i64, i64* %RBP
  %485 = sub i64 %484, 88
  %486 = load i64, i64* %PC
  %487 = add i64 %486, 4
  store i64 %487, i64* %PC
  %488 = inttoptr i64 %485 to i64*
  %489 = load i64, i64* %488
  store i64 %489, i64* %R8, align 8, !tbaa !2428
  %490 = load i64, i64* %RBP
  %491 = sub i64 %490, 96
  %492 = load i64, i64* %PC
  %493 = add i64 %492, 4
  store i64 %493, i64* %PC
  %494 = inttoptr i64 %491 to i64*
  %495 = load i64, i64* %494
  store i64 %495, i64* %R9, align 8, !tbaa !2428
  %496 = load i64, i64* %RBP
  %497 = sub i64 %496, 104
  %498 = load i64, i64* %PC
  %499 = add i64 %498, 4
  store i64 %499, i64* %PC
  %500 = inttoptr i64 %497 to i64*
  %501 = load i64, i64* %500
  store i64 %501, i64* %RAX, align 8, !tbaa !2428
  %502 = load i64, i64* %RBP
  %503 = sub i64 %502, 112
  %504 = load i64, i64* %PC
  %505 = add i64 %504, 4
  store i64 %505, i64* %PC
  %506 = inttoptr i64 %503 to i64*
  %507 = load i64, i64* %506
  store i64 %507, i64* %R10, align 8, !tbaa !2428
  %508 = load i64, i64* %RBP
  %509 = sub i64 %508, 120
  %510 = load i64, i64* %PC
  %511 = add i64 %510, 4
  store i64 %511, i64* %PC
  %512 = inttoptr i64 %509 to i64*
  %513 = load i64, i64* %512
  store i64 %513, i64* %R11, align 8, !tbaa !2428
  %514 = load i64, i64* %RBP
  %515 = sub i64 %514, 128
  %516 = load i64, i64* %PC
  %517 = add i64 %516, 4
  store i64 %517, i64* %PC
  %518 = inttoptr i64 %515 to i64*
  %519 = load i64, i64* %518
  store i64 %519, i64* %RBX, align 8, !tbaa !2428
  %520 = load i64, i64* %RBP
  %521 = sub i64 %520, 144
  %522 = load i64, i64* %PC
  %523 = add i64 %522, 7
  store i64 %523, i64* %PC
  %524 = inttoptr i64 %521 to i64*
  %525 = load i64, i64* %524
  store i64 %525, i64* %R14, align 8, !tbaa !2428
  %526 = load i64, i64* %RBP
  %527 = sub i64 %526, 152
  %528 = load i64, i64* %PC
  %529 = add i64 %528, 7
  store i64 %529, i64* %PC
  %530 = inttoptr i64 %527 to i64*
  %531 = load i64, i64* %530
  store i64 %531, i64* %R15, align 8, !tbaa !2428
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
  %574 = load i64, i64* %573, align 8, !tbaa !2428
  %575 = add i64 %574, -8
  %576 = inttoptr i64 %575 to i64*
  store i64 %570, i64* %576
  store i64 %575, i64* %573, align 8, !tbaa !2428
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %568, i64* %577, align 8, !tbaa !2428
  %578 = load i64, i64* %PC
  %579 = call %struct.Memory* @sub_400bb0_init_array(%struct.State* %0, i64 %578, %struct.Memory* %456)
  %580 = load i64, i64* %RBP
  %581 = sub i64 %580, 44
  %582 = load i64, i64* %PC
  %583 = add i64 %582, 3
  store i64 %583, i64* %PC
  %584 = inttoptr i64 %581 to i32*
  %585 = load i32, i32* %584
  %586 = zext i32 %585 to i64
  store i64 %586, i64* %RDI, align 8, !tbaa !2428
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
  store i64 %612, i64* %RSI, align 8, !tbaa !2428
  %613 = load i64, i64* %RBP
  %614 = sub i64 %613, 80
  %615 = load i64, i64* %PC
  %616 = add i64 %615, 4
  store i64 %616, i64* %PC
  %617 = inttoptr i64 %614 to i64*
  %618 = load i64, i64* %617
  store i64 %618, i64* %RDX, align 8, !tbaa !2428
  %619 = load i64, i64* %RBP
  %620 = sub i64 %619, 88
  %621 = load i64, i64* %PC
  %622 = add i64 %621, 4
  store i64 %622, i64* %PC
  %623 = inttoptr i64 %620 to i64*
  %624 = load i64, i64* %623
  store i64 %624, i64* %RCX, align 8, !tbaa !2428
  %625 = load i64, i64* %RBP
  %626 = sub i64 %625, 96
  %627 = load i64, i64* %PC
  %628 = add i64 %627, 4
  store i64 %628, i64* %PC
  %629 = inttoptr i64 %626 to i64*
  %630 = load i64, i64* %629
  store i64 %630, i64* %R8, align 8, !tbaa !2428
  %631 = load i64, i64* %RBP
  %632 = sub i64 %631, 104
  %633 = load i64, i64* %PC
  %634 = add i64 %633, 4
  store i64 %634, i64* %PC
  %635 = inttoptr i64 %632 to i64*
  %636 = load i64, i64* %635
  store i64 %636, i64* %R9, align 8, !tbaa !2428
  %637 = load i64, i64* %RBP
  %638 = sub i64 %637, 112
  %639 = load i64, i64* %PC
  %640 = add i64 %639, 4
  store i64 %640, i64* %PC
  %641 = inttoptr i64 %638 to i64*
  %642 = load i64, i64* %641
  store i64 %642, i64* %RAX, align 8, !tbaa !2428
  %643 = load i64, i64* %RBP
  %644 = sub i64 %643, 120
  %645 = load i64, i64* %PC
  %646 = add i64 %645, 4
  store i64 %646, i64* %PC
  %647 = inttoptr i64 %644 to i64*
  %648 = load i64, i64* %647
  store i64 %648, i64* %R10, align 8, !tbaa !2428
  %649 = load i64, i64* %RBP
  %650 = sub i64 %649, 136
  %651 = load i64, i64* %PC
  %652 = add i64 %651, 7
  store i64 %652, i64* %PC
  %653 = inttoptr i64 %650 to i64*
  %654 = load i64, i64* %653
  store i64 %654, i64* %R11, align 8, !tbaa !2428
  %655 = load i64, i64* %RBP
  %656 = sub i64 %655, 144
  %657 = load i64, i64* %PC
  %658 = add i64 %657, 7
  store i64 %658, i64* %PC
  %659 = inttoptr i64 %656 to i64*
  %660 = load i64, i64* %659
  store i64 %660, i64* %RBX, align 8, !tbaa !2428
  %661 = load i64, i64* %RBP
  %662 = sub i64 %661, 152
  %663 = load i64, i64* %PC
  %664 = add i64 %663, 7
  store i64 %664, i64* %PC
  %665 = inttoptr i64 %662 to i64*
  %666 = load i64, i64* %665
  store i64 %666, i64* %R14, align 8, !tbaa !2428
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
  %703 = load i64, i64* %702, align 8, !tbaa !2428
  %704 = add i64 %703, -8
  %705 = inttoptr i64 %704 to i64*
  store i64 %699, i64* %705
  store i64 %704, i64* %702, align 8, !tbaa !2428
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %697, i64* %706, align 8, !tbaa !2428
  %707 = load i64, i64* %PC
  %708 = call %struct.Memory* @sub_400da0_kernel_gemver(%struct.State* %0, i64 %707, %struct.Memory* %579)
  %709 = load i64, i64* %RBP
  %710 = sub i64 %709, 44
  %711 = load i64, i64* %PC
  %712 = add i64 %711, 3
  store i64 %712, i64* %PC
  %713 = inttoptr i64 %710 to i32*
  %714 = load i32, i32* %713
  %715 = zext i32 %714 to i64
  store i64 %715, i64* %RDI, align 8, !tbaa !2428
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
  store i64 %741, i64* %RSI, align 8, !tbaa !2428
  %742 = load i64, i64* %RBP
  %743 = sub i64 %742, 80
  %744 = load i64, i64* %PC
  %745 = add i64 %744, 4
  store i64 %745, i64* %PC
  %746 = inttoptr i64 %743 to i64*
  %747 = load i64, i64* %746
  store i64 %747, i64* %RDX, align 8, !tbaa !2428
  %748 = load i64, i64* %RBP
  %749 = sub i64 %748, 88
  %750 = load i64, i64* %PC
  %751 = add i64 %750, 4
  store i64 %751, i64* %PC
  %752 = inttoptr i64 %749 to i64*
  %753 = load i64, i64* %752
  store i64 %753, i64* %RCX, align 8, !tbaa !2428
  %754 = load i64, i64* %RBP
  %755 = sub i64 %754, 96
  %756 = load i64, i64* %PC
  %757 = add i64 %756, 4
  store i64 %757, i64* %PC
  %758 = inttoptr i64 %755 to i64*
  %759 = load i64, i64* %758
  store i64 %759, i64* %R8, align 8, !tbaa !2428
  %760 = load i64, i64* %RBP
  %761 = sub i64 %760, 104
  %762 = load i64, i64* %PC
  %763 = add i64 %762, 4
  store i64 %763, i64* %PC
  %764 = inttoptr i64 %761 to i64*
  %765 = load i64, i64* %764
  store i64 %765, i64* %R9, align 8, !tbaa !2428
  %766 = load i64, i64* %RBP
  %767 = sub i64 %766, 112
  %768 = load i64, i64* %PC
  %769 = add i64 %768, 4
  store i64 %769, i64* %PC
  %770 = inttoptr i64 %767 to i64*
  %771 = load i64, i64* %770
  store i64 %771, i64* %RAX, align 8, !tbaa !2428
  %772 = load i64, i64* %RBP
  %773 = sub i64 %772, 128
  %774 = load i64, i64* %PC
  %775 = add i64 %774, 4
  store i64 %775, i64* %PC
  %776 = inttoptr i64 %773 to i64*
  %777 = load i64, i64* %776
  store i64 %777, i64* %R10, align 8, !tbaa !2428
  %778 = load i64, i64* %RBP
  %779 = sub i64 %778, 136
  %780 = load i64, i64* %PC
  %781 = add i64 %780, 7
  store i64 %781, i64* %PC
  %782 = inttoptr i64 %779 to i64*
  %783 = load i64, i64* %782
  store i64 %783, i64* %R11, align 8, !tbaa !2428
  %784 = load i64, i64* %RBP
  %785 = sub i64 %784, 144
  %786 = load i64, i64* %PC
  %787 = add i64 %786, 7
  store i64 %787, i64* %PC
  %788 = inttoptr i64 %785 to i64*
  %789 = load i64, i64* %788
  store i64 %789, i64* %RBX, align 8, !tbaa !2428
  %790 = load i64, i64* %RBP
  %791 = sub i64 %790, 152
  %792 = load i64, i64* %PC
  %793 = add i64 %792, 7
  store i64 %793, i64* %PC
  %794 = inttoptr i64 %791 to i64*
  %795 = load i64, i64* %794
  store i64 %795, i64* %R14, align 8, !tbaa !2428
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
  %832 = load i64, i64* %831, align 8, !tbaa !2428
  %833 = add i64 %832, -8
  %834 = inttoptr i64 %833 to i64*
  store i64 %828, i64* %834
  store i64 %833, i64* %831, align 8, !tbaa !2428
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %826, i64* %835, align 8, !tbaa !2428
  %836 = load i64, i64* %PC
  %837 = call %struct.Memory* @sub_401030_kernel_gemver_StrictFP(%struct.State* %0, i64 %836, %struct.Memory* %708)
  %838 = load i64, i64* %RBP
  %839 = sub i64 %838, 44
  %840 = load i64, i64* %PC
  %841 = add i64 %840, 3
  store i64 %841, i64* %PC
  %842 = inttoptr i64 %839 to i32*
  %843 = load i32, i32* %842
  %844 = zext i32 %843 to i64
  store i64 %844, i64* %RDI, align 8, !tbaa !2428
  %845 = load i64, i64* %RBP
  %846 = sub i64 %845, 120
  %847 = load i64, i64* %PC
  %848 = add i64 %847, 4
  store i64 %848, i64* %PC
  %849 = inttoptr i64 %846 to i64*
  %850 = load i64, i64* %849
  store i64 %850, i64* %RSI, align 8, !tbaa !2428
  %851 = load i64, i64* %RBP
  %852 = sub i64 %851, 128
  %853 = load i64, i64* %PC
  %854 = add i64 %853, 4
  store i64 %854, i64* %PC
  %855 = inttoptr i64 %852 to i64*
  %856 = load i64, i64* %855
  store i64 %856, i64* %RDX, align 8, !tbaa !2428
  %857 = load i64, i64* %PC
  %858 = add i64 %857, 2014
  %859 = load i64, i64* %PC
  %860 = add i64 %859, 5
  %861 = load i64, i64* %PC
  %862 = add i64 %861, 5
  store i64 %862, i64* %PC
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %864 = load i64, i64* %863, align 8, !tbaa !2428
  %865 = add i64 %864, -8
  %866 = inttoptr i64 %865 to i64*
  store i64 %860, i64* %866
  store i64 %865, i64* %863, align 8, !tbaa !2428
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %858, i64* %867, align 8, !tbaa !2428
  %868 = load i64, i64* %PC
  %869 = call %struct.Memory* @sub_4012c0_check_FP(%struct.State* %0, i64 %868, %struct.Memory* %837)
  %870 = load i32, i32* %EAX
  %871 = zext i32 %870 to i64
  %872 = load i64, i64* %PC
  %873 = add i64 %872, 3
  store i64 %873, i64* %PC
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %874, align 1, !tbaa !2432
  %875 = and i32 %870, 255
  %876 = call i32 @llvm.ctpop.i32(i32 %875) #16
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  %879 = xor i8 %878, 1
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %879, i8* %880, align 1, !tbaa !2446
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %881, align 1, !tbaa !2447
  %882 = icmp eq i32 %870, 0
  %883 = zext i1 %882 to i8
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %883, i8* %884, align 1, !tbaa !2448
  %885 = lshr i32 %870, 31
  %886 = trunc i32 %885 to i8
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %886, i8* %887, align 1, !tbaa !2449
  %888 = lshr i32 %870, 31
  %889 = xor i32 %885, %888
  %890 = add nuw nsw i32 %889, %888
  %891 = icmp eq i32 %890, 2
  %892 = zext i1 %891 to i8
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %892, i8* %893, align 1, !tbaa !2450
  %894 = load i64, i64* %PC
  %895 = add i64 %894, 18
  %896 = load i64, i64* %PC
  %897 = add i64 %896, 6
  %898 = load i64, i64* %PC
  %899 = add i64 %898, 6
  store i64 %899, i64* %PC
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %901 = load i8, i8* %900, align 1, !tbaa !2448
  %902 = icmp eq i8 %901, 0
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %905 = select i1 %902, i64 %895, i64 %897
  store i64 %905, i64* %904, align 8, !tbaa !2428
  %906 = load i8, i8* %BRANCH_TAKEN
  %907 = icmp eq i8 %906, 1
  %908 = load i64, i64* %RBP
  br i1 %907, label %block_400afc, label %block_400af0

block_400afc:                                     ; preds = %block_4008b0
  %909 = sub i64 %908, 44
  %910 = load i64, i64* %PC
  %911 = add i64 %910, 3
  store i64 %911, i64* %PC
  %912 = inttoptr i64 %909 to i32*
  %913 = load i32, i32* %912
  %914 = zext i32 %913 to i64
  store i64 %914, i64* %RDI, align 8, !tbaa !2428
  %915 = load i64, i64* %RBP
  %916 = sub i64 %915, 128
  %917 = load i64, i64* %PC
  %918 = add i64 %917, 4
  store i64 %918, i64* %PC
  %919 = inttoptr i64 %916 to i64*
  %920 = load i64, i64* %919
  store i64 %920, i64* %RSI, align 8, !tbaa !2428
  %921 = load i64, i64* %PC
  %922 = add i64 %921, 2221
  %923 = load i64, i64* %PC
  %924 = add i64 %923, 5
  %925 = load i64, i64* %PC
  %926 = add i64 %925, 5
  store i64 %926, i64* %PC
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %928 = load i64, i64* %927, align 8, !tbaa !2428
  %929 = add i64 %928, -8
  %930 = inttoptr i64 %929 to i64*
  store i64 %924, i64* %930
  store i64 %929, i64* %927, align 8, !tbaa !2428
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %922, i64* %931, align 8, !tbaa !2428
  %932 = load i64, i64* %PC
  %933 = call %struct.Memory* @sub_4013b0_print_array(%struct.State* %0, i64 %932, %struct.Memory* %869)
  %934 = load i64, i64* %RBP
  %935 = sub i64 %934, 72
  %936 = load i64, i64* %PC
  %937 = add i64 %936, 4
  store i64 %937, i64* %PC
  %938 = inttoptr i64 %935 to i64*
  %939 = load i64, i64* %938
  store i64 %939, i64* %RSI, align 8, !tbaa !2428
  %940 = load i64, i64* %RSI
  %941 = load i64, i64* %PC
  %942 = add i64 %941, 3
  store i64 %942, i64* %PC
  store i64 %940, i64* %RDI, align 8, !tbaa !2428
  %943 = load i64, i64* %PC
  %944 = sub i64 %943, 1423
  %945 = load i64, i64* %PC
  %946 = add i64 %945, 5
  %947 = load i64, i64* %PC
  %948 = add i64 %947, 5
  store i64 %948, i64* %PC
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %950 = load i64, i64* %949, align 8, !tbaa !2428
  %951 = add i64 %950, -8
  %952 = inttoptr i64 %951 to i64*
  store i64 %946, i64* %952
  store i64 %951, i64* %949, align 8, !tbaa !2428
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %944, i64* %953, align 8, !tbaa !2428
  %954 = load i64, i64* %PC
  %955 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %954, %struct.Memory* %933)
  %956 = load i64, i64* %RBP
  %957 = sub i64 %956, 80
  %958 = load i64, i64* %PC
  %959 = add i64 %958, 4
  store i64 %959, i64* %PC
  %960 = inttoptr i64 %957 to i64*
  %961 = load i64, i64* %960
  store i64 %961, i64* %RSI, align 8, !tbaa !2428
  %962 = load i64, i64* %RSI
  %963 = load i64, i64* %PC
  %964 = add i64 %963, 3
  store i64 %964, i64* %PC
  store i64 %962, i64* %RDI, align 8, !tbaa !2428
  %965 = load i64, i64* %PC
  %966 = sub i64 %965, 1435
  %967 = load i64, i64* %PC
  %968 = add i64 %967, 5
  %969 = load i64, i64* %PC
  %970 = add i64 %969, 5
  store i64 %970, i64* %PC
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %972 = load i64, i64* %971, align 8, !tbaa !2428
  %973 = add i64 %972, -8
  %974 = inttoptr i64 %973 to i64*
  store i64 %968, i64* %974
  store i64 %973, i64* %971, align 8, !tbaa !2428
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %966, i64* %975, align 8, !tbaa !2428
  %976 = load i64, i64* %PC
  %977 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %976, %struct.Memory* %955)
  %978 = load i64, i64* %RBP
  %979 = sub i64 %978, 88
  %980 = load i64, i64* %PC
  %981 = add i64 %980, 4
  store i64 %981, i64* %PC
  %982 = inttoptr i64 %979 to i64*
  %983 = load i64, i64* %982
  store i64 %983, i64* %RSI, align 8, !tbaa !2428
  %984 = load i64, i64* %RSI
  %985 = load i64, i64* %PC
  %986 = add i64 %985, 3
  store i64 %986, i64* %PC
  store i64 %984, i64* %RDI, align 8, !tbaa !2428
  %987 = load i64, i64* %PC
  %988 = sub i64 %987, 1447
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
  %999 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %998, %struct.Memory* %977)
  %1000 = load i64, i64* %RBP
  %1001 = sub i64 %1000, 96
  %1002 = load i64, i64* %PC
  %1003 = add i64 %1002, 4
  store i64 %1003, i64* %PC
  %1004 = inttoptr i64 %1001 to i64*
  %1005 = load i64, i64* %1004
  store i64 %1005, i64* %RSI, align 8, !tbaa !2428
  %1006 = load i64, i64* %RSI
  %1007 = load i64, i64* %PC
  %1008 = add i64 %1007, 3
  store i64 %1008, i64* %PC
  store i64 %1006, i64* %RDI, align 8, !tbaa !2428
  %1009 = load i64, i64* %PC
  %1010 = sub i64 %1009, 1459
  %1011 = load i64, i64* %PC
  %1012 = add i64 %1011, 5
  %1013 = load i64, i64* %PC
  %1014 = add i64 %1013, 5
  store i64 %1014, i64* %PC
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1016 = load i64, i64* %1015, align 8, !tbaa !2428
  %1017 = add i64 %1016, -8
  %1018 = inttoptr i64 %1017 to i64*
  store i64 %1012, i64* %1018
  store i64 %1017, i64* %1015, align 8, !tbaa !2428
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1010, i64* %1019, align 8, !tbaa !2428
  %1020 = load i64, i64* %PC
  %1021 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %1020, %struct.Memory* %999)
  %1022 = load i64, i64* %RBP
  %1023 = sub i64 %1022, 104
  %1024 = load i64, i64* %PC
  %1025 = add i64 %1024, 4
  store i64 %1025, i64* %PC
  %1026 = inttoptr i64 %1023 to i64*
  %1027 = load i64, i64* %1026
  store i64 %1027, i64* %RSI, align 8, !tbaa !2428
  %1028 = load i64, i64* %RSI
  %1029 = load i64, i64* %PC
  %1030 = add i64 %1029, 3
  store i64 %1030, i64* %PC
  store i64 %1028, i64* %RDI, align 8, !tbaa !2428
  %1031 = load i64, i64* %PC
  %1032 = sub i64 %1031, 1471
  %1033 = load i64, i64* %PC
  %1034 = add i64 %1033, 5
  %1035 = load i64, i64* %PC
  %1036 = add i64 %1035, 5
  store i64 %1036, i64* %PC
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1038 = load i64, i64* %1037, align 8, !tbaa !2428
  %1039 = add i64 %1038, -8
  %1040 = inttoptr i64 %1039 to i64*
  store i64 %1034, i64* %1040
  store i64 %1039, i64* %1037, align 8, !tbaa !2428
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1032, i64* %1041, align 8, !tbaa !2428
  %1042 = load i64, i64* %PC
  %1043 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %1042, %struct.Memory* %1021)
  %1044 = load i64, i64* %RBP
  %1045 = sub i64 %1044, 112
  %1046 = load i64, i64* %PC
  %1047 = add i64 %1046, 4
  store i64 %1047, i64* %PC
  %1048 = inttoptr i64 %1045 to i64*
  %1049 = load i64, i64* %1048
  store i64 %1049, i64* %RSI, align 8, !tbaa !2428
  %1050 = load i64, i64* %RSI
  %1051 = load i64, i64* %PC
  %1052 = add i64 %1051, 3
  store i64 %1052, i64* %PC
  store i64 %1050, i64* %RDI, align 8, !tbaa !2428
  %1053 = load i64, i64* %PC
  %1054 = sub i64 %1053, 1483
  %1055 = load i64, i64* %PC
  %1056 = add i64 %1055, 5
  %1057 = load i64, i64* %PC
  %1058 = add i64 %1057, 5
  store i64 %1058, i64* %PC
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1060 = load i64, i64* %1059, align 8, !tbaa !2428
  %1061 = add i64 %1060, -8
  %1062 = inttoptr i64 %1061 to i64*
  store i64 %1056, i64* %1062
  store i64 %1061, i64* %1059, align 8, !tbaa !2428
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1054, i64* %1063, align 8, !tbaa !2428
  %1064 = load i64, i64* %PC
  %1065 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %1064, %struct.Memory* %1043)
  %1066 = load i64, i64* %RBP
  %1067 = sub i64 %1066, 120
  %1068 = load i64, i64* %PC
  %1069 = add i64 %1068, 4
  store i64 %1069, i64* %PC
  %1070 = inttoptr i64 %1067 to i64*
  %1071 = load i64, i64* %1070
  store i64 %1071, i64* %RSI, align 8, !tbaa !2428
  %1072 = load i64, i64* %RSI
  %1073 = load i64, i64* %PC
  %1074 = add i64 %1073, 3
  store i64 %1074, i64* %PC
  store i64 %1072, i64* %RDI, align 8, !tbaa !2428
  %1075 = load i64, i64* %PC
  %1076 = sub i64 %1075, 1495
  %1077 = load i64, i64* %PC
  %1078 = add i64 %1077, 5
  %1079 = load i64, i64* %PC
  %1080 = add i64 %1079, 5
  store i64 %1080, i64* %PC
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1082 = load i64, i64* %1081, align 8, !tbaa !2428
  %1083 = add i64 %1082, -8
  %1084 = inttoptr i64 %1083 to i64*
  store i64 %1078, i64* %1084
  store i64 %1083, i64* %1081, align 8, !tbaa !2428
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1076, i64* %1085, align 8, !tbaa !2428
  %1086 = load i64, i64* %PC
  %1087 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %1086, %struct.Memory* %1065)
  %1088 = load i64, i64* %RBP
  %1089 = sub i64 %1088, 128
  %1090 = load i64, i64* %PC
  %1091 = add i64 %1090, 4
  store i64 %1091, i64* %PC
  %1092 = inttoptr i64 %1089 to i64*
  %1093 = load i64, i64* %1092
  store i64 %1093, i64* %RSI, align 8, !tbaa !2428
  %1094 = load i64, i64* %RSI
  %1095 = load i64, i64* %PC
  %1096 = add i64 %1095, 3
  store i64 %1096, i64* %PC
  store i64 %1094, i64* %RDI, align 8, !tbaa !2428
  %1097 = load i64, i64* %PC
  %1098 = sub i64 %1097, 1507
  %1099 = load i64, i64* %PC
  %1100 = add i64 %1099, 5
  %1101 = load i64, i64* %PC
  %1102 = add i64 %1101, 5
  store i64 %1102, i64* %PC
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1104 = load i64, i64* %1103, align 8, !tbaa !2428
  %1105 = add i64 %1104, -8
  %1106 = inttoptr i64 %1105 to i64*
  store i64 %1100, i64* %1106
  store i64 %1105, i64* %1103, align 8, !tbaa !2428
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1098, i64* %1107, align 8, !tbaa !2428
  %1108 = load i64, i64* %PC
  %1109 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %1108, %struct.Memory* %1087)
  %1110 = load i64, i64* %RBP
  %1111 = sub i64 %1110, 136
  %1112 = load i64, i64* %PC
  %1113 = add i64 %1112, 7
  store i64 %1113, i64* %PC
  %1114 = inttoptr i64 %1111 to i64*
  %1115 = load i64, i64* %1114
  store i64 %1115, i64* %RSI, align 8, !tbaa !2428
  %1116 = load i64, i64* %RSI
  %1117 = load i64, i64* %PC
  %1118 = add i64 %1117, 3
  store i64 %1118, i64* %PC
  store i64 %1116, i64* %RDI, align 8, !tbaa !2428
  %1119 = load i64, i64* %PC
  %1120 = sub i64 %1119, 1522
  %1121 = load i64, i64* %PC
  %1122 = add i64 %1121, 5
  %1123 = load i64, i64* %PC
  %1124 = add i64 %1123, 5
  store i64 %1124, i64* %PC
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1126 = load i64, i64* %1125, align 8, !tbaa !2428
  %1127 = add i64 %1126, -8
  %1128 = inttoptr i64 %1127 to i64*
  store i64 %1122, i64* %1128
  store i64 %1127, i64* %1125, align 8, !tbaa !2428
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1120, i64* %1129, align 8, !tbaa !2428
  %1130 = load i64, i64* %PC
  %1131 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %1130, %struct.Memory* %1109)
  %1132 = load i64, i64* %RBP
  %1133 = sub i64 %1132, 144
  %1134 = load i64, i64* %PC
  %1135 = add i64 %1134, 7
  store i64 %1135, i64* %PC
  %1136 = inttoptr i64 %1133 to i64*
  %1137 = load i64, i64* %1136
  store i64 %1137, i64* %RSI, align 8, !tbaa !2428
  %1138 = load i64, i64* %RSI
  %1139 = load i64, i64* %PC
  %1140 = add i64 %1139, 3
  store i64 %1140, i64* %PC
  store i64 %1138, i64* %RDI, align 8, !tbaa !2428
  %1141 = load i64, i64* %PC
  %1142 = sub i64 %1141, 1537
  %1143 = load i64, i64* %PC
  %1144 = add i64 %1143, 5
  %1145 = load i64, i64* %PC
  %1146 = add i64 %1145, 5
  store i64 %1146, i64* %PC
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1148 = load i64, i64* %1147, align 8, !tbaa !2428
  %1149 = add i64 %1148, -8
  %1150 = inttoptr i64 %1149 to i64*
  store i64 %1144, i64* %1150
  store i64 %1149, i64* %1147, align 8, !tbaa !2428
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1142, i64* %1151, align 8, !tbaa !2428
  %1152 = load i64, i64* %PC
  %1153 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %1152, %struct.Memory* %1131)
  %1154 = load i64, i64* %RBP
  %1155 = sub i64 %1154, 152
  %1156 = load i64, i64* %PC
  %1157 = add i64 %1156, 7
  store i64 %1157, i64* %PC
  %1158 = inttoptr i64 %1155 to i64*
  %1159 = load i64, i64* %1158
  store i64 %1159, i64* %RSI, align 8, !tbaa !2428
  %1160 = load i64, i64* %RSI
  %1161 = load i64, i64* %PC
  %1162 = add i64 %1161, 3
  store i64 %1162, i64* %PC
  store i64 %1160, i64* %RDI, align 8, !tbaa !2428
  %1163 = load i64, i64* %PC
  %1164 = sub i64 %1163, 1552
  %1165 = load i64, i64* %PC
  %1166 = add i64 %1165, 5
  %1167 = load i64, i64* %PC
  %1168 = add i64 %1167, 5
  store i64 %1168, i64* %PC
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1170 = load i64, i64* %1169, align 8, !tbaa !2428
  %1171 = add i64 %1170, -8
  %1172 = inttoptr i64 %1171 to i64*
  store i64 %1166, i64* %1172
  store i64 %1171, i64* %1169, align 8, !tbaa !2428
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1164, i64* %1173, align 8, !tbaa !2428
  %1174 = load i64, i64* %PC
  %1175 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %1174, %struct.Memory* %1153)
  %1176 = load i64, i64* %RBP
  %1177 = sub i64 %1176, 28
  %1178 = load i64, i64* %PC
  %1179 = add i64 %1178, 7
  store i64 %1179, i64* %PC
  %1180 = inttoptr i64 %1177 to i32*
  store i32 0, i32* %1180
  br label %block_400b9c

block_400b9c:                                     ; preds = %block_400af0, %block_400afc
  %MEMORY.0 = phi %struct.Memory* [ %1175, %block_400afc ], [ %869, %block_400af0 ]
  %1181 = load i64, i64* %RBP
  %1182 = sub i64 %1181, 28
  %1183 = load i64, i64* %PC
  %1184 = add i64 %1183, 3
  store i64 %1184, i64* %PC
  %1185 = inttoptr i64 %1182 to i32*
  %1186 = load i32, i32* %1185
  %1187 = zext i32 %1186 to i64
  store i64 %1187, i64* %RAX, align 8, !tbaa !2428
  %1188 = load i64, i64* %RSP
  %1189 = load i64, i64* %PC
  %1190 = add i64 %1189, 7
  store i64 %1190, i64* %PC
  %1191 = add i64 184, %1188
  store i64 %1191, i64* %RSP, align 8, !tbaa !2428
  %1192 = icmp ult i64 %1191, %1188
  %1193 = icmp ult i64 %1191, 184
  %1194 = or i1 %1192, %1193
  %1195 = zext i1 %1194 to i8
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1195, i8* %1196, align 1, !tbaa !2432
  %1197 = trunc i64 %1191 to i32
  %1198 = and i32 %1197, 255
  %1199 = call i32 @llvm.ctpop.i32(i32 %1198) #16
  %1200 = trunc i32 %1199 to i8
  %1201 = and i8 %1200, 1
  %1202 = xor i8 %1201, 1
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1202, i8* %1203, align 1, !tbaa !2446
  %1204 = xor i64 184, %1188
  %1205 = xor i64 %1204, %1191
  %1206 = lshr i64 %1205, 4
  %1207 = trunc i64 %1206 to i8
  %1208 = and i8 %1207, 1
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1208, i8* %1209, align 1, !tbaa !2447
  %1210 = icmp eq i64 %1191, 0
  %1211 = zext i1 %1210 to i8
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1211, i8* %1212, align 1, !tbaa !2448
  %1213 = lshr i64 %1191, 63
  %1214 = trunc i64 %1213 to i8
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1214, i8* %1215, align 1, !tbaa !2449
  %1216 = lshr i64 %1188, 63
  %1217 = xor i64 %1213, %1216
  %1218 = add nuw nsw i64 %1217, %1213
  %1219 = icmp eq i64 %1218, 2
  %1220 = zext i1 %1219 to i8
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1220, i8* %1221, align 1, !tbaa !2450
  %1222 = load i64, i64* %PC
  %1223 = add i64 %1222, 1
  store i64 %1223, i64* %PC
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1225 = load i64, i64* %1224, align 8, !tbaa !2428
  %1226 = add i64 %1225, 8
  %1227 = inttoptr i64 %1225 to i64*
  %1228 = load i64, i64* %1227
  store i64 %1228, i64* %RBX, align 8, !tbaa !2428
  store i64 %1226, i64* %1224, align 8, !tbaa !2428
  %1229 = load i64, i64* %PC
  %1230 = add i64 %1229, 2
  store i64 %1230, i64* %PC
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1232 = load i64, i64* %1231, align 8, !tbaa !2428
  %1233 = add i64 %1232, 8
  %1234 = inttoptr i64 %1232 to i64*
  %1235 = load i64, i64* %1234
  store i64 %1235, i64* %R14, align 8, !tbaa !2428
  store i64 %1233, i64* %1231, align 8, !tbaa !2428
  %1236 = load i64, i64* %PC
  %1237 = add i64 %1236, 2
  store i64 %1237, i64* %PC
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1239 = load i64, i64* %1238, align 8, !tbaa !2428
  %1240 = add i64 %1239, 8
  %1241 = inttoptr i64 %1239 to i64*
  %1242 = load i64, i64* %1241
  store i64 %1242, i64* %R15, align 8, !tbaa !2428
  store i64 %1240, i64* %1238, align 8, !tbaa !2428
  %1243 = load i64, i64* %PC
  %1244 = add i64 %1243, 1
  store i64 %1244, i64* %PC
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1246 = load i64, i64* %1245, align 8, !tbaa !2428
  %1247 = add i64 %1246, 8
  %1248 = inttoptr i64 %1246 to i64*
  %1249 = load i64, i64* %1248
  store i64 %1249, i64* %RBP, align 8, !tbaa !2428
  store i64 %1247, i64* %1245, align 8, !tbaa !2428
  %1250 = load i64, i64* %PC
  %1251 = add i64 %1250, 1
  store i64 %1251, i64* %PC
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1254 = load i64, i64* %1253, align 8, !tbaa !2428
  %1255 = inttoptr i64 %1254 to i64*
  %1256 = load i64, i64* %1255
  store i64 %1256, i64* %1252, align 8, !tbaa !2428
  %1257 = add i64 %1254, 8
  store i64 %1257, i64* %1253, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400af0:                                     ; preds = %block_4008b0
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
  store i64 %1263, i64* %1266, align 8, !tbaa !2428
  br label %block_400b9c
}

; Function Attrs: noinline
define %struct.Memory* @sub_400760_polybench_timer_start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %36 = call %struct.Memory* @sub_400750_polybench_prepare_instruments(%struct.State* %0, i64 %35, %struct.Memory* %2)
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
  %49 = call %struct.Memory* @sub_400780_rtclock(%struct.State* %0, i64 %48, %struct.Memory* %36)
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
define %struct.Memory* @sub_401030_kernel_gemver_StrictFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401030:
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
  %66 = load i64, i64* %R14
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 2
  store i64 %68, i64* %PC
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %70 = load i64, i64* %69, align 8, !tbaa !2428
  %71 = add i64 %70, -8
  %72 = inttoptr i64 %71 to i64*
  store i64 %66, i64* %72
  store i64 %71, i64* %69, align 8, !tbaa !2428
  %73 = load i64, i64* %RBX
  %74 = load i64, i64* %PC
  %75 = add i64 %74, 1
  store i64 %75, i64* %PC
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %77 = load i64, i64* %76, align 8, !tbaa !2428
  %78 = add i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64 %73, i64* %79
  store i64 %78, i64* %76, align 8, !tbaa !2428
  %80 = load i64, i64* %RBP
  %81 = add i64 %80, 48
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 4
  store i64 %83, i64* %PC
  %84 = inttoptr i64 %81 to i64*
  %85 = load i64, i64* %84
  store i64 %85, i64* %RAX, align 8, !tbaa !2428
  %86 = load i64, i64* %RBP
  %87 = add i64 %86, 40
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 4
  store i64 %89, i64* %PC
  %90 = inttoptr i64 %87 to i64*
  %91 = load i64, i64* %90
  store i64 %91, i64* %R10, align 8, !tbaa !2428
  %92 = load i64, i64* %RBP
  %93 = add i64 %92, 32
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC
  %96 = inttoptr i64 %93 to i64*
  %97 = load i64, i64* %96
  store i64 %97, i64* %R11, align 8, !tbaa !2428
  %98 = load i64, i64* %RBP
  %99 = add i64 %98, 24
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 4
  store i64 %101, i64* %PC
  %102 = inttoptr i64 %99 to i64*
  %103 = load i64, i64* %102
  store i64 %103, i64* %RBX, align 8, !tbaa !2428
  %104 = load i64, i64* %RBP
  %105 = add i64 %104, 16
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %105 to i64*
  %109 = load i64, i64* %108
  store i64 %109, i64* %R14, align 8, !tbaa !2428
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
  %164 = sub i64 %163, 88
  %165 = load i64, i64* %R14
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 4
  store i64 %167, i64* %PC
  %168 = inttoptr i64 %164 to i64*
  store i64 %165, i64* %168
  %169 = load i64, i64* %RBP
  %170 = sub i64 %169, 96
  %171 = load i64, i64* %RBX
  %172 = load i64, i64* %PC
  %173 = add i64 %172, 4
  store i64 %173, i64* %PC
  %174 = inttoptr i64 %170 to i64*
  store i64 %171, i64* %174
  %175 = load i64, i64* %RBP
  %176 = sub i64 %175, 104
  %177 = load i64, i64* %R11
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 4
  store i64 %179, i64* %PC
  %180 = inttoptr i64 %176 to i64*
  store i64 %177, i64* %180
  %181 = load i64, i64* %RBP
  %182 = sub i64 %181, 112
  %183 = load i64, i64* %R10
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 4
  store i64 %185, i64* %PC
  %186 = inttoptr i64 %182 to i64*
  store i64 %183, i64* %186
  %187 = load i64, i64* %RBP
  %188 = sub i64 %187, 120
  %189 = load i64, i64* %RAX
  %190 = load i64, i64* %PC
  %191 = add i64 %190, 4
  store i64 %191, i64* %PC
  %192 = inttoptr i64 %188 to i64*
  store i64 %189, i64* %192
  %193 = load i64, i64* %RBP
  %194 = sub i64 %193, 124
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 7
  store i64 %196, i64* %PC
  %197 = inttoptr i64 %194 to i32*
  store i32 0, i32* %197
  br label %block_401087

block_401126:                                     ; preds = %block_40109a
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 5
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 5
  store i64 %201, i64* %PC
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %199, i64* %202, align 8, !tbaa !2428
  %203 = load i64, i64* %RBP
  %204 = sub i64 %203, 124
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 3
  store i64 %206, i64* %PC
  %207 = inttoptr i64 %204 to i32*
  %208 = load i32, i32* %207
  %209 = zext i32 %208 to i64
  store i64 %209, i64* %RAX, align 8, !tbaa !2428
  %210 = load i64, i64* %RAX
  %211 = load i64, i64* %PC
  %212 = add i64 %211, 3
  store i64 %212, i64* %PC
  %213 = trunc i64 %210 to i32
  %214 = add i32 1, %213
  %215 = zext i32 %214 to i64
  store i64 %215, i64* %RAX, align 8, !tbaa !2428
  %216 = icmp ult i32 %214, %213
  %217 = icmp ult i32 %214, 1
  %218 = or i1 %216, %217
  %219 = zext i1 %218 to i8
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %219, i8* %220, align 1, !tbaa !2432
  %221 = and i32 %214, 255
  %222 = call i32 @llvm.ctpop.i32(i32 %221) #16
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %225, i8* %226, align 1, !tbaa !2446
  %227 = xor i64 1, %210
  %228 = trunc i64 %227 to i32
  %229 = xor i32 %228, %214
  %230 = lshr i32 %229, 4
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %232, i8* %233, align 1, !tbaa !2447
  %234 = icmp eq i32 %214, 0
  %235 = zext i1 %234 to i8
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %235, i8* %236, align 1, !tbaa !2448
  %237 = lshr i32 %214, 31
  %238 = trunc i32 %237 to i8
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %238, i8* %239, align 1, !tbaa !2449
  %240 = lshr i32 %213, 31
  %241 = xor i32 %237, %240
  %242 = add nuw nsw i32 %241, %237
  %243 = icmp eq i32 %242, 2
  %244 = zext i1 %243 to i8
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %244, i8* %245, align 1, !tbaa !2450
  %246 = load i64, i64* %RBP
  %247 = sub i64 %246, 124
  %248 = load i32, i32* %EAX
  %249 = zext i32 %248 to i64
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 3
  store i64 %251, i64* %PC
  %252 = inttoptr i64 %247 to i32*
  store i32 %248, i32* %252
  %253 = load i64, i64* %PC
  %254 = sub i64 %253, 173
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 5
  store i64 %256, i64* %PC
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %254, i64* %257, align 8, !tbaa !2428
  br label %block_401087

block_4011e2:                                     ; preds = %block_4011ee, %block_4011db
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_4011db ], [ %MEMORY.0, %block_4011ee ]
  %258 = load i64, i64* %RBP
  %259 = sub i64 %258, 124
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 3
  store i64 %261, i64* %PC
  %262 = inttoptr i64 %259 to i32*
  %263 = load i32, i32* %262
  %264 = zext i32 %263 to i64
  store i64 %264, i64* %RAX, align 8, !tbaa !2428
  %265 = load i32, i32* %EAX
  %266 = zext i32 %265 to i64
  %267 = load i64, i64* %RBP
  %268 = sub i64 %267, 20
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 3
  store i64 %270, i64* %PC
  %271 = inttoptr i64 %268 to i32*
  %272 = load i32, i32* %271
  %273 = sub i32 %265, %272
  %274 = icmp ult i32 %265, %272
  %275 = zext i1 %274 to i8
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %275, i8* %276, align 1, !tbaa !2432
  %277 = and i32 %273, 255
  %278 = call i32 @llvm.ctpop.i32(i32 %277) #16
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  %281 = xor i8 %280, 1
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %281, i8* %282, align 1, !tbaa !2446
  %283 = xor i32 %272, %265
  %284 = xor i32 %283, %273
  %285 = lshr i32 %284, 4
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %287, i8* %288, align 1, !tbaa !2447
  %289 = icmp eq i32 %273, 0
  %290 = zext i1 %289 to i8
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %290, i8* %291, align 1, !tbaa !2448
  %292 = lshr i32 %273, 31
  %293 = trunc i32 %292 to i8
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %293, i8* %294, align 1, !tbaa !2449
  %295 = lshr i32 %265, 31
  %296 = lshr i32 %272, 31
  %297 = xor i32 %296, %295
  %298 = xor i32 %292, %295
  %299 = add nuw nsw i32 %298, %297
  %300 = icmp eq i32 %299, 2
  %301 = zext i1 %300 to i8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %301, i8* %302, align 1, !tbaa !2450
  %303 = load i64, i64* %PC
  %304 = add i64 %303, 59
  %305 = load i64, i64* %PC
  %306 = add i64 %305, 6
  %307 = load i64, i64* %PC
  %308 = add i64 %307, 6
  store i64 %308, i64* %PC
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %310 = load i8, i8* %309, align 1, !tbaa !2449
  %311 = icmp ne i8 %310, 0
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %313 = load i8, i8* %312, align 1, !tbaa !2450
  %314 = icmp ne i8 %313, 0
  %315 = xor i1 %311, %314
  %316 = xor i1 %315, true
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %319 = select i1 %315, i64 %306, i64 %304
  store i64 %319, i64* %318, align 8, !tbaa !2428
  %320 = load i8, i8* %BRANCH_TAKEN
  %321 = icmp eq i8 %320, 1
  %322 = load i64, i64* %RBP
  br i1 %321, label %block_401223, label %block_4011ee

block_4011db:                                     ; preds = %block_401140
  %323 = load i64, i64* %RBP
  %324 = sub i64 %323, 124
  %325 = load i64, i64* %PC
  %326 = add i64 %325, 7
  store i64 %326, i64* %PC
  %327 = inttoptr i64 %324 to i32*
  store i32 0, i32* %327
  br label %block_4011e2

block_40114c:                                     ; preds = %block_401140
  %328 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %329 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %330 = bitcast %union.vec128_t* %XMM0 to i8*
  %331 = load i64, i64* %PC
  %332 = add i64 %331, 3
  store i64 %332, i64* %PC
  %333 = bitcast i8* %329 to i64*
  %334 = load i64, i64* %333, align 1
  %335 = getelementptr inbounds i8, i8* %329, i64 8
  %336 = bitcast i8* %335 to i64*
  %337 = load i64, i64* %336, align 1
  %338 = bitcast i8* %330 to i64*
  %339 = load i64, i64* %338, align 1
  %340 = getelementptr inbounds i8, i8* %330, i64 8
  %341 = bitcast i8* %340 to i64*
  %342 = load i64, i64* %341, align 1
  %343 = xor i64 %339, %334
  %344 = xor i64 %342, %337
  %345 = trunc i64 %343 to i32
  %346 = lshr i64 %343, 32
  %347 = trunc i64 %346 to i32
  %348 = bitcast i8* %328 to i32*
  store i32 %345, i32* %348, align 1, !tbaa !2454
  %349 = getelementptr inbounds i8, i8* %328, i64 4
  %350 = bitcast i8* %349 to i32*
  store i32 %347, i32* %350, align 1, !tbaa !2454
  %351 = trunc i64 %344 to i32
  %352 = getelementptr inbounds i8, i8* %328, i64 8
  %353 = bitcast i8* %352 to i32*
  store i32 %351, i32* %353, align 1, !tbaa !2454
  %354 = lshr i64 %344, 32
  %355 = trunc i64 %354 to i32
  %356 = getelementptr inbounds i8, i8* %328, i64 12
  %357 = bitcast i8* %356 to i32*
  store i32 %355, i32* %357, align 1, !tbaa !2454
  %358 = load i64, i64* %RBP
  %359 = sub i64 %358, 104
  %360 = load i64, i64* %PC
  %361 = add i64 %360, 4
  store i64 %361, i64* %PC
  %362 = inttoptr i64 %359 to i64*
  %363 = load i64, i64* %362
  store i64 %363, i64* %RAX, align 8, !tbaa !2428
  %364 = load i64, i64* %RBP
  %365 = sub i64 %364, 124
  %366 = load i64, i64* %PC
  %367 = add i64 %366, 4
  store i64 %367, i64* %PC
  %368 = inttoptr i64 %365 to i32*
  %369 = load i32, i32* %368
  %370 = sext i32 %369 to i64
  store i64 %370, i64* %RCX, align 8, !tbaa !2428
  %371 = load i64, i64* %RAX
  %372 = load i64, i64* %RCX
  %373 = mul i64 %372, 8
  %374 = add i64 %373, %371
  %375 = bitcast %union.vec128_t* %XMM0 to i8*
  %376 = load i64, i64* %PC
  %377 = add i64 %376, 5
  store i64 %377, i64* %PC
  %378 = bitcast i8* %375 to double*
  %379 = load double, double* %378, align 1
  %380 = inttoptr i64 %374 to double*
  store double %379, double* %380
  %381 = load i64, i64* %RBP
  %382 = sub i64 %381, 128
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 7
  store i64 %384, i64* %PC
  %385 = inttoptr i64 %382 to i32*
  store i32 0, i32* %385
  br label %block_401163

block_401249:                                     ; preds = %block_40123d
  %386 = load i64, i64* %RBP
  %387 = sub i64 %386, 96
  %388 = load i64, i64* %PC
  %389 = add i64 %388, 4
  store i64 %389, i64* %PC
  %390 = inttoptr i64 %387 to i64*
  %391 = load i64, i64* %390
  store i64 %391, i64* %RAX, align 8, !tbaa !2428
  %392 = load i64, i64* %RBP
  %393 = sub i64 %392, 124
  %394 = load i64, i64* %PC
  %395 = add i64 %394, 4
  store i64 %395, i64* %PC
  %396 = inttoptr i64 %393 to i32*
  %397 = load i32, i32* %396
  %398 = sext i32 %397 to i64
  store i64 %398, i64* %RCX, align 8, !tbaa !2428
  %399 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %400 = load i64, i64* %RAX
  %401 = load i64, i64* %RCX
  %402 = mul i64 %401, 8
  %403 = add i64 %402, %400
  %404 = load i64, i64* %PC
  %405 = add i64 %404, 5
  store i64 %405, i64* %PC
  %406 = inttoptr i64 %403 to double*
  %407 = load double, double* %406
  %408 = bitcast i8* %399 to double*
  store double %407, double* %408, align 1, !tbaa !2452
  %409 = getelementptr inbounds i8, i8* %399, i64 8
  %410 = bitcast i8* %409 to double*
  store double 0.000000e+00, double* %410, align 1, !tbaa !2452
  %411 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %412 = load i64, i64* %RBP
  %413 = sub i64 %412, 32
  %414 = load i64, i64* %PC
  %415 = add i64 %414, 5
  store i64 %415, i64* %PC
  %416 = inttoptr i64 %413 to double*
  %417 = load double, double* %416
  %418 = bitcast i8* %411 to double*
  store double %417, double* %418, align 1, !tbaa !2452
  %419 = getelementptr inbounds i8, i8* %411, i64 8
  %420 = bitcast i8* %419 to double*
  store double 0.000000e+00, double* %420, align 1, !tbaa !2452
  %421 = load i64, i64* %RBP
  %422 = sub i64 %421, 56
  %423 = load i64, i64* %PC
  %424 = add i64 %423, 4
  store i64 %424, i64* %PC
  %425 = inttoptr i64 %422 to i64*
  %426 = load i64, i64* %425
  store i64 %426, i64* %RAX, align 8, !tbaa !2428
  %427 = load i64, i64* %RBP
  %428 = sub i64 %427, 124
  %429 = load i64, i64* %PC
  %430 = add i64 %429, 4
  store i64 %430, i64* %PC
  %431 = inttoptr i64 %428 to i32*
  %432 = load i32, i32* %431
  %433 = sext i32 %432 to i64
  store i64 %433, i64* %RCX, align 8, !tbaa !2428
  %434 = load i64, i64* %RCX
  %435 = load i64, i64* %PC
  %436 = add i64 %435, 7
  store i64 %436, i64* %PC
  %437 = sext i64 %434 to i128
  %438 = and i128 %437, -18446744073709551616
  %439 = zext i64 %434 to i128
  %440 = or i128 %438, %439
  %441 = mul nsw i128 32000, %440
  %442 = trunc i128 %441 to i64
  store i64 %442, i64* %RCX, align 8, !tbaa !2428
  %443 = sext i64 %442 to i128
  %444 = icmp ne i128 %443, %441
  %445 = zext i1 %444 to i8
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %445, i8* %446, align 1, !tbaa !2432
  %447 = trunc i128 %441 to i32
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %448, align 1, !tbaa !2446
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %449, align 1, !tbaa !2447
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %450, align 1, !tbaa !2448
  %451 = lshr i64 %442, 63
  %452 = trunc i64 %451 to i8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %452, i8* %453, align 1, !tbaa !2449
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %445, i8* %454, align 1, !tbaa !2450
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
  %493 = sub i64 %492, 128
  %494 = load i64, i64* %PC
  %495 = add i64 %494, 4
  store i64 %495, i64* %PC
  %496 = inttoptr i64 %493 to i32*
  %497 = load i32, i32* %496
  %498 = sext i32 %497 to i64
  store i64 %498, i64* %RCX, align 8, !tbaa !2428
  %499 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %500 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %501 = load i64, i64* %RAX
  %502 = load i64, i64* %RCX
  %503 = mul i64 %502, 8
  %504 = add i64 %503, %501
  %505 = load i64, i64* %PC
  %506 = add i64 %505, 5
  store i64 %506, i64* %PC
  %507 = bitcast i8* %500 to double*
  %508 = load double, double* %507, align 1
  %509 = getelementptr inbounds i8, i8* %500, i64 8
  %510 = bitcast i8* %509 to i64*
  %511 = load i64, i64* %510, align 1
  %512 = inttoptr i64 %504 to double*
  %513 = load double, double* %512
  %514 = fmul double %508, %513
  %515 = bitcast i8* %499 to double*
  store double %514, double* %515, align 1, !tbaa !2452
  %516 = getelementptr inbounds i8, i8* %499, i64 8
  %517 = bitcast i8* %516 to i64*
  store i64 %511, i64* %517, align 1, !tbaa !2452
  %518 = load i64, i64* %RBP
  %519 = sub i64 %518, 104
  %520 = load i64, i64* %PC
  %521 = add i64 %520, 4
  store i64 %521, i64* %PC
  %522 = inttoptr i64 %519 to i64*
  %523 = load i64, i64* %522
  store i64 %523, i64* %RAX, align 8, !tbaa !2428
  %524 = load i64, i64* %RBP
  %525 = sub i64 %524, 128
  %526 = load i64, i64* %PC
  %527 = add i64 %526, 4
  store i64 %527, i64* %PC
  %528 = inttoptr i64 %525 to i32*
  %529 = load i32, i32* %528
  %530 = sext i32 %529 to i64
  store i64 %530, i64* %RCX, align 8, !tbaa !2428
  %531 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %532 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %533 = load i64, i64* %RAX
  %534 = load i64, i64* %RCX
  %535 = mul i64 %534, 8
  %536 = add i64 %535, %533
  %537 = load i64, i64* %PC
  %538 = add i64 %537, 5
  store i64 %538, i64* %PC
  %539 = bitcast i8* %532 to double*
  %540 = load double, double* %539, align 1
  %541 = getelementptr inbounds i8, i8* %532, i64 8
  %542 = bitcast i8* %541 to i64*
  %543 = load i64, i64* %542, align 1
  %544 = inttoptr i64 %536 to double*
  %545 = load double, double* %544
  %546 = fmul double %540, %545
  %547 = bitcast i8* %531 to double*
  store double %546, double* %547, align 1, !tbaa !2452
  %548 = getelementptr inbounds i8, i8* %531, i64 8
  %549 = bitcast i8* %548 to i64*
  store i64 %543, i64* %549, align 1, !tbaa !2452
  %550 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %551 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %552 = bitcast %union.vec128_t* %XMM1 to i8*
  %553 = load i64, i64* %PC
  %554 = add i64 %553, 4
  store i64 %554, i64* %PC
  %555 = bitcast i8* %551 to double*
  %556 = load double, double* %555, align 1
  %557 = getelementptr inbounds i8, i8* %551, i64 8
  %558 = bitcast i8* %557 to i64*
  %559 = load i64, i64* %558, align 1
  %560 = bitcast i8* %552 to double*
  %561 = load double, double* %560, align 1
  %562 = fadd double %556, %561
  %563 = bitcast i8* %550 to double*
  store double %562, double* %563, align 1, !tbaa !2452
  %564 = getelementptr inbounds i8, i8* %550, i64 8
  %565 = bitcast i8* %564 to i64*
  store i64 %559, i64* %565, align 1, !tbaa !2452
  %566 = load i64, i64* %RBP
  %567 = sub i64 %566, 96
  %568 = load i64, i64* %PC
  %569 = add i64 %568, 4
  store i64 %569, i64* %PC
  %570 = inttoptr i64 %567 to i64*
  %571 = load i64, i64* %570
  store i64 %571, i64* %RAX, align 8, !tbaa !2428
  %572 = load i64, i64* %RBP
  %573 = sub i64 %572, 124
  %574 = load i64, i64* %PC
  %575 = add i64 %574, 4
  store i64 %575, i64* %PC
  %576 = inttoptr i64 %573 to i32*
  %577 = load i32, i32* %576
  %578 = sext i32 %577 to i64
  store i64 %578, i64* %RCX, align 8, !tbaa !2428
  %579 = load i64, i64* %RAX
  %580 = load i64, i64* %RCX
  %581 = mul i64 %580, 8
  %582 = add i64 %581, %579
  %583 = bitcast %union.vec128_t* %XMM0 to i8*
  %584 = load i64, i64* %PC
  %585 = add i64 %584, 5
  store i64 %585, i64* %PC
  %586 = bitcast i8* %583 to double*
  %587 = load double, double* %586, align 1
  %588 = inttoptr i64 %582 to double*
  store double %587, double* %588
  %589 = load i64, i64* %RBP
  %590 = sub i64 %589, 128
  %591 = load i64, i64* %PC
  %592 = add i64 %591, 3
  store i64 %592, i64* %PC
  %593 = inttoptr i64 %590 to i32*
  %594 = load i32, i32* %593
  %595 = zext i32 %594 to i64
  store i64 %595, i64* %RAX, align 8, !tbaa !2428
  %596 = load i64, i64* %RAX
  %597 = load i64, i64* %PC
  %598 = add i64 %597, 3
  store i64 %598, i64* %PC
  %599 = trunc i64 %596 to i32
  %600 = add i32 1, %599
  %601 = zext i32 %600 to i64
  store i64 %601, i64* %RAX, align 8, !tbaa !2428
  %602 = icmp ult i32 %600, %599
  %603 = icmp ult i32 %600, 1
  %604 = or i1 %602, %603
  %605 = zext i1 %604 to i8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %605, i8* %606, align 1, !tbaa !2432
  %607 = and i32 %600, 255
  %608 = call i32 @llvm.ctpop.i32(i32 %607) #16
  %609 = trunc i32 %608 to i8
  %610 = and i8 %609, 1
  %611 = xor i8 %610, 1
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %611, i8* %612, align 1, !tbaa !2446
  %613 = xor i64 1, %596
  %614 = trunc i64 %613 to i32
  %615 = xor i32 %614, %600
  %616 = lshr i32 %615, 4
  %617 = trunc i32 %616 to i8
  %618 = and i8 %617, 1
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %618, i8* %619, align 1, !tbaa !2447
  %620 = icmp eq i32 %600, 0
  %621 = zext i1 %620 to i8
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %621, i8* %622, align 1, !tbaa !2448
  %623 = lshr i32 %600, 31
  %624 = trunc i32 %623 to i8
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %624, i8* %625, align 1, !tbaa !2449
  %626 = lshr i32 %599, 31
  %627 = xor i32 %623, %626
  %628 = add nuw nsw i32 %627, %623
  %629 = icmp eq i32 %628, 2
  %630 = zext i1 %629 to i8
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %630, i8* %631, align 1, !tbaa !2450
  %632 = load i64, i64* %RBP
  %633 = sub i64 %632, 128
  %634 = load i32, i32* %EAX
  %635 = zext i32 %634 to i64
  %636 = load i64, i64* %PC
  %637 = add i64 %636, 3
  store i64 %637, i64* %PC
  %638 = inttoptr i64 %633 to i32*
  store i32 %634, i32* %638
  %639 = load i64, i64* %PC
  %640 = sub i64 %639, 96
  %641 = load i64, i64* %PC
  %642 = add i64 %641, 5
  store i64 %642, i64* %PC
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %640, i64* %643, align 8, !tbaa !2428
  br label %block_40123d

block_4011ee:                                     ; preds = %block_4011e2
  %644 = sub i64 %322, 104
  %645 = load i64, i64* %PC
  %646 = add i64 %645, 4
  store i64 %646, i64* %PC
  %647 = inttoptr i64 %644 to i64*
  %648 = load i64, i64* %647
  store i64 %648, i64* %RAX, align 8, !tbaa !2428
  %649 = load i64, i64* %RBP
  %650 = sub i64 %649, 124
  %651 = load i64, i64* %PC
  %652 = add i64 %651, 4
  store i64 %652, i64* %PC
  %653 = inttoptr i64 %650 to i32*
  %654 = load i32, i32* %653
  %655 = sext i32 %654 to i64
  store i64 %655, i64* %RCX, align 8, !tbaa !2428
  %656 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %657 = load i64, i64* %RAX
  %658 = load i64, i64* %RCX
  %659 = mul i64 %658, 8
  %660 = add i64 %659, %657
  %661 = load i64, i64* %PC
  %662 = add i64 %661, 5
  store i64 %662, i64* %PC
  %663 = inttoptr i64 %660 to double*
  %664 = load double, double* %663
  %665 = bitcast i8* %656 to double*
  store double %664, double* %665, align 1, !tbaa !2452
  %666 = getelementptr inbounds i8, i8* %656, i64 8
  %667 = bitcast i8* %666 to double*
  store double 0.000000e+00, double* %667, align 1, !tbaa !2452
  %668 = load i64, i64* %RBP
  %669 = sub i64 %668, 120
  %670 = load i64, i64* %PC
  %671 = add i64 %670, 4
  store i64 %671, i64* %PC
  %672 = inttoptr i64 %669 to i64*
  %673 = load i64, i64* %672
  store i64 %673, i64* %RAX, align 8, !tbaa !2428
  %674 = load i64, i64* %RBP
  %675 = sub i64 %674, 124
  %676 = load i64, i64* %PC
  %677 = add i64 %676, 4
  store i64 %677, i64* %PC
  %678 = inttoptr i64 %675 to i32*
  %679 = load i32, i32* %678
  %680 = sext i32 %679 to i64
  store i64 %680, i64* %RCX, align 8, !tbaa !2428
  %681 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %682 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %683 = load i64, i64* %RAX
  %684 = load i64, i64* %RCX
  %685 = mul i64 %684, 8
  %686 = add i64 %685, %683
  %687 = load i64, i64* %PC
  %688 = add i64 %687, 5
  store i64 %688, i64* %PC
  %689 = bitcast i8* %682 to double*
  %690 = load double, double* %689, align 1
  %691 = getelementptr inbounds i8, i8* %682, i64 8
  %692 = bitcast i8* %691 to i64*
  %693 = load i64, i64* %692, align 1
  %694 = inttoptr i64 %686 to double*
  %695 = load double, double* %694
  %696 = fadd double %690, %695
  %697 = bitcast i8* %681 to double*
  store double %696, double* %697, align 1, !tbaa !2452
  %698 = getelementptr inbounds i8, i8* %681, i64 8
  %699 = bitcast i8* %698 to i64*
  store i64 %693, i64* %699, align 1, !tbaa !2452
  %700 = load i64, i64* %RBP
  %701 = sub i64 %700, 104
  %702 = load i64, i64* %PC
  %703 = add i64 %702, 4
  store i64 %703, i64* %PC
  %704 = inttoptr i64 %701 to i64*
  %705 = load i64, i64* %704
  store i64 %705, i64* %RAX, align 8, !tbaa !2428
  %706 = load i64, i64* %RBP
  %707 = sub i64 %706, 124
  %708 = load i64, i64* %PC
  %709 = add i64 %708, 4
  store i64 %709, i64* %PC
  %710 = inttoptr i64 %707 to i32*
  %711 = load i32, i32* %710
  %712 = sext i32 %711 to i64
  store i64 %712, i64* %RCX, align 8, !tbaa !2428
  %713 = load i64, i64* %RAX
  %714 = load i64, i64* %RCX
  %715 = mul i64 %714, 8
  %716 = add i64 %715, %713
  %717 = bitcast %union.vec128_t* %XMM0 to i8*
  %718 = load i64, i64* %PC
  %719 = add i64 %718, 5
  store i64 %719, i64* %PC
  %720 = bitcast i8* %717 to double*
  %721 = load double, double* %720, align 1
  %722 = inttoptr i64 %716 to double*
  store double %721, double* %722
  %723 = load i64, i64* %RBP
  %724 = sub i64 %723, 124
  %725 = load i64, i64* %PC
  %726 = add i64 %725, 3
  store i64 %726, i64* %PC
  %727 = inttoptr i64 %724 to i32*
  %728 = load i32, i32* %727
  %729 = zext i32 %728 to i64
  store i64 %729, i64* %RAX, align 8, !tbaa !2428
  %730 = load i64, i64* %RAX
  %731 = load i64, i64* %PC
  %732 = add i64 %731, 3
  store i64 %732, i64* %PC
  %733 = trunc i64 %730 to i32
  %734 = add i32 1, %733
  %735 = zext i32 %734 to i64
  store i64 %735, i64* %RAX, align 8, !tbaa !2428
  %736 = icmp ult i32 %734, %733
  %737 = icmp ult i32 %734, 1
  %738 = or i1 %736, %737
  %739 = zext i1 %738 to i8
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %739, i8* %740, align 1, !tbaa !2432
  %741 = and i32 %734, 255
  %742 = call i32 @llvm.ctpop.i32(i32 %741) #16
  %743 = trunc i32 %742 to i8
  %744 = and i8 %743, 1
  %745 = xor i8 %744, 1
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %745, i8* %746, align 1, !tbaa !2446
  %747 = xor i64 1, %730
  %748 = trunc i64 %747 to i32
  %749 = xor i32 %748, %734
  %750 = lshr i32 %749, 4
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %752, i8* %753, align 1, !tbaa !2447
  %754 = icmp eq i32 %734, 0
  %755 = zext i1 %754 to i8
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %755, i8* %756, align 1, !tbaa !2448
  %757 = lshr i32 %734, 31
  %758 = trunc i32 %757 to i8
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %758, i8* %759, align 1, !tbaa !2449
  %760 = lshr i32 %733, 31
  %761 = xor i32 %757, %760
  %762 = add nuw nsw i32 %761, %757
  %763 = icmp eq i32 %762, 2
  %764 = zext i1 %763 to i8
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %764, i8* %765, align 1, !tbaa !2450
  %766 = load i64, i64* %RBP
  %767 = sub i64 %766, 124
  %768 = load i32, i32* %EAX
  %769 = zext i32 %768 to i64
  %770 = load i64, i64* %PC
  %771 = add i64 %770, 3
  store i64 %771, i64* %PC
  %772 = inttoptr i64 %767 to i32*
  store i32 %768, i32* %772
  %773 = load i64, i64* %PC
  %774 = sub i64 %773, 60
  %775 = load i64, i64* %PC
  %776 = add i64 %775, 5
  store i64 %776, i64* %PC
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %774, i64* %777, align 8, !tbaa !2428
  br label %block_4011e2

block_401140:                                     ; preds = %block_4011c8, %block_401139
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.6, %block_401139 ], [ %MEMORY.4, %block_4011c8 ]
  %778 = load i64, i64* %RBP
  %779 = sub i64 %778, 124
  %780 = load i64, i64* %PC
  %781 = add i64 %780, 3
  store i64 %781, i64* %PC
  %782 = inttoptr i64 %779 to i32*
  %783 = load i32, i32* %782
  %784 = zext i32 %783 to i64
  store i64 %784, i64* %RAX, align 8, !tbaa !2428
  %785 = load i32, i32* %EAX
  %786 = zext i32 %785 to i64
  %787 = load i64, i64* %RBP
  %788 = sub i64 %787, 20
  %789 = load i64, i64* %PC
  %790 = add i64 %789, 3
  store i64 %790, i64* %PC
  %791 = inttoptr i64 %788 to i32*
  %792 = load i32, i32* %791
  %793 = sub i32 %785, %792
  %794 = icmp ult i32 %785, %792
  %795 = zext i1 %794 to i8
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %795, i8* %796, align 1, !tbaa !2432
  %797 = and i32 %793, 255
  %798 = call i32 @llvm.ctpop.i32(i32 %797) #16
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  %801 = xor i8 %800, 1
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %801, i8* %802, align 1, !tbaa !2446
  %803 = xor i32 %792, %785
  %804 = xor i32 %803, %793
  %805 = lshr i32 %804, 4
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %807, i8* %808, align 1, !tbaa !2447
  %809 = icmp eq i32 %793, 0
  %810 = zext i1 %809 to i8
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %810, i8* %811, align 1, !tbaa !2448
  %812 = lshr i32 %793, 31
  %813 = trunc i32 %812 to i8
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %813, i8* %814, align 1, !tbaa !2449
  %815 = lshr i32 %785, 31
  %816 = lshr i32 %792, 31
  %817 = xor i32 %816, %815
  %818 = xor i32 %812, %815
  %819 = add nuw nsw i32 %818, %817
  %820 = icmp eq i32 %819, 2
  %821 = zext i1 %820 to i8
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %821, i8* %822, align 1, !tbaa !2450
  %823 = load i64, i64* %PC
  %824 = add i64 %823, 149
  %825 = load i64, i64* %PC
  %826 = add i64 %825, 6
  %827 = load i64, i64* %PC
  %828 = add i64 %827, 6
  store i64 %828, i64* %PC
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %830 = load i8, i8* %829, align 1, !tbaa !2449
  %831 = icmp ne i8 %830, 0
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %833 = load i8, i8* %832, align 1, !tbaa !2450
  %834 = icmp ne i8 %833, 0
  %835 = xor i1 %831, %834
  %836 = xor i1 %835, true
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %839 = select i1 %835, i64 %826, i64 %824
  store i64 %839, i64* %838, align 8, !tbaa !2428
  %840 = load i8, i8* %BRANCH_TAKEN
  %841 = icmp eq i8 %840, 1
  br i1 %841, label %block_4011db, label %block_40114c

block_40123d:                                     ; preds = %block_401236, %block_401249
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.3, %block_401236 ], [ %MEMORY.2, %block_401249 ]
  %842 = load i64, i64* %RBP
  %843 = sub i64 %842, 128
  %844 = load i64, i64* %PC
  %845 = add i64 %844, 3
  store i64 %845, i64* %PC
  %846 = inttoptr i64 %843 to i32*
  %847 = load i32, i32* %846
  %848 = zext i32 %847 to i64
  store i64 %848, i64* %RAX, align 8, !tbaa !2428
  %849 = load i32, i32* %EAX
  %850 = zext i32 %849 to i64
  %851 = load i64, i64* %RBP
  %852 = sub i64 %851, 20
  %853 = load i64, i64* %PC
  %854 = add i64 %853, 3
  store i64 %854, i64* %PC
  %855 = inttoptr i64 %852 to i32*
  %856 = load i32, i32* %855
  %857 = sub i32 %849, %856
  %858 = icmp ult i32 %849, %856
  %859 = zext i1 %858 to i8
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %859, i8* %860, align 1, !tbaa !2432
  %861 = and i32 %857, 255
  %862 = call i32 @llvm.ctpop.i32(i32 %861) #16
  %863 = trunc i32 %862 to i8
  %864 = and i8 %863, 1
  %865 = xor i8 %864, 1
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %865, i8* %866, align 1, !tbaa !2446
  %867 = xor i32 %856, %849
  %868 = xor i32 %867, %857
  %869 = lshr i32 %868, 4
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %871, i8* %872, align 1, !tbaa !2447
  %873 = icmp eq i32 %857, 0
  %874 = zext i1 %873 to i8
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %874, i8* %875, align 1, !tbaa !2448
  %876 = lshr i32 %857, 31
  %877 = trunc i32 %876 to i8
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %877, i8* %878, align 1, !tbaa !2449
  %879 = lshr i32 %849, 31
  %880 = lshr i32 %856, 31
  %881 = xor i32 %880, %879
  %882 = xor i32 %876, %879
  %883 = add nuw nsw i32 %882, %881
  %884 = icmp eq i32 %883, 2
  %885 = zext i1 %884 to i8
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %885, i8* %886, align 1, !tbaa !2450
  %887 = load i64, i64* %PC
  %888 = add i64 %887, 95
  %889 = load i64, i64* %PC
  %890 = add i64 %889, 6
  %891 = load i64, i64* %PC
  %892 = add i64 %891, 6
  store i64 %892, i64* %PC
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %894 = load i8, i8* %893, align 1, !tbaa !2449
  %895 = icmp ne i8 %894, 0
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %897 = load i8, i8* %896, align 1, !tbaa !2450
  %898 = icmp ne i8 %897, 0
  %899 = xor i1 %895, %898
  %900 = xor i1 %899, true
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %903 = select i1 %899, i64 %890, i64 %888
  store i64 %903, i64* %902, align 8, !tbaa !2428
  %904 = load i8, i8* %BRANCH_TAKEN
  %905 = icmp eq i8 %904, 1
  br i1 %905, label %block_4012a2, label %block_401249

block_401139:                                     ; preds = %block_401087
  %906 = sub i64 %1965, 124
  %907 = load i64, i64* %PC
  %908 = add i64 %907, 7
  store i64 %908, i64* %PC
  %909 = inttoptr i64 %906 to i32*
  store i32 0, i32* %909
  br label %block_401140

block_401236:                                     ; preds = %block_40122a
  %910 = load i64, i64* %RBP
  %911 = sub i64 %910, 128
  %912 = load i64, i64* %PC
  %913 = add i64 %912, 7
  store i64 %913, i64* %PC
  %914 = inttoptr i64 %911 to i32*
  store i32 0, i32* %914
  br label %block_40123d

block_4012b5:                                     ; preds = %block_40122a
  %915 = load i64, i64* %PC
  %916 = add i64 %915, 1
  store i64 %916, i64* %PC
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %918 = load i64, i64* %917, align 8, !tbaa !2428
  %919 = add i64 %918, 8
  %920 = inttoptr i64 %918 to i64*
  %921 = load i64, i64* %920
  store i64 %921, i64* %RBX, align 8, !tbaa !2428
  store i64 %919, i64* %917, align 8, !tbaa !2428
  %922 = load i64, i64* %PC
  %923 = add i64 %922, 2
  store i64 %923, i64* %PC
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %925 = load i64, i64* %924, align 8, !tbaa !2428
  %926 = add i64 %925, 8
  %927 = inttoptr i64 %925 to i64*
  %928 = load i64, i64* %927
  store i64 %928, i64* %R14, align 8, !tbaa !2428
  store i64 %926, i64* %924, align 8, !tbaa !2428
  %929 = load i64, i64* %PC
  %930 = add i64 %929, 1
  store i64 %930, i64* %PC
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %932 = load i64, i64* %931, align 8, !tbaa !2428
  %933 = add i64 %932, 8
  %934 = inttoptr i64 %932 to i64*
  %935 = load i64, i64* %934
  store i64 %935, i64* %RBP, align 8, !tbaa !2428
  store i64 %933, i64* %931, align 8, !tbaa !2428
  %936 = load i64, i64* %PC
  %937 = add i64 %936, 1
  store i64 %937, i64* %PC
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %940 = load i64, i64* %939, align 8, !tbaa !2428
  %941 = inttoptr i64 %940 to i64*
  %942 = load i64, i64* %941
  store i64 %942, i64* %938, align 8, !tbaa !2428
  %943 = add i64 %940, 8
  store i64 %943, i64* %939, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.3

block_40122a:                                     ; preds = %block_4012a2, %block_401223
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_401223 ], [ %MEMORY.2, %block_4012a2 ]
  %944 = load i64, i64* %RBP
  %945 = sub i64 %944, 124
  %946 = load i64, i64* %PC
  %947 = add i64 %946, 3
  store i64 %947, i64* %PC
  %948 = inttoptr i64 %945 to i32*
  %949 = load i32, i32* %948
  %950 = zext i32 %949 to i64
  store i64 %950, i64* %RAX, align 8, !tbaa !2428
  %951 = load i32, i32* %EAX
  %952 = zext i32 %951 to i64
  %953 = load i64, i64* %RBP
  %954 = sub i64 %953, 20
  %955 = load i64, i64* %PC
  %956 = add i64 %955, 3
  store i64 %956, i64* %PC
  %957 = inttoptr i64 %954 to i32*
  %958 = load i32, i32* %957
  %959 = sub i32 %951, %958
  %960 = icmp ult i32 %951, %958
  %961 = zext i1 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %961, i8* %962, align 1, !tbaa !2432
  %963 = and i32 %959, 255
  %964 = call i32 @llvm.ctpop.i32(i32 %963) #16
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  %967 = xor i8 %966, 1
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %967, i8* %968, align 1, !tbaa !2446
  %969 = xor i32 %958, %951
  %970 = xor i32 %969, %959
  %971 = lshr i32 %970, 4
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %973, i8* %974, align 1, !tbaa !2447
  %975 = icmp eq i32 %959, 0
  %976 = zext i1 %975 to i8
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %976, i8* %977, align 1, !tbaa !2448
  %978 = lshr i32 %959, 31
  %979 = trunc i32 %978 to i8
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %979, i8* %980, align 1, !tbaa !2449
  %981 = lshr i32 %951, 31
  %982 = lshr i32 %958, 31
  %983 = xor i32 %982, %981
  %984 = xor i32 %978, %981
  %985 = add nuw nsw i32 %984, %983
  %986 = icmp eq i32 %985, 2
  %987 = zext i1 %986 to i8
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %987, i8* %988, align 1, !tbaa !2450
  %989 = load i64, i64* %PC
  %990 = add i64 %989, 133
  %991 = load i64, i64* %PC
  %992 = add i64 %991, 6
  %993 = load i64, i64* %PC
  %994 = add i64 %993, 6
  store i64 %994, i64* %PC
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %996 = load i8, i8* %995, align 1, !tbaa !2449
  %997 = icmp ne i8 %996, 0
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %999 = load i8, i8* %998, align 1, !tbaa !2450
  %1000 = icmp ne i8 %999, 0
  %1001 = xor i1 %997, %1000
  %1002 = xor i1 %1001, true
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1005 = select i1 %1001, i64 %992, i64 %990
  store i64 %1005, i64* %1004, align 8, !tbaa !2428
  %1006 = load i8, i8* %BRANCH_TAKEN
  %1007 = icmp eq i8 %1006, 1
  br i1 %1007, label %block_4012b5, label %block_401236

block_4011c8:                                     ; preds = %block_401163
  %1008 = load i64, i64* %PC
  %1009 = add i64 %1008, 5
  %1010 = load i64, i64* %PC
  %1011 = add i64 %1010, 5
  store i64 %1011, i64* %PC
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1009, i64* %1012, align 8, !tbaa !2428
  %1013 = load i64, i64* %RBP
  %1014 = sub i64 %1013, 124
  %1015 = load i64, i64* %PC
  %1016 = add i64 %1015, 3
  store i64 %1016, i64* %PC
  %1017 = inttoptr i64 %1014 to i32*
  %1018 = load i32, i32* %1017
  %1019 = zext i32 %1018 to i64
  store i64 %1019, i64* %RAX, align 8, !tbaa !2428
  %1020 = load i64, i64* %RAX
  %1021 = load i64, i64* %PC
  %1022 = add i64 %1021, 3
  store i64 %1022, i64* %PC
  %1023 = trunc i64 %1020 to i32
  %1024 = add i32 1, %1023
  %1025 = zext i32 %1024 to i64
  store i64 %1025, i64* %RAX, align 8, !tbaa !2428
  %1026 = icmp ult i32 %1024, %1023
  %1027 = icmp ult i32 %1024, 1
  %1028 = or i1 %1026, %1027
  %1029 = zext i1 %1028 to i8
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1029, i8* %1030, align 1, !tbaa !2432
  %1031 = and i32 %1024, 255
  %1032 = call i32 @llvm.ctpop.i32(i32 %1031) #16
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1035, i8* %1036, align 1, !tbaa !2446
  %1037 = xor i64 1, %1020
  %1038 = trunc i64 %1037 to i32
  %1039 = xor i32 %1038, %1024
  %1040 = lshr i32 %1039, 4
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1042, i8* %1043, align 1, !tbaa !2447
  %1044 = icmp eq i32 %1024, 0
  %1045 = zext i1 %1044 to i8
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1045, i8* %1046, align 1, !tbaa !2448
  %1047 = lshr i32 %1024, 31
  %1048 = trunc i32 %1047 to i8
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1048, i8* %1049, align 1, !tbaa !2449
  %1050 = lshr i32 %1023, 31
  %1051 = xor i32 %1047, %1050
  %1052 = add nuw nsw i32 %1051, %1047
  %1053 = icmp eq i32 %1052, 2
  %1054 = zext i1 %1053 to i8
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1054, i8* %1055, align 1, !tbaa !2450
  %1056 = load i64, i64* %RBP
  %1057 = sub i64 %1056, 124
  %1058 = load i32, i32* %EAX
  %1059 = zext i32 %1058 to i64
  %1060 = load i64, i64* %PC
  %1061 = add i64 %1060, 3
  store i64 %1061, i64* %PC
  %1062 = inttoptr i64 %1057 to i32*
  store i32 %1058, i32* %1062
  %1063 = load i64, i64* %PC
  %1064 = sub i64 %1063, 150
  %1065 = load i64, i64* %PC
  %1066 = add i64 %1065, 5
  store i64 %1066, i64* %PC
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1064, i64* %1067, align 8, !tbaa !2428
  br label %block_401140

block_4010a6:                                     ; preds = %block_40109a
  %1068 = load i64, i64* %RBP
  %1069 = sub i64 %1068, 48
  %1070 = load i64, i64* %PC
  %1071 = add i64 %1070, 4
  store i64 %1071, i64* %PC
  %1072 = inttoptr i64 %1069 to i64*
  %1073 = load i64, i64* %1072
  store i64 %1073, i64* %RAX, align 8, !tbaa !2428
  %1074 = load i64, i64* %RBP
  %1075 = sub i64 %1074, 124
  %1076 = load i64, i64* %PC
  %1077 = add i64 %1076, 4
  store i64 %1077, i64* %PC
  %1078 = inttoptr i64 %1075 to i32*
  %1079 = load i32, i32* %1078
  %1080 = sext i32 %1079 to i64
  store i64 %1080, i64* %RCX, align 8, !tbaa !2428
  %1081 = load i64, i64* %RCX
  %1082 = load i64, i64* %PC
  %1083 = add i64 %1082, 7
  store i64 %1083, i64* %PC
  %1084 = sext i64 %1081 to i128
  %1085 = and i128 %1084, -18446744073709551616
  %1086 = zext i64 %1081 to i128
  %1087 = or i128 %1085, %1086
  %1088 = mul nsw i128 32000, %1087
  %1089 = trunc i128 %1088 to i64
  store i64 %1089, i64* %RCX, align 8, !tbaa !2428
  %1090 = sext i64 %1089 to i128
  %1091 = icmp ne i128 %1090, %1088
  %1092 = zext i1 %1091 to i8
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1092, i8* %1093, align 1, !tbaa !2432
  %1094 = trunc i128 %1088 to i32
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1095, align 1, !tbaa !2446
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1096, align 1, !tbaa !2447
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1097, align 1, !tbaa !2448
  %1098 = lshr i64 %1089, 63
  %1099 = trunc i64 %1098 to i8
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1099, i8* %1100, align 1, !tbaa !2449
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1092, i8* %1101, align 1, !tbaa !2450
  %1102 = load i64, i64* %RAX
  %1103 = load i64, i64* %RCX
  %1104 = load i64, i64* %PC
  %1105 = add i64 %1104, 3
  store i64 %1105, i64* %PC
  %1106 = add i64 %1103, %1102
  store i64 %1106, i64* %RAX, align 8, !tbaa !2428
  %1107 = icmp ult i64 %1106, %1102
  %1108 = icmp ult i64 %1106, %1103
  %1109 = or i1 %1107, %1108
  %1110 = zext i1 %1109 to i8
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1110, i8* %1111, align 1, !tbaa !2432
  %1112 = trunc i64 %1106 to i32
  %1113 = and i32 %1112, 255
  %1114 = call i32 @llvm.ctpop.i32(i32 %1113) #16
  %1115 = trunc i32 %1114 to i8
  %1116 = and i8 %1115, 1
  %1117 = xor i8 %1116, 1
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1117, i8* %1118, align 1, !tbaa !2446
  %1119 = xor i64 %1103, %1102
  %1120 = xor i64 %1119, %1106
  %1121 = lshr i64 %1120, 4
  %1122 = trunc i64 %1121 to i8
  %1123 = and i8 %1122, 1
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1123, i8* %1124, align 1, !tbaa !2447
  %1125 = icmp eq i64 %1106, 0
  %1126 = zext i1 %1125 to i8
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1126, i8* %1127, align 1, !tbaa !2448
  %1128 = lshr i64 %1106, 63
  %1129 = trunc i64 %1128 to i8
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1129, i8* %1130, align 1, !tbaa !2449
  %1131 = lshr i64 %1102, 63
  %1132 = lshr i64 %1103, 63
  %1133 = xor i64 %1128, %1131
  %1134 = xor i64 %1128, %1132
  %1135 = add nuw nsw i64 %1133, %1134
  %1136 = icmp eq i64 %1135, 2
  %1137 = zext i1 %1136 to i8
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1137, i8* %1138, align 1, !tbaa !2450
  %1139 = load i64, i64* %RBP
  %1140 = sub i64 %1139, 128
  %1141 = load i64, i64* %PC
  %1142 = add i64 %1141, 4
  store i64 %1142, i64* %PC
  %1143 = inttoptr i64 %1140 to i32*
  %1144 = load i32, i32* %1143
  %1145 = sext i32 %1144 to i64
  store i64 %1145, i64* %RCX, align 8, !tbaa !2428
  %1146 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1147 = load i64, i64* %RAX
  %1148 = load i64, i64* %RCX
  %1149 = mul i64 %1148, 8
  %1150 = add i64 %1149, %1147
  %1151 = load i64, i64* %PC
  %1152 = add i64 %1151, 5
  store i64 %1152, i64* %PC
  %1153 = inttoptr i64 %1150 to double*
  %1154 = load double, double* %1153
  %1155 = bitcast i8* %1146 to double*
  store double %1154, double* %1155, align 1, !tbaa !2452
  %1156 = getelementptr inbounds i8, i8* %1146, i64 8
  %1157 = bitcast i8* %1156 to double*
  store double 0.000000e+00, double* %1157, align 1, !tbaa !2452
  %1158 = load i64, i64* %RBP
  %1159 = sub i64 %1158, 64
  %1160 = load i64, i64* %PC
  %1161 = add i64 %1160, 4
  store i64 %1161, i64* %PC
  %1162 = inttoptr i64 %1159 to i64*
  %1163 = load i64, i64* %1162
  store i64 %1163, i64* %RAX, align 8, !tbaa !2428
  %1164 = load i64, i64* %RBP
  %1165 = sub i64 %1164, 124
  %1166 = load i64, i64* %PC
  %1167 = add i64 %1166, 4
  store i64 %1167, i64* %PC
  %1168 = inttoptr i64 %1165 to i32*
  %1169 = load i32, i32* %1168
  %1170 = sext i32 %1169 to i64
  store i64 %1170, i64* %RCX, align 8, !tbaa !2428
  %1171 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1172 = load i64, i64* %RAX
  %1173 = load i64, i64* %RCX
  %1174 = mul i64 %1173, 8
  %1175 = add i64 %1174, %1172
  %1176 = load i64, i64* %PC
  %1177 = add i64 %1176, 5
  store i64 %1177, i64* %PC
  %1178 = inttoptr i64 %1175 to double*
  %1179 = load double, double* %1178
  %1180 = bitcast i8* %1171 to double*
  store double %1179, double* %1180, align 1, !tbaa !2452
  %1181 = getelementptr inbounds i8, i8* %1171, i64 8
  %1182 = bitcast i8* %1181 to double*
  store double 0.000000e+00, double* %1182, align 1, !tbaa !2452
  %1183 = load i64, i64* %RBP
  %1184 = sub i64 %1183, 72
  %1185 = load i64, i64* %PC
  %1186 = add i64 %1185, 4
  store i64 %1186, i64* %PC
  %1187 = inttoptr i64 %1184 to i64*
  %1188 = load i64, i64* %1187
  store i64 %1188, i64* %RAX, align 8, !tbaa !2428
  %1189 = load i64, i64* %RBP
  %1190 = sub i64 %1189, 128
  %1191 = load i64, i64* %PC
  %1192 = add i64 %1191, 4
  store i64 %1192, i64* %PC
  %1193 = inttoptr i64 %1190 to i32*
  %1194 = load i32, i32* %1193
  %1195 = sext i32 %1194 to i64
  store i64 %1195, i64* %RCX, align 8, !tbaa !2428
  %1196 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1197 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1198 = load i64, i64* %RAX
  %1199 = load i64, i64* %RCX
  %1200 = mul i64 %1199, 8
  %1201 = add i64 %1200, %1198
  %1202 = load i64, i64* %PC
  %1203 = add i64 %1202, 5
  store i64 %1203, i64* %PC
  %1204 = bitcast i8* %1197 to double*
  %1205 = load double, double* %1204, align 1
  %1206 = getelementptr inbounds i8, i8* %1197, i64 8
  %1207 = bitcast i8* %1206 to i64*
  %1208 = load i64, i64* %1207, align 1
  %1209 = inttoptr i64 %1201 to double*
  %1210 = load double, double* %1209
  %1211 = fmul double %1205, %1210
  %1212 = bitcast i8* %1196 to double*
  store double %1211, double* %1212, align 1, !tbaa !2452
  %1213 = getelementptr inbounds i8, i8* %1196, i64 8
  %1214 = bitcast i8* %1213 to i64*
  store i64 %1208, i64* %1214, align 1, !tbaa !2452
  %1215 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1216 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1217 = bitcast %union.vec128_t* %XMM1 to i8*
  %1218 = load i64, i64* %PC
  %1219 = add i64 %1218, 4
  store i64 %1219, i64* %PC
  %1220 = bitcast i8* %1216 to double*
  %1221 = load double, double* %1220, align 1
  %1222 = getelementptr inbounds i8, i8* %1216, i64 8
  %1223 = bitcast i8* %1222 to i64*
  %1224 = load i64, i64* %1223, align 1
  %1225 = bitcast i8* %1217 to double*
  %1226 = load double, double* %1225, align 1
  %1227 = fadd double %1221, %1226
  %1228 = bitcast i8* %1215 to double*
  store double %1227, double* %1228, align 1, !tbaa !2452
  %1229 = getelementptr inbounds i8, i8* %1215, i64 8
  %1230 = bitcast i8* %1229 to i64*
  store i64 %1224, i64* %1230, align 1, !tbaa !2452
  %1231 = load i64, i64* %RBP
  %1232 = sub i64 %1231, 80
  %1233 = load i64, i64* %PC
  %1234 = add i64 %1233, 4
  store i64 %1234, i64* %PC
  %1235 = inttoptr i64 %1232 to i64*
  %1236 = load i64, i64* %1235
  store i64 %1236, i64* %RAX, align 8, !tbaa !2428
  %1237 = load i64, i64* %RBP
  %1238 = sub i64 %1237, 124
  %1239 = load i64, i64* %PC
  %1240 = add i64 %1239, 4
  store i64 %1240, i64* %PC
  %1241 = inttoptr i64 %1238 to i32*
  %1242 = load i32, i32* %1241
  %1243 = sext i32 %1242 to i64
  store i64 %1243, i64* %RCX, align 8, !tbaa !2428
  %1244 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1245 = load i64, i64* %RAX
  %1246 = load i64, i64* %RCX
  %1247 = mul i64 %1246, 8
  %1248 = add i64 %1247, %1245
  %1249 = load i64, i64* %PC
  %1250 = add i64 %1249, 5
  store i64 %1250, i64* %PC
  %1251 = inttoptr i64 %1248 to double*
  %1252 = load double, double* %1251
  %1253 = bitcast i8* %1244 to double*
  store double %1252, double* %1253, align 1, !tbaa !2452
  %1254 = getelementptr inbounds i8, i8* %1244, i64 8
  %1255 = bitcast i8* %1254 to double*
  store double 0.000000e+00, double* %1255, align 1, !tbaa !2452
  %1256 = load i64, i64* %RBP
  %1257 = sub i64 %1256, 88
  %1258 = load i64, i64* %PC
  %1259 = add i64 %1258, 4
  store i64 %1259, i64* %PC
  %1260 = inttoptr i64 %1257 to i64*
  %1261 = load i64, i64* %1260
  store i64 %1261, i64* %RAX, align 8, !tbaa !2428
  %1262 = load i64, i64* %RBP
  %1263 = sub i64 %1262, 128
  %1264 = load i64, i64* %PC
  %1265 = add i64 %1264, 4
  store i64 %1265, i64* %PC
  %1266 = inttoptr i64 %1263 to i32*
  %1267 = load i32, i32* %1266
  %1268 = sext i32 %1267 to i64
  store i64 %1268, i64* %RCX, align 8, !tbaa !2428
  %1269 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1270 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1271 = load i64, i64* %RAX
  %1272 = load i64, i64* %RCX
  %1273 = mul i64 %1272, 8
  %1274 = add i64 %1273, %1271
  %1275 = load i64, i64* %PC
  %1276 = add i64 %1275, 5
  store i64 %1276, i64* %PC
  %1277 = bitcast i8* %1270 to double*
  %1278 = load double, double* %1277, align 1
  %1279 = getelementptr inbounds i8, i8* %1270, i64 8
  %1280 = bitcast i8* %1279 to i64*
  %1281 = load i64, i64* %1280, align 1
  %1282 = inttoptr i64 %1274 to double*
  %1283 = load double, double* %1282
  %1284 = fmul double %1278, %1283
  %1285 = bitcast i8* %1269 to double*
  store double %1284, double* %1285, align 1, !tbaa !2452
  %1286 = getelementptr inbounds i8, i8* %1269, i64 8
  %1287 = bitcast i8* %1286 to i64*
  store i64 %1281, i64* %1287, align 1, !tbaa !2452
  %1288 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1289 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1290 = bitcast %union.vec128_t* %XMM1 to i8*
  %1291 = load i64, i64* %PC
  %1292 = add i64 %1291, 4
  store i64 %1292, i64* %PC
  %1293 = bitcast i8* %1289 to double*
  %1294 = load double, double* %1293, align 1
  %1295 = getelementptr inbounds i8, i8* %1289, i64 8
  %1296 = bitcast i8* %1295 to i64*
  %1297 = load i64, i64* %1296, align 1
  %1298 = bitcast i8* %1290 to double*
  %1299 = load double, double* %1298, align 1
  %1300 = fadd double %1294, %1299
  %1301 = bitcast i8* %1288 to double*
  store double %1300, double* %1301, align 1, !tbaa !2452
  %1302 = getelementptr inbounds i8, i8* %1288, i64 8
  %1303 = bitcast i8* %1302 to i64*
  store i64 %1297, i64* %1303, align 1, !tbaa !2452
  %1304 = load i64, i64* %RBP
  %1305 = sub i64 %1304, 56
  %1306 = load i64, i64* %PC
  %1307 = add i64 %1306, 4
  store i64 %1307, i64* %PC
  %1308 = inttoptr i64 %1305 to i64*
  %1309 = load i64, i64* %1308
  store i64 %1309, i64* %RAX, align 8, !tbaa !2428
  %1310 = load i64, i64* %RBP
  %1311 = sub i64 %1310, 124
  %1312 = load i64, i64* %PC
  %1313 = add i64 %1312, 4
  store i64 %1313, i64* %PC
  %1314 = inttoptr i64 %1311 to i32*
  %1315 = load i32, i32* %1314
  %1316 = sext i32 %1315 to i64
  store i64 %1316, i64* %RCX, align 8, !tbaa !2428
  %1317 = load i64, i64* %RCX
  %1318 = load i64, i64* %PC
  %1319 = add i64 %1318, 7
  store i64 %1319, i64* %PC
  %1320 = sext i64 %1317 to i128
  %1321 = and i128 %1320, -18446744073709551616
  %1322 = zext i64 %1317 to i128
  %1323 = or i128 %1321, %1322
  %1324 = mul nsw i128 32000, %1323
  %1325 = trunc i128 %1324 to i64
  store i64 %1325, i64* %RCX, align 8, !tbaa !2428
  %1326 = sext i64 %1325 to i128
  %1327 = icmp ne i128 %1326, %1324
  %1328 = zext i1 %1327 to i8
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1328, i8* %1329, align 1, !tbaa !2432
  %1330 = trunc i128 %1324 to i32
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1331, align 1, !tbaa !2446
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1332, align 1, !tbaa !2447
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1333, align 1, !tbaa !2448
  %1334 = lshr i64 %1325, 63
  %1335 = trunc i64 %1334 to i8
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1335, i8* %1336, align 1, !tbaa !2449
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1328, i8* %1337, align 1, !tbaa !2450
  %1338 = load i64, i64* %RAX
  %1339 = load i64, i64* %RCX
  %1340 = load i64, i64* %PC
  %1341 = add i64 %1340, 3
  store i64 %1341, i64* %PC
  %1342 = add i64 %1339, %1338
  store i64 %1342, i64* %RAX, align 8, !tbaa !2428
  %1343 = icmp ult i64 %1342, %1338
  %1344 = icmp ult i64 %1342, %1339
  %1345 = or i1 %1343, %1344
  %1346 = zext i1 %1345 to i8
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1346, i8* %1347, align 1, !tbaa !2432
  %1348 = trunc i64 %1342 to i32
  %1349 = and i32 %1348, 255
  %1350 = call i32 @llvm.ctpop.i32(i32 %1349) #16
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  %1353 = xor i8 %1352, 1
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1353, i8* %1354, align 1, !tbaa !2446
  %1355 = xor i64 %1339, %1338
  %1356 = xor i64 %1355, %1342
  %1357 = lshr i64 %1356, 4
  %1358 = trunc i64 %1357 to i8
  %1359 = and i8 %1358, 1
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1359, i8* %1360, align 1, !tbaa !2447
  %1361 = icmp eq i64 %1342, 0
  %1362 = zext i1 %1361 to i8
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1362, i8* %1363, align 1, !tbaa !2448
  %1364 = lshr i64 %1342, 63
  %1365 = trunc i64 %1364 to i8
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1365, i8* %1366, align 1, !tbaa !2449
  %1367 = lshr i64 %1338, 63
  %1368 = lshr i64 %1339, 63
  %1369 = xor i64 %1364, %1367
  %1370 = xor i64 %1364, %1368
  %1371 = add nuw nsw i64 %1369, %1370
  %1372 = icmp eq i64 %1371, 2
  %1373 = zext i1 %1372 to i8
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1373, i8* %1374, align 1, !tbaa !2450
  %1375 = load i64, i64* %RBP
  %1376 = sub i64 %1375, 128
  %1377 = load i64, i64* %PC
  %1378 = add i64 %1377, 4
  store i64 %1378, i64* %PC
  %1379 = inttoptr i64 %1376 to i32*
  %1380 = load i32, i32* %1379
  %1381 = sext i32 %1380 to i64
  store i64 %1381, i64* %RCX, align 8, !tbaa !2428
  %1382 = load i64, i64* %RAX
  %1383 = load i64, i64* %RCX
  %1384 = mul i64 %1383, 8
  %1385 = add i64 %1384, %1382
  %1386 = bitcast %union.vec128_t* %XMM0 to i8*
  %1387 = load i64, i64* %PC
  %1388 = add i64 %1387, 5
  store i64 %1388, i64* %PC
  %1389 = bitcast i8* %1386 to double*
  %1390 = load double, double* %1389, align 1
  %1391 = inttoptr i64 %1385 to double*
  store double %1390, double* %1391
  %1392 = load i64, i64* %RBP
  %1393 = sub i64 %1392, 128
  %1394 = load i64, i64* %PC
  %1395 = add i64 %1394, 3
  store i64 %1395, i64* %PC
  %1396 = inttoptr i64 %1393 to i32*
  %1397 = load i32, i32* %1396
  %1398 = zext i32 %1397 to i64
  store i64 %1398, i64* %RAX, align 8, !tbaa !2428
  %1399 = load i64, i64* %RAX
  %1400 = load i64, i64* %PC
  %1401 = add i64 %1400, 3
  store i64 %1401, i64* %PC
  %1402 = trunc i64 %1399 to i32
  %1403 = add i32 1, %1402
  %1404 = zext i32 %1403 to i64
  store i64 %1404, i64* %RAX, align 8, !tbaa !2428
  %1405 = icmp ult i32 %1403, %1402
  %1406 = icmp ult i32 %1403, 1
  %1407 = or i1 %1405, %1406
  %1408 = zext i1 %1407 to i8
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1408, i8* %1409, align 1, !tbaa !2432
  %1410 = and i32 %1403, 255
  %1411 = call i32 @llvm.ctpop.i32(i32 %1410) #16
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 1
  %1414 = xor i8 %1413, 1
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1414, i8* %1415, align 1, !tbaa !2446
  %1416 = xor i64 1, %1399
  %1417 = trunc i64 %1416 to i32
  %1418 = xor i32 %1417, %1403
  %1419 = lshr i32 %1418, 4
  %1420 = trunc i32 %1419 to i8
  %1421 = and i8 %1420, 1
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1421, i8* %1422, align 1, !tbaa !2447
  %1423 = icmp eq i32 %1403, 0
  %1424 = zext i1 %1423 to i8
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1424, i8* %1425, align 1, !tbaa !2448
  %1426 = lshr i32 %1403, 31
  %1427 = trunc i32 %1426 to i8
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1427, i8* %1428, align 1, !tbaa !2449
  %1429 = lshr i32 %1402, 31
  %1430 = xor i32 %1426, %1429
  %1431 = add nuw nsw i32 %1430, %1426
  %1432 = icmp eq i32 %1431, 2
  %1433 = zext i1 %1432 to i8
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1433, i8* %1434, align 1, !tbaa !2450
  %1435 = load i64, i64* %RBP
  %1436 = sub i64 %1435, 128
  %1437 = load i32, i32* %EAX
  %1438 = zext i32 %1437 to i64
  %1439 = load i64, i64* %PC
  %1440 = add i64 %1439, 3
  store i64 %1440, i64* %PC
  %1441 = inttoptr i64 %1436 to i32*
  store i32 %1437, i32* %1441
  %1442 = load i64, i64* %PC
  %1443 = sub i64 %1442, 135
  %1444 = load i64, i64* %PC
  %1445 = add i64 %1444, 5
  store i64 %1445, i64* %PC
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1443, i64* %1446, align 8, !tbaa !2428
  br label %block_40109a

block_401223:                                     ; preds = %block_4011e2
  %1447 = sub i64 %322, 124
  %1448 = load i64, i64* %PC
  %1449 = add i64 %1448, 7
  store i64 %1449, i64* %PC
  %1450 = inttoptr i64 %1447 to i32*
  store i32 0, i32* %1450
  br label %block_40122a

block_401163:                                     ; preds = %block_40116f, %block_40114c
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.1, %block_40114c ], [ %MEMORY.4, %block_40116f ]
  %1451 = load i64, i64* %RBP
  %1452 = sub i64 %1451, 128
  %1453 = load i64, i64* %PC
  %1454 = add i64 %1453, 3
  store i64 %1454, i64* %PC
  %1455 = inttoptr i64 %1452 to i32*
  %1456 = load i32, i32* %1455
  %1457 = zext i32 %1456 to i64
  store i64 %1457, i64* %RAX, align 8, !tbaa !2428
  %1458 = load i32, i32* %EAX
  %1459 = zext i32 %1458 to i64
  %1460 = load i64, i64* %RBP
  %1461 = sub i64 %1460, 20
  %1462 = load i64, i64* %PC
  %1463 = add i64 %1462, 3
  store i64 %1463, i64* %PC
  %1464 = inttoptr i64 %1461 to i32*
  %1465 = load i32, i32* %1464
  %1466 = sub i32 %1458, %1465
  %1467 = icmp ult i32 %1458, %1465
  %1468 = zext i1 %1467 to i8
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1468, i8* %1469, align 1, !tbaa !2432
  %1470 = and i32 %1466, 255
  %1471 = call i32 @llvm.ctpop.i32(i32 %1470) #16
  %1472 = trunc i32 %1471 to i8
  %1473 = and i8 %1472, 1
  %1474 = xor i8 %1473, 1
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1474, i8* %1475, align 1, !tbaa !2446
  %1476 = xor i32 %1465, %1458
  %1477 = xor i32 %1476, %1466
  %1478 = lshr i32 %1477, 4
  %1479 = trunc i32 %1478 to i8
  %1480 = and i8 %1479, 1
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1480, i8* %1481, align 1, !tbaa !2447
  %1482 = icmp eq i32 %1466, 0
  %1483 = zext i1 %1482 to i8
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1483, i8* %1484, align 1, !tbaa !2448
  %1485 = lshr i32 %1466, 31
  %1486 = trunc i32 %1485 to i8
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1486, i8* %1487, align 1, !tbaa !2449
  %1488 = lshr i32 %1458, 31
  %1489 = lshr i32 %1465, 31
  %1490 = xor i32 %1489, %1488
  %1491 = xor i32 %1485, %1488
  %1492 = add nuw nsw i32 %1491, %1490
  %1493 = icmp eq i32 %1492, 2
  %1494 = zext i1 %1493 to i8
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1494, i8* %1495, align 1, !tbaa !2450
  %1496 = load i64, i64* %PC
  %1497 = add i64 %1496, 95
  %1498 = load i64, i64* %PC
  %1499 = add i64 %1498, 6
  %1500 = load i64, i64* %PC
  %1501 = add i64 %1500, 6
  store i64 %1501, i64* %PC
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1503 = load i8, i8* %1502, align 1, !tbaa !2449
  %1504 = icmp ne i8 %1503, 0
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1506 = load i8, i8* %1505, align 1, !tbaa !2450
  %1507 = icmp ne i8 %1506, 0
  %1508 = xor i1 %1504, %1507
  %1509 = xor i1 %1508, true
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1512 = select i1 %1508, i64 %1499, i64 %1497
  store i64 %1512, i64* %1511, align 8, !tbaa !2428
  %1513 = load i8, i8* %BRANCH_TAKEN
  %1514 = icmp eq i8 %1513, 1
  br i1 %1514, label %block_4011c8, label %block_40116f

block_4012a2:                                     ; preds = %block_40123d
  %1515 = load i64, i64* %PC
  %1516 = add i64 %1515, 5
  %1517 = load i64, i64* %PC
  %1518 = add i64 %1517, 5
  store i64 %1518, i64* %PC
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1516, i64* %1519, align 8, !tbaa !2428
  %1520 = load i64, i64* %RBP
  %1521 = sub i64 %1520, 124
  %1522 = load i64, i64* %PC
  %1523 = add i64 %1522, 3
  store i64 %1523, i64* %PC
  %1524 = inttoptr i64 %1521 to i32*
  %1525 = load i32, i32* %1524
  %1526 = zext i32 %1525 to i64
  store i64 %1526, i64* %RAX, align 8, !tbaa !2428
  %1527 = load i64, i64* %RAX
  %1528 = load i64, i64* %PC
  %1529 = add i64 %1528, 3
  store i64 %1529, i64* %PC
  %1530 = trunc i64 %1527 to i32
  %1531 = add i32 1, %1530
  %1532 = zext i32 %1531 to i64
  store i64 %1532, i64* %RAX, align 8, !tbaa !2428
  %1533 = icmp ult i32 %1531, %1530
  %1534 = icmp ult i32 %1531, 1
  %1535 = or i1 %1533, %1534
  %1536 = zext i1 %1535 to i8
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1536, i8* %1537, align 1, !tbaa !2432
  %1538 = and i32 %1531, 255
  %1539 = call i32 @llvm.ctpop.i32(i32 %1538) #16
  %1540 = trunc i32 %1539 to i8
  %1541 = and i8 %1540, 1
  %1542 = xor i8 %1541, 1
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1542, i8* %1543, align 1, !tbaa !2446
  %1544 = xor i64 1, %1527
  %1545 = trunc i64 %1544 to i32
  %1546 = xor i32 %1545, %1531
  %1547 = lshr i32 %1546, 4
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1549, i8* %1550, align 1, !tbaa !2447
  %1551 = icmp eq i32 %1531, 0
  %1552 = zext i1 %1551 to i8
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1552, i8* %1553, align 1, !tbaa !2448
  %1554 = lshr i32 %1531, 31
  %1555 = trunc i32 %1554 to i8
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1555, i8* %1556, align 1, !tbaa !2449
  %1557 = lshr i32 %1530, 31
  %1558 = xor i32 %1554, %1557
  %1559 = add nuw nsw i32 %1558, %1554
  %1560 = icmp eq i32 %1559, 2
  %1561 = zext i1 %1560 to i8
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1561, i8* %1562, align 1, !tbaa !2450
  %1563 = load i64, i64* %RBP
  %1564 = sub i64 %1563, 124
  %1565 = load i32, i32* %EAX
  %1566 = zext i32 %1565 to i64
  %1567 = load i64, i64* %PC
  %1568 = add i64 %1567, 3
  store i64 %1568, i64* %PC
  %1569 = inttoptr i64 %1564 to i32*
  store i32 %1565, i32* %1569
  %1570 = load i64, i64* %PC
  %1571 = sub i64 %1570, 134
  %1572 = load i64, i64* %PC
  %1573 = add i64 %1572, 5
  store i64 %1573, i64* %PC
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1571, i64* %1574, align 8, !tbaa !2428
  br label %block_40122a

block_40109a:                                     ; preds = %block_401093, %block_4010a6
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.6, %block_401093 ], [ %MEMORY.5, %block_4010a6 ]
  %1575 = load i64, i64* %RBP
  %1576 = sub i64 %1575, 128
  %1577 = load i64, i64* %PC
  %1578 = add i64 %1577, 3
  store i64 %1578, i64* %PC
  %1579 = inttoptr i64 %1576 to i32*
  %1580 = load i32, i32* %1579
  %1581 = zext i32 %1580 to i64
  store i64 %1581, i64* %RAX, align 8, !tbaa !2428
  %1582 = load i32, i32* %EAX
  %1583 = zext i32 %1582 to i64
  %1584 = load i64, i64* %RBP
  %1585 = sub i64 %1584, 20
  %1586 = load i64, i64* %PC
  %1587 = add i64 %1586, 3
  store i64 %1587, i64* %PC
  %1588 = inttoptr i64 %1585 to i32*
  %1589 = load i32, i32* %1588
  %1590 = sub i32 %1582, %1589
  %1591 = icmp ult i32 %1582, %1589
  %1592 = zext i1 %1591 to i8
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1592, i8* %1593, align 1, !tbaa !2432
  %1594 = and i32 %1590, 255
  %1595 = call i32 @llvm.ctpop.i32(i32 %1594) #16
  %1596 = trunc i32 %1595 to i8
  %1597 = and i8 %1596, 1
  %1598 = xor i8 %1597, 1
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1598, i8* %1599, align 1, !tbaa !2446
  %1600 = xor i32 %1589, %1582
  %1601 = xor i32 %1600, %1590
  %1602 = lshr i32 %1601, 4
  %1603 = trunc i32 %1602 to i8
  %1604 = and i8 %1603, 1
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1604, i8* %1605, align 1, !tbaa !2447
  %1606 = icmp eq i32 %1590, 0
  %1607 = zext i1 %1606 to i8
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1607, i8* %1608, align 1, !tbaa !2448
  %1609 = lshr i32 %1590, 31
  %1610 = trunc i32 %1609 to i8
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1610, i8* %1611, align 1, !tbaa !2449
  %1612 = lshr i32 %1582, 31
  %1613 = lshr i32 %1589, 31
  %1614 = xor i32 %1613, %1612
  %1615 = xor i32 %1609, %1612
  %1616 = add nuw nsw i32 %1615, %1614
  %1617 = icmp eq i32 %1616, 2
  %1618 = zext i1 %1617 to i8
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1618, i8* %1619, align 1, !tbaa !2450
  %1620 = load i64, i64* %PC
  %1621 = add i64 %1620, 134
  %1622 = load i64, i64* %PC
  %1623 = add i64 %1622, 6
  %1624 = load i64, i64* %PC
  %1625 = add i64 %1624, 6
  store i64 %1625, i64* %PC
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1627 = load i8, i8* %1626, align 1, !tbaa !2449
  %1628 = icmp ne i8 %1627, 0
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1630 = load i8, i8* %1629, align 1, !tbaa !2450
  %1631 = icmp ne i8 %1630, 0
  %1632 = xor i1 %1628, %1631
  %1633 = xor i1 %1632, true
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1636 = select i1 %1632, i64 %1623, i64 %1621
  store i64 %1636, i64* %1635, align 8, !tbaa !2428
  %1637 = load i8, i8* %BRANCH_TAKEN
  %1638 = icmp eq i8 %1637, 1
  br i1 %1638, label %block_401126, label %block_4010a6

block_401093:                                     ; preds = %block_401087
  %1639 = sub i64 %1965, 128
  %1640 = load i64, i64* %PC
  %1641 = add i64 %1640, 7
  store i64 %1641, i64* %PC
  %1642 = inttoptr i64 %1639 to i32*
  store i32 0, i32* %1642
  br label %block_40109a

block_40116f:                                     ; preds = %block_401163
  %1643 = load i64, i64* %RBP
  %1644 = sub i64 %1643, 104
  %1645 = load i64, i64* %PC
  %1646 = add i64 %1645, 4
  store i64 %1646, i64* %PC
  %1647 = inttoptr i64 %1644 to i64*
  %1648 = load i64, i64* %1647
  store i64 %1648, i64* %RAX, align 8, !tbaa !2428
  %1649 = load i64, i64* %RBP
  %1650 = sub i64 %1649, 124
  %1651 = load i64, i64* %PC
  %1652 = add i64 %1651, 4
  store i64 %1652, i64* %PC
  %1653 = inttoptr i64 %1650 to i32*
  %1654 = load i32, i32* %1653
  %1655 = sext i32 %1654 to i64
  store i64 %1655, i64* %RCX, align 8, !tbaa !2428
  %1656 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1657 = load i64, i64* %RAX
  %1658 = load i64, i64* %RCX
  %1659 = mul i64 %1658, 8
  %1660 = add i64 %1659, %1657
  %1661 = load i64, i64* %PC
  %1662 = add i64 %1661, 5
  store i64 %1662, i64* %PC
  %1663 = inttoptr i64 %1660 to double*
  %1664 = load double, double* %1663
  %1665 = bitcast i8* %1656 to double*
  store double %1664, double* %1665, align 1, !tbaa !2452
  %1666 = getelementptr inbounds i8, i8* %1656, i64 8
  %1667 = bitcast i8* %1666 to double*
  store double 0.000000e+00, double* %1667, align 1, !tbaa !2452
  %1668 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1669 = load i64, i64* %RBP
  %1670 = sub i64 %1669, 40
  %1671 = load i64, i64* %PC
  %1672 = add i64 %1671, 5
  store i64 %1672, i64* %PC
  %1673 = inttoptr i64 %1670 to double*
  %1674 = load double, double* %1673
  %1675 = bitcast i8* %1668 to double*
  store double %1674, double* %1675, align 1, !tbaa !2452
  %1676 = getelementptr inbounds i8, i8* %1668, i64 8
  %1677 = bitcast i8* %1676 to double*
  store double 0.000000e+00, double* %1677, align 1, !tbaa !2452
  %1678 = load i64, i64* %RBP
  %1679 = sub i64 %1678, 56
  %1680 = load i64, i64* %PC
  %1681 = add i64 %1680, 4
  store i64 %1681, i64* %PC
  %1682 = inttoptr i64 %1679 to i64*
  %1683 = load i64, i64* %1682
  store i64 %1683, i64* %RAX, align 8, !tbaa !2428
  %1684 = load i64, i64* %RBP
  %1685 = sub i64 %1684, 128
  %1686 = load i64, i64* %PC
  %1687 = add i64 %1686, 4
  store i64 %1687, i64* %PC
  %1688 = inttoptr i64 %1685 to i32*
  %1689 = load i32, i32* %1688
  %1690 = sext i32 %1689 to i64
  store i64 %1690, i64* %RCX, align 8, !tbaa !2428
  %1691 = load i64, i64* %RCX
  %1692 = load i64, i64* %PC
  %1693 = add i64 %1692, 7
  store i64 %1693, i64* %PC
  %1694 = sext i64 %1691 to i128
  %1695 = and i128 %1694, -18446744073709551616
  %1696 = zext i64 %1691 to i128
  %1697 = or i128 %1695, %1696
  %1698 = mul nsw i128 32000, %1697
  %1699 = trunc i128 %1698 to i64
  store i64 %1699, i64* %RCX, align 8, !tbaa !2428
  %1700 = sext i64 %1699 to i128
  %1701 = icmp ne i128 %1700, %1698
  %1702 = zext i1 %1701 to i8
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1702, i8* %1703, align 1, !tbaa !2432
  %1704 = trunc i128 %1698 to i32
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1705, align 1, !tbaa !2446
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1706, align 1, !tbaa !2447
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1707, align 1, !tbaa !2448
  %1708 = lshr i64 %1699, 63
  %1709 = trunc i64 %1708 to i8
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1709, i8* %1710, align 1, !tbaa !2449
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1702, i8* %1711, align 1, !tbaa !2450
  %1712 = load i64, i64* %RAX
  %1713 = load i64, i64* %RCX
  %1714 = load i64, i64* %PC
  %1715 = add i64 %1714, 3
  store i64 %1715, i64* %PC
  %1716 = add i64 %1713, %1712
  store i64 %1716, i64* %RAX, align 8, !tbaa !2428
  %1717 = icmp ult i64 %1716, %1712
  %1718 = icmp ult i64 %1716, %1713
  %1719 = or i1 %1717, %1718
  %1720 = zext i1 %1719 to i8
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1720, i8* %1721, align 1, !tbaa !2432
  %1722 = trunc i64 %1716 to i32
  %1723 = and i32 %1722, 255
  %1724 = call i32 @llvm.ctpop.i32(i32 %1723) #16
  %1725 = trunc i32 %1724 to i8
  %1726 = and i8 %1725, 1
  %1727 = xor i8 %1726, 1
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1727, i8* %1728, align 1, !tbaa !2446
  %1729 = xor i64 %1713, %1712
  %1730 = xor i64 %1729, %1716
  %1731 = lshr i64 %1730, 4
  %1732 = trunc i64 %1731 to i8
  %1733 = and i8 %1732, 1
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1733, i8* %1734, align 1, !tbaa !2447
  %1735 = icmp eq i64 %1716, 0
  %1736 = zext i1 %1735 to i8
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1736, i8* %1737, align 1, !tbaa !2448
  %1738 = lshr i64 %1716, 63
  %1739 = trunc i64 %1738 to i8
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1739, i8* %1740, align 1, !tbaa !2449
  %1741 = lshr i64 %1712, 63
  %1742 = lshr i64 %1713, 63
  %1743 = xor i64 %1738, %1741
  %1744 = xor i64 %1738, %1742
  %1745 = add nuw nsw i64 %1743, %1744
  %1746 = icmp eq i64 %1745, 2
  %1747 = zext i1 %1746 to i8
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1747, i8* %1748, align 1, !tbaa !2450
  %1749 = load i64, i64* %RBP
  %1750 = sub i64 %1749, 124
  %1751 = load i64, i64* %PC
  %1752 = add i64 %1751, 4
  store i64 %1752, i64* %PC
  %1753 = inttoptr i64 %1750 to i32*
  %1754 = load i32, i32* %1753
  %1755 = sext i32 %1754 to i64
  store i64 %1755, i64* %RCX, align 8, !tbaa !2428
  %1756 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1757 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1758 = load i64, i64* %RAX
  %1759 = load i64, i64* %RCX
  %1760 = mul i64 %1759, 8
  %1761 = add i64 %1760, %1758
  %1762 = load i64, i64* %PC
  %1763 = add i64 %1762, 5
  store i64 %1763, i64* %PC
  %1764 = bitcast i8* %1757 to double*
  %1765 = load double, double* %1764, align 1
  %1766 = getelementptr inbounds i8, i8* %1757, i64 8
  %1767 = bitcast i8* %1766 to i64*
  %1768 = load i64, i64* %1767, align 1
  %1769 = inttoptr i64 %1761 to double*
  %1770 = load double, double* %1769
  %1771 = fmul double %1765, %1770
  %1772 = bitcast i8* %1756 to double*
  store double %1771, double* %1772, align 1, !tbaa !2452
  %1773 = getelementptr inbounds i8, i8* %1756, i64 8
  %1774 = bitcast i8* %1773 to i64*
  store i64 %1768, i64* %1774, align 1, !tbaa !2452
  %1775 = load i64, i64* %RBP
  %1776 = sub i64 %1775, 112
  %1777 = load i64, i64* %PC
  %1778 = add i64 %1777, 4
  store i64 %1778, i64* %PC
  %1779 = inttoptr i64 %1776 to i64*
  %1780 = load i64, i64* %1779
  store i64 %1780, i64* %RAX, align 8, !tbaa !2428
  %1781 = load i64, i64* %RBP
  %1782 = sub i64 %1781, 128
  %1783 = load i64, i64* %PC
  %1784 = add i64 %1783, 4
  store i64 %1784, i64* %PC
  %1785 = inttoptr i64 %1782 to i32*
  %1786 = load i32, i32* %1785
  %1787 = sext i32 %1786 to i64
  store i64 %1787, i64* %RCX, align 8, !tbaa !2428
  %1788 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1789 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1790 = load i64, i64* %RAX
  %1791 = load i64, i64* %RCX
  %1792 = mul i64 %1791, 8
  %1793 = add i64 %1792, %1790
  %1794 = load i64, i64* %PC
  %1795 = add i64 %1794, 5
  store i64 %1795, i64* %PC
  %1796 = bitcast i8* %1789 to double*
  %1797 = load double, double* %1796, align 1
  %1798 = getelementptr inbounds i8, i8* %1789, i64 8
  %1799 = bitcast i8* %1798 to i64*
  %1800 = load i64, i64* %1799, align 1
  %1801 = inttoptr i64 %1793 to double*
  %1802 = load double, double* %1801
  %1803 = fmul double %1797, %1802
  %1804 = bitcast i8* %1788 to double*
  store double %1803, double* %1804, align 1, !tbaa !2452
  %1805 = getelementptr inbounds i8, i8* %1788, i64 8
  %1806 = bitcast i8* %1805 to i64*
  store i64 %1800, i64* %1806, align 1, !tbaa !2452
  %1807 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1808 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1809 = bitcast %union.vec128_t* %XMM1 to i8*
  %1810 = load i64, i64* %PC
  %1811 = add i64 %1810, 4
  store i64 %1811, i64* %PC
  %1812 = bitcast i8* %1808 to double*
  %1813 = load double, double* %1812, align 1
  %1814 = getelementptr inbounds i8, i8* %1808, i64 8
  %1815 = bitcast i8* %1814 to i64*
  %1816 = load i64, i64* %1815, align 1
  %1817 = bitcast i8* %1809 to double*
  %1818 = load double, double* %1817, align 1
  %1819 = fadd double %1813, %1818
  %1820 = bitcast i8* %1807 to double*
  store double %1819, double* %1820, align 1, !tbaa !2452
  %1821 = getelementptr inbounds i8, i8* %1807, i64 8
  %1822 = bitcast i8* %1821 to i64*
  store i64 %1816, i64* %1822, align 1, !tbaa !2452
  %1823 = load i64, i64* %RBP
  %1824 = sub i64 %1823, 104
  %1825 = load i64, i64* %PC
  %1826 = add i64 %1825, 4
  store i64 %1826, i64* %PC
  %1827 = inttoptr i64 %1824 to i64*
  %1828 = load i64, i64* %1827
  store i64 %1828, i64* %RAX, align 8, !tbaa !2428
  %1829 = load i64, i64* %RBP
  %1830 = sub i64 %1829, 124
  %1831 = load i64, i64* %PC
  %1832 = add i64 %1831, 4
  store i64 %1832, i64* %PC
  %1833 = inttoptr i64 %1830 to i32*
  %1834 = load i32, i32* %1833
  %1835 = sext i32 %1834 to i64
  store i64 %1835, i64* %RCX, align 8, !tbaa !2428
  %1836 = load i64, i64* %RAX
  %1837 = load i64, i64* %RCX
  %1838 = mul i64 %1837, 8
  %1839 = add i64 %1838, %1836
  %1840 = bitcast %union.vec128_t* %XMM0 to i8*
  %1841 = load i64, i64* %PC
  %1842 = add i64 %1841, 5
  store i64 %1842, i64* %PC
  %1843 = bitcast i8* %1840 to double*
  %1844 = load double, double* %1843, align 1
  %1845 = inttoptr i64 %1839 to double*
  store double %1844, double* %1845
  %1846 = load i64, i64* %RBP
  %1847 = sub i64 %1846, 128
  %1848 = load i64, i64* %PC
  %1849 = add i64 %1848, 3
  store i64 %1849, i64* %PC
  %1850 = inttoptr i64 %1847 to i32*
  %1851 = load i32, i32* %1850
  %1852 = zext i32 %1851 to i64
  store i64 %1852, i64* %RAX, align 8, !tbaa !2428
  %1853 = load i64, i64* %RAX
  %1854 = load i64, i64* %PC
  %1855 = add i64 %1854, 3
  store i64 %1855, i64* %PC
  %1856 = trunc i64 %1853 to i32
  %1857 = add i32 1, %1856
  %1858 = zext i32 %1857 to i64
  store i64 %1858, i64* %RAX, align 8, !tbaa !2428
  %1859 = icmp ult i32 %1857, %1856
  %1860 = icmp ult i32 %1857, 1
  %1861 = or i1 %1859, %1860
  %1862 = zext i1 %1861 to i8
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1862, i8* %1863, align 1, !tbaa !2432
  %1864 = and i32 %1857, 255
  %1865 = call i32 @llvm.ctpop.i32(i32 %1864) #16
  %1866 = trunc i32 %1865 to i8
  %1867 = and i8 %1866, 1
  %1868 = xor i8 %1867, 1
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1868, i8* %1869, align 1, !tbaa !2446
  %1870 = xor i64 1, %1853
  %1871 = trunc i64 %1870 to i32
  %1872 = xor i32 %1871, %1857
  %1873 = lshr i32 %1872, 4
  %1874 = trunc i32 %1873 to i8
  %1875 = and i8 %1874, 1
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1875, i8* %1876, align 1, !tbaa !2447
  %1877 = icmp eq i32 %1857, 0
  %1878 = zext i1 %1877 to i8
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1878, i8* %1879, align 1, !tbaa !2448
  %1880 = lshr i32 %1857, 31
  %1881 = trunc i32 %1880 to i8
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1881, i8* %1882, align 1, !tbaa !2449
  %1883 = lshr i32 %1856, 31
  %1884 = xor i32 %1880, %1883
  %1885 = add nuw nsw i32 %1884, %1880
  %1886 = icmp eq i32 %1885, 2
  %1887 = zext i1 %1886 to i8
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1887, i8* %1888, align 1, !tbaa !2450
  %1889 = load i64, i64* %RBP
  %1890 = sub i64 %1889, 128
  %1891 = load i32, i32* %EAX
  %1892 = zext i32 %1891 to i64
  %1893 = load i64, i64* %PC
  %1894 = add i64 %1893, 3
  store i64 %1894, i64* %PC
  %1895 = inttoptr i64 %1890 to i32*
  store i32 %1891, i32* %1895
  %1896 = load i64, i64* %PC
  %1897 = sub i64 %1896, 96
  %1898 = load i64, i64* %PC
  %1899 = add i64 %1898, 5
  store i64 %1899, i64* %PC
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1897, i64* %1900, align 8, !tbaa !2428
  br label %block_401163

block_401087:                                     ; preds = %block_401126, %block_401030
  %MEMORY.6 = phi %struct.Memory* [ %2, %block_401030 ], [ %MEMORY.5, %block_401126 ]
  %1901 = load i64, i64* %RBP
  %1902 = sub i64 %1901, 124
  %1903 = load i64, i64* %PC
  %1904 = add i64 %1903, 3
  store i64 %1904, i64* %PC
  %1905 = inttoptr i64 %1902 to i32*
  %1906 = load i32, i32* %1905
  %1907 = zext i32 %1906 to i64
  store i64 %1907, i64* %RAX, align 8, !tbaa !2428
  %1908 = load i32, i32* %EAX
  %1909 = zext i32 %1908 to i64
  %1910 = load i64, i64* %RBP
  %1911 = sub i64 %1910, 20
  %1912 = load i64, i64* %PC
  %1913 = add i64 %1912, 3
  store i64 %1913, i64* %PC
  %1914 = inttoptr i64 %1911 to i32*
  %1915 = load i32, i32* %1914
  %1916 = sub i32 %1908, %1915
  %1917 = icmp ult i32 %1908, %1915
  %1918 = zext i1 %1917 to i8
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1918, i8* %1919, align 1, !tbaa !2432
  %1920 = and i32 %1916, 255
  %1921 = call i32 @llvm.ctpop.i32(i32 %1920) #16
  %1922 = trunc i32 %1921 to i8
  %1923 = and i8 %1922, 1
  %1924 = xor i8 %1923, 1
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1924, i8* %1925, align 1, !tbaa !2446
  %1926 = xor i32 %1915, %1908
  %1927 = xor i32 %1926, %1916
  %1928 = lshr i32 %1927, 4
  %1929 = trunc i32 %1928 to i8
  %1930 = and i8 %1929, 1
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1930, i8* %1931, align 1, !tbaa !2447
  %1932 = icmp eq i32 %1916, 0
  %1933 = zext i1 %1932 to i8
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1933, i8* %1934, align 1, !tbaa !2448
  %1935 = lshr i32 %1916, 31
  %1936 = trunc i32 %1935 to i8
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1936, i8* %1937, align 1, !tbaa !2449
  %1938 = lshr i32 %1908, 31
  %1939 = lshr i32 %1915, 31
  %1940 = xor i32 %1939, %1938
  %1941 = xor i32 %1935, %1938
  %1942 = add nuw nsw i32 %1941, %1940
  %1943 = icmp eq i32 %1942, 2
  %1944 = zext i1 %1943 to i8
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1944, i8* %1945, align 1, !tbaa !2450
  %1946 = load i64, i64* %PC
  %1947 = add i64 %1946, 172
  %1948 = load i64, i64* %PC
  %1949 = add i64 %1948, 6
  %1950 = load i64, i64* %PC
  %1951 = add i64 %1950, 6
  store i64 %1951, i64* %PC
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1953 = load i8, i8* %1952, align 1, !tbaa !2449
  %1954 = icmp ne i8 %1953, 0
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1956 = load i8, i8* %1955, align 1, !tbaa !2450
  %1957 = icmp ne i8 %1956, 0
  %1958 = xor i1 %1954, %1957
  %1959 = xor i1 %1958, true
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1962 = select i1 %1958, i64 %1949, i64 %1947
  store i64 %1962, i64* %1961, align 8, !tbaa !2428
  %1963 = load i8, i8* %BRANCH_TAKEN
  %1964 = icmp eq i8 %1963, 1
  %1965 = load i64, i64* %RBP
  br i1 %1964, label %block_401139, label %block_401093
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4006c0_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4006c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4006c0_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4006c0_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400690___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400690;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400690___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400690___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_4005b0_fprintf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_4005c0_exit(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602108_posix_memalign(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400590_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
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

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4014c0___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4014c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4014c0___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4014c0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401450___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401450;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401450___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401450___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4008b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4008b0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020e8___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_alloc_data() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4007f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_flush_cache() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4006d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4006d0_polybench_flush_cache(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_print() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4007b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4007b0_polybench_timer_print(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_stop() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400790;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400790_polybench_timer_stop(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4014c4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @11, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4014c4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_prepare_instruments() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400750;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @12, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400750_polybench_prepare_instruments(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_start() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400760;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @13, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400760_polybench_timer_start(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400550;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @14, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400550__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
  call void @callback_sub_401450___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_4014c0___libc_csu_fini()
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
