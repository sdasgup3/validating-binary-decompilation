; ModuleID = '../binary/test.mcsema.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400550__init_type = type <{ [23 x i8] }>
%seg_400570__plt_type = type <{ [112 x i8] }>
%seg_4005e0__text_type = type <{ [3458 x i8] }>
%seg_401364__fini_type = type <{ [9 x i8] }>
%seg_401370__rodata_type = type <{ [64 x i8], [7 x i8], [51 x i8], [8 x i8], [68 x i8] }>
%seg_401438__eh_frame_hdr_type = type <{ [164 x i8] }>
%seg_4014e0__eh_frame_type = type <{ [616 x i8] }>
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
@seg_4005e0__text = internal constant %seg_4005e0__text_type <{ [3458 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0`\13@\00H\C7\C1\F0\12@\00H\C7\C7\B0\08@\00\FF\15\E6\19 \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8X `\00H=X `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFX `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEX `\00UH\81\EEX `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFX `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\D1\19 \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\BF\19 \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \B8\08\00\00\00\89\C6\C7E\FC\00\01@\00Hc}\FC\E8\B1\FE\FF\FF\0FW\C0H\89E\F0\F2\0F\11E\E0\C7E\EC\00\00\00\00\8BE\EC;E\FC\0F\8D%\00\00\00H\8BE\F0HcM\EC\F2\0F\10\04\C8\F2\0FXE\E0\F2\0F\11E\E0\8BE\EC\83\C0\01\89E\EC\E9\CF\FF\FF\FFH\8BE\F0H\89\C7\E8A\FE\FF\FFH\83\C4 ]\C3ff.\0F\1F\84\00\00\00\00\00UH\89\E5\E8w\FF\FF\FF]\C3\0F\1FD\00\00UH\89\E5\E8\E7\FF\FF\FF\E8\12\00\00\00\F2\0F\11\04%\90 `\00]\C3\0F\1F\80\00\00\00\00UH\89\E5\0FW\C0]\C3\0F\1F\80\00\00\00\00UH\89\E5\E8\E7\FF\FF\FF\F2\0F\11\04%\88 `\00]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC\10H\BF\B0\13@\00\00\00\00\00\F2\0F\10\04%\88 `\00\F2\0F\5C\04%\90 `\00\B0\01\E8\B5\FD\FF\FF\89E\FCH\83\C4\10]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC H\89}\F8\89u\F4H\8B}\F8H\89}\E8Hc}\F4H\0F\AF}\E8H\89}\E8H\8B}\E8\E8\13\00\00\00H\89E\E0H\8BE\E0H\83\C4 ]\C3\0F\1FD\00\00UH\89\E5H\83\EC H\8DE\F0\B9 \00\00\00\89\CEH\89}\F8H\C7E\F0\00\00\00\00H\8BU\F8H\89\C7\E8u\FD\FF\FF\89E\ECH\83}\F0\00\0F\84\0A\00\00\00\83}\EC\00\0F\84&\00\00\00H\BE\B7\13@\00\00\00\00\00H\8B<%` `\00\B0\00\E8$\FD\FF\FF\BF\01\00\00\00\89E\E8\E8'\FD\FF\FFH\8BE\F0H\83\C4 ]\C3ffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC`\B8\00$\F4\00\89\C1\B8\08\00\00\00\C7E\FC\00\00\00\00\89}\F8H\89u\F0\C7E\EC\A0\0F\00\00H\89\CF\89\C6\E8\0D\FF\FF\FF\BE\00$\F4\00\89\F7\BE\08\00\00\00H\89E\E0\E8\F8\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\D8\E8\E3\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\D0\E8\CE\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\C8\E8\B9\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\C0\E8\A4\FE\FF\FF\BE\A0\0F\00\00\89\F7\BE\08\00\00\00H\89E\B8\E8\8F\FE\FF\FFH\89E\B0\8B}\ECH\8Bu\E0H\8BU\D8H\8BM\D0L\8BE\C8L\8BM\C0\E8\EF\00\00\00\8B}\ECH\8Bu\E0H\8BU\D8H\8BM\D0L\8BE\C8L\8BM\C0H\8BE\B8H\89\04$\E8\FB\01\00\00\8B}\ECH\8Bu\E0H\8BU\D8H\8BM\D0L\8BE\C8L\8BM\C0\E8\AF\00\00\00\8B}\ECH\8Bu\E0H\8BU\D8H\8BM\D0L\8BE\C8L\8BM\C0H\8BE\B0H\89\04$\E8\9B\04\00\00\8B}\ECH\8Bu\B8H\8BU\B0\E8k\07\00\00\83\F8\00\0F\85\0C\00\00\00\C7E\FC\01\00\00\00\E9[\00\00\00\8B}\ECH\8Bu\B0\E8:\08\00\00H\8Bu\E0H\89\F7\E8^\FB\FF\FFH\8Bu\D8H\89\F7\E8R\FB\FF\FFH\8Bu\D0H\89\F7\E8F\FB\FF\FFH\8Bu\C8H\89\F7\E8:\FB\FF\FFH\8Bu\C0H\89\F7\E8.\FB\FF\FFH\8Bu\B8H\89\F7\E8\22\FB\FF\FF\C7E\FC\00\00\00\00\8BE\FCH\83\C4`]\C3f\90UH\89\E5\89}\FCH\89u\F0H\89U\E8H\89M\E0L\89E\D8L\89M\D0\C7E\CC\00\00\00\00\8BE\CC;E\FC\0F\8D\FA\00\00\00\F2\0F\10\05\D2\08\00\00\F2\0F\10\0D\D2\08\00\00\F2\0F*U\CCH\8BE\E0HcM\CC\F2\0F\11\14\C8\8BU\CC\83\C2\01\89\D0\99\F7}\FC\F2\0F*\D0\F2\0F^\D1H\8BM\D8Hcu\CC\F2\0F\11\14\F1\8BE\CC\83\C0\01\99\F7}\FC\F2\0F*\C8\F2\0F^\C8H\8BM\D0Hcu\CC\F2\0F\11\0C\F1\C7E\C8\00\00\00\00\8BE\C8;E\FC\0F\8Dr\00\00\00\F2\0F*E\CC\F2\0F*M\C8\F2\0FY\C1\F2\0F*M\FC\F2\0F^\C1H\8BE\F0HcM\CCHi\C9\00}\00\00H\01\C8HcM\C8\F2\0F\11\04\C8\F2\0F*E\CC\F2\0F*M\C8\F2\0FY\C1\F2\0F*M\FC\F2\0F^\C1H\8BE\E8HcM\CCHi\C9\00}\00\00H\01\C8HcM\C8\F2\0F\11\04\C8\8BE\C8\83\C0\01\89E\C8\E9\82\FF\FF\FF\E9\00\00\00\00\8BE\CC\83\C0\01\89E\CC\E9\FA\FE\FF\FF]\C3f\0F\1FD\00\00UH\89\E5H\8BE\10\F2\0F\10\05\D8\07\00\00\89}\FCH\89u\F0H\89U\E8H\89M\E0L\89E\D8L\89M\D0H\89E\C8H\8BE\D0\F2\0F\10\08H\8BE\F0\F2\0F\11\08H\8BE\D8\F2\0F\11\00H\8BE\D0\F2\0F\10\00H\8BE\E0\F2\0F\11\00\C7E\C0\01\00\00\00\8BE\C0;E\FC\0F\8D)\02\00\00H\8BE\D8\8BM\C0\83\E9\01Hc\D1\F2\0F\10\04\D0H\8BE\E0\8BM\C0\83\E9\01Hc\D1\F2\0F\10\0C\D0H\8BE\E0\8BM\C0\83\E9\01Hc\D1\F2\0FY\0C\D0H\8BE\D8\8BM\C0\83\E9\01Hc\D1\F2\0FY\0C\D0\F2\0F\5C\C1H\8BE\D8HcU\C0\F2\0F\11\04\D0H\8BE\D0HcU\C0\F2\0F\10\04\D0H\8BE\E8HcU\C0\F2\0F\11\04\D0\C7E\C4\00\00\00\00\8BE\C4\8BM\C0\83\E9\019\C8\0F\8F\82\00\00\00H\8BE\E8HcM\C4Hi\C9\00}\00\00H\01\C8HcM\C0\F2\0F\10\04\C8H\8BE\D0\8BU\C0+U\C4\83\EA\01Hc\CA\F2\0F\10\0C\C8H\8BE\F0HcM\C4Hi\C9\00}\00\00H\01\C8\8BU\C0\83\EA\01Hc\CA\F2\0FY\0C\C8\F2\0FX\C1H\8BE\E8\8BU\C4\83\C2\01Hc\CAHi\C9\00}\00\00H\01\C8HcM\C0\F2\0F\11\04\C8\8BE\C4\83\C0\01\89E\C4\E9m\FF\FF\FFH\B8\00\00\00\00\00\00\00\80H\8BM\E8HcU\C0Hi\D2\00}\00\00H\01\D1HcU\C0\F2\0F\10\04\D1fH\0F~\C1H1\C1fH\0Fn\C1H\8BE\D8HcM\C0\F2\0FY\04\C8H\8BE\E0HcM\C0\F2\0F\11\04\C8\C7E\C4\00\00\00\00\8BE\C4\8BM\C0\83\E9\019\C8\0F\8F\82\00\00\00H\8BE\F0HcM\C4Hi\C9\00}\00\00H\01\C8\8BU\C0\83\EA\01Hc\CA\F2\0F\10\04\C8H\8BE\E0HcM\C0\F2\0F\10\0C\C8H\8BE\F0\8BU\C0+U\C4\83\EA\01Hc\CAHi\C9\00}\00\00H\01\C8\8BU\C0\83\EA\01Hc\CA\F2\0FY\0C\C8\F2\0FX\C1H\8BE\F0HcM\C4Hi\C9\00}\00\00H\01\C8HcM\C0\F2\0F\11\04\C8\8BE\C4\83\C0\01\89E\C4\E9m\FF\FF\FFH\8BE\E0HcM\C0\F2\0F\10\04\C8H\8BE\F0HcM\C0Hi\C9\00}\00\00H\01\C8HcM\C0\F2\0F\11\04\C8\8BE\C0\83\C0\01\89E\C0\E9\CB\FD\FF\FF\C7E\C4\00\00\00\00\8BE\C4;E\FC\0F\8D;\00\00\00H\8BE\F0HcM\C4Hi\C9\00}\00\00H\01\C8\8BU\FC\83\EA\01Hc\CA\F2\0F\10\04\C8H\8BE\C8HcM\C4\F2\0F\11\04\C8\8BE\C4\83\C0\01\89E\C4\E9\B9\FF\FF\FF]\C3\90UH\89\E5H\8BE\10\F2\0F\10\05\F8\04\00\00\89}\FCH\89u\F0H\89U\E8H\89M\E0L\89E\D8L\89M\D0H\89E\C8H\8BE\D0\F2\0F\10\08H\8BE\F0\F2\0F\11\08H\8BE\D8\F2\0F\11\00H\8BE\D0\F2\0F\10\00H\8BE\E0\F2\0F\11\00\C7E\C0\01\00\00\00\8BE\C0;E\FC\0F\8D)\02\00\00H\8BE\D8\8BM\C0\83\E9\01Hc\D1\F2\0F\10\04\D0H\8BE\E0\8BM\C0\83\E9\01Hc\D1\F2\0F\10\0C\D0H\8BE\E0\8BM\C0\83\E9\01Hc\D1\F2\0FY\0C\D0H\8BE\D8\8BM\C0\83\E9\01Hc\D1\F2\0FY\0C\D0\F2\0F\5C\C1H\8BE\D8HcU\C0\F2\0F\11\04\D0H\8BE\D0HcU\C0\F2\0F\10\04\D0H\8BE\E8HcU\C0\F2\0F\11\04\D0\C7E\C4\00\00\00\00\8BE\C4\8BM\C0\83\E9\019\C8\0F\8F\82\00\00\00H\8BE\E8HcM\C4Hi\C9\00}\00\00H\01\C8HcM\C0\F2\0F\10\04\C8H\8BE\D0\8BU\C0+U\C4\83\EA\01Hc\CA\F2\0F\10\0C\C8H\8BE\F0HcM\C4Hi\C9\00}\00\00H\01\C8\8BU\C0\83\EA\01Hc\CA\F2\0FY\0C\C8\F2\0FX\C1H\8BE\E8\8BU\C4\83\C2\01Hc\CAHi\C9\00}\00\00H\01\C8HcM\C0\F2\0F\11\04\C8\8BE\C4\83\C0\01\89E\C4\E9m\FF\FF\FFH\B8\00\00\00\00\00\00\00\80H\8BM\E8HcU\C0Hi\D2\00}\00\00H\01\D1HcU\C0\F2\0F\10\04\D1fH\0F~\C1H1\C1fH\0Fn\C1H\8BE\D8HcM\C0\F2\0FY\04\C8H\8BE\E0HcM\C0\F2\0F\11\04\C8\C7E\C4\00\00\00\00\8BE\C4\8BM\C0\83\E9\019\C8\0F\8F\82\00\00\00H\8BE\F0HcM\C4Hi\C9\00}\00\00H\01\C8\8BU\C0\83\EA\01Hc\CA\F2\0F\10\04\C8H\8BE\E0HcM\C0\F2\0F\10\0C\C8H\8BE\F0\8BU\C0+U\C4\83\EA\01Hc\CAHi\C9\00}\00\00H\01\C8\8BU\C0\83\EA\01Hc\CA\F2\0FY\0C\C8\F2\0FX\C1H\8BE\F0HcM\C4Hi\C9\00}\00\00H\01\C8HcM\C0\F2\0F\11\04\C8\8BE\C4\83\C0\01\89E\C4\E9m\FF\FF\FFH\8BE\E0HcM\C0\F2\0F\10\04\C8H\8BE\F0HcM\C0Hi\C9\00}\00\00H\01\C8HcM\C0\F2\0F\11\04\C8\8BE\C0\83\C0\01\89E\C0\E9\CB\FD\FF\FF\C7E\C4\00\00\00\00\8BE\C4;E\FC\0F\8D;\00\00\00H\8BE\F0HcM\C4Hi\C9\00}\00\00H\01\C8\8BU\FC\83\EA\01Hc\CA\F2\0F\10\04\C8H\8BE\C8HcM\C4\F2\0F\11\04\C8\8BE\C4\83\C0\01\89E\C4\E9\B9\FF\FF\FF]\C3\90UH\89\E5H\83\ECP\F2\0F\10\05 \02\00\00\89}\F8H\89u\F0H\89U\E8\F2\0F\11E\D8\C7E\E4\00\00\00\00\8BE\E4;E\F8\0F\8D\9E\00\00\00H\8BE\F0HcM\E4\F2\0F\10\04\C8\F2\0F\11E\D0H\8BE\E8HcM\E4\F2\0F\10\04\C8\F2\0F\11E\C8\F2\0F\10E\D0\F2\0F\5CE\C8\0F(\0D\D8\01\00\00f\0F\DB\C1\F2\0F\11E\C0\F2\0F\10E\C0f\0F.E\D8\0F\86=\00\00\00H\BE\F2\13@\00\00\00\00\00H\8B<%` `\00\8BU\E4\F2\0F\10E\D0\8BM\E4\F2\0F\10M\C8\F2\0F\10U\D8\B0\03\E8\A1\F3\FF\FF\C7E\FC\00\00\00\00\89E\BC\E9\1A\00\00\00\E9\00\00\00\00\8BE\E4\83\C0\01\89E\E4\E9V\FF\FF\FF\C7E\FC\01\00\00\00\8BE\FCH\83\C4P]\C3ffffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \89}\FCH\89u\F0\C7E\EC\00\00\00\00\8BE\EC;E\FC\0F\8Dx\00\00\00H\BE\EA\13@\00\00\00\00\00H\8B<%` `\00H\8BE\F0HcM\EC\F2\0F\10\04\C8\B0\01\E8\18\F3\FF\FF\BA\14\00\00\00D\8BE\EC\89E\E8D\89\C0\89U\E4\99D\8BE\E4A\F7\F8\83\FA\00\0F\85\1C\00\00\00H\BE\B5\13@\00\00\00\00\00H\8B<%` `\00\B0\00\E8\DC\F2\FF\FF\89E\E0\E9\00\00\00\00\8BE\EC\83\C0\01\89E\EC\E9|\FF\FF\FFH\83\C4 ]\C3AWAVI\89\D7AUATL\8D%\EE\0A \00UH\8D-\EE\0A \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8/\F2\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_401364__fini = internal constant %seg_401364__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_401370__rodata = internal constant %seg_401370__rodata_type <{ [64 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\10@\00\00\00\00\00\00\00@\00\00\00\00\00\00\F0?\F1h\E3\88\B5\F8\E4>\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [7 x i8] c"%0.6f\0A\00", [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", [8 x i8] c"%0.2lf \00", [68 x i8] c"A[%d] = %lf and B[%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00" }>
@seg_401438__eh_frame_hdr = internal constant %seg_401438__eh_frame_hdr_type <{ [164 x i8] c"\01\1B\03;\A4\00\00\00\13\00\00\008\F1\FF\FF\00\01\00\00\A8\F1\FF\FF\C0\00\00\00\D8\F1\FF\FF\EC\00\00\00\98\F2\FF\FF(\01\00\00\18\F3\FF\FFD\01\00\00(\F3\FF\FF`\01\00\00H\F3\FF\FF|\01\00\00X\F3\FF\FF\98\01\00\00x\F3\FF\FF\B4\01\00\00\B8\F3\FF\FF\D0\01\00\00\F8\F3\FF\FF\EC\01\00\00x\F4\FF\FF\08\02\00\008\F6\FF\FF$\02\00\00h\F7\FF\FF@\02\00\00H\FA\FF\FF\5C\02\00\00(\FD\FF\FFx\02\00\00\18\FE\FF\FF\94\02\00\00\B8\FE\FF\FF\B0\02\00\00(\FF\FF\FF\F8\02\00\00" }>
@seg_4014e0__eh_frame = internal constant %seg_4014e0__eh_frame_type <{ [616 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00\E0\F0\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00\E4\F0\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\000\F0\FF\FFp\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00h\F1\FF\FFu\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\CC\F1\FF\FF\0B\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\90\00\00\00\C0\F1\FF\FF\19\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\AC\00\00\00\C4\F1\FF\FF\09\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C8\00\00\00\B8\F1\FF\FF\14\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\E4\00\00\00\BC\F1\FF\FF4\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\00\01\00\00\E0\F1\FF\FF;\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\1C\01\00\00\04\F2\FF\FFs\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\01\00\00h\F2\FF\FF\BE\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00T\01\00\00\0C\F4\FF\FF*\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00p\01\00\00 \F5\FF\FF\DF\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\8C\01\00\00\E4\F7\FF\FF\DF\02\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\A8\01\00\00\A8\FA\FF\FF\E1\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C4\01\00\00|\FB\FF\FF\A0\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00D\00\00\00\E0\01\00\00\00\FC\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00(\02\00\00(\FC\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
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
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401360___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4012f0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_alloc_data_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_flush_cache_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_print_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_stop_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_prepare_instruments_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_start_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
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
define %struct.Memory* @sub_401360___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401360:
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
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 71), i64* %RSI, align 8, !tbaa !2428
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
  store i32 %122, i32* %125, align 1, !tbaa !2452
  %126 = getelementptr inbounds i8, i8* %105, i64 4
  %127 = bitcast i8* %126 to i32*
  store i32 %124, i32* %127, align 1, !tbaa !2452
  %128 = trunc i64 %121 to i32
  %129 = getelementptr inbounds i8, i8* %105, i64 8
  %130 = bitcast i8* %129 to i32*
  store i32 %128, i32* %130, align 1, !tbaa !2452
  %131 = lshr i64 %121, 32
  %132 = trunc i64 %131 to i32
  %133 = getelementptr inbounds i8, i8* %105, i64 12
  %134 = bitcast i8* %133 to i32*
  store i32 %132, i32* %134, align 1, !tbaa !2452
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
  store double %169, double* %170, align 1, !tbaa !2453
  %171 = getelementptr inbounds i8, i8* %161, i64 8
  %172 = bitcast i8* %171 to double*
  store double 0.000000e+00, double* %172, align 1, !tbaa !2453
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
  store double %186, double* %187, align 1, !tbaa !2453
  %188 = getelementptr inbounds i8, i8* %173, i64 8
  %189 = bitcast i8* %188 to i64*
  store i64 %183, i64* %189, align 1, !tbaa !2453
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
define %struct.Memory* @sub_401160_check_FP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401160:
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
  %92 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 32) to double*)
  %93 = bitcast i8* %89 to double*
  store double %92, double* %93, align 1, !tbaa !2453
  %94 = getelementptr inbounds i8, i8* %89, i64 8
  %95 = bitcast i8* %94 to double*
  store double 0.000000e+00, double* %95, align 1, !tbaa !2453
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
  br label %block_401187

block_40121e:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
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
  br label %block_401187

block_401238:                                     ; preds = %block_401231, %block_4011e1
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_401231 ], [ %582, %block_4011e1 ]
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

block_401193:                                     ; preds = %block_401187
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
  store double %263, double* %264, align 1, !tbaa !2453
  %265 = getelementptr inbounds i8, i8* %255, i64 8
  %266 = bitcast i8* %265 to double*
  store double 0.000000e+00, double* %266, align 1, !tbaa !2453
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
  store double %296, double* %297, align 1, !tbaa !2453
  %298 = getelementptr inbounds i8, i8* %288, i64 8
  %299 = bitcast i8* %298 to double*
  store double 0.000000e+00, double* %299, align 1, !tbaa !2453
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
  store double %314, double* %315, align 1, !tbaa !2453
  %316 = getelementptr inbounds i8, i8* %308, i64 8
  %317 = bitcast i8* %316 to double*
  store double 0.000000e+00, double* %317, align 1, !tbaa !2453
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
  store double %331, double* %332, align 1, !tbaa !2453
  %333 = getelementptr inbounds i8, i8* %318, i64 8
  %334 = bitcast i8* %333 to i64*
  store i64 %328, i64* %334, align 1, !tbaa !2453
  %335 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %336 = load i64, i64* %PC
  %337 = add i64 %336, 7
  store i64 %337, i64* %PC
  %338 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 48) to float*)
  %339 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 52) to float*)
  %340 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 56) to float*)
  %341 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 60) to float*)
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
  store i32 %366, i32* %369, align 1, !tbaa !2452
  %370 = getelementptr inbounds i8, i8* %349, i64 4
  %371 = bitcast i8* %370 to i32*
  store i32 %368, i32* %371, align 1, !tbaa !2452
  %372 = trunc i64 %365 to i32
  %373 = getelementptr inbounds i8, i8* %349, i64 8
  %374 = bitcast i8* %373 to i32*
  store i32 %372, i32* %374, align 1, !tbaa !2452
  %375 = lshr i64 %365, 32
  %376 = trunc i64 %375 to i32
  %377 = getelementptr inbounds i8, i8* %349, i64 12
  %378 = bitcast i8* %377 to i32*
  store i32 %376, i32* %378, align 1, !tbaa !2452
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
  store double %393, double* %394, align 1, !tbaa !2453
  %395 = getelementptr inbounds i8, i8* %387, i64 8
  %396 = bitcast i8* %395 to double*
  store double 0.000000e+00, double* %396, align 1, !tbaa !2453
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

; <label>:407:                                    ; preds = %block_401193
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

; <label>:419:                                    ; preds = %block_401193
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
  br i1 %453, label %block_40121e, label %block_4011e1

block_401187:                                     ; preds = %block_40121e, %block_401160
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_401160 ], [ %436, %block_40121e ]
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
  br i1 %518, label %block_401231, label %block_401193

block_4011e1:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %520 = add i64 %454, 10
  store i64 %520, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 130), i64* %RSI, align 8, !tbaa !2428
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
  store double %537, double* %538, align 1, !tbaa !2453
  %539 = getelementptr inbounds i8, i8* %531, i64 8
  %540 = bitcast i8* %539 to double*
  store double 0.000000e+00, double* %540, align 1, !tbaa !2453
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
  store double %554, double* %555, align 1, !tbaa !2453
  %556 = getelementptr inbounds i8, i8* %548, i64 8
  %557 = bitcast i8* %556 to double*
  store double 0.000000e+00, double* %557, align 1, !tbaa !2453
  %558 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %559 = load i64, i64* %RBP
  %560 = sub i64 %559, 40
  %561 = load i64, i64* %PC
  %562 = add i64 %561, 5
  store i64 %562, i64* %PC
  %563 = inttoptr i64 %560 to double*
  %564 = load double, double* %563
  %565 = bitcast i8* %558 to double*
  store double %564, double* %565, align 1, !tbaa !2453
  %566 = getelementptr inbounds i8, i8* %558, i64 8
  %567 = bitcast i8* %566 to double*
  store double 0.000000e+00, double* %567, align 1, !tbaa !2453
  %568 = load i64, i64* %PC
  %569 = add i64 %568, 2
  store i64 %569, i64* %PC
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %570 = load i64, i64* %PC
  %571 = sub i64 %570, 3162
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
  br label %block_401238

block_401231:                                     ; preds = %block_401187
  %600 = sub i64 %519, 4
  %601 = load i64, i64* %PC
  %602 = add i64 %601, 7
  store i64 %602, i64* %PC
  %603 = inttoptr i64 %600 to i32*
  store i32 1, i32* %603
  br label %block_401238
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
define %struct.Memory* @sub_401364__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401364:
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
define %struct.Memory* @sub_4012f0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4012f0:
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
  %200 = sub i64 %199, 3532
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
  br i1 %245, label %block_401346, label %block_401326

block_401346:                                     ; preds = %block_401330, %block_4012f0
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_4012f0 ], [ %387, %block_401330 ]
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

block_401326:                                     ; preds = %block_4012f0
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
  br label %block_401330

block_401330:                                     ; preds = %block_401330, %block_401326
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_401326 ], [ %387, %block_401330 ]
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
  br i1 %470, label %block_401330, label %block_401346
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
  store i64 ptrtoint (void ()* @callback_sub_401360___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_4012f0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 64), i64* %RDI, align 8, !tbaa !2428
  %68 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %69 = load i64, i64* %PC
  %70 = add i64 %69, 9
  store i64 %70, i64* %PC
  %71 = load double, double* bitcast (%polybench_t_end_type* @polybench_t_end to double*)
  %72 = bitcast i8* %68 to double*
  store double %71, double* %72, align 1, !tbaa !2453
  %73 = getelementptr inbounds i8, i8* %68, i64 8
  %74 = bitcast i8* %73 to double*
  store double 0.000000e+00, double* %74, align 1, !tbaa !2453
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
  store double %85, double* %86, align 1, !tbaa !2453
  %87 = getelementptr inbounds i8, i8* %75, i64 8
  %88 = bitcast i8* %87 to i64*
  store i64 %83, i64* %88, align 1, !tbaa !2453
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
define %struct.Memory* @sub_401250_print_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401250:
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
  br label %block_401266

block_4012bb:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %105 = load i64, i64* %PC
  %106 = add i64 %105, 10
  store i64 %106, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 69), i64* %RSI, align 8, !tbaa !2428
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
  %113 = sub i64 %112, 3359
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
  br label %block_4012d7

block_4012d7:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_4012bb
  %MEMORY.0 = phi %struct.Memory* [ %318, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %124, %block_4012bb ]
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
  br label %block_401266

block_401272:                                     ; preds = %block_401266
  %192 = load i64, i64* %PC
  %193 = add i64 %192, 10
  store i64 %193, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 122), i64* %RSI, align 8, !tbaa !2428
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
  store double %218, double* %219, align 1, !tbaa !2453
  %220 = getelementptr inbounds i8, i8* %210, i64 8
  %221 = bitcast i8* %220 to double*
  store double 0.000000e+00, double* %221, align 1, !tbaa !2453
  %222 = load i64, i64* %PC
  %223 = add i64 %222, 2
  store i64 %223, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %224 = load i64, i64* %PC
  %225 = sub i64 %224, 3299
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
  %271 = load i32, i32* %270, align 8, !tbaa !2452
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
  %288 = load i32, i32* %287, align 8, !tbaa !2452
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %291 = bitcast %union.anon* %290 to i32*
  %292 = load i32, i32* %291, align 8, !tbaa !2452
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

; <label>:302:                                    ; preds = %block_401272
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %304 = load i64, i64* %303, align 8, !tbaa !2428
  %305 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %304, %struct.Memory* %236) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:306:                                    ; preds = %block_401272
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
  br i1 %356, label %block_4012d7, label %block_4012bb

block_4012ea:                                     ; preds = %block_401266
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

block_401266:                                     ; preds = %block_4012d7, %block_401250
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_401250 ], [ %MEMORY.0, %block_4012d7 ]
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
  br i1 %469, label %block_4012ea, label %block_401272
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
define %struct.Memory* @sub_400a70_init_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400a70:
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %40 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %40 to %"class.std::bitset"*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %42 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %41, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %42 to %"class.std::bitset"*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %44 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %43, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %44 to %"class.std::bitset"*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %46 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %45, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %46 to %union.vec128_t*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %48 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %47, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %48 to %union.vec128_t*
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %50 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %49, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %50 to %union.vec128_t*
  %51 = load i64, i64* %RBP
  %52 = load i64, i64* %PC
  %53 = add i64 %52, 1
  store i64 %53, i64* %PC
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %55 = load i64, i64* %54, align 8, !tbaa !2428
  %56 = add i64 %55, -8
  %57 = inttoptr i64 %56 to i64*
  store i64 %51, i64* %57
  store i64 %56, i64* %54, align 8, !tbaa !2428
  %58 = load i64, i64* %RSP
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 3
  store i64 %60, i64* %PC
  store i64 %58, i64* %RBP, align 8, !tbaa !2428
  %61 = load i64, i64* %RBP
  %62 = sub i64 %61, 4
  %63 = load i32, i32* %EDI
  %64 = zext i32 %63 to i64
  %65 = load i64, i64* %PC
  %66 = add i64 %65, 3
  store i64 %66, i64* %PC
  %67 = inttoptr i64 %62 to i32*
  store i32 %63, i32* %67
  %68 = load i64, i64* %RBP
  %69 = sub i64 %68, 16
  %70 = load i64, i64* %RSI
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 4
  store i64 %72, i64* %PC
  %73 = inttoptr i64 %69 to i64*
  store i64 %70, i64* %73
  %74 = load i64, i64* %RBP
  %75 = sub i64 %74, 24
  %76 = load i64, i64* %RDX
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 4
  store i64 %78, i64* %PC
  %79 = inttoptr i64 %75 to i64*
  store i64 %76, i64* %79
  %80 = load i64, i64* %RBP
  %81 = sub i64 %80, 32
  %82 = load i64, i64* %RCX
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 4
  store i64 %84, i64* %PC
  %85 = inttoptr i64 %81 to i64*
  store i64 %82, i64* %85
  %86 = load i64, i64* %RBP
  %87 = sub i64 %86, 40
  %88 = load i64, i64* %R8
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 4
  store i64 %90, i64* %PC
  %91 = inttoptr i64 %87 to i64*
  store i64 %88, i64* %91
  %92 = load i64, i64* %RBP
  %93 = sub i64 %92, 48
  %94 = load i64, i64* %R9
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97
  %98 = load i64, i64* %RBP
  %99 = sub i64 %98, 52
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 7
  store i64 %101, i64* %PC
  %102 = inttoptr i64 %99 to i32*
  store i32 0, i32* %102
  br label %block_400a92

block_400b98:                                     ; preds = %block_400a92
  %103 = load i64, i64* %PC
  %104 = add i64 %103, 1
  store i64 %104, i64* %PC
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %106 = load i64, i64* %105, align 8, !tbaa !2428
  %107 = add i64 %106, 8
  %108 = inttoptr i64 %106 to i64*
  %109 = load i64, i64* %108
  store i64 %109, i64* %RBP, align 8, !tbaa !2428
  store i64 %107, i64* %105, align 8, !tbaa !2428
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 1
  store i64 %111, i64* %PC
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %114 = load i64, i64* %113, align 8, !tbaa !2428
  %115 = inttoptr i64 %114 to i64*
  %116 = load i64, i64* %115
  store i64 %116, i64* %112, align 8, !tbaa !2428
  %117 = add i64 %114, 8
  store i64 %117, i64* %113, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400b13:                                     ; preds = %block_400b07
  %118 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %119 = load i64, i64* %RBP
  %120 = sub i64 %119, 52
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 5
  store i64 %122, i64* %PC
  %123 = inttoptr i64 %120 to i32*
  %124 = load i32, i32* %123
  %125 = sitofp i32 %124 to double
  %126 = bitcast i8* %118 to double*
  store double %125, double* %126, align 1, !tbaa !2453
  %127 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %128 = load i64, i64* %RBP
  %129 = sub i64 %128, 56
  %130 = load i64, i64* %PC
  %131 = add i64 %130, 5
  store i64 %131, i64* %PC
  %132 = inttoptr i64 %129 to i32*
  %133 = load i32, i32* %132
  %134 = sitofp i32 %133 to double
  %135 = bitcast i8* %127 to double*
  store double %134, double* %135, align 1, !tbaa !2453
  %136 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %137 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %138 = bitcast %union.vec128_t* %XMM1 to i8*
  %139 = load i64, i64* %PC
  %140 = add i64 %139, 4
  store i64 %140, i64* %PC
  %141 = bitcast i8* %137 to double*
  %142 = load double, double* %141, align 1
  %143 = getelementptr inbounds i8, i8* %137, i64 8
  %144 = bitcast i8* %143 to i64*
  %145 = load i64, i64* %144, align 1
  %146 = bitcast i8* %138 to double*
  %147 = load double, double* %146, align 1
  %148 = fmul double %142, %147
  %149 = bitcast i8* %136 to double*
  store double %148, double* %149, align 1, !tbaa !2453
  %150 = getelementptr inbounds i8, i8* %136, i64 8
  %151 = bitcast i8* %150 to i64*
  store i64 %145, i64* %151, align 1, !tbaa !2453
  %152 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %153 = load i64, i64* %RBP
  %154 = sub i64 %153, 4
  %155 = load i64, i64* %PC
  %156 = add i64 %155, 5
  store i64 %156, i64* %PC
  %157 = inttoptr i64 %154 to i32*
  %158 = load i32, i32* %157
  %159 = sitofp i32 %158 to double
  %160 = bitcast i8* %152 to double*
  store double %159, double* %160, align 1, !tbaa !2453
  %161 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %162 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %163 = bitcast %union.vec128_t* %XMM1 to i8*
  %164 = load i64, i64* %PC
  %165 = add i64 %164, 4
  store i64 %165, i64* %PC
  %166 = bitcast i8* %162 to double*
  %167 = load double, double* %166, align 1
  %168 = getelementptr inbounds i8, i8* %162, i64 8
  %169 = bitcast i8* %168 to i64*
  %170 = load i64, i64* %169, align 1
  %171 = bitcast i8* %163 to double*
  %172 = load double, double* %171, align 1
  %173 = fdiv double %167, %172
  %174 = bitcast i8* %161 to double*
  store double %173, double* %174, align 1, !tbaa !2453
  %175 = getelementptr inbounds i8, i8* %161, i64 8
  %176 = bitcast i8* %175 to i64*
  store i64 %170, i64* %176, align 1, !tbaa !2453
  %177 = load i64, i64* %RBP
  %178 = sub i64 %177, 16
  %179 = load i64, i64* %PC
  %180 = add i64 %179, 4
  store i64 %180, i64* %PC
  %181 = inttoptr i64 %178 to i64*
  %182 = load i64, i64* %181
  store i64 %182, i64* %RAX, align 8, !tbaa !2428
  %183 = load i64, i64* %RBP
  %184 = sub i64 %183, 52
  %185 = load i64, i64* %PC
  %186 = add i64 %185, 4
  store i64 %186, i64* %PC
  %187 = inttoptr i64 %184 to i32*
  %188 = load i32, i32* %187
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %RCX, align 8, !tbaa !2428
  %190 = load i64, i64* %RCX
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 7
  store i64 %192, i64* %PC
  %193 = sext i64 %190 to i128
  %194 = and i128 %193, -18446744073709551616
  %195 = zext i64 %190 to i128
  %196 = or i128 %194, %195
  %197 = mul nsw i128 32000, %196
  %198 = trunc i128 %197 to i64
  store i64 %198, i64* %RCX, align 8, !tbaa !2428
  %199 = sext i64 %198 to i128
  %200 = icmp ne i128 %199, %197
  %201 = zext i1 %200 to i8
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %201, i8* %202, align 1, !tbaa !2432
  %203 = trunc i128 %197 to i32
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %204, align 1, !tbaa !2446
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %205, align 1, !tbaa !2447
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %206, align 1, !tbaa !2448
  %207 = lshr i64 %198, 63
  %208 = trunc i64 %207 to i8
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %208, i8* %209, align 1, !tbaa !2449
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %201, i8* %210, align 1, !tbaa !2450
  %211 = load i64, i64* %RAX
  %212 = load i64, i64* %RCX
  %213 = load i64, i64* %PC
  %214 = add i64 %213, 3
  store i64 %214, i64* %PC
  %215 = add i64 %212, %211
  store i64 %215, i64* %RAX, align 8, !tbaa !2428
  %216 = icmp ult i64 %215, %211
  %217 = icmp ult i64 %215, %212
  %218 = or i1 %216, %217
  %219 = zext i1 %218 to i8
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %219, i8* %220, align 1, !tbaa !2432
  %221 = trunc i64 %215 to i32
  %222 = and i32 %221, 255
  %223 = call i32 @llvm.ctpop.i32(i32 %222) #16
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %226, i8* %227, align 1, !tbaa !2446
  %228 = xor i64 %212, %211
  %229 = xor i64 %228, %215
  %230 = lshr i64 %229, 4
  %231 = trunc i64 %230 to i8
  %232 = and i8 %231, 1
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %232, i8* %233, align 1, !tbaa !2447
  %234 = icmp eq i64 %215, 0
  %235 = zext i1 %234 to i8
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %235, i8* %236, align 1, !tbaa !2448
  %237 = lshr i64 %215, 63
  %238 = trunc i64 %237 to i8
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %238, i8* %239, align 1, !tbaa !2449
  %240 = lshr i64 %211, 63
  %241 = lshr i64 %212, 63
  %242 = xor i64 %237, %240
  %243 = xor i64 %237, %241
  %244 = add nuw nsw i64 %242, %243
  %245 = icmp eq i64 %244, 2
  %246 = zext i1 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %246, i8* %247, align 1, !tbaa !2450
  %248 = load i64, i64* %RBP
  %249 = sub i64 %248, 56
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 4
  store i64 %251, i64* %PC
  %252 = inttoptr i64 %249 to i32*
  %253 = load i32, i32* %252
  %254 = sext i32 %253 to i64
  store i64 %254, i64* %RCX, align 8, !tbaa !2428
  %255 = load i64, i64* %RAX
  %256 = load i64, i64* %RCX
  %257 = mul i64 %256, 8
  %258 = add i64 %257, %255
  %259 = bitcast %union.vec128_t* %XMM0 to i8*
  %260 = load i64, i64* %PC
  %261 = add i64 %260, 5
  store i64 %261, i64* %PC
  %262 = bitcast i8* %259 to double*
  %263 = load double, double* %262, align 1
  %264 = inttoptr i64 %258 to double*
  store double %263, double* %264
  %265 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %266 = load i64, i64* %RBP
  %267 = sub i64 %266, 52
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 5
  store i64 %269, i64* %PC
  %270 = inttoptr i64 %267 to i32*
  %271 = load i32, i32* %270
  %272 = sitofp i32 %271 to double
  %273 = bitcast i8* %265 to double*
  store double %272, double* %273, align 1, !tbaa !2453
  %274 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %275 = load i64, i64* %RBP
  %276 = sub i64 %275, 56
  %277 = load i64, i64* %PC
  %278 = add i64 %277, 5
  store i64 %278, i64* %PC
  %279 = inttoptr i64 %276 to i32*
  %280 = load i32, i32* %279
  %281 = sitofp i32 %280 to double
  %282 = bitcast i8* %274 to double*
  store double %281, double* %282, align 1, !tbaa !2453
  %283 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %284 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %285 = bitcast %union.vec128_t* %XMM1 to i8*
  %286 = load i64, i64* %PC
  %287 = add i64 %286, 4
  store i64 %287, i64* %PC
  %288 = bitcast i8* %284 to double*
  %289 = load double, double* %288, align 1
  %290 = getelementptr inbounds i8, i8* %284, i64 8
  %291 = bitcast i8* %290 to i64*
  %292 = load i64, i64* %291, align 1
  %293 = bitcast i8* %285 to double*
  %294 = load double, double* %293, align 1
  %295 = fmul double %289, %294
  %296 = bitcast i8* %283 to double*
  store double %295, double* %296, align 1, !tbaa !2453
  %297 = getelementptr inbounds i8, i8* %283, i64 8
  %298 = bitcast i8* %297 to i64*
  store i64 %292, i64* %298, align 1, !tbaa !2453
  %299 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %300 = load i64, i64* %RBP
  %301 = sub i64 %300, 4
  %302 = load i64, i64* %PC
  %303 = add i64 %302, 5
  store i64 %303, i64* %PC
  %304 = inttoptr i64 %301 to i32*
  %305 = load i32, i32* %304
  %306 = sitofp i32 %305 to double
  %307 = bitcast i8* %299 to double*
  store double %306, double* %307, align 1, !tbaa !2453
  %308 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %309 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %310 = bitcast %union.vec128_t* %XMM1 to i8*
  %311 = load i64, i64* %PC
  %312 = add i64 %311, 4
  store i64 %312, i64* %PC
  %313 = bitcast i8* %309 to double*
  %314 = load double, double* %313, align 1
  %315 = getelementptr inbounds i8, i8* %309, i64 8
  %316 = bitcast i8* %315 to i64*
  %317 = load i64, i64* %316, align 1
  %318 = bitcast i8* %310 to double*
  %319 = load double, double* %318, align 1
  %320 = fdiv double %314, %319
  %321 = bitcast i8* %308 to double*
  store double %320, double* %321, align 1, !tbaa !2453
  %322 = getelementptr inbounds i8, i8* %308, i64 8
  %323 = bitcast i8* %322 to i64*
  store i64 %317, i64* %323, align 1, !tbaa !2453
  %324 = load i64, i64* %RBP
  %325 = sub i64 %324, 24
  %326 = load i64, i64* %PC
  %327 = add i64 %326, 4
  store i64 %327, i64* %PC
  %328 = inttoptr i64 %325 to i64*
  %329 = load i64, i64* %328
  store i64 %329, i64* %RAX, align 8, !tbaa !2428
  %330 = load i64, i64* %RBP
  %331 = sub i64 %330, 52
  %332 = load i64, i64* %PC
  %333 = add i64 %332, 4
  store i64 %333, i64* %PC
  %334 = inttoptr i64 %331 to i32*
  %335 = load i32, i32* %334
  %336 = sext i32 %335 to i64
  store i64 %336, i64* %RCX, align 8, !tbaa !2428
  %337 = load i64, i64* %RCX
  %338 = load i64, i64* %PC
  %339 = add i64 %338, 7
  store i64 %339, i64* %PC
  %340 = sext i64 %337 to i128
  %341 = and i128 %340, -18446744073709551616
  %342 = zext i64 %337 to i128
  %343 = or i128 %341, %342
  %344 = mul nsw i128 32000, %343
  %345 = trunc i128 %344 to i64
  store i64 %345, i64* %RCX, align 8, !tbaa !2428
  %346 = sext i64 %345 to i128
  %347 = icmp ne i128 %346, %344
  %348 = zext i1 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %348, i8* %349, align 1, !tbaa !2432
  %350 = trunc i128 %344 to i32
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %351, align 1, !tbaa !2446
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %352, align 1, !tbaa !2447
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %353, align 1, !tbaa !2448
  %354 = lshr i64 %345, 63
  %355 = trunc i64 %354 to i8
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %355, i8* %356, align 1, !tbaa !2449
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %348, i8* %357, align 1, !tbaa !2450
  %358 = load i64, i64* %RAX
  %359 = load i64, i64* %RCX
  %360 = load i64, i64* %PC
  %361 = add i64 %360, 3
  store i64 %361, i64* %PC
  %362 = add i64 %359, %358
  store i64 %362, i64* %RAX, align 8, !tbaa !2428
  %363 = icmp ult i64 %362, %358
  %364 = icmp ult i64 %362, %359
  %365 = or i1 %363, %364
  %366 = zext i1 %365 to i8
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %366, i8* %367, align 1, !tbaa !2432
  %368 = trunc i64 %362 to i32
  %369 = and i32 %368, 255
  %370 = call i32 @llvm.ctpop.i32(i32 %369) #16
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %373, i8* %374, align 1, !tbaa !2446
  %375 = xor i64 %359, %358
  %376 = xor i64 %375, %362
  %377 = lshr i64 %376, 4
  %378 = trunc i64 %377 to i8
  %379 = and i8 %378, 1
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %379, i8* %380, align 1, !tbaa !2447
  %381 = icmp eq i64 %362, 0
  %382 = zext i1 %381 to i8
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %382, i8* %383, align 1, !tbaa !2448
  %384 = lshr i64 %362, 63
  %385 = trunc i64 %384 to i8
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %385, i8* %386, align 1, !tbaa !2449
  %387 = lshr i64 %358, 63
  %388 = lshr i64 %359, 63
  %389 = xor i64 %384, %387
  %390 = xor i64 %384, %388
  %391 = add nuw nsw i64 %389, %390
  %392 = icmp eq i64 %391, 2
  %393 = zext i1 %392 to i8
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %393, i8* %394, align 1, !tbaa !2450
  %395 = load i64, i64* %RBP
  %396 = sub i64 %395, 56
  %397 = load i64, i64* %PC
  %398 = add i64 %397, 4
  store i64 %398, i64* %PC
  %399 = inttoptr i64 %396 to i32*
  %400 = load i32, i32* %399
  %401 = sext i32 %400 to i64
  store i64 %401, i64* %RCX, align 8, !tbaa !2428
  %402 = load i64, i64* %RAX
  %403 = load i64, i64* %RCX
  %404 = mul i64 %403, 8
  %405 = add i64 %404, %402
  %406 = bitcast %union.vec128_t* %XMM0 to i8*
  %407 = load i64, i64* %PC
  %408 = add i64 %407, 5
  store i64 %408, i64* %PC
  %409 = bitcast i8* %406 to double*
  %410 = load double, double* %409, align 1
  %411 = inttoptr i64 %405 to double*
  store double %410, double* %411
  %412 = load i64, i64* %RBP
  %413 = sub i64 %412, 56
  %414 = load i64, i64* %PC
  %415 = add i64 %414, 3
  store i64 %415, i64* %PC
  %416 = inttoptr i64 %413 to i32*
  %417 = load i32, i32* %416
  %418 = zext i32 %417 to i64
  store i64 %418, i64* %RAX, align 8, !tbaa !2428
  %419 = load i64, i64* %RAX
  %420 = load i64, i64* %PC
  %421 = add i64 %420, 3
  store i64 %421, i64* %PC
  %422 = trunc i64 %419 to i32
  %423 = add i32 1, %422
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %RAX, align 8, !tbaa !2428
  %425 = icmp ult i32 %423, %422
  %426 = icmp ult i32 %423, 1
  %427 = or i1 %425, %426
  %428 = zext i1 %427 to i8
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %428, i8* %429, align 1, !tbaa !2432
  %430 = and i32 %423, 255
  %431 = call i32 @llvm.ctpop.i32(i32 %430) #16
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = xor i8 %433, 1
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %434, i8* %435, align 1, !tbaa !2446
  %436 = xor i64 1, %419
  %437 = trunc i64 %436 to i32
  %438 = xor i32 %437, %423
  %439 = lshr i32 %438, 4
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %441, i8* %442, align 1, !tbaa !2447
  %443 = icmp eq i32 %423, 0
  %444 = zext i1 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %444, i8* %445, align 1, !tbaa !2448
  %446 = lshr i32 %423, 31
  %447 = trunc i32 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %447, i8* %448, align 1, !tbaa !2449
  %449 = lshr i32 %422, 31
  %450 = xor i32 %446, %449
  %451 = add nuw nsw i32 %450, %446
  %452 = icmp eq i32 %451, 2
  %453 = zext i1 %452 to i8
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %453, i8* %454, align 1, !tbaa !2450
  %455 = load i64, i64* %RBP
  %456 = sub i64 %455, 56
  %457 = load i32, i32* %EAX
  %458 = zext i32 %457 to i64
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 3
  store i64 %460, i64* %PC
  %461 = inttoptr i64 %456 to i32*
  store i32 %457, i32* %461
  %462 = load i64, i64* %PC
  %463 = sub i64 %462, 121
  %464 = load i64, i64* %PC
  %465 = add i64 %464, 5
  store i64 %465, i64* %PC
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %463, i64* %466, align 8, !tbaa !2428
  br label %block_400b07

block_400a92:                                     ; preds = %block_400b85, %block_400a70
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400a70 ], [ %MEMORY.1, %block_400b85 ]
  %467 = load i64, i64* %RBP
  %468 = sub i64 %467, 52
  %469 = load i64, i64* %PC
  %470 = add i64 %469, 3
  store i64 %470, i64* %PC
  %471 = inttoptr i64 %468 to i32*
  %472 = load i32, i32* %471
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RAX, align 8, !tbaa !2428
  %474 = load i32, i32* %EAX
  %475 = zext i32 %474 to i64
  %476 = load i64, i64* %RBP
  %477 = sub i64 %476, 4
  %478 = load i64, i64* %PC
  %479 = add i64 %478, 3
  store i64 %479, i64* %PC
  %480 = inttoptr i64 %477 to i32*
  %481 = load i32, i32* %480
  %482 = sub i32 %474, %481
  %483 = icmp ult i32 %474, %481
  %484 = zext i1 %483 to i8
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %484, i8* %485, align 1, !tbaa !2432
  %486 = and i32 %482, 255
  %487 = call i32 @llvm.ctpop.i32(i32 %486) #16
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %490, i8* %491, align 1, !tbaa !2446
  %492 = xor i32 %481, %474
  %493 = xor i32 %492, %482
  %494 = lshr i32 %493, 4
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %496, i8* %497, align 1, !tbaa !2447
  %498 = icmp eq i32 %482, 0
  %499 = zext i1 %498 to i8
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %499, i8* %500, align 1, !tbaa !2448
  %501 = lshr i32 %482, 31
  %502 = trunc i32 %501 to i8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %502, i8* %503, align 1, !tbaa !2449
  %504 = lshr i32 %474, 31
  %505 = lshr i32 %481, 31
  %506 = xor i32 %505, %504
  %507 = xor i32 %501, %504
  %508 = add nuw nsw i32 %507, %506
  %509 = icmp eq i32 %508, 2
  %510 = zext i1 %509 to i8
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %510, i8* %511, align 1, !tbaa !2450
  %512 = load i64, i64* %PC
  %513 = add i64 %512, 256
  %514 = load i64, i64* %PC
  %515 = add i64 %514, 6
  %516 = load i64, i64* %PC
  %517 = add i64 %516, 6
  store i64 %517, i64* %PC
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %519 = load i8, i8* %518, align 1, !tbaa !2449
  %520 = icmp ne i8 %519, 0
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %522 = load i8, i8* %521, align 1, !tbaa !2450
  %523 = icmp ne i8 %522, 0
  %524 = xor i1 %520, %523
  %525 = xor i1 %524, true
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %528 = select i1 %524, i64 %515, i64 %513
  store i64 %528, i64* %527, align 8, !tbaa !2428
  %529 = load i8, i8* %BRANCH_TAKEN
  %530 = icmp eq i8 %529, 1
  br i1 %530, label %block_400b98, label %block_400a9e

block_400b07:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit, %block_400b13
  %MEMORY.1 = phi %struct.Memory* [ %869, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ], [ %MEMORY.1, %block_400b13 ]
  %531 = load i64, i64* %RBP
  %532 = sub i64 %531, 56
  %533 = load i64, i64* %PC
  %534 = add i64 %533, 3
  store i64 %534, i64* %PC
  %535 = inttoptr i64 %532 to i32*
  %536 = load i32, i32* %535
  %537 = zext i32 %536 to i64
  store i64 %537, i64* %RAX, align 8, !tbaa !2428
  %538 = load i32, i32* %EAX
  %539 = zext i32 %538 to i64
  %540 = load i64, i64* %RBP
  %541 = sub i64 %540, 4
  %542 = load i64, i64* %PC
  %543 = add i64 %542, 3
  store i64 %543, i64* %PC
  %544 = inttoptr i64 %541 to i32*
  %545 = load i32, i32* %544
  %546 = sub i32 %538, %545
  %547 = icmp ult i32 %538, %545
  %548 = zext i1 %547 to i8
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %548, i8* %549, align 1, !tbaa !2432
  %550 = and i32 %546, 255
  %551 = call i32 @llvm.ctpop.i32(i32 %550) #16
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  %554 = xor i8 %553, 1
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %554, i8* %555, align 1, !tbaa !2446
  %556 = xor i32 %545, %538
  %557 = xor i32 %556, %546
  %558 = lshr i32 %557, 4
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %560, i8* %561, align 1, !tbaa !2447
  %562 = icmp eq i32 %546, 0
  %563 = zext i1 %562 to i8
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %563, i8* %564, align 1, !tbaa !2448
  %565 = lshr i32 %546, 31
  %566 = trunc i32 %565 to i8
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %566, i8* %567, align 1, !tbaa !2449
  %568 = lshr i32 %538, 31
  %569 = lshr i32 %545, 31
  %570 = xor i32 %569, %568
  %571 = xor i32 %565, %568
  %572 = add nuw nsw i32 %571, %570
  %573 = icmp eq i32 %572, 2
  %574 = zext i1 %573 to i8
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %574, i8* %575, align 1, !tbaa !2450
  %576 = load i64, i64* %PC
  %577 = add i64 %576, 120
  %578 = load i64, i64* %PC
  %579 = add i64 %578, 6
  %580 = load i64, i64* %PC
  %581 = add i64 %580, 6
  store i64 %581, i64* %PC
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %583 = load i8, i8* %582, align 1, !tbaa !2449
  %584 = icmp ne i8 %583, 0
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %586 = load i8, i8* %585, align 1, !tbaa !2450
  %587 = icmp ne i8 %586, 0
  %588 = xor i1 %584, %587
  %589 = xor i1 %588, true
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %592 = select i1 %588, i64 %579, i64 %577
  store i64 %592, i64* %591, align 8, !tbaa !2428
  %593 = load i8, i8* %BRANCH_TAKEN
  %594 = icmp eq i8 %593, 1
  br i1 %594, label %block_400b85, label %block_400b13

block_400a9e:                                     ; preds = %block_400a92
  %595 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %596 = load i64, i64* %PC
  %597 = add i64 %596, 8
  store i64 %597, i64* %PC
  %598 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 8) to double*)
  %599 = bitcast i8* %595 to double*
  store double %598, double* %599, align 1, !tbaa !2453
  %600 = getelementptr inbounds i8, i8* %595, i64 8
  %601 = bitcast i8* %600 to double*
  store double 0.000000e+00, double* %601, align 1, !tbaa !2453
  %602 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %603 = load i64, i64* %PC
  %604 = add i64 %603, 8
  store i64 %604, i64* %PC
  %605 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 16) to double*)
  %606 = bitcast i8* %602 to double*
  store double %605, double* %606, align 1, !tbaa !2453
  %607 = getelementptr inbounds i8, i8* %602, i64 8
  %608 = bitcast i8* %607 to double*
  store double 0.000000e+00, double* %608, align 1, !tbaa !2453
  %609 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %610 = load i64, i64* %RBP
  %611 = sub i64 %610, 52
  %612 = load i64, i64* %PC
  %613 = add i64 %612, 5
  store i64 %613, i64* %PC
  %614 = inttoptr i64 %611 to i32*
  %615 = load i32, i32* %614
  %616 = sitofp i32 %615 to double
  %617 = bitcast i8* %609 to double*
  store double %616, double* %617, align 1, !tbaa !2453
  %618 = load i64, i64* %RBP
  %619 = sub i64 %618, 32
  %620 = load i64, i64* %PC
  %621 = add i64 %620, 4
  store i64 %621, i64* %PC
  %622 = inttoptr i64 %619 to i64*
  %623 = load i64, i64* %622
  store i64 %623, i64* %RAX, align 8, !tbaa !2428
  %624 = load i64, i64* %RBP
  %625 = sub i64 %624, 52
  %626 = load i64, i64* %PC
  %627 = add i64 %626, 4
  store i64 %627, i64* %PC
  %628 = inttoptr i64 %625 to i32*
  %629 = load i32, i32* %628
  %630 = sext i32 %629 to i64
  store i64 %630, i64* %RCX, align 8, !tbaa !2428
  %631 = load i64, i64* %RAX
  %632 = load i64, i64* %RCX
  %633 = mul i64 %632, 8
  %634 = add i64 %633, %631
  %635 = bitcast %union.vec128_t* %XMM2 to i8*
  %636 = load i64, i64* %PC
  %637 = add i64 %636, 5
  store i64 %637, i64* %PC
  %638 = bitcast i8* %635 to double*
  %639 = load double, double* %638, align 1
  %640 = inttoptr i64 %634 to double*
  store double %639, double* %640
  %641 = load i64, i64* %RBP
  %642 = sub i64 %641, 52
  %643 = load i64, i64* %PC
  %644 = add i64 %643, 3
  store i64 %644, i64* %PC
  %645 = inttoptr i64 %642 to i32*
  %646 = load i32, i32* %645
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %RDX, align 8, !tbaa !2428
  %648 = load i64, i64* %RDX
  %649 = load i64, i64* %PC
  %650 = add i64 %649, 3
  store i64 %650, i64* %PC
  %651 = trunc i64 %648 to i32
  %652 = add i32 1, %651
  %653 = zext i32 %652 to i64
  store i64 %653, i64* %RDX, align 8, !tbaa !2428
  %654 = icmp ult i32 %652, %651
  %655 = icmp ult i32 %652, 1
  %656 = or i1 %654, %655
  %657 = zext i1 %656 to i8
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %657, i8* %658, align 1, !tbaa !2432
  %659 = and i32 %652, 255
  %660 = call i32 @llvm.ctpop.i32(i32 %659) #16
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  %663 = xor i8 %662, 1
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %663, i8* %664, align 1, !tbaa !2446
  %665 = xor i64 1, %648
  %666 = trunc i64 %665 to i32
  %667 = xor i32 %666, %652
  %668 = lshr i32 %667, 4
  %669 = trunc i32 %668 to i8
  %670 = and i8 %669, 1
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %670, i8* %671, align 1, !tbaa !2447
  %672 = icmp eq i32 %652, 0
  %673 = zext i1 %672 to i8
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %673, i8* %674, align 1, !tbaa !2448
  %675 = lshr i32 %652, 31
  %676 = trunc i32 %675 to i8
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %676, i8* %677, align 1, !tbaa !2449
  %678 = lshr i32 %651, 31
  %679 = xor i32 %675, %678
  %680 = add nuw nsw i32 %679, %675
  %681 = icmp eq i32 %680, 2
  %682 = zext i1 %681 to i8
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %682, i8* %683, align 1, !tbaa !2450
  %684 = load i32, i32* %EDX
  %685 = zext i32 %684 to i64
  %686 = load i64, i64* %PC
  %687 = add i64 %686, 2
  store i64 %687, i64* %PC
  %688 = and i64 %685, 4294967295
  store i64 %688, i64* %RAX, align 8, !tbaa !2428
  %689 = load i64, i64* %PC
  %690 = add i64 %689, 1
  store i64 %690, i64* %PC
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %693 = bitcast %union.anon* %692 to i32*
  %694 = load i32, i32* %693, align 8, !tbaa !2452
  %695 = sext i32 %694 to i64
  %696 = lshr i64 %695, 32
  store i64 %696, i64* %691, align 8, !tbaa !2428
  %697 = load i64, i64* %RBP
  %698 = sub i64 %697, 4
  %699 = load i64, i64* %PC
  %700 = add i64 %699, 3
  store i64 %700, i64* %PC
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %702 = bitcast %union.anon* %701 to i32*
  %703 = load i32, i32* %702, align 8, !tbaa !2452
  %704 = zext i32 %703 to i64
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %706 = bitcast %union.anon* %705 to i32*
  %707 = load i32, i32* %706, align 8, !tbaa !2452
  %708 = zext i32 %707 to i64
  %709 = inttoptr i64 %698 to i32*
  %710 = load i32, i32* %709
  %711 = sext i32 %710 to i64
  %712 = shl nuw i64 %708, 32
  %713 = or i64 %712, %704
  %714 = sdiv i64 %713, %711
  %715 = shl i64 %714, 32
  %716 = ashr exact i64 %715, 32
  %717 = icmp eq i64 %714, %716
  br i1 %717, label %722, label %718

; <label>:718:                                    ; preds = %block_400a9e
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %720 = load i64, i64* %719, align 8, !tbaa !2428
  %721 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %720, %struct.Memory* %MEMORY.0) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1

; <label>:722:                                    ; preds = %block_400a9e
  %723 = srem i64 %713, %711
  %724 = getelementptr inbounds %union.anon, %union.anon* %701, i64 0, i32 0
  %725 = and i64 %714, 4294967295
  store i64 %725, i64* %724, align 8, !tbaa !2428
  %726 = getelementptr inbounds %union.anon, %union.anon* %705, i64 0, i32 0
  %727 = and i64 %723, 4294967295
  store i64 %727, i64* %726, align 8, !tbaa !2428
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %728, align 1, !tbaa !2432
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %729, align 1, !tbaa !2446
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %730, align 1, !tbaa !2447
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %731, align 1, !tbaa !2448
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %732, align 1, !tbaa !2449
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %733, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1: ; preds = %718, %722
  %734 = phi %struct.Memory* [ %721, %718 ], [ %MEMORY.0, %722 ]
  %735 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %736 = load i32, i32* %EAX
  %737 = zext i32 %736 to i64
  %738 = load i64, i64* %PC
  %739 = add i64 %738, 4
  store i64 %739, i64* %PC
  %740 = sitofp i32 %736 to double
  %741 = bitcast i8* %735 to double*
  store double %740, double* %741, align 1, !tbaa !2453
  %742 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %743 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %744 = bitcast %union.vec128_t* %XMM1 to i8*
  %745 = load i64, i64* %PC
  %746 = add i64 %745, 4
  store i64 %746, i64* %PC
  %747 = bitcast i8* %743 to double*
  %748 = load double, double* %747, align 1
  %749 = getelementptr inbounds i8, i8* %743, i64 8
  %750 = bitcast i8* %749 to i64*
  %751 = load i64, i64* %750, align 1
  %752 = bitcast i8* %744 to double*
  %753 = load double, double* %752, align 1
  %754 = fdiv double %748, %753
  %755 = bitcast i8* %742 to double*
  store double %754, double* %755, align 1, !tbaa !2453
  %756 = getelementptr inbounds i8, i8* %742, i64 8
  %757 = bitcast i8* %756 to i64*
  store i64 %751, i64* %757, align 1, !tbaa !2453
  %758 = load i64, i64* %RBP
  %759 = sub i64 %758, 40
  %760 = load i64, i64* %PC
  %761 = add i64 %760, 4
  store i64 %761, i64* %PC
  %762 = inttoptr i64 %759 to i64*
  %763 = load i64, i64* %762
  store i64 %763, i64* %RCX, align 8, !tbaa !2428
  %764 = load i64, i64* %RBP
  %765 = sub i64 %764, 52
  %766 = load i64, i64* %PC
  %767 = add i64 %766, 4
  store i64 %767, i64* %PC
  %768 = inttoptr i64 %765 to i32*
  %769 = load i32, i32* %768
  %770 = sext i32 %769 to i64
  store i64 %770, i64* %RSI, align 8, !tbaa !2428
  %771 = load i64, i64* %RCX
  %772 = load i64, i64* %RSI
  %773 = mul i64 %772, 8
  %774 = add i64 %773, %771
  %775 = bitcast %union.vec128_t* %XMM2 to i8*
  %776 = load i64, i64* %PC
  %777 = add i64 %776, 5
  store i64 %777, i64* %PC
  %778 = bitcast i8* %775 to double*
  %779 = load double, double* %778, align 1
  %780 = inttoptr i64 %774 to double*
  store double %779, double* %780
  %781 = load i64, i64* %RBP
  %782 = sub i64 %781, 52
  %783 = load i64, i64* %PC
  %784 = add i64 %783, 3
  store i64 %784, i64* %PC
  %785 = inttoptr i64 %782 to i32*
  %786 = load i32, i32* %785
  %787 = zext i32 %786 to i64
  store i64 %787, i64* %RAX, align 8, !tbaa !2428
  %788 = load i64, i64* %RAX
  %789 = load i64, i64* %PC
  %790 = add i64 %789, 3
  store i64 %790, i64* %PC
  %791 = trunc i64 %788 to i32
  %792 = add i32 1, %791
  %793 = zext i32 %792 to i64
  store i64 %793, i64* %RAX, align 8, !tbaa !2428
  %794 = icmp ult i32 %792, %791
  %795 = icmp ult i32 %792, 1
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
  %805 = xor i64 1, %788
  %806 = trunc i64 %805 to i32
  %807 = xor i32 %806, %792
  %808 = lshr i32 %807, 4
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %810, i8* %811, align 1, !tbaa !2447
  %812 = icmp eq i32 %792, 0
  %813 = zext i1 %812 to i8
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %813, i8* %814, align 1, !tbaa !2448
  %815 = lshr i32 %792, 31
  %816 = trunc i32 %815 to i8
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %816, i8* %817, align 1, !tbaa !2449
  %818 = lshr i32 %791, 31
  %819 = xor i32 %815, %818
  %820 = add nuw nsw i32 %819, %815
  %821 = icmp eq i32 %820, 2
  %822 = zext i1 %821 to i8
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %822, i8* %823, align 1, !tbaa !2450
  %824 = load i64, i64* %PC
  %825 = add i64 %824, 1
  store i64 %825, i64* %PC
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %828 = bitcast %union.anon* %827 to i32*
  %829 = load i32, i32* %828, align 8, !tbaa !2452
  %830 = sext i32 %829 to i64
  %831 = lshr i64 %830, 32
  store i64 %831, i64* %826, align 8, !tbaa !2428
  %832 = load i64, i64* %RBP
  %833 = sub i64 %832, 4
  %834 = load i64, i64* %PC
  %835 = add i64 %834, 3
  store i64 %835, i64* %PC
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %837 = bitcast %union.anon* %836 to i32*
  %838 = load i32, i32* %837, align 8, !tbaa !2452
  %839 = zext i32 %838 to i64
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %841 = bitcast %union.anon* %840 to i32*
  %842 = load i32, i32* %841, align 8, !tbaa !2452
  %843 = zext i32 %842 to i64
  %844 = inttoptr i64 %833 to i32*
  %845 = load i32, i32* %844
  %846 = sext i32 %845 to i64
  %847 = shl nuw i64 %843, 32
  %848 = or i64 %847, %839
  %849 = sdiv i64 %848, %846
  %850 = shl i64 %849, 32
  %851 = ashr exact i64 %850, 32
  %852 = icmp eq i64 %849, %851
  br i1 %852, label %857, label %853

; <label>:853:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %855 = load i64, i64* %854, align 8, !tbaa !2428
  %856 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %855, %struct.Memory* %734) #17
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:857:                                    ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit1
  %858 = srem i64 %848, %846
  %859 = getelementptr inbounds %union.anon, %union.anon* %836, i64 0, i32 0
  %860 = and i64 %849, 4294967295
  store i64 %860, i64* %859, align 8, !tbaa !2428
  %861 = getelementptr inbounds %union.anon, %union.anon* %840, i64 0, i32 0
  %862 = and i64 %858, 4294967295
  store i64 %862, i64* %861, align 8, !tbaa !2428
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %863, align 1, !tbaa !2432
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %864, align 1, !tbaa !2446
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %865, align 1, !tbaa !2447
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %866, align 1, !tbaa !2448
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %867, align 1, !tbaa !2449
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %868, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %853, %857
  %869 = phi %struct.Memory* [ %856, %853 ], [ %734, %857 ]
  %870 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %871 = load i32, i32* %EAX
  %872 = zext i32 %871 to i64
  %873 = load i64, i64* %PC
  %874 = add i64 %873, 4
  store i64 %874, i64* %PC
  %875 = sitofp i32 %871 to double
  %876 = bitcast i8* %870 to double*
  store double %875, double* %876, align 1, !tbaa !2453
  %877 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %878 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %879 = bitcast %union.vec128_t* %XMM0 to i8*
  %880 = load i64, i64* %PC
  %881 = add i64 %880, 4
  store i64 %881, i64* %PC
  %882 = bitcast i8* %878 to double*
  %883 = load double, double* %882, align 1
  %884 = getelementptr inbounds i8, i8* %878, i64 8
  %885 = bitcast i8* %884 to i64*
  %886 = load i64, i64* %885, align 1
  %887 = bitcast i8* %879 to double*
  %888 = load double, double* %887, align 1
  %889 = fdiv double %883, %888
  %890 = bitcast i8* %877 to double*
  store double %889, double* %890, align 1, !tbaa !2453
  %891 = getelementptr inbounds i8, i8* %877, i64 8
  %892 = bitcast i8* %891 to i64*
  store i64 %886, i64* %892, align 1, !tbaa !2453
  %893 = load i64, i64* %RBP
  %894 = sub i64 %893, 48
  %895 = load i64, i64* %PC
  %896 = add i64 %895, 4
  store i64 %896, i64* %PC
  %897 = inttoptr i64 %894 to i64*
  %898 = load i64, i64* %897
  store i64 %898, i64* %RCX, align 8, !tbaa !2428
  %899 = load i64, i64* %RBP
  %900 = sub i64 %899, 52
  %901 = load i64, i64* %PC
  %902 = add i64 %901, 4
  store i64 %902, i64* %PC
  %903 = inttoptr i64 %900 to i32*
  %904 = load i32, i32* %903
  %905 = sext i32 %904 to i64
  store i64 %905, i64* %RSI, align 8, !tbaa !2428
  %906 = load i64, i64* %RCX
  %907 = load i64, i64* %RSI
  %908 = mul i64 %907, 8
  %909 = add i64 %908, %906
  %910 = bitcast %union.vec128_t* %XMM1 to i8*
  %911 = load i64, i64* %PC
  %912 = add i64 %911, 5
  store i64 %912, i64* %PC
  %913 = bitcast i8* %910 to double*
  %914 = load double, double* %913, align 1
  %915 = inttoptr i64 %909 to double*
  store double %914, double* %915
  %916 = load i64, i64* %RBP
  %917 = sub i64 %916, 56
  %918 = load i64, i64* %PC
  %919 = add i64 %918, 7
  store i64 %919, i64* %PC
  %920 = inttoptr i64 %917 to i32*
  store i32 0, i32* %920
  br label %block_400b07

block_400b85:                                     ; preds = %block_400b07
  %921 = load i64, i64* %PC
  %922 = add i64 %921, 5
  %923 = load i64, i64* %PC
  %924 = add i64 %923, 5
  store i64 %924, i64* %PC
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %922, i64* %925, align 8, !tbaa !2428
  %926 = load i64, i64* %RBP
  %927 = sub i64 %926, 52
  %928 = load i64, i64* %PC
  %929 = add i64 %928, 3
  store i64 %929, i64* %PC
  %930 = inttoptr i64 %927 to i32*
  %931 = load i32, i32* %930
  %932 = zext i32 %931 to i64
  store i64 %932, i64* %RAX, align 8, !tbaa !2428
  %933 = load i64, i64* %RAX
  %934 = load i64, i64* %PC
  %935 = add i64 %934, 3
  store i64 %935, i64* %PC
  %936 = trunc i64 %933 to i32
  %937 = add i32 1, %936
  %938 = zext i32 %937 to i64
  store i64 %938, i64* %RAX, align 8, !tbaa !2428
  %939 = icmp ult i32 %937, %936
  %940 = icmp ult i32 %937, 1
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
  %950 = xor i64 1, %933
  %951 = trunc i64 %950 to i32
  %952 = xor i32 %951, %937
  %953 = lshr i32 %952, 4
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %955, i8* %956, align 1, !tbaa !2447
  %957 = icmp eq i32 %937, 0
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %958, i8* %959, align 1, !tbaa !2448
  %960 = lshr i32 %937, 31
  %961 = trunc i32 %960 to i8
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %961, i8* %962, align 1, !tbaa !2449
  %963 = lshr i32 %936, 31
  %964 = xor i32 %960, %963
  %965 = add nuw nsw i32 %964, %960
  %966 = icmp eq i32 %965, 2
  %967 = zext i1 %966 to i8
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %967, i8* %968, align 1, !tbaa !2450
  %969 = load i64, i64* %RBP
  %970 = sub i64 %969, 52
  %971 = load i32, i32* %EAX
  %972 = zext i32 %971 to i64
  %973 = load i64, i64* %PC
  %974 = add i64 %973, 3
  store i64 %974, i64* %PC
  %975 = inttoptr i64 %970 to i32*
  store i32 %971, i32* %975
  %976 = load i64, i64* %PC
  %977 = sub i64 %976, 257
  %978 = load i64, i64* %PC
  %979 = add i64 %978, 5
  store i64 %979, i64* %PC
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %977, i64* %980, align 8, !tbaa !2428
  br label %block_400a92
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
  store i32 %43, i32* %46, align 1, !tbaa !2452
  %47 = getelementptr inbounds i8, i8* %26, i64 4
  %48 = bitcast i8* %47 to i32*
  store i32 %45, i32* %48, align 1, !tbaa !2452
  %49 = trunc i64 %42 to i32
  %50 = getelementptr inbounds i8, i8* %26, i64 8
  %51 = bitcast i8* %50 to i32*
  store i32 %49, i32* %51, align 1, !tbaa !2452
  %52 = lshr i64 %42, 32
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds i8, i8* %26, i64 12
  %55 = bitcast i8* %54 to i32*
  store i32 %53, i32* %55, align 1, !tbaa !2452
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
define %struct.Memory* @sub_400ba0_kernel_durbin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400ba0:
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
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 11
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %EDI = bitcast %union.anon* %17 to i32*
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
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %43 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %42, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %43 to %"class.std::bitset"*
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %45 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %44, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %45 to %"class.std::bitset"*
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %47 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %46, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %47 to %union.vec128_t*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %49 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %48, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %49 to %union.vec128_t*
  %50 = load i64, i64* %RBP
  %51 = load i64, i64* %PC
  %52 = add i64 %51, 1
  store i64 %52, i64* %PC
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %54 = load i64, i64* %53, align 8, !tbaa !2428
  %55 = add i64 %54, -8
  %56 = inttoptr i64 %55 to i64*
  store i64 %50, i64* %56
  store i64 %55, i64* %53, align 8, !tbaa !2428
  %57 = load i64, i64* %RSP
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC
  store i64 %57, i64* %RBP, align 8, !tbaa !2428
  %60 = load i64, i64* %RBP
  %61 = add i64 %60, 16
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 4
  store i64 %63, i64* %PC
  %64 = inttoptr i64 %61 to i64*
  %65 = load i64, i64* %64
  store i64 %65, i64* %RAX, align 8, !tbaa !2428
  %66 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 8
  store i64 %68, i64* %PC
  %69 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 24) to double*)
  %70 = bitcast i8* %66 to double*
  store double %69, double* %70, align 1, !tbaa !2453
  %71 = getelementptr inbounds i8, i8* %66, i64 8
  %72 = bitcast i8* %71 to double*
  store double 0.000000e+00, double* %72, align 1, !tbaa !2453
  %73 = load i64, i64* %RBP
  %74 = sub i64 %73, 4
  %75 = load i32, i32* %EDI
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 3
  store i64 %78, i64* %PC
  %79 = inttoptr i64 %74 to i32*
  store i32 %75, i32* %79
  %80 = load i64, i64* %RBP
  %81 = sub i64 %80, 16
  %82 = load i64, i64* %RSI
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 4
  store i64 %84, i64* %PC
  %85 = inttoptr i64 %81 to i64*
  store i64 %82, i64* %85
  %86 = load i64, i64* %RBP
  %87 = sub i64 %86, 24
  %88 = load i64, i64* %RDX
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 4
  store i64 %90, i64* %PC
  %91 = inttoptr i64 %87 to i64*
  store i64 %88, i64* %91
  %92 = load i64, i64* %RBP
  %93 = sub i64 %92, 32
  %94 = load i64, i64* %RCX
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97
  %98 = load i64, i64* %RBP
  %99 = sub i64 %98, 40
  %100 = load i64, i64* %R8
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 4
  store i64 %102, i64* %PC
  %103 = inttoptr i64 %99 to i64*
  store i64 %100, i64* %103
  %104 = load i64, i64* %RBP
  %105 = sub i64 %104, 48
  %106 = load i64, i64* %R9
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 4
  store i64 %108, i64* %PC
  %109 = inttoptr i64 %105 to i64*
  store i64 %106, i64* %109
  %110 = load i64, i64* %RBP
  %111 = sub i64 %110, 56
  %112 = load i64, i64* %RAX
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 4
  store i64 %114, i64* %PC
  %115 = inttoptr i64 %111 to i64*
  store i64 %112, i64* %115
  %116 = load i64, i64* %RBP
  %117 = sub i64 %116, 48
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC
  %120 = inttoptr i64 %117 to i64*
  %121 = load i64, i64* %120
  store i64 %121, i64* %RAX, align 8, !tbaa !2428
  %122 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %123 = load i64, i64* %RAX
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 4
  store i64 %125, i64* %PC
  %126 = inttoptr i64 %123 to double*
  %127 = load double, double* %126
  %128 = bitcast i8* %122 to double*
  store double %127, double* %128, align 1, !tbaa !2453
  %129 = getelementptr inbounds i8, i8* %122, i64 8
  %130 = bitcast i8* %129 to double*
  store double 0.000000e+00, double* %130, align 1, !tbaa !2453
  %131 = load i64, i64* %RBP
  %132 = sub i64 %131, 16
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 4
  store i64 %134, i64* %PC
  %135 = inttoptr i64 %132 to i64*
  %136 = load i64, i64* %135
  store i64 %136, i64* %RAX, align 8, !tbaa !2428
  %137 = load i64, i64* %RAX
  %138 = bitcast %union.vec128_t* %XMM1 to i8*
  %139 = load i64, i64* %PC
  %140 = add i64 %139, 4
  store i64 %140, i64* %PC
  %141 = bitcast i8* %138 to double*
  %142 = load double, double* %141, align 1
  %143 = inttoptr i64 %137 to double*
  store double %142, double* %143
  %144 = load i64, i64* %RBP
  %145 = sub i64 %144, 40
  %146 = load i64, i64* %PC
  %147 = add i64 %146, 4
  store i64 %147, i64* %PC
  %148 = inttoptr i64 %145 to i64*
  %149 = load i64, i64* %148
  store i64 %149, i64* %RAX, align 8, !tbaa !2428
  %150 = load i64, i64* %RAX
  %151 = bitcast %union.vec128_t* %XMM0 to i8*
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 4
  store i64 %153, i64* %PC
  %154 = bitcast i8* %151 to double*
  %155 = load double, double* %154, align 1
  %156 = inttoptr i64 %150 to double*
  store double %155, double* %156
  %157 = load i64, i64* %RBP
  %158 = sub i64 %157, 48
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 4
  store i64 %160, i64* %PC
  %161 = inttoptr i64 %158 to i64*
  %162 = load i64, i64* %161
  store i64 %162, i64* %RAX, align 8, !tbaa !2428
  %163 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %164 = load i64, i64* %RAX
  %165 = load i64, i64* %PC
  %166 = add i64 %165, 4
  store i64 %166, i64* %PC
  %167 = inttoptr i64 %164 to double*
  %168 = load double, double* %167
  %169 = bitcast i8* %163 to double*
  store double %168, double* %169, align 1, !tbaa !2453
  %170 = getelementptr inbounds i8, i8* %163, i64 8
  %171 = bitcast i8* %170 to double*
  store double 0.000000e+00, double* %171, align 1, !tbaa !2453
  %172 = load i64, i64* %RBP
  %173 = sub i64 %172, 32
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 4
  store i64 %175, i64* %PC
  %176 = inttoptr i64 %173 to i64*
  %177 = load i64, i64* %176
  store i64 %177, i64* %RAX, align 8, !tbaa !2428
  %178 = load i64, i64* %RAX
  %179 = bitcast %union.vec128_t* %XMM0 to i8*
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 4
  store i64 %181, i64* %PC
  %182 = bitcast i8* %179 to double*
  %183 = load double, double* %182, align 1
  %184 = inttoptr i64 %178 to double*
  store double %183, double* %184
  %185 = load i64, i64* %RBP
  %186 = sub i64 %185, 64
  %187 = load i64, i64* %PC
  %188 = add i64 %187, 7
  store i64 %188, i64* %PC
  %189 = inttoptr i64 %186 to i32*
  store i32 1, i32* %189
  br label %block_400bfa

block_400e7d:                                     ; preds = %block_400e36
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
  ret %struct.Memory* %MEMORY.1

block_400bfa:                                     ; preds = %block_400df9, %block_400ba0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400ba0 ], [ %MEMORY.2, %block_400df9 ]
  %205 = load i64, i64* %RBP
  %206 = sub i64 %205, 64
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC
  %209 = inttoptr i64 %206 to i32*
  %210 = load i32, i32* %209
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RAX, align 8, !tbaa !2428
  %212 = load i32, i32* %EAX
  %213 = zext i32 %212 to i64
  %214 = load i64, i64* %RBP
  %215 = sub i64 %214, 4
  %216 = load i64, i64* %PC
  %217 = add i64 %216, 3
  store i64 %217, i64* %PC
  %218 = inttoptr i64 %215 to i32*
  %219 = load i32, i32* %218
  %220 = sub i32 %212, %219
  %221 = icmp ult i32 %212, %219
  %222 = zext i1 %221 to i8
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %222, i8* %223, align 1, !tbaa !2432
  %224 = and i32 %220, 255
  %225 = call i32 @llvm.ctpop.i32(i32 %224) #16
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %228, i8* %229, align 1, !tbaa !2446
  %230 = xor i32 %219, %212
  %231 = xor i32 %230, %220
  %232 = lshr i32 %231, 4
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %234, i8* %235, align 1, !tbaa !2447
  %236 = icmp eq i32 %220, 0
  %237 = zext i1 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %237, i8* %238, align 1, !tbaa !2448
  %239 = lshr i32 %220, 31
  %240 = trunc i32 %239 to i8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %240, i8* %241, align 1, !tbaa !2449
  %242 = lshr i32 %212, 31
  %243 = lshr i32 %219, 31
  %244 = xor i32 %243, %242
  %245 = xor i32 %239, %242
  %246 = add nuw nsw i32 %245, %244
  %247 = icmp eq i32 %246, 2
  %248 = zext i1 %247 to i8
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %248, i8* %249, align 1, !tbaa !2450
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 559
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 6
  %254 = load i64, i64* %PC
  %255 = add i64 %254, 6
  store i64 %255, i64* %PC
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %257 = load i8, i8* %256, align 1, !tbaa !2449
  %258 = icmp ne i8 %257, 0
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %260 = load i8, i8* %259, align 1, !tbaa !2450
  %261 = icmp ne i8 %260, 0
  %262 = xor i1 %258, %261
  %263 = xor i1 %262, true
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %266 = select i1 %262, i64 %253, i64 %251
  store i64 %266, i64* %265, align 8, !tbaa !2428
  %267 = load i8, i8* %BRANCH_TAKEN
  %268 = icmp eq i8 %267, 1
  %269 = load i64, i64* %RBP
  br i1 %268, label %block_400e2f, label %block_400c06

block_400df9:                                     ; preds = %block_400d66
  %270 = sub i64 %1327, 32
  %271 = load i64, i64* %PC
  %272 = add i64 %271, 4
  store i64 %272, i64* %PC
  %273 = inttoptr i64 %270 to i64*
  %274 = load i64, i64* %273
  store i64 %274, i64* %RAX, align 8, !tbaa !2428
  %275 = load i64, i64* %RBP
  %276 = sub i64 %275, 64
  %277 = load i64, i64* %PC
  %278 = add i64 %277, 4
  store i64 %278, i64* %PC
  %279 = inttoptr i64 %276 to i32*
  %280 = load i32, i32* %279
  %281 = sext i32 %280 to i64
  store i64 %281, i64* %RCX, align 8, !tbaa !2428
  %282 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %283 = load i64, i64* %RAX
  %284 = load i64, i64* %RCX
  %285 = mul i64 %284, 8
  %286 = add i64 %285, %283
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 5
  store i64 %288, i64* %PC
  %289 = inttoptr i64 %286 to double*
  %290 = load double, double* %289
  %291 = bitcast i8* %282 to double*
  store double %290, double* %291, align 1, !tbaa !2453
  %292 = getelementptr inbounds i8, i8* %282, i64 8
  %293 = bitcast i8* %292 to double*
  store double 0.000000e+00, double* %293, align 1, !tbaa !2453
  %294 = load i64, i64* %RBP
  %295 = sub i64 %294, 16
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 4
  store i64 %297, i64* %PC
  %298 = inttoptr i64 %295 to i64*
  %299 = load i64, i64* %298
  store i64 %299, i64* %RAX, align 8, !tbaa !2428
  %300 = load i64, i64* %RBP
  %301 = sub i64 %300, 64
  %302 = load i64, i64* %PC
  %303 = add i64 %302, 4
  store i64 %303, i64* %PC
  %304 = inttoptr i64 %301 to i32*
  %305 = load i32, i32* %304
  %306 = sext i32 %305 to i64
  store i64 %306, i64* %RCX, align 8, !tbaa !2428
  %307 = load i64, i64* %RCX
  %308 = load i64, i64* %PC
  %309 = add i64 %308, 7
  store i64 %309, i64* %PC
  %310 = sext i64 %307 to i128
  %311 = and i128 %310, -18446744073709551616
  %312 = zext i64 %307 to i128
  %313 = or i128 %311, %312
  %314 = mul nsw i128 32000, %313
  %315 = trunc i128 %314 to i64
  store i64 %315, i64* %RCX, align 8, !tbaa !2428
  %316 = sext i64 %315 to i128
  %317 = icmp ne i128 %316, %314
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %318, i8* %319, align 1, !tbaa !2432
  %320 = trunc i128 %314 to i32
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %321, align 1, !tbaa !2446
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %322, align 1, !tbaa !2447
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %323, align 1, !tbaa !2448
  %324 = lshr i64 %315, 63
  %325 = trunc i64 %324 to i8
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %325, i8* %326, align 1, !tbaa !2449
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %318, i8* %327, align 1, !tbaa !2450
  %328 = load i64, i64* %RAX
  %329 = load i64, i64* %RCX
  %330 = load i64, i64* %PC
  %331 = add i64 %330, 3
  store i64 %331, i64* %PC
  %332 = add i64 %329, %328
  store i64 %332, i64* %RAX, align 8, !tbaa !2428
  %333 = icmp ult i64 %332, %328
  %334 = icmp ult i64 %332, %329
  %335 = or i1 %333, %334
  %336 = zext i1 %335 to i8
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %336, i8* %337, align 1, !tbaa !2432
  %338 = trunc i64 %332 to i32
  %339 = and i32 %338, 255
  %340 = call i32 @llvm.ctpop.i32(i32 %339) #16
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = xor i8 %342, 1
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %343, i8* %344, align 1, !tbaa !2446
  %345 = xor i64 %329, %328
  %346 = xor i64 %345, %332
  %347 = lshr i64 %346, 4
  %348 = trunc i64 %347 to i8
  %349 = and i8 %348, 1
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %349, i8* %350, align 1, !tbaa !2447
  %351 = icmp eq i64 %332, 0
  %352 = zext i1 %351 to i8
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %352, i8* %353, align 1, !tbaa !2448
  %354 = lshr i64 %332, 63
  %355 = trunc i64 %354 to i8
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %355, i8* %356, align 1, !tbaa !2449
  %357 = lshr i64 %328, 63
  %358 = lshr i64 %329, 63
  %359 = xor i64 %354, %357
  %360 = xor i64 %354, %358
  %361 = add nuw nsw i64 %359, %360
  %362 = icmp eq i64 %361, 2
  %363 = zext i1 %362 to i8
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %363, i8* %364, align 1, !tbaa !2450
  %365 = load i64, i64* %RBP
  %366 = sub i64 %365, 64
  %367 = load i64, i64* %PC
  %368 = add i64 %367, 4
  store i64 %368, i64* %PC
  %369 = inttoptr i64 %366 to i32*
  %370 = load i32, i32* %369
  %371 = sext i32 %370 to i64
  store i64 %371, i64* %RCX, align 8, !tbaa !2428
  %372 = load i64, i64* %RAX
  %373 = load i64, i64* %RCX
  %374 = mul i64 %373, 8
  %375 = add i64 %374, %372
  %376 = bitcast %union.vec128_t* %XMM0 to i8*
  %377 = load i64, i64* %PC
  %378 = add i64 %377, 5
  store i64 %378, i64* %PC
  %379 = bitcast i8* %376 to double*
  %380 = load double, double* %379, align 1
  %381 = inttoptr i64 %375 to double*
  store double %380, double* %381
  %382 = load i64, i64* %RBP
  %383 = sub i64 %382, 64
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 3
  store i64 %385, i64* %PC
  %386 = inttoptr i64 %383 to i32*
  %387 = load i32, i32* %386
  %388 = zext i32 %387 to i64
  store i64 %388, i64* %RAX, align 8, !tbaa !2428
  %389 = load i64, i64* %RAX
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 3
  store i64 %391, i64* %PC
  %392 = trunc i64 %389 to i32
  %393 = add i32 1, %392
  %394 = zext i32 %393 to i64
  store i64 %394, i64* %RAX, align 8, !tbaa !2428
  %395 = icmp ult i32 %393, %392
  %396 = icmp ult i32 %393, 1
  %397 = or i1 %395, %396
  %398 = zext i1 %397 to i8
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %398, i8* %399, align 1, !tbaa !2432
  %400 = and i32 %393, 255
  %401 = call i32 @llvm.ctpop.i32(i32 %400) #16
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %404, i8* %405, align 1, !tbaa !2446
  %406 = xor i64 1, %389
  %407 = trunc i64 %406 to i32
  %408 = xor i32 %407, %393
  %409 = lshr i32 %408, 4
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %411, i8* %412, align 1, !tbaa !2447
  %413 = icmp eq i32 %393, 0
  %414 = zext i1 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %414, i8* %415, align 1, !tbaa !2448
  %416 = lshr i32 %393, 31
  %417 = trunc i32 %416 to i8
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %417, i8* %418, align 1, !tbaa !2449
  %419 = lshr i32 %392, 31
  %420 = xor i32 %416, %419
  %421 = add nuw nsw i32 %420, %416
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %423, i8* %424, align 1, !tbaa !2450
  %425 = load i64, i64* %RBP
  %426 = sub i64 %425, 64
  %427 = load i32, i32* %EAX
  %428 = zext i32 %427 to i64
  %429 = load i64, i64* %PC
  %430 = add i64 %429, 3
  store i64 %430, i64* %PC
  %431 = inttoptr i64 %426 to i32*
  store i32 %427, i32* %431
  %432 = load i64, i64* %PC
  %433 = sub i64 %432, 560
  %434 = load i64, i64* %PC
  %435 = add i64 %434, 5
  store i64 %435, i64* %PC
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %433, i64* %436, align 8, !tbaa !2428
  br label %block_400bfa

block_400e36:                                     ; preds = %block_400e42, %block_400e2f
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400e2f ], [ %MEMORY.1, %block_400e42 ]
  %437 = load i64, i64* %RBP
  %438 = sub i64 %437, 60
  %439 = load i64, i64* %PC
  %440 = add i64 %439, 3
  store i64 %440, i64* %PC
  %441 = inttoptr i64 %438 to i32*
  %442 = load i32, i32* %441
  %443 = zext i32 %442 to i64
  store i64 %443, i64* %RAX, align 8, !tbaa !2428
  %444 = load i32, i32* %EAX
  %445 = zext i32 %444 to i64
  %446 = load i64, i64* %RBP
  %447 = sub i64 %446, 4
  %448 = load i64, i64* %PC
  %449 = add i64 %448, 3
  store i64 %449, i64* %PC
  %450 = inttoptr i64 %447 to i32*
  %451 = load i32, i32* %450
  %452 = sub i32 %444, %451
  %453 = icmp ult i32 %444, %451
  %454 = zext i1 %453 to i8
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %454, i8* %455, align 1, !tbaa !2432
  %456 = and i32 %452, 255
  %457 = call i32 @llvm.ctpop.i32(i32 %456) #16
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %460, i8* %461, align 1, !tbaa !2446
  %462 = xor i32 %451, %444
  %463 = xor i32 %462, %452
  %464 = lshr i32 %463, 4
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %466, i8* %467, align 1, !tbaa !2447
  %468 = icmp eq i32 %452, 0
  %469 = zext i1 %468 to i8
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %469, i8* %470, align 1, !tbaa !2448
  %471 = lshr i32 %452, 31
  %472 = trunc i32 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %472, i8* %473, align 1, !tbaa !2449
  %474 = lshr i32 %444, 31
  %475 = lshr i32 %451, 31
  %476 = xor i32 %475, %474
  %477 = xor i32 %471, %474
  %478 = add nuw nsw i32 %477, %476
  %479 = icmp eq i32 %478, 2
  %480 = zext i1 %479 to i8
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %480, i8* %481, align 1, !tbaa !2450
  %482 = load i64, i64* %PC
  %483 = add i64 %482, 65
  %484 = load i64, i64* %PC
  %485 = add i64 %484, 6
  %486 = load i64, i64* %PC
  %487 = add i64 %486, 6
  store i64 %487, i64* %PC
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %489 = load i8, i8* %488, align 1, !tbaa !2449
  %490 = icmp ne i8 %489, 0
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %492 = load i8, i8* %491, align 1, !tbaa !2450
  %493 = icmp ne i8 %492, 0
  %494 = xor i1 %490, %493
  %495 = xor i1 %494, true
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %498 = select i1 %494, i64 %485, i64 %483
  store i64 %498, i64* %497, align 8, !tbaa !2428
  %499 = load i8, i8* %BRANCH_TAKEN
  %500 = icmp eq i8 %499, 1
  br i1 %500, label %block_400e7d, label %block_400e42

block_400d13:                                     ; preds = %block_400c80
  %501 = load i64, i64* %PC
  %502 = add i64 %501, 10
  store i64 %502, i64* %PC
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %503 = load i64, i64* %RBP
  %504 = sub i64 %503, 24
  %505 = load i64, i64* %PC
  %506 = add i64 %505, 4
  store i64 %506, i64* %PC
  %507 = inttoptr i64 %504 to i64*
  %508 = load i64, i64* %507
  store i64 %508, i64* %RCX, align 8, !tbaa !2428
  %509 = load i64, i64* %RBP
  %510 = sub i64 %509, 64
  %511 = load i64, i64* %PC
  %512 = add i64 %511, 4
  store i64 %512, i64* %PC
  %513 = inttoptr i64 %510 to i32*
  %514 = load i32, i32* %513
  %515 = sext i32 %514 to i64
  store i64 %515, i64* %RDX, align 8, !tbaa !2428
  %516 = load i64, i64* %RDX
  %517 = load i64, i64* %PC
  %518 = add i64 %517, 7
  store i64 %518, i64* %PC
  %519 = sext i64 %516 to i128
  %520 = and i128 %519, -18446744073709551616
  %521 = zext i64 %516 to i128
  %522 = or i128 %520, %521
  %523 = mul nsw i128 32000, %522
  %524 = trunc i128 %523 to i64
  store i64 %524, i64* %RDX, align 8, !tbaa !2428
  %525 = sext i64 %524 to i128
  %526 = icmp ne i128 %525, %523
  %527 = zext i1 %526 to i8
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %527, i8* %528, align 1, !tbaa !2432
  %529 = trunc i128 %523 to i32
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %530, align 1, !tbaa !2446
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %531, align 1, !tbaa !2447
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %532, align 1, !tbaa !2448
  %533 = lshr i64 %524, 63
  %534 = trunc i64 %533 to i8
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %534, i8* %535, align 1, !tbaa !2449
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %527, i8* %536, align 1, !tbaa !2450
  %537 = load i64, i64* %RCX
  %538 = load i64, i64* %RDX
  %539 = load i64, i64* %PC
  %540 = add i64 %539, 3
  store i64 %540, i64* %PC
  %541 = add i64 %538, %537
  store i64 %541, i64* %RCX, align 8, !tbaa !2428
  %542 = icmp ult i64 %541, %537
  %543 = icmp ult i64 %541, %538
  %544 = or i1 %542, %543
  %545 = zext i1 %544 to i8
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %545, i8* %546, align 1, !tbaa !2432
  %547 = trunc i64 %541 to i32
  %548 = and i32 %547, 255
  %549 = call i32 @llvm.ctpop.i32(i32 %548) #16
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  %552 = xor i8 %551, 1
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %552, i8* %553, align 1, !tbaa !2446
  %554 = xor i64 %538, %537
  %555 = xor i64 %554, %541
  %556 = lshr i64 %555, 4
  %557 = trunc i64 %556 to i8
  %558 = and i8 %557, 1
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %558, i8* %559, align 1, !tbaa !2447
  %560 = icmp eq i64 %541, 0
  %561 = zext i1 %560 to i8
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %561, i8* %562, align 1, !tbaa !2448
  %563 = lshr i64 %541, 63
  %564 = trunc i64 %563 to i8
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %564, i8* %565, align 1, !tbaa !2449
  %566 = lshr i64 %537, 63
  %567 = lshr i64 %538, 63
  %568 = xor i64 %563, %566
  %569 = xor i64 %563, %567
  %570 = add nuw nsw i64 %568, %569
  %571 = icmp eq i64 %570, 2
  %572 = zext i1 %571 to i8
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %572, i8* %573, align 1, !tbaa !2450
  %574 = load i64, i64* %RBP
  %575 = sub i64 %574, 64
  %576 = load i64, i64* %PC
  %577 = add i64 %576, 4
  store i64 %577, i64* %PC
  %578 = inttoptr i64 %575 to i32*
  %579 = load i32, i32* %578
  %580 = sext i32 %579 to i64
  store i64 %580, i64* %RDX, align 8, !tbaa !2428
  %581 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %582 = load i64, i64* %RCX
  %583 = load i64, i64* %RDX
  %584 = mul i64 %583, 8
  %585 = add i64 %584, %582
  %586 = load i64, i64* %PC
  %587 = add i64 %586, 5
  store i64 %587, i64* %PC
  %588 = inttoptr i64 %585 to double*
  %589 = load double, double* %588
  %590 = bitcast i8* %581 to double*
  store double %589, double* %590, align 1, !tbaa !2453
  %591 = getelementptr inbounds i8, i8* %581, i64 8
  %592 = bitcast i8* %591 to double*
  store double 0.000000e+00, double* %592, align 1, !tbaa !2453
  %593 = bitcast %union.vec128_t* %XMM0 to i8*
  %594 = load i64, i64* %PC
  %595 = add i64 %594, 5
  store i64 %595, i64* %PC
  %596 = bitcast i8* %593 to i64*
  %597 = load i64, i64* %596, align 1
  store i64 %597, i64* %RCX, align 1, !tbaa !2428
  %598 = load i64, i64* %RCX
  %599 = load i64, i64* %RAX
  %600 = load i64, i64* %PC
  %601 = add i64 %600, 3
  store i64 %601, i64* %PC
  %602 = xor i64 %599, %598
  store i64 %602, i64* %RCX, align 8, !tbaa !2428
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %603, align 1, !tbaa !2432
  %604 = trunc i64 %602 to i32
  %605 = and i32 %604, 255
  %606 = call i32 @llvm.ctpop.i32(i32 %605) #16
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %609, i8* %610, align 1, !tbaa !2446
  %611 = icmp eq i64 %602, 0
  %612 = zext i1 %611 to i8
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %612, i8* %613, align 1, !tbaa !2448
  %614 = lshr i64 %602, 63
  %615 = trunc i64 %614 to i8
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %615, i8* %616, align 1, !tbaa !2449
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %617, align 1, !tbaa !2450
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %618, align 1, !tbaa !2447
  %619 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %620 = load i64, i64* %RCX
  %621 = load i64, i64* %PC
  %622 = add i64 %621, 5
  store i64 %622, i64* %PC
  %623 = bitcast i8* %619 to i64*
  store i64 %620, i64* %623, align 1, !tbaa !2428
  %624 = getelementptr inbounds i8, i8* %619, i64 8
  %625 = bitcast i8* %624 to i64*
  store i64 0, i64* %625, align 1, !tbaa !2428
  %626 = load i64, i64* %RBP
  %627 = sub i64 %626, 40
  %628 = load i64, i64* %PC
  %629 = add i64 %628, 4
  store i64 %629, i64* %PC
  %630 = inttoptr i64 %627 to i64*
  %631 = load i64, i64* %630
  store i64 %631, i64* %RAX, align 8, !tbaa !2428
  %632 = load i64, i64* %RBP
  %633 = sub i64 %632, 64
  %634 = load i64, i64* %PC
  %635 = add i64 %634, 4
  store i64 %635, i64* %PC
  %636 = inttoptr i64 %633 to i32*
  %637 = load i32, i32* %636
  %638 = sext i32 %637 to i64
  store i64 %638, i64* %RCX, align 8, !tbaa !2428
  %639 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %640 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %641 = load i64, i64* %RAX
  %642 = load i64, i64* %RCX
  %643 = mul i64 %642, 8
  %644 = add i64 %643, %641
  %645 = load i64, i64* %PC
  %646 = add i64 %645, 5
  store i64 %646, i64* %PC
  %647 = bitcast i8* %640 to double*
  %648 = load double, double* %647, align 1
  %649 = getelementptr inbounds i8, i8* %640, i64 8
  %650 = bitcast i8* %649 to i64*
  %651 = load i64, i64* %650, align 1
  %652 = inttoptr i64 %644 to double*
  %653 = load double, double* %652
  %654 = fmul double %648, %653
  %655 = bitcast i8* %639 to double*
  store double %654, double* %655, align 1, !tbaa !2453
  %656 = getelementptr inbounds i8, i8* %639, i64 8
  %657 = bitcast i8* %656 to i64*
  store i64 %651, i64* %657, align 1, !tbaa !2453
  %658 = load i64, i64* %RBP
  %659 = sub i64 %658, 32
  %660 = load i64, i64* %PC
  %661 = add i64 %660, 4
  store i64 %661, i64* %PC
  %662 = inttoptr i64 %659 to i64*
  %663 = load i64, i64* %662
  store i64 %663, i64* %RAX, align 8, !tbaa !2428
  %664 = load i64, i64* %RBP
  %665 = sub i64 %664, 64
  %666 = load i64, i64* %PC
  %667 = add i64 %666, 4
  store i64 %667, i64* %PC
  %668 = inttoptr i64 %665 to i32*
  %669 = load i32, i32* %668
  %670 = sext i32 %669 to i64
  store i64 %670, i64* %RCX, align 8, !tbaa !2428
  %671 = load i64, i64* %RAX
  %672 = load i64, i64* %RCX
  %673 = mul i64 %672, 8
  %674 = add i64 %673, %671
  %675 = bitcast %union.vec128_t* %XMM0 to i8*
  %676 = load i64, i64* %PC
  %677 = add i64 %676, 5
  store i64 %677, i64* %PC
  %678 = bitcast i8* %675 to double*
  %679 = load double, double* %678, align 1
  %680 = inttoptr i64 %674 to double*
  store double %679, double* %680
  %681 = load i64, i64* %RBP
  %682 = sub i64 %681, 60
  %683 = load i64, i64* %PC
  %684 = add i64 %683, 7
  store i64 %684, i64* %PC
  %685 = inttoptr i64 %682 to i32*
  store i32 0, i32* %685
  br label %block_400d66

block_400e2f:                                     ; preds = %block_400bfa
  %686 = sub i64 %269, 60
  %687 = load i64, i64* %PC
  %688 = add i64 %687, 7
  store i64 %688, i64* %PC
  %689 = inttoptr i64 %686 to i32*
  store i32 0, i32* %689
  br label %block_400e36

block_400d77:                                     ; preds = %block_400d66
  %690 = sub i64 %1327, 16
  %691 = load i64, i64* %PC
  %692 = add i64 %691, 4
  store i64 %692, i64* %PC
  %693 = inttoptr i64 %690 to i64*
  %694 = load i64, i64* %693
  store i64 %694, i64* %RAX, align 8, !tbaa !2428
  %695 = load i64, i64* %RBP
  %696 = sub i64 %695, 60
  %697 = load i64, i64* %PC
  %698 = add i64 %697, 4
  store i64 %698, i64* %PC
  %699 = inttoptr i64 %696 to i32*
  %700 = load i32, i32* %699
  %701 = sext i32 %700 to i64
  store i64 %701, i64* %RCX, align 8, !tbaa !2428
  %702 = load i64, i64* %RCX
  %703 = load i64, i64* %PC
  %704 = add i64 %703, 7
  store i64 %704, i64* %PC
  %705 = sext i64 %702 to i128
  %706 = and i128 %705, -18446744073709551616
  %707 = zext i64 %702 to i128
  %708 = or i128 %706, %707
  %709 = mul nsw i128 32000, %708
  %710 = trunc i128 %709 to i64
  store i64 %710, i64* %RCX, align 8, !tbaa !2428
  %711 = sext i64 %710 to i128
  %712 = icmp ne i128 %711, %709
  %713 = zext i1 %712 to i8
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %713, i8* %714, align 1, !tbaa !2432
  %715 = trunc i128 %709 to i32
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %716, align 1, !tbaa !2446
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %717, align 1, !tbaa !2447
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %718, align 1, !tbaa !2448
  %719 = lshr i64 %710, 63
  %720 = trunc i64 %719 to i8
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %720, i8* %721, align 1, !tbaa !2449
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %713, i8* %722, align 1, !tbaa !2450
  %723 = load i64, i64* %RAX
  %724 = load i64, i64* %RCX
  %725 = load i64, i64* %PC
  %726 = add i64 %725, 3
  store i64 %726, i64* %PC
  %727 = add i64 %724, %723
  store i64 %727, i64* %RAX, align 8, !tbaa !2428
  %728 = icmp ult i64 %727, %723
  %729 = icmp ult i64 %727, %724
  %730 = or i1 %728, %729
  %731 = zext i1 %730 to i8
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %731, i8* %732, align 1, !tbaa !2432
  %733 = trunc i64 %727 to i32
  %734 = and i32 %733, 255
  %735 = call i32 @llvm.ctpop.i32(i32 %734) #16
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  %738 = xor i8 %737, 1
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %738, i8* %739, align 1, !tbaa !2446
  %740 = xor i64 %724, %723
  %741 = xor i64 %740, %727
  %742 = lshr i64 %741, 4
  %743 = trunc i64 %742 to i8
  %744 = and i8 %743, 1
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %744, i8* %745, align 1, !tbaa !2447
  %746 = icmp eq i64 %727, 0
  %747 = zext i1 %746 to i8
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %747, i8* %748, align 1, !tbaa !2448
  %749 = lshr i64 %727, 63
  %750 = trunc i64 %749 to i8
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %750, i8* %751, align 1, !tbaa !2449
  %752 = lshr i64 %723, 63
  %753 = lshr i64 %724, 63
  %754 = xor i64 %749, %752
  %755 = xor i64 %749, %753
  %756 = add nuw nsw i64 %754, %755
  %757 = icmp eq i64 %756, 2
  %758 = zext i1 %757 to i8
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %758, i8* %759, align 1, !tbaa !2450
  %760 = load i64, i64* %RBP
  %761 = sub i64 %760, 64
  %762 = load i64, i64* %PC
  %763 = add i64 %762, 3
  store i64 %763, i64* %PC
  %764 = inttoptr i64 %761 to i32*
  %765 = load i32, i32* %764
  %766 = zext i32 %765 to i64
  store i64 %766, i64* %RDX, align 8, !tbaa !2428
  %767 = load i64, i64* %RDX
  %768 = load i64, i64* %PC
  %769 = add i64 %768, 3
  store i64 %769, i64* %PC
  %770 = trunc i64 %767 to i32
  %771 = sub i32 %770, 1
  %772 = zext i32 %771 to i64
  store i64 %772, i64* %RDX, align 8, !tbaa !2428
  %773 = icmp ult i32 %770, 1
  %774 = zext i1 %773 to i8
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %774, i8* %775, align 1, !tbaa !2432
  %776 = and i32 %771, 255
  %777 = call i32 @llvm.ctpop.i32(i32 %776) #16
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  %780 = xor i8 %779, 1
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %780, i8* %781, align 1, !tbaa !2446
  %782 = xor i64 1, %767
  %783 = trunc i64 %782 to i32
  %784 = xor i32 %783, %771
  %785 = lshr i32 %784, 4
  %786 = trunc i32 %785 to i8
  %787 = and i8 %786, 1
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %787, i8* %788, align 1, !tbaa !2447
  %789 = icmp eq i32 %771, 0
  %790 = zext i1 %789 to i8
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %790, i8* %791, align 1, !tbaa !2448
  %792 = lshr i32 %771, 31
  %793 = trunc i32 %792 to i8
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %793, i8* %794, align 1, !tbaa !2449
  %795 = lshr i32 %770, 31
  %796 = xor i32 %792, %795
  %797 = add nuw nsw i32 %796, %795
  %798 = icmp eq i32 %797, 2
  %799 = zext i1 %798 to i8
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %799, i8* %800, align 1, !tbaa !2450
  %801 = load i32, i32* %EDX
  %802 = zext i32 %801 to i64
  %803 = load i64, i64* %PC
  %804 = add i64 %803, 3
  store i64 %804, i64* %PC
  %805 = shl i64 %802, 32
  %806 = ashr exact i64 %805, 32
  store i64 %806, i64* %RCX, align 8, !tbaa !2428
  %807 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %808 = load i64, i64* %RAX
  %809 = load i64, i64* %RCX
  %810 = mul i64 %809, 8
  %811 = add i64 %810, %808
  %812 = load i64, i64* %PC
  %813 = add i64 %812, 5
  store i64 %813, i64* %PC
  %814 = inttoptr i64 %811 to double*
  %815 = load double, double* %814
  %816 = bitcast i8* %807 to double*
  store double %815, double* %816, align 1, !tbaa !2453
  %817 = getelementptr inbounds i8, i8* %807, i64 8
  %818 = bitcast i8* %817 to double*
  store double 0.000000e+00, double* %818, align 1, !tbaa !2453
  %819 = load i64, i64* %RBP
  %820 = sub i64 %819, 32
  %821 = load i64, i64* %PC
  %822 = add i64 %821, 4
  store i64 %822, i64* %PC
  %823 = inttoptr i64 %820 to i64*
  %824 = load i64, i64* %823
  store i64 %824, i64* %RAX, align 8, !tbaa !2428
  %825 = load i64, i64* %RBP
  %826 = sub i64 %825, 64
  %827 = load i64, i64* %PC
  %828 = add i64 %827, 4
  store i64 %828, i64* %PC
  %829 = inttoptr i64 %826 to i32*
  %830 = load i32, i32* %829
  %831 = sext i32 %830 to i64
  store i64 %831, i64* %RCX, align 8, !tbaa !2428
  %832 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %833 = load i64, i64* %RAX
  %834 = load i64, i64* %RCX
  %835 = mul i64 %834, 8
  %836 = add i64 %835, %833
  %837 = load i64, i64* %PC
  %838 = add i64 %837, 5
  store i64 %838, i64* %PC
  %839 = inttoptr i64 %836 to double*
  %840 = load double, double* %839
  %841 = bitcast i8* %832 to double*
  store double %840, double* %841, align 1, !tbaa !2453
  %842 = getelementptr inbounds i8, i8* %832, i64 8
  %843 = bitcast i8* %842 to double*
  store double 0.000000e+00, double* %843, align 1, !tbaa !2453
  %844 = load i64, i64* %RBP
  %845 = sub i64 %844, 16
  %846 = load i64, i64* %PC
  %847 = add i64 %846, 4
  store i64 %847, i64* %PC
  %848 = inttoptr i64 %845 to i64*
  %849 = load i64, i64* %848
  store i64 %849, i64* %RAX, align 8, !tbaa !2428
  %850 = load i64, i64* %RBP
  %851 = sub i64 %850, 64
  %852 = load i64, i64* %PC
  %853 = add i64 %852, 3
  store i64 %853, i64* %PC
  %854 = inttoptr i64 %851 to i32*
  %855 = load i32, i32* %854
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RDX, align 8, !tbaa !2428
  %857 = load i64, i64* %RDX
  %858 = load i64, i64* %RBP
  %859 = sub i64 %858, 60
  %860 = load i64, i64* %PC
  %861 = add i64 %860, 3
  store i64 %861, i64* %PC
  %862 = trunc i64 %857 to i32
  %863 = inttoptr i64 %859 to i32*
  %864 = load i32, i32* %863
  %865 = sub i32 %862, %864
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RDX, align 8, !tbaa !2428
  %867 = icmp ult i32 %862, %864
  %868 = zext i1 %867 to i8
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %868, i8* %869, align 1, !tbaa !2432
  %870 = and i32 %865, 255
  %871 = call i32 @llvm.ctpop.i32(i32 %870) #16
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  %874 = xor i8 %873, 1
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %874, i8* %875, align 1, !tbaa !2446
  %876 = xor i32 %864, %862
  %877 = xor i32 %876, %865
  %878 = lshr i32 %877, 4
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %880, i8* %881, align 1, !tbaa !2447
  %882 = icmp eq i32 %865, 0
  %883 = zext i1 %882 to i8
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %883, i8* %884, align 1, !tbaa !2448
  %885 = lshr i32 %865, 31
  %886 = trunc i32 %885 to i8
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %886, i8* %887, align 1, !tbaa !2449
  %888 = lshr i32 %862, 31
  %889 = lshr i32 %864, 31
  %890 = xor i32 %889, %888
  %891 = xor i32 %885, %888
  %892 = add nuw nsw i32 %891, %890
  %893 = icmp eq i32 %892, 2
  %894 = zext i1 %893 to i8
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %894, i8* %895, align 1, !tbaa !2450
  %896 = load i64, i64* %RDX
  %897 = load i64, i64* %PC
  %898 = add i64 %897, 3
  store i64 %898, i64* %PC
  %899 = trunc i64 %896 to i32
  %900 = sub i32 %899, 1
  %901 = zext i32 %900 to i64
  store i64 %901, i64* %RDX, align 8, !tbaa !2428
  %902 = icmp ult i32 %899, 1
  %903 = zext i1 %902 to i8
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %903, i8* %904, align 1, !tbaa !2432
  %905 = and i32 %900, 255
  %906 = call i32 @llvm.ctpop.i32(i32 %905) #16
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  %909 = xor i8 %908, 1
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %909, i8* %910, align 1, !tbaa !2446
  %911 = xor i64 1, %896
  %912 = trunc i64 %911 to i32
  %913 = xor i32 %912, %900
  %914 = lshr i32 %913, 4
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %916, i8* %917, align 1, !tbaa !2447
  %918 = icmp eq i32 %900, 0
  %919 = zext i1 %918 to i8
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %919, i8* %920, align 1, !tbaa !2448
  %921 = lshr i32 %900, 31
  %922 = trunc i32 %921 to i8
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %922, i8* %923, align 1, !tbaa !2449
  %924 = lshr i32 %899, 31
  %925 = xor i32 %921, %924
  %926 = add nuw nsw i32 %925, %924
  %927 = icmp eq i32 %926, 2
  %928 = zext i1 %927 to i8
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %928, i8* %929, align 1, !tbaa !2450
  %930 = load i32, i32* %EDX
  %931 = zext i32 %930 to i64
  %932 = load i64, i64* %PC
  %933 = add i64 %932, 3
  store i64 %933, i64* %PC
  %934 = shl i64 %931, 32
  %935 = ashr exact i64 %934, 32
  store i64 %935, i64* %RCX, align 8, !tbaa !2428
  %936 = load i64, i64* %RCX
  %937 = load i64, i64* %PC
  %938 = add i64 %937, 7
  store i64 %938, i64* %PC
  %939 = sext i64 %936 to i128
  %940 = and i128 %939, -18446744073709551616
  %941 = zext i64 %936 to i128
  %942 = or i128 %940, %941
  %943 = mul nsw i128 32000, %942
  %944 = trunc i128 %943 to i64
  store i64 %944, i64* %RCX, align 8, !tbaa !2428
  %945 = sext i64 %944 to i128
  %946 = icmp ne i128 %945, %943
  %947 = zext i1 %946 to i8
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %947, i8* %948, align 1, !tbaa !2432
  %949 = trunc i128 %943 to i32
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %950, align 1, !tbaa !2446
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %951, align 1, !tbaa !2447
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %952, align 1, !tbaa !2448
  %953 = lshr i64 %944, 63
  %954 = trunc i64 %953 to i8
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %954, i8* %955, align 1, !tbaa !2449
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %947, i8* %956, align 1, !tbaa !2450
  %957 = load i64, i64* %RAX
  %958 = load i64, i64* %RCX
  %959 = load i64, i64* %PC
  %960 = add i64 %959, 3
  store i64 %960, i64* %PC
  %961 = add i64 %958, %957
  store i64 %961, i64* %RAX, align 8, !tbaa !2428
  %962 = icmp ult i64 %961, %957
  %963 = icmp ult i64 %961, %958
  %964 = or i1 %962, %963
  %965 = zext i1 %964 to i8
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %965, i8* %966, align 1, !tbaa !2432
  %967 = trunc i64 %961 to i32
  %968 = and i32 %967, 255
  %969 = call i32 @llvm.ctpop.i32(i32 %968) #16
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  %972 = xor i8 %971, 1
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %972, i8* %973, align 1, !tbaa !2446
  %974 = xor i64 %958, %957
  %975 = xor i64 %974, %961
  %976 = lshr i64 %975, 4
  %977 = trunc i64 %976 to i8
  %978 = and i8 %977, 1
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %978, i8* %979, align 1, !tbaa !2447
  %980 = icmp eq i64 %961, 0
  %981 = zext i1 %980 to i8
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %981, i8* %982, align 1, !tbaa !2448
  %983 = lshr i64 %961, 63
  %984 = trunc i64 %983 to i8
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %984, i8* %985, align 1, !tbaa !2449
  %986 = lshr i64 %957, 63
  %987 = lshr i64 %958, 63
  %988 = xor i64 %983, %986
  %989 = xor i64 %983, %987
  %990 = add nuw nsw i64 %988, %989
  %991 = icmp eq i64 %990, 2
  %992 = zext i1 %991 to i8
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %992, i8* %993, align 1, !tbaa !2450
  %994 = load i64, i64* %RBP
  %995 = sub i64 %994, 64
  %996 = load i64, i64* %PC
  %997 = add i64 %996, 3
  store i64 %997, i64* %PC
  %998 = inttoptr i64 %995 to i32*
  %999 = load i32, i32* %998
  %1000 = zext i32 %999 to i64
  store i64 %1000, i64* %RDX, align 8, !tbaa !2428
  %1001 = load i64, i64* %RDX
  %1002 = load i64, i64* %PC
  %1003 = add i64 %1002, 3
  store i64 %1003, i64* %PC
  %1004 = trunc i64 %1001 to i32
  %1005 = sub i32 %1004, 1
  %1006 = zext i32 %1005 to i64
  store i64 %1006, i64* %RDX, align 8, !tbaa !2428
  %1007 = icmp ult i32 %1004, 1
  %1008 = zext i1 %1007 to i8
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1008, i8* %1009, align 1, !tbaa !2432
  %1010 = and i32 %1005, 255
  %1011 = call i32 @llvm.ctpop.i32(i32 %1010) #16
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1014, i8* %1015, align 1, !tbaa !2446
  %1016 = xor i64 1, %1001
  %1017 = trunc i64 %1016 to i32
  %1018 = xor i32 %1017, %1005
  %1019 = lshr i32 %1018, 4
  %1020 = trunc i32 %1019 to i8
  %1021 = and i8 %1020, 1
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1021, i8* %1022, align 1, !tbaa !2447
  %1023 = icmp eq i32 %1005, 0
  %1024 = zext i1 %1023 to i8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1024, i8* %1025, align 1, !tbaa !2448
  %1026 = lshr i32 %1005, 31
  %1027 = trunc i32 %1026 to i8
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1027, i8* %1028, align 1, !tbaa !2449
  %1029 = lshr i32 %1004, 31
  %1030 = xor i32 %1026, %1029
  %1031 = add nuw nsw i32 %1030, %1029
  %1032 = icmp eq i32 %1031, 2
  %1033 = zext i1 %1032 to i8
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1033, i8* %1034, align 1, !tbaa !2450
  %1035 = load i32, i32* %EDX
  %1036 = zext i32 %1035 to i64
  %1037 = load i64, i64* %PC
  %1038 = add i64 %1037, 3
  store i64 %1038, i64* %PC
  %1039 = shl i64 %1036, 32
  %1040 = ashr exact i64 %1039, 32
  store i64 %1040, i64* %RCX, align 8, !tbaa !2428
  %1041 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1042 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1043 = load i64, i64* %RAX
  %1044 = load i64, i64* %RCX
  %1045 = mul i64 %1044, 8
  %1046 = add i64 %1045, %1043
  %1047 = load i64, i64* %PC
  %1048 = add i64 %1047, 5
  store i64 %1048, i64* %PC
  %1049 = bitcast i8* %1042 to double*
  %1050 = load double, double* %1049, align 1
  %1051 = getelementptr inbounds i8, i8* %1042, i64 8
  %1052 = bitcast i8* %1051 to i64*
  %1053 = load i64, i64* %1052, align 1
  %1054 = inttoptr i64 %1046 to double*
  %1055 = load double, double* %1054
  %1056 = fmul double %1050, %1055
  %1057 = bitcast i8* %1041 to double*
  store double %1056, double* %1057, align 1, !tbaa !2453
  %1058 = getelementptr inbounds i8, i8* %1041, i64 8
  %1059 = bitcast i8* %1058 to i64*
  store i64 %1053, i64* %1059, align 1, !tbaa !2453
  %1060 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1061 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1062 = bitcast %union.vec128_t* %XMM1 to i8*
  %1063 = load i64, i64* %PC
  %1064 = add i64 %1063, 4
  store i64 %1064, i64* %PC
  %1065 = bitcast i8* %1061 to double*
  %1066 = load double, double* %1065, align 1
  %1067 = getelementptr inbounds i8, i8* %1061, i64 8
  %1068 = bitcast i8* %1067 to i64*
  %1069 = load i64, i64* %1068, align 1
  %1070 = bitcast i8* %1062 to double*
  %1071 = load double, double* %1070, align 1
  %1072 = fadd double %1066, %1071
  %1073 = bitcast i8* %1060 to double*
  store double %1072, double* %1073, align 1, !tbaa !2453
  %1074 = getelementptr inbounds i8, i8* %1060, i64 8
  %1075 = bitcast i8* %1074 to i64*
  store i64 %1069, i64* %1075, align 1, !tbaa !2453
  %1076 = load i64, i64* %RBP
  %1077 = sub i64 %1076, 16
  %1078 = load i64, i64* %PC
  %1079 = add i64 %1078, 4
  store i64 %1079, i64* %PC
  %1080 = inttoptr i64 %1077 to i64*
  %1081 = load i64, i64* %1080
  store i64 %1081, i64* %RAX, align 8, !tbaa !2428
  %1082 = load i64, i64* %RBP
  %1083 = sub i64 %1082, 60
  %1084 = load i64, i64* %PC
  %1085 = add i64 %1084, 4
  store i64 %1085, i64* %PC
  %1086 = inttoptr i64 %1083 to i32*
  %1087 = load i32, i32* %1086
  %1088 = sext i32 %1087 to i64
  store i64 %1088, i64* %RCX, align 8, !tbaa !2428
  %1089 = load i64, i64* %RCX
  %1090 = load i64, i64* %PC
  %1091 = add i64 %1090, 7
  store i64 %1091, i64* %PC
  %1092 = sext i64 %1089 to i128
  %1093 = and i128 %1092, -18446744073709551616
  %1094 = zext i64 %1089 to i128
  %1095 = or i128 %1093, %1094
  %1096 = mul nsw i128 32000, %1095
  %1097 = trunc i128 %1096 to i64
  store i64 %1097, i64* %RCX, align 8, !tbaa !2428
  %1098 = sext i64 %1097 to i128
  %1099 = icmp ne i128 %1098, %1096
  %1100 = zext i1 %1099 to i8
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1100, i8* %1101, align 1, !tbaa !2432
  %1102 = trunc i128 %1096 to i32
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1103, align 1, !tbaa !2446
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1104, align 1, !tbaa !2447
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1105, align 1, !tbaa !2448
  %1106 = lshr i64 %1097, 63
  %1107 = trunc i64 %1106 to i8
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1107, i8* %1108, align 1, !tbaa !2449
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1100, i8* %1109, align 1, !tbaa !2450
  %1110 = load i64, i64* %RAX
  %1111 = load i64, i64* %RCX
  %1112 = load i64, i64* %PC
  %1113 = add i64 %1112, 3
  store i64 %1113, i64* %PC
  %1114 = add i64 %1111, %1110
  store i64 %1114, i64* %RAX, align 8, !tbaa !2428
  %1115 = icmp ult i64 %1114, %1110
  %1116 = icmp ult i64 %1114, %1111
  %1117 = or i1 %1115, %1116
  %1118 = zext i1 %1117 to i8
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1118, i8* %1119, align 1, !tbaa !2432
  %1120 = trunc i64 %1114 to i32
  %1121 = and i32 %1120, 255
  %1122 = call i32 @llvm.ctpop.i32(i32 %1121) #16
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  %1125 = xor i8 %1124, 1
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1125, i8* %1126, align 1, !tbaa !2446
  %1127 = xor i64 %1111, %1110
  %1128 = xor i64 %1127, %1114
  %1129 = lshr i64 %1128, 4
  %1130 = trunc i64 %1129 to i8
  %1131 = and i8 %1130, 1
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1131, i8* %1132, align 1, !tbaa !2447
  %1133 = icmp eq i64 %1114, 0
  %1134 = zext i1 %1133 to i8
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1134, i8* %1135, align 1, !tbaa !2448
  %1136 = lshr i64 %1114, 63
  %1137 = trunc i64 %1136 to i8
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1137, i8* %1138, align 1, !tbaa !2449
  %1139 = lshr i64 %1110, 63
  %1140 = lshr i64 %1111, 63
  %1141 = xor i64 %1136, %1139
  %1142 = xor i64 %1136, %1140
  %1143 = add nuw nsw i64 %1141, %1142
  %1144 = icmp eq i64 %1143, 2
  %1145 = zext i1 %1144 to i8
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1145, i8* %1146, align 1, !tbaa !2450
  %1147 = load i64, i64* %RBP
  %1148 = sub i64 %1147, 64
  %1149 = load i64, i64* %PC
  %1150 = add i64 %1149, 4
  store i64 %1150, i64* %PC
  %1151 = inttoptr i64 %1148 to i32*
  %1152 = load i32, i32* %1151
  %1153 = sext i32 %1152 to i64
  store i64 %1153, i64* %RCX, align 8, !tbaa !2428
  %1154 = load i64, i64* %RAX
  %1155 = load i64, i64* %RCX
  %1156 = mul i64 %1155, 8
  %1157 = add i64 %1156, %1154
  %1158 = bitcast %union.vec128_t* %XMM0 to i8*
  %1159 = load i64, i64* %PC
  %1160 = add i64 %1159, 5
  store i64 %1160, i64* %PC
  %1161 = bitcast i8* %1158 to double*
  %1162 = load double, double* %1161, align 1
  %1163 = inttoptr i64 %1157 to double*
  store double %1162, double* %1163
  %1164 = load i64, i64* %RBP
  %1165 = sub i64 %1164, 60
  %1166 = load i64, i64* %PC
  %1167 = add i64 %1166, 3
  store i64 %1167, i64* %PC
  %1168 = inttoptr i64 %1165 to i32*
  %1169 = load i32, i32* %1168
  %1170 = zext i32 %1169 to i64
  store i64 %1170, i64* %RAX, align 8, !tbaa !2428
  %1171 = load i64, i64* %RAX
  %1172 = load i64, i64* %PC
  %1173 = add i64 %1172, 3
  store i64 %1173, i64* %PC
  %1174 = trunc i64 %1171 to i32
  %1175 = add i32 1, %1174
  %1176 = zext i32 %1175 to i64
  store i64 %1176, i64* %RAX, align 8, !tbaa !2428
  %1177 = icmp ult i32 %1175, %1174
  %1178 = icmp ult i32 %1175, 1
  %1179 = or i1 %1177, %1178
  %1180 = zext i1 %1179 to i8
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1180, i8* %1181, align 1, !tbaa !2432
  %1182 = and i32 %1175, 255
  %1183 = call i32 @llvm.ctpop.i32(i32 %1182) #16
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = xor i8 %1185, 1
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1186, i8* %1187, align 1, !tbaa !2446
  %1188 = xor i64 1, %1171
  %1189 = trunc i64 %1188 to i32
  %1190 = xor i32 %1189, %1175
  %1191 = lshr i32 %1190, 4
  %1192 = trunc i32 %1191 to i8
  %1193 = and i8 %1192, 1
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1193, i8* %1194, align 1, !tbaa !2447
  %1195 = icmp eq i32 %1175, 0
  %1196 = zext i1 %1195 to i8
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1196, i8* %1197, align 1, !tbaa !2448
  %1198 = lshr i32 %1175, 31
  %1199 = trunc i32 %1198 to i8
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1199, i8* %1200, align 1, !tbaa !2449
  %1201 = lshr i32 %1174, 31
  %1202 = xor i32 %1198, %1201
  %1203 = add nuw nsw i32 %1202, %1198
  %1204 = icmp eq i32 %1203, 2
  %1205 = zext i1 %1204 to i8
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1205, i8* %1206, align 1, !tbaa !2450
  %1207 = load i64, i64* %RBP
  %1208 = sub i64 %1207, 60
  %1209 = load i32, i32* %EAX
  %1210 = zext i32 %1209 to i64
  %1211 = load i64, i64* %PC
  %1212 = add i64 %1211, 3
  store i64 %1212, i64* %PC
  %1213 = inttoptr i64 %1208 to i32*
  store i32 %1209, i32* %1213
  %1214 = load i64, i64* %PC
  %1215 = sub i64 %1214, 142
  %1216 = load i64, i64* %PC
  %1217 = add i64 %1216, 5
  store i64 %1217, i64* %PC
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1215, i64* %1218, align 8, !tbaa !2428
  br label %block_400d66

block_400d66:                                     ; preds = %block_400d77, %block_400d13
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.3, %block_400d13 ], [ %MEMORY.2, %block_400d77 ]
  %1219 = load i64, i64* %RBP
  %1220 = sub i64 %1219, 60
  %1221 = load i64, i64* %PC
  %1222 = add i64 %1221, 3
  store i64 %1222, i64* %PC
  %1223 = inttoptr i64 %1220 to i32*
  %1224 = load i32, i32* %1223
  %1225 = zext i32 %1224 to i64
  store i64 %1225, i64* %RAX, align 8, !tbaa !2428
  %1226 = load i64, i64* %RBP
  %1227 = sub i64 %1226, 64
  %1228 = load i64, i64* %PC
  %1229 = add i64 %1228, 3
  store i64 %1229, i64* %PC
  %1230 = inttoptr i64 %1227 to i32*
  %1231 = load i32, i32* %1230
  %1232 = zext i32 %1231 to i64
  store i64 %1232, i64* %RCX, align 8, !tbaa !2428
  %1233 = load i64, i64* %RCX
  %1234 = load i64, i64* %PC
  %1235 = add i64 %1234, 3
  store i64 %1235, i64* %PC
  %1236 = trunc i64 %1233 to i32
  %1237 = sub i32 %1236, 1
  %1238 = zext i32 %1237 to i64
  store i64 %1238, i64* %RCX, align 8, !tbaa !2428
  %1239 = icmp ult i32 %1236, 1
  %1240 = zext i1 %1239 to i8
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1240, i8* %1241, align 1, !tbaa !2432
  %1242 = and i32 %1237, 255
  %1243 = call i32 @llvm.ctpop.i32(i32 %1242) #16
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1246, i8* %1247, align 1, !tbaa !2446
  %1248 = xor i64 1, %1233
  %1249 = trunc i64 %1248 to i32
  %1250 = xor i32 %1249, %1237
  %1251 = lshr i32 %1250, 4
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1253, i8* %1254, align 1, !tbaa !2447
  %1255 = icmp eq i32 %1237, 0
  %1256 = zext i1 %1255 to i8
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1256, i8* %1257, align 1, !tbaa !2448
  %1258 = lshr i32 %1237, 31
  %1259 = trunc i32 %1258 to i8
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1259, i8* %1260, align 1, !tbaa !2449
  %1261 = lshr i32 %1236, 31
  %1262 = xor i32 %1258, %1261
  %1263 = add nuw nsw i32 %1262, %1261
  %1264 = icmp eq i32 %1263, 2
  %1265 = zext i1 %1264 to i8
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1265, i8* %1266, align 1, !tbaa !2450
  %1267 = load i32, i32* %EAX
  %1268 = zext i32 %1267 to i64
  %1269 = load i32, i32* %ECX
  %1270 = zext i32 %1269 to i64
  %1271 = load i64, i64* %PC
  %1272 = add i64 %1271, 2
  store i64 %1272, i64* %PC
  %1273 = sub i32 %1267, %1269
  %1274 = icmp ult i32 %1267, %1269
  %1275 = zext i1 %1274 to i8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1275, i8* %1276, align 1, !tbaa !2432
  %1277 = and i32 %1273, 255
  %1278 = call i32 @llvm.ctpop.i32(i32 %1277) #16
  %1279 = trunc i32 %1278 to i8
  %1280 = and i8 %1279, 1
  %1281 = xor i8 %1280, 1
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1281, i8* %1282, align 1, !tbaa !2446
  %1283 = xor i64 %1270, %1268
  %1284 = trunc i64 %1283 to i32
  %1285 = xor i32 %1284, %1273
  %1286 = lshr i32 %1285, 4
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1288, i8* %1289, align 1, !tbaa !2447
  %1290 = icmp eq i32 %1273, 0
  %1291 = zext i1 %1290 to i8
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1291, i8* %1292, align 1, !tbaa !2448
  %1293 = lshr i32 %1273, 31
  %1294 = trunc i32 %1293 to i8
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1294, i8* %1295, align 1, !tbaa !2449
  %1296 = lshr i32 %1267, 31
  %1297 = lshr i32 %1269, 31
  %1298 = xor i32 %1297, %1296
  %1299 = xor i32 %1293, %1296
  %1300 = add nuw nsw i32 %1299, %1298
  %1301 = icmp eq i32 %1300, 2
  %1302 = zext i1 %1301 to i8
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1302, i8* %1303, align 1, !tbaa !2450
  %1304 = load i64, i64* %PC
  %1305 = add i64 %1304, 136
  %1306 = load i64, i64* %PC
  %1307 = add i64 %1306, 6
  %1308 = load i64, i64* %PC
  %1309 = add i64 %1308, 6
  store i64 %1309, i64* %PC
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1311 = load i8, i8* %1310, align 1, !tbaa !2448
  %1312 = icmp eq i8 %1311, 0
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1314 = load i8, i8* %1313, align 1, !tbaa !2449
  %1315 = icmp ne i8 %1314, 0
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1317 = load i8, i8* %1316, align 1, !tbaa !2450
  %1318 = icmp ne i8 %1317, 0
  %1319 = xor i1 %1315, %1318
  %1320 = xor i1 %1319, true
  %1321 = and i1 %1312, %1320
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1324 = select i1 %1321, i64 %1305, i64 %1307
  store i64 %1324, i64* %1323, align 8, !tbaa !2428
  %1325 = load i8, i8* %BRANCH_TAKEN
  %1326 = icmp eq i8 %1325, 1
  %1327 = load i64, i64* %RBP
  br i1 %1326, label %block_400df9, label %block_400d77

block_400e42:                                     ; preds = %block_400e36
  %1328 = load i64, i64* %RBP
  %1329 = sub i64 %1328, 16
  %1330 = load i64, i64* %PC
  %1331 = add i64 %1330, 4
  store i64 %1331, i64* %PC
  %1332 = inttoptr i64 %1329 to i64*
  %1333 = load i64, i64* %1332
  store i64 %1333, i64* %RAX, align 8, !tbaa !2428
  %1334 = load i64, i64* %RBP
  %1335 = sub i64 %1334, 60
  %1336 = load i64, i64* %PC
  %1337 = add i64 %1336, 4
  store i64 %1337, i64* %PC
  %1338 = inttoptr i64 %1335 to i32*
  %1339 = load i32, i32* %1338
  %1340 = sext i32 %1339 to i64
  store i64 %1340, i64* %RCX, align 8, !tbaa !2428
  %1341 = load i64, i64* %RCX
  %1342 = load i64, i64* %PC
  %1343 = add i64 %1342, 7
  store i64 %1343, i64* %PC
  %1344 = sext i64 %1341 to i128
  %1345 = and i128 %1344, -18446744073709551616
  %1346 = zext i64 %1341 to i128
  %1347 = or i128 %1345, %1346
  %1348 = mul nsw i128 32000, %1347
  %1349 = trunc i128 %1348 to i64
  store i64 %1349, i64* %RCX, align 8, !tbaa !2428
  %1350 = sext i64 %1349 to i128
  %1351 = icmp ne i128 %1350, %1348
  %1352 = zext i1 %1351 to i8
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1352, i8* %1353, align 1, !tbaa !2432
  %1354 = trunc i128 %1348 to i32
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1355, align 1, !tbaa !2446
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1356, align 1, !tbaa !2447
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1357, align 1, !tbaa !2448
  %1358 = lshr i64 %1349, 63
  %1359 = trunc i64 %1358 to i8
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1359, i8* %1360, align 1, !tbaa !2449
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1352, i8* %1361, align 1, !tbaa !2450
  %1362 = load i64, i64* %RAX
  %1363 = load i64, i64* %RCX
  %1364 = load i64, i64* %PC
  %1365 = add i64 %1364, 3
  store i64 %1365, i64* %PC
  %1366 = add i64 %1363, %1362
  store i64 %1366, i64* %RAX, align 8, !tbaa !2428
  %1367 = icmp ult i64 %1366, %1362
  %1368 = icmp ult i64 %1366, %1363
  %1369 = or i1 %1367, %1368
  %1370 = zext i1 %1369 to i8
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1370, i8* %1371, align 1, !tbaa !2432
  %1372 = trunc i64 %1366 to i32
  %1373 = and i32 %1372, 255
  %1374 = call i32 @llvm.ctpop.i32(i32 %1373) #16
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = xor i8 %1376, 1
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1377, i8* %1378, align 1, !tbaa !2446
  %1379 = xor i64 %1363, %1362
  %1380 = xor i64 %1379, %1366
  %1381 = lshr i64 %1380, 4
  %1382 = trunc i64 %1381 to i8
  %1383 = and i8 %1382, 1
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1383, i8* %1384, align 1, !tbaa !2447
  %1385 = icmp eq i64 %1366, 0
  %1386 = zext i1 %1385 to i8
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1386, i8* %1387, align 1, !tbaa !2448
  %1388 = lshr i64 %1366, 63
  %1389 = trunc i64 %1388 to i8
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1389, i8* %1390, align 1, !tbaa !2449
  %1391 = lshr i64 %1362, 63
  %1392 = lshr i64 %1363, 63
  %1393 = xor i64 %1388, %1391
  %1394 = xor i64 %1388, %1392
  %1395 = add nuw nsw i64 %1393, %1394
  %1396 = icmp eq i64 %1395, 2
  %1397 = zext i1 %1396 to i8
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1397, i8* %1398, align 1, !tbaa !2450
  %1399 = load i64, i64* %RBP
  %1400 = sub i64 %1399, 4
  %1401 = load i64, i64* %PC
  %1402 = add i64 %1401, 3
  store i64 %1402, i64* %PC
  %1403 = inttoptr i64 %1400 to i32*
  %1404 = load i32, i32* %1403
  %1405 = zext i32 %1404 to i64
  store i64 %1405, i64* %RDX, align 8, !tbaa !2428
  %1406 = load i64, i64* %RDX
  %1407 = load i64, i64* %PC
  %1408 = add i64 %1407, 3
  store i64 %1408, i64* %PC
  %1409 = trunc i64 %1406 to i32
  %1410 = sub i32 %1409, 1
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %RDX, align 8, !tbaa !2428
  %1412 = icmp ult i32 %1409, 1
  %1413 = zext i1 %1412 to i8
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1413, i8* %1414, align 1, !tbaa !2432
  %1415 = and i32 %1410, 255
  %1416 = call i32 @llvm.ctpop.i32(i32 %1415) #16
  %1417 = trunc i32 %1416 to i8
  %1418 = and i8 %1417, 1
  %1419 = xor i8 %1418, 1
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1419, i8* %1420, align 1, !tbaa !2446
  %1421 = xor i64 1, %1406
  %1422 = trunc i64 %1421 to i32
  %1423 = xor i32 %1422, %1410
  %1424 = lshr i32 %1423, 4
  %1425 = trunc i32 %1424 to i8
  %1426 = and i8 %1425, 1
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1426, i8* %1427, align 1, !tbaa !2447
  %1428 = icmp eq i32 %1410, 0
  %1429 = zext i1 %1428 to i8
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1429, i8* %1430, align 1, !tbaa !2448
  %1431 = lshr i32 %1410, 31
  %1432 = trunc i32 %1431 to i8
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1432, i8* %1433, align 1, !tbaa !2449
  %1434 = lshr i32 %1409, 31
  %1435 = xor i32 %1431, %1434
  %1436 = add nuw nsw i32 %1435, %1434
  %1437 = icmp eq i32 %1436, 2
  %1438 = zext i1 %1437 to i8
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1438, i8* %1439, align 1, !tbaa !2450
  %1440 = load i32, i32* %EDX
  %1441 = zext i32 %1440 to i64
  %1442 = load i64, i64* %PC
  %1443 = add i64 %1442, 3
  store i64 %1443, i64* %PC
  %1444 = shl i64 %1441, 32
  %1445 = ashr exact i64 %1444, 32
  store i64 %1445, i64* %RCX, align 8, !tbaa !2428
  %1446 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1447 = load i64, i64* %RAX
  %1448 = load i64, i64* %RCX
  %1449 = mul i64 %1448, 8
  %1450 = add i64 %1449, %1447
  %1451 = load i64, i64* %PC
  %1452 = add i64 %1451, 5
  store i64 %1452, i64* %PC
  %1453 = inttoptr i64 %1450 to double*
  %1454 = load double, double* %1453
  %1455 = bitcast i8* %1446 to double*
  store double %1454, double* %1455, align 1, !tbaa !2453
  %1456 = getelementptr inbounds i8, i8* %1446, i64 8
  %1457 = bitcast i8* %1456 to double*
  store double 0.000000e+00, double* %1457, align 1, !tbaa !2453
  %1458 = load i64, i64* %RBP
  %1459 = sub i64 %1458, 56
  %1460 = load i64, i64* %PC
  %1461 = add i64 %1460, 4
  store i64 %1461, i64* %PC
  %1462 = inttoptr i64 %1459 to i64*
  %1463 = load i64, i64* %1462
  store i64 %1463, i64* %RAX, align 8, !tbaa !2428
  %1464 = load i64, i64* %RBP
  %1465 = sub i64 %1464, 60
  %1466 = load i64, i64* %PC
  %1467 = add i64 %1466, 4
  store i64 %1467, i64* %PC
  %1468 = inttoptr i64 %1465 to i32*
  %1469 = load i32, i32* %1468
  %1470 = sext i32 %1469 to i64
  store i64 %1470, i64* %RCX, align 8, !tbaa !2428
  %1471 = load i64, i64* %RAX
  %1472 = load i64, i64* %RCX
  %1473 = mul i64 %1472, 8
  %1474 = add i64 %1473, %1471
  %1475 = bitcast %union.vec128_t* %XMM0 to i8*
  %1476 = load i64, i64* %PC
  %1477 = add i64 %1476, 5
  store i64 %1477, i64* %PC
  %1478 = bitcast i8* %1475 to double*
  %1479 = load double, double* %1478, align 1
  %1480 = inttoptr i64 %1474 to double*
  store double %1479, double* %1480
  %1481 = load i64, i64* %RBP
  %1482 = sub i64 %1481, 60
  %1483 = load i64, i64* %PC
  %1484 = add i64 %1483, 3
  store i64 %1484, i64* %PC
  %1485 = inttoptr i64 %1482 to i32*
  %1486 = load i32, i32* %1485
  %1487 = zext i32 %1486 to i64
  store i64 %1487, i64* %RAX, align 8, !tbaa !2428
  %1488 = load i64, i64* %RAX
  %1489 = load i64, i64* %PC
  %1490 = add i64 %1489, 3
  store i64 %1490, i64* %PC
  %1491 = trunc i64 %1488 to i32
  %1492 = add i32 1, %1491
  %1493 = zext i32 %1492 to i64
  store i64 %1493, i64* %RAX, align 8, !tbaa !2428
  %1494 = icmp ult i32 %1492, %1491
  %1495 = icmp ult i32 %1492, 1
  %1496 = or i1 %1494, %1495
  %1497 = zext i1 %1496 to i8
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1497, i8* %1498, align 1, !tbaa !2432
  %1499 = and i32 %1492, 255
  %1500 = call i32 @llvm.ctpop.i32(i32 %1499) #16
  %1501 = trunc i32 %1500 to i8
  %1502 = and i8 %1501, 1
  %1503 = xor i8 %1502, 1
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1503, i8* %1504, align 1, !tbaa !2446
  %1505 = xor i64 1, %1488
  %1506 = trunc i64 %1505 to i32
  %1507 = xor i32 %1506, %1492
  %1508 = lshr i32 %1507, 4
  %1509 = trunc i32 %1508 to i8
  %1510 = and i8 %1509, 1
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1510, i8* %1511, align 1, !tbaa !2447
  %1512 = icmp eq i32 %1492, 0
  %1513 = zext i1 %1512 to i8
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1513, i8* %1514, align 1, !tbaa !2448
  %1515 = lshr i32 %1492, 31
  %1516 = trunc i32 %1515 to i8
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1516, i8* %1517, align 1, !tbaa !2449
  %1518 = lshr i32 %1491, 31
  %1519 = xor i32 %1515, %1518
  %1520 = add nuw nsw i32 %1519, %1515
  %1521 = icmp eq i32 %1520, 2
  %1522 = zext i1 %1521 to i8
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1522, i8* %1523, align 1, !tbaa !2450
  %1524 = load i64, i64* %RBP
  %1525 = sub i64 %1524, 60
  %1526 = load i32, i32* %EAX
  %1527 = zext i32 %1526 to i64
  %1528 = load i64, i64* %PC
  %1529 = add i64 %1528, 3
  store i64 %1529, i64* %PC
  %1530 = inttoptr i64 %1525 to i32*
  store i32 %1526, i32* %1530
  %1531 = load i64, i64* %PC
  %1532 = sub i64 %1531, 66
  %1533 = load i64, i64* %PC
  %1534 = add i64 %1533, 5
  store i64 %1534, i64* %PC
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1532, i64* %1535, align 8, !tbaa !2428
  br label %block_400e36

block_400c91:                                     ; preds = %block_400c80
  %1536 = load i64, i64* %RBP
  %1537 = sub i64 %1536, 24
  %1538 = load i64, i64* %PC
  %1539 = add i64 %1538, 4
  store i64 %1539, i64* %PC
  %1540 = inttoptr i64 %1537 to i64*
  %1541 = load i64, i64* %1540
  store i64 %1541, i64* %RAX, align 8, !tbaa !2428
  %1542 = load i64, i64* %RBP
  %1543 = sub i64 %1542, 60
  %1544 = load i64, i64* %PC
  %1545 = add i64 %1544, 4
  store i64 %1545, i64* %PC
  %1546 = inttoptr i64 %1543 to i32*
  %1547 = load i32, i32* %1546
  %1548 = sext i32 %1547 to i64
  store i64 %1548, i64* %RCX, align 8, !tbaa !2428
  %1549 = load i64, i64* %RCX
  %1550 = load i64, i64* %PC
  %1551 = add i64 %1550, 7
  store i64 %1551, i64* %PC
  %1552 = sext i64 %1549 to i128
  %1553 = and i128 %1552, -18446744073709551616
  %1554 = zext i64 %1549 to i128
  %1555 = or i128 %1553, %1554
  %1556 = mul nsw i128 32000, %1555
  %1557 = trunc i128 %1556 to i64
  store i64 %1557, i64* %RCX, align 8, !tbaa !2428
  %1558 = sext i64 %1557 to i128
  %1559 = icmp ne i128 %1558, %1556
  %1560 = zext i1 %1559 to i8
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1560, i8* %1561, align 1, !tbaa !2432
  %1562 = trunc i128 %1556 to i32
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1563, align 1, !tbaa !2446
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1564, align 1, !tbaa !2447
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1565, align 1, !tbaa !2448
  %1566 = lshr i64 %1557, 63
  %1567 = trunc i64 %1566 to i8
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1567, i8* %1568, align 1, !tbaa !2449
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1560, i8* %1569, align 1, !tbaa !2450
  %1570 = load i64, i64* %RAX
  %1571 = load i64, i64* %RCX
  %1572 = load i64, i64* %PC
  %1573 = add i64 %1572, 3
  store i64 %1573, i64* %PC
  %1574 = add i64 %1571, %1570
  store i64 %1574, i64* %RAX, align 8, !tbaa !2428
  %1575 = icmp ult i64 %1574, %1570
  %1576 = icmp ult i64 %1574, %1571
  %1577 = or i1 %1575, %1576
  %1578 = zext i1 %1577 to i8
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1578, i8* %1579, align 1, !tbaa !2432
  %1580 = trunc i64 %1574 to i32
  %1581 = and i32 %1580, 255
  %1582 = call i32 @llvm.ctpop.i32(i32 %1581) #16
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  %1585 = xor i8 %1584, 1
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1585, i8* %1586, align 1, !tbaa !2446
  %1587 = xor i64 %1571, %1570
  %1588 = xor i64 %1587, %1574
  %1589 = lshr i64 %1588, 4
  %1590 = trunc i64 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1591, i8* %1592, align 1, !tbaa !2447
  %1593 = icmp eq i64 %1574, 0
  %1594 = zext i1 %1593 to i8
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1594, i8* %1595, align 1, !tbaa !2448
  %1596 = lshr i64 %1574, 63
  %1597 = trunc i64 %1596 to i8
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1597, i8* %1598, align 1, !tbaa !2449
  %1599 = lshr i64 %1570, 63
  %1600 = lshr i64 %1571, 63
  %1601 = xor i64 %1596, %1599
  %1602 = xor i64 %1596, %1600
  %1603 = add nuw nsw i64 %1601, %1602
  %1604 = icmp eq i64 %1603, 2
  %1605 = zext i1 %1604 to i8
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1605, i8* %1606, align 1, !tbaa !2450
  %1607 = load i64, i64* %RBP
  %1608 = sub i64 %1607, 64
  %1609 = load i64, i64* %PC
  %1610 = add i64 %1609, 4
  store i64 %1610, i64* %PC
  %1611 = inttoptr i64 %1608 to i32*
  %1612 = load i32, i32* %1611
  %1613 = sext i32 %1612 to i64
  store i64 %1613, i64* %RCX, align 8, !tbaa !2428
  %1614 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1615 = load i64, i64* %RAX
  %1616 = load i64, i64* %RCX
  %1617 = mul i64 %1616, 8
  %1618 = add i64 %1617, %1615
  %1619 = load i64, i64* %PC
  %1620 = add i64 %1619, 5
  store i64 %1620, i64* %PC
  %1621 = inttoptr i64 %1618 to double*
  %1622 = load double, double* %1621
  %1623 = bitcast i8* %1614 to double*
  store double %1622, double* %1623, align 1, !tbaa !2453
  %1624 = getelementptr inbounds i8, i8* %1614, i64 8
  %1625 = bitcast i8* %1624 to double*
  store double 0.000000e+00, double* %1625, align 1, !tbaa !2453
  %1626 = load i64, i64* %RBP
  %1627 = sub i64 %1626, 48
  %1628 = load i64, i64* %PC
  %1629 = add i64 %1628, 4
  store i64 %1629, i64* %PC
  %1630 = inttoptr i64 %1627 to i64*
  %1631 = load i64, i64* %1630
  store i64 %1631, i64* %RAX, align 8, !tbaa !2428
  %1632 = load i64, i64* %RBP
  %1633 = sub i64 %1632, 64
  %1634 = load i64, i64* %PC
  %1635 = add i64 %1634, 3
  store i64 %1635, i64* %PC
  %1636 = inttoptr i64 %1633 to i32*
  %1637 = load i32, i32* %1636
  %1638 = zext i32 %1637 to i64
  store i64 %1638, i64* %RDX, align 8, !tbaa !2428
  %1639 = load i64, i64* %RDX
  %1640 = load i64, i64* %RBP
  %1641 = sub i64 %1640, 60
  %1642 = load i64, i64* %PC
  %1643 = add i64 %1642, 3
  store i64 %1643, i64* %PC
  %1644 = trunc i64 %1639 to i32
  %1645 = inttoptr i64 %1641 to i32*
  %1646 = load i32, i32* %1645
  %1647 = sub i32 %1644, %1646
  %1648 = zext i32 %1647 to i64
  store i64 %1648, i64* %RDX, align 8, !tbaa !2428
  %1649 = icmp ult i32 %1644, %1646
  %1650 = zext i1 %1649 to i8
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1650, i8* %1651, align 1, !tbaa !2432
  %1652 = and i32 %1647, 255
  %1653 = call i32 @llvm.ctpop.i32(i32 %1652) #16
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  %1656 = xor i8 %1655, 1
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1656, i8* %1657, align 1, !tbaa !2446
  %1658 = xor i32 %1646, %1644
  %1659 = xor i32 %1658, %1647
  %1660 = lshr i32 %1659, 4
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1662, i8* %1663, align 1, !tbaa !2447
  %1664 = icmp eq i32 %1647, 0
  %1665 = zext i1 %1664 to i8
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1665, i8* %1666, align 1, !tbaa !2448
  %1667 = lshr i32 %1647, 31
  %1668 = trunc i32 %1667 to i8
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1668, i8* %1669, align 1, !tbaa !2449
  %1670 = lshr i32 %1644, 31
  %1671 = lshr i32 %1646, 31
  %1672 = xor i32 %1671, %1670
  %1673 = xor i32 %1667, %1670
  %1674 = add nuw nsw i32 %1673, %1672
  %1675 = icmp eq i32 %1674, 2
  %1676 = zext i1 %1675 to i8
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1676, i8* %1677, align 1, !tbaa !2450
  %1678 = load i64, i64* %RDX
  %1679 = load i64, i64* %PC
  %1680 = add i64 %1679, 3
  store i64 %1680, i64* %PC
  %1681 = trunc i64 %1678 to i32
  %1682 = sub i32 %1681, 1
  %1683 = zext i32 %1682 to i64
  store i64 %1683, i64* %RDX, align 8, !tbaa !2428
  %1684 = icmp ult i32 %1681, 1
  %1685 = zext i1 %1684 to i8
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1685, i8* %1686, align 1, !tbaa !2432
  %1687 = and i32 %1682, 255
  %1688 = call i32 @llvm.ctpop.i32(i32 %1687) #16
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  %1691 = xor i8 %1690, 1
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1691, i8* %1692, align 1, !tbaa !2446
  %1693 = xor i64 1, %1678
  %1694 = trunc i64 %1693 to i32
  %1695 = xor i32 %1694, %1682
  %1696 = lshr i32 %1695, 4
  %1697 = trunc i32 %1696 to i8
  %1698 = and i8 %1697, 1
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1698, i8* %1699, align 1, !tbaa !2447
  %1700 = icmp eq i32 %1682, 0
  %1701 = zext i1 %1700 to i8
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1701, i8* %1702, align 1, !tbaa !2448
  %1703 = lshr i32 %1682, 31
  %1704 = trunc i32 %1703 to i8
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1704, i8* %1705, align 1, !tbaa !2449
  %1706 = lshr i32 %1681, 31
  %1707 = xor i32 %1703, %1706
  %1708 = add nuw nsw i32 %1707, %1706
  %1709 = icmp eq i32 %1708, 2
  %1710 = zext i1 %1709 to i8
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1710, i8* %1711, align 1, !tbaa !2450
  %1712 = load i32, i32* %EDX
  %1713 = zext i32 %1712 to i64
  %1714 = load i64, i64* %PC
  %1715 = add i64 %1714, 3
  store i64 %1715, i64* %PC
  %1716 = shl i64 %1713, 32
  %1717 = ashr exact i64 %1716, 32
  store i64 %1717, i64* %RCX, align 8, !tbaa !2428
  %1718 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1719 = load i64, i64* %RAX
  %1720 = load i64, i64* %RCX
  %1721 = mul i64 %1720, 8
  %1722 = add i64 %1721, %1719
  %1723 = load i64, i64* %PC
  %1724 = add i64 %1723, 5
  store i64 %1724, i64* %PC
  %1725 = inttoptr i64 %1722 to double*
  %1726 = load double, double* %1725
  %1727 = bitcast i8* %1718 to double*
  store double %1726, double* %1727, align 1, !tbaa !2453
  %1728 = getelementptr inbounds i8, i8* %1718, i64 8
  %1729 = bitcast i8* %1728 to double*
  store double 0.000000e+00, double* %1729, align 1, !tbaa !2453
  %1730 = load i64, i64* %RBP
  %1731 = sub i64 %1730, 16
  %1732 = load i64, i64* %PC
  %1733 = add i64 %1732, 4
  store i64 %1733, i64* %PC
  %1734 = inttoptr i64 %1731 to i64*
  %1735 = load i64, i64* %1734
  store i64 %1735, i64* %RAX, align 8, !tbaa !2428
  %1736 = load i64, i64* %RBP
  %1737 = sub i64 %1736, 60
  %1738 = load i64, i64* %PC
  %1739 = add i64 %1738, 4
  store i64 %1739, i64* %PC
  %1740 = inttoptr i64 %1737 to i32*
  %1741 = load i32, i32* %1740
  %1742 = sext i32 %1741 to i64
  store i64 %1742, i64* %RCX, align 8, !tbaa !2428
  %1743 = load i64, i64* %RCX
  %1744 = load i64, i64* %PC
  %1745 = add i64 %1744, 7
  store i64 %1745, i64* %PC
  %1746 = sext i64 %1743 to i128
  %1747 = and i128 %1746, -18446744073709551616
  %1748 = zext i64 %1743 to i128
  %1749 = or i128 %1747, %1748
  %1750 = mul nsw i128 32000, %1749
  %1751 = trunc i128 %1750 to i64
  store i64 %1751, i64* %RCX, align 8, !tbaa !2428
  %1752 = sext i64 %1751 to i128
  %1753 = icmp ne i128 %1752, %1750
  %1754 = zext i1 %1753 to i8
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1754, i8* %1755, align 1, !tbaa !2432
  %1756 = trunc i128 %1750 to i32
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1757, align 1, !tbaa !2446
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1758, align 1, !tbaa !2447
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1759, align 1, !tbaa !2448
  %1760 = lshr i64 %1751, 63
  %1761 = trunc i64 %1760 to i8
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1761, i8* %1762, align 1, !tbaa !2449
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1754, i8* %1763, align 1, !tbaa !2450
  %1764 = load i64, i64* %RAX
  %1765 = load i64, i64* %RCX
  %1766 = load i64, i64* %PC
  %1767 = add i64 %1766, 3
  store i64 %1767, i64* %PC
  %1768 = add i64 %1765, %1764
  store i64 %1768, i64* %RAX, align 8, !tbaa !2428
  %1769 = icmp ult i64 %1768, %1764
  %1770 = icmp ult i64 %1768, %1765
  %1771 = or i1 %1769, %1770
  %1772 = zext i1 %1771 to i8
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1772, i8* %1773, align 1, !tbaa !2432
  %1774 = trunc i64 %1768 to i32
  %1775 = and i32 %1774, 255
  %1776 = call i32 @llvm.ctpop.i32(i32 %1775) #16
  %1777 = trunc i32 %1776 to i8
  %1778 = and i8 %1777, 1
  %1779 = xor i8 %1778, 1
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1779, i8* %1780, align 1, !tbaa !2446
  %1781 = xor i64 %1765, %1764
  %1782 = xor i64 %1781, %1768
  %1783 = lshr i64 %1782, 4
  %1784 = trunc i64 %1783 to i8
  %1785 = and i8 %1784, 1
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1785, i8* %1786, align 1, !tbaa !2447
  %1787 = icmp eq i64 %1768, 0
  %1788 = zext i1 %1787 to i8
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1788, i8* %1789, align 1, !tbaa !2448
  %1790 = lshr i64 %1768, 63
  %1791 = trunc i64 %1790 to i8
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1791, i8* %1792, align 1, !tbaa !2449
  %1793 = lshr i64 %1764, 63
  %1794 = lshr i64 %1765, 63
  %1795 = xor i64 %1790, %1793
  %1796 = xor i64 %1790, %1794
  %1797 = add nuw nsw i64 %1795, %1796
  %1798 = icmp eq i64 %1797, 2
  %1799 = zext i1 %1798 to i8
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1799, i8* %1800, align 1, !tbaa !2450
  %1801 = load i64, i64* %RBP
  %1802 = sub i64 %1801, 64
  %1803 = load i64, i64* %PC
  %1804 = add i64 %1803, 3
  store i64 %1804, i64* %PC
  %1805 = inttoptr i64 %1802 to i32*
  %1806 = load i32, i32* %1805
  %1807 = zext i32 %1806 to i64
  store i64 %1807, i64* %RDX, align 8, !tbaa !2428
  %1808 = load i64, i64* %RDX
  %1809 = load i64, i64* %PC
  %1810 = add i64 %1809, 3
  store i64 %1810, i64* %PC
  %1811 = trunc i64 %1808 to i32
  %1812 = sub i32 %1811, 1
  %1813 = zext i32 %1812 to i64
  store i64 %1813, i64* %RDX, align 8, !tbaa !2428
  %1814 = icmp ult i32 %1811, 1
  %1815 = zext i1 %1814 to i8
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1815, i8* %1816, align 1, !tbaa !2432
  %1817 = and i32 %1812, 255
  %1818 = call i32 @llvm.ctpop.i32(i32 %1817) #16
  %1819 = trunc i32 %1818 to i8
  %1820 = and i8 %1819, 1
  %1821 = xor i8 %1820, 1
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1821, i8* %1822, align 1, !tbaa !2446
  %1823 = xor i64 1, %1808
  %1824 = trunc i64 %1823 to i32
  %1825 = xor i32 %1824, %1812
  %1826 = lshr i32 %1825, 4
  %1827 = trunc i32 %1826 to i8
  %1828 = and i8 %1827, 1
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1828, i8* %1829, align 1, !tbaa !2447
  %1830 = icmp eq i32 %1812, 0
  %1831 = zext i1 %1830 to i8
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1831, i8* %1832, align 1, !tbaa !2448
  %1833 = lshr i32 %1812, 31
  %1834 = trunc i32 %1833 to i8
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1834, i8* %1835, align 1, !tbaa !2449
  %1836 = lshr i32 %1811, 31
  %1837 = xor i32 %1833, %1836
  %1838 = add nuw nsw i32 %1837, %1836
  %1839 = icmp eq i32 %1838, 2
  %1840 = zext i1 %1839 to i8
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1840, i8* %1841, align 1, !tbaa !2450
  %1842 = load i32, i32* %EDX
  %1843 = zext i32 %1842 to i64
  %1844 = load i64, i64* %PC
  %1845 = add i64 %1844, 3
  store i64 %1845, i64* %PC
  %1846 = shl i64 %1843, 32
  %1847 = ashr exact i64 %1846, 32
  store i64 %1847, i64* %RCX, align 8, !tbaa !2428
  %1848 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1849 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1850 = load i64, i64* %RAX
  %1851 = load i64, i64* %RCX
  %1852 = mul i64 %1851, 8
  %1853 = add i64 %1852, %1850
  %1854 = load i64, i64* %PC
  %1855 = add i64 %1854, 5
  store i64 %1855, i64* %PC
  %1856 = bitcast i8* %1849 to double*
  %1857 = load double, double* %1856, align 1
  %1858 = getelementptr inbounds i8, i8* %1849, i64 8
  %1859 = bitcast i8* %1858 to i64*
  %1860 = load i64, i64* %1859, align 1
  %1861 = inttoptr i64 %1853 to double*
  %1862 = load double, double* %1861
  %1863 = fmul double %1857, %1862
  %1864 = bitcast i8* %1848 to double*
  store double %1863, double* %1864, align 1, !tbaa !2453
  %1865 = getelementptr inbounds i8, i8* %1848, i64 8
  %1866 = bitcast i8* %1865 to i64*
  store i64 %1860, i64* %1866, align 1, !tbaa !2453
  %1867 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1868 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1869 = bitcast %union.vec128_t* %XMM1 to i8*
  %1870 = load i64, i64* %PC
  %1871 = add i64 %1870, 4
  store i64 %1871, i64* %PC
  %1872 = bitcast i8* %1868 to double*
  %1873 = load double, double* %1872, align 1
  %1874 = getelementptr inbounds i8, i8* %1868, i64 8
  %1875 = bitcast i8* %1874 to i64*
  %1876 = load i64, i64* %1875, align 1
  %1877 = bitcast i8* %1869 to double*
  %1878 = load double, double* %1877, align 1
  %1879 = fadd double %1873, %1878
  %1880 = bitcast i8* %1867 to double*
  store double %1879, double* %1880, align 1, !tbaa !2453
  %1881 = getelementptr inbounds i8, i8* %1867, i64 8
  %1882 = bitcast i8* %1881 to i64*
  store i64 %1876, i64* %1882, align 1, !tbaa !2453
  %1883 = load i64, i64* %RBP
  %1884 = sub i64 %1883, 24
  %1885 = load i64, i64* %PC
  %1886 = add i64 %1885, 4
  store i64 %1886, i64* %PC
  %1887 = inttoptr i64 %1884 to i64*
  %1888 = load i64, i64* %1887
  store i64 %1888, i64* %RAX, align 8, !tbaa !2428
  %1889 = load i64, i64* %RBP
  %1890 = sub i64 %1889, 60
  %1891 = load i64, i64* %PC
  %1892 = add i64 %1891, 3
  store i64 %1892, i64* %PC
  %1893 = inttoptr i64 %1890 to i32*
  %1894 = load i32, i32* %1893
  %1895 = zext i32 %1894 to i64
  store i64 %1895, i64* %RDX, align 8, !tbaa !2428
  %1896 = load i64, i64* %RDX
  %1897 = load i64, i64* %PC
  %1898 = add i64 %1897, 3
  store i64 %1898, i64* %PC
  %1899 = trunc i64 %1896 to i32
  %1900 = add i32 1, %1899
  %1901 = zext i32 %1900 to i64
  store i64 %1901, i64* %RDX, align 8, !tbaa !2428
  %1902 = icmp ult i32 %1900, %1899
  %1903 = icmp ult i32 %1900, 1
  %1904 = or i1 %1902, %1903
  %1905 = zext i1 %1904 to i8
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1905, i8* %1906, align 1, !tbaa !2432
  %1907 = and i32 %1900, 255
  %1908 = call i32 @llvm.ctpop.i32(i32 %1907) #16
  %1909 = trunc i32 %1908 to i8
  %1910 = and i8 %1909, 1
  %1911 = xor i8 %1910, 1
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1911, i8* %1912, align 1, !tbaa !2446
  %1913 = xor i64 1, %1896
  %1914 = trunc i64 %1913 to i32
  %1915 = xor i32 %1914, %1900
  %1916 = lshr i32 %1915, 4
  %1917 = trunc i32 %1916 to i8
  %1918 = and i8 %1917, 1
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1918, i8* %1919, align 1, !tbaa !2447
  %1920 = icmp eq i32 %1900, 0
  %1921 = zext i1 %1920 to i8
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1921, i8* %1922, align 1, !tbaa !2448
  %1923 = lshr i32 %1900, 31
  %1924 = trunc i32 %1923 to i8
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1924, i8* %1925, align 1, !tbaa !2449
  %1926 = lshr i32 %1899, 31
  %1927 = xor i32 %1923, %1926
  %1928 = add nuw nsw i32 %1927, %1923
  %1929 = icmp eq i32 %1928, 2
  %1930 = zext i1 %1929 to i8
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1930, i8* %1931, align 1, !tbaa !2450
  %1932 = load i32, i32* %EDX
  %1933 = zext i32 %1932 to i64
  %1934 = load i64, i64* %PC
  %1935 = add i64 %1934, 3
  store i64 %1935, i64* %PC
  %1936 = shl i64 %1933, 32
  %1937 = ashr exact i64 %1936, 32
  store i64 %1937, i64* %RCX, align 8, !tbaa !2428
  %1938 = load i64, i64* %RCX
  %1939 = load i64, i64* %PC
  %1940 = add i64 %1939, 7
  store i64 %1940, i64* %PC
  %1941 = sext i64 %1938 to i128
  %1942 = and i128 %1941, -18446744073709551616
  %1943 = zext i64 %1938 to i128
  %1944 = or i128 %1942, %1943
  %1945 = mul nsw i128 32000, %1944
  %1946 = trunc i128 %1945 to i64
  store i64 %1946, i64* %RCX, align 8, !tbaa !2428
  %1947 = sext i64 %1946 to i128
  %1948 = icmp ne i128 %1947, %1945
  %1949 = zext i1 %1948 to i8
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1949, i8* %1950, align 1, !tbaa !2432
  %1951 = trunc i128 %1945 to i32
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1952, align 1, !tbaa !2446
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1953, align 1, !tbaa !2447
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1954, align 1, !tbaa !2448
  %1955 = lshr i64 %1946, 63
  %1956 = trunc i64 %1955 to i8
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1956, i8* %1957, align 1, !tbaa !2449
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1949, i8* %1958, align 1, !tbaa !2450
  %1959 = load i64, i64* %RAX
  %1960 = load i64, i64* %RCX
  %1961 = load i64, i64* %PC
  %1962 = add i64 %1961, 3
  store i64 %1962, i64* %PC
  %1963 = add i64 %1960, %1959
  store i64 %1963, i64* %RAX, align 8, !tbaa !2428
  %1964 = icmp ult i64 %1963, %1959
  %1965 = icmp ult i64 %1963, %1960
  %1966 = or i1 %1964, %1965
  %1967 = zext i1 %1966 to i8
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1967, i8* %1968, align 1, !tbaa !2432
  %1969 = trunc i64 %1963 to i32
  %1970 = and i32 %1969, 255
  %1971 = call i32 @llvm.ctpop.i32(i32 %1970) #16
  %1972 = trunc i32 %1971 to i8
  %1973 = and i8 %1972, 1
  %1974 = xor i8 %1973, 1
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1974, i8* %1975, align 1, !tbaa !2446
  %1976 = xor i64 %1960, %1959
  %1977 = xor i64 %1976, %1963
  %1978 = lshr i64 %1977, 4
  %1979 = trunc i64 %1978 to i8
  %1980 = and i8 %1979, 1
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1980, i8* %1981, align 1, !tbaa !2447
  %1982 = icmp eq i64 %1963, 0
  %1983 = zext i1 %1982 to i8
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1983, i8* %1984, align 1, !tbaa !2448
  %1985 = lshr i64 %1963, 63
  %1986 = trunc i64 %1985 to i8
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1986, i8* %1987, align 1, !tbaa !2449
  %1988 = lshr i64 %1959, 63
  %1989 = lshr i64 %1960, 63
  %1990 = xor i64 %1985, %1988
  %1991 = xor i64 %1985, %1989
  %1992 = add nuw nsw i64 %1990, %1991
  %1993 = icmp eq i64 %1992, 2
  %1994 = zext i1 %1993 to i8
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1994, i8* %1995, align 1, !tbaa !2450
  %1996 = load i64, i64* %RBP
  %1997 = sub i64 %1996, 64
  %1998 = load i64, i64* %PC
  %1999 = add i64 %1998, 4
  store i64 %1999, i64* %PC
  %2000 = inttoptr i64 %1997 to i32*
  %2001 = load i32, i32* %2000
  %2002 = sext i32 %2001 to i64
  store i64 %2002, i64* %RCX, align 8, !tbaa !2428
  %2003 = load i64, i64* %RAX
  %2004 = load i64, i64* %RCX
  %2005 = mul i64 %2004, 8
  %2006 = add i64 %2005, %2003
  %2007 = bitcast %union.vec128_t* %XMM0 to i8*
  %2008 = load i64, i64* %PC
  %2009 = add i64 %2008, 5
  store i64 %2009, i64* %PC
  %2010 = bitcast i8* %2007 to double*
  %2011 = load double, double* %2010, align 1
  %2012 = inttoptr i64 %2006 to double*
  store double %2011, double* %2012
  %2013 = load i64, i64* %RBP
  %2014 = sub i64 %2013, 60
  %2015 = load i64, i64* %PC
  %2016 = add i64 %2015, 3
  store i64 %2016, i64* %PC
  %2017 = inttoptr i64 %2014 to i32*
  %2018 = load i32, i32* %2017
  %2019 = zext i32 %2018 to i64
  store i64 %2019, i64* %RAX, align 8, !tbaa !2428
  %2020 = load i64, i64* %RAX
  %2021 = load i64, i64* %PC
  %2022 = add i64 %2021, 3
  store i64 %2022, i64* %PC
  %2023 = trunc i64 %2020 to i32
  %2024 = add i32 1, %2023
  %2025 = zext i32 %2024 to i64
  store i64 %2025, i64* %RAX, align 8, !tbaa !2428
  %2026 = icmp ult i32 %2024, %2023
  %2027 = icmp ult i32 %2024, 1
  %2028 = or i1 %2026, %2027
  %2029 = zext i1 %2028 to i8
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2029, i8* %2030, align 1, !tbaa !2432
  %2031 = and i32 %2024, 255
  %2032 = call i32 @llvm.ctpop.i32(i32 %2031) #16
  %2033 = trunc i32 %2032 to i8
  %2034 = and i8 %2033, 1
  %2035 = xor i8 %2034, 1
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2035, i8* %2036, align 1, !tbaa !2446
  %2037 = xor i64 1, %2020
  %2038 = trunc i64 %2037 to i32
  %2039 = xor i32 %2038, %2024
  %2040 = lshr i32 %2039, 4
  %2041 = trunc i32 %2040 to i8
  %2042 = and i8 %2041, 1
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2042, i8* %2043, align 1, !tbaa !2447
  %2044 = icmp eq i32 %2024, 0
  %2045 = zext i1 %2044 to i8
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2045, i8* %2046, align 1, !tbaa !2448
  %2047 = lshr i32 %2024, 31
  %2048 = trunc i32 %2047 to i8
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2048, i8* %2049, align 1, !tbaa !2449
  %2050 = lshr i32 %2023, 31
  %2051 = xor i32 %2047, %2050
  %2052 = add nuw nsw i32 %2051, %2047
  %2053 = icmp eq i32 %2052, 2
  %2054 = zext i1 %2053 to i8
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2054, i8* %2055, align 1, !tbaa !2450
  %2056 = load i64, i64* %RBP
  %2057 = sub i64 %2056, 60
  %2058 = load i32, i32* %EAX
  %2059 = zext i32 %2058 to i64
  %2060 = load i64, i64* %PC
  %2061 = add i64 %2060, 3
  store i64 %2061, i64* %PC
  %2062 = inttoptr i64 %2057 to i32*
  store i32 %2058, i32* %2062
  %2063 = load i64, i64* %PC
  %2064 = sub i64 %2063, 142
  %2065 = load i64, i64* %PC
  %2066 = add i64 %2065, 5
  store i64 %2066, i64* %PC
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2064, i64* %2067, align 8, !tbaa !2428
  br label %block_400c80

block_400c80:                                     ; preds = %block_400c06, %block_400c91
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_400c06 ], [ %MEMORY.3, %block_400c91 ]
  %2068 = load i64, i64* %RBP
  %2069 = sub i64 %2068, 60
  %2070 = load i64, i64* %PC
  %2071 = add i64 %2070, 3
  store i64 %2071, i64* %PC
  %2072 = inttoptr i64 %2069 to i32*
  %2073 = load i32, i32* %2072
  %2074 = zext i32 %2073 to i64
  store i64 %2074, i64* %RAX, align 8, !tbaa !2428
  %2075 = load i64, i64* %RBP
  %2076 = sub i64 %2075, 64
  %2077 = load i64, i64* %PC
  %2078 = add i64 %2077, 3
  store i64 %2078, i64* %PC
  %2079 = inttoptr i64 %2076 to i32*
  %2080 = load i32, i32* %2079
  %2081 = zext i32 %2080 to i64
  store i64 %2081, i64* %RCX, align 8, !tbaa !2428
  %2082 = load i64, i64* %RCX
  %2083 = load i64, i64* %PC
  %2084 = add i64 %2083, 3
  store i64 %2084, i64* %PC
  %2085 = trunc i64 %2082 to i32
  %2086 = sub i32 %2085, 1
  %2087 = zext i32 %2086 to i64
  store i64 %2087, i64* %RCX, align 8, !tbaa !2428
  %2088 = icmp ult i32 %2085, 1
  %2089 = zext i1 %2088 to i8
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2089, i8* %2090, align 1, !tbaa !2432
  %2091 = and i32 %2086, 255
  %2092 = call i32 @llvm.ctpop.i32(i32 %2091) #16
  %2093 = trunc i32 %2092 to i8
  %2094 = and i8 %2093, 1
  %2095 = xor i8 %2094, 1
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2095, i8* %2096, align 1, !tbaa !2446
  %2097 = xor i64 1, %2082
  %2098 = trunc i64 %2097 to i32
  %2099 = xor i32 %2098, %2086
  %2100 = lshr i32 %2099, 4
  %2101 = trunc i32 %2100 to i8
  %2102 = and i8 %2101, 1
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2102, i8* %2103, align 1, !tbaa !2447
  %2104 = icmp eq i32 %2086, 0
  %2105 = zext i1 %2104 to i8
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2105, i8* %2106, align 1, !tbaa !2448
  %2107 = lshr i32 %2086, 31
  %2108 = trunc i32 %2107 to i8
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2108, i8* %2109, align 1, !tbaa !2449
  %2110 = lshr i32 %2085, 31
  %2111 = xor i32 %2107, %2110
  %2112 = add nuw nsw i32 %2111, %2110
  %2113 = icmp eq i32 %2112, 2
  %2114 = zext i1 %2113 to i8
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2114, i8* %2115, align 1, !tbaa !2450
  %2116 = load i32, i32* %EAX
  %2117 = zext i32 %2116 to i64
  %2118 = load i32, i32* %ECX
  %2119 = zext i32 %2118 to i64
  %2120 = load i64, i64* %PC
  %2121 = add i64 %2120, 2
  store i64 %2121, i64* %PC
  %2122 = sub i32 %2116, %2118
  %2123 = icmp ult i32 %2116, %2118
  %2124 = zext i1 %2123 to i8
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2124, i8* %2125, align 1, !tbaa !2432
  %2126 = and i32 %2122, 255
  %2127 = call i32 @llvm.ctpop.i32(i32 %2126) #16
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  %2130 = xor i8 %2129, 1
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2130, i8* %2131, align 1, !tbaa !2446
  %2132 = xor i64 %2119, %2117
  %2133 = trunc i64 %2132 to i32
  %2134 = xor i32 %2133, %2122
  %2135 = lshr i32 %2134, 4
  %2136 = trunc i32 %2135 to i8
  %2137 = and i8 %2136, 1
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2137, i8* %2138, align 1, !tbaa !2447
  %2139 = icmp eq i32 %2122, 0
  %2140 = zext i1 %2139 to i8
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2140, i8* %2141, align 1, !tbaa !2448
  %2142 = lshr i32 %2122, 31
  %2143 = trunc i32 %2142 to i8
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2143, i8* %2144, align 1, !tbaa !2449
  %2145 = lshr i32 %2116, 31
  %2146 = lshr i32 %2118, 31
  %2147 = xor i32 %2146, %2145
  %2148 = xor i32 %2142, %2145
  %2149 = add nuw nsw i32 %2148, %2147
  %2150 = icmp eq i32 %2149, 2
  %2151 = zext i1 %2150 to i8
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2151, i8* %2152, align 1, !tbaa !2450
  %2153 = load i64, i64* %PC
  %2154 = add i64 %2153, 136
  %2155 = load i64, i64* %PC
  %2156 = add i64 %2155, 6
  %2157 = load i64, i64* %PC
  %2158 = add i64 %2157, 6
  store i64 %2158, i64* %PC
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2160 = load i8, i8* %2159, align 1, !tbaa !2448
  %2161 = icmp eq i8 %2160, 0
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2163 = load i8, i8* %2162, align 1, !tbaa !2449
  %2164 = icmp ne i8 %2163, 0
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2166 = load i8, i8* %2165, align 1, !tbaa !2450
  %2167 = icmp ne i8 %2166, 0
  %2168 = xor i1 %2164, %2167
  %2169 = xor i1 %2168, true
  %2170 = and i1 %2161, %2169
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2173 = select i1 %2170, i64 %2154, i64 %2156
  store i64 %2173, i64* %2172, align 8, !tbaa !2428
  %2174 = load i8, i8* %BRANCH_TAKEN
  %2175 = icmp eq i8 %2174, 1
  br i1 %2175, label %block_400d13, label %block_400c91

block_400c06:                                     ; preds = %block_400bfa
  %2176 = sub i64 %269, 40
  %2177 = load i64, i64* %PC
  %2178 = add i64 %2177, 4
  store i64 %2178, i64* %PC
  %2179 = inttoptr i64 %2176 to i64*
  %2180 = load i64, i64* %2179
  store i64 %2180, i64* %RAX, align 8, !tbaa !2428
  %2181 = load i64, i64* %RBP
  %2182 = sub i64 %2181, 64
  %2183 = load i64, i64* %PC
  %2184 = add i64 %2183, 3
  store i64 %2184, i64* %PC
  %2185 = inttoptr i64 %2182 to i32*
  %2186 = load i32, i32* %2185
  %2187 = zext i32 %2186 to i64
  store i64 %2187, i64* %RCX, align 8, !tbaa !2428
  %2188 = load i64, i64* %RCX
  %2189 = load i64, i64* %PC
  %2190 = add i64 %2189, 3
  store i64 %2190, i64* %PC
  %2191 = trunc i64 %2188 to i32
  %2192 = sub i32 %2191, 1
  %2193 = zext i32 %2192 to i64
  store i64 %2193, i64* %RCX, align 8, !tbaa !2428
  %2194 = icmp ult i32 %2191, 1
  %2195 = zext i1 %2194 to i8
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2195, i8* %2196, align 1, !tbaa !2432
  %2197 = and i32 %2192, 255
  %2198 = call i32 @llvm.ctpop.i32(i32 %2197) #16
  %2199 = trunc i32 %2198 to i8
  %2200 = and i8 %2199, 1
  %2201 = xor i8 %2200, 1
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2201, i8* %2202, align 1, !tbaa !2446
  %2203 = xor i64 1, %2188
  %2204 = trunc i64 %2203 to i32
  %2205 = xor i32 %2204, %2192
  %2206 = lshr i32 %2205, 4
  %2207 = trunc i32 %2206 to i8
  %2208 = and i8 %2207, 1
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2208, i8* %2209, align 1, !tbaa !2447
  %2210 = icmp eq i32 %2192, 0
  %2211 = zext i1 %2210 to i8
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2211, i8* %2212, align 1, !tbaa !2448
  %2213 = lshr i32 %2192, 31
  %2214 = trunc i32 %2213 to i8
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2214, i8* %2215, align 1, !tbaa !2449
  %2216 = lshr i32 %2191, 31
  %2217 = xor i32 %2213, %2216
  %2218 = add nuw nsw i32 %2217, %2216
  %2219 = icmp eq i32 %2218, 2
  %2220 = zext i1 %2219 to i8
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2220, i8* %2221, align 1, !tbaa !2450
  %2222 = load i32, i32* %ECX
  %2223 = zext i32 %2222 to i64
  %2224 = load i64, i64* %PC
  %2225 = add i64 %2224, 3
  store i64 %2225, i64* %PC
  %2226 = shl i64 %2223, 32
  %2227 = ashr exact i64 %2226, 32
  store i64 %2227, i64* %RDX, align 8, !tbaa !2428
  %2228 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2229 = load i64, i64* %RAX
  %2230 = load i64, i64* %RDX
  %2231 = mul i64 %2230, 8
  %2232 = add i64 %2231, %2229
  %2233 = load i64, i64* %PC
  %2234 = add i64 %2233, 5
  store i64 %2234, i64* %PC
  %2235 = inttoptr i64 %2232 to double*
  %2236 = load double, double* %2235
  %2237 = bitcast i8* %2228 to double*
  store double %2236, double* %2237, align 1, !tbaa !2453
  %2238 = getelementptr inbounds i8, i8* %2228, i64 8
  %2239 = bitcast i8* %2238 to double*
  store double 0.000000e+00, double* %2239, align 1, !tbaa !2453
  %2240 = load i64, i64* %RBP
  %2241 = sub i64 %2240, 32
  %2242 = load i64, i64* %PC
  %2243 = add i64 %2242, 4
  store i64 %2243, i64* %PC
  %2244 = inttoptr i64 %2241 to i64*
  %2245 = load i64, i64* %2244
  store i64 %2245, i64* %RAX, align 8, !tbaa !2428
  %2246 = load i64, i64* %RBP
  %2247 = sub i64 %2246, 64
  %2248 = load i64, i64* %PC
  %2249 = add i64 %2248, 3
  store i64 %2249, i64* %PC
  %2250 = inttoptr i64 %2247 to i32*
  %2251 = load i32, i32* %2250
  %2252 = zext i32 %2251 to i64
  store i64 %2252, i64* %RCX, align 8, !tbaa !2428
  %2253 = load i64, i64* %RCX
  %2254 = load i64, i64* %PC
  %2255 = add i64 %2254, 3
  store i64 %2255, i64* %PC
  %2256 = trunc i64 %2253 to i32
  %2257 = sub i32 %2256, 1
  %2258 = zext i32 %2257 to i64
  store i64 %2258, i64* %RCX, align 8, !tbaa !2428
  %2259 = icmp ult i32 %2256, 1
  %2260 = zext i1 %2259 to i8
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2260, i8* %2261, align 1, !tbaa !2432
  %2262 = and i32 %2257, 255
  %2263 = call i32 @llvm.ctpop.i32(i32 %2262) #16
  %2264 = trunc i32 %2263 to i8
  %2265 = and i8 %2264, 1
  %2266 = xor i8 %2265, 1
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2266, i8* %2267, align 1, !tbaa !2446
  %2268 = xor i64 1, %2253
  %2269 = trunc i64 %2268 to i32
  %2270 = xor i32 %2269, %2257
  %2271 = lshr i32 %2270, 4
  %2272 = trunc i32 %2271 to i8
  %2273 = and i8 %2272, 1
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2273, i8* %2274, align 1, !tbaa !2447
  %2275 = icmp eq i32 %2257, 0
  %2276 = zext i1 %2275 to i8
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2276, i8* %2277, align 1, !tbaa !2448
  %2278 = lshr i32 %2257, 31
  %2279 = trunc i32 %2278 to i8
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2279, i8* %2280, align 1, !tbaa !2449
  %2281 = lshr i32 %2256, 31
  %2282 = xor i32 %2278, %2281
  %2283 = add nuw nsw i32 %2282, %2281
  %2284 = icmp eq i32 %2283, 2
  %2285 = zext i1 %2284 to i8
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2285, i8* %2286, align 1, !tbaa !2450
  %2287 = load i32, i32* %ECX
  %2288 = zext i32 %2287 to i64
  %2289 = load i64, i64* %PC
  %2290 = add i64 %2289, 3
  store i64 %2290, i64* %PC
  %2291 = shl i64 %2288, 32
  %2292 = ashr exact i64 %2291, 32
  store i64 %2292, i64* %RDX, align 8, !tbaa !2428
  %2293 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2294 = load i64, i64* %RAX
  %2295 = load i64, i64* %RDX
  %2296 = mul i64 %2295, 8
  %2297 = add i64 %2296, %2294
  %2298 = load i64, i64* %PC
  %2299 = add i64 %2298, 5
  store i64 %2299, i64* %PC
  %2300 = inttoptr i64 %2297 to double*
  %2301 = load double, double* %2300
  %2302 = bitcast i8* %2293 to double*
  store double %2301, double* %2302, align 1, !tbaa !2453
  %2303 = getelementptr inbounds i8, i8* %2293, i64 8
  %2304 = bitcast i8* %2303 to double*
  store double 0.000000e+00, double* %2304, align 1, !tbaa !2453
  %2305 = load i64, i64* %RBP
  %2306 = sub i64 %2305, 32
  %2307 = load i64, i64* %PC
  %2308 = add i64 %2307, 4
  store i64 %2308, i64* %PC
  %2309 = inttoptr i64 %2306 to i64*
  %2310 = load i64, i64* %2309
  store i64 %2310, i64* %RAX, align 8, !tbaa !2428
  %2311 = load i64, i64* %RBP
  %2312 = sub i64 %2311, 64
  %2313 = load i64, i64* %PC
  %2314 = add i64 %2313, 3
  store i64 %2314, i64* %PC
  %2315 = inttoptr i64 %2312 to i32*
  %2316 = load i32, i32* %2315
  %2317 = zext i32 %2316 to i64
  store i64 %2317, i64* %RCX, align 8, !tbaa !2428
  %2318 = load i64, i64* %RCX
  %2319 = load i64, i64* %PC
  %2320 = add i64 %2319, 3
  store i64 %2320, i64* %PC
  %2321 = trunc i64 %2318 to i32
  %2322 = sub i32 %2321, 1
  %2323 = zext i32 %2322 to i64
  store i64 %2323, i64* %RCX, align 8, !tbaa !2428
  %2324 = icmp ult i32 %2321, 1
  %2325 = zext i1 %2324 to i8
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2325, i8* %2326, align 1, !tbaa !2432
  %2327 = and i32 %2322, 255
  %2328 = call i32 @llvm.ctpop.i32(i32 %2327) #16
  %2329 = trunc i32 %2328 to i8
  %2330 = and i8 %2329, 1
  %2331 = xor i8 %2330, 1
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2331, i8* %2332, align 1, !tbaa !2446
  %2333 = xor i64 1, %2318
  %2334 = trunc i64 %2333 to i32
  %2335 = xor i32 %2334, %2322
  %2336 = lshr i32 %2335, 4
  %2337 = trunc i32 %2336 to i8
  %2338 = and i8 %2337, 1
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2338, i8* %2339, align 1, !tbaa !2447
  %2340 = icmp eq i32 %2322, 0
  %2341 = zext i1 %2340 to i8
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2341, i8* %2342, align 1, !tbaa !2448
  %2343 = lshr i32 %2322, 31
  %2344 = trunc i32 %2343 to i8
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2344, i8* %2345, align 1, !tbaa !2449
  %2346 = lshr i32 %2321, 31
  %2347 = xor i32 %2343, %2346
  %2348 = add nuw nsw i32 %2347, %2346
  %2349 = icmp eq i32 %2348, 2
  %2350 = zext i1 %2349 to i8
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2350, i8* %2351, align 1, !tbaa !2450
  %2352 = load i32, i32* %ECX
  %2353 = zext i32 %2352 to i64
  %2354 = load i64, i64* %PC
  %2355 = add i64 %2354, 3
  store i64 %2355, i64* %PC
  %2356 = shl i64 %2353, 32
  %2357 = ashr exact i64 %2356, 32
  store i64 %2357, i64* %RDX, align 8, !tbaa !2428
  %2358 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2359 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2360 = load i64, i64* %RAX
  %2361 = load i64, i64* %RDX
  %2362 = mul i64 %2361, 8
  %2363 = add i64 %2362, %2360
  %2364 = load i64, i64* %PC
  %2365 = add i64 %2364, 5
  store i64 %2365, i64* %PC
  %2366 = bitcast i8* %2359 to double*
  %2367 = load double, double* %2366, align 1
  %2368 = getelementptr inbounds i8, i8* %2359, i64 8
  %2369 = bitcast i8* %2368 to i64*
  %2370 = load i64, i64* %2369, align 1
  %2371 = inttoptr i64 %2363 to double*
  %2372 = load double, double* %2371
  %2373 = fmul double %2367, %2372
  %2374 = bitcast i8* %2358 to double*
  store double %2373, double* %2374, align 1, !tbaa !2453
  %2375 = getelementptr inbounds i8, i8* %2358, i64 8
  %2376 = bitcast i8* %2375 to i64*
  store i64 %2370, i64* %2376, align 1, !tbaa !2453
  %2377 = load i64, i64* %RBP
  %2378 = sub i64 %2377, 40
  %2379 = load i64, i64* %PC
  %2380 = add i64 %2379, 4
  store i64 %2380, i64* %PC
  %2381 = inttoptr i64 %2378 to i64*
  %2382 = load i64, i64* %2381
  store i64 %2382, i64* %RAX, align 8, !tbaa !2428
  %2383 = load i64, i64* %RBP
  %2384 = sub i64 %2383, 64
  %2385 = load i64, i64* %PC
  %2386 = add i64 %2385, 3
  store i64 %2386, i64* %PC
  %2387 = inttoptr i64 %2384 to i32*
  %2388 = load i32, i32* %2387
  %2389 = zext i32 %2388 to i64
  store i64 %2389, i64* %RCX, align 8, !tbaa !2428
  %2390 = load i64, i64* %RCX
  %2391 = load i64, i64* %PC
  %2392 = add i64 %2391, 3
  store i64 %2392, i64* %PC
  %2393 = trunc i64 %2390 to i32
  %2394 = sub i32 %2393, 1
  %2395 = zext i32 %2394 to i64
  store i64 %2395, i64* %RCX, align 8, !tbaa !2428
  %2396 = icmp ult i32 %2393, 1
  %2397 = zext i1 %2396 to i8
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2397, i8* %2398, align 1, !tbaa !2432
  %2399 = and i32 %2394, 255
  %2400 = call i32 @llvm.ctpop.i32(i32 %2399) #16
  %2401 = trunc i32 %2400 to i8
  %2402 = and i8 %2401, 1
  %2403 = xor i8 %2402, 1
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2403, i8* %2404, align 1, !tbaa !2446
  %2405 = xor i64 1, %2390
  %2406 = trunc i64 %2405 to i32
  %2407 = xor i32 %2406, %2394
  %2408 = lshr i32 %2407, 4
  %2409 = trunc i32 %2408 to i8
  %2410 = and i8 %2409, 1
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2410, i8* %2411, align 1, !tbaa !2447
  %2412 = icmp eq i32 %2394, 0
  %2413 = zext i1 %2412 to i8
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2413, i8* %2414, align 1, !tbaa !2448
  %2415 = lshr i32 %2394, 31
  %2416 = trunc i32 %2415 to i8
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2416, i8* %2417, align 1, !tbaa !2449
  %2418 = lshr i32 %2393, 31
  %2419 = xor i32 %2415, %2418
  %2420 = add nuw nsw i32 %2419, %2418
  %2421 = icmp eq i32 %2420, 2
  %2422 = zext i1 %2421 to i8
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2422, i8* %2423, align 1, !tbaa !2450
  %2424 = load i32, i32* %ECX
  %2425 = zext i32 %2424 to i64
  %2426 = load i64, i64* %PC
  %2427 = add i64 %2426, 3
  store i64 %2427, i64* %PC
  %2428 = shl i64 %2425, 32
  %2429 = ashr exact i64 %2428, 32
  store i64 %2429, i64* %RDX, align 8, !tbaa !2428
  %2430 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2431 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2432 = load i64, i64* %RAX
  %2433 = load i64, i64* %RDX
  %2434 = mul i64 %2433, 8
  %2435 = add i64 %2434, %2432
  %2436 = load i64, i64* %PC
  %2437 = add i64 %2436, 5
  store i64 %2437, i64* %PC
  %2438 = bitcast i8* %2431 to double*
  %2439 = load double, double* %2438, align 1
  %2440 = getelementptr inbounds i8, i8* %2431, i64 8
  %2441 = bitcast i8* %2440 to i64*
  %2442 = load i64, i64* %2441, align 1
  %2443 = inttoptr i64 %2435 to double*
  %2444 = load double, double* %2443
  %2445 = fmul double %2439, %2444
  %2446 = bitcast i8* %2430 to double*
  store double %2445, double* %2446, align 1, !tbaa !2453
  %2447 = getelementptr inbounds i8, i8* %2430, i64 8
  %2448 = bitcast i8* %2447 to i64*
  store i64 %2442, i64* %2448, align 1, !tbaa !2453
  %2449 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2450 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2451 = bitcast %union.vec128_t* %XMM1 to i8*
  %2452 = load i64, i64* %PC
  %2453 = add i64 %2452, 4
  store i64 %2453, i64* %PC
  %2454 = bitcast i8* %2450 to double*
  %2455 = load double, double* %2454, align 1
  %2456 = getelementptr inbounds i8, i8* %2450, i64 8
  %2457 = bitcast i8* %2456 to i64*
  %2458 = load i64, i64* %2457, align 1
  %2459 = bitcast i8* %2451 to double*
  %2460 = load double, double* %2459, align 1
  %2461 = fsub double %2455, %2460
  %2462 = bitcast i8* %2449 to double*
  store double %2461, double* %2462, align 1, !tbaa !2453
  %2463 = getelementptr inbounds i8, i8* %2449, i64 8
  %2464 = bitcast i8* %2463 to i64*
  store i64 %2458, i64* %2464, align 1, !tbaa !2453
  %2465 = load i64, i64* %RBP
  %2466 = sub i64 %2465, 40
  %2467 = load i64, i64* %PC
  %2468 = add i64 %2467, 4
  store i64 %2468, i64* %PC
  %2469 = inttoptr i64 %2466 to i64*
  %2470 = load i64, i64* %2469
  store i64 %2470, i64* %RAX, align 8, !tbaa !2428
  %2471 = load i64, i64* %RBP
  %2472 = sub i64 %2471, 64
  %2473 = load i64, i64* %PC
  %2474 = add i64 %2473, 4
  store i64 %2474, i64* %PC
  %2475 = inttoptr i64 %2472 to i32*
  %2476 = load i32, i32* %2475
  %2477 = sext i32 %2476 to i64
  store i64 %2477, i64* %RDX, align 8, !tbaa !2428
  %2478 = load i64, i64* %RAX
  %2479 = load i64, i64* %RDX
  %2480 = mul i64 %2479, 8
  %2481 = add i64 %2480, %2478
  %2482 = bitcast %union.vec128_t* %XMM0 to i8*
  %2483 = load i64, i64* %PC
  %2484 = add i64 %2483, 5
  store i64 %2484, i64* %PC
  %2485 = bitcast i8* %2482 to double*
  %2486 = load double, double* %2485, align 1
  %2487 = inttoptr i64 %2481 to double*
  store double %2486, double* %2487
  %2488 = load i64, i64* %RBP
  %2489 = sub i64 %2488, 48
  %2490 = load i64, i64* %PC
  %2491 = add i64 %2490, 4
  store i64 %2491, i64* %PC
  %2492 = inttoptr i64 %2489 to i64*
  %2493 = load i64, i64* %2492
  store i64 %2493, i64* %RAX, align 8, !tbaa !2428
  %2494 = load i64, i64* %RBP
  %2495 = sub i64 %2494, 64
  %2496 = load i64, i64* %PC
  %2497 = add i64 %2496, 4
  store i64 %2497, i64* %PC
  %2498 = inttoptr i64 %2495 to i32*
  %2499 = load i32, i32* %2498
  %2500 = sext i32 %2499 to i64
  store i64 %2500, i64* %RDX, align 8, !tbaa !2428
  %2501 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2502 = load i64, i64* %RAX
  %2503 = load i64, i64* %RDX
  %2504 = mul i64 %2503, 8
  %2505 = add i64 %2504, %2502
  %2506 = load i64, i64* %PC
  %2507 = add i64 %2506, 5
  store i64 %2507, i64* %PC
  %2508 = inttoptr i64 %2505 to double*
  %2509 = load double, double* %2508
  %2510 = bitcast i8* %2501 to double*
  store double %2509, double* %2510, align 1, !tbaa !2453
  %2511 = getelementptr inbounds i8, i8* %2501, i64 8
  %2512 = bitcast i8* %2511 to double*
  store double 0.000000e+00, double* %2512, align 1, !tbaa !2453
  %2513 = load i64, i64* %RBP
  %2514 = sub i64 %2513, 24
  %2515 = load i64, i64* %PC
  %2516 = add i64 %2515, 4
  store i64 %2516, i64* %PC
  %2517 = inttoptr i64 %2514 to i64*
  %2518 = load i64, i64* %2517
  store i64 %2518, i64* %RAX, align 8, !tbaa !2428
  %2519 = load i64, i64* %RBP
  %2520 = sub i64 %2519, 64
  %2521 = load i64, i64* %PC
  %2522 = add i64 %2521, 4
  store i64 %2522, i64* %PC
  %2523 = inttoptr i64 %2520 to i32*
  %2524 = load i32, i32* %2523
  %2525 = sext i32 %2524 to i64
  store i64 %2525, i64* %RDX, align 8, !tbaa !2428
  %2526 = load i64, i64* %RAX
  %2527 = load i64, i64* %RDX
  %2528 = mul i64 %2527, 8
  %2529 = add i64 %2528, %2526
  %2530 = bitcast %union.vec128_t* %XMM0 to i8*
  %2531 = load i64, i64* %PC
  %2532 = add i64 %2531, 5
  store i64 %2532, i64* %PC
  %2533 = bitcast i8* %2530 to double*
  %2534 = load double, double* %2533, align 1
  %2535 = inttoptr i64 %2529 to double*
  store double %2534, double* %2535
  %2536 = load i64, i64* %RBP
  %2537 = sub i64 %2536, 60
  %2538 = load i64, i64* %PC
  %2539 = add i64 %2538, 7
  store i64 %2539, i64* %PC
  %2540 = inttoptr i64 %2537 to i32*
  store i32 0, i32* %2540
  br label %block_400c80
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
  %116 = load i64, i64* %RCX
  %117 = load i64, i64* %PC
  %118 = add i64 %117, 3
  store i64 %118, i64* %PC
  store i64 %116, i64* %RDI, align 8, !tbaa !2428
  %119 = load i32, i32* %EAX
  %120 = zext i32 %119 to i64
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 2
  store i64 %122, i64* %PC
  %123 = and i64 %120, 4294967295
  store i64 %123, i64* %RSI, align 8, !tbaa !2428
  %124 = load i64, i64* %PC
  %125 = sub i64 %124, 238
  %126 = load i64, i64* %PC
  %127 = add i64 %126, 5
  %128 = load i64, i64* %PC
  %129 = add i64 %128, 5
  store i64 %129, i64* %PC
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %131 = load i64, i64* %130, align 8, !tbaa !2428
  %132 = add i64 %131, -8
  %133 = inttoptr i64 %132 to i64*
  store i64 %127, i64* %133
  store i64 %132, i64* %130, align 8, !tbaa !2428
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %125, i64* %134, align 8, !tbaa !2428
  %135 = load i64, i64* %PC
  %136 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %135, %struct.Memory* %2)
  %137 = load i64, i64* %PC
  %138 = add i64 %137, 5
  store i64 %138, i64* %PC
  store i64 16000000, i64* %RSI, align 8, !tbaa !2428
  %139 = load i32, i32* %ESI
  %140 = zext i32 %139 to i64
  %141 = load i64, i64* %PC
  %142 = add i64 %141, 2
  store i64 %142, i64* %PC
  %143 = and i64 %140, 4294967295
  store i64 %143, i64* %RDI, align 8, !tbaa !2428
  %144 = load i64, i64* %PC
  %145 = add i64 %144, 5
  store i64 %145, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %146 = load i64, i64* %RBP
  %147 = sub i64 %146, 32
  %148 = load i64, i64* %RAX
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 4
  store i64 %150, i64* %PC
  %151 = inttoptr i64 %147 to i64*
  store i64 %148, i64* %151
  %152 = load i64, i64* %PC
  %153 = sub i64 %152, 259
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 5
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 5
  store i64 %157, i64* %PC
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %159 = load i64, i64* %158, align 8, !tbaa !2428
  %160 = add i64 %159, -8
  %161 = inttoptr i64 %160 to i64*
  store i64 %155, i64* %161
  store i64 %160, i64* %158, align 8, !tbaa !2428
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %153, i64* %162, align 8, !tbaa !2428
  %163 = load i64, i64* %PC
  %164 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %163, %struct.Memory* %136)
  %165 = load i64, i64* %PC
  %166 = add i64 %165, 5
  store i64 %166, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %167 = load i32, i32* %ESI
  %168 = zext i32 %167 to i64
  %169 = load i64, i64* %PC
  %170 = add i64 %169, 2
  store i64 %170, i64* %PC
  %171 = and i64 %168, 4294967295
  store i64 %171, i64* %RDI, align 8, !tbaa !2428
  %172 = load i64, i64* %PC
  %173 = add i64 %172, 5
  store i64 %173, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %174 = load i64, i64* %RBP
  %175 = sub i64 %174, 40
  %176 = load i64, i64* %RAX
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC
  %179 = inttoptr i64 %175 to i64*
  store i64 %176, i64* %179
  %180 = load i64, i64* %PC
  %181 = sub i64 %180, 280
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
  %192 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %191, %struct.Memory* %164)
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 5
  store i64 %194, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %195 = load i32, i32* %ESI
  %196 = zext i32 %195 to i64
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 2
  store i64 %198, i64* %PC
  %199 = and i64 %196, 4294967295
  store i64 %199, i64* %RDI, align 8, !tbaa !2428
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 5
  store i64 %201, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %202 = load i64, i64* %RBP
  %203 = sub i64 %202, 48
  %204 = load i64, i64* %RAX
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 4
  store i64 %206, i64* %PC
  %207 = inttoptr i64 %203 to i64*
  store i64 %204, i64* %207
  %208 = load i64, i64* %PC
  %209 = sub i64 %208, 301
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
  %220 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %219, %struct.Memory* %192)
  %221 = load i64, i64* %PC
  %222 = add i64 %221, 5
  store i64 %222, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %223 = load i32, i32* %ESI
  %224 = zext i32 %223 to i64
  %225 = load i64, i64* %PC
  %226 = add i64 %225, 2
  store i64 %226, i64* %PC
  %227 = and i64 %224, 4294967295
  store i64 %227, i64* %RDI, align 8, !tbaa !2428
  %228 = load i64, i64* %PC
  %229 = add i64 %228, 5
  store i64 %229, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %230 = load i64, i64* %RBP
  %231 = sub i64 %230, 56
  %232 = load i64, i64* %RAX
  %233 = load i64, i64* %PC
  %234 = add i64 %233, 4
  store i64 %234, i64* %PC
  %235 = inttoptr i64 %231 to i64*
  store i64 %232, i64* %235
  %236 = load i64, i64* %PC
  %237 = sub i64 %236, 322
  %238 = load i64, i64* %PC
  %239 = add i64 %238, 5
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 5
  store i64 %241, i64* %PC
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %243 = load i64, i64* %242, align 8, !tbaa !2428
  %244 = add i64 %243, -8
  %245 = inttoptr i64 %244 to i64*
  store i64 %239, i64* %245
  store i64 %244, i64* %242, align 8, !tbaa !2428
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %237, i64* %246, align 8, !tbaa !2428
  %247 = load i64, i64* %PC
  %248 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %247, %struct.Memory* %220)
  %249 = load i64, i64* %PC
  %250 = add i64 %249, 5
  store i64 %250, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %251 = load i32, i32* %ESI
  %252 = zext i32 %251 to i64
  %253 = load i64, i64* %PC
  %254 = add i64 %253, 2
  store i64 %254, i64* %PC
  %255 = and i64 %252, 4294967295
  store i64 %255, i64* %RDI, align 8, !tbaa !2428
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 5
  store i64 %257, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %258 = load i64, i64* %RBP
  %259 = sub i64 %258, 64
  %260 = load i64, i64* %RAX
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 4
  store i64 %262, i64* %PC
  %263 = inttoptr i64 %259 to i64*
  store i64 %260, i64* %263
  %264 = load i64, i64* %PC
  %265 = sub i64 %264, 343
  %266 = load i64, i64* %PC
  %267 = add i64 %266, 5
  %268 = load i64, i64* %PC
  %269 = add i64 %268, 5
  store i64 %269, i64* %PC
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %271 = load i64, i64* %270, align 8, !tbaa !2428
  %272 = add i64 %271, -8
  %273 = inttoptr i64 %272 to i64*
  store i64 %267, i64* %273
  store i64 %272, i64* %270, align 8, !tbaa !2428
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %265, i64* %274, align 8, !tbaa !2428
  %275 = load i64, i64* %PC
  %276 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %275, %struct.Memory* %248)
  %277 = load i64, i64* %PC
  %278 = add i64 %277, 5
  store i64 %278, i64* %PC
  store i64 4000, i64* %RSI, align 8, !tbaa !2428
  %279 = load i32, i32* %ESI
  %280 = zext i32 %279 to i64
  %281 = load i64, i64* %PC
  %282 = add i64 %281, 2
  store i64 %282, i64* %PC
  %283 = and i64 %280, 4294967295
  store i64 %283, i64* %RDI, align 8, !tbaa !2428
  %284 = load i64, i64* %PC
  %285 = add i64 %284, 5
  store i64 %285, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %286 = load i64, i64* %RBP
  %287 = sub i64 %286, 72
  %288 = load i64, i64* %RAX
  %289 = load i64, i64* %PC
  %290 = add i64 %289, 4
  store i64 %290, i64* %PC
  %291 = inttoptr i64 %287 to i64*
  store i64 %288, i64* %291
  %292 = load i64, i64* %PC
  %293 = sub i64 %292, 364
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 5
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 5
  store i64 %297, i64* %PC
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %299 = load i64, i64* %298, align 8, !tbaa !2428
  %300 = add i64 %299, -8
  %301 = inttoptr i64 %300 to i64*
  store i64 %295, i64* %301
  store i64 %300, i64* %298, align 8, !tbaa !2428
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %293, i64* %302, align 8, !tbaa !2428
  %303 = load i64, i64* %PC
  %304 = call %struct.Memory* @sub_4007f0_polybench_alloc_data(%struct.State* %0, i64 %303, %struct.Memory* %276)
  %305 = load i64, i64* %RBP
  %306 = sub i64 %305, 80
  %307 = load i64, i64* %RAX
  %308 = load i64, i64* %PC
  %309 = add i64 %308, 4
  store i64 %309, i64* %PC
  %310 = inttoptr i64 %306 to i64*
  store i64 %307, i64* %310
  %311 = load i64, i64* %RBP
  %312 = sub i64 %311, 20
  %313 = load i64, i64* %PC
  %314 = add i64 %313, 3
  store i64 %314, i64* %PC
  %315 = inttoptr i64 %312 to i32*
  %316 = load i32, i32* %315
  %317 = zext i32 %316 to i64
  store i64 %317, i64* %RDI, align 8, !tbaa !2428
  %318 = load i64, i64* %RBP
  %319 = sub i64 %318, 32
  %320 = load i64, i64* %PC
  %321 = add i64 %320, 4
  store i64 %321, i64* %PC
  %322 = inttoptr i64 %319 to i64*
  %323 = load i64, i64* %322
  store i64 %323, i64* %RSI, align 8, !tbaa !2428
  %324 = load i64, i64* %RBP
  %325 = sub i64 %324, 40
  %326 = load i64, i64* %PC
  %327 = add i64 %326, 4
  store i64 %327, i64* %PC
  %328 = inttoptr i64 %325 to i64*
  %329 = load i64, i64* %328
  store i64 %329, i64* %RDX, align 8, !tbaa !2428
  %330 = load i64, i64* %RBP
  %331 = sub i64 %330, 48
  %332 = load i64, i64* %PC
  %333 = add i64 %332, 4
  store i64 %333, i64* %PC
  %334 = inttoptr i64 %331 to i64*
  %335 = load i64, i64* %334
  store i64 %335, i64* %RCX, align 8, !tbaa !2428
  %336 = load i64, i64* %RBP
  %337 = sub i64 %336, 56
  %338 = load i64, i64* %PC
  %339 = add i64 %338, 4
  store i64 %339, i64* %PC
  %340 = inttoptr i64 %337 to i64*
  %341 = load i64, i64* %340
  store i64 %341, i64* %R8, align 8, !tbaa !2428
  %342 = load i64, i64* %RBP
  %343 = sub i64 %342, 64
  %344 = load i64, i64* %PC
  %345 = add i64 %344, 4
  store i64 %345, i64* %PC
  %346 = inttoptr i64 %343 to i64*
  %347 = load i64, i64* %346
  store i64 %347, i64* %R9, align 8, !tbaa !2428
  %348 = load i64, i64* %PC
  %349 = add i64 %348, 244
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
  %360 = call %struct.Memory* @sub_400a70_init_array(%struct.State* %0, i64 %359, %struct.Memory* %304)
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
  %369 = sub i64 %368, 32
  %370 = load i64, i64* %PC
  %371 = add i64 %370, 4
  store i64 %371, i64* %PC
  %372 = inttoptr i64 %369 to i64*
  %373 = load i64, i64* %372
  store i64 %373, i64* %RSI, align 8, !tbaa !2428
  %374 = load i64, i64* %RBP
  %375 = sub i64 %374, 40
  %376 = load i64, i64* %PC
  %377 = add i64 %376, 4
  store i64 %377, i64* %PC
  %378 = inttoptr i64 %375 to i64*
  %379 = load i64, i64* %378
  store i64 %379, i64* %RDX, align 8, !tbaa !2428
  %380 = load i64, i64* %RBP
  %381 = sub i64 %380, 48
  %382 = load i64, i64* %PC
  %383 = add i64 %382, 4
  store i64 %383, i64* %PC
  %384 = inttoptr i64 %381 to i64*
  %385 = load i64, i64* %384
  store i64 %385, i64* %RCX, align 8, !tbaa !2428
  %386 = load i64, i64* %RBP
  %387 = sub i64 %386, 56
  %388 = load i64, i64* %PC
  %389 = add i64 %388, 4
  store i64 %389, i64* %PC
  %390 = inttoptr i64 %387 to i64*
  %391 = load i64, i64* %390
  store i64 %391, i64* %R8, align 8, !tbaa !2428
  %392 = load i64, i64* %RBP
  %393 = sub i64 %392, 64
  %394 = load i64, i64* %PC
  %395 = add i64 %394, 4
  store i64 %395, i64* %PC
  %396 = inttoptr i64 %393 to i64*
  %397 = load i64, i64* %396
  store i64 %397, i64* %R9, align 8, !tbaa !2428
  %398 = load i64, i64* %RBP
  %399 = sub i64 %398, 72
  %400 = load i64, i64* %PC
  %401 = add i64 %400, 4
  store i64 %401, i64* %PC
  %402 = inttoptr i64 %399 to i64*
  %403 = load i64, i64* %402
  store i64 %403, i64* %RAX, align 8, !tbaa !2428
  %404 = load i64, i64* %RSP
  %405 = load i64, i64* %RAX
  %406 = load i64, i64* %PC
  %407 = add i64 %406, 4
  store i64 %407, i64* %PC
  %408 = inttoptr i64 %404 to i64*
  store i64 %405, i64* %408
  %409 = load i64, i64* %PC
  %410 = add i64 %409, 512
  %411 = load i64, i64* %PC
  %412 = add i64 %411, 5
  %413 = load i64, i64* %PC
  %414 = add i64 %413, 5
  store i64 %414, i64* %PC
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %416 = load i64, i64* %415, align 8, !tbaa !2428
  %417 = add i64 %416, -8
  %418 = inttoptr i64 %417 to i64*
  store i64 %412, i64* %418
  store i64 %417, i64* %415, align 8, !tbaa !2428
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %410, i64* %419, align 8, !tbaa !2428
  %420 = load i64, i64* %PC
  %421 = call %struct.Memory* @sub_400ba0_kernel_durbin(%struct.State* %0, i64 %420, %struct.Memory* %360)
  %422 = load i64, i64* %RBP
  %423 = sub i64 %422, 20
  %424 = load i64, i64* %PC
  %425 = add i64 %424, 3
  store i64 %425, i64* %PC
  %426 = inttoptr i64 %423 to i32*
  %427 = load i32, i32* %426
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %RDI, align 8, !tbaa !2428
  %429 = load i64, i64* %RBP
  %430 = sub i64 %429, 32
  %431 = load i64, i64* %PC
  %432 = add i64 %431, 4
  store i64 %432, i64* %PC
  %433 = inttoptr i64 %430 to i64*
  %434 = load i64, i64* %433
  store i64 %434, i64* %RSI, align 8, !tbaa !2428
  %435 = load i64, i64* %RBP
  %436 = sub i64 %435, 40
  %437 = load i64, i64* %PC
  %438 = add i64 %437, 4
  store i64 %438, i64* %PC
  %439 = inttoptr i64 %436 to i64*
  %440 = load i64, i64* %439
  store i64 %440, i64* %RDX, align 8, !tbaa !2428
  %441 = load i64, i64* %RBP
  %442 = sub i64 %441, 48
  %443 = load i64, i64* %PC
  %444 = add i64 %443, 4
  store i64 %444, i64* %PC
  %445 = inttoptr i64 %442 to i64*
  %446 = load i64, i64* %445
  store i64 %446, i64* %RCX, align 8, !tbaa !2428
  %447 = load i64, i64* %RBP
  %448 = sub i64 %447, 56
  %449 = load i64, i64* %PC
  %450 = add i64 %449, 4
  store i64 %450, i64* %PC
  %451 = inttoptr i64 %448 to i64*
  %452 = load i64, i64* %451
  store i64 %452, i64* %R8, align 8, !tbaa !2428
  %453 = load i64, i64* %RBP
  %454 = sub i64 %453, 64
  %455 = load i64, i64* %PC
  %456 = add i64 %455, 4
  store i64 %456, i64* %PC
  %457 = inttoptr i64 %454 to i64*
  %458 = load i64, i64* %457
  store i64 %458, i64* %R9, align 8, !tbaa !2428
  %459 = load i64, i64* %PC
  %460 = add i64 %459, 180
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 5
  %463 = load i64, i64* %PC
  %464 = add i64 %463, 5
  store i64 %464, i64* %PC
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %466 = load i64, i64* %465, align 8, !tbaa !2428
  %467 = add i64 %466, -8
  %468 = inttoptr i64 %467 to i64*
  store i64 %462, i64* %468
  store i64 %467, i64* %465, align 8, !tbaa !2428
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %460, i64* %469, align 8, !tbaa !2428
  %470 = load i64, i64* %PC
  %471 = call %struct.Memory* @sub_400a70_init_array(%struct.State* %0, i64 %470, %struct.Memory* %421)
  %472 = load i64, i64* %RBP
  %473 = sub i64 %472, 20
  %474 = load i64, i64* %PC
  %475 = add i64 %474, 3
  store i64 %475, i64* %PC
  %476 = inttoptr i64 %473 to i32*
  %477 = load i32, i32* %476
  %478 = zext i32 %477 to i64
  store i64 %478, i64* %RDI, align 8, !tbaa !2428
  %479 = load i64, i64* %RBP
  %480 = sub i64 %479, 32
  %481 = load i64, i64* %PC
  %482 = add i64 %481, 4
  store i64 %482, i64* %PC
  %483 = inttoptr i64 %480 to i64*
  %484 = load i64, i64* %483
  store i64 %484, i64* %RSI, align 8, !tbaa !2428
  %485 = load i64, i64* %RBP
  %486 = sub i64 %485, 40
  %487 = load i64, i64* %PC
  %488 = add i64 %487, 4
  store i64 %488, i64* %PC
  %489 = inttoptr i64 %486 to i64*
  %490 = load i64, i64* %489
  store i64 %490, i64* %RDX, align 8, !tbaa !2428
  %491 = load i64, i64* %RBP
  %492 = sub i64 %491, 48
  %493 = load i64, i64* %PC
  %494 = add i64 %493, 4
  store i64 %494, i64* %PC
  %495 = inttoptr i64 %492 to i64*
  %496 = load i64, i64* %495
  store i64 %496, i64* %RCX, align 8, !tbaa !2428
  %497 = load i64, i64* %RBP
  %498 = sub i64 %497, 56
  %499 = load i64, i64* %PC
  %500 = add i64 %499, 4
  store i64 %500, i64* %PC
  %501 = inttoptr i64 %498 to i64*
  %502 = load i64, i64* %501
  store i64 %502, i64* %R8, align 8, !tbaa !2428
  %503 = load i64, i64* %RBP
  %504 = sub i64 %503, 64
  %505 = load i64, i64* %PC
  %506 = add i64 %505, 4
  store i64 %506, i64* %PC
  %507 = inttoptr i64 %504 to i64*
  %508 = load i64, i64* %507
  store i64 %508, i64* %R9, align 8, !tbaa !2428
  %509 = load i64, i64* %RBP
  %510 = sub i64 %509, 80
  %511 = load i64, i64* %PC
  %512 = add i64 %511, 4
  store i64 %512, i64* %PC
  %513 = inttoptr i64 %510 to i64*
  %514 = load i64, i64* %513
  store i64 %514, i64* %RAX, align 8, !tbaa !2428
  %515 = load i64, i64* %RSP
  %516 = load i64, i64* %RAX
  %517 = load i64, i64* %PC
  %518 = add i64 %517, 4
  store i64 %518, i64* %PC
  %519 = inttoptr i64 %515 to i64*
  store i64 %516, i64* %519
  %520 = load i64, i64* %PC
  %521 = add i64 %520, 1184
  %522 = load i64, i64* %PC
  %523 = add i64 %522, 5
  %524 = load i64, i64* %PC
  %525 = add i64 %524, 5
  store i64 %525, i64* %PC
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %527 = load i64, i64* %526, align 8, !tbaa !2428
  %528 = add i64 %527, -8
  %529 = inttoptr i64 %528 to i64*
  store i64 %523, i64* %529
  store i64 %528, i64* %526, align 8, !tbaa !2428
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %521, i64* %530, align 8, !tbaa !2428
  %531 = load i64, i64* %PC
  %532 = call %struct.Memory* @sub_400e80_kernel_durbin_StrictFP(%struct.State* %0, i64 %531, %struct.Memory* %471)
  %533 = load i64, i64* %RBP
  %534 = sub i64 %533, 20
  %535 = load i64, i64* %PC
  %536 = add i64 %535, 3
  store i64 %536, i64* %PC
  %537 = inttoptr i64 %534 to i32*
  %538 = load i32, i32* %537
  %539 = zext i32 %538 to i64
  store i64 %539, i64* %RDI, align 8, !tbaa !2428
  %540 = load i64, i64* %RBP
  %541 = sub i64 %540, 72
  %542 = load i64, i64* %PC
  %543 = add i64 %542, 4
  store i64 %543, i64* %PC
  %544 = inttoptr i64 %541 to i64*
  %545 = load i64, i64* %544
  store i64 %545, i64* %RSI, align 8, !tbaa !2428
  %546 = load i64, i64* %RBP
  %547 = sub i64 %546, 80
  %548 = load i64, i64* %PC
  %549 = add i64 %548, 4
  store i64 %549, i64* %PC
  %550 = inttoptr i64 %547 to i64*
  %551 = load i64, i64* %550
  store i64 %551, i64* %RDX, align 8, !tbaa !2428
  %552 = load i64, i64* %PC
  %553 = add i64 %552, 1904
  %554 = load i64, i64* %PC
  %555 = add i64 %554, 5
  %556 = load i64, i64* %PC
  %557 = add i64 %556, 5
  store i64 %557, i64* %PC
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %559 = load i64, i64* %558, align 8, !tbaa !2428
  %560 = add i64 %559, -8
  %561 = inttoptr i64 %560 to i64*
  store i64 %555, i64* %561
  store i64 %560, i64* %558, align 8, !tbaa !2428
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %553, i64* %562, align 8, !tbaa !2428
  %563 = load i64, i64* %PC
  %564 = call %struct.Memory* @sub_401160_check_FP(%struct.State* %0, i64 %563, %struct.Memory* %532)
  %565 = load i32, i32* %EAX
  %566 = zext i32 %565 to i64
  %567 = load i64, i64* %PC
  %568 = add i64 %567, 3
  store i64 %568, i64* %PC
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %569, align 1, !tbaa !2432
  %570 = and i32 %565, 255
  %571 = call i32 @llvm.ctpop.i32(i32 %570) #16
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = xor i8 %573, 1
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %574, i8* %575, align 1, !tbaa !2446
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %576, align 1, !tbaa !2447
  %577 = icmp eq i32 %565, 0
  %578 = zext i1 %577 to i8
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %578, i8* %579, align 1, !tbaa !2448
  %580 = lshr i32 %565, 31
  %581 = trunc i32 %580 to i8
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %581, i8* %582, align 1, !tbaa !2449
  %583 = lshr i32 %565, 31
  %584 = xor i32 %580, %583
  %585 = add nuw nsw i32 %584, %583
  %586 = icmp eq i32 %585, 2
  %587 = zext i1 %586 to i8
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %587, i8* %588, align 1, !tbaa !2450
  %589 = load i64, i64* %PC
  %590 = add i64 %589, 18
  %591 = load i64, i64* %PC
  %592 = add i64 %591, 6
  %593 = load i64, i64* %PC
  %594 = add i64 %593, 6
  store i64 %594, i64* %PC
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %596 = load i8, i8* %595, align 1, !tbaa !2448
  %597 = icmp eq i8 %596, 0
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %600 = select i1 %597, i64 %590, i64 %592
  store i64 %600, i64* %599, align 8, !tbaa !2428
  %601 = load i8, i8* %BRANCH_TAKEN
  %602 = icmp eq i8 %601, 1
  %603 = load i64, i64* %RBP
  br i1 %602, label %block_400a0a, label %block_4009fe

block_4009fe:                                     ; preds = %block_4008b0
  %604 = sub i64 %603, 4
  %605 = load i64, i64* %PC
  %606 = add i64 %605, 7
  store i64 %606, i64* %PC
  %607 = inttoptr i64 %604 to i32*
  store i32 1, i32* %607
  %608 = load i64, i64* %PC
  %609 = add i64 %608, 96
  %610 = load i64, i64* %PC
  %611 = add i64 %610, 5
  store i64 %611, i64* %PC
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %609, i64* %612, align 8, !tbaa !2428
  br label %block_400a65

block_400a65:                                     ; preds = %block_400a0a, %block_4009fe
  %MEMORY.0 = phi %struct.Memory* [ %825, %block_400a0a ], [ %564, %block_4009fe ]
  %613 = load i64, i64* %RBP
  %614 = sub i64 %613, 4
  %615 = load i64, i64* %PC
  %616 = add i64 %615, 3
  store i64 %616, i64* %PC
  %617 = inttoptr i64 %614 to i32*
  %618 = load i32, i32* %617
  %619 = zext i32 %618 to i64
  store i64 %619, i64* %RAX, align 8, !tbaa !2428
  %620 = load i64, i64* %RSP
  %621 = load i64, i64* %PC
  %622 = add i64 %621, 4
  store i64 %622, i64* %PC
  %623 = add i64 96, %620
  store i64 %623, i64* %RSP, align 8, !tbaa !2428
  %624 = icmp ult i64 %623, %620
  %625 = icmp ult i64 %623, 96
  %626 = or i1 %624, %625
  %627 = zext i1 %626 to i8
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %627, i8* %628, align 1, !tbaa !2432
  %629 = trunc i64 %623 to i32
  %630 = and i32 %629, 255
  %631 = call i32 @llvm.ctpop.i32(i32 %630) #16
  %632 = trunc i32 %631 to i8
  %633 = and i8 %632, 1
  %634 = xor i8 %633, 1
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %634, i8* %635, align 1, !tbaa !2446
  %636 = xor i64 96, %620
  %637 = xor i64 %636, %623
  %638 = lshr i64 %637, 4
  %639 = trunc i64 %638 to i8
  %640 = and i8 %639, 1
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %640, i8* %641, align 1, !tbaa !2447
  %642 = icmp eq i64 %623, 0
  %643 = zext i1 %642 to i8
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %643, i8* %644, align 1, !tbaa !2448
  %645 = lshr i64 %623, 63
  %646 = trunc i64 %645 to i8
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %646, i8* %647, align 1, !tbaa !2449
  %648 = lshr i64 %620, 63
  %649 = xor i64 %645, %648
  %650 = add nuw nsw i64 %649, %645
  %651 = icmp eq i64 %650, 2
  %652 = zext i1 %651 to i8
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %652, i8* %653, align 1, !tbaa !2450
  %654 = load i64, i64* %PC
  %655 = add i64 %654, 1
  store i64 %655, i64* %PC
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %657 = load i64, i64* %656, align 8, !tbaa !2428
  %658 = add i64 %657, 8
  %659 = inttoptr i64 %657 to i64*
  %660 = load i64, i64* %659
  store i64 %660, i64* %RBP, align 8, !tbaa !2428
  store i64 %658, i64* %656, align 8, !tbaa !2428
  %661 = load i64, i64* %PC
  %662 = add i64 %661, 1
  store i64 %662, i64* %PC
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %665 = load i64, i64* %664, align 8, !tbaa !2428
  %666 = inttoptr i64 %665 to i64*
  %667 = load i64, i64* %666
  store i64 %667, i64* %663, align 8, !tbaa !2428
  %668 = add i64 %665, 8
  store i64 %668, i64* %664, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0

block_400a0a:                                     ; preds = %block_4008b0
  %669 = sub i64 %603, 20
  %670 = load i64, i64* %PC
  %671 = add i64 %670, 3
  store i64 %671, i64* %PC
  %672 = inttoptr i64 %669 to i32*
  %673 = load i32, i32* %672
  %674 = zext i32 %673 to i64
  store i64 %674, i64* %RDI, align 8, !tbaa !2428
  %675 = load i64, i64* %RBP
  %676 = sub i64 %675, 80
  %677 = load i64, i64* %PC
  %678 = add i64 %677, 4
  store i64 %678, i64* %PC
  %679 = inttoptr i64 %676 to i64*
  %680 = load i64, i64* %679
  store i64 %680, i64* %RSI, align 8, !tbaa !2428
  %681 = load i64, i64* %PC
  %682 = add i64 %681, 2111
  %683 = load i64, i64* %PC
  %684 = add i64 %683, 5
  %685 = load i64, i64* %PC
  %686 = add i64 %685, 5
  store i64 %686, i64* %PC
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %688 = load i64, i64* %687, align 8, !tbaa !2428
  %689 = add i64 %688, -8
  %690 = inttoptr i64 %689 to i64*
  store i64 %684, i64* %690
  store i64 %689, i64* %687, align 8, !tbaa !2428
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %682, i64* %691, align 8, !tbaa !2428
  %692 = load i64, i64* %PC
  %693 = call %struct.Memory* @sub_401250_print_array(%struct.State* %0, i64 %692, %struct.Memory* %564)
  %694 = load i64, i64* %RBP
  %695 = sub i64 %694, 32
  %696 = load i64, i64* %PC
  %697 = add i64 %696, 4
  store i64 %697, i64* %PC
  %698 = inttoptr i64 %695 to i64*
  %699 = load i64, i64* %698
  store i64 %699, i64* %RSI, align 8, !tbaa !2428
  %700 = load i64, i64* %RSI
  %701 = load i64, i64* %PC
  %702 = add i64 %701, 3
  store i64 %702, i64* %PC
  store i64 %700, i64* %RDI, align 8, !tbaa !2428
  %703 = load i64, i64* %PC
  %704 = sub i64 %703, 1181
  %705 = load i64, i64* %PC
  %706 = add i64 %705, 5
  %707 = load i64, i64* %PC
  %708 = add i64 %707, 5
  store i64 %708, i64* %PC
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %710 = load i64, i64* %709, align 8, !tbaa !2428
  %711 = add i64 %710, -8
  %712 = inttoptr i64 %711 to i64*
  store i64 %706, i64* %712
  store i64 %711, i64* %709, align 8, !tbaa !2428
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %704, i64* %713, align 8, !tbaa !2428
  %714 = load i64, i64* %PC
  %715 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %714, %struct.Memory* %693)
  %716 = load i64, i64* %RBP
  %717 = sub i64 %716, 40
  %718 = load i64, i64* %PC
  %719 = add i64 %718, 4
  store i64 %719, i64* %PC
  %720 = inttoptr i64 %717 to i64*
  %721 = load i64, i64* %720
  store i64 %721, i64* %RSI, align 8, !tbaa !2428
  %722 = load i64, i64* %RSI
  %723 = load i64, i64* %PC
  %724 = add i64 %723, 3
  store i64 %724, i64* %PC
  store i64 %722, i64* %RDI, align 8, !tbaa !2428
  %725 = load i64, i64* %PC
  %726 = sub i64 %725, 1193
  %727 = load i64, i64* %PC
  %728 = add i64 %727, 5
  %729 = load i64, i64* %PC
  %730 = add i64 %729, 5
  store i64 %730, i64* %PC
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %732 = load i64, i64* %731, align 8, !tbaa !2428
  %733 = add i64 %732, -8
  %734 = inttoptr i64 %733 to i64*
  store i64 %728, i64* %734
  store i64 %733, i64* %731, align 8, !tbaa !2428
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %726, i64* %735, align 8, !tbaa !2428
  %736 = load i64, i64* %PC
  %737 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %736, %struct.Memory* %715)
  %738 = load i64, i64* %RBP
  %739 = sub i64 %738, 48
  %740 = load i64, i64* %PC
  %741 = add i64 %740, 4
  store i64 %741, i64* %PC
  %742 = inttoptr i64 %739 to i64*
  %743 = load i64, i64* %742
  store i64 %743, i64* %RSI, align 8, !tbaa !2428
  %744 = load i64, i64* %RSI
  %745 = load i64, i64* %PC
  %746 = add i64 %745, 3
  store i64 %746, i64* %PC
  store i64 %744, i64* %RDI, align 8, !tbaa !2428
  %747 = load i64, i64* %PC
  %748 = sub i64 %747, 1205
  %749 = load i64, i64* %PC
  %750 = add i64 %749, 5
  %751 = load i64, i64* %PC
  %752 = add i64 %751, 5
  store i64 %752, i64* %PC
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %754 = load i64, i64* %753, align 8, !tbaa !2428
  %755 = add i64 %754, -8
  %756 = inttoptr i64 %755 to i64*
  store i64 %750, i64* %756
  store i64 %755, i64* %753, align 8, !tbaa !2428
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %748, i64* %757, align 8, !tbaa !2428
  %758 = load i64, i64* %PC
  %759 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %758, %struct.Memory* %737)
  %760 = load i64, i64* %RBP
  %761 = sub i64 %760, 56
  %762 = load i64, i64* %PC
  %763 = add i64 %762, 4
  store i64 %763, i64* %PC
  %764 = inttoptr i64 %761 to i64*
  %765 = load i64, i64* %764
  store i64 %765, i64* %RSI, align 8, !tbaa !2428
  %766 = load i64, i64* %RSI
  %767 = load i64, i64* %PC
  %768 = add i64 %767, 3
  store i64 %768, i64* %PC
  store i64 %766, i64* %RDI, align 8, !tbaa !2428
  %769 = load i64, i64* %PC
  %770 = sub i64 %769, 1217
  %771 = load i64, i64* %PC
  %772 = add i64 %771, 5
  %773 = load i64, i64* %PC
  %774 = add i64 %773, 5
  store i64 %774, i64* %PC
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %776 = load i64, i64* %775, align 8, !tbaa !2428
  %777 = add i64 %776, -8
  %778 = inttoptr i64 %777 to i64*
  store i64 %772, i64* %778
  store i64 %777, i64* %775, align 8, !tbaa !2428
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %770, i64* %779, align 8, !tbaa !2428
  %780 = load i64, i64* %PC
  %781 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %780, %struct.Memory* %759)
  %782 = load i64, i64* %RBP
  %783 = sub i64 %782, 64
  %784 = load i64, i64* %PC
  %785 = add i64 %784, 4
  store i64 %785, i64* %PC
  %786 = inttoptr i64 %783 to i64*
  %787 = load i64, i64* %786
  store i64 %787, i64* %RSI, align 8, !tbaa !2428
  %788 = load i64, i64* %RSI
  %789 = load i64, i64* %PC
  %790 = add i64 %789, 3
  store i64 %790, i64* %PC
  store i64 %788, i64* %RDI, align 8, !tbaa !2428
  %791 = load i64, i64* %PC
  %792 = sub i64 %791, 1229
  %793 = load i64, i64* %PC
  %794 = add i64 %793, 5
  %795 = load i64, i64* %PC
  %796 = add i64 %795, 5
  store i64 %796, i64* %PC
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %798 = load i64, i64* %797, align 8, !tbaa !2428
  %799 = add i64 %798, -8
  %800 = inttoptr i64 %799 to i64*
  store i64 %794, i64* %800
  store i64 %799, i64* %797, align 8, !tbaa !2428
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %792, i64* %801, align 8, !tbaa !2428
  %802 = load i64, i64* %PC
  %803 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %802, %struct.Memory* %781)
  %804 = load i64, i64* %RBP
  %805 = sub i64 %804, 72
  %806 = load i64, i64* %PC
  %807 = add i64 %806, 4
  store i64 %807, i64* %PC
  %808 = inttoptr i64 %805 to i64*
  %809 = load i64, i64* %808
  store i64 %809, i64* %RSI, align 8, !tbaa !2428
  %810 = load i64, i64* %RSI
  %811 = load i64, i64* %PC
  %812 = add i64 %811, 3
  store i64 %812, i64* %PC
  store i64 %810, i64* %RDI, align 8, !tbaa !2428
  %813 = load i64, i64* %PC
  %814 = sub i64 %813, 1241
  %815 = load i64, i64* %PC
  %816 = add i64 %815, 5
  %817 = load i64, i64* %PC
  %818 = add i64 %817, 5
  store i64 %818, i64* %PC
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %820 = load i64, i64* %819, align 8, !tbaa !2428
  %821 = add i64 %820, -8
  %822 = inttoptr i64 %821 to i64*
  store i64 %816, i64* %822
  store i64 %821, i64* %819, align 8, !tbaa !2428
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %814, i64* %823, align 8, !tbaa !2428
  %824 = load i64, i64* %PC
  %825 = call %struct.Memory* @ext_6020d8_free(%struct.State* %0, i64 %824, %struct.Memory* %803)
  %826 = load i64, i64* %RBP
  %827 = sub i64 %826, 4
  %828 = load i64, i64* %PC
  %829 = add i64 %828, 7
  store i64 %829, i64* %PC
  %830 = inttoptr i64 %827 to i32*
  store i32 0, i32* %830
  br label %block_400a65
}

; Function Attrs: noinline
define %struct.Memory* @sub_400e80_kernel_durbin_StrictFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 11
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %EDI = bitcast %union.anon* %17 to i32*
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
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %43 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %42, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %43 to %"class.std::bitset"*
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %45 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %44, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %45 to %"class.std::bitset"*
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %47 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %46, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %47 to %union.vec128_t*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %49 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %48, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %49 to %union.vec128_t*
  %50 = load i64, i64* %RBP
  %51 = load i64, i64* %PC
  %52 = add i64 %51, 1
  store i64 %52, i64* %PC
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %54 = load i64, i64* %53, align 8, !tbaa !2428
  %55 = add i64 %54, -8
  %56 = inttoptr i64 %55 to i64*
  store i64 %50, i64* %56
  store i64 %55, i64* %53, align 8, !tbaa !2428
  %57 = load i64, i64* %RSP
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC
  store i64 %57, i64* %RBP, align 8, !tbaa !2428
  %60 = load i64, i64* %RBP
  %61 = add i64 %60, 16
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 4
  store i64 %63, i64* %PC
  %64 = inttoptr i64 %61 to i64*
  %65 = load i64, i64* %64
  store i64 %65, i64* %RAX, align 8, !tbaa !2428
  %66 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 8
  store i64 %68, i64* %PC
  %69 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401370__rodata_type* @seg_401370__rodata to i64), i64 24) to double*)
  %70 = bitcast i8* %66 to double*
  store double %69, double* %70, align 1, !tbaa !2453
  %71 = getelementptr inbounds i8, i8* %66, i64 8
  %72 = bitcast i8* %71 to double*
  store double 0.000000e+00, double* %72, align 1, !tbaa !2453
  %73 = load i64, i64* %RBP
  %74 = sub i64 %73, 4
  %75 = load i32, i32* %EDI
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 3
  store i64 %78, i64* %PC
  %79 = inttoptr i64 %74 to i32*
  store i32 %75, i32* %79
  %80 = load i64, i64* %RBP
  %81 = sub i64 %80, 16
  %82 = load i64, i64* %RSI
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 4
  store i64 %84, i64* %PC
  %85 = inttoptr i64 %81 to i64*
  store i64 %82, i64* %85
  %86 = load i64, i64* %RBP
  %87 = sub i64 %86, 24
  %88 = load i64, i64* %RDX
  %89 = load i64, i64* %PC
  %90 = add i64 %89, 4
  store i64 %90, i64* %PC
  %91 = inttoptr i64 %87 to i64*
  store i64 %88, i64* %91
  %92 = load i64, i64* %RBP
  %93 = sub i64 %92, 32
  %94 = load i64, i64* %RCX
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97
  %98 = load i64, i64* %RBP
  %99 = sub i64 %98, 40
  %100 = load i64, i64* %R8
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 4
  store i64 %102, i64* %PC
  %103 = inttoptr i64 %99 to i64*
  store i64 %100, i64* %103
  %104 = load i64, i64* %RBP
  %105 = sub i64 %104, 48
  %106 = load i64, i64* %R9
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 4
  store i64 %108, i64* %PC
  %109 = inttoptr i64 %105 to i64*
  store i64 %106, i64* %109
  %110 = load i64, i64* %RBP
  %111 = sub i64 %110, 56
  %112 = load i64, i64* %RAX
  %113 = load i64, i64* %PC
  %114 = add i64 %113, 4
  store i64 %114, i64* %PC
  %115 = inttoptr i64 %111 to i64*
  store i64 %112, i64* %115
  %116 = load i64, i64* %RBP
  %117 = sub i64 %116, 48
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC
  %120 = inttoptr i64 %117 to i64*
  %121 = load i64, i64* %120
  store i64 %121, i64* %RAX, align 8, !tbaa !2428
  %122 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %123 = load i64, i64* %RAX
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 4
  store i64 %125, i64* %PC
  %126 = inttoptr i64 %123 to double*
  %127 = load double, double* %126
  %128 = bitcast i8* %122 to double*
  store double %127, double* %128, align 1, !tbaa !2453
  %129 = getelementptr inbounds i8, i8* %122, i64 8
  %130 = bitcast i8* %129 to double*
  store double 0.000000e+00, double* %130, align 1, !tbaa !2453
  %131 = load i64, i64* %RBP
  %132 = sub i64 %131, 16
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 4
  store i64 %134, i64* %PC
  %135 = inttoptr i64 %132 to i64*
  %136 = load i64, i64* %135
  store i64 %136, i64* %RAX, align 8, !tbaa !2428
  %137 = load i64, i64* %RAX
  %138 = bitcast %union.vec128_t* %XMM1 to i8*
  %139 = load i64, i64* %PC
  %140 = add i64 %139, 4
  store i64 %140, i64* %PC
  %141 = bitcast i8* %138 to double*
  %142 = load double, double* %141, align 1
  %143 = inttoptr i64 %137 to double*
  store double %142, double* %143
  %144 = load i64, i64* %RBP
  %145 = sub i64 %144, 40
  %146 = load i64, i64* %PC
  %147 = add i64 %146, 4
  store i64 %147, i64* %PC
  %148 = inttoptr i64 %145 to i64*
  %149 = load i64, i64* %148
  store i64 %149, i64* %RAX, align 8, !tbaa !2428
  %150 = load i64, i64* %RAX
  %151 = bitcast %union.vec128_t* %XMM0 to i8*
  %152 = load i64, i64* %PC
  %153 = add i64 %152, 4
  store i64 %153, i64* %PC
  %154 = bitcast i8* %151 to double*
  %155 = load double, double* %154, align 1
  %156 = inttoptr i64 %150 to double*
  store double %155, double* %156
  %157 = load i64, i64* %RBP
  %158 = sub i64 %157, 48
  %159 = load i64, i64* %PC
  %160 = add i64 %159, 4
  store i64 %160, i64* %PC
  %161 = inttoptr i64 %158 to i64*
  %162 = load i64, i64* %161
  store i64 %162, i64* %RAX, align 8, !tbaa !2428
  %163 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %164 = load i64, i64* %RAX
  %165 = load i64, i64* %PC
  %166 = add i64 %165, 4
  store i64 %166, i64* %PC
  %167 = inttoptr i64 %164 to double*
  %168 = load double, double* %167
  %169 = bitcast i8* %163 to double*
  store double %168, double* %169, align 1, !tbaa !2453
  %170 = getelementptr inbounds i8, i8* %163, i64 8
  %171 = bitcast i8* %170 to double*
  store double 0.000000e+00, double* %171, align 1, !tbaa !2453
  %172 = load i64, i64* %RBP
  %173 = sub i64 %172, 32
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 4
  store i64 %175, i64* %PC
  %176 = inttoptr i64 %173 to i64*
  %177 = load i64, i64* %176
  store i64 %177, i64* %RAX, align 8, !tbaa !2428
  %178 = load i64, i64* %RAX
  %179 = bitcast %union.vec128_t* %XMM0 to i8*
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 4
  store i64 %181, i64* %PC
  %182 = bitcast i8* %179 to double*
  %183 = load double, double* %182, align 1
  %184 = inttoptr i64 %178 to double*
  store double %183, double* %184
  %185 = load i64, i64* %RBP
  %186 = sub i64 %185, 64
  %187 = load i64, i64* %PC
  %188 = add i64 %187, 7
  store i64 %188, i64* %PC
  %189 = inttoptr i64 %186 to i32*
  store i32 1, i32* %189
  br label %block_400eda

block_40115d:                                     ; preds = %block_401116
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
  ret %struct.Memory* %MEMORY.1

block_400eda:                                     ; preds = %block_4010d9, %block_400e80
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400e80 ], [ %MEMORY.2, %block_4010d9 ]
  %205 = load i64, i64* %RBP
  %206 = sub i64 %205, 64
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC
  %209 = inttoptr i64 %206 to i32*
  %210 = load i32, i32* %209
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RAX, align 8, !tbaa !2428
  %212 = load i32, i32* %EAX
  %213 = zext i32 %212 to i64
  %214 = load i64, i64* %RBP
  %215 = sub i64 %214, 4
  %216 = load i64, i64* %PC
  %217 = add i64 %216, 3
  store i64 %217, i64* %PC
  %218 = inttoptr i64 %215 to i32*
  %219 = load i32, i32* %218
  %220 = sub i32 %212, %219
  %221 = icmp ult i32 %212, %219
  %222 = zext i1 %221 to i8
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %222, i8* %223, align 1, !tbaa !2432
  %224 = and i32 %220, 255
  %225 = call i32 @llvm.ctpop.i32(i32 %224) #16
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %228, i8* %229, align 1, !tbaa !2446
  %230 = xor i32 %219, %212
  %231 = xor i32 %230, %220
  %232 = lshr i32 %231, 4
  %233 = trunc i32 %232 to i8
  %234 = and i8 %233, 1
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %234, i8* %235, align 1, !tbaa !2447
  %236 = icmp eq i32 %220, 0
  %237 = zext i1 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %237, i8* %238, align 1, !tbaa !2448
  %239 = lshr i32 %220, 31
  %240 = trunc i32 %239 to i8
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %240, i8* %241, align 1, !tbaa !2449
  %242 = lshr i32 %212, 31
  %243 = lshr i32 %219, 31
  %244 = xor i32 %243, %242
  %245 = xor i32 %239, %242
  %246 = add nuw nsw i32 %245, %244
  %247 = icmp eq i32 %246, 2
  %248 = zext i1 %247 to i8
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %248, i8* %249, align 1, !tbaa !2450
  %250 = load i64, i64* %PC
  %251 = add i64 %250, 559
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 6
  %254 = load i64, i64* %PC
  %255 = add i64 %254, 6
  store i64 %255, i64* %PC
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %257 = load i8, i8* %256, align 1, !tbaa !2449
  %258 = icmp ne i8 %257, 0
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %260 = load i8, i8* %259, align 1, !tbaa !2450
  %261 = icmp ne i8 %260, 0
  %262 = xor i1 %258, %261
  %263 = xor i1 %262, true
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %266 = select i1 %262, i64 %253, i64 %251
  store i64 %266, i64* %265, align 8, !tbaa !2428
  %267 = load i8, i8* %BRANCH_TAKEN
  %268 = icmp eq i8 %267, 1
  %269 = load i64, i64* %RBP
  br i1 %268, label %block_40110f, label %block_400ee6

block_4010d9:                                     ; preds = %block_401046
  %270 = sub i64 %1327, 32
  %271 = load i64, i64* %PC
  %272 = add i64 %271, 4
  store i64 %272, i64* %PC
  %273 = inttoptr i64 %270 to i64*
  %274 = load i64, i64* %273
  store i64 %274, i64* %RAX, align 8, !tbaa !2428
  %275 = load i64, i64* %RBP
  %276 = sub i64 %275, 64
  %277 = load i64, i64* %PC
  %278 = add i64 %277, 4
  store i64 %278, i64* %PC
  %279 = inttoptr i64 %276 to i32*
  %280 = load i32, i32* %279
  %281 = sext i32 %280 to i64
  store i64 %281, i64* %RCX, align 8, !tbaa !2428
  %282 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %283 = load i64, i64* %RAX
  %284 = load i64, i64* %RCX
  %285 = mul i64 %284, 8
  %286 = add i64 %285, %283
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 5
  store i64 %288, i64* %PC
  %289 = inttoptr i64 %286 to double*
  %290 = load double, double* %289
  %291 = bitcast i8* %282 to double*
  store double %290, double* %291, align 1, !tbaa !2453
  %292 = getelementptr inbounds i8, i8* %282, i64 8
  %293 = bitcast i8* %292 to double*
  store double 0.000000e+00, double* %293, align 1, !tbaa !2453
  %294 = load i64, i64* %RBP
  %295 = sub i64 %294, 16
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 4
  store i64 %297, i64* %PC
  %298 = inttoptr i64 %295 to i64*
  %299 = load i64, i64* %298
  store i64 %299, i64* %RAX, align 8, !tbaa !2428
  %300 = load i64, i64* %RBP
  %301 = sub i64 %300, 64
  %302 = load i64, i64* %PC
  %303 = add i64 %302, 4
  store i64 %303, i64* %PC
  %304 = inttoptr i64 %301 to i32*
  %305 = load i32, i32* %304
  %306 = sext i32 %305 to i64
  store i64 %306, i64* %RCX, align 8, !tbaa !2428
  %307 = load i64, i64* %RCX
  %308 = load i64, i64* %PC
  %309 = add i64 %308, 7
  store i64 %309, i64* %PC
  %310 = sext i64 %307 to i128
  %311 = and i128 %310, -18446744073709551616
  %312 = zext i64 %307 to i128
  %313 = or i128 %311, %312
  %314 = mul nsw i128 32000, %313
  %315 = trunc i128 %314 to i64
  store i64 %315, i64* %RCX, align 8, !tbaa !2428
  %316 = sext i64 %315 to i128
  %317 = icmp ne i128 %316, %314
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %318, i8* %319, align 1, !tbaa !2432
  %320 = trunc i128 %314 to i32
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %321, align 1, !tbaa !2446
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %322, align 1, !tbaa !2447
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %323, align 1, !tbaa !2448
  %324 = lshr i64 %315, 63
  %325 = trunc i64 %324 to i8
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %325, i8* %326, align 1, !tbaa !2449
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %318, i8* %327, align 1, !tbaa !2450
  %328 = load i64, i64* %RAX
  %329 = load i64, i64* %RCX
  %330 = load i64, i64* %PC
  %331 = add i64 %330, 3
  store i64 %331, i64* %PC
  %332 = add i64 %329, %328
  store i64 %332, i64* %RAX, align 8, !tbaa !2428
  %333 = icmp ult i64 %332, %328
  %334 = icmp ult i64 %332, %329
  %335 = or i1 %333, %334
  %336 = zext i1 %335 to i8
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %336, i8* %337, align 1, !tbaa !2432
  %338 = trunc i64 %332 to i32
  %339 = and i32 %338, 255
  %340 = call i32 @llvm.ctpop.i32(i32 %339) #16
  %341 = trunc i32 %340 to i8
  %342 = and i8 %341, 1
  %343 = xor i8 %342, 1
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %343, i8* %344, align 1, !tbaa !2446
  %345 = xor i64 %329, %328
  %346 = xor i64 %345, %332
  %347 = lshr i64 %346, 4
  %348 = trunc i64 %347 to i8
  %349 = and i8 %348, 1
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %349, i8* %350, align 1, !tbaa !2447
  %351 = icmp eq i64 %332, 0
  %352 = zext i1 %351 to i8
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %352, i8* %353, align 1, !tbaa !2448
  %354 = lshr i64 %332, 63
  %355 = trunc i64 %354 to i8
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %355, i8* %356, align 1, !tbaa !2449
  %357 = lshr i64 %328, 63
  %358 = lshr i64 %329, 63
  %359 = xor i64 %354, %357
  %360 = xor i64 %354, %358
  %361 = add nuw nsw i64 %359, %360
  %362 = icmp eq i64 %361, 2
  %363 = zext i1 %362 to i8
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %363, i8* %364, align 1, !tbaa !2450
  %365 = load i64, i64* %RBP
  %366 = sub i64 %365, 64
  %367 = load i64, i64* %PC
  %368 = add i64 %367, 4
  store i64 %368, i64* %PC
  %369 = inttoptr i64 %366 to i32*
  %370 = load i32, i32* %369
  %371 = sext i32 %370 to i64
  store i64 %371, i64* %RCX, align 8, !tbaa !2428
  %372 = load i64, i64* %RAX
  %373 = load i64, i64* %RCX
  %374 = mul i64 %373, 8
  %375 = add i64 %374, %372
  %376 = bitcast %union.vec128_t* %XMM0 to i8*
  %377 = load i64, i64* %PC
  %378 = add i64 %377, 5
  store i64 %378, i64* %PC
  %379 = bitcast i8* %376 to double*
  %380 = load double, double* %379, align 1
  %381 = inttoptr i64 %375 to double*
  store double %380, double* %381
  %382 = load i64, i64* %RBP
  %383 = sub i64 %382, 64
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 3
  store i64 %385, i64* %PC
  %386 = inttoptr i64 %383 to i32*
  %387 = load i32, i32* %386
  %388 = zext i32 %387 to i64
  store i64 %388, i64* %RAX, align 8, !tbaa !2428
  %389 = load i64, i64* %RAX
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 3
  store i64 %391, i64* %PC
  %392 = trunc i64 %389 to i32
  %393 = add i32 1, %392
  %394 = zext i32 %393 to i64
  store i64 %394, i64* %RAX, align 8, !tbaa !2428
  %395 = icmp ult i32 %393, %392
  %396 = icmp ult i32 %393, 1
  %397 = or i1 %395, %396
  %398 = zext i1 %397 to i8
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %398, i8* %399, align 1, !tbaa !2432
  %400 = and i32 %393, 255
  %401 = call i32 @llvm.ctpop.i32(i32 %400) #16
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %404, i8* %405, align 1, !tbaa !2446
  %406 = xor i64 1, %389
  %407 = trunc i64 %406 to i32
  %408 = xor i32 %407, %393
  %409 = lshr i32 %408, 4
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %411, i8* %412, align 1, !tbaa !2447
  %413 = icmp eq i32 %393, 0
  %414 = zext i1 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %414, i8* %415, align 1, !tbaa !2448
  %416 = lshr i32 %393, 31
  %417 = trunc i32 %416 to i8
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %417, i8* %418, align 1, !tbaa !2449
  %419 = lshr i32 %392, 31
  %420 = xor i32 %416, %419
  %421 = add nuw nsw i32 %420, %416
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %423, i8* %424, align 1, !tbaa !2450
  %425 = load i64, i64* %RBP
  %426 = sub i64 %425, 64
  %427 = load i32, i32* %EAX
  %428 = zext i32 %427 to i64
  %429 = load i64, i64* %PC
  %430 = add i64 %429, 3
  store i64 %430, i64* %PC
  %431 = inttoptr i64 %426 to i32*
  store i32 %427, i32* %431
  %432 = load i64, i64* %PC
  %433 = sub i64 %432, 560
  %434 = load i64, i64* %PC
  %435 = add i64 %434, 5
  store i64 %435, i64* %PC
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %433, i64* %436, align 8, !tbaa !2428
  br label %block_400eda

block_401116:                                     ; preds = %block_401122, %block_40110f
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_40110f ], [ %MEMORY.1, %block_401122 ]
  %437 = load i64, i64* %RBP
  %438 = sub i64 %437, 60
  %439 = load i64, i64* %PC
  %440 = add i64 %439, 3
  store i64 %440, i64* %PC
  %441 = inttoptr i64 %438 to i32*
  %442 = load i32, i32* %441
  %443 = zext i32 %442 to i64
  store i64 %443, i64* %RAX, align 8, !tbaa !2428
  %444 = load i32, i32* %EAX
  %445 = zext i32 %444 to i64
  %446 = load i64, i64* %RBP
  %447 = sub i64 %446, 4
  %448 = load i64, i64* %PC
  %449 = add i64 %448, 3
  store i64 %449, i64* %PC
  %450 = inttoptr i64 %447 to i32*
  %451 = load i32, i32* %450
  %452 = sub i32 %444, %451
  %453 = icmp ult i32 %444, %451
  %454 = zext i1 %453 to i8
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %454, i8* %455, align 1, !tbaa !2432
  %456 = and i32 %452, 255
  %457 = call i32 @llvm.ctpop.i32(i32 %456) #16
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %460, i8* %461, align 1, !tbaa !2446
  %462 = xor i32 %451, %444
  %463 = xor i32 %462, %452
  %464 = lshr i32 %463, 4
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %466, i8* %467, align 1, !tbaa !2447
  %468 = icmp eq i32 %452, 0
  %469 = zext i1 %468 to i8
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %469, i8* %470, align 1, !tbaa !2448
  %471 = lshr i32 %452, 31
  %472 = trunc i32 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %472, i8* %473, align 1, !tbaa !2449
  %474 = lshr i32 %444, 31
  %475 = lshr i32 %451, 31
  %476 = xor i32 %475, %474
  %477 = xor i32 %471, %474
  %478 = add nuw nsw i32 %477, %476
  %479 = icmp eq i32 %478, 2
  %480 = zext i1 %479 to i8
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %480, i8* %481, align 1, !tbaa !2450
  %482 = load i64, i64* %PC
  %483 = add i64 %482, 65
  %484 = load i64, i64* %PC
  %485 = add i64 %484, 6
  %486 = load i64, i64* %PC
  %487 = add i64 %486, 6
  store i64 %487, i64* %PC
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %489 = load i8, i8* %488, align 1, !tbaa !2449
  %490 = icmp ne i8 %489, 0
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %492 = load i8, i8* %491, align 1, !tbaa !2450
  %493 = icmp ne i8 %492, 0
  %494 = xor i1 %490, %493
  %495 = xor i1 %494, true
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %498 = select i1 %494, i64 %485, i64 %483
  store i64 %498, i64* %497, align 8, !tbaa !2428
  %499 = load i8, i8* %BRANCH_TAKEN
  %500 = icmp eq i8 %499, 1
  br i1 %500, label %block_40115d, label %block_401122

block_400ff3:                                     ; preds = %block_400f60
  %501 = load i64, i64* %PC
  %502 = add i64 %501, 10
  store i64 %502, i64* %PC
  store i64 -9223372036854775808, i64* %RAX, align 8, !tbaa !2428
  %503 = load i64, i64* %RBP
  %504 = sub i64 %503, 24
  %505 = load i64, i64* %PC
  %506 = add i64 %505, 4
  store i64 %506, i64* %PC
  %507 = inttoptr i64 %504 to i64*
  %508 = load i64, i64* %507
  store i64 %508, i64* %RCX, align 8, !tbaa !2428
  %509 = load i64, i64* %RBP
  %510 = sub i64 %509, 64
  %511 = load i64, i64* %PC
  %512 = add i64 %511, 4
  store i64 %512, i64* %PC
  %513 = inttoptr i64 %510 to i32*
  %514 = load i32, i32* %513
  %515 = sext i32 %514 to i64
  store i64 %515, i64* %RDX, align 8, !tbaa !2428
  %516 = load i64, i64* %RDX
  %517 = load i64, i64* %PC
  %518 = add i64 %517, 7
  store i64 %518, i64* %PC
  %519 = sext i64 %516 to i128
  %520 = and i128 %519, -18446744073709551616
  %521 = zext i64 %516 to i128
  %522 = or i128 %520, %521
  %523 = mul nsw i128 32000, %522
  %524 = trunc i128 %523 to i64
  store i64 %524, i64* %RDX, align 8, !tbaa !2428
  %525 = sext i64 %524 to i128
  %526 = icmp ne i128 %525, %523
  %527 = zext i1 %526 to i8
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %527, i8* %528, align 1, !tbaa !2432
  %529 = trunc i128 %523 to i32
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %530, align 1, !tbaa !2446
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %531, align 1, !tbaa !2447
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %532, align 1, !tbaa !2448
  %533 = lshr i64 %524, 63
  %534 = trunc i64 %533 to i8
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %534, i8* %535, align 1, !tbaa !2449
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %527, i8* %536, align 1, !tbaa !2450
  %537 = load i64, i64* %RCX
  %538 = load i64, i64* %RDX
  %539 = load i64, i64* %PC
  %540 = add i64 %539, 3
  store i64 %540, i64* %PC
  %541 = add i64 %538, %537
  store i64 %541, i64* %RCX, align 8, !tbaa !2428
  %542 = icmp ult i64 %541, %537
  %543 = icmp ult i64 %541, %538
  %544 = or i1 %542, %543
  %545 = zext i1 %544 to i8
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %545, i8* %546, align 1, !tbaa !2432
  %547 = trunc i64 %541 to i32
  %548 = and i32 %547, 255
  %549 = call i32 @llvm.ctpop.i32(i32 %548) #16
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  %552 = xor i8 %551, 1
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %552, i8* %553, align 1, !tbaa !2446
  %554 = xor i64 %538, %537
  %555 = xor i64 %554, %541
  %556 = lshr i64 %555, 4
  %557 = trunc i64 %556 to i8
  %558 = and i8 %557, 1
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %558, i8* %559, align 1, !tbaa !2447
  %560 = icmp eq i64 %541, 0
  %561 = zext i1 %560 to i8
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %561, i8* %562, align 1, !tbaa !2448
  %563 = lshr i64 %541, 63
  %564 = trunc i64 %563 to i8
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %564, i8* %565, align 1, !tbaa !2449
  %566 = lshr i64 %537, 63
  %567 = lshr i64 %538, 63
  %568 = xor i64 %563, %566
  %569 = xor i64 %563, %567
  %570 = add nuw nsw i64 %568, %569
  %571 = icmp eq i64 %570, 2
  %572 = zext i1 %571 to i8
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %572, i8* %573, align 1, !tbaa !2450
  %574 = load i64, i64* %RBP
  %575 = sub i64 %574, 64
  %576 = load i64, i64* %PC
  %577 = add i64 %576, 4
  store i64 %577, i64* %PC
  %578 = inttoptr i64 %575 to i32*
  %579 = load i32, i32* %578
  %580 = sext i32 %579 to i64
  store i64 %580, i64* %RDX, align 8, !tbaa !2428
  %581 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %582 = load i64, i64* %RCX
  %583 = load i64, i64* %RDX
  %584 = mul i64 %583, 8
  %585 = add i64 %584, %582
  %586 = load i64, i64* %PC
  %587 = add i64 %586, 5
  store i64 %587, i64* %PC
  %588 = inttoptr i64 %585 to double*
  %589 = load double, double* %588
  %590 = bitcast i8* %581 to double*
  store double %589, double* %590, align 1, !tbaa !2453
  %591 = getelementptr inbounds i8, i8* %581, i64 8
  %592 = bitcast i8* %591 to double*
  store double 0.000000e+00, double* %592, align 1, !tbaa !2453
  %593 = bitcast %union.vec128_t* %XMM0 to i8*
  %594 = load i64, i64* %PC
  %595 = add i64 %594, 5
  store i64 %595, i64* %PC
  %596 = bitcast i8* %593 to i64*
  %597 = load i64, i64* %596, align 1
  store i64 %597, i64* %RCX, align 1, !tbaa !2428
  %598 = load i64, i64* %RCX
  %599 = load i64, i64* %RAX
  %600 = load i64, i64* %PC
  %601 = add i64 %600, 3
  store i64 %601, i64* %PC
  %602 = xor i64 %599, %598
  store i64 %602, i64* %RCX, align 8, !tbaa !2428
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %603, align 1, !tbaa !2432
  %604 = trunc i64 %602 to i32
  %605 = and i32 %604, 255
  %606 = call i32 @llvm.ctpop.i32(i32 %605) #16
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %609, i8* %610, align 1, !tbaa !2446
  %611 = icmp eq i64 %602, 0
  %612 = zext i1 %611 to i8
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %612, i8* %613, align 1, !tbaa !2448
  %614 = lshr i64 %602, 63
  %615 = trunc i64 %614 to i8
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %615, i8* %616, align 1, !tbaa !2449
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %617, align 1, !tbaa !2450
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %618, align 1, !tbaa !2447
  %619 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %620 = load i64, i64* %RCX
  %621 = load i64, i64* %PC
  %622 = add i64 %621, 5
  store i64 %622, i64* %PC
  %623 = bitcast i8* %619 to i64*
  store i64 %620, i64* %623, align 1, !tbaa !2428
  %624 = getelementptr inbounds i8, i8* %619, i64 8
  %625 = bitcast i8* %624 to i64*
  store i64 0, i64* %625, align 1, !tbaa !2428
  %626 = load i64, i64* %RBP
  %627 = sub i64 %626, 40
  %628 = load i64, i64* %PC
  %629 = add i64 %628, 4
  store i64 %629, i64* %PC
  %630 = inttoptr i64 %627 to i64*
  %631 = load i64, i64* %630
  store i64 %631, i64* %RAX, align 8, !tbaa !2428
  %632 = load i64, i64* %RBP
  %633 = sub i64 %632, 64
  %634 = load i64, i64* %PC
  %635 = add i64 %634, 4
  store i64 %635, i64* %PC
  %636 = inttoptr i64 %633 to i32*
  %637 = load i32, i32* %636
  %638 = sext i32 %637 to i64
  store i64 %638, i64* %RCX, align 8, !tbaa !2428
  %639 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %640 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %641 = load i64, i64* %RAX
  %642 = load i64, i64* %RCX
  %643 = mul i64 %642, 8
  %644 = add i64 %643, %641
  %645 = load i64, i64* %PC
  %646 = add i64 %645, 5
  store i64 %646, i64* %PC
  %647 = bitcast i8* %640 to double*
  %648 = load double, double* %647, align 1
  %649 = getelementptr inbounds i8, i8* %640, i64 8
  %650 = bitcast i8* %649 to i64*
  %651 = load i64, i64* %650, align 1
  %652 = inttoptr i64 %644 to double*
  %653 = load double, double* %652
  %654 = fmul double %648, %653
  %655 = bitcast i8* %639 to double*
  store double %654, double* %655, align 1, !tbaa !2453
  %656 = getelementptr inbounds i8, i8* %639, i64 8
  %657 = bitcast i8* %656 to i64*
  store i64 %651, i64* %657, align 1, !tbaa !2453
  %658 = load i64, i64* %RBP
  %659 = sub i64 %658, 32
  %660 = load i64, i64* %PC
  %661 = add i64 %660, 4
  store i64 %661, i64* %PC
  %662 = inttoptr i64 %659 to i64*
  %663 = load i64, i64* %662
  store i64 %663, i64* %RAX, align 8, !tbaa !2428
  %664 = load i64, i64* %RBP
  %665 = sub i64 %664, 64
  %666 = load i64, i64* %PC
  %667 = add i64 %666, 4
  store i64 %667, i64* %PC
  %668 = inttoptr i64 %665 to i32*
  %669 = load i32, i32* %668
  %670 = sext i32 %669 to i64
  store i64 %670, i64* %RCX, align 8, !tbaa !2428
  %671 = load i64, i64* %RAX
  %672 = load i64, i64* %RCX
  %673 = mul i64 %672, 8
  %674 = add i64 %673, %671
  %675 = bitcast %union.vec128_t* %XMM0 to i8*
  %676 = load i64, i64* %PC
  %677 = add i64 %676, 5
  store i64 %677, i64* %PC
  %678 = bitcast i8* %675 to double*
  %679 = load double, double* %678, align 1
  %680 = inttoptr i64 %674 to double*
  store double %679, double* %680
  %681 = load i64, i64* %RBP
  %682 = sub i64 %681, 60
  %683 = load i64, i64* %PC
  %684 = add i64 %683, 7
  store i64 %684, i64* %PC
  %685 = inttoptr i64 %682 to i32*
  store i32 0, i32* %685
  br label %block_401046

block_40110f:                                     ; preds = %block_400eda
  %686 = sub i64 %269, 60
  %687 = load i64, i64* %PC
  %688 = add i64 %687, 7
  store i64 %688, i64* %PC
  %689 = inttoptr i64 %686 to i32*
  store i32 0, i32* %689
  br label %block_401116

block_401057:                                     ; preds = %block_401046
  %690 = sub i64 %1327, 16
  %691 = load i64, i64* %PC
  %692 = add i64 %691, 4
  store i64 %692, i64* %PC
  %693 = inttoptr i64 %690 to i64*
  %694 = load i64, i64* %693
  store i64 %694, i64* %RAX, align 8, !tbaa !2428
  %695 = load i64, i64* %RBP
  %696 = sub i64 %695, 60
  %697 = load i64, i64* %PC
  %698 = add i64 %697, 4
  store i64 %698, i64* %PC
  %699 = inttoptr i64 %696 to i32*
  %700 = load i32, i32* %699
  %701 = sext i32 %700 to i64
  store i64 %701, i64* %RCX, align 8, !tbaa !2428
  %702 = load i64, i64* %RCX
  %703 = load i64, i64* %PC
  %704 = add i64 %703, 7
  store i64 %704, i64* %PC
  %705 = sext i64 %702 to i128
  %706 = and i128 %705, -18446744073709551616
  %707 = zext i64 %702 to i128
  %708 = or i128 %706, %707
  %709 = mul nsw i128 32000, %708
  %710 = trunc i128 %709 to i64
  store i64 %710, i64* %RCX, align 8, !tbaa !2428
  %711 = sext i64 %710 to i128
  %712 = icmp ne i128 %711, %709
  %713 = zext i1 %712 to i8
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %713, i8* %714, align 1, !tbaa !2432
  %715 = trunc i128 %709 to i32
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %716, align 1, !tbaa !2446
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %717, align 1, !tbaa !2447
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %718, align 1, !tbaa !2448
  %719 = lshr i64 %710, 63
  %720 = trunc i64 %719 to i8
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %720, i8* %721, align 1, !tbaa !2449
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %713, i8* %722, align 1, !tbaa !2450
  %723 = load i64, i64* %RAX
  %724 = load i64, i64* %RCX
  %725 = load i64, i64* %PC
  %726 = add i64 %725, 3
  store i64 %726, i64* %PC
  %727 = add i64 %724, %723
  store i64 %727, i64* %RAX, align 8, !tbaa !2428
  %728 = icmp ult i64 %727, %723
  %729 = icmp ult i64 %727, %724
  %730 = or i1 %728, %729
  %731 = zext i1 %730 to i8
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %731, i8* %732, align 1, !tbaa !2432
  %733 = trunc i64 %727 to i32
  %734 = and i32 %733, 255
  %735 = call i32 @llvm.ctpop.i32(i32 %734) #16
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  %738 = xor i8 %737, 1
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %738, i8* %739, align 1, !tbaa !2446
  %740 = xor i64 %724, %723
  %741 = xor i64 %740, %727
  %742 = lshr i64 %741, 4
  %743 = trunc i64 %742 to i8
  %744 = and i8 %743, 1
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %744, i8* %745, align 1, !tbaa !2447
  %746 = icmp eq i64 %727, 0
  %747 = zext i1 %746 to i8
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %747, i8* %748, align 1, !tbaa !2448
  %749 = lshr i64 %727, 63
  %750 = trunc i64 %749 to i8
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %750, i8* %751, align 1, !tbaa !2449
  %752 = lshr i64 %723, 63
  %753 = lshr i64 %724, 63
  %754 = xor i64 %749, %752
  %755 = xor i64 %749, %753
  %756 = add nuw nsw i64 %754, %755
  %757 = icmp eq i64 %756, 2
  %758 = zext i1 %757 to i8
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %758, i8* %759, align 1, !tbaa !2450
  %760 = load i64, i64* %RBP
  %761 = sub i64 %760, 64
  %762 = load i64, i64* %PC
  %763 = add i64 %762, 3
  store i64 %763, i64* %PC
  %764 = inttoptr i64 %761 to i32*
  %765 = load i32, i32* %764
  %766 = zext i32 %765 to i64
  store i64 %766, i64* %RDX, align 8, !tbaa !2428
  %767 = load i64, i64* %RDX
  %768 = load i64, i64* %PC
  %769 = add i64 %768, 3
  store i64 %769, i64* %PC
  %770 = trunc i64 %767 to i32
  %771 = sub i32 %770, 1
  %772 = zext i32 %771 to i64
  store i64 %772, i64* %RDX, align 8, !tbaa !2428
  %773 = icmp ult i32 %770, 1
  %774 = zext i1 %773 to i8
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %774, i8* %775, align 1, !tbaa !2432
  %776 = and i32 %771, 255
  %777 = call i32 @llvm.ctpop.i32(i32 %776) #16
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  %780 = xor i8 %779, 1
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %780, i8* %781, align 1, !tbaa !2446
  %782 = xor i64 1, %767
  %783 = trunc i64 %782 to i32
  %784 = xor i32 %783, %771
  %785 = lshr i32 %784, 4
  %786 = trunc i32 %785 to i8
  %787 = and i8 %786, 1
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %787, i8* %788, align 1, !tbaa !2447
  %789 = icmp eq i32 %771, 0
  %790 = zext i1 %789 to i8
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %790, i8* %791, align 1, !tbaa !2448
  %792 = lshr i32 %771, 31
  %793 = trunc i32 %792 to i8
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %793, i8* %794, align 1, !tbaa !2449
  %795 = lshr i32 %770, 31
  %796 = xor i32 %792, %795
  %797 = add nuw nsw i32 %796, %795
  %798 = icmp eq i32 %797, 2
  %799 = zext i1 %798 to i8
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %799, i8* %800, align 1, !tbaa !2450
  %801 = load i32, i32* %EDX
  %802 = zext i32 %801 to i64
  %803 = load i64, i64* %PC
  %804 = add i64 %803, 3
  store i64 %804, i64* %PC
  %805 = shl i64 %802, 32
  %806 = ashr exact i64 %805, 32
  store i64 %806, i64* %RCX, align 8, !tbaa !2428
  %807 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %808 = load i64, i64* %RAX
  %809 = load i64, i64* %RCX
  %810 = mul i64 %809, 8
  %811 = add i64 %810, %808
  %812 = load i64, i64* %PC
  %813 = add i64 %812, 5
  store i64 %813, i64* %PC
  %814 = inttoptr i64 %811 to double*
  %815 = load double, double* %814
  %816 = bitcast i8* %807 to double*
  store double %815, double* %816, align 1, !tbaa !2453
  %817 = getelementptr inbounds i8, i8* %807, i64 8
  %818 = bitcast i8* %817 to double*
  store double 0.000000e+00, double* %818, align 1, !tbaa !2453
  %819 = load i64, i64* %RBP
  %820 = sub i64 %819, 32
  %821 = load i64, i64* %PC
  %822 = add i64 %821, 4
  store i64 %822, i64* %PC
  %823 = inttoptr i64 %820 to i64*
  %824 = load i64, i64* %823
  store i64 %824, i64* %RAX, align 8, !tbaa !2428
  %825 = load i64, i64* %RBP
  %826 = sub i64 %825, 64
  %827 = load i64, i64* %PC
  %828 = add i64 %827, 4
  store i64 %828, i64* %PC
  %829 = inttoptr i64 %826 to i32*
  %830 = load i32, i32* %829
  %831 = sext i32 %830 to i64
  store i64 %831, i64* %RCX, align 8, !tbaa !2428
  %832 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %833 = load i64, i64* %RAX
  %834 = load i64, i64* %RCX
  %835 = mul i64 %834, 8
  %836 = add i64 %835, %833
  %837 = load i64, i64* %PC
  %838 = add i64 %837, 5
  store i64 %838, i64* %PC
  %839 = inttoptr i64 %836 to double*
  %840 = load double, double* %839
  %841 = bitcast i8* %832 to double*
  store double %840, double* %841, align 1, !tbaa !2453
  %842 = getelementptr inbounds i8, i8* %832, i64 8
  %843 = bitcast i8* %842 to double*
  store double 0.000000e+00, double* %843, align 1, !tbaa !2453
  %844 = load i64, i64* %RBP
  %845 = sub i64 %844, 16
  %846 = load i64, i64* %PC
  %847 = add i64 %846, 4
  store i64 %847, i64* %PC
  %848 = inttoptr i64 %845 to i64*
  %849 = load i64, i64* %848
  store i64 %849, i64* %RAX, align 8, !tbaa !2428
  %850 = load i64, i64* %RBP
  %851 = sub i64 %850, 64
  %852 = load i64, i64* %PC
  %853 = add i64 %852, 3
  store i64 %853, i64* %PC
  %854 = inttoptr i64 %851 to i32*
  %855 = load i32, i32* %854
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RDX, align 8, !tbaa !2428
  %857 = load i64, i64* %RDX
  %858 = load i64, i64* %RBP
  %859 = sub i64 %858, 60
  %860 = load i64, i64* %PC
  %861 = add i64 %860, 3
  store i64 %861, i64* %PC
  %862 = trunc i64 %857 to i32
  %863 = inttoptr i64 %859 to i32*
  %864 = load i32, i32* %863
  %865 = sub i32 %862, %864
  %866 = zext i32 %865 to i64
  store i64 %866, i64* %RDX, align 8, !tbaa !2428
  %867 = icmp ult i32 %862, %864
  %868 = zext i1 %867 to i8
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %868, i8* %869, align 1, !tbaa !2432
  %870 = and i32 %865, 255
  %871 = call i32 @llvm.ctpop.i32(i32 %870) #16
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  %874 = xor i8 %873, 1
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %874, i8* %875, align 1, !tbaa !2446
  %876 = xor i32 %864, %862
  %877 = xor i32 %876, %865
  %878 = lshr i32 %877, 4
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %880, i8* %881, align 1, !tbaa !2447
  %882 = icmp eq i32 %865, 0
  %883 = zext i1 %882 to i8
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %883, i8* %884, align 1, !tbaa !2448
  %885 = lshr i32 %865, 31
  %886 = trunc i32 %885 to i8
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %886, i8* %887, align 1, !tbaa !2449
  %888 = lshr i32 %862, 31
  %889 = lshr i32 %864, 31
  %890 = xor i32 %889, %888
  %891 = xor i32 %885, %888
  %892 = add nuw nsw i32 %891, %890
  %893 = icmp eq i32 %892, 2
  %894 = zext i1 %893 to i8
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %894, i8* %895, align 1, !tbaa !2450
  %896 = load i64, i64* %RDX
  %897 = load i64, i64* %PC
  %898 = add i64 %897, 3
  store i64 %898, i64* %PC
  %899 = trunc i64 %896 to i32
  %900 = sub i32 %899, 1
  %901 = zext i32 %900 to i64
  store i64 %901, i64* %RDX, align 8, !tbaa !2428
  %902 = icmp ult i32 %899, 1
  %903 = zext i1 %902 to i8
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %903, i8* %904, align 1, !tbaa !2432
  %905 = and i32 %900, 255
  %906 = call i32 @llvm.ctpop.i32(i32 %905) #16
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  %909 = xor i8 %908, 1
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %909, i8* %910, align 1, !tbaa !2446
  %911 = xor i64 1, %896
  %912 = trunc i64 %911 to i32
  %913 = xor i32 %912, %900
  %914 = lshr i32 %913, 4
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %916, i8* %917, align 1, !tbaa !2447
  %918 = icmp eq i32 %900, 0
  %919 = zext i1 %918 to i8
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %919, i8* %920, align 1, !tbaa !2448
  %921 = lshr i32 %900, 31
  %922 = trunc i32 %921 to i8
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %922, i8* %923, align 1, !tbaa !2449
  %924 = lshr i32 %899, 31
  %925 = xor i32 %921, %924
  %926 = add nuw nsw i32 %925, %924
  %927 = icmp eq i32 %926, 2
  %928 = zext i1 %927 to i8
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %928, i8* %929, align 1, !tbaa !2450
  %930 = load i32, i32* %EDX
  %931 = zext i32 %930 to i64
  %932 = load i64, i64* %PC
  %933 = add i64 %932, 3
  store i64 %933, i64* %PC
  %934 = shl i64 %931, 32
  %935 = ashr exact i64 %934, 32
  store i64 %935, i64* %RCX, align 8, !tbaa !2428
  %936 = load i64, i64* %RCX
  %937 = load i64, i64* %PC
  %938 = add i64 %937, 7
  store i64 %938, i64* %PC
  %939 = sext i64 %936 to i128
  %940 = and i128 %939, -18446744073709551616
  %941 = zext i64 %936 to i128
  %942 = or i128 %940, %941
  %943 = mul nsw i128 32000, %942
  %944 = trunc i128 %943 to i64
  store i64 %944, i64* %RCX, align 8, !tbaa !2428
  %945 = sext i64 %944 to i128
  %946 = icmp ne i128 %945, %943
  %947 = zext i1 %946 to i8
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %947, i8* %948, align 1, !tbaa !2432
  %949 = trunc i128 %943 to i32
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %950, align 1, !tbaa !2446
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %951, align 1, !tbaa !2447
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %952, align 1, !tbaa !2448
  %953 = lshr i64 %944, 63
  %954 = trunc i64 %953 to i8
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %954, i8* %955, align 1, !tbaa !2449
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %947, i8* %956, align 1, !tbaa !2450
  %957 = load i64, i64* %RAX
  %958 = load i64, i64* %RCX
  %959 = load i64, i64* %PC
  %960 = add i64 %959, 3
  store i64 %960, i64* %PC
  %961 = add i64 %958, %957
  store i64 %961, i64* %RAX, align 8, !tbaa !2428
  %962 = icmp ult i64 %961, %957
  %963 = icmp ult i64 %961, %958
  %964 = or i1 %962, %963
  %965 = zext i1 %964 to i8
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %965, i8* %966, align 1, !tbaa !2432
  %967 = trunc i64 %961 to i32
  %968 = and i32 %967, 255
  %969 = call i32 @llvm.ctpop.i32(i32 %968) #16
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  %972 = xor i8 %971, 1
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %972, i8* %973, align 1, !tbaa !2446
  %974 = xor i64 %958, %957
  %975 = xor i64 %974, %961
  %976 = lshr i64 %975, 4
  %977 = trunc i64 %976 to i8
  %978 = and i8 %977, 1
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %978, i8* %979, align 1, !tbaa !2447
  %980 = icmp eq i64 %961, 0
  %981 = zext i1 %980 to i8
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %981, i8* %982, align 1, !tbaa !2448
  %983 = lshr i64 %961, 63
  %984 = trunc i64 %983 to i8
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %984, i8* %985, align 1, !tbaa !2449
  %986 = lshr i64 %957, 63
  %987 = lshr i64 %958, 63
  %988 = xor i64 %983, %986
  %989 = xor i64 %983, %987
  %990 = add nuw nsw i64 %988, %989
  %991 = icmp eq i64 %990, 2
  %992 = zext i1 %991 to i8
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %992, i8* %993, align 1, !tbaa !2450
  %994 = load i64, i64* %RBP
  %995 = sub i64 %994, 64
  %996 = load i64, i64* %PC
  %997 = add i64 %996, 3
  store i64 %997, i64* %PC
  %998 = inttoptr i64 %995 to i32*
  %999 = load i32, i32* %998
  %1000 = zext i32 %999 to i64
  store i64 %1000, i64* %RDX, align 8, !tbaa !2428
  %1001 = load i64, i64* %RDX
  %1002 = load i64, i64* %PC
  %1003 = add i64 %1002, 3
  store i64 %1003, i64* %PC
  %1004 = trunc i64 %1001 to i32
  %1005 = sub i32 %1004, 1
  %1006 = zext i32 %1005 to i64
  store i64 %1006, i64* %RDX, align 8, !tbaa !2428
  %1007 = icmp ult i32 %1004, 1
  %1008 = zext i1 %1007 to i8
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1008, i8* %1009, align 1, !tbaa !2432
  %1010 = and i32 %1005, 255
  %1011 = call i32 @llvm.ctpop.i32(i32 %1010) #16
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1014, i8* %1015, align 1, !tbaa !2446
  %1016 = xor i64 1, %1001
  %1017 = trunc i64 %1016 to i32
  %1018 = xor i32 %1017, %1005
  %1019 = lshr i32 %1018, 4
  %1020 = trunc i32 %1019 to i8
  %1021 = and i8 %1020, 1
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1021, i8* %1022, align 1, !tbaa !2447
  %1023 = icmp eq i32 %1005, 0
  %1024 = zext i1 %1023 to i8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1024, i8* %1025, align 1, !tbaa !2448
  %1026 = lshr i32 %1005, 31
  %1027 = trunc i32 %1026 to i8
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1027, i8* %1028, align 1, !tbaa !2449
  %1029 = lshr i32 %1004, 31
  %1030 = xor i32 %1026, %1029
  %1031 = add nuw nsw i32 %1030, %1029
  %1032 = icmp eq i32 %1031, 2
  %1033 = zext i1 %1032 to i8
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1033, i8* %1034, align 1, !tbaa !2450
  %1035 = load i32, i32* %EDX
  %1036 = zext i32 %1035 to i64
  %1037 = load i64, i64* %PC
  %1038 = add i64 %1037, 3
  store i64 %1038, i64* %PC
  %1039 = shl i64 %1036, 32
  %1040 = ashr exact i64 %1039, 32
  store i64 %1040, i64* %RCX, align 8, !tbaa !2428
  %1041 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1042 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1043 = load i64, i64* %RAX
  %1044 = load i64, i64* %RCX
  %1045 = mul i64 %1044, 8
  %1046 = add i64 %1045, %1043
  %1047 = load i64, i64* %PC
  %1048 = add i64 %1047, 5
  store i64 %1048, i64* %PC
  %1049 = bitcast i8* %1042 to double*
  %1050 = load double, double* %1049, align 1
  %1051 = getelementptr inbounds i8, i8* %1042, i64 8
  %1052 = bitcast i8* %1051 to i64*
  %1053 = load i64, i64* %1052, align 1
  %1054 = inttoptr i64 %1046 to double*
  %1055 = load double, double* %1054
  %1056 = fmul double %1050, %1055
  %1057 = bitcast i8* %1041 to double*
  store double %1056, double* %1057, align 1, !tbaa !2453
  %1058 = getelementptr inbounds i8, i8* %1041, i64 8
  %1059 = bitcast i8* %1058 to i64*
  store i64 %1053, i64* %1059, align 1, !tbaa !2453
  %1060 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1061 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1062 = bitcast %union.vec128_t* %XMM1 to i8*
  %1063 = load i64, i64* %PC
  %1064 = add i64 %1063, 4
  store i64 %1064, i64* %PC
  %1065 = bitcast i8* %1061 to double*
  %1066 = load double, double* %1065, align 1
  %1067 = getelementptr inbounds i8, i8* %1061, i64 8
  %1068 = bitcast i8* %1067 to i64*
  %1069 = load i64, i64* %1068, align 1
  %1070 = bitcast i8* %1062 to double*
  %1071 = load double, double* %1070, align 1
  %1072 = fadd double %1066, %1071
  %1073 = bitcast i8* %1060 to double*
  store double %1072, double* %1073, align 1, !tbaa !2453
  %1074 = getelementptr inbounds i8, i8* %1060, i64 8
  %1075 = bitcast i8* %1074 to i64*
  store i64 %1069, i64* %1075, align 1, !tbaa !2453
  %1076 = load i64, i64* %RBP
  %1077 = sub i64 %1076, 16
  %1078 = load i64, i64* %PC
  %1079 = add i64 %1078, 4
  store i64 %1079, i64* %PC
  %1080 = inttoptr i64 %1077 to i64*
  %1081 = load i64, i64* %1080
  store i64 %1081, i64* %RAX, align 8, !tbaa !2428
  %1082 = load i64, i64* %RBP
  %1083 = sub i64 %1082, 60
  %1084 = load i64, i64* %PC
  %1085 = add i64 %1084, 4
  store i64 %1085, i64* %PC
  %1086 = inttoptr i64 %1083 to i32*
  %1087 = load i32, i32* %1086
  %1088 = sext i32 %1087 to i64
  store i64 %1088, i64* %RCX, align 8, !tbaa !2428
  %1089 = load i64, i64* %RCX
  %1090 = load i64, i64* %PC
  %1091 = add i64 %1090, 7
  store i64 %1091, i64* %PC
  %1092 = sext i64 %1089 to i128
  %1093 = and i128 %1092, -18446744073709551616
  %1094 = zext i64 %1089 to i128
  %1095 = or i128 %1093, %1094
  %1096 = mul nsw i128 32000, %1095
  %1097 = trunc i128 %1096 to i64
  store i64 %1097, i64* %RCX, align 8, !tbaa !2428
  %1098 = sext i64 %1097 to i128
  %1099 = icmp ne i128 %1098, %1096
  %1100 = zext i1 %1099 to i8
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1100, i8* %1101, align 1, !tbaa !2432
  %1102 = trunc i128 %1096 to i32
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1103, align 1, !tbaa !2446
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1104, align 1, !tbaa !2447
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1105, align 1, !tbaa !2448
  %1106 = lshr i64 %1097, 63
  %1107 = trunc i64 %1106 to i8
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1107, i8* %1108, align 1, !tbaa !2449
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1100, i8* %1109, align 1, !tbaa !2450
  %1110 = load i64, i64* %RAX
  %1111 = load i64, i64* %RCX
  %1112 = load i64, i64* %PC
  %1113 = add i64 %1112, 3
  store i64 %1113, i64* %PC
  %1114 = add i64 %1111, %1110
  store i64 %1114, i64* %RAX, align 8, !tbaa !2428
  %1115 = icmp ult i64 %1114, %1110
  %1116 = icmp ult i64 %1114, %1111
  %1117 = or i1 %1115, %1116
  %1118 = zext i1 %1117 to i8
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1118, i8* %1119, align 1, !tbaa !2432
  %1120 = trunc i64 %1114 to i32
  %1121 = and i32 %1120, 255
  %1122 = call i32 @llvm.ctpop.i32(i32 %1121) #16
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  %1125 = xor i8 %1124, 1
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1125, i8* %1126, align 1, !tbaa !2446
  %1127 = xor i64 %1111, %1110
  %1128 = xor i64 %1127, %1114
  %1129 = lshr i64 %1128, 4
  %1130 = trunc i64 %1129 to i8
  %1131 = and i8 %1130, 1
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1131, i8* %1132, align 1, !tbaa !2447
  %1133 = icmp eq i64 %1114, 0
  %1134 = zext i1 %1133 to i8
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1134, i8* %1135, align 1, !tbaa !2448
  %1136 = lshr i64 %1114, 63
  %1137 = trunc i64 %1136 to i8
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1137, i8* %1138, align 1, !tbaa !2449
  %1139 = lshr i64 %1110, 63
  %1140 = lshr i64 %1111, 63
  %1141 = xor i64 %1136, %1139
  %1142 = xor i64 %1136, %1140
  %1143 = add nuw nsw i64 %1141, %1142
  %1144 = icmp eq i64 %1143, 2
  %1145 = zext i1 %1144 to i8
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1145, i8* %1146, align 1, !tbaa !2450
  %1147 = load i64, i64* %RBP
  %1148 = sub i64 %1147, 64
  %1149 = load i64, i64* %PC
  %1150 = add i64 %1149, 4
  store i64 %1150, i64* %PC
  %1151 = inttoptr i64 %1148 to i32*
  %1152 = load i32, i32* %1151
  %1153 = sext i32 %1152 to i64
  store i64 %1153, i64* %RCX, align 8, !tbaa !2428
  %1154 = load i64, i64* %RAX
  %1155 = load i64, i64* %RCX
  %1156 = mul i64 %1155, 8
  %1157 = add i64 %1156, %1154
  %1158 = bitcast %union.vec128_t* %XMM0 to i8*
  %1159 = load i64, i64* %PC
  %1160 = add i64 %1159, 5
  store i64 %1160, i64* %PC
  %1161 = bitcast i8* %1158 to double*
  %1162 = load double, double* %1161, align 1
  %1163 = inttoptr i64 %1157 to double*
  store double %1162, double* %1163
  %1164 = load i64, i64* %RBP
  %1165 = sub i64 %1164, 60
  %1166 = load i64, i64* %PC
  %1167 = add i64 %1166, 3
  store i64 %1167, i64* %PC
  %1168 = inttoptr i64 %1165 to i32*
  %1169 = load i32, i32* %1168
  %1170 = zext i32 %1169 to i64
  store i64 %1170, i64* %RAX, align 8, !tbaa !2428
  %1171 = load i64, i64* %RAX
  %1172 = load i64, i64* %PC
  %1173 = add i64 %1172, 3
  store i64 %1173, i64* %PC
  %1174 = trunc i64 %1171 to i32
  %1175 = add i32 1, %1174
  %1176 = zext i32 %1175 to i64
  store i64 %1176, i64* %RAX, align 8, !tbaa !2428
  %1177 = icmp ult i32 %1175, %1174
  %1178 = icmp ult i32 %1175, 1
  %1179 = or i1 %1177, %1178
  %1180 = zext i1 %1179 to i8
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1180, i8* %1181, align 1, !tbaa !2432
  %1182 = and i32 %1175, 255
  %1183 = call i32 @llvm.ctpop.i32(i32 %1182) #16
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = xor i8 %1185, 1
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1186, i8* %1187, align 1, !tbaa !2446
  %1188 = xor i64 1, %1171
  %1189 = trunc i64 %1188 to i32
  %1190 = xor i32 %1189, %1175
  %1191 = lshr i32 %1190, 4
  %1192 = trunc i32 %1191 to i8
  %1193 = and i8 %1192, 1
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1193, i8* %1194, align 1, !tbaa !2447
  %1195 = icmp eq i32 %1175, 0
  %1196 = zext i1 %1195 to i8
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1196, i8* %1197, align 1, !tbaa !2448
  %1198 = lshr i32 %1175, 31
  %1199 = trunc i32 %1198 to i8
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1199, i8* %1200, align 1, !tbaa !2449
  %1201 = lshr i32 %1174, 31
  %1202 = xor i32 %1198, %1201
  %1203 = add nuw nsw i32 %1202, %1198
  %1204 = icmp eq i32 %1203, 2
  %1205 = zext i1 %1204 to i8
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1205, i8* %1206, align 1, !tbaa !2450
  %1207 = load i64, i64* %RBP
  %1208 = sub i64 %1207, 60
  %1209 = load i32, i32* %EAX
  %1210 = zext i32 %1209 to i64
  %1211 = load i64, i64* %PC
  %1212 = add i64 %1211, 3
  store i64 %1212, i64* %PC
  %1213 = inttoptr i64 %1208 to i32*
  store i32 %1209, i32* %1213
  %1214 = load i64, i64* %PC
  %1215 = sub i64 %1214, 142
  %1216 = load i64, i64* %PC
  %1217 = add i64 %1216, 5
  store i64 %1217, i64* %PC
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1215, i64* %1218, align 8, !tbaa !2428
  br label %block_401046

block_401046:                                     ; preds = %block_401057, %block_400ff3
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.3, %block_400ff3 ], [ %MEMORY.2, %block_401057 ]
  %1219 = load i64, i64* %RBP
  %1220 = sub i64 %1219, 60
  %1221 = load i64, i64* %PC
  %1222 = add i64 %1221, 3
  store i64 %1222, i64* %PC
  %1223 = inttoptr i64 %1220 to i32*
  %1224 = load i32, i32* %1223
  %1225 = zext i32 %1224 to i64
  store i64 %1225, i64* %RAX, align 8, !tbaa !2428
  %1226 = load i64, i64* %RBP
  %1227 = sub i64 %1226, 64
  %1228 = load i64, i64* %PC
  %1229 = add i64 %1228, 3
  store i64 %1229, i64* %PC
  %1230 = inttoptr i64 %1227 to i32*
  %1231 = load i32, i32* %1230
  %1232 = zext i32 %1231 to i64
  store i64 %1232, i64* %RCX, align 8, !tbaa !2428
  %1233 = load i64, i64* %RCX
  %1234 = load i64, i64* %PC
  %1235 = add i64 %1234, 3
  store i64 %1235, i64* %PC
  %1236 = trunc i64 %1233 to i32
  %1237 = sub i32 %1236, 1
  %1238 = zext i32 %1237 to i64
  store i64 %1238, i64* %RCX, align 8, !tbaa !2428
  %1239 = icmp ult i32 %1236, 1
  %1240 = zext i1 %1239 to i8
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1240, i8* %1241, align 1, !tbaa !2432
  %1242 = and i32 %1237, 255
  %1243 = call i32 @llvm.ctpop.i32(i32 %1242) #16
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1246, i8* %1247, align 1, !tbaa !2446
  %1248 = xor i64 1, %1233
  %1249 = trunc i64 %1248 to i32
  %1250 = xor i32 %1249, %1237
  %1251 = lshr i32 %1250, 4
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1253, i8* %1254, align 1, !tbaa !2447
  %1255 = icmp eq i32 %1237, 0
  %1256 = zext i1 %1255 to i8
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1256, i8* %1257, align 1, !tbaa !2448
  %1258 = lshr i32 %1237, 31
  %1259 = trunc i32 %1258 to i8
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1259, i8* %1260, align 1, !tbaa !2449
  %1261 = lshr i32 %1236, 31
  %1262 = xor i32 %1258, %1261
  %1263 = add nuw nsw i32 %1262, %1261
  %1264 = icmp eq i32 %1263, 2
  %1265 = zext i1 %1264 to i8
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1265, i8* %1266, align 1, !tbaa !2450
  %1267 = load i32, i32* %EAX
  %1268 = zext i32 %1267 to i64
  %1269 = load i32, i32* %ECX
  %1270 = zext i32 %1269 to i64
  %1271 = load i64, i64* %PC
  %1272 = add i64 %1271, 2
  store i64 %1272, i64* %PC
  %1273 = sub i32 %1267, %1269
  %1274 = icmp ult i32 %1267, %1269
  %1275 = zext i1 %1274 to i8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1275, i8* %1276, align 1, !tbaa !2432
  %1277 = and i32 %1273, 255
  %1278 = call i32 @llvm.ctpop.i32(i32 %1277) #16
  %1279 = trunc i32 %1278 to i8
  %1280 = and i8 %1279, 1
  %1281 = xor i8 %1280, 1
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1281, i8* %1282, align 1, !tbaa !2446
  %1283 = xor i64 %1270, %1268
  %1284 = trunc i64 %1283 to i32
  %1285 = xor i32 %1284, %1273
  %1286 = lshr i32 %1285, 4
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1288, i8* %1289, align 1, !tbaa !2447
  %1290 = icmp eq i32 %1273, 0
  %1291 = zext i1 %1290 to i8
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1291, i8* %1292, align 1, !tbaa !2448
  %1293 = lshr i32 %1273, 31
  %1294 = trunc i32 %1293 to i8
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1294, i8* %1295, align 1, !tbaa !2449
  %1296 = lshr i32 %1267, 31
  %1297 = lshr i32 %1269, 31
  %1298 = xor i32 %1297, %1296
  %1299 = xor i32 %1293, %1296
  %1300 = add nuw nsw i32 %1299, %1298
  %1301 = icmp eq i32 %1300, 2
  %1302 = zext i1 %1301 to i8
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1302, i8* %1303, align 1, !tbaa !2450
  %1304 = load i64, i64* %PC
  %1305 = add i64 %1304, 136
  %1306 = load i64, i64* %PC
  %1307 = add i64 %1306, 6
  %1308 = load i64, i64* %PC
  %1309 = add i64 %1308, 6
  store i64 %1309, i64* %PC
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1311 = load i8, i8* %1310, align 1, !tbaa !2448
  %1312 = icmp eq i8 %1311, 0
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1314 = load i8, i8* %1313, align 1, !tbaa !2449
  %1315 = icmp ne i8 %1314, 0
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1317 = load i8, i8* %1316, align 1, !tbaa !2450
  %1318 = icmp ne i8 %1317, 0
  %1319 = xor i1 %1315, %1318
  %1320 = xor i1 %1319, true
  %1321 = and i1 %1312, %1320
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1324 = select i1 %1321, i64 %1305, i64 %1307
  store i64 %1324, i64* %1323, align 8, !tbaa !2428
  %1325 = load i8, i8* %BRANCH_TAKEN
  %1326 = icmp eq i8 %1325, 1
  %1327 = load i64, i64* %RBP
  br i1 %1326, label %block_4010d9, label %block_401057

block_401122:                                     ; preds = %block_401116
  %1328 = load i64, i64* %RBP
  %1329 = sub i64 %1328, 16
  %1330 = load i64, i64* %PC
  %1331 = add i64 %1330, 4
  store i64 %1331, i64* %PC
  %1332 = inttoptr i64 %1329 to i64*
  %1333 = load i64, i64* %1332
  store i64 %1333, i64* %RAX, align 8, !tbaa !2428
  %1334 = load i64, i64* %RBP
  %1335 = sub i64 %1334, 60
  %1336 = load i64, i64* %PC
  %1337 = add i64 %1336, 4
  store i64 %1337, i64* %PC
  %1338 = inttoptr i64 %1335 to i32*
  %1339 = load i32, i32* %1338
  %1340 = sext i32 %1339 to i64
  store i64 %1340, i64* %RCX, align 8, !tbaa !2428
  %1341 = load i64, i64* %RCX
  %1342 = load i64, i64* %PC
  %1343 = add i64 %1342, 7
  store i64 %1343, i64* %PC
  %1344 = sext i64 %1341 to i128
  %1345 = and i128 %1344, -18446744073709551616
  %1346 = zext i64 %1341 to i128
  %1347 = or i128 %1345, %1346
  %1348 = mul nsw i128 32000, %1347
  %1349 = trunc i128 %1348 to i64
  store i64 %1349, i64* %RCX, align 8, !tbaa !2428
  %1350 = sext i64 %1349 to i128
  %1351 = icmp ne i128 %1350, %1348
  %1352 = zext i1 %1351 to i8
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1352, i8* %1353, align 1, !tbaa !2432
  %1354 = trunc i128 %1348 to i32
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1355, align 1, !tbaa !2446
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1356, align 1, !tbaa !2447
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1357, align 1, !tbaa !2448
  %1358 = lshr i64 %1349, 63
  %1359 = trunc i64 %1358 to i8
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1359, i8* %1360, align 1, !tbaa !2449
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1352, i8* %1361, align 1, !tbaa !2450
  %1362 = load i64, i64* %RAX
  %1363 = load i64, i64* %RCX
  %1364 = load i64, i64* %PC
  %1365 = add i64 %1364, 3
  store i64 %1365, i64* %PC
  %1366 = add i64 %1363, %1362
  store i64 %1366, i64* %RAX, align 8, !tbaa !2428
  %1367 = icmp ult i64 %1366, %1362
  %1368 = icmp ult i64 %1366, %1363
  %1369 = or i1 %1367, %1368
  %1370 = zext i1 %1369 to i8
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1370, i8* %1371, align 1, !tbaa !2432
  %1372 = trunc i64 %1366 to i32
  %1373 = and i32 %1372, 255
  %1374 = call i32 @llvm.ctpop.i32(i32 %1373) #16
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = xor i8 %1376, 1
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1377, i8* %1378, align 1, !tbaa !2446
  %1379 = xor i64 %1363, %1362
  %1380 = xor i64 %1379, %1366
  %1381 = lshr i64 %1380, 4
  %1382 = trunc i64 %1381 to i8
  %1383 = and i8 %1382, 1
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1383, i8* %1384, align 1, !tbaa !2447
  %1385 = icmp eq i64 %1366, 0
  %1386 = zext i1 %1385 to i8
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1386, i8* %1387, align 1, !tbaa !2448
  %1388 = lshr i64 %1366, 63
  %1389 = trunc i64 %1388 to i8
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1389, i8* %1390, align 1, !tbaa !2449
  %1391 = lshr i64 %1362, 63
  %1392 = lshr i64 %1363, 63
  %1393 = xor i64 %1388, %1391
  %1394 = xor i64 %1388, %1392
  %1395 = add nuw nsw i64 %1393, %1394
  %1396 = icmp eq i64 %1395, 2
  %1397 = zext i1 %1396 to i8
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1397, i8* %1398, align 1, !tbaa !2450
  %1399 = load i64, i64* %RBP
  %1400 = sub i64 %1399, 4
  %1401 = load i64, i64* %PC
  %1402 = add i64 %1401, 3
  store i64 %1402, i64* %PC
  %1403 = inttoptr i64 %1400 to i32*
  %1404 = load i32, i32* %1403
  %1405 = zext i32 %1404 to i64
  store i64 %1405, i64* %RDX, align 8, !tbaa !2428
  %1406 = load i64, i64* %RDX
  %1407 = load i64, i64* %PC
  %1408 = add i64 %1407, 3
  store i64 %1408, i64* %PC
  %1409 = trunc i64 %1406 to i32
  %1410 = sub i32 %1409, 1
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %RDX, align 8, !tbaa !2428
  %1412 = icmp ult i32 %1409, 1
  %1413 = zext i1 %1412 to i8
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1413, i8* %1414, align 1, !tbaa !2432
  %1415 = and i32 %1410, 255
  %1416 = call i32 @llvm.ctpop.i32(i32 %1415) #16
  %1417 = trunc i32 %1416 to i8
  %1418 = and i8 %1417, 1
  %1419 = xor i8 %1418, 1
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1419, i8* %1420, align 1, !tbaa !2446
  %1421 = xor i64 1, %1406
  %1422 = trunc i64 %1421 to i32
  %1423 = xor i32 %1422, %1410
  %1424 = lshr i32 %1423, 4
  %1425 = trunc i32 %1424 to i8
  %1426 = and i8 %1425, 1
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1426, i8* %1427, align 1, !tbaa !2447
  %1428 = icmp eq i32 %1410, 0
  %1429 = zext i1 %1428 to i8
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1429, i8* %1430, align 1, !tbaa !2448
  %1431 = lshr i32 %1410, 31
  %1432 = trunc i32 %1431 to i8
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1432, i8* %1433, align 1, !tbaa !2449
  %1434 = lshr i32 %1409, 31
  %1435 = xor i32 %1431, %1434
  %1436 = add nuw nsw i32 %1435, %1434
  %1437 = icmp eq i32 %1436, 2
  %1438 = zext i1 %1437 to i8
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1438, i8* %1439, align 1, !tbaa !2450
  %1440 = load i32, i32* %EDX
  %1441 = zext i32 %1440 to i64
  %1442 = load i64, i64* %PC
  %1443 = add i64 %1442, 3
  store i64 %1443, i64* %PC
  %1444 = shl i64 %1441, 32
  %1445 = ashr exact i64 %1444, 32
  store i64 %1445, i64* %RCX, align 8, !tbaa !2428
  %1446 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1447 = load i64, i64* %RAX
  %1448 = load i64, i64* %RCX
  %1449 = mul i64 %1448, 8
  %1450 = add i64 %1449, %1447
  %1451 = load i64, i64* %PC
  %1452 = add i64 %1451, 5
  store i64 %1452, i64* %PC
  %1453 = inttoptr i64 %1450 to double*
  %1454 = load double, double* %1453
  %1455 = bitcast i8* %1446 to double*
  store double %1454, double* %1455, align 1, !tbaa !2453
  %1456 = getelementptr inbounds i8, i8* %1446, i64 8
  %1457 = bitcast i8* %1456 to double*
  store double 0.000000e+00, double* %1457, align 1, !tbaa !2453
  %1458 = load i64, i64* %RBP
  %1459 = sub i64 %1458, 56
  %1460 = load i64, i64* %PC
  %1461 = add i64 %1460, 4
  store i64 %1461, i64* %PC
  %1462 = inttoptr i64 %1459 to i64*
  %1463 = load i64, i64* %1462
  store i64 %1463, i64* %RAX, align 8, !tbaa !2428
  %1464 = load i64, i64* %RBP
  %1465 = sub i64 %1464, 60
  %1466 = load i64, i64* %PC
  %1467 = add i64 %1466, 4
  store i64 %1467, i64* %PC
  %1468 = inttoptr i64 %1465 to i32*
  %1469 = load i32, i32* %1468
  %1470 = sext i32 %1469 to i64
  store i64 %1470, i64* %RCX, align 8, !tbaa !2428
  %1471 = load i64, i64* %RAX
  %1472 = load i64, i64* %RCX
  %1473 = mul i64 %1472, 8
  %1474 = add i64 %1473, %1471
  %1475 = bitcast %union.vec128_t* %XMM0 to i8*
  %1476 = load i64, i64* %PC
  %1477 = add i64 %1476, 5
  store i64 %1477, i64* %PC
  %1478 = bitcast i8* %1475 to double*
  %1479 = load double, double* %1478, align 1
  %1480 = inttoptr i64 %1474 to double*
  store double %1479, double* %1480
  %1481 = load i64, i64* %RBP
  %1482 = sub i64 %1481, 60
  %1483 = load i64, i64* %PC
  %1484 = add i64 %1483, 3
  store i64 %1484, i64* %PC
  %1485 = inttoptr i64 %1482 to i32*
  %1486 = load i32, i32* %1485
  %1487 = zext i32 %1486 to i64
  store i64 %1487, i64* %RAX, align 8, !tbaa !2428
  %1488 = load i64, i64* %RAX
  %1489 = load i64, i64* %PC
  %1490 = add i64 %1489, 3
  store i64 %1490, i64* %PC
  %1491 = trunc i64 %1488 to i32
  %1492 = add i32 1, %1491
  %1493 = zext i32 %1492 to i64
  store i64 %1493, i64* %RAX, align 8, !tbaa !2428
  %1494 = icmp ult i32 %1492, %1491
  %1495 = icmp ult i32 %1492, 1
  %1496 = or i1 %1494, %1495
  %1497 = zext i1 %1496 to i8
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1497, i8* %1498, align 1, !tbaa !2432
  %1499 = and i32 %1492, 255
  %1500 = call i32 @llvm.ctpop.i32(i32 %1499) #16
  %1501 = trunc i32 %1500 to i8
  %1502 = and i8 %1501, 1
  %1503 = xor i8 %1502, 1
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1503, i8* %1504, align 1, !tbaa !2446
  %1505 = xor i64 1, %1488
  %1506 = trunc i64 %1505 to i32
  %1507 = xor i32 %1506, %1492
  %1508 = lshr i32 %1507, 4
  %1509 = trunc i32 %1508 to i8
  %1510 = and i8 %1509, 1
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1510, i8* %1511, align 1, !tbaa !2447
  %1512 = icmp eq i32 %1492, 0
  %1513 = zext i1 %1512 to i8
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1513, i8* %1514, align 1, !tbaa !2448
  %1515 = lshr i32 %1492, 31
  %1516 = trunc i32 %1515 to i8
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1516, i8* %1517, align 1, !tbaa !2449
  %1518 = lshr i32 %1491, 31
  %1519 = xor i32 %1515, %1518
  %1520 = add nuw nsw i32 %1519, %1515
  %1521 = icmp eq i32 %1520, 2
  %1522 = zext i1 %1521 to i8
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1522, i8* %1523, align 1, !tbaa !2450
  %1524 = load i64, i64* %RBP
  %1525 = sub i64 %1524, 60
  %1526 = load i32, i32* %EAX
  %1527 = zext i32 %1526 to i64
  %1528 = load i64, i64* %PC
  %1529 = add i64 %1528, 3
  store i64 %1529, i64* %PC
  %1530 = inttoptr i64 %1525 to i32*
  store i32 %1526, i32* %1530
  %1531 = load i64, i64* %PC
  %1532 = sub i64 %1531, 66
  %1533 = load i64, i64* %PC
  %1534 = add i64 %1533, 5
  store i64 %1534, i64* %PC
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1532, i64* %1535, align 8, !tbaa !2428
  br label %block_401116

block_400f71:                                     ; preds = %block_400f60
  %1536 = load i64, i64* %RBP
  %1537 = sub i64 %1536, 24
  %1538 = load i64, i64* %PC
  %1539 = add i64 %1538, 4
  store i64 %1539, i64* %PC
  %1540 = inttoptr i64 %1537 to i64*
  %1541 = load i64, i64* %1540
  store i64 %1541, i64* %RAX, align 8, !tbaa !2428
  %1542 = load i64, i64* %RBP
  %1543 = sub i64 %1542, 60
  %1544 = load i64, i64* %PC
  %1545 = add i64 %1544, 4
  store i64 %1545, i64* %PC
  %1546 = inttoptr i64 %1543 to i32*
  %1547 = load i32, i32* %1546
  %1548 = sext i32 %1547 to i64
  store i64 %1548, i64* %RCX, align 8, !tbaa !2428
  %1549 = load i64, i64* %RCX
  %1550 = load i64, i64* %PC
  %1551 = add i64 %1550, 7
  store i64 %1551, i64* %PC
  %1552 = sext i64 %1549 to i128
  %1553 = and i128 %1552, -18446744073709551616
  %1554 = zext i64 %1549 to i128
  %1555 = or i128 %1553, %1554
  %1556 = mul nsw i128 32000, %1555
  %1557 = trunc i128 %1556 to i64
  store i64 %1557, i64* %RCX, align 8, !tbaa !2428
  %1558 = sext i64 %1557 to i128
  %1559 = icmp ne i128 %1558, %1556
  %1560 = zext i1 %1559 to i8
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1560, i8* %1561, align 1, !tbaa !2432
  %1562 = trunc i128 %1556 to i32
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1563, align 1, !tbaa !2446
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1564, align 1, !tbaa !2447
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1565, align 1, !tbaa !2448
  %1566 = lshr i64 %1557, 63
  %1567 = trunc i64 %1566 to i8
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1567, i8* %1568, align 1, !tbaa !2449
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1560, i8* %1569, align 1, !tbaa !2450
  %1570 = load i64, i64* %RAX
  %1571 = load i64, i64* %RCX
  %1572 = load i64, i64* %PC
  %1573 = add i64 %1572, 3
  store i64 %1573, i64* %PC
  %1574 = add i64 %1571, %1570
  store i64 %1574, i64* %RAX, align 8, !tbaa !2428
  %1575 = icmp ult i64 %1574, %1570
  %1576 = icmp ult i64 %1574, %1571
  %1577 = or i1 %1575, %1576
  %1578 = zext i1 %1577 to i8
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1578, i8* %1579, align 1, !tbaa !2432
  %1580 = trunc i64 %1574 to i32
  %1581 = and i32 %1580, 255
  %1582 = call i32 @llvm.ctpop.i32(i32 %1581) #16
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  %1585 = xor i8 %1584, 1
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1585, i8* %1586, align 1, !tbaa !2446
  %1587 = xor i64 %1571, %1570
  %1588 = xor i64 %1587, %1574
  %1589 = lshr i64 %1588, 4
  %1590 = trunc i64 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1591, i8* %1592, align 1, !tbaa !2447
  %1593 = icmp eq i64 %1574, 0
  %1594 = zext i1 %1593 to i8
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1594, i8* %1595, align 1, !tbaa !2448
  %1596 = lshr i64 %1574, 63
  %1597 = trunc i64 %1596 to i8
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1597, i8* %1598, align 1, !tbaa !2449
  %1599 = lshr i64 %1570, 63
  %1600 = lshr i64 %1571, 63
  %1601 = xor i64 %1596, %1599
  %1602 = xor i64 %1596, %1600
  %1603 = add nuw nsw i64 %1601, %1602
  %1604 = icmp eq i64 %1603, 2
  %1605 = zext i1 %1604 to i8
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1605, i8* %1606, align 1, !tbaa !2450
  %1607 = load i64, i64* %RBP
  %1608 = sub i64 %1607, 64
  %1609 = load i64, i64* %PC
  %1610 = add i64 %1609, 4
  store i64 %1610, i64* %PC
  %1611 = inttoptr i64 %1608 to i32*
  %1612 = load i32, i32* %1611
  %1613 = sext i32 %1612 to i64
  store i64 %1613, i64* %RCX, align 8, !tbaa !2428
  %1614 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1615 = load i64, i64* %RAX
  %1616 = load i64, i64* %RCX
  %1617 = mul i64 %1616, 8
  %1618 = add i64 %1617, %1615
  %1619 = load i64, i64* %PC
  %1620 = add i64 %1619, 5
  store i64 %1620, i64* %PC
  %1621 = inttoptr i64 %1618 to double*
  %1622 = load double, double* %1621
  %1623 = bitcast i8* %1614 to double*
  store double %1622, double* %1623, align 1, !tbaa !2453
  %1624 = getelementptr inbounds i8, i8* %1614, i64 8
  %1625 = bitcast i8* %1624 to double*
  store double 0.000000e+00, double* %1625, align 1, !tbaa !2453
  %1626 = load i64, i64* %RBP
  %1627 = sub i64 %1626, 48
  %1628 = load i64, i64* %PC
  %1629 = add i64 %1628, 4
  store i64 %1629, i64* %PC
  %1630 = inttoptr i64 %1627 to i64*
  %1631 = load i64, i64* %1630
  store i64 %1631, i64* %RAX, align 8, !tbaa !2428
  %1632 = load i64, i64* %RBP
  %1633 = sub i64 %1632, 64
  %1634 = load i64, i64* %PC
  %1635 = add i64 %1634, 3
  store i64 %1635, i64* %PC
  %1636 = inttoptr i64 %1633 to i32*
  %1637 = load i32, i32* %1636
  %1638 = zext i32 %1637 to i64
  store i64 %1638, i64* %RDX, align 8, !tbaa !2428
  %1639 = load i64, i64* %RDX
  %1640 = load i64, i64* %RBP
  %1641 = sub i64 %1640, 60
  %1642 = load i64, i64* %PC
  %1643 = add i64 %1642, 3
  store i64 %1643, i64* %PC
  %1644 = trunc i64 %1639 to i32
  %1645 = inttoptr i64 %1641 to i32*
  %1646 = load i32, i32* %1645
  %1647 = sub i32 %1644, %1646
  %1648 = zext i32 %1647 to i64
  store i64 %1648, i64* %RDX, align 8, !tbaa !2428
  %1649 = icmp ult i32 %1644, %1646
  %1650 = zext i1 %1649 to i8
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1650, i8* %1651, align 1, !tbaa !2432
  %1652 = and i32 %1647, 255
  %1653 = call i32 @llvm.ctpop.i32(i32 %1652) #16
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  %1656 = xor i8 %1655, 1
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1656, i8* %1657, align 1, !tbaa !2446
  %1658 = xor i32 %1646, %1644
  %1659 = xor i32 %1658, %1647
  %1660 = lshr i32 %1659, 4
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1662, i8* %1663, align 1, !tbaa !2447
  %1664 = icmp eq i32 %1647, 0
  %1665 = zext i1 %1664 to i8
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1665, i8* %1666, align 1, !tbaa !2448
  %1667 = lshr i32 %1647, 31
  %1668 = trunc i32 %1667 to i8
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1668, i8* %1669, align 1, !tbaa !2449
  %1670 = lshr i32 %1644, 31
  %1671 = lshr i32 %1646, 31
  %1672 = xor i32 %1671, %1670
  %1673 = xor i32 %1667, %1670
  %1674 = add nuw nsw i32 %1673, %1672
  %1675 = icmp eq i32 %1674, 2
  %1676 = zext i1 %1675 to i8
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1676, i8* %1677, align 1, !tbaa !2450
  %1678 = load i64, i64* %RDX
  %1679 = load i64, i64* %PC
  %1680 = add i64 %1679, 3
  store i64 %1680, i64* %PC
  %1681 = trunc i64 %1678 to i32
  %1682 = sub i32 %1681, 1
  %1683 = zext i32 %1682 to i64
  store i64 %1683, i64* %RDX, align 8, !tbaa !2428
  %1684 = icmp ult i32 %1681, 1
  %1685 = zext i1 %1684 to i8
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1685, i8* %1686, align 1, !tbaa !2432
  %1687 = and i32 %1682, 255
  %1688 = call i32 @llvm.ctpop.i32(i32 %1687) #16
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  %1691 = xor i8 %1690, 1
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1691, i8* %1692, align 1, !tbaa !2446
  %1693 = xor i64 1, %1678
  %1694 = trunc i64 %1693 to i32
  %1695 = xor i32 %1694, %1682
  %1696 = lshr i32 %1695, 4
  %1697 = trunc i32 %1696 to i8
  %1698 = and i8 %1697, 1
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1698, i8* %1699, align 1, !tbaa !2447
  %1700 = icmp eq i32 %1682, 0
  %1701 = zext i1 %1700 to i8
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1701, i8* %1702, align 1, !tbaa !2448
  %1703 = lshr i32 %1682, 31
  %1704 = trunc i32 %1703 to i8
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1704, i8* %1705, align 1, !tbaa !2449
  %1706 = lshr i32 %1681, 31
  %1707 = xor i32 %1703, %1706
  %1708 = add nuw nsw i32 %1707, %1706
  %1709 = icmp eq i32 %1708, 2
  %1710 = zext i1 %1709 to i8
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1710, i8* %1711, align 1, !tbaa !2450
  %1712 = load i32, i32* %EDX
  %1713 = zext i32 %1712 to i64
  %1714 = load i64, i64* %PC
  %1715 = add i64 %1714, 3
  store i64 %1715, i64* %PC
  %1716 = shl i64 %1713, 32
  %1717 = ashr exact i64 %1716, 32
  store i64 %1717, i64* %RCX, align 8, !tbaa !2428
  %1718 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1719 = load i64, i64* %RAX
  %1720 = load i64, i64* %RCX
  %1721 = mul i64 %1720, 8
  %1722 = add i64 %1721, %1719
  %1723 = load i64, i64* %PC
  %1724 = add i64 %1723, 5
  store i64 %1724, i64* %PC
  %1725 = inttoptr i64 %1722 to double*
  %1726 = load double, double* %1725
  %1727 = bitcast i8* %1718 to double*
  store double %1726, double* %1727, align 1, !tbaa !2453
  %1728 = getelementptr inbounds i8, i8* %1718, i64 8
  %1729 = bitcast i8* %1728 to double*
  store double 0.000000e+00, double* %1729, align 1, !tbaa !2453
  %1730 = load i64, i64* %RBP
  %1731 = sub i64 %1730, 16
  %1732 = load i64, i64* %PC
  %1733 = add i64 %1732, 4
  store i64 %1733, i64* %PC
  %1734 = inttoptr i64 %1731 to i64*
  %1735 = load i64, i64* %1734
  store i64 %1735, i64* %RAX, align 8, !tbaa !2428
  %1736 = load i64, i64* %RBP
  %1737 = sub i64 %1736, 60
  %1738 = load i64, i64* %PC
  %1739 = add i64 %1738, 4
  store i64 %1739, i64* %PC
  %1740 = inttoptr i64 %1737 to i32*
  %1741 = load i32, i32* %1740
  %1742 = sext i32 %1741 to i64
  store i64 %1742, i64* %RCX, align 8, !tbaa !2428
  %1743 = load i64, i64* %RCX
  %1744 = load i64, i64* %PC
  %1745 = add i64 %1744, 7
  store i64 %1745, i64* %PC
  %1746 = sext i64 %1743 to i128
  %1747 = and i128 %1746, -18446744073709551616
  %1748 = zext i64 %1743 to i128
  %1749 = or i128 %1747, %1748
  %1750 = mul nsw i128 32000, %1749
  %1751 = trunc i128 %1750 to i64
  store i64 %1751, i64* %RCX, align 8, !tbaa !2428
  %1752 = sext i64 %1751 to i128
  %1753 = icmp ne i128 %1752, %1750
  %1754 = zext i1 %1753 to i8
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1754, i8* %1755, align 1, !tbaa !2432
  %1756 = trunc i128 %1750 to i32
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1757, align 1, !tbaa !2446
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1758, align 1, !tbaa !2447
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1759, align 1, !tbaa !2448
  %1760 = lshr i64 %1751, 63
  %1761 = trunc i64 %1760 to i8
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1761, i8* %1762, align 1, !tbaa !2449
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1754, i8* %1763, align 1, !tbaa !2450
  %1764 = load i64, i64* %RAX
  %1765 = load i64, i64* %RCX
  %1766 = load i64, i64* %PC
  %1767 = add i64 %1766, 3
  store i64 %1767, i64* %PC
  %1768 = add i64 %1765, %1764
  store i64 %1768, i64* %RAX, align 8, !tbaa !2428
  %1769 = icmp ult i64 %1768, %1764
  %1770 = icmp ult i64 %1768, %1765
  %1771 = or i1 %1769, %1770
  %1772 = zext i1 %1771 to i8
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1772, i8* %1773, align 1, !tbaa !2432
  %1774 = trunc i64 %1768 to i32
  %1775 = and i32 %1774, 255
  %1776 = call i32 @llvm.ctpop.i32(i32 %1775) #16
  %1777 = trunc i32 %1776 to i8
  %1778 = and i8 %1777, 1
  %1779 = xor i8 %1778, 1
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1779, i8* %1780, align 1, !tbaa !2446
  %1781 = xor i64 %1765, %1764
  %1782 = xor i64 %1781, %1768
  %1783 = lshr i64 %1782, 4
  %1784 = trunc i64 %1783 to i8
  %1785 = and i8 %1784, 1
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1785, i8* %1786, align 1, !tbaa !2447
  %1787 = icmp eq i64 %1768, 0
  %1788 = zext i1 %1787 to i8
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1788, i8* %1789, align 1, !tbaa !2448
  %1790 = lshr i64 %1768, 63
  %1791 = trunc i64 %1790 to i8
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1791, i8* %1792, align 1, !tbaa !2449
  %1793 = lshr i64 %1764, 63
  %1794 = lshr i64 %1765, 63
  %1795 = xor i64 %1790, %1793
  %1796 = xor i64 %1790, %1794
  %1797 = add nuw nsw i64 %1795, %1796
  %1798 = icmp eq i64 %1797, 2
  %1799 = zext i1 %1798 to i8
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1799, i8* %1800, align 1, !tbaa !2450
  %1801 = load i64, i64* %RBP
  %1802 = sub i64 %1801, 64
  %1803 = load i64, i64* %PC
  %1804 = add i64 %1803, 3
  store i64 %1804, i64* %PC
  %1805 = inttoptr i64 %1802 to i32*
  %1806 = load i32, i32* %1805
  %1807 = zext i32 %1806 to i64
  store i64 %1807, i64* %RDX, align 8, !tbaa !2428
  %1808 = load i64, i64* %RDX
  %1809 = load i64, i64* %PC
  %1810 = add i64 %1809, 3
  store i64 %1810, i64* %PC
  %1811 = trunc i64 %1808 to i32
  %1812 = sub i32 %1811, 1
  %1813 = zext i32 %1812 to i64
  store i64 %1813, i64* %RDX, align 8, !tbaa !2428
  %1814 = icmp ult i32 %1811, 1
  %1815 = zext i1 %1814 to i8
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1815, i8* %1816, align 1, !tbaa !2432
  %1817 = and i32 %1812, 255
  %1818 = call i32 @llvm.ctpop.i32(i32 %1817) #16
  %1819 = trunc i32 %1818 to i8
  %1820 = and i8 %1819, 1
  %1821 = xor i8 %1820, 1
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1821, i8* %1822, align 1, !tbaa !2446
  %1823 = xor i64 1, %1808
  %1824 = trunc i64 %1823 to i32
  %1825 = xor i32 %1824, %1812
  %1826 = lshr i32 %1825, 4
  %1827 = trunc i32 %1826 to i8
  %1828 = and i8 %1827, 1
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1828, i8* %1829, align 1, !tbaa !2447
  %1830 = icmp eq i32 %1812, 0
  %1831 = zext i1 %1830 to i8
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1831, i8* %1832, align 1, !tbaa !2448
  %1833 = lshr i32 %1812, 31
  %1834 = trunc i32 %1833 to i8
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1834, i8* %1835, align 1, !tbaa !2449
  %1836 = lshr i32 %1811, 31
  %1837 = xor i32 %1833, %1836
  %1838 = add nuw nsw i32 %1837, %1836
  %1839 = icmp eq i32 %1838, 2
  %1840 = zext i1 %1839 to i8
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1840, i8* %1841, align 1, !tbaa !2450
  %1842 = load i32, i32* %EDX
  %1843 = zext i32 %1842 to i64
  %1844 = load i64, i64* %PC
  %1845 = add i64 %1844, 3
  store i64 %1845, i64* %PC
  %1846 = shl i64 %1843, 32
  %1847 = ashr exact i64 %1846, 32
  store i64 %1847, i64* %RCX, align 8, !tbaa !2428
  %1848 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1849 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1850 = load i64, i64* %RAX
  %1851 = load i64, i64* %RCX
  %1852 = mul i64 %1851, 8
  %1853 = add i64 %1852, %1850
  %1854 = load i64, i64* %PC
  %1855 = add i64 %1854, 5
  store i64 %1855, i64* %PC
  %1856 = bitcast i8* %1849 to double*
  %1857 = load double, double* %1856, align 1
  %1858 = getelementptr inbounds i8, i8* %1849, i64 8
  %1859 = bitcast i8* %1858 to i64*
  %1860 = load i64, i64* %1859, align 1
  %1861 = inttoptr i64 %1853 to double*
  %1862 = load double, double* %1861
  %1863 = fmul double %1857, %1862
  %1864 = bitcast i8* %1848 to double*
  store double %1863, double* %1864, align 1, !tbaa !2453
  %1865 = getelementptr inbounds i8, i8* %1848, i64 8
  %1866 = bitcast i8* %1865 to i64*
  store i64 %1860, i64* %1866, align 1, !tbaa !2453
  %1867 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1868 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1869 = bitcast %union.vec128_t* %XMM1 to i8*
  %1870 = load i64, i64* %PC
  %1871 = add i64 %1870, 4
  store i64 %1871, i64* %PC
  %1872 = bitcast i8* %1868 to double*
  %1873 = load double, double* %1872, align 1
  %1874 = getelementptr inbounds i8, i8* %1868, i64 8
  %1875 = bitcast i8* %1874 to i64*
  %1876 = load i64, i64* %1875, align 1
  %1877 = bitcast i8* %1869 to double*
  %1878 = load double, double* %1877, align 1
  %1879 = fadd double %1873, %1878
  %1880 = bitcast i8* %1867 to double*
  store double %1879, double* %1880, align 1, !tbaa !2453
  %1881 = getelementptr inbounds i8, i8* %1867, i64 8
  %1882 = bitcast i8* %1881 to i64*
  store i64 %1876, i64* %1882, align 1, !tbaa !2453
  %1883 = load i64, i64* %RBP
  %1884 = sub i64 %1883, 24
  %1885 = load i64, i64* %PC
  %1886 = add i64 %1885, 4
  store i64 %1886, i64* %PC
  %1887 = inttoptr i64 %1884 to i64*
  %1888 = load i64, i64* %1887
  store i64 %1888, i64* %RAX, align 8, !tbaa !2428
  %1889 = load i64, i64* %RBP
  %1890 = sub i64 %1889, 60
  %1891 = load i64, i64* %PC
  %1892 = add i64 %1891, 3
  store i64 %1892, i64* %PC
  %1893 = inttoptr i64 %1890 to i32*
  %1894 = load i32, i32* %1893
  %1895 = zext i32 %1894 to i64
  store i64 %1895, i64* %RDX, align 8, !tbaa !2428
  %1896 = load i64, i64* %RDX
  %1897 = load i64, i64* %PC
  %1898 = add i64 %1897, 3
  store i64 %1898, i64* %PC
  %1899 = trunc i64 %1896 to i32
  %1900 = add i32 1, %1899
  %1901 = zext i32 %1900 to i64
  store i64 %1901, i64* %RDX, align 8, !tbaa !2428
  %1902 = icmp ult i32 %1900, %1899
  %1903 = icmp ult i32 %1900, 1
  %1904 = or i1 %1902, %1903
  %1905 = zext i1 %1904 to i8
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1905, i8* %1906, align 1, !tbaa !2432
  %1907 = and i32 %1900, 255
  %1908 = call i32 @llvm.ctpop.i32(i32 %1907) #16
  %1909 = trunc i32 %1908 to i8
  %1910 = and i8 %1909, 1
  %1911 = xor i8 %1910, 1
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1911, i8* %1912, align 1, !tbaa !2446
  %1913 = xor i64 1, %1896
  %1914 = trunc i64 %1913 to i32
  %1915 = xor i32 %1914, %1900
  %1916 = lshr i32 %1915, 4
  %1917 = trunc i32 %1916 to i8
  %1918 = and i8 %1917, 1
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1918, i8* %1919, align 1, !tbaa !2447
  %1920 = icmp eq i32 %1900, 0
  %1921 = zext i1 %1920 to i8
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1921, i8* %1922, align 1, !tbaa !2448
  %1923 = lshr i32 %1900, 31
  %1924 = trunc i32 %1923 to i8
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1924, i8* %1925, align 1, !tbaa !2449
  %1926 = lshr i32 %1899, 31
  %1927 = xor i32 %1923, %1926
  %1928 = add nuw nsw i32 %1927, %1923
  %1929 = icmp eq i32 %1928, 2
  %1930 = zext i1 %1929 to i8
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1930, i8* %1931, align 1, !tbaa !2450
  %1932 = load i32, i32* %EDX
  %1933 = zext i32 %1932 to i64
  %1934 = load i64, i64* %PC
  %1935 = add i64 %1934, 3
  store i64 %1935, i64* %PC
  %1936 = shl i64 %1933, 32
  %1937 = ashr exact i64 %1936, 32
  store i64 %1937, i64* %RCX, align 8, !tbaa !2428
  %1938 = load i64, i64* %RCX
  %1939 = load i64, i64* %PC
  %1940 = add i64 %1939, 7
  store i64 %1940, i64* %PC
  %1941 = sext i64 %1938 to i128
  %1942 = and i128 %1941, -18446744073709551616
  %1943 = zext i64 %1938 to i128
  %1944 = or i128 %1942, %1943
  %1945 = mul nsw i128 32000, %1944
  %1946 = trunc i128 %1945 to i64
  store i64 %1946, i64* %RCX, align 8, !tbaa !2428
  %1947 = sext i64 %1946 to i128
  %1948 = icmp ne i128 %1947, %1945
  %1949 = zext i1 %1948 to i8
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1949, i8* %1950, align 1, !tbaa !2432
  %1951 = trunc i128 %1945 to i32
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %1952, align 1, !tbaa !2446
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1953, align 1, !tbaa !2447
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1954, align 1, !tbaa !2448
  %1955 = lshr i64 %1946, 63
  %1956 = trunc i64 %1955 to i8
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1956, i8* %1957, align 1, !tbaa !2449
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1949, i8* %1958, align 1, !tbaa !2450
  %1959 = load i64, i64* %RAX
  %1960 = load i64, i64* %RCX
  %1961 = load i64, i64* %PC
  %1962 = add i64 %1961, 3
  store i64 %1962, i64* %PC
  %1963 = add i64 %1960, %1959
  store i64 %1963, i64* %RAX, align 8, !tbaa !2428
  %1964 = icmp ult i64 %1963, %1959
  %1965 = icmp ult i64 %1963, %1960
  %1966 = or i1 %1964, %1965
  %1967 = zext i1 %1966 to i8
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1967, i8* %1968, align 1, !tbaa !2432
  %1969 = trunc i64 %1963 to i32
  %1970 = and i32 %1969, 255
  %1971 = call i32 @llvm.ctpop.i32(i32 %1970) #16
  %1972 = trunc i32 %1971 to i8
  %1973 = and i8 %1972, 1
  %1974 = xor i8 %1973, 1
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1974, i8* %1975, align 1, !tbaa !2446
  %1976 = xor i64 %1960, %1959
  %1977 = xor i64 %1976, %1963
  %1978 = lshr i64 %1977, 4
  %1979 = trunc i64 %1978 to i8
  %1980 = and i8 %1979, 1
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1980, i8* %1981, align 1, !tbaa !2447
  %1982 = icmp eq i64 %1963, 0
  %1983 = zext i1 %1982 to i8
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1983, i8* %1984, align 1, !tbaa !2448
  %1985 = lshr i64 %1963, 63
  %1986 = trunc i64 %1985 to i8
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1986, i8* %1987, align 1, !tbaa !2449
  %1988 = lshr i64 %1959, 63
  %1989 = lshr i64 %1960, 63
  %1990 = xor i64 %1985, %1988
  %1991 = xor i64 %1985, %1989
  %1992 = add nuw nsw i64 %1990, %1991
  %1993 = icmp eq i64 %1992, 2
  %1994 = zext i1 %1993 to i8
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1994, i8* %1995, align 1, !tbaa !2450
  %1996 = load i64, i64* %RBP
  %1997 = sub i64 %1996, 64
  %1998 = load i64, i64* %PC
  %1999 = add i64 %1998, 4
  store i64 %1999, i64* %PC
  %2000 = inttoptr i64 %1997 to i32*
  %2001 = load i32, i32* %2000
  %2002 = sext i32 %2001 to i64
  store i64 %2002, i64* %RCX, align 8, !tbaa !2428
  %2003 = load i64, i64* %RAX
  %2004 = load i64, i64* %RCX
  %2005 = mul i64 %2004, 8
  %2006 = add i64 %2005, %2003
  %2007 = bitcast %union.vec128_t* %XMM0 to i8*
  %2008 = load i64, i64* %PC
  %2009 = add i64 %2008, 5
  store i64 %2009, i64* %PC
  %2010 = bitcast i8* %2007 to double*
  %2011 = load double, double* %2010, align 1
  %2012 = inttoptr i64 %2006 to double*
  store double %2011, double* %2012
  %2013 = load i64, i64* %RBP
  %2014 = sub i64 %2013, 60
  %2015 = load i64, i64* %PC
  %2016 = add i64 %2015, 3
  store i64 %2016, i64* %PC
  %2017 = inttoptr i64 %2014 to i32*
  %2018 = load i32, i32* %2017
  %2019 = zext i32 %2018 to i64
  store i64 %2019, i64* %RAX, align 8, !tbaa !2428
  %2020 = load i64, i64* %RAX
  %2021 = load i64, i64* %PC
  %2022 = add i64 %2021, 3
  store i64 %2022, i64* %PC
  %2023 = trunc i64 %2020 to i32
  %2024 = add i32 1, %2023
  %2025 = zext i32 %2024 to i64
  store i64 %2025, i64* %RAX, align 8, !tbaa !2428
  %2026 = icmp ult i32 %2024, %2023
  %2027 = icmp ult i32 %2024, 1
  %2028 = or i1 %2026, %2027
  %2029 = zext i1 %2028 to i8
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2029, i8* %2030, align 1, !tbaa !2432
  %2031 = and i32 %2024, 255
  %2032 = call i32 @llvm.ctpop.i32(i32 %2031) #16
  %2033 = trunc i32 %2032 to i8
  %2034 = and i8 %2033, 1
  %2035 = xor i8 %2034, 1
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2035, i8* %2036, align 1, !tbaa !2446
  %2037 = xor i64 1, %2020
  %2038 = trunc i64 %2037 to i32
  %2039 = xor i32 %2038, %2024
  %2040 = lshr i32 %2039, 4
  %2041 = trunc i32 %2040 to i8
  %2042 = and i8 %2041, 1
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2042, i8* %2043, align 1, !tbaa !2447
  %2044 = icmp eq i32 %2024, 0
  %2045 = zext i1 %2044 to i8
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2045, i8* %2046, align 1, !tbaa !2448
  %2047 = lshr i32 %2024, 31
  %2048 = trunc i32 %2047 to i8
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2048, i8* %2049, align 1, !tbaa !2449
  %2050 = lshr i32 %2023, 31
  %2051 = xor i32 %2047, %2050
  %2052 = add nuw nsw i32 %2051, %2047
  %2053 = icmp eq i32 %2052, 2
  %2054 = zext i1 %2053 to i8
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2054, i8* %2055, align 1, !tbaa !2450
  %2056 = load i64, i64* %RBP
  %2057 = sub i64 %2056, 60
  %2058 = load i32, i32* %EAX
  %2059 = zext i32 %2058 to i64
  %2060 = load i64, i64* %PC
  %2061 = add i64 %2060, 3
  store i64 %2061, i64* %PC
  %2062 = inttoptr i64 %2057 to i32*
  store i32 %2058, i32* %2062
  %2063 = load i64, i64* %PC
  %2064 = sub i64 %2063, 142
  %2065 = load i64, i64* %PC
  %2066 = add i64 %2065, 5
  store i64 %2066, i64* %PC
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2064, i64* %2067, align 8, !tbaa !2428
  br label %block_400f60

block_400f60:                                     ; preds = %block_400ee6, %block_400f71
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_400ee6 ], [ %MEMORY.3, %block_400f71 ]
  %2068 = load i64, i64* %RBP
  %2069 = sub i64 %2068, 60
  %2070 = load i64, i64* %PC
  %2071 = add i64 %2070, 3
  store i64 %2071, i64* %PC
  %2072 = inttoptr i64 %2069 to i32*
  %2073 = load i32, i32* %2072
  %2074 = zext i32 %2073 to i64
  store i64 %2074, i64* %RAX, align 8, !tbaa !2428
  %2075 = load i64, i64* %RBP
  %2076 = sub i64 %2075, 64
  %2077 = load i64, i64* %PC
  %2078 = add i64 %2077, 3
  store i64 %2078, i64* %PC
  %2079 = inttoptr i64 %2076 to i32*
  %2080 = load i32, i32* %2079
  %2081 = zext i32 %2080 to i64
  store i64 %2081, i64* %RCX, align 8, !tbaa !2428
  %2082 = load i64, i64* %RCX
  %2083 = load i64, i64* %PC
  %2084 = add i64 %2083, 3
  store i64 %2084, i64* %PC
  %2085 = trunc i64 %2082 to i32
  %2086 = sub i32 %2085, 1
  %2087 = zext i32 %2086 to i64
  store i64 %2087, i64* %RCX, align 8, !tbaa !2428
  %2088 = icmp ult i32 %2085, 1
  %2089 = zext i1 %2088 to i8
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2089, i8* %2090, align 1, !tbaa !2432
  %2091 = and i32 %2086, 255
  %2092 = call i32 @llvm.ctpop.i32(i32 %2091) #16
  %2093 = trunc i32 %2092 to i8
  %2094 = and i8 %2093, 1
  %2095 = xor i8 %2094, 1
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2095, i8* %2096, align 1, !tbaa !2446
  %2097 = xor i64 1, %2082
  %2098 = trunc i64 %2097 to i32
  %2099 = xor i32 %2098, %2086
  %2100 = lshr i32 %2099, 4
  %2101 = trunc i32 %2100 to i8
  %2102 = and i8 %2101, 1
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2102, i8* %2103, align 1, !tbaa !2447
  %2104 = icmp eq i32 %2086, 0
  %2105 = zext i1 %2104 to i8
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2105, i8* %2106, align 1, !tbaa !2448
  %2107 = lshr i32 %2086, 31
  %2108 = trunc i32 %2107 to i8
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2108, i8* %2109, align 1, !tbaa !2449
  %2110 = lshr i32 %2085, 31
  %2111 = xor i32 %2107, %2110
  %2112 = add nuw nsw i32 %2111, %2110
  %2113 = icmp eq i32 %2112, 2
  %2114 = zext i1 %2113 to i8
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2114, i8* %2115, align 1, !tbaa !2450
  %2116 = load i32, i32* %EAX
  %2117 = zext i32 %2116 to i64
  %2118 = load i32, i32* %ECX
  %2119 = zext i32 %2118 to i64
  %2120 = load i64, i64* %PC
  %2121 = add i64 %2120, 2
  store i64 %2121, i64* %PC
  %2122 = sub i32 %2116, %2118
  %2123 = icmp ult i32 %2116, %2118
  %2124 = zext i1 %2123 to i8
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2124, i8* %2125, align 1, !tbaa !2432
  %2126 = and i32 %2122, 255
  %2127 = call i32 @llvm.ctpop.i32(i32 %2126) #16
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  %2130 = xor i8 %2129, 1
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2130, i8* %2131, align 1, !tbaa !2446
  %2132 = xor i64 %2119, %2117
  %2133 = trunc i64 %2132 to i32
  %2134 = xor i32 %2133, %2122
  %2135 = lshr i32 %2134, 4
  %2136 = trunc i32 %2135 to i8
  %2137 = and i8 %2136, 1
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2137, i8* %2138, align 1, !tbaa !2447
  %2139 = icmp eq i32 %2122, 0
  %2140 = zext i1 %2139 to i8
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2140, i8* %2141, align 1, !tbaa !2448
  %2142 = lshr i32 %2122, 31
  %2143 = trunc i32 %2142 to i8
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2143, i8* %2144, align 1, !tbaa !2449
  %2145 = lshr i32 %2116, 31
  %2146 = lshr i32 %2118, 31
  %2147 = xor i32 %2146, %2145
  %2148 = xor i32 %2142, %2145
  %2149 = add nuw nsw i32 %2148, %2147
  %2150 = icmp eq i32 %2149, 2
  %2151 = zext i1 %2150 to i8
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2151, i8* %2152, align 1, !tbaa !2450
  %2153 = load i64, i64* %PC
  %2154 = add i64 %2153, 136
  %2155 = load i64, i64* %PC
  %2156 = add i64 %2155, 6
  %2157 = load i64, i64* %PC
  %2158 = add i64 %2157, 6
  store i64 %2158, i64* %PC
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2160 = load i8, i8* %2159, align 1, !tbaa !2448
  %2161 = icmp eq i8 %2160, 0
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2163 = load i8, i8* %2162, align 1, !tbaa !2449
  %2164 = icmp ne i8 %2163, 0
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2166 = load i8, i8* %2165, align 1, !tbaa !2450
  %2167 = icmp ne i8 %2166, 0
  %2168 = xor i1 %2164, %2167
  %2169 = xor i1 %2168, true
  %2170 = and i1 %2161, %2169
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2173 = select i1 %2170, i64 %2154, i64 %2156
  store i64 %2173, i64* %2172, align 8, !tbaa !2428
  %2174 = load i8, i8* %BRANCH_TAKEN
  %2175 = icmp eq i8 %2174, 1
  br i1 %2175, label %block_400ff3, label %block_400f71

block_400ee6:                                     ; preds = %block_400eda
  %2176 = sub i64 %269, 40
  %2177 = load i64, i64* %PC
  %2178 = add i64 %2177, 4
  store i64 %2178, i64* %PC
  %2179 = inttoptr i64 %2176 to i64*
  %2180 = load i64, i64* %2179
  store i64 %2180, i64* %RAX, align 8, !tbaa !2428
  %2181 = load i64, i64* %RBP
  %2182 = sub i64 %2181, 64
  %2183 = load i64, i64* %PC
  %2184 = add i64 %2183, 3
  store i64 %2184, i64* %PC
  %2185 = inttoptr i64 %2182 to i32*
  %2186 = load i32, i32* %2185
  %2187 = zext i32 %2186 to i64
  store i64 %2187, i64* %RCX, align 8, !tbaa !2428
  %2188 = load i64, i64* %RCX
  %2189 = load i64, i64* %PC
  %2190 = add i64 %2189, 3
  store i64 %2190, i64* %PC
  %2191 = trunc i64 %2188 to i32
  %2192 = sub i32 %2191, 1
  %2193 = zext i32 %2192 to i64
  store i64 %2193, i64* %RCX, align 8, !tbaa !2428
  %2194 = icmp ult i32 %2191, 1
  %2195 = zext i1 %2194 to i8
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2195, i8* %2196, align 1, !tbaa !2432
  %2197 = and i32 %2192, 255
  %2198 = call i32 @llvm.ctpop.i32(i32 %2197) #16
  %2199 = trunc i32 %2198 to i8
  %2200 = and i8 %2199, 1
  %2201 = xor i8 %2200, 1
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2201, i8* %2202, align 1, !tbaa !2446
  %2203 = xor i64 1, %2188
  %2204 = trunc i64 %2203 to i32
  %2205 = xor i32 %2204, %2192
  %2206 = lshr i32 %2205, 4
  %2207 = trunc i32 %2206 to i8
  %2208 = and i8 %2207, 1
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2208, i8* %2209, align 1, !tbaa !2447
  %2210 = icmp eq i32 %2192, 0
  %2211 = zext i1 %2210 to i8
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2211, i8* %2212, align 1, !tbaa !2448
  %2213 = lshr i32 %2192, 31
  %2214 = trunc i32 %2213 to i8
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2214, i8* %2215, align 1, !tbaa !2449
  %2216 = lshr i32 %2191, 31
  %2217 = xor i32 %2213, %2216
  %2218 = add nuw nsw i32 %2217, %2216
  %2219 = icmp eq i32 %2218, 2
  %2220 = zext i1 %2219 to i8
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2220, i8* %2221, align 1, !tbaa !2450
  %2222 = load i32, i32* %ECX
  %2223 = zext i32 %2222 to i64
  %2224 = load i64, i64* %PC
  %2225 = add i64 %2224, 3
  store i64 %2225, i64* %PC
  %2226 = shl i64 %2223, 32
  %2227 = ashr exact i64 %2226, 32
  store i64 %2227, i64* %RDX, align 8, !tbaa !2428
  %2228 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2229 = load i64, i64* %RAX
  %2230 = load i64, i64* %RDX
  %2231 = mul i64 %2230, 8
  %2232 = add i64 %2231, %2229
  %2233 = load i64, i64* %PC
  %2234 = add i64 %2233, 5
  store i64 %2234, i64* %PC
  %2235 = inttoptr i64 %2232 to double*
  %2236 = load double, double* %2235
  %2237 = bitcast i8* %2228 to double*
  store double %2236, double* %2237, align 1, !tbaa !2453
  %2238 = getelementptr inbounds i8, i8* %2228, i64 8
  %2239 = bitcast i8* %2238 to double*
  store double 0.000000e+00, double* %2239, align 1, !tbaa !2453
  %2240 = load i64, i64* %RBP
  %2241 = sub i64 %2240, 32
  %2242 = load i64, i64* %PC
  %2243 = add i64 %2242, 4
  store i64 %2243, i64* %PC
  %2244 = inttoptr i64 %2241 to i64*
  %2245 = load i64, i64* %2244
  store i64 %2245, i64* %RAX, align 8, !tbaa !2428
  %2246 = load i64, i64* %RBP
  %2247 = sub i64 %2246, 64
  %2248 = load i64, i64* %PC
  %2249 = add i64 %2248, 3
  store i64 %2249, i64* %PC
  %2250 = inttoptr i64 %2247 to i32*
  %2251 = load i32, i32* %2250
  %2252 = zext i32 %2251 to i64
  store i64 %2252, i64* %RCX, align 8, !tbaa !2428
  %2253 = load i64, i64* %RCX
  %2254 = load i64, i64* %PC
  %2255 = add i64 %2254, 3
  store i64 %2255, i64* %PC
  %2256 = trunc i64 %2253 to i32
  %2257 = sub i32 %2256, 1
  %2258 = zext i32 %2257 to i64
  store i64 %2258, i64* %RCX, align 8, !tbaa !2428
  %2259 = icmp ult i32 %2256, 1
  %2260 = zext i1 %2259 to i8
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2260, i8* %2261, align 1, !tbaa !2432
  %2262 = and i32 %2257, 255
  %2263 = call i32 @llvm.ctpop.i32(i32 %2262) #16
  %2264 = trunc i32 %2263 to i8
  %2265 = and i8 %2264, 1
  %2266 = xor i8 %2265, 1
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2266, i8* %2267, align 1, !tbaa !2446
  %2268 = xor i64 1, %2253
  %2269 = trunc i64 %2268 to i32
  %2270 = xor i32 %2269, %2257
  %2271 = lshr i32 %2270, 4
  %2272 = trunc i32 %2271 to i8
  %2273 = and i8 %2272, 1
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2273, i8* %2274, align 1, !tbaa !2447
  %2275 = icmp eq i32 %2257, 0
  %2276 = zext i1 %2275 to i8
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2276, i8* %2277, align 1, !tbaa !2448
  %2278 = lshr i32 %2257, 31
  %2279 = trunc i32 %2278 to i8
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2279, i8* %2280, align 1, !tbaa !2449
  %2281 = lshr i32 %2256, 31
  %2282 = xor i32 %2278, %2281
  %2283 = add nuw nsw i32 %2282, %2281
  %2284 = icmp eq i32 %2283, 2
  %2285 = zext i1 %2284 to i8
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2285, i8* %2286, align 1, !tbaa !2450
  %2287 = load i32, i32* %ECX
  %2288 = zext i32 %2287 to i64
  %2289 = load i64, i64* %PC
  %2290 = add i64 %2289, 3
  store i64 %2290, i64* %PC
  %2291 = shl i64 %2288, 32
  %2292 = ashr exact i64 %2291, 32
  store i64 %2292, i64* %RDX, align 8, !tbaa !2428
  %2293 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2294 = load i64, i64* %RAX
  %2295 = load i64, i64* %RDX
  %2296 = mul i64 %2295, 8
  %2297 = add i64 %2296, %2294
  %2298 = load i64, i64* %PC
  %2299 = add i64 %2298, 5
  store i64 %2299, i64* %PC
  %2300 = inttoptr i64 %2297 to double*
  %2301 = load double, double* %2300
  %2302 = bitcast i8* %2293 to double*
  store double %2301, double* %2302, align 1, !tbaa !2453
  %2303 = getelementptr inbounds i8, i8* %2293, i64 8
  %2304 = bitcast i8* %2303 to double*
  store double 0.000000e+00, double* %2304, align 1, !tbaa !2453
  %2305 = load i64, i64* %RBP
  %2306 = sub i64 %2305, 32
  %2307 = load i64, i64* %PC
  %2308 = add i64 %2307, 4
  store i64 %2308, i64* %PC
  %2309 = inttoptr i64 %2306 to i64*
  %2310 = load i64, i64* %2309
  store i64 %2310, i64* %RAX, align 8, !tbaa !2428
  %2311 = load i64, i64* %RBP
  %2312 = sub i64 %2311, 64
  %2313 = load i64, i64* %PC
  %2314 = add i64 %2313, 3
  store i64 %2314, i64* %PC
  %2315 = inttoptr i64 %2312 to i32*
  %2316 = load i32, i32* %2315
  %2317 = zext i32 %2316 to i64
  store i64 %2317, i64* %RCX, align 8, !tbaa !2428
  %2318 = load i64, i64* %RCX
  %2319 = load i64, i64* %PC
  %2320 = add i64 %2319, 3
  store i64 %2320, i64* %PC
  %2321 = trunc i64 %2318 to i32
  %2322 = sub i32 %2321, 1
  %2323 = zext i32 %2322 to i64
  store i64 %2323, i64* %RCX, align 8, !tbaa !2428
  %2324 = icmp ult i32 %2321, 1
  %2325 = zext i1 %2324 to i8
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2325, i8* %2326, align 1, !tbaa !2432
  %2327 = and i32 %2322, 255
  %2328 = call i32 @llvm.ctpop.i32(i32 %2327) #16
  %2329 = trunc i32 %2328 to i8
  %2330 = and i8 %2329, 1
  %2331 = xor i8 %2330, 1
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2331, i8* %2332, align 1, !tbaa !2446
  %2333 = xor i64 1, %2318
  %2334 = trunc i64 %2333 to i32
  %2335 = xor i32 %2334, %2322
  %2336 = lshr i32 %2335, 4
  %2337 = trunc i32 %2336 to i8
  %2338 = and i8 %2337, 1
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2338, i8* %2339, align 1, !tbaa !2447
  %2340 = icmp eq i32 %2322, 0
  %2341 = zext i1 %2340 to i8
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2341, i8* %2342, align 1, !tbaa !2448
  %2343 = lshr i32 %2322, 31
  %2344 = trunc i32 %2343 to i8
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2344, i8* %2345, align 1, !tbaa !2449
  %2346 = lshr i32 %2321, 31
  %2347 = xor i32 %2343, %2346
  %2348 = add nuw nsw i32 %2347, %2346
  %2349 = icmp eq i32 %2348, 2
  %2350 = zext i1 %2349 to i8
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2350, i8* %2351, align 1, !tbaa !2450
  %2352 = load i32, i32* %ECX
  %2353 = zext i32 %2352 to i64
  %2354 = load i64, i64* %PC
  %2355 = add i64 %2354, 3
  store i64 %2355, i64* %PC
  %2356 = shl i64 %2353, 32
  %2357 = ashr exact i64 %2356, 32
  store i64 %2357, i64* %RDX, align 8, !tbaa !2428
  %2358 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2359 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2360 = load i64, i64* %RAX
  %2361 = load i64, i64* %RDX
  %2362 = mul i64 %2361, 8
  %2363 = add i64 %2362, %2360
  %2364 = load i64, i64* %PC
  %2365 = add i64 %2364, 5
  store i64 %2365, i64* %PC
  %2366 = bitcast i8* %2359 to double*
  %2367 = load double, double* %2366, align 1
  %2368 = getelementptr inbounds i8, i8* %2359, i64 8
  %2369 = bitcast i8* %2368 to i64*
  %2370 = load i64, i64* %2369, align 1
  %2371 = inttoptr i64 %2363 to double*
  %2372 = load double, double* %2371
  %2373 = fmul double %2367, %2372
  %2374 = bitcast i8* %2358 to double*
  store double %2373, double* %2374, align 1, !tbaa !2453
  %2375 = getelementptr inbounds i8, i8* %2358, i64 8
  %2376 = bitcast i8* %2375 to i64*
  store i64 %2370, i64* %2376, align 1, !tbaa !2453
  %2377 = load i64, i64* %RBP
  %2378 = sub i64 %2377, 40
  %2379 = load i64, i64* %PC
  %2380 = add i64 %2379, 4
  store i64 %2380, i64* %PC
  %2381 = inttoptr i64 %2378 to i64*
  %2382 = load i64, i64* %2381
  store i64 %2382, i64* %RAX, align 8, !tbaa !2428
  %2383 = load i64, i64* %RBP
  %2384 = sub i64 %2383, 64
  %2385 = load i64, i64* %PC
  %2386 = add i64 %2385, 3
  store i64 %2386, i64* %PC
  %2387 = inttoptr i64 %2384 to i32*
  %2388 = load i32, i32* %2387
  %2389 = zext i32 %2388 to i64
  store i64 %2389, i64* %RCX, align 8, !tbaa !2428
  %2390 = load i64, i64* %RCX
  %2391 = load i64, i64* %PC
  %2392 = add i64 %2391, 3
  store i64 %2392, i64* %PC
  %2393 = trunc i64 %2390 to i32
  %2394 = sub i32 %2393, 1
  %2395 = zext i32 %2394 to i64
  store i64 %2395, i64* %RCX, align 8, !tbaa !2428
  %2396 = icmp ult i32 %2393, 1
  %2397 = zext i1 %2396 to i8
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2397, i8* %2398, align 1, !tbaa !2432
  %2399 = and i32 %2394, 255
  %2400 = call i32 @llvm.ctpop.i32(i32 %2399) #16
  %2401 = trunc i32 %2400 to i8
  %2402 = and i8 %2401, 1
  %2403 = xor i8 %2402, 1
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2403, i8* %2404, align 1, !tbaa !2446
  %2405 = xor i64 1, %2390
  %2406 = trunc i64 %2405 to i32
  %2407 = xor i32 %2406, %2394
  %2408 = lshr i32 %2407, 4
  %2409 = trunc i32 %2408 to i8
  %2410 = and i8 %2409, 1
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2410, i8* %2411, align 1, !tbaa !2447
  %2412 = icmp eq i32 %2394, 0
  %2413 = zext i1 %2412 to i8
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2413, i8* %2414, align 1, !tbaa !2448
  %2415 = lshr i32 %2394, 31
  %2416 = trunc i32 %2415 to i8
  %2417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2416, i8* %2417, align 1, !tbaa !2449
  %2418 = lshr i32 %2393, 31
  %2419 = xor i32 %2415, %2418
  %2420 = add nuw nsw i32 %2419, %2418
  %2421 = icmp eq i32 %2420, 2
  %2422 = zext i1 %2421 to i8
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2422, i8* %2423, align 1, !tbaa !2450
  %2424 = load i32, i32* %ECX
  %2425 = zext i32 %2424 to i64
  %2426 = load i64, i64* %PC
  %2427 = add i64 %2426, 3
  store i64 %2427, i64* %PC
  %2428 = shl i64 %2425, 32
  %2429 = ashr exact i64 %2428, 32
  store i64 %2429, i64* %RDX, align 8, !tbaa !2428
  %2430 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2431 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2432 = load i64, i64* %RAX
  %2433 = load i64, i64* %RDX
  %2434 = mul i64 %2433, 8
  %2435 = add i64 %2434, %2432
  %2436 = load i64, i64* %PC
  %2437 = add i64 %2436, 5
  store i64 %2437, i64* %PC
  %2438 = bitcast i8* %2431 to double*
  %2439 = load double, double* %2438, align 1
  %2440 = getelementptr inbounds i8, i8* %2431, i64 8
  %2441 = bitcast i8* %2440 to i64*
  %2442 = load i64, i64* %2441, align 1
  %2443 = inttoptr i64 %2435 to double*
  %2444 = load double, double* %2443
  %2445 = fmul double %2439, %2444
  %2446 = bitcast i8* %2430 to double*
  store double %2445, double* %2446, align 1, !tbaa !2453
  %2447 = getelementptr inbounds i8, i8* %2430, i64 8
  %2448 = bitcast i8* %2447 to i64*
  store i64 %2442, i64* %2448, align 1, !tbaa !2453
  %2449 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2450 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2451 = bitcast %union.vec128_t* %XMM1 to i8*
  %2452 = load i64, i64* %PC
  %2453 = add i64 %2452, 4
  store i64 %2453, i64* %PC
  %2454 = bitcast i8* %2450 to double*
  %2455 = load double, double* %2454, align 1
  %2456 = getelementptr inbounds i8, i8* %2450, i64 8
  %2457 = bitcast i8* %2456 to i64*
  %2458 = load i64, i64* %2457, align 1
  %2459 = bitcast i8* %2451 to double*
  %2460 = load double, double* %2459, align 1
  %2461 = fsub double %2455, %2460
  %2462 = bitcast i8* %2449 to double*
  store double %2461, double* %2462, align 1, !tbaa !2453
  %2463 = getelementptr inbounds i8, i8* %2449, i64 8
  %2464 = bitcast i8* %2463 to i64*
  store i64 %2458, i64* %2464, align 1, !tbaa !2453
  %2465 = load i64, i64* %RBP
  %2466 = sub i64 %2465, 40
  %2467 = load i64, i64* %PC
  %2468 = add i64 %2467, 4
  store i64 %2468, i64* %PC
  %2469 = inttoptr i64 %2466 to i64*
  %2470 = load i64, i64* %2469
  store i64 %2470, i64* %RAX, align 8, !tbaa !2428
  %2471 = load i64, i64* %RBP
  %2472 = sub i64 %2471, 64
  %2473 = load i64, i64* %PC
  %2474 = add i64 %2473, 4
  store i64 %2474, i64* %PC
  %2475 = inttoptr i64 %2472 to i32*
  %2476 = load i32, i32* %2475
  %2477 = sext i32 %2476 to i64
  store i64 %2477, i64* %RDX, align 8, !tbaa !2428
  %2478 = load i64, i64* %RAX
  %2479 = load i64, i64* %RDX
  %2480 = mul i64 %2479, 8
  %2481 = add i64 %2480, %2478
  %2482 = bitcast %union.vec128_t* %XMM0 to i8*
  %2483 = load i64, i64* %PC
  %2484 = add i64 %2483, 5
  store i64 %2484, i64* %PC
  %2485 = bitcast i8* %2482 to double*
  %2486 = load double, double* %2485, align 1
  %2487 = inttoptr i64 %2481 to double*
  store double %2486, double* %2487
  %2488 = load i64, i64* %RBP
  %2489 = sub i64 %2488, 48
  %2490 = load i64, i64* %PC
  %2491 = add i64 %2490, 4
  store i64 %2491, i64* %PC
  %2492 = inttoptr i64 %2489 to i64*
  %2493 = load i64, i64* %2492
  store i64 %2493, i64* %RAX, align 8, !tbaa !2428
  %2494 = load i64, i64* %RBP
  %2495 = sub i64 %2494, 64
  %2496 = load i64, i64* %PC
  %2497 = add i64 %2496, 4
  store i64 %2497, i64* %PC
  %2498 = inttoptr i64 %2495 to i32*
  %2499 = load i32, i32* %2498
  %2500 = sext i32 %2499 to i64
  store i64 %2500, i64* %RDX, align 8, !tbaa !2428
  %2501 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2502 = load i64, i64* %RAX
  %2503 = load i64, i64* %RDX
  %2504 = mul i64 %2503, 8
  %2505 = add i64 %2504, %2502
  %2506 = load i64, i64* %PC
  %2507 = add i64 %2506, 5
  store i64 %2507, i64* %PC
  %2508 = inttoptr i64 %2505 to double*
  %2509 = load double, double* %2508
  %2510 = bitcast i8* %2501 to double*
  store double %2509, double* %2510, align 1, !tbaa !2453
  %2511 = getelementptr inbounds i8, i8* %2501, i64 8
  %2512 = bitcast i8* %2511 to double*
  store double 0.000000e+00, double* %2512, align 1, !tbaa !2453
  %2513 = load i64, i64* %RBP
  %2514 = sub i64 %2513, 24
  %2515 = load i64, i64* %PC
  %2516 = add i64 %2515, 4
  store i64 %2516, i64* %PC
  %2517 = inttoptr i64 %2514 to i64*
  %2518 = load i64, i64* %2517
  store i64 %2518, i64* %RAX, align 8, !tbaa !2428
  %2519 = load i64, i64* %RBP
  %2520 = sub i64 %2519, 64
  %2521 = load i64, i64* %PC
  %2522 = add i64 %2521, 4
  store i64 %2522, i64* %PC
  %2523 = inttoptr i64 %2520 to i32*
  %2524 = load i32, i32* %2523
  %2525 = sext i32 %2524 to i64
  store i64 %2525, i64* %RDX, align 8, !tbaa !2428
  %2526 = load i64, i64* %RAX
  %2527 = load i64, i64* %RDX
  %2528 = mul i64 %2527, 8
  %2529 = add i64 %2528, %2526
  %2530 = bitcast %union.vec128_t* %XMM0 to i8*
  %2531 = load i64, i64* %PC
  %2532 = add i64 %2531, 5
  store i64 %2532, i64* %PC
  %2533 = bitcast i8* %2530 to double*
  %2534 = load double, double* %2533, align 1
  %2535 = inttoptr i64 %2529 to double*
  store double %2534, double* %2535
  %2536 = load i64, i64* %RBP
  %2537 = sub i64 %2536, 60
  %2538 = load i64, i64* %PC
  %2539 = add i64 %2538, 7
  store i64 %2539, i64* %PC
  %2540 = inttoptr i64 %2537 to i32*
  store i32 0, i32* %2540
  br label %block_400f60
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
define internal void @callback_sub_401360___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401360;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401360___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401360___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4012f0___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4012f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4012f0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4012f0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
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

; Function Attrs: noinline
define internal %struct.Memory* @ext_400590_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
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
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401364;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_401364__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_flush_cache() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4006d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
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
  call void asm sideeffect "pushq $0;pushq $$0x4007b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
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
  call void asm sideeffect "pushq $0;pushq $$0x400790;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @11, void ()** @2)
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

define internal void @__mcsema_destructor() {
  call void @callback_sub_401360___libc_csu_fini()
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
  call void @callback_sub_4012f0___libc_csu_init()
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
!2452 = !{!2445, !2445, i64 0}
!2453 = !{!2454, !2454, i64 0}
!2454 = !{!"double", !2430, i64 0}
!2455 = !{!2456, !2456, i64 0}
!2456 = !{!"float", !2430, i64 0}
