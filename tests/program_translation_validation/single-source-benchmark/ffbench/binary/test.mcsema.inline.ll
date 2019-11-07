; ModuleID = 'binary/test.mcsema.calls_renamed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400540__init_type = type <{ [23 x i8] }>
%seg_400560__plt_type = type <{ [96 x i8] }>
%seg_4005c0__text_type = type <{ [2850 x i8] }>
%seg_4010e4__fini_type = type <{ [9 x i8] }>
%seg_4010f0__rodata_type = type <{ [72 x i8], [28 x i8], [48 x i8], [35 x i8], [35 x i8] }>
%seg_4011cc__eh_frame_hdr_type = type <{ [68 x i8] }>
%seg_401210__eh_frame_type = type <{ [280 x i8] }>
%seg_601de0__init_array_type = type <{ i64, i64 }>
%seg_601ff0__got_type = type <{ i64, i64 }>
%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64 }>
%seg_602040__data_type = type <{ [16 x i8] }>
%seg_602060__bss_type = type <{ [8 x i8], [4 x i8], [12 x i8] }>
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
@seg_400540__init = internal constant %seg_400540__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\AD\1A \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400560__plt = internal constant %seg_400560__plt_type <{ [96 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\A2\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\9A\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\92\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\8A\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\82\1A \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_4005c0__text = internal constant %seg_4005c0__text_type <{ [2850 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\E0\10@\00H\C7\C1p\10@\00H\C7\C7\B0\06@\00\FF\15\06\1A \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8P `\00H=P `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFP `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEP `\00UH\81\EEP `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFP `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\F1\19 \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\DF\19 \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\81\EC\C0\00\00\00\C7E\FC\00\00\00\00\C7E\E4?\00\00\00\C7E\E0\00\01\00\00\8BE\E0\0F\AFE\E0Hc\C8H\89M\D0H\8BM\D0H\83\C1\01H\C1\E1\01H\C1\E1\03H\89M\C8\8BE\E0\89\04%t `\00\89\04%p `\00H\8B}\C8\E8\84\FE\FF\FFH\89E\D8H\83}\D8\00\0F\85)\00\00\00H\BE8\11@\00\00\00\00\00H\8B<%` `\00\B0\00\E8L\FE\FF\FF\BF\01\00\00\00\89\85t\FF\FF\FF\E8l\FE\FF\FF1\F6H\8BE\D8H\8BU\C8H\89\C7\E8\1A\FE\FF\FF\C7E\F8\00\00\00\00\8BE\F8;E\E0\0F\8D{\00\00\00\C7E\F4\00\00\00\00\8BE\F4;E\E0\0F\8DU\00\00\00\8BE\F8\83\E0\0F\83\F8\08\0F\84\0F\00\00\00\8BE\F4\83\E0\0F\83\F8\08\0F\85$\00\00\00\F2\0F\10\05n\09\00\00H\8BE\D8\8BM\E0\0F\AFM\F8\03M\F4\C1\E1\01\83\C1\01Hc\D1\F2\0F\11\04\D0\E9\00\00\00\00\8BE\F4\83\C0\01\89E\F4\E9\9F\FF\FF\FF\E9\00\00\00\00\8BE\F8\83\C0\01\89E\F8\E9y\FF\FF\FF\C7E\F8\00\00\00\00\8BE\F8;E\E4\0F\8DH\00\00\00H\BEl `\00\00\00\00\00\BA\02\00\00\00\B9\01\00\00\00H\8B}\D8\E8\5C\03\00\00H\BEl `\00\00\00\00\00\BA\02\00\00\00\B9\FF\FF\FF\FFH\8B}\D8\E8?\03\00\00\8BE\F8\83\C0\01\89E\F8\E9\AC\FF\FF\FF\0FW\C0\F2\0F\10\0D\AE\08\00\00\F2\0F\10\15\AE\08\00\00\F2\0F\11U\B0\F2\0F\11M\A8\F2\0F\11U\A0\F2\0F\11M\98\F2\0F\11E\80\F2\0F\11\85x\FF\FF\FF\C7E\F8\01\00\00\00HcE\F8H;E\D0\0F\8FS\01\00\00H\8BE\D8HcM\F8\F2\0F\10\04\C8\F2\0F\11E\90H\8BE\D8\8BU\F8\83\C2\01Hc\CA\F2\0F\10\04\C8\F2\0F\11E\88\F2\0F\10E\90\F2\0FXE\80\F2\0F\11E\80\F2\0F\10E\88\F2\0FX\85x\FF\FF\FF\F2\0F\11\85x\FF\FF\FF\F2\0F\10E\90\F2\0F\10M\B0f\0F.\C8\0F\82\12\00\00\00\F2\0F\10E\90\F2\0F\11\85h\FF\FF\FF\E9\0D\00\00\00\F2\0F\10E\B0\F2\0F\11\85h\FF\FF\FF\F2\0F\10\85h\FF\FF\FF\F2\0F\11E\B0\F2\0F\10E\90f\0F.E\A8\0F\86\12\00\00\00\F2\0F\10E\90\F2\0F\11\85`\FF\FF\FF\E9\0D\00\00\00\F2\0F\10E\A8\F2\0F\11\85`\FF\FF\FF\F2\0F\10\85`\FF\FF\FF\F2\0F\11E\A8\F2\0F\10E\88\F2\0F\10M\A0f\0F.\C8\0F\82\12\00\00\00\F2\0F\10E\88\F2\0F\11\85X\FF\FF\FF\E9\0D\00\00\00\F2\0F\10E\A0\F2\0F\11\85X\FF\FF\FF\F2\0F\10\85X\FF\FF\FF\F2\0F\11E\A0\F2\0F\10E\88f\0F.E\98\0F\86\12\00\00\00\F2\0F\10E\88\F2\0F\11\85P\FF\FF\FF\E9\0D\00\00\00\F2\0F\10E\98\F2\0F\11\85P\FF\FF\FF\F2\0F\10\85P\FF\FF\FF\F2\0F\11E\98\8BE\F8\83\C0\02\89E\F8\E9\9F\FE\FF\FF\F2\0F\10\05%\07\00\00\F2\0F\10M\B0\F2\0F\11M\C0\F2\0F\10M\A8\F2\0F\5CM\B0\F2\0F^\C1\F2\0F\11E\B8\C7E\E8\00\00\00\00\C7E\F8\00\00\00\00\8BE\F8;E\E0\0F\8D\E6\00\00\00\C7E\F4\00\00\00\00\8BE\F4;E\E0\0F\8D\C0\00\00\00\B0\01H\8BM\D8\8BU\E0\0F\AFU\F8\03U\F4\C1\E2\01\83\C2\01Hc\F2\F2\0F\10\04\F1\F2\0F\5CE\C0\F2\0FYE\B8\F2\0F,\D0\89U\F0\8BU\F8\83\E2\0F\83\FA\08\88\85O\FF\FF\FF\0F\84\12\00\00\00\8BE\F4\83\E0\0F\83\F8\08\0F\94\C1\88\8DO\FF\FF\FF\8A\85O\FF\FF\FF1\C9\BA\FF\00\00\00\A8\01\0FE\CA\89M\EC\8BM\F0;M\EC\0F\846\00\00\00H\BET\11@\00\00\00\00\00\8BE\E8\83\C0\01\89E\E8H\8B<%` `\00\8BU\F8\8BM\F4D\8BE\ECD\8BM\F0\B0\00\E8\AC\FA\FF\FF\89\85H\FF\FF\FF\E9\00\00\00\00\8BE\F4\83\C0\01\89E\F4\E94\FF\FF\FF\E9\00\00\00\00\8BE\F8\83\C0\01\89E\F8\E9\0E\FF\FF\FF\83}\E8\00\0F\85'\00\00\00H\BE\84\11@\00\00\00\00\00H\8B<%` `\00\8BU\E4\B0\00\E8Z\FA\FF\FF\89\85D\FF\FF\FF\E9%\00\00\00H\BE\A7\11@\00\00\00\00\00H\8B<%` `\00\8BU\E4\8BM\E8\B0\00\E80\FA\FF\FF\89\85@\FF\FF\FF1\C0H\81\C4\C0\00\00\00]\C3ffffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\81\EC\C0\00\00\00H\89}\F8H\89u\F0\89U\EC\89M\E8\C7E\A0\01\00\00\00\C7E\B8\01\00\00\00\8BE\B8;E\EC\0F\8F \00\00\00H\8BE\F0HcM\B8\8B\14\88\0F\AFU\A0\89U\A0\8BE\B8\83\C0\01\89E\B8\E9\D4\FF\FF\FF\C7E\A8\01\00\00\00\8BE\EC\89E\B8\83}\B8\01\0F\8C\8C\04\00\00H\8BE\F0HcM\B8\8B\14\88\89U\AC\8BE\A0\8BU\AC\0F\AFU\A8\89\95\5C\FF\FF\FF\99\8B\B5\5C\FF\FF\FF\F7\FE\89E\A4\8BE\A8\C1\E0\01\89E\D0\8BE\D0\0F\AFE\AC\89E\CC\8BE\CC\0F\AFE\A4\89E\C8\C7E\D8\01\00\00\00\C7E\E0\01\00\00\00\8BE\E0;E\CC\0F\8Fk\01\00\00\8BE\E0;E\D8\0F\8D\EE\00\00\00\8BE\E0\89E\E4\8BE\E4\8BM\E0\03M\D0\83\E9\029\C8\0F\8F\CF\00\00\00\8BE\E4\89E\DC\8BE\DC;E\C8\0F\8F\AA\00\00\00\8BE\D8\03E\DC+E\E0\89E\D4H\8BM\F8HcU\DC\F2\0F\10\04\D1\F2\0F\11E\90H\8BM\F8HcU\D4\F2\0F\10\04\D1H\8BM\F8HcU\DC\F2\0F\11\04\D1\F2\0F\10E\90H\8BM\F8HcU\D4\F2\0F\11\04\D1H\8BM\F8\8BE\DC\83\C0\01Hc\D0\F2\0F\10\04\D1\F2\0F\11E\90H\8BM\F8\8BE\D4\83\C0\01Hc\D0\F2\0F\10\04\D1H\8BM\F8\8BE\DC\83\C0\01Hc\D0\F2\0F\11\04\D1\F2\0F\10E\90H\8BM\F8\8BE\D4\83\C0\01Hc\D0\F2\0F\11\04\D1\8BE\CC\03E\DC\89E\DC\E9J\FF\FF\FF\E9\00\00\00\00\8BE\E4\83\C0\02\89E\E4\E9\1D\FF\FF\FF\E9\00\00\00\00\8BE\CC\C1\F8\01\89E\BC1\C0\88\C1\8BE\BC;E\D0\88\8D[\FF\FF\FF\0F\8C\0F\00\00\00\8BE\D8;E\BC\0F\9F\C1\88\8D[\FF\FF\FF\8A\85[\FF\FF\FF\A8\01\0F\85\05\00\00\00\E9\19\00\00\00\8BE\BC\8BM\D8)\C1\89M\D8\8BE\BC\C1\F8\01\89E\BC\E9\AF\FF\FF\FF\8BE\BC\03E\D8\89E\D8\8BE\D0\03E\E0\89E\E0\E9\89\FE\FF\FF\8BE\D0\89E\C4\8BE\C4;E\CC\0F\8D\96\02\00\00\0FW\C0\F2\0F\10\0DU\03\00\00\F2\0F\10\15U\03\00\00\F2\0F\10\1DU\03\00\00\F2\0F\10%U\03\00\00\8BE\C4\C1\E0\01\89E\C0\F2\0F*m\E8\F2\0FY\EC\8BE\C0\99\F7}\D0\F2\0F*\E0\F2\0F^\EC\F2\0F\11m\88\F2\0FY]\88\F2\0F\11\85P\FF\FF\FF\0F(\C3\F2\0F\11\95H\FF\FF\FF\F2\0F\11\8D@\FF\FF\FF\E8z\F7\FF\FF\F2\0F\11\85`\FF\FF\FF\F2\0F\10\85H\FF\FF\FF\F2\0FY\85`\FF\FF\FF\F2\0FY\85`\FF\FF\FF\F2\0F\11\85p\FF\FF\FF\F2\0F\10E\88\E8H\F7\FF\FF\F2\0F\11\85x\FF\FF\FF\F2\0F\10\85@\FF\FF\FF\F2\0F\11\85h\FF\FF\FF\F2\0F\10\8DP\FF\FF\FF\F2\0F\11M\80\C7E\DC\01\00\00\00\8BE\DC;E\C4\0F\8F\B3\01\00\00\8BE\DC\89E\E4\8BE\E4\8BM\DC\03M\D0\83\E9\029\C8\0F\8F'\01\00\00\8BE\E4\89E\E0\8BE\E0;E\C8\0F\8F\02\01\00\00\8BE\E0\89E\B4\8BE\B4\03E\C4\89E\B0\F2\0F\10\85h\FF\FF\FFH\8BM\F8HcU\B0\F2\0FY\04\D1\F2\0F\10M\80H\8BM\F8\8BE\B0\83\C0\01Hc\D0\F2\0FY\0C\D1\F2\0F\5C\C1\F2\0F\11E\90\F2\0F\10\85h\FF\FF\FFH\8BM\F8\8BE\B0\83\C0\01Hc\D0\F2\0FY\04\D1\F2\0F\10M\80H\8BM\F8HcU\B0\F2\0FY\0C\D1\F2\0FX\C1\F2\0F\11E\98H\8BM\F8HcU\B4\F2\0F\10\04\D1\F2\0F\5CE\90H\8BM\F8HcU\B0\F2\0F\11\04\D1H\8BM\F8\8BE\B4\83\C0\01Hc\D0\F2\0F\10\04\D1\F2\0F\5CE\98H\8BM\F8\8BE\B0\83\C0\01Hc\D0\F2\0F\11\04\D1\F2\0F\10E\90H\8BM\F8HcU\B4\F2\0FX\04\D1\F2\0F\11\04\D1\F2\0F\10E\98H\8BM\F8\8BE\B4\83\C0\01Hc\D0\F2\0FX\04\D1\F2\0F\11\04\D1\8BE\C0\03E\E0\89E\E0\E9\F2\FE\FF\FF\E9\00\00\00\00\8BE\E4\83\C0\02\89E\E4\E9\C5\FE\FF\FF\F2\0F\10\85h\FF\FF\FF\F2\0F\11\85`\FF\FF\FF\F2\0FY\85p\FF\FF\FF\F2\0F\10M\80\F2\0FY\8Dx\FF\FF\FF\F2\0F\5C\C1\F2\0FX\85h\FF\FF\FF\F2\0F\11\85h\FF\FF\FF\F2\0F\10E\80\F2\0FY\85p\FF\FF\FF\F2\0F\10\8D`\FF\FF\FF\F2\0FY\8Dx\FF\FF\FF\F2\0FX\C1\F2\0FXE\80\F2\0F\11E\80\8BE\D0\03E\DC\89E\DC\E9A\FE\FF\FF\8BE\C0\89E\C4\E9^\FD\FF\FF\8BE\AC\0F\AFE\A8\89E\A8\8BE\B8\83\C0\FF\89E\B8\E9j\FB\FF\FFH\81\C4\C0\00\00\00]\C3\90AWAVI\89\D7AUATL\8D%^\0D \00UH\8D-^\0D \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\9F\F4\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_4010e4__fini = internal constant %seg_4010e4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_4010f0__rodata = internal constant %seg_4010f0__rodata_type <{ [72 x i8] c"\01\00\02\00\00\00\00\00\00\00\00 _\A0\02\C2\00\00\00 _\A0\02B\00\00\00\00\00\E0o@\00\00\00\00\00\00`@\00\00\00\00\00\00\F0?\00\00\00\00\00\00\00\C0\00\00\00\00\00\00\E0?\1C-DT\FB!\19@", [28 x i8] c"Can't allocate data array.\0A\00", [48 x i8] c"Wrong answer at (%d,%d)!  Expected %d, got %d.\0A\00", [35 x i8] c"%d passes.  No errors in results.\0A\00", [35 x i8] c"%d passes.  %d errors in results.\0A\00" }>
@seg_4011cc__eh_frame_hdr = internal constant %seg_4011cc__eh_frame_hdr_type <{ [68 x i8] c"\01\1B\03;@\00\00\00\07\00\00\00\94\F3\FF\FF\9C\00\00\00\F4\F3\FF\FF\5C\00\00\00$\F4\FF\FF\88\00\00\00\E4\F4\FF\FF\C4\00\00\00\A4\F9\FF\FF\E0\00\00\00\A4\FE\FF\FF\FC\00\00\00\14\FF\FF\FFD\01\00\00" }>
@seg_401210__eh_frame = internal constant %seg_401210__eh_frame_type <{ [280 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00\90\F3\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00\94\F3\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00\F0\F2\FF\FF`\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\18\F4\FF\FF\B1\04\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\BC\F8\FF\FF\FF\04\00\00\00A\0E\10\86\02C\0D\06\00\00\00D\00\00\00\90\00\00\00\A0\FD\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\D8\00\00\00\C8\FD\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601de0__init_array = internal global %seg_601de0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_4006a0_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400670___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), i64 ptrtoint (i64 (i64)* @malloc to i64), i64 ptrtoint (double (double)* @sin to i64), i64 ptrtoint (i64 (i64)* @exit to i64) }>
@seg_602040__data = internal global %seg_602040__data_type zeroinitializer
@seg_602060__bss = internal global %seg_602060__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4006a0_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400670___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4010e0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401070___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

declare %struct.Memory* @sub_400600_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400540__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400b70_fourn_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

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
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_4006b0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %ESI = bitcast %union.anon* %25 to i32*
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %27 = getelementptr inbounds %struct.GPR, %struct.GPR* %26, i32 0, i32 17
  %28 = getelementptr inbounds %struct.Reg, %struct.Reg* %27, i32 0, i32 0
  %R8D = bitcast %union.anon* %28 to i32*
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 19
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %R9D = bitcast %union.anon* %31 to i32*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RAX = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RCX = bitcast %union.anon* %37 to i64*
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %39 = getelementptr inbounds %struct.GPR, %struct.GPR* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.Reg, %struct.Reg* %39, i32 0, i32 0
  %RDX = bitcast %union.anon* %40 to i64*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %42 = getelementptr inbounds %struct.GPR, %struct.GPR* %41, i32 0, i32 9
  %43 = getelementptr inbounds %struct.Reg, %struct.Reg* %42, i32 0, i32 0
  %RSI = bitcast %union.anon* %43 to i64*
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 11
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %RDI = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 13
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %RSP = bitcast %union.anon* %49 to i64*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.GPR, %struct.GPR* %50, i32 0, i32 15
  %52 = getelementptr inbounds %struct.Reg, %struct.Reg* %51, i32 0, i32 0
  %RBP = bitcast %union.anon* %52 to i64*
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %54 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %53, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %54 to %"class.std::bitset"*
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %56 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %55, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %56 to %"class.std::bitset"*
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %58 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %57, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %58 to %"class.std::bitset"*
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %60 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %59, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %60 to %union.vec128_t*
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %62 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %61, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %62 to %union.vec128_t*
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %64 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %63, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %64 to %union.vec128_t*
  %65 = load i64, i64* %RBP
  %66 = load i64, i64* %PC
  %67 = add i64 %66, 1
  store i64 %67, i64* %PC
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %69 = load i64, i64* %68, align 8, !tbaa !2428
  %70 = add i64 %69, -8
  %71 = inttoptr i64 %70 to i64*
  store i64 %65, i64* %71
  store i64 %70, i64* %68, align 8, !tbaa !2428
  %72 = load i64, i64* %RSP
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 3
  store i64 %74, i64* %PC
  store i64 %72, i64* %RBP, align 8, !tbaa !2428
  %75 = load i64, i64* %RSP
  %76 = load i64, i64* %PC
  %77 = add i64 %76, 7
  store i64 %77, i64* %PC
  %78 = sub i64 %75, 192
  store i64 %78, i64* %RSP, align 8, !tbaa !2428
  %79 = icmp ult i64 %75, 192
  %80 = zext i1 %79 to i8
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %80, i8* %81, align 1, !tbaa !2432
  %82 = trunc i64 %78 to i32
  %83 = and i32 %82, 255
  %84 = call i32 @llvm.ctpop.i32(i32 %83) #17
  %85 = trunc i32 %84 to i8
  %86 = and i8 %85, 1
  %87 = xor i8 %86, 1
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %87, i8* %88, align 1, !tbaa !2446
  %89 = xor i64 192, %75
  %90 = xor i64 %89, %78
  %91 = lshr i64 %90, 4
  %92 = trunc i64 %91 to i8
  %93 = and i8 %92, 1
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %93, i8* %94, align 1, !tbaa !2447
  %95 = icmp eq i64 %78, 0
  %96 = zext i1 %95 to i8
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %96, i8* %97, align 1, !tbaa !2448
  %98 = lshr i64 %78, 63
  %99 = trunc i64 %98 to i8
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %99, i8* %100, align 1, !tbaa !2449
  %101 = lshr i64 %75, 63
  %102 = xor i64 %98, %101
  %103 = add nuw nsw i64 %102, %101
  %104 = icmp eq i64 %103, 2
  %105 = zext i1 %104 to i8
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %105, i8* %106, align 1, !tbaa !2450
  %107 = load i64, i64* %RBP
  %108 = sub i64 %107, 4
  %109 = load i64, i64* %PC
  %110 = add i64 %109, 7
  store i64 %110, i64* %PC
  %111 = inttoptr i64 %108 to i32*
  store i32 0, i32* %111
  %112 = load i64, i64* %RBP
  %113 = sub i64 %112, 28
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 7
  store i64 %115, i64* %PC
  %116 = inttoptr i64 %113 to i32*
  store i32 63, i32* %116
  %117 = load i64, i64* %RBP
  %118 = sub i64 %117, 32
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 7
  store i64 %120, i64* %PC
  %121 = inttoptr i64 %118 to i32*
  store i32 256, i32* %121
  %122 = load i64, i64* %RBP
  %123 = sub i64 %122, 32
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 3
  store i64 %125, i64* %PC
  %126 = inttoptr i64 %123 to i32*
  %127 = load i32, i32* %126
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %RAX, align 8, !tbaa !2428
  %129 = load i64, i64* %RAX
  %130 = load i64, i64* %RBP
  %131 = sub i64 %130, 32
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 4
  store i64 %133, i64* %PC
  %134 = inttoptr i64 %131 to i32*
  %135 = load i32, i32* %134
  %136 = shl i64 %129, 32
  %137 = ashr exact i64 %136, 32
  %138 = sext i32 %135 to i64
  %139 = mul nsw i64 %138, %137
  %140 = trunc i64 %139 to i32
  %141 = and i64 %139, 4294967295
  store i64 %141, i64* %RAX, align 8, !tbaa !2428
  %142 = shl i64 %139, 32
  %143 = ashr exact i64 %142, 32
  %144 = icmp ne i64 %143, %139
  %145 = zext i1 %144 to i8
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %145, i8* %146, align 1, !tbaa !2432
  %147 = and i32 %140, 255
  %148 = call i32 @llvm.ctpop.i32(i32 %147) #17
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %151, i8* %152, align 1, !tbaa !2446
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %153, align 1, !tbaa !2447
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %154, align 1, !tbaa !2448
  %155 = lshr i32 %140, 31
  %156 = trunc i32 %155 to i8
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %156, i8* %157, align 1, !tbaa !2449
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %145, i8* %158, align 1, !tbaa !2450
  %159 = load i32, i32* %EAX
  %160 = zext i32 %159 to i64
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 3
  store i64 %162, i64* %PC
  %163 = shl i64 %160, 32
  %164 = ashr exact i64 %163, 32
  store i64 %164, i64* %RCX, align 8, !tbaa !2428
  %165 = load i64, i64* %RBP
  %166 = sub i64 %165, 48
  %167 = load i64, i64* %RCX
  %168 = load i64, i64* %PC
  %169 = add i64 %168, 4
  store i64 %169, i64* %PC
  %170 = inttoptr i64 %166 to i64*
  store i64 %167, i64* %170
  %171 = load i64, i64* %RBP
  %172 = sub i64 %171, 48
  %173 = load i64, i64* %PC
  %174 = add i64 %173, 4
  store i64 %174, i64* %PC
  %175 = inttoptr i64 %172 to i64*
  %176 = load i64, i64* %175
  store i64 %176, i64* %RCX, align 8, !tbaa !2428
  %177 = load i64, i64* %RCX
  %178 = load i64, i64* %PC
  %179 = add i64 %178, 4
  store i64 %179, i64* %PC
  %180 = add i64 1, %177
  store i64 %180, i64* %RCX, align 8, !tbaa !2428
  %181 = icmp ult i64 %180, %177
  %182 = icmp ult i64 %180, 1
  %183 = or i1 %181, %182
  %184 = zext i1 %183 to i8
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %184, i8* %185, align 1, !tbaa !2432
  %186 = trunc i64 %180 to i32
  %187 = and i32 %186, 255
  %188 = call i32 @llvm.ctpop.i32(i32 %187) #17
  %189 = trunc i32 %188 to i8
  %190 = and i8 %189, 1
  %191 = xor i8 %190, 1
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %191, i8* %192, align 1, !tbaa !2446
  %193 = xor i64 1, %177
  %194 = xor i64 %193, %180
  %195 = lshr i64 %194, 4
  %196 = trunc i64 %195 to i8
  %197 = and i8 %196, 1
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %197, i8* %198, align 1, !tbaa !2447
  %199 = icmp eq i64 %180, 0
  %200 = zext i1 %199 to i8
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %200, i8* %201, align 1, !tbaa !2448
  %202 = lshr i64 %180, 63
  %203 = trunc i64 %202 to i8
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %203, i8* %204, align 1, !tbaa !2449
  %205 = lshr i64 %177, 63
  %206 = xor i64 %202, %205
  %207 = add nuw nsw i64 %206, %202
  %208 = icmp eq i64 %207, 2
  %209 = zext i1 %208 to i8
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %209, i8* %210, align 1, !tbaa !2450
  %211 = load i64, i64* %RCX
  %212 = load i64, i64* %PC
  %213 = add i64 %212, 4
  store i64 %213, i64* %PC
  %214 = shl i64 %211, 1
  %215 = icmp slt i64 %211, 0
  %216 = icmp slt i64 %214, 0
  %217 = xor i1 %215, %216
  store i64 %214, i64* %RCX, align 8, !tbaa !2428
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %219 = zext i1 %215 to i8
  store i8 %219, i8* %218, align 1, !tbaa !2451
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %221 = trunc i64 %214 to i32
  %222 = and i32 %221, 254
  %223 = call i32 @llvm.ctpop.i32(i32 %222) #17
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %220, align 1, !tbaa !2451
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %227, align 1, !tbaa !2451
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %229 = icmp eq i64 %214, 0
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %228, align 1, !tbaa !2451
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %232 = lshr i64 %214, 63
  %233 = trunc i64 %232 to i8
  store i8 %233, i8* %231, align 1, !tbaa !2451
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %235 = zext i1 %217 to i8
  store i8 %235, i8* %234, align 1, !tbaa !2451
  %236 = load i64, i64* %RCX
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 4
  store i64 %238, i64* %PC
  %239 = shl i64 %236, 2
  %240 = icmp slt i64 %239, 0
  %241 = shl i64 %239, 1
  store i64 %241, i64* %RCX, align 8, !tbaa !2428
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %243 = zext i1 %240 to i8
  store i8 %243, i8* %242, align 1, !tbaa !2451
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %245 = trunc i64 %241 to i32
  %246 = and i32 %245, 254
  %247 = call i32 @llvm.ctpop.i32(i32 %246) #17
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  %250 = xor i8 %249, 1
  store i8 %250, i8* %244, align 1, !tbaa !2451
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %251, align 1, !tbaa !2451
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %253 = icmp eq i64 %241, 0
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %252, align 1, !tbaa !2451
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %256 = lshr i64 %241, 63
  %257 = trunc i64 %256 to i8
  store i8 %257, i8* %255, align 1, !tbaa !2451
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %258, align 1, !tbaa !2451
  %259 = load i64, i64* %RBP
  %260 = sub i64 %259, 56
  %261 = load i64, i64* %RCX
  %262 = load i64, i64* %PC
  %263 = add i64 %262, 4
  store i64 %263, i64* %PC
  %264 = inttoptr i64 %260 to i64*
  store i64 %261, i64* %264
  %265 = load i64, i64* %RBP
  %266 = sub i64 %265, 32
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 3
  store i64 %268, i64* %PC
  %269 = inttoptr i64 %266 to i32*
  %270 = load i32, i32* %269
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RAX, align 8, !tbaa !2428
  %272 = load i32, i32* %EAX
  %273 = zext i32 %272 to i64
  %274 = load i64, i64* %PC
  %275 = add i64 %274, 7
  store i64 %275, i64* %PC
  store i32 %272, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 20) to i32*)
  %276 = load i32, i32* %EAX
  %277 = zext i32 %276 to i64
  %278 = load i64, i64* %PC
  %279 = add i64 %278, 7
  store i64 %279, i64* %PC
  store i32 %276, i32* inttoptr (i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 16) to i32*)
  %280 = load i64, i64* %RBP
  %281 = sub i64 %280, 56
  %282 = load i64, i64* %PC
  %283 = add i64 %282, 4
  store i64 %283, i64* %PC
  %284 = inttoptr i64 %281 to i64*
  %285 = load i64, i64* %284
  store i64 %285, i64* %RDI, align 8, !tbaa !2428
  %286 = load i64, i64* %PC
  %287 = sub i64 %286, 375
  %288 = load i64, i64* %PC
  %289 = add i64 %288, 5
  %290 = load i64, i64* %PC
  %291 = add i64 %290, 5
  store i64 %291, i64* %PC
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %293 = load i64, i64* %292, align 8, !tbaa !2428
  %294 = add i64 %293, -8
  %295 = inttoptr i64 %294 to i64*
  store i64 %289, i64* %295
  store i64 %294, i64* %292, align 8, !tbaa !2428
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %287, i64* %296, align 8, !tbaa !2428
  %297 = load i64, i64* %PC
  %298 = call %struct.Memory* @ext_602090_malloc(%struct.State* %0, i64 %297, %struct.Memory* %2)
  %299 = load i64, i64* %RBP
  %300 = sub i64 %299, 40
  %301 = load i64, i64* %RAX
  %302 = load i64, i64* %PC
  %303 = add i64 %302, 4
  store i64 %303, i64* %PC
  %304 = inttoptr i64 %300 to i64*
  store i64 %301, i64* %304
  %305 = load i64, i64* %RBP
  %306 = sub i64 %305, 40
  %307 = load i64, i64* %PC
  %308 = add i64 %307, 5
  store i64 %308, i64* %PC
  %309 = inttoptr i64 %306 to i64*
  %310 = load i64, i64* %309
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %311, align 1, !tbaa !2432
  %312 = trunc i64 %310 to i32
  %313 = and i32 %312, 255
  %314 = call i32 @llvm.ctpop.i32(i32 %313) #17
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %317, i8* %318, align 1, !tbaa !2446
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %319, align 1, !tbaa !2447
  %320 = icmp eq i64 %310, 0
  %321 = zext i1 %320 to i8
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %321, i8* %322, align 1, !tbaa !2448
  %323 = lshr i64 %310, 63
  %324 = trunc i64 %323 to i8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %324, i8* %325, align 1, !tbaa !2449
  %326 = lshr i64 %310, 63
  %327 = xor i64 %323, %326
  %328 = add nuw nsw i64 %327, %326
  %329 = icmp eq i64 %328, 2
  %330 = zext i1 %329 to i8
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %330, i8* %331, align 1, !tbaa !2450
  %332 = load i64, i64* %PC
  %333 = add i64 %332, 47
  %334 = load i64, i64* %PC
  %335 = add i64 %334, 6
  %336 = load i64, i64* %PC
  %337 = add i64 %336, 6
  store i64 %337, i64* %PC
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %339 = load i8, i8* %338, align 1, !tbaa !2448
  %340 = icmp eq i8 %339, 0
  %341 = zext i1 %340 to i8
  store i8 %341, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %343 = select i1 %340, i64 %333, i64 %335
  store i64 %343, i64* %342, align 8, !tbaa !2428
  %344 = load i8, i8* %BRANCH_TAKEN
  %345 = icmp eq i8 %344, 1
  br i1 %345, label %block_400744, label %block_40071b

block_40087a:                                     ; preds = %block_4009c0, %block_40083f
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_40083f ], [ %MEMORY.10, %block_4009c0 ]
  %346 = load i64, i64* %RBP
  %347 = sub i64 %346, 8
  %348 = load i64, i64* %PC
  %349 = add i64 %348, 4
  store i64 %349, i64* %PC
  %350 = inttoptr i64 %347 to i32*
  %351 = load i32, i32* %350
  %352 = sext i32 %351 to i64
  store i64 %352, i64* %RAX, align 8, !tbaa !2428
  %353 = load i64, i64* %RAX
  %354 = load i64, i64* %RBP
  %355 = sub i64 %354, 48
  %356 = load i64, i64* %PC
  %357 = add i64 %356, 4
  store i64 %357, i64* %PC
  %358 = inttoptr i64 %355 to i64*
  %359 = load i64, i64* %358
  %360 = sub i64 %353, %359
  %361 = icmp ugt i64 %359, %353
  %362 = zext i1 %361 to i8
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %362, i8* %363, align 1, !tbaa !2432
  %364 = trunc i64 %360 to i32
  %365 = and i32 %364, 255
  %366 = call i32 @llvm.ctpop.i32(i32 %365) #17
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %369, i8* %370, align 1, !tbaa !2446
  %371 = xor i64 %359, %353
  %372 = xor i64 %371, %360
  %373 = lshr i64 %372, 4
  %374 = trunc i64 %373 to i8
  %375 = and i8 %374, 1
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %375, i8* %376, align 1, !tbaa !2447
  %377 = icmp eq i64 %360, 0
  %378 = zext i1 %377 to i8
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %378, i8* %379, align 1, !tbaa !2448
  %380 = lshr i64 %360, 63
  %381 = trunc i64 %380 to i8
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %381, i8* %382, align 1, !tbaa !2449
  %383 = lshr i64 %353, 63
  %384 = lshr i64 %359, 63
  %385 = xor i64 %384, %383
  %386 = xor i64 %380, %383
  %387 = add nuw nsw i64 %386, %385
  %388 = icmp eq i64 %387, 2
  %389 = zext i1 %388 to i8
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %389, i8* %390, align 1, !tbaa !2450
  %391 = load i64, i64* %PC
  %392 = add i64 %391, 345
  %393 = load i64, i64* %PC
  %394 = add i64 %393, 6
  %395 = load i64, i64* %PC
  %396 = add i64 %395, 6
  store i64 %396, i64* %PC
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %398 = load i8, i8* %397, align 1, !tbaa !2448
  %399 = icmp eq i8 %398, 0
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %401 = load i8, i8* %400, align 1, !tbaa !2449
  %402 = icmp ne i8 %401, 0
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %404 = load i8, i8* %403, align 1, !tbaa !2450
  %405 = icmp ne i8 %404, 0
  %406 = xor i1 %402, %405
  %407 = xor i1 %406, true
  %408 = and i1 %399, %407
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %411 = select i1 %408, i64 %392, i64 %394
  store i64 %411, i64* %410, align 8, !tbaa !2428
  %412 = load i8, i8* %BRANCH_TAKEN
  %413 = icmp eq i8 %412, 1
  br i1 %413, label %block_4009db, label %block_400888

block_4007f7:                                     ; preds = %block_4007eb
  %414 = load i64, i64* %PC
  %415 = add i64 %414, 10
  store i64 %415, i64* %PC
  store i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 12), i64* %RSI, align 8, !tbaa !2428
  %416 = load i64, i64* %PC
  %417 = add i64 %416, 5
  store i64 %417, i64* %PC
  store i64 2, i64* %RDX, align 8, !tbaa !2428
  %418 = load i64, i64* %PC
  %419 = add i64 %418, 5
  store i64 %419, i64* %PC
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %420 = load i64, i64* %RBP
  %421 = sub i64 %420, 40
  %422 = load i64, i64* %PC
  %423 = add i64 %422, 4
  store i64 %423, i64* %PC
  %424 = inttoptr i64 %421 to i64*
  %425 = load i64, i64* %424
  store i64 %425, i64* %RDI, align 8, !tbaa !2428
  %426 = load i64, i64* %PC
  %427 = add i64 %426, 865
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
  %438 = call %struct.Memory* @sub_400b70_fourn_renamed_(%struct.State* %0, i64 %437, %struct.Memory* %MEMORY.1)
  %439 = load i64, i64* %PC
  %440 = add i64 %439, 10
  store i64 %440, i64* %PC
  store i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 12), i64* %RSI, align 8, !tbaa !2428
  %441 = load i64, i64* %PC
  %442 = add i64 %441, 5
  store i64 %442, i64* %PC
  store i64 2, i64* %RDX, align 8, !tbaa !2428
  %443 = load i64, i64* %PC
  %444 = add i64 %443, 5
  store i64 %444, i64* %PC
  store i64 4294967295, i64* %RCX, align 8, !tbaa !2428
  %445 = load i64, i64* %RBP
  %446 = sub i64 %445, 40
  %447 = load i64, i64* %PC
  %448 = add i64 %447, 4
  store i64 %448, i64* %PC
  %449 = inttoptr i64 %446 to i64*
  %450 = load i64, i64* %449
  store i64 %450, i64* %RDI, align 8, !tbaa !2428
  %451 = load i64, i64* %PC
  %452 = add i64 %451, 836
  %453 = load i64, i64* %PC
  %454 = add i64 %453, 5
  %455 = load i64, i64* %PC
  %456 = add i64 %455, 5
  store i64 %456, i64* %PC
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %458 = load i64, i64* %457, align 8, !tbaa !2428
  %459 = add i64 %458, -8
  %460 = inttoptr i64 %459 to i64*
  store i64 %454, i64* %460
  store i64 %459, i64* %457, align 8, !tbaa !2428
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %452, i64* %461, align 8, !tbaa !2428
  %462 = load i64, i64* %PC
  %463 = call %struct.Memory* @sub_400b70_fourn_renamed_(%struct.State* %0, i64 %462, %struct.Memory* %438)
  %464 = load i64, i64* %RBP
  %465 = sub i64 %464, 8
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
  %483 = call i32 @llvm.ctpop.i32(i32 %482) #17
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
  %508 = sub i64 %507, 8
  %509 = load i32, i32* %EAX
  %510 = zext i32 %509 to i64
  %511 = load i64, i64* %PC
  %512 = add i64 %511, 3
  store i64 %512, i64* %PC
  %513 = inttoptr i64 %508 to i32*
  store i32 %509, i32* %513
  %514 = load i64, i64* %PC
  %515 = sub i64 %514, 79
  %516 = load i64, i64* %PC
  %517 = add i64 %516, 5
  store i64 %517, i64* %PC
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %515, i64* %518, align 8, !tbaa !2428
  br label %block_4007eb

block_4007eb:                                     ; preds = %block_4007e4, %block_4007f7
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.11, %block_4007e4 ], [ %463, %block_4007f7 ]
  %519 = load i64, i64* %RBP
  %520 = sub i64 %519, 8
  %521 = load i64, i64* %PC
  %522 = add i64 %521, 3
  store i64 %522, i64* %PC
  %523 = inttoptr i64 %520 to i32*
  %524 = load i32, i32* %523
  %525 = zext i32 %524 to i64
  store i64 %525, i64* %RAX, align 8, !tbaa !2428
  %526 = load i32, i32* %EAX
  %527 = zext i32 %526 to i64
  %528 = load i64, i64* %RBP
  %529 = sub i64 %528, 28
  %530 = load i64, i64* %PC
  %531 = add i64 %530, 3
  store i64 %531, i64* %PC
  %532 = inttoptr i64 %529 to i32*
  %533 = load i32, i32* %532
  %534 = sub i32 %526, %533
  %535 = icmp ult i32 %526, %533
  %536 = zext i1 %535 to i8
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %536, i8* %537, align 1, !tbaa !2432
  %538 = and i32 %534, 255
  %539 = call i32 @llvm.ctpop.i32(i32 %538) #17
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %542, i8* %543, align 1, !tbaa !2446
  %544 = xor i32 %533, %526
  %545 = xor i32 %544, %534
  %546 = lshr i32 %545, 4
  %547 = trunc i32 %546 to i8
  %548 = and i8 %547, 1
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %548, i8* %549, align 1, !tbaa !2447
  %550 = icmp eq i32 %534, 0
  %551 = zext i1 %550 to i8
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %551, i8* %552, align 1, !tbaa !2448
  %553 = lshr i32 %534, 31
  %554 = trunc i32 %553 to i8
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %554, i8* %555, align 1, !tbaa !2449
  %556 = lshr i32 %526, 31
  %557 = lshr i32 %533, 31
  %558 = xor i32 %557, %556
  %559 = xor i32 %553, %556
  %560 = add nuw nsw i32 %559, %558
  %561 = icmp eq i32 %560, 2
  %562 = zext i1 %561 to i8
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %562, i8* %563, align 1, !tbaa !2450
  %564 = load i64, i64* %PC
  %565 = add i64 %564, 78
  %566 = load i64, i64* %PC
  %567 = add i64 %566, 6
  %568 = load i64, i64* %PC
  %569 = add i64 %568, 6
  store i64 %569, i64* %PC
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %571 = load i8, i8* %570, align 1, !tbaa !2449
  %572 = icmp ne i8 %571, 0
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %574 = load i8, i8* %573, align 1, !tbaa !2450
  %575 = icmp ne i8 %574, 0
  %576 = xor i1 %572, %575
  %577 = xor i1 %576, true
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %580 = select i1 %576, i64 %567, i64 %565
  store i64 %580, i64* %579, align 8, !tbaa !2428
  %581 = load i8, i8* %BRANCH_TAKEN
  %582 = icmp eq i8 %581, 1
  br i1 %582, label %block_40083f, label %block_4007f7

block_4008fb:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %583 = sub i64 %2883, 80
  %584 = load i64, i64* %PC
  %585 = add i64 %584, 5
  store i64 %585, i64* %PC
  %586 = inttoptr i64 %583 to double*
  %587 = load double, double* %586
  %588 = bitcast i8* %2882 to double*
  store double %587, double* %588, align 1, !tbaa !2452
  %589 = getelementptr inbounds i8, i8* %2882, i64 8
  %590 = bitcast i8* %589 to double*
  store double 0.000000e+00, double* %590, align 1, !tbaa !2452
  %591 = load i64, i64* %RBP
  %592 = sub i64 %591, 152
  %593 = bitcast %union.vec128_t* %XMM0 to i8*
  %594 = load i64, i64* %PC
  %595 = add i64 %594, 8
  store i64 %595, i64* %PC
  %596 = bitcast i8* %593 to double*
  %597 = load double, double* %596, align 1
  %598 = inttoptr i64 %592 to double*
  store double %597, double* %598
  br label %block_400908

block_400965:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2
  %599 = sub i64 %1122, 120
  %600 = load i64, i64* %PC
  %601 = add i64 %600, 5
  store i64 %601, i64* %PC
  %602 = inttoptr i64 %599 to double*
  %603 = load double, double* %602
  %604 = bitcast i8* %1121 to double*
  store double %603, double* %604, align 1, !tbaa !2452
  %605 = getelementptr inbounds i8, i8* %1121, i64 8
  %606 = bitcast i8* %605 to double*
  store double 0.000000e+00, double* %606, align 1, !tbaa !2452
  %607 = load i64, i64* %RBP
  %608 = sub i64 %607, 168
  %609 = bitcast %union.vec128_t* %XMM0 to i8*
  %610 = load i64, i64* %PC
  %611 = add i64 %610, 8
  store i64 %611, i64* %PC
  %612 = bitcast i8* %609 to double*
  %613 = load double, double* %612, align 1
  %614 = inttoptr i64 %608 to double*
  store double %613, double* %614
  %615 = load i64, i64* %PC
  %616 = add i64 %615, 18
  %617 = load i64, i64* %PC
  %618 = add i64 %617, 5
  store i64 %618, i64* %PC
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %616, i64* %619, align 8, !tbaa !2428
  br label %block_400984

block_4007e4:                                     ; preds = %block_40075d
  %620 = sub i64 %2344, 8
  %621 = load i64, i64* %PC
  %622 = add i64 %621, 7
  store i64 %622, i64* %PC
  %623 = inttoptr i64 %620 to i32*
  store i32 0, i32* %623
  br label %block_4007eb

block_4009db:                                     ; preds = %block_40087a
  %624 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %625 = load i64, i64* %PC
  %626 = add i64 %625, 8
  store i64 %626, i64* %PC
  %627 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 24) to double*)
  %628 = bitcast i8* %624 to double*
  store double %627, double* %628, align 1, !tbaa !2452
  %629 = getelementptr inbounds i8, i8* %624, i64 8
  %630 = bitcast i8* %629 to double*
  store double 0.000000e+00, double* %630, align 1, !tbaa !2452
  %631 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %632 = load i64, i64* %RBP
  %633 = sub i64 %632, 80
  %634 = load i64, i64* %PC
  %635 = add i64 %634, 5
  store i64 %635, i64* %PC
  %636 = inttoptr i64 %633 to double*
  %637 = load double, double* %636
  %638 = bitcast i8* %631 to double*
  store double %637, double* %638, align 1, !tbaa !2452
  %639 = getelementptr inbounds i8, i8* %631, i64 8
  %640 = bitcast i8* %639 to double*
  store double 0.000000e+00, double* %640, align 1, !tbaa !2452
  %641 = load i64, i64* %RBP
  %642 = sub i64 %641, 64
  %643 = bitcast %union.vec128_t* %XMM1 to i8*
  %644 = load i64, i64* %PC
  %645 = add i64 %644, 5
  store i64 %645, i64* %PC
  %646 = bitcast i8* %643 to double*
  %647 = load double, double* %646, align 1
  %648 = inttoptr i64 %642 to double*
  store double %647, double* %648
  %649 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %650 = load i64, i64* %RBP
  %651 = sub i64 %650, 88
  %652 = load i64, i64* %PC
  %653 = add i64 %652, 5
  store i64 %653, i64* %PC
  %654 = inttoptr i64 %651 to double*
  %655 = load double, double* %654
  %656 = bitcast i8* %649 to double*
  store double %655, double* %656, align 1, !tbaa !2452
  %657 = getelementptr inbounds i8, i8* %649, i64 8
  %658 = bitcast i8* %657 to double*
  store double 0.000000e+00, double* %658, align 1, !tbaa !2452
  %659 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %660 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %661 = load i64, i64* %RBP
  %662 = sub i64 %661, 80
  %663 = load i64, i64* %PC
  %664 = add i64 %663, 5
  store i64 %664, i64* %PC
  %665 = bitcast i8* %660 to double*
  %666 = load double, double* %665, align 1
  %667 = getelementptr inbounds i8, i8* %660, i64 8
  %668 = bitcast i8* %667 to i64*
  %669 = load i64, i64* %668, align 1
  %670 = inttoptr i64 %662 to double*
  %671 = load double, double* %670
  %672 = fsub double %666, %671
  %673 = bitcast i8* %659 to double*
  store double %672, double* %673, align 1, !tbaa !2452
  %674 = getelementptr inbounds i8, i8* %659, i64 8
  %675 = bitcast i8* %674 to i64*
  store i64 %669, i64* %675, align 1, !tbaa !2452
  %676 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %677 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %678 = bitcast %union.vec128_t* %XMM1 to i8*
  %679 = load i64, i64* %PC
  %680 = add i64 %679, 4
  store i64 %680, i64* %PC
  %681 = bitcast i8* %677 to double*
  %682 = load double, double* %681, align 1
  %683 = getelementptr inbounds i8, i8* %677, i64 8
  %684 = bitcast i8* %683 to i64*
  %685 = load i64, i64* %684, align 1
  %686 = bitcast i8* %678 to double*
  %687 = load double, double* %686, align 1
  %688 = fdiv double %682, %687
  %689 = bitcast i8* %676 to double*
  store double %688, double* %689, align 1, !tbaa !2452
  %690 = getelementptr inbounds i8, i8* %676, i64 8
  %691 = bitcast i8* %690 to i64*
  store i64 %685, i64* %691, align 1, !tbaa !2452
  %692 = load i64, i64* %RBP
  %693 = sub i64 %692, 72
  %694 = bitcast %union.vec128_t* %XMM0 to i8*
  %695 = load i64, i64* %PC
  %696 = add i64 %695, 5
  store i64 %696, i64* %PC
  %697 = bitcast i8* %694 to double*
  %698 = load double, double* %697, align 1
  %699 = inttoptr i64 %693 to double*
  store double %698, double* %699
  %700 = load i64, i64* %RBP
  %701 = sub i64 %700, 24
  %702 = load i64, i64* %PC
  %703 = add i64 %702, 7
  store i64 %703, i64* %PC
  %704 = inttoptr i64 %701 to i32*
  store i32 0, i32* %704
  %705 = load i64, i64* %RBP
  %706 = sub i64 %705, 8
  %707 = load i64, i64* %PC
  %708 = add i64 %707, 7
  store i64 %708, i64* %PC
  %709 = inttoptr i64 %706 to i32*
  store i32 0, i32* %709
  br label %block_400a0e

block_400ada:                                     ; preds = %block_400a83, %block_400aa4
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.14, %block_400a83 ], [ %1892, %block_400aa4 ]
  %710 = load i64, i64* %PC
  %711 = add i64 %710, 5
  %712 = load i64, i64* %PC
  %713 = add i64 %712, 5
  store i64 %713, i64* %PC
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %711, i64* %714, align 8, !tbaa !2428
  %715 = load i64, i64* %RBP
  %716 = sub i64 %715, 12
  %717 = load i64, i64* %PC
  %718 = add i64 %717, 3
  store i64 %718, i64* %PC
  %719 = inttoptr i64 %716 to i32*
  %720 = load i32, i32* %719
  %721 = zext i32 %720 to i64
  store i64 %721, i64* %RAX, align 8, !tbaa !2428
  %722 = load i64, i64* %RAX
  %723 = load i64, i64* %PC
  %724 = add i64 %723, 3
  store i64 %724, i64* %PC
  %725 = trunc i64 %722 to i32
  %726 = add i32 1, %725
  %727 = zext i32 %726 to i64
  store i64 %727, i64* %RAX, align 8, !tbaa !2428
  %728 = icmp ult i32 %726, %725
  %729 = icmp ult i32 %726, 1
  %730 = or i1 %728, %729
  %731 = zext i1 %730 to i8
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %731, i8* %732, align 1, !tbaa !2432
  %733 = and i32 %726, 255
  %734 = call i32 @llvm.ctpop.i32(i32 %733) #17
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  %737 = xor i8 %736, 1
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %737, i8* %738, align 1, !tbaa !2446
  %739 = xor i64 1, %722
  %740 = trunc i64 %739 to i32
  %741 = xor i32 %740, %726
  %742 = lshr i32 %741, 4
  %743 = trunc i32 %742 to i8
  %744 = and i8 %743, 1
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %744, i8* %745, align 1, !tbaa !2447
  %746 = icmp eq i32 %726, 0
  %747 = zext i1 %746 to i8
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %747, i8* %748, align 1, !tbaa !2448
  %749 = lshr i32 %726, 31
  %750 = trunc i32 %749 to i8
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %750, i8* %751, align 1, !tbaa !2449
  %752 = lshr i32 %725, 31
  %753 = xor i32 %749, %752
  %754 = add nuw nsw i32 %753, %749
  %755 = icmp eq i32 %754, 2
  %756 = zext i1 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %756, i8* %757, align 1, !tbaa !2450
  %758 = load i64, i64* %RBP
  %759 = sub i64 %758, 12
  %760 = load i32, i32* %EAX
  %761 = zext i32 %760 to i64
  %762 = load i64, i64* %PC
  %763 = add i64 %762, 3
  store i64 %763, i64* %PC
  %764 = inttoptr i64 %759 to i32*
  store i32 %760, i32* %764
  %765 = load i64, i64* %PC
  %766 = sub i64 %765, 199
  %767 = load i64, i64* %PC
  %768 = add i64 %767, 5
  store i64 %768, i64* %PC
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %766, i64* %769, align 8, !tbaa !2428
  br label %block_400a21

block_400770:                                     ; preds = %block_400769, %block_4007be
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.11, %block_400769 ], [ %MEMORY.8, %block_4007be ]
  %770 = load i64, i64* %RBP
  %771 = sub i64 %770, 12
  %772 = load i64, i64* %PC
  %773 = add i64 %772, 3
  store i64 %773, i64* %PC
  %774 = inttoptr i64 %771 to i32*
  %775 = load i32, i32* %774
  %776 = zext i32 %775 to i64
  store i64 %776, i64* %RAX, align 8, !tbaa !2428
  %777 = load i32, i32* %EAX
  %778 = zext i32 %777 to i64
  %779 = load i64, i64* %RBP
  %780 = sub i64 %779, 32
  %781 = load i64, i64* %PC
  %782 = add i64 %781, 3
  store i64 %782, i64* %PC
  %783 = inttoptr i64 %780 to i32*
  %784 = load i32, i32* %783
  %785 = sub i32 %777, %784
  %786 = icmp ult i32 %777, %784
  %787 = zext i1 %786 to i8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %787, i8* %788, align 1, !tbaa !2432
  %789 = and i32 %785, 255
  %790 = call i32 @llvm.ctpop.i32(i32 %789) #17
  %791 = trunc i32 %790 to i8
  %792 = and i8 %791, 1
  %793 = xor i8 %792, 1
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %793, i8* %794, align 1, !tbaa !2446
  %795 = xor i32 %784, %777
  %796 = xor i32 %795, %785
  %797 = lshr i32 %796, 4
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %799, i8* %800, align 1, !tbaa !2447
  %801 = icmp eq i32 %785, 0
  %802 = zext i1 %801 to i8
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %802, i8* %803, align 1, !tbaa !2448
  %804 = lshr i32 %785, 31
  %805 = trunc i32 %804 to i8
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %805, i8* %806, align 1, !tbaa !2449
  %807 = lshr i32 %777, 31
  %808 = lshr i32 %784, 31
  %809 = xor i32 %808, %807
  %810 = xor i32 %804, %807
  %811 = add nuw nsw i32 %810, %809
  %812 = icmp eq i32 %811, 2
  %813 = zext i1 %812 to i8
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %813, i8* %814, align 1, !tbaa !2450
  %815 = load i64, i64* %PC
  %816 = add i64 %815, 91
  %817 = load i64, i64* %PC
  %818 = add i64 %817, 6
  %819 = load i64, i64* %PC
  %820 = add i64 %819, 6
  store i64 %820, i64* %PC
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %822 = load i8, i8* %821, align 1, !tbaa !2449
  %823 = icmp ne i8 %822, 0
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %825 = load i8, i8* %824, align 1, !tbaa !2450
  %826 = icmp ne i8 %825, 0
  %827 = xor i1 %823, %826
  %828 = xor i1 %827, true
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %831 = select i1 %827, i64 %818, i64 %816
  store i64 %831, i64* %830, align 8, !tbaa !2428
  %832 = load i8, i8* %BRANCH_TAKEN
  %833 = icmp eq i8 %832, 1
  br i1 %833, label %block_4007d1, label %block_40077c

block_400a21:                                     ; preds = %block_400a1a, %block_400ada
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.12, %block_400a1a ], [ %MEMORY.2, %block_400ada ]
  %834 = load i64, i64* %RBP
  %835 = sub i64 %834, 12
  %836 = load i64, i64* %PC
  %837 = add i64 %836, 3
  store i64 %837, i64* %PC
  %838 = inttoptr i64 %835 to i32*
  %839 = load i32, i32* %838
  %840 = zext i32 %839 to i64
  store i64 %840, i64* %RAX, align 8, !tbaa !2428
  %841 = load i32, i32* %EAX
  %842 = zext i32 %841 to i64
  %843 = load i64, i64* %RBP
  %844 = sub i64 %843, 32
  %845 = load i64, i64* %PC
  %846 = add i64 %845, 3
  store i64 %846, i64* %PC
  %847 = inttoptr i64 %844 to i32*
  %848 = load i32, i32* %847
  %849 = sub i32 %841, %848
  %850 = icmp ult i32 %841, %848
  %851 = zext i1 %850 to i8
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %851, i8* %852, align 1, !tbaa !2432
  %853 = and i32 %849, 255
  %854 = call i32 @llvm.ctpop.i32(i32 %853) #17
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  %857 = xor i8 %856, 1
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %857, i8* %858, align 1, !tbaa !2446
  %859 = xor i32 %848, %841
  %860 = xor i32 %859, %849
  %861 = lshr i32 %860, 4
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %863, i8* %864, align 1, !tbaa !2447
  %865 = icmp eq i32 %849, 0
  %866 = zext i1 %865 to i8
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %866, i8* %867, align 1, !tbaa !2448
  %868 = lshr i32 %849, 31
  %869 = trunc i32 %868 to i8
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %869, i8* %870, align 1, !tbaa !2449
  %871 = lshr i32 %841, 31
  %872 = lshr i32 %848, 31
  %873 = xor i32 %872, %871
  %874 = xor i32 %868, %871
  %875 = add nuw nsw i32 %874, %873
  %876 = icmp eq i32 %875, 2
  %877 = zext i1 %876 to i8
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %877, i8* %878, align 1, !tbaa !2450
  %879 = load i64, i64* %PC
  %880 = add i64 %879, 198
  %881 = load i64, i64* %PC
  %882 = add i64 %881, 6
  %883 = load i64, i64* %PC
  %884 = add i64 %883, 6
  store i64 %884, i64* %PC
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %886 = load i8, i8* %885, align 1, !tbaa !2449
  %887 = icmp ne i8 %886, 0
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %889 = load i8, i8* %888, align 1, !tbaa !2450
  %890 = icmp ne i8 %889, 0
  %891 = xor i1 %887, %890
  %892 = xor i1 %891, true
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %895 = select i1 %891, i64 %882, i64 %880
  store i64 %895, i64* %894, align 8, !tbaa !2428
  %896 = load i8, i8* %BRANCH_TAKEN
  %897 = icmp eq i8 %896, 1
  %898 = load i64, i64* %PC
  br i1 %897, label %block_400aed, label %block_400a2d

block_400b56:                                     ; preds = %block_400b0a, %block_400b31
  %MEMORY.5 = phi %struct.Memory* [ %1338, %block_400b31 ], [ %2619, %block_400b0a ]
  %899 = load i64, i64* %RAX
  %900 = load i32, i32* %EAX
  %901 = zext i32 %900 to i64
  %902 = load i64, i64* %PC
  %903 = add i64 %902, 2
  store i64 %903, i64* %PC
  %904 = xor i64 %901, %899
  %905 = trunc i64 %904 to i32
  %906 = and i64 %904, 4294967295
  store i64 %906, i64* %RAX, align 8, !tbaa !2428
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %907, align 1, !tbaa !2432
  %908 = and i32 %905, 255
  %909 = call i32 @llvm.ctpop.i32(i32 %908) #17
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  %912 = xor i8 %911, 1
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %912, i8* %913, align 1, !tbaa !2446
  %914 = icmp eq i32 %905, 0
  %915 = zext i1 %914 to i8
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %915, i8* %916, align 1, !tbaa !2448
  %917 = lshr i32 %905, 31
  %918 = trunc i32 %917 to i8
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %918, i8* %919, align 1, !tbaa !2449
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %920, align 1, !tbaa !2450
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %921, align 1, !tbaa !2447
  %922 = load i64, i64* %RSP
  %923 = load i64, i64* %PC
  %924 = add i64 %923, 7
  store i64 %924, i64* %PC
  %925 = add i64 192, %922
  store i64 %925, i64* %RSP, align 8, !tbaa !2428
  %926 = icmp ult i64 %925, %922
  %927 = icmp ult i64 %925, 192
  %928 = or i1 %926, %927
  %929 = zext i1 %928 to i8
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %929, i8* %930, align 1, !tbaa !2432
  %931 = trunc i64 %925 to i32
  %932 = and i32 %931, 255
  %933 = call i32 @llvm.ctpop.i32(i32 %932) #17
  %934 = trunc i32 %933 to i8
  %935 = and i8 %934, 1
  %936 = xor i8 %935, 1
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %936, i8* %937, align 1, !tbaa !2446
  %938 = xor i64 192, %922
  %939 = xor i64 %938, %925
  %940 = lshr i64 %939, 4
  %941 = trunc i64 %940 to i8
  %942 = and i8 %941, 1
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %942, i8* %943, align 1, !tbaa !2447
  %944 = icmp eq i64 %925, 0
  %945 = zext i1 %944 to i8
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %945, i8* %946, align 1, !tbaa !2448
  %947 = lshr i64 %925, 63
  %948 = trunc i64 %947 to i8
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %948, i8* %949, align 1, !tbaa !2449
  %950 = lshr i64 %922, 63
  %951 = xor i64 %947, %950
  %952 = add nuw nsw i64 %951, %947
  %953 = icmp eq i64 %952, 2
  %954 = zext i1 %953 to i8
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %954, i8* %955, align 1, !tbaa !2450
  %956 = load i64, i64* %PC
  %957 = add i64 %956, 1
  store i64 %957, i64* %PC
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %959 = load i64, i64* %958, align 8, !tbaa !2428
  %960 = add i64 %959, 8
  %961 = inttoptr i64 %959 to i64*
  %962 = load i64, i64* %961
  store i64 %962, i64* %RBP, align 8, !tbaa !2428
  store i64 %960, i64* %958, align 8, !tbaa !2428
  %963 = load i64, i64* %PC
  %964 = add i64 %963, 1
  store i64 %964, i64* %PC
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %967 = load i64, i64* %966, align 8, !tbaa !2428
  %968 = inttoptr i64 %967 to i64*
  %969 = load i64, i64* %968
  store i64 %969, i64* %965, align 8, !tbaa !2428
  %970 = add i64 %967, 8
  store i64 %970, i64* %966, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.5

block_4007d1:                                     ; preds = %block_400770
  %971 = load i64, i64* %PC
  %972 = add i64 %971, 5
  %973 = load i64, i64* %PC
  %974 = add i64 %973, 5
  store i64 %974, i64* %PC
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %972, i64* %975, align 8, !tbaa !2428
  %976 = load i64, i64* %RBP
  %977 = sub i64 %976, 8
  %978 = load i64, i64* %PC
  %979 = add i64 %978, 3
  store i64 %979, i64* %PC
  %980 = inttoptr i64 %977 to i32*
  %981 = load i32, i32* %980
  %982 = zext i32 %981 to i64
  store i64 %982, i64* %RAX, align 8, !tbaa !2428
  %983 = load i64, i64* %RAX
  %984 = load i64, i64* %PC
  %985 = add i64 %984, 3
  store i64 %985, i64* %PC
  %986 = trunc i64 %983 to i32
  %987 = add i32 1, %986
  %988 = zext i32 %987 to i64
  store i64 %988, i64* %RAX, align 8, !tbaa !2428
  %989 = icmp ult i32 %987, %986
  %990 = icmp ult i32 %987, 1
  %991 = or i1 %989, %990
  %992 = zext i1 %991 to i8
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %992, i8* %993, align 1, !tbaa !2432
  %994 = and i32 %987, 255
  %995 = call i32 @llvm.ctpop.i32(i32 %994) #17
  %996 = trunc i32 %995 to i8
  %997 = and i8 %996, 1
  %998 = xor i8 %997, 1
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %998, i8* %999, align 1, !tbaa !2446
  %1000 = xor i64 1, %983
  %1001 = trunc i64 %1000 to i32
  %1002 = xor i32 %1001, %987
  %1003 = lshr i32 %1002, 4
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1005, i8* %1006, align 1, !tbaa !2447
  %1007 = icmp eq i32 %987, 0
  %1008 = zext i1 %1007 to i8
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1008, i8* %1009, align 1, !tbaa !2448
  %1010 = lshr i32 %987, 31
  %1011 = trunc i32 %1010 to i8
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1011, i8* %1012, align 1, !tbaa !2449
  %1013 = lshr i32 %986, 31
  %1014 = xor i32 %1010, %1013
  %1015 = add nuw nsw i32 %1014, %1010
  %1016 = icmp eq i32 %1015, 2
  %1017 = zext i1 %1016 to i8
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1017, i8* %1018, align 1, !tbaa !2450
  %1019 = load i64, i64* %RBP
  %1020 = sub i64 %1019, 8
  %1021 = load i32, i32* %EAX
  %1022 = zext i32 %1021 to i64
  %1023 = load i64, i64* %PC
  %1024 = add i64 %1023, 3
  store i64 %1024, i64* %PC
  %1025 = inttoptr i64 %1020 to i32*
  store i32 %1021, i32* %1025
  %1026 = load i64, i64* %PC
  %1027 = sub i64 %1026, 130
  %1028 = load i64, i64* %PC
  %1029 = add i64 %1028, 5
  store i64 %1029, i64* %PC
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1027, i64* %1030, align 8, !tbaa !2428
  br label %block_40075d

block_400944:                                     ; preds = %block_400937, %block_400925
  %MEMORY.6 = phi %struct.Memory* [ %1287, %block_400937 ], [ %1287, %block_400925 ]
  %1031 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1032 = load i64, i64* %RBP
  %1033 = sub i64 %1032, 160
  %1034 = load i64, i64* %PC
  %1035 = add i64 %1034, 8
  store i64 %1035, i64* %PC
  %1036 = inttoptr i64 %1033 to double*
  %1037 = load double, double* %1036
  %1038 = bitcast i8* %1031 to double*
  store double %1037, double* %1038, align 1, !tbaa !2452
  %1039 = getelementptr inbounds i8, i8* %1031, i64 8
  %1040 = bitcast i8* %1039 to double*
  store double 0.000000e+00, double* %1040, align 1, !tbaa !2452
  %1041 = load i64, i64* %RBP
  %1042 = sub i64 %1041, 88
  %1043 = bitcast %union.vec128_t* %XMM0 to i8*
  %1044 = load i64, i64* %PC
  %1045 = add i64 %1044, 5
  store i64 %1045, i64* %PC
  %1046 = bitcast i8* %1043 to double*
  %1047 = load double, double* %1046, align 1
  %1048 = inttoptr i64 %1042 to double*
  store double %1047, double* %1048
  %1049 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1050 = load i64, i64* %RBP
  %1051 = sub i64 %1050, 120
  %1052 = load i64, i64* %PC
  %1053 = add i64 %1052, 5
  store i64 %1053, i64* %PC
  %1054 = inttoptr i64 %1051 to double*
  %1055 = load double, double* %1054
  %1056 = bitcast i8* %1049 to double*
  store double %1055, double* %1056, align 1, !tbaa !2452
  %1057 = getelementptr inbounds i8, i8* %1049, i64 8
  %1058 = bitcast i8* %1057 to double*
  store double 0.000000e+00, double* %1058, align 1, !tbaa !2452
  %1059 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1060 = load i64, i64* %RBP
  %1061 = sub i64 %1060, 96
  %1062 = load i64, i64* %PC
  %1063 = add i64 %1062, 5
  store i64 %1063, i64* %PC
  %1064 = inttoptr i64 %1061 to double*
  %1065 = load double, double* %1064
  %1066 = bitcast i8* %1059 to double*
  store double %1065, double* %1066, align 1, !tbaa !2452
  %1067 = getelementptr inbounds i8, i8* %1059, i64 8
  %1068 = bitcast i8* %1067 to double*
  store double 0.000000e+00, double* %1068, align 1, !tbaa !2452
  %1069 = bitcast %union.vec128_t* %XMM1 to i8*
  %1070 = bitcast %union.vec128_t* %XMM0 to i8*
  %1071 = load i64, i64* %PC
  %1072 = add i64 %1071, 4
  store i64 %1072, i64* %PC
  %1073 = bitcast i8* %1069 to double*
  %1074 = load double, double* %1073, align 1
  %1075 = bitcast i8* %1070 to double*
  %1076 = load double, double* %1075, align 1
  %1077 = fcmp uno double %1074, %1076
  br i1 %1077, label %1078, label %1090

; <label>:1078:                                   ; preds = %block_400944
  %1079 = fadd double %1074, %1076
  %1080 = bitcast double %1079 to i64
  %1081 = and i64 %1080, 9221120237041090560
  %1082 = icmp eq i64 %1081, 9218868437227405312
  %1083 = and i64 %1080, 2251799813685247
  %1084 = icmp ne i64 %1083, 0
  %1085 = and i1 %1082, %1084
  br i1 %1085, label %1086, label %1096

; <label>:1086:                                   ; preds = %1078
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1088 = load i64, i64* %1087, align 8, !tbaa !2428
  %1089 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1088, %struct.Memory* %MEMORY.6) #18
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2

; <label>:1090:                                   ; preds = %block_400944
  %1091 = fcmp ogt double %1074, %1076
  br i1 %1091, label %1096, label %1092

; <label>:1092:                                   ; preds = %1090
  %1093 = fcmp olt double %1074, %1076
  br i1 %1093, label %1096, label %1094

; <label>:1094:                                   ; preds = %1092
  %1095 = fcmp oeq double %1074, %1076
  br i1 %1095, label %1096, label %1103

; <label>:1096:                                   ; preds = %1094, %1092, %1090, %1078
  %1097 = phi i8 [ 0, %1090 ], [ 0, %1092 ], [ 1, %1094 ], [ 1, %1078 ]
  %1098 = phi i8 [ 0, %1090 ], [ 0, %1092 ], [ 0, %1094 ], [ 1, %1078 ]
  %1099 = phi i8 [ 0, %1090 ], [ 1, %1092 ], [ 0, %1094 ], [ 1, %1078 ]
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1097, i8* %1100, align 1, !tbaa !2451
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1098, i8* %1101, align 1, !tbaa !2451
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1099, i8* %1102, align 1, !tbaa !2451
  br label %1103

; <label>:1103:                                   ; preds = %1096, %1094
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1104, align 1, !tbaa !2451
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1105, align 1, !tbaa !2451
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1106, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2: ; preds = %1086, %1103
  %1107 = phi %struct.Memory* [ %1089, %1086 ], [ %MEMORY.6, %1103 ]
  %1108 = load i64, i64* %PC
  %1109 = add i64 %1108, 24
  %1110 = load i64, i64* %PC
  %1111 = add i64 %1110, 6
  %1112 = load i64, i64* %PC
  %1113 = add i64 %1112, 6
  store i64 %1113, i64* %PC
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1115 = load i8, i8* %1114, align 1, !tbaa !2432
  store i8 %1115, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1117 = icmp ne i8 %1115, 0
  %1118 = select i1 %1117, i64 %1109, i64 %1111
  store i64 %1118, i64* %1116, align 8, !tbaa !2428
  %1119 = load i8, i8* %BRANCH_TAKEN
  %1120 = icmp eq i8 %1119, 1
  %1121 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1122 = load i64, i64* %RBP
  br i1 %1120, label %block_400977, label %block_400965

block_40083f:                                     ; preds = %block_4007eb
  %1123 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1124 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1125 = bitcast %union.vec128_t* %XMM0 to i8*
  %1126 = load i64, i64* %PC
  %1127 = add i64 %1126, 3
  store i64 %1127, i64* %PC
  %1128 = bitcast i8* %1124 to i64*
  %1129 = load i64, i64* %1128, align 1
  %1130 = getelementptr inbounds i8, i8* %1124, i64 8
  %1131 = bitcast i8* %1130 to i64*
  %1132 = load i64, i64* %1131, align 1
  %1133 = bitcast i8* %1125 to i64*
  %1134 = load i64, i64* %1133, align 1
  %1135 = getelementptr inbounds i8, i8* %1125, i64 8
  %1136 = bitcast i8* %1135 to i64*
  %1137 = load i64, i64* %1136, align 1
  %1138 = xor i64 %1134, %1129
  %1139 = xor i64 %1137, %1132
  %1140 = trunc i64 %1138 to i32
  %1141 = lshr i64 %1138, 32
  %1142 = trunc i64 %1141 to i32
  %1143 = bitcast i8* %1123 to i32*
  store i32 %1140, i32* %1143, align 1, !tbaa !2454
  %1144 = getelementptr inbounds i8, i8* %1123, i64 4
  %1145 = bitcast i8* %1144 to i32*
  store i32 %1142, i32* %1145, align 1, !tbaa !2454
  %1146 = trunc i64 %1139 to i32
  %1147 = getelementptr inbounds i8, i8* %1123, i64 8
  %1148 = bitcast i8* %1147 to i32*
  store i32 %1146, i32* %1148, align 1, !tbaa !2454
  %1149 = lshr i64 %1139, 32
  %1150 = trunc i64 %1149 to i32
  %1151 = getelementptr inbounds i8, i8* %1123, i64 12
  %1152 = bitcast i8* %1151 to i32*
  store i32 %1150, i32* %1152, align 1, !tbaa !2454
  %1153 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1154 = load i64, i64* %PC
  %1155 = add i64 %1154, 8
  store i64 %1155, i64* %PC
  %1156 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 8) to double*)
  %1157 = bitcast i8* %1153 to double*
  store double %1156, double* %1157, align 1, !tbaa !2452
  %1158 = getelementptr inbounds i8, i8* %1153, i64 8
  %1159 = bitcast i8* %1158 to double*
  store double 0.000000e+00, double* %1159, align 1, !tbaa !2452
  %1160 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %1161 = load i64, i64* %PC
  %1162 = add i64 %1161, 8
  store i64 %1162, i64* %PC
  %1163 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 16) to double*)
  %1164 = bitcast i8* %1160 to double*
  store double %1163, double* %1164, align 1, !tbaa !2452
  %1165 = getelementptr inbounds i8, i8* %1160, i64 8
  %1166 = bitcast i8* %1165 to double*
  store double 0.000000e+00, double* %1166, align 1, !tbaa !2452
  %1167 = load i64, i64* %RBP
  %1168 = sub i64 %1167, 80
  %1169 = bitcast %union.vec128_t* %XMM2 to i8*
  %1170 = load i64, i64* %PC
  %1171 = add i64 %1170, 5
  store i64 %1171, i64* %PC
  %1172 = bitcast i8* %1169 to double*
  %1173 = load double, double* %1172, align 1
  %1174 = inttoptr i64 %1168 to double*
  store double %1173, double* %1174
  %1175 = load i64, i64* %RBP
  %1176 = sub i64 %1175, 88
  %1177 = bitcast %union.vec128_t* %XMM1 to i8*
  %1178 = load i64, i64* %PC
  %1179 = add i64 %1178, 5
  store i64 %1179, i64* %PC
  %1180 = bitcast i8* %1177 to double*
  %1181 = load double, double* %1180, align 1
  %1182 = inttoptr i64 %1176 to double*
  store double %1181, double* %1182
  %1183 = load i64, i64* %RBP
  %1184 = sub i64 %1183, 96
  %1185 = bitcast %union.vec128_t* %XMM2 to i8*
  %1186 = load i64, i64* %PC
  %1187 = add i64 %1186, 5
  store i64 %1187, i64* %PC
  %1188 = bitcast i8* %1185 to double*
  %1189 = load double, double* %1188, align 1
  %1190 = inttoptr i64 %1184 to double*
  store double %1189, double* %1190
  %1191 = load i64, i64* %RBP
  %1192 = sub i64 %1191, 104
  %1193 = bitcast %union.vec128_t* %XMM1 to i8*
  %1194 = load i64, i64* %PC
  %1195 = add i64 %1194, 5
  store i64 %1195, i64* %PC
  %1196 = bitcast i8* %1193 to double*
  %1197 = load double, double* %1196, align 1
  %1198 = inttoptr i64 %1192 to double*
  store double %1197, double* %1198
  %1199 = load i64, i64* %RBP
  %1200 = sub i64 %1199, 128
  %1201 = bitcast %union.vec128_t* %XMM0 to i8*
  %1202 = load i64, i64* %PC
  %1203 = add i64 %1202, 5
  store i64 %1203, i64* %PC
  %1204 = bitcast i8* %1201 to double*
  %1205 = load double, double* %1204, align 1
  %1206 = inttoptr i64 %1200 to double*
  store double %1205, double* %1206
  %1207 = load i64, i64* %RBP
  %1208 = sub i64 %1207, 136
  %1209 = bitcast %union.vec128_t* %XMM0 to i8*
  %1210 = load i64, i64* %PC
  %1211 = add i64 %1210, 8
  store i64 %1211, i64* %PC
  %1212 = bitcast i8* %1209 to double*
  %1213 = load double, double* %1212, align 1
  %1214 = inttoptr i64 %1208 to double*
  store double %1213, double* %1214
  %1215 = load i64, i64* %RBP
  %1216 = sub i64 %1215, 8
  %1217 = load i64, i64* %PC
  %1218 = add i64 %1217, 7
  store i64 %1218, i64* %PC
  %1219 = inttoptr i64 %1216 to i32*
  store i32 1, i32* %1219
  br label %block_40087a

block_400908:                                     ; preds = %block_4008e9, %block_4008fb
  %MEMORY.7 = phi %struct.Memory* [ %2868, %block_4008fb ], [ %2868, %block_4008e9 ]
  %1220 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1221 = load i64, i64* %RBP
  %1222 = sub i64 %1221, 152
  %1223 = load i64, i64* %PC
  %1224 = add i64 %1223, 8
  store i64 %1224, i64* %PC
  %1225 = inttoptr i64 %1222 to double*
  %1226 = load double, double* %1225
  %1227 = bitcast i8* %1220 to double*
  store double %1226, double* %1227, align 1, !tbaa !2452
  %1228 = getelementptr inbounds i8, i8* %1220, i64 8
  %1229 = bitcast i8* %1228 to double*
  store double 0.000000e+00, double* %1229, align 1, !tbaa !2452
  %1230 = load i64, i64* %RBP
  %1231 = sub i64 %1230, 80
  %1232 = bitcast %union.vec128_t* %XMM0 to i8*
  %1233 = load i64, i64* %PC
  %1234 = add i64 %1233, 5
  store i64 %1234, i64* %PC
  %1235 = bitcast i8* %1232 to double*
  %1236 = load double, double* %1235, align 1
  %1237 = inttoptr i64 %1231 to double*
  store double %1236, double* %1237
  %1238 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1239 = load i64, i64* %RBP
  %1240 = sub i64 %1239, 112
  %1241 = load i64, i64* %PC
  %1242 = add i64 %1241, 5
  store i64 %1242, i64* %PC
  %1243 = inttoptr i64 %1240 to double*
  %1244 = load double, double* %1243
  %1245 = bitcast i8* %1238 to double*
  store double %1244, double* %1245, align 1, !tbaa !2452
  %1246 = getelementptr inbounds i8, i8* %1238, i64 8
  %1247 = bitcast i8* %1246 to double*
  store double 0.000000e+00, double* %1247, align 1, !tbaa !2452
  %1248 = bitcast %union.vec128_t* %XMM0 to i8*
  %1249 = load i64, i64* %RBP
  %1250 = sub i64 %1249, 88
  %1251 = load i64, i64* %PC
  %1252 = add i64 %1251, 5
  store i64 %1252, i64* %PC
  %1253 = bitcast i8* %1248 to double*
  %1254 = load double, double* %1253, align 1
  %1255 = inttoptr i64 %1250 to double*
  %1256 = load double, double* %1255
  %1257 = fcmp uno double %1254, %1256
  br i1 %1257, label %1258, label %1270

; <label>:1258:                                   ; preds = %block_400908
  %1259 = fadd double %1254, %1256
  %1260 = bitcast double %1259 to i64
  %1261 = and i64 %1260, 9221120237041090560
  %1262 = icmp eq i64 %1261, 9218868437227405312
  %1263 = and i64 %1260, 2251799813685247
  %1264 = icmp ne i64 %1263, 0
  %1265 = and i1 %1262, %1264
  br i1 %1265, label %1266, label %1276

; <label>:1266:                                   ; preds = %1258
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1268 = load i64, i64* %1267, align 8, !tbaa !2428
  %1269 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1268, %struct.Memory* %MEMORY.7) #18
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

; <label>:1270:                                   ; preds = %block_400908
  %1271 = fcmp ogt double %1254, %1256
  br i1 %1271, label %1276, label %1272

; <label>:1272:                                   ; preds = %1270
  %1273 = fcmp olt double %1254, %1256
  br i1 %1273, label %1276, label %1274

; <label>:1274:                                   ; preds = %1272
  %1275 = fcmp oeq double %1254, %1256
  br i1 %1275, label %1276, label %1283

; <label>:1276:                                   ; preds = %1274, %1272, %1270, %1258
  %1277 = phi i8 [ 0, %1270 ], [ 0, %1272 ], [ 1, %1274 ], [ 1, %1258 ]
  %1278 = phi i8 [ 0, %1270 ], [ 0, %1272 ], [ 0, %1274 ], [ 1, %1258 ]
  %1279 = phi i8 [ 0, %1270 ], [ 1, %1272 ], [ 0, %1274 ], [ 1, %1258 ]
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1277, i8* %1280, align 1, !tbaa !2451
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1278, i8* %1281, align 1, !tbaa !2451
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1279, i8* %1282, align 1, !tbaa !2451
  br label %1283

; <label>:1283:                                   ; preds = %1276, %1274
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1284, align 1, !tbaa !2451
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1285, align 1, !tbaa !2451
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1286, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %1266, %1283
  %1287 = phi %struct.Memory* [ %1269, %1266 ], [ %MEMORY.7, %1283 ]
  %1288 = load i64, i64* %PC
  %1289 = add i64 %1288, 24
  %1290 = load i64, i64* %PC
  %1291 = add i64 %1290, 6
  %1292 = load i64, i64* %PC
  %1293 = add i64 %1292, 6
  store i64 %1293, i64* %PC
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1295 = load i8, i8* %1294, align 1, !tbaa !2432
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1297 = load i8, i8* %1296, align 1, !tbaa !2448
  %1298 = or i8 %1297, %1295
  %1299 = icmp ne i8 %1298, 0
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1302 = select i1 %1299, i64 %1289, i64 %1291
  store i64 %1302, i64* %1301, align 8, !tbaa !2428
  %1303 = load i8, i8* %BRANCH_TAKEN
  %1304 = icmp eq i8 %1303, 1
  %1305 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1306 = load i64, i64* %RBP
  br i1 %1304, label %block_400937, label %block_400925

block_400b31:                                     ; preds = %block_400b00
  store i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 183), i64* %RSI, align 8, !tbaa !2428
  %1307 = load i64, i64* %PC
  %1308 = add i64 %1307, 8
  store i64 %1308, i64* %PC
  %1309 = load i64, i64* @stderr
  store i64 %1309, i64* %RDI, align 8, !tbaa !2428
  %1310 = load i64, i64* %RBP
  %1311 = sub i64 %1310, 28
  %1312 = load i64, i64* %PC
  %1313 = add i64 %1312, 3
  store i64 %1313, i64* %PC
  %1314 = inttoptr i64 %1311 to i32*
  %1315 = load i32, i32* %1314
  %1316 = zext i32 %1315 to i64
  store i64 %1316, i64* %RDX, align 8, !tbaa !2428
  %1317 = load i64, i64* %RBP
  %1318 = sub i64 %1317, 24
  %1319 = load i64, i64* %PC
  %1320 = add i64 %1319, 3
  store i64 %1320, i64* %PC
  %1321 = inttoptr i64 %1318 to i32*
  %1322 = load i32, i32* %1321
  %1323 = zext i32 %1322 to i64
  store i64 %1323, i64* %RCX, align 8, !tbaa !2428
  %1324 = load i64, i64* %PC
  %1325 = add i64 %1324, 2
  store i64 %1325, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1326 = load i64, i64* %PC
  %1327 = sub i64 %1326, 1483
  %1328 = load i64, i64* %PC
  %1329 = add i64 %1328, 5
  %1330 = load i64, i64* %PC
  %1331 = add i64 %1330, 5
  store i64 %1331, i64* %PC
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1333 = load i64, i64* %1332, align 8, !tbaa !2428
  %1334 = add i64 %1333, -8
  %1335 = inttoptr i64 %1334 to i64*
  store i64 %1329, i64* %1335
  store i64 %1334, i64* %1332, align 8, !tbaa !2428
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1327, i64* %1336, align 8, !tbaa !2428
  %1337 = load i64, i64* %PC
  %1338 = call %struct.Memory* @ext_6020b8_fprintf(%struct.State* %0, i64 %1337, %struct.Memory* %MEMORY.12)
  %1339 = load i64, i64* %RBP
  %1340 = sub i64 %1339, 192
  %1341 = load i32, i32* %EAX
  %1342 = zext i32 %1341 to i64
  %1343 = load i64, i64* %PC
  %1344 = add i64 %1343, 6
  store i64 %1344, i64* %PC
  %1345 = inttoptr i64 %1340 to i32*
  store i32 %1341, i32* %1345
  br label %block_400b56

block_40077c:                                     ; preds = %block_400770
  %1346 = load i64, i64* %RBP
  %1347 = sub i64 %1346, 8
  %1348 = load i64, i64* %PC
  %1349 = add i64 %1348, 3
  store i64 %1349, i64* %PC
  %1350 = inttoptr i64 %1347 to i32*
  %1351 = load i32, i32* %1350
  %1352 = zext i32 %1351 to i64
  store i64 %1352, i64* %RAX, align 8, !tbaa !2428
  %1353 = load i64, i64* %RAX
  %1354 = load i64, i64* %PC
  %1355 = add i64 %1354, 3
  store i64 %1355, i64* %PC
  %1356 = and i64 15, %1353
  %1357 = trunc i64 %1356 to i32
  store i64 %1356, i64* %RAX, align 8, !tbaa !2428
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1358, align 1, !tbaa !2432
  %1359 = and i32 %1357, 255
  %1360 = call i32 @llvm.ctpop.i32(i32 %1359) #17
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  %1363 = xor i8 %1362, 1
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1363, i8* %1364, align 1, !tbaa !2446
  %1365 = icmp eq i32 %1357, 0
  %1366 = zext i1 %1365 to i8
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1366, i8* %1367, align 1, !tbaa !2448
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1368, align 1, !tbaa !2449
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1369, align 1, !tbaa !2450
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1370, align 1, !tbaa !2447
  %1371 = load i32, i32* %EAX
  %1372 = zext i32 %1371 to i64
  %1373 = load i64, i64* %PC
  %1374 = add i64 %1373, 3
  store i64 %1374, i64* %PC
  %1375 = sub i32 %1371, 8
  %1376 = icmp ult i32 %1371, 8
  %1377 = zext i1 %1376 to i8
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1377, i8* %1378, align 1, !tbaa !2432
  %1379 = and i32 %1375, 255
  %1380 = call i32 @llvm.ctpop.i32(i32 %1379) #17
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  %1383 = xor i8 %1382, 1
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1383, i8* %1384, align 1, !tbaa !2446
  %1385 = xor i64 8, %1372
  %1386 = trunc i64 %1385 to i32
  %1387 = xor i32 %1386, %1375
  %1388 = lshr i32 %1387, 4
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1390, i8* %1391, align 1, !tbaa !2447
  %1392 = icmp eq i32 %1375, 0
  %1393 = zext i1 %1392 to i8
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1393, i8* %1394, align 1, !tbaa !2448
  %1395 = lshr i32 %1375, 31
  %1396 = trunc i32 %1395 to i8
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1396, i8* %1397, align 1, !tbaa !2449
  %1398 = lshr i32 %1371, 31
  %1399 = xor i32 %1395, %1398
  %1400 = add nuw nsw i32 %1399, %1398
  %1401 = icmp eq i32 %1400, 2
  %1402 = zext i1 %1401 to i8
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1402, i8* %1403, align 1, !tbaa !2450
  %1404 = load i64, i64* %PC
  %1405 = add i64 %1404, 21
  %1406 = load i64, i64* %PC
  %1407 = add i64 %1406, 6
  %1408 = load i64, i64* %PC
  %1409 = add i64 %1408, 6
  store i64 %1409, i64* %PC
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1411 = load i8, i8* %1410, align 1, !tbaa !2448
  store i8 %1411, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1413 = icmp ne i8 %1411, 0
  %1414 = select i1 %1413, i64 %1405, i64 %1407
  store i64 %1414, i64* %1412, align 8, !tbaa !2428
  %1415 = load i8, i8* %BRANCH_TAKEN
  %1416 = icmp eq i8 %1415, 1
  br i1 %1416, label %block_40079a, label %block_40078b

block_400a2d:                                     ; preds = %block_400a21
  %1417 = add i64 %898, 2
  store i64 %1417, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %1418 = load i64, i64* %RBP
  %1419 = sub i64 %1418, 40
  %1420 = load i64, i64* %PC
  %1421 = add i64 %1420, 4
  store i64 %1421, i64* %PC
  %1422 = inttoptr i64 %1419 to i64*
  %1423 = load i64, i64* %1422
  store i64 %1423, i64* %RCX, align 8, !tbaa !2428
  %1424 = load i64, i64* %RBP
  %1425 = sub i64 %1424, 32
  %1426 = load i64, i64* %PC
  %1427 = add i64 %1426, 3
  store i64 %1427, i64* %PC
  %1428 = inttoptr i64 %1425 to i32*
  %1429 = load i32, i32* %1428
  %1430 = zext i32 %1429 to i64
  store i64 %1430, i64* %RDX, align 8, !tbaa !2428
  %1431 = load i64, i64* %RDX
  %1432 = load i64, i64* %RBP
  %1433 = sub i64 %1432, 8
  %1434 = load i64, i64* %PC
  %1435 = add i64 %1434, 4
  store i64 %1435, i64* %PC
  %1436 = inttoptr i64 %1433 to i32*
  %1437 = load i32, i32* %1436
  %1438 = shl i64 %1431, 32
  %1439 = ashr exact i64 %1438, 32
  %1440 = sext i32 %1437 to i64
  %1441 = mul nsw i64 %1440, %1439
  %1442 = trunc i64 %1441 to i32
  %1443 = and i64 %1441, 4294967295
  store i64 %1443, i64* %RDX, align 8, !tbaa !2428
  %1444 = shl i64 %1441, 32
  %1445 = ashr exact i64 %1444, 32
  %1446 = icmp ne i64 %1445, %1441
  %1447 = zext i1 %1446 to i8
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1447, i8* %1448, align 1, !tbaa !2432
  %1449 = and i32 %1442, 255
  %1450 = call i32 @llvm.ctpop.i32(i32 %1449) #17
  %1451 = trunc i32 %1450 to i8
  %1452 = and i8 %1451, 1
  %1453 = xor i8 %1452, 1
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1453, i8* %1454, align 1, !tbaa !2446
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1455, align 1, !tbaa !2447
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1456, align 1, !tbaa !2448
  %1457 = lshr i32 %1442, 31
  %1458 = trunc i32 %1457 to i8
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1458, i8* %1459, align 1, !tbaa !2449
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1447, i8* %1460, align 1, !tbaa !2450
  %1461 = load i64, i64* %RDX
  %1462 = load i64, i64* %RBP
  %1463 = sub i64 %1462, 12
  %1464 = load i64, i64* %PC
  %1465 = add i64 %1464, 3
  store i64 %1465, i64* %PC
  %1466 = trunc i64 %1461 to i32
  %1467 = inttoptr i64 %1463 to i32*
  %1468 = load i32, i32* %1467
  %1469 = add i32 %1468, %1466
  %1470 = zext i32 %1469 to i64
  store i64 %1470, i64* %RDX, align 8, !tbaa !2428
  %1471 = icmp ult i32 %1469, %1466
  %1472 = icmp ult i32 %1469, %1468
  %1473 = or i1 %1471, %1472
  %1474 = zext i1 %1473 to i8
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1474, i8* %1475, align 1, !tbaa !2432
  %1476 = and i32 %1469, 255
  %1477 = call i32 @llvm.ctpop.i32(i32 %1476) #17
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  %1480 = xor i8 %1479, 1
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1480, i8* %1481, align 1, !tbaa !2446
  %1482 = xor i32 %1468, %1466
  %1483 = xor i32 %1482, %1469
  %1484 = lshr i32 %1483, 4
  %1485 = trunc i32 %1484 to i8
  %1486 = and i8 %1485, 1
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1486, i8* %1487, align 1, !tbaa !2447
  %1488 = icmp eq i32 %1469, 0
  %1489 = zext i1 %1488 to i8
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1489, i8* %1490, align 1, !tbaa !2448
  %1491 = lshr i32 %1469, 31
  %1492 = trunc i32 %1491 to i8
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1492, i8* %1493, align 1, !tbaa !2449
  %1494 = lshr i32 %1466, 31
  %1495 = lshr i32 %1468, 31
  %1496 = xor i32 %1491, %1494
  %1497 = xor i32 %1491, %1495
  %1498 = add nuw nsw i32 %1496, %1497
  %1499 = icmp eq i32 %1498, 2
  %1500 = zext i1 %1499 to i8
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1500, i8* %1501, align 1, !tbaa !2450
  %1502 = load i64, i64* %RDX
  %1503 = load i64, i64* %PC
  %1504 = add i64 %1503, 3
  store i64 %1504, i64* %PC
  %1505 = trunc i64 %1502 to i32
  %1506 = shl i32 %1505, 1
  %1507 = icmp slt i32 %1505, 0
  %1508 = icmp slt i32 %1506, 0
  %1509 = xor i1 %1507, %1508
  %1510 = zext i32 %1506 to i64
  store i64 %1510, i64* %RDX, align 8, !tbaa !2428
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1512 = zext i1 %1507 to i8
  store i8 %1512, i8* %1511, align 1, !tbaa !2451
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1514 = and i32 %1506, 254
  %1515 = call i32 @llvm.ctpop.i32(i32 %1514) #17
  %1516 = trunc i32 %1515 to i8
  %1517 = and i8 %1516, 1
  %1518 = xor i8 %1517, 1
  store i8 %1518, i8* %1513, align 1, !tbaa !2451
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1519, align 1, !tbaa !2451
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1521 = icmp eq i32 %1506, 0
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %1520, align 1, !tbaa !2451
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1524 = lshr i32 %1506, 31
  %1525 = trunc i32 %1524 to i8
  store i8 %1525, i8* %1523, align 1, !tbaa !2451
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1527 = zext i1 %1509 to i8
  store i8 %1527, i8* %1526, align 1, !tbaa !2451
  %1528 = load i64, i64* %RDX
  %1529 = load i64, i64* %PC
  %1530 = add i64 %1529, 3
  store i64 %1530, i64* %PC
  %1531 = trunc i64 %1528 to i32
  %1532 = add i32 1, %1531
  %1533 = zext i32 %1532 to i64
  store i64 %1533, i64* %RDX, align 8, !tbaa !2428
  %1534 = icmp ult i32 %1532, %1531
  %1535 = icmp ult i32 %1532, 1
  %1536 = or i1 %1534, %1535
  %1537 = zext i1 %1536 to i8
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1537, i8* %1538, align 1, !tbaa !2432
  %1539 = and i32 %1532, 255
  %1540 = call i32 @llvm.ctpop.i32(i32 %1539) #17
  %1541 = trunc i32 %1540 to i8
  %1542 = and i8 %1541, 1
  %1543 = xor i8 %1542, 1
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1543, i8* %1544, align 1, !tbaa !2446
  %1545 = xor i64 1, %1528
  %1546 = trunc i64 %1545 to i32
  %1547 = xor i32 %1546, %1532
  %1548 = lshr i32 %1547, 4
  %1549 = trunc i32 %1548 to i8
  %1550 = and i8 %1549, 1
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1550, i8* %1551, align 1, !tbaa !2447
  %1552 = icmp eq i32 %1532, 0
  %1553 = zext i1 %1552 to i8
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1553, i8* %1554, align 1, !tbaa !2448
  %1555 = lshr i32 %1532, 31
  %1556 = trunc i32 %1555 to i8
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1556, i8* %1557, align 1, !tbaa !2449
  %1558 = lshr i32 %1531, 31
  %1559 = xor i32 %1555, %1558
  %1560 = add nuw nsw i32 %1559, %1555
  %1561 = icmp eq i32 %1560, 2
  %1562 = zext i1 %1561 to i8
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1562, i8* %1563, align 1, !tbaa !2450
  %1564 = load i32, i32* %EDX
  %1565 = zext i32 %1564 to i64
  %1566 = load i64, i64* %PC
  %1567 = add i64 %1566, 3
  store i64 %1567, i64* %PC
  %1568 = shl i64 %1565, 32
  %1569 = ashr exact i64 %1568, 32
  store i64 %1569, i64* %RSI, align 8, !tbaa !2428
  %1570 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1571 = load i64, i64* %RCX
  %1572 = load i64, i64* %RSI
  %1573 = mul i64 %1572, 8
  %1574 = add i64 %1573, %1571
  %1575 = load i64, i64* %PC
  %1576 = add i64 %1575, 5
  store i64 %1576, i64* %PC
  %1577 = inttoptr i64 %1574 to double*
  %1578 = load double, double* %1577
  %1579 = bitcast i8* %1570 to double*
  store double %1578, double* %1579, align 1, !tbaa !2452
  %1580 = getelementptr inbounds i8, i8* %1570, i64 8
  %1581 = bitcast i8* %1580 to double*
  store double 0.000000e+00, double* %1581, align 1, !tbaa !2452
  %1582 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1583 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1584 = load i64, i64* %RBP
  %1585 = sub i64 %1584, 64
  %1586 = load i64, i64* %PC
  %1587 = add i64 %1586, 5
  store i64 %1587, i64* %PC
  %1588 = bitcast i8* %1583 to double*
  %1589 = load double, double* %1588, align 1
  %1590 = getelementptr inbounds i8, i8* %1583, i64 8
  %1591 = bitcast i8* %1590 to i64*
  %1592 = load i64, i64* %1591, align 1
  %1593 = inttoptr i64 %1585 to double*
  %1594 = load double, double* %1593
  %1595 = fsub double %1589, %1594
  %1596 = bitcast i8* %1582 to double*
  store double %1595, double* %1596, align 1, !tbaa !2452
  %1597 = getelementptr inbounds i8, i8* %1582, i64 8
  %1598 = bitcast i8* %1597 to i64*
  store i64 %1592, i64* %1598, align 1, !tbaa !2452
  %1599 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1600 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1601 = load i64, i64* %RBP
  %1602 = sub i64 %1601, 72
  %1603 = load i64, i64* %PC
  %1604 = add i64 %1603, 5
  store i64 %1604, i64* %PC
  %1605 = bitcast i8* %1600 to double*
  %1606 = load double, double* %1605, align 1
  %1607 = getelementptr inbounds i8, i8* %1600, i64 8
  %1608 = bitcast i8* %1607 to i64*
  %1609 = load i64, i64* %1608, align 1
  %1610 = inttoptr i64 %1602 to double*
  %1611 = load double, double* %1610
  %1612 = fmul double %1606, %1611
  %1613 = bitcast i8* %1599 to double*
  store double %1612, double* %1613, align 1, !tbaa !2452
  %1614 = getelementptr inbounds i8, i8* %1599, i64 8
  %1615 = bitcast i8* %1614 to i64*
  store i64 %1609, i64* %1615, align 1, !tbaa !2452
  %1616 = bitcast %union.vec128_t* %XMM0 to i8*
  %1617 = load i64, i64* %PC
  %1618 = add i64 %1617, 4
  store i64 %1618, i64* %PC
  %1619 = bitcast i8* %1616 to double*
  %1620 = load double, double* %1619, align 1
  %1621 = call double @llvm.trunc.f64(double %1620) #17
  %1622 = call double @llvm.fabs.f64(double %1621) #17
  %1623 = fcmp ogt double %1622, 0x41DFFFFFFFC00000
  %1624 = fptosi double %1621 to i32
  %1625 = zext i32 %1624 to i64
  %1626 = select i1 %1623, i64 2147483648, i64 %1625
  store i64 %1626, i64* %RDX, align 8, !tbaa !2428
  %1627 = load i64, i64* %RBP
  %1628 = sub i64 %1627, 16
  %1629 = load i32, i32* %EDX
  %1630 = zext i32 %1629 to i64
  %1631 = load i64, i64* %PC
  %1632 = add i64 %1631, 3
  store i64 %1632, i64* %PC
  %1633 = inttoptr i64 %1628 to i32*
  store i32 %1629, i32* %1633
  %1634 = load i64, i64* %RBP
  %1635 = sub i64 %1634, 8
  %1636 = load i64, i64* %PC
  %1637 = add i64 %1636, 3
  store i64 %1637, i64* %PC
  %1638 = inttoptr i64 %1635 to i32*
  %1639 = load i32, i32* %1638
  %1640 = zext i32 %1639 to i64
  store i64 %1640, i64* %RDX, align 8, !tbaa !2428
  %1641 = load i64, i64* %RDX
  %1642 = load i64, i64* %PC
  %1643 = add i64 %1642, 3
  store i64 %1643, i64* %PC
  %1644 = and i64 15, %1641
  %1645 = trunc i64 %1644 to i32
  store i64 %1644, i64* %RDX, align 8, !tbaa !2428
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1646, align 1, !tbaa !2432
  %1647 = and i32 %1645, 255
  %1648 = call i32 @llvm.ctpop.i32(i32 %1647) #17
  %1649 = trunc i32 %1648 to i8
  %1650 = and i8 %1649, 1
  %1651 = xor i8 %1650, 1
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1651, i8* %1652, align 1, !tbaa !2446
  %1653 = icmp eq i32 %1645, 0
  %1654 = zext i1 %1653 to i8
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1654, i8* %1655, align 1, !tbaa !2448
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1656, align 1, !tbaa !2449
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1657, align 1, !tbaa !2450
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1658, align 1, !tbaa !2447
  %1659 = load i32, i32* %EDX
  %1660 = zext i32 %1659 to i64
  %1661 = load i64, i64* %PC
  %1662 = add i64 %1661, 3
  store i64 %1662, i64* %PC
  %1663 = sub i32 %1659, 8
  %1664 = icmp ult i32 %1659, 8
  %1665 = zext i1 %1664 to i8
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1665, i8* %1666, align 1, !tbaa !2432
  %1667 = and i32 %1663, 255
  %1668 = call i32 @llvm.ctpop.i32(i32 %1667) #17
  %1669 = trunc i32 %1668 to i8
  %1670 = and i8 %1669, 1
  %1671 = xor i8 %1670, 1
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1671, i8* %1672, align 1, !tbaa !2446
  %1673 = xor i64 8, %1660
  %1674 = trunc i64 %1673 to i32
  %1675 = xor i32 %1674, %1663
  %1676 = lshr i32 %1675, 4
  %1677 = trunc i32 %1676 to i8
  %1678 = and i8 %1677, 1
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1678, i8* %1679, align 1, !tbaa !2447
  %1680 = icmp eq i32 %1663, 0
  %1681 = zext i1 %1680 to i8
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1681, i8* %1682, align 1, !tbaa !2448
  %1683 = lshr i32 %1663, 31
  %1684 = trunc i32 %1683 to i8
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1684, i8* %1685, align 1, !tbaa !2449
  %1686 = lshr i32 %1659, 31
  %1687 = xor i32 %1683, %1686
  %1688 = add nuw nsw i32 %1687, %1686
  %1689 = icmp eq i32 %1688, 2
  %1690 = zext i1 %1689 to i8
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1690, i8* %1691, align 1, !tbaa !2450
  %1692 = load i64, i64* %RBP
  %1693 = sub i64 %1692, 177
  %1694 = load i8, i8* %AL
  %1695 = zext i8 %1694 to i64
  %1696 = load i64, i64* %PC
  %1697 = add i64 %1696, 6
  store i64 %1697, i64* %PC
  %1698 = inttoptr i64 %1693 to i8*
  store i8 %1694, i8* %1698
  %1699 = load i64, i64* %PC
  %1700 = add i64 %1699, 24
  %1701 = load i64, i64* %PC
  %1702 = add i64 %1701, 6
  %1703 = load i64, i64* %PC
  %1704 = add i64 %1703, 6
  store i64 %1704, i64* %PC
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1706 = load i8, i8* %1705, align 1, !tbaa !2448
  store i8 %1706, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1708 = icmp ne i8 %1706, 0
  %1709 = select i1 %1708, i64 %1700, i64 %1702
  store i64 %1709, i64* %1707, align 8, !tbaa !2428
  %1710 = load i8, i8* %BRANCH_TAKEN
  %1711 = icmp eq i8 %1710, 1
  br i1 %1711, label %block_400a83, label %block_400a71

block_400925:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %1712 = sub i64 %1306, 112
  %1713 = load i64, i64* %PC
  %1714 = add i64 %1713, 5
  store i64 %1714, i64* %PC
  %1715 = inttoptr i64 %1712 to double*
  %1716 = load double, double* %1715
  %1717 = bitcast i8* %1305 to double*
  store double %1716, double* %1717, align 1, !tbaa !2452
  %1718 = getelementptr inbounds i8, i8* %1305, i64 8
  %1719 = bitcast i8* %1718 to double*
  store double 0.000000e+00, double* %1719, align 1, !tbaa !2452
  %1720 = load i64, i64* %RBP
  %1721 = sub i64 %1720, 160
  %1722 = bitcast %union.vec128_t* %XMM0 to i8*
  %1723 = load i64, i64* %PC
  %1724 = add i64 %1723, 8
  store i64 %1724, i64* %PC
  %1725 = bitcast i8* %1722 to double*
  %1726 = load double, double* %1725, align 1
  %1727 = inttoptr i64 %1721 to double*
  store double %1726, double* %1727
  %1728 = load i64, i64* %PC
  %1729 = add i64 %1728, 18
  %1730 = load i64, i64* %PC
  %1731 = add i64 %1730, 5
  store i64 %1731, i64* %PC
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1729, i64* %1732, align 8, !tbaa !2428
  br label %block_400944

block_4007be:                                     ; preds = %block_40078b, %block_40079a
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.9, %block_40079a ], [ %MEMORY.3, %block_40078b ]
  %1733 = load i64, i64* %PC
  %1734 = add i64 %1733, 5
  %1735 = load i64, i64* %PC
  %1736 = add i64 %1735, 5
  store i64 %1736, i64* %PC
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1734, i64* %1737, align 8, !tbaa !2428
  %1738 = load i64, i64* %RBP
  %1739 = sub i64 %1738, 12
  %1740 = load i64, i64* %PC
  %1741 = add i64 %1740, 3
  store i64 %1741, i64* %PC
  %1742 = inttoptr i64 %1739 to i32*
  %1743 = load i32, i32* %1742
  %1744 = zext i32 %1743 to i64
  store i64 %1744, i64* %RAX, align 8, !tbaa !2428
  %1745 = load i64, i64* %RAX
  %1746 = load i64, i64* %PC
  %1747 = add i64 %1746, 3
  store i64 %1747, i64* %PC
  %1748 = trunc i64 %1745 to i32
  %1749 = add i32 1, %1748
  %1750 = zext i32 %1749 to i64
  store i64 %1750, i64* %RAX, align 8, !tbaa !2428
  %1751 = icmp ult i32 %1749, %1748
  %1752 = icmp ult i32 %1749, 1
  %1753 = or i1 %1751, %1752
  %1754 = zext i1 %1753 to i8
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1754, i8* %1755, align 1, !tbaa !2432
  %1756 = and i32 %1749, 255
  %1757 = call i32 @llvm.ctpop.i32(i32 %1756) #17
  %1758 = trunc i32 %1757 to i8
  %1759 = and i8 %1758, 1
  %1760 = xor i8 %1759, 1
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1760, i8* %1761, align 1, !tbaa !2446
  %1762 = xor i64 1, %1745
  %1763 = trunc i64 %1762 to i32
  %1764 = xor i32 %1763, %1749
  %1765 = lshr i32 %1764, 4
  %1766 = trunc i32 %1765 to i8
  %1767 = and i8 %1766, 1
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1767, i8* %1768, align 1, !tbaa !2447
  %1769 = icmp eq i32 %1749, 0
  %1770 = zext i1 %1769 to i8
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1770, i8* %1771, align 1, !tbaa !2448
  %1772 = lshr i32 %1749, 31
  %1773 = trunc i32 %1772 to i8
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1773, i8* %1774, align 1, !tbaa !2449
  %1775 = lshr i32 %1748, 31
  %1776 = xor i32 %1772, %1775
  %1777 = add nuw nsw i32 %1776, %1772
  %1778 = icmp eq i32 %1777, 2
  %1779 = zext i1 %1778 to i8
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1779, i8* %1780, align 1, !tbaa !2450
  %1781 = load i64, i64* %RBP
  %1782 = sub i64 %1781, 12
  %1783 = load i32, i32* %EAX
  %1784 = zext i32 %1783 to i64
  %1785 = load i64, i64* %PC
  %1786 = add i64 %1785, 3
  store i64 %1786, i64* %PC
  %1787 = inttoptr i64 %1782 to i32*
  store i32 %1783, i32* %1787
  %1788 = load i64, i64* %PC
  %1789 = sub i64 %1788, 92
  %1790 = load i64, i64* %PC
  %1791 = add i64 %1790, 5
  store i64 %1791, i64* %PC
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1789, i64* %1792, align 8, !tbaa !2428
  br label %block_400770

block_400aa4:                                     ; preds = %block_400a83
  %1793 = load i64, i64* %PC
  %1794 = add i64 %1793, 10
  store i64 %1794, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 100), i64* %RSI, align 8, !tbaa !2428
  %1795 = load i64, i64* %RBP
  %1796 = sub i64 %1795, 24
  %1797 = load i64, i64* %PC
  %1798 = add i64 %1797, 3
  store i64 %1798, i64* %PC
  %1799 = inttoptr i64 %1796 to i32*
  %1800 = load i32, i32* %1799
  %1801 = zext i32 %1800 to i64
  store i64 %1801, i64* %RAX, align 8, !tbaa !2428
  %1802 = load i64, i64* %RAX
  %1803 = load i64, i64* %PC
  %1804 = add i64 %1803, 3
  store i64 %1804, i64* %PC
  %1805 = trunc i64 %1802 to i32
  %1806 = add i32 1, %1805
  %1807 = zext i32 %1806 to i64
  store i64 %1807, i64* %RAX, align 8, !tbaa !2428
  %1808 = icmp ult i32 %1806, %1805
  %1809 = icmp ult i32 %1806, 1
  %1810 = or i1 %1808, %1809
  %1811 = zext i1 %1810 to i8
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1811, i8* %1812, align 1, !tbaa !2432
  %1813 = and i32 %1806, 255
  %1814 = call i32 @llvm.ctpop.i32(i32 %1813) #17
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  %1817 = xor i8 %1816, 1
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1817, i8* %1818, align 1, !tbaa !2446
  %1819 = xor i64 1, %1802
  %1820 = trunc i64 %1819 to i32
  %1821 = xor i32 %1820, %1806
  %1822 = lshr i32 %1821, 4
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1824, i8* %1825, align 1, !tbaa !2447
  %1826 = icmp eq i32 %1806, 0
  %1827 = zext i1 %1826 to i8
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1827, i8* %1828, align 1, !tbaa !2448
  %1829 = lshr i32 %1806, 31
  %1830 = trunc i32 %1829 to i8
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1830, i8* %1831, align 1, !tbaa !2449
  %1832 = lshr i32 %1805, 31
  %1833 = xor i32 %1829, %1832
  %1834 = add nuw nsw i32 %1833, %1829
  %1835 = icmp eq i32 %1834, 2
  %1836 = zext i1 %1835 to i8
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1836, i8* %1837, align 1, !tbaa !2450
  %1838 = load i64, i64* %RBP
  %1839 = sub i64 %1838, 24
  %1840 = load i32, i32* %EAX
  %1841 = zext i32 %1840 to i64
  %1842 = load i64, i64* %PC
  %1843 = add i64 %1842, 3
  store i64 %1843, i64* %PC
  %1844 = inttoptr i64 %1839 to i32*
  store i32 %1840, i32* %1844
  %1845 = load i64, i64* %PC
  %1846 = add i64 %1845, 8
  store i64 %1846, i64* %PC
  %1847 = load i64, i64* @stderr
  store i64 %1847, i64* %RDI, align 8, !tbaa !2428
  %1848 = load i64, i64* %RBP
  %1849 = sub i64 %1848, 8
  %1850 = load i64, i64* %PC
  %1851 = add i64 %1850, 3
  store i64 %1851, i64* %PC
  %1852 = inttoptr i64 %1849 to i32*
  %1853 = load i32, i32* %1852
  %1854 = zext i32 %1853 to i64
  store i64 %1854, i64* %RDX, align 8, !tbaa !2428
  %1855 = load i64, i64* %RBP
  %1856 = sub i64 %1855, 12
  %1857 = load i64, i64* %PC
  %1858 = add i64 %1857, 3
  store i64 %1858, i64* %PC
  %1859 = inttoptr i64 %1856 to i32*
  %1860 = load i32, i32* %1859
  %1861 = zext i32 %1860 to i64
  store i64 %1861, i64* %RCX, align 8, !tbaa !2428
  %1862 = bitcast i32* %R8D to i64*
  %1863 = load i64, i64* %RBP
  %1864 = sub i64 %1863, 20
  %1865 = load i64, i64* %PC
  %1866 = add i64 %1865, 4
  store i64 %1866, i64* %PC
  %1867 = inttoptr i64 %1864 to i32*
  %1868 = load i32, i32* %1867
  %1869 = zext i32 %1868 to i64
  store i64 %1869, i64* %1862, align 8, !tbaa !2428
  %1870 = bitcast i32* %R9D to i64*
  %1871 = load i64, i64* %RBP
  %1872 = sub i64 %1871, 16
  %1873 = load i64, i64* %PC
  %1874 = add i64 %1873, 4
  store i64 %1874, i64* %PC
  %1875 = inttoptr i64 %1872 to i32*
  %1876 = load i32, i32* %1875
  %1877 = zext i32 %1876 to i64
  store i64 %1877, i64* %1870, align 8, !tbaa !2428
  %1878 = load i64, i64* %PC
  %1879 = add i64 %1878, 2
  store i64 %1879, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %1880 = load i64, i64* %PC
  %1881 = sub i64 %1880, 1359
  %1882 = load i64, i64* %PC
  %1883 = add i64 %1882, 5
  %1884 = load i64, i64* %PC
  %1885 = add i64 %1884, 5
  store i64 %1885, i64* %PC
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1887 = load i64, i64* %1886, align 8, !tbaa !2428
  %1888 = add i64 %1887, -8
  %1889 = inttoptr i64 %1888 to i64*
  store i64 %1883, i64* %1889
  store i64 %1888, i64* %1886, align 8, !tbaa !2428
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1881, i64* %1890, align 8, !tbaa !2428
  %1891 = load i64, i64* %PC
  %1892 = call %struct.Memory* @ext_6020b8_fprintf(%struct.State* %0, i64 %1891, %struct.Memory* %MEMORY.14)
  %1893 = load i64, i64* %RBP
  %1894 = sub i64 %1893, 184
  %1895 = load i32, i32* %EAX
  %1896 = zext i32 %1895 to i64
  %1897 = load i64, i64* %PC
  %1898 = add i64 %1897, 6
  store i64 %1898, i64* %PC
  %1899 = inttoptr i64 %1894 to i32*
  store i32 %1895, i32* %1899
  br label %block_400ada

block_400937:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %1900 = sub i64 %1306, 88
  %1901 = load i64, i64* %PC
  %1902 = add i64 %1901, 5
  store i64 %1902, i64* %PC
  %1903 = inttoptr i64 %1900 to double*
  %1904 = load double, double* %1903
  %1905 = bitcast i8* %1305 to double*
  store double %1904, double* %1905, align 1, !tbaa !2452
  %1906 = getelementptr inbounds i8, i8* %1305, i64 8
  %1907 = bitcast i8* %1906 to double*
  store double 0.000000e+00, double* %1907, align 1, !tbaa !2452
  %1908 = load i64, i64* %RBP
  %1909 = sub i64 %1908, 160
  %1910 = bitcast %union.vec128_t* %XMM0 to i8*
  %1911 = load i64, i64* %PC
  %1912 = add i64 %1911, 8
  store i64 %1912, i64* %PC
  %1913 = bitcast i8* %1910 to double*
  %1914 = load double, double* %1913, align 1
  %1915 = inttoptr i64 %1909 to double*
  store double %1914, double* %1915
  br label %block_400944

block_4009a1:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %1916 = sub i64 %2986, 120
  %1917 = load i64, i64* %PC
  %1918 = add i64 %1917, 5
  store i64 %1918, i64* %PC
  %1919 = inttoptr i64 %1916 to double*
  %1920 = load double, double* %1919
  %1921 = bitcast i8* %2985 to double*
  store double %1920, double* %1921, align 1, !tbaa !2452
  %1922 = getelementptr inbounds i8, i8* %2985, i64 8
  %1923 = bitcast i8* %1922 to double*
  store double 0.000000e+00, double* %1923, align 1, !tbaa !2452
  %1924 = load i64, i64* %RBP
  %1925 = sub i64 %1924, 176
  %1926 = bitcast %union.vec128_t* %XMM0 to i8*
  %1927 = load i64, i64* %PC
  %1928 = add i64 %1927, 8
  store i64 %1928, i64* %PC
  %1929 = bitcast i8* %1926 to double*
  %1930 = load double, double* %1929, align 1
  %1931 = inttoptr i64 %1925 to double*
  store double %1930, double* %1931
  %1932 = load i64, i64* %PC
  %1933 = add i64 %1932, 18
  %1934 = load i64, i64* %PC
  %1935 = add i64 %1934, 5
  store i64 %1935, i64* %PC
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1933, i64* %1936, align 8, !tbaa !2428
  br label %block_4009c0

block_400769:                                     ; preds = %block_40075d
  %1937 = sub i64 %2344, 12
  %1938 = load i64, i64* %PC
  %1939 = add i64 %1938, 7
  store i64 %1939, i64* %PC
  %1940 = inttoptr i64 %1937 to i32*
  store i32 0, i32* %1940
  br label %block_400770

block_400a1a:                                     ; preds = %block_400a0e
  %1941 = sub i64 %2409, 12
  %1942 = load i64, i64* %PC
  %1943 = add i64 %1942, 7
  store i64 %1943, i64* %PC
  %1944 = inttoptr i64 %1941 to i32*
  store i32 0, i32* %1944
  br label %block_400a21

block_400977:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2
  %1945 = sub i64 %1122, 96
  %1946 = load i64, i64* %PC
  %1947 = add i64 %1946, 5
  store i64 %1947, i64* %PC
  %1948 = inttoptr i64 %1945 to double*
  %1949 = load double, double* %1948
  %1950 = bitcast i8* %1121 to double*
  store double %1949, double* %1950, align 1, !tbaa !2452
  %1951 = getelementptr inbounds i8, i8* %1121, i64 8
  %1952 = bitcast i8* %1951 to double*
  store double 0.000000e+00, double* %1952, align 1, !tbaa !2452
  %1953 = load i64, i64* %RBP
  %1954 = sub i64 %1953, 168
  %1955 = bitcast %union.vec128_t* %XMM0 to i8*
  %1956 = load i64, i64* %PC
  %1957 = add i64 %1956, 8
  store i64 %1957, i64* %PC
  %1958 = bitcast i8* %1955 to double*
  %1959 = load double, double* %1958, align 1
  %1960 = inttoptr i64 %1954 to double*
  store double %1959, double* %1960
  br label %block_400984

block_40079a:                                     ; preds = %block_40078b, %block_40077c
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.3, %block_40077c ], [ %MEMORY.3, %block_40078b ]
  %1961 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1962 = load i64, i64* %PC
  %1963 = add i64 %1962, 8
  store i64 %1963, i64* %PC
  %1964 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 32) to double*)
  %1965 = bitcast i8* %1961 to double*
  store double %1964, double* %1965, align 1, !tbaa !2452
  %1966 = getelementptr inbounds i8, i8* %1961, i64 8
  %1967 = bitcast i8* %1966 to double*
  store double 0.000000e+00, double* %1967, align 1, !tbaa !2452
  %1968 = load i64, i64* %RBP
  %1969 = sub i64 %1968, 40
  %1970 = load i64, i64* %PC
  %1971 = add i64 %1970, 4
  store i64 %1971, i64* %PC
  %1972 = inttoptr i64 %1969 to i64*
  %1973 = load i64, i64* %1972
  store i64 %1973, i64* %RAX, align 8, !tbaa !2428
  %1974 = load i64, i64* %RBP
  %1975 = sub i64 %1974, 32
  %1976 = load i64, i64* %PC
  %1977 = add i64 %1976, 3
  store i64 %1977, i64* %PC
  %1978 = inttoptr i64 %1975 to i32*
  %1979 = load i32, i32* %1978
  %1980 = zext i32 %1979 to i64
  store i64 %1980, i64* %RCX, align 8, !tbaa !2428
  %1981 = load i64, i64* %RCX
  %1982 = load i64, i64* %RBP
  %1983 = sub i64 %1982, 8
  %1984 = load i64, i64* %PC
  %1985 = add i64 %1984, 4
  store i64 %1985, i64* %PC
  %1986 = inttoptr i64 %1983 to i32*
  %1987 = load i32, i32* %1986
  %1988 = shl i64 %1981, 32
  %1989 = ashr exact i64 %1988, 32
  %1990 = sext i32 %1987 to i64
  %1991 = mul nsw i64 %1990, %1989
  %1992 = trunc i64 %1991 to i32
  %1993 = and i64 %1991, 4294967295
  store i64 %1993, i64* %RCX, align 8, !tbaa !2428
  %1994 = shl i64 %1991, 32
  %1995 = ashr exact i64 %1994, 32
  %1996 = icmp ne i64 %1995, %1991
  %1997 = zext i1 %1996 to i8
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1997, i8* %1998, align 1, !tbaa !2432
  %1999 = and i32 %1992, 255
  %2000 = call i32 @llvm.ctpop.i32(i32 %1999) #17
  %2001 = trunc i32 %2000 to i8
  %2002 = and i8 %2001, 1
  %2003 = xor i8 %2002, 1
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2003, i8* %2004, align 1, !tbaa !2446
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2005, align 1, !tbaa !2447
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2006, align 1, !tbaa !2448
  %2007 = lshr i32 %1992, 31
  %2008 = trunc i32 %2007 to i8
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2008, i8* %2009, align 1, !tbaa !2449
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1997, i8* %2010, align 1, !tbaa !2450
  %2011 = load i64, i64* %RCX
  %2012 = load i64, i64* %RBP
  %2013 = sub i64 %2012, 12
  %2014 = load i64, i64* %PC
  %2015 = add i64 %2014, 3
  store i64 %2015, i64* %PC
  %2016 = trunc i64 %2011 to i32
  %2017 = inttoptr i64 %2013 to i32*
  %2018 = load i32, i32* %2017
  %2019 = add i32 %2018, %2016
  %2020 = zext i32 %2019 to i64
  store i64 %2020, i64* %RCX, align 8, !tbaa !2428
  %2021 = icmp ult i32 %2019, %2016
  %2022 = icmp ult i32 %2019, %2018
  %2023 = or i1 %2021, %2022
  %2024 = zext i1 %2023 to i8
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2024, i8* %2025, align 1, !tbaa !2432
  %2026 = and i32 %2019, 255
  %2027 = call i32 @llvm.ctpop.i32(i32 %2026) #17
  %2028 = trunc i32 %2027 to i8
  %2029 = and i8 %2028, 1
  %2030 = xor i8 %2029, 1
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2030, i8* %2031, align 1, !tbaa !2446
  %2032 = xor i32 %2018, %2016
  %2033 = xor i32 %2032, %2019
  %2034 = lshr i32 %2033, 4
  %2035 = trunc i32 %2034 to i8
  %2036 = and i8 %2035, 1
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2036, i8* %2037, align 1, !tbaa !2447
  %2038 = icmp eq i32 %2019, 0
  %2039 = zext i1 %2038 to i8
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2039, i8* %2040, align 1, !tbaa !2448
  %2041 = lshr i32 %2019, 31
  %2042 = trunc i32 %2041 to i8
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2042, i8* %2043, align 1, !tbaa !2449
  %2044 = lshr i32 %2016, 31
  %2045 = lshr i32 %2018, 31
  %2046 = xor i32 %2041, %2044
  %2047 = xor i32 %2041, %2045
  %2048 = add nuw nsw i32 %2046, %2047
  %2049 = icmp eq i32 %2048, 2
  %2050 = zext i1 %2049 to i8
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2050, i8* %2051, align 1, !tbaa !2450
  %2052 = load i64, i64* %RCX
  %2053 = load i64, i64* %PC
  %2054 = add i64 %2053, 3
  store i64 %2054, i64* %PC
  %2055 = trunc i64 %2052 to i32
  %2056 = shl i32 %2055, 1
  %2057 = icmp slt i32 %2055, 0
  %2058 = icmp slt i32 %2056, 0
  %2059 = xor i1 %2057, %2058
  %2060 = zext i32 %2056 to i64
  store i64 %2060, i64* %RCX, align 8, !tbaa !2428
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2062 = zext i1 %2057 to i8
  store i8 %2062, i8* %2061, align 1, !tbaa !2451
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2064 = and i32 %2056, 254
  %2065 = call i32 @llvm.ctpop.i32(i32 %2064) #17
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  %2068 = xor i8 %2067, 1
  store i8 %2068, i8* %2063, align 1, !tbaa !2451
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2069, align 1, !tbaa !2451
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2071 = icmp eq i32 %2056, 0
  %2072 = zext i1 %2071 to i8
  store i8 %2072, i8* %2070, align 1, !tbaa !2451
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2074 = lshr i32 %2056, 31
  %2075 = trunc i32 %2074 to i8
  store i8 %2075, i8* %2073, align 1, !tbaa !2451
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2077 = zext i1 %2059 to i8
  store i8 %2077, i8* %2076, align 1, !tbaa !2451
  %2078 = load i64, i64* %RCX
  %2079 = load i64, i64* %PC
  %2080 = add i64 %2079, 3
  store i64 %2080, i64* %PC
  %2081 = trunc i64 %2078 to i32
  %2082 = add i32 1, %2081
  %2083 = zext i32 %2082 to i64
  store i64 %2083, i64* %RCX, align 8, !tbaa !2428
  %2084 = icmp ult i32 %2082, %2081
  %2085 = icmp ult i32 %2082, 1
  %2086 = or i1 %2084, %2085
  %2087 = zext i1 %2086 to i8
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2087, i8* %2088, align 1, !tbaa !2432
  %2089 = and i32 %2082, 255
  %2090 = call i32 @llvm.ctpop.i32(i32 %2089) #17
  %2091 = trunc i32 %2090 to i8
  %2092 = and i8 %2091, 1
  %2093 = xor i8 %2092, 1
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2093, i8* %2094, align 1, !tbaa !2446
  %2095 = xor i64 1, %2078
  %2096 = trunc i64 %2095 to i32
  %2097 = xor i32 %2096, %2082
  %2098 = lshr i32 %2097, 4
  %2099 = trunc i32 %2098 to i8
  %2100 = and i8 %2099, 1
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2100, i8* %2101, align 1, !tbaa !2447
  %2102 = icmp eq i32 %2082, 0
  %2103 = zext i1 %2102 to i8
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2103, i8* %2104, align 1, !tbaa !2448
  %2105 = lshr i32 %2082, 31
  %2106 = trunc i32 %2105 to i8
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2106, i8* %2107, align 1, !tbaa !2449
  %2108 = lshr i32 %2081, 31
  %2109 = xor i32 %2105, %2108
  %2110 = add nuw nsw i32 %2109, %2105
  %2111 = icmp eq i32 %2110, 2
  %2112 = zext i1 %2111 to i8
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2112, i8* %2113, align 1, !tbaa !2450
  %2114 = load i32, i32* %ECX
  %2115 = zext i32 %2114 to i64
  %2116 = load i64, i64* %PC
  %2117 = add i64 %2116, 3
  store i64 %2117, i64* %PC
  %2118 = shl i64 %2115, 32
  %2119 = ashr exact i64 %2118, 32
  store i64 %2119, i64* %RDX, align 8, !tbaa !2428
  %2120 = load i64, i64* %RAX
  %2121 = load i64, i64* %RDX
  %2122 = mul i64 %2121, 8
  %2123 = add i64 %2122, %2120
  %2124 = bitcast %union.vec128_t* %XMM0 to i8*
  %2125 = load i64, i64* %PC
  %2126 = add i64 %2125, 5
  store i64 %2126, i64* %PC
  %2127 = bitcast i8* %2124 to double*
  %2128 = load double, double* %2127, align 1
  %2129 = inttoptr i64 %2123 to double*
  store double %2128, double* %2129
  br label %block_4007be

block_4009c0:                                     ; preds = %block_4009b3, %block_4009a1
  %MEMORY.10 = phi %struct.Memory* [ %2967, %block_4009b3 ], [ %2967, %block_4009a1 ]
  %2130 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2131 = load i64, i64* %RBP
  %2132 = sub i64 %2131, 176
  %2133 = load i64, i64* %PC
  %2134 = add i64 %2133, 8
  store i64 %2134, i64* %PC
  %2135 = inttoptr i64 %2132 to double*
  %2136 = load double, double* %2135
  %2137 = bitcast i8* %2130 to double*
  store double %2136, double* %2137, align 1, !tbaa !2452
  %2138 = getelementptr inbounds i8, i8* %2130, i64 8
  %2139 = bitcast i8* %2138 to double*
  store double 0.000000e+00, double* %2139, align 1, !tbaa !2452
  %2140 = load i64, i64* %RBP
  %2141 = sub i64 %2140, 104
  %2142 = bitcast %union.vec128_t* %XMM0 to i8*
  %2143 = load i64, i64* %PC
  %2144 = add i64 %2143, 5
  store i64 %2144, i64* %PC
  %2145 = bitcast i8* %2142 to double*
  %2146 = load double, double* %2145, align 1
  %2147 = inttoptr i64 %2141 to double*
  store double %2146, double* %2147
  %2148 = load i64, i64* %RBP
  %2149 = sub i64 %2148, 8
  %2150 = load i64, i64* %PC
  %2151 = add i64 %2150, 3
  store i64 %2151, i64* %PC
  %2152 = inttoptr i64 %2149 to i32*
  %2153 = load i32, i32* %2152
  %2154 = zext i32 %2153 to i64
  store i64 %2154, i64* %RAX, align 8, !tbaa !2428
  %2155 = load i64, i64* %RAX
  %2156 = load i64, i64* %PC
  %2157 = add i64 %2156, 3
  store i64 %2157, i64* %PC
  %2158 = trunc i64 %2155 to i32
  %2159 = add i32 2, %2158
  %2160 = zext i32 %2159 to i64
  store i64 %2160, i64* %RAX, align 8, !tbaa !2428
  %2161 = icmp ult i32 %2159, %2158
  %2162 = icmp ult i32 %2159, 2
  %2163 = or i1 %2161, %2162
  %2164 = zext i1 %2163 to i8
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2164, i8* %2165, align 1, !tbaa !2432
  %2166 = and i32 %2159, 255
  %2167 = call i32 @llvm.ctpop.i32(i32 %2166) #17
  %2168 = trunc i32 %2167 to i8
  %2169 = and i8 %2168, 1
  %2170 = xor i8 %2169, 1
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2170, i8* %2171, align 1, !tbaa !2446
  %2172 = xor i64 2, %2155
  %2173 = trunc i64 %2172 to i32
  %2174 = xor i32 %2173, %2159
  %2175 = lshr i32 %2174, 4
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2177, i8* %2178, align 1, !tbaa !2447
  %2179 = icmp eq i32 %2159, 0
  %2180 = zext i1 %2179 to i8
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2180, i8* %2181, align 1, !tbaa !2448
  %2182 = lshr i32 %2159, 31
  %2183 = trunc i32 %2182 to i8
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2183, i8* %2184, align 1, !tbaa !2449
  %2185 = lshr i32 %2158, 31
  %2186 = xor i32 %2182, %2185
  %2187 = add nuw nsw i32 %2186, %2182
  %2188 = icmp eq i32 %2187, 2
  %2189 = zext i1 %2188 to i8
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2189, i8* %2190, align 1, !tbaa !2450
  %2191 = load i64, i64* %RBP
  %2192 = sub i64 %2191, 8
  %2193 = load i32, i32* %EAX
  %2194 = zext i32 %2193 to i64
  %2195 = load i64, i64* %PC
  %2196 = add i64 %2195, 3
  store i64 %2196, i64* %PC
  %2197 = inttoptr i64 %2192 to i32*
  store i32 %2193, i32* %2197
  %2198 = load i64, i64* %PC
  %2199 = sub i64 %2198, 348
  %2200 = load i64, i64* %PC
  %2201 = add i64 %2200, 5
  store i64 %2201, i64* %PC
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2199, i64* %2202, align 8, !tbaa !2428
  br label %block_40087a

block_400744:                                     ; preds = %block_4006b0
  %2203 = load i64, i64* %RSI
  %2204 = load i32, i32* %ESI
  %2205 = zext i32 %2204 to i64
  %2206 = load i64, i64* %PC
  %2207 = add i64 %2206, 2
  store i64 %2207, i64* %PC
  %2208 = xor i64 %2205, %2203
  %2209 = trunc i64 %2208 to i32
  %2210 = and i64 %2208, 4294967295
  store i64 %2210, i64* %RSI, align 8, !tbaa !2428
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2211, align 1, !tbaa !2432
  %2212 = and i32 %2209, 255
  %2213 = call i32 @llvm.ctpop.i32(i32 %2212) #17
  %2214 = trunc i32 %2213 to i8
  %2215 = and i8 %2214, 1
  %2216 = xor i8 %2215, 1
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2216, i8* %2217, align 1, !tbaa !2446
  %2218 = icmp eq i32 %2209, 0
  %2219 = zext i1 %2218 to i8
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2219, i8* %2220, align 1, !tbaa !2448
  %2221 = lshr i32 %2209, 31
  %2222 = trunc i32 %2221 to i8
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2222, i8* %2223, align 1, !tbaa !2449
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2224, align 1, !tbaa !2450
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2225, align 1, !tbaa !2447
  %2226 = load i64, i64* %RBP
  %2227 = sub i64 %2226, 40
  %2228 = load i64, i64* %PC
  %2229 = add i64 %2228, 4
  store i64 %2229, i64* %PC
  %2230 = inttoptr i64 %2227 to i64*
  %2231 = load i64, i64* %2230
  store i64 %2231, i64* %RAX, align 8, !tbaa !2428
  %2232 = load i64, i64* %RBP
  %2233 = sub i64 %2232, 56
  %2234 = load i64, i64* %PC
  %2235 = add i64 %2234, 4
  store i64 %2235, i64* %PC
  %2236 = inttoptr i64 %2233 to i64*
  %2237 = load i64, i64* %2236
  store i64 %2237, i64* %RDX, align 8, !tbaa !2428
  %2238 = load i64, i64* %RAX
  %2239 = load i64, i64* %PC
  %2240 = add i64 %2239, 3
  store i64 %2240, i64* %PC
  store i64 %2238, i64* %RDI, align 8, !tbaa !2428
  %2241 = load i64, i64* %PC
  %2242 = sub i64 %2241, 481
  %2243 = load i64, i64* %PC
  %2244 = add i64 %2243, 5
  %2245 = load i64, i64* %PC
  %2246 = add i64 %2245, 5
  store i64 %2246, i64* %PC
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2248 = load i64, i64* %2247, align 8, !tbaa !2428
  %2249 = add i64 %2248, -8
  %2250 = inttoptr i64 %2249 to i64*
  store i64 %2244, i64* %2250
  store i64 %2249, i64* %2247, align 8, !tbaa !2428
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2242, i64* %2251, align 8, !tbaa !2428
  %2252 = load i64, i64* %PC
  %2253 = call %struct.Memory* @ext_6020a8_memset(%struct.State* %0, i64 %2252, %struct.Memory* %298)
  %2254 = load i64, i64* %RBP
  %2255 = sub i64 %2254, 8
  %2256 = load i64, i64* %PC
  %2257 = add i64 %2256, 7
  store i64 %2257, i64* %PC
  %2258 = inttoptr i64 %2255 to i32*
  store i32 0, i32* %2258
  br label %block_40075d

block_4008e9:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %2259 = sub i64 %2883, 112
  %2260 = load i64, i64* %PC
  %2261 = add i64 %2260, 5
  store i64 %2261, i64* %PC
  %2262 = inttoptr i64 %2259 to double*
  %2263 = load double, double* %2262
  %2264 = bitcast i8* %2882 to double*
  store double %2263, double* %2264, align 1, !tbaa !2452
  %2265 = getelementptr inbounds i8, i8* %2882, i64 8
  %2266 = bitcast i8* %2265 to double*
  store double 0.000000e+00, double* %2266, align 1, !tbaa !2452
  %2267 = load i64, i64* %RBP
  %2268 = sub i64 %2267, 152
  %2269 = bitcast %union.vec128_t* %XMM0 to i8*
  %2270 = load i64, i64* %PC
  %2271 = add i64 %2270, 8
  store i64 %2271, i64* %PC
  %2272 = bitcast i8* %2269 to double*
  %2273 = load double, double* %2272, align 1
  %2274 = inttoptr i64 %2268 to double*
  store double %2273, double* %2274
  %2275 = load i64, i64* %PC
  %2276 = add i64 %2275, 18
  %2277 = load i64, i64* %PC
  %2278 = add i64 %2277, 5
  store i64 %2278, i64* %PC
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2276, i64* %2279, align 8, !tbaa !2428
  br label %block_400908

block_40075d:                                     ; preds = %block_400744, %block_4007d1
  %MEMORY.11 = phi %struct.Memory* [ %2253, %block_400744 ], [ %MEMORY.3, %block_4007d1 ]
  %2280 = load i64, i64* %RBP
  %2281 = sub i64 %2280, 8
  %2282 = load i64, i64* %PC
  %2283 = add i64 %2282, 3
  store i64 %2283, i64* %PC
  %2284 = inttoptr i64 %2281 to i32*
  %2285 = load i32, i32* %2284
  %2286 = zext i32 %2285 to i64
  store i64 %2286, i64* %RAX, align 8, !tbaa !2428
  %2287 = load i32, i32* %EAX
  %2288 = zext i32 %2287 to i64
  %2289 = load i64, i64* %RBP
  %2290 = sub i64 %2289, 32
  %2291 = load i64, i64* %PC
  %2292 = add i64 %2291, 3
  store i64 %2292, i64* %PC
  %2293 = inttoptr i64 %2290 to i32*
  %2294 = load i32, i32* %2293
  %2295 = sub i32 %2287, %2294
  %2296 = icmp ult i32 %2287, %2294
  %2297 = zext i1 %2296 to i8
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2297, i8* %2298, align 1, !tbaa !2432
  %2299 = and i32 %2295, 255
  %2300 = call i32 @llvm.ctpop.i32(i32 %2299) #17
  %2301 = trunc i32 %2300 to i8
  %2302 = and i8 %2301, 1
  %2303 = xor i8 %2302, 1
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2303, i8* %2304, align 1, !tbaa !2446
  %2305 = xor i32 %2294, %2287
  %2306 = xor i32 %2305, %2295
  %2307 = lshr i32 %2306, 4
  %2308 = trunc i32 %2307 to i8
  %2309 = and i8 %2308, 1
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2309, i8* %2310, align 1, !tbaa !2447
  %2311 = icmp eq i32 %2295, 0
  %2312 = zext i1 %2311 to i8
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2312, i8* %2313, align 1, !tbaa !2448
  %2314 = lshr i32 %2295, 31
  %2315 = trunc i32 %2314 to i8
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2315, i8* %2316, align 1, !tbaa !2449
  %2317 = lshr i32 %2287, 31
  %2318 = lshr i32 %2294, 31
  %2319 = xor i32 %2318, %2317
  %2320 = xor i32 %2314, %2317
  %2321 = add nuw nsw i32 %2320, %2319
  %2322 = icmp eq i32 %2321, 2
  %2323 = zext i1 %2322 to i8
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2323, i8* %2324, align 1, !tbaa !2450
  %2325 = load i64, i64* %PC
  %2326 = add i64 %2325, 129
  %2327 = load i64, i64* %PC
  %2328 = add i64 %2327, 6
  %2329 = load i64, i64* %PC
  %2330 = add i64 %2329, 6
  store i64 %2330, i64* %PC
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2332 = load i8, i8* %2331, align 1, !tbaa !2449
  %2333 = icmp ne i8 %2332, 0
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2335 = load i8, i8* %2334, align 1, !tbaa !2450
  %2336 = icmp ne i8 %2335, 0
  %2337 = xor i1 %2333, %2336
  %2338 = xor i1 %2337, true
  %2339 = zext i1 %2338 to i8
  store i8 %2339, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2341 = select i1 %2337, i64 %2328, i64 %2326
  store i64 %2341, i64* %2340, align 8, !tbaa !2428
  %2342 = load i8, i8* %BRANCH_TAKEN
  %2343 = icmp eq i8 %2342, 1
  %2344 = load i64, i64* %RBP
  br i1 %2343, label %block_4007e4, label %block_400769

block_400a0e:                                     ; preds = %block_400aed, %block_4009db
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.0, %block_4009db ], [ %MEMORY.4, %block_400aed ]
  %2345 = load i64, i64* %RBP
  %2346 = sub i64 %2345, 8
  %2347 = load i64, i64* %PC
  %2348 = add i64 %2347, 3
  store i64 %2348, i64* %PC
  %2349 = inttoptr i64 %2346 to i32*
  %2350 = load i32, i32* %2349
  %2351 = zext i32 %2350 to i64
  store i64 %2351, i64* %RAX, align 8, !tbaa !2428
  %2352 = load i32, i32* %EAX
  %2353 = zext i32 %2352 to i64
  %2354 = load i64, i64* %RBP
  %2355 = sub i64 %2354, 32
  %2356 = load i64, i64* %PC
  %2357 = add i64 %2356, 3
  store i64 %2357, i64* %PC
  %2358 = inttoptr i64 %2355 to i32*
  %2359 = load i32, i32* %2358
  %2360 = sub i32 %2352, %2359
  %2361 = icmp ult i32 %2352, %2359
  %2362 = zext i1 %2361 to i8
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2362, i8* %2363, align 1, !tbaa !2432
  %2364 = and i32 %2360, 255
  %2365 = call i32 @llvm.ctpop.i32(i32 %2364) #17
  %2366 = trunc i32 %2365 to i8
  %2367 = and i8 %2366, 1
  %2368 = xor i8 %2367, 1
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2368, i8* %2369, align 1, !tbaa !2446
  %2370 = xor i32 %2359, %2352
  %2371 = xor i32 %2370, %2360
  %2372 = lshr i32 %2371, 4
  %2373 = trunc i32 %2372 to i8
  %2374 = and i8 %2373, 1
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2374, i8* %2375, align 1, !tbaa !2447
  %2376 = icmp eq i32 %2360, 0
  %2377 = zext i1 %2376 to i8
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2377, i8* %2378, align 1, !tbaa !2448
  %2379 = lshr i32 %2360, 31
  %2380 = trunc i32 %2379 to i8
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2380, i8* %2381, align 1, !tbaa !2449
  %2382 = lshr i32 %2352, 31
  %2383 = lshr i32 %2359, 31
  %2384 = xor i32 %2383, %2382
  %2385 = xor i32 %2379, %2382
  %2386 = add nuw nsw i32 %2385, %2384
  %2387 = icmp eq i32 %2386, 2
  %2388 = zext i1 %2387 to i8
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2388, i8* %2389, align 1, !tbaa !2450
  %2390 = load i64, i64* %PC
  %2391 = add i64 %2390, 236
  %2392 = load i64, i64* %PC
  %2393 = add i64 %2392, 6
  %2394 = load i64, i64* %PC
  %2395 = add i64 %2394, 6
  store i64 %2395, i64* %PC
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2397 = load i8, i8* %2396, align 1, !tbaa !2449
  %2398 = icmp ne i8 %2397, 0
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2400 = load i8, i8* %2399, align 1, !tbaa !2450
  %2401 = icmp ne i8 %2400, 0
  %2402 = xor i1 %2398, %2401
  %2403 = xor i1 %2402, true
  %2404 = zext i1 %2403 to i8
  store i8 %2404, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2406 = select i1 %2402, i64 %2393, i64 %2391
  store i64 %2406, i64* %2405, align 8, !tbaa !2428
  %2407 = load i8, i8* %BRANCH_TAKEN
  %2408 = icmp eq i8 %2407, 1
  %2409 = load i64, i64* %RBP
  br i1 %2408, label %block_400b00, label %block_400a1a

block_400a71:                                     ; preds = %block_400a2d
  %2410 = load i64, i64* %RBP
  %2411 = sub i64 %2410, 12
  %2412 = load i64, i64* %PC
  %2413 = add i64 %2412, 3
  store i64 %2413, i64* %PC
  %2414 = inttoptr i64 %2411 to i32*
  %2415 = load i32, i32* %2414
  %2416 = zext i32 %2415 to i64
  store i64 %2416, i64* %RAX, align 8, !tbaa !2428
  %2417 = load i64, i64* %RAX
  %2418 = load i64, i64* %PC
  %2419 = add i64 %2418, 3
  store i64 %2419, i64* %PC
  %2420 = and i64 15, %2417
  %2421 = trunc i64 %2420 to i32
  store i64 %2420, i64* %RAX, align 8, !tbaa !2428
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2422, align 1, !tbaa !2432
  %2423 = and i32 %2421, 255
  %2424 = call i32 @llvm.ctpop.i32(i32 %2423) #17
  %2425 = trunc i32 %2424 to i8
  %2426 = and i8 %2425, 1
  %2427 = xor i8 %2426, 1
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2427, i8* %2428, align 1, !tbaa !2446
  %2429 = icmp eq i32 %2421, 0
  %2430 = zext i1 %2429 to i8
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2430, i8* %2431, align 1, !tbaa !2448
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2432, align 1, !tbaa !2449
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2433, align 1, !tbaa !2450
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2434, align 1, !tbaa !2447
  %2435 = load i32, i32* %EAX
  %2436 = zext i32 %2435 to i64
  %2437 = load i64, i64* %PC
  %2438 = add i64 %2437, 3
  store i64 %2438, i64* %PC
  %2439 = sub i32 %2435, 8
  %2440 = icmp ult i32 %2435, 8
  %2441 = zext i1 %2440 to i8
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2441, i8* %2442, align 1, !tbaa !2432
  %2443 = and i32 %2439, 255
  %2444 = call i32 @llvm.ctpop.i32(i32 %2443) #17
  %2445 = trunc i32 %2444 to i8
  %2446 = and i8 %2445, 1
  %2447 = xor i8 %2446, 1
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2447, i8* %2448, align 1, !tbaa !2446
  %2449 = xor i64 8, %2436
  %2450 = trunc i64 %2449 to i32
  %2451 = xor i32 %2450, %2439
  %2452 = lshr i32 %2451, 4
  %2453 = trunc i32 %2452 to i8
  %2454 = and i8 %2453, 1
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2454, i8* %2455, align 1, !tbaa !2447
  %2456 = icmp eq i32 %2439, 0
  %2457 = zext i1 %2456 to i8
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2457, i8* %2458, align 1, !tbaa !2448
  %2459 = lshr i32 %2439, 31
  %2460 = trunc i32 %2459 to i8
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2460, i8* %2461, align 1, !tbaa !2449
  %2462 = lshr i32 %2435, 31
  %2463 = xor i32 %2459, %2462
  %2464 = add nuw nsw i32 %2463, %2462
  %2465 = icmp eq i32 %2464, 2
  %2466 = zext i1 %2465 to i8
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2466, i8* %2467, align 1, !tbaa !2450
  %2468 = load i64, i64* %PC
  %2469 = add i64 %2468, 3
  store i64 %2469, i64* %PC
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2471 = load i8, i8* %2470, align 1, !tbaa !2448
  store i8 %2471, i8* %CL, align 1, !tbaa !2451
  %2472 = load i64, i64* %RBP
  %2473 = sub i64 %2472, 177
  %2474 = load i8, i8* %CL
  %2475 = zext i8 %2474 to i64
  %2476 = load i64, i64* %PC
  %2477 = add i64 %2476, 6
  store i64 %2477, i64* %PC
  %2478 = inttoptr i64 %2473 to i8*
  store i8 %2474, i8* %2478
  br label %block_400a83

block_40078b:                                     ; preds = %block_40077c
  %2479 = load i64, i64* %RBP
  %2480 = sub i64 %2479, 12
  %2481 = load i64, i64* %PC
  %2482 = add i64 %2481, 3
  store i64 %2482, i64* %PC
  %2483 = inttoptr i64 %2480 to i32*
  %2484 = load i32, i32* %2483
  %2485 = zext i32 %2484 to i64
  store i64 %2485, i64* %RAX, align 8, !tbaa !2428
  %2486 = load i64, i64* %RAX
  %2487 = load i64, i64* %PC
  %2488 = add i64 %2487, 3
  store i64 %2488, i64* %PC
  %2489 = and i64 15, %2486
  %2490 = trunc i64 %2489 to i32
  store i64 %2489, i64* %RAX, align 8, !tbaa !2428
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2491, align 1, !tbaa !2432
  %2492 = and i32 %2490, 255
  %2493 = call i32 @llvm.ctpop.i32(i32 %2492) #17
  %2494 = trunc i32 %2493 to i8
  %2495 = and i8 %2494, 1
  %2496 = xor i8 %2495, 1
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2496, i8* %2497, align 1, !tbaa !2446
  %2498 = icmp eq i32 %2490, 0
  %2499 = zext i1 %2498 to i8
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2499, i8* %2500, align 1, !tbaa !2448
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2501, align 1, !tbaa !2449
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2502, align 1, !tbaa !2450
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2503, align 1, !tbaa !2447
  %2504 = load i32, i32* %EAX
  %2505 = zext i32 %2504 to i64
  %2506 = load i64, i64* %PC
  %2507 = add i64 %2506, 3
  store i64 %2507, i64* %PC
  %2508 = sub i32 %2504, 8
  %2509 = icmp ult i32 %2504, 8
  %2510 = zext i1 %2509 to i8
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2510, i8* %2511, align 1, !tbaa !2432
  %2512 = and i32 %2508, 255
  %2513 = call i32 @llvm.ctpop.i32(i32 %2512) #17
  %2514 = trunc i32 %2513 to i8
  %2515 = and i8 %2514, 1
  %2516 = xor i8 %2515, 1
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2516, i8* %2517, align 1, !tbaa !2446
  %2518 = xor i64 8, %2505
  %2519 = trunc i64 %2518 to i32
  %2520 = xor i32 %2519, %2508
  %2521 = lshr i32 %2520, 4
  %2522 = trunc i32 %2521 to i8
  %2523 = and i8 %2522, 1
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2523, i8* %2524, align 1, !tbaa !2447
  %2525 = icmp eq i32 %2508, 0
  %2526 = zext i1 %2525 to i8
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2526, i8* %2527, align 1, !tbaa !2448
  %2528 = lshr i32 %2508, 31
  %2529 = trunc i32 %2528 to i8
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2529, i8* %2530, align 1, !tbaa !2449
  %2531 = lshr i32 %2504, 31
  %2532 = xor i32 %2528, %2531
  %2533 = add nuw nsw i32 %2532, %2531
  %2534 = icmp eq i32 %2533, 2
  %2535 = zext i1 %2534 to i8
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2535, i8* %2536, align 1, !tbaa !2450
  %2537 = load i64, i64* %PC
  %2538 = add i64 %2537, 42
  %2539 = load i64, i64* %PC
  %2540 = add i64 %2539, 6
  %2541 = load i64, i64* %PC
  %2542 = add i64 %2541, 6
  store i64 %2542, i64* %PC
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2544 = load i8, i8* %2543, align 1, !tbaa !2448
  %2545 = icmp eq i8 %2544, 0
  %2546 = zext i1 %2545 to i8
  store i8 %2546, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2548 = select i1 %2545, i64 %2538, i64 %2540
  store i64 %2548, i64* %2547, align 8, !tbaa !2428
  %2549 = load i8, i8* %BRANCH_TAKEN
  %2550 = icmp eq i8 %2549, 1
  br i1 %2550, label %block_4007be, label %block_40079a

block_40071b:                                     ; preds = %block_4006b0
  %2551 = load i64, i64* %PC
  %2552 = add i64 %2551, 10
  store i64 %2552, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 72), i64* %RSI, align 8, !tbaa !2428
  %2553 = load i64, i64* %PC
  %2554 = add i64 %2553, 8
  store i64 %2554, i64* %PC
  %2555 = load i64, i64* @stderr
  store i64 %2555, i64* %RDI, align 8, !tbaa !2428
  %2556 = load i64, i64* %PC
  %2557 = add i64 %2556, 2
  store i64 %2557, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %2558 = load i64, i64* %PC
  %2559 = sub i64 %2558, 431
  %2560 = load i64, i64* %PC
  %2561 = add i64 %2560, 5
  %2562 = load i64, i64* %PC
  %2563 = add i64 %2562, 5
  store i64 %2563, i64* %PC
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2565 = load i64, i64* %2564, align 8, !tbaa !2428
  %2566 = add i64 %2565, -8
  %2567 = inttoptr i64 %2566 to i64*
  store i64 %2561, i64* %2567
  store i64 %2566, i64* %2564, align 8, !tbaa !2428
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2559, i64* %2568, align 8, !tbaa !2428
  %2569 = load i64, i64* %PC
  %2570 = call %struct.Memory* @ext_6020b8_fprintf(%struct.State* %0, i64 %2569, %struct.Memory* %298)
  %2571 = load i64, i64* %PC
  %2572 = add i64 %2571, 5
  store i64 %2572, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %2573 = load i64, i64* %RBP
  %2574 = sub i64 %2573, 140
  %2575 = load i32, i32* %EAX
  %2576 = zext i32 %2575 to i64
  %2577 = load i64, i64* %PC
  %2578 = add i64 %2577, 6
  store i64 %2578, i64* %PC
  %2579 = inttoptr i64 %2574 to i32*
  store i32 %2575, i32* %2579
  %2580 = load i64, i64* %PC
  %2581 = sub i64 %2580, 399
  %2582 = load i64, i64* %PC
  %2583 = add i64 %2582, 5
  %2584 = load i64, i64* %PC
  %2585 = add i64 %2584, 5
  store i64 %2585, i64* %PC
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2587 = load i64, i64* %2586, align 8, !tbaa !2428
  %2588 = add i64 %2587, -8
  %2589 = inttoptr i64 %2588 to i64*
  store i64 %2583, i64* %2589
  store i64 %2588, i64* %2586, align 8, !tbaa !2428
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2581, i64* %2590, align 8, !tbaa !2428
  %2591 = load i64, i64* %PC
  %2592 = call %struct.Memory* @ext_6020d0_exit(%struct.State* %0, i64 %2591, %struct.Memory* %2570)
  %2593 = load i64, i64* %PC
  %2594 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %2593, %struct.Memory* %2592)
  ret %struct.Memory* %2594

block_400b0a:                                     ; preds = %block_400b00
  store i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 148), i64* %RSI, align 8, !tbaa !2428
  %2595 = load i64, i64* %PC
  %2596 = add i64 %2595, 8
  store i64 %2596, i64* %PC
  %2597 = load i64, i64* @stderr
  store i64 %2597, i64* %RDI, align 8, !tbaa !2428
  %2598 = load i64, i64* %RBP
  %2599 = sub i64 %2598, 28
  %2600 = load i64, i64* %PC
  %2601 = add i64 %2600, 3
  store i64 %2601, i64* %PC
  %2602 = inttoptr i64 %2599 to i32*
  %2603 = load i32, i32* %2602
  %2604 = zext i32 %2603 to i64
  store i64 %2604, i64* %RDX, align 8, !tbaa !2428
  %2605 = load i64, i64* %PC
  %2606 = add i64 %2605, 2
  store i64 %2606, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %2607 = load i64, i64* %PC
  %2608 = sub i64 %2607, 1441
  %2609 = load i64, i64* %PC
  %2610 = add i64 %2609, 5
  %2611 = load i64, i64* %PC
  %2612 = add i64 %2611, 5
  store i64 %2612, i64* %PC
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2614 = load i64, i64* %2613, align 8, !tbaa !2428
  %2615 = add i64 %2614, -8
  %2616 = inttoptr i64 %2615 to i64*
  store i64 %2610, i64* %2616
  store i64 %2615, i64* %2613, align 8, !tbaa !2428
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2608, i64* %2617, align 8, !tbaa !2428
  %2618 = load i64, i64* %PC
  %2619 = call %struct.Memory* @ext_6020b8_fprintf(%struct.State* %0, i64 %2618, %struct.Memory* %MEMORY.12)
  %2620 = load i64, i64* %RBP
  %2621 = sub i64 %2620, 188
  %2622 = load i32, i32* %EAX
  %2623 = zext i32 %2622 to i64
  %2624 = load i64, i64* %PC
  %2625 = add i64 %2624, 6
  store i64 %2625, i64* %PC
  %2626 = inttoptr i64 %2621 to i32*
  store i32 %2622, i32* %2626
  %2627 = load i64, i64* %PC
  %2628 = add i64 %2627, 42
  %2629 = load i64, i64* %PC
  %2630 = add i64 %2629, 5
  store i64 %2630, i64* %PC
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2628, i64* %2631, align 8, !tbaa !2428
  br label %block_400b56

block_400888:                                     ; preds = %block_40087a
  %2632 = load i64, i64* %RBP
  %2633 = sub i64 %2632, 40
  %2634 = load i64, i64* %PC
  %2635 = add i64 %2634, 4
  store i64 %2635, i64* %PC
  %2636 = inttoptr i64 %2633 to i64*
  %2637 = load i64, i64* %2636
  store i64 %2637, i64* %RAX, align 8, !tbaa !2428
  %2638 = load i64, i64* %RBP
  %2639 = sub i64 %2638, 8
  %2640 = load i64, i64* %PC
  %2641 = add i64 %2640, 4
  store i64 %2641, i64* %PC
  %2642 = inttoptr i64 %2639 to i32*
  %2643 = load i32, i32* %2642
  %2644 = sext i32 %2643 to i64
  store i64 %2644, i64* %RCX, align 8, !tbaa !2428
  %2645 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2646 = load i64, i64* %RAX
  %2647 = load i64, i64* %RCX
  %2648 = mul i64 %2647, 8
  %2649 = add i64 %2648, %2646
  %2650 = load i64, i64* %PC
  %2651 = add i64 %2650, 5
  store i64 %2651, i64* %PC
  %2652 = inttoptr i64 %2649 to double*
  %2653 = load double, double* %2652
  %2654 = bitcast i8* %2645 to double*
  store double %2653, double* %2654, align 1, !tbaa !2452
  %2655 = getelementptr inbounds i8, i8* %2645, i64 8
  %2656 = bitcast i8* %2655 to double*
  store double 0.000000e+00, double* %2656, align 1, !tbaa !2452
  %2657 = load i64, i64* %RBP
  %2658 = sub i64 %2657, 112
  %2659 = bitcast %union.vec128_t* %XMM0 to i8*
  %2660 = load i64, i64* %PC
  %2661 = add i64 %2660, 5
  store i64 %2661, i64* %PC
  %2662 = bitcast i8* %2659 to double*
  %2663 = load double, double* %2662, align 1
  %2664 = inttoptr i64 %2658 to double*
  store double %2663, double* %2664
  %2665 = load i64, i64* %RBP
  %2666 = sub i64 %2665, 40
  %2667 = load i64, i64* %PC
  %2668 = add i64 %2667, 4
  store i64 %2668, i64* %PC
  %2669 = inttoptr i64 %2666 to i64*
  %2670 = load i64, i64* %2669
  store i64 %2670, i64* %RAX, align 8, !tbaa !2428
  %2671 = load i64, i64* %RBP
  %2672 = sub i64 %2671, 8
  %2673 = load i64, i64* %PC
  %2674 = add i64 %2673, 3
  store i64 %2674, i64* %PC
  %2675 = inttoptr i64 %2672 to i32*
  %2676 = load i32, i32* %2675
  %2677 = zext i32 %2676 to i64
  store i64 %2677, i64* %RDX, align 8, !tbaa !2428
  %2678 = load i64, i64* %RDX
  %2679 = load i64, i64* %PC
  %2680 = add i64 %2679, 3
  store i64 %2680, i64* %PC
  %2681 = trunc i64 %2678 to i32
  %2682 = add i32 1, %2681
  %2683 = zext i32 %2682 to i64
  store i64 %2683, i64* %RDX, align 8, !tbaa !2428
  %2684 = icmp ult i32 %2682, %2681
  %2685 = icmp ult i32 %2682, 1
  %2686 = or i1 %2684, %2685
  %2687 = zext i1 %2686 to i8
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2687, i8* %2688, align 1, !tbaa !2432
  %2689 = and i32 %2682, 255
  %2690 = call i32 @llvm.ctpop.i32(i32 %2689) #17
  %2691 = trunc i32 %2690 to i8
  %2692 = and i8 %2691, 1
  %2693 = xor i8 %2692, 1
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2693, i8* %2694, align 1, !tbaa !2446
  %2695 = xor i64 1, %2678
  %2696 = trunc i64 %2695 to i32
  %2697 = xor i32 %2696, %2682
  %2698 = lshr i32 %2697, 4
  %2699 = trunc i32 %2698 to i8
  %2700 = and i8 %2699, 1
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2700, i8* %2701, align 1, !tbaa !2447
  %2702 = icmp eq i32 %2682, 0
  %2703 = zext i1 %2702 to i8
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2703, i8* %2704, align 1, !tbaa !2448
  %2705 = lshr i32 %2682, 31
  %2706 = trunc i32 %2705 to i8
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2706, i8* %2707, align 1, !tbaa !2449
  %2708 = lshr i32 %2681, 31
  %2709 = xor i32 %2705, %2708
  %2710 = add nuw nsw i32 %2709, %2705
  %2711 = icmp eq i32 %2710, 2
  %2712 = zext i1 %2711 to i8
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2712, i8* %2713, align 1, !tbaa !2450
  %2714 = load i32, i32* %EDX
  %2715 = zext i32 %2714 to i64
  %2716 = load i64, i64* %PC
  %2717 = add i64 %2716, 3
  store i64 %2717, i64* %PC
  %2718 = shl i64 %2715, 32
  %2719 = ashr exact i64 %2718, 32
  store i64 %2719, i64* %RCX, align 8, !tbaa !2428
  %2720 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2721 = load i64, i64* %RAX
  %2722 = load i64, i64* %RCX
  %2723 = mul i64 %2722, 8
  %2724 = add i64 %2723, %2721
  %2725 = load i64, i64* %PC
  %2726 = add i64 %2725, 5
  store i64 %2726, i64* %PC
  %2727 = inttoptr i64 %2724 to double*
  %2728 = load double, double* %2727
  %2729 = bitcast i8* %2720 to double*
  store double %2728, double* %2729, align 1, !tbaa !2452
  %2730 = getelementptr inbounds i8, i8* %2720, i64 8
  %2731 = bitcast i8* %2730 to double*
  store double 0.000000e+00, double* %2731, align 1, !tbaa !2452
  %2732 = load i64, i64* %RBP
  %2733 = sub i64 %2732, 120
  %2734 = bitcast %union.vec128_t* %XMM0 to i8*
  %2735 = load i64, i64* %PC
  %2736 = add i64 %2735, 5
  store i64 %2736, i64* %PC
  %2737 = bitcast i8* %2734 to double*
  %2738 = load double, double* %2737, align 1
  %2739 = inttoptr i64 %2733 to double*
  store double %2738, double* %2739
  %2740 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2741 = load i64, i64* %RBP
  %2742 = sub i64 %2741, 112
  %2743 = load i64, i64* %PC
  %2744 = add i64 %2743, 5
  store i64 %2744, i64* %PC
  %2745 = inttoptr i64 %2742 to double*
  %2746 = load double, double* %2745
  %2747 = bitcast i8* %2740 to double*
  store double %2746, double* %2747, align 1, !tbaa !2452
  %2748 = getelementptr inbounds i8, i8* %2740, i64 8
  %2749 = bitcast i8* %2748 to double*
  store double 0.000000e+00, double* %2749, align 1, !tbaa !2452
  %2750 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2751 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2752 = load i64, i64* %RBP
  %2753 = sub i64 %2752, 128
  %2754 = load i64, i64* %PC
  %2755 = add i64 %2754, 5
  store i64 %2755, i64* %PC
  %2756 = bitcast i8* %2751 to double*
  %2757 = load double, double* %2756, align 1
  %2758 = getelementptr inbounds i8, i8* %2751, i64 8
  %2759 = bitcast i8* %2758 to i64*
  %2760 = load i64, i64* %2759, align 1
  %2761 = inttoptr i64 %2753 to double*
  %2762 = load double, double* %2761
  %2763 = fadd double %2757, %2762
  %2764 = bitcast i8* %2750 to double*
  store double %2763, double* %2764, align 1, !tbaa !2452
  %2765 = getelementptr inbounds i8, i8* %2750, i64 8
  %2766 = bitcast i8* %2765 to i64*
  store i64 %2760, i64* %2766, align 1, !tbaa !2452
  %2767 = load i64, i64* %RBP
  %2768 = sub i64 %2767, 128
  %2769 = bitcast %union.vec128_t* %XMM0 to i8*
  %2770 = load i64, i64* %PC
  %2771 = add i64 %2770, 5
  store i64 %2771, i64* %PC
  %2772 = bitcast i8* %2769 to double*
  %2773 = load double, double* %2772, align 1
  %2774 = inttoptr i64 %2768 to double*
  store double %2773, double* %2774
  %2775 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2776 = load i64, i64* %RBP
  %2777 = sub i64 %2776, 120
  %2778 = load i64, i64* %PC
  %2779 = add i64 %2778, 5
  store i64 %2779, i64* %PC
  %2780 = inttoptr i64 %2777 to double*
  %2781 = load double, double* %2780
  %2782 = bitcast i8* %2775 to double*
  store double %2781, double* %2782, align 1, !tbaa !2452
  %2783 = getelementptr inbounds i8, i8* %2775, i64 8
  %2784 = bitcast i8* %2783 to double*
  store double 0.000000e+00, double* %2784, align 1, !tbaa !2452
  %2785 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2786 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2787 = load i64, i64* %RBP
  %2788 = sub i64 %2787, 136
  %2789 = load i64, i64* %PC
  %2790 = add i64 %2789, 8
  store i64 %2790, i64* %PC
  %2791 = bitcast i8* %2786 to double*
  %2792 = load double, double* %2791, align 1
  %2793 = getelementptr inbounds i8, i8* %2786, i64 8
  %2794 = bitcast i8* %2793 to i64*
  %2795 = load i64, i64* %2794, align 1
  %2796 = inttoptr i64 %2788 to double*
  %2797 = load double, double* %2796
  %2798 = fadd double %2792, %2797
  %2799 = bitcast i8* %2785 to double*
  store double %2798, double* %2799, align 1, !tbaa !2452
  %2800 = getelementptr inbounds i8, i8* %2785, i64 8
  %2801 = bitcast i8* %2800 to i64*
  store i64 %2795, i64* %2801, align 1, !tbaa !2452
  %2802 = load i64, i64* %RBP
  %2803 = sub i64 %2802, 136
  %2804 = bitcast %union.vec128_t* %XMM0 to i8*
  %2805 = load i64, i64* %PC
  %2806 = add i64 %2805, 8
  store i64 %2806, i64* %PC
  %2807 = bitcast i8* %2804 to double*
  %2808 = load double, double* %2807, align 1
  %2809 = inttoptr i64 %2803 to double*
  store double %2808, double* %2809
  %2810 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2811 = load i64, i64* %RBP
  %2812 = sub i64 %2811, 112
  %2813 = load i64, i64* %PC
  %2814 = add i64 %2813, 5
  store i64 %2814, i64* %PC
  %2815 = inttoptr i64 %2812 to double*
  %2816 = load double, double* %2815
  %2817 = bitcast i8* %2810 to double*
  store double %2816, double* %2817, align 1, !tbaa !2452
  %2818 = getelementptr inbounds i8, i8* %2810, i64 8
  %2819 = bitcast i8* %2818 to double*
  store double 0.000000e+00, double* %2819, align 1, !tbaa !2452
  %2820 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2821 = load i64, i64* %RBP
  %2822 = sub i64 %2821, 80
  %2823 = load i64, i64* %PC
  %2824 = add i64 %2823, 5
  store i64 %2824, i64* %PC
  %2825 = inttoptr i64 %2822 to double*
  %2826 = load double, double* %2825
  %2827 = bitcast i8* %2820 to double*
  store double %2826, double* %2827, align 1, !tbaa !2452
  %2828 = getelementptr inbounds i8, i8* %2820, i64 8
  %2829 = bitcast i8* %2828 to double*
  store double 0.000000e+00, double* %2829, align 1, !tbaa !2452
  %2830 = bitcast %union.vec128_t* %XMM1 to i8*
  %2831 = bitcast %union.vec128_t* %XMM0 to i8*
  %2832 = load i64, i64* %PC
  %2833 = add i64 %2832, 4
  store i64 %2833, i64* %PC
  %2834 = bitcast i8* %2830 to double*
  %2835 = load double, double* %2834, align 1
  %2836 = bitcast i8* %2831 to double*
  %2837 = load double, double* %2836, align 1
  %2838 = fcmp uno double %2835, %2837
  br i1 %2838, label %2839, label %2851

; <label>:2839:                                   ; preds = %block_400888
  %2840 = fadd double %2835, %2837
  %2841 = bitcast double %2840 to i64
  %2842 = and i64 %2841, 9221120237041090560
  %2843 = icmp eq i64 %2842, 9218868437227405312
  %2844 = and i64 %2841, 2251799813685247
  %2845 = icmp ne i64 %2844, 0
  %2846 = and i1 %2843, %2845
  br i1 %2846, label %2847, label %2857

; <label>:2847:                                   ; preds = %2839
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2849 = load i64, i64* %2848, align 8, !tbaa !2428
  %2850 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2849, %struct.Memory* %MEMORY.0) #18
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:2851:                                   ; preds = %block_400888
  %2852 = fcmp ogt double %2835, %2837
  br i1 %2852, label %2857, label %2853

; <label>:2853:                                   ; preds = %2851
  %2854 = fcmp olt double %2835, %2837
  br i1 %2854, label %2857, label %2855

; <label>:2855:                                   ; preds = %2853
  %2856 = fcmp oeq double %2835, %2837
  br i1 %2856, label %2857, label %2864

; <label>:2857:                                   ; preds = %2855, %2853, %2851, %2839
  %2858 = phi i8 [ 0, %2851 ], [ 0, %2853 ], [ 1, %2855 ], [ 1, %2839 ]
  %2859 = phi i8 [ 0, %2851 ], [ 0, %2853 ], [ 0, %2855 ], [ 1, %2839 ]
  %2860 = phi i8 [ 0, %2851 ], [ 1, %2853 ], [ 0, %2855 ], [ 1, %2839 ]
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2858, i8* %2861, align 1, !tbaa !2451
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2859, i8* %2862, align 1, !tbaa !2451
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2860, i8* %2863, align 1, !tbaa !2451
  br label %2864

; <label>:2864:                                   ; preds = %2857, %2855
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2865, align 1, !tbaa !2451
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2866, align 1, !tbaa !2451
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2867, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %2847, %2864
  %2868 = phi %struct.Memory* [ %2850, %2847 ], [ %MEMORY.0, %2864 ]
  %2869 = load i64, i64* %PC
  %2870 = add i64 %2869, 24
  %2871 = load i64, i64* %PC
  %2872 = add i64 %2871, 6
  %2873 = load i64, i64* %PC
  %2874 = add i64 %2873, 6
  store i64 %2874, i64* %PC
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2876 = load i8, i8* %2875, align 1, !tbaa !2432
  store i8 %2876, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2878 = icmp ne i8 %2876, 0
  %2879 = select i1 %2878, i64 %2870, i64 %2872
  store i64 %2879, i64* %2877, align 8, !tbaa !2428
  %2880 = load i8, i8* %BRANCH_TAKEN
  %2881 = icmp eq i8 %2880, 1
  %2882 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2883 = load i64, i64* %RBP
  br i1 %2881, label %block_4008fb, label %block_4008e9

block_4009b3:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %2884 = sub i64 %2986, 104
  %2885 = load i64, i64* %PC
  %2886 = add i64 %2885, 5
  store i64 %2886, i64* %PC
  %2887 = inttoptr i64 %2884 to double*
  %2888 = load double, double* %2887
  %2889 = bitcast i8* %2985 to double*
  store double %2888, double* %2889, align 1, !tbaa !2452
  %2890 = getelementptr inbounds i8, i8* %2985, i64 8
  %2891 = bitcast i8* %2890 to double*
  store double 0.000000e+00, double* %2891, align 1, !tbaa !2452
  %2892 = load i64, i64* %RBP
  %2893 = sub i64 %2892, 176
  %2894 = bitcast %union.vec128_t* %XMM0 to i8*
  %2895 = load i64, i64* %PC
  %2896 = add i64 %2895, 8
  store i64 %2896, i64* %PC
  %2897 = bitcast i8* %2894 to double*
  %2898 = load double, double* %2897, align 1
  %2899 = inttoptr i64 %2893 to double*
  store double %2898, double* %2899
  br label %block_4009c0

block_400984:                                     ; preds = %block_400977, %block_400965
  %MEMORY.13 = phi %struct.Memory* [ %1107, %block_400977 ], [ %1107, %block_400965 ]
  %2900 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2901 = load i64, i64* %RBP
  %2902 = sub i64 %2901, 168
  %2903 = load i64, i64* %PC
  %2904 = add i64 %2903, 8
  store i64 %2904, i64* %PC
  %2905 = inttoptr i64 %2902 to double*
  %2906 = load double, double* %2905
  %2907 = bitcast i8* %2900 to double*
  store double %2906, double* %2907, align 1, !tbaa !2452
  %2908 = getelementptr inbounds i8, i8* %2900, i64 8
  %2909 = bitcast i8* %2908 to double*
  store double 0.000000e+00, double* %2909, align 1, !tbaa !2452
  %2910 = load i64, i64* %RBP
  %2911 = sub i64 %2910, 96
  %2912 = bitcast %union.vec128_t* %XMM0 to i8*
  %2913 = load i64, i64* %PC
  %2914 = add i64 %2913, 5
  store i64 %2914, i64* %PC
  %2915 = bitcast i8* %2912 to double*
  %2916 = load double, double* %2915, align 1
  %2917 = inttoptr i64 %2911 to double*
  store double %2916, double* %2917
  %2918 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2919 = load i64, i64* %RBP
  %2920 = sub i64 %2919, 120
  %2921 = load i64, i64* %PC
  %2922 = add i64 %2921, 5
  store i64 %2922, i64* %PC
  %2923 = inttoptr i64 %2920 to double*
  %2924 = load double, double* %2923
  %2925 = bitcast i8* %2918 to double*
  store double %2924, double* %2925, align 1, !tbaa !2452
  %2926 = getelementptr inbounds i8, i8* %2918, i64 8
  %2927 = bitcast i8* %2926 to double*
  store double 0.000000e+00, double* %2927, align 1, !tbaa !2452
  %2928 = bitcast %union.vec128_t* %XMM0 to i8*
  %2929 = load i64, i64* %RBP
  %2930 = sub i64 %2929, 104
  %2931 = load i64, i64* %PC
  %2932 = add i64 %2931, 5
  store i64 %2932, i64* %PC
  %2933 = bitcast i8* %2928 to double*
  %2934 = load double, double* %2933, align 1
  %2935 = inttoptr i64 %2930 to double*
  %2936 = load double, double* %2935
  %2937 = fcmp uno double %2934, %2936
  br i1 %2937, label %2938, label %2950

; <label>:2938:                                   ; preds = %block_400984
  %2939 = fadd double %2934, %2936
  %2940 = bitcast double %2939 to i64
  %2941 = and i64 %2940, 9221120237041090560
  %2942 = icmp eq i64 %2941, 9218868437227405312
  %2943 = and i64 %2940, 2251799813685247
  %2944 = icmp ne i64 %2943, 0
  %2945 = and i1 %2942, %2944
  br i1 %2945, label %2946, label %2956

; <label>:2946:                                   ; preds = %2938
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2948 = load i64, i64* %2947, align 8, !tbaa !2428
  %2949 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2948, %struct.Memory* %MEMORY.13) #18
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:2950:                                   ; preds = %block_400984
  %2951 = fcmp ogt double %2934, %2936
  br i1 %2951, label %2956, label %2952

; <label>:2952:                                   ; preds = %2950
  %2953 = fcmp olt double %2934, %2936
  br i1 %2953, label %2956, label %2954

; <label>:2954:                                   ; preds = %2952
  %2955 = fcmp oeq double %2934, %2936
  br i1 %2955, label %2956, label %2963

; <label>:2956:                                   ; preds = %2954, %2952, %2950, %2938
  %2957 = phi i8 [ 0, %2950 ], [ 0, %2952 ], [ 1, %2954 ], [ 1, %2938 ]
  %2958 = phi i8 [ 0, %2950 ], [ 0, %2952 ], [ 0, %2954 ], [ 1, %2938 ]
  %2959 = phi i8 [ 0, %2950 ], [ 1, %2952 ], [ 0, %2954 ], [ 1, %2938 ]
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2957, i8* %2960, align 1, !tbaa !2451
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2958, i8* %2961, align 1, !tbaa !2451
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2959, i8* %2962, align 1, !tbaa !2451
  br label %2963

; <label>:2963:                                   ; preds = %2956, %2954
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2964, align 1, !tbaa !2451
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2965, align 1, !tbaa !2451
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2966, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %2946, %2963
  %2967 = phi %struct.Memory* [ %2949, %2946 ], [ %MEMORY.13, %2963 ]
  %2968 = load i64, i64* %PC
  %2969 = add i64 %2968, 24
  %2970 = load i64, i64* %PC
  %2971 = add i64 %2970, 6
  %2972 = load i64, i64* %PC
  %2973 = add i64 %2972, 6
  store i64 %2973, i64* %PC
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2975 = load i8, i8* %2974, align 1, !tbaa !2432
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2977 = load i8, i8* %2976, align 1, !tbaa !2448
  %2978 = or i8 %2977, %2975
  %2979 = icmp ne i8 %2978, 0
  %2980 = zext i1 %2979 to i8
  store i8 %2980, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2982 = select i1 %2979, i64 %2969, i64 %2971
  store i64 %2982, i64* %2981, align 8, !tbaa !2428
  %2983 = load i8, i8* %BRANCH_TAKEN
  %2984 = icmp eq i8 %2983, 1
  %2985 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2986 = load i64, i64* %RBP
  br i1 %2984, label %block_4009b3, label %block_4009a1

block_400aed:                                     ; preds = %block_400a21
  %2987 = add i64 %898, 5
  %2988 = load i64, i64* %PC
  %2989 = add i64 %2988, 5
  store i64 %2989, i64* %PC
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2987, i64* %2990, align 8, !tbaa !2428
  %2991 = load i64, i64* %RBP
  %2992 = sub i64 %2991, 8
  %2993 = load i64, i64* %PC
  %2994 = add i64 %2993, 3
  store i64 %2994, i64* %PC
  %2995 = inttoptr i64 %2992 to i32*
  %2996 = load i32, i32* %2995
  %2997 = zext i32 %2996 to i64
  store i64 %2997, i64* %RAX, align 8, !tbaa !2428
  %2998 = load i64, i64* %RAX
  %2999 = load i64, i64* %PC
  %3000 = add i64 %2999, 3
  store i64 %3000, i64* %PC
  %3001 = trunc i64 %2998 to i32
  %3002 = add i32 1, %3001
  %3003 = zext i32 %3002 to i64
  store i64 %3003, i64* %RAX, align 8, !tbaa !2428
  %3004 = icmp ult i32 %3002, %3001
  %3005 = icmp ult i32 %3002, 1
  %3006 = or i1 %3004, %3005
  %3007 = zext i1 %3006 to i8
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3007, i8* %3008, align 1, !tbaa !2432
  %3009 = and i32 %3002, 255
  %3010 = call i32 @llvm.ctpop.i32(i32 %3009) #17
  %3011 = trunc i32 %3010 to i8
  %3012 = and i8 %3011, 1
  %3013 = xor i8 %3012, 1
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3013, i8* %3014, align 1, !tbaa !2446
  %3015 = xor i64 1, %2998
  %3016 = trunc i64 %3015 to i32
  %3017 = xor i32 %3016, %3002
  %3018 = lshr i32 %3017, 4
  %3019 = trunc i32 %3018 to i8
  %3020 = and i8 %3019, 1
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3020, i8* %3021, align 1, !tbaa !2447
  %3022 = icmp eq i32 %3002, 0
  %3023 = zext i1 %3022 to i8
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3023, i8* %3024, align 1, !tbaa !2448
  %3025 = lshr i32 %3002, 31
  %3026 = trunc i32 %3025 to i8
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3026, i8* %3027, align 1, !tbaa !2449
  %3028 = lshr i32 %3001, 31
  %3029 = xor i32 %3025, %3028
  %3030 = add nuw nsw i32 %3029, %3025
  %3031 = icmp eq i32 %3030, 2
  %3032 = zext i1 %3031 to i8
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3032, i8* %3033, align 1, !tbaa !2450
  %3034 = load i64, i64* %RBP
  %3035 = sub i64 %3034, 8
  %3036 = load i32, i32* %EAX
  %3037 = zext i32 %3036 to i64
  %3038 = load i64, i64* %PC
  %3039 = add i64 %3038, 3
  store i64 %3039, i64* %PC
  %3040 = inttoptr i64 %3035 to i32*
  store i32 %3036, i32* %3040
  %3041 = load i64, i64* %PC
  %3042 = sub i64 %3041, 237
  %3043 = load i64, i64* %PC
  %3044 = add i64 %3043, 5
  store i64 %3044, i64* %PC
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3042, i64* %3045, align 8, !tbaa !2428
  br label %block_400a0e

block_400a83:                                     ; preds = %block_400a71, %block_400a2d
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.4, %block_400a2d ], [ %MEMORY.4, %block_400a71 ]
  %3046 = load i64, i64* %RBP
  %3047 = sub i64 %3046, 177
  %3048 = load i64, i64* %PC
  %3049 = add i64 %3048, 6
  store i64 %3049, i64* %PC
  %3050 = inttoptr i64 %3047 to i8*
  %3051 = load i8, i8* %3050
  store i8 %3051, i8* %AL, align 1, !tbaa !2451
  %3052 = load i64, i64* %RCX
  %3053 = load i32, i32* %ECX
  %3054 = zext i32 %3053 to i64
  %3055 = load i64, i64* %PC
  %3056 = add i64 %3055, 2
  store i64 %3056, i64* %PC
  %3057 = xor i64 %3054, %3052
  %3058 = trunc i64 %3057 to i32
  %3059 = and i64 %3057, 4294967295
  store i64 %3059, i64* %RCX, align 8, !tbaa !2428
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3060, align 1, !tbaa !2432
  %3061 = and i32 %3058, 255
  %3062 = call i32 @llvm.ctpop.i32(i32 %3061) #17
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
  %3075 = load i64, i64* %PC
  %3076 = add i64 %3075, 5
  store i64 %3076, i64* %PC
  store i64 255, i64* %RDX, align 8, !tbaa !2428
  %3077 = load i8, i8* %AL
  %3078 = zext i8 %3077 to i64
  %3079 = load i64, i64* %PC
  %3080 = add i64 %3079, 2
  store i64 %3080, i64* %PC
  %3081 = and i64 1, %3078
  %3082 = trunc i64 %3081 to i8
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3083, align 1, !tbaa !2432
  %3084 = trunc i64 %3081 to i32
  %3085 = and i32 %3084, 255
  %3086 = call i32 @llvm.ctpop.i32(i32 %3085) #17
  %3087 = trunc i32 %3086 to i8
  %3088 = and i8 %3087, 1
  %3089 = xor i8 %3088, 1
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3089, i8* %3090, align 1, !tbaa !2446
  %3091 = icmp eq i8 %3082, 0
  %3092 = zext i1 %3091 to i8
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3092, i8* %3093, align 1, !tbaa !2448
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3094, align 1, !tbaa !2449
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3095, align 1, !tbaa !2450
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3096, align 1, !tbaa !2447
  %3097 = load i32, i32* %EDX
  %3098 = zext i32 %3097 to i64
  %3099 = load i64, i64* %PC
  %3100 = add i64 %3099, 3
  store i64 %3100, i64* %PC
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3102 = load i8, i8* %3101, align 1, !tbaa !2448
  %3103 = icmp eq i8 %3102, 0
  %3104 = load i64, i64* %RCX, align 8, !tbaa !2428
  %3105 = select i1 %3103, i64 %3098, i64 %3104
  %3106 = and i64 %3105, 4294967295
  store i64 %3106, i64* %RCX, align 8, !tbaa !2428
  %3107 = load i64, i64* %RBP
  %3108 = sub i64 %3107, 20
  %3109 = load i32, i32* %ECX
  %3110 = zext i32 %3109 to i64
  %3111 = load i64, i64* %PC
  %3112 = add i64 %3111, 3
  store i64 %3112, i64* %PC
  %3113 = inttoptr i64 %3108 to i32*
  store i32 %3109, i32* %3113
  %3114 = load i64, i64* %RBP
  %3115 = sub i64 %3114, 16
  %3116 = load i64, i64* %PC
  %3117 = add i64 %3116, 3
  store i64 %3117, i64* %PC
  %3118 = inttoptr i64 %3115 to i32*
  %3119 = load i32, i32* %3118
  %3120 = zext i32 %3119 to i64
  store i64 %3120, i64* %RCX, align 8, !tbaa !2428
  %3121 = load i32, i32* %ECX
  %3122 = zext i32 %3121 to i64
  %3123 = load i64, i64* %RBP
  %3124 = sub i64 %3123, 20
  %3125 = load i64, i64* %PC
  %3126 = add i64 %3125, 3
  store i64 %3126, i64* %PC
  %3127 = inttoptr i64 %3124 to i32*
  %3128 = load i32, i32* %3127
  %3129 = sub i32 %3121, %3128
  %3130 = icmp ult i32 %3121, %3128
  %3131 = zext i1 %3130 to i8
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3131, i8* %3132, align 1, !tbaa !2432
  %3133 = and i32 %3129, 255
  %3134 = call i32 @llvm.ctpop.i32(i32 %3133) #17
  %3135 = trunc i32 %3134 to i8
  %3136 = and i8 %3135, 1
  %3137 = xor i8 %3136, 1
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3137, i8* %3138, align 1, !tbaa !2446
  %3139 = xor i32 %3128, %3121
  %3140 = xor i32 %3139, %3129
  %3141 = lshr i32 %3140, 4
  %3142 = trunc i32 %3141 to i8
  %3143 = and i8 %3142, 1
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3143, i8* %3144, align 1, !tbaa !2447
  %3145 = icmp eq i32 %3129, 0
  %3146 = zext i1 %3145 to i8
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3146, i8* %3147, align 1, !tbaa !2448
  %3148 = lshr i32 %3129, 31
  %3149 = trunc i32 %3148 to i8
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3149, i8* %3150, align 1, !tbaa !2449
  %3151 = lshr i32 %3121, 31
  %3152 = lshr i32 %3128, 31
  %3153 = xor i32 %3152, %3151
  %3154 = xor i32 %3148, %3151
  %3155 = add nuw nsw i32 %3154, %3153
  %3156 = icmp eq i32 %3155, 2
  %3157 = zext i1 %3156 to i8
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3157, i8* %3158, align 1, !tbaa !2450
  %3159 = load i64, i64* %PC
  %3160 = add i64 %3159, 60
  %3161 = load i64, i64* %PC
  %3162 = add i64 %3161, 6
  %3163 = load i64, i64* %PC
  %3164 = add i64 %3163, 6
  store i64 %3164, i64* %PC
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3166 = load i8, i8* %3165, align 1, !tbaa !2448
  store i8 %3166, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3168 = icmp ne i8 %3166, 0
  %3169 = select i1 %3168, i64 %3160, i64 %3162
  store i64 %3169, i64* %3167, align 8, !tbaa !2428
  %3170 = load i8, i8* %BRANCH_TAKEN
  %3171 = icmp eq i8 %3170, 1
  br i1 %3171, label %block_400ada, label %block_400aa4

block_400b00:                                     ; preds = %block_400a0e
  %3172 = sub i64 %2409, 24
  %3173 = load i64, i64* %PC
  %3174 = add i64 %3173, 4
  store i64 %3174, i64* %PC
  %3175 = inttoptr i64 %3172 to i32*
  %3176 = load i32, i32* %3175
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3177, align 1, !tbaa !2432
  %3178 = and i32 %3176, 255
  %3179 = call i32 @llvm.ctpop.i32(i32 %3178) #17
  %3180 = trunc i32 %3179 to i8
  %3181 = and i8 %3180, 1
  %3182 = xor i8 %3181, 1
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3182, i8* %3183, align 1, !tbaa !2446
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3184, align 1, !tbaa !2447
  %3185 = icmp eq i32 %3176, 0
  %3186 = zext i1 %3185 to i8
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3186, i8* %3187, align 1, !tbaa !2448
  %3188 = lshr i32 %3176, 31
  %3189 = trunc i32 %3188 to i8
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3189, i8* %3190, align 1, !tbaa !2449
  %3191 = lshr i32 %3176, 31
  %3192 = xor i32 %3188, %3191
  %3193 = add nuw nsw i32 %3192, %3191
  %3194 = icmp eq i32 %3193, 2
  %3195 = zext i1 %3194 to i8
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3195, i8* %3196, align 1, !tbaa !2450
  %3197 = load i64, i64* %PC
  %3198 = add i64 %3197, 45
  %3199 = load i64, i64* %PC
  %3200 = add i64 %3199, 6
  %3201 = load i64, i64* %PC
  %3202 = add i64 %3201, 6
  store i64 %3202, i64* %PC
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3204 = load i8, i8* %3203, align 1, !tbaa !2448
  %3205 = icmp eq i8 %3204, 0
  %3206 = zext i1 %3205 to i8
  store i8 %3206, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3208 = select i1 %3205, i64 %3198, i64 %3200
  store i64 %3208, i64* %3207, align 8, !tbaa !2428
  %3209 = load i8, i8* %BRANCH_TAKEN
  %3210 = icmp eq i8 %3209, 1
  %3211 = load i64, i64* %PC
  %3212 = add i64 %3211, 10
  store i64 %3212, i64* %PC
  br i1 %3210, label %block_400b31, label %block_400b0a
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005c0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005c0:
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
  %46 = call i32 @llvm.ctpop.i32(i32 %45) #17
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
  %79 = call i32 @llvm.ctpop.i32(i32 %78) #17
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
  store i64 ptrtoint (void ()* @callback_sub_4010e0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_401070___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
  %123 = call %struct.Memory* @ext_6020b0___libc_start_main(%struct.State* %0, i64 %122, %struct.Memory* %2)
  %124 = load i64, i64* %PC
  %125 = add i64 %124, 1
  store i64 %125, i64* %PC
  %126 = load i64, i64* %PC
  %127 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %126, %struct.Memory* %123)
  ret %struct.Memory* %127
}

; Function Attrs: noinline
define %struct.Memory* @sub_4010e4__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4010e4:
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
  %18 = call i32 @llvm.ctpop.i32(i32 %17) #17
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
  %52 = call i32 @llvm.ctpop.i32(i32 %51) #17
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
define %struct.Memory* @sub_4005f0__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005f0:
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
define %struct.Memory* @sub_400540__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400540:
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
  %21 = call i32 @llvm.ctpop.i32(i32 %20) #17
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
  %55 = call i32 @llvm.ctpop.i32(i32 %54) #17
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
  br i1 %80, label %block_400552, label %block_400550

block_400550:                                     ; preds = %block_400540
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
  br label %block_400552

block_400552:                                     ; preds = %block_400550, %block_400540
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400540 ], [ %92, %block_400550 ]
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
  %104 = call i32 @llvm.ctpop.i32(i32 %103) #17
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
define %struct.Memory* @sub_4010e0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4010e0:
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
define %struct.Memory* @sub_400600_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  store i64 6299728, i64* %RAX, align 8, !tbaa !2428
  %33 = load i64, i64* %RAX
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 6
  store i64 %35, i64* %PC
  %36 = sub i64 %33, 6299728
  %37 = icmp ult i64 %33, 6299728
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %38, i8* %39, align 1, !tbaa !2432
  %40 = trunc i64 %36 to i32
  %41 = and i32 %40, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41) #17
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = xor i8 %44, 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %45, i8* %46, align 1, !tbaa !2446
  %47 = xor i64 6299728, %33
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
  br i1 %80, label %block_400628, label %block_400611

block_40061b:                                     ; preds = %block_400611
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
  store i64 6299728, i64* %RDI, align 8, !tbaa !2428
  %90 = load i64, i64* %RAX
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 2
  store i64 %92, i64* %PC
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %90, i64* %93, align 8, !tbaa !2428
  %94 = load i64, i64* %PC
  switch i64 %94, label %162 [
    i64 4195882, label %block_40062a
    i64 4195875, label %block_400623
  ]

block_400611:                                     ; preds = %block_400600
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
  %105 = call i32 @llvm.ctpop.i32(i32 %104) #17
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
  br i1 %130, label %block_400628, label %block_40061b

block_400628:                                     ; preds = %block_400623, %block_400611, %block_400600
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400600 ], [ %2, %block_400611 ], [ %2, %block_400623 ]
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

block_40062a:                                     ; preds = %block_40061b
  %146 = load i64, i64* %RAX
  %147 = load i64, i64* %RAX
  %148 = add i64 %147, %146
  %149 = load i16, i16* %AX
  %150 = zext i16 %149 to i64
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 6
  store i64 %152, i64* %PC
  %153 = load i64, i64* %PC
  %154 = tail call %struct.Memory* @sub_400630_register_tm_clones(%struct.State* %0, i64 %153, %struct.Memory* %2)
  ret %struct.Memory* %154

block_400623:                                     ; preds = %block_40061b
  %155 = load i64, i64* %RAX
  %156 = load i64, i64* %RAX
  %157 = add i64 %156, %155
  %158 = load i32, i32* %EAX
  %159 = zext i32 %158 to i64
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 5
  store i64 %161, i64* %PC
  br label %block_400628

; <label>:162:                                    ; preds = %block_40061b
  %163 = load i64, i64* %PC
  %164 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %163, %struct.Memory* %2)
  ret %struct.Memory* %164
}

; Function Attrs: noinline
define %struct.Memory* @sub_400630_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400630:
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
  store i64 6299728, i64* %RSI, align 8, !tbaa !2428
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
  %39 = sub i64 %36, 6299728
  store i64 %39, i64* %RSI, align 8, !tbaa !2428
  %40 = icmp ult i64 %36, 6299728
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %41, i8* %42, align 1, !tbaa !2432
  %43 = trunc i64 %39 to i32
  %44 = and i32 %43, 255
  %45 = call i32 @llvm.ctpop.i32(i32 %44) #17
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = xor i8 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %48, i8* %49, align 1, !tbaa !2446
  %50 = xor i64 6299728, %36
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
  %82 = call i32 @llvm.ctpop.i32(i32 %81) #17
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
  %108 = call i32 @llvm.ctpop.i32(i32 %107) #17
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
  %130 = call i32 @llvm.ctpop.i32(i32 %129) #17
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
  %165 = call i32 @llvm.ctpop.i32(i32 %164) #17
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
  br i1 %189, label %block_400668, label %block_400653

block_40065d:                                     ; preds = %block_400653
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
  store i64 6299728, i64* %RDI, align 8, !tbaa !2428
  %199 = load i64, i64* %RAX
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 2
  store i64 %201, i64* %PC
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %199, i64* %202, align 8, !tbaa !2428
  %203 = load i64, i64* %PC
  switch i64 %203, label %269 [
    i64 4195946, label %block_40066a
    i64 4195941, label %block_400665
  ]

block_40066a:                                     ; preds = %block_40065d
  %204 = load i64, i64* %RAX
  %205 = load i64, i64* %RAX
  %206 = add i64 %205, %204
  %207 = load i16, i16* %AX
  %208 = zext i16 %207 to i64
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 6
  store i64 %210, i64* %PC
  %211 = load i64, i64* %PC
  %212 = tail call %struct.Memory* @sub_400670___do_global_dtors_aux(%struct.State* %0, i64 %211, %struct.Memory* %2)
  ret %struct.Memory* %212

block_400653:                                     ; preds = %block_400630
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
  %223 = call i32 @llvm.ctpop.i32(i32 %222) #17
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
  br i1 %248, label %block_400668, label %block_40065d

block_400668:                                     ; preds = %block_400665, %block_400653, %block_400630
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400630 ], [ %2, %block_400653 ], [ %2, %block_400665 ]
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

block_400665:                                     ; preds = %block_40065d
  %264 = load i64, i64* %RAX
  %265 = load i32, i32* %EAX
  %266 = zext i32 %265 to i64
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 3
  store i64 %268, i64* %PC
  br label %block_400668

; <label>:269:                                    ; preds = %block_40065d
  %270 = load i64, i64* %PC
  %271 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %270, %struct.Memory* %2)
  ret %struct.Memory* %271
}

; Function Attrs: noinline
define %struct.Memory* @sub_400670___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400670:
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
  %17 = call i32 @llvm.ctpop.i32(i32 %16) #17
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
  br i1 %47, label %block_400690, label %block_400679

block_400690:                                     ; preds = %block_400670
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

block_400679:                                     ; preds = %block_400670
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
  %78 = call %struct.Memory* @sub_400600_deregister_tm_clones_renamed_(%struct.State* %0, i64 %77, %struct.Memory* %2)
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
define %struct.Memory* @sub_400b70_fourn(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400b70:
  %state.i1 = alloca %struct.State*, align 8
  %curr_pc.i2 = alloca i64, align 8
  %memory.i3 = alloca %struct.Memory*, align 8
  %BRANCH_TAKEN.i4 = alloca i8, align 1
  %SS_BASE.i5 = alloca i64, align 8
  %ES_BASE.i6 = alloca i64, align 8
  %DS_BASE.i7 = alloca i64, align 8
  %CS_BASE.i8 = alloca i64, align 8
  %STATE.i9 = alloca %struct.State*, align 8
  %MEMORY.i10 = alloca %struct.Memory*, align 8
  %_DR0.i11 = alloca i64*, align 8
  %_DR1.i12 = alloca i64*, align 8
  %_DR2.i13 = alloca i64*, align 8
  %_DR3.i14 = alloca i64*, align 8
  %_DR4.i15 = alloca i64*, align 8
  %_DR5.i16 = alloca i64*, align 8
  %_DR6.i17 = alloca i64*, align 8
  %_DR7.i18 = alloca i64*, align 8
  %CR0.i19 = alloca i64*, align 8
  %CR1.i20 = alloca i64*, align 8
  %CR2.i21 = alloca i64*, align 8
  %CR3.i22 = alloca i64*, align 8
  %CR4.i23 = alloca i64*, align 8
  %CR8.i24 = alloca i64*, align 8
  %state.i = alloca %struct.State*, align 8
  %curr_pc.i = alloca i64, align 8
  %memory.i = alloca %struct.Memory*, align 8
  %BRANCH_TAKEN.i = alloca i8, align 1
  %SS_BASE.i = alloca i64, align 8
  %ES_BASE.i = alloca i64, align 8
  %DS_BASE.i = alloca i64, align 8
  %CS_BASE.i = alloca i64, align 8
  %STATE.i = alloca %struct.State*, align 8
  %MEMORY.i = alloca %struct.Memory*, align 8
  %_DR0.i = alloca i64*, align 8
  %_DR1.i = alloca i64*, align 8
  %_DR2.i = alloca i64*, align 8
  %_DR3.i = alloca i64*, align 8
  %_DR4.i = alloca i64*, align 8
  %_DR5.i = alloca i64*, align 8
  %_DR6.i = alloca i64*, align 8
  %_DR7.i = alloca i64*, align 8
  %CR0.i = alloca i64*, align 8
  %CR1.i = alloca i64*, align 8
  %CR2.i = alloca i64*, align 8
  %CR3.i = alloca i64*, align 8
  %CR4.i = alloca i64*, align 8
  %CR8.i = alloca i64*, align 8
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
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %ESI = bitcast %union.anon* %25 to i32*
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %27 = getelementptr inbounds %struct.GPR, %struct.GPR* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.Reg, %struct.Reg* %27, i32 0, i32 0
  %RAX = bitcast %union.anon* %28 to i64*
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %RCX = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RDX = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 9
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RSI = bitcast %union.anon* %37 to i64*
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %39 = getelementptr inbounds %struct.GPR, %struct.GPR* %38, i32 0, i32 11
  %40 = getelementptr inbounds %struct.Reg, %struct.Reg* %39, i32 0, i32 0
  %RDI = bitcast %union.anon* %40 to i64*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %42 = getelementptr inbounds %struct.GPR, %struct.GPR* %41, i32 0, i32 13
  %43 = getelementptr inbounds %struct.Reg, %struct.Reg* %42, i32 0, i32 0
  %RSP = bitcast %union.anon* %43 to i64*
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 15
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %RBP = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %48 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %47, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %48 to %"class.std::bitset"*
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %50 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %49, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %50 to %"class.std::bitset"*
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %52 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %51, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %52 to %"class.std::bitset"*
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %54 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %53, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %54 to %"class.std::bitset"*
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %56 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %55, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %56 to %"class.std::bitset"*
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %58 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %57, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %58 to %"class.std::bitset"*
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %60 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %59, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %60 to %union.vec128_t*
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %62 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %61, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %62 to %union.vec128_t*
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %64 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %63, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %64 to %union.vec128_t*
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %66 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %65, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %66 to %union.vec128_t*
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %68 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %67, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %68 to %union.vec128_t*
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %70 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %69, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %70 to %union.vec128_t*
  %71 = load i64, i64* %RBP
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 1
  store i64 %73, i64* %PC
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %75 = load i64, i64* %74, align 8, !tbaa !2428
  %76 = add i64 %75, -8
  %77 = inttoptr i64 %76 to i64*
  store i64 %71, i64* %77
  store i64 %76, i64* %74, align 8, !tbaa !2428
  %78 = load i64, i64* %RSP
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 3
  store i64 %80, i64* %PC
  store i64 %78, i64* %RBP, align 8, !tbaa !2428
  %81 = load i64, i64* %RSP
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 7
  store i64 %83, i64* %PC
  %84 = sub i64 %81, 192
  store i64 %84, i64* %RSP, align 8, !tbaa !2428
  %85 = icmp ult i64 %81, 192
  %86 = zext i1 %85 to i8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %86, i8* %87, align 1, !tbaa !2432
  %88 = trunc i64 %84 to i32
  %89 = and i32 %88, 255
  %90 = call i32 @llvm.ctpop.i32(i32 %89) #17
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = xor i8 %92, 1
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %93, i8* %94, align 1, !tbaa !2446
  %95 = xor i64 192, %81
  %96 = xor i64 %95, %84
  %97 = lshr i64 %96, 4
  %98 = trunc i64 %97 to i8
  %99 = and i8 %98, 1
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %99, i8* %100, align 1, !tbaa !2447
  %101 = icmp eq i64 %84, 0
  %102 = zext i1 %101 to i8
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %102, i8* %103, align 1, !tbaa !2448
  %104 = lshr i64 %84, 63
  %105 = trunc i64 %104 to i8
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %105, i8* %106, align 1, !tbaa !2449
  %107 = lshr i64 %81, 63
  %108 = xor i64 %104, %107
  %109 = add nuw nsw i64 %108, %107
  %110 = icmp eq i64 %109, 2
  %111 = zext i1 %110 to i8
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %111, i8* %112, align 1, !tbaa !2450
  %113 = load i64, i64* %RBP
  %114 = sub i64 %113, 8
  %115 = load i64, i64* %RDI
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC
  %118 = inttoptr i64 %114 to i64*
  store i64 %115, i64* %118
  %119 = load i64, i64* %RBP
  %120 = sub i64 %119, 16
  %121 = load i64, i64* %RSI
  %122 = load i64, i64* %PC
  %123 = add i64 %122, 4
  store i64 %123, i64* %PC
  %124 = inttoptr i64 %120 to i64*
  store i64 %121, i64* %124
  %125 = load i64, i64* %RBP
  %126 = sub i64 %125, 20
  %127 = load i32, i32* %EDX
  %128 = zext i32 %127 to i64
  %129 = load i64, i64* %PC
  %130 = add i64 %129, 3
  store i64 %130, i64* %PC
  %131 = inttoptr i64 %126 to i32*
  store i32 %127, i32* %131
  %132 = load i64, i64* %RBP
  %133 = sub i64 %132, 24
  %134 = load i32, i32* %ECX
  %135 = zext i32 %134 to i64
  %136 = load i64, i64* %PC
  %137 = add i64 %136, 3
  store i64 %137, i64* %PC
  %138 = inttoptr i64 %133 to i32*
  store i32 %134, i32* %138
  %139 = load i64, i64* %RBP
  %140 = sub i64 %139, 96
  %141 = load i64, i64* %PC
  %142 = add i64 %141, 7
  store i64 %142, i64* %PC
  %143 = inttoptr i64 %140 to i32*
  store i32 1, i32* %143
  %144 = load i64, i64* %RBP
  %145 = sub i64 %144, 72
  %146 = load i64, i64* %PC
  %147 = add i64 %146, 7
  store i64 %147, i64* %PC
  %148 = inttoptr i64 %145 to i32*
  store i32 1, i32* %148
  br label %block_400b97

block_400d76:                                     ; preds = %block_400d63
  %149 = load i64, i64* %RBP
  %150 = sub i64 %149, 68
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 3
  store i64 %152, i64* %PC
  %153 = inttoptr i64 %150 to i32*
  %154 = load i32, i32* %153
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RAX, align 8, !tbaa !2428
  %156 = load i64, i64* %RBP
  %157 = sub i64 %156, 40
  %158 = load i64, i64* %PC
  %159 = add i64 %158, 3
  store i64 %159, i64* %PC
  %160 = inttoptr i64 %157 to i32*
  %161 = load i32, i32* %160
  %162 = zext i32 %161 to i64
  store i64 %162, i64* %RCX, align 8, !tbaa !2428
  %163 = load i64, i64* %RCX
  %164 = load i32, i32* %EAX
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 2
  store i64 %167, i64* %PC
  %168 = trunc i64 %163 to i32
  %169 = sub i32 %168, %164
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RCX, align 8, !tbaa !2428
  %171 = icmp ult i32 %168, %164
  %172 = zext i1 %171 to i8
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %172, i8* %173, align 1, !tbaa !2432
  %174 = and i32 %169, 255
  %175 = call i32 @llvm.ctpop.i32(i32 %174) #17
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %178, i8* %179, align 1, !tbaa !2446
  %180 = xor i64 %165, %163
  %181 = trunc i64 %180 to i32
  %182 = xor i32 %181, %169
  %183 = lshr i32 %182, 4
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %185, i8* %186, align 1, !tbaa !2447
  %187 = icmp eq i32 %169, 0
  %188 = zext i1 %187 to i8
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %188, i8* %189, align 1, !tbaa !2448
  %190 = lshr i32 %169, 31
  %191 = trunc i32 %190 to i8
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %191, i8* %192, align 1, !tbaa !2449
  %193 = lshr i32 %168, 31
  %194 = lshr i32 %164, 31
  %195 = xor i32 %194, %193
  %196 = xor i32 %190, %193
  %197 = add nuw nsw i32 %196, %195
  %198 = icmp eq i32 %197, 2
  %199 = zext i1 %198 to i8
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %199, i8* %200, align 1, !tbaa !2450
  %201 = load i64, i64* %RBP
  %202 = sub i64 %201, 40
  %203 = load i32, i32* %ECX
  %204 = zext i32 %203 to i64
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 3
  store i64 %206, i64* %PC
  %207 = inttoptr i64 %202 to i32*
  store i32 %203, i32* %207
  %208 = load i64, i64* %RBP
  %209 = sub i64 %208, 68
  %210 = load i64, i64* %PC
  %211 = add i64 %210, 3
  store i64 %211, i64* %PC
  %212 = inttoptr i64 %209 to i32*
  %213 = load i32, i32* %212
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RAX, align 8, !tbaa !2428
  %215 = load i64, i64* %RAX
  %216 = load i64, i64* %PC
  %217 = add i64 %216, 3
  store i64 %217, i64* %PC
  %218 = shl i64 %215, 32
  %219 = ashr i64 %218, 33
  %220 = trunc i64 %215 to i8
  %221 = and i8 %220, 1
  %222 = trunc i64 %219 to i32
  %223 = and i64 %219, 4294967295
  store i64 %223, i64* %RAX, align 8, !tbaa !2428
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %221, i8* %224, align 1, !tbaa !2451
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %226 = and i32 %222, 255
  %227 = call i32 @llvm.ctpop.i32(i32 %226) #17
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  store i8 %230, i8* %225, align 1, !tbaa !2451
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %231, align 1, !tbaa !2451
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %233 = icmp eq i32 %222, 0
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %232, align 1, !tbaa !2451
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %236 = lshr i32 %222, 31
  %237 = trunc i32 %236 to i8
  store i8 %237, i8* %235, align 1, !tbaa !2451
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %238, align 1, !tbaa !2451
  %239 = load i64, i64* %RBP
  %240 = sub i64 %239, 68
  %241 = load i32, i32* %EAX
  %242 = zext i32 %241 to i64
  %243 = load i64, i64* %PC
  %244 = add i64 %243, 3
  store i64 %244, i64* %PC
  %245 = inttoptr i64 %240 to i32*
  store i32 %241, i32* %245
  %246 = load i64, i64* %PC
  %247 = sub i64 %246, 76
  %248 = load i64, i64* %PC
  %249 = add i64 %248, 5
  store i64 %249, i64* %PC
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %247, i64* %250, align 8, !tbaa !2428
  br label %block_400d3e

block_400c73:                                     ; preds = %block_400c67
  %251 = load i64, i64* %RBP
  %252 = sub i64 %251, 40
  %253 = load i64, i64* %PC
  %254 = add i64 %253, 3
  store i64 %254, i64* %PC
  %255 = inttoptr i64 %252 to i32*
  %256 = load i32, i32* %255
  %257 = zext i32 %256 to i64
  store i64 %257, i64* %RAX, align 8, !tbaa !2428
  %258 = load i64, i64* %RAX
  %259 = load i64, i64* %RBP
  %260 = sub i64 %259, 36
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 3
  store i64 %262, i64* %PC
  %263 = trunc i64 %258 to i32
  %264 = inttoptr i64 %260 to i32*
  %265 = load i32, i32* %264
  %266 = add i32 %265, %263
  %267 = zext i32 %266 to i64
  store i64 %267, i64* %RAX, align 8, !tbaa !2428
  %268 = icmp ult i32 %266, %263
  %269 = icmp ult i32 %266, %265
  %270 = or i1 %268, %269
  %271 = zext i1 %270 to i8
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %271, i8* %272, align 1, !tbaa !2432
  %273 = and i32 %266, 255
  %274 = call i32 @llvm.ctpop.i32(i32 %273) #17
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  %277 = xor i8 %276, 1
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %277, i8* %278, align 1, !tbaa !2446
  %279 = xor i32 %265, %263
  %280 = xor i32 %279, %266
  %281 = lshr i32 %280, 4
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %283, i8* %284, align 1, !tbaa !2447
  %285 = icmp eq i32 %266, 0
  %286 = zext i1 %285 to i8
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %286, i8* %287, align 1, !tbaa !2448
  %288 = lshr i32 %266, 31
  %289 = trunc i32 %288 to i8
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %289, i8* %290, align 1, !tbaa !2449
  %291 = lshr i32 %263, 31
  %292 = lshr i32 %265, 31
  %293 = xor i32 %288, %291
  %294 = xor i32 %288, %292
  %295 = add nuw nsw i32 %293, %294
  %296 = icmp eq i32 %295, 2
  %297 = zext i1 %296 to i8
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %297, i8* %298, align 1, !tbaa !2450
  %299 = load i64, i64* %RAX
  %300 = load i64, i64* %RBP
  %301 = sub i64 %300, 32
  %302 = load i64, i64* %PC
  %303 = add i64 %302, 3
  store i64 %303, i64* %PC
  %304 = trunc i64 %299 to i32
  %305 = inttoptr i64 %301 to i32*
  %306 = load i32, i32* %305
  %307 = sub i32 %304, %306
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RAX, align 8, !tbaa !2428
  %309 = icmp ult i32 %304, %306
  %310 = zext i1 %309 to i8
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %310, i8* %311, align 1, !tbaa !2432
  %312 = and i32 %307, 255
  %313 = call i32 @llvm.ctpop.i32(i32 %312) #17
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = xor i8 %315, 1
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %316, i8* %317, align 1, !tbaa !2446
  %318 = xor i32 %306, %304
  %319 = xor i32 %318, %307
  %320 = lshr i32 %319, 4
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %322, i8* %323, align 1, !tbaa !2447
  %324 = icmp eq i32 %307, 0
  %325 = zext i1 %324 to i8
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %325, i8* %326, align 1, !tbaa !2448
  %327 = lshr i32 %307, 31
  %328 = trunc i32 %327 to i8
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %328, i8* %329, align 1, !tbaa !2449
  %330 = lshr i32 %304, 31
  %331 = lshr i32 %306, 31
  %332 = xor i32 %331, %330
  %333 = xor i32 %327, %330
  %334 = add nuw nsw i32 %333, %332
  %335 = icmp eq i32 %334, 2
  %336 = zext i1 %335 to i8
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %336, i8* %337, align 1, !tbaa !2450
  %338 = load i64, i64* %RBP
  %339 = sub i64 %338, 44
  %340 = load i32, i32* %EAX
  %341 = zext i32 %340 to i64
  %342 = load i64, i64* %PC
  %343 = add i64 %342, 3
  store i64 %343, i64* %PC
  %344 = inttoptr i64 %339 to i32*
  store i32 %340, i32* %344
  %345 = load i64, i64* %RBP
  %346 = sub i64 %345, 8
  %347 = load i64, i64* %PC
  %348 = add i64 %347, 4
  store i64 %348, i64* %PC
  %349 = inttoptr i64 %346 to i64*
  %350 = load i64, i64* %349
  store i64 %350, i64* %RCX, align 8, !tbaa !2428
  %351 = load i64, i64* %RBP
  %352 = sub i64 %351, 36
  %353 = load i64, i64* %PC
  %354 = add i64 %353, 4
  store i64 %354, i64* %PC
  %355 = inttoptr i64 %352 to i32*
  %356 = load i32, i32* %355
  %357 = sext i32 %356 to i64
  store i64 %357, i64* %RDX, align 8, !tbaa !2428
  %358 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %359 = load i64, i64* %RCX
  %360 = load i64, i64* %RDX
  %361 = mul i64 %360, 8
  %362 = add i64 %361, %359
  %363 = load i64, i64* %PC
  %364 = add i64 %363, 5
  store i64 %364, i64* %PC
  %365 = inttoptr i64 %362 to double*
  %366 = load double, double* %365
  %367 = bitcast i8* %358 to double*
  store double %366, double* %367, align 1, !tbaa !2452
  %368 = getelementptr inbounds i8, i8* %358, i64 8
  %369 = bitcast i8* %368 to double*
  store double 0.000000e+00, double* %369, align 1, !tbaa !2452
  %370 = load i64, i64* %RBP
  %371 = sub i64 %370, 112
  %372 = bitcast %union.vec128_t* %XMM0 to i8*
  %373 = load i64, i64* %PC
  %374 = add i64 %373, 5
  store i64 %374, i64* %PC
  %375 = bitcast i8* %372 to double*
  %376 = load double, double* %375, align 1
  %377 = inttoptr i64 %371 to double*
  store double %376, double* %377
  %378 = load i64, i64* %RBP
  %379 = sub i64 %378, 8
  %380 = load i64, i64* %PC
  %381 = add i64 %380, 4
  store i64 %381, i64* %PC
  %382 = inttoptr i64 %379 to i64*
  %383 = load i64, i64* %382
  store i64 %383, i64* %RCX, align 8, !tbaa !2428
  %384 = load i64, i64* %RBP
  %385 = sub i64 %384, 44
  %386 = load i64, i64* %PC
  %387 = add i64 %386, 4
  store i64 %387, i64* %PC
  %388 = inttoptr i64 %385 to i32*
  %389 = load i32, i32* %388
  %390 = sext i32 %389 to i64
  store i64 %390, i64* %RDX, align 8, !tbaa !2428
  %391 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %392 = load i64, i64* %RCX
  %393 = load i64, i64* %RDX
  %394 = mul i64 %393, 8
  %395 = add i64 %394, %392
  %396 = load i64, i64* %PC
  %397 = add i64 %396, 5
  store i64 %397, i64* %PC
  %398 = inttoptr i64 %395 to double*
  %399 = load double, double* %398
  %400 = bitcast i8* %391 to double*
  store double %399, double* %400, align 1, !tbaa !2452
  %401 = getelementptr inbounds i8, i8* %391, i64 8
  %402 = bitcast i8* %401 to double*
  store double 0.000000e+00, double* %402, align 1, !tbaa !2452
  %403 = load i64, i64* %RBP
  %404 = sub i64 %403, 8
  %405 = load i64, i64* %PC
  %406 = add i64 %405, 4
  store i64 %406, i64* %PC
  %407 = inttoptr i64 %404 to i64*
  %408 = load i64, i64* %407
  store i64 %408, i64* %RCX, align 8, !tbaa !2428
  %409 = load i64, i64* %RBP
  %410 = sub i64 %409, 36
  %411 = load i64, i64* %PC
  %412 = add i64 %411, 4
  store i64 %412, i64* %PC
  %413 = inttoptr i64 %410 to i32*
  %414 = load i32, i32* %413
  %415 = sext i32 %414 to i64
  store i64 %415, i64* %RDX, align 8, !tbaa !2428
  %416 = load i64, i64* %RCX
  %417 = load i64, i64* %RDX
  %418 = mul i64 %417, 8
  %419 = add i64 %418, %416
  %420 = bitcast %union.vec128_t* %XMM0 to i8*
  %421 = load i64, i64* %PC
  %422 = add i64 %421, 5
  store i64 %422, i64* %PC
  %423 = bitcast i8* %420 to double*
  %424 = load double, double* %423, align 1
  %425 = inttoptr i64 %419 to double*
  store double %424, double* %425
  %426 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %427 = load i64, i64* %RBP
  %428 = sub i64 %427, 112
  %429 = load i64, i64* %PC
  %430 = add i64 %429, 5
  store i64 %430, i64* %PC
  %431 = inttoptr i64 %428 to double*
  %432 = load double, double* %431
  %433 = bitcast i8* %426 to double*
  store double %432, double* %433, align 1, !tbaa !2452
  %434 = getelementptr inbounds i8, i8* %426, i64 8
  %435 = bitcast i8* %434 to double*
  store double 0.000000e+00, double* %435, align 1, !tbaa !2452
  %436 = load i64, i64* %RBP
  %437 = sub i64 %436, 8
  %438 = load i64, i64* %PC
  %439 = add i64 %438, 4
  store i64 %439, i64* %PC
  %440 = inttoptr i64 %437 to i64*
  %441 = load i64, i64* %440
  store i64 %441, i64* %RCX, align 8, !tbaa !2428
  %442 = load i64, i64* %RBP
  %443 = sub i64 %442, 44
  %444 = load i64, i64* %PC
  %445 = add i64 %444, 4
  store i64 %445, i64* %PC
  %446 = inttoptr i64 %443 to i32*
  %447 = load i32, i32* %446
  %448 = sext i32 %447 to i64
  store i64 %448, i64* %RDX, align 8, !tbaa !2428
  %449 = load i64, i64* %RCX
  %450 = load i64, i64* %RDX
  %451 = mul i64 %450, 8
  %452 = add i64 %451, %449
  %453 = bitcast %union.vec128_t* %XMM0 to i8*
  %454 = load i64, i64* %PC
  %455 = add i64 %454, 5
  store i64 %455, i64* %PC
  %456 = bitcast i8* %453 to double*
  %457 = load double, double* %456, align 1
  %458 = inttoptr i64 %452 to double*
  store double %457, double* %458
  %459 = load i64, i64* %RBP
  %460 = sub i64 %459, 8
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 4
  store i64 %462, i64* %PC
  %463 = inttoptr i64 %460 to i64*
  %464 = load i64, i64* %463
  store i64 %464, i64* %RCX, align 8, !tbaa !2428
  %465 = load i64, i64* %RBP
  %466 = sub i64 %465, 36
  %467 = load i64, i64* %PC
  %468 = add i64 %467, 3
  store i64 %468, i64* %PC
  %469 = inttoptr i64 %466 to i32*
  %470 = load i32, i32* %469
  %471 = zext i32 %470 to i64
  store i64 %471, i64* %RAX, align 8, !tbaa !2428
  %472 = load i64, i64* %RAX
  %473 = load i64, i64* %PC
  %474 = add i64 %473, 3
  store i64 %474, i64* %PC
  %475 = trunc i64 %472 to i32
  %476 = add i32 1, %475
  %477 = zext i32 %476 to i64
  store i64 %477, i64* %RAX, align 8, !tbaa !2428
  %478 = icmp ult i32 %476, %475
  %479 = icmp ult i32 %476, 1
  %480 = or i1 %478, %479
  %481 = zext i1 %480 to i8
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %481, i8* %482, align 1, !tbaa !2432
  %483 = and i32 %476, 255
  %484 = call i32 @llvm.ctpop.i32(i32 %483) #17
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  %487 = xor i8 %486, 1
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %487, i8* %488, align 1, !tbaa !2446
  %489 = xor i64 1, %472
  %490 = trunc i64 %489 to i32
  %491 = xor i32 %490, %476
  %492 = lshr i32 %491, 4
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %494, i8* %495, align 1, !tbaa !2447
  %496 = icmp eq i32 %476, 0
  %497 = zext i1 %496 to i8
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %497, i8* %498, align 1, !tbaa !2448
  %499 = lshr i32 %476, 31
  %500 = trunc i32 %499 to i8
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %500, i8* %501, align 1, !tbaa !2449
  %502 = lshr i32 %475, 31
  %503 = xor i32 %499, %502
  %504 = add nuw nsw i32 %503, %499
  %505 = icmp eq i32 %504, 2
  %506 = zext i1 %505 to i8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %506, i8* %507, align 1, !tbaa !2450
  %508 = load i32, i32* %EAX
  %509 = zext i32 %508 to i64
  %510 = load i64, i64* %PC
  %511 = add i64 %510, 3
  store i64 %511, i64* %PC
  %512 = shl i64 %509, 32
  %513 = ashr exact i64 %512, 32
  store i64 %513, i64* %RDX, align 8, !tbaa !2428
  %514 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %515 = load i64, i64* %RCX
  %516 = load i64, i64* %RDX
  %517 = mul i64 %516, 8
  %518 = add i64 %517, %515
  %519 = load i64, i64* %PC
  %520 = add i64 %519, 5
  store i64 %520, i64* %PC
  %521 = inttoptr i64 %518 to double*
  %522 = load double, double* %521
  %523 = bitcast i8* %514 to double*
  store double %522, double* %523, align 1, !tbaa !2452
  %524 = getelementptr inbounds i8, i8* %514, i64 8
  %525 = bitcast i8* %524 to double*
  store double 0.000000e+00, double* %525, align 1, !tbaa !2452
  %526 = load i64, i64* %RBP
  %527 = sub i64 %526, 112
  %528 = bitcast %union.vec128_t* %XMM0 to i8*
  %529 = load i64, i64* %PC
  %530 = add i64 %529, 5
  store i64 %530, i64* %PC
  %531 = bitcast i8* %528 to double*
  %532 = load double, double* %531, align 1
  %533 = inttoptr i64 %527 to double*
  store double %532, double* %533
  %534 = load i64, i64* %RBP
  %535 = sub i64 %534, 8
  %536 = load i64, i64* %PC
  %537 = add i64 %536, 4
  store i64 %537, i64* %PC
  %538 = inttoptr i64 %535 to i64*
  %539 = load i64, i64* %538
  store i64 %539, i64* %RCX, align 8, !tbaa !2428
  %540 = load i64, i64* %RBP
  %541 = sub i64 %540, 44
  %542 = load i64, i64* %PC
  %543 = add i64 %542, 3
  store i64 %543, i64* %PC
  %544 = inttoptr i64 %541 to i32*
  %545 = load i32, i32* %544
  %546 = zext i32 %545 to i64
  store i64 %546, i64* %RAX, align 8, !tbaa !2428
  %547 = load i64, i64* %RAX
  %548 = load i64, i64* %PC
  %549 = add i64 %548, 3
  store i64 %549, i64* %PC
  %550 = trunc i64 %547 to i32
  %551 = add i32 1, %550
  %552 = zext i32 %551 to i64
  store i64 %552, i64* %RAX, align 8, !tbaa !2428
  %553 = icmp ult i32 %551, %550
  %554 = icmp ult i32 %551, 1
  %555 = or i1 %553, %554
  %556 = zext i1 %555 to i8
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %556, i8* %557, align 1, !tbaa !2432
  %558 = and i32 %551, 255
  %559 = call i32 @llvm.ctpop.i32(i32 %558) #17
  %560 = trunc i32 %559 to i8
  %561 = and i8 %560, 1
  %562 = xor i8 %561, 1
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %562, i8* %563, align 1, !tbaa !2446
  %564 = xor i64 1, %547
  %565 = trunc i64 %564 to i32
  %566 = xor i32 %565, %551
  %567 = lshr i32 %566, 4
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %569, i8* %570, align 1, !tbaa !2447
  %571 = icmp eq i32 %551, 0
  %572 = zext i1 %571 to i8
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %572, i8* %573, align 1, !tbaa !2448
  %574 = lshr i32 %551, 31
  %575 = trunc i32 %574 to i8
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %575, i8* %576, align 1, !tbaa !2449
  %577 = lshr i32 %550, 31
  %578 = xor i32 %574, %577
  %579 = add nuw nsw i32 %578, %574
  %580 = icmp eq i32 %579, 2
  %581 = zext i1 %580 to i8
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %581, i8* %582, align 1, !tbaa !2450
  %583 = load i32, i32* %EAX
  %584 = zext i32 %583 to i64
  %585 = load i64, i64* %PC
  %586 = add i64 %585, 3
  store i64 %586, i64* %PC
  %587 = shl i64 %584, 32
  %588 = ashr exact i64 %587, 32
  store i64 %588, i64* %RDX, align 8, !tbaa !2428
  %589 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %590 = load i64, i64* %RCX
  %591 = load i64, i64* %RDX
  %592 = mul i64 %591, 8
  %593 = add i64 %592, %590
  %594 = load i64, i64* %PC
  %595 = add i64 %594, 5
  store i64 %595, i64* %PC
  %596 = inttoptr i64 %593 to double*
  %597 = load double, double* %596
  %598 = bitcast i8* %589 to double*
  store double %597, double* %598, align 1, !tbaa !2452
  %599 = getelementptr inbounds i8, i8* %589, i64 8
  %600 = bitcast i8* %599 to double*
  store double 0.000000e+00, double* %600, align 1, !tbaa !2452
  %601 = load i64, i64* %RBP
  %602 = sub i64 %601, 8
  %603 = load i64, i64* %PC
  %604 = add i64 %603, 4
  store i64 %604, i64* %PC
  %605 = inttoptr i64 %602 to i64*
  %606 = load i64, i64* %605
  store i64 %606, i64* %RCX, align 8, !tbaa !2428
  %607 = load i64, i64* %RBP
  %608 = sub i64 %607, 36
  %609 = load i64, i64* %PC
  %610 = add i64 %609, 3
  store i64 %610, i64* %PC
  %611 = inttoptr i64 %608 to i32*
  %612 = load i32, i32* %611
  %613 = zext i32 %612 to i64
  store i64 %613, i64* %RAX, align 8, !tbaa !2428
  %614 = load i64, i64* %RAX
  %615 = load i64, i64* %PC
  %616 = add i64 %615, 3
  store i64 %616, i64* %PC
  %617 = trunc i64 %614 to i32
  %618 = add i32 1, %617
  %619 = zext i32 %618 to i64
  store i64 %619, i64* %RAX, align 8, !tbaa !2428
  %620 = icmp ult i32 %618, %617
  %621 = icmp ult i32 %618, 1
  %622 = or i1 %620, %621
  %623 = zext i1 %622 to i8
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %623, i8* %624, align 1, !tbaa !2432
  %625 = and i32 %618, 255
  %626 = call i32 @llvm.ctpop.i32(i32 %625) #17
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  %629 = xor i8 %628, 1
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %629, i8* %630, align 1, !tbaa !2446
  %631 = xor i64 1, %614
  %632 = trunc i64 %631 to i32
  %633 = xor i32 %632, %618
  %634 = lshr i32 %633, 4
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %636, i8* %637, align 1, !tbaa !2447
  %638 = icmp eq i32 %618, 0
  %639 = zext i1 %638 to i8
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %639, i8* %640, align 1, !tbaa !2448
  %641 = lshr i32 %618, 31
  %642 = trunc i32 %641 to i8
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %642, i8* %643, align 1, !tbaa !2449
  %644 = lshr i32 %617, 31
  %645 = xor i32 %641, %644
  %646 = add nuw nsw i32 %645, %641
  %647 = icmp eq i32 %646, 2
  %648 = zext i1 %647 to i8
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %648, i8* %649, align 1, !tbaa !2450
  %650 = load i32, i32* %EAX
  %651 = zext i32 %650 to i64
  %652 = load i64, i64* %PC
  %653 = add i64 %652, 3
  store i64 %653, i64* %PC
  %654 = shl i64 %651, 32
  %655 = ashr exact i64 %654, 32
  store i64 %655, i64* %RDX, align 8, !tbaa !2428
  %656 = load i64, i64* %RCX
  %657 = load i64, i64* %RDX
  %658 = mul i64 %657, 8
  %659 = add i64 %658, %656
  %660 = bitcast %union.vec128_t* %XMM0 to i8*
  %661 = load i64, i64* %PC
  %662 = add i64 %661, 5
  store i64 %662, i64* %PC
  %663 = bitcast i8* %660 to double*
  %664 = load double, double* %663, align 1
  %665 = inttoptr i64 %659 to double*
  store double %664, double* %665
  %666 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %667 = load i64, i64* %RBP
  %668 = sub i64 %667, 112
  %669 = load i64, i64* %PC
  %670 = add i64 %669, 5
  store i64 %670, i64* %PC
  %671 = inttoptr i64 %668 to double*
  %672 = load double, double* %671
  %673 = bitcast i8* %666 to double*
  store double %672, double* %673, align 1, !tbaa !2452
  %674 = getelementptr inbounds i8, i8* %666, i64 8
  %675 = bitcast i8* %674 to double*
  store double 0.000000e+00, double* %675, align 1, !tbaa !2452
  %676 = load i64, i64* %RBP
  %677 = sub i64 %676, 8
  %678 = load i64, i64* %PC
  %679 = add i64 %678, 4
  store i64 %679, i64* %PC
  %680 = inttoptr i64 %677 to i64*
  %681 = load i64, i64* %680
  store i64 %681, i64* %RCX, align 8, !tbaa !2428
  %682 = load i64, i64* %RBP
  %683 = sub i64 %682, 44
  %684 = load i64, i64* %PC
  %685 = add i64 %684, 3
  store i64 %685, i64* %PC
  %686 = inttoptr i64 %683 to i32*
  %687 = load i32, i32* %686
  %688 = zext i32 %687 to i64
  store i64 %688, i64* %RAX, align 8, !tbaa !2428
  %689 = load i64, i64* %RAX
  %690 = load i64, i64* %PC
  %691 = add i64 %690, 3
  store i64 %691, i64* %PC
  %692 = trunc i64 %689 to i32
  %693 = add i32 1, %692
  %694 = zext i32 %693 to i64
  store i64 %694, i64* %RAX, align 8, !tbaa !2428
  %695 = icmp ult i32 %693, %692
  %696 = icmp ult i32 %693, 1
  %697 = or i1 %695, %696
  %698 = zext i1 %697 to i8
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %698, i8* %699, align 1, !tbaa !2432
  %700 = and i32 %693, 255
  %701 = call i32 @llvm.ctpop.i32(i32 %700) #17
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, 1
  %704 = xor i8 %703, 1
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %704, i8* %705, align 1, !tbaa !2446
  %706 = xor i64 1, %689
  %707 = trunc i64 %706 to i32
  %708 = xor i32 %707, %693
  %709 = lshr i32 %708, 4
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %711, i8* %712, align 1, !tbaa !2447
  %713 = icmp eq i32 %693, 0
  %714 = zext i1 %713 to i8
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %714, i8* %715, align 1, !tbaa !2448
  %716 = lshr i32 %693, 31
  %717 = trunc i32 %716 to i8
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %717, i8* %718, align 1, !tbaa !2449
  %719 = lshr i32 %692, 31
  %720 = xor i32 %716, %719
  %721 = add nuw nsw i32 %720, %716
  %722 = icmp eq i32 %721, 2
  %723 = zext i1 %722 to i8
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %723, i8* %724, align 1, !tbaa !2450
  %725 = load i32, i32* %EAX
  %726 = zext i32 %725 to i64
  %727 = load i64, i64* %PC
  %728 = add i64 %727, 3
  store i64 %728, i64* %PC
  %729 = shl i64 %726, 32
  %730 = ashr exact i64 %729, 32
  store i64 %730, i64* %RDX, align 8, !tbaa !2428
  %731 = load i64, i64* %RCX
  %732 = load i64, i64* %RDX
  %733 = mul i64 %732, 8
  %734 = add i64 %733, %731
  %735 = bitcast %union.vec128_t* %XMM0 to i8*
  %736 = load i64, i64* %PC
  %737 = add i64 %736, 5
  store i64 %737, i64* %PC
  %738 = bitcast i8* %735 to double*
  %739 = load double, double* %738, align 1
  %740 = inttoptr i64 %734 to double*
  store double %739, double* %740
  %741 = load i64, i64* %RBP
  %742 = sub i64 %741, 52
  %743 = load i64, i64* %PC
  %744 = add i64 %743, 3
  store i64 %744, i64* %PC
  %745 = inttoptr i64 %742 to i32*
  %746 = load i32, i32* %745
  %747 = zext i32 %746 to i64
  store i64 %747, i64* %RAX, align 8, !tbaa !2428
  %748 = load i64, i64* %RAX
  %749 = load i64, i64* %RBP
  %750 = sub i64 %749, 36
  %751 = load i64, i64* %PC
  %752 = add i64 %751, 3
  store i64 %752, i64* %PC
  %753 = trunc i64 %748 to i32
  %754 = inttoptr i64 %750 to i32*
  %755 = load i32, i32* %754
  %756 = add i32 %755, %753
  %757 = zext i32 %756 to i64
  store i64 %757, i64* %RAX, align 8, !tbaa !2428
  %758 = icmp ult i32 %756, %753
  %759 = icmp ult i32 %756, %755
  %760 = or i1 %758, %759
  %761 = zext i1 %760 to i8
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %761, i8* %762, align 1, !tbaa !2432
  %763 = and i32 %756, 255
  %764 = call i32 @llvm.ctpop.i32(i32 %763) #17
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %767, i8* %768, align 1, !tbaa !2446
  %769 = xor i32 %755, %753
  %770 = xor i32 %769, %756
  %771 = lshr i32 %770, 4
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %773, i8* %774, align 1, !tbaa !2447
  %775 = icmp eq i32 %756, 0
  %776 = zext i1 %775 to i8
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %776, i8* %777, align 1, !tbaa !2448
  %778 = lshr i32 %756, 31
  %779 = trunc i32 %778 to i8
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %779, i8* %780, align 1, !tbaa !2449
  %781 = lshr i32 %753, 31
  %782 = lshr i32 %755, 31
  %783 = xor i32 %778, %781
  %784 = xor i32 %778, %782
  %785 = add nuw nsw i32 %783, %784
  %786 = icmp eq i32 %785, 2
  %787 = zext i1 %786 to i8
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %787, i8* %788, align 1, !tbaa !2450
  %789 = load i64, i64* %RBP
  %790 = sub i64 %789, 36
  %791 = load i32, i32* %EAX
  %792 = zext i32 %791 to i64
  %793 = load i64, i64* %PC
  %794 = add i64 %793, 3
  store i64 %794, i64* %PC
  %795 = inttoptr i64 %790 to i32*
  store i32 %791, i32* %795
  %796 = load i64, i64* %PC
  %797 = sub i64 %796, 177
  %798 = load i64, i64* %PC
  %799 = add i64 %798, 5
  store i64 %799, i64* %PC
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %797, i64* %800, align 8, !tbaa !2428
  br label %block_400c67

block_401066:                                     ; preds = %block_400bd0
  %801 = load i64, i64* %RSP
  %802 = load i64, i64* %PC
  %803 = add i64 %802, 7
  store i64 %803, i64* %PC
  %804 = add i64 192, %801
  store i64 %804, i64* %RSP, align 8, !tbaa !2428
  %805 = icmp ult i64 %804, %801
  %806 = icmp ult i64 %804, 192
  %807 = or i1 %805, %806
  %808 = zext i1 %807 to i8
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %808, i8* %809, align 1, !tbaa !2432
  %810 = trunc i64 %804 to i32
  %811 = and i32 %810, 255
  %812 = call i32 @llvm.ctpop.i32(i32 %811) #17
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %815, i8* %816, align 1, !tbaa !2446
  %817 = xor i64 192, %801
  %818 = xor i64 %817, %804
  %819 = lshr i64 %818, 4
  %820 = trunc i64 %819 to i8
  %821 = and i8 %820, 1
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %821, i8* %822, align 1, !tbaa !2447
  %823 = icmp eq i64 %804, 0
  %824 = zext i1 %823 to i8
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %824, i8* %825, align 1, !tbaa !2448
  %826 = lshr i64 %804, 63
  %827 = trunc i64 %826 to i8
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %827, i8* %828, align 1, !tbaa !2449
  %829 = lshr i64 %801, 63
  %830 = xor i64 %826, %829
  %831 = add nuw nsw i64 %830, %826
  %832 = icmp eq i64 %831, 2
  %833 = zext i1 %832 to i8
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %833, i8* %834, align 1, !tbaa !2450
  %835 = load i64, i64* %PC
  %836 = add i64 %835, 1
  store i64 %836, i64* %PC
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %838 = load i64, i64* %837, align 8, !tbaa !2428
  %839 = add i64 %838, 8
  %840 = inttoptr i64 %838 to i64*
  %841 = load i64, i64* %840
  store i64 %841, i64* %RBP, align 8, !tbaa !2428
  store i64 %839, i64* %837, align 8, !tbaa !2428
  %842 = load i64, i64* %PC
  %843 = add i64 %842, 1
  store i64 %843, i64* %PC
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %846 = load i64, i64* %845, align 8, !tbaa !2428
  %847 = inttoptr i64 %846 to i64*
  %848 = load i64, i64* %847
  store i64 %848, i64* %844, align 8, !tbaa !2428
  %849 = add i64 %846, 8
  store i64 %849, i64* %845, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.1

block_400d63:                                     ; preds = %block_400d54, %block_400d3e
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.3, %block_400d3e ], [ %MEMORY.3, %block_400d54 ]
  %850 = load i64, i64* %RBP
  %851 = sub i64 %850, 165
  %852 = load i64, i64* %PC
  %853 = add i64 %852, 6
  store i64 %853, i64* %PC
  %854 = inttoptr i64 %851 to i8*
  %855 = load i8, i8* %854
  store i8 %855, i8* %AL, align 1, !tbaa !2451
  %856 = load i8, i8* %AL
  %857 = zext i8 %856 to i64
  %858 = load i64, i64* %PC
  %859 = add i64 %858, 2
  store i64 %859, i64* %PC
  %860 = and i64 1, %857
  %861 = trunc i64 %860 to i8
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %862, align 1, !tbaa !2432
  %863 = trunc i64 %860 to i32
  %864 = and i32 %863, 255
  %865 = call i32 @llvm.ctpop.i32(i32 %864) #17
  %866 = trunc i32 %865 to i8
  %867 = and i8 %866, 1
  %868 = xor i8 %867, 1
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %868, i8* %869, align 1, !tbaa !2446
  %870 = icmp eq i8 %861, 0
  %871 = zext i1 %870 to i8
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %871, i8* %872, align 1, !tbaa !2448
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %873, align 1, !tbaa !2449
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %874, align 1, !tbaa !2450
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %875, align 1, !tbaa !2447
  %876 = load i64, i64* %PC
  %877 = add i64 %876, 11
  %878 = load i64, i64* %PC
  %879 = add i64 %878, 6
  %880 = load i64, i64* %PC
  %881 = add i64 %880, 6
  store i64 %881, i64* %PC
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %883 = load i8, i8* %882, align 1, !tbaa !2448
  %884 = icmp eq i8 %883, 0
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %887 = select i1 %884, i64 %877, i64 %879
  store i64 %887, i64* %886, align 8, !tbaa !2428
  %888 = load i8, i8* %BRANCH_TAKEN
  %889 = icmp eq i8 %888, 1
  br i1 %889, label %block_400d76, label %block_400d71

block_401043:                                     ; preds = %block_400e84
  %890 = sub i64 %5114, 64
  %891 = load i64, i64* %PC
  %892 = add i64 %891, 3
  store i64 %892, i64* %PC
  %893 = inttoptr i64 %890 to i32*
  %894 = load i32, i32* %893
  %895 = zext i32 %894 to i64
  store i64 %895, i64* %RAX, align 8, !tbaa !2428
  %896 = load i64, i64* %RBP
  %897 = sub i64 %896, 60
  %898 = load i32, i32* %EAX
  %899 = zext i32 %898 to i64
  %900 = load i64, i64* %PC
  %901 = add i64 %900, 3
  store i64 %901, i64* %PC
  %902 = inttoptr i64 %897 to i32*
  store i32 %898, i32* %902
  %903 = load i64, i64* %PC
  %904 = sub i64 %903, 669
  %905 = load i64, i64* %PC
  %906 = add i64 %905, 5
  store i64 %906, i64* %PC
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %904, i64* %907, align 8, !tbaa !2428
  br label %block_400dac

block_400fbe:                                     ; preds = %block_400eb0
  %908 = load i64, i64* %PC
  %909 = add i64 %908, 5
  %910 = load i64, i64* %PC
  %911 = add i64 %910, 5
  store i64 %911, i64* %PC
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %909, i64* %912, align 8, !tbaa !2428
  %913 = load i64, i64* %RBP
  %914 = sub i64 %913, 28
  %915 = load i64, i64* %PC
  %916 = add i64 %915, 3
  store i64 %916, i64* %PC
  %917 = inttoptr i64 %914 to i32*
  %918 = load i32, i32* %917
  %919 = zext i32 %918 to i64
  store i64 %919, i64* %RAX, align 8, !tbaa !2428
  %920 = load i64, i64* %RAX
  %921 = load i64, i64* %PC
  %922 = add i64 %921, 3
  store i64 %922, i64* %PC
  %923 = trunc i64 %920 to i32
  %924 = add i32 2, %923
  %925 = zext i32 %924 to i64
  store i64 %925, i64* %RAX, align 8, !tbaa !2428
  %926 = icmp ult i32 %924, %923
  %927 = icmp ult i32 %924, 2
  %928 = or i1 %926, %927
  %929 = zext i1 %928 to i8
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %929, i8* %930, align 1, !tbaa !2432
  %931 = and i32 %924, 255
  %932 = call i32 @llvm.ctpop.i32(i32 %931) #17
  %933 = trunc i32 %932 to i8
  %934 = and i8 %933, 1
  %935 = xor i8 %934, 1
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %935, i8* %936, align 1, !tbaa !2446
  %937 = xor i64 2, %920
  %938 = trunc i64 %937 to i32
  %939 = xor i32 %938, %924
  %940 = lshr i32 %939, 4
  %941 = trunc i32 %940 to i8
  %942 = and i8 %941, 1
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %942, i8* %943, align 1, !tbaa !2447
  %944 = icmp eq i32 %924, 0
  %945 = zext i1 %944 to i8
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %945, i8* %946, align 1, !tbaa !2448
  %947 = lshr i32 %924, 31
  %948 = trunc i32 %947 to i8
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %948, i8* %949, align 1, !tbaa !2449
  %950 = lshr i32 %923, 31
  %951 = xor i32 %947, %950
  %952 = add nuw nsw i32 %951, %947
  %953 = icmp eq i32 %952, 2
  %954 = zext i1 %953 to i8
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %954, i8* %955, align 1, !tbaa !2450
  %956 = load i64, i64* %RBP
  %957 = sub i64 %956, 28
  %958 = load i32, i32* %EAX
  %959 = zext i32 %958 to i64
  %960 = load i64, i64* %PC
  %961 = add i64 %960, 3
  store i64 %961, i64* %PC
  %962 = inttoptr i64 %957 to i32*
  store i32 %958, i32* %962
  %963 = load i64, i64* %PC
  %964 = sub i64 %963, 310
  %965 = load i64, i64* %PC
  %966 = add i64 %965, 5
  store i64 %966, i64* %PC
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %964, i64* %967, align 8, !tbaa !2428
  br label %block_400e96

block_400c61:                                     ; preds = %block_400c4d
  %968 = load i64, i64* %RBP
  %969 = sub i64 %968, 28
  %970 = load i64, i64* %PC
  %971 = add i64 %970, 3
  store i64 %971, i64* %PC
  %972 = inttoptr i64 %969 to i32*
  %973 = load i32, i32* %972
  %974 = zext i32 %973 to i64
  store i64 %974, i64* %RAX, align 8, !tbaa !2428
  %975 = load i64, i64* %RBP
  %976 = sub i64 %975, 36
  %977 = load i32, i32* %EAX
  %978 = zext i32 %977 to i64
  %979 = load i64, i64* %PC
  %980 = add i64 %979, 3
  store i64 %980, i64* %PC
  %981 = inttoptr i64 %976 to i32*
  store i32 %977, i32* %981
  br label %block_400c67

block_400fd1:                                     ; preds = %block_400e96
  %982 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %983 = load i64, i64* %RBP
  %984 = sub i64 %983, 152
  %985 = load i64, i64* %PC
  %986 = add i64 %985, 8
  store i64 %986, i64* %PC
  %987 = inttoptr i64 %984 to double*
  %988 = load double, double* %987
  %989 = bitcast i8* %982 to double*
  store double %988, double* %989, align 1, !tbaa !2452
  %990 = getelementptr inbounds i8, i8* %982, i64 8
  %991 = bitcast i8* %990 to double*
  store double 0.000000e+00, double* %991, align 1, !tbaa !2452
  %992 = load i64, i64* %RBP
  %993 = sub i64 %992, 160
  %994 = bitcast %union.vec128_t* %XMM0 to i8*
  %995 = load i64, i64* %PC
  %996 = add i64 %995, 8
  store i64 %996, i64* %PC
  %997 = bitcast i8* %994 to double*
  %998 = load double, double* %997, align 1
  %999 = inttoptr i64 %993 to double*
  store double %998, double* %999
  %1000 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1001 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1002 = load i64, i64* %RBP
  %1003 = sub i64 %1002, 144
  %1004 = load i64, i64* %PC
  %1005 = add i64 %1004, 8
  store i64 %1005, i64* %PC
  %1006 = bitcast i8* %1001 to double*
  %1007 = load double, double* %1006, align 1
  %1008 = getelementptr inbounds i8, i8* %1001, i64 8
  %1009 = bitcast i8* %1008 to i64*
  %1010 = load i64, i64* %1009, align 1
  %1011 = inttoptr i64 %1003 to double*
  %1012 = load double, double* %1011
  %1013 = fmul double %1007, %1012
  %1014 = bitcast i8* %1000 to double*
  store double %1013, double* %1014, align 1, !tbaa !2452
  %1015 = getelementptr inbounds i8, i8* %1000, i64 8
  %1016 = bitcast i8* %1015 to i64*
  store i64 %1010, i64* %1016, align 1, !tbaa !2452
  %1017 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1018 = load i64, i64* %RBP
  %1019 = sub i64 %1018, 128
  %1020 = load i64, i64* %PC
  %1021 = add i64 %1020, 5
  store i64 %1021, i64* %PC
  %1022 = inttoptr i64 %1019 to double*
  %1023 = load double, double* %1022
  %1024 = bitcast i8* %1017 to double*
  store double %1023, double* %1024, align 1, !tbaa !2452
  %1025 = getelementptr inbounds i8, i8* %1017, i64 8
  %1026 = bitcast i8* %1025 to double*
  store double 0.000000e+00, double* %1026, align 1, !tbaa !2452
  %1027 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1028 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1029 = load i64, i64* %RBP
  %1030 = sub i64 %1029, 136
  %1031 = load i64, i64* %PC
  %1032 = add i64 %1031, 8
  store i64 %1032, i64* %PC
  %1033 = bitcast i8* %1028 to double*
  %1034 = load double, double* %1033, align 1
  %1035 = getelementptr inbounds i8, i8* %1028, i64 8
  %1036 = bitcast i8* %1035 to i64*
  %1037 = load i64, i64* %1036, align 1
  %1038 = inttoptr i64 %1030 to double*
  %1039 = load double, double* %1038
  %1040 = fmul double %1034, %1039
  %1041 = bitcast i8* %1027 to double*
  store double %1040, double* %1041, align 1, !tbaa !2452
  %1042 = getelementptr inbounds i8, i8* %1027, i64 8
  %1043 = bitcast i8* %1042 to i64*
  store i64 %1037, i64* %1043, align 1, !tbaa !2452
  %1044 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1045 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1046 = bitcast %union.vec128_t* %XMM1 to i8*
  %1047 = load i64, i64* %PC
  %1048 = add i64 %1047, 4
  store i64 %1048, i64* %PC
  %1049 = bitcast i8* %1045 to double*
  %1050 = load double, double* %1049, align 1
  %1051 = getelementptr inbounds i8, i8* %1045, i64 8
  %1052 = bitcast i8* %1051 to i64*
  %1053 = load i64, i64* %1052, align 1
  %1054 = bitcast i8* %1046 to double*
  %1055 = load double, double* %1054, align 1
  %1056 = fsub double %1050, %1055
  %1057 = bitcast i8* %1044 to double*
  store double %1056, double* %1057, align 1, !tbaa !2452
  %1058 = getelementptr inbounds i8, i8* %1044, i64 8
  %1059 = bitcast i8* %1058 to i64*
  store i64 %1053, i64* %1059, align 1, !tbaa !2452
  %1060 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1061 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1062 = load i64, i64* %RBP
  %1063 = sub i64 %1062, 152
  %1064 = load i64, i64* %PC
  %1065 = add i64 %1064, 8
  store i64 %1065, i64* %PC
  %1066 = bitcast i8* %1061 to double*
  %1067 = load double, double* %1066, align 1
  %1068 = getelementptr inbounds i8, i8* %1061, i64 8
  %1069 = bitcast i8* %1068 to i64*
  %1070 = load i64, i64* %1069, align 1
  %1071 = inttoptr i64 %1063 to double*
  %1072 = load double, double* %1071
  %1073 = fadd double %1067, %1072
  %1074 = bitcast i8* %1060 to double*
  store double %1073, double* %1074, align 1, !tbaa !2452
  %1075 = getelementptr inbounds i8, i8* %1060, i64 8
  %1076 = bitcast i8* %1075 to i64*
  store i64 %1070, i64* %1076, align 1, !tbaa !2452
  %1077 = load i64, i64* %RBP
  %1078 = sub i64 %1077, 152
  %1079 = bitcast %union.vec128_t* %XMM0 to i8*
  %1080 = load i64, i64* %PC
  %1081 = add i64 %1080, 8
  store i64 %1081, i64* %PC
  %1082 = bitcast i8* %1079 to double*
  %1083 = load double, double* %1082, align 1
  %1084 = inttoptr i64 %1078 to double*
  store double %1083, double* %1084
  %1085 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1086 = load i64, i64* %RBP
  %1087 = sub i64 %1086, 128
  %1088 = load i64, i64* %PC
  %1089 = add i64 %1088, 5
  store i64 %1089, i64* %PC
  %1090 = inttoptr i64 %1087 to double*
  %1091 = load double, double* %1090
  %1092 = bitcast i8* %1085 to double*
  store double %1091, double* %1092, align 1, !tbaa !2452
  %1093 = getelementptr inbounds i8, i8* %1085, i64 8
  %1094 = bitcast i8* %1093 to double*
  store double 0.000000e+00, double* %1094, align 1, !tbaa !2452
  %1095 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1096 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1097 = load i64, i64* %RBP
  %1098 = sub i64 %1097, 144
  %1099 = load i64, i64* %PC
  %1100 = add i64 %1099, 8
  store i64 %1100, i64* %PC
  %1101 = bitcast i8* %1096 to double*
  %1102 = load double, double* %1101, align 1
  %1103 = getelementptr inbounds i8, i8* %1096, i64 8
  %1104 = bitcast i8* %1103 to i64*
  %1105 = load i64, i64* %1104, align 1
  %1106 = inttoptr i64 %1098 to double*
  %1107 = load double, double* %1106
  %1108 = fmul double %1102, %1107
  %1109 = bitcast i8* %1095 to double*
  store double %1108, double* %1109, align 1, !tbaa !2452
  %1110 = getelementptr inbounds i8, i8* %1095, i64 8
  %1111 = bitcast i8* %1110 to i64*
  store i64 %1105, i64* %1111, align 1, !tbaa !2452
  %1112 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1113 = load i64, i64* %RBP
  %1114 = sub i64 %1113, 160
  %1115 = load i64, i64* %PC
  %1116 = add i64 %1115, 8
  store i64 %1116, i64* %PC
  %1117 = inttoptr i64 %1114 to double*
  %1118 = load double, double* %1117
  %1119 = bitcast i8* %1112 to double*
  store double %1118, double* %1119, align 1, !tbaa !2452
  %1120 = getelementptr inbounds i8, i8* %1112, i64 8
  %1121 = bitcast i8* %1120 to double*
  store double 0.000000e+00, double* %1121, align 1, !tbaa !2452
  %1122 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1123 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1124 = load i64, i64* %RBP
  %1125 = sub i64 %1124, 136
  %1126 = load i64, i64* %PC
  %1127 = add i64 %1126, 8
  store i64 %1127, i64* %PC
  %1128 = bitcast i8* %1123 to double*
  %1129 = load double, double* %1128, align 1
  %1130 = getelementptr inbounds i8, i8* %1123, i64 8
  %1131 = bitcast i8* %1130 to i64*
  %1132 = load i64, i64* %1131, align 1
  %1133 = inttoptr i64 %1125 to double*
  %1134 = load double, double* %1133
  %1135 = fmul double %1129, %1134
  %1136 = bitcast i8* %1122 to double*
  store double %1135, double* %1136, align 1, !tbaa !2452
  %1137 = getelementptr inbounds i8, i8* %1122, i64 8
  %1138 = bitcast i8* %1137 to i64*
  store i64 %1132, i64* %1138, align 1, !tbaa !2452
  %1139 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1140 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1141 = bitcast %union.vec128_t* %XMM1 to i8*
  %1142 = load i64, i64* %PC
  %1143 = add i64 %1142, 4
  store i64 %1143, i64* %PC
  %1144 = bitcast i8* %1140 to double*
  %1145 = load double, double* %1144, align 1
  %1146 = getelementptr inbounds i8, i8* %1140, i64 8
  %1147 = bitcast i8* %1146 to i64*
  %1148 = load i64, i64* %1147, align 1
  %1149 = bitcast i8* %1141 to double*
  %1150 = load double, double* %1149, align 1
  %1151 = fadd double %1145, %1150
  %1152 = bitcast i8* %1139 to double*
  store double %1151, double* %1152, align 1, !tbaa !2452
  %1153 = getelementptr inbounds i8, i8* %1139, i64 8
  %1154 = bitcast i8* %1153 to i64*
  store i64 %1148, i64* %1154, align 1, !tbaa !2452
  %1155 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1156 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1157 = load i64, i64* %RBP
  %1158 = sub i64 %1157, 128
  %1159 = load i64, i64* %PC
  %1160 = add i64 %1159, 5
  store i64 %1160, i64* %PC
  %1161 = bitcast i8* %1156 to double*
  %1162 = load double, double* %1161, align 1
  %1163 = getelementptr inbounds i8, i8* %1156, i64 8
  %1164 = bitcast i8* %1163 to i64*
  %1165 = load i64, i64* %1164, align 1
  %1166 = inttoptr i64 %1158 to double*
  %1167 = load double, double* %1166
  %1168 = fadd double %1162, %1167
  %1169 = bitcast i8* %1155 to double*
  store double %1168, double* %1169, align 1, !tbaa !2452
  %1170 = getelementptr inbounds i8, i8* %1155, i64 8
  %1171 = bitcast i8* %1170 to i64*
  store i64 %1165, i64* %1171, align 1, !tbaa !2452
  %1172 = load i64, i64* %RBP
  %1173 = sub i64 %1172, 128
  %1174 = bitcast %union.vec128_t* %XMM0 to i8*
  %1175 = load i64, i64* %PC
  %1176 = add i64 %1175, 5
  store i64 %1176, i64* %PC
  %1177 = bitcast i8* %1174 to double*
  %1178 = load double, double* %1177, align 1
  %1179 = inttoptr i64 %1173 to double*
  store double %1178, double* %1179
  %1180 = load i64, i64* %RBP
  %1181 = sub i64 %1180, 48
  %1182 = load i64, i64* %PC
  %1183 = add i64 %1182, 3
  store i64 %1183, i64* %PC
  %1184 = inttoptr i64 %1181 to i32*
  %1185 = load i32, i32* %1184
  %1186 = zext i32 %1185 to i64
  store i64 %1186, i64* %RAX, align 8, !tbaa !2428
  %1187 = load i64, i64* %RAX
  %1188 = load i64, i64* %RBP
  %1189 = sub i64 %1188, 36
  %1190 = load i64, i64* %PC
  %1191 = add i64 %1190, 3
  store i64 %1191, i64* %PC
  %1192 = trunc i64 %1187 to i32
  %1193 = inttoptr i64 %1189 to i32*
  %1194 = load i32, i32* %1193
  %1195 = add i32 %1194, %1192
  %1196 = zext i32 %1195 to i64
  store i64 %1196, i64* %RAX, align 8, !tbaa !2428
  %1197 = icmp ult i32 %1195, %1192
  %1198 = icmp ult i32 %1195, %1194
  %1199 = or i1 %1197, %1198
  %1200 = zext i1 %1199 to i8
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1200, i8* %1201, align 1, !tbaa !2432
  %1202 = and i32 %1195, 255
  %1203 = call i32 @llvm.ctpop.i32(i32 %1202) #17
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  %1206 = xor i8 %1205, 1
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1206, i8* %1207, align 1, !tbaa !2446
  %1208 = xor i32 %1194, %1192
  %1209 = xor i32 %1208, %1195
  %1210 = lshr i32 %1209, 4
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1212, i8* %1213, align 1, !tbaa !2447
  %1214 = icmp eq i32 %1195, 0
  %1215 = zext i1 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1215, i8* %1216, align 1, !tbaa !2448
  %1217 = lshr i32 %1195, 31
  %1218 = trunc i32 %1217 to i8
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1218, i8* %1219, align 1, !tbaa !2449
  %1220 = lshr i32 %1192, 31
  %1221 = lshr i32 %1194, 31
  %1222 = xor i32 %1217, %1220
  %1223 = xor i32 %1217, %1221
  %1224 = add nuw nsw i32 %1222, %1223
  %1225 = icmp eq i32 %1224, 2
  %1226 = zext i1 %1225 to i8
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1226, i8* %1227, align 1, !tbaa !2450
  %1228 = load i64, i64* %RBP
  %1229 = sub i64 %1228, 36
  %1230 = load i32, i32* %EAX
  %1231 = zext i32 %1230 to i64
  %1232 = load i64, i64* %PC
  %1233 = add i64 %1232, 3
  store i64 %1233, i64* %PC
  %1234 = inttoptr i64 %1229 to i32*
  store i32 %1230, i32* %1234
  %1235 = load i64, i64* %PC
  %1236 = sub i64 %1235, 442
  %1237 = load i64, i64* %PC
  %1238 = add i64 %1237, 5
  store i64 %1238, i64* %PC
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1236, i64* %1239, align 8, !tbaa !2428
  br label %block_400e84

block_400bd0:                                     ; preds = %block_400bc3, %block_40104e
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.7, %block_400bc3 ], [ %MEMORY.6, %block_40104e ]
  %1240 = load i64, i64* %RBP
  %1241 = sub i64 %1240, 72
  %1242 = load i64, i64* %PC
  %1243 = add i64 %1242, 4
  store i64 %1243, i64* %PC
  %1244 = inttoptr i64 %1241 to i32*
  %1245 = load i32, i32* %1244
  %1246 = sub i32 %1245, 1
  %1247 = icmp ult i32 %1245, 1
  %1248 = zext i1 %1247 to i8
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1248, i8* %1249, align 1, !tbaa !2432
  %1250 = and i32 %1246, 255
  %1251 = call i32 @llvm.ctpop.i32(i32 %1250) #17
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  %1254 = xor i8 %1253, 1
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1254, i8* %1255, align 1, !tbaa !2446
  %1256 = xor i32 %1245, 1
  %1257 = xor i32 %1256, %1246
  %1258 = lshr i32 %1257, 4
  %1259 = trunc i32 %1258 to i8
  %1260 = and i8 %1259, 1
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1260, i8* %1261, align 1, !tbaa !2447
  %1262 = icmp eq i32 %1246, 0
  %1263 = zext i1 %1262 to i8
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1263, i8* %1264, align 1, !tbaa !2448
  %1265 = lshr i32 %1246, 31
  %1266 = trunc i32 %1265 to i8
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1266, i8* %1267, align 1, !tbaa !2449
  %1268 = lshr i32 %1245, 31
  %1269 = xor i32 %1265, %1268
  %1270 = add nuw nsw i32 %1269, %1268
  %1271 = icmp eq i32 %1270, 2
  %1272 = zext i1 %1271 to i8
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1272, i8* %1273, align 1, !tbaa !2450
  %1274 = load i64, i64* %PC
  %1275 = add i64 %1274, 1170
  %1276 = load i64, i64* %PC
  %1277 = add i64 %1276, 6
  %1278 = load i64, i64* %PC
  %1279 = add i64 %1278, 6
  store i64 %1279, i64* %PC
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1281 = load i8, i8* %1280, align 1, !tbaa !2449
  %1282 = icmp ne i8 %1281, 0
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1284 = load i8, i8* %1283, align 1, !tbaa !2450
  %1285 = icmp ne i8 %1284, 0
  %1286 = xor i1 %1282, %1285
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1289 = select i1 %1286, i64 %1275, i64 %1277
  store i64 %1289, i64* %1288, align 8, !tbaa !2428
  %1290 = load i8, i8* %BRANCH_TAKEN
  %1291 = icmp eq i8 %1290, 1
  br i1 %1291, label %block_401066, label %block_400bda

block_40104e:                                     ; preds = %block_400dac
  %1292 = load i64, i64* %RBP
  %1293 = sub i64 %1292, 84
  %1294 = load i64, i64* %PC
  %1295 = add i64 %1294, 3
  store i64 %1295, i64* %PC
  %1296 = inttoptr i64 %1293 to i32*
  %1297 = load i32, i32* %1296
  %1298 = zext i32 %1297 to i64
  store i64 %1298, i64* %RAX, align 8, !tbaa !2428
  %1299 = load i64, i64* %RAX
  %1300 = load i64, i64* %RBP
  %1301 = sub i64 %1300, 88
  %1302 = load i64, i64* %PC
  %1303 = add i64 %1302, 4
  store i64 %1303, i64* %PC
  %1304 = inttoptr i64 %1301 to i32*
  %1305 = load i32, i32* %1304
  %1306 = shl i64 %1299, 32
  %1307 = ashr exact i64 %1306, 32
  %1308 = sext i32 %1305 to i64
  %1309 = mul nsw i64 %1308, %1307
  %1310 = trunc i64 %1309 to i32
  %1311 = and i64 %1309, 4294967295
  store i64 %1311, i64* %RAX, align 8, !tbaa !2428
  %1312 = shl i64 %1309, 32
  %1313 = ashr exact i64 %1312, 32
  %1314 = icmp ne i64 %1313, %1309
  %1315 = zext i1 %1314 to i8
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1315, i8* %1316, align 1, !tbaa !2432
  %1317 = and i32 %1310, 255
  %1318 = call i32 @llvm.ctpop.i32(i32 %1317) #17
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  %1321 = xor i8 %1320, 1
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1321, i8* %1322, align 1, !tbaa !2446
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1323, align 1, !tbaa !2447
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1324, align 1, !tbaa !2448
  %1325 = lshr i32 %1310, 31
  %1326 = trunc i32 %1325 to i8
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1326, i8* %1327, align 1, !tbaa !2449
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1315, i8* %1328, align 1, !tbaa !2450
  %1329 = load i64, i64* %RBP
  %1330 = sub i64 %1329, 88
  %1331 = load i32, i32* %EAX
  %1332 = zext i32 %1331 to i64
  %1333 = load i64, i64* %PC
  %1334 = add i64 %1333, 3
  store i64 %1334, i64* %PC
  %1335 = inttoptr i64 %1330 to i32*
  store i32 %1331, i32* %1335
  %1336 = load i64, i64* %RBP
  %1337 = sub i64 %1336, 72
  %1338 = load i64, i64* %PC
  %1339 = add i64 %1338, 3
  store i64 %1339, i64* %PC
  %1340 = inttoptr i64 %1337 to i32*
  %1341 = load i32, i32* %1340
  %1342 = zext i32 %1341 to i64
  store i64 %1342, i64* %RAX, align 8, !tbaa !2428
  %1343 = load i64, i64* %RAX
  %1344 = load i64, i64* %PC
  %1345 = add i64 %1344, 3
  store i64 %1345, i64* %PC
  %1346 = trunc i64 %1343 to i32
  %1347 = add i32 -1, %1346
  %1348 = zext i32 %1347 to i64
  store i64 %1348, i64* %RAX, align 8, !tbaa !2428
  %1349 = icmp ult i32 %1347, %1346
  %1350 = icmp ult i32 %1347, -1
  %1351 = or i1 %1349, %1350
  %1352 = zext i1 %1351 to i8
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1352, i8* %1353, align 1, !tbaa !2432
  %1354 = and i32 %1347, 255
  %1355 = call i32 @llvm.ctpop.i32(i32 %1354) #17
  %1356 = trunc i32 %1355 to i8
  %1357 = and i8 %1356, 1
  %1358 = xor i8 %1357, 1
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1358, i8* %1359, align 1, !tbaa !2446
  %1360 = xor i64 -1, %1343
  %1361 = trunc i64 %1360 to i32
  %1362 = xor i32 %1361, %1347
  %1363 = lshr i32 %1362, 4
  %1364 = trunc i32 %1363 to i8
  %1365 = and i8 %1364, 1
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1365, i8* %1366, align 1, !tbaa !2447
  %1367 = icmp eq i32 %1347, 0
  %1368 = zext i1 %1367 to i8
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1368, i8* %1369, align 1, !tbaa !2448
  %1370 = lshr i32 %1347, 31
  %1371 = trunc i32 %1370 to i8
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1371, i8* %1372, align 1, !tbaa !2449
  %1373 = lshr i32 %1346, 31
  %1374 = xor i32 %1370, %1373
  %1375 = xor i32 %1370, 1
  %1376 = add nuw nsw i32 %1374, %1375
  %1377 = icmp eq i32 %1376, 2
  %1378 = zext i1 %1377 to i8
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1378, i8* %1379, align 1, !tbaa !2450
  %1380 = load i64, i64* %RBP
  %1381 = sub i64 %1380, 72
  %1382 = load i32, i32* %EAX
  %1383 = zext i32 %1382 to i64
  %1384 = load i64, i64* %PC
  %1385 = add i64 %1384, 3
  store i64 %1385, i64* %PC
  %1386 = inttoptr i64 %1381 to i32*
  store i32 %1382, i32* %1386
  %1387 = load i64, i64* %PC
  %1388 = sub i64 %1387, 1169
  %1389 = load i64, i64* %PC
  %1390 = add i64 %1389, 5
  store i64 %1390, i64* %PC
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1388, i64* %1391, align 8, !tbaa !2428
  br label %block_400bd0

block_400c4d:                                     ; preds = %block_400c47, %block_400d1d
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.8, %block_400c47 ], [ %MEMORY.10, %block_400d1d ]
  %1392 = load i64, i64* %RBP
  %1393 = sub i64 %1392, 28
  %1394 = load i64, i64* %PC
  %1395 = add i64 %1394, 3
  store i64 %1395, i64* %PC
  %1396 = inttoptr i64 %1393 to i32*
  %1397 = load i32, i32* %1396
  %1398 = zext i32 %1397 to i64
  store i64 %1398, i64* %RAX, align 8, !tbaa !2428
  %1399 = load i64, i64* %RBP
  %1400 = sub i64 %1399, 32
  %1401 = load i64, i64* %PC
  %1402 = add i64 %1401, 3
  store i64 %1402, i64* %PC
  %1403 = inttoptr i64 %1400 to i32*
  %1404 = load i32, i32* %1403
  %1405 = zext i32 %1404 to i64
  store i64 %1405, i64* %RCX, align 8, !tbaa !2428
  %1406 = load i64, i64* %RCX
  %1407 = load i64, i64* %RBP
  %1408 = sub i64 %1407, 48
  %1409 = load i64, i64* %PC
  %1410 = add i64 %1409, 3
  store i64 %1410, i64* %PC
  %1411 = trunc i64 %1406 to i32
  %1412 = inttoptr i64 %1408 to i32*
  %1413 = load i32, i32* %1412
  %1414 = add i32 %1413, %1411
  %1415 = zext i32 %1414 to i64
  store i64 %1415, i64* %RCX, align 8, !tbaa !2428
  %1416 = icmp ult i32 %1414, %1411
  %1417 = icmp ult i32 %1414, %1413
  %1418 = or i1 %1416, %1417
  %1419 = zext i1 %1418 to i8
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1419, i8* %1420, align 1, !tbaa !2432
  %1421 = and i32 %1414, 255
  %1422 = call i32 @llvm.ctpop.i32(i32 %1421) #17
  %1423 = trunc i32 %1422 to i8
  %1424 = and i8 %1423, 1
  %1425 = xor i8 %1424, 1
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1425, i8* %1426, align 1, !tbaa !2446
  %1427 = xor i32 %1413, %1411
  %1428 = xor i32 %1427, %1414
  %1429 = lshr i32 %1428, 4
  %1430 = trunc i32 %1429 to i8
  %1431 = and i8 %1430, 1
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1431, i8* %1432, align 1, !tbaa !2447
  %1433 = icmp eq i32 %1414, 0
  %1434 = zext i1 %1433 to i8
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1434, i8* %1435, align 1, !tbaa !2448
  %1436 = lshr i32 %1414, 31
  %1437 = trunc i32 %1436 to i8
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1437, i8* %1438, align 1, !tbaa !2449
  %1439 = lshr i32 %1411, 31
  %1440 = lshr i32 %1413, 31
  %1441 = xor i32 %1436, %1439
  %1442 = xor i32 %1436, %1440
  %1443 = add nuw nsw i32 %1441, %1442
  %1444 = icmp eq i32 %1443, 2
  %1445 = zext i1 %1444 to i8
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1445, i8* %1446, align 1, !tbaa !2450
  %1447 = load i64, i64* %RCX
  %1448 = load i64, i64* %PC
  %1449 = add i64 %1448, 3
  store i64 %1449, i64* %PC
  %1450 = trunc i64 %1447 to i32
  %1451 = sub i32 %1450, 2
  %1452 = zext i32 %1451 to i64
  store i64 %1452, i64* %RCX, align 8, !tbaa !2428
  %1453 = icmp ult i32 %1450, 2
  %1454 = zext i1 %1453 to i8
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1454, i8* %1455, align 1, !tbaa !2432
  %1456 = and i32 %1451, 255
  %1457 = call i32 @llvm.ctpop.i32(i32 %1456) #17
  %1458 = trunc i32 %1457 to i8
  %1459 = and i8 %1458, 1
  %1460 = xor i8 %1459, 1
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1460, i8* %1461, align 1, !tbaa !2446
  %1462 = xor i64 2, %1447
  %1463 = trunc i64 %1462 to i32
  %1464 = xor i32 %1463, %1451
  %1465 = lshr i32 %1464, 4
  %1466 = trunc i32 %1465 to i8
  %1467 = and i8 %1466, 1
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1467, i8* %1468, align 1, !tbaa !2447
  %1469 = icmp eq i32 %1451, 0
  %1470 = zext i1 %1469 to i8
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1470, i8* %1471, align 1, !tbaa !2448
  %1472 = lshr i32 %1451, 31
  %1473 = trunc i32 %1472 to i8
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1473, i8* %1474, align 1, !tbaa !2449
  %1475 = lshr i32 %1450, 31
  %1476 = xor i32 %1472, %1475
  %1477 = add nuw nsw i32 %1476, %1475
  %1478 = icmp eq i32 %1477, 2
  %1479 = zext i1 %1478 to i8
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1479, i8* %1480, align 1, !tbaa !2450
  %1481 = load i32, i32* %EAX
  %1482 = zext i32 %1481 to i64
  %1483 = load i32, i32* %ECX
  %1484 = zext i32 %1483 to i64
  %1485 = load i64, i64* %PC
  %1486 = add i64 %1485, 2
  store i64 %1486, i64* %PC
  %1487 = sub i32 %1481, %1483
  %1488 = icmp ult i32 %1481, %1483
  %1489 = zext i1 %1488 to i8
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1489, i8* %1490, align 1, !tbaa !2432
  %1491 = and i32 %1487, 255
  %1492 = call i32 @llvm.ctpop.i32(i32 %1491) #17
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = xor i8 %1494, 1
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1495, i8* %1496, align 1, !tbaa !2446
  %1497 = xor i64 %1484, %1482
  %1498 = trunc i64 %1497 to i32
  %1499 = xor i32 %1498, %1487
  %1500 = lshr i32 %1499, 4
  %1501 = trunc i32 %1500 to i8
  %1502 = and i8 %1501, 1
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1502, i8* %1503, align 1, !tbaa !2447
  %1504 = icmp eq i32 %1487, 0
  %1505 = zext i1 %1504 to i8
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1505, i8* %1506, align 1, !tbaa !2448
  %1507 = lshr i32 %1487, 31
  %1508 = trunc i32 %1507 to i8
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1508, i8* %1509, align 1, !tbaa !2449
  %1510 = lshr i32 %1481, 31
  %1511 = lshr i32 %1483, 31
  %1512 = xor i32 %1511, %1510
  %1513 = xor i32 %1507, %1510
  %1514 = add nuw nsw i32 %1513, %1512
  %1515 = icmp eq i32 %1514, 2
  %1516 = zext i1 %1515 to i8
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1516, i8* %1517, align 1, !tbaa !2450
  %1518 = load i64, i64* %PC
  %1519 = add i64 %1518, 213
  %1520 = load i64, i64* %PC
  %1521 = add i64 %1520, 6
  %1522 = load i64, i64* %PC
  %1523 = add i64 %1522, 6
  store i64 %1523, i64* %PC
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1525 = load i8, i8* %1524, align 1, !tbaa !2448
  %1526 = icmp eq i8 %1525, 0
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1528 = load i8, i8* %1527, align 1, !tbaa !2449
  %1529 = icmp ne i8 %1528, 0
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1531 = load i8, i8* %1530, align 1, !tbaa !2450
  %1532 = icmp ne i8 %1531, 0
  %1533 = xor i1 %1529, %1532
  %1534 = xor i1 %1533, true
  %1535 = and i1 %1526, %1534
  %1536 = zext i1 %1535 to i8
  store i8 %1536, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1538 = select i1 %1535, i64 %1519, i64 %1521
  store i64 %1538, i64* %1537, align 8, !tbaa !2428
  %1539 = load i8, i8* %BRANCH_TAKEN
  %1540 = icmp eq i8 %1539, 1
  br i1 %1540, label %block_400d30, label %block_400c61

block_400d3e:                                     ; preds = %block_400d35, %block_400d76
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.4, %block_400d35 ], [ %MEMORY.0, %block_400d76 ]
  %1541 = load i64, i64* %RAX
  %1542 = load i32, i32* %EAX
  %1543 = zext i32 %1542 to i64
  %1544 = load i64, i64* %PC
  %1545 = add i64 %1544, 2
  store i64 %1545, i64* %PC
  %1546 = xor i64 %1543, %1541
  %1547 = trunc i64 %1546 to i32
  %1548 = and i64 %1546, 4294967295
  store i64 %1548, i64* %RAX, align 8, !tbaa !2428
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1549, align 1, !tbaa !2432
  %1550 = and i32 %1547, 255
  %1551 = call i32 @llvm.ctpop.i32(i32 %1550) #17
  %1552 = trunc i32 %1551 to i8
  %1553 = and i8 %1552, 1
  %1554 = xor i8 %1553, 1
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1554, i8* %1555, align 1, !tbaa !2446
  %1556 = icmp eq i32 %1547, 0
  %1557 = zext i1 %1556 to i8
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1557, i8* %1558, align 1, !tbaa !2448
  %1559 = lshr i32 %1547, 31
  %1560 = trunc i32 %1559 to i8
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1560, i8* %1561, align 1, !tbaa !2449
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1562, align 1, !tbaa !2450
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1563, align 1, !tbaa !2447
  %1564 = load i8, i8* %AL
  %1565 = zext i8 %1564 to i64
  %1566 = load i64, i64* %PC
  %1567 = add i64 %1566, 2
  store i64 %1567, i64* %PC
  store i8 %1564, i8* %CL, align 1, !tbaa !2451
  %1568 = load i64, i64* %RBP
  %1569 = sub i64 %1568, 68
  %1570 = load i64, i64* %PC
  %1571 = add i64 %1570, 3
  store i64 %1571, i64* %PC
  %1572 = inttoptr i64 %1569 to i32*
  %1573 = load i32, i32* %1572
  %1574 = zext i32 %1573 to i64
  store i64 %1574, i64* %RAX, align 8, !tbaa !2428
  %1575 = load i32, i32* %EAX
  %1576 = zext i32 %1575 to i64
  %1577 = load i64, i64* %RBP
  %1578 = sub i64 %1577, 48
  %1579 = load i64, i64* %PC
  %1580 = add i64 %1579, 3
  store i64 %1580, i64* %PC
  %1581 = inttoptr i64 %1578 to i32*
  %1582 = load i32, i32* %1581
  %1583 = sub i32 %1575, %1582
  %1584 = icmp ult i32 %1575, %1582
  %1585 = zext i1 %1584 to i8
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1585, i8* %1586, align 1, !tbaa !2432
  %1587 = and i32 %1583, 255
  %1588 = call i32 @llvm.ctpop.i32(i32 %1587) #17
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = xor i8 %1590, 1
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1591, i8* %1592, align 1, !tbaa !2446
  %1593 = xor i32 %1582, %1575
  %1594 = xor i32 %1593, %1583
  %1595 = lshr i32 %1594, 4
  %1596 = trunc i32 %1595 to i8
  %1597 = and i8 %1596, 1
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1597, i8* %1598, align 1, !tbaa !2447
  %1599 = icmp eq i32 %1583, 0
  %1600 = zext i1 %1599 to i8
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1600, i8* %1601, align 1, !tbaa !2448
  %1602 = lshr i32 %1583, 31
  %1603 = trunc i32 %1602 to i8
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1603, i8* %1604, align 1, !tbaa !2449
  %1605 = lshr i32 %1575, 31
  %1606 = lshr i32 %1582, 31
  %1607 = xor i32 %1606, %1605
  %1608 = xor i32 %1602, %1605
  %1609 = add nuw nsw i32 %1608, %1607
  %1610 = icmp eq i32 %1609, 2
  %1611 = zext i1 %1610 to i8
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1611, i8* %1612, align 1, !tbaa !2450
  %1613 = load i64, i64* %RBP
  %1614 = sub i64 %1613, 165
  %1615 = load i8, i8* %CL
  %1616 = zext i8 %1615 to i64
  %1617 = load i64, i64* %PC
  %1618 = add i64 %1617, 6
  store i64 %1618, i64* %PC
  %1619 = inttoptr i64 %1614 to i8*
  store i8 %1615, i8* %1619
  %1620 = load i64, i64* %PC
  %1621 = add i64 %1620, 21
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
  %1633 = zext i1 %1632 to i8
  store i8 %1633, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1635 = select i1 %1632, i64 %1621, i64 %1623
  store i64 %1635, i64* %1634, align 8, !tbaa !2428
  %1636 = load i8, i8* %BRANCH_TAKEN
  %1637 = icmp eq i8 %1636, 1
  br i1 %1637, label %block_400d63, label %block_400d54

block_400d35:                                     ; preds = %block_400c3b, %block_400d30
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.8, %block_400c3b ], [ %MEMORY.2, %block_400d30 ]
  %1638 = load i64, i64* %RBP
  %1639 = sub i64 %1638, 52
  %1640 = load i64, i64* %PC
  %1641 = add i64 %1640, 3
  store i64 %1641, i64* %PC
  %1642 = inttoptr i64 %1639 to i32*
  %1643 = load i32, i32* %1642
  %1644 = zext i32 %1643 to i64
  store i64 %1644, i64* %RAX, align 8, !tbaa !2428
  %1645 = load i64, i64* %RAX
  %1646 = load i64, i64* %PC
  %1647 = add i64 %1646, 3
  store i64 %1647, i64* %PC
  %1648 = shl i64 %1645, 32
  %1649 = ashr i64 %1648, 33
  %1650 = trunc i64 %1645 to i8
  %1651 = and i8 %1650, 1
  %1652 = trunc i64 %1649 to i32
  %1653 = and i64 %1649, 4294967295
  store i64 %1653, i64* %RAX, align 8, !tbaa !2428
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1651, i8* %1654, align 1, !tbaa !2451
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1656 = and i32 %1652, 255
  %1657 = call i32 @llvm.ctpop.i32(i32 %1656) #17
  %1658 = trunc i32 %1657 to i8
  %1659 = and i8 %1658, 1
  %1660 = xor i8 %1659, 1
  store i8 %1660, i8* %1655, align 1, !tbaa !2451
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1661, align 1, !tbaa !2451
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1663 = icmp eq i32 %1652, 0
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %1662, align 1, !tbaa !2451
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1666 = lshr i32 %1652, 31
  %1667 = trunc i32 %1666 to i8
  store i8 %1667, i8* %1665, align 1, !tbaa !2451
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1668, align 1, !tbaa !2451
  %1669 = load i64, i64* %RBP
  %1670 = sub i64 %1669, 68
  %1671 = load i32, i32* %EAX
  %1672 = zext i32 %1671 to i64
  %1673 = load i64, i64* %PC
  %1674 = add i64 %1673, 3
  store i64 %1674, i64* %PC
  %1675 = inttoptr i64 %1670 to i32*
  store i32 %1671, i32* %1675
  br label %block_400d3e

block_400eb0:                                     ; preds = %block_400ebc, %block_400eaa
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.9, %block_400eaa ], [ %MEMORY.5, %block_400ebc ]
  %1676 = load i64, i64* %RBP
  %1677 = sub i64 %1676, 32
  %1678 = load i64, i64* %PC
  %1679 = add i64 %1678, 3
  store i64 %1679, i64* %PC
  %1680 = inttoptr i64 %1677 to i32*
  %1681 = load i32, i32* %1680
  %1682 = zext i32 %1681 to i64
  store i64 %1682, i64* %RAX, align 8, !tbaa !2428
  %1683 = load i32, i32* %EAX
  %1684 = zext i32 %1683 to i64
  %1685 = load i64, i64* %RBP
  %1686 = sub i64 %1685, 56
  %1687 = load i64, i64* %PC
  %1688 = add i64 %1687, 3
  store i64 %1688, i64* %PC
  %1689 = inttoptr i64 %1686 to i32*
  %1690 = load i32, i32* %1689
  %1691 = sub i32 %1683, %1690
  %1692 = icmp ult i32 %1683, %1690
  %1693 = zext i1 %1692 to i8
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1693, i8* %1694, align 1, !tbaa !2432
  %1695 = and i32 %1691, 255
  %1696 = call i32 @llvm.ctpop.i32(i32 %1695) #17
  %1697 = trunc i32 %1696 to i8
  %1698 = and i8 %1697, 1
  %1699 = xor i8 %1698, 1
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1699, i8* %1700, align 1, !tbaa !2446
  %1701 = xor i32 %1690, %1683
  %1702 = xor i32 %1701, %1691
  %1703 = lshr i32 %1702, 4
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1705, i8* %1706, align 1, !tbaa !2447
  %1707 = icmp eq i32 %1691, 0
  %1708 = zext i1 %1707 to i8
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1708, i8* %1709, align 1, !tbaa !2448
  %1710 = lshr i32 %1691, 31
  %1711 = trunc i32 %1710 to i8
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1711, i8* %1712, align 1, !tbaa !2449
  %1713 = lshr i32 %1683, 31
  %1714 = lshr i32 %1690, 31
  %1715 = xor i32 %1714, %1713
  %1716 = xor i32 %1710, %1713
  %1717 = add nuw nsw i32 %1716, %1715
  %1718 = icmp eq i32 %1717, 2
  %1719 = zext i1 %1718 to i8
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1719, i8* %1720, align 1, !tbaa !2450
  %1721 = load i64, i64* %PC
  %1722 = add i64 %1721, 264
  %1723 = load i64, i64* %PC
  %1724 = add i64 %1723, 6
  %1725 = load i64, i64* %PC
  %1726 = add i64 %1725, 6
  store i64 %1726, i64* %PC
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1728 = load i8, i8* %1727, align 1, !tbaa !2448
  %1729 = icmp eq i8 %1728, 0
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1731 = load i8, i8* %1730, align 1, !tbaa !2449
  %1732 = icmp ne i8 %1731, 0
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1734 = load i8, i8* %1733, align 1, !tbaa !2450
  %1735 = icmp ne i8 %1734, 0
  %1736 = xor i1 %1732, %1735
  %1737 = xor i1 %1736, true
  %1738 = and i1 %1729, %1737
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1741 = select i1 %1738, i64 %1722, i64 %1724
  store i64 %1741, i64* %1740, align 8, !tbaa !2428
  %1742 = load i8, i8* %BRANCH_TAKEN
  %1743 = icmp eq i8 %1742, 1
  br i1 %1743, label %block_400fbe, label %block_400ebc

block_400eaa:                                     ; preds = %block_400e96
  %1744 = load i64, i64* %RBP
  %1745 = sub i64 %1744, 28
  %1746 = load i64, i64* %PC
  %1747 = add i64 %1746, 3
  store i64 %1747, i64* %PC
  %1748 = inttoptr i64 %1745 to i32*
  %1749 = load i32, i32* %1748
  %1750 = zext i32 %1749 to i64
  store i64 %1750, i64* %RAX, align 8, !tbaa !2428
  %1751 = load i64, i64* %RBP
  %1752 = sub i64 %1751, 32
  %1753 = load i32, i32* %EAX
  %1754 = zext i32 %1753 to i64
  %1755 = load i64, i64* %PC
  %1756 = add i64 %1755, 3
  store i64 %1756, i64* %PC
  %1757 = inttoptr i64 %1752 to i32*
  store i32 %1753, i32* %1757
  br label %block_400eb0

block_400d54:                                     ; preds = %block_400d3e
  %1758 = load i64, i64* %RBP
  %1759 = sub i64 %1758, 40
  %1760 = load i64, i64* %PC
  %1761 = add i64 %1760, 3
  store i64 %1761, i64* %PC
  %1762 = inttoptr i64 %1759 to i32*
  %1763 = load i32, i32* %1762
  %1764 = zext i32 %1763 to i64
  store i64 %1764, i64* %RAX, align 8, !tbaa !2428
  %1765 = load i32, i32* %EAX
  %1766 = zext i32 %1765 to i64
  %1767 = load i64, i64* %RBP
  %1768 = sub i64 %1767, 68
  %1769 = load i64, i64* %PC
  %1770 = add i64 %1769, 3
  store i64 %1770, i64* %PC
  %1771 = inttoptr i64 %1768 to i32*
  %1772 = load i32, i32* %1771
  %1773 = sub i32 %1765, %1772
  %1774 = icmp ult i32 %1765, %1772
  %1775 = zext i1 %1774 to i8
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1775, i8* %1776, align 1, !tbaa !2432
  %1777 = and i32 %1773, 255
  %1778 = call i32 @llvm.ctpop.i32(i32 %1777) #17
  %1779 = trunc i32 %1778 to i8
  %1780 = and i8 %1779, 1
  %1781 = xor i8 %1780, 1
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1781, i8* %1782, align 1, !tbaa !2446
  %1783 = xor i32 %1772, %1765
  %1784 = xor i32 %1783, %1773
  %1785 = lshr i32 %1784, 4
  %1786 = trunc i32 %1785 to i8
  %1787 = and i8 %1786, 1
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1787, i8* %1788, align 1, !tbaa !2447
  %1789 = icmp eq i32 %1773, 0
  %1790 = zext i1 %1789 to i8
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1790, i8* %1791, align 1, !tbaa !2448
  %1792 = lshr i32 %1773, 31
  %1793 = trunc i32 %1792 to i8
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1793, i8* %1794, align 1, !tbaa !2449
  %1795 = lshr i32 %1765, 31
  %1796 = lshr i32 %1772, 31
  %1797 = xor i32 %1796, %1795
  %1798 = xor i32 %1792, %1795
  %1799 = add nuw nsw i32 %1798, %1797
  %1800 = icmp eq i32 %1799, 2
  %1801 = zext i1 %1800 to i8
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1801, i8* %1802, align 1, !tbaa !2450
  %1803 = load i64, i64* %PC
  %1804 = add i64 %1803, 3
  store i64 %1804, i64* %PC
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1806 = load i8, i8* %1805, align 1, !tbaa !2448
  %1807 = icmp eq i8 %1806, 0
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1809 = load i8, i8* %1808, align 1, !tbaa !2449
  %1810 = icmp ne i8 %1809, 0
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1812 = load i8, i8* %1811, align 1, !tbaa !2450
  %1813 = icmp ne i8 %1812, 0
  %1814 = xor i1 %1810, %1813
  %1815 = xor i1 %1814, true
  %1816 = and i1 %1807, %1815
  %1817 = zext i1 %1816 to i8
  store i8 %1817, i8* %CL, align 1, !tbaa !2451
  %1818 = load i64, i64* %RBP
  %1819 = sub i64 %1818, 165
  %1820 = load i8, i8* %CL
  %1821 = zext i8 %1820 to i64
  %1822 = load i64, i64* %PC
  %1823 = add i64 %1822, 6
  store i64 %1823, i64* %PC
  %1824 = inttoptr i64 %1819 to i8*
  store i8 %1820, i8* %1824
  br label %block_400d63

block_400da6:                                     ; preds = %block_400c2f
  %1825 = sub i64 %3233, 48
  %1826 = load i64, i64* %PC
  %1827 = add i64 %1826, 3
  store i64 %1827, i64* %PC
  %1828 = inttoptr i64 %1825 to i32*
  %1829 = load i32, i32* %1828
  %1830 = zext i32 %1829 to i64
  store i64 %1830, i64* %RAX, align 8, !tbaa !2428
  %1831 = load i64, i64* %RBP
  %1832 = sub i64 %1831, 60
  %1833 = load i32, i32* %EAX
  %1834 = zext i32 %1833 to i64
  %1835 = load i64, i64* %PC
  %1836 = add i64 %1835, 3
  store i64 %1836, i64* %PC
  %1837 = inttoptr i64 %1832 to i32*
  store i32 %1833, i32* %1837
  br label %block_400dac

block_400bda:                                     ; preds = %block_400bd0
  %1838 = load i64, i64* %RBP
  %1839 = sub i64 %1838, 16
  %1840 = load i64, i64* %PC
  %1841 = add i64 %1840, 4
  store i64 %1841, i64* %PC
  %1842 = inttoptr i64 %1839 to i64*
  %1843 = load i64, i64* %1842
  store i64 %1843, i64* %RAX, align 8, !tbaa !2428
  %1844 = load i64, i64* %RBP
  %1845 = sub i64 %1844, 72
  %1846 = load i64, i64* %PC
  %1847 = add i64 %1846, 4
  store i64 %1847, i64* %PC
  %1848 = inttoptr i64 %1845 to i32*
  %1849 = load i32, i32* %1848
  %1850 = sext i32 %1849 to i64
  store i64 %1850, i64* %RCX, align 8, !tbaa !2428
  %1851 = load i64, i64* %RAX
  %1852 = load i64, i64* %RCX
  %1853 = mul i64 %1852, 4
  %1854 = add i64 %1853, %1851
  %1855 = load i64, i64* %PC
  %1856 = add i64 %1855, 3
  store i64 %1856, i64* %PC
  %1857 = inttoptr i64 %1854 to i32*
  %1858 = load i32, i32* %1857
  %1859 = zext i32 %1858 to i64
  store i64 %1859, i64* %RDX, align 8, !tbaa !2428
  %1860 = load i64, i64* %RBP
  %1861 = sub i64 %1860, 84
  %1862 = load i32, i32* %EDX
  %1863 = zext i32 %1862 to i64
  %1864 = load i64, i64* %PC
  %1865 = add i64 %1864, 3
  store i64 %1865, i64* %PC
  %1866 = inttoptr i64 %1861 to i32*
  store i32 %1862, i32* %1866
  %1867 = load i64, i64* %RBP
  %1868 = sub i64 %1867, 96
  %1869 = load i64, i64* %PC
  %1870 = add i64 %1869, 3
  store i64 %1870, i64* %PC
  %1871 = inttoptr i64 %1868 to i32*
  %1872 = load i32, i32* %1871
  %1873 = zext i32 %1872 to i64
  store i64 %1873, i64* %RAX, align 8, !tbaa !2428
  %1874 = load i64, i64* %RBP
  %1875 = sub i64 %1874, 84
  %1876 = load i64, i64* %PC
  %1877 = add i64 %1876, 3
  store i64 %1877, i64* %PC
  %1878 = inttoptr i64 %1875 to i32*
  %1879 = load i32, i32* %1878
  %1880 = zext i32 %1879 to i64
  store i64 %1880, i64* %RDX, align 8, !tbaa !2428
  %1881 = load i64, i64* %RDX
  %1882 = load i64, i64* %RBP
  %1883 = sub i64 %1882, 88
  %1884 = load i64, i64* %PC
  %1885 = add i64 %1884, 4
  store i64 %1885, i64* %PC
  %1886 = inttoptr i64 %1883 to i32*
  %1887 = load i32, i32* %1886
  %1888 = shl i64 %1881, 32
  %1889 = ashr exact i64 %1888, 32
  %1890 = sext i32 %1887 to i64
  %1891 = mul nsw i64 %1890, %1889
  %1892 = trunc i64 %1891 to i32
  %1893 = and i64 %1891, 4294967295
  store i64 %1893, i64* %RDX, align 8, !tbaa !2428
  %1894 = shl i64 %1891, 32
  %1895 = ashr exact i64 %1894, 32
  %1896 = icmp ne i64 %1895, %1891
  %1897 = zext i1 %1896 to i8
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1897, i8* %1898, align 1, !tbaa !2432
  %1899 = and i32 %1892, 255
  %1900 = call i32 @llvm.ctpop.i32(i32 %1899) #17
  %1901 = trunc i32 %1900 to i8
  %1902 = and i8 %1901, 1
  %1903 = xor i8 %1902, 1
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1903, i8* %1904, align 1, !tbaa !2446
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1905, align 1, !tbaa !2447
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1906, align 1, !tbaa !2448
  %1907 = lshr i32 %1892, 31
  %1908 = trunc i32 %1907 to i8
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1908, i8* %1909, align 1, !tbaa !2449
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1897, i8* %1910, align 1, !tbaa !2450
  %1911 = load i64, i64* %RBP
  %1912 = sub i64 %1911, 164
  %1913 = load i32, i32* %EDX
  %1914 = zext i32 %1913 to i64
  %1915 = load i64, i64* %PC
  %1916 = add i64 %1915, 6
  store i64 %1916, i64* %PC
  %1917 = inttoptr i64 %1912 to i32*
  store i32 %1913, i32* %1917
  %1918 = load i64, i64* %PC
  %1919 = add i64 %1918, 1
  store i64 %1919, i64* %PC
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1922 = bitcast %union.anon* %1921 to i32*
  %1923 = load i32, i32* %1922, align 8, !tbaa !2454
  %1924 = sext i32 %1923 to i64
  %1925 = lshr i64 %1924, 32
  store i64 %1925, i64* %1920, align 8, !tbaa !2428
  %1926 = load i64, i64* %RBP
  %1927 = sub i64 %1926, 164
  %1928 = load i64, i64* %PC
  %1929 = add i64 %1928, 6
  store i64 %1929, i64* %PC
  %1930 = inttoptr i64 %1927 to i32*
  %1931 = load i32, i32* %1930
  %1932 = zext i32 %1931 to i64
  store i64 %1932, i64* %RSI, align 8, !tbaa !2428
  %1933 = load i32, i32* %ESI
  %1934 = zext i32 %1933 to i64
  %1935 = load i64, i64* %PC
  %1936 = add i64 %1935, 2
  store i64 %1936, i64* %PC
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1938 = bitcast %union.anon* %1937 to i32*
  %1939 = load i32, i32* %1938, align 8, !tbaa !2454
  %1940 = zext i32 %1939 to i64
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1942 = bitcast %union.anon* %1941 to i32*
  %1943 = load i32, i32* %1942, align 8, !tbaa !2454
  %1944 = zext i32 %1943 to i64
  %1945 = shl i64 %1934, 32
  %1946 = ashr exact i64 %1945, 32
  %1947 = shl nuw i64 %1944, 32
  %1948 = or i64 %1947, %1940
  %1949 = sdiv i64 %1948, %1946
  %1950 = shl i64 %1949, 32
  %1951 = ashr exact i64 %1950, 32
  %1952 = icmp eq i64 %1949, %1951
  br i1 %1952, label %1957, label %1953

; <label>:1953:                                   ; preds = %block_400bda
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1955 = load i64, i64* %1954, align 8, !tbaa !2428
  %1956 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1955, %struct.Memory* %MEMORY.1) #18
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:1957:                                   ; preds = %block_400bda
  %1958 = srem i64 %1948, %1946
  %1959 = getelementptr inbounds %union.anon, %union.anon* %1937, i64 0, i32 0
  %1960 = and i64 %1949, 4294967295
  store i64 %1960, i64* %1959, align 8, !tbaa !2428
  %1961 = getelementptr inbounds %union.anon, %union.anon* %1941, i64 0, i32 0
  %1962 = and i64 %1958, 4294967295
  store i64 %1962, i64* %1961, align 8, !tbaa !2428
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1963, align 1, !tbaa !2432
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1964, align 1, !tbaa !2446
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1965, align 1, !tbaa !2447
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1966, align 1, !tbaa !2448
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1967, align 1, !tbaa !2449
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1968, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %1953, %1957
  %1969 = phi %struct.Memory* [ %1956, %1953 ], [ %MEMORY.1, %1957 ]
  %1970 = load i64, i64* %RBP
  %1971 = sub i64 %1970, 92
  %1972 = load i32, i32* %EAX
  %1973 = zext i32 %1972 to i64
  %1974 = load i64, i64* %PC
  %1975 = add i64 %1974, 3
  store i64 %1975, i64* %PC
  %1976 = inttoptr i64 %1971 to i32*
  store i32 %1972, i32* %1976
  %1977 = load i64, i64* %RBP
  %1978 = sub i64 %1977, 88
  %1979 = load i64, i64* %PC
  %1980 = add i64 %1979, 3
  store i64 %1980, i64* %PC
  %1981 = inttoptr i64 %1978 to i32*
  %1982 = load i32, i32* %1981
  %1983 = zext i32 %1982 to i64
  store i64 %1983, i64* %RAX, align 8, !tbaa !2428
  %1984 = load i64, i64* %RAX
  %1985 = load i64, i64* %PC
  %1986 = add i64 %1985, 3
  store i64 %1986, i64* %PC
  %1987 = trunc i64 %1984 to i32
  %1988 = shl i32 %1987, 1
  %1989 = icmp slt i32 %1987, 0
  %1990 = icmp slt i32 %1988, 0
  %1991 = xor i1 %1989, %1990
  %1992 = zext i32 %1988 to i64
  store i64 %1992, i64* %RAX, align 8, !tbaa !2428
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1994 = zext i1 %1989 to i8
  store i8 %1994, i8* %1993, align 1, !tbaa !2451
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1996 = and i32 %1988, 254
  %1997 = call i32 @llvm.ctpop.i32(i32 %1996) #17
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  %2000 = xor i8 %1999, 1
  store i8 %2000, i8* %1995, align 1, !tbaa !2451
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2001, align 1, !tbaa !2451
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2003 = icmp eq i32 %1988, 0
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %2002, align 1, !tbaa !2451
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2006 = lshr i32 %1988, 31
  %2007 = trunc i32 %2006 to i8
  store i8 %2007, i8* %2005, align 1, !tbaa !2451
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2009 = zext i1 %1991 to i8
  store i8 %2009, i8* %2008, align 1, !tbaa !2451
  %2010 = load i64, i64* %RBP
  %2011 = sub i64 %2010, 48
  %2012 = load i32, i32* %EAX
  %2013 = zext i32 %2012 to i64
  %2014 = load i64, i64* %PC
  %2015 = add i64 %2014, 3
  store i64 %2015, i64* %PC
  %2016 = inttoptr i64 %2011 to i32*
  store i32 %2012, i32* %2016
  %2017 = load i64, i64* %RBP
  %2018 = sub i64 %2017, 48
  %2019 = load i64, i64* %PC
  %2020 = add i64 %2019, 3
  store i64 %2020, i64* %PC
  %2021 = inttoptr i64 %2018 to i32*
  %2022 = load i32, i32* %2021
  %2023 = zext i32 %2022 to i64
  store i64 %2023, i64* %RAX, align 8, !tbaa !2428
  %2024 = load i64, i64* %RAX
  %2025 = load i64, i64* %RBP
  %2026 = sub i64 %2025, 84
  %2027 = load i64, i64* %PC
  %2028 = add i64 %2027, 4
  store i64 %2028, i64* %PC
  %2029 = inttoptr i64 %2026 to i32*
  %2030 = load i32, i32* %2029
  %2031 = shl i64 %2024, 32
  %2032 = ashr exact i64 %2031, 32
  %2033 = sext i32 %2030 to i64
  %2034 = mul nsw i64 %2033, %2032
  %2035 = trunc i64 %2034 to i32
  %2036 = and i64 %2034, 4294967295
  store i64 %2036, i64* %RAX, align 8, !tbaa !2428
  %2037 = shl i64 %2034, 32
  %2038 = ashr exact i64 %2037, 32
  %2039 = icmp ne i64 %2038, %2034
  %2040 = zext i1 %2039 to i8
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2040, i8* %2041, align 1, !tbaa !2432
  %2042 = and i32 %2035, 255
  %2043 = call i32 @llvm.ctpop.i32(i32 %2042) #17
  %2044 = trunc i32 %2043 to i8
  %2045 = and i8 %2044, 1
  %2046 = xor i8 %2045, 1
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2046, i8* %2047, align 1, !tbaa !2446
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2048, align 1, !tbaa !2447
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2049, align 1, !tbaa !2448
  %2050 = lshr i32 %2035, 31
  %2051 = trunc i32 %2050 to i8
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2051, i8* %2052, align 1, !tbaa !2449
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2040, i8* %2053, align 1, !tbaa !2450
  %2054 = load i64, i64* %RBP
  %2055 = sub i64 %2054, 52
  %2056 = load i32, i32* %EAX
  %2057 = zext i32 %2056 to i64
  %2058 = load i64, i64* %PC
  %2059 = add i64 %2058, 3
  store i64 %2059, i64* %PC
  %2060 = inttoptr i64 %2055 to i32*
  store i32 %2056, i32* %2060
  %2061 = load i64, i64* %RBP
  %2062 = sub i64 %2061, 52
  %2063 = load i64, i64* %PC
  %2064 = add i64 %2063, 3
  store i64 %2064, i64* %PC
  %2065 = inttoptr i64 %2062 to i32*
  %2066 = load i32, i32* %2065
  %2067 = zext i32 %2066 to i64
  store i64 %2067, i64* %RAX, align 8, !tbaa !2428
  %2068 = load i64, i64* %RAX
  %2069 = load i64, i64* %RBP
  %2070 = sub i64 %2069, 92
  %2071 = load i64, i64* %PC
  %2072 = add i64 %2071, 4
  store i64 %2072, i64* %PC
  %2073 = inttoptr i64 %2070 to i32*
  %2074 = load i32, i32* %2073
  %2075 = shl i64 %2068, 32
  %2076 = ashr exact i64 %2075, 32
  %2077 = sext i32 %2074 to i64
  %2078 = mul nsw i64 %2077, %2076
  %2079 = trunc i64 %2078 to i32
  %2080 = and i64 %2078, 4294967295
  store i64 %2080, i64* %RAX, align 8, !tbaa !2428
  %2081 = shl i64 %2078, 32
  %2082 = ashr exact i64 %2081, 32
  %2083 = icmp ne i64 %2082, %2078
  %2084 = zext i1 %2083 to i8
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2084, i8* %2085, align 1, !tbaa !2432
  %2086 = and i32 %2079, 255
  %2087 = call i32 @llvm.ctpop.i32(i32 %2086) #17
  %2088 = trunc i32 %2087 to i8
  %2089 = and i8 %2088, 1
  %2090 = xor i8 %2089, 1
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2090, i8* %2091, align 1, !tbaa !2446
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2092, align 1, !tbaa !2447
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2093, align 1, !tbaa !2448
  %2094 = lshr i32 %2079, 31
  %2095 = trunc i32 %2094 to i8
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2095, i8* %2096, align 1, !tbaa !2449
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2084, i8* %2097, align 1, !tbaa !2450
  %2098 = load i64, i64* %RBP
  %2099 = sub i64 %2098, 56
  %2100 = load i32, i32* %EAX
  %2101 = zext i32 %2100 to i64
  %2102 = load i64, i64* %PC
  %2103 = add i64 %2102, 3
  store i64 %2103, i64* %PC
  %2104 = inttoptr i64 %2099 to i32*
  store i32 %2100, i32* %2104
  %2105 = load i64, i64* %RBP
  %2106 = sub i64 %2105, 40
  %2107 = load i64, i64* %PC
  %2108 = add i64 %2107, 7
  store i64 %2108, i64* %PC
  %2109 = inttoptr i64 %2106 to i32*
  store i32 1, i32* %2109
  %2110 = load i64, i64* %RBP
  %2111 = sub i64 %2110, 32
  %2112 = load i64, i64* %PC
  %2113 = add i64 %2112, 7
  store i64 %2113, i64* %PC
  %2114 = inttoptr i64 %2111 to i32*
  store i32 1, i32* %2114
  br label %block_400c2f

block_400ebc:                                     ; preds = %block_400eb0
  %2115 = load i64, i64* %RBP
  %2116 = sub i64 %2115, 32
  %2117 = load i64, i64* %PC
  %2118 = add i64 %2117, 3
  store i64 %2118, i64* %PC
  %2119 = inttoptr i64 %2116 to i32*
  %2120 = load i32, i32* %2119
  %2121 = zext i32 %2120 to i64
  store i64 %2121, i64* %RAX, align 8, !tbaa !2428
  %2122 = load i64, i64* %RBP
  %2123 = sub i64 %2122, 76
  %2124 = load i32, i32* %EAX
  %2125 = zext i32 %2124 to i64
  %2126 = load i64, i64* %PC
  %2127 = add i64 %2126, 3
  store i64 %2127, i64* %PC
  %2128 = inttoptr i64 %2123 to i32*
  store i32 %2124, i32* %2128
  %2129 = load i64, i64* %RBP
  %2130 = sub i64 %2129, 76
  %2131 = load i64, i64* %PC
  %2132 = add i64 %2131, 3
  store i64 %2132, i64* %PC
  %2133 = inttoptr i64 %2130 to i32*
  %2134 = load i32, i32* %2133
  %2135 = zext i32 %2134 to i64
  store i64 %2135, i64* %RAX, align 8, !tbaa !2428
  %2136 = load i64, i64* %RAX
  %2137 = load i64, i64* %RBP
  %2138 = sub i64 %2137, 60
  %2139 = load i64, i64* %PC
  %2140 = add i64 %2139, 3
  store i64 %2140, i64* %PC
  %2141 = trunc i64 %2136 to i32
  %2142 = inttoptr i64 %2138 to i32*
  %2143 = load i32, i32* %2142
  %2144 = add i32 %2143, %2141
  %2145 = zext i32 %2144 to i64
  store i64 %2145, i64* %RAX, align 8, !tbaa !2428
  %2146 = icmp ult i32 %2144, %2141
  %2147 = icmp ult i32 %2144, %2143
  %2148 = or i1 %2146, %2147
  %2149 = zext i1 %2148 to i8
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2149, i8* %2150, align 1, !tbaa !2432
  %2151 = and i32 %2144, 255
  %2152 = call i32 @llvm.ctpop.i32(i32 %2151) #17
  %2153 = trunc i32 %2152 to i8
  %2154 = and i8 %2153, 1
  %2155 = xor i8 %2154, 1
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2155, i8* %2156, align 1, !tbaa !2446
  %2157 = xor i32 %2143, %2141
  %2158 = xor i32 %2157, %2144
  %2159 = lshr i32 %2158, 4
  %2160 = trunc i32 %2159 to i8
  %2161 = and i8 %2160, 1
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2161, i8* %2162, align 1, !tbaa !2447
  %2163 = icmp eq i32 %2144, 0
  %2164 = zext i1 %2163 to i8
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2164, i8* %2165, align 1, !tbaa !2448
  %2166 = lshr i32 %2144, 31
  %2167 = trunc i32 %2166 to i8
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2167, i8* %2168, align 1, !tbaa !2449
  %2169 = lshr i32 %2141, 31
  %2170 = lshr i32 %2143, 31
  %2171 = xor i32 %2166, %2169
  %2172 = xor i32 %2166, %2170
  %2173 = add nuw nsw i32 %2171, %2172
  %2174 = icmp eq i32 %2173, 2
  %2175 = zext i1 %2174 to i8
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2175, i8* %2176, align 1, !tbaa !2450
  %2177 = load i64, i64* %RBP
  %2178 = sub i64 %2177, 80
  %2179 = load i32, i32* %EAX
  %2180 = zext i32 %2179 to i64
  %2181 = load i64, i64* %PC
  %2182 = add i64 %2181, 3
  store i64 %2182, i64* %PC
  %2183 = inttoptr i64 %2178 to i32*
  store i32 %2179, i32* %2183
  %2184 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2185 = load i64, i64* %RBP
  %2186 = sub i64 %2185, 152
  %2187 = load i64, i64* %PC
  %2188 = add i64 %2187, 8
  store i64 %2188, i64* %PC
  %2189 = inttoptr i64 %2186 to double*
  %2190 = load double, double* %2189
  %2191 = bitcast i8* %2184 to double*
  store double %2190, double* %2191, align 1, !tbaa !2452
  %2192 = getelementptr inbounds i8, i8* %2184, i64 8
  %2193 = bitcast i8* %2192 to double*
  store double 0.000000e+00, double* %2193, align 1, !tbaa !2452
  %2194 = load i64, i64* %RBP
  %2195 = sub i64 %2194, 8
  %2196 = load i64, i64* %PC
  %2197 = add i64 %2196, 4
  store i64 %2197, i64* %PC
  %2198 = inttoptr i64 %2195 to i64*
  %2199 = load i64, i64* %2198
  store i64 %2199, i64* %RCX, align 8, !tbaa !2428
  %2200 = load i64, i64* %RBP
  %2201 = sub i64 %2200, 80
  %2202 = load i64, i64* %PC
  %2203 = add i64 %2202, 4
  store i64 %2203, i64* %PC
  %2204 = inttoptr i64 %2201 to i32*
  %2205 = load i32, i32* %2204
  %2206 = sext i32 %2205 to i64
  store i64 %2206, i64* %RDX, align 8, !tbaa !2428
  %2207 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2208 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2209 = load i64, i64* %RCX
  %2210 = load i64, i64* %RDX
  %2211 = mul i64 %2210, 8
  %2212 = add i64 %2211, %2209
  %2213 = load i64, i64* %PC
  %2214 = add i64 %2213, 5
  store i64 %2214, i64* %PC
  %2215 = bitcast i8* %2208 to double*
  %2216 = load double, double* %2215, align 1
  %2217 = getelementptr inbounds i8, i8* %2208, i64 8
  %2218 = bitcast i8* %2217 to i64*
  %2219 = load i64, i64* %2218, align 1
  %2220 = inttoptr i64 %2212 to double*
  %2221 = load double, double* %2220
  %2222 = fmul double %2216, %2221
  %2223 = bitcast i8* %2207 to double*
  store double %2222, double* %2223, align 1, !tbaa !2452
  %2224 = getelementptr inbounds i8, i8* %2207, i64 8
  %2225 = bitcast i8* %2224 to i64*
  store i64 %2219, i64* %2225, align 1, !tbaa !2452
  %2226 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2227 = load i64, i64* %RBP
  %2228 = sub i64 %2227, 128
  %2229 = load i64, i64* %PC
  %2230 = add i64 %2229, 5
  store i64 %2230, i64* %PC
  %2231 = inttoptr i64 %2228 to double*
  %2232 = load double, double* %2231
  %2233 = bitcast i8* %2226 to double*
  store double %2232, double* %2233, align 1, !tbaa !2452
  %2234 = getelementptr inbounds i8, i8* %2226, i64 8
  %2235 = bitcast i8* %2234 to double*
  store double 0.000000e+00, double* %2235, align 1, !tbaa !2452
  %2236 = load i64, i64* %RBP
  %2237 = sub i64 %2236, 8
  %2238 = load i64, i64* %PC
  %2239 = add i64 %2238, 4
  store i64 %2239, i64* %PC
  %2240 = inttoptr i64 %2237 to i64*
  %2241 = load i64, i64* %2240
  store i64 %2241, i64* %RCX, align 8, !tbaa !2428
  %2242 = load i64, i64* %RBP
  %2243 = sub i64 %2242, 80
  %2244 = load i64, i64* %PC
  %2245 = add i64 %2244, 3
  store i64 %2245, i64* %PC
  %2246 = inttoptr i64 %2243 to i32*
  %2247 = load i32, i32* %2246
  %2248 = zext i32 %2247 to i64
  store i64 %2248, i64* %RAX, align 8, !tbaa !2428
  %2249 = load i64, i64* %RAX
  %2250 = load i64, i64* %PC
  %2251 = add i64 %2250, 3
  store i64 %2251, i64* %PC
  %2252 = trunc i64 %2249 to i32
  %2253 = add i32 1, %2252
  %2254 = zext i32 %2253 to i64
  store i64 %2254, i64* %RAX, align 8, !tbaa !2428
  %2255 = icmp ult i32 %2253, %2252
  %2256 = icmp ult i32 %2253, 1
  %2257 = or i1 %2255, %2256
  %2258 = zext i1 %2257 to i8
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2258, i8* %2259, align 1, !tbaa !2432
  %2260 = and i32 %2253, 255
  %2261 = call i32 @llvm.ctpop.i32(i32 %2260) #17
  %2262 = trunc i32 %2261 to i8
  %2263 = and i8 %2262, 1
  %2264 = xor i8 %2263, 1
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2264, i8* %2265, align 1, !tbaa !2446
  %2266 = xor i64 1, %2249
  %2267 = trunc i64 %2266 to i32
  %2268 = xor i32 %2267, %2253
  %2269 = lshr i32 %2268, 4
  %2270 = trunc i32 %2269 to i8
  %2271 = and i8 %2270, 1
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2271, i8* %2272, align 1, !tbaa !2447
  %2273 = icmp eq i32 %2253, 0
  %2274 = zext i1 %2273 to i8
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2274, i8* %2275, align 1, !tbaa !2448
  %2276 = lshr i32 %2253, 31
  %2277 = trunc i32 %2276 to i8
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2277, i8* %2278, align 1, !tbaa !2449
  %2279 = lshr i32 %2252, 31
  %2280 = xor i32 %2276, %2279
  %2281 = add nuw nsw i32 %2280, %2276
  %2282 = icmp eq i32 %2281, 2
  %2283 = zext i1 %2282 to i8
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2283, i8* %2284, align 1, !tbaa !2450
  %2285 = load i32, i32* %EAX
  %2286 = zext i32 %2285 to i64
  %2287 = load i64, i64* %PC
  %2288 = add i64 %2287, 3
  store i64 %2288, i64* %PC
  %2289 = shl i64 %2286, 32
  %2290 = ashr exact i64 %2289, 32
  store i64 %2290, i64* %RDX, align 8, !tbaa !2428
  %2291 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2292 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2293 = load i64, i64* %RCX
  %2294 = load i64, i64* %RDX
  %2295 = mul i64 %2294, 8
  %2296 = add i64 %2295, %2293
  %2297 = load i64, i64* %PC
  %2298 = add i64 %2297, 5
  store i64 %2298, i64* %PC
  %2299 = bitcast i8* %2292 to double*
  %2300 = load double, double* %2299, align 1
  %2301 = getelementptr inbounds i8, i8* %2292, i64 8
  %2302 = bitcast i8* %2301 to i64*
  %2303 = load i64, i64* %2302, align 1
  %2304 = inttoptr i64 %2296 to double*
  %2305 = load double, double* %2304
  %2306 = fmul double %2300, %2305
  %2307 = bitcast i8* %2291 to double*
  store double %2306, double* %2307, align 1, !tbaa !2452
  %2308 = getelementptr inbounds i8, i8* %2291, i64 8
  %2309 = bitcast i8* %2308 to i64*
  store i64 %2303, i64* %2309, align 1, !tbaa !2452
  %2310 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2311 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2312 = bitcast %union.vec128_t* %XMM1 to i8*
  %2313 = load i64, i64* %PC
  %2314 = add i64 %2313, 4
  store i64 %2314, i64* %PC
  %2315 = bitcast i8* %2311 to double*
  %2316 = load double, double* %2315, align 1
  %2317 = getelementptr inbounds i8, i8* %2311, i64 8
  %2318 = bitcast i8* %2317 to i64*
  %2319 = load i64, i64* %2318, align 1
  %2320 = bitcast i8* %2312 to double*
  %2321 = load double, double* %2320, align 1
  %2322 = fsub double %2316, %2321
  %2323 = bitcast i8* %2310 to double*
  store double %2322, double* %2323, align 1, !tbaa !2452
  %2324 = getelementptr inbounds i8, i8* %2310, i64 8
  %2325 = bitcast i8* %2324 to i64*
  store i64 %2319, i64* %2325, align 1, !tbaa !2452
  %2326 = load i64, i64* %RBP
  %2327 = sub i64 %2326, 112
  %2328 = bitcast %union.vec128_t* %XMM0 to i8*
  %2329 = load i64, i64* %PC
  %2330 = add i64 %2329, 5
  store i64 %2330, i64* %PC
  %2331 = bitcast i8* %2328 to double*
  %2332 = load double, double* %2331, align 1
  %2333 = inttoptr i64 %2327 to double*
  store double %2332, double* %2333
  %2334 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2335 = load i64, i64* %RBP
  %2336 = sub i64 %2335, 152
  %2337 = load i64, i64* %PC
  %2338 = add i64 %2337, 8
  store i64 %2338, i64* %PC
  %2339 = inttoptr i64 %2336 to double*
  %2340 = load double, double* %2339
  %2341 = bitcast i8* %2334 to double*
  store double %2340, double* %2341, align 1, !tbaa !2452
  %2342 = getelementptr inbounds i8, i8* %2334, i64 8
  %2343 = bitcast i8* %2342 to double*
  store double 0.000000e+00, double* %2343, align 1, !tbaa !2452
  %2344 = load i64, i64* %RBP
  %2345 = sub i64 %2344, 8
  %2346 = load i64, i64* %PC
  %2347 = add i64 %2346, 4
  store i64 %2347, i64* %PC
  %2348 = inttoptr i64 %2345 to i64*
  %2349 = load i64, i64* %2348
  store i64 %2349, i64* %RCX, align 8, !tbaa !2428
  %2350 = load i64, i64* %RBP
  %2351 = sub i64 %2350, 80
  %2352 = load i64, i64* %PC
  %2353 = add i64 %2352, 3
  store i64 %2353, i64* %PC
  %2354 = inttoptr i64 %2351 to i32*
  %2355 = load i32, i32* %2354
  %2356 = zext i32 %2355 to i64
  store i64 %2356, i64* %RAX, align 8, !tbaa !2428
  %2357 = load i64, i64* %RAX
  %2358 = load i64, i64* %PC
  %2359 = add i64 %2358, 3
  store i64 %2359, i64* %PC
  %2360 = trunc i64 %2357 to i32
  %2361 = add i32 1, %2360
  %2362 = zext i32 %2361 to i64
  store i64 %2362, i64* %RAX, align 8, !tbaa !2428
  %2363 = icmp ult i32 %2361, %2360
  %2364 = icmp ult i32 %2361, 1
  %2365 = or i1 %2363, %2364
  %2366 = zext i1 %2365 to i8
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2366, i8* %2367, align 1, !tbaa !2432
  %2368 = and i32 %2361, 255
  %2369 = call i32 @llvm.ctpop.i32(i32 %2368) #17
  %2370 = trunc i32 %2369 to i8
  %2371 = and i8 %2370, 1
  %2372 = xor i8 %2371, 1
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2372, i8* %2373, align 1, !tbaa !2446
  %2374 = xor i64 1, %2357
  %2375 = trunc i64 %2374 to i32
  %2376 = xor i32 %2375, %2361
  %2377 = lshr i32 %2376, 4
  %2378 = trunc i32 %2377 to i8
  %2379 = and i8 %2378, 1
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2379, i8* %2380, align 1, !tbaa !2447
  %2381 = icmp eq i32 %2361, 0
  %2382 = zext i1 %2381 to i8
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2382, i8* %2383, align 1, !tbaa !2448
  %2384 = lshr i32 %2361, 31
  %2385 = trunc i32 %2384 to i8
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2385, i8* %2386, align 1, !tbaa !2449
  %2387 = lshr i32 %2360, 31
  %2388 = xor i32 %2384, %2387
  %2389 = add nuw nsw i32 %2388, %2384
  %2390 = icmp eq i32 %2389, 2
  %2391 = zext i1 %2390 to i8
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2391, i8* %2392, align 1, !tbaa !2450
  %2393 = load i32, i32* %EAX
  %2394 = zext i32 %2393 to i64
  %2395 = load i64, i64* %PC
  %2396 = add i64 %2395, 3
  store i64 %2396, i64* %PC
  %2397 = shl i64 %2394, 32
  %2398 = ashr exact i64 %2397, 32
  store i64 %2398, i64* %RDX, align 8, !tbaa !2428
  %2399 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2400 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2401 = load i64, i64* %RCX
  %2402 = load i64, i64* %RDX
  %2403 = mul i64 %2402, 8
  %2404 = add i64 %2403, %2401
  %2405 = load i64, i64* %PC
  %2406 = add i64 %2405, 5
  store i64 %2406, i64* %PC
  %2407 = bitcast i8* %2400 to double*
  %2408 = load double, double* %2407, align 1
  %2409 = getelementptr inbounds i8, i8* %2400, i64 8
  %2410 = bitcast i8* %2409 to i64*
  %2411 = load i64, i64* %2410, align 1
  %2412 = inttoptr i64 %2404 to double*
  %2413 = load double, double* %2412
  %2414 = fmul double %2408, %2413
  %2415 = bitcast i8* %2399 to double*
  store double %2414, double* %2415, align 1, !tbaa !2452
  %2416 = getelementptr inbounds i8, i8* %2399, i64 8
  %2417 = bitcast i8* %2416 to i64*
  store i64 %2411, i64* %2417, align 1, !tbaa !2452
  %2418 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2419 = load i64, i64* %RBP
  %2420 = sub i64 %2419, 128
  %2421 = load i64, i64* %PC
  %2422 = add i64 %2421, 5
  store i64 %2422, i64* %PC
  %2423 = inttoptr i64 %2420 to double*
  %2424 = load double, double* %2423
  %2425 = bitcast i8* %2418 to double*
  store double %2424, double* %2425, align 1, !tbaa !2452
  %2426 = getelementptr inbounds i8, i8* %2418, i64 8
  %2427 = bitcast i8* %2426 to double*
  store double 0.000000e+00, double* %2427, align 1, !tbaa !2452
  %2428 = load i64, i64* %RBP
  %2429 = sub i64 %2428, 8
  %2430 = load i64, i64* %PC
  %2431 = add i64 %2430, 4
  store i64 %2431, i64* %PC
  %2432 = inttoptr i64 %2429 to i64*
  %2433 = load i64, i64* %2432
  store i64 %2433, i64* %RCX, align 8, !tbaa !2428
  %2434 = load i64, i64* %RBP
  %2435 = sub i64 %2434, 80
  %2436 = load i64, i64* %PC
  %2437 = add i64 %2436, 4
  store i64 %2437, i64* %PC
  %2438 = inttoptr i64 %2435 to i32*
  %2439 = load i32, i32* %2438
  %2440 = sext i32 %2439 to i64
  store i64 %2440, i64* %RDX, align 8, !tbaa !2428
  %2441 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2442 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2443 = load i64, i64* %RCX
  %2444 = load i64, i64* %RDX
  %2445 = mul i64 %2444, 8
  %2446 = add i64 %2445, %2443
  %2447 = load i64, i64* %PC
  %2448 = add i64 %2447, 5
  store i64 %2448, i64* %PC
  %2449 = bitcast i8* %2442 to double*
  %2450 = load double, double* %2449, align 1
  %2451 = getelementptr inbounds i8, i8* %2442, i64 8
  %2452 = bitcast i8* %2451 to i64*
  %2453 = load i64, i64* %2452, align 1
  %2454 = inttoptr i64 %2446 to double*
  %2455 = load double, double* %2454
  %2456 = fmul double %2450, %2455
  %2457 = bitcast i8* %2441 to double*
  store double %2456, double* %2457, align 1, !tbaa !2452
  %2458 = getelementptr inbounds i8, i8* %2441, i64 8
  %2459 = bitcast i8* %2458 to i64*
  store i64 %2453, i64* %2459, align 1, !tbaa !2452
  %2460 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2461 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2462 = bitcast %union.vec128_t* %XMM1 to i8*
  %2463 = load i64, i64* %PC
  %2464 = add i64 %2463, 4
  store i64 %2464, i64* %PC
  %2465 = bitcast i8* %2461 to double*
  %2466 = load double, double* %2465, align 1
  %2467 = getelementptr inbounds i8, i8* %2461, i64 8
  %2468 = bitcast i8* %2467 to i64*
  %2469 = load i64, i64* %2468, align 1
  %2470 = bitcast i8* %2462 to double*
  %2471 = load double, double* %2470, align 1
  %2472 = fadd double %2466, %2471
  %2473 = bitcast i8* %2460 to double*
  store double %2472, double* %2473, align 1, !tbaa !2452
  %2474 = getelementptr inbounds i8, i8* %2460, i64 8
  %2475 = bitcast i8* %2474 to i64*
  store i64 %2469, i64* %2475, align 1, !tbaa !2452
  %2476 = load i64, i64* %RBP
  %2477 = sub i64 %2476, 104
  %2478 = bitcast %union.vec128_t* %XMM0 to i8*
  %2479 = load i64, i64* %PC
  %2480 = add i64 %2479, 5
  store i64 %2480, i64* %PC
  %2481 = bitcast i8* %2478 to double*
  %2482 = load double, double* %2481, align 1
  %2483 = inttoptr i64 %2477 to double*
  store double %2482, double* %2483
  %2484 = load i64, i64* %RBP
  %2485 = sub i64 %2484, 8
  %2486 = load i64, i64* %PC
  %2487 = add i64 %2486, 4
  store i64 %2487, i64* %PC
  %2488 = inttoptr i64 %2485 to i64*
  %2489 = load i64, i64* %2488
  store i64 %2489, i64* %RCX, align 8, !tbaa !2428
  %2490 = load i64, i64* %RBP
  %2491 = sub i64 %2490, 76
  %2492 = load i64, i64* %PC
  %2493 = add i64 %2492, 4
  store i64 %2493, i64* %PC
  %2494 = inttoptr i64 %2491 to i32*
  %2495 = load i32, i32* %2494
  %2496 = sext i32 %2495 to i64
  store i64 %2496, i64* %RDX, align 8, !tbaa !2428
  %2497 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2498 = load i64, i64* %RCX
  %2499 = load i64, i64* %RDX
  %2500 = mul i64 %2499, 8
  %2501 = add i64 %2500, %2498
  %2502 = load i64, i64* %PC
  %2503 = add i64 %2502, 5
  store i64 %2503, i64* %PC
  %2504 = inttoptr i64 %2501 to double*
  %2505 = load double, double* %2504
  %2506 = bitcast i8* %2497 to double*
  store double %2505, double* %2506, align 1, !tbaa !2452
  %2507 = getelementptr inbounds i8, i8* %2497, i64 8
  %2508 = bitcast i8* %2507 to double*
  store double 0.000000e+00, double* %2508, align 1, !tbaa !2452
  %2509 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2510 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2511 = load i64, i64* %RBP
  %2512 = sub i64 %2511, 112
  %2513 = load i64, i64* %PC
  %2514 = add i64 %2513, 5
  store i64 %2514, i64* %PC
  %2515 = bitcast i8* %2510 to double*
  %2516 = load double, double* %2515, align 1
  %2517 = getelementptr inbounds i8, i8* %2510, i64 8
  %2518 = bitcast i8* %2517 to i64*
  %2519 = load i64, i64* %2518, align 1
  %2520 = inttoptr i64 %2512 to double*
  %2521 = load double, double* %2520
  %2522 = fsub double %2516, %2521
  %2523 = bitcast i8* %2509 to double*
  store double %2522, double* %2523, align 1, !tbaa !2452
  %2524 = getelementptr inbounds i8, i8* %2509, i64 8
  %2525 = bitcast i8* %2524 to i64*
  store i64 %2519, i64* %2525, align 1, !tbaa !2452
  %2526 = load i64, i64* %RBP
  %2527 = sub i64 %2526, 8
  %2528 = load i64, i64* %PC
  %2529 = add i64 %2528, 4
  store i64 %2529, i64* %PC
  %2530 = inttoptr i64 %2527 to i64*
  %2531 = load i64, i64* %2530
  store i64 %2531, i64* %RCX, align 8, !tbaa !2428
  %2532 = load i64, i64* %RBP
  %2533 = sub i64 %2532, 80
  %2534 = load i64, i64* %PC
  %2535 = add i64 %2534, 4
  store i64 %2535, i64* %PC
  %2536 = inttoptr i64 %2533 to i32*
  %2537 = load i32, i32* %2536
  %2538 = sext i32 %2537 to i64
  store i64 %2538, i64* %RDX, align 8, !tbaa !2428
  %2539 = load i64, i64* %RCX
  %2540 = load i64, i64* %RDX
  %2541 = mul i64 %2540, 8
  %2542 = add i64 %2541, %2539
  %2543 = bitcast %union.vec128_t* %XMM0 to i8*
  %2544 = load i64, i64* %PC
  %2545 = add i64 %2544, 5
  store i64 %2545, i64* %PC
  %2546 = bitcast i8* %2543 to double*
  %2547 = load double, double* %2546, align 1
  %2548 = inttoptr i64 %2542 to double*
  store double %2547, double* %2548
  %2549 = load i64, i64* %RBP
  %2550 = sub i64 %2549, 8
  %2551 = load i64, i64* %PC
  %2552 = add i64 %2551, 4
  store i64 %2552, i64* %PC
  %2553 = inttoptr i64 %2550 to i64*
  %2554 = load i64, i64* %2553
  store i64 %2554, i64* %RCX, align 8, !tbaa !2428
  %2555 = load i64, i64* %RBP
  %2556 = sub i64 %2555, 76
  %2557 = load i64, i64* %PC
  %2558 = add i64 %2557, 3
  store i64 %2558, i64* %PC
  %2559 = inttoptr i64 %2556 to i32*
  %2560 = load i32, i32* %2559
  %2561 = zext i32 %2560 to i64
  store i64 %2561, i64* %RAX, align 8, !tbaa !2428
  %2562 = load i64, i64* %RAX
  %2563 = load i64, i64* %PC
  %2564 = add i64 %2563, 3
  store i64 %2564, i64* %PC
  %2565 = trunc i64 %2562 to i32
  %2566 = add i32 1, %2565
  %2567 = zext i32 %2566 to i64
  store i64 %2567, i64* %RAX, align 8, !tbaa !2428
  %2568 = icmp ult i32 %2566, %2565
  %2569 = icmp ult i32 %2566, 1
  %2570 = or i1 %2568, %2569
  %2571 = zext i1 %2570 to i8
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2571, i8* %2572, align 1, !tbaa !2432
  %2573 = and i32 %2566, 255
  %2574 = call i32 @llvm.ctpop.i32(i32 %2573) #17
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  %2577 = xor i8 %2576, 1
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2577, i8* %2578, align 1, !tbaa !2446
  %2579 = xor i64 1, %2562
  %2580 = trunc i64 %2579 to i32
  %2581 = xor i32 %2580, %2566
  %2582 = lshr i32 %2581, 4
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2584, i8* %2585, align 1, !tbaa !2447
  %2586 = icmp eq i32 %2566, 0
  %2587 = zext i1 %2586 to i8
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2587, i8* %2588, align 1, !tbaa !2448
  %2589 = lshr i32 %2566, 31
  %2590 = trunc i32 %2589 to i8
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2590, i8* %2591, align 1, !tbaa !2449
  %2592 = lshr i32 %2565, 31
  %2593 = xor i32 %2589, %2592
  %2594 = add nuw nsw i32 %2593, %2589
  %2595 = icmp eq i32 %2594, 2
  %2596 = zext i1 %2595 to i8
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2596, i8* %2597, align 1, !tbaa !2450
  %2598 = load i32, i32* %EAX
  %2599 = zext i32 %2598 to i64
  %2600 = load i64, i64* %PC
  %2601 = add i64 %2600, 3
  store i64 %2601, i64* %PC
  %2602 = shl i64 %2599, 32
  %2603 = ashr exact i64 %2602, 32
  store i64 %2603, i64* %RDX, align 8, !tbaa !2428
  %2604 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2605 = load i64, i64* %RCX
  %2606 = load i64, i64* %RDX
  %2607 = mul i64 %2606, 8
  %2608 = add i64 %2607, %2605
  %2609 = load i64, i64* %PC
  %2610 = add i64 %2609, 5
  store i64 %2610, i64* %PC
  %2611 = inttoptr i64 %2608 to double*
  %2612 = load double, double* %2611
  %2613 = bitcast i8* %2604 to double*
  store double %2612, double* %2613, align 1, !tbaa !2452
  %2614 = getelementptr inbounds i8, i8* %2604, i64 8
  %2615 = bitcast i8* %2614 to double*
  store double 0.000000e+00, double* %2615, align 1, !tbaa !2452
  %2616 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2617 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2618 = load i64, i64* %RBP
  %2619 = sub i64 %2618, 104
  %2620 = load i64, i64* %PC
  %2621 = add i64 %2620, 5
  store i64 %2621, i64* %PC
  %2622 = bitcast i8* %2617 to double*
  %2623 = load double, double* %2622, align 1
  %2624 = getelementptr inbounds i8, i8* %2617, i64 8
  %2625 = bitcast i8* %2624 to i64*
  %2626 = load i64, i64* %2625, align 1
  %2627 = inttoptr i64 %2619 to double*
  %2628 = load double, double* %2627
  %2629 = fsub double %2623, %2628
  %2630 = bitcast i8* %2616 to double*
  store double %2629, double* %2630, align 1, !tbaa !2452
  %2631 = getelementptr inbounds i8, i8* %2616, i64 8
  %2632 = bitcast i8* %2631 to i64*
  store i64 %2626, i64* %2632, align 1, !tbaa !2452
  %2633 = load i64, i64* %RBP
  %2634 = sub i64 %2633, 8
  %2635 = load i64, i64* %PC
  %2636 = add i64 %2635, 4
  store i64 %2636, i64* %PC
  %2637 = inttoptr i64 %2634 to i64*
  %2638 = load i64, i64* %2637
  store i64 %2638, i64* %RCX, align 8, !tbaa !2428
  %2639 = load i64, i64* %RBP
  %2640 = sub i64 %2639, 80
  %2641 = load i64, i64* %PC
  %2642 = add i64 %2641, 3
  store i64 %2642, i64* %PC
  %2643 = inttoptr i64 %2640 to i32*
  %2644 = load i32, i32* %2643
  %2645 = zext i32 %2644 to i64
  store i64 %2645, i64* %RAX, align 8, !tbaa !2428
  %2646 = load i64, i64* %RAX
  %2647 = load i64, i64* %PC
  %2648 = add i64 %2647, 3
  store i64 %2648, i64* %PC
  %2649 = trunc i64 %2646 to i32
  %2650 = add i32 1, %2649
  %2651 = zext i32 %2650 to i64
  store i64 %2651, i64* %RAX, align 8, !tbaa !2428
  %2652 = icmp ult i32 %2650, %2649
  %2653 = icmp ult i32 %2650, 1
  %2654 = or i1 %2652, %2653
  %2655 = zext i1 %2654 to i8
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2655, i8* %2656, align 1, !tbaa !2432
  %2657 = and i32 %2650, 255
  %2658 = call i32 @llvm.ctpop.i32(i32 %2657) #17
  %2659 = trunc i32 %2658 to i8
  %2660 = and i8 %2659, 1
  %2661 = xor i8 %2660, 1
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2661, i8* %2662, align 1, !tbaa !2446
  %2663 = xor i64 1, %2646
  %2664 = trunc i64 %2663 to i32
  %2665 = xor i32 %2664, %2650
  %2666 = lshr i32 %2665, 4
  %2667 = trunc i32 %2666 to i8
  %2668 = and i8 %2667, 1
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2668, i8* %2669, align 1, !tbaa !2447
  %2670 = icmp eq i32 %2650, 0
  %2671 = zext i1 %2670 to i8
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2671, i8* %2672, align 1, !tbaa !2448
  %2673 = lshr i32 %2650, 31
  %2674 = trunc i32 %2673 to i8
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2674, i8* %2675, align 1, !tbaa !2449
  %2676 = lshr i32 %2649, 31
  %2677 = xor i32 %2673, %2676
  %2678 = add nuw nsw i32 %2677, %2673
  %2679 = icmp eq i32 %2678, 2
  %2680 = zext i1 %2679 to i8
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2680, i8* %2681, align 1, !tbaa !2450
  %2682 = load i32, i32* %EAX
  %2683 = zext i32 %2682 to i64
  %2684 = load i64, i64* %PC
  %2685 = add i64 %2684, 3
  store i64 %2685, i64* %PC
  %2686 = shl i64 %2683, 32
  %2687 = ashr exact i64 %2686, 32
  store i64 %2687, i64* %RDX, align 8, !tbaa !2428
  %2688 = load i64, i64* %RCX
  %2689 = load i64, i64* %RDX
  %2690 = mul i64 %2689, 8
  %2691 = add i64 %2690, %2688
  %2692 = bitcast %union.vec128_t* %XMM0 to i8*
  %2693 = load i64, i64* %PC
  %2694 = add i64 %2693, 5
  store i64 %2694, i64* %PC
  %2695 = bitcast i8* %2692 to double*
  %2696 = load double, double* %2695, align 1
  %2697 = inttoptr i64 %2691 to double*
  store double %2696, double* %2697
  %2698 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2699 = load i64, i64* %RBP
  %2700 = sub i64 %2699, 112
  %2701 = load i64, i64* %PC
  %2702 = add i64 %2701, 5
  store i64 %2702, i64* %PC
  %2703 = inttoptr i64 %2700 to double*
  %2704 = load double, double* %2703
  %2705 = bitcast i8* %2698 to double*
  store double %2704, double* %2705, align 1, !tbaa !2452
  %2706 = getelementptr inbounds i8, i8* %2698, i64 8
  %2707 = bitcast i8* %2706 to double*
  store double 0.000000e+00, double* %2707, align 1, !tbaa !2452
  %2708 = load i64, i64* %RBP
  %2709 = sub i64 %2708, 8
  %2710 = load i64, i64* %PC
  %2711 = add i64 %2710, 4
  store i64 %2711, i64* %PC
  %2712 = inttoptr i64 %2709 to i64*
  %2713 = load i64, i64* %2712
  store i64 %2713, i64* %RCX, align 8, !tbaa !2428
  %2714 = load i64, i64* %RBP
  %2715 = sub i64 %2714, 76
  %2716 = load i64, i64* %PC
  %2717 = add i64 %2716, 4
  store i64 %2717, i64* %PC
  %2718 = inttoptr i64 %2715 to i32*
  %2719 = load i32, i32* %2718
  %2720 = sext i32 %2719 to i64
  store i64 %2720, i64* %RDX, align 8, !tbaa !2428
  %2721 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2722 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2723 = load i64, i64* %RCX
  %2724 = load i64, i64* %RDX
  %2725 = mul i64 %2724, 8
  %2726 = add i64 %2725, %2723
  %2727 = load i64, i64* %PC
  %2728 = add i64 %2727, 5
  store i64 %2728, i64* %PC
  %2729 = bitcast i8* %2722 to double*
  %2730 = load double, double* %2729, align 1
  %2731 = getelementptr inbounds i8, i8* %2722, i64 8
  %2732 = bitcast i8* %2731 to i64*
  %2733 = load i64, i64* %2732, align 1
  %2734 = inttoptr i64 %2726 to double*
  %2735 = load double, double* %2734
  %2736 = fadd double %2730, %2735
  %2737 = bitcast i8* %2721 to double*
  store double %2736, double* %2737, align 1, !tbaa !2452
  %2738 = getelementptr inbounds i8, i8* %2721, i64 8
  %2739 = bitcast i8* %2738 to i64*
  store i64 %2733, i64* %2739, align 1, !tbaa !2452
  %2740 = load i64, i64* %RCX
  %2741 = load i64, i64* %RDX
  %2742 = mul i64 %2741, 8
  %2743 = add i64 %2742, %2740
  %2744 = bitcast %union.vec128_t* %XMM0 to i8*
  %2745 = load i64, i64* %PC
  %2746 = add i64 %2745, 5
  store i64 %2746, i64* %PC
  %2747 = bitcast i8* %2744 to double*
  %2748 = load double, double* %2747, align 1
  %2749 = inttoptr i64 %2743 to double*
  store double %2748, double* %2749
  %2750 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2751 = load i64, i64* %RBP
  %2752 = sub i64 %2751, 104
  %2753 = load i64, i64* %PC
  %2754 = add i64 %2753, 5
  store i64 %2754, i64* %PC
  %2755 = inttoptr i64 %2752 to double*
  %2756 = load double, double* %2755
  %2757 = bitcast i8* %2750 to double*
  store double %2756, double* %2757, align 1, !tbaa !2452
  %2758 = getelementptr inbounds i8, i8* %2750, i64 8
  %2759 = bitcast i8* %2758 to double*
  store double 0.000000e+00, double* %2759, align 1, !tbaa !2452
  %2760 = load i64, i64* %RBP
  %2761 = sub i64 %2760, 8
  %2762 = load i64, i64* %PC
  %2763 = add i64 %2762, 4
  store i64 %2763, i64* %PC
  %2764 = inttoptr i64 %2761 to i64*
  %2765 = load i64, i64* %2764
  store i64 %2765, i64* %RCX, align 8, !tbaa !2428
  %2766 = load i64, i64* %RBP
  %2767 = sub i64 %2766, 76
  %2768 = load i64, i64* %PC
  %2769 = add i64 %2768, 3
  store i64 %2769, i64* %PC
  %2770 = inttoptr i64 %2767 to i32*
  %2771 = load i32, i32* %2770
  %2772 = zext i32 %2771 to i64
  store i64 %2772, i64* %RAX, align 8, !tbaa !2428
  %2773 = load i64, i64* %RAX
  %2774 = load i64, i64* %PC
  %2775 = add i64 %2774, 3
  store i64 %2775, i64* %PC
  %2776 = trunc i64 %2773 to i32
  %2777 = add i32 1, %2776
  %2778 = zext i32 %2777 to i64
  store i64 %2778, i64* %RAX, align 8, !tbaa !2428
  %2779 = icmp ult i32 %2777, %2776
  %2780 = icmp ult i32 %2777, 1
  %2781 = or i1 %2779, %2780
  %2782 = zext i1 %2781 to i8
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2782, i8* %2783, align 1, !tbaa !2432
  %2784 = and i32 %2777, 255
  %2785 = call i32 @llvm.ctpop.i32(i32 %2784) #17
  %2786 = trunc i32 %2785 to i8
  %2787 = and i8 %2786, 1
  %2788 = xor i8 %2787, 1
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2788, i8* %2789, align 1, !tbaa !2446
  %2790 = xor i64 1, %2773
  %2791 = trunc i64 %2790 to i32
  %2792 = xor i32 %2791, %2777
  %2793 = lshr i32 %2792, 4
  %2794 = trunc i32 %2793 to i8
  %2795 = and i8 %2794, 1
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2795, i8* %2796, align 1, !tbaa !2447
  %2797 = icmp eq i32 %2777, 0
  %2798 = zext i1 %2797 to i8
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2798, i8* %2799, align 1, !tbaa !2448
  %2800 = lshr i32 %2777, 31
  %2801 = trunc i32 %2800 to i8
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2801, i8* %2802, align 1, !tbaa !2449
  %2803 = lshr i32 %2776, 31
  %2804 = xor i32 %2800, %2803
  %2805 = add nuw nsw i32 %2804, %2800
  %2806 = icmp eq i32 %2805, 2
  %2807 = zext i1 %2806 to i8
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2807, i8* %2808, align 1, !tbaa !2450
  %2809 = load i32, i32* %EAX
  %2810 = zext i32 %2809 to i64
  %2811 = load i64, i64* %PC
  %2812 = add i64 %2811, 3
  store i64 %2812, i64* %PC
  %2813 = shl i64 %2810, 32
  %2814 = ashr exact i64 %2813, 32
  store i64 %2814, i64* %RDX, align 8, !tbaa !2428
  %2815 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2816 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2817 = load i64, i64* %RCX
  %2818 = load i64, i64* %RDX
  %2819 = mul i64 %2818, 8
  %2820 = add i64 %2819, %2817
  %2821 = load i64, i64* %PC
  %2822 = add i64 %2821, 5
  store i64 %2822, i64* %PC
  %2823 = bitcast i8* %2816 to double*
  %2824 = load double, double* %2823, align 1
  %2825 = getelementptr inbounds i8, i8* %2816, i64 8
  %2826 = bitcast i8* %2825 to i64*
  %2827 = load i64, i64* %2826, align 1
  %2828 = inttoptr i64 %2820 to double*
  %2829 = load double, double* %2828
  %2830 = fadd double %2824, %2829
  %2831 = bitcast i8* %2815 to double*
  store double %2830, double* %2831, align 1, !tbaa !2452
  %2832 = getelementptr inbounds i8, i8* %2815, i64 8
  %2833 = bitcast i8* %2832 to i64*
  store i64 %2827, i64* %2833, align 1, !tbaa !2452
  %2834 = load i64, i64* %RCX
  %2835 = load i64, i64* %RDX
  %2836 = mul i64 %2835, 8
  %2837 = add i64 %2836, %2834
  %2838 = bitcast %union.vec128_t* %XMM0 to i8*
  %2839 = load i64, i64* %PC
  %2840 = add i64 %2839, 5
  store i64 %2840, i64* %PC
  %2841 = bitcast i8* %2838 to double*
  %2842 = load double, double* %2841, align 1
  %2843 = inttoptr i64 %2837 to double*
  store double %2842, double* %2843
  %2844 = load i64, i64* %RBP
  %2845 = sub i64 %2844, 64
  %2846 = load i64, i64* %PC
  %2847 = add i64 %2846, 3
  store i64 %2847, i64* %PC
  %2848 = inttoptr i64 %2845 to i32*
  %2849 = load i32, i32* %2848
  %2850 = zext i32 %2849 to i64
  store i64 %2850, i64* %RAX, align 8, !tbaa !2428
  %2851 = load i64, i64* %RAX
  %2852 = load i64, i64* %RBP
  %2853 = sub i64 %2852, 32
  %2854 = load i64, i64* %PC
  %2855 = add i64 %2854, 3
  store i64 %2855, i64* %PC
  %2856 = trunc i64 %2851 to i32
  %2857 = inttoptr i64 %2853 to i32*
  %2858 = load i32, i32* %2857
  %2859 = add i32 %2858, %2856
  %2860 = zext i32 %2859 to i64
  store i64 %2860, i64* %RAX, align 8, !tbaa !2428
  %2861 = icmp ult i32 %2859, %2856
  %2862 = icmp ult i32 %2859, %2858
  %2863 = or i1 %2861, %2862
  %2864 = zext i1 %2863 to i8
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2864, i8* %2865, align 1, !tbaa !2432
  %2866 = and i32 %2859, 255
  %2867 = call i32 @llvm.ctpop.i32(i32 %2866) #17
  %2868 = trunc i32 %2867 to i8
  %2869 = and i8 %2868, 1
  %2870 = xor i8 %2869, 1
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2870, i8* %2871, align 1, !tbaa !2446
  %2872 = xor i32 %2858, %2856
  %2873 = xor i32 %2872, %2859
  %2874 = lshr i32 %2873, 4
  %2875 = trunc i32 %2874 to i8
  %2876 = and i8 %2875, 1
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2876, i8* %2877, align 1, !tbaa !2447
  %2878 = icmp eq i32 %2859, 0
  %2879 = zext i1 %2878 to i8
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2879, i8* %2880, align 1, !tbaa !2448
  %2881 = lshr i32 %2859, 31
  %2882 = trunc i32 %2881 to i8
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2882, i8* %2883, align 1, !tbaa !2449
  %2884 = lshr i32 %2856, 31
  %2885 = lshr i32 %2858, 31
  %2886 = xor i32 %2881, %2884
  %2887 = xor i32 %2881, %2885
  %2888 = add nuw nsw i32 %2886, %2887
  %2889 = icmp eq i32 %2888, 2
  %2890 = zext i1 %2889 to i8
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2890, i8* %2891, align 1, !tbaa !2450
  %2892 = load i64, i64* %RBP
  %2893 = sub i64 %2892, 32
  %2894 = load i32, i32* %EAX
  %2895 = zext i32 %2894 to i64
  %2896 = load i64, i64* %PC
  %2897 = add i64 %2896, 3
  store i64 %2897, i64* %PC
  %2898 = inttoptr i64 %2893 to i32*
  store i32 %2894, i32* %2898
  %2899 = load i64, i64* %PC
  %2900 = sub i64 %2899, 265
  %2901 = load i64, i64* %PC
  %2902 = add i64 %2901, 5
  store i64 %2902, i64* %PC
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2900, i64* %2903, align 8, !tbaa !2428
  br label %block_400eb0

block_400d30:                                     ; preds = %block_400c4d
  %2904 = load i64, i64* %PC
  %2905 = add i64 %2904, 5
  %2906 = load i64, i64* %PC
  %2907 = add i64 %2906, 5
  store i64 %2907, i64* %PC
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2905, i64* %2908, align 8, !tbaa !2428
  br label %block_400d35

block_400d1d:                                     ; preds = %block_400c67
  %2909 = load i64, i64* %PC
  %2910 = add i64 %2909, 5
  %2911 = load i64, i64* %PC
  %2912 = add i64 %2911, 5
  store i64 %2912, i64* %PC
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2910, i64* %2913, align 8, !tbaa !2428
  %2914 = load i64, i64* %RBP
  %2915 = sub i64 %2914, 28
  %2916 = load i64, i64* %PC
  %2917 = add i64 %2916, 3
  store i64 %2917, i64* %PC
  %2918 = inttoptr i64 %2915 to i32*
  %2919 = load i32, i32* %2918
  %2920 = zext i32 %2919 to i64
  store i64 %2920, i64* %RAX, align 8, !tbaa !2428
  %2921 = load i64, i64* %RAX
  %2922 = load i64, i64* %PC
  %2923 = add i64 %2922, 3
  store i64 %2923, i64* %PC
  %2924 = trunc i64 %2921 to i32
  %2925 = add i32 2, %2924
  %2926 = zext i32 %2925 to i64
  store i64 %2926, i64* %RAX, align 8, !tbaa !2428
  %2927 = icmp ult i32 %2925, %2924
  %2928 = icmp ult i32 %2925, 2
  %2929 = or i1 %2927, %2928
  %2930 = zext i1 %2929 to i8
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2930, i8* %2931, align 1, !tbaa !2432
  %2932 = and i32 %2925, 255
  %2933 = call i32 @llvm.ctpop.i32(i32 %2932) #17
  %2934 = trunc i32 %2933 to i8
  %2935 = and i8 %2934, 1
  %2936 = xor i8 %2935, 1
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2936, i8* %2937, align 1, !tbaa !2446
  %2938 = xor i64 2, %2921
  %2939 = trunc i64 %2938 to i32
  %2940 = xor i32 %2939, %2925
  %2941 = lshr i32 %2940, 4
  %2942 = trunc i32 %2941 to i8
  %2943 = and i8 %2942, 1
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2943, i8* %2944, align 1, !tbaa !2447
  %2945 = icmp eq i32 %2925, 0
  %2946 = zext i1 %2945 to i8
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2946, i8* %2947, align 1, !tbaa !2448
  %2948 = lshr i32 %2925, 31
  %2949 = trunc i32 %2948 to i8
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2949, i8* %2950, align 1, !tbaa !2449
  %2951 = lshr i32 %2924, 31
  %2952 = xor i32 %2948, %2951
  %2953 = add nuw nsw i32 %2952, %2948
  %2954 = icmp eq i32 %2953, 2
  %2955 = zext i1 %2954 to i8
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2955, i8* %2956, align 1, !tbaa !2450
  %2957 = load i64, i64* %RBP
  %2958 = sub i64 %2957, 28
  %2959 = load i32, i32* %EAX
  %2960 = zext i32 %2959 to i64
  %2961 = load i64, i64* %PC
  %2962 = add i64 %2961, 3
  store i64 %2962, i64* %PC
  %2963 = inttoptr i64 %2958 to i32*
  store i32 %2959, i32* %2963
  %2964 = load i64, i64* %PC
  %2965 = sub i64 %2964, 222
  %2966 = load i64, i64* %PC
  %2967 = add i64 %2966, 5
  store i64 %2967, i64* %PC
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2965, i64* %2968, align 8, !tbaa !2428
  br label %block_400c4d

block_400c3b:                                     ; preds = %block_400c2f
  %2969 = sub i64 %3233, 32
  %2970 = load i64, i64* %PC
  %2971 = add i64 %2970, 3
  store i64 %2971, i64* %PC
  %2972 = inttoptr i64 %2969 to i32*
  %2973 = load i32, i32* %2972
  %2974 = zext i32 %2973 to i64
  store i64 %2974, i64* %RAX, align 8, !tbaa !2428
  %2975 = load i32, i32* %EAX
  %2976 = zext i32 %2975 to i64
  %2977 = load i64, i64* %RBP
  %2978 = sub i64 %2977, 40
  %2979 = load i64, i64* %PC
  %2980 = add i64 %2979, 3
  store i64 %2980, i64* %PC
  %2981 = inttoptr i64 %2978 to i32*
  %2982 = load i32, i32* %2981
  %2983 = sub i32 %2975, %2982
  %2984 = icmp ult i32 %2975, %2982
  %2985 = zext i1 %2984 to i8
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2985, i8* %2986, align 1, !tbaa !2432
  %2987 = and i32 %2983, 255
  %2988 = call i32 @llvm.ctpop.i32(i32 %2987) #17
  %2989 = trunc i32 %2988 to i8
  %2990 = and i8 %2989, 1
  %2991 = xor i8 %2990, 1
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2991, i8* %2992, align 1, !tbaa !2446
  %2993 = xor i32 %2982, %2975
  %2994 = xor i32 %2993, %2983
  %2995 = lshr i32 %2994, 4
  %2996 = trunc i32 %2995 to i8
  %2997 = and i8 %2996, 1
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2997, i8* %2998, align 1, !tbaa !2447
  %2999 = icmp eq i32 %2983, 0
  %3000 = zext i1 %2999 to i8
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3000, i8* %3001, align 1, !tbaa !2448
  %3002 = lshr i32 %2983, 31
  %3003 = trunc i32 %3002 to i8
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3003, i8* %3004, align 1, !tbaa !2449
  %3005 = lshr i32 %2975, 31
  %3006 = lshr i32 %2982, 31
  %3007 = xor i32 %3006, %3005
  %3008 = xor i32 %3002, %3005
  %3009 = add nuw nsw i32 %3008, %3007
  %3010 = icmp eq i32 %3009, 2
  %3011 = zext i1 %3010 to i8
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3011, i8* %3012, align 1, !tbaa !2450
  %3013 = load i64, i64* %PC
  %3014 = add i64 %3013, 244
  %3015 = load i64, i64* %PC
  %3016 = add i64 %3015, 6
  %3017 = load i64, i64* %PC
  %3018 = add i64 %3017, 6
  store i64 %3018, i64* %PC
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3020 = load i8, i8* %3019, align 1, !tbaa !2449
  %3021 = icmp ne i8 %3020, 0
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3023 = load i8, i8* %3022, align 1, !tbaa !2450
  %3024 = icmp ne i8 %3023, 0
  %3025 = xor i1 %3021, %3024
  %3026 = xor i1 %3025, true
  %3027 = zext i1 %3026 to i8
  store i8 %3027, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3029 = select i1 %3025, i64 %3016, i64 %3014
  store i64 %3029, i64* %3028, align 8, !tbaa !2428
  %3030 = load i8, i8* %BRANCH_TAKEN
  %3031 = icmp eq i8 %3030, 1
  br i1 %3031, label %block_400d35, label %block_400c47

block_400dac:                                     ; preds = %block_400da6, %block_401043
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.8, %block_400da6 ], [ %MEMORY.11, %block_401043 ]
  %3032 = load i64, i64* %RBP
  %3033 = sub i64 %3032, 60
  %3034 = load i64, i64* %PC
  %3035 = add i64 %3034, 3
  store i64 %3035, i64* %PC
  %3036 = inttoptr i64 %3033 to i32*
  %3037 = load i32, i32* %3036
  %3038 = zext i32 %3037 to i64
  store i64 %3038, i64* %RAX, align 8, !tbaa !2428
  %3039 = load i32, i32* %EAX
  %3040 = zext i32 %3039 to i64
  %3041 = load i64, i64* %RBP
  %3042 = sub i64 %3041, 52
  %3043 = load i64, i64* %PC
  %3044 = add i64 %3043, 3
  store i64 %3044, i64* %PC
  %3045 = inttoptr i64 %3042 to i32*
  %3046 = load i32, i32* %3045
  %3047 = sub i32 %3039, %3046
  %3048 = icmp ult i32 %3039, %3046
  %3049 = zext i1 %3048 to i8
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3049, i8* %3050, align 1, !tbaa !2432
  %3051 = and i32 %3047, 255
  %3052 = call i32 @llvm.ctpop.i32(i32 %3051) #17
  %3053 = trunc i32 %3052 to i8
  %3054 = and i8 %3053, 1
  %3055 = xor i8 %3054, 1
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3055, i8* %3056, align 1, !tbaa !2446
  %3057 = xor i32 %3046, %3039
  %3058 = xor i32 %3057, %3047
  %3059 = lshr i32 %3058, 4
  %3060 = trunc i32 %3059 to i8
  %3061 = and i8 %3060, 1
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3061, i8* %3062, align 1, !tbaa !2447
  %3063 = icmp eq i32 %3047, 0
  %3064 = zext i1 %3063 to i8
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3064, i8* %3065, align 1, !tbaa !2448
  %3066 = lshr i32 %3047, 31
  %3067 = trunc i32 %3066 to i8
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3067, i8* %3068, align 1, !tbaa !2449
  %3069 = lshr i32 %3039, 31
  %3070 = lshr i32 %3046, 31
  %3071 = xor i32 %3070, %3069
  %3072 = xor i32 %3066, %3069
  %3073 = add nuw nsw i32 %3072, %3071
  %3074 = icmp eq i32 %3073, 2
  %3075 = zext i1 %3074 to i8
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3075, i8* %3076, align 1, !tbaa !2450
  %3077 = load i64, i64* %PC
  %3078 = add i64 %3077, 668
  %3079 = load i64, i64* %PC
  %3080 = add i64 %3079, 6
  %3081 = load i64, i64* %PC
  %3082 = add i64 %3081, 6
  store i64 %3082, i64* %PC
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3084 = load i8, i8* %3083, align 1, !tbaa !2449
  %3085 = icmp ne i8 %3084, 0
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3087 = load i8, i8* %3086, align 1, !tbaa !2450
  %3088 = icmp ne i8 %3087, 0
  %3089 = xor i1 %3085, %3088
  %3090 = xor i1 %3089, true
  %3091 = zext i1 %3090 to i8
  store i8 %3091, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3093 = select i1 %3089, i64 %3080, i64 %3078
  store i64 %3093, i64* %3092, align 8, !tbaa !2428
  %3094 = load i8, i8* %BRANCH_TAKEN
  %3095 = icmp eq i8 %3094, 1
  br i1 %3095, label %block_40104e, label %block_400db8

block_400b97:                                     ; preds = %block_400ba3, %block_400b70
  %MEMORY.7 = phi %struct.Memory* [ %2, %block_400b70 ], [ %MEMORY.7, %block_400ba3 ]
  %3096 = load i64, i64* %RBP
  %3097 = sub i64 %3096, 72
  %3098 = load i64, i64* %PC
  %3099 = add i64 %3098, 3
  store i64 %3099, i64* %PC
  %3100 = inttoptr i64 %3097 to i32*
  %3101 = load i32, i32* %3100
  %3102 = zext i32 %3101 to i64
  store i64 %3102, i64* %RAX, align 8, !tbaa !2428
  %3103 = load i32, i32* %EAX
  %3104 = zext i32 %3103 to i64
  %3105 = load i64, i64* %RBP
  %3106 = sub i64 %3105, 20
  %3107 = load i64, i64* %PC
  %3108 = add i64 %3107, 3
  store i64 %3108, i64* %PC
  %3109 = inttoptr i64 %3106 to i32*
  %3110 = load i32, i32* %3109
  %3111 = sub i32 %3103, %3110
  %3112 = icmp ult i32 %3103, %3110
  %3113 = zext i1 %3112 to i8
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3113, i8* %3114, align 1, !tbaa !2432
  %3115 = and i32 %3111, 255
  %3116 = call i32 @llvm.ctpop.i32(i32 %3115) #17
  %3117 = trunc i32 %3116 to i8
  %3118 = and i8 %3117, 1
  %3119 = xor i8 %3118, 1
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3119, i8* %3120, align 1, !tbaa !2446
  %3121 = xor i32 %3110, %3103
  %3122 = xor i32 %3121, %3111
  %3123 = lshr i32 %3122, 4
  %3124 = trunc i32 %3123 to i8
  %3125 = and i8 %3124, 1
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3125, i8* %3126, align 1, !tbaa !2447
  %3127 = icmp eq i32 %3111, 0
  %3128 = zext i1 %3127 to i8
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3128, i8* %3129, align 1, !tbaa !2448
  %3130 = lshr i32 %3111, 31
  %3131 = trunc i32 %3130 to i8
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3131, i8* %3132, align 1, !tbaa !2449
  %3133 = lshr i32 %3103, 31
  %3134 = lshr i32 %3110, 31
  %3135 = xor i32 %3134, %3133
  %3136 = xor i32 %3130, %3133
  %3137 = add nuw nsw i32 %3136, %3135
  %3138 = icmp eq i32 %3137, 2
  %3139 = zext i1 %3138 to i8
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3139, i8* %3140, align 1, !tbaa !2450
  %3141 = load i64, i64* %PC
  %3142 = add i64 %3141, 38
  %3143 = load i64, i64* %PC
  %3144 = add i64 %3143, 6
  %3145 = load i64, i64* %PC
  %3146 = add i64 %3145, 6
  store i64 %3146, i64* %PC
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3148 = load i8, i8* %3147, align 1, !tbaa !2448
  %3149 = icmp eq i8 %3148, 0
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3151 = load i8, i8* %3150, align 1, !tbaa !2449
  %3152 = icmp ne i8 %3151, 0
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3154 = load i8, i8* %3153, align 1, !tbaa !2450
  %3155 = icmp ne i8 %3154, 0
  %3156 = xor i1 %3152, %3155
  %3157 = xor i1 %3156, true
  %3158 = and i1 %3149, %3157
  %3159 = zext i1 %3158 to i8
  store i8 %3159, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3161 = select i1 %3158, i64 %3142, i64 %3144
  store i64 %3161, i64* %3160, align 8, !tbaa !2428
  %3162 = load i8, i8* %BRANCH_TAKEN
  %3163 = icmp eq i8 %3162, 1
  %3164 = load i64, i64* %RBP
  br i1 %3163, label %block_400bc3, label %block_400ba3

block_400c2f:                                     ; preds = %block_400d71, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %MEMORY.8 = phi %struct.Memory* [ %1969, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %MEMORY.0, %block_400d71 ]
  %3165 = load i64, i64* %RBP
  %3166 = sub i64 %3165, 32
  %3167 = load i64, i64* %PC
  %3168 = add i64 %3167, 3
  store i64 %3168, i64* %PC
  %3169 = inttoptr i64 %3166 to i32*
  %3170 = load i32, i32* %3169
  %3171 = zext i32 %3170 to i64
  store i64 %3171, i64* %RAX, align 8, !tbaa !2428
  %3172 = load i32, i32* %EAX
  %3173 = zext i32 %3172 to i64
  %3174 = load i64, i64* %RBP
  %3175 = sub i64 %3174, 52
  %3176 = load i64, i64* %PC
  %3177 = add i64 %3176, 3
  store i64 %3177, i64* %PC
  %3178 = inttoptr i64 %3175 to i32*
  %3179 = load i32, i32* %3178
  %3180 = sub i32 %3172, %3179
  %3181 = icmp ult i32 %3172, %3179
  %3182 = zext i1 %3181 to i8
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3182, i8* %3183, align 1, !tbaa !2432
  %3184 = and i32 %3180, 255
  %3185 = call i32 @llvm.ctpop.i32(i32 %3184) #17
  %3186 = trunc i32 %3185 to i8
  %3187 = and i8 %3186, 1
  %3188 = xor i8 %3187, 1
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3188, i8* %3189, align 1, !tbaa !2446
  %3190 = xor i32 %3179, %3172
  %3191 = xor i32 %3190, %3180
  %3192 = lshr i32 %3191, 4
  %3193 = trunc i32 %3192 to i8
  %3194 = and i8 %3193, 1
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3194, i8* %3195, align 1, !tbaa !2447
  %3196 = icmp eq i32 %3180, 0
  %3197 = zext i1 %3196 to i8
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3197, i8* %3198, align 1, !tbaa !2448
  %3199 = lshr i32 %3180, 31
  %3200 = trunc i32 %3199 to i8
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3200, i8* %3201, align 1, !tbaa !2449
  %3202 = lshr i32 %3172, 31
  %3203 = lshr i32 %3179, 31
  %3204 = xor i32 %3203, %3202
  %3205 = xor i32 %3199, %3202
  %3206 = add nuw nsw i32 %3205, %3204
  %3207 = icmp eq i32 %3206, 2
  %3208 = zext i1 %3207 to i8
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3208, i8* %3209, align 1, !tbaa !2450
  %3210 = load i64, i64* %PC
  %3211 = add i64 %3210, 369
  %3212 = load i64, i64* %PC
  %3213 = add i64 %3212, 6
  %3214 = load i64, i64* %PC
  %3215 = add i64 %3214, 6
  store i64 %3215, i64* %PC
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3217 = load i8, i8* %3216, align 1, !tbaa !2448
  %3218 = icmp eq i8 %3217, 0
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3220 = load i8, i8* %3219, align 1, !tbaa !2449
  %3221 = icmp ne i8 %3220, 0
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3223 = load i8, i8* %3222, align 1, !tbaa !2450
  %3224 = icmp ne i8 %3223, 0
  %3225 = xor i1 %3221, %3224
  %3226 = xor i1 %3225, true
  %3227 = and i1 %3218, %3226
  %3228 = zext i1 %3227 to i8
  store i8 %3228, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3230 = select i1 %3227, i64 %3211, i64 %3213
  store i64 %3230, i64* %3229, align 8, !tbaa !2428
  %3231 = load i8, i8* %BRANCH_TAKEN
  %3232 = icmp eq i8 %3231, 1
  %3233 = load i64, i64* %RBP
  br i1 %3232, label %block_400da6, label %block_400c3b

block_400e96:                                     ; preds = %block_400e90, %block_400fbe
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.11, %block_400e90 ], [ %MEMORY.5, %block_400fbe ]
  %3234 = load i64, i64* %RBP
  %3235 = sub i64 %3234, 28
  %3236 = load i64, i64* %PC
  %3237 = add i64 %3236, 3
  store i64 %3237, i64* %PC
  %3238 = inttoptr i64 %3235 to i32*
  %3239 = load i32, i32* %3238
  %3240 = zext i32 %3239 to i64
  store i64 %3240, i64* %RAX, align 8, !tbaa !2428
  %3241 = load i64, i64* %RBP
  %3242 = sub i64 %3241, 36
  %3243 = load i64, i64* %PC
  %3244 = add i64 %3243, 3
  store i64 %3244, i64* %PC
  %3245 = inttoptr i64 %3242 to i32*
  %3246 = load i32, i32* %3245
  %3247 = zext i32 %3246 to i64
  store i64 %3247, i64* %RCX, align 8, !tbaa !2428
  %3248 = load i64, i64* %RCX
  %3249 = load i64, i64* %RBP
  %3250 = sub i64 %3249, 48
  %3251 = load i64, i64* %PC
  %3252 = add i64 %3251, 3
  store i64 %3252, i64* %PC
  %3253 = trunc i64 %3248 to i32
  %3254 = inttoptr i64 %3250 to i32*
  %3255 = load i32, i32* %3254
  %3256 = add i32 %3255, %3253
  %3257 = zext i32 %3256 to i64
  store i64 %3257, i64* %RCX, align 8, !tbaa !2428
  %3258 = icmp ult i32 %3256, %3253
  %3259 = icmp ult i32 %3256, %3255
  %3260 = or i1 %3258, %3259
  %3261 = zext i1 %3260 to i8
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3261, i8* %3262, align 1, !tbaa !2432
  %3263 = and i32 %3256, 255
  %3264 = call i32 @llvm.ctpop.i32(i32 %3263) #17
  %3265 = trunc i32 %3264 to i8
  %3266 = and i8 %3265, 1
  %3267 = xor i8 %3266, 1
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3267, i8* %3268, align 1, !tbaa !2446
  %3269 = xor i32 %3255, %3253
  %3270 = xor i32 %3269, %3256
  %3271 = lshr i32 %3270, 4
  %3272 = trunc i32 %3271 to i8
  %3273 = and i8 %3272, 1
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3273, i8* %3274, align 1, !tbaa !2447
  %3275 = icmp eq i32 %3256, 0
  %3276 = zext i1 %3275 to i8
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3276, i8* %3277, align 1, !tbaa !2448
  %3278 = lshr i32 %3256, 31
  %3279 = trunc i32 %3278 to i8
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3279, i8* %3280, align 1, !tbaa !2449
  %3281 = lshr i32 %3253, 31
  %3282 = lshr i32 %3255, 31
  %3283 = xor i32 %3278, %3281
  %3284 = xor i32 %3278, %3282
  %3285 = add nuw nsw i32 %3283, %3284
  %3286 = icmp eq i32 %3285, 2
  %3287 = zext i1 %3286 to i8
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3287, i8* %3288, align 1, !tbaa !2450
  %3289 = load i64, i64* %RCX
  %3290 = load i64, i64* %PC
  %3291 = add i64 %3290, 3
  store i64 %3291, i64* %PC
  %3292 = trunc i64 %3289 to i32
  %3293 = sub i32 %3292, 2
  %3294 = zext i32 %3293 to i64
  store i64 %3294, i64* %RCX, align 8, !tbaa !2428
  %3295 = icmp ult i32 %3292, 2
  %3296 = zext i1 %3295 to i8
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3296, i8* %3297, align 1, !tbaa !2432
  %3298 = and i32 %3293, 255
  %3299 = call i32 @llvm.ctpop.i32(i32 %3298) #17
  %3300 = trunc i32 %3299 to i8
  %3301 = and i8 %3300, 1
  %3302 = xor i8 %3301, 1
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3302, i8* %3303, align 1, !tbaa !2446
  %3304 = xor i64 2, %3289
  %3305 = trunc i64 %3304 to i32
  %3306 = xor i32 %3305, %3293
  %3307 = lshr i32 %3306, 4
  %3308 = trunc i32 %3307 to i8
  %3309 = and i8 %3308, 1
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3309, i8* %3310, align 1, !tbaa !2447
  %3311 = icmp eq i32 %3293, 0
  %3312 = zext i1 %3311 to i8
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3312, i8* %3313, align 1, !tbaa !2448
  %3314 = lshr i32 %3293, 31
  %3315 = trunc i32 %3314 to i8
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3315, i8* %3316, align 1, !tbaa !2449
  %3317 = lshr i32 %3292, 31
  %3318 = xor i32 %3314, %3317
  %3319 = add nuw nsw i32 %3318, %3317
  %3320 = icmp eq i32 %3319, 2
  %3321 = zext i1 %3320 to i8
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3321, i8* %3322, align 1, !tbaa !2450
  %3323 = load i32, i32* %EAX
  %3324 = zext i32 %3323 to i64
  %3325 = load i32, i32* %ECX
  %3326 = zext i32 %3325 to i64
  %3327 = load i64, i64* %PC
  %3328 = add i64 %3327, 2
  store i64 %3328, i64* %PC
  %3329 = sub i32 %3323, %3325
  %3330 = icmp ult i32 %3323, %3325
  %3331 = zext i1 %3330 to i8
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3331, i8* %3332, align 1, !tbaa !2432
  %3333 = and i32 %3329, 255
  %3334 = call i32 @llvm.ctpop.i32(i32 %3333) #17
  %3335 = trunc i32 %3334 to i8
  %3336 = and i8 %3335, 1
  %3337 = xor i8 %3336, 1
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3337, i8* %3338, align 1, !tbaa !2446
  %3339 = xor i64 %3326, %3324
  %3340 = trunc i64 %3339 to i32
  %3341 = xor i32 %3340, %3329
  %3342 = lshr i32 %3341, 4
  %3343 = trunc i32 %3342 to i8
  %3344 = and i8 %3343, 1
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3344, i8* %3345, align 1, !tbaa !2447
  %3346 = icmp eq i32 %3329, 0
  %3347 = zext i1 %3346 to i8
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3347, i8* %3348, align 1, !tbaa !2448
  %3349 = lshr i32 %3329, 31
  %3350 = trunc i32 %3349 to i8
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3350, i8* %3351, align 1, !tbaa !2449
  %3352 = lshr i32 %3323, 31
  %3353 = lshr i32 %3325, 31
  %3354 = xor i32 %3353, %3352
  %3355 = xor i32 %3349, %3352
  %3356 = add nuw nsw i32 %3355, %3354
  %3357 = icmp eq i32 %3356, 2
  %3358 = zext i1 %3357 to i8
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3358, i8* %3359, align 1, !tbaa !2450
  %3360 = load i64, i64* %PC
  %3361 = add i64 %3360, 301
  %3362 = load i64, i64* %PC
  %3363 = add i64 %3362, 6
  %3364 = load i64, i64* %PC
  %3365 = add i64 %3364, 6
  store i64 %3365, i64* %PC
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3367 = load i8, i8* %3366, align 1, !tbaa !2448
  %3368 = icmp eq i8 %3367, 0
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3370 = load i8, i8* %3369, align 1, !tbaa !2449
  %3371 = icmp ne i8 %3370, 0
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3373 = load i8, i8* %3372, align 1, !tbaa !2450
  %3374 = icmp ne i8 %3373, 0
  %3375 = xor i1 %3371, %3374
  %3376 = xor i1 %3375, true
  %3377 = and i1 %3368, %3376
  %3378 = zext i1 %3377 to i8
  store i8 %3378, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3380 = select i1 %3377, i64 %3361, i64 %3363
  store i64 %3380, i64* %3379, align 8, !tbaa !2428
  %3381 = load i8, i8* %BRANCH_TAKEN
  %3382 = icmp eq i8 %3381, 1
  br i1 %3382, label %block_400fd1, label %block_400eaa

block_400c67:                                     ; preds = %block_400c61, %block_400c73
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.2, %block_400c61 ], [ %MEMORY.10, %block_400c73 ]
  %3383 = load i64, i64* %RBP
  %3384 = sub i64 %3383, 36
  %3385 = load i64, i64* %PC
  %3386 = add i64 %3385, 3
  store i64 %3386, i64* %PC
  %3387 = inttoptr i64 %3384 to i32*
  %3388 = load i32, i32* %3387
  %3389 = zext i32 %3388 to i64
  store i64 %3389, i64* %RAX, align 8, !tbaa !2428
  %3390 = load i32, i32* %EAX
  %3391 = zext i32 %3390 to i64
  %3392 = load i64, i64* %RBP
  %3393 = sub i64 %3392, 56
  %3394 = load i64, i64* %PC
  %3395 = add i64 %3394, 3
  store i64 %3395, i64* %PC
  %3396 = inttoptr i64 %3393 to i32*
  %3397 = load i32, i32* %3396
  %3398 = sub i32 %3390, %3397
  %3399 = icmp ult i32 %3390, %3397
  %3400 = zext i1 %3399 to i8
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3400, i8* %3401, align 1, !tbaa !2432
  %3402 = and i32 %3398, 255
  %3403 = call i32 @llvm.ctpop.i32(i32 %3402) #17
  %3404 = trunc i32 %3403 to i8
  %3405 = and i8 %3404, 1
  %3406 = xor i8 %3405, 1
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3406, i8* %3407, align 1, !tbaa !2446
  %3408 = xor i32 %3397, %3390
  %3409 = xor i32 %3408, %3398
  %3410 = lshr i32 %3409, 4
  %3411 = trunc i32 %3410 to i8
  %3412 = and i8 %3411, 1
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3412, i8* %3413, align 1, !tbaa !2447
  %3414 = icmp eq i32 %3398, 0
  %3415 = zext i1 %3414 to i8
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3415, i8* %3416, align 1, !tbaa !2448
  %3417 = lshr i32 %3398, 31
  %3418 = trunc i32 %3417 to i8
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3418, i8* %3419, align 1, !tbaa !2449
  %3420 = lshr i32 %3390, 31
  %3421 = lshr i32 %3397, 31
  %3422 = xor i32 %3421, %3420
  %3423 = xor i32 %3417, %3420
  %3424 = add nuw nsw i32 %3423, %3422
  %3425 = icmp eq i32 %3424, 2
  %3426 = zext i1 %3425 to i8
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3426, i8* %3427, align 1, !tbaa !2450
  %3428 = load i64, i64* %PC
  %3429 = add i64 %3428, 176
  %3430 = load i64, i64* %PC
  %3431 = add i64 %3430, 6
  %3432 = load i64, i64* %PC
  %3433 = add i64 %3432, 6
  store i64 %3433, i64* %PC
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3435 = load i8, i8* %3434, align 1, !tbaa !2448
  %3436 = icmp eq i8 %3435, 0
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3438 = load i8, i8* %3437, align 1, !tbaa !2449
  %3439 = icmp ne i8 %3438, 0
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3441 = load i8, i8* %3440, align 1, !tbaa !2450
  %3442 = icmp ne i8 %3441, 0
  %3443 = xor i1 %3439, %3442
  %3444 = xor i1 %3443, true
  %3445 = and i1 %3436, %3444
  %3446 = zext i1 %3445 to i8
  store i8 %3446, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3448 = select i1 %3445, i64 %3429, i64 %3431
  store i64 %3448, i64* %3447, align 8, !tbaa !2428
  %3449 = load i8, i8* %BRANCH_TAKEN
  %3450 = icmp eq i8 %3449, 1
  br i1 %3450, label %block_400d1d, label %block_400c73

block_400bc3:                                     ; preds = %block_400b97
  %3451 = sub i64 %3164, 88
  %3452 = load i64, i64* %PC
  %3453 = add i64 %3452, 7
  store i64 %3453, i64* %PC
  %3454 = inttoptr i64 %3451 to i32*
  store i32 1, i32* %3454
  %3455 = load i64, i64* %RBP
  %3456 = sub i64 %3455, 20
  %3457 = load i64, i64* %PC
  %3458 = add i64 %3457, 3
  store i64 %3458, i64* %PC
  %3459 = inttoptr i64 %3456 to i32*
  %3460 = load i32, i32* %3459
  %3461 = zext i32 %3460 to i64
  store i64 %3461, i64* %RAX, align 8, !tbaa !2428
  %3462 = load i64, i64* %RBP
  %3463 = sub i64 %3462, 72
  %3464 = load i32, i32* %EAX
  %3465 = zext i32 %3464 to i64
  %3466 = load i64, i64* %PC
  %3467 = add i64 %3466, 3
  store i64 %3467, i64* %PC
  %3468 = inttoptr i64 %3463 to i32*
  store i32 %3464, i32* %3468
  br label %block_400bd0

block_400d71:                                     ; preds = %block_400d63
  %3469 = load i64, i64* %PC
  %3470 = add i64 %3469, 30
  %3471 = load i64, i64* %PC
  %3472 = add i64 %3471, 5
  store i64 %3472, i64* %PC
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3470, i64* %3473, align 8, !tbaa !2428
  %3474 = load i64, i64* %RBP
  %3475 = sub i64 %3474, 68
  %3476 = load i64, i64* %PC
  %3477 = add i64 %3476, 3
  store i64 %3477, i64* %PC
  %3478 = inttoptr i64 %3475 to i32*
  %3479 = load i32, i32* %3478
  %3480 = zext i32 %3479 to i64
  store i64 %3480, i64* %RAX, align 8, !tbaa !2428
  %3481 = load i64, i64* %RAX
  %3482 = load i64, i64* %RBP
  %3483 = sub i64 %3482, 40
  %3484 = load i64, i64* %PC
  %3485 = add i64 %3484, 3
  store i64 %3485, i64* %PC
  %3486 = trunc i64 %3481 to i32
  %3487 = inttoptr i64 %3483 to i32*
  %3488 = load i32, i32* %3487
  %3489 = add i32 %3488, %3486
  %3490 = zext i32 %3489 to i64
  store i64 %3490, i64* %RAX, align 8, !tbaa !2428
  %3491 = icmp ult i32 %3489, %3486
  %3492 = icmp ult i32 %3489, %3488
  %3493 = or i1 %3491, %3492
  %3494 = zext i1 %3493 to i8
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3494, i8* %3495, align 1, !tbaa !2432
  %3496 = and i32 %3489, 255
  %3497 = call i32 @llvm.ctpop.i32(i32 %3496) #17
  %3498 = trunc i32 %3497 to i8
  %3499 = and i8 %3498, 1
  %3500 = xor i8 %3499, 1
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3500, i8* %3501, align 1, !tbaa !2446
  %3502 = xor i32 %3488, %3486
  %3503 = xor i32 %3502, %3489
  %3504 = lshr i32 %3503, 4
  %3505 = trunc i32 %3504 to i8
  %3506 = and i8 %3505, 1
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3506, i8* %3507, align 1, !tbaa !2447
  %3508 = icmp eq i32 %3489, 0
  %3509 = zext i1 %3508 to i8
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3509, i8* %3510, align 1, !tbaa !2448
  %3511 = lshr i32 %3489, 31
  %3512 = trunc i32 %3511 to i8
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3512, i8* %3513, align 1, !tbaa !2449
  %3514 = lshr i32 %3486, 31
  %3515 = lshr i32 %3488, 31
  %3516 = xor i32 %3511, %3514
  %3517 = xor i32 %3511, %3515
  %3518 = add nuw nsw i32 %3516, %3517
  %3519 = icmp eq i32 %3518, 2
  %3520 = zext i1 %3519 to i8
  %3521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3520, i8* %3521, align 1, !tbaa !2450
  %3522 = load i64, i64* %RBP
  %3523 = sub i64 %3522, 40
  %3524 = load i32, i32* %EAX
  %3525 = zext i32 %3524 to i64
  %3526 = load i64, i64* %PC
  %3527 = add i64 %3526, 3
  store i64 %3527, i64* %PC
  %3528 = inttoptr i64 %3523 to i32*
  store i32 %3524, i32* %3528
  %3529 = load i64, i64* %RBP
  %3530 = sub i64 %3529, 48
  %3531 = load i64, i64* %PC
  %3532 = add i64 %3531, 3
  store i64 %3532, i64* %PC
  %3533 = inttoptr i64 %3530 to i32*
  %3534 = load i32, i32* %3533
  %3535 = zext i32 %3534 to i64
  store i64 %3535, i64* %RAX, align 8, !tbaa !2428
  %3536 = load i64, i64* %RAX
  %3537 = load i64, i64* %RBP
  %3538 = sub i64 %3537, 32
  %3539 = load i64, i64* %PC
  %3540 = add i64 %3539, 3
  store i64 %3540, i64* %PC
  %3541 = trunc i64 %3536 to i32
  %3542 = inttoptr i64 %3538 to i32*
  %3543 = load i32, i32* %3542
  %3544 = add i32 %3543, %3541
  %3545 = zext i32 %3544 to i64
  store i64 %3545, i64* %RAX, align 8, !tbaa !2428
  %3546 = icmp ult i32 %3544, %3541
  %3547 = icmp ult i32 %3544, %3543
  %3548 = or i1 %3546, %3547
  %3549 = zext i1 %3548 to i8
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3549, i8* %3550, align 1, !tbaa !2432
  %3551 = and i32 %3544, 255
  %3552 = call i32 @llvm.ctpop.i32(i32 %3551) #17
  %3553 = trunc i32 %3552 to i8
  %3554 = and i8 %3553, 1
  %3555 = xor i8 %3554, 1
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3555, i8* %3556, align 1, !tbaa !2446
  %3557 = xor i32 %3543, %3541
  %3558 = xor i32 %3557, %3544
  %3559 = lshr i32 %3558, 4
  %3560 = trunc i32 %3559 to i8
  %3561 = and i8 %3560, 1
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3561, i8* %3562, align 1, !tbaa !2447
  %3563 = icmp eq i32 %3544, 0
  %3564 = zext i1 %3563 to i8
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3564, i8* %3565, align 1, !tbaa !2448
  %3566 = lshr i32 %3544, 31
  %3567 = trunc i32 %3566 to i8
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3567, i8* %3568, align 1, !tbaa !2449
  %3569 = lshr i32 %3541, 31
  %3570 = lshr i32 %3543, 31
  %3571 = xor i32 %3566, %3569
  %3572 = xor i32 %3566, %3570
  %3573 = add nuw nsw i32 %3571, %3572
  %3574 = icmp eq i32 %3573, 2
  %3575 = zext i1 %3574 to i8
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3575, i8* %3576, align 1, !tbaa !2450
  %3577 = load i64, i64* %RBP
  %3578 = sub i64 %3577, 32
  %3579 = load i32, i32* %EAX
  %3580 = zext i32 %3579 to i64
  %3581 = load i64, i64* %PC
  %3582 = add i64 %3581, 3
  store i64 %3582, i64* %PC
  %3583 = inttoptr i64 %3578 to i32*
  store i32 %3579, i32* %3583
  %3584 = load i64, i64* %PC
  %3585 = sub i64 %3584, 370
  %3586 = load i64, i64* %PC
  %3587 = add i64 %3586, 5
  store i64 %3587, i64* %PC
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3585, i64* %3588, align 8, !tbaa !2428
  br label %block_400c2f

block_400e90:                                     ; preds = %block_400e84
  %3589 = sub i64 %5114, 36
  %3590 = load i64, i64* %PC
  %3591 = add i64 %3590, 3
  store i64 %3591, i64* %PC
  %3592 = inttoptr i64 %3589 to i32*
  %3593 = load i32, i32* %3592
  %3594 = zext i32 %3593 to i64
  store i64 %3594, i64* %RAX, align 8, !tbaa !2428
  %3595 = load i64, i64* %RBP
  %3596 = sub i64 %3595, 28
  %3597 = load i32, i32* %EAX
  %3598 = zext i32 %3597 to i64
  %3599 = load i64, i64* %PC
  %3600 = add i64 %3599, 3
  store i64 %3600, i64* %PC
  %3601 = inttoptr i64 %3596 to i32*
  store i32 %3597, i32* %3601
  br label %block_400e96

block_400c47:                                     ; preds = %block_400c3b
  %3602 = load i64, i64* %RBP
  %3603 = sub i64 %3602, 32
  %3604 = load i64, i64* %PC
  %3605 = add i64 %3604, 3
  store i64 %3605, i64* %PC
  %3606 = inttoptr i64 %3603 to i32*
  %3607 = load i32, i32* %3606
  %3608 = zext i32 %3607 to i64
  store i64 %3608, i64* %RAX, align 8, !tbaa !2428
  %3609 = load i64, i64* %RBP
  %3610 = sub i64 %3609, 28
  %3611 = load i32, i32* %EAX
  %3612 = zext i32 %3611 to i64
  %3613 = load i64, i64* %PC
  %3614 = add i64 %3613, 3
  store i64 %3614, i64* %PC
  %3615 = inttoptr i64 %3610 to i32*
  store i32 %3611, i32* %3615
  br label %block_400c4d

block_400db8:                                     ; preds = %block_400dac
  %3616 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3617 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3618 = bitcast %union.vec128_t* %XMM0 to i8*
  %3619 = load i64, i64* %PC
  %3620 = add i64 %3619, 3
  store i64 %3620, i64* %PC
  %3621 = bitcast i8* %3617 to i64*
  %3622 = load i64, i64* %3621, align 1
  %3623 = getelementptr inbounds i8, i8* %3617, i64 8
  %3624 = bitcast i8* %3623 to i64*
  %3625 = load i64, i64* %3624, align 1
  %3626 = bitcast i8* %3618 to i64*
  %3627 = load i64, i64* %3626, align 1
  %3628 = getelementptr inbounds i8, i8* %3618, i64 8
  %3629 = bitcast i8* %3628 to i64*
  %3630 = load i64, i64* %3629, align 1
  %3631 = xor i64 %3627, %3622
  %3632 = xor i64 %3630, %3625
  %3633 = trunc i64 %3631 to i32
  %3634 = lshr i64 %3631, 32
  %3635 = trunc i64 %3634 to i32
  %3636 = bitcast i8* %3616 to i32*
  store i32 %3633, i32* %3636, align 1, !tbaa !2454
  %3637 = getelementptr inbounds i8, i8* %3616, i64 4
  %3638 = bitcast i8* %3637 to i32*
  store i32 %3635, i32* %3638, align 1, !tbaa !2454
  %3639 = trunc i64 %3632 to i32
  %3640 = getelementptr inbounds i8, i8* %3616, i64 8
  %3641 = bitcast i8* %3640 to i32*
  store i32 %3639, i32* %3641, align 1, !tbaa !2454
  %3642 = lshr i64 %3632, 32
  %3643 = trunc i64 %3642 to i32
  %3644 = getelementptr inbounds i8, i8* %3616, i64 12
  %3645 = bitcast i8* %3644 to i32*
  store i32 %3643, i32* %3645, align 1, !tbaa !2454
  %3646 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3647 = load i64, i64* %PC
  %3648 = add i64 %3647, 8
  store i64 %3648, i64* %PC
  %3649 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 40) to double*)
  %3650 = bitcast i8* %3646 to double*
  store double %3649, double* %3650, align 1, !tbaa !2452
  %3651 = getelementptr inbounds i8, i8* %3646, i64 8
  %3652 = bitcast i8* %3651 to double*
  store double 0.000000e+00, double* %3652, align 1, !tbaa !2452
  %3653 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %3654 = load i64, i64* %PC
  %3655 = add i64 %3654, 8
  store i64 %3655, i64* %PC
  %3656 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 48) to double*)
  %3657 = bitcast i8* %3653 to double*
  store double %3656, double* %3657, align 1, !tbaa !2452
  %3658 = getelementptr inbounds i8, i8* %3653, i64 8
  %3659 = bitcast i8* %3658 to double*
  store double 0.000000e+00, double* %3659, align 1, !tbaa !2452
  %3660 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %3661 = load i64, i64* %PC
  %3662 = add i64 %3661, 8
  store i64 %3662, i64* %PC
  %3663 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 56) to double*)
  %3664 = bitcast i8* %3660 to double*
  store double %3663, double* %3664, align 1, !tbaa !2452
  %3665 = getelementptr inbounds i8, i8* %3660, i64 8
  %3666 = bitcast i8* %3665 to double*
  store double 0.000000e+00, double* %3666, align 1, !tbaa !2452
  %3667 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %3668 = load i64, i64* %PC
  %3669 = add i64 %3668, 8
  store i64 %3669, i64* %PC
  %3670 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010f0__rodata_type* @seg_4010f0__rodata to i64), i64 64) to double*)
  %3671 = bitcast i8* %3667 to double*
  store double %3670, double* %3671, align 1, !tbaa !2452
  %3672 = getelementptr inbounds i8, i8* %3667, i64 8
  %3673 = bitcast i8* %3672 to double*
  store double 0.000000e+00, double* %3673, align 1, !tbaa !2452
  %3674 = load i64, i64* %RBP
  %3675 = sub i64 %3674, 60
  %3676 = load i64, i64* %PC
  %3677 = add i64 %3676, 3
  store i64 %3677, i64* %PC
  %3678 = inttoptr i64 %3675 to i32*
  %3679 = load i32, i32* %3678
  %3680 = zext i32 %3679 to i64
  store i64 %3680, i64* %RAX, align 8, !tbaa !2428
  %3681 = load i64, i64* %RAX
  %3682 = load i64, i64* %PC
  %3683 = add i64 %3682, 3
  store i64 %3683, i64* %PC
  %3684 = trunc i64 %3681 to i32
  %3685 = shl i32 %3684, 1
  %3686 = icmp slt i32 %3684, 0
  %3687 = icmp slt i32 %3685, 0
  %3688 = xor i1 %3686, %3687
  %3689 = zext i32 %3685 to i64
  store i64 %3689, i64* %RAX, align 8, !tbaa !2428
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3691 = zext i1 %3686 to i8
  store i8 %3691, i8* %3690, align 1, !tbaa !2451
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3693 = and i32 %3685, 254
  %3694 = call i32 @llvm.ctpop.i32(i32 %3693) #17
  %3695 = trunc i32 %3694 to i8
  %3696 = and i8 %3695, 1
  %3697 = xor i8 %3696, 1
  store i8 %3697, i8* %3692, align 1, !tbaa !2451
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3698, align 1, !tbaa !2451
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3700 = icmp eq i32 %3685, 0
  %3701 = zext i1 %3700 to i8
  store i8 %3701, i8* %3699, align 1, !tbaa !2451
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3703 = lshr i32 %3685, 31
  %3704 = trunc i32 %3703 to i8
  store i8 %3704, i8* %3702, align 1, !tbaa !2451
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3706 = zext i1 %3688 to i8
  store i8 %3706, i8* %3705, align 1, !tbaa !2451
  %3707 = load i64, i64* %RBP
  %3708 = sub i64 %3707, 64
  %3709 = load i32, i32* %EAX
  %3710 = zext i32 %3709 to i64
  %3711 = load i64, i64* %PC
  %3712 = add i64 %3711, 3
  store i64 %3712, i64* %PC
  %3713 = inttoptr i64 %3708 to i32*
  store i32 %3709, i32* %3713
  %3714 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %3715 = load i64, i64* %RBP
  %3716 = sub i64 %3715, 24
  %3717 = load i64, i64* %PC
  %3718 = add i64 %3717, 5
  store i64 %3718, i64* %PC
  %3719 = inttoptr i64 %3716 to i32*
  %3720 = load i32, i32* %3719
  %3721 = sitofp i32 %3720 to double
  %3722 = bitcast i8* %3714 to double*
  store double %3721, double* %3722, align 1, !tbaa !2452
  %3723 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %3724 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %3725 = bitcast %union.vec128_t* %XMM4 to i8*
  %3726 = load i64, i64* %PC
  %3727 = add i64 %3726, 4
  store i64 %3727, i64* %PC
  %3728 = bitcast i8* %3724 to double*
  %3729 = load double, double* %3728, align 1
  %3730 = getelementptr inbounds i8, i8* %3724, i64 8
  %3731 = bitcast i8* %3730 to i64*
  %3732 = load i64, i64* %3731, align 1
  %3733 = bitcast i8* %3725 to double*
  %3734 = load double, double* %3733, align 1
  %3735 = fmul double %3729, %3734
  %3736 = bitcast i8* %3723 to double*
  store double %3735, double* %3736, align 1, !tbaa !2452
  %3737 = getelementptr inbounds i8, i8* %3723, i64 8
  %3738 = bitcast i8* %3737 to i64*
  store i64 %3732, i64* %3738, align 1, !tbaa !2452
  %3739 = load i64, i64* %RBP
  %3740 = sub i64 %3739, 64
  %3741 = load i64, i64* %PC
  %3742 = add i64 %3741, 3
  store i64 %3742, i64* %PC
  %3743 = inttoptr i64 %3740 to i32*
  %3744 = load i32, i32* %3743
  %3745 = zext i32 %3744 to i64
  store i64 %3745, i64* %RAX, align 8, !tbaa !2428
  %3746 = load i64, i64* %PC
  %3747 = add i64 %3746, 1
  store i64 %3747, i64* %PC
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3750 = bitcast %union.anon* %3749 to i32*
  %3751 = load i32, i32* %3750, align 8, !tbaa !2454
  %3752 = sext i32 %3751 to i64
  %3753 = lshr i64 %3752, 32
  store i64 %3753, i64* %3748, align 8, !tbaa !2428
  %3754 = load i64, i64* %RBP
  %3755 = sub i64 %3754, 48
  %3756 = load i64, i64* %PC
  %3757 = add i64 %3756, 3
  store i64 %3757, i64* %PC
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3759 = bitcast %union.anon* %3758 to i32*
  %3760 = load i32, i32* %3759, align 8, !tbaa !2454
  %3761 = zext i32 %3760 to i64
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3763 = bitcast %union.anon* %3762 to i32*
  %3764 = load i32, i32* %3763, align 8, !tbaa !2454
  %3765 = zext i32 %3764 to i64
  %3766 = inttoptr i64 %3755 to i32*
  %3767 = load i32, i32* %3766
  %3768 = sext i32 %3767 to i64
  %3769 = shl nuw i64 %3765, 32
  %3770 = or i64 %3769, %3761
  %3771 = sdiv i64 %3770, %3768
  %3772 = shl i64 %3771, 32
  %3773 = ashr exact i64 %3772, 32
  %3774 = icmp eq i64 %3771, %3773
  br i1 %3774, label %3779, label %3775

; <label>:3775:                                   ; preds = %block_400db8
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3777 = load i64, i64* %3776, align 8, !tbaa !2428
  %3778 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3777, %struct.Memory* %MEMORY.6) #18
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:3779:                                   ; preds = %block_400db8
  %3780 = srem i64 %3770, %3768
  %3781 = getelementptr inbounds %union.anon, %union.anon* %3758, i64 0, i32 0
  %3782 = and i64 %3771, 4294967295
  store i64 %3782, i64* %3781, align 8, !tbaa !2428
  %3783 = getelementptr inbounds %union.anon, %union.anon* %3762, i64 0, i32 0
  %3784 = and i64 %3780, 4294967295
  store i64 %3784, i64* %3783, align 8, !tbaa !2428
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3785, align 1, !tbaa !2432
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3786, align 1, !tbaa !2446
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3787, align 1, !tbaa !2447
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3788, align 1, !tbaa !2448
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3789, align 1, !tbaa !2449
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3790, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %3775, %3779
  %3791 = phi %struct.Memory* [ %3778, %3775 ], [ %MEMORY.6, %3779 ]
  %3792 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %3793 = load i32, i32* %EAX
  %3794 = zext i32 %3793 to i64
  %3795 = load i64, i64* %PC
  %3796 = add i64 %3795, 4
  store i64 %3796, i64* %PC
  %3797 = sitofp i32 %3793 to double
  %3798 = bitcast i8* %3792 to double*
  store double %3797, double* %3798, align 1, !tbaa !2452
  %3799 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %3800 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %3801 = bitcast %union.vec128_t* %XMM4 to i8*
  %3802 = load i64, i64* %PC
  %3803 = add i64 %3802, 4
  store i64 %3803, i64* %PC
  %3804 = bitcast i8* %3800 to double*
  %3805 = load double, double* %3804, align 1
  %3806 = getelementptr inbounds i8, i8* %3800, i64 8
  %3807 = bitcast i8* %3806 to i64*
  %3808 = load i64, i64* %3807, align 1
  %3809 = bitcast i8* %3801 to double*
  %3810 = load double, double* %3809, align 1
  %3811 = fdiv double %3805, %3810
  %3812 = bitcast i8* %3799 to double*
  store double %3811, double* %3812, align 1, !tbaa !2452
  %3813 = getelementptr inbounds i8, i8* %3799, i64 8
  %3814 = bitcast i8* %3813 to i64*
  store i64 %3808, i64* %3814, align 1, !tbaa !2452
  %3815 = load i64, i64* %RBP
  %3816 = sub i64 %3815, 120
  %3817 = bitcast %union.vec128_t* %XMM5 to i8*
  %3818 = load i64, i64* %PC
  %3819 = add i64 %3818, 5
  store i64 %3819, i64* %PC
  %3820 = bitcast i8* %3817 to double*
  %3821 = load double, double* %3820, align 1
  %3822 = inttoptr i64 %3816 to double*
  store double %3821, double* %3822
  %3823 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %3824 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %3825 = load i64, i64* %RBP
  %3826 = sub i64 %3825, 120
  %3827 = load i64, i64* %PC
  %3828 = add i64 %3827, 5
  store i64 %3828, i64* %PC
  %3829 = bitcast i8* %3824 to double*
  %3830 = load double, double* %3829, align 1
  %3831 = getelementptr inbounds i8, i8* %3824, i64 8
  %3832 = bitcast i8* %3831 to i64*
  %3833 = load i64, i64* %3832, align 1
  %3834 = inttoptr i64 %3826 to double*
  %3835 = load double, double* %3834
  %3836 = fmul double %3830, %3835
  %3837 = bitcast i8* %3823 to double*
  store double %3836, double* %3837, align 1, !tbaa !2452
  %3838 = getelementptr inbounds i8, i8* %3823, i64 8
  %3839 = bitcast i8* %3838 to i64*
  store i64 %3833, i64* %3839, align 1, !tbaa !2452
  %3840 = load i64, i64* %RBP
  %3841 = sub i64 %3840, 176
  %3842 = bitcast %union.vec128_t* %XMM0 to i8*
  %3843 = load i64, i64* %PC
  %3844 = add i64 %3843, 8
  store i64 %3844, i64* %PC
  %3845 = bitcast i8* %3842 to double*
  %3846 = load double, double* %3845, align 1
  %3847 = inttoptr i64 %3841 to double*
  store double %3846, double* %3847
  %3848 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3849 = bitcast %union.vec128_t* %XMM3 to i8*
  %3850 = load i64, i64* %PC
  %3851 = add i64 %3850, 3
  store i64 %3851, i64* %PC
  %3852 = bitcast i8* %3849 to <2 x i32>*
  %3853 = load <2 x i32>, <2 x i32>* %3852, align 1
  %3854 = getelementptr inbounds i8, i8* %3849, i64 8
  %3855 = bitcast i8* %3854 to <2 x i32>*
  %3856 = load <2 x i32>, <2 x i32>* %3855, align 1
  %3857 = extractelement <2 x i32> %3853, i32 0
  %3858 = bitcast i8* %3848 to i32*
  store i32 %3857, i32* %3858, align 1, !tbaa !2455
  %3859 = extractelement <2 x i32> %3853, i32 1
  %3860 = getelementptr inbounds i8, i8* %3848, i64 4
  %3861 = bitcast i8* %3860 to i32*
  store i32 %3859, i32* %3861, align 1, !tbaa !2455
  %3862 = extractelement <2 x i32> %3856, i32 0
  %3863 = getelementptr inbounds i8, i8* %3848, i64 8
  %3864 = bitcast i8* %3863 to i32*
  store i32 %3862, i32* %3864, align 1, !tbaa !2455
  %3865 = extractelement <2 x i32> %3856, i32 1
  %3866 = getelementptr inbounds i8, i8* %3848, i64 12
  %3867 = bitcast i8* %3866 to i32*
  store i32 %3865, i32* %3867, align 1, !tbaa !2455
  %3868 = load i64, i64* %RBP
  %3869 = sub i64 %3868, 184
  %3870 = bitcast %union.vec128_t* %XMM2 to i8*
  %3871 = load i64, i64* %PC
  %3872 = add i64 %3871, 8
  store i64 %3872, i64* %PC
  %3873 = bitcast i8* %3870 to double*
  %3874 = load double, double* %3873, align 1
  %3875 = inttoptr i64 %3869 to double*
  store double %3874, double* %3875
  %3876 = load i64, i64* %RBP
  %3877 = sub i64 %3876, 192
  %3878 = bitcast %union.vec128_t* %XMM1 to i8*
  %3879 = load i64, i64* %PC
  %3880 = add i64 %3879, 8
  store i64 %3880, i64* %PC
  %3881 = bitcast i8* %3878 to double*
  %3882 = load double, double* %3881, align 1
  %3883 = inttoptr i64 %3877 to double*
  store double %3882, double* %3883
  %3884 = load i64, i64* %PC
  %3885 = sub i64 %3884, 2177
  %3886 = load i64, i64* %PC
  %3887 = add i64 %3886, 5
  %3888 = load i64, i64* %PC
  %3889 = add i64 %3888, 5
  store i64 %3889, i64* %PC
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3891 = load i64, i64* %3890, align 8, !tbaa !2428
  %3892 = add i64 %3891, -8
  %3893 = inttoptr i64 %3892 to i64*
  store i64 %3887, i64* %3893
  store i64 %3892, i64* %3890, align 8, !tbaa !2428
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3885, i64* %3894, align 8, !tbaa !2428
  %3895 = load i64, i64* %PC
  %3896 = bitcast %struct.State** %state.i1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3896)
  %3897 = bitcast i64* %curr_pc.i2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3897)
  %3898 = bitcast %struct.Memory** %memory.i3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3898)
  call void @llvm.lifetime.start(i64 1, i8* %BRANCH_TAKEN.i4)
  %3899 = bitcast i64* %SS_BASE.i5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3899)
  %3900 = bitcast i64* %ES_BASE.i6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3900)
  %3901 = bitcast i64* %DS_BASE.i7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3901)
  %3902 = bitcast i64* %CS_BASE.i8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3902)
  %3903 = bitcast %struct.State** %STATE.i9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3903)
  %3904 = bitcast %struct.Memory** %MEMORY.i10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3904)
  %3905 = bitcast i64** %_DR0.i11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3905)
  %3906 = bitcast i64** %_DR1.i12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3906)
  %3907 = bitcast i64** %_DR2.i13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3907)
  %3908 = bitcast i64** %_DR3.i14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3908)
  %3909 = bitcast i64** %_DR4.i15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3909)
  %3910 = bitcast i64** %_DR5.i16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3910)
  %3911 = bitcast i64** %_DR6.i17 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3911)
  %3912 = bitcast i64** %_DR7.i18 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3912)
  %3913 = bitcast i64** %CR0.i19 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3913)
  %3914 = bitcast i64** %CR1.i20 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3914)
  %3915 = bitcast i64** %CR2.i21 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3915)
  %3916 = bitcast i64** %CR3.i22 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3916)
  %3917 = bitcast i64** %CR4.i23 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3917)
  %3918 = bitcast i64** %CR8.i24 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3918)
  store %struct.State* %0, %struct.State** %state.i1, align 8, !noalias !2457
  store i64 %3895, i64* %curr_pc.i2, align 8, !noalias !2457
  store %struct.Memory* %3791, %struct.Memory** %memory.i3, align 8, !noalias !2457
  store i8 0, i8* %BRANCH_TAKEN.i4, align 1, !noalias !2457
  store i64 0, i64* %SS_BASE.i5, align 8, !noalias !2457
  store i64 0, i64* %ES_BASE.i6, align 8, !noalias !2457
  store i64 0, i64* %DS_BASE.i7, align 8, !noalias !2457
  store i64 0, i64* %CS_BASE.i8, align 8, !noalias !2457
  store %struct.State* %0, %struct.State** %STATE.i9, align 8, !noalias !2457
  store %struct.Memory* %3791, %struct.Memory** %MEMORY.i10, align 8, !noalias !2457
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3920 = getelementptr inbounds %struct.GPR, %struct.GPR* %3919, i32 0, i32 33
  %3921 = getelementptr inbounds %struct.Reg, %struct.Reg* %3920, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3921 to i64*
  store i64 %3895, i64* %PC.i25, align 8, !alias.scope !2461, !noalias !2462
  %3922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3923 = getelementptr inbounds %struct.GPR, %struct.GPR* %3922, i32 0, i32 1
  %3924 = getelementptr inbounds %struct.Reg, %struct.Reg* %3923, i32 0, i32 0
  %3925 = bitcast %union.anon* %3924 to %struct.anon.2*
  %AH.i26 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3925, i32 0, i32 1
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 3
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %3929 = bitcast %union.anon* %3928 to %struct.anon.2*
  %BH.i27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3929, i32 0, i32 1
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3931 = getelementptr inbounds %struct.GPR, %struct.GPR* %3930, i32 0, i32 5
  %3932 = getelementptr inbounds %struct.Reg, %struct.Reg* %3931, i32 0, i32 0
  %3933 = bitcast %union.anon* %3932 to %struct.anon.2*
  %CH.i28 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3933, i32 0, i32 1
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 7
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %3937 = bitcast %union.anon* %3936 to %struct.anon.2*
  %DH.i29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3937, i32 0, i32 1
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 1
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %3941 = bitcast %union.anon* %3940 to %struct.anon.2*
  %AL.i30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3941, i32 0, i32 0
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 3
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %3945 = bitcast %union.anon* %3944 to %struct.anon.2*
  %BL.i31 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3945, i32 0, i32 0
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 5
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %3949 = bitcast %union.anon* %3948 to %struct.anon.2*
  %CL.i32 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3949, i32 0, i32 0
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3951 = getelementptr inbounds %struct.GPR, %struct.GPR* %3950, i32 0, i32 7
  %3952 = getelementptr inbounds %struct.Reg, %struct.Reg* %3951, i32 0, i32 0
  %3953 = bitcast %union.anon* %3952 to %struct.anon.2*
  %DL.i33 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3953, i32 0, i32 0
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 9
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %3957 = bitcast %union.anon* %3956 to %struct.anon.2*
  %SIL.i34 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3957, i32 0, i32 0
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 11
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %3961 = bitcast %union.anon* %3960 to %struct.anon.2*
  %DIL.i35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3961, i32 0, i32 0
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3963 = getelementptr inbounds %struct.GPR, %struct.GPR* %3962, i32 0, i32 13
  %3964 = getelementptr inbounds %struct.Reg, %struct.Reg* %3963, i32 0, i32 0
  %3965 = bitcast %union.anon* %3964 to %struct.anon.2*
  %SPL.i36 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3965, i32 0, i32 0
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 15
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %3969 = bitcast %union.anon* %3968 to %struct.anon.2*
  %BPL.i37 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3969, i32 0, i32 0
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 17
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %3973 = bitcast %union.anon* %3972 to %struct.anon.2*
  %R8B.i38 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3973, i32 0, i32 0
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3975 = getelementptr inbounds %struct.GPR, %struct.GPR* %3974, i32 0, i32 19
  %3976 = getelementptr inbounds %struct.Reg, %struct.Reg* %3975, i32 0, i32 0
  %3977 = bitcast %union.anon* %3976 to %struct.anon.2*
  %R9B.i39 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3977, i32 0, i32 0
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 21
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %3981 = bitcast %union.anon* %3980 to %struct.anon.2*
  %R10B.i40 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3981, i32 0, i32 0
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 23
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %3985 = bitcast %union.anon* %3984 to %struct.anon.2*
  %R11B.i41 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3985, i32 0, i32 0
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 25
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %3989 = bitcast %union.anon* %3988 to %struct.anon.2*
  %R12B.i42 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3989, i32 0, i32 0
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 27
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %3993 = bitcast %union.anon* %3992 to %struct.anon.2*
  %R13B.i43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3993, i32 0, i32 0
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 29
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %3997 = bitcast %union.anon* %3996 to %struct.anon.2*
  %R14B.i44 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3997, i32 0, i32 0
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3999 = getelementptr inbounds %struct.GPR, %struct.GPR* %3998, i32 0, i32 31
  %4000 = getelementptr inbounds %struct.Reg, %struct.Reg* %3999, i32 0, i32 0
  %4001 = bitcast %union.anon* %4000 to %struct.anon.2*
  %R15B.i45 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4001, i32 0, i32 0
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 1
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %AX.i46 = bitcast %union.anon* %4004 to i16*
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 3
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %BX.i47 = bitcast %union.anon* %4007 to i16*
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 5
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %CX.i48 = bitcast %union.anon* %4010 to i16*
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4012 = getelementptr inbounds %struct.GPR, %struct.GPR* %4011, i32 0, i32 7
  %4013 = getelementptr inbounds %struct.Reg, %struct.Reg* %4012, i32 0, i32 0
  %DX.i49 = bitcast %union.anon* %4013 to i16*
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4015 = getelementptr inbounds %struct.GPR, %struct.GPR* %4014, i32 0, i32 9
  %4016 = getelementptr inbounds %struct.Reg, %struct.Reg* %4015, i32 0, i32 0
  %SI.i50 = bitcast %union.anon* %4016 to i16*
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4018 = getelementptr inbounds %struct.GPR, %struct.GPR* %4017, i32 0, i32 11
  %4019 = getelementptr inbounds %struct.Reg, %struct.Reg* %4018, i32 0, i32 0
  %DI.i51 = bitcast %union.anon* %4019 to i16*
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 13
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %SP.i52 = bitcast %union.anon* %4022 to i16*
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4024 = getelementptr inbounds %struct.GPR, %struct.GPR* %4023, i32 0, i32 15
  %4025 = getelementptr inbounds %struct.Reg, %struct.Reg* %4024, i32 0, i32 0
  %BP.i53 = bitcast %union.anon* %4025 to i16*
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4027 = getelementptr inbounds %struct.GPR, %struct.GPR* %4026, i32 0, i32 17
  %4028 = getelementptr inbounds %struct.Reg, %struct.Reg* %4027, i32 0, i32 0
  %R8W.i54 = bitcast %union.anon* %4028 to i16*
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4030 = getelementptr inbounds %struct.GPR, %struct.GPR* %4029, i32 0, i32 19
  %4031 = getelementptr inbounds %struct.Reg, %struct.Reg* %4030, i32 0, i32 0
  %R9W.i55 = bitcast %union.anon* %4031 to i16*
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4033 = getelementptr inbounds %struct.GPR, %struct.GPR* %4032, i32 0, i32 21
  %4034 = getelementptr inbounds %struct.Reg, %struct.Reg* %4033, i32 0, i32 0
  %R10W.i56 = bitcast %union.anon* %4034 to i16*
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4036 = getelementptr inbounds %struct.GPR, %struct.GPR* %4035, i32 0, i32 23
  %4037 = getelementptr inbounds %struct.Reg, %struct.Reg* %4036, i32 0, i32 0
  %R11W.i57 = bitcast %union.anon* %4037 to i16*
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 25
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %R12W.i58 = bitcast %union.anon* %4040 to i16*
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 27
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %R13W.i59 = bitcast %union.anon* %4043 to i16*
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 29
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %R14W.i60 = bitcast %union.anon* %4046 to i16*
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 31
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %R15W.i61 = bitcast %union.anon* %4049 to i16*
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 33
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %IP.i62 = bitcast %union.anon* %4052 to i16*
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4054 = getelementptr inbounds %struct.GPR, %struct.GPR* %4053, i32 0, i32 1
  %4055 = getelementptr inbounds %struct.Reg, %struct.Reg* %4054, i32 0, i32 0
  %EAX.i63 = bitcast %union.anon* %4055 to i32*
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4057 = getelementptr inbounds %struct.GPR, %struct.GPR* %4056, i32 0, i32 3
  %4058 = getelementptr inbounds %struct.Reg, %struct.Reg* %4057, i32 0, i32 0
  %EBX.i64 = bitcast %union.anon* %4058 to i32*
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 5
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %ECX.i65 = bitcast %union.anon* %4061 to i32*
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4063 = getelementptr inbounds %struct.GPR, %struct.GPR* %4062, i32 0, i32 7
  %4064 = getelementptr inbounds %struct.Reg, %struct.Reg* %4063, i32 0, i32 0
  %EDX.i66 = bitcast %union.anon* %4064 to i32*
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4066 = getelementptr inbounds %struct.GPR, %struct.GPR* %4065, i32 0, i32 9
  %4067 = getelementptr inbounds %struct.Reg, %struct.Reg* %4066, i32 0, i32 0
  %ESI.i67 = bitcast %union.anon* %4067 to i32*
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4069 = getelementptr inbounds %struct.GPR, %struct.GPR* %4068, i32 0, i32 11
  %4070 = getelementptr inbounds %struct.Reg, %struct.Reg* %4069, i32 0, i32 0
  %EDI.i68 = bitcast %union.anon* %4070 to i32*
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4072 = getelementptr inbounds %struct.GPR, %struct.GPR* %4071, i32 0, i32 13
  %4073 = getelementptr inbounds %struct.Reg, %struct.Reg* %4072, i32 0, i32 0
  %ESP.i69 = bitcast %union.anon* %4073 to i32*
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4075 = getelementptr inbounds %struct.GPR, %struct.GPR* %4074, i32 0, i32 15
  %4076 = getelementptr inbounds %struct.Reg, %struct.Reg* %4075, i32 0, i32 0
  %EBP.i70 = bitcast %union.anon* %4076 to i32*
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 33
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %EIP.i71 = bitcast %union.anon* %4079 to i32*
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 17
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %R8D.i72 = bitcast %union.anon* %4082 to i32*
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 19
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %R9D.i73 = bitcast %union.anon* %4085 to i32*
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4087 = getelementptr inbounds %struct.GPR, %struct.GPR* %4086, i32 0, i32 21
  %4088 = getelementptr inbounds %struct.Reg, %struct.Reg* %4087, i32 0, i32 0
  %R10D.i74 = bitcast %union.anon* %4088 to i32*
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4090 = getelementptr inbounds %struct.GPR, %struct.GPR* %4089, i32 0, i32 23
  %4091 = getelementptr inbounds %struct.Reg, %struct.Reg* %4090, i32 0, i32 0
  %R11D.i75 = bitcast %union.anon* %4091 to i32*
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4093 = getelementptr inbounds %struct.GPR, %struct.GPR* %4092, i32 0, i32 25
  %4094 = getelementptr inbounds %struct.Reg, %struct.Reg* %4093, i32 0, i32 0
  %R12D.i76 = bitcast %union.anon* %4094 to i32*
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 27
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %R13D.i77 = bitcast %union.anon* %4097 to i32*
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4099 = getelementptr inbounds %struct.GPR, %struct.GPR* %4098, i32 0, i32 29
  %4100 = getelementptr inbounds %struct.Reg, %struct.Reg* %4099, i32 0, i32 0
  %R14D.i78 = bitcast %union.anon* %4100 to i32*
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4102 = getelementptr inbounds %struct.GPR, %struct.GPR* %4101, i32 0, i32 31
  %4103 = getelementptr inbounds %struct.Reg, %struct.Reg* %4102, i32 0, i32 0
  %R15D.i79 = bitcast %union.anon* %4103 to i32*
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 1
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %4106 to i64*
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 3
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %RBX.i81 = bitcast %union.anon* %4109 to i64*
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4111 = getelementptr inbounds %struct.GPR, %struct.GPR* %4110, i32 0, i32 5
  %4112 = getelementptr inbounds %struct.Reg, %struct.Reg* %4111, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %4112 to i64*
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4114 = getelementptr inbounds %struct.GPR, %struct.GPR* %4113, i32 0, i32 7
  %4115 = getelementptr inbounds %struct.Reg, %struct.Reg* %4114, i32 0, i32 0
  %RDX.i83 = bitcast %union.anon* %4115 to i64*
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 9
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %RSI.i84 = bitcast %union.anon* %4118 to i64*
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4120 = getelementptr inbounds %struct.GPR, %struct.GPR* %4119, i32 0, i32 11
  %4121 = getelementptr inbounds %struct.Reg, %struct.Reg* %4120, i32 0, i32 0
  %RDI.i85 = bitcast %union.anon* %4121 to i64*
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4123 = getelementptr inbounds %struct.GPR, %struct.GPR* %4122, i32 0, i32 13
  %4124 = getelementptr inbounds %struct.Reg, %struct.Reg* %4123, i32 0, i32 0
  %RSP.i86 = bitcast %union.anon* %4124 to i64*
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4126 = getelementptr inbounds %struct.GPR, %struct.GPR* %4125, i32 0, i32 15
  %4127 = getelementptr inbounds %struct.Reg, %struct.Reg* %4126, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %4127 to i64*
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 17
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %R8.i88 = bitcast %union.anon* %4130 to i64*
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 19
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %R9.i89 = bitcast %union.anon* %4133 to i64*
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4135 = getelementptr inbounds %struct.GPR, %struct.GPR* %4134, i32 0, i32 21
  %4136 = getelementptr inbounds %struct.Reg, %struct.Reg* %4135, i32 0, i32 0
  %R10.i90 = bitcast %union.anon* %4136 to i64*
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4138 = getelementptr inbounds %struct.GPR, %struct.GPR* %4137, i32 0, i32 23
  %4139 = getelementptr inbounds %struct.Reg, %struct.Reg* %4138, i32 0, i32 0
  %R11.i91 = bitcast %union.anon* %4139 to i64*
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4141 = getelementptr inbounds %struct.GPR, %struct.GPR* %4140, i32 0, i32 25
  %4142 = getelementptr inbounds %struct.Reg, %struct.Reg* %4141, i32 0, i32 0
  %R12.i92 = bitcast %union.anon* %4142 to i64*
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4144 = getelementptr inbounds %struct.GPR, %struct.GPR* %4143, i32 0, i32 27
  %4145 = getelementptr inbounds %struct.Reg, %struct.Reg* %4144, i32 0, i32 0
  %R13.i93 = bitcast %union.anon* %4145 to i64*
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4147 = getelementptr inbounds %struct.GPR, %struct.GPR* %4146, i32 0, i32 29
  %4148 = getelementptr inbounds %struct.Reg, %struct.Reg* %4147, i32 0, i32 0
  %R14.i94 = bitcast %union.anon* %4148 to i64*
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4150 = getelementptr inbounds %struct.GPR, %struct.GPR* %4149, i32 0, i32 31
  %4151 = getelementptr inbounds %struct.Reg, %struct.Reg* %4150, i32 0, i32 0
  %R15.i95 = bitcast %union.anon* %4151 to i64*
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 33
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %RIP.i96 = bitcast %union.anon* %4154 to i64*
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4156 = getelementptr inbounds %struct.Segments, %struct.Segments* %4155, i32 0, i32 1
  %SS.i97 = bitcast %union.SegmentSelector* %4156 to i16*
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4158 = getelementptr inbounds %struct.Segments, %struct.Segments* %4157, i32 0, i32 3
  %ES.i98 = bitcast %union.SegmentSelector* %4158 to i16*
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4160 = getelementptr inbounds %struct.Segments, %struct.Segments* %4159, i32 0, i32 5
  %GS.i99 = bitcast %union.SegmentSelector* %4160 to i16*
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4162 = getelementptr inbounds %struct.Segments, %struct.Segments* %4161, i32 0, i32 7
  %FS.i100 = bitcast %union.SegmentSelector* %4162 to i16*
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4164 = getelementptr inbounds %struct.Segments, %struct.Segments* %4163, i32 0, i32 9
  %DS.i101 = bitcast %union.SegmentSelector* %4164 to i16*
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4166 = getelementptr inbounds %struct.Segments, %struct.Segments* %4165, i32 0, i32 11
  %CS.i102 = bitcast %union.SegmentSelector* %4166 to i16*
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %4168 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %4167, i32 0, i32 5
  %4169 = getelementptr inbounds %struct.Reg, %struct.Reg* %4168, i32 0, i32 0
  %GS_BASE.i103 = bitcast %union.anon* %4169 to i64*
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %4171 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %4170, i32 0, i32 7
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %FS_BASE.i104 = bitcast %union.anon* %4172 to i64*
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4174 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4173, i64 0, i64 0
  %YMM0.i105 = bitcast %union.VectorReg* %4174 to %"class.std::bitset"*
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4176 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4175, i64 0, i64 1
  %YMM1.i106 = bitcast %union.VectorReg* %4176 to %"class.std::bitset"*
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4178 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4177, i64 0, i64 2
  %YMM2.i107 = bitcast %union.VectorReg* %4178 to %"class.std::bitset"*
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4180 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4179, i64 0, i64 3
  %YMM3.i108 = bitcast %union.VectorReg* %4180 to %"class.std::bitset"*
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4182 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4181, i64 0, i64 4
  %YMM4.i109 = bitcast %union.VectorReg* %4182 to %"class.std::bitset"*
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4184 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4183, i64 0, i64 5
  %YMM5.i110 = bitcast %union.VectorReg* %4184 to %"class.std::bitset"*
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4186 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4185, i64 0, i64 6
  %YMM6.i111 = bitcast %union.VectorReg* %4186 to %"class.std::bitset"*
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4188 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4187, i64 0, i64 7
  %YMM7.i112 = bitcast %union.VectorReg* %4188 to %"class.std::bitset"*
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4190 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4189, i64 0, i64 8
  %YMM8.i113 = bitcast %union.VectorReg* %4190 to %"class.std::bitset"*
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4192 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4191, i64 0, i64 9
  %YMM9.i114 = bitcast %union.VectorReg* %4192 to %"class.std::bitset"*
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4194 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4193, i64 0, i64 10
  %YMM10.i115 = bitcast %union.VectorReg* %4194 to %"class.std::bitset"*
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4196 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4195, i64 0, i64 11
  %YMM11.i116 = bitcast %union.VectorReg* %4196 to %"class.std::bitset"*
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4198 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4197, i64 0, i64 12
  %YMM12.i117 = bitcast %union.VectorReg* %4198 to %"class.std::bitset"*
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4199, i64 0, i64 13
  %YMM13.i118 = bitcast %union.VectorReg* %4200 to %"class.std::bitset"*
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4202 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4201, i64 0, i64 14
  %YMM14.i119 = bitcast %union.VectorReg* %4202 to %"class.std::bitset"*
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4204 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4203, i64 0, i64 15
  %YMM15.i120 = bitcast %union.VectorReg* %4204 to %"class.std::bitset"*
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4206 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4205, i64 0, i64 0
  %XMM0.i121 = bitcast %union.VectorReg* %4206 to %union.vec128_t*
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4208 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4207, i64 0, i64 1
  %XMM1.i122 = bitcast %union.VectorReg* %4208 to %union.vec128_t*
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4210 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4209, i64 0, i64 2
  %XMM2.i123 = bitcast %union.VectorReg* %4210 to %union.vec128_t*
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4212 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4211, i64 0, i64 3
  %XMM3.i124 = bitcast %union.VectorReg* %4212 to %union.vec128_t*
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4214 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4213, i64 0, i64 4
  %XMM4.i125 = bitcast %union.VectorReg* %4214 to %union.vec128_t*
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4216 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4215, i64 0, i64 5
  %XMM5.i126 = bitcast %union.VectorReg* %4216 to %union.vec128_t*
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4218 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4217, i64 0, i64 6
  %XMM6.i127 = bitcast %union.VectorReg* %4218 to %union.vec128_t*
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4220 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4219, i64 0, i64 7
  %XMM7.i128 = bitcast %union.VectorReg* %4220 to %union.vec128_t*
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4222 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4221, i64 0, i64 8
  %XMM8.i129 = bitcast %union.VectorReg* %4222 to %union.vec128_t*
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4224 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4223, i64 0, i64 9
  %XMM9.i130 = bitcast %union.VectorReg* %4224 to %union.vec128_t*
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4226 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4225, i64 0, i64 10
  %XMM10.i131 = bitcast %union.VectorReg* %4226 to %union.vec128_t*
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4228 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4227, i64 0, i64 11
  %XMM11.i132 = bitcast %union.VectorReg* %4228 to %union.vec128_t*
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4230 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4229, i64 0, i64 12
  %XMM12.i133 = bitcast %union.VectorReg* %4230 to %union.vec128_t*
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4232 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4231, i64 0, i64 13
  %XMM13.i134 = bitcast %union.VectorReg* %4232 to %union.vec128_t*
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4234 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4233, i64 0, i64 14
  %XMM14.i135 = bitcast %union.VectorReg* %4234 to %union.vec128_t*
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4236 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4235, i64 0, i64 15
  %XMM15.i136 = bitcast %union.VectorReg* %4236 to %union.vec128_t*
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4238 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4237, i32 0, i32 0
  %4239 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4238, i64 0, i64 0
  %ST0.i137 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4239, i32 0, i32 1
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4241 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4240, i32 0, i32 0
  %4242 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4241, i64 0, i64 1
  %ST1.i138 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4242, i32 0, i32 1
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4244 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4243, i32 0, i32 0
  %4245 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4244, i64 0, i64 2
  %ST2.i139 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4245, i32 0, i32 1
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4247 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4246, i32 0, i32 0
  %4248 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4247, i64 0, i64 3
  %ST3.i140 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4248, i32 0, i32 1
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4250 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4249, i32 0, i32 0
  %4251 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4250, i64 0, i64 4
  %ST4.i141 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4251, i32 0, i32 1
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4253 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4252, i32 0, i32 0
  %4254 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4253, i64 0, i64 5
  %ST5.i142 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4254, i32 0, i32 1
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4256 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4255, i32 0, i32 0
  %4257 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4256, i64 0, i64 6
  %ST6.i143 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4257, i32 0, i32 1
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4259 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4258, i32 0, i32 0
  %4260 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4259, i64 0, i64 7
  %ST7.i144 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4260, i32 0, i32 1
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4262 = getelementptr inbounds %struct.MMX, %struct.MMX* %4261, i32 0, i32 0
  %4263 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4262, i64 0, i64 0
  %4264 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4263, i32 0, i32 1
  %4265 = bitcast %union.vec64_t* %4264 to %struct.uint64v1_t*
  %4266 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4265, i32 0, i32 0
  %MM0.i145 = getelementptr inbounds [1 x i64], [1 x i64]* %4266, i64 0, i64 0
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4268 = getelementptr inbounds %struct.MMX, %struct.MMX* %4267, i32 0, i32 0
  %4269 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4268, i64 0, i64 1
  %4270 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4269, i32 0, i32 1
  %4271 = bitcast %union.vec64_t* %4270 to %struct.uint64v1_t*
  %4272 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4271, i32 0, i32 0
  %MM1.i146 = getelementptr inbounds [1 x i64], [1 x i64]* %4272, i64 0, i64 0
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4274 = getelementptr inbounds %struct.MMX, %struct.MMX* %4273, i32 0, i32 0
  %4275 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4274, i64 0, i64 2
  %4276 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4275, i32 0, i32 1
  %4277 = bitcast %union.vec64_t* %4276 to %struct.uint64v1_t*
  %4278 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4277, i32 0, i32 0
  %MM2.i147 = getelementptr inbounds [1 x i64], [1 x i64]* %4278, i64 0, i64 0
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4280 = getelementptr inbounds %struct.MMX, %struct.MMX* %4279, i32 0, i32 0
  %4281 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4280, i64 0, i64 3
  %4282 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4281, i32 0, i32 1
  %4283 = bitcast %union.vec64_t* %4282 to %struct.uint64v1_t*
  %4284 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4283, i32 0, i32 0
  %MM3.i148 = getelementptr inbounds [1 x i64], [1 x i64]* %4284, i64 0, i64 0
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4286 = getelementptr inbounds %struct.MMX, %struct.MMX* %4285, i32 0, i32 0
  %4287 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4286, i64 0, i64 4
  %4288 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4287, i32 0, i32 1
  %4289 = bitcast %union.vec64_t* %4288 to %struct.uint64v1_t*
  %4290 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4289, i32 0, i32 0
  %MM4.i149 = getelementptr inbounds [1 x i64], [1 x i64]* %4290, i64 0, i64 0
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4292 = getelementptr inbounds %struct.MMX, %struct.MMX* %4291, i32 0, i32 0
  %4293 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4292, i64 0, i64 5
  %4294 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4293, i32 0, i32 1
  %4295 = bitcast %union.vec64_t* %4294 to %struct.uint64v1_t*
  %4296 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4295, i32 0, i32 0
  %MM5.i150 = getelementptr inbounds [1 x i64], [1 x i64]* %4296, i64 0, i64 0
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4298 = getelementptr inbounds %struct.MMX, %struct.MMX* %4297, i32 0, i32 0
  %4299 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4298, i64 0, i64 6
  %4300 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4299, i32 0, i32 1
  %4301 = bitcast %union.vec64_t* %4300 to %struct.uint64v1_t*
  %4302 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4301, i32 0, i32 0
  %MM6.i151 = getelementptr inbounds [1 x i64], [1 x i64]* %4302, i64 0, i64 0
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4304 = getelementptr inbounds %struct.MMX, %struct.MMX* %4303, i32 0, i32 0
  %4305 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4304, i64 0, i64 7
  %4306 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4305, i32 0, i32 1
  %4307 = bitcast %union.vec64_t* %4306 to %struct.uint64v1_t*
  %4308 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4307, i32 0, i32 0
  %MM7.i152 = getelementptr inbounds [1 x i64], [1 x i64]* %4308, i64 0, i64 0
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %AF.i153 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4309, i32 0, i32 5
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %CF.i154 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4310, i32 0, i32 1
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %DF.i155 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4311, i32 0, i32 11
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %OF.i156 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4312, i32 0, i32 13
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %PF.i157 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4313, i32 0, i32 3
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %SF.i158 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4314, i32 0, i32 9
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %ZF.i159 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4315, i32 0, i32 7
  store i64* @DR0, i64** %_DR0.i11, align 8, !noalias !2457
  store i64* @DR1, i64** %_DR1.i12, align 8, !noalias !2457
  store i64* @DR2, i64** %_DR2.i13, align 8, !noalias !2457
  store i64* @DR3, i64** %_DR3.i14, align 8, !noalias !2457
  store i64* @DR4, i64** %_DR4.i15, align 8, !noalias !2457
  store i64* @DR5, i64** %_DR5.i16, align 8, !noalias !2457
  store i64* @DR6, i64** %_DR6.i17, align 8, !noalias !2457
  store i64* @DR7, i64** %_DR7.i18, align 8, !noalias !2457
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0.i19, align 8, !noalias !2457
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1.i20, align 8, !noalias !2457
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2.i21, align 8, !noalias !2457
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3.i22, align 8, !noalias !2457
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4.i23, align 8, !noalias !2457
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8.i24, align 8, !noalias !2457
  %4316 = bitcast %"class.std::bitset"* %YMM0.i105 to double*
  %4317 = load double, double* %4316, !alias.scope !2461, !noalias !2462
  %4318 = load i64, i64* %RSP.i86, !alias.scope !2461, !noalias !2462
  %4319 = load %struct.Memory*, %struct.Memory** %MEMORY.i10, !noalias !2457
  %4320 = inttoptr i64 %4318 to i64*
  %4321 = load i64, i64* %4320
  store i64 %4321, i64* %PC.i25, !alias.scope !2461, !noalias !2462
  %4322 = add i64 %4318, 8
  store i64 %4322, i64* %RSP.i86, !alias.scope !2461, !noalias !2462
  %4323 = call double @sin(double %4317)
  store %"class.std::bitset" zeroinitializer, %"class.std::bitset"* %YMM0.i105, !alias.scope !2461, !noalias !2462
  %4324 = bitcast %"class.std::bitset"* %YMM0.i105 to double*
  store double %4323, double* %4324, !alias.scope !2461, !noalias !2462
  %4325 = load %struct.Memory*, %struct.Memory** %MEMORY.i10, !noalias !2457
  %4326 = bitcast %struct.State** %state.i1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4326)
  %4327 = bitcast i64* %curr_pc.i2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4327)
  %4328 = bitcast %struct.Memory** %memory.i3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4328)
  call void @llvm.lifetime.end(i64 1, i8* %BRANCH_TAKEN.i4)
  %4329 = bitcast i64* %SS_BASE.i5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4329)
  %4330 = bitcast i64* %ES_BASE.i6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4330)
  %4331 = bitcast i64* %DS_BASE.i7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4331)
  %4332 = bitcast i64* %CS_BASE.i8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4332)
  %4333 = bitcast %struct.State** %STATE.i9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4333)
  %4334 = bitcast %struct.Memory** %MEMORY.i10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4334)
  %4335 = bitcast i64** %_DR0.i11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4335)
  %4336 = bitcast i64** %_DR1.i12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4336)
  %4337 = bitcast i64** %_DR2.i13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4337)
  %4338 = bitcast i64** %_DR3.i14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4338)
  %4339 = bitcast i64** %_DR4.i15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4339)
  %4340 = bitcast i64** %_DR5.i16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4340)
  %4341 = bitcast i64** %_DR6.i17 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4341)
  %4342 = bitcast i64** %_DR7.i18 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4342)
  %4343 = bitcast i64** %CR0.i19 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4343)
  %4344 = bitcast i64** %CR1.i20 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4344)
  %4345 = bitcast i64** %CR2.i21 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4345)
  %4346 = bitcast i64** %CR3.i22 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4346)
  %4347 = bitcast i64** %CR4.i23 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4347)
  %4348 = bitcast i64** %CR8.i24 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4348)
  %4349 = load i64, i64* %RBP
  %4350 = sub i64 %4349, 160
  %4351 = bitcast %union.vec128_t* %XMM0 to i8*
  %4352 = load i64, i64* %PC
  %4353 = add i64 %4352, 8
  store i64 %4353, i64* %PC
  %4354 = bitcast i8* %4351 to double*
  %4355 = load double, double* %4354, align 1
  %4356 = inttoptr i64 %4350 to double*
  store double %4355, double* %4356
  %4357 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4358 = load i64, i64* %RBP
  %4359 = sub i64 %4358, 184
  %4360 = load i64, i64* %PC
  %4361 = add i64 %4360, 8
  store i64 %4361, i64* %PC
  %4362 = inttoptr i64 %4359 to double*
  %4363 = load double, double* %4362
  %4364 = bitcast i8* %4357 to double*
  store double %4363, double* %4364, align 1, !tbaa !2452
  %4365 = getelementptr inbounds i8, i8* %4357, i64 8
  %4366 = bitcast i8* %4365 to double*
  store double 0.000000e+00, double* %4366, align 1, !tbaa !2452
  %4367 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4368 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4369 = load i64, i64* %RBP
  %4370 = sub i64 %4369, 160
  %4371 = load i64, i64* %PC
  %4372 = add i64 %4371, 8
  store i64 %4372, i64* %PC
  %4373 = bitcast i8* %4368 to double*
  %4374 = load double, double* %4373, align 1
  %4375 = getelementptr inbounds i8, i8* %4368, i64 8
  %4376 = bitcast i8* %4375 to i64*
  %4377 = load i64, i64* %4376, align 1
  %4378 = inttoptr i64 %4370 to double*
  %4379 = load double, double* %4378
  %4380 = fmul double %4374, %4379
  %4381 = bitcast i8* %4367 to double*
  store double %4380, double* %4381, align 1, !tbaa !2452
  %4382 = getelementptr inbounds i8, i8* %4367, i64 8
  %4383 = bitcast i8* %4382 to i64*
  store i64 %4377, i64* %4383, align 1, !tbaa !2452
  %4384 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4385 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4386 = load i64, i64* %RBP
  %4387 = sub i64 %4386, 160
  %4388 = load i64, i64* %PC
  %4389 = add i64 %4388, 8
  store i64 %4389, i64* %PC
  %4390 = bitcast i8* %4385 to double*
  %4391 = load double, double* %4390, align 1
  %4392 = getelementptr inbounds i8, i8* %4385, i64 8
  %4393 = bitcast i8* %4392 to i64*
  %4394 = load i64, i64* %4393, align 1
  %4395 = inttoptr i64 %4387 to double*
  %4396 = load double, double* %4395
  %4397 = fmul double %4391, %4396
  %4398 = bitcast i8* %4384 to double*
  store double %4397, double* %4398, align 1, !tbaa !2452
  %4399 = getelementptr inbounds i8, i8* %4384, i64 8
  %4400 = bitcast i8* %4399 to i64*
  store i64 %4394, i64* %4400, align 1, !tbaa !2452
  %4401 = load i64, i64* %RBP
  %4402 = sub i64 %4401, 144
  %4403 = bitcast %union.vec128_t* %XMM0 to i8*
  %4404 = load i64, i64* %PC
  %4405 = add i64 %4404, 8
  store i64 %4405, i64* %PC
  %4406 = bitcast i8* %4403 to double*
  %4407 = load double, double* %4406, align 1
  %4408 = inttoptr i64 %4402 to double*
  store double %4407, double* %4408
  %4409 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4410 = load i64, i64* %RBP
  %4411 = sub i64 %4410, 120
  %4412 = load i64, i64* %PC
  %4413 = add i64 %4412, 5
  store i64 %4413, i64* %PC
  %4414 = inttoptr i64 %4411 to double*
  %4415 = load double, double* %4414
  %4416 = bitcast i8* %4409 to double*
  store double %4415, double* %4416, align 1, !tbaa !2452
  %4417 = getelementptr inbounds i8, i8* %4409, i64 8
  %4418 = bitcast i8* %4417 to double*
  store double 0.000000e+00, double* %4418, align 1, !tbaa !2452
  %4419 = load i64, i64* %PC
  %4420 = sub i64 %4419, 2227
  %4421 = load i64, i64* %PC
  %4422 = add i64 %4421, 5
  %4423 = load i64, i64* %PC
  %4424 = add i64 %4423, 5
  store i64 %4424, i64* %PC
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4426 = load i64, i64* %4425, align 8, !tbaa !2428
  %4427 = add i64 %4426, -8
  %4428 = inttoptr i64 %4427 to i64*
  store i64 %4422, i64* %4428
  store i64 %4427, i64* %4425, align 8, !tbaa !2428
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4420, i64* %4429, align 8, !tbaa !2428
  %4430 = load i64, i64* %PC
  %4431 = bitcast %struct.State** %state.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4431)
  %4432 = bitcast i64* %curr_pc.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4432)
  %4433 = bitcast %struct.Memory** %memory.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4433)
  call void @llvm.lifetime.start(i64 1, i8* %BRANCH_TAKEN.i)
  %4434 = bitcast i64* %SS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4434)
  %4435 = bitcast i64* %ES_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4435)
  %4436 = bitcast i64* %DS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4436)
  %4437 = bitcast i64* %CS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4437)
  %4438 = bitcast %struct.State** %STATE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4438)
  %4439 = bitcast %struct.Memory** %MEMORY.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4439)
  %4440 = bitcast i64** %_DR0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4440)
  %4441 = bitcast i64** %_DR1.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4441)
  %4442 = bitcast i64** %_DR2.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4442)
  %4443 = bitcast i64** %_DR3.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4443)
  %4444 = bitcast i64** %_DR4.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4444)
  %4445 = bitcast i64** %_DR5.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4445)
  %4446 = bitcast i64** %_DR6.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4446)
  %4447 = bitcast i64** %_DR7.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4447)
  %4448 = bitcast i64** %CR0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4448)
  %4449 = bitcast i64** %CR1.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4449)
  %4450 = bitcast i64** %CR2.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4450)
  %4451 = bitcast i64** %CR3.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4451)
  %4452 = bitcast i64** %CR4.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4452)
  %4453 = bitcast i64** %CR8.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4453)
  store %struct.State* %0, %struct.State** %state.i, align 8, !noalias !2463
  store i64 %4430, i64* %curr_pc.i, align 8, !noalias !2463
  store %struct.Memory* %4325, %struct.Memory** %memory.i, align 8, !noalias !2463
  store i8 0, i8* %BRANCH_TAKEN.i, align 1, !noalias !2463
  store i64 0, i64* %SS_BASE.i, align 8, !noalias !2463
  store i64 0, i64* %ES_BASE.i, align 8, !noalias !2463
  store i64 0, i64* %DS_BASE.i, align 8, !noalias !2463
  store i64 0, i64* %CS_BASE.i, align 8, !noalias !2463
  store %struct.State* %0, %struct.State** %STATE.i, align 8, !noalias !2463
  store %struct.Memory* %4325, %struct.Memory** %MEMORY.i, align 8, !noalias !2463
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 33
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %PC.i = bitcast %union.anon* %4456 to i64*
  store i64 %4430, i64* %PC.i, align 8, !alias.scope !2467, !noalias !2468
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 1
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %4460 = bitcast %union.anon* %4459 to %struct.anon.2*
  %AH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4460, i32 0, i32 1
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 3
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %4464 = bitcast %union.anon* %4463 to %struct.anon.2*
  %BH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4464, i32 0, i32 1
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4466 = getelementptr inbounds %struct.GPR, %struct.GPR* %4465, i32 0, i32 5
  %4467 = getelementptr inbounds %struct.Reg, %struct.Reg* %4466, i32 0, i32 0
  %4468 = bitcast %union.anon* %4467 to %struct.anon.2*
  %CH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4468, i32 0, i32 1
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4470 = getelementptr inbounds %struct.GPR, %struct.GPR* %4469, i32 0, i32 7
  %4471 = getelementptr inbounds %struct.Reg, %struct.Reg* %4470, i32 0, i32 0
  %4472 = bitcast %union.anon* %4471 to %struct.anon.2*
  %DH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4472, i32 0, i32 1
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 1
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %4476 = bitcast %union.anon* %4475 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4476, i32 0, i32 0
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 3
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %4480 = bitcast %union.anon* %4479 to %struct.anon.2*
  %BL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4480, i32 0, i32 0
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4482 = getelementptr inbounds %struct.GPR, %struct.GPR* %4481, i32 0, i32 5
  %4483 = getelementptr inbounds %struct.Reg, %struct.Reg* %4482, i32 0, i32 0
  %4484 = bitcast %union.anon* %4483 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4484, i32 0, i32 0
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4486 = getelementptr inbounds %struct.GPR, %struct.GPR* %4485, i32 0, i32 7
  %4487 = getelementptr inbounds %struct.Reg, %struct.Reg* %4486, i32 0, i32 0
  %4488 = bitcast %union.anon* %4487 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4488, i32 0, i32 0
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 9
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %4492 = bitcast %union.anon* %4491 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4492, i32 0, i32 0
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 11
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %4496 = bitcast %union.anon* %4495 to %struct.anon.2*
  %DIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4496, i32 0, i32 0
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 13
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %4500 = bitcast %union.anon* %4499 to %struct.anon.2*
  %SPL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4500, i32 0, i32 0
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 15
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %4504 = bitcast %union.anon* %4503 to %struct.anon.2*
  %BPL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4504, i32 0, i32 0
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4506 = getelementptr inbounds %struct.GPR, %struct.GPR* %4505, i32 0, i32 17
  %4507 = getelementptr inbounds %struct.Reg, %struct.Reg* %4506, i32 0, i32 0
  %4508 = bitcast %union.anon* %4507 to %struct.anon.2*
  %R8B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4508, i32 0, i32 0
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 19
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %4512 = bitcast %union.anon* %4511 to %struct.anon.2*
  %R9B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4512, i32 0, i32 0
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 21
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %4516 = bitcast %union.anon* %4515 to %struct.anon.2*
  %R10B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4516, i32 0, i32 0
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4518 = getelementptr inbounds %struct.GPR, %struct.GPR* %4517, i32 0, i32 23
  %4519 = getelementptr inbounds %struct.Reg, %struct.Reg* %4518, i32 0, i32 0
  %4520 = bitcast %union.anon* %4519 to %struct.anon.2*
  %R11B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4520, i32 0, i32 0
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 25
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %4524 = bitcast %union.anon* %4523 to %struct.anon.2*
  %R12B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4524, i32 0, i32 0
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4526 = getelementptr inbounds %struct.GPR, %struct.GPR* %4525, i32 0, i32 27
  %4527 = getelementptr inbounds %struct.Reg, %struct.Reg* %4526, i32 0, i32 0
  %4528 = bitcast %union.anon* %4527 to %struct.anon.2*
  %R13B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4528, i32 0, i32 0
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4530 = getelementptr inbounds %struct.GPR, %struct.GPR* %4529, i32 0, i32 29
  %4531 = getelementptr inbounds %struct.Reg, %struct.Reg* %4530, i32 0, i32 0
  %4532 = bitcast %union.anon* %4531 to %struct.anon.2*
  %R14B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4532, i32 0, i32 0
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 31
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %4536 = bitcast %union.anon* %4535 to %struct.anon.2*
  %R15B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4536, i32 0, i32 0
  %4537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4538 = getelementptr inbounds %struct.GPR, %struct.GPR* %4537, i32 0, i32 1
  %4539 = getelementptr inbounds %struct.Reg, %struct.Reg* %4538, i32 0, i32 0
  %AX.i = bitcast %union.anon* %4539 to i16*
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4541 = getelementptr inbounds %struct.GPR, %struct.GPR* %4540, i32 0, i32 3
  %4542 = getelementptr inbounds %struct.Reg, %struct.Reg* %4541, i32 0, i32 0
  %BX.i = bitcast %union.anon* %4542 to i16*
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4544 = getelementptr inbounds %struct.GPR, %struct.GPR* %4543, i32 0, i32 5
  %4545 = getelementptr inbounds %struct.Reg, %struct.Reg* %4544, i32 0, i32 0
  %CX.i = bitcast %union.anon* %4545 to i16*
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 7
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %DX.i = bitcast %union.anon* %4548 to i16*
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4550 = getelementptr inbounds %struct.GPR, %struct.GPR* %4549, i32 0, i32 9
  %4551 = getelementptr inbounds %struct.Reg, %struct.Reg* %4550, i32 0, i32 0
  %SI.i = bitcast %union.anon* %4551 to i16*
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 11
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %DI.i = bitcast %union.anon* %4554 to i16*
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 13
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %SP.i = bitcast %union.anon* %4557 to i16*
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4559 = getelementptr inbounds %struct.GPR, %struct.GPR* %4558, i32 0, i32 15
  %4560 = getelementptr inbounds %struct.Reg, %struct.Reg* %4559, i32 0, i32 0
  %BP.i = bitcast %union.anon* %4560 to i16*
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4562 = getelementptr inbounds %struct.GPR, %struct.GPR* %4561, i32 0, i32 17
  %4563 = getelementptr inbounds %struct.Reg, %struct.Reg* %4562, i32 0, i32 0
  %R8W.i = bitcast %union.anon* %4563 to i16*
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4565 = getelementptr inbounds %struct.GPR, %struct.GPR* %4564, i32 0, i32 19
  %4566 = getelementptr inbounds %struct.Reg, %struct.Reg* %4565, i32 0, i32 0
  %R9W.i = bitcast %union.anon* %4566 to i16*
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4568 = getelementptr inbounds %struct.GPR, %struct.GPR* %4567, i32 0, i32 21
  %4569 = getelementptr inbounds %struct.Reg, %struct.Reg* %4568, i32 0, i32 0
  %R10W.i = bitcast %union.anon* %4569 to i16*
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4571 = getelementptr inbounds %struct.GPR, %struct.GPR* %4570, i32 0, i32 23
  %4572 = getelementptr inbounds %struct.Reg, %struct.Reg* %4571, i32 0, i32 0
  %R11W.i = bitcast %union.anon* %4572 to i16*
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4574 = getelementptr inbounds %struct.GPR, %struct.GPR* %4573, i32 0, i32 25
  %4575 = getelementptr inbounds %struct.Reg, %struct.Reg* %4574, i32 0, i32 0
  %R12W.i = bitcast %union.anon* %4575 to i16*
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4577 = getelementptr inbounds %struct.GPR, %struct.GPR* %4576, i32 0, i32 27
  %4578 = getelementptr inbounds %struct.Reg, %struct.Reg* %4577, i32 0, i32 0
  %R13W.i = bitcast %union.anon* %4578 to i16*
  %4579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4580 = getelementptr inbounds %struct.GPR, %struct.GPR* %4579, i32 0, i32 29
  %4581 = getelementptr inbounds %struct.Reg, %struct.Reg* %4580, i32 0, i32 0
  %R14W.i = bitcast %union.anon* %4581 to i16*
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4583 = getelementptr inbounds %struct.GPR, %struct.GPR* %4582, i32 0, i32 31
  %4584 = getelementptr inbounds %struct.Reg, %struct.Reg* %4583, i32 0, i32 0
  %R15W.i = bitcast %union.anon* %4584 to i16*
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4586 = getelementptr inbounds %struct.GPR, %struct.GPR* %4585, i32 0, i32 33
  %4587 = getelementptr inbounds %struct.Reg, %struct.Reg* %4586, i32 0, i32 0
  %IP.i = bitcast %union.anon* %4587 to i16*
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4589 = getelementptr inbounds %struct.GPR, %struct.GPR* %4588, i32 0, i32 1
  %4590 = getelementptr inbounds %struct.Reg, %struct.Reg* %4589, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4590 to i32*
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4592 = getelementptr inbounds %struct.GPR, %struct.GPR* %4591, i32 0, i32 3
  %4593 = getelementptr inbounds %struct.Reg, %struct.Reg* %4592, i32 0, i32 0
  %EBX.i = bitcast %union.anon* %4593 to i32*
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4595 = getelementptr inbounds %struct.GPR, %struct.GPR* %4594, i32 0, i32 5
  %4596 = getelementptr inbounds %struct.Reg, %struct.Reg* %4595, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4596 to i32*
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4598 = getelementptr inbounds %struct.GPR, %struct.GPR* %4597, i32 0, i32 7
  %4599 = getelementptr inbounds %struct.Reg, %struct.Reg* %4598, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4599 to i32*
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 9
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %4602 to i32*
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 11
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %4605 to i32*
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4607 = getelementptr inbounds %struct.GPR, %struct.GPR* %4606, i32 0, i32 13
  %4608 = getelementptr inbounds %struct.Reg, %struct.Reg* %4607, i32 0, i32 0
  %ESP.i = bitcast %union.anon* %4608 to i32*
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4610 = getelementptr inbounds %struct.GPR, %struct.GPR* %4609, i32 0, i32 15
  %4611 = getelementptr inbounds %struct.Reg, %struct.Reg* %4610, i32 0, i32 0
  %EBP.i = bitcast %union.anon* %4611 to i32*
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4613 = getelementptr inbounds %struct.GPR, %struct.GPR* %4612, i32 0, i32 33
  %4614 = getelementptr inbounds %struct.Reg, %struct.Reg* %4613, i32 0, i32 0
  %EIP.i = bitcast %union.anon* %4614 to i32*
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4616 = getelementptr inbounds %struct.GPR, %struct.GPR* %4615, i32 0, i32 17
  %4617 = getelementptr inbounds %struct.Reg, %struct.Reg* %4616, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %4617 to i32*
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4619 = getelementptr inbounds %struct.GPR, %struct.GPR* %4618, i32 0, i32 19
  %4620 = getelementptr inbounds %struct.Reg, %struct.Reg* %4619, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %4620 to i32*
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 21
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %4623 to i32*
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4625 = getelementptr inbounds %struct.GPR, %struct.GPR* %4624, i32 0, i32 23
  %4626 = getelementptr inbounds %struct.Reg, %struct.Reg* %4625, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %4626 to i32*
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4628 = getelementptr inbounds %struct.GPR, %struct.GPR* %4627, i32 0, i32 25
  %4629 = getelementptr inbounds %struct.Reg, %struct.Reg* %4628, i32 0, i32 0
  %R12D.i = bitcast %union.anon* %4629 to i32*
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 27
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %R13D.i = bitcast %union.anon* %4632 to i32*
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 29
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %R14D.i = bitcast %union.anon* %4635 to i32*
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4637 = getelementptr inbounds %struct.GPR, %struct.GPR* %4636, i32 0, i32 31
  %4638 = getelementptr inbounds %struct.Reg, %struct.Reg* %4637, i32 0, i32 0
  %R15D.i = bitcast %union.anon* %4638 to i32*
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4640 = getelementptr inbounds %struct.GPR, %struct.GPR* %4639, i32 0, i32 1
  %4641 = getelementptr inbounds %struct.Reg, %struct.Reg* %4640, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4641 to i64*
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4643 = getelementptr inbounds %struct.GPR, %struct.GPR* %4642, i32 0, i32 3
  %4644 = getelementptr inbounds %struct.Reg, %struct.Reg* %4643, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %4644 to i64*
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4646 = getelementptr inbounds %struct.GPR, %struct.GPR* %4645, i32 0, i32 5
  %4647 = getelementptr inbounds %struct.Reg, %struct.Reg* %4646, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4647 to i64*
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4649 = getelementptr inbounds %struct.GPR, %struct.GPR* %4648, i32 0, i32 7
  %4650 = getelementptr inbounds %struct.Reg, %struct.Reg* %4649, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4650 to i64*
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4652 = getelementptr inbounds %struct.GPR, %struct.GPR* %4651, i32 0, i32 9
  %4653 = getelementptr inbounds %struct.Reg, %struct.Reg* %4652, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4653 to i64*
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4655 = getelementptr inbounds %struct.GPR, %struct.GPR* %4654, i32 0, i32 11
  %4656 = getelementptr inbounds %struct.Reg, %struct.Reg* %4655, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4656 to i64*
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4658 = getelementptr inbounds %struct.GPR, %struct.GPR* %4657, i32 0, i32 13
  %4659 = getelementptr inbounds %struct.Reg, %struct.Reg* %4658, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4659 to i64*
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4661 = getelementptr inbounds %struct.GPR, %struct.GPR* %4660, i32 0, i32 15
  %4662 = getelementptr inbounds %struct.Reg, %struct.Reg* %4661, i32 0, i32 0
  %RBP.i = bitcast %union.anon* %4662 to i64*
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4664 = getelementptr inbounds %struct.GPR, %struct.GPR* %4663, i32 0, i32 17
  %4665 = getelementptr inbounds %struct.Reg, %struct.Reg* %4664, i32 0, i32 0
  %R8.i = bitcast %union.anon* %4665 to i64*
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4667 = getelementptr inbounds %struct.GPR, %struct.GPR* %4666, i32 0, i32 19
  %4668 = getelementptr inbounds %struct.Reg, %struct.Reg* %4667, i32 0, i32 0
  %R9.i = bitcast %union.anon* %4668 to i64*
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4670 = getelementptr inbounds %struct.GPR, %struct.GPR* %4669, i32 0, i32 21
  %4671 = getelementptr inbounds %struct.Reg, %struct.Reg* %4670, i32 0, i32 0
  %R10.i = bitcast %union.anon* %4671 to i64*
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4673 = getelementptr inbounds %struct.GPR, %struct.GPR* %4672, i32 0, i32 23
  %4674 = getelementptr inbounds %struct.Reg, %struct.Reg* %4673, i32 0, i32 0
  %R11.i = bitcast %union.anon* %4674 to i64*
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 25
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %R12.i = bitcast %union.anon* %4677 to i64*
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 27
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %R13.i = bitcast %union.anon* %4680 to i64*
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4682 = getelementptr inbounds %struct.GPR, %struct.GPR* %4681, i32 0, i32 29
  %4683 = getelementptr inbounds %struct.Reg, %struct.Reg* %4682, i32 0, i32 0
  %R14.i = bitcast %union.anon* %4683 to i64*
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4685 = getelementptr inbounds %struct.GPR, %struct.GPR* %4684, i32 0, i32 31
  %4686 = getelementptr inbounds %struct.Reg, %struct.Reg* %4685, i32 0, i32 0
  %R15.i = bitcast %union.anon* %4686 to i64*
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4688 = getelementptr inbounds %struct.GPR, %struct.GPR* %4687, i32 0, i32 33
  %4689 = getelementptr inbounds %struct.Reg, %struct.Reg* %4688, i32 0, i32 0
  %RIP.i = bitcast %union.anon* %4689 to i64*
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4691 = getelementptr inbounds %struct.Segments, %struct.Segments* %4690, i32 0, i32 1
  %SS.i = bitcast %union.SegmentSelector* %4691 to i16*
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4693 = getelementptr inbounds %struct.Segments, %struct.Segments* %4692, i32 0, i32 3
  %ES.i = bitcast %union.SegmentSelector* %4693 to i16*
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4695 = getelementptr inbounds %struct.Segments, %struct.Segments* %4694, i32 0, i32 5
  %GS.i = bitcast %union.SegmentSelector* %4695 to i16*
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4697 = getelementptr inbounds %struct.Segments, %struct.Segments* %4696, i32 0, i32 7
  %FS.i = bitcast %union.SegmentSelector* %4697 to i16*
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4699 = getelementptr inbounds %struct.Segments, %struct.Segments* %4698, i32 0, i32 9
  %DS.i = bitcast %union.SegmentSelector* %4699 to i16*
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4701 = getelementptr inbounds %struct.Segments, %struct.Segments* %4700, i32 0, i32 11
  %CS.i = bitcast %union.SegmentSelector* %4701 to i16*
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %4703 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %4702, i32 0, i32 5
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %GS_BASE.i = bitcast %union.anon* %4704 to i64*
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %4706 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %4705, i32 0, i32 7
  %4707 = getelementptr inbounds %struct.Reg, %struct.Reg* %4706, i32 0, i32 0
  %FS_BASE.i = bitcast %union.anon* %4707 to i64*
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4709 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4708, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %4709 to %"class.std::bitset"*
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4711 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4710, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %4711 to %"class.std::bitset"*
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4713 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4712, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %4713 to %"class.std::bitset"*
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4715 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4714, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %4715 to %"class.std::bitset"*
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4717 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4716, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %4717 to %"class.std::bitset"*
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4719 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4718, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %4719 to %"class.std::bitset"*
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4721 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4720, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %4721 to %"class.std::bitset"*
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4723 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4722, i64 0, i64 7
  %YMM7.i = bitcast %union.VectorReg* %4723 to %"class.std::bitset"*
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4725 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4724, i64 0, i64 8
  %YMM8.i = bitcast %union.VectorReg* %4725 to %"class.std::bitset"*
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4727 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4726, i64 0, i64 9
  %YMM9.i = bitcast %union.VectorReg* %4727 to %"class.std::bitset"*
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4729 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4728, i64 0, i64 10
  %YMM10.i = bitcast %union.VectorReg* %4729 to %"class.std::bitset"*
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4731 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4730, i64 0, i64 11
  %YMM11.i = bitcast %union.VectorReg* %4731 to %"class.std::bitset"*
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4733 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4732, i64 0, i64 12
  %YMM12.i = bitcast %union.VectorReg* %4733 to %"class.std::bitset"*
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4735 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4734, i64 0, i64 13
  %YMM13.i = bitcast %union.VectorReg* %4735 to %"class.std::bitset"*
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4737 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4736, i64 0, i64 14
  %YMM14.i = bitcast %union.VectorReg* %4737 to %"class.std::bitset"*
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4739 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4738, i64 0, i64 15
  %YMM15.i = bitcast %union.VectorReg* %4739 to %"class.std::bitset"*
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4741 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4740, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %4741 to %union.vec128_t*
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4743 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4742, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4743 to %union.vec128_t*
  %4744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4745 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4744, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %4745 to %union.vec128_t*
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4747 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4746, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %4747 to %union.vec128_t*
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4749 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4748, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %4749 to %union.vec128_t*
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4751 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4750, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %4751 to %union.vec128_t*
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4753 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4752, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %4753 to %union.vec128_t*
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4755 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4754, i64 0, i64 7
  %XMM7.i = bitcast %union.VectorReg* %4755 to %union.vec128_t*
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4757 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4756, i64 0, i64 8
  %XMM8.i = bitcast %union.VectorReg* %4757 to %union.vec128_t*
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4759 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4758, i64 0, i64 9
  %XMM9.i = bitcast %union.VectorReg* %4759 to %union.vec128_t*
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4761 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4760, i64 0, i64 10
  %XMM10.i = bitcast %union.VectorReg* %4761 to %union.vec128_t*
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4763 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4762, i64 0, i64 11
  %XMM11.i = bitcast %union.VectorReg* %4763 to %union.vec128_t*
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4765 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4764, i64 0, i64 12
  %XMM12.i = bitcast %union.VectorReg* %4765 to %union.vec128_t*
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4767 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4766, i64 0, i64 13
  %XMM13.i = bitcast %union.VectorReg* %4767 to %union.vec128_t*
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4769 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4768, i64 0, i64 14
  %XMM14.i = bitcast %union.VectorReg* %4769 to %union.vec128_t*
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4771 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4770, i64 0, i64 15
  %XMM15.i = bitcast %union.VectorReg* %4771 to %union.vec128_t*
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4773 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4772, i32 0, i32 0
  %4774 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4773, i64 0, i64 0
  %ST0.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4774, i32 0, i32 1
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4776 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4775, i32 0, i32 0
  %4777 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4776, i64 0, i64 1
  %ST1.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4777, i32 0, i32 1
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4779 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4778, i32 0, i32 0
  %4780 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4779, i64 0, i64 2
  %ST2.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4780, i32 0, i32 1
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4782 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4781, i32 0, i32 0
  %4783 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4782, i64 0, i64 3
  %ST3.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4783, i32 0, i32 1
  %4784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4785 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4784, i32 0, i32 0
  %4786 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4785, i64 0, i64 4
  %ST4.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4786, i32 0, i32 1
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4788 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4787, i32 0, i32 0
  %4789 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4788, i64 0, i64 5
  %ST5.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4789, i32 0, i32 1
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4791 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4790, i32 0, i32 0
  %4792 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4791, i64 0, i64 6
  %ST6.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4792, i32 0, i32 1
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4794 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4793, i32 0, i32 0
  %4795 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4794, i64 0, i64 7
  %ST7.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4795, i32 0, i32 1
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4797 = getelementptr inbounds %struct.MMX, %struct.MMX* %4796, i32 0, i32 0
  %4798 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4797, i64 0, i64 0
  %4799 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4798, i32 0, i32 1
  %4800 = bitcast %union.vec64_t* %4799 to %struct.uint64v1_t*
  %4801 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4800, i32 0, i32 0
  %MM0.i = getelementptr inbounds [1 x i64], [1 x i64]* %4801, i64 0, i64 0
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4803 = getelementptr inbounds %struct.MMX, %struct.MMX* %4802, i32 0, i32 0
  %4804 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4803, i64 0, i64 1
  %4805 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4804, i32 0, i32 1
  %4806 = bitcast %union.vec64_t* %4805 to %struct.uint64v1_t*
  %4807 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4806, i32 0, i32 0
  %MM1.i = getelementptr inbounds [1 x i64], [1 x i64]* %4807, i64 0, i64 0
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4809 = getelementptr inbounds %struct.MMX, %struct.MMX* %4808, i32 0, i32 0
  %4810 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4809, i64 0, i64 2
  %4811 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4810, i32 0, i32 1
  %4812 = bitcast %union.vec64_t* %4811 to %struct.uint64v1_t*
  %4813 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4812, i32 0, i32 0
  %MM2.i = getelementptr inbounds [1 x i64], [1 x i64]* %4813, i64 0, i64 0
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4815 = getelementptr inbounds %struct.MMX, %struct.MMX* %4814, i32 0, i32 0
  %4816 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4815, i64 0, i64 3
  %4817 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4816, i32 0, i32 1
  %4818 = bitcast %union.vec64_t* %4817 to %struct.uint64v1_t*
  %4819 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4818, i32 0, i32 0
  %MM3.i = getelementptr inbounds [1 x i64], [1 x i64]* %4819, i64 0, i64 0
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4821 = getelementptr inbounds %struct.MMX, %struct.MMX* %4820, i32 0, i32 0
  %4822 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4821, i64 0, i64 4
  %4823 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4822, i32 0, i32 1
  %4824 = bitcast %union.vec64_t* %4823 to %struct.uint64v1_t*
  %4825 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4824, i32 0, i32 0
  %MM4.i = getelementptr inbounds [1 x i64], [1 x i64]* %4825, i64 0, i64 0
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4827 = getelementptr inbounds %struct.MMX, %struct.MMX* %4826, i32 0, i32 0
  %4828 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4827, i64 0, i64 5
  %4829 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4828, i32 0, i32 1
  %4830 = bitcast %union.vec64_t* %4829 to %struct.uint64v1_t*
  %4831 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4830, i32 0, i32 0
  %MM5.i = getelementptr inbounds [1 x i64], [1 x i64]* %4831, i64 0, i64 0
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4833 = getelementptr inbounds %struct.MMX, %struct.MMX* %4832, i32 0, i32 0
  %4834 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4833, i64 0, i64 6
  %4835 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4834, i32 0, i32 1
  %4836 = bitcast %union.vec64_t* %4835 to %struct.uint64v1_t*
  %4837 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4836, i32 0, i32 0
  %MM6.i = getelementptr inbounds [1 x i64], [1 x i64]* %4837, i64 0, i64 0
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4839 = getelementptr inbounds %struct.MMX, %struct.MMX* %4838, i32 0, i32 0
  %4840 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4839, i64 0, i64 7
  %4841 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4840, i32 0, i32 1
  %4842 = bitcast %union.vec64_t* %4841 to %struct.uint64v1_t*
  %4843 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4842, i32 0, i32 0
  %MM7.i = getelementptr inbounds [1 x i64], [1 x i64]* %4843, i64 0, i64 0
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %AF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4844, i32 0, i32 5
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %CF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4845, i32 0, i32 1
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %DF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4846, i32 0, i32 11
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %OF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4847, i32 0, i32 13
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %PF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4848, i32 0, i32 3
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %SF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4849, i32 0, i32 9
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %ZF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4850, i32 0, i32 7
  store i64* @DR0, i64** %_DR0.i, align 8, !noalias !2463
  store i64* @DR1, i64** %_DR1.i, align 8, !noalias !2463
  store i64* @DR2, i64** %_DR2.i, align 8, !noalias !2463
  store i64* @DR3, i64** %_DR3.i, align 8, !noalias !2463
  store i64* @DR4, i64** %_DR4.i, align 8, !noalias !2463
  store i64* @DR5, i64** %_DR5.i, align 8, !noalias !2463
  store i64* @DR6, i64** %_DR6.i, align 8, !noalias !2463
  store i64* @DR7, i64** %_DR7.i, align 8, !noalias !2463
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0.i, align 8, !noalias !2463
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1.i, align 8, !noalias !2463
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2.i, align 8, !noalias !2463
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3.i, align 8, !noalias !2463
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4.i, align 8, !noalias !2463
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8.i, align 8, !noalias !2463
  %4851 = bitcast %"class.std::bitset"* %YMM0.i to double*
  %4852 = load double, double* %4851, !alias.scope !2467, !noalias !2468
  %4853 = load i64, i64* %RSP.i, !alias.scope !2467, !noalias !2468
  %4854 = load %struct.Memory*, %struct.Memory** %MEMORY.i, !noalias !2463
  %4855 = inttoptr i64 %4853 to i64*
  %4856 = load i64, i64* %4855
  store i64 %4856, i64* %PC.i, !alias.scope !2467, !noalias !2468
  %4857 = add i64 %4853, 8
  store i64 %4857, i64* %RSP.i, !alias.scope !2467, !noalias !2468
  %4858 = call double @sin(double %4852)
  store %"class.std::bitset" zeroinitializer, %"class.std::bitset"* %YMM0.i, !alias.scope !2467, !noalias !2468
  %4859 = bitcast %"class.std::bitset"* %YMM0.i to double*
  store double %4858, double* %4859, !alias.scope !2467, !noalias !2468
  %4860 = load %struct.Memory*, %struct.Memory** %MEMORY.i, !noalias !2463
  %4861 = bitcast %struct.State** %state.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4861)
  %4862 = bitcast i64* %curr_pc.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4862)
  %4863 = bitcast %struct.Memory** %memory.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4863)
  call void @llvm.lifetime.end(i64 1, i8* %BRANCH_TAKEN.i)
  %4864 = bitcast i64* %SS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4864)
  %4865 = bitcast i64* %ES_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4865)
  %4866 = bitcast i64* %DS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4866)
  %4867 = bitcast i64* %CS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4867)
  %4868 = bitcast %struct.State** %STATE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4868)
  %4869 = bitcast %struct.Memory** %MEMORY.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4869)
  %4870 = bitcast i64** %_DR0.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4870)
  %4871 = bitcast i64** %_DR1.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4871)
  %4872 = bitcast i64** %_DR2.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4872)
  %4873 = bitcast i64** %_DR3.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4873)
  %4874 = bitcast i64** %_DR4.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4874)
  %4875 = bitcast i64** %_DR5.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4875)
  %4876 = bitcast i64** %_DR6.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4876)
  %4877 = bitcast i64** %_DR7.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4877)
  %4878 = bitcast i64** %CR0.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4878)
  %4879 = bitcast i64** %CR1.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4879)
  %4880 = bitcast i64** %CR2.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4880)
  %4881 = bitcast i64** %CR3.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4881)
  %4882 = bitcast i64** %CR4.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4882)
  %4883 = bitcast i64** %CR8.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4883)
  %4884 = load i64, i64* %RBP
  %4885 = sub i64 %4884, 136
  %4886 = bitcast %union.vec128_t* %XMM0 to i8*
  %4887 = load i64, i64* %PC
  %4888 = add i64 %4887, 8
  store i64 %4888, i64* %PC
  %4889 = bitcast i8* %4886 to double*
  %4890 = load double, double* %4889, align 1
  %4891 = inttoptr i64 %4885 to double*
  store double %4890, double* %4891
  %4892 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4893 = load i64, i64* %RBP
  %4894 = sub i64 %4893, 192
  %4895 = load i64, i64* %PC
  %4896 = add i64 %4895, 8
  store i64 %4896, i64* %PC
  %4897 = inttoptr i64 %4894 to double*
  %4898 = load double, double* %4897
  %4899 = bitcast i8* %4892 to double*
  store double %4898, double* %4899, align 1, !tbaa !2452
  %4900 = getelementptr inbounds i8, i8* %4892, i64 8
  %4901 = bitcast i8* %4900 to double*
  store double 0.000000e+00, double* %4901, align 1, !tbaa !2452
  %4902 = load i64, i64* %RBP
  %4903 = sub i64 %4902, 152
  %4904 = bitcast %union.vec128_t* %XMM0 to i8*
  %4905 = load i64, i64* %PC
  %4906 = add i64 %4905, 8
  store i64 %4906, i64* %PC
  %4907 = bitcast i8* %4904 to double*
  %4908 = load double, double* %4907, align 1
  %4909 = inttoptr i64 %4903 to double*
  store double %4908, double* %4909
  %4910 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %4911 = load i64, i64* %RBP
  %4912 = sub i64 %4911, 176
  %4913 = load i64, i64* %PC
  %4914 = add i64 %4913, 8
  store i64 %4914, i64* %PC
  %4915 = inttoptr i64 %4912 to double*
  %4916 = load double, double* %4915
  %4917 = bitcast i8* %4910 to double*
  store double %4916, double* %4917, align 1, !tbaa !2452
  %4918 = getelementptr inbounds i8, i8* %4910, i64 8
  %4919 = bitcast i8* %4918 to double*
  store double 0.000000e+00, double* %4919, align 1, !tbaa !2452
  %4920 = load i64, i64* %RBP
  %4921 = sub i64 %4920, 128
  %4922 = bitcast %union.vec128_t* %XMM1 to i8*
  %4923 = load i64, i64* %PC
  %4924 = add i64 %4923, 5
  store i64 %4924, i64* %PC
  %4925 = bitcast i8* %4922 to double*
  %4926 = load double, double* %4925, align 1
  %4927 = inttoptr i64 %4921 to double*
  store double %4926, double* %4927
  %4928 = load i64, i64* %RBP
  %4929 = sub i64 %4928, 36
  %4930 = load i64, i64* %PC
  %4931 = add i64 %4930, 7
  store i64 %4931, i64* %PC
  %4932 = inttoptr i64 %4929 to i32*
  store i32 1, i32* %4932
  br label %block_400e84

block_400ba3:                                     ; preds = %block_400b97
  %4933 = sub i64 %3164, 16
  %4934 = load i64, i64* %PC
  %4935 = add i64 %4934, 4
  store i64 %4935, i64* %PC
  %4936 = inttoptr i64 %4933 to i64*
  %4937 = load i64, i64* %4936
  store i64 %4937, i64* %RAX, align 8, !tbaa !2428
  %4938 = load i64, i64* %RBP
  %4939 = sub i64 %4938, 72
  %4940 = load i64, i64* %PC
  %4941 = add i64 %4940, 4
  store i64 %4941, i64* %PC
  %4942 = inttoptr i64 %4939 to i32*
  %4943 = load i32, i32* %4942
  %4944 = sext i32 %4943 to i64
  store i64 %4944, i64* %RCX, align 8, !tbaa !2428
  %4945 = load i64, i64* %RAX
  %4946 = load i64, i64* %RCX
  %4947 = mul i64 %4946, 4
  %4948 = add i64 %4947, %4945
  %4949 = load i64, i64* %PC
  %4950 = add i64 %4949, 3
  store i64 %4950, i64* %PC
  %4951 = inttoptr i64 %4948 to i32*
  %4952 = load i32, i32* %4951
  %4953 = zext i32 %4952 to i64
  store i64 %4953, i64* %RDX, align 8, !tbaa !2428
  %4954 = load i64, i64* %RDX
  %4955 = load i64, i64* %RBP
  %4956 = sub i64 %4955, 96
  %4957 = load i64, i64* %PC
  %4958 = add i64 %4957, 4
  store i64 %4958, i64* %PC
  %4959 = inttoptr i64 %4956 to i32*
  %4960 = load i32, i32* %4959
  %4961 = shl i64 %4954, 32
  %4962 = ashr exact i64 %4961, 32
  %4963 = sext i32 %4960 to i64
  %4964 = mul nsw i64 %4963, %4962
  %4965 = trunc i64 %4964 to i32
  %4966 = and i64 %4964, 4294967295
  store i64 %4966, i64* %RDX, align 8, !tbaa !2428
  %4967 = shl i64 %4964, 32
  %4968 = ashr exact i64 %4967, 32
  %4969 = icmp ne i64 %4968, %4964
  %4970 = zext i1 %4969 to i8
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4970, i8* %4971, align 1, !tbaa !2432
  %4972 = and i32 %4965, 255
  %4973 = call i32 @llvm.ctpop.i32(i32 %4972) #17
  %4974 = trunc i32 %4973 to i8
  %4975 = and i8 %4974, 1
  %4976 = xor i8 %4975, 1
  %4977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4976, i8* %4977, align 1, !tbaa !2446
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4978, align 1, !tbaa !2447
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4979, align 1, !tbaa !2448
  %4980 = lshr i32 %4965, 31
  %4981 = trunc i32 %4980 to i8
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4981, i8* %4982, align 1, !tbaa !2449
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4970, i8* %4983, align 1, !tbaa !2450
  %4984 = load i64, i64* %RBP
  %4985 = sub i64 %4984, 96
  %4986 = load i32, i32* %EDX
  %4987 = zext i32 %4986 to i64
  %4988 = load i64, i64* %PC
  %4989 = add i64 %4988, 3
  store i64 %4989, i64* %PC
  %4990 = inttoptr i64 %4985 to i32*
  store i32 %4986, i32* %4990
  %4991 = load i64, i64* %RBP
  %4992 = sub i64 %4991, 72
  %4993 = load i64, i64* %PC
  %4994 = add i64 %4993, 3
  store i64 %4994, i64* %PC
  %4995 = inttoptr i64 %4992 to i32*
  %4996 = load i32, i32* %4995
  %4997 = zext i32 %4996 to i64
  store i64 %4997, i64* %RAX, align 8, !tbaa !2428
  %4998 = load i64, i64* %RAX
  %4999 = load i64, i64* %PC
  %5000 = add i64 %4999, 3
  store i64 %5000, i64* %PC
  %5001 = trunc i64 %4998 to i32
  %5002 = add i32 1, %5001
  %5003 = zext i32 %5002 to i64
  store i64 %5003, i64* %RAX, align 8, !tbaa !2428
  %5004 = icmp ult i32 %5002, %5001
  %5005 = icmp ult i32 %5002, 1
  %5006 = or i1 %5004, %5005
  %5007 = zext i1 %5006 to i8
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5007, i8* %5008, align 1, !tbaa !2432
  %5009 = and i32 %5002, 255
  %5010 = call i32 @llvm.ctpop.i32(i32 %5009) #17
  %5011 = trunc i32 %5010 to i8
  %5012 = and i8 %5011, 1
  %5013 = xor i8 %5012, 1
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5013, i8* %5014, align 1, !tbaa !2446
  %5015 = xor i64 1, %4998
  %5016 = trunc i64 %5015 to i32
  %5017 = xor i32 %5016, %5002
  %5018 = lshr i32 %5017, 4
  %5019 = trunc i32 %5018 to i8
  %5020 = and i8 %5019, 1
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5020, i8* %5021, align 1, !tbaa !2447
  %5022 = icmp eq i32 %5002, 0
  %5023 = zext i1 %5022 to i8
  %5024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5023, i8* %5024, align 1, !tbaa !2448
  %5025 = lshr i32 %5002, 31
  %5026 = trunc i32 %5025 to i8
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5026, i8* %5027, align 1, !tbaa !2449
  %5028 = lshr i32 %5001, 31
  %5029 = xor i32 %5025, %5028
  %5030 = add nuw nsw i32 %5029, %5025
  %5031 = icmp eq i32 %5030, 2
  %5032 = zext i1 %5031 to i8
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5032, i8* %5033, align 1, !tbaa !2450
  %5034 = load i64, i64* %RBP
  %5035 = sub i64 %5034, 72
  %5036 = load i32, i32* %EAX
  %5037 = zext i32 %5036 to i64
  %5038 = load i64, i64* %PC
  %5039 = add i64 %5038, 3
  store i64 %5039, i64* %PC
  %5040 = inttoptr i64 %5035 to i32*
  store i32 %5036, i32* %5040
  %5041 = load i64, i64* %PC
  %5042 = sub i64 %5041, 39
  %5043 = load i64, i64* %PC
  %5044 = add i64 %5043, 5
  store i64 %5044, i64* %PC
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5042, i64* %5045, align 8, !tbaa !2428
  br label %block_400b97

block_400e84:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit, %block_400fd1
  %MEMORY.11 = phi %struct.Memory* [ %4860, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ], [ %MEMORY.9, %block_400fd1 ]
  %5046 = load i64, i64* %RBP
  %5047 = sub i64 %5046, 36
  %5048 = load i64, i64* %PC
  %5049 = add i64 %5048, 3
  store i64 %5049, i64* %PC
  %5050 = inttoptr i64 %5047 to i32*
  %5051 = load i32, i32* %5050
  %5052 = zext i32 %5051 to i64
  store i64 %5052, i64* %RAX, align 8, !tbaa !2428
  %5053 = load i32, i32* %EAX
  %5054 = zext i32 %5053 to i64
  %5055 = load i64, i64* %RBP
  %5056 = sub i64 %5055, 60
  %5057 = load i64, i64* %PC
  %5058 = add i64 %5057, 3
  store i64 %5058, i64* %PC
  %5059 = inttoptr i64 %5056 to i32*
  %5060 = load i32, i32* %5059
  %5061 = sub i32 %5053, %5060
  %5062 = icmp ult i32 %5053, %5060
  %5063 = zext i1 %5062 to i8
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5063, i8* %5064, align 1, !tbaa !2432
  %5065 = and i32 %5061, 255
  %5066 = call i32 @llvm.ctpop.i32(i32 %5065) #17
  %5067 = trunc i32 %5066 to i8
  %5068 = and i8 %5067, 1
  %5069 = xor i8 %5068, 1
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5069, i8* %5070, align 1, !tbaa !2446
  %5071 = xor i32 %5060, %5053
  %5072 = xor i32 %5071, %5061
  %5073 = lshr i32 %5072, 4
  %5074 = trunc i32 %5073 to i8
  %5075 = and i8 %5074, 1
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5075, i8* %5076, align 1, !tbaa !2447
  %5077 = icmp eq i32 %5061, 0
  %5078 = zext i1 %5077 to i8
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5078, i8* %5079, align 1, !tbaa !2448
  %5080 = lshr i32 %5061, 31
  %5081 = trunc i32 %5080 to i8
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5081, i8* %5082, align 1, !tbaa !2449
  %5083 = lshr i32 %5053, 31
  %5084 = lshr i32 %5060, 31
  %5085 = xor i32 %5084, %5083
  %5086 = xor i32 %5080, %5083
  %5087 = add nuw nsw i32 %5086, %5085
  %5088 = icmp eq i32 %5087, 2
  %5089 = zext i1 %5088 to i8
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5089, i8* %5090, align 1, !tbaa !2450
  %5091 = load i64, i64* %PC
  %5092 = add i64 %5091, 441
  %5093 = load i64, i64* %PC
  %5094 = add i64 %5093, 6
  %5095 = load i64, i64* %PC
  %5096 = add i64 %5095, 6
  store i64 %5096, i64* %PC
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5098 = load i8, i8* %5097, align 1, !tbaa !2448
  %5099 = icmp eq i8 %5098, 0
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5101 = load i8, i8* %5100, align 1, !tbaa !2449
  %5102 = icmp ne i8 %5101, 0
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5104 = load i8, i8* %5103, align 1, !tbaa !2450
  %5105 = icmp ne i8 %5104, 0
  %5106 = xor i1 %5102, %5105
  %5107 = xor i1 %5106, true
  %5108 = and i1 %5099, %5107
  %5109 = zext i1 %5108 to i8
  store i8 %5109, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5111 = select i1 %5108, i64 %5092, i64 %5094
  store i64 %5111, i64* %5110, align 8, !tbaa !2428
  %5112 = load i8, i8* %BRANCH_TAKEN
  %5113 = icmp eq i8 %5112, 1
  %5114 = load i64, i64* %RBP
  br i1 %5113, label %block_401043, label %block_400e90
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006a0_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4006a0:
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
  %35 = tail call %struct.Memory* @sub_400630_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_401070___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401070:
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
  store i64 ptrtoint (%seg_601de0__init_array_type* @seg_601de0__init_array to i64), i64* %R12, align 8, !tbaa !2428
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
  store i64 add (i64 ptrtoint (%seg_601de0__init_array_type* @seg_601de0__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !2428
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
  %119 = call i32 @llvm.ctpop.i32(i32 %118) #17
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
  %153 = call i32 @llvm.ctpop.i32(i32 %152) #17
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
  %187 = call i32 @llvm.ctpop.i32(i32 %186) #17
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
  %200 = sub i64 %199, 2908
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
  %211 = call %struct.Memory* @sub_400540__init_proc_renamed_(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  %220 = call i32 @llvm.ctpop.i32(i32 %219) #17
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
  br i1 %245, label %block_4010c6, label %block_4010a6

block_4010c6:                                     ; preds = %block_4010b0, %block_401070
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_401070 ], [ %387, %block_4010b0 ]
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
  %257 = call i32 @llvm.ctpop.i32(i32 %256) #17
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

block_4010a6:                                     ; preds = %block_401070
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
  %340 = call i32 @llvm.ctpop.i32(i32 %339) #17
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
  br label %block_4010b0

block_4010b0:                                     ; preds = %block_4010b0, %block_4010a6
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_4010a6 ], [ %387, %block_4010b0 ]
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
  %399 = call i32 @llvm.ctpop.i32(i32 %398) #17
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
  %432 = call i32 @llvm.ctpop.i32(i32 %431) #17
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
  br i1 %470, label %block_4010b0, label %block_4010c6
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4006a0_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4006a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4006a0_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4006a0_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400670___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400670;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400670___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400670___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020b8_fprintf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602090_malloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020a8_memset(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020d0_exit(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4010e0___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4010e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4010e0___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4010e0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401070___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401070;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401070___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401070___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4006b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4006b0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020b0___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_6020c8_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #16 {
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
  store i8 0, i8* %BRANCH_TAKEN, align 1
  store i64 0, i64* %SS_BASE, align 8
  store i64 0, i64* %ES_BASE, align 8
  store i64 0, i64* %DS_BASE, align 8
  store i64 0, i64* %CS_BASE, align 8
  store %struct.State* %0, %struct.State** %STATE, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.GPR, %struct.GPR* %4, i32 0, i32 33
  %6 = getelementptr inbounds %struct.Reg, %struct.Reg* %5, i32 0, i32 0
  %PC = bitcast %union.anon* %6 to i64*
  store i64 %1, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8 = getelementptr inbounds %struct.GPR, %struct.GPR* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.Reg, %struct.Reg* %8, i32 0, i32 0
  %10 = bitcast %union.anon* %9 to %struct.anon.2*
  %AH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %12 = getelementptr inbounds %struct.GPR, %struct.GPR* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.Reg, %struct.Reg* %12, i32 0, i32 0
  %14 = bitcast %union.anon* %13 to %struct.anon.2*
  %BH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %14, i32 0, i32 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %18 = bitcast %union.anon* %17 to %struct.anon.2*
  %CH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %18, i32 0, i32 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %20 = getelementptr inbounds %struct.GPR, %struct.GPR* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.Reg, %struct.Reg* %20, i32 0, i32 0
  %22 = bitcast %union.anon* %21 to %struct.anon.2*
  %DH = getelementptr inbounds %struct.anon.2, %struct.anon.2* %22, i32 0, i32 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %26 = bitcast %union.anon* %25 to %struct.anon.2*
  %AL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %26, i32 0, i32 0
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %30 = bitcast %union.anon* %29 to %struct.anon.2*
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %30, i32 0, i32 0
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %32 = getelementptr inbounds %struct.GPR, %struct.GPR* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.Reg, %struct.Reg* %32, i32 0, i32 0
  %34 = bitcast %union.anon* %33 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %34, i32 0, i32 0
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %38 = bitcast %union.anon* %37 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %38, i32 0, i32 0
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %42 = bitcast %union.anon* %41 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %42, i32 0, i32 0
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %44 = getelementptr inbounds %struct.GPR, %struct.GPR* %43, i32 0, i32 11
  %45 = getelementptr inbounds %struct.Reg, %struct.Reg* %44, i32 0, i32 0
  %46 = bitcast %union.anon* %45 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %46, i32 0, i32 0
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 13
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %50 = bitcast %union.anon* %49 to %struct.anon.2*
  %SPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %50, i32 0, i32 0
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.GPR, %struct.GPR* %51, i32 0, i32 15
  %53 = getelementptr inbounds %struct.Reg, %struct.Reg* %52, i32 0, i32 0
  %54 = bitcast %union.anon* %53 to %struct.anon.2*
  %BPL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %54, i32 0, i32 0
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 17
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %58 = bitcast %union.anon* %57 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %58, i32 0, i32 0
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 19
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0
  %62 = bitcast %union.anon* %61 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %62, i32 0, i32 0
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 21
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0
  %66 = bitcast %union.anon* %65 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %66, i32 0, i32 0
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 23
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %70 = bitcast %union.anon* %69 to %struct.anon.2*
  %R11B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %70, i32 0, i32 0
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %72 = getelementptr inbounds %struct.GPR, %struct.GPR* %71, i32 0, i32 25
  %73 = getelementptr inbounds %struct.Reg, %struct.Reg* %72, i32 0, i32 0
  %74 = bitcast %union.anon* %73 to %struct.anon.2*
  %R12B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %74, i32 0, i32 0
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 27
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %78 = bitcast %union.anon* %77 to %struct.anon.2*
  %R13B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %78, i32 0, i32 0
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 29
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %82 = bitcast %union.anon* %81 to %struct.anon.2*
  %R14B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %82, i32 0, i32 0
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 31
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %86 = bitcast %union.anon* %85 to %struct.anon.2*
  %R15B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %86, i32 0, i32 0
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %AX = bitcast %union.anon* %89 to i16*
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %BX = bitcast %union.anon* %92 to i16*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %CX = bitcast %union.anon* %95 to i16*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %DX = bitcast %union.anon* %98 to i16*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 9
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %SI = bitcast %union.anon* %101 to i16*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 11
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %DI = bitcast %union.anon* %104 to i16*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 13
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %SP = bitcast %union.anon* %107 to i16*
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 15
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %BP = bitcast %union.anon* %110 to i16*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 17
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %R8W = bitcast %union.anon* %113 to i16*
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 19
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %R9W = bitcast %union.anon* %116 to i16*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 21
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %R10W = bitcast %union.anon* %119 to i16*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 23
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %R11W = bitcast %union.anon* %122 to i16*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 25
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %R12W = bitcast %union.anon* %125 to i16*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 27
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %R13W = bitcast %union.anon* %128 to i16*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 29
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %R14W = bitcast %union.anon* %131 to i16*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 31
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %R15W = bitcast %union.anon* %134 to i16*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %IP = bitcast %union.anon* %137 to i16*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %EAX = bitcast %union.anon* %140 to i32*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %EBX = bitcast %union.anon* %143 to i32*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %ECX = bitcast %union.anon* %146 to i32*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %EDX = bitcast %union.anon* %149 to i32*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 9
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %ESI = bitcast %union.anon* %152 to i32*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 11
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %EDI = bitcast %union.anon* %155 to i32*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 13
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %ESP = bitcast %union.anon* %158 to i32*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %EBP = bitcast %union.anon* %161 to i32*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %EIP = bitcast %union.anon* %164 to i32*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 17
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %R8D = bitcast %union.anon* %167 to i32*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 19
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %R9D = bitcast %union.anon* %170 to i32*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 21
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %R10D = bitcast %union.anon* %173 to i32*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 23
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %R11D = bitcast %union.anon* %176 to i32*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 25
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %R12D = bitcast %union.anon* %179 to i32*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 27
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %R13D = bitcast %union.anon* %182 to i32*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 29
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %R14D = bitcast %union.anon* %185 to i32*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 31
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %R15D = bitcast %union.anon* %188 to i32*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %RAX = bitcast %union.anon* %191 to i64*
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %RBX = bitcast %union.anon* %194 to i64*
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 5
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %RCX = bitcast %union.anon* %197 to i64*
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 7
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %RDX = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 9
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RSI = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 11
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RDI = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 13
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RSP = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %RBP = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 17
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %R8 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 19
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %R9 = bitcast %union.anon* %218 to i64*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 21
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %R10 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 23
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %R11 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 25
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %R12 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 27
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %R13 = bitcast %union.anon* %230 to i64*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 29
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %R14 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 31
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %R15 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RIP = bitcast %union.anon* %239 to i64*
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %241 = getelementptr inbounds %struct.Segments, %struct.Segments* %240, i32 0, i32 1
  %SS = bitcast %union.SegmentSelector* %241 to i16*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %243 = getelementptr inbounds %struct.Segments, %struct.Segments* %242, i32 0, i32 3
  %ES = bitcast %union.SegmentSelector* %243 to i16*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %245 = getelementptr inbounds %struct.Segments, %struct.Segments* %244, i32 0, i32 5
  %GS = bitcast %union.SegmentSelector* %245 to i16*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %247 = getelementptr inbounds %struct.Segments, %struct.Segments* %246, i32 0, i32 7
  %FS = bitcast %union.SegmentSelector* %247 to i16*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %249 = getelementptr inbounds %struct.Segments, %struct.Segments* %248, i32 0, i32 9
  %DS = bitcast %union.SegmentSelector* %249 to i16*
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %251 = getelementptr inbounds %struct.Segments, %struct.Segments* %250, i32 0, i32 11
  %CS = bitcast %union.SegmentSelector* %251 to i16*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %253 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %252, i32 0, i32 5
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %GS_BASE = bitcast %union.anon* %254 to i64*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %256 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %255, i32 0, i32 7
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %FS_BASE = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %259 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %258, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %259 to %"class.std::bitset"*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %260, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %261 to %"class.std::bitset"*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %263 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %262, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %263 to %"class.std::bitset"*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %264, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %265 to %"class.std::bitset"*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %266, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %267 to %"class.std::bitset"*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %268, i64 0, i64 5
  %YMM5 = bitcast %union.VectorReg* %269 to %"class.std::bitset"*
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %270, i64 0, i64 6
  %YMM6 = bitcast %union.VectorReg* %271 to %"class.std::bitset"*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %272, i64 0, i64 7
  %YMM7 = bitcast %union.VectorReg* %273 to %"class.std::bitset"*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %275 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %274, i64 0, i64 8
  %YMM8 = bitcast %union.VectorReg* %275 to %"class.std::bitset"*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %277 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %276, i64 0, i64 9
  %YMM9 = bitcast %union.VectorReg* %277 to %"class.std::bitset"*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %279 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %278, i64 0, i64 10
  %YMM10 = bitcast %union.VectorReg* %279 to %"class.std::bitset"*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %280, i64 0, i64 11
  %YMM11 = bitcast %union.VectorReg* %281 to %"class.std::bitset"*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %282, i64 0, i64 12
  %YMM12 = bitcast %union.VectorReg* %283 to %"class.std::bitset"*
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %285 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %284, i64 0, i64 13
  %YMM13 = bitcast %union.VectorReg* %285 to %"class.std::bitset"*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %287 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %286, i64 0, i64 14
  %YMM14 = bitcast %union.VectorReg* %287 to %"class.std::bitset"*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %289 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %288, i64 0, i64 15
  %YMM15 = bitcast %union.VectorReg* %289 to %"class.std::bitset"*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %291 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %290, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %291 to %union.vec128_t*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %292, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %293 to %union.vec128_t*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %295 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %294, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %295 to %union.vec128_t*
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %296, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %297 to %union.vec128_t*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %298, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %299 to %union.vec128_t*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %300, i64 0, i64 5
  %XMM5 = bitcast %union.VectorReg* %301 to %union.vec128_t*
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %303 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %302, i64 0, i64 6
  %XMM6 = bitcast %union.VectorReg* %303 to %union.vec128_t*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %305 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %304, i64 0, i64 7
  %XMM7 = bitcast %union.VectorReg* %305 to %union.vec128_t*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %306, i64 0, i64 8
  %XMM8 = bitcast %union.VectorReg* %307 to %union.vec128_t*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %309 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %308, i64 0, i64 9
  %XMM9 = bitcast %union.VectorReg* %309 to %union.vec128_t*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %310, i64 0, i64 10
  %XMM10 = bitcast %union.VectorReg* %311 to %union.vec128_t*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %313 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %312, i64 0, i64 11
  %XMM11 = bitcast %union.VectorReg* %313 to %union.vec128_t*
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %315 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %314, i64 0, i64 12
  %XMM12 = bitcast %union.VectorReg* %315 to %union.vec128_t*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %317 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %316, i64 0, i64 13
  %XMM13 = bitcast %union.VectorReg* %317 to %union.vec128_t*
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %319 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %318, i64 0, i64 14
  %XMM14 = bitcast %union.VectorReg* %319 to %union.vec128_t*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %320, i64 0, i64 15
  %XMM15 = bitcast %union.VectorReg* %321 to %union.vec128_t*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %323 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %322, i32 0, i32 0
  %324 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %323, i64 0, i64 0
  %ST0 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %324, i32 0, i32 1
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %326 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %325, i32 0, i32 0
  %327 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %326, i64 0, i64 1
  %ST1 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %327, i32 0, i32 1
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %329 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %328, i32 0, i32 0
  %330 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %329, i64 0, i64 2
  %ST2 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %330, i32 0, i32 1
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %332 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %331, i32 0, i32 0
  %333 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %332, i64 0, i64 3
  %ST3 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %333, i32 0, i32 1
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %335 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %334, i32 0, i32 0
  %336 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %335, i64 0, i64 4
  %ST4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %336, i32 0, i32 1
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %338 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %337, i32 0, i32 0
  %339 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %338, i64 0, i64 5
  %ST5 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %339, i32 0, i32 1
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %341 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %340, i32 0, i32 0
  %342 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %341, i64 0, i64 6
  %ST6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %342, i32 0, i32 1
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %344 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %343, i32 0, i32 0
  %345 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %344, i64 0, i64 7
  %ST7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %345, i32 0, i32 1
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %347 = getelementptr inbounds %struct.MMX, %struct.MMX* %346, i32 0, i32 0
  %348 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %347, i64 0, i64 0
  %349 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %348, i32 0, i32 1
  %350 = bitcast %union.vec64_t* %349 to %struct.uint64v1_t*
  %351 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %350, i32 0, i32 0
  %MM0 = getelementptr inbounds [1 x i64], [1 x i64]* %351, i64 0, i64 0
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %353 = getelementptr inbounds %struct.MMX, %struct.MMX* %352, i32 0, i32 0
  %354 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %353, i64 0, i64 1
  %355 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %354, i32 0, i32 1
  %356 = bitcast %union.vec64_t* %355 to %struct.uint64v1_t*
  %357 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %356, i32 0, i32 0
  %MM1 = getelementptr inbounds [1 x i64], [1 x i64]* %357, i64 0, i64 0
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %359 = getelementptr inbounds %struct.MMX, %struct.MMX* %358, i32 0, i32 0
  %360 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %359, i64 0, i64 2
  %361 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %360, i32 0, i32 1
  %362 = bitcast %union.vec64_t* %361 to %struct.uint64v1_t*
  %363 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %362, i32 0, i32 0
  %MM2 = getelementptr inbounds [1 x i64], [1 x i64]* %363, i64 0, i64 0
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %365 = getelementptr inbounds %struct.MMX, %struct.MMX* %364, i32 0, i32 0
  %366 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %365, i64 0, i64 3
  %367 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %366, i32 0, i32 1
  %368 = bitcast %union.vec64_t* %367 to %struct.uint64v1_t*
  %369 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %368, i32 0, i32 0
  %MM3 = getelementptr inbounds [1 x i64], [1 x i64]* %369, i64 0, i64 0
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %371 = getelementptr inbounds %struct.MMX, %struct.MMX* %370, i32 0, i32 0
  %372 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %371, i64 0, i64 4
  %373 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %372, i32 0, i32 1
  %374 = bitcast %union.vec64_t* %373 to %struct.uint64v1_t*
  %375 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %374, i32 0, i32 0
  %MM4 = getelementptr inbounds [1 x i64], [1 x i64]* %375, i64 0, i64 0
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %377 = getelementptr inbounds %struct.MMX, %struct.MMX* %376, i32 0, i32 0
  %378 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %377, i64 0, i64 5
  %379 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %378, i32 0, i32 1
  %380 = bitcast %union.vec64_t* %379 to %struct.uint64v1_t*
  %381 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %380, i32 0, i32 0
  %MM5 = getelementptr inbounds [1 x i64], [1 x i64]* %381, i64 0, i64 0
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %383 = getelementptr inbounds %struct.MMX, %struct.MMX* %382, i32 0, i32 0
  %384 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %383, i64 0, i64 6
  %385 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %384, i32 0, i32 1
  %386 = bitcast %union.vec64_t* %385 to %struct.uint64v1_t*
  %387 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %386, i32 0, i32 0
  %MM6 = getelementptr inbounds [1 x i64], [1 x i64]* %387, i64 0, i64 0
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %389 = getelementptr inbounds %struct.MMX, %struct.MMX* %388, i32 0, i32 0
  %390 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %389, i64 0, i64 7
  %391 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %390, i32 0, i32 1
  %392 = bitcast %union.vec64_t* %391 to %struct.uint64v1_t*
  %393 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %392, i32 0, i32 0
  %MM7 = getelementptr inbounds [1 x i64], [1 x i64]* %393, i64 0, i64 0
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %AF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %394, i32 0, i32 5
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %CF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %395, i32 0, i32 1
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %DF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %396, i32 0, i32 11
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %OF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %397, i32 0, i32 13
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %PF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %398, i32 0, i32 3
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %SF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %399, i32 0, i32 9
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %ZF = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %400, i32 0, i32 7
  store i64* @DR0, i64** %_DR0, align 8
  store i64* @DR1, i64** %_DR1, align 8
  store i64* @DR2, i64** %_DR2, align 8
  store i64* @DR3, i64** %_DR3, align 8
  store i64* @DR4, i64** %_DR4, align 8
  store i64* @DR5, i64** %_DR5, align 8
  store i64* @DR6, i64** %_DR6, align 8
  store i64* @DR7, i64** %_DR7, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR0, i32 0, i32 0), i64** %CR0, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR1, i32 0, i32 0), i64** %CR1, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR2, i32 0, i32 0), i64** %CR2, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR3, i32 0, i32 0), i64** %CR3, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR4, i32 0, i32 0), i64** %CR4, align 8
  store i64* getelementptr inbounds (%union.anon, %union.anon* @gCR8, i32 0, i32 0), i64** %CR8, align 8
  %401 = bitcast %"class.std::bitset"* %YMM0 to double*
  %402 = load double, double* %401
  %403 = load i64, i64* %RSP
  %404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %405 = inttoptr i64 %403 to i64*
  %406 = load i64, i64* %405
  store i64 %406, i64* %PC
  %407 = add i64 %403, 8
  store i64 %407, i64* %RSP
  %408 = call double @sin(double %402)
  store %"class.std::bitset" zeroinitializer, %"class.std::bitset"* %YMM0
  %409 = bitcast %"class.std::bitset"* %YMM0 to double*
  store double %408, double* %409
  %410 = load %struct.Memory*, %struct.Memory** %MEMORY
  ret %struct.Memory* %410
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400540;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400540__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4010e4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4010e4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_4010e0___libc_csu_fini()
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
  call void @callback_sub_401070___libc_csu_init()
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
attributes #16 = { alwaysinline inlinehint "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nounwind }
attributes #18 = { alwaysinline nobuiltin nounwind }

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
!2457 = !{!2458, !2460}
!2458 = distinct !{!2458, !2459, !"ext_6020c8_sin: argument 0"}
!2459 = distinct !{!2459, !"ext_6020c8_sin"}
!2460 = distinct !{!2460, !2459, !"ext_6020c8_sin: argument 1"}
!2461 = !{!2458}
!2462 = !{!2460}
!2463 = !{!2464, !2466}
!2464 = distinct !{!2464, !2465, !"ext_6020c8_sin: argument 0"}
!2465 = distinct !{!2465, !"ext_6020c8_sin"}
!2466 = distinct !{!2466, !2465, !"ext_6020c8_sin: argument 1"}
!2467 = !{!2464}
!2468 = !{!2466}
