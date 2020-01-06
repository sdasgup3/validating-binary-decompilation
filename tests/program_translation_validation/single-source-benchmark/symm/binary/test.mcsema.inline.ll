; ModuleID = 'binary/test.mcsema.calls_renamed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400590__init_type = type <{ [23 x i8] }>
%seg_4005b0__plt_type = type <{ [144 x i8] }>
%seg_400640__text_type = type <{ [3394 x i8] }>
%seg_401384__fini_type = type <{ [9 x i8] }>
%seg_401390__rodata_type = type <{ [48 x i8], [7 x i8], [51 x i8], [76 x i8] }>
%seg_401448__eh_frame_hdr_type = type <{ [172 x i8] }>
%seg_4014f8__eh_frame_type = type <{ [648 x i8] }>
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
@seg_400590__init = internal constant %seg_400590__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05]\1A \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_4005b0__plt = internal constant %seg_4005b0__plt_type <{ [144 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%R\1A \00\00\00\00\00\00\00\00\00\00\00\FF%J\1A \00\00\00\00\00\00\00\00\00\00\00\FF%B\1A \00\00\00\00\00\00\00\00\00\00\00\FF%:\1A \00\00\00\00\00\00\00\00\00\00\00\FF%2\1A \00\00\00\00\00\00\00\00\00\00\00\FF%*\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\22\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\1A\1A \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400640__text = internal constant %seg_400640__text_type <{ [3394 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\80\13@\00H\C7\C1\10\13@\00H\C7\C7\10\09@\00\FF\15\86\19 \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8h `\00H=h `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFh `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEh `\00UH\81\EEh `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFh `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\91\19 \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\7F\19 \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC \B8\08\00\00\00\89\C6\C7E\FC\00\01@\00Hc}\FC\E8\A1\FE\FF\FF\0FW\C0H\89E\F0\F2\0F\11E\E0\C7E\EC\00\00\00\00\8BE\EC;E\FC\0F\8D%\00\00\00H\8BE\F0HcM\EC\F2\0F\10\04\C8\F2\0FXE\E0\F2\0F\11E\E0\8BE\EC\83\C0\01\89E\EC\E9\CF\FF\FF\FFH\8BE\F0H\89\C7\E8!\FE\FF\FFH\83\C4 ]\C3ff.\0F\1F\84\00\00\00\00\00UH\89\E5\E8w\FF\FF\FF]\C3\0F\1FD\00\00UH\89\E5\E8\E7\FF\FF\FF\E8\12\00\00\00\F2\0F\11\04%\B0 `\00]\C3\0F\1F\80\00\00\00\00UH\89\E5\0FW\C0]\C3\0F\1F\80\00\00\00\00UH\89\E5\E8\E7\FF\FF\FF\F2\0F\11\04%\A8 `\00]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC\10H\BF\C0\13@\00\00\00\00\00\F2\0F\10\04%\A8 `\00\F2\0F\5C\04%\B0 `\00\B0\01\E8\95\FD\FF\FF\89E\FCH\83\C4\10]\C3fff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC H\89}\F8\89u\F4H\8B}\F8H\89}\E8Hc}\F4H\0F\AF}\E8H\89}\E8H\8B}\E8\E8\13\00\00\00H\89E\E0H\8BE\E0H\83\C4 ]\C3\0F\1FD\00\00UH\89\E5H\83\EC H\8DE\F0\B9 \00\00\00\89\CEH\89}\F8H\C7E\F0\00\00\00\00H\8BU\F8H\89\C7\E8u\FD\FF\FF\89E\ECH\83}\F0\00\0F\84\0A\00\00\00\83}\EC\00\0F\84&\00\00\00H\BE\C7\13@\00\00\00\00\00H\8B<%\80 `\00\B0\00\E8\14\FD\FF\FF\BF\01\00\00\00\89E\E8\E8'\FD\FF\FFH\8BE\F0H\83\C4 ]\C3ffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC`\B8\00\00\10\00\89\C1\B8\08\00\00\00\C7E\FC\00\00\00\00\89}\F8H\89u\F0\C7E\EC\00\04\00\00\C7E\E8\00\04\00\00H\89\CF\89\C6\E8\06\FF\FF\FF\BE\00\00\10\00\89\F7\BE\08\00\00\00H\89E\D0\E8\F1\FE\FF\FF\BE\00\00\10\00\89\F7\BE\08\00\00\00H\89E\C8\E8\DC\FE\FF\FF\BE\00\00\10\00\89\F7\BE\08\00\00\00H\89E\C0\E8\C7\FE\FF\FFH\8DU\E0H\8DM\D8H\89E\B8\8B}\EC\8Bu\E8L\8BE\D0L\8BM\C8H\8BE\C0L\8BU\B8H\89\04$L\89T$\08\E8\C7\00\00\00\8B}\EC\8Bu\E8\F2\0F\10E\E0\F2\0F\10M\D8H\8BU\D0H\8BM\C0L\8BE\B8\E8F\02\00\00\8B}\EC\8Bu\E8\F2\0F\10E\E0\F2\0F\10M\D8H\8BU\C8H\8BM\C0L\8BE\B8\E8\C5\03\00\00\8B}\EC\8Bu\E8H\8BU\D0H\8BM\C8\E8R\05\00\00\83\F8\00\0F\85\0C\00\00\00\C7E\FC\01\00\00\00\E9F\00\00\00\8B}\EC\8Bu\E8H\8BU\C8\E8^\06\00\00H\8BU\D0H\89\D7\E8\82\FB\FF\FFH\8BU\C8H\89\D7\E8v\FB\FF\FFH\8BU\C0H\89\D7\E8j\FB\FF\FFH\8BU\B8H\89\D7\E8^\FB\FF\FF\C7E\FC\00\00\00\00\8BE\FCH\83\C4`]\C3fffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\8BE\18L\8BU\10\F2\0F\10\05\04\09\00\00\F2\0F\10\0D\04\09\00\00\89}\FC\89u\F8H\89U\F0H\89M\E8L\89E\E0L\89M\D8H\8BM\F0\F2\0F\11\09H\8BM\E8\F2\0F\11\01\C7E\D4\00\00\00\00L\89U\C8H\89E\C0\8BE\D4;E\FC\0F\8D\B6\00\00\00\C7E\D0\00\00\00\00\8BE\D0;E\F8\0F\8D\90\00\00\00\8BE\D4\F2\0F*\C0\8BE\D0\F2\0F*\C8\F2\0FY\C1\8BE\FC\F2\0F*\C8\F2\0F^\C1H\8BM\E0HcU\D4H\C1\E2\0DH\01\D1HcU\D0\F2\0F\11\04\D1H\8BM\D8HcU\D4H\C1\E2\0DH\01\D1HcU\D0\F2\0F\11\04\D1\8BE\D4\F2\0F*\C0\8BE\D0\F2\0F*\C8\F2\0FY\C1\8BE\FC\F2\0F*\C8\F2\0F^\C1H\8BM\18HcU\D4H\C1\E2\0DH\01\D1HcU\D0\F2\0F\11\04\D1\8BE\D0\83\C0\01\89E\D0\E9d\FF\FF\FF\E9\00\00\00\00\8BE\D4\83\C0\01\89E\D4\E9>\FF\FF\FF\C7E\D4\00\00\00\00\8BE\D4;E\F8\0F\8Di\00\00\00\C7E\D0\00\00\00\00\8BE\D0;E\F8\0F\8DC\00\00\00\8BE\D4\F2\0F*\C0\8BE\D0\F2\0F*\C8\F2\0FY\C1\8BE\FC\F2\0F*\C8\F2\0F^\C1H\8BM\10HcU\D4H\C1\E2\0DH\01\D1HcU\D0\F2\0F\11\04\D1\8BE\D0\83\C0\01\89E\D0\E9\B1\FF\FF\FF\E9\00\00\00\00\8BE\D4\83\C0\01\89E\D4\E9\8B\FF\FF\FF]\C3ffffff.\0F\1F\84\00\00\00\00\00UH\89\E5\89}\FC\89u\F8\F2\0F\11E\F0\F2\0F\11M\E8H\89U\E0H\89M\D8L\89E\D0\C7E\CC\00\00\00\00\8BE\CC;E\FC\0F\8Dj\01\00\00\C7E\C8\00\00\00\00\8BE\C8;E\F8\0F\8DD\01\00\00\0FW\C0\F2\0F\11E\B8\C7E\C4\00\00\00\00\8BE\C4\8BM\C8\83\E9\019\C8\0F\8D\9A\00\00\00\F2\0F\10E\F0H\8BE\D8HcM\C4H\C1\E1\0DH\01\C8HcM\CC\F2\0FY\04\C8H\8BE\D0HcM\CCH\C1\E1\0DH\01\C8HcM\C8\F2\0FY\04\C8H\8BE\E0HcM\C4H\C1\E1\0DH\01\C8HcM\C8\F2\0FX\04\C8\F2\0F\11\04\C8H\8BE\D0HcM\C4H\C1\E1\0DH\01\C8HcM\C8\F2\0F\10\04\C8H\8BE\D8HcM\C4H\C1\E1\0DH\01\C8HcM\CC\F2\0FY\04\C8\F2\0FXE\B8\F2\0F\11E\B8\8BE\C4\83\C0\01\89E\C4\E9U\FF\FF\FF\F2\0F\10E\E8H\8BE\E0HcM\CCH\C1\E1\0DH\01\C8HcM\C8\F2\0FY\04\C8\F2\0F\10M\F0H\8BE\D8HcM\CCH\C1\E1\0DH\01\C8HcM\CC\F2\0FY\0C\C8H\8BE\D0HcM\CCH\C1\E1\0DH\01\C8HcM\C8\F2\0FY\0C\C8\F2\0FX\C1\F2\0F\10M\F0\F2\0FYM\B8\F2\0FX\C1H\8BE\E0HcM\CCH\C1\E1\0DH\01\C8HcM\C8\F2\0F\11\04\C8\8BE\C8\83\C0\01\89E\C8\E9\B0\FE\FF\FF\E9\00\00\00\00\8BE\CC\83\C0\01\89E\CC\E9\8A\FE\FF\FF]\C3\90UH\89\E5\89}\FC\89u\F8\F2\0F\11E\F0\F2\0F\11M\E8H\89U\E0H\89M\D8L\89E\D0\C7E\CC\00\00\00\00\8BE\CC;E\FC\0F\8Dj\01\00\00\C7E\C8\00\00\00\00\8BE\C8;E\F8\0F\8DD\01\00\00\0FW\C0\F2\0F\11E\B8\C7E\C4\00\00\00\00\8BE\C4\8BM\C8\83\E9\019\C8\0F\8D\9A\00\00\00\F2\0F\10E\F0H\8BE\D8HcM\C4H\C1\E1\0DH\01\C8HcM\CC\F2\0FY\04\C8H\8BE\D0HcM\CCH\C1\E1\0DH\01\C8HcM\C8\F2\0FY\04\C8H\8BE\E0HcM\C4H\C1\E1\0DH\01\C8HcM\C8\F2\0FX\04\C8\F2\0F\11\04\C8H\8BE\D0HcM\C4H\C1\E1\0DH\01\C8HcM\C8\F2\0F\10\04\C8H\8BE\D8HcM\C4H\C1\E1\0DH\01\C8HcM\CC\F2\0FY\04\C8\F2\0FXE\B8\F2\0F\11E\B8\8BE\C4\83\C0\01\89E\C4\E9U\FF\FF\FF\F2\0F\10E\E8H\8BE\E0HcM\CCH\C1\E1\0DH\01\C8HcM\C8\F2\0FY\04\C8\F2\0F\10M\F0H\8BE\D8HcM\CCH\C1\E1\0DH\01\C8HcM\CC\F2\0FY\0C\C8H\8BE\D0HcM\CCH\C1\E1\0DH\01\C8HcM\C8\F2\0FY\0C\C8\F2\0FX\C1\F2\0F\10M\F0\F2\0FYM\B8\F2\0FX\C1H\8BE\E0HcM\CCH\C1\E1\0DH\01\C8HcM\C8\F2\0F\11\04\C8\8BE\C8\83\C0\01\89E\C8\E9\B0\FE\FF\FF\E9\00\00\00\00\8BE\CC\83\C0\01\89E\CC\E9\8A\FE\FF\FF]\C3\90UH\89\E5H\83\ECP\F2\0F\10\058\04\00\00\89}\F8\89u\F4H\89U\E8H\89M\E0\F2\0F\11E\D0\C7E\DC\00\00\00\00\8BE\DC;E\F8\0F\8D\E2\00\00\00\C7E\D8\00\00\00\00\8BE\D8;E\F4\0F\8D\BC\00\00\00H\8BE\E8HcM\DCH\C1\E1\0DH\01\C8HcM\D8\F2\0F\10\04\C8\F2\0F\11E\C8H\8BE\E0HcM\DCH\C1\E1\0DH\01\C8HcM\D8\F2\0F\10\04\C8\F2\0F\11E\C0\F2\0F\10E\C8\F2\0F\5CE\C0\0F(\0D\BC\03\00\00f\0F\DB\C1\F2\0F\11E\B8\F2\0F\10E\B8f\0F.E\D0\0F\86E\00\00\00H\BE\FA\13@\00\00\00\00\00H\8B<%\80 `\00\8BU\DC\8BM\D8\F2\0F\10E\C8D\8BE\DCD\8BM\D8\F2\0F\10M\C0\F2\0F\10U\D0\B0\03\E8\BD\F5\FF\FF\C7E\FC\00\00\00\00\89E\B4\E9-\00\00\00\E9\00\00\00\00\8BE\D8\83\C0\01\89E\D8\E98\FF\FF\FF\E9\00\00\00\00\8BE\DC\83\C0\01\89E\DC\E9\12\FF\FF\FF\C7E\FC\01\00\00\00\8BE\FCH\83\C4P]\C3\0F\1F\84\00\00\00\00\00UH\89\E5H\83\EC0\89}\FC\89u\F8H\89U\F0\8Bu\F8\C1\E6\04\83\C6\01Hc\FE\E8]\F5\FF\FFH\89E\E0H\8BE\E0\8Bu\F8\C1\E6\04Hc\D6\C6\04\10\00\C7E\EC\00\00\00\00\8BE\EC;E\FC\0F\8Dl\00\00\00\C7E\E8\00\00\00\00\8BE\E8;E\F8\0F\8D7\00\00\00H\8BE\F0HcM\ECH\C1\E1\0DH\01\C8HcM\E8\F2\0F\10\04\C8\8BU\E8\C1\E2\04H\8Bu\E0\89\D7\E8I\00\00\00\8BE\E8\83\C0\01\89E\E8\E9\BD\FF\FF\FFH\8B}\E0H\8B4%\80 `\00\E8\AA\F4\FF\FF\89E\DC\8BE\EC\83\C0\01\89E\EC\E9\88\FF\FF\FFH\8B}\E0\E8p\F4\FF\FFH\83\C40]\C3f.\0F\1F\84\00\00\00\00\00UH\89\E5\F2\0F\11E\F8\89}\F4H\89u\E8\F2\0F\10E\F8\F2\0F\11E\E0\0F\BE}\E0\83\E7\0F\83\C70@\88\F8H\8Bu\E8HcM\F4\88\04\0E\0F\BE}\E0\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\01\0F\BE}\E1\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\02\0F\BE}\E1\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\03\0F\BE}\E2\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\04\0F\BE}\E2\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\05\0F\BE}\E3\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\06\0F\BE}\E3\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\07\0F\BE}\E4\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\08\0F\BE}\E4\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\09\0F\BE}\E5\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0A\0F\BE}\E5\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0B\0F\BE}\E6\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0C\0F\BE}\E6\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0D\0F\BE}\E7\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0E\0F\BE}\E7\83\E7\0F\83\C70@\88\F8H\8BM\E8Hcu\F4\88D1\0F]\C3\0F\1FD\00\00AWAVI\89\D7AUATL\8D%\CE\0A \00UH\8D-\CE\0A \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8O\F2\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_401384__fini = internal constant %seg_401384__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_401390__rodata = internal constant %seg_401390__rodata_type <{ [48 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\96\A0@\00\00\00\00\00\A7\DF@\F1h\E3\88\B5\F8\E4>\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F", [7 x i8] c"%0.6f\0A\00", [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00" }>
@seg_401448__eh_frame_hdr = internal constant %seg_401448__eh_frame_hdr_type <{ [172 x i8] c"\01\1B\03;\AC\00\00\00\14\00\00\00h\F1\FF\FF\08\01\00\00\F8\F1\FF\FF\C8\00\00\00(\F2\FF\FF\F4\00\00\00\E8\F2\FF\FF0\01\00\00h\F3\FF\FFL\01\00\00x\F3\FF\FFh\01\00\00\98\F3\FF\FF\84\01\00\00\A8\F3\FF\FF\A0\01\00\00\C8\F3\FF\FF\BC\01\00\00\08\F4\FF\FF\D8\01\00\00H\F4\FF\FF\F4\01\00\00\C8\F4\FF\FF\10\02\00\008\F6\FF\FF,\02\00\00\D8\F7\FF\FFH\02\00\00x\F9\FF\FFd\02\00\00\18\FB\FF\FF\80\02\00\00H\FC\FF\FF\9C\02\00\00\18\FD\FF\FF\B8\02\00\00\C8\FE\FF\FF\D8\02\00\008\FF\FF\FF \03\00\00" }>
@seg_4014f8__eh_frame = internal constant %seg_4014f8__eh_frame_type <{ [648 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\F1\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\F1\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00X\F0\FF\FF\90\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\B0\F1\FF\FFu\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\14\F2\FF\FF\0B\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\90\00\00\00\08\F2\FF\FF\19\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\AC\00\00\00\0C\F2\FF\FF\09\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C8\00\00\00\00\F2\FF\FF\14\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\E4\00\00\00\04\F2\FF\FF4\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\00\01\00\00(\F2\FF\FF;\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\1C\01\00\00L\F2\FF\FFs\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\008\01\00\00\B0\F2\FF\FFb\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00T\01\00\00\04\F4\FF\FF\91\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00p\01\00\00\88\F5\FF\FF\9F\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\8C\01\00\00\0C\F7\FF\FF\9F\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\A8\01\00\00\90\F8\FF\FF(\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00\C4\01\00\00\A4\F9\FF\FF\C6\00\00\00\00A\0E\10\86\02C\0D\06\00\00\00\1C\00\00\00\E0\01\00\00X\FA\FF\FF\AB\01\00\00\00A\0E\10\86\02C\0D\06\00\00\00\00\00\00\00D\00\00\00\00\02\00\00\E8\FB\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00H\02\00\00\10\FC\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400720_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4006f0___do_global_dtors_aux to i64) }>
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
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400720_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4006f0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401380___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401310___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_flush_cache_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@9 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_alloc_data_wrapper
@10 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@11 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_start_wrapper
@12 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_print_wrapper
@13 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_timer_stop_wrapper
@14 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @polybench_prepare_instruments_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

declare %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400dc0_kernel_symm_StrictFP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4007b0_polybench_prepare_instruments_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400730_polybench_flush_cache_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401090_print_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400680_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400f60_check_FP_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4007e0_rtclock_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401160_print_element_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400c20_kernel_symm_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400890_xmalloc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400a80_init_array_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400590__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

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
declare extern_weak x86_64_sysvcc i64 @exit(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fputs(i64, i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_400590__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  br i1 %80, label %block_4005a2, label %block_4005a0

block_4005a0:                                     ; preds = %block_400590
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
  br label %block_4005a2

block_4005a2:                                     ; preds = %block_4005a0, %block_400590
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400590 ], [ %92, %block_4005a0 ]
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
define %struct.Memory* @sub_401090_print_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401090:
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %40 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %40 to %"class.std::bitset"*
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
  %51 = load i64, i64* %RSP
  %52 = load i64, i64* %PC
  %53 = add i64 %52, 4
  store i64 %53, i64* %PC
  %54 = sub i64 %51, 48
  store i64 %54, i64* %RSP, align 8, !tbaa !2428
  %55 = icmp ult i64 %51, 48
  %56 = zext i1 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %56, i8* %57, align 1, !tbaa !2432
  %58 = trunc i64 %54 to i32
  %59 = and i32 %58, 255
  %60 = call i32 @llvm.ctpop.i32(i32 %59) #16
  %61 = trunc i32 %60 to i8
  %62 = and i8 %61, 1
  %63 = xor i8 %62, 1
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %63, i8* %64, align 1, !tbaa !2446
  %65 = xor i64 48, %51
  %66 = xor i64 %65, %54
  %67 = lshr i64 %66, 4
  %68 = trunc i64 %67 to i8
  %69 = and i8 %68, 1
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %69, i8* %70, align 1, !tbaa !2447
  %71 = icmp eq i64 %54, 0
  %72 = zext i1 %71 to i8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %72, i8* %73, align 1, !tbaa !2448
  %74 = lshr i64 %54, 63
  %75 = trunc i64 %74 to i8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %75, i8* %76, align 1, !tbaa !2449
  %77 = lshr i64 %51, 63
  %78 = xor i64 %74, %77
  %79 = add nuw nsw i64 %78, %77
  %80 = icmp eq i64 %79, 2
  %81 = zext i1 %80 to i8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %81, i8* %82, align 1, !tbaa !2450
  %83 = load i64, i64* %RBP
  %84 = sub i64 %83, 4
  %85 = load i32, i32* %EDI
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 3
  store i64 %88, i64* %PC
  %89 = inttoptr i64 %84 to i32*
  store i32 %85, i32* %89
  %90 = load i64, i64* %RBP
  %91 = sub i64 %90, 8
  %92 = load i32, i32* %ESI
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 3
  store i64 %95, i64* %PC
  %96 = inttoptr i64 %91 to i32*
  store i32 %92, i32* %96
  %97 = load i64, i64* %RBP
  %98 = sub i64 %97, 16
  %99 = load i64, i64* %RDX
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 4
  store i64 %101, i64* %PC
  %102 = inttoptr i64 %98 to i64*
  store i64 %99, i64* %102
  %103 = load i64, i64* %RBP
  %104 = sub i64 %103, 8
  %105 = load i64, i64* %PC
  %106 = add i64 %105, 3
  store i64 %106, i64* %PC
  %107 = inttoptr i64 %104 to i32*
  %108 = load i32, i32* %107
  %109 = zext i32 %108 to i64
  store i64 %109, i64* %RSI, align 8, !tbaa !2428
  %110 = load i64, i64* %RSI
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC
  %113 = and i64 %110, 4294967295
  %114 = shl i64 %113, 3
  %115 = trunc i64 %114 to i32
  %116 = icmp slt i32 %115, 0
  %117 = shl i32 %115, 1
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RSI, align 8, !tbaa !2428
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %120 = zext i1 %116 to i8
  store i8 %120, i8* %119, align 1, !tbaa !2451
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %122 = and i32 %117, 254
  %123 = call i32 @llvm.ctpop.i32(i32 %122) #16
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  %126 = xor i8 %125, 1
  store i8 %126, i8* %121, align 1, !tbaa !2451
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %127, align 1, !tbaa !2451
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %129 = icmp eq i32 %117, 0
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %128, align 1, !tbaa !2451
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %132 = lshr i32 %117, 31
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %131, align 1, !tbaa !2451
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %134, align 1, !tbaa !2451
  %135 = load i64, i64* %RSI
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 3
  store i64 %137, i64* %PC
  %138 = trunc i64 %135 to i32
  %139 = add i32 1, %138
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %RSI, align 8, !tbaa !2428
  %141 = icmp ult i32 %139, %138
  %142 = icmp ult i32 %139, 1
  %143 = or i1 %141, %142
  %144 = zext i1 %143 to i8
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %144, i8* %145, align 1, !tbaa !2432
  %146 = and i32 %139, 255
  %147 = call i32 @llvm.ctpop.i32(i32 %146) #16
  %148 = trunc i32 %147 to i8
  %149 = and i8 %148, 1
  %150 = xor i8 %149, 1
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %150, i8* %151, align 1, !tbaa !2446
  %152 = xor i64 1, %135
  %153 = trunc i64 %152 to i32
  %154 = xor i32 %153, %139
  %155 = lshr i32 %154, 4
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %157, i8* %158, align 1, !tbaa !2447
  %159 = icmp eq i32 %139, 0
  %160 = zext i1 %159 to i8
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %160, i8* %161, align 1, !tbaa !2448
  %162 = lshr i32 %139, 31
  %163 = trunc i32 %162 to i8
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %163, i8* %164, align 1, !tbaa !2449
  %165 = lshr i32 %138, 31
  %166 = xor i32 %162, %165
  %167 = add nuw nsw i32 %166, %162
  %168 = icmp eq i32 %167, 2
  %169 = zext i1 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %169, i8* %170, align 1, !tbaa !2450
  %171 = load i32, i32* %ESI
  %172 = zext i32 %171 to i64
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 3
  store i64 %174, i64* %PC
  %175 = shl i64 %172, 32
  %176 = ashr exact i64 %175, 32
  store i64 %176, i64* %RDI, align 8, !tbaa !2428
  %177 = load i64, i64* %PC
  %178 = sub i64 %177, 2718
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
  %189 = call %struct.Memory* @ext_6020f0_malloc(%struct.State* %0, i64 %188, %struct.Memory* %2)
  %190 = load i64, i64* %RBP
  %191 = sub i64 %190, 32
  %192 = load i64, i64* %RAX
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 4
  store i64 %194, i64* %PC
  %195 = inttoptr i64 %191 to i64*
  store i64 %192, i64* %195
  %196 = load i64, i64* %RBP
  %197 = sub i64 %196, 32
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 4
  store i64 %199, i64* %PC
  %200 = inttoptr i64 %197 to i64*
  %201 = load i64, i64* %200
  store i64 %201, i64* %RAX, align 8, !tbaa !2428
  %202 = load i64, i64* %RBP
  %203 = sub i64 %202, 8
  %204 = load i64, i64* %PC
  %205 = add i64 %204, 3
  store i64 %205, i64* %PC
  %206 = inttoptr i64 %203 to i32*
  %207 = load i32, i32* %206
  %208 = zext i32 %207 to i64
  store i64 %208, i64* %RSI, align 8, !tbaa !2428
  %209 = load i64, i64* %RSI
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 3
  store i64 %211, i64* %PC
  %212 = and i64 %209, 4294967295
  %213 = shl i64 %212, 3
  %214 = trunc i64 %213 to i32
  %215 = icmp slt i32 %214, 0
  %216 = shl i32 %214, 1
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RSI, align 8, !tbaa !2428
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %219 = zext i1 %215 to i8
  store i8 %219, i8* %218, align 1, !tbaa !2451
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %221 = and i32 %216, 254
  %222 = call i32 @llvm.ctpop.i32(i32 %221) #16
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  store i8 %225, i8* %220, align 1, !tbaa !2451
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %226, align 1, !tbaa !2451
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %228 = icmp eq i32 %216, 0
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %227, align 1, !tbaa !2451
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %231 = lshr i32 %216, 31
  %232 = trunc i32 %231 to i8
  store i8 %232, i8* %230, align 1, !tbaa !2451
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %233, align 1, !tbaa !2451
  %234 = load i32, i32* %ESI
  %235 = zext i32 %234 to i64
  %236 = load i64, i64* %PC
  %237 = add i64 %236, 3
  store i64 %237, i64* %PC
  %238 = shl i64 %235, 32
  %239 = ashr exact i64 %238, 32
  store i64 %239, i64* %RDX, align 8, !tbaa !2428
  %240 = load i64, i64* %RAX
  %241 = load i64, i64* %RDX
  %242 = add i64 %241, %240
  %243 = load i64, i64* %PC
  %244 = add i64 %243, 4
  store i64 %244, i64* %PC
  %245 = inttoptr i64 %242 to i8*
  store i8 0, i8* %245
  %246 = load i64, i64* %RBP
  %247 = sub i64 %246, 20
  %248 = load i64, i64* %PC
  %249 = add i64 %248, 7
  store i64 %249, i64* %PC
  %250 = inttoptr i64 %247 to i32*
  store i32 0, i32* %250
  br label %block_4010cf

block_4010db:                                     ; preds = %block_4010cf
  %251 = sub i64 %319, 24
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 7
  store i64 %253, i64* %PC
  %254 = inttoptr i64 %251 to i32*
  store i32 0, i32* %254
  br label %block_4010e2

block_4010cf:                                     ; preds = %block_401125, %block_401090
  %MEMORY.0 = phi %struct.Memory* [ %189, %block_401090 ], [ %609, %block_401125 ]
  %255 = load i64, i64* %RBP
  %256 = sub i64 %255, 20
  %257 = load i64, i64* %PC
  %258 = add i64 %257, 3
  store i64 %258, i64* %PC
  %259 = inttoptr i64 %256 to i32*
  %260 = load i32, i32* %259
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RAX, align 8, !tbaa !2428
  %262 = load i32, i32* %EAX
  %263 = zext i32 %262 to i64
  %264 = load i64, i64* %RBP
  %265 = sub i64 %264, 4
  %266 = load i64, i64* %PC
  %267 = add i64 %266, 3
  store i64 %267, i64* %PC
  %268 = inttoptr i64 %265 to i32*
  %269 = load i32, i32* %268
  %270 = sub i32 %262, %269
  %271 = icmp ult i32 %262, %269
  %272 = zext i1 %271 to i8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %272, i8* %273, align 1, !tbaa !2432
  %274 = and i32 %270, 255
  %275 = call i32 @llvm.ctpop.i32(i32 %274) #16
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  %278 = xor i8 %277, 1
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %278, i8* %279, align 1, !tbaa !2446
  %280 = xor i32 %269, %262
  %281 = xor i32 %280, %270
  %282 = lshr i32 %281, 4
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %284, i8* %285, align 1, !tbaa !2447
  %286 = icmp eq i32 %270, 0
  %287 = zext i1 %286 to i8
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %287, i8* %288, align 1, !tbaa !2448
  %289 = lshr i32 %270, 31
  %290 = trunc i32 %289 to i8
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %290, i8* %291, align 1, !tbaa !2449
  %292 = lshr i32 %262, 31
  %293 = lshr i32 %269, 31
  %294 = xor i32 %293, %292
  %295 = xor i32 %289, %292
  %296 = add nuw nsw i32 %295, %294
  %297 = icmp eq i32 %296, 2
  %298 = zext i1 %297 to i8
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %298, i8* %299, align 1, !tbaa !2450
  %300 = load i64, i64* %PC
  %301 = add i64 %300, 114
  %302 = load i64, i64* %PC
  %303 = add i64 %302, 6
  %304 = load i64, i64* %PC
  %305 = add i64 %304, 6
  store i64 %305, i64* %PC
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %307 = load i8, i8* %306, align 1, !tbaa !2449
  %308 = icmp ne i8 %307, 0
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %310 = load i8, i8* %309, align 1, !tbaa !2450
  %311 = icmp ne i8 %310, 0
  %312 = xor i1 %308, %311
  %313 = xor i1 %312, true
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %316 = select i1 %312, i64 %303, i64 %301
  store i64 %316, i64* %315, align 8, !tbaa !2428
  %317 = load i8, i8* %BRANCH_TAKEN
  %318 = icmp eq i8 %317, 1
  %319 = load i64, i64* %RBP
  br i1 %318, label %block_401147, label %block_4010db

block_401147:                                     ; preds = %block_4010cf
  %320 = sub i64 %319, 32
  %321 = load i64, i64* %PC
  %322 = add i64 %321, 4
  store i64 %322, i64* %PC
  %323 = inttoptr i64 %320 to i64*
  %324 = load i64, i64* %323
  store i64 %324, i64* %RDI, align 8, !tbaa !2428
  %325 = load i64, i64* %PC
  %326 = sub i64 %325, 2955
  %327 = load i64, i64* %PC
  %328 = add i64 %327, 5
  %329 = load i64, i64* %PC
  %330 = add i64 %329, 5
  store i64 %330, i64* %PC
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %332 = load i64, i64* %331, align 8, !tbaa !2428
  %333 = add i64 %332, -8
  %334 = inttoptr i64 %333 to i64*
  store i64 %328, i64* %334
  store i64 %333, i64* %331, align 8, !tbaa !2428
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %326, i64* %335, align 8, !tbaa !2428
  %336 = load i64, i64* %PC
  %337 = call %struct.Memory* @ext_4005c0_free(%struct.State* %0, i64 %336, %struct.Memory* %MEMORY.0)
  %338 = load i64, i64* %RSP
  %339 = load i64, i64* %PC
  %340 = add i64 %339, 4
  store i64 %340, i64* %PC
  %341 = add i64 48, %338
  store i64 %341, i64* %RSP, align 8, !tbaa !2428
  %342 = icmp ult i64 %341, %338
  %343 = icmp ult i64 %341, 48
  %344 = or i1 %342, %343
  %345 = zext i1 %344 to i8
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %345, i8* %346, align 1, !tbaa !2432
  %347 = trunc i64 %341 to i32
  %348 = and i32 %347, 255
  %349 = call i32 @llvm.ctpop.i32(i32 %348) #16
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %352, i8* %353, align 1, !tbaa !2446
  %354 = xor i64 48, %338
  %355 = xor i64 %354, %341
  %356 = lshr i64 %355, 4
  %357 = trunc i64 %356 to i8
  %358 = and i8 %357, 1
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %358, i8* %359, align 1, !tbaa !2447
  %360 = icmp eq i64 %341, 0
  %361 = zext i1 %360 to i8
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %361, i8* %362, align 1, !tbaa !2448
  %363 = lshr i64 %341, 63
  %364 = trunc i64 %363 to i8
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %364, i8* %365, align 1, !tbaa !2449
  %366 = lshr i64 %338, 63
  %367 = xor i64 %363, %366
  %368 = add nuw nsw i64 %367, %363
  %369 = icmp eq i64 %368, 2
  %370 = zext i1 %369 to i8
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %370, i8* %371, align 1, !tbaa !2450
  %372 = load i64, i64* %PC
  %373 = add i64 %372, 1
  store i64 %373, i64* %PC
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %375 = load i64, i64* %374, align 8, !tbaa !2428
  %376 = add i64 %375, 8
  %377 = inttoptr i64 %375 to i64*
  %378 = load i64, i64* %377
  store i64 %378, i64* %RBP, align 8, !tbaa !2428
  store i64 %376, i64* %374, align 8, !tbaa !2428
  %379 = load i64, i64* %PC
  %380 = add i64 %379, 1
  store i64 %380, i64* %PC
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %383 = load i64, i64* %382, align 8, !tbaa !2428
  %384 = inttoptr i64 %383 to i64*
  %385 = load i64, i64* %384
  store i64 %385, i64* %381, align 8, !tbaa !2428
  %386 = add i64 %383, 8
  store i64 %386, i64* %382, align 8, !tbaa !2428
  ret %struct.Memory* %337

block_4010ee:                                     ; preds = %block_4010e2
  %387 = sub i64 %736, 16
  %388 = load i64, i64* %PC
  %389 = add i64 %388, 4
  store i64 %389, i64* %PC
  %390 = inttoptr i64 %387 to i64*
  %391 = load i64, i64* %390
  store i64 %391, i64* %RAX, align 8, !tbaa !2428
  %392 = load i64, i64* %RBP
  %393 = sub i64 %392, 20
  %394 = load i64, i64* %PC
  %395 = add i64 %394, 4
  store i64 %395, i64* %PC
  %396 = inttoptr i64 %393 to i32*
  %397 = load i32, i32* %396
  %398 = sext i32 %397 to i64
  store i64 %398, i64* %RCX, align 8, !tbaa !2428
  %399 = load i64, i64* %RCX
  %400 = load i64, i64* %PC
  %401 = add i64 %400, 4
  store i64 %401, i64* %PC
  %402 = shl i64 %399, 12
  %403 = icmp slt i64 %402, 0
  %404 = shl i64 %402, 1
  store i64 %404, i64* %RCX, align 8, !tbaa !2428
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %406 = zext i1 %403 to i8
  store i8 %406, i8* %405, align 1, !tbaa !2451
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %408 = trunc i64 %404 to i32
  %409 = and i32 %408, 254
  %410 = call i32 @llvm.ctpop.i32(i32 %409) #16
  %411 = trunc i32 %410 to i8
  %412 = and i8 %411, 1
  %413 = xor i8 %412, 1
  store i8 %413, i8* %407, align 1, !tbaa !2451
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %414, align 1, !tbaa !2451
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %416 = icmp eq i64 %404, 0
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %415, align 1, !tbaa !2451
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %419 = lshr i64 %404, 63
  %420 = trunc i64 %419 to i8
  store i8 %420, i8* %418, align 1, !tbaa !2451
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %421, align 1, !tbaa !2451
  %422 = load i64, i64* %RAX
  %423 = load i64, i64* %RCX
  %424 = load i64, i64* %PC
  %425 = add i64 %424, 3
  store i64 %425, i64* %PC
  %426 = add i64 %423, %422
  store i64 %426, i64* %RAX, align 8, !tbaa !2428
  %427 = icmp ult i64 %426, %422
  %428 = icmp ult i64 %426, %423
  %429 = or i1 %427, %428
  %430 = zext i1 %429 to i8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %430, i8* %431, align 1, !tbaa !2432
  %432 = trunc i64 %426 to i32
  %433 = and i32 %432, 255
  %434 = call i32 @llvm.ctpop.i32(i32 %433) #16
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %437, i8* %438, align 1, !tbaa !2446
  %439 = xor i64 %423, %422
  %440 = xor i64 %439, %426
  %441 = lshr i64 %440, 4
  %442 = trunc i64 %441 to i8
  %443 = and i8 %442, 1
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %443, i8* %444, align 1, !tbaa !2447
  %445 = icmp eq i64 %426, 0
  %446 = zext i1 %445 to i8
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %446, i8* %447, align 1, !tbaa !2448
  %448 = lshr i64 %426, 63
  %449 = trunc i64 %448 to i8
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %449, i8* %450, align 1, !tbaa !2449
  %451 = lshr i64 %422, 63
  %452 = lshr i64 %423, 63
  %453 = xor i64 %448, %451
  %454 = xor i64 %448, %452
  %455 = add nuw nsw i64 %453, %454
  %456 = icmp eq i64 %455, 2
  %457 = zext i1 %456 to i8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %457, i8* %458, align 1, !tbaa !2450
  %459 = load i64, i64* %RBP
  %460 = sub i64 %459, 24
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 4
  store i64 %462, i64* %PC
  %463 = inttoptr i64 %460 to i32*
  %464 = load i32, i32* %463
  %465 = sext i32 %464 to i64
  store i64 %465, i64* %RCX, align 8, !tbaa !2428
  %466 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %467 = load i64, i64* %RAX
  %468 = load i64, i64* %RCX
  %469 = mul i64 %468, 8
  %470 = add i64 %469, %467
  %471 = load i64, i64* %PC
  %472 = add i64 %471, 5
  store i64 %472, i64* %PC
  %473 = inttoptr i64 %470 to double*
  %474 = load double, double* %473
  %475 = bitcast i8* %466 to double*
  store double %474, double* %475, align 1, !tbaa !2452
  %476 = getelementptr inbounds i8, i8* %466, i64 8
  %477 = bitcast i8* %476 to double*
  store double 0.000000e+00, double* %477, align 1, !tbaa !2452
  %478 = load i64, i64* %RBP
  %479 = sub i64 %478, 24
  %480 = load i64, i64* %PC
  %481 = add i64 %480, 3
  store i64 %481, i64* %PC
  %482 = inttoptr i64 %479 to i32*
  %483 = load i32, i32* %482
  %484 = zext i32 %483 to i64
  store i64 %484, i64* %RDX, align 8, !tbaa !2428
  %485 = load i64, i64* %RDX
  %486 = load i64, i64* %PC
  %487 = add i64 %486, 3
  store i64 %487, i64* %PC
  %488 = and i64 %485, 4294967295
  %489 = shl i64 %488, 3
  %490 = trunc i64 %489 to i32
  %491 = icmp slt i32 %490, 0
  %492 = shl i32 %490, 1
  %493 = zext i32 %492 to i64
  store i64 %493, i64* %RDX, align 8, !tbaa !2428
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %495 = zext i1 %491 to i8
  store i8 %495, i8* %494, align 1, !tbaa !2451
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %497 = and i32 %492, 254
  %498 = call i32 @llvm.ctpop.i32(i32 %497) #16
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  store i8 %501, i8* %496, align 1, !tbaa !2451
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %502, align 1, !tbaa !2451
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %504 = icmp eq i32 %492, 0
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %503, align 1, !tbaa !2451
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %507 = lshr i32 %492, 31
  %508 = trunc i32 %507 to i8
  store i8 %508, i8* %506, align 1, !tbaa !2451
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %509, align 1, !tbaa !2451
  %510 = load i64, i64* %RBP
  %511 = sub i64 %510, 32
  %512 = load i64, i64* %PC
  %513 = add i64 %512, 4
  store i64 %513, i64* %PC
  %514 = inttoptr i64 %511 to i64*
  %515 = load i64, i64* %514
  store i64 %515, i64* %RSI, align 8, !tbaa !2428
  %516 = load i32, i32* %EDX
  %517 = zext i32 %516 to i64
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 2
  store i64 %519, i64* %PC
  %520 = and i64 %517, 4294967295
  store i64 %520, i64* %RDI, align 8, !tbaa !2428
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 78
  %523 = load i64, i64* %PC
  %524 = add i64 %523, 5
  %525 = load i64, i64* %PC
  %526 = add i64 %525, 5
  store i64 %526, i64* %PC
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %528 = load i64, i64* %527, align 8, !tbaa !2428
  %529 = add i64 %528, -8
  %530 = inttoptr i64 %529 to i64*
  store i64 %524, i64* %530
  store i64 %529, i64* %527, align 8, !tbaa !2428
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %522, i64* %531, align 8, !tbaa !2428
  %532 = load i64, i64* %PC
  %533 = call %struct.Memory* @sub_401160_print_element_renamed_(%struct.State* %0, i64 %532, %struct.Memory* %MEMORY.1)
  %534 = load i64, i64* %RBP
  %535 = sub i64 %534, 24
  %536 = load i64, i64* %PC
  %537 = add i64 %536, 3
  store i64 %537, i64* %PC
  %538 = inttoptr i64 %535 to i32*
  %539 = load i32, i32* %538
  %540 = zext i32 %539 to i64
  store i64 %540, i64* %RAX, align 8, !tbaa !2428
  %541 = load i64, i64* %RAX
  %542 = load i64, i64* %PC
  %543 = add i64 %542, 3
  store i64 %543, i64* %PC
  %544 = trunc i64 %541 to i32
  %545 = add i32 1, %544
  %546 = zext i32 %545 to i64
  store i64 %546, i64* %RAX, align 8, !tbaa !2428
  %547 = icmp ult i32 %545, %544
  %548 = icmp ult i32 %545, 1
  %549 = or i1 %547, %548
  %550 = zext i1 %549 to i8
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %550, i8* %551, align 1, !tbaa !2432
  %552 = and i32 %545, 255
  %553 = call i32 @llvm.ctpop.i32(i32 %552) #16
  %554 = trunc i32 %553 to i8
  %555 = and i8 %554, 1
  %556 = xor i8 %555, 1
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %556, i8* %557, align 1, !tbaa !2446
  %558 = xor i64 1, %541
  %559 = trunc i64 %558 to i32
  %560 = xor i32 %559, %545
  %561 = lshr i32 %560, 4
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %563, i8* %564, align 1, !tbaa !2447
  %565 = icmp eq i32 %545, 0
  %566 = zext i1 %565 to i8
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %566, i8* %567, align 1, !tbaa !2448
  %568 = lshr i32 %545, 31
  %569 = trunc i32 %568 to i8
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %569, i8* %570, align 1, !tbaa !2449
  %571 = lshr i32 %544, 31
  %572 = xor i32 %568, %571
  %573 = add nuw nsw i32 %572, %568
  %574 = icmp eq i32 %573, 2
  %575 = zext i1 %574 to i8
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %575, i8* %576, align 1, !tbaa !2450
  %577 = load i64, i64* %RBP
  %578 = sub i64 %577, 24
  %579 = load i32, i32* %EAX
  %580 = zext i32 %579 to i64
  %581 = load i64, i64* %PC
  %582 = add i64 %581, 3
  store i64 %582, i64* %PC
  %583 = inttoptr i64 %578 to i32*
  store i32 %579, i32* %583
  %584 = load i64, i64* %PC
  %585 = sub i64 %584, 62
  %586 = load i64, i64* %PC
  %587 = add i64 %586, 5
  store i64 %587, i64* %PC
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %585, i64* %588, align 8, !tbaa !2428
  br label %block_4010e2

block_401125:                                     ; preds = %block_4010e2
  %589 = sub i64 %736, 32
  %590 = load i64, i64* %PC
  %591 = add i64 %590, 4
  store i64 %591, i64* %PC
  %592 = inttoptr i64 %589 to i64*
  %593 = load i64, i64* %592
  store i64 %593, i64* %RDI, align 8, !tbaa !2428
  %594 = load i64, i64* %PC
  %595 = add i64 %594, 8
  store i64 %595, i64* %PC
  %596 = load i64, i64* @stderr
  store i64 %596, i64* %RSI, align 8, !tbaa !2428
  %597 = load i64, i64* %PC
  %598 = sub i64 %597, 2897
  %599 = load i64, i64* %PC
  %600 = add i64 %599, 5
  %601 = load i64, i64* %PC
  %602 = add i64 %601, 5
  store i64 %602, i64* %PC
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %604 = load i64, i64* %603, align 8, !tbaa !2428
  %605 = add i64 %604, -8
  %606 = inttoptr i64 %605 to i64*
  store i64 %600, i64* %606
  store i64 %605, i64* %603, align 8, !tbaa !2428
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %598, i64* %607, align 8, !tbaa !2428
  %608 = load i64, i64* %PC
  %609 = call %struct.Memory* @ext_4005e0_fputs(%struct.State* %0, i64 %608, %struct.Memory* %MEMORY.1)
  %610 = load i64, i64* %RBP
  %611 = sub i64 %610, 36
  %612 = load i32, i32* %EAX
  %613 = zext i32 %612 to i64
  %614 = load i64, i64* %PC
  %615 = add i64 %614, 3
  store i64 %615, i64* %PC
  %616 = inttoptr i64 %611 to i32*
  store i32 %612, i32* %616
  %617 = load i64, i64* %RBP
  %618 = sub i64 %617, 20
  %619 = load i64, i64* %PC
  %620 = add i64 %619, 3
  store i64 %620, i64* %PC
  %621 = inttoptr i64 %618 to i32*
  %622 = load i32, i32* %621
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %RAX, align 8, !tbaa !2428
  %624 = load i64, i64* %RAX
  %625 = load i64, i64* %PC
  %626 = add i64 %625, 3
  store i64 %626, i64* %PC
  %627 = trunc i64 %624 to i32
  %628 = add i32 1, %627
  %629 = zext i32 %628 to i64
  store i64 %629, i64* %RAX, align 8, !tbaa !2428
  %630 = icmp ult i32 %628, %627
  %631 = icmp ult i32 %628, 1
  %632 = or i1 %630, %631
  %633 = zext i1 %632 to i8
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %633, i8* %634, align 1, !tbaa !2432
  %635 = and i32 %628, 255
  %636 = call i32 @llvm.ctpop.i32(i32 %635) #16
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  %639 = xor i8 %638, 1
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %639, i8* %640, align 1, !tbaa !2446
  %641 = xor i64 1, %624
  %642 = trunc i64 %641 to i32
  %643 = xor i32 %642, %628
  %644 = lshr i32 %643, 4
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %646, i8* %647, align 1, !tbaa !2447
  %648 = icmp eq i32 %628, 0
  %649 = zext i1 %648 to i8
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %649, i8* %650, align 1, !tbaa !2448
  %651 = lshr i32 %628, 31
  %652 = trunc i32 %651 to i8
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %652, i8* %653, align 1, !tbaa !2449
  %654 = lshr i32 %627, 31
  %655 = xor i32 %651, %654
  %656 = add nuw nsw i32 %655, %651
  %657 = icmp eq i32 %656, 2
  %658 = zext i1 %657 to i8
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %658, i8* %659, align 1, !tbaa !2450
  %660 = load i64, i64* %RBP
  %661 = sub i64 %660, 20
  %662 = load i32, i32* %EAX
  %663 = zext i32 %662 to i64
  %664 = load i64, i64* %PC
  %665 = add i64 %664, 3
  store i64 %665, i64* %PC
  %666 = inttoptr i64 %661 to i32*
  store i32 %662, i32* %666
  %667 = load i64, i64* %PC
  %668 = sub i64 %667, 115
  %669 = load i64, i64* %PC
  %670 = add i64 %669, 5
  store i64 %670, i64* %PC
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %668, i64* %671, align 8, !tbaa !2428
  br label %block_4010cf

block_4010e2:                                     ; preds = %block_4010ee, %block_4010db
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_4010db ], [ %533, %block_4010ee ]
  %672 = load i64, i64* %RBP
  %673 = sub i64 %672, 24
  %674 = load i64, i64* %PC
  %675 = add i64 %674, 3
  store i64 %675, i64* %PC
  %676 = inttoptr i64 %673 to i32*
  %677 = load i32, i32* %676
  %678 = zext i32 %677 to i64
  store i64 %678, i64* %RAX, align 8, !tbaa !2428
  %679 = load i32, i32* %EAX
  %680 = zext i32 %679 to i64
  %681 = load i64, i64* %RBP
  %682 = sub i64 %681, 8
  %683 = load i64, i64* %PC
  %684 = add i64 %683, 3
  store i64 %684, i64* %PC
  %685 = inttoptr i64 %682 to i32*
  %686 = load i32, i32* %685
  %687 = sub i32 %679, %686
  %688 = icmp ult i32 %679, %686
  %689 = zext i1 %688 to i8
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %689, i8* %690, align 1, !tbaa !2432
  %691 = and i32 %687, 255
  %692 = call i32 @llvm.ctpop.i32(i32 %691) #16
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  %695 = xor i8 %694, 1
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %695, i8* %696, align 1, !tbaa !2446
  %697 = xor i32 %686, %679
  %698 = xor i32 %697, %687
  %699 = lshr i32 %698, 4
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %701, i8* %702, align 1, !tbaa !2447
  %703 = icmp eq i32 %687, 0
  %704 = zext i1 %703 to i8
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %704, i8* %705, align 1, !tbaa !2448
  %706 = lshr i32 %687, 31
  %707 = trunc i32 %706 to i8
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %707, i8* %708, align 1, !tbaa !2449
  %709 = lshr i32 %679, 31
  %710 = lshr i32 %686, 31
  %711 = xor i32 %710, %709
  %712 = xor i32 %706, %709
  %713 = add nuw nsw i32 %712, %711
  %714 = icmp eq i32 %713, 2
  %715 = zext i1 %714 to i8
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %715, i8* %716, align 1, !tbaa !2450
  %717 = load i64, i64* %PC
  %718 = add i64 %717, 61
  %719 = load i64, i64* %PC
  %720 = add i64 %719, 6
  %721 = load i64, i64* %PC
  %722 = add i64 %721, 6
  store i64 %722, i64* %PC
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %724 = load i8, i8* %723, align 1, !tbaa !2449
  %725 = icmp ne i8 %724, 0
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %727 = load i8, i8* %726, align 1, !tbaa !2450
  %728 = icmp ne i8 %727, 0
  %729 = xor i1 %725, %728
  %730 = xor i1 %729, true
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %733 = select i1 %729, i64 %720, i64 %718
  store i64 %733, i64* %732, align 8, !tbaa !2428
  %734 = load i8, i8* %BRANCH_TAKEN
  %735 = icmp eq i8 %734, 1
  %736 = load i64, i64* %RBP
  br i1 %735, label %block_401125, label %block_4010ee
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007e0_rtclock(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
define %struct.Memory* @sub_400730_polybench_flush_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400730:
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
  br label %block_400762

block_40076e:                                     ; preds = %block_400762
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
  br label %block_400762

block_400793:                                     ; preds = %block_400762
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
  %268 = call %struct.Memory* @ext_4005c0_free(%struct.State* %0, i64 %267, %struct.Memory* %MEMORY.0)
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

block_400762:                                     ; preds = %block_40076e, %block_400730
  %MEMORY.0 = phi %struct.Memory* [ %104, %block_400730 ], [ %MEMORY.0, %block_40076e ]
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
  br i1 %381, label %block_400793, label %block_40076e
}

; Function Attrs: noinline
define %struct.Memory* @sub_400a80_init_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400a80:
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
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %37 = getelementptr inbounds %struct.GPR, %struct.GPR* %36, i32 0, i32 21
  %38 = getelementptr inbounds %struct.Reg, %struct.Reg* %37, i32 0, i32 0
  %R10 = bitcast %union.anon* %38 to i64*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %40 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %40 to %"class.std::bitset"*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %42 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %41, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %42 to %"class.std::bitset"*
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
  %57 = load i64, i64* %RBP
  %58 = add i64 %57, 24
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 4
  store i64 %60, i64* %PC
  %61 = inttoptr i64 %58 to i64*
  %62 = load i64, i64* %61
  store i64 %62, i64* %RAX, align 8, !tbaa !2428
  %63 = load i64, i64* %RBP
  %64 = add i64 %63, 16
  %65 = load i64, i64* %PC
  %66 = add i64 %65, 4
  store i64 %66, i64* %PC
  %67 = inttoptr i64 %64 to i64*
  %68 = load i64, i64* %67
  store i64 %68, i64* %R10, align 8, !tbaa !2428
  %69 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 8
  store i64 %71, i64* %PC
  %72 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401390__rodata_type* @seg_401390__rodata to i64), i64 8) to double*)
  %73 = bitcast i8* %69 to double*
  store double %72, double* %73, align 1, !tbaa !2452
  %74 = getelementptr inbounds i8, i8* %69, i64 8
  %75 = bitcast i8* %74 to double*
  store double 0.000000e+00, double* %75, align 1, !tbaa !2452
  %76 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %77 = load i64, i64* %PC
  %78 = add i64 %77, 8
  store i64 %78, i64* %PC
  %79 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401390__rodata_type* @seg_401390__rodata to i64), i64 16) to double*)
  %80 = bitcast i8* %76 to double*
  store double %79, double* %80, align 1, !tbaa !2452
  %81 = getelementptr inbounds i8, i8* %76, i64 8
  %82 = bitcast i8* %81 to double*
  store double 0.000000e+00, double* %82, align 1, !tbaa !2452
  %83 = load i64, i64* %RBP
  %84 = sub i64 %83, 4
  %85 = load i32, i32* %EDI
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 3
  store i64 %88, i64* %PC
  %89 = inttoptr i64 %84 to i32*
  store i32 %85, i32* %89
  %90 = load i64, i64* %RBP
  %91 = sub i64 %90, 8
  %92 = load i32, i32* %ESI
  %93 = zext i32 %92 to i64
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 3
  store i64 %95, i64* %PC
  %96 = inttoptr i64 %91 to i32*
  store i32 %92, i32* %96
  %97 = load i64, i64* %RBP
  %98 = sub i64 %97, 16
  %99 = load i64, i64* %RDX
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 4
  store i64 %101, i64* %PC
  %102 = inttoptr i64 %98 to i64*
  store i64 %99, i64* %102
  %103 = load i64, i64* %RBP
  %104 = sub i64 %103, 24
  %105 = load i64, i64* %RCX
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 4
  store i64 %107, i64* %PC
  %108 = inttoptr i64 %104 to i64*
  store i64 %105, i64* %108
  %109 = load i64, i64* %RBP
  %110 = sub i64 %109, 32
  %111 = load i64, i64* %R8
  %112 = load i64, i64* %PC
  %113 = add i64 %112, 4
  store i64 %113, i64* %PC
  %114 = inttoptr i64 %110 to i64*
  store i64 %111, i64* %114
  %115 = load i64, i64* %RBP
  %116 = sub i64 %115, 40
  %117 = load i64, i64* %R9
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC
  %120 = inttoptr i64 %116 to i64*
  store i64 %117, i64* %120
  %121 = load i64, i64* %RBP
  %122 = sub i64 %121, 16
  %123 = load i64, i64* %PC
  %124 = add i64 %123, 4
  store i64 %124, i64* %PC
  %125 = inttoptr i64 %122 to i64*
  %126 = load i64, i64* %125
  store i64 %126, i64* %RCX, align 8, !tbaa !2428
  %127 = load i64, i64* %RCX
  %128 = bitcast %union.vec128_t* %XMM1 to i8*
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 4
  store i64 %130, i64* %PC
  %131 = bitcast i8* %128 to double*
  %132 = load double, double* %131, align 1
  %133 = inttoptr i64 %127 to double*
  store double %132, double* %133
  %134 = load i64, i64* %RBP
  %135 = sub i64 %134, 24
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 4
  store i64 %137, i64* %PC
  %138 = inttoptr i64 %135 to i64*
  %139 = load i64, i64* %138
  store i64 %139, i64* %RCX, align 8, !tbaa !2428
  %140 = load i64, i64* %RCX
  %141 = bitcast %union.vec128_t* %XMM0 to i8*
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 4
  store i64 %143, i64* %PC
  %144 = bitcast i8* %141 to double*
  %145 = load double, double* %144, align 1
  %146 = inttoptr i64 %140 to double*
  store double %145, double* %146
  %147 = load i64, i64* %RBP
  %148 = sub i64 %147, 44
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 7
  store i64 %150, i64* %PC
  %151 = inttoptr i64 %148 to i32*
  store i32 0, i32* %151
  %152 = load i64, i64* %RBP
  %153 = sub i64 %152, 56
  %154 = load i64, i64* %R10
  %155 = load i64, i64* %PC
  %156 = add i64 %155, 4
  store i64 %156, i64* %PC
  %157 = inttoptr i64 %153 to i64*
  store i64 %154, i64* %157
  %158 = load i64, i64* %RBP
  %159 = sub i64 %158, 64
  %160 = load i64, i64* %RAX
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 4
  store i64 %162, i64* %PC
  %163 = inttoptr i64 %159 to i64*
  store i64 %160, i64* %163
  br label %block_400ad1

block_400bb9:                                     ; preds = %block_400bad
  %164 = load i64, i64* %RBP
  %165 = sub i64 %164, 44
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 3
  store i64 %167, i64* %PC
  %168 = inttoptr i64 %165 to i32*
  %169 = load i32, i32* %168
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RAX, align 8, !tbaa !2428
  %171 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %172 = load i32, i32* %EAX
  %173 = zext i32 %172 to i64
  %174 = load i64, i64* %PC
  %175 = add i64 %174, 4
  store i64 %175, i64* %PC
  %176 = sitofp i32 %172 to double
  %177 = bitcast i8* %171 to double*
  store double %176, double* %177, align 1, !tbaa !2452
  %178 = load i64, i64* %RBP
  %179 = sub i64 %178, 48
  %180 = load i64, i64* %PC
  %181 = add i64 %180, 3
  store i64 %181, i64* %PC
  %182 = inttoptr i64 %179 to i32*
  %183 = load i32, i32* %182
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RAX, align 8, !tbaa !2428
  %185 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %186 = load i32, i32* %EAX
  %187 = zext i32 %186 to i64
  %188 = load i64, i64* %PC
  %189 = add i64 %188, 4
  store i64 %189, i64* %PC
  %190 = sitofp i32 %186 to double
  %191 = bitcast i8* %185 to double*
  store double %190, double* %191, align 1, !tbaa !2452
  %192 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %193 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %194 = bitcast %union.vec128_t* %XMM1 to i8*
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 4
  store i64 %196, i64* %PC
  %197 = bitcast i8* %193 to double*
  %198 = load double, double* %197, align 1
  %199 = getelementptr inbounds i8, i8* %193, i64 8
  %200 = bitcast i8* %199 to i64*
  %201 = load i64, i64* %200, align 1
  %202 = bitcast i8* %194 to double*
  %203 = load double, double* %202, align 1
  %204 = fmul double %198, %203
  %205 = bitcast i8* %192 to double*
  store double %204, double* %205, align 1, !tbaa !2452
  %206 = getelementptr inbounds i8, i8* %192, i64 8
  %207 = bitcast i8* %206 to i64*
  store i64 %201, i64* %207, align 1, !tbaa !2452
  %208 = load i64, i64* %RBP
  %209 = sub i64 %208, 4
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 3
  store i64 %211, i64* %PC
  %212 = inttoptr i64 %209 to i32*
  %213 = load i32, i32* %212
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RAX, align 8, !tbaa !2428
  %215 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %216 = load i32, i32* %EAX
  %217 = zext i32 %216 to i64
  %218 = load i64, i64* %PC
  %219 = add i64 %218, 4
  store i64 %219, i64* %PC
  %220 = sitofp i32 %216 to double
  %221 = bitcast i8* %215 to double*
  store double %220, double* %221, align 1, !tbaa !2452
  %222 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %223 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %224 = bitcast %union.vec128_t* %XMM1 to i8*
  %225 = load i64, i64* %PC
  %226 = add i64 %225, 4
  store i64 %226, i64* %PC
  %227 = bitcast i8* %223 to double*
  %228 = load double, double* %227, align 1
  %229 = getelementptr inbounds i8, i8* %223, i64 8
  %230 = bitcast i8* %229 to i64*
  %231 = load i64, i64* %230, align 1
  %232 = bitcast i8* %224 to double*
  %233 = load double, double* %232, align 1
  %234 = fdiv double %228, %233
  %235 = bitcast i8* %222 to double*
  store double %234, double* %235, align 1, !tbaa !2452
  %236 = getelementptr inbounds i8, i8* %222, i64 8
  %237 = bitcast i8* %236 to i64*
  store i64 %231, i64* %237, align 1, !tbaa !2452
  %238 = load i64, i64* %RBP
  %239 = add i64 %238, 16
  %240 = load i64, i64* %PC
  %241 = add i64 %240, 4
  store i64 %241, i64* %PC
  %242 = inttoptr i64 %239 to i64*
  %243 = load i64, i64* %242
  store i64 %243, i64* %RCX, align 8, !tbaa !2428
  %244 = load i64, i64* %RBP
  %245 = sub i64 %244, 44
  %246 = load i64, i64* %PC
  %247 = add i64 %246, 4
  store i64 %247, i64* %PC
  %248 = inttoptr i64 %245 to i32*
  %249 = load i32, i32* %248
  %250 = sext i32 %249 to i64
  store i64 %250, i64* %RDX, align 8, !tbaa !2428
  %251 = load i64, i64* %RDX
  %252 = load i64, i64* %PC
  %253 = add i64 %252, 4
  store i64 %253, i64* %PC
  %254 = shl i64 %251, 12
  %255 = icmp slt i64 %254, 0
  %256 = shl i64 %254, 1
  store i64 %256, i64* %RDX, align 8, !tbaa !2428
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %258 = zext i1 %255 to i8
  store i8 %258, i8* %257, align 1, !tbaa !2451
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %260 = trunc i64 %256 to i32
  %261 = and i32 %260, 254
  %262 = call i32 @llvm.ctpop.i32(i32 %261) #16
  %263 = trunc i32 %262 to i8
  %264 = and i8 %263, 1
  %265 = xor i8 %264, 1
  store i8 %265, i8* %259, align 1, !tbaa !2451
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %266, align 1, !tbaa !2451
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %268 = icmp eq i64 %256, 0
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %267, align 1, !tbaa !2451
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %271 = lshr i64 %256, 63
  %272 = trunc i64 %271 to i8
  store i8 %272, i8* %270, align 1, !tbaa !2451
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %273, align 1, !tbaa !2451
  %274 = load i64, i64* %RCX
  %275 = load i64, i64* %RDX
  %276 = load i64, i64* %PC
  %277 = add i64 %276, 3
  store i64 %277, i64* %PC
  %278 = add i64 %275, %274
  store i64 %278, i64* %RCX, align 8, !tbaa !2428
  %279 = icmp ult i64 %278, %274
  %280 = icmp ult i64 %278, %275
  %281 = or i1 %279, %280
  %282 = zext i1 %281 to i8
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %282, i8* %283, align 1, !tbaa !2432
  %284 = trunc i64 %278 to i32
  %285 = and i32 %284, 255
  %286 = call i32 @llvm.ctpop.i32(i32 %285) #16
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %289, i8* %290, align 1, !tbaa !2446
  %291 = xor i64 %275, %274
  %292 = xor i64 %291, %278
  %293 = lshr i64 %292, 4
  %294 = trunc i64 %293 to i8
  %295 = and i8 %294, 1
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %295, i8* %296, align 1, !tbaa !2447
  %297 = icmp eq i64 %278, 0
  %298 = zext i1 %297 to i8
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %298, i8* %299, align 1, !tbaa !2448
  %300 = lshr i64 %278, 63
  %301 = trunc i64 %300 to i8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %301, i8* %302, align 1, !tbaa !2449
  %303 = lshr i64 %274, 63
  %304 = lshr i64 %275, 63
  %305 = xor i64 %300, %303
  %306 = xor i64 %300, %304
  %307 = add nuw nsw i64 %305, %306
  %308 = icmp eq i64 %307, 2
  %309 = zext i1 %308 to i8
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %309, i8* %310, align 1, !tbaa !2450
  %311 = load i64, i64* %RBP
  %312 = sub i64 %311, 48
  %313 = load i64, i64* %PC
  %314 = add i64 %313, 4
  store i64 %314, i64* %PC
  %315 = inttoptr i64 %312 to i32*
  %316 = load i32, i32* %315
  %317 = sext i32 %316 to i64
  store i64 %317, i64* %RDX, align 8, !tbaa !2428
  %318 = load i64, i64* %RCX
  %319 = load i64, i64* %RDX
  %320 = mul i64 %319, 8
  %321 = add i64 %320, %318
  %322 = bitcast %union.vec128_t* %XMM0 to i8*
  %323 = load i64, i64* %PC
  %324 = add i64 %323, 5
  store i64 %324, i64* %PC
  %325 = bitcast i8* %322 to double*
  %326 = load double, double* %325, align 1
  %327 = inttoptr i64 %321 to double*
  store double %326, double* %327
  %328 = load i64, i64* %RBP
  %329 = sub i64 %328, 48
  %330 = load i64, i64* %PC
  %331 = add i64 %330, 3
  store i64 %331, i64* %PC
  %332 = inttoptr i64 %329 to i32*
  %333 = load i32, i32* %332
  %334 = zext i32 %333 to i64
  store i64 %334, i64* %RAX, align 8, !tbaa !2428
  %335 = load i64, i64* %RAX
  %336 = load i64, i64* %PC
  %337 = add i64 %336, 3
  store i64 %337, i64* %PC
  %338 = trunc i64 %335 to i32
  %339 = add i32 1, %338
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RAX, align 8, !tbaa !2428
  %341 = icmp ult i32 %339, %338
  %342 = icmp ult i32 %339, 1
  %343 = or i1 %341, %342
  %344 = zext i1 %343 to i8
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %344, i8* %345, align 1, !tbaa !2432
  %346 = and i32 %339, 255
  %347 = call i32 @llvm.ctpop.i32(i32 %346) #16
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  %350 = xor i8 %349, 1
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %350, i8* %351, align 1, !tbaa !2446
  %352 = xor i64 1, %335
  %353 = trunc i64 %352 to i32
  %354 = xor i32 %353, %339
  %355 = lshr i32 %354, 4
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %357, i8* %358, align 1, !tbaa !2447
  %359 = icmp eq i32 %339, 0
  %360 = zext i1 %359 to i8
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %360, i8* %361, align 1, !tbaa !2448
  %362 = lshr i32 %339, 31
  %363 = trunc i32 %362 to i8
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %363, i8* %364, align 1, !tbaa !2449
  %365 = lshr i32 %338, 31
  %366 = xor i32 %362, %365
  %367 = add nuw nsw i32 %366, %362
  %368 = icmp eq i32 %367, 2
  %369 = zext i1 %368 to i8
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %369, i8* %370, align 1, !tbaa !2450
  %371 = load i64, i64* %RBP
  %372 = sub i64 %371, 48
  %373 = load i32, i32* %EAX
  %374 = zext i32 %373 to i64
  %375 = load i64, i64* %PC
  %376 = add i64 %375, 3
  store i64 %376, i64* %PC
  %377 = inttoptr i64 %372 to i32*
  store i32 %373, i32* %377
  %378 = load i64, i64* %PC
  %379 = sub i64 %378, 74
  %380 = load i64, i64* %PC
  %381 = add i64 %380, 5
  store i64 %381, i64* %PC
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %379, i64* %382, align 8, !tbaa !2428
  br label %block_400bad

block_400b93:                                     ; preds = %block_400ad1
  %383 = sub i64 %451, 44
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 7
  store i64 %385, i64* %PC
  %386 = inttoptr i64 %383 to i32*
  store i32 0, i32* %386
  br label %block_400b9a

block_400ad1:                                     ; preds = %block_400b80, %block_400a80
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400a80 ], [ %MEMORY.3, %block_400b80 ]
  %387 = load i64, i64* %RBP
  %388 = sub i64 %387, 44
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 3
  store i64 %390, i64* %PC
  %391 = inttoptr i64 %388 to i32*
  %392 = load i32, i32* %391
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RAX, align 8, !tbaa !2428
  %394 = load i32, i32* %EAX
  %395 = zext i32 %394 to i64
  %396 = load i64, i64* %RBP
  %397 = sub i64 %396, 4
  %398 = load i64, i64* %PC
  %399 = add i64 %398, 3
  store i64 %399, i64* %PC
  %400 = inttoptr i64 %397 to i32*
  %401 = load i32, i32* %400
  %402 = sub i32 %394, %401
  %403 = icmp ult i32 %394, %401
  %404 = zext i1 %403 to i8
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %404, i8* %405, align 1, !tbaa !2432
  %406 = and i32 %402, 255
  %407 = call i32 @llvm.ctpop.i32(i32 %406) #16
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %410, i8* %411, align 1, !tbaa !2446
  %412 = xor i32 %401, %394
  %413 = xor i32 %412, %402
  %414 = lshr i32 %413, 4
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %416, i8* %417, align 1, !tbaa !2447
  %418 = icmp eq i32 %402, 0
  %419 = zext i1 %418 to i8
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %419, i8* %420, align 1, !tbaa !2448
  %421 = lshr i32 %402, 31
  %422 = trunc i32 %421 to i8
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %422, i8* %423, align 1, !tbaa !2449
  %424 = lshr i32 %394, 31
  %425 = lshr i32 %401, 31
  %426 = xor i32 %425, %424
  %427 = xor i32 %421, %424
  %428 = add nuw nsw i32 %427, %426
  %429 = icmp eq i32 %428, 2
  %430 = zext i1 %429 to i8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %430, i8* %431, align 1, !tbaa !2450
  %432 = load i64, i64* %PC
  %433 = add i64 %432, 188
  %434 = load i64, i64* %PC
  %435 = add i64 %434, 6
  %436 = load i64, i64* %PC
  %437 = add i64 %436, 6
  store i64 %437, i64* %PC
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %439 = load i8, i8* %438, align 1, !tbaa !2449
  %440 = icmp ne i8 %439, 0
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %442 = load i8, i8* %441, align 1, !tbaa !2450
  %443 = icmp ne i8 %442, 0
  %444 = xor i1 %440, %443
  %445 = xor i1 %444, true
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %448 = select i1 %444, i64 %435, i64 %433
  store i64 %448, i64* %447, align 8, !tbaa !2428
  %449 = load i8, i8* %BRANCH_TAKEN
  %450 = icmp eq i8 %449, 1
  %451 = load i64, i64* %RBP
  br i1 %450, label %block_400b93, label %block_400add

block_400b9a:                                     ; preds = %block_400bfc, %block_400b93
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400b93 ], [ %MEMORY.2, %block_400bfc ]
  %452 = load i64, i64* %RBP
  %453 = sub i64 %452, 44
  %454 = load i64, i64* %PC
  %455 = add i64 %454, 3
  store i64 %455, i64* %PC
  %456 = inttoptr i64 %453 to i32*
  %457 = load i32, i32* %456
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RAX, align 8, !tbaa !2428
  %459 = load i32, i32* %EAX
  %460 = zext i32 %459 to i64
  %461 = load i64, i64* %RBP
  %462 = sub i64 %461, 8
  %463 = load i64, i64* %PC
  %464 = add i64 %463, 3
  store i64 %464, i64* %PC
  %465 = inttoptr i64 %462 to i32*
  %466 = load i32, i32* %465
  %467 = sub i32 %459, %466
  %468 = icmp ult i32 %459, %466
  %469 = zext i1 %468 to i8
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %469, i8* %470, align 1, !tbaa !2432
  %471 = and i32 %467, 255
  %472 = call i32 @llvm.ctpop.i32(i32 %471) #16
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %475, i8* %476, align 1, !tbaa !2446
  %477 = xor i32 %466, %459
  %478 = xor i32 %477, %467
  %479 = lshr i32 %478, 4
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %481, i8* %482, align 1, !tbaa !2447
  %483 = icmp eq i32 %467, 0
  %484 = zext i1 %483 to i8
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %484, i8* %485, align 1, !tbaa !2448
  %486 = lshr i32 %467, 31
  %487 = trunc i32 %486 to i8
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %487, i8* %488, align 1, !tbaa !2449
  %489 = lshr i32 %459, 31
  %490 = lshr i32 %466, 31
  %491 = xor i32 %490, %489
  %492 = xor i32 %486, %489
  %493 = add nuw nsw i32 %492, %491
  %494 = icmp eq i32 %493, 2
  %495 = zext i1 %494 to i8
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %495, i8* %496, align 1, !tbaa !2450
  %497 = load i64, i64* %PC
  %498 = add i64 %497, 111
  %499 = load i64, i64* %PC
  %500 = add i64 %499, 6
  %501 = load i64, i64* %PC
  %502 = add i64 %501, 6
  store i64 %502, i64* %PC
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %504 = load i8, i8* %503, align 1, !tbaa !2449
  %505 = icmp ne i8 %504, 0
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %507 = load i8, i8* %506, align 1, !tbaa !2450
  %508 = icmp ne i8 %507, 0
  %509 = xor i1 %505, %508
  %510 = xor i1 %509, true
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %513 = select i1 %509, i64 %500, i64 %498
  store i64 %513, i64* %512, align 8, !tbaa !2428
  %514 = load i8, i8* %BRANCH_TAKEN
  %515 = icmp eq i8 %514, 1
  br i1 %515, label %block_400c0f, label %block_400ba6

block_400af0:                                     ; preds = %block_400ae4
  %516 = load i64, i64* %RBP
  %517 = sub i64 %516, 44
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 3
  store i64 %519, i64* %PC
  %520 = inttoptr i64 %517 to i32*
  %521 = load i32, i32* %520
  %522 = zext i32 %521 to i64
  store i64 %522, i64* %RAX, align 8, !tbaa !2428
  %523 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %524 = load i32, i32* %EAX
  %525 = zext i32 %524 to i64
  %526 = load i64, i64* %PC
  %527 = add i64 %526, 4
  store i64 %527, i64* %PC
  %528 = sitofp i32 %524 to double
  %529 = bitcast i8* %523 to double*
  store double %528, double* %529, align 1, !tbaa !2452
  %530 = load i64, i64* %RBP
  %531 = sub i64 %530, 48
  %532 = load i64, i64* %PC
  %533 = add i64 %532, 3
  store i64 %533, i64* %PC
  %534 = inttoptr i64 %531 to i32*
  %535 = load i32, i32* %534
  %536 = zext i32 %535 to i64
  store i64 %536, i64* %RAX, align 8, !tbaa !2428
  %537 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %538 = load i32, i32* %EAX
  %539 = zext i32 %538 to i64
  %540 = load i64, i64* %PC
  %541 = add i64 %540, 4
  store i64 %541, i64* %PC
  %542 = sitofp i32 %538 to double
  %543 = bitcast i8* %537 to double*
  store double %542, double* %543, align 1, !tbaa !2452
  %544 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %545 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %546 = bitcast %union.vec128_t* %XMM1 to i8*
  %547 = load i64, i64* %PC
  %548 = add i64 %547, 4
  store i64 %548, i64* %PC
  %549 = bitcast i8* %545 to double*
  %550 = load double, double* %549, align 1
  %551 = getelementptr inbounds i8, i8* %545, i64 8
  %552 = bitcast i8* %551 to i64*
  %553 = load i64, i64* %552, align 1
  %554 = bitcast i8* %546 to double*
  %555 = load double, double* %554, align 1
  %556 = fmul double %550, %555
  %557 = bitcast i8* %544 to double*
  store double %556, double* %557, align 1, !tbaa !2452
  %558 = getelementptr inbounds i8, i8* %544, i64 8
  %559 = bitcast i8* %558 to i64*
  store i64 %553, i64* %559, align 1, !tbaa !2452
  %560 = load i64, i64* %RBP
  %561 = sub i64 %560, 4
  %562 = load i64, i64* %PC
  %563 = add i64 %562, 3
  store i64 %563, i64* %PC
  %564 = inttoptr i64 %561 to i32*
  %565 = load i32, i32* %564
  %566 = zext i32 %565 to i64
  store i64 %566, i64* %RAX, align 8, !tbaa !2428
  %567 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %568 = load i32, i32* %EAX
  %569 = zext i32 %568 to i64
  %570 = load i64, i64* %PC
  %571 = add i64 %570, 4
  store i64 %571, i64* %PC
  %572 = sitofp i32 %568 to double
  %573 = bitcast i8* %567 to double*
  store double %572, double* %573, align 1, !tbaa !2452
  %574 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %575 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %576 = bitcast %union.vec128_t* %XMM1 to i8*
  %577 = load i64, i64* %PC
  %578 = add i64 %577, 4
  store i64 %578, i64* %PC
  %579 = bitcast i8* %575 to double*
  %580 = load double, double* %579, align 1
  %581 = getelementptr inbounds i8, i8* %575, i64 8
  %582 = bitcast i8* %581 to i64*
  %583 = load i64, i64* %582, align 1
  %584 = bitcast i8* %576 to double*
  %585 = load double, double* %584, align 1
  %586 = fdiv double %580, %585
  %587 = bitcast i8* %574 to double*
  store double %586, double* %587, align 1, !tbaa !2452
  %588 = getelementptr inbounds i8, i8* %574, i64 8
  %589 = bitcast i8* %588 to i64*
  store i64 %583, i64* %589, align 1, !tbaa !2452
  %590 = load i64, i64* %RBP
  %591 = sub i64 %590, 32
  %592 = load i64, i64* %PC
  %593 = add i64 %592, 4
  store i64 %593, i64* %PC
  %594 = inttoptr i64 %591 to i64*
  %595 = load i64, i64* %594
  store i64 %595, i64* %RCX, align 8, !tbaa !2428
  %596 = load i64, i64* %RBP
  %597 = sub i64 %596, 44
  %598 = load i64, i64* %PC
  %599 = add i64 %598, 4
  store i64 %599, i64* %PC
  %600 = inttoptr i64 %597 to i32*
  %601 = load i32, i32* %600
  %602 = sext i32 %601 to i64
  store i64 %602, i64* %RDX, align 8, !tbaa !2428
  %603 = load i64, i64* %RDX
  %604 = load i64, i64* %PC
  %605 = add i64 %604, 4
  store i64 %605, i64* %PC
  %606 = shl i64 %603, 12
  %607 = icmp slt i64 %606, 0
  %608 = shl i64 %606, 1
  store i64 %608, i64* %RDX, align 8, !tbaa !2428
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %610 = zext i1 %607 to i8
  store i8 %610, i8* %609, align 1, !tbaa !2451
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %612 = trunc i64 %608 to i32
  %613 = and i32 %612, 254
  %614 = call i32 @llvm.ctpop.i32(i32 %613) #16
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  %617 = xor i8 %616, 1
  store i8 %617, i8* %611, align 1, !tbaa !2451
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %618, align 1, !tbaa !2451
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %620 = icmp eq i64 %608, 0
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %619, align 1, !tbaa !2451
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %623 = lshr i64 %608, 63
  %624 = trunc i64 %623 to i8
  store i8 %624, i8* %622, align 1, !tbaa !2451
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %625, align 1, !tbaa !2451
  %626 = load i64, i64* %RCX
  %627 = load i64, i64* %RDX
  %628 = load i64, i64* %PC
  %629 = add i64 %628, 3
  store i64 %629, i64* %PC
  %630 = add i64 %627, %626
  store i64 %630, i64* %RCX, align 8, !tbaa !2428
  %631 = icmp ult i64 %630, %626
  %632 = icmp ult i64 %630, %627
  %633 = or i1 %631, %632
  %634 = zext i1 %633 to i8
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %634, i8* %635, align 1, !tbaa !2432
  %636 = trunc i64 %630 to i32
  %637 = and i32 %636, 255
  %638 = call i32 @llvm.ctpop.i32(i32 %637) #16
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  %641 = xor i8 %640, 1
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %641, i8* %642, align 1, !tbaa !2446
  %643 = xor i64 %627, %626
  %644 = xor i64 %643, %630
  %645 = lshr i64 %644, 4
  %646 = trunc i64 %645 to i8
  %647 = and i8 %646, 1
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %647, i8* %648, align 1, !tbaa !2447
  %649 = icmp eq i64 %630, 0
  %650 = zext i1 %649 to i8
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %650, i8* %651, align 1, !tbaa !2448
  %652 = lshr i64 %630, 63
  %653 = trunc i64 %652 to i8
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %653, i8* %654, align 1, !tbaa !2449
  %655 = lshr i64 %626, 63
  %656 = lshr i64 %627, 63
  %657 = xor i64 %652, %655
  %658 = xor i64 %652, %656
  %659 = add nuw nsw i64 %657, %658
  %660 = icmp eq i64 %659, 2
  %661 = zext i1 %660 to i8
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %661, i8* %662, align 1, !tbaa !2450
  %663 = load i64, i64* %RBP
  %664 = sub i64 %663, 48
  %665 = load i64, i64* %PC
  %666 = add i64 %665, 4
  store i64 %666, i64* %PC
  %667 = inttoptr i64 %664 to i32*
  %668 = load i32, i32* %667
  %669 = sext i32 %668 to i64
  store i64 %669, i64* %RDX, align 8, !tbaa !2428
  %670 = load i64, i64* %RCX
  %671 = load i64, i64* %RDX
  %672 = mul i64 %671, 8
  %673 = add i64 %672, %670
  %674 = bitcast %union.vec128_t* %XMM0 to i8*
  %675 = load i64, i64* %PC
  %676 = add i64 %675, 5
  store i64 %676, i64* %PC
  %677 = bitcast i8* %674 to double*
  %678 = load double, double* %677, align 1
  %679 = inttoptr i64 %673 to double*
  store double %678, double* %679
  %680 = load i64, i64* %RBP
  %681 = sub i64 %680, 40
  %682 = load i64, i64* %PC
  %683 = add i64 %682, 4
  store i64 %683, i64* %PC
  %684 = inttoptr i64 %681 to i64*
  %685 = load i64, i64* %684
  store i64 %685, i64* %RCX, align 8, !tbaa !2428
  %686 = load i64, i64* %RBP
  %687 = sub i64 %686, 44
  %688 = load i64, i64* %PC
  %689 = add i64 %688, 4
  store i64 %689, i64* %PC
  %690 = inttoptr i64 %687 to i32*
  %691 = load i32, i32* %690
  %692 = sext i32 %691 to i64
  store i64 %692, i64* %RDX, align 8, !tbaa !2428
  %693 = load i64, i64* %RDX
  %694 = load i64, i64* %PC
  %695 = add i64 %694, 4
  store i64 %695, i64* %PC
  %696 = shl i64 %693, 12
  %697 = icmp slt i64 %696, 0
  %698 = shl i64 %696, 1
  store i64 %698, i64* %RDX, align 8, !tbaa !2428
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %700 = zext i1 %697 to i8
  store i8 %700, i8* %699, align 1, !tbaa !2451
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %702 = trunc i64 %698 to i32
  %703 = and i32 %702, 254
  %704 = call i32 @llvm.ctpop.i32(i32 %703) #16
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  store i8 %707, i8* %701, align 1, !tbaa !2451
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %708, align 1, !tbaa !2451
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %710 = icmp eq i64 %698, 0
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %709, align 1, !tbaa !2451
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %713 = lshr i64 %698, 63
  %714 = trunc i64 %713 to i8
  store i8 %714, i8* %712, align 1, !tbaa !2451
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %715, align 1, !tbaa !2451
  %716 = load i64, i64* %RCX
  %717 = load i64, i64* %RDX
  %718 = load i64, i64* %PC
  %719 = add i64 %718, 3
  store i64 %719, i64* %PC
  %720 = add i64 %717, %716
  store i64 %720, i64* %RCX, align 8, !tbaa !2428
  %721 = icmp ult i64 %720, %716
  %722 = icmp ult i64 %720, %717
  %723 = or i1 %721, %722
  %724 = zext i1 %723 to i8
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %724, i8* %725, align 1, !tbaa !2432
  %726 = trunc i64 %720 to i32
  %727 = and i32 %726, 255
  %728 = call i32 @llvm.ctpop.i32(i32 %727) #16
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  %731 = xor i8 %730, 1
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %731, i8* %732, align 1, !tbaa !2446
  %733 = xor i64 %717, %716
  %734 = xor i64 %733, %720
  %735 = lshr i64 %734, 4
  %736 = trunc i64 %735 to i8
  %737 = and i8 %736, 1
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %737, i8* %738, align 1, !tbaa !2447
  %739 = icmp eq i64 %720, 0
  %740 = zext i1 %739 to i8
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %740, i8* %741, align 1, !tbaa !2448
  %742 = lshr i64 %720, 63
  %743 = trunc i64 %742 to i8
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %743, i8* %744, align 1, !tbaa !2449
  %745 = lshr i64 %716, 63
  %746 = lshr i64 %717, 63
  %747 = xor i64 %742, %745
  %748 = xor i64 %742, %746
  %749 = add nuw nsw i64 %747, %748
  %750 = icmp eq i64 %749, 2
  %751 = zext i1 %750 to i8
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %751, i8* %752, align 1, !tbaa !2450
  %753 = load i64, i64* %RBP
  %754 = sub i64 %753, 48
  %755 = load i64, i64* %PC
  %756 = add i64 %755, 4
  store i64 %756, i64* %PC
  %757 = inttoptr i64 %754 to i32*
  %758 = load i32, i32* %757
  %759 = sext i32 %758 to i64
  store i64 %759, i64* %RDX, align 8, !tbaa !2428
  %760 = load i64, i64* %RCX
  %761 = load i64, i64* %RDX
  %762 = mul i64 %761, 8
  %763 = add i64 %762, %760
  %764 = bitcast %union.vec128_t* %XMM0 to i8*
  %765 = load i64, i64* %PC
  %766 = add i64 %765, 5
  store i64 %766, i64* %PC
  %767 = bitcast i8* %764 to double*
  %768 = load double, double* %767, align 1
  %769 = inttoptr i64 %763 to double*
  store double %768, double* %769
  %770 = load i64, i64* %RBP
  %771 = sub i64 %770, 44
  %772 = load i64, i64* %PC
  %773 = add i64 %772, 3
  store i64 %773, i64* %PC
  %774 = inttoptr i64 %771 to i32*
  %775 = load i32, i32* %774
  %776 = zext i32 %775 to i64
  store i64 %776, i64* %RAX, align 8, !tbaa !2428
  %777 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %778 = load i32, i32* %EAX
  %779 = zext i32 %778 to i64
  %780 = load i64, i64* %PC
  %781 = add i64 %780, 4
  store i64 %781, i64* %PC
  %782 = sitofp i32 %778 to double
  %783 = bitcast i8* %777 to double*
  store double %782, double* %783, align 1, !tbaa !2452
  %784 = load i64, i64* %RBP
  %785 = sub i64 %784, 48
  %786 = load i64, i64* %PC
  %787 = add i64 %786, 3
  store i64 %787, i64* %PC
  %788 = inttoptr i64 %785 to i32*
  %789 = load i32, i32* %788
  %790 = zext i32 %789 to i64
  store i64 %790, i64* %RAX, align 8, !tbaa !2428
  %791 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %792 = load i32, i32* %EAX
  %793 = zext i32 %792 to i64
  %794 = load i64, i64* %PC
  %795 = add i64 %794, 4
  store i64 %795, i64* %PC
  %796 = sitofp i32 %792 to double
  %797 = bitcast i8* %791 to double*
  store double %796, double* %797, align 1, !tbaa !2452
  %798 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %799 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %800 = bitcast %union.vec128_t* %XMM1 to i8*
  %801 = load i64, i64* %PC
  %802 = add i64 %801, 4
  store i64 %802, i64* %PC
  %803 = bitcast i8* %799 to double*
  %804 = load double, double* %803, align 1
  %805 = getelementptr inbounds i8, i8* %799, i64 8
  %806 = bitcast i8* %805 to i64*
  %807 = load i64, i64* %806, align 1
  %808 = bitcast i8* %800 to double*
  %809 = load double, double* %808, align 1
  %810 = fmul double %804, %809
  %811 = bitcast i8* %798 to double*
  store double %810, double* %811, align 1, !tbaa !2452
  %812 = getelementptr inbounds i8, i8* %798, i64 8
  %813 = bitcast i8* %812 to i64*
  store i64 %807, i64* %813, align 1, !tbaa !2452
  %814 = load i64, i64* %RBP
  %815 = sub i64 %814, 4
  %816 = load i64, i64* %PC
  %817 = add i64 %816, 3
  store i64 %817, i64* %PC
  %818 = inttoptr i64 %815 to i32*
  %819 = load i32, i32* %818
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %RAX, align 8, !tbaa !2428
  %821 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %822 = load i32, i32* %EAX
  %823 = zext i32 %822 to i64
  %824 = load i64, i64* %PC
  %825 = add i64 %824, 4
  store i64 %825, i64* %PC
  %826 = sitofp i32 %822 to double
  %827 = bitcast i8* %821 to double*
  store double %826, double* %827, align 1, !tbaa !2452
  %828 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %829 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %830 = bitcast %union.vec128_t* %XMM1 to i8*
  %831 = load i64, i64* %PC
  %832 = add i64 %831, 4
  store i64 %832, i64* %PC
  %833 = bitcast i8* %829 to double*
  %834 = load double, double* %833, align 1
  %835 = getelementptr inbounds i8, i8* %829, i64 8
  %836 = bitcast i8* %835 to i64*
  %837 = load i64, i64* %836, align 1
  %838 = bitcast i8* %830 to double*
  %839 = load double, double* %838, align 1
  %840 = fdiv double %834, %839
  %841 = bitcast i8* %828 to double*
  store double %840, double* %841, align 1, !tbaa !2452
  %842 = getelementptr inbounds i8, i8* %828, i64 8
  %843 = bitcast i8* %842 to i64*
  store i64 %837, i64* %843, align 1, !tbaa !2452
  %844 = load i64, i64* %RBP
  %845 = add i64 %844, 24
  %846 = load i64, i64* %PC
  %847 = add i64 %846, 4
  store i64 %847, i64* %PC
  %848 = inttoptr i64 %845 to i64*
  %849 = load i64, i64* %848
  store i64 %849, i64* %RCX, align 8, !tbaa !2428
  %850 = load i64, i64* %RBP
  %851 = sub i64 %850, 44
  %852 = load i64, i64* %PC
  %853 = add i64 %852, 4
  store i64 %853, i64* %PC
  %854 = inttoptr i64 %851 to i32*
  %855 = load i32, i32* %854
  %856 = sext i32 %855 to i64
  store i64 %856, i64* %RDX, align 8, !tbaa !2428
  %857 = load i64, i64* %RDX
  %858 = load i64, i64* %PC
  %859 = add i64 %858, 4
  store i64 %859, i64* %PC
  %860 = shl i64 %857, 12
  %861 = icmp slt i64 %860, 0
  %862 = shl i64 %860, 1
  store i64 %862, i64* %RDX, align 8, !tbaa !2428
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %864 = zext i1 %861 to i8
  store i8 %864, i8* %863, align 1, !tbaa !2451
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %866 = trunc i64 %862 to i32
  %867 = and i32 %866, 254
  %868 = call i32 @llvm.ctpop.i32(i32 %867) #16
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = xor i8 %870, 1
  store i8 %871, i8* %865, align 1, !tbaa !2451
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %872, align 1, !tbaa !2451
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %874 = icmp eq i64 %862, 0
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %873, align 1, !tbaa !2451
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %877 = lshr i64 %862, 63
  %878 = trunc i64 %877 to i8
  store i8 %878, i8* %876, align 1, !tbaa !2451
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %879, align 1, !tbaa !2451
  %880 = load i64, i64* %RCX
  %881 = load i64, i64* %RDX
  %882 = load i64, i64* %PC
  %883 = add i64 %882, 3
  store i64 %883, i64* %PC
  %884 = add i64 %881, %880
  store i64 %884, i64* %RCX, align 8, !tbaa !2428
  %885 = icmp ult i64 %884, %880
  %886 = icmp ult i64 %884, %881
  %887 = or i1 %885, %886
  %888 = zext i1 %887 to i8
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %888, i8* %889, align 1, !tbaa !2432
  %890 = trunc i64 %884 to i32
  %891 = and i32 %890, 255
  %892 = call i32 @llvm.ctpop.i32(i32 %891) #16
  %893 = trunc i32 %892 to i8
  %894 = and i8 %893, 1
  %895 = xor i8 %894, 1
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %895, i8* %896, align 1, !tbaa !2446
  %897 = xor i64 %881, %880
  %898 = xor i64 %897, %884
  %899 = lshr i64 %898, 4
  %900 = trunc i64 %899 to i8
  %901 = and i8 %900, 1
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %901, i8* %902, align 1, !tbaa !2447
  %903 = icmp eq i64 %884, 0
  %904 = zext i1 %903 to i8
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %904, i8* %905, align 1, !tbaa !2448
  %906 = lshr i64 %884, 63
  %907 = trunc i64 %906 to i8
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %907, i8* %908, align 1, !tbaa !2449
  %909 = lshr i64 %880, 63
  %910 = lshr i64 %881, 63
  %911 = xor i64 %906, %909
  %912 = xor i64 %906, %910
  %913 = add nuw nsw i64 %911, %912
  %914 = icmp eq i64 %913, 2
  %915 = zext i1 %914 to i8
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %915, i8* %916, align 1, !tbaa !2450
  %917 = load i64, i64* %RBP
  %918 = sub i64 %917, 48
  %919 = load i64, i64* %PC
  %920 = add i64 %919, 4
  store i64 %920, i64* %PC
  %921 = inttoptr i64 %918 to i32*
  %922 = load i32, i32* %921
  %923 = sext i32 %922 to i64
  store i64 %923, i64* %RDX, align 8, !tbaa !2428
  %924 = load i64, i64* %RCX
  %925 = load i64, i64* %RDX
  %926 = mul i64 %925, 8
  %927 = add i64 %926, %924
  %928 = bitcast %union.vec128_t* %XMM0 to i8*
  %929 = load i64, i64* %PC
  %930 = add i64 %929, 5
  store i64 %930, i64* %PC
  %931 = bitcast i8* %928 to double*
  %932 = load double, double* %931, align 1
  %933 = inttoptr i64 %927 to double*
  store double %932, double* %933
  %934 = load i64, i64* %RBP
  %935 = sub i64 %934, 48
  %936 = load i64, i64* %PC
  %937 = add i64 %936, 3
  store i64 %937, i64* %PC
  %938 = inttoptr i64 %935 to i32*
  %939 = load i32, i32* %938
  %940 = zext i32 %939 to i64
  store i64 %940, i64* %RAX, align 8, !tbaa !2428
  %941 = load i64, i64* %RAX
  %942 = load i64, i64* %PC
  %943 = add i64 %942, 3
  store i64 %943, i64* %PC
  %944 = trunc i64 %941 to i32
  %945 = add i32 1, %944
  %946 = zext i32 %945 to i64
  store i64 %946, i64* %RAX, align 8, !tbaa !2428
  %947 = icmp ult i32 %945, %944
  %948 = icmp ult i32 %945, 1
  %949 = or i1 %947, %948
  %950 = zext i1 %949 to i8
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %950, i8* %951, align 1, !tbaa !2432
  %952 = and i32 %945, 255
  %953 = call i32 @llvm.ctpop.i32(i32 %952) #16
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %956, i8* %957, align 1, !tbaa !2446
  %958 = xor i64 1, %941
  %959 = trunc i64 %958 to i32
  %960 = xor i32 %959, %945
  %961 = lshr i32 %960, 4
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %963, i8* %964, align 1, !tbaa !2447
  %965 = icmp eq i32 %945, 0
  %966 = zext i1 %965 to i8
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %966, i8* %967, align 1, !tbaa !2448
  %968 = lshr i32 %945, 31
  %969 = trunc i32 %968 to i8
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %969, i8* %970, align 1, !tbaa !2449
  %971 = lshr i32 %944, 31
  %972 = xor i32 %968, %971
  %973 = add nuw nsw i32 %972, %968
  %974 = icmp eq i32 %973, 2
  %975 = zext i1 %974 to i8
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %975, i8* %976, align 1, !tbaa !2450
  %977 = load i64, i64* %RBP
  %978 = sub i64 %977, 48
  %979 = load i32, i32* %EAX
  %980 = zext i32 %979 to i64
  %981 = load i64, i64* %PC
  %982 = add i64 %981, 3
  store i64 %982, i64* %PC
  %983 = inttoptr i64 %978 to i32*
  store i32 %979, i32* %983
  %984 = load i64, i64* %PC
  %985 = sub i64 %984, 151
  %986 = load i64, i64* %PC
  %987 = add i64 %986, 5
  store i64 %987, i64* %PC
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %985, i64* %988, align 8, !tbaa !2428
  br label %block_400ae4

block_400add:                                     ; preds = %block_400ad1
  %989 = sub i64 %451, 48
  %990 = load i64, i64* %PC
  %991 = add i64 %990, 7
  store i64 %991, i64* %PC
  %992 = inttoptr i64 %989 to i32*
  store i32 0, i32* %992
  br label %block_400ae4

block_400c0f:                                     ; preds = %block_400b9a
  %993 = load i64, i64* %PC
  %994 = add i64 %993, 1
  store i64 %994, i64* %PC
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %996 = load i64, i64* %995, align 8, !tbaa !2428
  %997 = add i64 %996, 8
  %998 = inttoptr i64 %996 to i64*
  %999 = load i64, i64* %998
  store i64 %999, i64* %RBP, align 8, !tbaa !2428
  store i64 %997, i64* %995, align 8, !tbaa !2428
  %1000 = load i64, i64* %PC
  %1001 = add i64 %1000, 1
  store i64 %1001, i64* %PC
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1004 = load i64, i64* %1003, align 8, !tbaa !2428
  %1005 = inttoptr i64 %1004 to i64*
  %1006 = load i64, i64* %1005
  store i64 %1006, i64* %1002, align 8, !tbaa !2428
  %1007 = add i64 %1004, 8
  store i64 %1007, i64* %1003, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_400bad:                                     ; preds = %block_400ba6, %block_400bb9
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_400ba6 ], [ %MEMORY.2, %block_400bb9 ]
  %1008 = load i64, i64* %RBP
  %1009 = sub i64 %1008, 48
  %1010 = load i64, i64* %PC
  %1011 = add i64 %1010, 3
  store i64 %1011, i64* %PC
  %1012 = inttoptr i64 %1009 to i32*
  %1013 = load i32, i32* %1012
  %1014 = zext i32 %1013 to i64
  store i64 %1014, i64* %RAX, align 8, !tbaa !2428
  %1015 = load i32, i32* %EAX
  %1016 = zext i32 %1015 to i64
  %1017 = load i64, i64* %RBP
  %1018 = sub i64 %1017, 8
  %1019 = load i64, i64* %PC
  %1020 = add i64 %1019, 3
  store i64 %1020, i64* %PC
  %1021 = inttoptr i64 %1018 to i32*
  %1022 = load i32, i32* %1021
  %1023 = sub i32 %1015, %1022
  %1024 = icmp ult i32 %1015, %1022
  %1025 = zext i1 %1024 to i8
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1025, i8* %1026, align 1, !tbaa !2432
  %1027 = and i32 %1023, 255
  %1028 = call i32 @llvm.ctpop.i32(i32 %1027) #16
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  %1031 = xor i8 %1030, 1
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1031, i8* %1032, align 1, !tbaa !2446
  %1033 = xor i32 %1022, %1015
  %1034 = xor i32 %1033, %1023
  %1035 = lshr i32 %1034, 4
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1037, i8* %1038, align 1, !tbaa !2447
  %1039 = icmp eq i32 %1023, 0
  %1040 = zext i1 %1039 to i8
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1040, i8* %1041, align 1, !tbaa !2448
  %1042 = lshr i32 %1023, 31
  %1043 = trunc i32 %1042 to i8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1043, i8* %1044, align 1, !tbaa !2449
  %1045 = lshr i32 %1015, 31
  %1046 = lshr i32 %1022, 31
  %1047 = xor i32 %1046, %1045
  %1048 = xor i32 %1042, %1045
  %1049 = add nuw nsw i32 %1048, %1047
  %1050 = icmp eq i32 %1049, 2
  %1051 = zext i1 %1050 to i8
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1051, i8* %1052, align 1, !tbaa !2450
  %1053 = load i64, i64* %PC
  %1054 = add i64 %1053, 73
  %1055 = load i64, i64* %PC
  %1056 = add i64 %1055, 6
  %1057 = load i64, i64* %PC
  %1058 = add i64 %1057, 6
  store i64 %1058, i64* %PC
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1060 = load i8, i8* %1059, align 1, !tbaa !2449
  %1061 = icmp ne i8 %1060, 0
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1063 = load i8, i8* %1062, align 1, !tbaa !2450
  %1064 = icmp ne i8 %1063, 0
  %1065 = xor i1 %1061, %1064
  %1066 = xor i1 %1065, true
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1069 = select i1 %1065, i64 %1056, i64 %1054
  store i64 %1069, i64* %1068, align 8, !tbaa !2428
  %1070 = load i8, i8* %BRANCH_TAKEN
  %1071 = icmp eq i8 %1070, 1
  br i1 %1071, label %block_400bfc, label %block_400bb9

block_400ba6:                                     ; preds = %block_400b9a
  %1072 = load i64, i64* %RBP
  %1073 = sub i64 %1072, 48
  %1074 = load i64, i64* %PC
  %1075 = add i64 %1074, 7
  store i64 %1075, i64* %PC
  %1076 = inttoptr i64 %1073 to i32*
  store i32 0, i32* %1076
  br label %block_400bad

block_400bfc:                                     ; preds = %block_400bad
  %1077 = load i64, i64* %PC
  %1078 = add i64 %1077, 5
  %1079 = load i64, i64* %PC
  %1080 = add i64 %1079, 5
  store i64 %1080, i64* %PC
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1078, i64* %1081, align 8, !tbaa !2428
  %1082 = load i64, i64* %RBP
  %1083 = sub i64 %1082, 44
  %1084 = load i64, i64* %PC
  %1085 = add i64 %1084, 3
  store i64 %1085, i64* %PC
  %1086 = inttoptr i64 %1083 to i32*
  %1087 = load i32, i32* %1086
  %1088 = zext i32 %1087 to i64
  store i64 %1088, i64* %RAX, align 8, !tbaa !2428
  %1089 = load i64, i64* %RAX
  %1090 = load i64, i64* %PC
  %1091 = add i64 %1090, 3
  store i64 %1091, i64* %PC
  %1092 = trunc i64 %1089 to i32
  %1093 = add i32 1, %1092
  %1094 = zext i32 %1093 to i64
  store i64 %1094, i64* %RAX, align 8, !tbaa !2428
  %1095 = icmp ult i32 %1093, %1092
  %1096 = icmp ult i32 %1093, 1
  %1097 = or i1 %1095, %1096
  %1098 = zext i1 %1097 to i8
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1098, i8* %1099, align 1, !tbaa !2432
  %1100 = and i32 %1093, 255
  %1101 = call i32 @llvm.ctpop.i32(i32 %1100) #16
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  %1104 = xor i8 %1103, 1
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1104, i8* %1105, align 1, !tbaa !2446
  %1106 = xor i64 1, %1089
  %1107 = trunc i64 %1106 to i32
  %1108 = xor i32 %1107, %1093
  %1109 = lshr i32 %1108, 4
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1111, i8* %1112, align 1, !tbaa !2447
  %1113 = icmp eq i32 %1093, 0
  %1114 = zext i1 %1113 to i8
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1114, i8* %1115, align 1, !tbaa !2448
  %1116 = lshr i32 %1093, 31
  %1117 = trunc i32 %1116 to i8
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1117, i8* %1118, align 1, !tbaa !2449
  %1119 = lshr i32 %1092, 31
  %1120 = xor i32 %1116, %1119
  %1121 = add nuw nsw i32 %1120, %1116
  %1122 = icmp eq i32 %1121, 2
  %1123 = zext i1 %1122 to i8
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1123, i8* %1124, align 1, !tbaa !2450
  %1125 = load i64, i64* %RBP
  %1126 = sub i64 %1125, 44
  %1127 = load i32, i32* %EAX
  %1128 = zext i32 %1127 to i64
  %1129 = load i64, i64* %PC
  %1130 = add i64 %1129, 3
  store i64 %1130, i64* %PC
  %1131 = inttoptr i64 %1126 to i32*
  store i32 %1127, i32* %1131
  %1132 = load i64, i64* %PC
  %1133 = sub i64 %1132, 112
  %1134 = load i64, i64* %PC
  %1135 = add i64 %1134, 5
  store i64 %1135, i64* %PC
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1133, i64* %1136, align 8, !tbaa !2428
  br label %block_400b9a

block_400ae4:                                     ; preds = %block_400add, %block_400af0
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.0, %block_400add ], [ %MEMORY.3, %block_400af0 ]
  %1137 = load i64, i64* %RBP
  %1138 = sub i64 %1137, 48
  %1139 = load i64, i64* %PC
  %1140 = add i64 %1139, 3
  store i64 %1140, i64* %PC
  %1141 = inttoptr i64 %1138 to i32*
  %1142 = load i32, i32* %1141
  %1143 = zext i32 %1142 to i64
  store i64 %1143, i64* %RAX, align 8, !tbaa !2428
  %1144 = load i32, i32* %EAX
  %1145 = zext i32 %1144 to i64
  %1146 = load i64, i64* %RBP
  %1147 = sub i64 %1146, 8
  %1148 = load i64, i64* %PC
  %1149 = add i64 %1148, 3
  store i64 %1149, i64* %PC
  %1150 = inttoptr i64 %1147 to i32*
  %1151 = load i32, i32* %1150
  %1152 = sub i32 %1144, %1151
  %1153 = icmp ult i32 %1144, %1151
  %1154 = zext i1 %1153 to i8
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1154, i8* %1155, align 1, !tbaa !2432
  %1156 = and i32 %1152, 255
  %1157 = call i32 @llvm.ctpop.i32(i32 %1156) #16
  %1158 = trunc i32 %1157 to i8
  %1159 = and i8 %1158, 1
  %1160 = xor i8 %1159, 1
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1160, i8* %1161, align 1, !tbaa !2446
  %1162 = xor i32 %1151, %1144
  %1163 = xor i32 %1162, %1152
  %1164 = lshr i32 %1163, 4
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1166, i8* %1167, align 1, !tbaa !2447
  %1168 = icmp eq i32 %1152, 0
  %1169 = zext i1 %1168 to i8
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1169, i8* %1170, align 1, !tbaa !2448
  %1171 = lshr i32 %1152, 31
  %1172 = trunc i32 %1171 to i8
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1172, i8* %1173, align 1, !tbaa !2449
  %1174 = lshr i32 %1144, 31
  %1175 = lshr i32 %1151, 31
  %1176 = xor i32 %1175, %1174
  %1177 = xor i32 %1171, %1174
  %1178 = add nuw nsw i32 %1177, %1176
  %1179 = icmp eq i32 %1178, 2
  %1180 = zext i1 %1179 to i8
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1180, i8* %1181, align 1, !tbaa !2450
  %1182 = load i64, i64* %PC
  %1183 = add i64 %1182, 150
  %1184 = load i64, i64* %PC
  %1185 = add i64 %1184, 6
  %1186 = load i64, i64* %PC
  %1187 = add i64 %1186, 6
  store i64 %1187, i64* %PC
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1189 = load i8, i8* %1188, align 1, !tbaa !2449
  %1190 = icmp ne i8 %1189, 0
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1192 = load i8, i8* %1191, align 1, !tbaa !2450
  %1193 = icmp ne i8 %1192, 0
  %1194 = xor i1 %1190, %1193
  %1195 = xor i1 %1194, true
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1198 = select i1 %1194, i64 %1185, i64 %1183
  store i64 %1198, i64* %1197, align 8, !tbaa !2428
  %1199 = load i8, i8* %BRANCH_TAKEN
  %1200 = icmp eq i8 %1199, 1
  br i1 %1200, label %block_400b80, label %block_400af0

block_400b80:                                     ; preds = %block_400ae4
  %1201 = load i64, i64* %PC
  %1202 = add i64 %1201, 5
  %1203 = load i64, i64* %PC
  %1204 = add i64 %1203, 5
  store i64 %1204, i64* %PC
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1202, i64* %1205, align 8, !tbaa !2428
  %1206 = load i64, i64* %RBP
  %1207 = sub i64 %1206, 44
  %1208 = load i64, i64* %PC
  %1209 = add i64 %1208, 3
  store i64 %1209, i64* %PC
  %1210 = inttoptr i64 %1207 to i32*
  %1211 = load i32, i32* %1210
  %1212 = zext i32 %1211 to i64
  store i64 %1212, i64* %RAX, align 8, !tbaa !2428
  %1213 = load i64, i64* %RAX
  %1214 = load i64, i64* %PC
  %1215 = add i64 %1214, 3
  store i64 %1215, i64* %PC
  %1216 = trunc i64 %1213 to i32
  %1217 = add i32 1, %1216
  %1218 = zext i32 %1217 to i64
  store i64 %1218, i64* %RAX, align 8, !tbaa !2428
  %1219 = icmp ult i32 %1217, %1216
  %1220 = icmp ult i32 %1217, 1
  %1221 = or i1 %1219, %1220
  %1222 = zext i1 %1221 to i8
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1222, i8* %1223, align 1, !tbaa !2432
  %1224 = and i32 %1217, 255
  %1225 = call i32 @llvm.ctpop.i32(i32 %1224) #16
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  %1228 = xor i8 %1227, 1
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1228, i8* %1229, align 1, !tbaa !2446
  %1230 = xor i64 1, %1213
  %1231 = trunc i64 %1230 to i32
  %1232 = xor i32 %1231, %1217
  %1233 = lshr i32 %1232, 4
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1235, i8* %1236, align 1, !tbaa !2447
  %1237 = icmp eq i32 %1217, 0
  %1238 = zext i1 %1237 to i8
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1238, i8* %1239, align 1, !tbaa !2448
  %1240 = lshr i32 %1217, 31
  %1241 = trunc i32 %1240 to i8
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1241, i8* %1242, align 1, !tbaa !2449
  %1243 = lshr i32 %1216, 31
  %1244 = xor i32 %1240, %1243
  %1245 = add nuw nsw i32 %1244, %1240
  %1246 = icmp eq i32 %1245, 2
  %1247 = zext i1 %1246 to i8
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1247, i8* %1248, align 1, !tbaa !2450
  %1249 = load i64, i64* %RBP
  %1250 = sub i64 %1249, 44
  %1251 = load i32, i32* %EAX
  %1252 = zext i32 %1251 to i64
  %1253 = load i64, i64* %PC
  %1254 = add i64 %1253, 3
  store i64 %1254, i64* %PC
  %1255 = inttoptr i64 %1250 to i32*
  store i32 %1251, i32* %1255
  %1256 = load i64, i64* %PC
  %1257 = sub i64 %1256, 189
  %1258 = load i64, i64* %PC
  %1259 = add i64 %1258, 5
  store i64 %1259, i64* %PC
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1257, i64* %1260, align 8, !tbaa !2428
  br label %block_400ad1
}

; Function Attrs: noinline
define %struct.Memory* @sub_400670__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400670:
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
define %struct.Memory* @sub_400720_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %35 = tail call %struct.Memory* @sub_4006b0_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_400dc0_kernel_symm_StrictFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400dc0:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %ESI = bitcast %union.anon* %14 to i32*
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
  %55 = sub i64 %54, 4
  %56 = load i32, i32* %EDI
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC
  %60 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %60
  %61 = load i64, i64* %RBP
  %62 = sub i64 %61, 8
  %63 = load i32, i32* %ESI
  %64 = zext i32 %63 to i64
  %65 = load i64, i64* %PC
  %66 = add i64 %65, 3
  store i64 %66, i64* %PC
  %67 = inttoptr i64 %62 to i32*
  store i32 %63, i32* %67
  %68 = load i64, i64* %RBP
  %69 = sub i64 %68, 16
  %70 = bitcast %union.vec128_t* %XMM0 to i8*
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 5
  store i64 %72, i64* %PC
  %73 = bitcast i8* %70 to double*
  %74 = load double, double* %73, align 1
  %75 = inttoptr i64 %69 to double*
  store double %74, double* %75
  %76 = load i64, i64* %RBP
  %77 = sub i64 %76, 24
  %78 = bitcast %union.vec128_t* %XMM1 to i8*
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 5
  store i64 %80, i64* %PC
  %81 = bitcast i8* %78 to double*
  %82 = load double, double* %81, align 1
  %83 = inttoptr i64 %77 to double*
  store double %82, double* %83
  %84 = load i64, i64* %RBP
  %85 = sub i64 %84, 32
  %86 = load i64, i64* %RDX
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89
  %90 = load i64, i64* %RBP
  %91 = sub i64 %90, 40
  %92 = load i64, i64* %RCX
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC
  %95 = inttoptr i64 %91 to i64*
  store i64 %92, i64* %95
  %96 = load i64, i64* %RBP
  %97 = sub i64 %96, 48
  %98 = load i64, i64* %R8
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 4
  store i64 %100, i64* %PC
  %101 = inttoptr i64 %97 to i64*
  store i64 %98, i64* %101
  %102 = load i64, i64* %RBP
  %103 = sub i64 %102, 52
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 7
  store i64 %105, i64* %PC
  %106 = inttoptr i64 %103 to i32*
  store i32 0, i32* %106
  br label %block_400de7

block_400f5d:                                     ; preds = %block_400de7
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 1
  store i64 %108, i64* %PC
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %110 = load i64, i64* %109, align 8, !tbaa !2428
  %111 = add i64 %110, 8
  %112 = inttoptr i64 %110 to i64*
  %113 = load i64, i64* %112
  store i64 %113, i64* %RBP, align 8, !tbaa !2428
  store i64 %111, i64* %109, align 8, !tbaa !2428
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 1
  store i64 %115, i64* %PC
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %118 = load i64, i64* %117, align 8, !tbaa !2428
  %119 = inttoptr i64 %118 to i64*
  %120 = load i64, i64* %119
  store i64 %120, i64* %116, align 8, !tbaa !2428
  %121 = add i64 %118, 8
  store i64 %121, i64* %117, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.2

block_400dfa:                                     ; preds = %block_400ec0, %block_400df3
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_400df3 ], [ %MEMORY.1, %block_400ec0 ]
  %122 = load i64, i64* %RBP
  %123 = sub i64 %122, 56
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 3
  store i64 %125, i64* %PC
  %126 = inttoptr i64 %123 to i32*
  %127 = load i32, i32* %126
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %RAX, align 8, !tbaa !2428
  %129 = load i32, i32* %EAX
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %RBP
  %132 = sub i64 %131, 8
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 3
  store i64 %134, i64* %PC
  %135 = inttoptr i64 %132 to i32*
  %136 = load i32, i32* %135
  %137 = sub i32 %129, %136
  %138 = icmp ult i32 %129, %136
  %139 = zext i1 %138 to i8
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %139, i8* %140, align 1, !tbaa !2432
  %141 = and i32 %137, 255
  %142 = call i32 @llvm.ctpop.i32(i32 %141) #16
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %145, i8* %146, align 1, !tbaa !2446
  %147 = xor i32 %136, %129
  %148 = xor i32 %147, %137
  %149 = lshr i32 %148, 4
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %151, i8* %152, align 1, !tbaa !2447
  %153 = icmp eq i32 %137, 0
  %154 = zext i1 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %154, i8* %155, align 1, !tbaa !2448
  %156 = lshr i32 %137, 31
  %157 = trunc i32 %156 to i8
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %157, i8* %158, align 1, !tbaa !2449
  %159 = lshr i32 %129, 31
  %160 = lshr i32 %136, 31
  %161 = xor i32 %160, %159
  %162 = xor i32 %156, %159
  %163 = add nuw nsw i32 %162, %161
  %164 = icmp eq i32 %163, 2
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %165, i8* %166, align 1, !tbaa !2450
  %167 = load i64, i64* %PC
  %168 = add i64 %167, 330
  %169 = load i64, i64* %PC
  %170 = add i64 %169, 6
  %171 = load i64, i64* %PC
  %172 = add i64 %171, 6
  store i64 %172, i64* %PC
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %174 = load i8, i8* %173, align 1, !tbaa !2449
  %175 = icmp ne i8 %174, 0
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %177 = load i8, i8* %176, align 1, !tbaa !2450
  %178 = icmp ne i8 %177, 0
  %179 = xor i1 %175, %178
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %183 = select i1 %179, i64 %170, i64 %168
  store i64 %183, i64* %182, align 8, !tbaa !2428
  %184 = load i8, i8* %BRANCH_TAKEN
  %185 = icmp eq i8 %184, 1
  br i1 %185, label %block_400f4a, label %block_400e06

block_400e15:                                     ; preds = %block_400e26, %block_400e06
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400e06 ], [ %MEMORY.1, %block_400e26 ]
  %186 = load i64, i64* %RBP
  %187 = sub i64 %186, 60
  %188 = load i64, i64* %PC
  %189 = add i64 %188, 3
  store i64 %189, i64* %PC
  %190 = inttoptr i64 %187 to i32*
  %191 = load i32, i32* %190
  %192 = zext i32 %191 to i64
  store i64 %192, i64* %RAX, align 8, !tbaa !2428
  %193 = load i64, i64* %RBP
  %194 = sub i64 %193, 56
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 3
  store i64 %196, i64* %PC
  %197 = inttoptr i64 %194 to i32*
  %198 = load i32, i32* %197
  %199 = zext i32 %198 to i64
  store i64 %199, i64* %RCX, align 8, !tbaa !2428
  %200 = load i64, i64* %RCX
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 3
  store i64 %202, i64* %PC
  %203 = trunc i64 %200 to i32
  %204 = sub i32 %203, 1
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %RCX, align 8, !tbaa !2428
  %206 = icmp ult i32 %203, 1
  %207 = zext i1 %206 to i8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %207, i8* %208, align 1, !tbaa !2432
  %209 = and i32 %204, 255
  %210 = call i32 @llvm.ctpop.i32(i32 %209) #16
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %213, i8* %214, align 1, !tbaa !2446
  %215 = xor i64 1, %200
  %216 = trunc i64 %215 to i32
  %217 = xor i32 %216, %204
  %218 = lshr i32 %217, 4
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %220, i8* %221, align 1, !tbaa !2447
  %222 = icmp eq i32 %204, 0
  %223 = zext i1 %222 to i8
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %223, i8* %224, align 1, !tbaa !2448
  %225 = lshr i32 %204, 31
  %226 = trunc i32 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %226, i8* %227, align 1, !tbaa !2449
  %228 = lshr i32 %203, 31
  %229 = xor i32 %225, %228
  %230 = add nuw nsw i32 %229, %228
  %231 = icmp eq i32 %230, 2
  %232 = zext i1 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %232, i8* %233, align 1, !tbaa !2450
  %234 = load i32, i32* %EAX
  %235 = zext i32 %234 to i64
  %236 = load i32, i32* %ECX
  %237 = zext i32 %236 to i64
  %238 = load i64, i64* %PC
  %239 = add i64 %238, 2
  store i64 %239, i64* %PC
  %240 = sub i32 %234, %236
  %241 = icmp ult i32 %234, %236
  %242 = zext i1 %241 to i8
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %242, i8* %243, align 1, !tbaa !2432
  %244 = and i32 %240, 255
  %245 = call i32 @llvm.ctpop.i32(i32 %244) #16
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %248, i8* %249, align 1, !tbaa !2446
  %250 = xor i64 %237, %235
  %251 = trunc i64 %250 to i32
  %252 = xor i32 %251, %240
  %253 = lshr i32 %252, 4
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %255, i8* %256, align 1, !tbaa !2447
  %257 = icmp eq i32 %240, 0
  %258 = zext i1 %257 to i8
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %258, i8* %259, align 1, !tbaa !2448
  %260 = lshr i32 %240, 31
  %261 = trunc i32 %260 to i8
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %261, i8* %262, align 1, !tbaa !2449
  %263 = lshr i32 %234, 31
  %264 = lshr i32 %236, 31
  %265 = xor i32 %264, %263
  %266 = xor i32 %260, %263
  %267 = add nuw nsw i32 %266, %265
  %268 = icmp eq i32 %267, 2
  %269 = zext i1 %268 to i8
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %269, i8* %270, align 1, !tbaa !2450
  %271 = load i64, i64* %PC
  %272 = add i64 %271, 160
  %273 = load i64, i64* %PC
  %274 = add i64 %273, 6
  %275 = load i64, i64* %PC
  %276 = add i64 %275, 6
  store i64 %276, i64* %PC
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %278 = load i8, i8* %277, align 1, !tbaa !2449
  %279 = icmp ne i8 %278, 0
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %281 = load i8, i8* %280, align 1, !tbaa !2450
  %282 = icmp ne i8 %281, 0
  %283 = xor i1 %279, %282
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %287 = select i1 %283, i64 %274, i64 %272
  store i64 %287, i64* %286, align 8, !tbaa !2428
  %288 = load i8, i8* %BRANCH_TAKEN
  %289 = icmp eq i8 %288, 1
  %290 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %291 = load i64, i64* %RBP
  br i1 %289, label %block_400ec0, label %block_400e26

block_400df3:                                     ; preds = %block_400de7
  %292 = load i64, i64* %RBP
  %293 = sub i64 %292, 56
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 7
  store i64 %295, i64* %PC
  %296 = inttoptr i64 %293 to i32*
  store i32 0, i32* %296
  br label %block_400dfa

block_400f4a:                                     ; preds = %block_400dfa
  %297 = load i64, i64* %PC
  %298 = add i64 %297, 5
  %299 = load i64, i64* %PC
  %300 = add i64 %299, 5
  store i64 %300, i64* %PC
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %298, i64* %301, align 8, !tbaa !2428
  %302 = load i64, i64* %RBP
  %303 = sub i64 %302, 52
  %304 = load i64, i64* %PC
  %305 = add i64 %304, 3
  store i64 %305, i64* %PC
  %306 = inttoptr i64 %303 to i32*
  %307 = load i32, i32* %306
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RAX, align 8, !tbaa !2428
  %309 = load i64, i64* %RAX
  %310 = load i64, i64* %PC
  %311 = add i64 %310, 3
  store i64 %311, i64* %PC
  %312 = trunc i64 %309 to i32
  %313 = add i32 1, %312
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RAX, align 8, !tbaa !2428
  %315 = icmp ult i32 %313, %312
  %316 = icmp ult i32 %313, 1
  %317 = or i1 %315, %316
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %318, i8* %319, align 1, !tbaa !2432
  %320 = and i32 %313, 255
  %321 = call i32 @llvm.ctpop.i32(i32 %320) #16
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = xor i8 %323, 1
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %324, i8* %325, align 1, !tbaa !2446
  %326 = xor i64 1, %309
  %327 = trunc i64 %326 to i32
  %328 = xor i32 %327, %313
  %329 = lshr i32 %328, 4
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %331, i8* %332, align 1, !tbaa !2447
  %333 = icmp eq i32 %313, 0
  %334 = zext i1 %333 to i8
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %334, i8* %335, align 1, !tbaa !2448
  %336 = lshr i32 %313, 31
  %337 = trunc i32 %336 to i8
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %337, i8* %338, align 1, !tbaa !2449
  %339 = lshr i32 %312, 31
  %340 = xor i32 %336, %339
  %341 = add nuw nsw i32 %340, %336
  %342 = icmp eq i32 %341, 2
  %343 = zext i1 %342 to i8
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %343, i8* %344, align 1, !tbaa !2450
  %345 = load i64, i64* %RBP
  %346 = sub i64 %345, 52
  %347 = load i32, i32* %EAX
  %348 = zext i32 %347 to i64
  %349 = load i64, i64* %PC
  %350 = add i64 %349, 3
  store i64 %350, i64* %PC
  %351 = inttoptr i64 %346 to i32*
  store i32 %347, i32* %351
  %352 = load i64, i64* %PC
  %353 = sub i64 %352, 369
  %354 = load i64, i64* %PC
  %355 = add i64 %354, 5
  store i64 %355, i64* %PC
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %353, i64* %356, align 8, !tbaa !2428
  br label %block_400de7

block_400e06:                                     ; preds = %block_400dfa
  %357 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %358 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %359 = bitcast %union.vec128_t* %XMM0 to i8*
  %360 = load i64, i64* %PC
  %361 = add i64 %360, 3
  store i64 %361, i64* %PC
  %362 = bitcast i8* %358 to i64*
  %363 = load i64, i64* %362, align 1
  %364 = getelementptr inbounds i8, i8* %358, i64 8
  %365 = bitcast i8* %364 to i64*
  %366 = load i64, i64* %365, align 1
  %367 = bitcast i8* %359 to i64*
  %368 = load i64, i64* %367, align 1
  %369 = getelementptr inbounds i8, i8* %359, i64 8
  %370 = bitcast i8* %369 to i64*
  %371 = load i64, i64* %370, align 1
  %372 = xor i64 %368, %363
  %373 = xor i64 %371, %366
  %374 = trunc i64 %372 to i32
  %375 = lshr i64 %372, 32
  %376 = trunc i64 %375 to i32
  %377 = bitcast i8* %357 to i32*
  store i32 %374, i32* %377, align 1, !tbaa !2454
  %378 = getelementptr inbounds i8, i8* %357, i64 4
  %379 = bitcast i8* %378 to i32*
  store i32 %376, i32* %379, align 1, !tbaa !2454
  %380 = trunc i64 %373 to i32
  %381 = getelementptr inbounds i8, i8* %357, i64 8
  %382 = bitcast i8* %381 to i32*
  store i32 %380, i32* %382, align 1, !tbaa !2454
  %383 = lshr i64 %373, 32
  %384 = trunc i64 %383 to i32
  %385 = getelementptr inbounds i8, i8* %357, i64 12
  %386 = bitcast i8* %385 to i32*
  store i32 %384, i32* %386, align 1, !tbaa !2454
  %387 = load i64, i64* %RBP
  %388 = sub i64 %387, 72
  %389 = bitcast %union.vec128_t* %XMM0 to i8*
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 5
  store i64 %391, i64* %PC
  %392 = bitcast i8* %389 to double*
  %393 = load double, double* %392, align 1
  %394 = inttoptr i64 %388 to double*
  store double %393, double* %394
  %395 = load i64, i64* %RBP
  %396 = sub i64 %395, 60
  %397 = load i64, i64* %PC
  %398 = add i64 %397, 7
  store i64 %398, i64* %PC
  %399 = inttoptr i64 %396 to i32*
  store i32 0, i32* %399
  br label %block_400e15

block_400e26:                                     ; preds = %block_400e15
  %400 = sub i64 %291, 16
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 5
  store i64 %402, i64* %PC
  %403 = inttoptr i64 %400 to double*
  %404 = load double, double* %403
  %405 = bitcast i8* %290 to double*
  store double %404, double* %405, align 1, !tbaa !2452
  %406 = getelementptr inbounds i8, i8* %290, i64 8
  %407 = bitcast i8* %406 to double*
  store double 0.000000e+00, double* %407, align 1, !tbaa !2452
  %408 = load i64, i64* %RBP
  %409 = sub i64 %408, 40
  %410 = load i64, i64* %PC
  %411 = add i64 %410, 4
  store i64 %411, i64* %PC
  %412 = inttoptr i64 %409 to i64*
  %413 = load i64, i64* %412
  store i64 %413, i64* %RAX, align 8, !tbaa !2428
  %414 = load i64, i64* %RBP
  %415 = sub i64 %414, 60
  %416 = load i64, i64* %PC
  %417 = add i64 %416, 4
  store i64 %417, i64* %PC
  %418 = inttoptr i64 %415 to i32*
  %419 = load i32, i32* %418
  %420 = sext i32 %419 to i64
  store i64 %420, i64* %RCX, align 8, !tbaa !2428
  %421 = load i64, i64* %RCX
  %422 = load i64, i64* %PC
  %423 = add i64 %422, 4
  store i64 %423, i64* %PC
  %424 = shl i64 %421, 12
  %425 = icmp slt i64 %424, 0
  %426 = shl i64 %424, 1
  store i64 %426, i64* %RCX, align 8, !tbaa !2428
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %428 = zext i1 %425 to i8
  store i8 %428, i8* %427, align 1, !tbaa !2451
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %430 = trunc i64 %426 to i32
  %431 = and i32 %430, 254
  %432 = call i32 @llvm.ctpop.i32(i32 %431) #16
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %429, align 1, !tbaa !2451
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %436, align 1, !tbaa !2451
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %438 = icmp eq i64 %426, 0
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %437, align 1, !tbaa !2451
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %441 = lshr i64 %426, 63
  %442 = trunc i64 %441 to i8
  store i8 %442, i8* %440, align 1, !tbaa !2451
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %443, align 1, !tbaa !2451
  %444 = load i64, i64* %RAX
  %445 = load i64, i64* %RCX
  %446 = load i64, i64* %PC
  %447 = add i64 %446, 3
  store i64 %447, i64* %PC
  %448 = add i64 %445, %444
  store i64 %448, i64* %RAX, align 8, !tbaa !2428
  %449 = icmp ult i64 %448, %444
  %450 = icmp ult i64 %448, %445
  %451 = or i1 %449, %450
  %452 = zext i1 %451 to i8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %452, i8* %453, align 1, !tbaa !2432
  %454 = trunc i64 %448 to i32
  %455 = and i32 %454, 255
  %456 = call i32 @llvm.ctpop.i32(i32 %455) #16
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %459, i8* %460, align 1, !tbaa !2446
  %461 = xor i64 %445, %444
  %462 = xor i64 %461, %448
  %463 = lshr i64 %462, 4
  %464 = trunc i64 %463 to i8
  %465 = and i8 %464, 1
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %465, i8* %466, align 1, !tbaa !2447
  %467 = icmp eq i64 %448, 0
  %468 = zext i1 %467 to i8
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %468, i8* %469, align 1, !tbaa !2448
  %470 = lshr i64 %448, 63
  %471 = trunc i64 %470 to i8
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %471, i8* %472, align 1, !tbaa !2449
  %473 = lshr i64 %444, 63
  %474 = lshr i64 %445, 63
  %475 = xor i64 %470, %473
  %476 = xor i64 %470, %474
  %477 = add nuw nsw i64 %475, %476
  %478 = icmp eq i64 %477, 2
  %479 = zext i1 %478 to i8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %479, i8* %480, align 1, !tbaa !2450
  %481 = load i64, i64* %RBP
  %482 = sub i64 %481, 52
  %483 = load i64, i64* %PC
  %484 = add i64 %483, 4
  store i64 %484, i64* %PC
  %485 = inttoptr i64 %482 to i32*
  %486 = load i32, i32* %485
  %487 = sext i32 %486 to i64
  store i64 %487, i64* %RCX, align 8, !tbaa !2428
  %488 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %489 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %490 = load i64, i64* %RAX
  %491 = load i64, i64* %RCX
  %492 = mul i64 %491, 8
  %493 = add i64 %492, %490
  %494 = load i64, i64* %PC
  %495 = add i64 %494, 5
  store i64 %495, i64* %PC
  %496 = bitcast i8* %489 to double*
  %497 = load double, double* %496, align 1
  %498 = getelementptr inbounds i8, i8* %489, i64 8
  %499 = bitcast i8* %498 to i64*
  %500 = load i64, i64* %499, align 1
  %501 = inttoptr i64 %493 to double*
  %502 = load double, double* %501
  %503 = fmul double %497, %502
  %504 = bitcast i8* %488 to double*
  store double %503, double* %504, align 1, !tbaa !2452
  %505 = getelementptr inbounds i8, i8* %488, i64 8
  %506 = bitcast i8* %505 to i64*
  store i64 %500, i64* %506, align 1, !tbaa !2452
  %507 = load i64, i64* %RBP
  %508 = sub i64 %507, 48
  %509 = load i64, i64* %PC
  %510 = add i64 %509, 4
  store i64 %510, i64* %PC
  %511 = inttoptr i64 %508 to i64*
  %512 = load i64, i64* %511
  store i64 %512, i64* %RAX, align 8, !tbaa !2428
  %513 = load i64, i64* %RBP
  %514 = sub i64 %513, 52
  %515 = load i64, i64* %PC
  %516 = add i64 %515, 4
  store i64 %516, i64* %PC
  %517 = inttoptr i64 %514 to i32*
  %518 = load i32, i32* %517
  %519 = sext i32 %518 to i64
  store i64 %519, i64* %RCX, align 8, !tbaa !2428
  %520 = load i64, i64* %RCX
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 4
  store i64 %522, i64* %PC
  %523 = shl i64 %520, 12
  %524 = icmp slt i64 %523, 0
  %525 = shl i64 %523, 1
  store i64 %525, i64* %RCX, align 8, !tbaa !2428
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %527 = zext i1 %524 to i8
  store i8 %527, i8* %526, align 1, !tbaa !2451
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %529 = trunc i64 %525 to i32
  %530 = and i32 %529, 254
  %531 = call i32 @llvm.ctpop.i32(i32 %530) #16
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  %534 = xor i8 %533, 1
  store i8 %534, i8* %528, align 1, !tbaa !2451
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %535, align 1, !tbaa !2451
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %537 = icmp eq i64 %525, 0
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %536, align 1, !tbaa !2451
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %540 = lshr i64 %525, 63
  %541 = trunc i64 %540 to i8
  store i8 %541, i8* %539, align 1, !tbaa !2451
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %542, align 1, !tbaa !2451
  %543 = load i64, i64* %RAX
  %544 = load i64, i64* %RCX
  %545 = load i64, i64* %PC
  %546 = add i64 %545, 3
  store i64 %546, i64* %PC
  %547 = add i64 %544, %543
  store i64 %547, i64* %RAX, align 8, !tbaa !2428
  %548 = icmp ult i64 %547, %543
  %549 = icmp ult i64 %547, %544
  %550 = or i1 %548, %549
  %551 = zext i1 %550 to i8
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %551, i8* %552, align 1, !tbaa !2432
  %553 = trunc i64 %547 to i32
  %554 = and i32 %553, 255
  %555 = call i32 @llvm.ctpop.i32(i32 %554) #16
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %558, i8* %559, align 1, !tbaa !2446
  %560 = xor i64 %544, %543
  %561 = xor i64 %560, %547
  %562 = lshr i64 %561, 4
  %563 = trunc i64 %562 to i8
  %564 = and i8 %563, 1
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %564, i8* %565, align 1, !tbaa !2447
  %566 = icmp eq i64 %547, 0
  %567 = zext i1 %566 to i8
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %567, i8* %568, align 1, !tbaa !2448
  %569 = lshr i64 %547, 63
  %570 = trunc i64 %569 to i8
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %570, i8* %571, align 1, !tbaa !2449
  %572 = lshr i64 %543, 63
  %573 = lshr i64 %544, 63
  %574 = xor i64 %569, %572
  %575 = xor i64 %569, %573
  %576 = add nuw nsw i64 %574, %575
  %577 = icmp eq i64 %576, 2
  %578 = zext i1 %577 to i8
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %578, i8* %579, align 1, !tbaa !2450
  %580 = load i64, i64* %RBP
  %581 = sub i64 %580, 56
  %582 = load i64, i64* %PC
  %583 = add i64 %582, 4
  store i64 %583, i64* %PC
  %584 = inttoptr i64 %581 to i32*
  %585 = load i32, i32* %584
  %586 = sext i32 %585 to i64
  store i64 %586, i64* %RCX, align 8, !tbaa !2428
  %587 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %588 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %589 = load i64, i64* %RAX
  %590 = load i64, i64* %RCX
  %591 = mul i64 %590, 8
  %592 = add i64 %591, %589
  %593 = load i64, i64* %PC
  %594 = add i64 %593, 5
  store i64 %594, i64* %PC
  %595 = bitcast i8* %588 to double*
  %596 = load double, double* %595, align 1
  %597 = getelementptr inbounds i8, i8* %588, i64 8
  %598 = bitcast i8* %597 to i64*
  %599 = load i64, i64* %598, align 1
  %600 = inttoptr i64 %592 to double*
  %601 = load double, double* %600
  %602 = fmul double %596, %601
  %603 = bitcast i8* %587 to double*
  store double %602, double* %603, align 1, !tbaa !2452
  %604 = getelementptr inbounds i8, i8* %587, i64 8
  %605 = bitcast i8* %604 to i64*
  store i64 %599, i64* %605, align 1, !tbaa !2452
  %606 = load i64, i64* %RBP
  %607 = sub i64 %606, 32
  %608 = load i64, i64* %PC
  %609 = add i64 %608, 4
  store i64 %609, i64* %PC
  %610 = inttoptr i64 %607 to i64*
  %611 = load i64, i64* %610
  store i64 %611, i64* %RAX, align 8, !tbaa !2428
  %612 = load i64, i64* %RBP
  %613 = sub i64 %612, 60
  %614 = load i64, i64* %PC
  %615 = add i64 %614, 4
  store i64 %615, i64* %PC
  %616 = inttoptr i64 %613 to i32*
  %617 = load i32, i32* %616
  %618 = sext i32 %617 to i64
  store i64 %618, i64* %RCX, align 8, !tbaa !2428
  %619 = load i64, i64* %RCX
  %620 = load i64, i64* %PC
  %621 = add i64 %620, 4
  store i64 %621, i64* %PC
  %622 = shl i64 %619, 12
  %623 = icmp slt i64 %622, 0
  %624 = shl i64 %622, 1
  store i64 %624, i64* %RCX, align 8, !tbaa !2428
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %626 = zext i1 %623 to i8
  store i8 %626, i8* %625, align 1, !tbaa !2451
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %628 = trunc i64 %624 to i32
  %629 = and i32 %628, 254
  %630 = call i32 @llvm.ctpop.i32(i32 %629) #16
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  %633 = xor i8 %632, 1
  store i8 %633, i8* %627, align 1, !tbaa !2451
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %634, align 1, !tbaa !2451
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %636 = icmp eq i64 %624, 0
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %635, align 1, !tbaa !2451
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %639 = lshr i64 %624, 63
  %640 = trunc i64 %639 to i8
  store i8 %640, i8* %638, align 1, !tbaa !2451
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %641, align 1, !tbaa !2451
  %642 = load i64, i64* %RAX
  %643 = load i64, i64* %RCX
  %644 = load i64, i64* %PC
  %645 = add i64 %644, 3
  store i64 %645, i64* %PC
  %646 = add i64 %643, %642
  store i64 %646, i64* %RAX, align 8, !tbaa !2428
  %647 = icmp ult i64 %646, %642
  %648 = icmp ult i64 %646, %643
  %649 = or i1 %647, %648
  %650 = zext i1 %649 to i8
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %650, i8* %651, align 1, !tbaa !2432
  %652 = trunc i64 %646 to i32
  %653 = and i32 %652, 255
  %654 = call i32 @llvm.ctpop.i32(i32 %653) #16
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %657, i8* %658, align 1, !tbaa !2446
  %659 = xor i64 %643, %642
  %660 = xor i64 %659, %646
  %661 = lshr i64 %660, 4
  %662 = trunc i64 %661 to i8
  %663 = and i8 %662, 1
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %663, i8* %664, align 1, !tbaa !2447
  %665 = icmp eq i64 %646, 0
  %666 = zext i1 %665 to i8
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %666, i8* %667, align 1, !tbaa !2448
  %668 = lshr i64 %646, 63
  %669 = trunc i64 %668 to i8
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %669, i8* %670, align 1, !tbaa !2449
  %671 = lshr i64 %642, 63
  %672 = lshr i64 %643, 63
  %673 = xor i64 %668, %671
  %674 = xor i64 %668, %672
  %675 = add nuw nsw i64 %673, %674
  %676 = icmp eq i64 %675, 2
  %677 = zext i1 %676 to i8
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %677, i8* %678, align 1, !tbaa !2450
  %679 = load i64, i64* %RBP
  %680 = sub i64 %679, 56
  %681 = load i64, i64* %PC
  %682 = add i64 %681, 4
  store i64 %682, i64* %PC
  %683 = inttoptr i64 %680 to i32*
  %684 = load i32, i32* %683
  %685 = sext i32 %684 to i64
  store i64 %685, i64* %RCX, align 8, !tbaa !2428
  %686 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %687 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %688 = load i64, i64* %RAX
  %689 = load i64, i64* %RCX
  %690 = mul i64 %689, 8
  %691 = add i64 %690, %688
  %692 = load i64, i64* %PC
  %693 = add i64 %692, 5
  store i64 %693, i64* %PC
  %694 = bitcast i8* %687 to double*
  %695 = load double, double* %694, align 1
  %696 = getelementptr inbounds i8, i8* %687, i64 8
  %697 = bitcast i8* %696 to i64*
  %698 = load i64, i64* %697, align 1
  %699 = inttoptr i64 %691 to double*
  %700 = load double, double* %699
  %701 = fadd double %695, %700
  %702 = bitcast i8* %686 to double*
  store double %701, double* %702, align 1, !tbaa !2452
  %703 = getelementptr inbounds i8, i8* %686, i64 8
  %704 = bitcast i8* %703 to i64*
  store i64 %698, i64* %704, align 1, !tbaa !2452
  %705 = load i64, i64* %RAX
  %706 = load i64, i64* %RCX
  %707 = mul i64 %706, 8
  %708 = add i64 %707, %705
  %709 = bitcast %union.vec128_t* %XMM0 to i8*
  %710 = load i64, i64* %PC
  %711 = add i64 %710, 5
  store i64 %711, i64* %PC
  %712 = bitcast i8* %709 to double*
  %713 = load double, double* %712, align 1
  %714 = inttoptr i64 %708 to double*
  store double %713, double* %714
  %715 = load i64, i64* %RBP
  %716 = sub i64 %715, 48
  %717 = load i64, i64* %PC
  %718 = add i64 %717, 4
  store i64 %718, i64* %PC
  %719 = inttoptr i64 %716 to i64*
  %720 = load i64, i64* %719
  store i64 %720, i64* %RAX, align 8, !tbaa !2428
  %721 = load i64, i64* %RBP
  %722 = sub i64 %721, 60
  %723 = load i64, i64* %PC
  %724 = add i64 %723, 4
  store i64 %724, i64* %PC
  %725 = inttoptr i64 %722 to i32*
  %726 = load i32, i32* %725
  %727 = sext i32 %726 to i64
  store i64 %727, i64* %RCX, align 8, !tbaa !2428
  %728 = load i64, i64* %RCX
  %729 = load i64, i64* %PC
  %730 = add i64 %729, 4
  store i64 %730, i64* %PC
  %731 = shl i64 %728, 12
  %732 = icmp slt i64 %731, 0
  %733 = shl i64 %731, 1
  store i64 %733, i64* %RCX, align 8, !tbaa !2428
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %735 = zext i1 %732 to i8
  store i8 %735, i8* %734, align 1, !tbaa !2451
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %737 = trunc i64 %733 to i32
  %738 = and i32 %737, 254
  %739 = call i32 @llvm.ctpop.i32(i32 %738) #16
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  %742 = xor i8 %741, 1
  store i8 %742, i8* %736, align 1, !tbaa !2451
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %743, align 1, !tbaa !2451
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %745 = icmp eq i64 %733, 0
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %744, align 1, !tbaa !2451
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %748 = lshr i64 %733, 63
  %749 = trunc i64 %748 to i8
  store i8 %749, i8* %747, align 1, !tbaa !2451
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %750, align 1, !tbaa !2451
  %751 = load i64, i64* %RAX
  %752 = load i64, i64* %RCX
  %753 = load i64, i64* %PC
  %754 = add i64 %753, 3
  store i64 %754, i64* %PC
  %755 = add i64 %752, %751
  store i64 %755, i64* %RAX, align 8, !tbaa !2428
  %756 = icmp ult i64 %755, %751
  %757 = icmp ult i64 %755, %752
  %758 = or i1 %756, %757
  %759 = zext i1 %758 to i8
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %759, i8* %760, align 1, !tbaa !2432
  %761 = trunc i64 %755 to i32
  %762 = and i32 %761, 255
  %763 = call i32 @llvm.ctpop.i32(i32 %762) #16
  %764 = trunc i32 %763 to i8
  %765 = and i8 %764, 1
  %766 = xor i8 %765, 1
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %766, i8* %767, align 1, !tbaa !2446
  %768 = xor i64 %752, %751
  %769 = xor i64 %768, %755
  %770 = lshr i64 %769, 4
  %771 = trunc i64 %770 to i8
  %772 = and i8 %771, 1
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %772, i8* %773, align 1, !tbaa !2447
  %774 = icmp eq i64 %755, 0
  %775 = zext i1 %774 to i8
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %775, i8* %776, align 1, !tbaa !2448
  %777 = lshr i64 %755, 63
  %778 = trunc i64 %777 to i8
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %778, i8* %779, align 1, !tbaa !2449
  %780 = lshr i64 %751, 63
  %781 = lshr i64 %752, 63
  %782 = xor i64 %777, %780
  %783 = xor i64 %777, %781
  %784 = add nuw nsw i64 %782, %783
  %785 = icmp eq i64 %784, 2
  %786 = zext i1 %785 to i8
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %786, i8* %787, align 1, !tbaa !2450
  %788 = load i64, i64* %RBP
  %789 = sub i64 %788, 56
  %790 = load i64, i64* %PC
  %791 = add i64 %790, 4
  store i64 %791, i64* %PC
  %792 = inttoptr i64 %789 to i32*
  %793 = load i32, i32* %792
  %794 = sext i32 %793 to i64
  store i64 %794, i64* %RCX, align 8, !tbaa !2428
  %795 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %796 = load i64, i64* %RAX
  %797 = load i64, i64* %RCX
  %798 = mul i64 %797, 8
  %799 = add i64 %798, %796
  %800 = load i64, i64* %PC
  %801 = add i64 %800, 5
  store i64 %801, i64* %PC
  %802 = inttoptr i64 %799 to double*
  %803 = load double, double* %802
  %804 = bitcast i8* %795 to double*
  store double %803, double* %804, align 1, !tbaa !2452
  %805 = getelementptr inbounds i8, i8* %795, i64 8
  %806 = bitcast i8* %805 to double*
  store double 0.000000e+00, double* %806, align 1, !tbaa !2452
  %807 = load i64, i64* %RBP
  %808 = sub i64 %807, 40
  %809 = load i64, i64* %PC
  %810 = add i64 %809, 4
  store i64 %810, i64* %PC
  %811 = inttoptr i64 %808 to i64*
  %812 = load i64, i64* %811
  store i64 %812, i64* %RAX, align 8, !tbaa !2428
  %813 = load i64, i64* %RBP
  %814 = sub i64 %813, 60
  %815 = load i64, i64* %PC
  %816 = add i64 %815, 4
  store i64 %816, i64* %PC
  %817 = inttoptr i64 %814 to i32*
  %818 = load i32, i32* %817
  %819 = sext i32 %818 to i64
  store i64 %819, i64* %RCX, align 8, !tbaa !2428
  %820 = load i64, i64* %RCX
  %821 = load i64, i64* %PC
  %822 = add i64 %821, 4
  store i64 %822, i64* %PC
  %823 = shl i64 %820, 12
  %824 = icmp slt i64 %823, 0
  %825 = shl i64 %823, 1
  store i64 %825, i64* %RCX, align 8, !tbaa !2428
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %827 = zext i1 %824 to i8
  store i8 %827, i8* %826, align 1, !tbaa !2451
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %829 = trunc i64 %825 to i32
  %830 = and i32 %829, 254
  %831 = call i32 @llvm.ctpop.i32(i32 %830) #16
  %832 = trunc i32 %831 to i8
  %833 = and i8 %832, 1
  %834 = xor i8 %833, 1
  store i8 %834, i8* %828, align 1, !tbaa !2451
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %835, align 1, !tbaa !2451
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %837 = icmp eq i64 %825, 0
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %836, align 1, !tbaa !2451
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %840 = lshr i64 %825, 63
  %841 = trunc i64 %840 to i8
  store i8 %841, i8* %839, align 1, !tbaa !2451
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %842, align 1, !tbaa !2451
  %843 = load i64, i64* %RAX
  %844 = load i64, i64* %RCX
  %845 = load i64, i64* %PC
  %846 = add i64 %845, 3
  store i64 %846, i64* %PC
  %847 = add i64 %844, %843
  store i64 %847, i64* %RAX, align 8, !tbaa !2428
  %848 = icmp ult i64 %847, %843
  %849 = icmp ult i64 %847, %844
  %850 = or i1 %848, %849
  %851 = zext i1 %850 to i8
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %851, i8* %852, align 1, !tbaa !2432
  %853 = trunc i64 %847 to i32
  %854 = and i32 %853, 255
  %855 = call i32 @llvm.ctpop.i32(i32 %854) #16
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %858, i8* %859, align 1, !tbaa !2446
  %860 = xor i64 %844, %843
  %861 = xor i64 %860, %847
  %862 = lshr i64 %861, 4
  %863 = trunc i64 %862 to i8
  %864 = and i8 %863, 1
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %864, i8* %865, align 1, !tbaa !2447
  %866 = icmp eq i64 %847, 0
  %867 = zext i1 %866 to i8
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %867, i8* %868, align 1, !tbaa !2448
  %869 = lshr i64 %847, 63
  %870 = trunc i64 %869 to i8
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %870, i8* %871, align 1, !tbaa !2449
  %872 = lshr i64 %843, 63
  %873 = lshr i64 %844, 63
  %874 = xor i64 %869, %872
  %875 = xor i64 %869, %873
  %876 = add nuw nsw i64 %874, %875
  %877 = icmp eq i64 %876, 2
  %878 = zext i1 %877 to i8
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %878, i8* %879, align 1, !tbaa !2450
  %880 = load i64, i64* %RBP
  %881 = sub i64 %880, 52
  %882 = load i64, i64* %PC
  %883 = add i64 %882, 4
  store i64 %883, i64* %PC
  %884 = inttoptr i64 %881 to i32*
  %885 = load i32, i32* %884
  %886 = sext i32 %885 to i64
  store i64 %886, i64* %RCX, align 8, !tbaa !2428
  %887 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %888 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %889 = load i64, i64* %RAX
  %890 = load i64, i64* %RCX
  %891 = mul i64 %890, 8
  %892 = add i64 %891, %889
  %893 = load i64, i64* %PC
  %894 = add i64 %893, 5
  store i64 %894, i64* %PC
  %895 = bitcast i8* %888 to double*
  %896 = load double, double* %895, align 1
  %897 = getelementptr inbounds i8, i8* %888, i64 8
  %898 = bitcast i8* %897 to i64*
  %899 = load i64, i64* %898, align 1
  %900 = inttoptr i64 %892 to double*
  %901 = load double, double* %900
  %902 = fmul double %896, %901
  %903 = bitcast i8* %887 to double*
  store double %902, double* %903, align 1, !tbaa !2452
  %904 = getelementptr inbounds i8, i8* %887, i64 8
  %905 = bitcast i8* %904 to i64*
  store i64 %899, i64* %905, align 1, !tbaa !2452
  %906 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %907 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %908 = load i64, i64* %RBP
  %909 = sub i64 %908, 72
  %910 = load i64, i64* %PC
  %911 = add i64 %910, 5
  store i64 %911, i64* %PC
  %912 = bitcast i8* %907 to double*
  %913 = load double, double* %912, align 1
  %914 = getelementptr inbounds i8, i8* %907, i64 8
  %915 = bitcast i8* %914 to i64*
  %916 = load i64, i64* %915, align 1
  %917 = inttoptr i64 %909 to double*
  %918 = load double, double* %917
  %919 = fadd double %913, %918
  %920 = bitcast i8* %906 to double*
  store double %919, double* %920, align 1, !tbaa !2452
  %921 = getelementptr inbounds i8, i8* %906, i64 8
  %922 = bitcast i8* %921 to i64*
  store i64 %916, i64* %922, align 1, !tbaa !2452
  %923 = load i64, i64* %RBP
  %924 = sub i64 %923, 72
  %925 = bitcast %union.vec128_t* %XMM0 to i8*
  %926 = load i64, i64* %PC
  %927 = add i64 %926, 5
  store i64 %927, i64* %PC
  %928 = bitcast i8* %925 to double*
  %929 = load double, double* %928, align 1
  %930 = inttoptr i64 %924 to double*
  store double %929, double* %930
  %931 = load i64, i64* %RBP
  %932 = sub i64 %931, 60
  %933 = load i64, i64* %PC
  %934 = add i64 %933, 3
  store i64 %934, i64* %PC
  %935 = inttoptr i64 %932 to i32*
  %936 = load i32, i32* %935
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RAX, align 8, !tbaa !2428
  %938 = load i64, i64* %RAX
  %939 = load i64, i64* %PC
  %940 = add i64 %939, 3
  store i64 %940, i64* %PC
  %941 = trunc i64 %938 to i32
  %942 = add i32 1, %941
  %943 = zext i32 %942 to i64
  store i64 %943, i64* %RAX, align 8, !tbaa !2428
  %944 = icmp ult i32 %942, %941
  %945 = icmp ult i32 %942, 1
  %946 = or i1 %944, %945
  %947 = zext i1 %946 to i8
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %947, i8* %948, align 1, !tbaa !2432
  %949 = and i32 %942, 255
  %950 = call i32 @llvm.ctpop.i32(i32 %949) #16
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  %953 = xor i8 %952, 1
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %953, i8* %954, align 1, !tbaa !2446
  %955 = xor i64 1, %938
  %956 = trunc i64 %955 to i32
  %957 = xor i32 %956, %942
  %958 = lshr i32 %957, 4
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %960, i8* %961, align 1, !tbaa !2447
  %962 = icmp eq i32 %942, 0
  %963 = zext i1 %962 to i8
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %963, i8* %964, align 1, !tbaa !2448
  %965 = lshr i32 %942, 31
  %966 = trunc i32 %965 to i8
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %966, i8* %967, align 1, !tbaa !2449
  %968 = lshr i32 %941, 31
  %969 = xor i32 %965, %968
  %970 = add nuw nsw i32 %969, %965
  %971 = icmp eq i32 %970, 2
  %972 = zext i1 %971 to i8
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %972, i8* %973, align 1, !tbaa !2450
  %974 = load i64, i64* %RBP
  %975 = sub i64 %974, 60
  %976 = load i32, i32* %EAX
  %977 = zext i32 %976 to i64
  %978 = load i64, i64* %PC
  %979 = add i64 %978, 3
  store i64 %979, i64* %PC
  %980 = inttoptr i64 %975 to i32*
  store i32 %976, i32* %980
  %981 = load i64, i64* %PC
  %982 = sub i64 %981, 166
  %983 = load i64, i64* %PC
  %984 = add i64 %983, 5
  store i64 %984, i64* %PC
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %982, i64* %985, align 8, !tbaa !2428
  br label %block_400e15

block_400ec0:                                     ; preds = %block_400e15
  %986 = sub i64 %291, 24
  %987 = load i64, i64* %PC
  %988 = add i64 %987, 5
  store i64 %988, i64* %PC
  %989 = inttoptr i64 %986 to double*
  %990 = load double, double* %989
  %991 = bitcast i8* %290 to double*
  store double %990, double* %991, align 1, !tbaa !2452
  %992 = getelementptr inbounds i8, i8* %290, i64 8
  %993 = bitcast i8* %992 to double*
  store double 0.000000e+00, double* %993, align 1, !tbaa !2452
  %994 = load i64, i64* %RBP
  %995 = sub i64 %994, 32
  %996 = load i64, i64* %PC
  %997 = add i64 %996, 4
  store i64 %997, i64* %PC
  %998 = inttoptr i64 %995 to i64*
  %999 = load i64, i64* %998
  store i64 %999, i64* %RAX, align 8, !tbaa !2428
  %1000 = load i64, i64* %RBP
  %1001 = sub i64 %1000, 52
  %1002 = load i64, i64* %PC
  %1003 = add i64 %1002, 4
  store i64 %1003, i64* %PC
  %1004 = inttoptr i64 %1001 to i32*
  %1005 = load i32, i32* %1004
  %1006 = sext i32 %1005 to i64
  store i64 %1006, i64* %RCX, align 8, !tbaa !2428
  %1007 = load i64, i64* %RCX
  %1008 = load i64, i64* %PC
  %1009 = add i64 %1008, 4
  store i64 %1009, i64* %PC
  %1010 = shl i64 %1007, 12
  %1011 = icmp slt i64 %1010, 0
  %1012 = shl i64 %1010, 1
  store i64 %1012, i64* %RCX, align 8, !tbaa !2428
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1014 = zext i1 %1011 to i8
  store i8 %1014, i8* %1013, align 1, !tbaa !2451
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1016 = trunc i64 %1012 to i32
  %1017 = and i32 %1016, 254
  %1018 = call i32 @llvm.ctpop.i32(i32 %1017) #16
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  store i8 %1021, i8* %1015, align 1, !tbaa !2451
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1022, align 1, !tbaa !2451
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1024 = icmp eq i64 %1012, 0
  %1025 = zext i1 %1024 to i8
  store i8 %1025, i8* %1023, align 1, !tbaa !2451
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1027 = lshr i64 %1012, 63
  %1028 = trunc i64 %1027 to i8
  store i8 %1028, i8* %1026, align 1, !tbaa !2451
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1029, align 1, !tbaa !2451
  %1030 = load i64, i64* %RAX
  %1031 = load i64, i64* %RCX
  %1032 = load i64, i64* %PC
  %1033 = add i64 %1032, 3
  store i64 %1033, i64* %PC
  %1034 = add i64 %1031, %1030
  store i64 %1034, i64* %RAX, align 8, !tbaa !2428
  %1035 = icmp ult i64 %1034, %1030
  %1036 = icmp ult i64 %1034, %1031
  %1037 = or i1 %1035, %1036
  %1038 = zext i1 %1037 to i8
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1038, i8* %1039, align 1, !tbaa !2432
  %1040 = trunc i64 %1034 to i32
  %1041 = and i32 %1040, 255
  %1042 = call i32 @llvm.ctpop.i32(i32 %1041) #16
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  %1045 = xor i8 %1044, 1
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1045, i8* %1046, align 1, !tbaa !2446
  %1047 = xor i64 %1031, %1030
  %1048 = xor i64 %1047, %1034
  %1049 = lshr i64 %1048, 4
  %1050 = trunc i64 %1049 to i8
  %1051 = and i8 %1050, 1
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1051, i8* %1052, align 1, !tbaa !2447
  %1053 = icmp eq i64 %1034, 0
  %1054 = zext i1 %1053 to i8
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1054, i8* %1055, align 1, !tbaa !2448
  %1056 = lshr i64 %1034, 63
  %1057 = trunc i64 %1056 to i8
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1057, i8* %1058, align 1, !tbaa !2449
  %1059 = lshr i64 %1030, 63
  %1060 = lshr i64 %1031, 63
  %1061 = xor i64 %1056, %1059
  %1062 = xor i64 %1056, %1060
  %1063 = add nuw nsw i64 %1061, %1062
  %1064 = icmp eq i64 %1063, 2
  %1065 = zext i1 %1064 to i8
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1065, i8* %1066, align 1, !tbaa !2450
  %1067 = load i64, i64* %RBP
  %1068 = sub i64 %1067, 56
  %1069 = load i64, i64* %PC
  %1070 = add i64 %1069, 4
  store i64 %1070, i64* %PC
  %1071 = inttoptr i64 %1068 to i32*
  %1072 = load i32, i32* %1071
  %1073 = sext i32 %1072 to i64
  store i64 %1073, i64* %RCX, align 8, !tbaa !2428
  %1074 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1075 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1076 = load i64, i64* %RAX
  %1077 = load i64, i64* %RCX
  %1078 = mul i64 %1077, 8
  %1079 = add i64 %1078, %1076
  %1080 = load i64, i64* %PC
  %1081 = add i64 %1080, 5
  store i64 %1081, i64* %PC
  %1082 = bitcast i8* %1075 to double*
  %1083 = load double, double* %1082, align 1
  %1084 = getelementptr inbounds i8, i8* %1075, i64 8
  %1085 = bitcast i8* %1084 to i64*
  %1086 = load i64, i64* %1085, align 1
  %1087 = inttoptr i64 %1079 to double*
  %1088 = load double, double* %1087
  %1089 = fmul double %1083, %1088
  %1090 = bitcast i8* %1074 to double*
  store double %1089, double* %1090, align 1, !tbaa !2452
  %1091 = getelementptr inbounds i8, i8* %1074, i64 8
  %1092 = bitcast i8* %1091 to i64*
  store i64 %1086, i64* %1092, align 1, !tbaa !2452
  %1093 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1094 = load i64, i64* %RBP
  %1095 = sub i64 %1094, 16
  %1096 = load i64, i64* %PC
  %1097 = add i64 %1096, 5
  store i64 %1097, i64* %PC
  %1098 = inttoptr i64 %1095 to double*
  %1099 = load double, double* %1098
  %1100 = bitcast i8* %1093 to double*
  store double %1099, double* %1100, align 1, !tbaa !2452
  %1101 = getelementptr inbounds i8, i8* %1093, i64 8
  %1102 = bitcast i8* %1101 to double*
  store double 0.000000e+00, double* %1102, align 1, !tbaa !2452
  %1103 = load i64, i64* %RBP
  %1104 = sub i64 %1103, 40
  %1105 = load i64, i64* %PC
  %1106 = add i64 %1105, 4
  store i64 %1106, i64* %PC
  %1107 = inttoptr i64 %1104 to i64*
  %1108 = load i64, i64* %1107
  store i64 %1108, i64* %RAX, align 8, !tbaa !2428
  %1109 = load i64, i64* %RBP
  %1110 = sub i64 %1109, 52
  %1111 = load i64, i64* %PC
  %1112 = add i64 %1111, 4
  store i64 %1112, i64* %PC
  %1113 = inttoptr i64 %1110 to i32*
  %1114 = load i32, i32* %1113
  %1115 = sext i32 %1114 to i64
  store i64 %1115, i64* %RCX, align 8, !tbaa !2428
  %1116 = load i64, i64* %RCX
  %1117 = load i64, i64* %PC
  %1118 = add i64 %1117, 4
  store i64 %1118, i64* %PC
  %1119 = shl i64 %1116, 12
  %1120 = icmp slt i64 %1119, 0
  %1121 = shl i64 %1119, 1
  store i64 %1121, i64* %RCX, align 8, !tbaa !2428
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1123 = zext i1 %1120 to i8
  store i8 %1123, i8* %1122, align 1, !tbaa !2451
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1125 = trunc i64 %1121 to i32
  %1126 = and i32 %1125, 254
  %1127 = call i32 @llvm.ctpop.i32(i32 %1126) #16
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  store i8 %1130, i8* %1124, align 1, !tbaa !2451
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1131, align 1, !tbaa !2451
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1133 = icmp eq i64 %1121, 0
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %1132, align 1, !tbaa !2451
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1136 = lshr i64 %1121, 63
  %1137 = trunc i64 %1136 to i8
  store i8 %1137, i8* %1135, align 1, !tbaa !2451
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1138, align 1, !tbaa !2451
  %1139 = load i64, i64* %RAX
  %1140 = load i64, i64* %RCX
  %1141 = load i64, i64* %PC
  %1142 = add i64 %1141, 3
  store i64 %1142, i64* %PC
  %1143 = add i64 %1140, %1139
  store i64 %1143, i64* %RAX, align 8, !tbaa !2428
  %1144 = icmp ult i64 %1143, %1139
  %1145 = icmp ult i64 %1143, %1140
  %1146 = or i1 %1144, %1145
  %1147 = zext i1 %1146 to i8
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1147, i8* %1148, align 1, !tbaa !2432
  %1149 = trunc i64 %1143 to i32
  %1150 = and i32 %1149, 255
  %1151 = call i32 @llvm.ctpop.i32(i32 %1150) #16
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 1
  %1154 = xor i8 %1153, 1
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1154, i8* %1155, align 1, !tbaa !2446
  %1156 = xor i64 %1140, %1139
  %1157 = xor i64 %1156, %1143
  %1158 = lshr i64 %1157, 4
  %1159 = trunc i64 %1158 to i8
  %1160 = and i8 %1159, 1
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1160, i8* %1161, align 1, !tbaa !2447
  %1162 = icmp eq i64 %1143, 0
  %1163 = zext i1 %1162 to i8
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1163, i8* %1164, align 1, !tbaa !2448
  %1165 = lshr i64 %1143, 63
  %1166 = trunc i64 %1165 to i8
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1166, i8* %1167, align 1, !tbaa !2449
  %1168 = lshr i64 %1139, 63
  %1169 = lshr i64 %1140, 63
  %1170 = xor i64 %1165, %1168
  %1171 = xor i64 %1165, %1169
  %1172 = add nuw nsw i64 %1170, %1171
  %1173 = icmp eq i64 %1172, 2
  %1174 = zext i1 %1173 to i8
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1174, i8* %1175, align 1, !tbaa !2450
  %1176 = load i64, i64* %RBP
  %1177 = sub i64 %1176, 52
  %1178 = load i64, i64* %PC
  %1179 = add i64 %1178, 4
  store i64 %1179, i64* %PC
  %1180 = inttoptr i64 %1177 to i32*
  %1181 = load i32, i32* %1180
  %1182 = sext i32 %1181 to i64
  store i64 %1182, i64* %RCX, align 8, !tbaa !2428
  %1183 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1184 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1185 = load i64, i64* %RAX
  %1186 = load i64, i64* %RCX
  %1187 = mul i64 %1186, 8
  %1188 = add i64 %1187, %1185
  %1189 = load i64, i64* %PC
  %1190 = add i64 %1189, 5
  store i64 %1190, i64* %PC
  %1191 = bitcast i8* %1184 to double*
  %1192 = load double, double* %1191, align 1
  %1193 = getelementptr inbounds i8, i8* %1184, i64 8
  %1194 = bitcast i8* %1193 to i64*
  %1195 = load i64, i64* %1194, align 1
  %1196 = inttoptr i64 %1188 to double*
  %1197 = load double, double* %1196
  %1198 = fmul double %1192, %1197
  %1199 = bitcast i8* %1183 to double*
  store double %1198, double* %1199, align 1, !tbaa !2452
  %1200 = getelementptr inbounds i8, i8* %1183, i64 8
  %1201 = bitcast i8* %1200 to i64*
  store i64 %1195, i64* %1201, align 1, !tbaa !2452
  %1202 = load i64, i64* %RBP
  %1203 = sub i64 %1202, 48
  %1204 = load i64, i64* %PC
  %1205 = add i64 %1204, 4
  store i64 %1205, i64* %PC
  %1206 = inttoptr i64 %1203 to i64*
  %1207 = load i64, i64* %1206
  store i64 %1207, i64* %RAX, align 8, !tbaa !2428
  %1208 = load i64, i64* %RBP
  %1209 = sub i64 %1208, 52
  %1210 = load i64, i64* %PC
  %1211 = add i64 %1210, 4
  store i64 %1211, i64* %PC
  %1212 = inttoptr i64 %1209 to i32*
  %1213 = load i32, i32* %1212
  %1214 = sext i32 %1213 to i64
  store i64 %1214, i64* %RCX, align 8, !tbaa !2428
  %1215 = load i64, i64* %RCX
  %1216 = load i64, i64* %PC
  %1217 = add i64 %1216, 4
  store i64 %1217, i64* %PC
  %1218 = shl i64 %1215, 12
  %1219 = icmp slt i64 %1218, 0
  %1220 = shl i64 %1218, 1
  store i64 %1220, i64* %RCX, align 8, !tbaa !2428
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1222 = zext i1 %1219 to i8
  store i8 %1222, i8* %1221, align 1, !tbaa !2451
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1224 = trunc i64 %1220 to i32
  %1225 = and i32 %1224, 254
  %1226 = call i32 @llvm.ctpop.i32(i32 %1225) #16
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  %1229 = xor i8 %1228, 1
  store i8 %1229, i8* %1223, align 1, !tbaa !2451
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1230, align 1, !tbaa !2451
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1232 = icmp eq i64 %1220, 0
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %1231, align 1, !tbaa !2451
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1235 = lshr i64 %1220, 63
  %1236 = trunc i64 %1235 to i8
  store i8 %1236, i8* %1234, align 1, !tbaa !2451
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1237, align 1, !tbaa !2451
  %1238 = load i64, i64* %RAX
  %1239 = load i64, i64* %RCX
  %1240 = load i64, i64* %PC
  %1241 = add i64 %1240, 3
  store i64 %1241, i64* %PC
  %1242 = add i64 %1239, %1238
  store i64 %1242, i64* %RAX, align 8, !tbaa !2428
  %1243 = icmp ult i64 %1242, %1238
  %1244 = icmp ult i64 %1242, %1239
  %1245 = or i1 %1243, %1244
  %1246 = zext i1 %1245 to i8
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1246, i8* %1247, align 1, !tbaa !2432
  %1248 = trunc i64 %1242 to i32
  %1249 = and i32 %1248, 255
  %1250 = call i32 @llvm.ctpop.i32(i32 %1249) #16
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1253, i8* %1254, align 1, !tbaa !2446
  %1255 = xor i64 %1239, %1238
  %1256 = xor i64 %1255, %1242
  %1257 = lshr i64 %1256, 4
  %1258 = trunc i64 %1257 to i8
  %1259 = and i8 %1258, 1
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1259, i8* %1260, align 1, !tbaa !2447
  %1261 = icmp eq i64 %1242, 0
  %1262 = zext i1 %1261 to i8
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1262, i8* %1263, align 1, !tbaa !2448
  %1264 = lshr i64 %1242, 63
  %1265 = trunc i64 %1264 to i8
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1265, i8* %1266, align 1, !tbaa !2449
  %1267 = lshr i64 %1238, 63
  %1268 = lshr i64 %1239, 63
  %1269 = xor i64 %1264, %1267
  %1270 = xor i64 %1264, %1268
  %1271 = add nuw nsw i64 %1269, %1270
  %1272 = icmp eq i64 %1271, 2
  %1273 = zext i1 %1272 to i8
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1273, i8* %1274, align 1, !tbaa !2450
  %1275 = load i64, i64* %RBP
  %1276 = sub i64 %1275, 56
  %1277 = load i64, i64* %PC
  %1278 = add i64 %1277, 4
  store i64 %1278, i64* %PC
  %1279 = inttoptr i64 %1276 to i32*
  %1280 = load i32, i32* %1279
  %1281 = sext i32 %1280 to i64
  store i64 %1281, i64* %RCX, align 8, !tbaa !2428
  %1282 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1283 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1284 = load i64, i64* %RAX
  %1285 = load i64, i64* %RCX
  %1286 = mul i64 %1285, 8
  %1287 = add i64 %1286, %1284
  %1288 = load i64, i64* %PC
  %1289 = add i64 %1288, 5
  store i64 %1289, i64* %PC
  %1290 = bitcast i8* %1283 to double*
  %1291 = load double, double* %1290, align 1
  %1292 = getelementptr inbounds i8, i8* %1283, i64 8
  %1293 = bitcast i8* %1292 to i64*
  %1294 = load i64, i64* %1293, align 1
  %1295 = inttoptr i64 %1287 to double*
  %1296 = load double, double* %1295
  %1297 = fmul double %1291, %1296
  %1298 = bitcast i8* %1282 to double*
  store double %1297, double* %1298, align 1, !tbaa !2452
  %1299 = getelementptr inbounds i8, i8* %1282, i64 8
  %1300 = bitcast i8* %1299 to i64*
  store i64 %1294, i64* %1300, align 1, !tbaa !2452
  %1301 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1302 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1303 = bitcast %union.vec128_t* %XMM1 to i8*
  %1304 = load i64, i64* %PC
  %1305 = add i64 %1304, 4
  store i64 %1305, i64* %PC
  %1306 = bitcast i8* %1302 to double*
  %1307 = load double, double* %1306, align 1
  %1308 = getelementptr inbounds i8, i8* %1302, i64 8
  %1309 = bitcast i8* %1308 to i64*
  %1310 = load i64, i64* %1309, align 1
  %1311 = bitcast i8* %1303 to double*
  %1312 = load double, double* %1311, align 1
  %1313 = fadd double %1307, %1312
  %1314 = bitcast i8* %1301 to double*
  store double %1313, double* %1314, align 1, !tbaa !2452
  %1315 = getelementptr inbounds i8, i8* %1301, i64 8
  %1316 = bitcast i8* %1315 to i64*
  store i64 %1310, i64* %1316, align 1, !tbaa !2452
  %1317 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1318 = load i64, i64* %RBP
  %1319 = sub i64 %1318, 16
  %1320 = load i64, i64* %PC
  %1321 = add i64 %1320, 5
  store i64 %1321, i64* %PC
  %1322 = inttoptr i64 %1319 to double*
  %1323 = load double, double* %1322
  %1324 = bitcast i8* %1317 to double*
  store double %1323, double* %1324, align 1, !tbaa !2452
  %1325 = getelementptr inbounds i8, i8* %1317, i64 8
  %1326 = bitcast i8* %1325 to double*
  store double 0.000000e+00, double* %1326, align 1, !tbaa !2452
  %1327 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1328 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1329 = load i64, i64* %RBP
  %1330 = sub i64 %1329, 72
  %1331 = load i64, i64* %PC
  %1332 = add i64 %1331, 5
  store i64 %1332, i64* %PC
  %1333 = bitcast i8* %1328 to double*
  %1334 = load double, double* %1333, align 1
  %1335 = getelementptr inbounds i8, i8* %1328, i64 8
  %1336 = bitcast i8* %1335 to i64*
  %1337 = load i64, i64* %1336, align 1
  %1338 = inttoptr i64 %1330 to double*
  %1339 = load double, double* %1338
  %1340 = fmul double %1334, %1339
  %1341 = bitcast i8* %1327 to double*
  store double %1340, double* %1341, align 1, !tbaa !2452
  %1342 = getelementptr inbounds i8, i8* %1327, i64 8
  %1343 = bitcast i8* %1342 to i64*
  store i64 %1337, i64* %1343, align 1, !tbaa !2452
  %1344 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1345 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1346 = bitcast %union.vec128_t* %XMM1 to i8*
  %1347 = load i64, i64* %PC
  %1348 = add i64 %1347, 4
  store i64 %1348, i64* %PC
  %1349 = bitcast i8* %1345 to double*
  %1350 = load double, double* %1349, align 1
  %1351 = getelementptr inbounds i8, i8* %1345, i64 8
  %1352 = bitcast i8* %1351 to i64*
  %1353 = load i64, i64* %1352, align 1
  %1354 = bitcast i8* %1346 to double*
  %1355 = load double, double* %1354, align 1
  %1356 = fadd double %1350, %1355
  %1357 = bitcast i8* %1344 to double*
  store double %1356, double* %1357, align 1, !tbaa !2452
  %1358 = getelementptr inbounds i8, i8* %1344, i64 8
  %1359 = bitcast i8* %1358 to i64*
  store i64 %1353, i64* %1359, align 1, !tbaa !2452
  %1360 = load i64, i64* %RBP
  %1361 = sub i64 %1360, 32
  %1362 = load i64, i64* %PC
  %1363 = add i64 %1362, 4
  store i64 %1363, i64* %PC
  %1364 = inttoptr i64 %1361 to i64*
  %1365 = load i64, i64* %1364
  store i64 %1365, i64* %RAX, align 8, !tbaa !2428
  %1366 = load i64, i64* %RBP
  %1367 = sub i64 %1366, 52
  %1368 = load i64, i64* %PC
  %1369 = add i64 %1368, 4
  store i64 %1369, i64* %PC
  %1370 = inttoptr i64 %1367 to i32*
  %1371 = load i32, i32* %1370
  %1372 = sext i32 %1371 to i64
  store i64 %1372, i64* %RCX, align 8, !tbaa !2428
  %1373 = load i64, i64* %RCX
  %1374 = load i64, i64* %PC
  %1375 = add i64 %1374, 4
  store i64 %1375, i64* %PC
  %1376 = shl i64 %1373, 12
  %1377 = icmp slt i64 %1376, 0
  %1378 = shl i64 %1376, 1
  store i64 %1378, i64* %RCX, align 8, !tbaa !2428
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1380 = zext i1 %1377 to i8
  store i8 %1380, i8* %1379, align 1, !tbaa !2451
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1382 = trunc i64 %1378 to i32
  %1383 = and i32 %1382, 254
  %1384 = call i32 @llvm.ctpop.i32(i32 %1383) #16
  %1385 = trunc i32 %1384 to i8
  %1386 = and i8 %1385, 1
  %1387 = xor i8 %1386, 1
  store i8 %1387, i8* %1381, align 1, !tbaa !2451
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1388, align 1, !tbaa !2451
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1390 = icmp eq i64 %1378, 0
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %1389, align 1, !tbaa !2451
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1393 = lshr i64 %1378, 63
  %1394 = trunc i64 %1393 to i8
  store i8 %1394, i8* %1392, align 1, !tbaa !2451
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1395, align 1, !tbaa !2451
  %1396 = load i64, i64* %RAX
  %1397 = load i64, i64* %RCX
  %1398 = load i64, i64* %PC
  %1399 = add i64 %1398, 3
  store i64 %1399, i64* %PC
  %1400 = add i64 %1397, %1396
  store i64 %1400, i64* %RAX, align 8, !tbaa !2428
  %1401 = icmp ult i64 %1400, %1396
  %1402 = icmp ult i64 %1400, %1397
  %1403 = or i1 %1401, %1402
  %1404 = zext i1 %1403 to i8
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1404, i8* %1405, align 1, !tbaa !2432
  %1406 = trunc i64 %1400 to i32
  %1407 = and i32 %1406, 255
  %1408 = call i32 @llvm.ctpop.i32(i32 %1407) #16
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  %1411 = xor i8 %1410, 1
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1411, i8* %1412, align 1, !tbaa !2446
  %1413 = xor i64 %1397, %1396
  %1414 = xor i64 %1413, %1400
  %1415 = lshr i64 %1414, 4
  %1416 = trunc i64 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1417, i8* %1418, align 1, !tbaa !2447
  %1419 = icmp eq i64 %1400, 0
  %1420 = zext i1 %1419 to i8
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1420, i8* %1421, align 1, !tbaa !2448
  %1422 = lshr i64 %1400, 63
  %1423 = trunc i64 %1422 to i8
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1423, i8* %1424, align 1, !tbaa !2449
  %1425 = lshr i64 %1396, 63
  %1426 = lshr i64 %1397, 63
  %1427 = xor i64 %1422, %1425
  %1428 = xor i64 %1422, %1426
  %1429 = add nuw nsw i64 %1427, %1428
  %1430 = icmp eq i64 %1429, 2
  %1431 = zext i1 %1430 to i8
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1431, i8* %1432, align 1, !tbaa !2450
  %1433 = load i64, i64* %RBP
  %1434 = sub i64 %1433, 56
  %1435 = load i64, i64* %PC
  %1436 = add i64 %1435, 4
  store i64 %1436, i64* %PC
  %1437 = inttoptr i64 %1434 to i32*
  %1438 = load i32, i32* %1437
  %1439 = sext i32 %1438 to i64
  store i64 %1439, i64* %RCX, align 8, !tbaa !2428
  %1440 = load i64, i64* %RAX
  %1441 = load i64, i64* %RCX
  %1442 = mul i64 %1441, 8
  %1443 = add i64 %1442, %1440
  %1444 = bitcast %union.vec128_t* %XMM0 to i8*
  %1445 = load i64, i64* %PC
  %1446 = add i64 %1445, 5
  store i64 %1446, i64* %PC
  %1447 = bitcast i8* %1444 to double*
  %1448 = load double, double* %1447, align 1
  %1449 = inttoptr i64 %1443 to double*
  store double %1448, double* %1449
  %1450 = load i64, i64* %RBP
  %1451 = sub i64 %1450, 56
  %1452 = load i64, i64* %PC
  %1453 = add i64 %1452, 3
  store i64 %1453, i64* %PC
  %1454 = inttoptr i64 %1451 to i32*
  %1455 = load i32, i32* %1454
  %1456 = zext i32 %1455 to i64
  store i64 %1456, i64* %RAX, align 8, !tbaa !2428
  %1457 = load i64, i64* %RAX
  %1458 = load i64, i64* %PC
  %1459 = add i64 %1458, 3
  store i64 %1459, i64* %PC
  %1460 = trunc i64 %1457 to i32
  %1461 = add i32 1, %1460
  %1462 = zext i32 %1461 to i64
  store i64 %1462, i64* %RAX, align 8, !tbaa !2428
  %1463 = icmp ult i32 %1461, %1460
  %1464 = icmp ult i32 %1461, 1
  %1465 = or i1 %1463, %1464
  %1466 = zext i1 %1465 to i8
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1466, i8* %1467, align 1, !tbaa !2432
  %1468 = and i32 %1461, 255
  %1469 = call i32 @llvm.ctpop.i32(i32 %1468) #16
  %1470 = trunc i32 %1469 to i8
  %1471 = and i8 %1470, 1
  %1472 = xor i8 %1471, 1
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1472, i8* %1473, align 1, !tbaa !2446
  %1474 = xor i64 1, %1457
  %1475 = trunc i64 %1474 to i32
  %1476 = xor i32 %1475, %1461
  %1477 = lshr i32 %1476, 4
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1479, i8* %1480, align 1, !tbaa !2447
  %1481 = icmp eq i32 %1461, 0
  %1482 = zext i1 %1481 to i8
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1482, i8* %1483, align 1, !tbaa !2448
  %1484 = lshr i32 %1461, 31
  %1485 = trunc i32 %1484 to i8
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1485, i8* %1486, align 1, !tbaa !2449
  %1487 = lshr i32 %1460, 31
  %1488 = xor i32 %1484, %1487
  %1489 = add nuw nsw i32 %1488, %1484
  %1490 = icmp eq i32 %1489, 2
  %1491 = zext i1 %1490 to i8
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1491, i8* %1492, align 1, !tbaa !2450
  %1493 = load i64, i64* %RBP
  %1494 = sub i64 %1493, 56
  %1495 = load i32, i32* %EAX
  %1496 = zext i32 %1495 to i64
  %1497 = load i64, i64* %PC
  %1498 = add i64 %1497, 3
  store i64 %1498, i64* %PC
  %1499 = inttoptr i64 %1494 to i32*
  store i32 %1495, i32* %1499
  %1500 = load i64, i64* %PC
  %1501 = sub i64 %1500, 331
  %1502 = load i64, i64* %PC
  %1503 = add i64 %1502, 5
  store i64 %1503, i64* %PC
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1501, i64* %1504, align 8, !tbaa !2428
  br label %block_400dfa

block_400de7:                                     ; preds = %block_400f4a, %block_400dc0
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_400dc0 ], [ %MEMORY.0, %block_400f4a ]
  %1505 = load i64, i64* %RBP
  %1506 = sub i64 %1505, 52
  %1507 = load i64, i64* %PC
  %1508 = add i64 %1507, 3
  store i64 %1508, i64* %PC
  %1509 = inttoptr i64 %1506 to i32*
  %1510 = load i32, i32* %1509
  %1511 = zext i32 %1510 to i64
  store i64 %1511, i64* %RAX, align 8, !tbaa !2428
  %1512 = load i32, i32* %EAX
  %1513 = zext i32 %1512 to i64
  %1514 = load i64, i64* %RBP
  %1515 = sub i64 %1514, 4
  %1516 = load i64, i64* %PC
  %1517 = add i64 %1516, 3
  store i64 %1517, i64* %PC
  %1518 = inttoptr i64 %1515 to i32*
  %1519 = load i32, i32* %1518
  %1520 = sub i32 %1512, %1519
  %1521 = icmp ult i32 %1512, %1519
  %1522 = zext i1 %1521 to i8
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1522, i8* %1523, align 1, !tbaa !2432
  %1524 = and i32 %1520, 255
  %1525 = call i32 @llvm.ctpop.i32(i32 %1524) #16
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  %1528 = xor i8 %1527, 1
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1528, i8* %1529, align 1, !tbaa !2446
  %1530 = xor i32 %1519, %1512
  %1531 = xor i32 %1530, %1520
  %1532 = lshr i32 %1531, 4
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1534, i8* %1535, align 1, !tbaa !2447
  %1536 = icmp eq i32 %1520, 0
  %1537 = zext i1 %1536 to i8
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1537, i8* %1538, align 1, !tbaa !2448
  %1539 = lshr i32 %1520, 31
  %1540 = trunc i32 %1539 to i8
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1540, i8* %1541, align 1, !tbaa !2449
  %1542 = lshr i32 %1512, 31
  %1543 = lshr i32 %1519, 31
  %1544 = xor i32 %1543, %1542
  %1545 = xor i32 %1539, %1542
  %1546 = add nuw nsw i32 %1545, %1544
  %1547 = icmp eq i32 %1546, 2
  %1548 = zext i1 %1547 to i8
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1548, i8* %1549, align 1, !tbaa !2450
  %1550 = load i64, i64* %PC
  %1551 = add i64 %1550, 368
  %1552 = load i64, i64* %PC
  %1553 = add i64 %1552, 6
  %1554 = load i64, i64* %PC
  %1555 = add i64 %1554, 6
  store i64 %1555, i64* %PC
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1557 = load i8, i8* %1556, align 1, !tbaa !2449
  %1558 = icmp ne i8 %1557, 0
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1560 = load i8, i8* %1559, align 1, !tbaa !2450
  %1561 = icmp ne i8 %1560, 0
  %1562 = xor i1 %1558, %1561
  %1563 = xor i1 %1562, true
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1566 = select i1 %1562, i64 %1553, i64 %1551
  store i64 %1566, i64* %1565, align 8, !tbaa !2428
  %1567 = load i8, i8* %BRANCH_TAKEN
  %1568 = icmp eq i8 %1567, 1
  br i1 %1568, label %block_400f5d, label %block_400df3
}

; Function Attrs: noinline
define %struct.Memory* @sub_401160_print_element(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401160:
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
define %struct.Memory* @sub_4007b0_polybench_prepare_instruments(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4007b0:
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
  %34 = call %struct.Memory* @sub_400730_polybench_flush_cache_renamed_(%struct.State* %0, i64 %33, %struct.Memory* %2)
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
define %struct.Memory* @sub_400680_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400680:
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
  br i1 %80, label %block_4006a8, label %block_400691

block_40069b:                                     ; preds = %block_400691
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
  store i64 6299752, i64* %RDI, align 8, !tbaa !2428
  %90 = load i64, i64* %RAX
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 2
  store i64 %92, i64* %PC
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %90, i64* %93, align 8, !tbaa !2428
  %94 = load i64, i64* %PC
  switch i64 %94, label %162 [
    i64 4196010, label %block_4006aa
    i64 4196003, label %block_4006a3
  ]

block_400691:                                     ; preds = %block_400680
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
  br i1 %130, label %block_4006a8, label %block_40069b

block_4006a8:                                     ; preds = %block_4006a3, %block_400691, %block_400680
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400680 ], [ %2, %block_400691 ], [ %2, %block_4006a3 ]
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

block_4006aa:                                     ; preds = %block_40069b
  %146 = load i64, i64* %RAX
  %147 = load i64, i64* %RAX
  %148 = add i64 %147, %146
  %149 = load i16, i16* %AX
  %150 = zext i16 %149 to i64
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 6
  store i64 %152, i64* %PC
  %153 = load i64, i64* %PC
  %154 = tail call %struct.Memory* @sub_4006b0_register_tm_clones(%struct.State* %0, i64 %153, %struct.Memory* %2)
  ret %struct.Memory* %154

block_4006a3:                                     ; preds = %block_40069b
  %155 = load i64, i64* %RAX
  %156 = load i64, i64* %RAX
  %157 = add i64 %156, %155
  %158 = load i32, i32* %EAX
  %159 = zext i32 %158 to i64
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 5
  store i64 %161, i64* %PC
  br label %block_4006a8

; <label>:162:                                    ; preds = %block_40069b
  %163 = load i64, i64* %PC
  %164 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %163, %struct.Memory* %2)
  ret %struct.Memory* %164
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006b0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  br i1 %189, label %block_4006e8, label %block_4006d3

block_4006dd:                                     ; preds = %block_4006d3
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
  store i64 6299752, i64* %RDI, align 8, !tbaa !2428
  %199 = load i64, i64* %RAX
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 2
  store i64 %201, i64* %PC
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %199, i64* %202, align 8, !tbaa !2428
  %203 = load i64, i64* %PC
  switch i64 %203, label %269 [
    i64 4196074, label %block_4006ea
    i64 4196069, label %block_4006e5
  ]

block_4006ea:                                     ; preds = %block_4006dd
  %204 = load i64, i64* %RAX
  %205 = load i64, i64* %RAX
  %206 = add i64 %205, %204
  %207 = load i16, i16* %AX
  %208 = zext i16 %207 to i64
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 6
  store i64 %210, i64* %PC
  %211 = load i64, i64* %PC
  %212 = tail call %struct.Memory* @sub_4006f0___do_global_dtors_aux(%struct.State* %0, i64 %211, %struct.Memory* %2)
  ret %struct.Memory* %212

block_4006d3:                                     ; preds = %block_4006b0
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
  br i1 %248, label %block_4006e8, label %block_4006dd

block_4006e8:                                     ; preds = %block_4006e5, %block_4006d3, %block_4006b0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4006b0 ], [ %2, %block_4006d3 ], [ %2, %block_4006e5 ]
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

block_4006e5:                                     ; preds = %block_4006dd
  %264 = load i64, i64* %RAX
  %265 = load i32, i32* %EAX
  %266 = zext i32 %265 to i64
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 3
  store i64 %268, i64* %PC
  br label %block_4006e8

; <label>:269:                                    ; preds = %block_4006dd
  %270 = load i64, i64* %PC
  %271 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %270, %struct.Memory* %2)
  ret %struct.Memory* %271
}

; Function Attrs: noinline
define %struct.Memory* @sub_400c20_kernel_symm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %ESI = bitcast %union.anon* %14 to i32*
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
  %55 = sub i64 %54, 4
  %56 = load i32, i32* %EDI
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %PC
  %59 = add i64 %58, 3
  store i64 %59, i64* %PC
  %60 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %60
  %61 = load i64, i64* %RBP
  %62 = sub i64 %61, 8
  %63 = load i32, i32* %ESI
  %64 = zext i32 %63 to i64
  %65 = load i64, i64* %PC
  %66 = add i64 %65, 3
  store i64 %66, i64* %PC
  %67 = inttoptr i64 %62 to i32*
  store i32 %63, i32* %67
  %68 = load i64, i64* %RBP
  %69 = sub i64 %68, 16
  %70 = bitcast %union.vec128_t* %XMM0 to i8*
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 5
  store i64 %72, i64* %PC
  %73 = bitcast i8* %70 to double*
  %74 = load double, double* %73, align 1
  %75 = inttoptr i64 %69 to double*
  store double %74, double* %75
  %76 = load i64, i64* %RBP
  %77 = sub i64 %76, 24
  %78 = bitcast %union.vec128_t* %XMM1 to i8*
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 5
  store i64 %80, i64* %PC
  %81 = bitcast i8* %78 to double*
  %82 = load double, double* %81, align 1
  %83 = inttoptr i64 %77 to double*
  store double %82, double* %83
  %84 = load i64, i64* %RBP
  %85 = sub i64 %84, 32
  %86 = load i64, i64* %RDX
  %87 = load i64, i64* %PC
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89
  %90 = load i64, i64* %RBP
  %91 = sub i64 %90, 40
  %92 = load i64, i64* %RCX
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 4
  store i64 %94, i64* %PC
  %95 = inttoptr i64 %91 to i64*
  store i64 %92, i64* %95
  %96 = load i64, i64* %RBP
  %97 = sub i64 %96, 48
  %98 = load i64, i64* %R8
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 4
  store i64 %100, i64* %PC
  %101 = inttoptr i64 %97 to i64*
  store i64 %98, i64* %101
  %102 = load i64, i64* %RBP
  %103 = sub i64 %102, 52
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 7
  store i64 %105, i64* %PC
  %106 = inttoptr i64 %103 to i32*
  store i32 0, i32* %106
  br label %block_400c47

block_400dbd:                                     ; preds = %block_400c47
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 1
  store i64 %108, i64* %PC
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %110 = load i64, i64* %109, align 8, !tbaa !2428
  %111 = add i64 %110, 8
  %112 = inttoptr i64 %110 to i64*
  %113 = load i64, i64* %112
  store i64 %113, i64* %RBP, align 8, !tbaa !2428
  store i64 %111, i64* %109, align 8, !tbaa !2428
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 1
  store i64 %115, i64* %PC
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %118 = load i64, i64* %117, align 8, !tbaa !2428
  %119 = inttoptr i64 %118 to i64*
  %120 = load i64, i64* %119
  store i64 %120, i64* %116, align 8, !tbaa !2428
  %121 = add i64 %118, 8
  store i64 %121, i64* %117, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.2

block_400c5a:                                     ; preds = %block_400d20, %block_400c53
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_400c53 ], [ %MEMORY.1, %block_400d20 ]
  %122 = load i64, i64* %RBP
  %123 = sub i64 %122, 56
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 3
  store i64 %125, i64* %PC
  %126 = inttoptr i64 %123 to i32*
  %127 = load i32, i32* %126
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %RAX, align 8, !tbaa !2428
  %129 = load i32, i32* %EAX
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* %RBP
  %132 = sub i64 %131, 8
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 3
  store i64 %134, i64* %PC
  %135 = inttoptr i64 %132 to i32*
  %136 = load i32, i32* %135
  %137 = sub i32 %129, %136
  %138 = icmp ult i32 %129, %136
  %139 = zext i1 %138 to i8
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %139, i8* %140, align 1, !tbaa !2432
  %141 = and i32 %137, 255
  %142 = call i32 @llvm.ctpop.i32(i32 %141) #16
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %145, i8* %146, align 1, !tbaa !2446
  %147 = xor i32 %136, %129
  %148 = xor i32 %147, %137
  %149 = lshr i32 %148, 4
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %151, i8* %152, align 1, !tbaa !2447
  %153 = icmp eq i32 %137, 0
  %154 = zext i1 %153 to i8
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %154, i8* %155, align 1, !tbaa !2448
  %156 = lshr i32 %137, 31
  %157 = trunc i32 %156 to i8
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %157, i8* %158, align 1, !tbaa !2449
  %159 = lshr i32 %129, 31
  %160 = lshr i32 %136, 31
  %161 = xor i32 %160, %159
  %162 = xor i32 %156, %159
  %163 = add nuw nsw i32 %162, %161
  %164 = icmp eq i32 %163, 2
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %165, i8* %166, align 1, !tbaa !2450
  %167 = load i64, i64* %PC
  %168 = add i64 %167, 330
  %169 = load i64, i64* %PC
  %170 = add i64 %169, 6
  %171 = load i64, i64* %PC
  %172 = add i64 %171, 6
  store i64 %172, i64* %PC
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %174 = load i8, i8* %173, align 1, !tbaa !2449
  %175 = icmp ne i8 %174, 0
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %177 = load i8, i8* %176, align 1, !tbaa !2450
  %178 = icmp ne i8 %177, 0
  %179 = xor i1 %175, %178
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %183 = select i1 %179, i64 %170, i64 %168
  store i64 %183, i64* %182, align 8, !tbaa !2428
  %184 = load i8, i8* %BRANCH_TAKEN
  %185 = icmp eq i8 %184, 1
  br i1 %185, label %block_400daa, label %block_400c66

block_400c75:                                     ; preds = %block_400c86, %block_400c66
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400c66 ], [ %MEMORY.1, %block_400c86 ]
  %186 = load i64, i64* %RBP
  %187 = sub i64 %186, 60
  %188 = load i64, i64* %PC
  %189 = add i64 %188, 3
  store i64 %189, i64* %PC
  %190 = inttoptr i64 %187 to i32*
  %191 = load i32, i32* %190
  %192 = zext i32 %191 to i64
  store i64 %192, i64* %RAX, align 8, !tbaa !2428
  %193 = load i64, i64* %RBP
  %194 = sub i64 %193, 56
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 3
  store i64 %196, i64* %PC
  %197 = inttoptr i64 %194 to i32*
  %198 = load i32, i32* %197
  %199 = zext i32 %198 to i64
  store i64 %199, i64* %RCX, align 8, !tbaa !2428
  %200 = load i64, i64* %RCX
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 3
  store i64 %202, i64* %PC
  %203 = trunc i64 %200 to i32
  %204 = sub i32 %203, 1
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %RCX, align 8, !tbaa !2428
  %206 = icmp ult i32 %203, 1
  %207 = zext i1 %206 to i8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %207, i8* %208, align 1, !tbaa !2432
  %209 = and i32 %204, 255
  %210 = call i32 @llvm.ctpop.i32(i32 %209) #16
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %213, i8* %214, align 1, !tbaa !2446
  %215 = xor i64 1, %200
  %216 = trunc i64 %215 to i32
  %217 = xor i32 %216, %204
  %218 = lshr i32 %217, 4
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %220, i8* %221, align 1, !tbaa !2447
  %222 = icmp eq i32 %204, 0
  %223 = zext i1 %222 to i8
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %223, i8* %224, align 1, !tbaa !2448
  %225 = lshr i32 %204, 31
  %226 = trunc i32 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %226, i8* %227, align 1, !tbaa !2449
  %228 = lshr i32 %203, 31
  %229 = xor i32 %225, %228
  %230 = add nuw nsw i32 %229, %228
  %231 = icmp eq i32 %230, 2
  %232 = zext i1 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %232, i8* %233, align 1, !tbaa !2450
  %234 = load i32, i32* %EAX
  %235 = zext i32 %234 to i64
  %236 = load i32, i32* %ECX
  %237 = zext i32 %236 to i64
  %238 = load i64, i64* %PC
  %239 = add i64 %238, 2
  store i64 %239, i64* %PC
  %240 = sub i32 %234, %236
  %241 = icmp ult i32 %234, %236
  %242 = zext i1 %241 to i8
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %242, i8* %243, align 1, !tbaa !2432
  %244 = and i32 %240, 255
  %245 = call i32 @llvm.ctpop.i32(i32 %244) #16
  %246 = trunc i32 %245 to i8
  %247 = and i8 %246, 1
  %248 = xor i8 %247, 1
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %248, i8* %249, align 1, !tbaa !2446
  %250 = xor i64 %237, %235
  %251 = trunc i64 %250 to i32
  %252 = xor i32 %251, %240
  %253 = lshr i32 %252, 4
  %254 = trunc i32 %253 to i8
  %255 = and i8 %254, 1
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %255, i8* %256, align 1, !tbaa !2447
  %257 = icmp eq i32 %240, 0
  %258 = zext i1 %257 to i8
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %258, i8* %259, align 1, !tbaa !2448
  %260 = lshr i32 %240, 31
  %261 = trunc i32 %260 to i8
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %261, i8* %262, align 1, !tbaa !2449
  %263 = lshr i32 %234, 31
  %264 = lshr i32 %236, 31
  %265 = xor i32 %264, %263
  %266 = xor i32 %260, %263
  %267 = add nuw nsw i32 %266, %265
  %268 = icmp eq i32 %267, 2
  %269 = zext i1 %268 to i8
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %269, i8* %270, align 1, !tbaa !2450
  %271 = load i64, i64* %PC
  %272 = add i64 %271, 160
  %273 = load i64, i64* %PC
  %274 = add i64 %273, 6
  %275 = load i64, i64* %PC
  %276 = add i64 %275, 6
  store i64 %276, i64* %PC
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %278 = load i8, i8* %277, align 1, !tbaa !2449
  %279 = icmp ne i8 %278, 0
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %281 = load i8, i8* %280, align 1, !tbaa !2450
  %282 = icmp ne i8 %281, 0
  %283 = xor i1 %279, %282
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %287 = select i1 %283, i64 %274, i64 %272
  store i64 %287, i64* %286, align 8, !tbaa !2428
  %288 = load i8, i8* %BRANCH_TAKEN
  %289 = icmp eq i8 %288, 1
  %290 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %291 = load i64, i64* %RBP
  br i1 %289, label %block_400d20, label %block_400c86

block_400c53:                                     ; preds = %block_400c47
  %292 = load i64, i64* %RBP
  %293 = sub i64 %292, 56
  %294 = load i64, i64* %PC
  %295 = add i64 %294, 7
  store i64 %295, i64* %PC
  %296 = inttoptr i64 %293 to i32*
  store i32 0, i32* %296
  br label %block_400c5a

block_400daa:                                     ; preds = %block_400c5a
  %297 = load i64, i64* %PC
  %298 = add i64 %297, 5
  %299 = load i64, i64* %PC
  %300 = add i64 %299, 5
  store i64 %300, i64* %PC
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %298, i64* %301, align 8, !tbaa !2428
  %302 = load i64, i64* %RBP
  %303 = sub i64 %302, 52
  %304 = load i64, i64* %PC
  %305 = add i64 %304, 3
  store i64 %305, i64* %PC
  %306 = inttoptr i64 %303 to i32*
  %307 = load i32, i32* %306
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RAX, align 8, !tbaa !2428
  %309 = load i64, i64* %RAX
  %310 = load i64, i64* %PC
  %311 = add i64 %310, 3
  store i64 %311, i64* %PC
  %312 = trunc i64 %309 to i32
  %313 = add i32 1, %312
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RAX, align 8, !tbaa !2428
  %315 = icmp ult i32 %313, %312
  %316 = icmp ult i32 %313, 1
  %317 = or i1 %315, %316
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %318, i8* %319, align 1, !tbaa !2432
  %320 = and i32 %313, 255
  %321 = call i32 @llvm.ctpop.i32(i32 %320) #16
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = xor i8 %323, 1
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %324, i8* %325, align 1, !tbaa !2446
  %326 = xor i64 1, %309
  %327 = trunc i64 %326 to i32
  %328 = xor i32 %327, %313
  %329 = lshr i32 %328, 4
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %331, i8* %332, align 1, !tbaa !2447
  %333 = icmp eq i32 %313, 0
  %334 = zext i1 %333 to i8
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %334, i8* %335, align 1, !tbaa !2448
  %336 = lshr i32 %313, 31
  %337 = trunc i32 %336 to i8
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %337, i8* %338, align 1, !tbaa !2449
  %339 = lshr i32 %312, 31
  %340 = xor i32 %336, %339
  %341 = add nuw nsw i32 %340, %336
  %342 = icmp eq i32 %341, 2
  %343 = zext i1 %342 to i8
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %343, i8* %344, align 1, !tbaa !2450
  %345 = load i64, i64* %RBP
  %346 = sub i64 %345, 52
  %347 = load i32, i32* %EAX
  %348 = zext i32 %347 to i64
  %349 = load i64, i64* %PC
  %350 = add i64 %349, 3
  store i64 %350, i64* %PC
  %351 = inttoptr i64 %346 to i32*
  store i32 %347, i32* %351
  %352 = load i64, i64* %PC
  %353 = sub i64 %352, 369
  %354 = load i64, i64* %PC
  %355 = add i64 %354, 5
  store i64 %355, i64* %PC
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %353, i64* %356, align 8, !tbaa !2428
  br label %block_400c47

block_400c66:                                     ; preds = %block_400c5a
  %357 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %358 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %359 = bitcast %union.vec128_t* %XMM0 to i8*
  %360 = load i64, i64* %PC
  %361 = add i64 %360, 3
  store i64 %361, i64* %PC
  %362 = bitcast i8* %358 to i64*
  %363 = load i64, i64* %362, align 1
  %364 = getelementptr inbounds i8, i8* %358, i64 8
  %365 = bitcast i8* %364 to i64*
  %366 = load i64, i64* %365, align 1
  %367 = bitcast i8* %359 to i64*
  %368 = load i64, i64* %367, align 1
  %369 = getelementptr inbounds i8, i8* %359, i64 8
  %370 = bitcast i8* %369 to i64*
  %371 = load i64, i64* %370, align 1
  %372 = xor i64 %368, %363
  %373 = xor i64 %371, %366
  %374 = trunc i64 %372 to i32
  %375 = lshr i64 %372, 32
  %376 = trunc i64 %375 to i32
  %377 = bitcast i8* %357 to i32*
  store i32 %374, i32* %377, align 1, !tbaa !2454
  %378 = getelementptr inbounds i8, i8* %357, i64 4
  %379 = bitcast i8* %378 to i32*
  store i32 %376, i32* %379, align 1, !tbaa !2454
  %380 = trunc i64 %373 to i32
  %381 = getelementptr inbounds i8, i8* %357, i64 8
  %382 = bitcast i8* %381 to i32*
  store i32 %380, i32* %382, align 1, !tbaa !2454
  %383 = lshr i64 %373, 32
  %384 = trunc i64 %383 to i32
  %385 = getelementptr inbounds i8, i8* %357, i64 12
  %386 = bitcast i8* %385 to i32*
  store i32 %384, i32* %386, align 1, !tbaa !2454
  %387 = load i64, i64* %RBP
  %388 = sub i64 %387, 72
  %389 = bitcast %union.vec128_t* %XMM0 to i8*
  %390 = load i64, i64* %PC
  %391 = add i64 %390, 5
  store i64 %391, i64* %PC
  %392 = bitcast i8* %389 to double*
  %393 = load double, double* %392, align 1
  %394 = inttoptr i64 %388 to double*
  store double %393, double* %394
  %395 = load i64, i64* %RBP
  %396 = sub i64 %395, 60
  %397 = load i64, i64* %PC
  %398 = add i64 %397, 7
  store i64 %398, i64* %PC
  %399 = inttoptr i64 %396 to i32*
  store i32 0, i32* %399
  br label %block_400c75

block_400c86:                                     ; preds = %block_400c75
  %400 = sub i64 %291, 16
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 5
  store i64 %402, i64* %PC
  %403 = inttoptr i64 %400 to double*
  %404 = load double, double* %403
  %405 = bitcast i8* %290 to double*
  store double %404, double* %405, align 1, !tbaa !2452
  %406 = getelementptr inbounds i8, i8* %290, i64 8
  %407 = bitcast i8* %406 to double*
  store double 0.000000e+00, double* %407, align 1, !tbaa !2452
  %408 = load i64, i64* %RBP
  %409 = sub i64 %408, 40
  %410 = load i64, i64* %PC
  %411 = add i64 %410, 4
  store i64 %411, i64* %PC
  %412 = inttoptr i64 %409 to i64*
  %413 = load i64, i64* %412
  store i64 %413, i64* %RAX, align 8, !tbaa !2428
  %414 = load i64, i64* %RBP
  %415 = sub i64 %414, 60
  %416 = load i64, i64* %PC
  %417 = add i64 %416, 4
  store i64 %417, i64* %PC
  %418 = inttoptr i64 %415 to i32*
  %419 = load i32, i32* %418
  %420 = sext i32 %419 to i64
  store i64 %420, i64* %RCX, align 8, !tbaa !2428
  %421 = load i64, i64* %RCX
  %422 = load i64, i64* %PC
  %423 = add i64 %422, 4
  store i64 %423, i64* %PC
  %424 = shl i64 %421, 12
  %425 = icmp slt i64 %424, 0
  %426 = shl i64 %424, 1
  store i64 %426, i64* %RCX, align 8, !tbaa !2428
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %428 = zext i1 %425 to i8
  store i8 %428, i8* %427, align 1, !tbaa !2451
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %430 = trunc i64 %426 to i32
  %431 = and i32 %430, 254
  %432 = call i32 @llvm.ctpop.i32(i32 %431) #16
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %429, align 1, !tbaa !2451
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %436, align 1, !tbaa !2451
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %438 = icmp eq i64 %426, 0
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %437, align 1, !tbaa !2451
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %441 = lshr i64 %426, 63
  %442 = trunc i64 %441 to i8
  store i8 %442, i8* %440, align 1, !tbaa !2451
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %443, align 1, !tbaa !2451
  %444 = load i64, i64* %RAX
  %445 = load i64, i64* %RCX
  %446 = load i64, i64* %PC
  %447 = add i64 %446, 3
  store i64 %447, i64* %PC
  %448 = add i64 %445, %444
  store i64 %448, i64* %RAX, align 8, !tbaa !2428
  %449 = icmp ult i64 %448, %444
  %450 = icmp ult i64 %448, %445
  %451 = or i1 %449, %450
  %452 = zext i1 %451 to i8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %452, i8* %453, align 1, !tbaa !2432
  %454 = trunc i64 %448 to i32
  %455 = and i32 %454, 255
  %456 = call i32 @llvm.ctpop.i32(i32 %455) #16
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %459, i8* %460, align 1, !tbaa !2446
  %461 = xor i64 %445, %444
  %462 = xor i64 %461, %448
  %463 = lshr i64 %462, 4
  %464 = trunc i64 %463 to i8
  %465 = and i8 %464, 1
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %465, i8* %466, align 1, !tbaa !2447
  %467 = icmp eq i64 %448, 0
  %468 = zext i1 %467 to i8
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %468, i8* %469, align 1, !tbaa !2448
  %470 = lshr i64 %448, 63
  %471 = trunc i64 %470 to i8
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %471, i8* %472, align 1, !tbaa !2449
  %473 = lshr i64 %444, 63
  %474 = lshr i64 %445, 63
  %475 = xor i64 %470, %473
  %476 = xor i64 %470, %474
  %477 = add nuw nsw i64 %475, %476
  %478 = icmp eq i64 %477, 2
  %479 = zext i1 %478 to i8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %479, i8* %480, align 1, !tbaa !2450
  %481 = load i64, i64* %RBP
  %482 = sub i64 %481, 52
  %483 = load i64, i64* %PC
  %484 = add i64 %483, 4
  store i64 %484, i64* %PC
  %485 = inttoptr i64 %482 to i32*
  %486 = load i32, i32* %485
  %487 = sext i32 %486 to i64
  store i64 %487, i64* %RCX, align 8, !tbaa !2428
  %488 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %489 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %490 = load i64, i64* %RAX
  %491 = load i64, i64* %RCX
  %492 = mul i64 %491, 8
  %493 = add i64 %492, %490
  %494 = load i64, i64* %PC
  %495 = add i64 %494, 5
  store i64 %495, i64* %PC
  %496 = bitcast i8* %489 to double*
  %497 = load double, double* %496, align 1
  %498 = getelementptr inbounds i8, i8* %489, i64 8
  %499 = bitcast i8* %498 to i64*
  %500 = load i64, i64* %499, align 1
  %501 = inttoptr i64 %493 to double*
  %502 = load double, double* %501
  %503 = fmul double %497, %502
  %504 = bitcast i8* %488 to double*
  store double %503, double* %504, align 1, !tbaa !2452
  %505 = getelementptr inbounds i8, i8* %488, i64 8
  %506 = bitcast i8* %505 to i64*
  store i64 %500, i64* %506, align 1, !tbaa !2452
  %507 = load i64, i64* %RBP
  %508 = sub i64 %507, 48
  %509 = load i64, i64* %PC
  %510 = add i64 %509, 4
  store i64 %510, i64* %PC
  %511 = inttoptr i64 %508 to i64*
  %512 = load i64, i64* %511
  store i64 %512, i64* %RAX, align 8, !tbaa !2428
  %513 = load i64, i64* %RBP
  %514 = sub i64 %513, 52
  %515 = load i64, i64* %PC
  %516 = add i64 %515, 4
  store i64 %516, i64* %PC
  %517 = inttoptr i64 %514 to i32*
  %518 = load i32, i32* %517
  %519 = sext i32 %518 to i64
  store i64 %519, i64* %RCX, align 8, !tbaa !2428
  %520 = load i64, i64* %RCX
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 4
  store i64 %522, i64* %PC
  %523 = shl i64 %520, 12
  %524 = icmp slt i64 %523, 0
  %525 = shl i64 %523, 1
  store i64 %525, i64* %RCX, align 8, !tbaa !2428
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %527 = zext i1 %524 to i8
  store i8 %527, i8* %526, align 1, !tbaa !2451
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %529 = trunc i64 %525 to i32
  %530 = and i32 %529, 254
  %531 = call i32 @llvm.ctpop.i32(i32 %530) #16
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  %534 = xor i8 %533, 1
  store i8 %534, i8* %528, align 1, !tbaa !2451
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %535, align 1, !tbaa !2451
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %537 = icmp eq i64 %525, 0
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %536, align 1, !tbaa !2451
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %540 = lshr i64 %525, 63
  %541 = trunc i64 %540 to i8
  store i8 %541, i8* %539, align 1, !tbaa !2451
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %542, align 1, !tbaa !2451
  %543 = load i64, i64* %RAX
  %544 = load i64, i64* %RCX
  %545 = load i64, i64* %PC
  %546 = add i64 %545, 3
  store i64 %546, i64* %PC
  %547 = add i64 %544, %543
  store i64 %547, i64* %RAX, align 8, !tbaa !2428
  %548 = icmp ult i64 %547, %543
  %549 = icmp ult i64 %547, %544
  %550 = or i1 %548, %549
  %551 = zext i1 %550 to i8
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %551, i8* %552, align 1, !tbaa !2432
  %553 = trunc i64 %547 to i32
  %554 = and i32 %553, 255
  %555 = call i32 @llvm.ctpop.i32(i32 %554) #16
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %558, i8* %559, align 1, !tbaa !2446
  %560 = xor i64 %544, %543
  %561 = xor i64 %560, %547
  %562 = lshr i64 %561, 4
  %563 = trunc i64 %562 to i8
  %564 = and i8 %563, 1
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %564, i8* %565, align 1, !tbaa !2447
  %566 = icmp eq i64 %547, 0
  %567 = zext i1 %566 to i8
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %567, i8* %568, align 1, !tbaa !2448
  %569 = lshr i64 %547, 63
  %570 = trunc i64 %569 to i8
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %570, i8* %571, align 1, !tbaa !2449
  %572 = lshr i64 %543, 63
  %573 = lshr i64 %544, 63
  %574 = xor i64 %569, %572
  %575 = xor i64 %569, %573
  %576 = add nuw nsw i64 %574, %575
  %577 = icmp eq i64 %576, 2
  %578 = zext i1 %577 to i8
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %578, i8* %579, align 1, !tbaa !2450
  %580 = load i64, i64* %RBP
  %581 = sub i64 %580, 56
  %582 = load i64, i64* %PC
  %583 = add i64 %582, 4
  store i64 %583, i64* %PC
  %584 = inttoptr i64 %581 to i32*
  %585 = load i32, i32* %584
  %586 = sext i32 %585 to i64
  store i64 %586, i64* %RCX, align 8, !tbaa !2428
  %587 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %588 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %589 = load i64, i64* %RAX
  %590 = load i64, i64* %RCX
  %591 = mul i64 %590, 8
  %592 = add i64 %591, %589
  %593 = load i64, i64* %PC
  %594 = add i64 %593, 5
  store i64 %594, i64* %PC
  %595 = bitcast i8* %588 to double*
  %596 = load double, double* %595, align 1
  %597 = getelementptr inbounds i8, i8* %588, i64 8
  %598 = bitcast i8* %597 to i64*
  %599 = load i64, i64* %598, align 1
  %600 = inttoptr i64 %592 to double*
  %601 = load double, double* %600
  %602 = fmul double %596, %601
  %603 = bitcast i8* %587 to double*
  store double %602, double* %603, align 1, !tbaa !2452
  %604 = getelementptr inbounds i8, i8* %587, i64 8
  %605 = bitcast i8* %604 to i64*
  store i64 %599, i64* %605, align 1, !tbaa !2452
  %606 = load i64, i64* %RBP
  %607 = sub i64 %606, 32
  %608 = load i64, i64* %PC
  %609 = add i64 %608, 4
  store i64 %609, i64* %PC
  %610 = inttoptr i64 %607 to i64*
  %611 = load i64, i64* %610
  store i64 %611, i64* %RAX, align 8, !tbaa !2428
  %612 = load i64, i64* %RBP
  %613 = sub i64 %612, 60
  %614 = load i64, i64* %PC
  %615 = add i64 %614, 4
  store i64 %615, i64* %PC
  %616 = inttoptr i64 %613 to i32*
  %617 = load i32, i32* %616
  %618 = sext i32 %617 to i64
  store i64 %618, i64* %RCX, align 8, !tbaa !2428
  %619 = load i64, i64* %RCX
  %620 = load i64, i64* %PC
  %621 = add i64 %620, 4
  store i64 %621, i64* %PC
  %622 = shl i64 %619, 12
  %623 = icmp slt i64 %622, 0
  %624 = shl i64 %622, 1
  store i64 %624, i64* %RCX, align 8, !tbaa !2428
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %626 = zext i1 %623 to i8
  store i8 %626, i8* %625, align 1, !tbaa !2451
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %628 = trunc i64 %624 to i32
  %629 = and i32 %628, 254
  %630 = call i32 @llvm.ctpop.i32(i32 %629) #16
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  %633 = xor i8 %632, 1
  store i8 %633, i8* %627, align 1, !tbaa !2451
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %634, align 1, !tbaa !2451
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %636 = icmp eq i64 %624, 0
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %635, align 1, !tbaa !2451
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %639 = lshr i64 %624, 63
  %640 = trunc i64 %639 to i8
  store i8 %640, i8* %638, align 1, !tbaa !2451
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %641, align 1, !tbaa !2451
  %642 = load i64, i64* %RAX
  %643 = load i64, i64* %RCX
  %644 = load i64, i64* %PC
  %645 = add i64 %644, 3
  store i64 %645, i64* %PC
  %646 = add i64 %643, %642
  store i64 %646, i64* %RAX, align 8, !tbaa !2428
  %647 = icmp ult i64 %646, %642
  %648 = icmp ult i64 %646, %643
  %649 = or i1 %647, %648
  %650 = zext i1 %649 to i8
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %650, i8* %651, align 1, !tbaa !2432
  %652 = trunc i64 %646 to i32
  %653 = and i32 %652, 255
  %654 = call i32 @llvm.ctpop.i32(i32 %653) #16
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %657, i8* %658, align 1, !tbaa !2446
  %659 = xor i64 %643, %642
  %660 = xor i64 %659, %646
  %661 = lshr i64 %660, 4
  %662 = trunc i64 %661 to i8
  %663 = and i8 %662, 1
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %663, i8* %664, align 1, !tbaa !2447
  %665 = icmp eq i64 %646, 0
  %666 = zext i1 %665 to i8
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %666, i8* %667, align 1, !tbaa !2448
  %668 = lshr i64 %646, 63
  %669 = trunc i64 %668 to i8
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %669, i8* %670, align 1, !tbaa !2449
  %671 = lshr i64 %642, 63
  %672 = lshr i64 %643, 63
  %673 = xor i64 %668, %671
  %674 = xor i64 %668, %672
  %675 = add nuw nsw i64 %673, %674
  %676 = icmp eq i64 %675, 2
  %677 = zext i1 %676 to i8
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %677, i8* %678, align 1, !tbaa !2450
  %679 = load i64, i64* %RBP
  %680 = sub i64 %679, 56
  %681 = load i64, i64* %PC
  %682 = add i64 %681, 4
  store i64 %682, i64* %PC
  %683 = inttoptr i64 %680 to i32*
  %684 = load i32, i32* %683
  %685 = sext i32 %684 to i64
  store i64 %685, i64* %RCX, align 8, !tbaa !2428
  %686 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %687 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %688 = load i64, i64* %RAX
  %689 = load i64, i64* %RCX
  %690 = mul i64 %689, 8
  %691 = add i64 %690, %688
  %692 = load i64, i64* %PC
  %693 = add i64 %692, 5
  store i64 %693, i64* %PC
  %694 = bitcast i8* %687 to double*
  %695 = load double, double* %694, align 1
  %696 = getelementptr inbounds i8, i8* %687, i64 8
  %697 = bitcast i8* %696 to i64*
  %698 = load i64, i64* %697, align 1
  %699 = inttoptr i64 %691 to double*
  %700 = load double, double* %699
  %701 = fadd double %695, %700
  %702 = bitcast i8* %686 to double*
  store double %701, double* %702, align 1, !tbaa !2452
  %703 = getelementptr inbounds i8, i8* %686, i64 8
  %704 = bitcast i8* %703 to i64*
  store i64 %698, i64* %704, align 1, !tbaa !2452
  %705 = load i64, i64* %RAX
  %706 = load i64, i64* %RCX
  %707 = mul i64 %706, 8
  %708 = add i64 %707, %705
  %709 = bitcast %union.vec128_t* %XMM0 to i8*
  %710 = load i64, i64* %PC
  %711 = add i64 %710, 5
  store i64 %711, i64* %PC
  %712 = bitcast i8* %709 to double*
  %713 = load double, double* %712, align 1
  %714 = inttoptr i64 %708 to double*
  store double %713, double* %714
  %715 = load i64, i64* %RBP
  %716 = sub i64 %715, 48
  %717 = load i64, i64* %PC
  %718 = add i64 %717, 4
  store i64 %718, i64* %PC
  %719 = inttoptr i64 %716 to i64*
  %720 = load i64, i64* %719
  store i64 %720, i64* %RAX, align 8, !tbaa !2428
  %721 = load i64, i64* %RBP
  %722 = sub i64 %721, 60
  %723 = load i64, i64* %PC
  %724 = add i64 %723, 4
  store i64 %724, i64* %PC
  %725 = inttoptr i64 %722 to i32*
  %726 = load i32, i32* %725
  %727 = sext i32 %726 to i64
  store i64 %727, i64* %RCX, align 8, !tbaa !2428
  %728 = load i64, i64* %RCX
  %729 = load i64, i64* %PC
  %730 = add i64 %729, 4
  store i64 %730, i64* %PC
  %731 = shl i64 %728, 12
  %732 = icmp slt i64 %731, 0
  %733 = shl i64 %731, 1
  store i64 %733, i64* %RCX, align 8, !tbaa !2428
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %735 = zext i1 %732 to i8
  store i8 %735, i8* %734, align 1, !tbaa !2451
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %737 = trunc i64 %733 to i32
  %738 = and i32 %737, 254
  %739 = call i32 @llvm.ctpop.i32(i32 %738) #16
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  %742 = xor i8 %741, 1
  store i8 %742, i8* %736, align 1, !tbaa !2451
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %743, align 1, !tbaa !2451
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %745 = icmp eq i64 %733, 0
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %744, align 1, !tbaa !2451
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %748 = lshr i64 %733, 63
  %749 = trunc i64 %748 to i8
  store i8 %749, i8* %747, align 1, !tbaa !2451
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %750, align 1, !tbaa !2451
  %751 = load i64, i64* %RAX
  %752 = load i64, i64* %RCX
  %753 = load i64, i64* %PC
  %754 = add i64 %753, 3
  store i64 %754, i64* %PC
  %755 = add i64 %752, %751
  store i64 %755, i64* %RAX, align 8, !tbaa !2428
  %756 = icmp ult i64 %755, %751
  %757 = icmp ult i64 %755, %752
  %758 = or i1 %756, %757
  %759 = zext i1 %758 to i8
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %759, i8* %760, align 1, !tbaa !2432
  %761 = trunc i64 %755 to i32
  %762 = and i32 %761, 255
  %763 = call i32 @llvm.ctpop.i32(i32 %762) #16
  %764 = trunc i32 %763 to i8
  %765 = and i8 %764, 1
  %766 = xor i8 %765, 1
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %766, i8* %767, align 1, !tbaa !2446
  %768 = xor i64 %752, %751
  %769 = xor i64 %768, %755
  %770 = lshr i64 %769, 4
  %771 = trunc i64 %770 to i8
  %772 = and i8 %771, 1
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %772, i8* %773, align 1, !tbaa !2447
  %774 = icmp eq i64 %755, 0
  %775 = zext i1 %774 to i8
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %775, i8* %776, align 1, !tbaa !2448
  %777 = lshr i64 %755, 63
  %778 = trunc i64 %777 to i8
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %778, i8* %779, align 1, !tbaa !2449
  %780 = lshr i64 %751, 63
  %781 = lshr i64 %752, 63
  %782 = xor i64 %777, %780
  %783 = xor i64 %777, %781
  %784 = add nuw nsw i64 %782, %783
  %785 = icmp eq i64 %784, 2
  %786 = zext i1 %785 to i8
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %786, i8* %787, align 1, !tbaa !2450
  %788 = load i64, i64* %RBP
  %789 = sub i64 %788, 56
  %790 = load i64, i64* %PC
  %791 = add i64 %790, 4
  store i64 %791, i64* %PC
  %792 = inttoptr i64 %789 to i32*
  %793 = load i32, i32* %792
  %794 = sext i32 %793 to i64
  store i64 %794, i64* %RCX, align 8, !tbaa !2428
  %795 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %796 = load i64, i64* %RAX
  %797 = load i64, i64* %RCX
  %798 = mul i64 %797, 8
  %799 = add i64 %798, %796
  %800 = load i64, i64* %PC
  %801 = add i64 %800, 5
  store i64 %801, i64* %PC
  %802 = inttoptr i64 %799 to double*
  %803 = load double, double* %802
  %804 = bitcast i8* %795 to double*
  store double %803, double* %804, align 1, !tbaa !2452
  %805 = getelementptr inbounds i8, i8* %795, i64 8
  %806 = bitcast i8* %805 to double*
  store double 0.000000e+00, double* %806, align 1, !tbaa !2452
  %807 = load i64, i64* %RBP
  %808 = sub i64 %807, 40
  %809 = load i64, i64* %PC
  %810 = add i64 %809, 4
  store i64 %810, i64* %PC
  %811 = inttoptr i64 %808 to i64*
  %812 = load i64, i64* %811
  store i64 %812, i64* %RAX, align 8, !tbaa !2428
  %813 = load i64, i64* %RBP
  %814 = sub i64 %813, 60
  %815 = load i64, i64* %PC
  %816 = add i64 %815, 4
  store i64 %816, i64* %PC
  %817 = inttoptr i64 %814 to i32*
  %818 = load i32, i32* %817
  %819 = sext i32 %818 to i64
  store i64 %819, i64* %RCX, align 8, !tbaa !2428
  %820 = load i64, i64* %RCX
  %821 = load i64, i64* %PC
  %822 = add i64 %821, 4
  store i64 %822, i64* %PC
  %823 = shl i64 %820, 12
  %824 = icmp slt i64 %823, 0
  %825 = shl i64 %823, 1
  store i64 %825, i64* %RCX, align 8, !tbaa !2428
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %827 = zext i1 %824 to i8
  store i8 %827, i8* %826, align 1, !tbaa !2451
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %829 = trunc i64 %825 to i32
  %830 = and i32 %829, 254
  %831 = call i32 @llvm.ctpop.i32(i32 %830) #16
  %832 = trunc i32 %831 to i8
  %833 = and i8 %832, 1
  %834 = xor i8 %833, 1
  store i8 %834, i8* %828, align 1, !tbaa !2451
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %835, align 1, !tbaa !2451
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %837 = icmp eq i64 %825, 0
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %836, align 1, !tbaa !2451
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %840 = lshr i64 %825, 63
  %841 = trunc i64 %840 to i8
  store i8 %841, i8* %839, align 1, !tbaa !2451
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %842, align 1, !tbaa !2451
  %843 = load i64, i64* %RAX
  %844 = load i64, i64* %RCX
  %845 = load i64, i64* %PC
  %846 = add i64 %845, 3
  store i64 %846, i64* %PC
  %847 = add i64 %844, %843
  store i64 %847, i64* %RAX, align 8, !tbaa !2428
  %848 = icmp ult i64 %847, %843
  %849 = icmp ult i64 %847, %844
  %850 = or i1 %848, %849
  %851 = zext i1 %850 to i8
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %851, i8* %852, align 1, !tbaa !2432
  %853 = trunc i64 %847 to i32
  %854 = and i32 %853, 255
  %855 = call i32 @llvm.ctpop.i32(i32 %854) #16
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %858, i8* %859, align 1, !tbaa !2446
  %860 = xor i64 %844, %843
  %861 = xor i64 %860, %847
  %862 = lshr i64 %861, 4
  %863 = trunc i64 %862 to i8
  %864 = and i8 %863, 1
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %864, i8* %865, align 1, !tbaa !2447
  %866 = icmp eq i64 %847, 0
  %867 = zext i1 %866 to i8
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %867, i8* %868, align 1, !tbaa !2448
  %869 = lshr i64 %847, 63
  %870 = trunc i64 %869 to i8
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %870, i8* %871, align 1, !tbaa !2449
  %872 = lshr i64 %843, 63
  %873 = lshr i64 %844, 63
  %874 = xor i64 %869, %872
  %875 = xor i64 %869, %873
  %876 = add nuw nsw i64 %874, %875
  %877 = icmp eq i64 %876, 2
  %878 = zext i1 %877 to i8
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %878, i8* %879, align 1, !tbaa !2450
  %880 = load i64, i64* %RBP
  %881 = sub i64 %880, 52
  %882 = load i64, i64* %PC
  %883 = add i64 %882, 4
  store i64 %883, i64* %PC
  %884 = inttoptr i64 %881 to i32*
  %885 = load i32, i32* %884
  %886 = sext i32 %885 to i64
  store i64 %886, i64* %RCX, align 8, !tbaa !2428
  %887 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %888 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %889 = load i64, i64* %RAX
  %890 = load i64, i64* %RCX
  %891 = mul i64 %890, 8
  %892 = add i64 %891, %889
  %893 = load i64, i64* %PC
  %894 = add i64 %893, 5
  store i64 %894, i64* %PC
  %895 = bitcast i8* %888 to double*
  %896 = load double, double* %895, align 1
  %897 = getelementptr inbounds i8, i8* %888, i64 8
  %898 = bitcast i8* %897 to i64*
  %899 = load i64, i64* %898, align 1
  %900 = inttoptr i64 %892 to double*
  %901 = load double, double* %900
  %902 = fmul double %896, %901
  %903 = bitcast i8* %887 to double*
  store double %902, double* %903, align 1, !tbaa !2452
  %904 = getelementptr inbounds i8, i8* %887, i64 8
  %905 = bitcast i8* %904 to i64*
  store i64 %899, i64* %905, align 1, !tbaa !2452
  %906 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %907 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %908 = load i64, i64* %RBP
  %909 = sub i64 %908, 72
  %910 = load i64, i64* %PC
  %911 = add i64 %910, 5
  store i64 %911, i64* %PC
  %912 = bitcast i8* %907 to double*
  %913 = load double, double* %912, align 1
  %914 = getelementptr inbounds i8, i8* %907, i64 8
  %915 = bitcast i8* %914 to i64*
  %916 = load i64, i64* %915, align 1
  %917 = inttoptr i64 %909 to double*
  %918 = load double, double* %917
  %919 = fadd double %913, %918
  %920 = bitcast i8* %906 to double*
  store double %919, double* %920, align 1, !tbaa !2452
  %921 = getelementptr inbounds i8, i8* %906, i64 8
  %922 = bitcast i8* %921 to i64*
  store i64 %916, i64* %922, align 1, !tbaa !2452
  %923 = load i64, i64* %RBP
  %924 = sub i64 %923, 72
  %925 = bitcast %union.vec128_t* %XMM0 to i8*
  %926 = load i64, i64* %PC
  %927 = add i64 %926, 5
  store i64 %927, i64* %PC
  %928 = bitcast i8* %925 to double*
  %929 = load double, double* %928, align 1
  %930 = inttoptr i64 %924 to double*
  store double %929, double* %930
  %931 = load i64, i64* %RBP
  %932 = sub i64 %931, 60
  %933 = load i64, i64* %PC
  %934 = add i64 %933, 3
  store i64 %934, i64* %PC
  %935 = inttoptr i64 %932 to i32*
  %936 = load i32, i32* %935
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RAX, align 8, !tbaa !2428
  %938 = load i64, i64* %RAX
  %939 = load i64, i64* %PC
  %940 = add i64 %939, 3
  store i64 %940, i64* %PC
  %941 = trunc i64 %938 to i32
  %942 = add i32 1, %941
  %943 = zext i32 %942 to i64
  store i64 %943, i64* %RAX, align 8, !tbaa !2428
  %944 = icmp ult i32 %942, %941
  %945 = icmp ult i32 %942, 1
  %946 = or i1 %944, %945
  %947 = zext i1 %946 to i8
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %947, i8* %948, align 1, !tbaa !2432
  %949 = and i32 %942, 255
  %950 = call i32 @llvm.ctpop.i32(i32 %949) #16
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  %953 = xor i8 %952, 1
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %953, i8* %954, align 1, !tbaa !2446
  %955 = xor i64 1, %938
  %956 = trunc i64 %955 to i32
  %957 = xor i32 %956, %942
  %958 = lshr i32 %957, 4
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %960, i8* %961, align 1, !tbaa !2447
  %962 = icmp eq i32 %942, 0
  %963 = zext i1 %962 to i8
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %963, i8* %964, align 1, !tbaa !2448
  %965 = lshr i32 %942, 31
  %966 = trunc i32 %965 to i8
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %966, i8* %967, align 1, !tbaa !2449
  %968 = lshr i32 %941, 31
  %969 = xor i32 %965, %968
  %970 = add nuw nsw i32 %969, %965
  %971 = icmp eq i32 %970, 2
  %972 = zext i1 %971 to i8
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %972, i8* %973, align 1, !tbaa !2450
  %974 = load i64, i64* %RBP
  %975 = sub i64 %974, 60
  %976 = load i32, i32* %EAX
  %977 = zext i32 %976 to i64
  %978 = load i64, i64* %PC
  %979 = add i64 %978, 3
  store i64 %979, i64* %PC
  %980 = inttoptr i64 %975 to i32*
  store i32 %976, i32* %980
  %981 = load i64, i64* %PC
  %982 = sub i64 %981, 166
  %983 = load i64, i64* %PC
  %984 = add i64 %983, 5
  store i64 %984, i64* %PC
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %982, i64* %985, align 8, !tbaa !2428
  br label %block_400c75

block_400d20:                                     ; preds = %block_400c75
  %986 = sub i64 %291, 24
  %987 = load i64, i64* %PC
  %988 = add i64 %987, 5
  store i64 %988, i64* %PC
  %989 = inttoptr i64 %986 to double*
  %990 = load double, double* %989
  %991 = bitcast i8* %290 to double*
  store double %990, double* %991, align 1, !tbaa !2452
  %992 = getelementptr inbounds i8, i8* %290, i64 8
  %993 = bitcast i8* %992 to double*
  store double 0.000000e+00, double* %993, align 1, !tbaa !2452
  %994 = load i64, i64* %RBP
  %995 = sub i64 %994, 32
  %996 = load i64, i64* %PC
  %997 = add i64 %996, 4
  store i64 %997, i64* %PC
  %998 = inttoptr i64 %995 to i64*
  %999 = load i64, i64* %998
  store i64 %999, i64* %RAX, align 8, !tbaa !2428
  %1000 = load i64, i64* %RBP
  %1001 = sub i64 %1000, 52
  %1002 = load i64, i64* %PC
  %1003 = add i64 %1002, 4
  store i64 %1003, i64* %PC
  %1004 = inttoptr i64 %1001 to i32*
  %1005 = load i32, i32* %1004
  %1006 = sext i32 %1005 to i64
  store i64 %1006, i64* %RCX, align 8, !tbaa !2428
  %1007 = load i64, i64* %RCX
  %1008 = load i64, i64* %PC
  %1009 = add i64 %1008, 4
  store i64 %1009, i64* %PC
  %1010 = shl i64 %1007, 12
  %1011 = icmp slt i64 %1010, 0
  %1012 = shl i64 %1010, 1
  store i64 %1012, i64* %RCX, align 8, !tbaa !2428
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1014 = zext i1 %1011 to i8
  store i8 %1014, i8* %1013, align 1, !tbaa !2451
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1016 = trunc i64 %1012 to i32
  %1017 = and i32 %1016, 254
  %1018 = call i32 @llvm.ctpop.i32(i32 %1017) #16
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  store i8 %1021, i8* %1015, align 1, !tbaa !2451
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1022, align 1, !tbaa !2451
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1024 = icmp eq i64 %1012, 0
  %1025 = zext i1 %1024 to i8
  store i8 %1025, i8* %1023, align 1, !tbaa !2451
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1027 = lshr i64 %1012, 63
  %1028 = trunc i64 %1027 to i8
  store i8 %1028, i8* %1026, align 1, !tbaa !2451
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1029, align 1, !tbaa !2451
  %1030 = load i64, i64* %RAX
  %1031 = load i64, i64* %RCX
  %1032 = load i64, i64* %PC
  %1033 = add i64 %1032, 3
  store i64 %1033, i64* %PC
  %1034 = add i64 %1031, %1030
  store i64 %1034, i64* %RAX, align 8, !tbaa !2428
  %1035 = icmp ult i64 %1034, %1030
  %1036 = icmp ult i64 %1034, %1031
  %1037 = or i1 %1035, %1036
  %1038 = zext i1 %1037 to i8
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1038, i8* %1039, align 1, !tbaa !2432
  %1040 = trunc i64 %1034 to i32
  %1041 = and i32 %1040, 255
  %1042 = call i32 @llvm.ctpop.i32(i32 %1041) #16
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  %1045 = xor i8 %1044, 1
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1045, i8* %1046, align 1, !tbaa !2446
  %1047 = xor i64 %1031, %1030
  %1048 = xor i64 %1047, %1034
  %1049 = lshr i64 %1048, 4
  %1050 = trunc i64 %1049 to i8
  %1051 = and i8 %1050, 1
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1051, i8* %1052, align 1, !tbaa !2447
  %1053 = icmp eq i64 %1034, 0
  %1054 = zext i1 %1053 to i8
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1054, i8* %1055, align 1, !tbaa !2448
  %1056 = lshr i64 %1034, 63
  %1057 = trunc i64 %1056 to i8
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1057, i8* %1058, align 1, !tbaa !2449
  %1059 = lshr i64 %1030, 63
  %1060 = lshr i64 %1031, 63
  %1061 = xor i64 %1056, %1059
  %1062 = xor i64 %1056, %1060
  %1063 = add nuw nsw i64 %1061, %1062
  %1064 = icmp eq i64 %1063, 2
  %1065 = zext i1 %1064 to i8
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1065, i8* %1066, align 1, !tbaa !2450
  %1067 = load i64, i64* %RBP
  %1068 = sub i64 %1067, 56
  %1069 = load i64, i64* %PC
  %1070 = add i64 %1069, 4
  store i64 %1070, i64* %PC
  %1071 = inttoptr i64 %1068 to i32*
  %1072 = load i32, i32* %1071
  %1073 = sext i32 %1072 to i64
  store i64 %1073, i64* %RCX, align 8, !tbaa !2428
  %1074 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1075 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1076 = load i64, i64* %RAX
  %1077 = load i64, i64* %RCX
  %1078 = mul i64 %1077, 8
  %1079 = add i64 %1078, %1076
  %1080 = load i64, i64* %PC
  %1081 = add i64 %1080, 5
  store i64 %1081, i64* %PC
  %1082 = bitcast i8* %1075 to double*
  %1083 = load double, double* %1082, align 1
  %1084 = getelementptr inbounds i8, i8* %1075, i64 8
  %1085 = bitcast i8* %1084 to i64*
  %1086 = load i64, i64* %1085, align 1
  %1087 = inttoptr i64 %1079 to double*
  %1088 = load double, double* %1087
  %1089 = fmul double %1083, %1088
  %1090 = bitcast i8* %1074 to double*
  store double %1089, double* %1090, align 1, !tbaa !2452
  %1091 = getelementptr inbounds i8, i8* %1074, i64 8
  %1092 = bitcast i8* %1091 to i64*
  store i64 %1086, i64* %1092, align 1, !tbaa !2452
  %1093 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1094 = load i64, i64* %RBP
  %1095 = sub i64 %1094, 16
  %1096 = load i64, i64* %PC
  %1097 = add i64 %1096, 5
  store i64 %1097, i64* %PC
  %1098 = inttoptr i64 %1095 to double*
  %1099 = load double, double* %1098
  %1100 = bitcast i8* %1093 to double*
  store double %1099, double* %1100, align 1, !tbaa !2452
  %1101 = getelementptr inbounds i8, i8* %1093, i64 8
  %1102 = bitcast i8* %1101 to double*
  store double 0.000000e+00, double* %1102, align 1, !tbaa !2452
  %1103 = load i64, i64* %RBP
  %1104 = sub i64 %1103, 40
  %1105 = load i64, i64* %PC
  %1106 = add i64 %1105, 4
  store i64 %1106, i64* %PC
  %1107 = inttoptr i64 %1104 to i64*
  %1108 = load i64, i64* %1107
  store i64 %1108, i64* %RAX, align 8, !tbaa !2428
  %1109 = load i64, i64* %RBP
  %1110 = sub i64 %1109, 52
  %1111 = load i64, i64* %PC
  %1112 = add i64 %1111, 4
  store i64 %1112, i64* %PC
  %1113 = inttoptr i64 %1110 to i32*
  %1114 = load i32, i32* %1113
  %1115 = sext i32 %1114 to i64
  store i64 %1115, i64* %RCX, align 8, !tbaa !2428
  %1116 = load i64, i64* %RCX
  %1117 = load i64, i64* %PC
  %1118 = add i64 %1117, 4
  store i64 %1118, i64* %PC
  %1119 = shl i64 %1116, 12
  %1120 = icmp slt i64 %1119, 0
  %1121 = shl i64 %1119, 1
  store i64 %1121, i64* %RCX, align 8, !tbaa !2428
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1123 = zext i1 %1120 to i8
  store i8 %1123, i8* %1122, align 1, !tbaa !2451
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1125 = trunc i64 %1121 to i32
  %1126 = and i32 %1125, 254
  %1127 = call i32 @llvm.ctpop.i32(i32 %1126) #16
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  store i8 %1130, i8* %1124, align 1, !tbaa !2451
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1131, align 1, !tbaa !2451
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1133 = icmp eq i64 %1121, 0
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %1132, align 1, !tbaa !2451
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1136 = lshr i64 %1121, 63
  %1137 = trunc i64 %1136 to i8
  store i8 %1137, i8* %1135, align 1, !tbaa !2451
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1138, align 1, !tbaa !2451
  %1139 = load i64, i64* %RAX
  %1140 = load i64, i64* %RCX
  %1141 = load i64, i64* %PC
  %1142 = add i64 %1141, 3
  store i64 %1142, i64* %PC
  %1143 = add i64 %1140, %1139
  store i64 %1143, i64* %RAX, align 8, !tbaa !2428
  %1144 = icmp ult i64 %1143, %1139
  %1145 = icmp ult i64 %1143, %1140
  %1146 = or i1 %1144, %1145
  %1147 = zext i1 %1146 to i8
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1147, i8* %1148, align 1, !tbaa !2432
  %1149 = trunc i64 %1143 to i32
  %1150 = and i32 %1149, 255
  %1151 = call i32 @llvm.ctpop.i32(i32 %1150) #16
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 1
  %1154 = xor i8 %1153, 1
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1154, i8* %1155, align 1, !tbaa !2446
  %1156 = xor i64 %1140, %1139
  %1157 = xor i64 %1156, %1143
  %1158 = lshr i64 %1157, 4
  %1159 = trunc i64 %1158 to i8
  %1160 = and i8 %1159, 1
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1160, i8* %1161, align 1, !tbaa !2447
  %1162 = icmp eq i64 %1143, 0
  %1163 = zext i1 %1162 to i8
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1163, i8* %1164, align 1, !tbaa !2448
  %1165 = lshr i64 %1143, 63
  %1166 = trunc i64 %1165 to i8
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1166, i8* %1167, align 1, !tbaa !2449
  %1168 = lshr i64 %1139, 63
  %1169 = lshr i64 %1140, 63
  %1170 = xor i64 %1165, %1168
  %1171 = xor i64 %1165, %1169
  %1172 = add nuw nsw i64 %1170, %1171
  %1173 = icmp eq i64 %1172, 2
  %1174 = zext i1 %1173 to i8
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1174, i8* %1175, align 1, !tbaa !2450
  %1176 = load i64, i64* %RBP
  %1177 = sub i64 %1176, 52
  %1178 = load i64, i64* %PC
  %1179 = add i64 %1178, 4
  store i64 %1179, i64* %PC
  %1180 = inttoptr i64 %1177 to i32*
  %1181 = load i32, i32* %1180
  %1182 = sext i32 %1181 to i64
  store i64 %1182, i64* %RCX, align 8, !tbaa !2428
  %1183 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1184 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1185 = load i64, i64* %RAX
  %1186 = load i64, i64* %RCX
  %1187 = mul i64 %1186, 8
  %1188 = add i64 %1187, %1185
  %1189 = load i64, i64* %PC
  %1190 = add i64 %1189, 5
  store i64 %1190, i64* %PC
  %1191 = bitcast i8* %1184 to double*
  %1192 = load double, double* %1191, align 1
  %1193 = getelementptr inbounds i8, i8* %1184, i64 8
  %1194 = bitcast i8* %1193 to i64*
  %1195 = load i64, i64* %1194, align 1
  %1196 = inttoptr i64 %1188 to double*
  %1197 = load double, double* %1196
  %1198 = fmul double %1192, %1197
  %1199 = bitcast i8* %1183 to double*
  store double %1198, double* %1199, align 1, !tbaa !2452
  %1200 = getelementptr inbounds i8, i8* %1183, i64 8
  %1201 = bitcast i8* %1200 to i64*
  store i64 %1195, i64* %1201, align 1, !tbaa !2452
  %1202 = load i64, i64* %RBP
  %1203 = sub i64 %1202, 48
  %1204 = load i64, i64* %PC
  %1205 = add i64 %1204, 4
  store i64 %1205, i64* %PC
  %1206 = inttoptr i64 %1203 to i64*
  %1207 = load i64, i64* %1206
  store i64 %1207, i64* %RAX, align 8, !tbaa !2428
  %1208 = load i64, i64* %RBP
  %1209 = sub i64 %1208, 52
  %1210 = load i64, i64* %PC
  %1211 = add i64 %1210, 4
  store i64 %1211, i64* %PC
  %1212 = inttoptr i64 %1209 to i32*
  %1213 = load i32, i32* %1212
  %1214 = sext i32 %1213 to i64
  store i64 %1214, i64* %RCX, align 8, !tbaa !2428
  %1215 = load i64, i64* %RCX
  %1216 = load i64, i64* %PC
  %1217 = add i64 %1216, 4
  store i64 %1217, i64* %PC
  %1218 = shl i64 %1215, 12
  %1219 = icmp slt i64 %1218, 0
  %1220 = shl i64 %1218, 1
  store i64 %1220, i64* %RCX, align 8, !tbaa !2428
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1222 = zext i1 %1219 to i8
  store i8 %1222, i8* %1221, align 1, !tbaa !2451
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1224 = trunc i64 %1220 to i32
  %1225 = and i32 %1224, 254
  %1226 = call i32 @llvm.ctpop.i32(i32 %1225) #16
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  %1229 = xor i8 %1228, 1
  store i8 %1229, i8* %1223, align 1, !tbaa !2451
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1230, align 1, !tbaa !2451
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1232 = icmp eq i64 %1220, 0
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %1231, align 1, !tbaa !2451
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1235 = lshr i64 %1220, 63
  %1236 = trunc i64 %1235 to i8
  store i8 %1236, i8* %1234, align 1, !tbaa !2451
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1237, align 1, !tbaa !2451
  %1238 = load i64, i64* %RAX
  %1239 = load i64, i64* %RCX
  %1240 = load i64, i64* %PC
  %1241 = add i64 %1240, 3
  store i64 %1241, i64* %PC
  %1242 = add i64 %1239, %1238
  store i64 %1242, i64* %RAX, align 8, !tbaa !2428
  %1243 = icmp ult i64 %1242, %1238
  %1244 = icmp ult i64 %1242, %1239
  %1245 = or i1 %1243, %1244
  %1246 = zext i1 %1245 to i8
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1246, i8* %1247, align 1, !tbaa !2432
  %1248 = trunc i64 %1242 to i32
  %1249 = and i32 %1248, 255
  %1250 = call i32 @llvm.ctpop.i32(i32 %1249) #16
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = xor i8 %1252, 1
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1253, i8* %1254, align 1, !tbaa !2446
  %1255 = xor i64 %1239, %1238
  %1256 = xor i64 %1255, %1242
  %1257 = lshr i64 %1256, 4
  %1258 = trunc i64 %1257 to i8
  %1259 = and i8 %1258, 1
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1259, i8* %1260, align 1, !tbaa !2447
  %1261 = icmp eq i64 %1242, 0
  %1262 = zext i1 %1261 to i8
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1262, i8* %1263, align 1, !tbaa !2448
  %1264 = lshr i64 %1242, 63
  %1265 = trunc i64 %1264 to i8
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1265, i8* %1266, align 1, !tbaa !2449
  %1267 = lshr i64 %1238, 63
  %1268 = lshr i64 %1239, 63
  %1269 = xor i64 %1264, %1267
  %1270 = xor i64 %1264, %1268
  %1271 = add nuw nsw i64 %1269, %1270
  %1272 = icmp eq i64 %1271, 2
  %1273 = zext i1 %1272 to i8
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1273, i8* %1274, align 1, !tbaa !2450
  %1275 = load i64, i64* %RBP
  %1276 = sub i64 %1275, 56
  %1277 = load i64, i64* %PC
  %1278 = add i64 %1277, 4
  store i64 %1278, i64* %PC
  %1279 = inttoptr i64 %1276 to i32*
  %1280 = load i32, i32* %1279
  %1281 = sext i32 %1280 to i64
  store i64 %1281, i64* %RCX, align 8, !tbaa !2428
  %1282 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1283 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1284 = load i64, i64* %RAX
  %1285 = load i64, i64* %RCX
  %1286 = mul i64 %1285, 8
  %1287 = add i64 %1286, %1284
  %1288 = load i64, i64* %PC
  %1289 = add i64 %1288, 5
  store i64 %1289, i64* %PC
  %1290 = bitcast i8* %1283 to double*
  %1291 = load double, double* %1290, align 1
  %1292 = getelementptr inbounds i8, i8* %1283, i64 8
  %1293 = bitcast i8* %1292 to i64*
  %1294 = load i64, i64* %1293, align 1
  %1295 = inttoptr i64 %1287 to double*
  %1296 = load double, double* %1295
  %1297 = fmul double %1291, %1296
  %1298 = bitcast i8* %1282 to double*
  store double %1297, double* %1298, align 1, !tbaa !2452
  %1299 = getelementptr inbounds i8, i8* %1282, i64 8
  %1300 = bitcast i8* %1299 to i64*
  store i64 %1294, i64* %1300, align 1, !tbaa !2452
  %1301 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1302 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1303 = bitcast %union.vec128_t* %XMM1 to i8*
  %1304 = load i64, i64* %PC
  %1305 = add i64 %1304, 4
  store i64 %1305, i64* %PC
  %1306 = bitcast i8* %1302 to double*
  %1307 = load double, double* %1306, align 1
  %1308 = getelementptr inbounds i8, i8* %1302, i64 8
  %1309 = bitcast i8* %1308 to i64*
  %1310 = load i64, i64* %1309, align 1
  %1311 = bitcast i8* %1303 to double*
  %1312 = load double, double* %1311, align 1
  %1313 = fadd double %1307, %1312
  %1314 = bitcast i8* %1301 to double*
  store double %1313, double* %1314, align 1, !tbaa !2452
  %1315 = getelementptr inbounds i8, i8* %1301, i64 8
  %1316 = bitcast i8* %1315 to i64*
  store i64 %1310, i64* %1316, align 1, !tbaa !2452
  %1317 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1318 = load i64, i64* %RBP
  %1319 = sub i64 %1318, 16
  %1320 = load i64, i64* %PC
  %1321 = add i64 %1320, 5
  store i64 %1321, i64* %PC
  %1322 = inttoptr i64 %1319 to double*
  %1323 = load double, double* %1322
  %1324 = bitcast i8* %1317 to double*
  store double %1323, double* %1324, align 1, !tbaa !2452
  %1325 = getelementptr inbounds i8, i8* %1317, i64 8
  %1326 = bitcast i8* %1325 to double*
  store double 0.000000e+00, double* %1326, align 1, !tbaa !2452
  %1327 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1328 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1329 = load i64, i64* %RBP
  %1330 = sub i64 %1329, 72
  %1331 = load i64, i64* %PC
  %1332 = add i64 %1331, 5
  store i64 %1332, i64* %PC
  %1333 = bitcast i8* %1328 to double*
  %1334 = load double, double* %1333, align 1
  %1335 = getelementptr inbounds i8, i8* %1328, i64 8
  %1336 = bitcast i8* %1335 to i64*
  %1337 = load i64, i64* %1336, align 1
  %1338 = inttoptr i64 %1330 to double*
  %1339 = load double, double* %1338
  %1340 = fmul double %1334, %1339
  %1341 = bitcast i8* %1327 to double*
  store double %1340, double* %1341, align 1, !tbaa !2452
  %1342 = getelementptr inbounds i8, i8* %1327, i64 8
  %1343 = bitcast i8* %1342 to i64*
  store i64 %1337, i64* %1343, align 1, !tbaa !2452
  %1344 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1345 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1346 = bitcast %union.vec128_t* %XMM1 to i8*
  %1347 = load i64, i64* %PC
  %1348 = add i64 %1347, 4
  store i64 %1348, i64* %PC
  %1349 = bitcast i8* %1345 to double*
  %1350 = load double, double* %1349, align 1
  %1351 = getelementptr inbounds i8, i8* %1345, i64 8
  %1352 = bitcast i8* %1351 to i64*
  %1353 = load i64, i64* %1352, align 1
  %1354 = bitcast i8* %1346 to double*
  %1355 = load double, double* %1354, align 1
  %1356 = fadd double %1350, %1355
  %1357 = bitcast i8* %1344 to double*
  store double %1356, double* %1357, align 1, !tbaa !2452
  %1358 = getelementptr inbounds i8, i8* %1344, i64 8
  %1359 = bitcast i8* %1358 to i64*
  store i64 %1353, i64* %1359, align 1, !tbaa !2452
  %1360 = load i64, i64* %RBP
  %1361 = sub i64 %1360, 32
  %1362 = load i64, i64* %PC
  %1363 = add i64 %1362, 4
  store i64 %1363, i64* %PC
  %1364 = inttoptr i64 %1361 to i64*
  %1365 = load i64, i64* %1364
  store i64 %1365, i64* %RAX, align 8, !tbaa !2428
  %1366 = load i64, i64* %RBP
  %1367 = sub i64 %1366, 52
  %1368 = load i64, i64* %PC
  %1369 = add i64 %1368, 4
  store i64 %1369, i64* %PC
  %1370 = inttoptr i64 %1367 to i32*
  %1371 = load i32, i32* %1370
  %1372 = sext i32 %1371 to i64
  store i64 %1372, i64* %RCX, align 8, !tbaa !2428
  %1373 = load i64, i64* %RCX
  %1374 = load i64, i64* %PC
  %1375 = add i64 %1374, 4
  store i64 %1375, i64* %PC
  %1376 = shl i64 %1373, 12
  %1377 = icmp slt i64 %1376, 0
  %1378 = shl i64 %1376, 1
  store i64 %1378, i64* %RCX, align 8, !tbaa !2428
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1380 = zext i1 %1377 to i8
  store i8 %1380, i8* %1379, align 1, !tbaa !2451
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1382 = trunc i64 %1378 to i32
  %1383 = and i32 %1382, 254
  %1384 = call i32 @llvm.ctpop.i32(i32 %1383) #16
  %1385 = trunc i32 %1384 to i8
  %1386 = and i8 %1385, 1
  %1387 = xor i8 %1386, 1
  store i8 %1387, i8* %1381, align 1, !tbaa !2451
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1388, align 1, !tbaa !2451
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1390 = icmp eq i64 %1378, 0
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %1389, align 1, !tbaa !2451
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1393 = lshr i64 %1378, 63
  %1394 = trunc i64 %1393 to i8
  store i8 %1394, i8* %1392, align 1, !tbaa !2451
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1395, align 1, !tbaa !2451
  %1396 = load i64, i64* %RAX
  %1397 = load i64, i64* %RCX
  %1398 = load i64, i64* %PC
  %1399 = add i64 %1398, 3
  store i64 %1399, i64* %PC
  %1400 = add i64 %1397, %1396
  store i64 %1400, i64* %RAX, align 8, !tbaa !2428
  %1401 = icmp ult i64 %1400, %1396
  %1402 = icmp ult i64 %1400, %1397
  %1403 = or i1 %1401, %1402
  %1404 = zext i1 %1403 to i8
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1404, i8* %1405, align 1, !tbaa !2432
  %1406 = trunc i64 %1400 to i32
  %1407 = and i32 %1406, 255
  %1408 = call i32 @llvm.ctpop.i32(i32 %1407) #16
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  %1411 = xor i8 %1410, 1
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1411, i8* %1412, align 1, !tbaa !2446
  %1413 = xor i64 %1397, %1396
  %1414 = xor i64 %1413, %1400
  %1415 = lshr i64 %1414, 4
  %1416 = trunc i64 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1417, i8* %1418, align 1, !tbaa !2447
  %1419 = icmp eq i64 %1400, 0
  %1420 = zext i1 %1419 to i8
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1420, i8* %1421, align 1, !tbaa !2448
  %1422 = lshr i64 %1400, 63
  %1423 = trunc i64 %1422 to i8
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1423, i8* %1424, align 1, !tbaa !2449
  %1425 = lshr i64 %1396, 63
  %1426 = lshr i64 %1397, 63
  %1427 = xor i64 %1422, %1425
  %1428 = xor i64 %1422, %1426
  %1429 = add nuw nsw i64 %1427, %1428
  %1430 = icmp eq i64 %1429, 2
  %1431 = zext i1 %1430 to i8
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1431, i8* %1432, align 1, !tbaa !2450
  %1433 = load i64, i64* %RBP
  %1434 = sub i64 %1433, 56
  %1435 = load i64, i64* %PC
  %1436 = add i64 %1435, 4
  store i64 %1436, i64* %PC
  %1437 = inttoptr i64 %1434 to i32*
  %1438 = load i32, i32* %1437
  %1439 = sext i32 %1438 to i64
  store i64 %1439, i64* %RCX, align 8, !tbaa !2428
  %1440 = load i64, i64* %RAX
  %1441 = load i64, i64* %RCX
  %1442 = mul i64 %1441, 8
  %1443 = add i64 %1442, %1440
  %1444 = bitcast %union.vec128_t* %XMM0 to i8*
  %1445 = load i64, i64* %PC
  %1446 = add i64 %1445, 5
  store i64 %1446, i64* %PC
  %1447 = bitcast i8* %1444 to double*
  %1448 = load double, double* %1447, align 1
  %1449 = inttoptr i64 %1443 to double*
  store double %1448, double* %1449
  %1450 = load i64, i64* %RBP
  %1451 = sub i64 %1450, 56
  %1452 = load i64, i64* %PC
  %1453 = add i64 %1452, 3
  store i64 %1453, i64* %PC
  %1454 = inttoptr i64 %1451 to i32*
  %1455 = load i32, i32* %1454
  %1456 = zext i32 %1455 to i64
  store i64 %1456, i64* %RAX, align 8, !tbaa !2428
  %1457 = load i64, i64* %RAX
  %1458 = load i64, i64* %PC
  %1459 = add i64 %1458, 3
  store i64 %1459, i64* %PC
  %1460 = trunc i64 %1457 to i32
  %1461 = add i32 1, %1460
  %1462 = zext i32 %1461 to i64
  store i64 %1462, i64* %RAX, align 8, !tbaa !2428
  %1463 = icmp ult i32 %1461, %1460
  %1464 = icmp ult i32 %1461, 1
  %1465 = or i1 %1463, %1464
  %1466 = zext i1 %1465 to i8
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1466, i8* %1467, align 1, !tbaa !2432
  %1468 = and i32 %1461, 255
  %1469 = call i32 @llvm.ctpop.i32(i32 %1468) #16
  %1470 = trunc i32 %1469 to i8
  %1471 = and i8 %1470, 1
  %1472 = xor i8 %1471, 1
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1472, i8* %1473, align 1, !tbaa !2446
  %1474 = xor i64 1, %1457
  %1475 = trunc i64 %1474 to i32
  %1476 = xor i32 %1475, %1461
  %1477 = lshr i32 %1476, 4
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1479, i8* %1480, align 1, !tbaa !2447
  %1481 = icmp eq i32 %1461, 0
  %1482 = zext i1 %1481 to i8
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1482, i8* %1483, align 1, !tbaa !2448
  %1484 = lshr i32 %1461, 31
  %1485 = trunc i32 %1484 to i8
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1485, i8* %1486, align 1, !tbaa !2449
  %1487 = lshr i32 %1460, 31
  %1488 = xor i32 %1484, %1487
  %1489 = add nuw nsw i32 %1488, %1484
  %1490 = icmp eq i32 %1489, 2
  %1491 = zext i1 %1490 to i8
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1491, i8* %1492, align 1, !tbaa !2450
  %1493 = load i64, i64* %RBP
  %1494 = sub i64 %1493, 56
  %1495 = load i32, i32* %EAX
  %1496 = zext i32 %1495 to i64
  %1497 = load i64, i64* %PC
  %1498 = add i64 %1497, 3
  store i64 %1498, i64* %PC
  %1499 = inttoptr i64 %1494 to i32*
  store i32 %1495, i32* %1499
  %1500 = load i64, i64* %PC
  %1501 = sub i64 %1500, 331
  %1502 = load i64, i64* %PC
  %1503 = add i64 %1502, 5
  store i64 %1503, i64* %PC
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1501, i64* %1504, align 8, !tbaa !2428
  br label %block_400c5a

block_400c47:                                     ; preds = %block_400daa, %block_400c20
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_400c20 ], [ %MEMORY.0, %block_400daa ]
  %1505 = load i64, i64* %RBP
  %1506 = sub i64 %1505, 52
  %1507 = load i64, i64* %PC
  %1508 = add i64 %1507, 3
  store i64 %1508, i64* %PC
  %1509 = inttoptr i64 %1506 to i32*
  %1510 = load i32, i32* %1509
  %1511 = zext i32 %1510 to i64
  store i64 %1511, i64* %RAX, align 8, !tbaa !2428
  %1512 = load i32, i32* %EAX
  %1513 = zext i32 %1512 to i64
  %1514 = load i64, i64* %RBP
  %1515 = sub i64 %1514, 4
  %1516 = load i64, i64* %PC
  %1517 = add i64 %1516, 3
  store i64 %1517, i64* %PC
  %1518 = inttoptr i64 %1515 to i32*
  %1519 = load i32, i32* %1518
  %1520 = sub i32 %1512, %1519
  %1521 = icmp ult i32 %1512, %1519
  %1522 = zext i1 %1521 to i8
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1522, i8* %1523, align 1, !tbaa !2432
  %1524 = and i32 %1520, 255
  %1525 = call i32 @llvm.ctpop.i32(i32 %1524) #16
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  %1528 = xor i8 %1527, 1
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1528, i8* %1529, align 1, !tbaa !2446
  %1530 = xor i32 %1519, %1512
  %1531 = xor i32 %1530, %1520
  %1532 = lshr i32 %1531, 4
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1534, i8* %1535, align 1, !tbaa !2447
  %1536 = icmp eq i32 %1520, 0
  %1537 = zext i1 %1536 to i8
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1537, i8* %1538, align 1, !tbaa !2448
  %1539 = lshr i32 %1520, 31
  %1540 = trunc i32 %1539 to i8
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1540, i8* %1541, align 1, !tbaa !2449
  %1542 = lshr i32 %1512, 31
  %1543 = lshr i32 %1519, 31
  %1544 = xor i32 %1543, %1542
  %1545 = xor i32 %1539, %1542
  %1546 = add nuw nsw i32 %1545, %1544
  %1547 = icmp eq i32 %1546, 2
  %1548 = zext i1 %1547 to i8
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1548, i8* %1549, align 1, !tbaa !2450
  %1550 = load i64, i64* %PC
  %1551 = add i64 %1550, 368
  %1552 = load i64, i64* %PC
  %1553 = add i64 %1552, 6
  %1554 = load i64, i64* %PC
  %1555 = add i64 %1554, 6
  store i64 %1555, i64* %PC
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1557 = load i8, i8* %1556, align 1, !tbaa !2449
  %1558 = icmp ne i8 %1557, 0
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1560 = load i8, i8* %1559, align 1, !tbaa !2450
  %1561 = icmp ne i8 %1560, 0
  %1562 = xor i1 %1558, %1561
  %1563 = xor i1 %1562, true
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1566 = select i1 %1562, i64 %1553, i64 %1551
  store i64 %1566, i64* %1565, align 8, !tbaa !2428
  %1567 = load i8, i8* %BRANCH_TAKEN
  %1568 = icmp eq i8 %1567, 1
  br i1 %1568, label %block_400dbd, label %block_400c53
}

; Function Attrs: noinline
define %struct.Memory* @sub_4007f0_polybench_timer_stop(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %36 = call %struct.Memory* @sub_4007e0_rtclock_renamed_(%struct.State* %0, i64 %35, %struct.Memory* %2)
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
define %struct.Memory* @sub_401380___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401380:
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
define %struct.Memory* @sub_400640__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400640:
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
  store i64 ptrtoint (void ()* @callback_sub_401380___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_401310___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
define %struct.Memory* @sub_400810_polybench_timer_print(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400810:
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
  store i64 add (i64 ptrtoint (%seg_401390__rodata_type* @seg_401390__rodata to i64), i64 48), i64* %RDI, align 8, !tbaa !2428
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
  %103 = call %struct.Memory* @ext_602110_printf(%struct.State* %0, i64 %102, %struct.Memory* %2)
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
define %struct.Memory* @sub_400f60_check_FP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400f60:
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %ESI = bitcast %union.anon* %15 to i32*
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %17 = getelementptr inbounds %struct.GPR, %struct.GPR* %16, i32 0, i32 11
  %18 = getelementptr inbounds %struct.Reg, %struct.Reg* %17, i32 0, i32 0
  %EDI = bitcast %union.anon* %18 to i32*
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 17
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %R8D = bitcast %union.anon* %21 to i32*
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %23 = getelementptr inbounds %struct.GPR, %struct.GPR* %22, i32 0, i32 19
  %24 = getelementptr inbounds %struct.Reg, %struct.Reg* %23, i32 0, i32 0
  %R9D = bitcast %union.anon* %24 to i32*
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %26 = getelementptr inbounds %struct.GPR, %struct.GPR* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.Reg, %struct.Reg* %26, i32 0, i32 0
  %RAX = bitcast %union.anon* %27 to i64*
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %29 = getelementptr inbounds %struct.GPR, %struct.GPR* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.Reg, %struct.Reg* %29, i32 0, i32 0
  %RCX = bitcast %union.anon* %30 to i64*
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0
  %RDX = bitcast %union.anon* %33 to i64*
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %35 = getelementptr inbounds %struct.GPR, %struct.GPR* %34, i32 0, i32 9
  %36 = getelementptr inbounds %struct.Reg, %struct.Reg* %35, i32 0, i32 0
  %RSI = bitcast %union.anon* %36 to i64*
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %38 = getelementptr inbounds %struct.GPR, %struct.GPR* %37, i32 0, i32 11
  %39 = getelementptr inbounds %struct.Reg, %struct.Reg* %38, i32 0, i32 0
  %RDI = bitcast %union.anon* %39 to i64*
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %41 = getelementptr inbounds %struct.GPR, %struct.GPR* %40, i32 0, i32 13
  %42 = getelementptr inbounds %struct.Reg, %struct.Reg* %41, i32 0, i32 0
  %RSP = bitcast %union.anon* %42 to i64*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 15
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0
  %RBP = bitcast %union.anon* %45 to i64*
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %47 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %46, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %47 to %"class.std::bitset"*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %49 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %48, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %49 to %"class.std::bitset"*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %51 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %50, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %51 to %"class.std::bitset"*
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
  %66 = load i64, i64* %RSP
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 4
  store i64 %68, i64* %PC
  %69 = sub i64 %66, 80
  store i64 %69, i64* %RSP, align 8, !tbaa !2428
  %70 = icmp ult i64 %66, 80
  %71 = zext i1 %70 to i8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %71, i8* %72, align 1, !tbaa !2432
  %73 = trunc i64 %69 to i32
  %74 = and i32 %73, 255
  %75 = call i32 @llvm.ctpop.i32(i32 %74) #16
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %78, i8* %79, align 1, !tbaa !2446
  %80 = xor i64 80, %66
  %81 = xor i64 %80, %69
  %82 = lshr i64 %81, 4
  %83 = trunc i64 %82 to i8
  %84 = and i8 %83, 1
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %84, i8* %85, align 1, !tbaa !2447
  %86 = icmp eq i64 %69, 0
  %87 = zext i1 %86 to i8
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %87, i8* %88, align 1, !tbaa !2448
  %89 = lshr i64 %69, 63
  %90 = trunc i64 %89 to i8
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %90, i8* %91, align 1, !tbaa !2449
  %92 = lshr i64 %66, 63
  %93 = xor i64 %89, %92
  %94 = add nuw nsw i64 %93, %92
  %95 = icmp eq i64 %94, 2
  %96 = zext i1 %95 to i8
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %96, i8* %97, align 1, !tbaa !2450
  %98 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 8
  store i64 %100, i64* %PC
  %101 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401390__rodata_type* @seg_401390__rodata to i64), i64 24) to double*)
  %102 = bitcast i8* %98 to double*
  store double %101, double* %102, align 1, !tbaa !2452
  %103 = getelementptr inbounds i8, i8* %98, i64 8
  %104 = bitcast i8* %103 to double*
  store double 0.000000e+00, double* %104, align 1, !tbaa !2452
  %105 = load i64, i64* %RBP
  %106 = sub i64 %105, 8
  %107 = load i32, i32* %EDI
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 3
  store i64 %110, i64* %PC
  %111 = inttoptr i64 %106 to i32*
  store i32 %107, i32* %111
  %112 = load i64, i64* %RBP
  %113 = sub i64 %112, 12
  %114 = load i32, i32* %ESI
  %115 = zext i32 %114 to i64
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 3
  store i64 %117, i64* %PC
  %118 = inttoptr i64 %113 to i32*
  store i32 %114, i32* %118
  %119 = load i64, i64* %RBP
  %120 = sub i64 %119, 24
  %121 = load i64, i64* %RDX
  %122 = load i64, i64* %PC
  %123 = add i64 %122, 4
  store i64 %123, i64* %PC
  %124 = inttoptr i64 %120 to i64*
  store i64 %121, i64* %124
  %125 = load i64, i64* %RBP
  %126 = sub i64 %125, 32
  %127 = load i64, i64* %RCX
  %128 = load i64, i64* %PC
  %129 = add i64 %128, 4
  store i64 %129, i64* %PC
  %130 = inttoptr i64 %126 to i64*
  store i64 %127, i64* %130
  %131 = load i64, i64* %RBP
  %132 = sub i64 %131, 48
  %133 = bitcast %union.vec128_t* %XMM0 to i8*
  %134 = load i64, i64* %PC
  %135 = add i64 %134, 5
  store i64 %135, i64* %PC
  %136 = bitcast i8* %133 to double*
  %137 = load double, double* %136, align 1
  %138 = inttoptr i64 %132 to double*
  store double %137, double* %138
  %139 = load i64, i64* %RBP
  %140 = sub i64 %139, 36
  %141 = load i64, i64* %PC
  %142 = add i64 %141, 7
  store i64 %142, i64* %PC
  %143 = inttoptr i64 %140 to i32*
  store i32 0, i32* %143
  br label %block_400f8a

block_401078:                                     ; preds = %block_400f8a
  %144 = sub i64 %376, 4
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 7
  store i64 %146, i64* %PC
  %147 = inttoptr i64 %144 to i32*
  store i32 1, i32* %147
  br label %block_40107f

block_400f96:                                     ; preds = %block_400f8a
  %148 = sub i64 %376, 40
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 7
  store i64 %150, i64* %PC
  %151 = inttoptr i64 %148 to i32*
  store i32 0, i32* %151
  br label %block_400f9d

block_400f9d:                                     ; preds = %block_401052, %block_400f96
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_400f96 ], [ %764, %block_401052 ]
  %152 = load i64, i64* %RBP
  %153 = sub i64 %152, 40
  %154 = load i64, i64* %PC
  %155 = add i64 %154, 3
  store i64 %155, i64* %PC
  %156 = inttoptr i64 %153 to i32*
  %157 = load i32, i32* %156
  %158 = zext i32 %157 to i64
  store i64 %158, i64* %RAX, align 8, !tbaa !2428
  %159 = load i32, i32* %EAX
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* %RBP
  %162 = sub i64 %161, 12
  %163 = load i64, i64* %PC
  %164 = add i64 %163, 3
  store i64 %164, i64* %PC
  %165 = inttoptr i64 %162 to i32*
  %166 = load i32, i32* %165
  %167 = sub i32 %159, %166
  %168 = icmp ult i32 %159, %166
  %169 = zext i1 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %169, i8* %170, align 1, !tbaa !2432
  %171 = and i32 %167, 255
  %172 = call i32 @llvm.ctpop.i32(i32 %171) #16
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %175, i8* %176, align 1, !tbaa !2446
  %177 = xor i32 %166, %159
  %178 = xor i32 %177, %167
  %179 = lshr i32 %178, 4
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %181, i8* %182, align 1, !tbaa !2447
  %183 = icmp eq i32 %167, 0
  %184 = zext i1 %183 to i8
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %184, i8* %185, align 1, !tbaa !2448
  %186 = lshr i32 %167, 31
  %187 = trunc i32 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %187, i8* %188, align 1, !tbaa !2449
  %189 = lshr i32 %159, 31
  %190 = lshr i32 %166, 31
  %191 = xor i32 %190, %189
  %192 = xor i32 %186, %189
  %193 = add nuw nsw i32 %192, %191
  %194 = icmp eq i32 %193, 2
  %195 = zext i1 %194 to i8
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %195, i8* %196, align 1, !tbaa !2450
  %197 = load i64, i64* %PC
  %198 = add i64 %197, 194
  %199 = load i64, i64* %PC
  %200 = add i64 %199, 6
  %201 = load i64, i64* %PC
  %202 = add i64 %201, 6
  store i64 %202, i64* %PC
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %204 = load i8, i8* %203, align 1, !tbaa !2449
  %205 = icmp ne i8 %204, 0
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %207 = load i8, i8* %206, align 1, !tbaa !2450
  %208 = icmp ne i8 %207, 0
  %209 = xor i1 %205, %208
  %210 = xor i1 %209, true
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %213 = select i1 %209, i64 %200, i64 %198
  store i64 %213, i64* %212, align 8, !tbaa !2428
  %214 = load i8, i8* %BRANCH_TAKEN
  %215 = icmp eq i8 %214, 1
  br i1 %215, label %block_401065, label %block_400fa9

block_40100d:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %216 = add i64 %782, 10
  store i64 %216, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401390__rodata_type* @seg_401390__rodata to i64), i64 106), i64* %RSI, align 8, !tbaa !2428
  %217 = load i64, i64* %PC
  %218 = add i64 %217, 8
  store i64 %218, i64* %PC
  %219 = load i64, i64* @stderr
  store i64 %219, i64* %RDI, align 8, !tbaa !2428
  %220 = load i64, i64* %RBP
  %221 = sub i64 %220, 36
  %222 = load i64, i64* %PC
  %223 = add i64 %222, 3
  store i64 %223, i64* %PC
  %224 = inttoptr i64 %221 to i32*
  %225 = load i32, i32* %224
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RDX, align 8, !tbaa !2428
  %227 = load i64, i64* %RBP
  %228 = sub i64 %227, 40
  %229 = load i64, i64* %PC
  %230 = add i64 %229, 3
  store i64 %230, i64* %PC
  %231 = inttoptr i64 %228 to i32*
  %232 = load i32, i32* %231
  %233 = zext i32 %232 to i64
  store i64 %233, i64* %RCX, align 8, !tbaa !2428
  %234 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %235 = load i64, i64* %RBP
  %236 = sub i64 %235, 56
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 5
  store i64 %238, i64* %PC
  %239 = inttoptr i64 %236 to double*
  %240 = load double, double* %239
  %241 = bitcast i8* %234 to double*
  store double %240, double* %241, align 1, !tbaa !2452
  %242 = getelementptr inbounds i8, i8* %234, i64 8
  %243 = bitcast i8* %242 to double*
  store double 0.000000e+00, double* %243, align 1, !tbaa !2452
  %244 = bitcast i32* %R8D to i64*
  %245 = load i64, i64* %RBP
  %246 = sub i64 %245, 36
  %247 = load i64, i64* %PC
  %248 = add i64 %247, 4
  store i64 %248, i64* %PC
  %249 = inttoptr i64 %246 to i32*
  %250 = load i32, i32* %249
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %244, align 8, !tbaa !2428
  %252 = bitcast i32* %R9D to i64*
  %253 = load i64, i64* %RBP
  %254 = sub i64 %253, 40
  %255 = load i64, i64* %PC
  %256 = add i64 %255, 4
  store i64 %256, i64* %PC
  %257 = inttoptr i64 %254 to i32*
  %258 = load i32, i32* %257
  %259 = zext i32 %258 to i64
  store i64 %259, i64* %252, align 8, !tbaa !2428
  %260 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %261 = load i64, i64* %RBP
  %262 = sub i64 %261, 64
  %263 = load i64, i64* %PC
  %264 = add i64 %263, 5
  store i64 %264, i64* %PC
  %265 = inttoptr i64 %262 to double*
  %266 = load double, double* %265
  %267 = bitcast i8* %260 to double*
  store double %266, double* %267, align 1, !tbaa !2452
  %268 = getelementptr inbounds i8, i8* %260, i64 8
  %269 = bitcast i8* %268 to double*
  store double 0.000000e+00, double* %269, align 1, !tbaa !2452
  %270 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %271 = load i64, i64* %RBP
  %272 = sub i64 %271, 48
  %273 = load i64, i64* %PC
  %274 = add i64 %273, 5
  store i64 %274, i64* %PC
  %275 = inttoptr i64 %272 to double*
  %276 = load double, double* %275
  %277 = bitcast i8* %270 to double*
  store double %276, double* %277, align 1, !tbaa !2452
  %278 = getelementptr inbounds i8, i8* %270, i64 8
  %279 = bitcast i8* %278 to double*
  store double 0.000000e+00, double* %279, align 1, !tbaa !2452
  %280 = load i64, i64* %PC
  %281 = add i64 %280, 2
  store i64 %281, i64* %PC
  store i8 3, i8* %AL, align 1, !tbaa !2451
  %282 = load i64, i64* %PC
  %283 = sub i64 %282, 2622
  %284 = load i64, i64* %PC
  %285 = add i64 %284, 5
  %286 = load i64, i64* %PC
  %287 = add i64 %286, 5
  store i64 %287, i64* %PC
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %289 = load i64, i64* %288, align 8, !tbaa !2428
  %290 = add i64 %289, -8
  %291 = inttoptr i64 %290 to i64*
  store i64 %285, i64* %291
  store i64 %290, i64* %288, align 8, !tbaa !2428
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %283, i64* %292, align 8, !tbaa !2428
  %293 = load i64, i64* %PC
  %294 = call %struct.Memory* @ext_6020e8_fprintf(%struct.State* %0, i64 %293, %struct.Memory* %764)
  %295 = load i64, i64* %RBP
  %296 = sub i64 %295, 4
  %297 = load i64, i64* %PC
  %298 = add i64 %297, 7
  store i64 %298, i64* %PC
  %299 = inttoptr i64 %296 to i32*
  store i32 0, i32* %299
  %300 = load i64, i64* %RBP
  %301 = sub i64 %300, 76
  %302 = load i32, i32* %EAX
  %303 = zext i32 %302 to i64
  %304 = load i64, i64* %PC
  %305 = add i64 %304, 3
  store i64 %305, i64* %PC
  %306 = inttoptr i64 %301 to i32*
  store i32 %302, i32* %306
  %307 = load i64, i64* %PC
  %308 = add i64 %307, 50
  %309 = load i64, i64* %PC
  %310 = add i64 %309, 5
  store i64 %310, i64* %PC
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %308, i64* %311, align 8, !tbaa !2428
  br label %block_40107f

block_400f8a:                                     ; preds = %block_401065, %block_400f60
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_400f60 ], [ %MEMORY.0, %block_401065 ]
  %312 = load i64, i64* %RBP
  %313 = sub i64 %312, 36
  %314 = load i64, i64* %PC
  %315 = add i64 %314, 3
  store i64 %315, i64* %PC
  %316 = inttoptr i64 %313 to i32*
  %317 = load i32, i32* %316
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RAX, align 8, !tbaa !2428
  %319 = load i32, i32* %EAX
  %320 = zext i32 %319 to i64
  %321 = load i64, i64* %RBP
  %322 = sub i64 %321, 8
  %323 = load i64, i64* %PC
  %324 = add i64 %323, 3
  store i64 %324, i64* %PC
  %325 = inttoptr i64 %322 to i32*
  %326 = load i32, i32* %325
  %327 = sub i32 %319, %326
  %328 = icmp ult i32 %319, %326
  %329 = zext i1 %328 to i8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %329, i8* %330, align 1, !tbaa !2432
  %331 = and i32 %327, 255
  %332 = call i32 @llvm.ctpop.i32(i32 %331) #16
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %335, i8* %336, align 1, !tbaa !2446
  %337 = xor i32 %326, %319
  %338 = xor i32 %337, %327
  %339 = lshr i32 %338, 4
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %341, i8* %342, align 1, !tbaa !2447
  %343 = icmp eq i32 %327, 0
  %344 = zext i1 %343 to i8
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %344, i8* %345, align 1, !tbaa !2448
  %346 = lshr i32 %327, 31
  %347 = trunc i32 %346 to i8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %347, i8* %348, align 1, !tbaa !2449
  %349 = lshr i32 %319, 31
  %350 = lshr i32 %326, 31
  %351 = xor i32 %350, %349
  %352 = xor i32 %346, %349
  %353 = add nuw nsw i32 %352, %351
  %354 = icmp eq i32 %353, 2
  %355 = zext i1 %354 to i8
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %355, i8* %356, align 1, !tbaa !2450
  %357 = load i64, i64* %PC
  %358 = add i64 %357, 232
  %359 = load i64, i64* %PC
  %360 = add i64 %359, 6
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 6
  store i64 %362, i64* %PC
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %364 = load i8, i8* %363, align 1, !tbaa !2449
  %365 = icmp ne i8 %364, 0
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %367 = load i8, i8* %366, align 1, !tbaa !2450
  %368 = icmp ne i8 %367, 0
  %369 = xor i1 %365, %368
  %370 = xor i1 %369, true
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %373 = select i1 %369, i64 %360, i64 %358
  store i64 %373, i64* %372, align 8, !tbaa !2428
  %374 = load i8, i8* %BRANCH_TAKEN
  %375 = icmp eq i8 %374, 1
  %376 = load i64, i64* %RBP
  br i1 %375, label %block_401078, label %block_400f96

block_401052:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %377 = add i64 %782, 5
  %378 = load i64, i64* %PC
  %379 = add i64 %378, 5
  store i64 %379, i64* %PC
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %377, i64* %380, align 8, !tbaa !2428
  %381 = load i64, i64* %RBP
  %382 = sub i64 %381, 40
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 3
  store i64 %384, i64* %PC
  %385 = inttoptr i64 %382 to i32*
  %386 = load i32, i32* %385
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RAX, align 8, !tbaa !2428
  %388 = load i64, i64* %RAX
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 3
  store i64 %390, i64* %PC
  %391 = trunc i64 %388 to i32
  %392 = add i32 1, %391
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RAX, align 8, !tbaa !2428
  %394 = icmp ult i32 %392, %391
  %395 = icmp ult i32 %392, 1
  %396 = or i1 %394, %395
  %397 = zext i1 %396 to i8
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %397, i8* %398, align 1, !tbaa !2432
  %399 = and i32 %392, 255
  %400 = call i32 @llvm.ctpop.i32(i32 %399) #16
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %403, i8* %404, align 1, !tbaa !2446
  %405 = xor i64 1, %388
  %406 = trunc i64 %405 to i32
  %407 = xor i32 %406, %392
  %408 = lshr i32 %407, 4
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %410, i8* %411, align 1, !tbaa !2447
  %412 = icmp eq i32 %392, 0
  %413 = zext i1 %412 to i8
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %413, i8* %414, align 1, !tbaa !2448
  %415 = lshr i32 %392, 31
  %416 = trunc i32 %415 to i8
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %416, i8* %417, align 1, !tbaa !2449
  %418 = lshr i32 %391, 31
  %419 = xor i32 %415, %418
  %420 = add nuw nsw i32 %419, %415
  %421 = icmp eq i32 %420, 2
  %422 = zext i1 %421 to i8
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %422, i8* %423, align 1, !tbaa !2450
  %424 = load i64, i64* %RBP
  %425 = sub i64 %424, 40
  %426 = load i32, i32* %EAX
  %427 = zext i32 %426 to i64
  %428 = load i64, i64* %PC
  %429 = add i64 %428, 3
  store i64 %429, i64* %PC
  %430 = inttoptr i64 %425 to i32*
  store i32 %426, i32* %430
  %431 = load i64, i64* %PC
  %432 = sub i64 %431, 195
  %433 = load i64, i64* %PC
  %434 = add i64 %433, 5
  store i64 %434, i64* %PC
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %432, i64* %435, align 8, !tbaa !2428
  br label %block_400f9d

block_400fa9:                                     ; preds = %block_400f9d
  %436 = load i64, i64* %RBP
  %437 = sub i64 %436, 24
  %438 = load i64, i64* %PC
  %439 = add i64 %438, 4
  store i64 %439, i64* %PC
  %440 = inttoptr i64 %437 to i64*
  %441 = load i64, i64* %440
  store i64 %441, i64* %RAX, align 8, !tbaa !2428
  %442 = load i64, i64* %RBP
  %443 = sub i64 %442, 36
  %444 = load i64, i64* %PC
  %445 = add i64 %444, 4
  store i64 %445, i64* %PC
  %446 = inttoptr i64 %443 to i32*
  %447 = load i32, i32* %446
  %448 = sext i32 %447 to i64
  store i64 %448, i64* %RCX, align 8, !tbaa !2428
  %449 = load i64, i64* %RCX
  %450 = load i64, i64* %PC
  %451 = add i64 %450, 4
  store i64 %451, i64* %PC
  %452 = shl i64 %449, 12
  %453 = icmp slt i64 %452, 0
  %454 = shl i64 %452, 1
  store i64 %454, i64* %RCX, align 8, !tbaa !2428
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %456 = zext i1 %453 to i8
  store i8 %456, i8* %455, align 1, !tbaa !2451
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %458 = trunc i64 %454 to i32
  %459 = and i32 %458, 254
  %460 = call i32 @llvm.ctpop.i32(i32 %459) #16
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  %463 = xor i8 %462, 1
  store i8 %463, i8* %457, align 1, !tbaa !2451
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %464, align 1, !tbaa !2451
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %466 = icmp eq i64 %454, 0
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %465, align 1, !tbaa !2451
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %469 = lshr i64 %454, 63
  %470 = trunc i64 %469 to i8
  store i8 %470, i8* %468, align 1, !tbaa !2451
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %471, align 1, !tbaa !2451
  %472 = load i64, i64* %RAX
  %473 = load i64, i64* %RCX
  %474 = load i64, i64* %PC
  %475 = add i64 %474, 3
  store i64 %475, i64* %PC
  %476 = add i64 %473, %472
  store i64 %476, i64* %RAX, align 8, !tbaa !2428
  %477 = icmp ult i64 %476, %472
  %478 = icmp ult i64 %476, %473
  %479 = or i1 %477, %478
  %480 = zext i1 %479 to i8
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %480, i8* %481, align 1, !tbaa !2432
  %482 = trunc i64 %476 to i32
  %483 = and i32 %482, 255
  %484 = call i32 @llvm.ctpop.i32(i32 %483) #16
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  %487 = xor i8 %486, 1
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %487, i8* %488, align 1, !tbaa !2446
  %489 = xor i64 %473, %472
  %490 = xor i64 %489, %476
  %491 = lshr i64 %490, 4
  %492 = trunc i64 %491 to i8
  %493 = and i8 %492, 1
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %493, i8* %494, align 1, !tbaa !2447
  %495 = icmp eq i64 %476, 0
  %496 = zext i1 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %496, i8* %497, align 1, !tbaa !2448
  %498 = lshr i64 %476, 63
  %499 = trunc i64 %498 to i8
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %499, i8* %500, align 1, !tbaa !2449
  %501 = lshr i64 %472, 63
  %502 = lshr i64 %473, 63
  %503 = xor i64 %498, %501
  %504 = xor i64 %498, %502
  %505 = add nuw nsw i64 %503, %504
  %506 = icmp eq i64 %505, 2
  %507 = zext i1 %506 to i8
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %507, i8* %508, align 1, !tbaa !2450
  %509 = load i64, i64* %RBP
  %510 = sub i64 %509, 40
  %511 = load i64, i64* %PC
  %512 = add i64 %511, 4
  store i64 %512, i64* %PC
  %513 = inttoptr i64 %510 to i32*
  %514 = load i32, i32* %513
  %515 = sext i32 %514 to i64
  store i64 %515, i64* %RCX, align 8, !tbaa !2428
  %516 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %517 = load i64, i64* %RAX
  %518 = load i64, i64* %RCX
  %519 = mul i64 %518, 8
  %520 = add i64 %519, %517
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 5
  store i64 %522, i64* %PC
  %523 = inttoptr i64 %520 to double*
  %524 = load double, double* %523
  %525 = bitcast i8* %516 to double*
  store double %524, double* %525, align 1, !tbaa !2452
  %526 = getelementptr inbounds i8, i8* %516, i64 8
  %527 = bitcast i8* %526 to double*
  store double 0.000000e+00, double* %527, align 1, !tbaa !2452
  %528 = load i64, i64* %RBP
  %529 = sub i64 %528, 56
  %530 = bitcast %union.vec128_t* %XMM0 to i8*
  %531 = load i64, i64* %PC
  %532 = add i64 %531, 5
  store i64 %532, i64* %PC
  %533 = bitcast i8* %530 to double*
  %534 = load double, double* %533, align 1
  %535 = inttoptr i64 %529 to double*
  store double %534, double* %535
  %536 = load i64, i64* %RBP
  %537 = sub i64 %536, 32
  %538 = load i64, i64* %PC
  %539 = add i64 %538, 4
  store i64 %539, i64* %PC
  %540 = inttoptr i64 %537 to i64*
  %541 = load i64, i64* %540
  store i64 %541, i64* %RAX, align 8, !tbaa !2428
  %542 = load i64, i64* %RBP
  %543 = sub i64 %542, 36
  %544 = load i64, i64* %PC
  %545 = add i64 %544, 4
  store i64 %545, i64* %PC
  %546 = inttoptr i64 %543 to i32*
  %547 = load i32, i32* %546
  %548 = sext i32 %547 to i64
  store i64 %548, i64* %RCX, align 8, !tbaa !2428
  %549 = load i64, i64* %RCX
  %550 = load i64, i64* %PC
  %551 = add i64 %550, 4
  store i64 %551, i64* %PC
  %552 = shl i64 %549, 12
  %553 = icmp slt i64 %552, 0
  %554 = shl i64 %552, 1
  store i64 %554, i64* %RCX, align 8, !tbaa !2428
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %556 = zext i1 %553 to i8
  store i8 %556, i8* %555, align 1, !tbaa !2451
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %558 = trunc i64 %554 to i32
  %559 = and i32 %558, 254
  %560 = call i32 @llvm.ctpop.i32(i32 %559) #16
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = xor i8 %562, 1
  store i8 %563, i8* %557, align 1, !tbaa !2451
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %564, align 1, !tbaa !2451
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %566 = icmp eq i64 %554, 0
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %565, align 1, !tbaa !2451
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %569 = lshr i64 %554, 63
  %570 = trunc i64 %569 to i8
  store i8 %570, i8* %568, align 1, !tbaa !2451
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %571, align 1, !tbaa !2451
  %572 = load i64, i64* %RAX
  %573 = load i64, i64* %RCX
  %574 = load i64, i64* %PC
  %575 = add i64 %574, 3
  store i64 %575, i64* %PC
  %576 = add i64 %573, %572
  store i64 %576, i64* %RAX, align 8, !tbaa !2428
  %577 = icmp ult i64 %576, %572
  %578 = icmp ult i64 %576, %573
  %579 = or i1 %577, %578
  %580 = zext i1 %579 to i8
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %580, i8* %581, align 1, !tbaa !2432
  %582 = trunc i64 %576 to i32
  %583 = and i32 %582, 255
  %584 = call i32 @llvm.ctpop.i32(i32 %583) #16
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %587, i8* %588, align 1, !tbaa !2446
  %589 = xor i64 %573, %572
  %590 = xor i64 %589, %576
  %591 = lshr i64 %590, 4
  %592 = trunc i64 %591 to i8
  %593 = and i8 %592, 1
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %593, i8* %594, align 1, !tbaa !2447
  %595 = icmp eq i64 %576, 0
  %596 = zext i1 %595 to i8
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %596, i8* %597, align 1, !tbaa !2448
  %598 = lshr i64 %576, 63
  %599 = trunc i64 %598 to i8
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %599, i8* %600, align 1, !tbaa !2449
  %601 = lshr i64 %572, 63
  %602 = lshr i64 %573, 63
  %603 = xor i64 %598, %601
  %604 = xor i64 %598, %602
  %605 = add nuw nsw i64 %603, %604
  %606 = icmp eq i64 %605, 2
  %607 = zext i1 %606 to i8
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %607, i8* %608, align 1, !tbaa !2450
  %609 = load i64, i64* %RBP
  %610 = sub i64 %609, 40
  %611 = load i64, i64* %PC
  %612 = add i64 %611, 4
  store i64 %612, i64* %PC
  %613 = inttoptr i64 %610 to i32*
  %614 = load i32, i32* %613
  %615 = sext i32 %614 to i64
  store i64 %615, i64* %RCX, align 8, !tbaa !2428
  %616 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %617 = load i64, i64* %RAX
  %618 = load i64, i64* %RCX
  %619 = mul i64 %618, 8
  %620 = add i64 %619, %617
  %621 = load i64, i64* %PC
  %622 = add i64 %621, 5
  store i64 %622, i64* %PC
  %623 = inttoptr i64 %620 to double*
  %624 = load double, double* %623
  %625 = bitcast i8* %616 to double*
  store double %624, double* %625, align 1, !tbaa !2452
  %626 = getelementptr inbounds i8, i8* %616, i64 8
  %627 = bitcast i8* %626 to double*
  store double 0.000000e+00, double* %627, align 1, !tbaa !2452
  %628 = load i64, i64* %RBP
  %629 = sub i64 %628, 64
  %630 = bitcast %union.vec128_t* %XMM0 to i8*
  %631 = load i64, i64* %PC
  %632 = add i64 %631, 5
  store i64 %632, i64* %PC
  %633 = bitcast i8* %630 to double*
  %634 = load double, double* %633, align 1
  %635 = inttoptr i64 %629 to double*
  store double %634, double* %635
  %636 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %637 = load i64, i64* %RBP
  %638 = sub i64 %637, 56
  %639 = load i64, i64* %PC
  %640 = add i64 %639, 5
  store i64 %640, i64* %PC
  %641 = inttoptr i64 %638 to double*
  %642 = load double, double* %641
  %643 = bitcast i8* %636 to double*
  store double %642, double* %643, align 1, !tbaa !2452
  %644 = getelementptr inbounds i8, i8* %636, i64 8
  %645 = bitcast i8* %644 to double*
  store double 0.000000e+00, double* %645, align 1, !tbaa !2452
  %646 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %647 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %648 = load i64, i64* %RBP
  %649 = sub i64 %648, 64
  %650 = load i64, i64* %PC
  %651 = add i64 %650, 5
  store i64 %651, i64* %PC
  %652 = bitcast i8* %647 to double*
  %653 = load double, double* %652, align 1
  %654 = getelementptr inbounds i8, i8* %647, i64 8
  %655 = bitcast i8* %654 to i64*
  %656 = load i64, i64* %655, align 1
  %657 = inttoptr i64 %649 to double*
  %658 = load double, double* %657
  %659 = fsub double %653, %658
  %660 = bitcast i8* %646 to double*
  store double %659, double* %660, align 1, !tbaa !2452
  %661 = getelementptr inbounds i8, i8* %646, i64 8
  %662 = bitcast i8* %661 to i64*
  store i64 %656, i64* %662, align 1, !tbaa !2452
  %663 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %664 = load i64, i64* %PC
  %665 = add i64 %664, 7
  store i64 %665, i64* %PC
  %666 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401390__rodata_type* @seg_401390__rodata to i64), i64 32) to float*)
  %667 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401390__rodata_type* @seg_401390__rodata to i64), i64 36) to float*)
  %668 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401390__rodata_type* @seg_401390__rodata to i64), i64 40) to float*)
  %669 = load float, float* inttoptr (i64 add (i64 ptrtoint (%seg_401390__rodata_type* @seg_401390__rodata to i64), i64 44) to float*)
  %670 = bitcast i8* %663 to float*
  store float %666, float* %670, align 1, !tbaa !2455
  %671 = getelementptr inbounds i8, i8* %663, i64 4
  %672 = bitcast i8* %671 to float*
  store float %667, float* %672, align 1, !tbaa !2455
  %673 = getelementptr inbounds i8, i8* %663, i64 8
  %674 = bitcast i8* %673 to float*
  store float %668, float* %674, align 1, !tbaa !2455
  %675 = getelementptr inbounds i8, i8* %663, i64 12
  %676 = bitcast i8* %675 to float*
  store float %669, float* %676, align 1, !tbaa !2455
  %677 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %678 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %679 = bitcast %union.vec128_t* %XMM1 to i8*
  %680 = load i64, i64* %PC
  %681 = add i64 %680, 4
  store i64 %681, i64* %PC
  %682 = bitcast i8* %678 to i64*
  %683 = load i64, i64* %682, align 1
  %684 = getelementptr inbounds i8, i8* %678, i64 8
  %685 = bitcast i8* %684 to i64*
  %686 = load i64, i64* %685, align 1
  %687 = bitcast i8* %679 to i64*
  %688 = load i64, i64* %687, align 1
  %689 = getelementptr inbounds i8, i8* %679, i64 8
  %690 = bitcast i8* %689 to i64*
  %691 = load i64, i64* %690, align 1
  %692 = and i64 %688, %683
  %693 = and i64 %691, %686
  %694 = trunc i64 %692 to i32
  %695 = lshr i64 %692, 32
  %696 = trunc i64 %695 to i32
  %697 = bitcast i8* %677 to i32*
  store i32 %694, i32* %697, align 1, !tbaa !2454
  %698 = getelementptr inbounds i8, i8* %677, i64 4
  %699 = bitcast i8* %698 to i32*
  store i32 %696, i32* %699, align 1, !tbaa !2454
  %700 = trunc i64 %693 to i32
  %701 = getelementptr inbounds i8, i8* %677, i64 8
  %702 = bitcast i8* %701 to i32*
  store i32 %700, i32* %702, align 1, !tbaa !2454
  %703 = lshr i64 %693, 32
  %704 = trunc i64 %703 to i32
  %705 = getelementptr inbounds i8, i8* %677, i64 12
  %706 = bitcast i8* %705 to i32*
  store i32 %704, i32* %706, align 1, !tbaa !2454
  %707 = load i64, i64* %RBP
  %708 = sub i64 %707, 72
  %709 = bitcast %union.vec128_t* %XMM0 to i8*
  %710 = load i64, i64* %PC
  %711 = add i64 %710, 5
  store i64 %711, i64* %PC
  %712 = bitcast i8* %709 to double*
  %713 = load double, double* %712, align 1
  %714 = inttoptr i64 %708 to double*
  store double %713, double* %714
  %715 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %716 = load i64, i64* %RBP
  %717 = sub i64 %716, 72
  %718 = load i64, i64* %PC
  %719 = add i64 %718, 5
  store i64 %719, i64* %PC
  %720 = inttoptr i64 %717 to double*
  %721 = load double, double* %720
  %722 = bitcast i8* %715 to double*
  store double %721, double* %722, align 1, !tbaa !2452
  %723 = getelementptr inbounds i8, i8* %715, i64 8
  %724 = bitcast i8* %723 to double*
  store double 0.000000e+00, double* %724, align 1, !tbaa !2452
  %725 = bitcast %union.vec128_t* %XMM0 to i8*
  %726 = load i64, i64* %RBP
  %727 = sub i64 %726, 48
  %728 = load i64, i64* %PC
  %729 = add i64 %728, 5
  store i64 %729, i64* %PC
  %730 = bitcast i8* %725 to double*
  %731 = load double, double* %730, align 1
  %732 = inttoptr i64 %727 to double*
  %733 = load double, double* %732
  %734 = fcmp uno double %731, %733
  br i1 %734, label %735, label %747

; <label>:735:                                    ; preds = %block_400fa9
  %736 = fadd double %731, %733
  %737 = bitcast double %736 to i64
  %738 = and i64 %737, 9221120237041090560
  %739 = icmp eq i64 %738, 9218868437227405312
  %740 = and i64 %737, 2251799813685247
  %741 = icmp ne i64 %740, 0
  %742 = and i1 %739, %741
  br i1 %742, label %743, label %753

; <label>:743:                                    ; preds = %735
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %745 = load i64, i64* %744, align 8, !tbaa !2428
  %746 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %745, %struct.Memory* %MEMORY.0) #17
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:747:                                    ; preds = %block_400fa9
  %748 = fcmp ogt double %731, %733
  br i1 %748, label %753, label %749

; <label>:749:                                    ; preds = %747
  %750 = fcmp olt double %731, %733
  br i1 %750, label %753, label %751

; <label>:751:                                    ; preds = %749
  %752 = fcmp oeq double %731, %733
  br i1 %752, label %753, label %760

; <label>:753:                                    ; preds = %751, %749, %747, %735
  %754 = phi i8 [ 0, %747 ], [ 0, %749 ], [ 1, %751 ], [ 1, %735 ]
  %755 = phi i8 [ 0, %747 ], [ 0, %749 ], [ 0, %751 ], [ 1, %735 ]
  %756 = phi i8 [ 0, %747 ], [ 1, %749 ], [ 0, %751 ], [ 1, %735 ]
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %754, i8* %757, align 1, !tbaa !2451
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %755, i8* %758, align 1, !tbaa !2451
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %756, i8* %759, align 1, !tbaa !2451
  br label %760

; <label>:760:                                    ; preds = %753, %751
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %761, align 1, !tbaa !2451
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %762, align 1, !tbaa !2451
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %763, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %743, %760
  %764 = phi %struct.Memory* [ %746, %743 ], [ %MEMORY.0, %760 ]
  %765 = load i64, i64* %PC
  %766 = add i64 %765, 75
  %767 = load i64, i64* %PC
  %768 = add i64 %767, 6
  %769 = load i64, i64* %PC
  %770 = add i64 %769, 6
  store i64 %770, i64* %PC
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %772 = load i8, i8* %771, align 1, !tbaa !2432
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %774 = load i8, i8* %773, align 1, !tbaa !2448
  %775 = or i8 %774, %772
  %776 = icmp ne i8 %775, 0
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %779 = select i1 %776, i64 %766, i64 %768
  store i64 %779, i64* %778, align 8, !tbaa !2428
  %780 = load i8, i8* %BRANCH_TAKEN
  %781 = icmp eq i8 %780, 1
  %782 = load i64, i64* %PC
  br i1 %781, label %block_401052, label %block_40100d

block_40107f:                                     ; preds = %block_40100d, %block_401078
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_401078 ], [ %294, %block_40100d ]
  %783 = load i64, i64* %RBP
  %784 = sub i64 %783, 4
  %785 = load i64, i64* %PC
  %786 = add i64 %785, 3
  store i64 %786, i64* %PC
  %787 = inttoptr i64 %784 to i32*
  %788 = load i32, i32* %787
  %789 = zext i32 %788 to i64
  store i64 %789, i64* %RAX, align 8, !tbaa !2428
  %790 = load i64, i64* %RSP
  %791 = load i64, i64* %PC
  %792 = add i64 %791, 4
  store i64 %792, i64* %PC
  %793 = add i64 80, %790
  store i64 %793, i64* %RSP, align 8, !tbaa !2428
  %794 = icmp ult i64 %793, %790
  %795 = icmp ult i64 %793, 80
  %796 = or i1 %794, %795
  %797 = zext i1 %796 to i8
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %797, i8* %798, align 1, !tbaa !2432
  %799 = trunc i64 %793 to i32
  %800 = and i32 %799, 255
  %801 = call i32 @llvm.ctpop.i32(i32 %800) #16
  %802 = trunc i32 %801 to i8
  %803 = and i8 %802, 1
  %804 = xor i8 %803, 1
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %804, i8* %805, align 1, !tbaa !2446
  %806 = xor i64 80, %790
  %807 = xor i64 %806, %793
  %808 = lshr i64 %807, 4
  %809 = trunc i64 %808 to i8
  %810 = and i8 %809, 1
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %810, i8* %811, align 1, !tbaa !2447
  %812 = icmp eq i64 %793, 0
  %813 = zext i1 %812 to i8
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %813, i8* %814, align 1, !tbaa !2448
  %815 = lshr i64 %793, 63
  %816 = trunc i64 %815 to i8
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %816, i8* %817, align 1, !tbaa !2449
  %818 = lshr i64 %790, 63
  %819 = xor i64 %815, %818
  %820 = add nuw nsw i64 %819, %815
  %821 = icmp eq i64 %820, 2
  %822 = zext i1 %821 to i8
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %822, i8* %823, align 1, !tbaa !2450
  %824 = load i64, i64* %PC
  %825 = add i64 %824, 1
  store i64 %825, i64* %PC
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %827 = load i64, i64* %826, align 8, !tbaa !2428
  %828 = add i64 %827, 8
  %829 = inttoptr i64 %827 to i64*
  %830 = load i64, i64* %829
  store i64 %830, i64* %RBP, align 8, !tbaa !2428
  store i64 %828, i64* %826, align 8, !tbaa !2428
  %831 = load i64, i64* %PC
  %832 = add i64 %831, 1
  store i64 %832, i64* %PC
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %835 = load i64, i64* %834, align 8, !tbaa !2428
  %836 = inttoptr i64 %835 to i64*
  %837 = load i64, i64* %836
  store i64 %837, i64* %833, align 8, !tbaa !2428
  %838 = add i64 %835, 8
  store i64 %838, i64* %834, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.2

block_401065:                                     ; preds = %block_400f9d
  %839 = load i64, i64* %PC
  %840 = add i64 %839, 5
  %841 = load i64, i64* %PC
  %842 = add i64 %841, 5
  store i64 %842, i64* %PC
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %840, i64* %843, align 8, !tbaa !2428
  %844 = load i64, i64* %RBP
  %845 = sub i64 %844, 36
  %846 = load i64, i64* %PC
  %847 = add i64 %846, 3
  store i64 %847, i64* %PC
  %848 = inttoptr i64 %845 to i32*
  %849 = load i32, i32* %848
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RAX, align 8, !tbaa !2428
  %851 = load i64, i64* %RAX
  %852 = load i64, i64* %PC
  %853 = add i64 %852, 3
  store i64 %853, i64* %PC
  %854 = trunc i64 %851 to i32
  %855 = add i32 1, %854
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RAX, align 8, !tbaa !2428
  %857 = icmp ult i32 %855, %854
  %858 = icmp ult i32 %855, 1
  %859 = or i1 %857, %858
  %860 = zext i1 %859 to i8
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %860, i8* %861, align 1, !tbaa !2432
  %862 = and i32 %855, 255
  %863 = call i32 @llvm.ctpop.i32(i32 %862) #16
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  %866 = xor i8 %865, 1
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %866, i8* %867, align 1, !tbaa !2446
  %868 = xor i64 1, %851
  %869 = trunc i64 %868 to i32
  %870 = xor i32 %869, %855
  %871 = lshr i32 %870, 4
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %873, i8* %874, align 1, !tbaa !2447
  %875 = icmp eq i32 %855, 0
  %876 = zext i1 %875 to i8
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %876, i8* %877, align 1, !tbaa !2448
  %878 = lshr i32 %855, 31
  %879 = trunc i32 %878 to i8
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %879, i8* %880, align 1, !tbaa !2449
  %881 = lshr i32 %854, 31
  %882 = xor i32 %878, %881
  %883 = add nuw nsw i32 %882, %878
  %884 = icmp eq i32 %883, 2
  %885 = zext i1 %884 to i8
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %885, i8* %886, align 1, !tbaa !2450
  %887 = load i64, i64* %RBP
  %888 = sub i64 %887, 36
  %889 = load i32, i32* %EAX
  %890 = zext i32 %889 to i64
  %891 = load i64, i64* %PC
  %892 = add i64 %891, 3
  store i64 %892, i64* %PC
  %893 = inttoptr i64 %888 to i32*
  store i32 %889, i32* %893
  %894 = load i64, i64* %PC
  %895 = sub i64 %894, 233
  %896 = load i64, i64* %PC
  %897 = add i64 %896, 5
  store i64 %897, i64* %PC
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %895, i64* %898, align 8, !tbaa !2428
  br label %block_400f8a
}

; Function Attrs: noinline
define %struct.Memory* @sub_401384__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401384:
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
define %struct.Memory* @sub_4007c0_polybench_timer_start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4007c0:
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
  %36 = call %struct.Memory* @sub_4007b0_polybench_prepare_instruments_renamed_(%struct.State* %0, i64 %35, %struct.Memory* %2)
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
  %49 = call %struct.Memory* @sub_4007e0_rtclock_renamed_(%struct.State* %0, i64 %48, %struct.Memory* %36)
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
define %struct.Memory* @sub_401310___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401310:
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
  %200 = sub i64 %199, 3500
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
  %211 = call %struct.Memory* @sub_400590__init_proc_renamed_(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  br i1 %245, label %block_401366, label %block_401346

block_401366:                                     ; preds = %block_401350, %block_401310
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_401310 ], [ %387, %block_401350 ]
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

block_401346:                                     ; preds = %block_401310
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
  br label %block_401350

block_401350:                                     ; preds = %block_401350, %block_401346
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_401346 ], [ %387, %block_401350 ]
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
  br i1 %470, label %block_401350, label %block_401366
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006f0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006f0:
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
  br i1 %47, label %block_400710, label %block_4006f9

block_400710:                                     ; preds = %block_4006f0
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

block_4006f9:                                     ; preds = %block_4006f0
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
  %78 = call %struct.Memory* @sub_400680_deregister_tm_clones_renamed_(%struct.State* %0, i64 %77, %struct.Memory* %2)
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
define %struct.Memory* @sub_400910_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 21
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %R10 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %46 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %45, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %46 to %"class.std::bitset"*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %48 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %47, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %48 to %"class.std::bitset"*
  %49 = load i64, i64* %RBP
  %50 = load i64, i64* %PC
  %51 = add i64 %50, 1
  store i64 %51, i64* %PC
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %53 = load i64, i64* %52, align 8, !tbaa !2428
  %54 = add i64 %53, -8
  %55 = inttoptr i64 %54 to i64*
  store i64 %49, i64* %55
  store i64 %54, i64* %52, align 8, !tbaa !2428
  %56 = load i64, i64* %RSP
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 3
  store i64 %58, i64* %PC
  store i64 %56, i64* %RBP, align 8, !tbaa !2428
  %59 = load i64, i64* %RSP
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 4
  store i64 %61, i64* %PC
  %62 = sub i64 %59, 96
  store i64 %62, i64* %RSP, align 8, !tbaa !2428
  %63 = icmp ult i64 %59, 96
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %64, i8* %65, align 1, !tbaa !2432
  %66 = trunc i64 %62 to i32
  %67 = and i32 %66, 255
  %68 = call i32 @llvm.ctpop.i32(i32 %67) #16
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %71, i8* %72, align 1, !tbaa !2446
  %73 = xor i64 96, %59
  %74 = xor i64 %73, %62
  %75 = lshr i64 %74, 4
  %76 = trunc i64 %75 to i8
  %77 = and i8 %76, 1
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %77, i8* %78, align 1, !tbaa !2447
  %79 = icmp eq i64 %62, 0
  %80 = zext i1 %79 to i8
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %80, i8* %81, align 1, !tbaa !2448
  %82 = lshr i64 %62, 63
  %83 = trunc i64 %82 to i8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %83, i8* %84, align 1, !tbaa !2449
  %85 = lshr i64 %59, 63
  %86 = xor i64 %82, %85
  %87 = add nuw nsw i64 %86, %85
  %88 = icmp eq i64 %87, 2
  %89 = zext i1 %88 to i8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %89, i8* %90, align 1, !tbaa !2450
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 5
  store i64 %92, i64* %PC
  store i64 1048576, i64* %RAX, align 8, !tbaa !2428
  %93 = load i32, i32* %EAX
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 2
  store i64 %96, i64* %PC
  %97 = and i64 %94, 4294967295
  store i64 %97, i64* %RCX, align 8, !tbaa !2428
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 5
  store i64 %99, i64* %PC
  store i64 8, i64* %RAX, align 8, !tbaa !2428
  %100 = load i64, i64* %RBP
  %101 = sub i64 %100, 4
  %102 = load i64, i64* %PC
  %103 = add i64 %102, 7
  store i64 %103, i64* %PC
  %104 = inttoptr i64 %101 to i32*
  store i32 0, i32* %104
  %105 = load i64, i64* %RBP
  %106 = sub i64 %105, 8
  %107 = load i32, i32* %EDI
  %108 = zext i32 %107 to i64
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 3
  store i64 %110, i64* %PC
  %111 = inttoptr i64 %106 to i32*
  store i32 %107, i32* %111
  %112 = load i64, i64* %RBP
  %113 = sub i64 %112, 16
  %114 = load i64, i64* %RSI
  %115 = load i64, i64* %PC
  %116 = add i64 %115, 4
  store i64 %116, i64* %PC
  %117 = inttoptr i64 %113 to i64*
  store i64 %114, i64* %117
  %118 = load i64, i64* %RBP
  %119 = sub i64 %118, 20
  %120 = load i64, i64* %PC
  %121 = add i64 %120, 7
  store i64 %121, i64* %PC
  %122 = inttoptr i64 %119 to i32*
  store i32 1024, i32* %122
  %123 = load i64, i64* %RBP
  %124 = sub i64 %123, 24
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 7
  store i64 %126, i64* %PC
  %127 = inttoptr i64 %124 to i32*
  store i32 1024, i32* %127
  %128 = load i64, i64* %RCX
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 3
  store i64 %130, i64* %PC
  store i64 %128, i64* %RDI, align 8, !tbaa !2428
  %131 = load i32, i32* %EAX
  %132 = zext i32 %131 to i64
  %133 = load i64, i64* %PC
  %134 = add i64 %133, 2
  store i64 %134, i64* %PC
  %135 = and i64 %132, 4294967295
  store i64 %135, i64* %RSI, align 8, !tbaa !2428
  %136 = load i64, i64* %PC
  %137 = sub i64 %136, 245
  %138 = load i64, i64* %PC
  %139 = add i64 %138, 5
  %140 = load i64, i64* %PC
  %141 = add i64 %140, 5
  store i64 %141, i64* %PC
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %143 = load i64, i64* %142, align 8, !tbaa !2428
  %144 = add i64 %143, -8
  %145 = inttoptr i64 %144 to i64*
  store i64 %139, i64* %145
  store i64 %144, i64* %142, align 8, !tbaa !2428
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %137, i64* %146, align 8, !tbaa !2428
  %147 = load i64, i64* %PC
  %148 = call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* %0, i64 %147, %struct.Memory* %2)
  %149 = load i64, i64* %PC
  %150 = add i64 %149, 5
  store i64 %150, i64* %PC
  store i64 1048576, i64* %RSI, align 8, !tbaa !2428
  %151 = load i32, i32* %ESI
  %152 = zext i32 %151 to i64
  %153 = load i64, i64* %PC
  %154 = add i64 %153, 2
  store i64 %154, i64* %PC
  %155 = and i64 %152, 4294967295
  store i64 %155, i64* %RDI, align 8, !tbaa !2428
  %156 = load i64, i64* %PC
  %157 = add i64 %156, 5
  store i64 %157, i64* %PC
  store i64 8, i64* %RSI, align 8, !tbaa !2428
  %158 = load i64, i64* %RBP
  %159 = sub i64 %158, 48
  %160 = load i64, i64* %RAX
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 4
  store i64 %162, i64* %PC
  %163 = inttoptr i64 %159 to i64*
  store i64 %160, i64* %163
  %164 = load i64, i64* %PC
  %165 = sub i64 %164, 266
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
  %176 = call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* %0, i64 %175, %struct.Memory* %148)
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 5
  store i64 %178, i64* %PC
  store i64 1048576, i64* %RSI, align 8, !tbaa !2428
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
  %187 = sub i64 %186, 56
  %188 = load i64, i64* %RAX
  %189 = load i64, i64* %PC
  %190 = add i64 %189, 4
  store i64 %190, i64* %PC
  %191 = inttoptr i64 %187 to i64*
  store i64 %188, i64* %191
  %192 = load i64, i64* %PC
  %193 = sub i64 %192, 287
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
  %204 = call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* %0, i64 %203, %struct.Memory* %176)
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 5
  store i64 %206, i64* %PC
  store i64 1048576, i64* %RSI, align 8, !tbaa !2428
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
  %215 = sub i64 %214, 64
  %216 = load i64, i64* %RAX
  %217 = load i64, i64* %PC
  %218 = add i64 %217, 4
  store i64 %218, i64* %PC
  %219 = inttoptr i64 %215 to i64*
  store i64 %216, i64* %219
  %220 = load i64, i64* %PC
  %221 = sub i64 %220, 308
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
  %232 = call %struct.Memory* @sub_400850_polybench_alloc_data_renamed_(%struct.State* %0, i64 %231, %struct.Memory* %204)
  %233 = load i64, i64* %RBP
  %234 = sub i64 %233, 32
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 4
  store i64 %236, i64* %PC
  store i64 %234, i64* %RDX, align 8, !tbaa !2428
  %237 = load i64, i64* %RBP
  %238 = sub i64 %237, 40
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 4
  store i64 %240, i64* %PC
  store i64 %238, i64* %RCX, align 8, !tbaa !2428
  %241 = load i64, i64* %RBP
  %242 = sub i64 %241, 72
  %243 = load i64, i64* %RAX
  %244 = load i64, i64* %PC
  %245 = add i64 %244, 4
  store i64 %245, i64* %PC
  %246 = inttoptr i64 %242 to i64*
  store i64 %243, i64* %246
  %247 = load i64, i64* %RBP
  %248 = sub i64 %247, 20
  %249 = load i64, i64* %PC
  %250 = add i64 %249, 3
  store i64 %250, i64* %PC
  %251 = inttoptr i64 %248 to i32*
  %252 = load i32, i32* %251
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RDI, align 8, !tbaa !2428
  %254 = load i64, i64* %RBP
  %255 = sub i64 %254, 24
  %256 = load i64, i64* %PC
  %257 = add i64 %256, 3
  store i64 %257, i64* %PC
  %258 = inttoptr i64 %255 to i32*
  %259 = load i32, i32* %258
  %260 = zext i32 %259 to i64
  store i64 %260, i64* %RSI, align 8, !tbaa !2428
  %261 = load i64, i64* %RBP
  %262 = sub i64 %261, 48
  %263 = load i64, i64* %PC
  %264 = add i64 %263, 4
  store i64 %264, i64* %PC
  %265 = inttoptr i64 %262 to i64*
  %266 = load i64, i64* %265
  store i64 %266, i64* %R8, align 8, !tbaa !2428
  %267 = load i64, i64* %RBP
  %268 = sub i64 %267, 56
  %269 = load i64, i64* %PC
  %270 = add i64 %269, 4
  store i64 %270, i64* %PC
  %271 = inttoptr i64 %268 to i64*
  %272 = load i64, i64* %271
  store i64 %272, i64* %R9, align 8, !tbaa !2428
  %273 = load i64, i64* %RBP
  %274 = sub i64 %273, 64
  %275 = load i64, i64* %PC
  %276 = add i64 %275, 4
  store i64 %276, i64* %PC
  %277 = inttoptr i64 %274 to i64*
  %278 = load i64, i64* %277
  store i64 %278, i64* %RAX, align 8, !tbaa !2428
  %279 = load i64, i64* %RBP
  %280 = sub i64 %279, 72
  %281 = load i64, i64* %PC
  %282 = add i64 %281, 4
  store i64 %282, i64* %PC
  %283 = inttoptr i64 %280 to i64*
  %284 = load i64, i64* %283
  store i64 %284, i64* %R10, align 8, !tbaa !2428
  %285 = load i64, i64* %RSP
  %286 = load i64, i64* %RAX
  %287 = load i64, i64* %PC
  %288 = add i64 %287, 4
  store i64 %288, i64* %PC
  %289 = inttoptr i64 %285 to i64*
  store i64 %286, i64* %289
  %290 = load i64, i64* %RSP
  %291 = add i64 %290, 8
  %292 = load i64, i64* %R10
  %293 = load i64, i64* %PC
  %294 = add i64 %293, 5
  store i64 %294, i64* %PC
  %295 = inttoptr i64 %291 to i64*
  store i64 %292, i64* %295
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 204
  %298 = load i64, i64* %PC
  %299 = add i64 %298, 5
  %300 = load i64, i64* %PC
  %301 = add i64 %300, 5
  store i64 %301, i64* %PC
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %303 = load i64, i64* %302, align 8, !tbaa !2428
  %304 = add i64 %303, -8
  %305 = inttoptr i64 %304 to i64*
  store i64 %299, i64* %305
  store i64 %304, i64* %302, align 8, !tbaa !2428
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %297, i64* %306, align 8, !tbaa !2428
  %307 = load i64, i64* %PC
  %308 = call %struct.Memory* @sub_400a80_init_array_renamed_(%struct.State* %0, i64 %307, %struct.Memory* %232)
  %309 = load i64, i64* %RBP
  %310 = sub i64 %309, 20
  %311 = load i64, i64* %PC
  %312 = add i64 %311, 3
  store i64 %312, i64* %PC
  %313 = inttoptr i64 %310 to i32*
  %314 = load i32, i32* %313
  %315 = zext i32 %314 to i64
  store i64 %315, i64* %RDI, align 8, !tbaa !2428
  %316 = load i64, i64* %RBP
  %317 = sub i64 %316, 24
  %318 = load i64, i64* %PC
  %319 = add i64 %318, 3
  store i64 %319, i64* %PC
  %320 = inttoptr i64 %317 to i32*
  %321 = load i32, i32* %320
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RSI, align 8, !tbaa !2428
  %323 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %324 = load i64, i64* %RBP
  %325 = sub i64 %324, 32
  %326 = load i64, i64* %PC
  %327 = add i64 %326, 5
  store i64 %327, i64* %PC
  %328 = inttoptr i64 %325 to double*
  %329 = load double, double* %328
  %330 = bitcast i8* %323 to double*
  store double %329, double* %330, align 1, !tbaa !2452
  %331 = getelementptr inbounds i8, i8* %323, i64 8
  %332 = bitcast i8* %331 to double*
  store double 0.000000e+00, double* %332, align 1, !tbaa !2452
  %333 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %334 = load i64, i64* %RBP
  %335 = sub i64 %334, 40
  %336 = load i64, i64* %PC
  %337 = add i64 %336, 5
  store i64 %337, i64* %PC
  %338 = inttoptr i64 %335 to double*
  %339 = load double, double* %338
  %340 = bitcast i8* %333 to double*
  store double %339, double* %340, align 1, !tbaa !2452
  %341 = getelementptr inbounds i8, i8* %333, i64 8
  %342 = bitcast i8* %341 to double*
  store double 0.000000e+00, double* %342, align 1, !tbaa !2452
  %343 = load i64, i64* %RBP
  %344 = sub i64 %343, 48
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 4
  store i64 %346, i64* %PC
  %347 = inttoptr i64 %344 to i64*
  %348 = load i64, i64* %347
  store i64 %348, i64* %RDX, align 8, !tbaa !2428
  %349 = load i64, i64* %RBP
  %350 = sub i64 %349, 64
  %351 = load i64, i64* %PC
  %352 = add i64 %351, 4
  store i64 %352, i64* %PC
  %353 = inttoptr i64 %350 to i64*
  %354 = load i64, i64* %353
  store i64 %354, i64* %RCX, align 8, !tbaa !2428
  %355 = load i64, i64* %RBP
  %356 = sub i64 %355, 72
  %357 = load i64, i64* %PC
  %358 = add i64 %357, 4
  store i64 %358, i64* %PC
  %359 = inttoptr i64 %356 to i64*
  %360 = load i64, i64* %359
  store i64 %360, i64* %R8, align 8, !tbaa !2428
  %361 = load i64, i64* %PC
  %362 = add i64 %361, 587
  %363 = load i64, i64* %PC
  %364 = add i64 %363, 5
  %365 = load i64, i64* %PC
  %366 = add i64 %365, 5
  store i64 %366, i64* %PC
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %368 = load i64, i64* %367, align 8, !tbaa !2428
  %369 = add i64 %368, -8
  %370 = inttoptr i64 %369 to i64*
  store i64 %364, i64* %370
  store i64 %369, i64* %367, align 8, !tbaa !2428
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %362, i64* %371, align 8, !tbaa !2428
  %372 = load i64, i64* %PC
  %373 = call %struct.Memory* @sub_400c20_kernel_symm_renamed_(%struct.State* %0, i64 %372, %struct.Memory* %308)
  %374 = load i64, i64* %RBP
  %375 = sub i64 %374, 20
  %376 = load i64, i64* %PC
  %377 = add i64 %376, 3
  store i64 %377, i64* %PC
  %378 = inttoptr i64 %375 to i32*
  %379 = load i32, i32* %378
  %380 = zext i32 %379 to i64
  store i64 %380, i64* %RDI, align 8, !tbaa !2428
  %381 = load i64, i64* %RBP
  %382 = sub i64 %381, 24
  %383 = load i64, i64* %PC
  %384 = add i64 %383, 3
  store i64 %384, i64* %PC
  %385 = inttoptr i64 %382 to i32*
  %386 = load i32, i32* %385
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RSI, align 8, !tbaa !2428
  %388 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %389 = load i64, i64* %RBP
  %390 = sub i64 %389, 32
  %391 = load i64, i64* %PC
  %392 = add i64 %391, 5
  store i64 %392, i64* %PC
  %393 = inttoptr i64 %390 to double*
  %394 = load double, double* %393
  %395 = bitcast i8* %388 to double*
  store double %394, double* %395, align 1, !tbaa !2452
  %396 = getelementptr inbounds i8, i8* %388, i64 8
  %397 = bitcast i8* %396 to double*
  store double 0.000000e+00, double* %397, align 1, !tbaa !2452
  %398 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %399 = load i64, i64* %RBP
  %400 = sub i64 %399, 40
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 5
  store i64 %402, i64* %PC
  %403 = inttoptr i64 %400 to double*
  %404 = load double, double* %403
  %405 = bitcast i8* %398 to double*
  store double %404, double* %405, align 1, !tbaa !2452
  %406 = getelementptr inbounds i8, i8* %398, i64 8
  %407 = bitcast i8* %406 to double*
  store double 0.000000e+00, double* %407, align 1, !tbaa !2452
  %408 = load i64, i64* %RBP
  %409 = sub i64 %408, 56
  %410 = load i64, i64* %PC
  %411 = add i64 %410, 4
  store i64 %411, i64* %PC
  %412 = inttoptr i64 %409 to i64*
  %413 = load i64, i64* %412
  store i64 %413, i64* %RDX, align 8, !tbaa !2428
  %414 = load i64, i64* %RBP
  %415 = sub i64 %414, 64
  %416 = load i64, i64* %PC
  %417 = add i64 %416, 4
  store i64 %417, i64* %PC
  %418 = inttoptr i64 %415 to i64*
  %419 = load i64, i64* %418
  store i64 %419, i64* %RCX, align 8, !tbaa !2428
  %420 = load i64, i64* %RBP
  %421 = sub i64 %420, 72
  %422 = load i64, i64* %PC
  %423 = add i64 %422, 4
  store i64 %423, i64* %PC
  %424 = inttoptr i64 %421 to i64*
  %425 = load i64, i64* %424
  store i64 %425, i64* %R8, align 8, !tbaa !2428
  %426 = load i64, i64* %PC
  %427 = add i64 %426, 970
  %428 = load i64, i64* %PC
  %429 = add i64 %428, 5
  %430 = load i64, i64* %PC
  %431 = add i64 %430, 5
  store i64 %431, i64* %PC
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %433 = load i64, i64* %432, align 8, !tbaa !2428
  %434 = add i64 %433, -8
  %435 = inttoptr i64 %434 to i64*
  store i64 %429, i64* %435
  store i64 %434, i64* %432, align 8, !tbaa !2428
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %427, i64* %436, align 8, !tbaa !2428
  %437 = load i64, i64* %PC
  %438 = call %struct.Memory* @sub_400dc0_kernel_symm_StrictFP_renamed_(%struct.State* %0, i64 %437, %struct.Memory* %373)
  %439 = load i64, i64* %RBP
  %440 = sub i64 %439, 20
  %441 = load i64, i64* %PC
  %442 = add i64 %441, 3
  store i64 %442, i64* %PC
  %443 = inttoptr i64 %440 to i32*
  %444 = load i32, i32* %443
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RDI, align 8, !tbaa !2428
  %446 = load i64, i64* %RBP
  %447 = sub i64 %446, 24
  %448 = load i64, i64* %PC
  %449 = add i64 %448, 3
  store i64 %449, i64* %PC
  %450 = inttoptr i64 %447 to i32*
  %451 = load i32, i32* %450
  %452 = zext i32 %451 to i64
  store i64 %452, i64* %RSI, align 8, !tbaa !2428
  %453 = load i64, i64* %RBP
  %454 = sub i64 %453, 48
  %455 = load i64, i64* %PC
  %456 = add i64 %455, 4
  store i64 %456, i64* %PC
  %457 = inttoptr i64 %454 to i64*
  %458 = load i64, i64* %457
  store i64 %458, i64* %RDX, align 8, !tbaa !2428
  %459 = load i64, i64* %RBP
  %460 = sub i64 %459, 56
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 4
  store i64 %462, i64* %PC
  %463 = inttoptr i64 %460 to i64*
  %464 = load i64, i64* %463
  store i64 %464, i64* %RCX, align 8, !tbaa !2428
  %465 = load i64, i64* %PC
  %466 = add i64 %465, 1367
  %467 = load i64, i64* %PC
  %468 = add i64 %467, 5
  %469 = load i64, i64* %PC
  %470 = add i64 %469, 5
  store i64 %470, i64* %PC
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %472 = load i64, i64* %471, align 8, !tbaa !2428
  %473 = add i64 %472, -8
  %474 = inttoptr i64 %473 to i64*
  store i64 %468, i64* %474
  store i64 %473, i64* %471, align 8, !tbaa !2428
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %466, i64* %475, align 8, !tbaa !2428
  %476 = load i64, i64* %PC
  %477 = call %struct.Memory* @sub_400f60_check_FP_renamed_(%struct.State* %0, i64 %476, %struct.Memory* %438)
  %478 = load i32, i32* %EAX
  %479 = zext i32 %478 to i64
  %480 = load i64, i64* %PC
  %481 = add i64 %480, 3
  store i64 %481, i64* %PC
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %482, align 1, !tbaa !2432
  %483 = and i32 %478, 255
  %484 = call i32 @llvm.ctpop.i32(i32 %483) #16
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  %487 = xor i8 %486, 1
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %487, i8* %488, align 1, !tbaa !2446
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %489, align 1, !tbaa !2447
  %490 = icmp eq i32 %478, 0
  %491 = zext i1 %490 to i8
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %491, i8* %492, align 1, !tbaa !2448
  %493 = lshr i32 %478, 31
  %494 = trunc i32 %493 to i8
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %494, i8* %495, align 1, !tbaa !2449
  %496 = lshr i32 %478, 31
  %497 = xor i32 %493, %496
  %498 = add nuw nsw i32 %497, %496
  %499 = icmp eq i32 %498, 2
  %500 = zext i1 %499 to i8
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %500, i8* %501, align 1, !tbaa !2450
  %502 = load i64, i64* %PC
  %503 = add i64 %502, 18
  %504 = load i64, i64* %PC
  %505 = add i64 %504, 6
  %506 = load i64, i64* %PC
  %507 = add i64 %506, 6
  store i64 %507, i64* %PC
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %509 = load i8, i8* %508, align 1, !tbaa !2448
  %510 = icmp eq i8 %509, 0
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %513 = select i1 %510, i64 %503, i64 %505
  store i64 %513, i64* %512, align 8, !tbaa !2428
  %514 = load i8, i8* %BRANCH_TAKEN
  %515 = icmp eq i8 %514, 1
  %516 = load i64, i64* %RBP
  br i1 %515, label %block_400a23, label %block_400a17

block_400a17:                                     ; preds = %block_400910
  %517 = sub i64 %516, 4
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 7
  store i64 %519, i64* %PC
  %520 = inttoptr i64 %517 to i32*
  store i32 1, i32* %520
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 75
  %523 = load i64, i64* %PC
  %524 = add i64 %523, 5
  store i64 %524, i64* %PC
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %522, i64* %525, align 8, !tbaa !2428
  br label %block_400a69

block_400a23:                                     ; preds = %block_400910
  %526 = sub i64 %516, 20
  %527 = load i64, i64* %PC
  %528 = add i64 %527, 3
  store i64 %528, i64* %PC
  %529 = inttoptr i64 %526 to i32*
  %530 = load i32, i32* %529
  %531 = zext i32 %530 to i64
  store i64 %531, i64* %RDI, align 8, !tbaa !2428
  %532 = load i64, i64* %RBP
  %533 = sub i64 %532, 24
  %534 = load i64, i64* %PC
  %535 = add i64 %534, 3
  store i64 %535, i64* %PC
  %536 = inttoptr i64 %533 to i32*
  %537 = load i32, i32* %536
  %538 = zext i32 %537 to i64
  store i64 %538, i64* %RSI, align 8, !tbaa !2428
  %539 = load i64, i64* %RBP
  %540 = sub i64 %539, 56
  %541 = load i64, i64* %PC
  %542 = add i64 %541, 4
  store i64 %542, i64* %PC
  %543 = inttoptr i64 %540 to i64*
  %544 = load i64, i64* %543
  store i64 %544, i64* %RDX, align 8, !tbaa !2428
  %545 = load i64, i64* %PC
  %546 = add i64 %545, 1635
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
  %557 = call %struct.Memory* @sub_401090_print_array_renamed_(%struct.State* %0, i64 %556, %struct.Memory* %477)
  %558 = load i64, i64* %RBP
  %559 = sub i64 %558, 48
  %560 = load i64, i64* %PC
  %561 = add i64 %560, 4
  store i64 %561, i64* %PC
  %562 = inttoptr i64 %559 to i64*
  %563 = load i64, i64* %562
  store i64 %563, i64* %RDX, align 8, !tbaa !2428
  %564 = load i64, i64* %RDX
  %565 = load i64, i64* %PC
  %566 = add i64 %565, 3
  store i64 %566, i64* %PC
  store i64 %564, i64* %RDI, align 8, !tbaa !2428
  %567 = load i64, i64* %PC
  %568 = sub i64 %567, 1145
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
  %579 = call %struct.Memory* @ext_4005c0_free(%struct.State* %0, i64 %578, %struct.Memory* %557)
  %580 = load i64, i64* %RBP
  %581 = sub i64 %580, 56
  %582 = load i64, i64* %PC
  %583 = add i64 %582, 4
  store i64 %583, i64* %PC
  %584 = inttoptr i64 %581 to i64*
  %585 = load i64, i64* %584
  store i64 %585, i64* %RDX, align 8, !tbaa !2428
  %586 = load i64, i64* %RDX
  %587 = load i64, i64* %PC
  %588 = add i64 %587, 3
  store i64 %588, i64* %PC
  store i64 %586, i64* %RDI, align 8, !tbaa !2428
  %589 = load i64, i64* %PC
  %590 = sub i64 %589, 1157
  %591 = load i64, i64* %PC
  %592 = add i64 %591, 5
  %593 = load i64, i64* %PC
  %594 = add i64 %593, 5
  store i64 %594, i64* %PC
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %596 = load i64, i64* %595, align 8, !tbaa !2428
  %597 = add i64 %596, -8
  %598 = inttoptr i64 %597 to i64*
  store i64 %592, i64* %598
  store i64 %597, i64* %595, align 8, !tbaa !2428
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %590, i64* %599, align 8, !tbaa !2428
  %600 = load i64, i64* %PC
  %601 = call %struct.Memory* @ext_4005c0_free(%struct.State* %0, i64 %600, %struct.Memory* %579)
  %602 = load i64, i64* %RBP
  %603 = sub i64 %602, 64
  %604 = load i64, i64* %PC
  %605 = add i64 %604, 4
  store i64 %605, i64* %PC
  %606 = inttoptr i64 %603 to i64*
  %607 = load i64, i64* %606
  store i64 %607, i64* %RDX, align 8, !tbaa !2428
  %608 = load i64, i64* %RDX
  %609 = load i64, i64* %PC
  %610 = add i64 %609, 3
  store i64 %610, i64* %PC
  store i64 %608, i64* %RDI, align 8, !tbaa !2428
  %611 = load i64, i64* %PC
  %612 = sub i64 %611, 1169
  %613 = load i64, i64* %PC
  %614 = add i64 %613, 5
  %615 = load i64, i64* %PC
  %616 = add i64 %615, 5
  store i64 %616, i64* %PC
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %618 = load i64, i64* %617, align 8, !tbaa !2428
  %619 = add i64 %618, -8
  %620 = inttoptr i64 %619 to i64*
  store i64 %614, i64* %620
  store i64 %619, i64* %617, align 8, !tbaa !2428
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %612, i64* %621, align 8, !tbaa !2428
  %622 = load i64, i64* %PC
  %623 = call %struct.Memory* @ext_4005c0_free(%struct.State* %0, i64 %622, %struct.Memory* %601)
  %624 = load i64, i64* %RBP
  %625 = sub i64 %624, 72
  %626 = load i64, i64* %PC
  %627 = add i64 %626, 4
  store i64 %627, i64* %PC
  %628 = inttoptr i64 %625 to i64*
  %629 = load i64, i64* %628
  store i64 %629, i64* %RDX, align 8, !tbaa !2428
  %630 = load i64, i64* %RDX
  %631 = load i64, i64* %PC
  %632 = add i64 %631, 3
  store i64 %632, i64* %PC
  store i64 %630, i64* %RDI, align 8, !tbaa !2428
  %633 = load i64, i64* %PC
  %634 = sub i64 %633, 1181
  %635 = load i64, i64* %PC
  %636 = add i64 %635, 5
  %637 = load i64, i64* %PC
  %638 = add i64 %637, 5
  store i64 %638, i64* %PC
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %640 = load i64, i64* %639, align 8, !tbaa !2428
  %641 = add i64 %640, -8
  %642 = inttoptr i64 %641 to i64*
  store i64 %636, i64* %642
  store i64 %641, i64* %639, align 8, !tbaa !2428
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %634, i64* %643, align 8, !tbaa !2428
  %644 = load i64, i64* %PC
  %645 = call %struct.Memory* @ext_4005c0_free(%struct.State* %0, i64 %644, %struct.Memory* %623)
  %646 = load i64, i64* %RBP
  %647 = sub i64 %646, 4
  %648 = load i64, i64* %PC
  %649 = add i64 %648, 7
  store i64 %649, i64* %PC
  %650 = inttoptr i64 %647 to i32*
  store i32 0, i32* %650
  br label %block_400a69

block_400a69:                                     ; preds = %block_400a23, %block_400a17
  %MEMORY.0 = phi %struct.Memory* [ %645, %block_400a23 ], [ %477, %block_400a17 ]
  %651 = load i64, i64* %RBP
  %652 = sub i64 %651, 4
  %653 = load i64, i64* %PC
  %654 = add i64 %653, 3
  store i64 %654, i64* %PC
  %655 = inttoptr i64 %652 to i32*
  %656 = load i32, i32* %655
  %657 = zext i32 %656 to i64
  store i64 %657, i64* %RAX, align 8, !tbaa !2428
  %658 = load i64, i64* %RSP
  %659 = load i64, i64* %PC
  %660 = add i64 %659, 4
  store i64 %660, i64* %PC
  %661 = add i64 96, %658
  store i64 %661, i64* %RSP, align 8, !tbaa !2428
  %662 = icmp ult i64 %661, %658
  %663 = icmp ult i64 %661, 96
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
  %674 = xor i64 96, %658
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
  %686 = lshr i64 %658, 63
  %687 = xor i64 %683, %686
  %688 = add nuw nsw i64 %687, %683
  %689 = icmp eq i64 %688, 2
  %690 = zext i1 %689 to i8
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %690, i8* %691, align 1, !tbaa !2450
  %692 = load i64, i64* %PC
  %693 = add i64 %692, 1
  store i64 %693, i64* %PC
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %695 = load i64, i64* %694, align 8, !tbaa !2428
  %696 = add i64 %695, 8
  %697 = inttoptr i64 %695 to i64*
  %698 = load i64, i64* %697
  store i64 %698, i64* %RBP, align 8, !tbaa !2428
  store i64 %696, i64* %694, align 8, !tbaa !2428
  %699 = load i64, i64* %PC
  %700 = add i64 %699, 1
  store i64 %700, i64* %PC
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %703 = load i64, i64* %702, align 8, !tbaa !2428
  %704 = inttoptr i64 %703 to i64*
  %705 = load i64, i64* %704
  store i64 %705, i64* %701, align 8, !tbaa !2428
  %706 = add i64 %703, 8
  store i64 %706, i64* %702, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_400890_xmalloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400890:
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
  %122 = call %struct.Memory* @ext_602148_posix_memalign(%struct.State* %0, i64 %121, %struct.Memory* %2)
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
  br i1 %169, label %block_4008d3, label %block_4008c9

block_4008d3:                                     ; preds = %block_4008c9, %block_400890
  %MEMORY.0 = phi %struct.Memory* [ %122, %block_400890 ], [ %122, %block_4008c9 ]
  %170 = load i64, i64* %PC
  %171 = add i64 %170, 10
  store i64 %171, i64* %PC
  store i64 add (i64 ptrtoint (%seg_401390__rodata_type* @seg_401390__rodata to i64), i64 55), i64* %RSI, align 8, !tbaa !2428
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

block_4008c9:                                     ; preds = %block_400890
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
  br i1 %252, label %block_4008f9, label %block_4008d3

block_4008f9:                                     ; preds = %block_4008c9
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
define %struct.Memory* @sub_400850_polybench_alloc_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400850:
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
  %153 = call %struct.Memory* @sub_400890_xmalloc_renamed_(%struct.State* %0, i64 %152, %struct.Memory* %2)
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
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400720_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400720;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400720_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400720_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4006f0___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4006f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4006f0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4006f0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020f0_malloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_4005c0_free(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_4005e0_fputs(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @fputs to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020e0_calloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401380___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401380;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401380___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401380___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401310___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401310;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401310___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401310___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400910;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400910_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020d8___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602110_printf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %2)
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
define internal %struct.Memory* @ext_602148_posix_memalign(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @posix_memalign to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_flush_cache() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400730;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400730_polybench_flush_cache(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400590;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400590__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_alloc_data() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400850;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @9, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400850_polybench_alloc_data(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401384;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @10, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_401384__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_start() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4007c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @11, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4007c0_polybench_timer_start(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_print() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400810;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @12, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400810_polybench_timer_print(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_timer_stop() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4007f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @13, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4007f0_polybench_timer_stop(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @polybench_prepare_instruments() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4007b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @14, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4007b0_polybench_prepare_instruments(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_401380___libc_csu_fini()
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
  call void @callback_sub_401310___libc_csu_init()
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
