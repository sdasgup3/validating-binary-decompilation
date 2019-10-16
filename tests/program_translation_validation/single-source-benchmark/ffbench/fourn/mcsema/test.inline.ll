; ModuleID = '../binary/test.mcsema.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400530__init_type = type <{ [23 x i8] }>
%seg_400550__plt_type = type <{ [96 x i8] }>
%seg_4005b0__text_type = type <{ [2850 x i8] }>
%seg_4010d4__fini_type = type <{ [9 x i8] }>
%seg_4010e0__rodata_type = type <{ [72 x i8], [28 x i8], [48 x i8], [35 x i8], [35 x i8] }>
%seg_4011bc__eh_frame_hdr_type = type <{ [68 x i8] }>
%seg_401200__eh_frame_type = type <{ [280 x i8] }>
%seg_601df0__init_array_type = type <{ i64, i64 }>
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
@seg_400530__init = internal constant %seg_400530__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\BD\1A \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400550__plt = internal constant %seg_400550__plt_type <{ [96 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\B2\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\AA\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\A2\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\9A\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\92\1A \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_4005b0__text = internal constant %seg_4005b0__text_type <{ [2850 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\D0\10@\00H\C7\C1`\10@\00H\C7\C7\A0\06@\00\FF\15\16\1A \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8P `\00H=P `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFP `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEP `\00UH\81\EEP `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFP `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\01\1A \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\EF\19 \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\81\EC\C0\00\00\00\C7E\FC\00\00\00\00\C7E\E4?\00\00\00\C7E\E0\00\01\00\00\8BE\E0\0F\AFE\E0Hc\C8H\89M\D0H\8BM\D0H\83\C1\01H\C1\E1\01H\C1\E1\03H\89M\C8\8BE\E0\89\04%t `\00\89\04%p `\00H\8B}\C8\E8\84\FE\FF\FFH\89E\D8H\83}\D8\00\0F\85)\00\00\00H\BE(\11@\00\00\00\00\00H\8B<%` `\00\B0\00\E8L\FE\FF\FF\BF\01\00\00\00\89\85t\FF\FF\FF\E8l\FE\FF\FF1\F6H\8BE\D8H\8BU\C8H\89\C7\E8\1A\FE\FF\FF\C7E\F8\00\00\00\00\8BE\F8;E\E0\0F\8D{\00\00\00\C7E\F4\00\00\00\00\8BE\F4;E\E0\0F\8DU\00\00\00\8BE\F8\83\E0\0F\83\F8\08\0F\84\0F\00\00\00\8BE\F4\83\E0\0F\83\F8\08\0F\85$\00\00\00\F2\0F\10\05n\09\00\00H\8BE\D8\8BM\E0\0F\AFM\F8\03M\F4\C1\E1\01\83\C1\01Hc\D1\F2\0F\11\04\D0\E9\00\00\00\00\8BE\F4\83\C0\01\89E\F4\E9\9F\FF\FF\FF\E9\00\00\00\00\8BE\F8\83\C0\01\89E\F8\E9y\FF\FF\FF\C7E\F8\00\00\00\00\8BE\F8;E\E4\0F\8DH\00\00\00H\BEl `\00\00\00\00\00\BA\02\00\00\00\B9\01\00\00\00H\8B}\D8\E8\5C\03\00\00H\BEl `\00\00\00\00\00\BA\02\00\00\00\B9\FF\FF\FF\FFH\8B}\D8\E8?\03\00\00\8BE\F8\83\C0\01\89E\F8\E9\AC\FF\FF\FF\0FW\C0\F2\0F\10\0D\AE\08\00\00\F2\0F\10\15\AE\08\00\00\F2\0F\11U\B0\F2\0F\11M\A8\F2\0F\11U\A0\F2\0F\11M\98\F2\0F\11E\80\F2\0F\11\85x\FF\FF\FF\C7E\F8\01\00\00\00HcE\F8H;E\D0\0F\8FS\01\00\00H\8BE\D8HcM\F8\F2\0F\10\04\C8\F2\0F\11E\90H\8BE\D8\8BU\F8\83\C2\01Hc\CA\F2\0F\10\04\C8\F2\0F\11E\88\F2\0F\10E\90\F2\0FXE\80\F2\0F\11E\80\F2\0F\10E\88\F2\0FX\85x\FF\FF\FF\F2\0F\11\85x\FF\FF\FF\F2\0F\10E\90\F2\0F\10M\B0f\0F.\C8\0F\82\12\00\00\00\F2\0F\10E\90\F2\0F\11\85h\FF\FF\FF\E9\0D\00\00\00\F2\0F\10E\B0\F2\0F\11\85h\FF\FF\FF\F2\0F\10\85h\FF\FF\FF\F2\0F\11E\B0\F2\0F\10E\90f\0F.E\A8\0F\86\12\00\00\00\F2\0F\10E\90\F2\0F\11\85`\FF\FF\FF\E9\0D\00\00\00\F2\0F\10E\A8\F2\0F\11\85`\FF\FF\FF\F2\0F\10\85`\FF\FF\FF\F2\0F\11E\A8\F2\0F\10E\88\F2\0F\10M\A0f\0F.\C8\0F\82\12\00\00\00\F2\0F\10E\88\F2\0F\11\85X\FF\FF\FF\E9\0D\00\00\00\F2\0F\10E\A0\F2\0F\11\85X\FF\FF\FF\F2\0F\10\85X\FF\FF\FF\F2\0F\11E\A0\F2\0F\10E\88f\0F.E\98\0F\86\12\00\00\00\F2\0F\10E\88\F2\0F\11\85P\FF\FF\FF\E9\0D\00\00\00\F2\0F\10E\98\F2\0F\11\85P\FF\FF\FF\F2\0F\10\85P\FF\FF\FF\F2\0F\11E\98\8BE\F8\83\C0\02\89E\F8\E9\9F\FE\FF\FF\F2\0F\10\05%\07\00\00\F2\0F\10M\B0\F2\0F\11M\C0\F2\0F\10M\A8\F2\0F\5CM\B0\F2\0F^\C1\F2\0F\11E\B8\C7E\E8\00\00\00\00\C7E\F8\00\00\00\00\8BE\F8;E\E0\0F\8D\E6\00\00\00\C7E\F4\00\00\00\00\8BE\F4;E\E0\0F\8D\C0\00\00\00\B0\01H\8BM\D8\8BU\E0\0F\AFU\F8\03U\F4\C1\E2\01\83\C2\01Hc\F2\F2\0F\10\04\F1\F2\0F\5CE\C0\F2\0FYE\B8\F2\0F,\D0\89U\F0\8BU\F8\83\E2\0F\83\FA\08\88\85O\FF\FF\FF\0F\84\12\00\00\00\8BE\F4\83\E0\0F\83\F8\08\0F\94\C1\88\8DO\FF\FF\FF\8A\85O\FF\FF\FF1\C9\BA\FF\00\00\00\A8\01\0FE\CA\89M\EC\8BM\F0;M\EC\0F\846\00\00\00H\BED\11@\00\00\00\00\00\8BE\E8\83\C0\01\89E\E8H\8B<%` `\00\8BU\F8\8BM\F4D\8BE\ECD\8BM\F0\B0\00\E8\AC\FA\FF\FF\89\85H\FF\FF\FF\E9\00\00\00\00\8BE\F4\83\C0\01\89E\F4\E94\FF\FF\FF\E9\00\00\00\00\8BE\F8\83\C0\01\89E\F8\E9\0E\FF\FF\FF\83}\E8\00\0F\85'\00\00\00H\BEt\11@\00\00\00\00\00H\8B<%` `\00\8BU\E4\B0\00\E8Z\FA\FF\FF\89\85D\FF\FF\FF\E9%\00\00\00H\BE\97\11@\00\00\00\00\00H\8B<%` `\00\8BU\E4\8BM\E8\B0\00\E80\FA\FF\FF\89\85@\FF\FF\FF1\C0H\81\C4\C0\00\00\00]\C3ffffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\81\EC\C0\00\00\00H\89}\F8H\89u\F0\89U\EC\89M\E8\C7E\A0\01\00\00\00\C7E\B8\01\00\00\00\8BE\B8;E\EC\0F\8F \00\00\00H\8BE\F0HcM\B8\8B\14\88\0F\AFU\A0\89U\A0\8BE\B8\83\C0\01\89E\B8\E9\D4\FF\FF\FF\C7E\A8\01\00\00\00\8BE\EC\89E\B8\83}\B8\01\0F\8C\8C\04\00\00H\8BE\F0HcM\B8\8B\14\88\89U\AC\8BE\A0\8BU\AC\0F\AFU\A8\89\95\5C\FF\FF\FF\99\8B\B5\5C\FF\FF\FF\F7\FE\89E\A4\8BE\A8\C1\E0\01\89E\D0\8BE\D0\0F\AFE\AC\89E\CC\8BE\CC\0F\AFE\A4\89E\C8\C7E\D8\01\00\00\00\C7E\E0\01\00\00\00\8BE\E0;E\CC\0F\8Fk\01\00\00\8BE\E0;E\D8\0F\8D\EE\00\00\00\8BE\E0\89E\E4\8BE\E4\8BM\E0\03M\D0\83\E9\029\C8\0F\8F\CF\00\00\00\8BE\E4\89E\DC\8BE\DC;E\C8\0F\8F\AA\00\00\00\8BE\D8\03E\DC+E\E0\89E\D4H\8BM\F8HcU\DC\F2\0F\10\04\D1\F2\0F\11E\90H\8BM\F8HcU\D4\F2\0F\10\04\D1H\8BM\F8HcU\DC\F2\0F\11\04\D1\F2\0F\10E\90H\8BM\F8HcU\D4\F2\0F\11\04\D1H\8BM\F8\8BE\DC\83\C0\01Hc\D0\F2\0F\10\04\D1\F2\0F\11E\90H\8BM\F8\8BE\D4\83\C0\01Hc\D0\F2\0F\10\04\D1H\8BM\F8\8BE\DC\83\C0\01Hc\D0\F2\0F\11\04\D1\F2\0F\10E\90H\8BM\F8\8BE\D4\83\C0\01Hc\D0\F2\0F\11\04\D1\8BE\CC\03E\DC\89E\DC\E9J\FF\FF\FF\E9\00\00\00\00\8BE\E4\83\C0\02\89E\E4\E9\1D\FF\FF\FF\E9\00\00\00\00\8BE\CC\C1\F8\01\89E\BC1\C0\88\C1\8BE\BC;E\D0\88\8D[\FF\FF\FF\0F\8C\0F\00\00\00\8BE\D8;E\BC\0F\9F\C1\88\8D[\FF\FF\FF\8A\85[\FF\FF\FF\A8\01\0F\85\05\00\00\00\E9\19\00\00\00\8BE\BC\8BM\D8)\C1\89M\D8\8BE\BC\C1\F8\01\89E\BC\E9\AF\FF\FF\FF\8BE\BC\03E\D8\89E\D8\8BE\D0\03E\E0\89E\E0\E9\89\FE\FF\FF\8BE\D0\89E\C4\8BE\C4;E\CC\0F\8D\96\02\00\00\0FW\C0\F2\0F\10\0DU\03\00\00\F2\0F\10\15U\03\00\00\F2\0F\10\1DU\03\00\00\F2\0F\10%U\03\00\00\8BE\C4\C1\E0\01\89E\C0\F2\0F*m\E8\F2\0FY\EC\8BE\C0\99\F7}\D0\F2\0F*\E0\F2\0F^\EC\F2\0F\11m\88\F2\0FY]\88\F2\0F\11\85P\FF\FF\FF\0F(\C3\F2\0F\11\95H\FF\FF\FF\F2\0F\11\8D@\FF\FF\FF\E8z\F7\FF\FF\F2\0F\11\85`\FF\FF\FF\F2\0F\10\85H\FF\FF\FF\F2\0FY\85`\FF\FF\FF\F2\0FY\85`\FF\FF\FF\F2\0F\11\85p\FF\FF\FF\F2\0F\10E\88\E8H\F7\FF\FF\F2\0F\11\85x\FF\FF\FF\F2\0F\10\85@\FF\FF\FF\F2\0F\11\85h\FF\FF\FF\F2\0F\10\8DP\FF\FF\FF\F2\0F\11M\80\C7E\DC\01\00\00\00\8BE\DC;E\C4\0F\8F\B3\01\00\00\8BE\DC\89E\E4\8BE\E4\8BM\DC\03M\D0\83\E9\029\C8\0F\8F'\01\00\00\8BE\E4\89E\E0\8BE\E0;E\C8\0F\8F\02\01\00\00\8BE\E0\89E\B4\8BE\B4\03E\C4\89E\B0\F2\0F\10\85h\FF\FF\FFH\8BM\F8HcU\B0\F2\0FY\04\D1\F2\0F\10M\80H\8BM\F8\8BE\B0\83\C0\01Hc\D0\F2\0FY\0C\D1\F2\0F\5C\C1\F2\0F\11E\90\F2\0F\10\85h\FF\FF\FFH\8BM\F8\8BE\B0\83\C0\01Hc\D0\F2\0FY\04\D1\F2\0F\10M\80H\8BM\F8HcU\B0\F2\0FY\0C\D1\F2\0FX\C1\F2\0F\11E\98H\8BM\F8HcU\B4\F2\0F\10\04\D1\F2\0F\5CE\90H\8BM\F8HcU\B0\F2\0F\11\04\D1H\8BM\F8\8BE\B4\83\C0\01Hc\D0\F2\0F\10\04\D1\F2\0F\5CE\98H\8BM\F8\8BE\B0\83\C0\01Hc\D0\F2\0F\11\04\D1\F2\0F\10E\90H\8BM\F8HcU\B4\F2\0FX\04\D1\F2\0F\11\04\D1\F2\0F\10E\98H\8BM\F8\8BE\B4\83\C0\01Hc\D0\F2\0FX\04\D1\F2\0F\11\04\D1\8BE\C0\03E\E0\89E\E0\E9\F2\FE\FF\FF\E9\00\00\00\00\8BE\E4\83\C0\02\89E\E4\E9\C5\FE\FF\FF\F2\0F\10\85h\FF\FF\FF\F2\0F\11\85`\FF\FF\FF\F2\0FY\85p\FF\FF\FF\F2\0F\10M\80\F2\0FY\8Dx\FF\FF\FF\F2\0F\5C\C1\F2\0FX\85h\FF\FF\FF\F2\0F\11\85h\FF\FF\FF\F2\0F\10E\80\F2\0FY\85p\FF\FF\FF\F2\0F\10\8D`\FF\FF\FF\F2\0FY\8Dx\FF\FF\FF\F2\0FX\C1\F2\0FXE\80\F2\0F\11E\80\8BE\D0\03E\DC\89E\DC\E9A\FE\FF\FF\8BE\C0\89E\C4\E9^\FD\FF\FF\8BE\AC\0F\AFE\A8\89E\A8\8BE\B8\83\C0\FF\89E\B8\E9j\FB\FF\FFH\81\C4\C0\00\00\00]\C3\90AWAVI\89\D7AUATL\8D%~\0D \00UH\8D-~\0D \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\9F\F4\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_4010d4__fini = internal constant %seg_4010d4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_4010e0__rodata = internal constant %seg_4010e0__rodata_type <{ [72 x i8] c"\01\00\02\00\00\00\00\00\00\00\00 _\A0\02\C2\00\00\00 _\A0\02B\00\00\00\00\00\E0o@\00\00\00\00\00\00`@\00\00\00\00\00\00\F0?\00\00\00\00\00\00\00\C0\00\00\00\00\00\00\E0?\1C-DT\FB!\19@", [28 x i8] c"Can't allocate data array.\0A\00", [48 x i8] c"Wrong answer at (%d,%d)!  Expected %d, got %d.\0A\00", [35 x i8] c"%d passes.  No errors in results.\0A\00", [35 x i8] c"%d passes.  %d errors in results.\0A\00" }>
@seg_4011bc__eh_frame_hdr = internal constant %seg_4011bc__eh_frame_hdr_type <{ [68 x i8] c"\01\1B\03;@\00\00\00\07\00\00\00\94\F3\FF\FF\9C\00\00\00\F4\F3\FF\FF\5C\00\00\00$\F4\FF\FF\88\00\00\00\E4\F4\FF\FF\C4\00\00\00\A4\F9\FF\FF\E0\00\00\00\A4\FE\FF\FF\FC\00\00\00\14\FF\FF\FFD\01\00\00" }>
@seg_401200__eh_frame = internal constant %seg_401200__eh_frame_type <{ [280 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00\90\F3\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00\94\F3\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00\F0\F2\FF\FF`\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\18\F4\FF\FF\B1\04\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\BC\F8\FF\FF\FF\04\00\00\00A\0E\10\86\02C\0D\06\00\00\00D\00\00\00\90\00\00\00\A0\FD\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\D8\00\00\00\C8\FD\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400690_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400660___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), i64 ptrtoint (i64 (i64)* @malloc to i64), i64 ptrtoint (double (double)* @sin to i64), i64 ptrtoint (i64 (i64)* @exit to i64) }>
@seg_602040__data = internal global %seg_602040__data_type zeroinitializer
@seg_602060__bss = internal global %seg_602060__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400690_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400660___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4010d0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401060___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
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
declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @malloc(i64) #13

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @exit(i64) #13

; Function Attrs: noinline
define %struct.Memory* @sub_401060___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401060:
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
  %211 = call %struct.Memory* @sub_400530__init_proc(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  br i1 %245, label %block_4010b6, label %block_401096

block_4010b6:                                     ; preds = %block_4010a0, %block_401060
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_401060 ], [ %387, %block_4010a0 ]
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

block_401096:                                     ; preds = %block_401060
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
  br label %block_4010a0

block_4010a0:                                     ; preds = %block_4010a0, %block_401096
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_401096 ], [ %387, %block_4010a0 ]
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
  br i1 %470, label %block_4010a0, label %block_4010b6
}

; Function Attrs: noinline
define %struct.Memory* @sub_4006a0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  br i1 %345, label %block_400734, label %block_40070b

block_400878:                                     ; preds = %block_40086a
  %346 = load i64, i64* %RBP
  %347 = sub i64 %346, 40
  %348 = load i64, i64* %PC
  %349 = add i64 %348, 4
  store i64 %349, i64* %PC
  %350 = inttoptr i64 %347 to i64*
  %351 = load i64, i64* %350
  store i64 %351, i64* %RAX, align 8, !tbaa !2428
  %352 = load i64, i64* %RBP
  %353 = sub i64 %352, 8
  %354 = load i64, i64* %PC
  %355 = add i64 %354, 4
  store i64 %355, i64* %PC
  %356 = inttoptr i64 %353 to i32*
  %357 = load i32, i32* %356
  %358 = sext i32 %357 to i64
  store i64 %358, i64* %RCX, align 8, !tbaa !2428
  %359 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %360 = load i64, i64* %RAX
  %361 = load i64, i64* %RCX
  %362 = mul i64 %361, 8
  %363 = add i64 %362, %360
  %364 = load i64, i64* %PC
  %365 = add i64 %364, 5
  store i64 %365, i64* %PC
  %366 = inttoptr i64 %363 to double*
  %367 = load double, double* %366
  %368 = bitcast i8* %359 to double*
  store double %367, double* %368, align 1, !tbaa !2452
  %369 = getelementptr inbounds i8, i8* %359, i64 8
  %370 = bitcast i8* %369 to double*
  store double 0.000000e+00, double* %370, align 1, !tbaa !2452
  %371 = load i64, i64* %RBP
  %372 = sub i64 %371, 112
  %373 = bitcast %union.vec128_t* %XMM0 to i8*
  %374 = load i64, i64* %PC
  %375 = add i64 %374, 5
  store i64 %375, i64* %PC
  %376 = bitcast i8* %373 to double*
  %377 = load double, double* %376, align 1
  %378 = inttoptr i64 %372 to double*
  store double %377, double* %378
  %379 = load i64, i64* %RBP
  %380 = sub i64 %379, 40
  %381 = load i64, i64* %PC
  %382 = add i64 %381, 4
  store i64 %382, i64* %PC
  %383 = inttoptr i64 %380 to i64*
  %384 = load i64, i64* %383
  store i64 %384, i64* %RAX, align 8, !tbaa !2428
  %385 = load i64, i64* %RBP
  %386 = sub i64 %385, 8
  %387 = load i64, i64* %PC
  %388 = add i64 %387, 3
  store i64 %388, i64* %PC
  %389 = inttoptr i64 %386 to i32*
  %390 = load i32, i32* %389
  %391 = zext i32 %390 to i64
  store i64 %391, i64* %RDX, align 8, !tbaa !2428
  %392 = load i64, i64* %RDX
  %393 = load i64, i64* %PC
  %394 = add i64 %393, 3
  store i64 %394, i64* %PC
  %395 = trunc i64 %392 to i32
  %396 = add i32 1, %395
  %397 = zext i32 %396 to i64
  store i64 %397, i64* %RDX, align 8, !tbaa !2428
  %398 = icmp ult i32 %396, %395
  %399 = icmp ult i32 %396, 1
  %400 = or i1 %398, %399
  %401 = zext i1 %400 to i8
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %401, i8* %402, align 1, !tbaa !2432
  %403 = and i32 %396, 255
  %404 = call i32 @llvm.ctpop.i32(i32 %403) #17
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  %407 = xor i8 %406, 1
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %407, i8* %408, align 1, !tbaa !2446
  %409 = xor i64 1, %392
  %410 = trunc i64 %409 to i32
  %411 = xor i32 %410, %396
  %412 = lshr i32 %411, 4
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %414, i8* %415, align 1, !tbaa !2447
  %416 = icmp eq i32 %396, 0
  %417 = zext i1 %416 to i8
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %417, i8* %418, align 1, !tbaa !2448
  %419 = lshr i32 %396, 31
  %420 = trunc i32 %419 to i8
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %420, i8* %421, align 1, !tbaa !2449
  %422 = lshr i32 %395, 31
  %423 = xor i32 %419, %422
  %424 = add nuw nsw i32 %423, %419
  %425 = icmp eq i32 %424, 2
  %426 = zext i1 %425 to i8
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %426, i8* %427, align 1, !tbaa !2450
  %428 = load i32, i32* %EDX
  %429 = zext i32 %428 to i64
  %430 = load i64, i64* %PC
  %431 = add i64 %430, 3
  store i64 %431, i64* %PC
  %432 = shl i64 %429, 32
  %433 = ashr exact i64 %432, 32
  store i64 %433, i64* %RCX, align 8, !tbaa !2428
  %434 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %435 = load i64, i64* %RAX
  %436 = load i64, i64* %RCX
  %437 = mul i64 %436, 8
  %438 = add i64 %437, %435
  %439 = load i64, i64* %PC
  %440 = add i64 %439, 5
  store i64 %440, i64* %PC
  %441 = inttoptr i64 %438 to double*
  %442 = load double, double* %441
  %443 = bitcast i8* %434 to double*
  store double %442, double* %443, align 1, !tbaa !2452
  %444 = getelementptr inbounds i8, i8* %434, i64 8
  %445 = bitcast i8* %444 to double*
  store double 0.000000e+00, double* %445, align 1, !tbaa !2452
  %446 = load i64, i64* %RBP
  %447 = sub i64 %446, 120
  %448 = bitcast %union.vec128_t* %XMM0 to i8*
  %449 = load i64, i64* %PC
  %450 = add i64 %449, 5
  store i64 %450, i64* %PC
  %451 = bitcast i8* %448 to double*
  %452 = load double, double* %451, align 1
  %453 = inttoptr i64 %447 to double*
  store double %452, double* %453
  %454 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %455 = load i64, i64* %RBP
  %456 = sub i64 %455, 112
  %457 = load i64, i64* %PC
  %458 = add i64 %457, 5
  store i64 %458, i64* %PC
  %459 = inttoptr i64 %456 to double*
  %460 = load double, double* %459
  %461 = bitcast i8* %454 to double*
  store double %460, double* %461, align 1, !tbaa !2452
  %462 = getelementptr inbounds i8, i8* %454, i64 8
  %463 = bitcast i8* %462 to double*
  store double 0.000000e+00, double* %463, align 1, !tbaa !2452
  %464 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %465 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %466 = load i64, i64* %RBP
  %467 = sub i64 %466, 128
  %468 = load i64, i64* %PC
  %469 = add i64 %468, 5
  store i64 %469, i64* %PC
  %470 = bitcast i8* %465 to double*
  %471 = load double, double* %470, align 1
  %472 = getelementptr inbounds i8, i8* %465, i64 8
  %473 = bitcast i8* %472 to i64*
  %474 = load i64, i64* %473, align 1
  %475 = inttoptr i64 %467 to double*
  %476 = load double, double* %475
  %477 = fadd double %471, %476
  %478 = bitcast i8* %464 to double*
  store double %477, double* %478, align 1, !tbaa !2452
  %479 = getelementptr inbounds i8, i8* %464, i64 8
  %480 = bitcast i8* %479 to i64*
  store i64 %474, i64* %480, align 1, !tbaa !2452
  %481 = load i64, i64* %RBP
  %482 = sub i64 %481, 128
  %483 = bitcast %union.vec128_t* %XMM0 to i8*
  %484 = load i64, i64* %PC
  %485 = add i64 %484, 5
  store i64 %485, i64* %PC
  %486 = bitcast i8* %483 to double*
  %487 = load double, double* %486, align 1
  %488 = inttoptr i64 %482 to double*
  store double %487, double* %488
  %489 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %490 = load i64, i64* %RBP
  %491 = sub i64 %490, 120
  %492 = load i64, i64* %PC
  %493 = add i64 %492, 5
  store i64 %493, i64* %PC
  %494 = inttoptr i64 %491 to double*
  %495 = load double, double* %494
  %496 = bitcast i8* %489 to double*
  store double %495, double* %496, align 1, !tbaa !2452
  %497 = getelementptr inbounds i8, i8* %489, i64 8
  %498 = bitcast i8* %497 to double*
  store double 0.000000e+00, double* %498, align 1, !tbaa !2452
  %499 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %500 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %501 = load i64, i64* %RBP
  %502 = sub i64 %501, 136
  %503 = load i64, i64* %PC
  %504 = add i64 %503, 8
  store i64 %504, i64* %PC
  %505 = bitcast i8* %500 to double*
  %506 = load double, double* %505, align 1
  %507 = getelementptr inbounds i8, i8* %500, i64 8
  %508 = bitcast i8* %507 to i64*
  %509 = load i64, i64* %508, align 1
  %510 = inttoptr i64 %502 to double*
  %511 = load double, double* %510
  %512 = fadd double %506, %511
  %513 = bitcast i8* %499 to double*
  store double %512, double* %513, align 1, !tbaa !2452
  %514 = getelementptr inbounds i8, i8* %499, i64 8
  %515 = bitcast i8* %514 to i64*
  store i64 %509, i64* %515, align 1, !tbaa !2452
  %516 = load i64, i64* %RBP
  %517 = sub i64 %516, 136
  %518 = bitcast %union.vec128_t* %XMM0 to i8*
  %519 = load i64, i64* %PC
  %520 = add i64 %519, 8
  store i64 %520, i64* %PC
  %521 = bitcast i8* %518 to double*
  %522 = load double, double* %521, align 1
  %523 = inttoptr i64 %517 to double*
  store double %522, double* %523
  %524 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %525 = load i64, i64* %RBP
  %526 = sub i64 %525, 112
  %527 = load i64, i64* %PC
  %528 = add i64 %527, 5
  store i64 %528, i64* %PC
  %529 = inttoptr i64 %526 to double*
  %530 = load double, double* %529
  %531 = bitcast i8* %524 to double*
  store double %530, double* %531, align 1, !tbaa !2452
  %532 = getelementptr inbounds i8, i8* %524, i64 8
  %533 = bitcast i8* %532 to double*
  store double 0.000000e+00, double* %533, align 1, !tbaa !2452
  %534 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %535 = load i64, i64* %RBP
  %536 = sub i64 %535, 80
  %537 = load i64, i64* %PC
  %538 = add i64 %537, 5
  store i64 %538, i64* %PC
  %539 = inttoptr i64 %536 to double*
  %540 = load double, double* %539
  %541 = bitcast i8* %534 to double*
  store double %540, double* %541, align 1, !tbaa !2452
  %542 = getelementptr inbounds i8, i8* %534, i64 8
  %543 = bitcast i8* %542 to double*
  store double 0.000000e+00, double* %543, align 1, !tbaa !2452
  %544 = bitcast %union.vec128_t* %XMM1 to i8*
  %545 = bitcast %union.vec128_t* %XMM0 to i8*
  %546 = load i64, i64* %PC
  %547 = add i64 %546, 4
  store i64 %547, i64* %PC
  %548 = bitcast i8* %544 to double*
  %549 = load double, double* %548, align 1
  %550 = bitcast i8* %545 to double*
  %551 = load double, double* %550, align 1
  %552 = fcmp uno double %549, %551
  br i1 %552, label %553, label %565

; <label>:553:                                    ; preds = %block_400878
  %554 = fadd double %549, %551
  %555 = bitcast double %554 to i64
  %556 = and i64 %555, 9221120237041090560
  %557 = icmp eq i64 %556, 9218868437227405312
  %558 = and i64 %555, 2251799813685247
  %559 = icmp ne i64 %558, 0
  %560 = and i1 %557, %559
  br i1 %560, label %561, label %571

; <label>:561:                                    ; preds = %553
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %563 = load i64, i64* %562, align 8, !tbaa !2428
  %564 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %563, %struct.Memory* %MEMORY.0) #18
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2

; <label>:565:                                    ; preds = %block_400878
  %566 = fcmp ogt double %549, %551
  br i1 %566, label %571, label %567

; <label>:567:                                    ; preds = %565
  %568 = fcmp olt double %549, %551
  br i1 %568, label %571, label %569

; <label>:569:                                    ; preds = %567
  %570 = fcmp oeq double %549, %551
  br i1 %570, label %571, label %578

; <label>:571:                                    ; preds = %569, %567, %565, %553
  %572 = phi i8 [ 0, %565 ], [ 0, %567 ], [ 1, %569 ], [ 1, %553 ]
  %573 = phi i8 [ 0, %565 ], [ 0, %567 ], [ 0, %569 ], [ 1, %553 ]
  %574 = phi i8 [ 0, %565 ], [ 1, %567 ], [ 0, %569 ], [ 1, %553 ]
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %572, i8* %575, align 1, !tbaa !2451
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %573, i8* %576, align 1, !tbaa !2451
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %574, i8* %577, align 1, !tbaa !2451
  br label %578

; <label>:578:                                    ; preds = %571, %569
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %579, align 1, !tbaa !2451
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %580, align 1, !tbaa !2451
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %581, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2: ; preds = %561, %578
  %582 = phi %struct.Memory* [ %564, %561 ], [ %MEMORY.0, %578 ]
  %583 = load i64, i64* %PC
  %584 = add i64 %583, 24
  %585 = load i64, i64* %PC
  %586 = add i64 %585, 6
  %587 = load i64, i64* %PC
  %588 = add i64 %587, 6
  store i64 %588, i64* %PC
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %590 = load i8, i8* %589, align 1, !tbaa !2432
  store i8 %590, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %592 = icmp ne i8 %590, 0
  %593 = select i1 %592, i64 %584, i64 %586
  store i64 %593, i64* %591, align 8, !tbaa !2428
  %594 = load i8, i8* %BRANCH_TAKEN
  %595 = icmp eq i8 %594, 1
  %596 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %597 = load i64, i64* %RBP
  br i1 %595, label %block_4008eb, label %block_4008d9

block_400af0:                                     ; preds = %block_4009fe
  %598 = sub i64 %1378, 24
  %599 = load i64, i64* %PC
  %600 = add i64 %599, 4
  store i64 %600, i64* %PC
  %601 = inttoptr i64 %598 to i32*
  %602 = load i32, i32* %601
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %603, align 1, !tbaa !2432
  %604 = and i32 %602, 255
  %605 = call i32 @llvm.ctpop.i32(i32 %604) #17
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  %608 = xor i8 %607, 1
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %608, i8* %609, align 1, !tbaa !2446
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %610, align 1, !tbaa !2447
  %611 = icmp eq i32 %602, 0
  %612 = zext i1 %611 to i8
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %612, i8* %613, align 1, !tbaa !2448
  %614 = lshr i32 %602, 31
  %615 = trunc i32 %614 to i8
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %615, i8* %616, align 1, !tbaa !2449
  %617 = lshr i32 %602, 31
  %618 = xor i32 %614, %617
  %619 = add nuw nsw i32 %618, %617
  %620 = icmp eq i32 %619, 2
  %621 = zext i1 %620 to i8
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %621, i8* %622, align 1, !tbaa !2450
  %623 = load i64, i64* %PC
  %624 = add i64 %623, 45
  %625 = load i64, i64* %PC
  %626 = add i64 %625, 6
  %627 = load i64, i64* %PC
  %628 = add i64 %627, 6
  store i64 %628, i64* %PC
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %630 = load i8, i8* %629, align 1, !tbaa !2448
  %631 = icmp eq i8 %630, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %634 = select i1 %631, i64 %624, i64 %626
  store i64 %634, i64* %633, align 8, !tbaa !2428
  %635 = load i8, i8* %BRANCH_TAKEN
  %636 = icmp eq i8 %635, 1
  %637 = load i64, i64* %PC
  %638 = add i64 %637, 10
  store i64 %638, i64* %PC
  br i1 %636, label %block_400b21, label %block_400afa

block_40086a:                                     ; preds = %block_40082f, %block_4009b0
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.2, %block_40082f ], [ %MEMORY.9, %block_4009b0 ]
  %639 = load i64, i64* %RBP
  %640 = sub i64 %639, 8
  %641 = load i64, i64* %PC
  %642 = add i64 %641, 4
  store i64 %642, i64* %PC
  %643 = inttoptr i64 %640 to i32*
  %644 = load i32, i32* %643
  %645 = sext i32 %644 to i64
  store i64 %645, i64* %RAX, align 8, !tbaa !2428
  %646 = load i64, i64* %RAX
  %647 = load i64, i64* %RBP
  %648 = sub i64 %647, 48
  %649 = load i64, i64* %PC
  %650 = add i64 %649, 4
  store i64 %650, i64* %PC
  %651 = inttoptr i64 %648 to i64*
  %652 = load i64, i64* %651
  %653 = sub i64 %646, %652
  %654 = icmp ugt i64 %652, %646
  %655 = zext i1 %654 to i8
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %655, i8* %656, align 1, !tbaa !2432
  %657 = trunc i64 %653 to i32
  %658 = and i32 %657, 255
  %659 = call i32 @llvm.ctpop.i32(i32 %658) #17
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  %662 = xor i8 %661, 1
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %662, i8* %663, align 1, !tbaa !2446
  %664 = xor i64 %652, %646
  %665 = xor i64 %664, %653
  %666 = lshr i64 %665, 4
  %667 = trunc i64 %666 to i8
  %668 = and i8 %667, 1
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %668, i8* %669, align 1, !tbaa !2447
  %670 = icmp eq i64 %653, 0
  %671 = zext i1 %670 to i8
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %671, i8* %672, align 1, !tbaa !2448
  %673 = lshr i64 %653, 63
  %674 = trunc i64 %673 to i8
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %674, i8* %675, align 1, !tbaa !2449
  %676 = lshr i64 %646, 63
  %677 = lshr i64 %652, 63
  %678 = xor i64 %677, %676
  %679 = xor i64 %673, %676
  %680 = add nuw nsw i64 %679, %678
  %681 = icmp eq i64 %680, 2
  %682 = zext i1 %681 to i8
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %682, i8* %683, align 1, !tbaa !2450
  %684 = load i64, i64* %PC
  %685 = add i64 %684, 345
  %686 = load i64, i64* %PC
  %687 = add i64 %686, 6
  %688 = load i64, i64* %PC
  %689 = add i64 %688, 6
  store i64 %689, i64* %PC
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %691 = load i8, i8* %690, align 1, !tbaa !2448
  %692 = icmp eq i8 %691, 0
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %694 = load i8, i8* %693, align 1, !tbaa !2449
  %695 = icmp ne i8 %694, 0
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %697 = load i8, i8* %696, align 1, !tbaa !2450
  %698 = icmp ne i8 %697, 0
  %699 = xor i1 %695, %698
  %700 = xor i1 %699, true
  %701 = and i1 %692, %700
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %704 = select i1 %701, i64 %685, i64 %687
  store i64 %704, i64* %703, align 8, !tbaa !2428
  %705 = load i8, i8* %BRANCH_TAKEN
  %706 = icmp eq i8 %705, 1
  br i1 %706, label %block_4009cb, label %block_400878

block_40077b:                                     ; preds = %block_40076c
  %707 = load i64, i64* %RBP
  %708 = sub i64 %707, 12
  %709 = load i64, i64* %PC
  %710 = add i64 %709, 3
  store i64 %710, i64* %PC
  %711 = inttoptr i64 %708 to i32*
  %712 = load i32, i32* %711
  %713 = zext i32 %712 to i64
  store i64 %713, i64* %RAX, align 8, !tbaa !2428
  %714 = load i64, i64* %RAX
  %715 = load i64, i64* %PC
  %716 = add i64 %715, 3
  store i64 %716, i64* %PC
  %717 = and i64 15, %714
  %718 = trunc i64 %717 to i32
  store i64 %717, i64* %RAX, align 8, !tbaa !2428
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %719, align 1, !tbaa !2432
  %720 = and i32 %718, 255
  %721 = call i32 @llvm.ctpop.i32(i32 %720) #17
  %722 = trunc i32 %721 to i8
  %723 = and i8 %722, 1
  %724 = xor i8 %723, 1
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %724, i8* %725, align 1, !tbaa !2446
  %726 = icmp eq i32 %718, 0
  %727 = zext i1 %726 to i8
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %727, i8* %728, align 1, !tbaa !2448
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %729, align 1, !tbaa !2449
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %730, align 1, !tbaa !2450
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %731, align 1, !tbaa !2447
  %732 = load i32, i32* %EAX
  %733 = zext i32 %732 to i64
  %734 = load i64, i64* %PC
  %735 = add i64 %734, 3
  store i64 %735, i64* %PC
  %736 = sub i32 %732, 8
  %737 = icmp ult i32 %732, 8
  %738 = zext i1 %737 to i8
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %738, i8* %739, align 1, !tbaa !2432
  %740 = and i32 %736, 255
  %741 = call i32 @llvm.ctpop.i32(i32 %740) #17
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %744, i8* %745, align 1, !tbaa !2446
  %746 = xor i64 8, %733
  %747 = trunc i64 %746 to i32
  %748 = xor i32 %747, %736
  %749 = lshr i32 %748, 4
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %751, i8* %752, align 1, !tbaa !2447
  %753 = icmp eq i32 %736, 0
  %754 = zext i1 %753 to i8
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %754, i8* %755, align 1, !tbaa !2448
  %756 = lshr i32 %736, 31
  %757 = trunc i32 %756 to i8
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %757, i8* %758, align 1, !tbaa !2449
  %759 = lshr i32 %732, 31
  %760 = xor i32 %756, %759
  %761 = add nuw nsw i32 %760, %759
  %762 = icmp eq i32 %761, 2
  %763 = zext i1 %762 to i8
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %763, i8* %764, align 1, !tbaa !2450
  %765 = load i64, i64* %PC
  %766 = add i64 %765, 42
  %767 = load i64, i64* %PC
  %768 = add i64 %767, 6
  %769 = load i64, i64* %PC
  %770 = add i64 %769, 6
  store i64 %770, i64* %PC
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %772 = load i8, i8* %771, align 1, !tbaa !2448
  %773 = icmp eq i8 %772, 0
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %776 = select i1 %773, i64 %766, i64 %768
  store i64 %776, i64* %775, align 8, !tbaa !2428
  %777 = load i8, i8* %BRANCH_TAKEN
  %778 = icmp eq i8 %777, 1
  br i1 %778, label %block_4007ae, label %block_40078a

block_400a61:                                     ; preds = %block_400a1d
  %779 = load i64, i64* %RBP
  %780 = sub i64 %779, 12
  %781 = load i64, i64* %PC
  %782 = add i64 %781, 3
  store i64 %782, i64* %PC
  %783 = inttoptr i64 %780 to i32*
  %784 = load i32, i32* %783
  %785 = zext i32 %784 to i64
  store i64 %785, i64* %RAX, align 8, !tbaa !2428
  %786 = load i64, i64* %RAX
  %787 = load i64, i64* %PC
  %788 = add i64 %787, 3
  store i64 %788, i64* %PC
  %789 = and i64 15, %786
  %790 = trunc i64 %789 to i32
  store i64 %789, i64* %RAX, align 8, !tbaa !2428
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %791, align 1, !tbaa !2432
  %792 = and i32 %790, 255
  %793 = call i32 @llvm.ctpop.i32(i32 %792) #17
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  %796 = xor i8 %795, 1
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %796, i8* %797, align 1, !tbaa !2446
  %798 = icmp eq i32 %790, 0
  %799 = zext i1 %798 to i8
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %799, i8* %800, align 1, !tbaa !2448
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %801, align 1, !tbaa !2449
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %802, align 1, !tbaa !2450
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %803, align 1, !tbaa !2447
  %804 = load i32, i32* %EAX
  %805 = zext i32 %804 to i64
  %806 = load i64, i64* %PC
  %807 = add i64 %806, 3
  store i64 %807, i64* %PC
  %808 = sub i32 %804, 8
  %809 = icmp ult i32 %804, 8
  %810 = zext i1 %809 to i8
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %810, i8* %811, align 1, !tbaa !2432
  %812 = and i32 %808, 255
  %813 = call i32 @llvm.ctpop.i32(i32 %812) #17
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  %816 = xor i8 %815, 1
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %816, i8* %817, align 1, !tbaa !2446
  %818 = xor i64 8, %805
  %819 = trunc i64 %818 to i32
  %820 = xor i32 %819, %808
  %821 = lshr i32 %820, 4
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %823, i8* %824, align 1, !tbaa !2447
  %825 = icmp eq i32 %808, 0
  %826 = zext i1 %825 to i8
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %826, i8* %827, align 1, !tbaa !2448
  %828 = lshr i32 %808, 31
  %829 = trunc i32 %828 to i8
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %829, i8* %830, align 1, !tbaa !2449
  %831 = lshr i32 %804, 31
  %832 = xor i32 %828, %831
  %833 = add nuw nsw i32 %832, %831
  %834 = icmp eq i32 %833, 2
  %835 = zext i1 %834 to i8
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %835, i8* %836, align 1, !tbaa !2450
  %837 = load i64, i64* %PC
  %838 = add i64 %837, 3
  store i64 %838, i64* %PC
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %840 = load i8, i8* %839, align 1, !tbaa !2448
  store i8 %840, i8* %CL, align 1, !tbaa !2451
  %841 = load i64, i64* %RBP
  %842 = sub i64 %841, 177
  %843 = load i8, i8* %CL
  %844 = zext i8 %843 to i64
  %845 = load i64, i64* %PC
  %846 = add i64 %845, 6
  store i64 %846, i64* %PC
  %847 = inttoptr i64 %842 to i8*
  store i8 %843, i8* %847
  br label %block_400a73

block_400a73:                                     ; preds = %block_400a1d, %block_400a61
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.14, %block_400a1d ], [ %MEMORY.14, %block_400a61 ]
  %848 = load i64, i64* %RBP
  %849 = sub i64 %848, 177
  %850 = load i64, i64* %PC
  %851 = add i64 %850, 6
  store i64 %851, i64* %PC
  %852 = inttoptr i64 %849 to i8*
  %853 = load i8, i8* %852
  store i8 %853, i8* %AL, align 1, !tbaa !2451
  %854 = load i64, i64* %RCX
  %855 = load i32, i32* %ECX
  %856 = zext i32 %855 to i64
  %857 = load i64, i64* %PC
  %858 = add i64 %857, 2
  store i64 %858, i64* %PC
  %859 = xor i64 %856, %854
  %860 = trunc i64 %859 to i32
  %861 = and i64 %859, 4294967295
  store i64 %861, i64* %RCX, align 8, !tbaa !2428
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %862, align 1, !tbaa !2432
  %863 = and i32 %860, 255
  %864 = call i32 @llvm.ctpop.i32(i32 %863) #17
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  %867 = xor i8 %866, 1
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %867, i8* %868, align 1, !tbaa !2446
  %869 = icmp eq i32 %860, 0
  %870 = zext i1 %869 to i8
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %870, i8* %871, align 1, !tbaa !2448
  %872 = lshr i32 %860, 31
  %873 = trunc i32 %872 to i8
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %873, i8* %874, align 1, !tbaa !2449
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %875, align 1, !tbaa !2450
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %876, align 1, !tbaa !2447
  %877 = load i64, i64* %PC
  %878 = add i64 %877, 5
  store i64 %878, i64* %PC
  store i64 255, i64* %RDX, align 8, !tbaa !2428
  %879 = load i8, i8* %AL
  %880 = zext i8 %879 to i64
  %881 = load i64, i64* %PC
  %882 = add i64 %881, 2
  store i64 %882, i64* %PC
  %883 = and i64 1, %880
  %884 = trunc i64 %883 to i8
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %885, align 1, !tbaa !2432
  %886 = trunc i64 %883 to i32
  %887 = and i32 %886, 255
  %888 = call i32 @llvm.ctpop.i32(i32 %887) #17
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  %891 = xor i8 %890, 1
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %891, i8* %892, align 1, !tbaa !2446
  %893 = icmp eq i8 %884, 0
  %894 = zext i1 %893 to i8
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %894, i8* %895, align 1, !tbaa !2448
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %896, align 1, !tbaa !2449
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %897, align 1, !tbaa !2450
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %898, align 1, !tbaa !2447
  %899 = load i32, i32* %EDX
  %900 = zext i32 %899 to i64
  %901 = load i64, i64* %PC
  %902 = add i64 %901, 3
  store i64 %902, i64* %PC
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %904 = load i8, i8* %903, align 1, !tbaa !2448
  %905 = icmp eq i8 %904, 0
  %906 = load i64, i64* %RCX, align 8, !tbaa !2428
  %907 = select i1 %905, i64 %900, i64 %906
  %908 = and i64 %907, 4294967295
  store i64 %908, i64* %RCX, align 8, !tbaa !2428
  %909 = load i64, i64* %RBP
  %910 = sub i64 %909, 20
  %911 = load i32, i32* %ECX
  %912 = zext i32 %911 to i64
  %913 = load i64, i64* %PC
  %914 = add i64 %913, 3
  store i64 %914, i64* %PC
  %915 = inttoptr i64 %910 to i32*
  store i32 %911, i32* %915
  %916 = load i64, i64* %RBP
  %917 = sub i64 %916, 16
  %918 = load i64, i64* %PC
  %919 = add i64 %918, 3
  store i64 %919, i64* %PC
  %920 = inttoptr i64 %917 to i32*
  %921 = load i32, i32* %920
  %922 = zext i32 %921 to i64
  store i64 %922, i64* %RCX, align 8, !tbaa !2428
  %923 = load i32, i32* %ECX
  %924 = zext i32 %923 to i64
  %925 = load i64, i64* %RBP
  %926 = sub i64 %925, 20
  %927 = load i64, i64* %PC
  %928 = add i64 %927, 3
  store i64 %928, i64* %PC
  %929 = inttoptr i64 %926 to i32*
  %930 = load i32, i32* %929
  %931 = sub i32 %923, %930
  %932 = icmp ult i32 %923, %930
  %933 = zext i1 %932 to i8
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %933, i8* %934, align 1, !tbaa !2432
  %935 = and i32 %931, 255
  %936 = call i32 @llvm.ctpop.i32(i32 %935) #17
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  %939 = xor i8 %938, 1
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %939, i8* %940, align 1, !tbaa !2446
  %941 = xor i32 %930, %923
  %942 = xor i32 %941, %931
  %943 = lshr i32 %942, 4
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %945, i8* %946, align 1, !tbaa !2447
  %947 = icmp eq i32 %931, 0
  %948 = zext i1 %947 to i8
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %948, i8* %949, align 1, !tbaa !2448
  %950 = lshr i32 %931, 31
  %951 = trunc i32 %950 to i8
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %951, i8* %952, align 1, !tbaa !2449
  %953 = lshr i32 %923, 31
  %954 = lshr i32 %930, 31
  %955 = xor i32 %954, %953
  %956 = xor i32 %950, %953
  %957 = add nuw nsw i32 %956, %955
  %958 = icmp eq i32 %957, 2
  %959 = zext i1 %958 to i8
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %959, i8* %960, align 1, !tbaa !2450
  %961 = load i64, i64* %PC
  %962 = add i64 %961, 60
  %963 = load i64, i64* %PC
  %964 = add i64 %963, 6
  %965 = load i64, i64* %PC
  %966 = add i64 %965, 6
  store i64 %966, i64* %PC
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %968 = load i8, i8* %967, align 1, !tbaa !2448
  store i8 %968, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %970 = icmp ne i8 %968, 0
  %971 = select i1 %970, i64 %962, i64 %964
  store i64 %971, i64* %969, align 8, !tbaa !2428
  %972 = load i8, i8* %BRANCH_TAKEN
  %973 = icmp eq i8 %972, 1
  br i1 %973, label %block_400aca, label %block_400a94

block_400add:                                     ; preds = %block_400a11
  %974 = add i64 %3086, 5
  %975 = load i64, i64* %PC
  %976 = add i64 %975, 5
  store i64 %976, i64* %PC
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %974, i64* %977, align 8, !tbaa !2428
  %978 = load i64, i64* %RBP
  %979 = sub i64 %978, 8
  %980 = load i64, i64* %PC
  %981 = add i64 %980, 3
  store i64 %981, i64* %PC
  %982 = inttoptr i64 %979 to i32*
  %983 = load i32, i32* %982
  %984 = zext i32 %983 to i64
  store i64 %984, i64* %RAX, align 8, !tbaa !2428
  %985 = load i64, i64* %RAX
  %986 = load i64, i64* %PC
  %987 = add i64 %986, 3
  store i64 %987, i64* %PC
  %988 = trunc i64 %985 to i32
  %989 = add i32 1, %988
  %990 = zext i32 %989 to i64
  store i64 %990, i64* %RAX, align 8, !tbaa !2428
  %991 = icmp ult i32 %989, %988
  %992 = icmp ult i32 %989, 1
  %993 = or i1 %991, %992
  %994 = zext i1 %993 to i8
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %994, i8* %995, align 1, !tbaa !2432
  %996 = and i32 %989, 255
  %997 = call i32 @llvm.ctpop.i32(i32 %996) #17
  %998 = trunc i32 %997 to i8
  %999 = and i8 %998, 1
  %1000 = xor i8 %999, 1
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1000, i8* %1001, align 1, !tbaa !2446
  %1002 = xor i64 1, %985
  %1003 = trunc i64 %1002 to i32
  %1004 = xor i32 %1003, %989
  %1005 = lshr i32 %1004, 4
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1007, i8* %1008, align 1, !tbaa !2447
  %1009 = icmp eq i32 %989, 0
  %1010 = zext i1 %1009 to i8
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1010, i8* %1011, align 1, !tbaa !2448
  %1012 = lshr i32 %989, 31
  %1013 = trunc i32 %1012 to i8
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1013, i8* %1014, align 1, !tbaa !2449
  %1015 = lshr i32 %988, 31
  %1016 = xor i32 %1012, %1015
  %1017 = add nuw nsw i32 %1016, %1012
  %1018 = icmp eq i32 %1017, 2
  %1019 = zext i1 %1018 to i8
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1019, i8* %1020, align 1, !tbaa !2450
  %1021 = load i64, i64* %RBP
  %1022 = sub i64 %1021, 8
  %1023 = load i32, i32* %EAX
  %1024 = zext i32 %1023 to i64
  %1025 = load i64, i64* %PC
  %1026 = add i64 %1025, 3
  store i64 %1026, i64* %PC
  %1027 = inttoptr i64 %1022 to i32*
  store i32 %1023, i32* %1027
  %1028 = load i64, i64* %PC
  %1029 = sub i64 %1028, 237
  %1030 = load i64, i64* %PC
  %1031 = add i64 %1030, 5
  store i64 %1031, i64* %PC
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1029, i64* %1032, align 8, !tbaa !2428
  br label %block_4009fe

block_4007db:                                     ; preds = %block_4007d4, %block_4007e7
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.5, %block_4007d4 ], [ %1167, %block_4007e7 ]
  %1033 = load i64, i64* %RBP
  %1034 = sub i64 %1033, 8
  %1035 = load i64, i64* %PC
  %1036 = add i64 %1035, 3
  store i64 %1036, i64* %PC
  %1037 = inttoptr i64 %1034 to i32*
  %1038 = load i32, i32* %1037
  %1039 = zext i32 %1038 to i64
  store i64 %1039, i64* %RAX, align 8, !tbaa !2428
  %1040 = load i32, i32* %EAX
  %1041 = zext i32 %1040 to i64
  %1042 = load i64, i64* %RBP
  %1043 = sub i64 %1042, 28
  %1044 = load i64, i64* %PC
  %1045 = add i64 %1044, 3
  store i64 %1045, i64* %PC
  %1046 = inttoptr i64 %1043 to i32*
  %1047 = load i32, i32* %1046
  %1048 = sub i32 %1040, %1047
  %1049 = icmp ult i32 %1040, %1047
  %1050 = zext i1 %1049 to i8
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1050, i8* %1051, align 1, !tbaa !2432
  %1052 = and i32 %1048, 255
  %1053 = call i32 @llvm.ctpop.i32(i32 %1052) #17
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  %1056 = xor i8 %1055, 1
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1056, i8* %1057, align 1, !tbaa !2446
  %1058 = xor i32 %1047, %1040
  %1059 = xor i32 %1058, %1048
  %1060 = lshr i32 %1059, 4
  %1061 = trunc i32 %1060 to i8
  %1062 = and i8 %1061, 1
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1062, i8* %1063, align 1, !tbaa !2447
  %1064 = icmp eq i32 %1048, 0
  %1065 = zext i1 %1064 to i8
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1065, i8* %1066, align 1, !tbaa !2448
  %1067 = lshr i32 %1048, 31
  %1068 = trunc i32 %1067 to i8
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1068, i8* %1069, align 1, !tbaa !2449
  %1070 = lshr i32 %1040, 31
  %1071 = lshr i32 %1047, 31
  %1072 = xor i32 %1071, %1070
  %1073 = xor i32 %1067, %1070
  %1074 = add nuw nsw i32 %1073, %1072
  %1075 = icmp eq i32 %1074, 2
  %1076 = zext i1 %1075 to i8
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1076, i8* %1077, align 1, !tbaa !2450
  %1078 = load i64, i64* %PC
  %1079 = add i64 %1078, 78
  %1080 = load i64, i64* %PC
  %1081 = add i64 %1080, 6
  %1082 = load i64, i64* %PC
  %1083 = add i64 %1082, 6
  store i64 %1083, i64* %PC
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1085 = load i8, i8* %1084, align 1, !tbaa !2449
  %1086 = icmp ne i8 %1085, 0
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1088 = load i8, i8* %1087, align 1, !tbaa !2450
  %1089 = icmp ne i8 %1088, 0
  %1090 = xor i1 %1086, %1089
  %1091 = xor i1 %1090, true
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1094 = select i1 %1090, i64 %1081, i64 %1079
  store i64 %1094, i64* %1093, align 8, !tbaa !2428
  %1095 = load i8, i8* %BRANCH_TAKEN
  %1096 = icmp eq i8 %1095, 1
  br i1 %1096, label %block_40082f, label %block_4007e7

block_4008d9:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2
  %1097 = sub i64 %597, 112
  %1098 = load i64, i64* %PC
  %1099 = add i64 %1098, 5
  store i64 %1099, i64* %PC
  %1100 = inttoptr i64 %1097 to double*
  %1101 = load double, double* %1100
  %1102 = bitcast i8* %596 to double*
  store double %1101, double* %1102, align 1, !tbaa !2452
  %1103 = getelementptr inbounds i8, i8* %596, i64 8
  %1104 = bitcast i8* %1103 to double*
  store double 0.000000e+00, double* %1104, align 1, !tbaa !2452
  %1105 = load i64, i64* %RBP
  %1106 = sub i64 %1105, 152
  %1107 = bitcast %union.vec128_t* %XMM0 to i8*
  %1108 = load i64, i64* %PC
  %1109 = add i64 %1108, 8
  store i64 %1109, i64* %PC
  %1110 = bitcast i8* %1107 to double*
  %1111 = load double, double* %1110, align 1
  %1112 = inttoptr i64 %1106 to double*
  store double %1111, double* %1112
  %1113 = load i64, i64* %PC
  %1114 = add i64 %1113, 18
  %1115 = load i64, i64* %PC
  %1116 = add i64 %1115, 5
  store i64 %1116, i64* %PC
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1114, i64* %1117, align 8, !tbaa !2428
  br label %block_4008f8

block_4007e7:                                     ; preds = %block_4007db
  %1118 = load i64, i64* %PC
  %1119 = add i64 %1118, 10
  store i64 %1119, i64* %PC
  store i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 12), i64* %RSI, align 8, !tbaa !2428
  %1120 = load i64, i64* %PC
  %1121 = add i64 %1120, 5
  store i64 %1121, i64* %PC
  store i64 2, i64* %RDX, align 8, !tbaa !2428
  %1122 = load i64, i64* %PC
  %1123 = add i64 %1122, 5
  store i64 %1123, i64* %PC
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %1124 = load i64, i64* %RBP
  %1125 = sub i64 %1124, 40
  %1126 = load i64, i64* %PC
  %1127 = add i64 %1126, 4
  store i64 %1127, i64* %PC
  %1128 = inttoptr i64 %1125 to i64*
  %1129 = load i64, i64* %1128
  store i64 %1129, i64* %RDI, align 8, !tbaa !2428
  %1130 = load i64, i64* %PC
  %1131 = add i64 %1130, 865
  %1132 = load i64, i64* %PC
  %1133 = add i64 %1132, 5
  %1134 = load i64, i64* %PC
  %1135 = add i64 %1134, 5
  store i64 %1135, i64* %PC
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1137 = load i64, i64* %1136, align 8, !tbaa !2428
  %1138 = add i64 %1137, -8
  %1139 = inttoptr i64 %1138 to i64*
  store i64 %1133, i64* %1139
  store i64 %1138, i64* %1136, align 8, !tbaa !2428
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1131, i64* %1140, align 8, !tbaa !2428
  %1141 = load i64, i64* %PC
  %1142 = call %struct.Memory* @sub_400b60_fourn(%struct.State* %0, i64 %1141, %struct.Memory* %MEMORY.2)
  %1143 = load i64, i64* %PC
  %1144 = add i64 %1143, 10
  store i64 %1144, i64* %PC
  store i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 12), i64* %RSI, align 8, !tbaa !2428
  %1145 = load i64, i64* %PC
  %1146 = add i64 %1145, 5
  store i64 %1146, i64* %PC
  store i64 2, i64* %RDX, align 8, !tbaa !2428
  %1147 = load i64, i64* %PC
  %1148 = add i64 %1147, 5
  store i64 %1148, i64* %PC
  store i64 4294967295, i64* %RCX, align 8, !tbaa !2428
  %1149 = load i64, i64* %RBP
  %1150 = sub i64 %1149, 40
  %1151 = load i64, i64* %PC
  %1152 = add i64 %1151, 4
  store i64 %1152, i64* %PC
  %1153 = inttoptr i64 %1150 to i64*
  %1154 = load i64, i64* %1153
  store i64 %1154, i64* %RDI, align 8, !tbaa !2428
  %1155 = load i64, i64* %PC
  %1156 = add i64 %1155, 836
  %1157 = load i64, i64* %PC
  %1158 = add i64 %1157, 5
  %1159 = load i64, i64* %PC
  %1160 = add i64 %1159, 5
  store i64 %1160, i64* %PC
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1162 = load i64, i64* %1161, align 8, !tbaa !2428
  %1163 = add i64 %1162, -8
  %1164 = inttoptr i64 %1163 to i64*
  store i64 %1158, i64* %1164
  store i64 %1163, i64* %1161, align 8, !tbaa !2428
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1156, i64* %1165, align 8, !tbaa !2428
  %1166 = load i64, i64* %PC
  %1167 = call %struct.Memory* @sub_400b60_fourn(%struct.State* %0, i64 %1166, %struct.Memory* %1142)
  %1168 = load i64, i64* %RBP
  %1169 = sub i64 %1168, 8
  %1170 = load i64, i64* %PC
  %1171 = add i64 %1170, 3
  store i64 %1171, i64* %PC
  %1172 = inttoptr i64 %1169 to i32*
  %1173 = load i32, i32* %1172
  %1174 = zext i32 %1173 to i64
  store i64 %1174, i64* %RAX, align 8, !tbaa !2428
  %1175 = load i64, i64* %RAX
  %1176 = load i64, i64* %PC
  %1177 = add i64 %1176, 3
  store i64 %1177, i64* %PC
  %1178 = trunc i64 %1175 to i32
  %1179 = add i32 1, %1178
  %1180 = zext i32 %1179 to i64
  store i64 %1180, i64* %RAX, align 8, !tbaa !2428
  %1181 = icmp ult i32 %1179, %1178
  %1182 = icmp ult i32 %1179, 1
  %1183 = or i1 %1181, %1182
  %1184 = zext i1 %1183 to i8
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1184, i8* %1185, align 1, !tbaa !2432
  %1186 = and i32 %1179, 255
  %1187 = call i32 @llvm.ctpop.i32(i32 %1186) #17
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1190, i8* %1191, align 1, !tbaa !2446
  %1192 = xor i64 1, %1175
  %1193 = trunc i64 %1192 to i32
  %1194 = xor i32 %1193, %1179
  %1195 = lshr i32 %1194, 4
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1197, i8* %1198, align 1, !tbaa !2447
  %1199 = icmp eq i32 %1179, 0
  %1200 = zext i1 %1199 to i8
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1200, i8* %1201, align 1, !tbaa !2448
  %1202 = lshr i32 %1179, 31
  %1203 = trunc i32 %1202 to i8
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1203, i8* %1204, align 1, !tbaa !2449
  %1205 = lshr i32 %1178, 31
  %1206 = xor i32 %1202, %1205
  %1207 = add nuw nsw i32 %1206, %1202
  %1208 = icmp eq i32 %1207, 2
  %1209 = zext i1 %1208 to i8
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1209, i8* %1210, align 1, !tbaa !2450
  %1211 = load i64, i64* %RBP
  %1212 = sub i64 %1211, 8
  %1213 = load i32, i32* %EAX
  %1214 = zext i32 %1213 to i64
  %1215 = load i64, i64* %PC
  %1216 = add i64 %1215, 3
  store i64 %1216, i64* %PC
  %1217 = inttoptr i64 %1212 to i32*
  store i32 %1213, i32* %1217
  %1218 = load i64, i64* %PC
  %1219 = sub i64 %1218, 79
  %1220 = load i64, i64* %PC
  %1221 = add i64 %1220, 5
  store i64 %1221, i64* %PC
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1219, i64* %1222, align 8, !tbaa !2428
  br label %block_4007db

block_4007d4:                                     ; preds = %block_40074d
  %1223 = sub i64 %1443, 8
  %1224 = load i64, i64* %PC
  %1225 = add i64 %1224, 7
  store i64 %1225, i64* %PC
  %1226 = inttoptr i64 %1223 to i32*
  store i32 0, i32* %1226
  br label %block_4007db

block_400974:                                     ; preds = %block_400955, %block_400967
  %MEMORY.3 = phi %struct.Memory* [ %2261, %block_400967 ], [ %2261, %block_400955 ]
  %1227 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1228 = load i64, i64* %RBP
  %1229 = sub i64 %1228, 168
  %1230 = load i64, i64* %PC
  %1231 = add i64 %1230, 8
  store i64 %1231, i64* %PC
  %1232 = inttoptr i64 %1229 to double*
  %1233 = load double, double* %1232
  %1234 = bitcast i8* %1227 to double*
  store double %1233, double* %1234, align 1, !tbaa !2452
  %1235 = getelementptr inbounds i8, i8* %1227, i64 8
  %1236 = bitcast i8* %1235 to double*
  store double 0.000000e+00, double* %1236, align 1, !tbaa !2452
  %1237 = load i64, i64* %RBP
  %1238 = sub i64 %1237, 96
  %1239 = bitcast %union.vec128_t* %XMM0 to i8*
  %1240 = load i64, i64* %PC
  %1241 = add i64 %1240, 5
  store i64 %1241, i64* %PC
  %1242 = bitcast i8* %1239 to double*
  %1243 = load double, double* %1242, align 1
  %1244 = inttoptr i64 %1238 to double*
  store double %1243, double* %1244
  %1245 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1246 = load i64, i64* %RBP
  %1247 = sub i64 %1246, 120
  %1248 = load i64, i64* %PC
  %1249 = add i64 %1248, 5
  store i64 %1249, i64* %PC
  %1250 = inttoptr i64 %1247 to double*
  %1251 = load double, double* %1250
  %1252 = bitcast i8* %1245 to double*
  store double %1251, double* %1252, align 1, !tbaa !2452
  %1253 = getelementptr inbounds i8, i8* %1245, i64 8
  %1254 = bitcast i8* %1253 to double*
  store double 0.000000e+00, double* %1254, align 1, !tbaa !2452
  %1255 = bitcast %union.vec128_t* %XMM0 to i8*
  %1256 = load i64, i64* %RBP
  %1257 = sub i64 %1256, 104
  %1258 = load i64, i64* %PC
  %1259 = add i64 %1258, 5
  store i64 %1259, i64* %PC
  %1260 = bitcast i8* %1255 to double*
  %1261 = load double, double* %1260, align 1
  %1262 = inttoptr i64 %1257 to double*
  %1263 = load double, double* %1262
  %1264 = fcmp uno double %1261, %1263
  br i1 %1264, label %1265, label %1277

; <label>:1265:                                   ; preds = %block_400974
  %1266 = fadd double %1261, %1263
  %1267 = bitcast double %1266 to i64
  %1268 = and i64 %1267, 9221120237041090560
  %1269 = icmp eq i64 %1268, 9218868437227405312
  %1270 = and i64 %1267, 2251799813685247
  %1271 = icmp ne i64 %1270, 0
  %1272 = and i1 %1269, %1271
  br i1 %1272, label %1273, label %1283

; <label>:1273:                                   ; preds = %1265
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1275 = load i64, i64* %1274, align 8, !tbaa !2428
  %1276 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1275, %struct.Memory* %MEMORY.3) #18
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

; <label>:1277:                                   ; preds = %block_400974
  %1278 = fcmp ogt double %1261, %1263
  br i1 %1278, label %1283, label %1279

; <label>:1279:                                   ; preds = %1277
  %1280 = fcmp olt double %1261, %1263
  br i1 %1280, label %1283, label %1281

; <label>:1281:                                   ; preds = %1279
  %1282 = fcmp oeq double %1261, %1263
  br i1 %1282, label %1283, label %1290

; <label>:1283:                                   ; preds = %1281, %1279, %1277, %1265
  %1284 = phi i8 [ 0, %1277 ], [ 0, %1279 ], [ 1, %1281 ], [ 1, %1265 ]
  %1285 = phi i8 [ 0, %1277 ], [ 0, %1279 ], [ 0, %1281 ], [ 1, %1265 ]
  %1286 = phi i8 [ 0, %1277 ], [ 1, %1279 ], [ 0, %1281 ], [ 1, %1265 ]
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1284, i8* %1287, align 1, !tbaa !2451
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1285, i8* %1288, align 1, !tbaa !2451
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1286, i8* %1289, align 1, !tbaa !2451
  br label %1290

; <label>:1290:                                   ; preds = %1283, %1281
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1291, align 1, !tbaa !2451
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1292, align 1, !tbaa !2451
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1293, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1: ; preds = %1273, %1290
  %1294 = phi %struct.Memory* [ %1276, %1273 ], [ %MEMORY.3, %1290 ]
  %1295 = load i64, i64* %PC
  %1296 = add i64 %1295, 24
  %1297 = load i64, i64* %PC
  %1298 = add i64 %1297, 6
  %1299 = load i64, i64* %PC
  %1300 = add i64 %1299, 6
  store i64 %1300, i64* %PC
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1302 = load i8, i8* %1301, align 1, !tbaa !2432
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1304 = load i8, i8* %1303, align 1, !tbaa !2448
  %1305 = or i8 %1304, %1302
  %1306 = icmp ne i8 %1305, 0
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1309 = select i1 %1306, i64 %1296, i64 %1298
  store i64 %1309, i64* %1308, align 8, !tbaa !2428
  %1310 = load i8, i8* %BRANCH_TAKEN
  %1311 = icmp eq i8 %1310, 1
  %1312 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1313 = load i64, i64* %RBP
  br i1 %1311, label %block_4009a3, label %block_400991

block_4009fe:                                     ; preds = %block_4009cb, %block_400add
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.0, %block_4009cb ], [ %MEMORY.14, %block_400add ]
  %1314 = load i64, i64* %RBP
  %1315 = sub i64 %1314, 8
  %1316 = load i64, i64* %PC
  %1317 = add i64 %1316, 3
  store i64 %1317, i64* %PC
  %1318 = inttoptr i64 %1315 to i32*
  %1319 = load i32, i32* %1318
  %1320 = zext i32 %1319 to i64
  store i64 %1320, i64* %RAX, align 8, !tbaa !2428
  %1321 = load i32, i32* %EAX
  %1322 = zext i32 %1321 to i64
  %1323 = load i64, i64* %RBP
  %1324 = sub i64 %1323, 32
  %1325 = load i64, i64* %PC
  %1326 = add i64 %1325, 3
  store i64 %1326, i64* %PC
  %1327 = inttoptr i64 %1324 to i32*
  %1328 = load i32, i32* %1327
  %1329 = sub i32 %1321, %1328
  %1330 = icmp ult i32 %1321, %1328
  %1331 = zext i1 %1330 to i8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1331, i8* %1332, align 1, !tbaa !2432
  %1333 = and i32 %1329, 255
  %1334 = call i32 @llvm.ctpop.i32(i32 %1333) #17
  %1335 = trunc i32 %1334 to i8
  %1336 = and i8 %1335, 1
  %1337 = xor i8 %1336, 1
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1337, i8* %1338, align 1, !tbaa !2446
  %1339 = xor i32 %1328, %1321
  %1340 = xor i32 %1339, %1329
  %1341 = lshr i32 %1340, 4
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1343, i8* %1344, align 1, !tbaa !2447
  %1345 = icmp eq i32 %1329, 0
  %1346 = zext i1 %1345 to i8
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1346, i8* %1347, align 1, !tbaa !2448
  %1348 = lshr i32 %1329, 31
  %1349 = trunc i32 %1348 to i8
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1349, i8* %1350, align 1, !tbaa !2449
  %1351 = lshr i32 %1321, 31
  %1352 = lshr i32 %1328, 31
  %1353 = xor i32 %1352, %1351
  %1354 = xor i32 %1348, %1351
  %1355 = add nuw nsw i32 %1354, %1353
  %1356 = icmp eq i32 %1355, 2
  %1357 = zext i1 %1356 to i8
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1357, i8* %1358, align 1, !tbaa !2450
  %1359 = load i64, i64* %PC
  %1360 = add i64 %1359, 236
  %1361 = load i64, i64* %PC
  %1362 = add i64 %1361, 6
  %1363 = load i64, i64* %PC
  %1364 = add i64 %1363, 6
  store i64 %1364, i64* %PC
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1366 = load i8, i8* %1365, align 1, !tbaa !2449
  %1367 = icmp ne i8 %1366, 0
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1369 = load i8, i8* %1368, align 1, !tbaa !2450
  %1370 = icmp ne i8 %1369, 0
  %1371 = xor i1 %1367, %1370
  %1372 = xor i1 %1371, true
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1375 = select i1 %1371, i64 %1362, i64 %1360
  store i64 %1375, i64* %1374, align 8, !tbaa !2428
  %1376 = load i8, i8* %BRANCH_TAKEN
  %1377 = icmp eq i8 %1376, 1
  %1378 = load i64, i64* %RBP
  br i1 %1377, label %block_400af0, label %block_400a0a

block_40074d:                                     ; preds = %block_4007c1, %block_400734
  %MEMORY.5 = phi %struct.Memory* [ %1912, %block_400734 ], [ %MEMORY.13, %block_4007c1 ]
  %1379 = load i64, i64* %RBP
  %1380 = sub i64 %1379, 8
  %1381 = load i64, i64* %PC
  %1382 = add i64 %1381, 3
  store i64 %1382, i64* %PC
  %1383 = inttoptr i64 %1380 to i32*
  %1384 = load i32, i32* %1383
  %1385 = zext i32 %1384 to i64
  store i64 %1385, i64* %RAX, align 8, !tbaa !2428
  %1386 = load i32, i32* %EAX
  %1387 = zext i32 %1386 to i64
  %1388 = load i64, i64* %RBP
  %1389 = sub i64 %1388, 32
  %1390 = load i64, i64* %PC
  %1391 = add i64 %1390, 3
  store i64 %1391, i64* %PC
  %1392 = inttoptr i64 %1389 to i32*
  %1393 = load i32, i32* %1392
  %1394 = sub i32 %1386, %1393
  %1395 = icmp ult i32 %1386, %1393
  %1396 = zext i1 %1395 to i8
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1396, i8* %1397, align 1, !tbaa !2432
  %1398 = and i32 %1394, 255
  %1399 = call i32 @llvm.ctpop.i32(i32 %1398) #17
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  %1402 = xor i8 %1401, 1
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1402, i8* %1403, align 1, !tbaa !2446
  %1404 = xor i32 %1393, %1386
  %1405 = xor i32 %1404, %1394
  %1406 = lshr i32 %1405, 4
  %1407 = trunc i32 %1406 to i8
  %1408 = and i8 %1407, 1
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1408, i8* %1409, align 1, !tbaa !2447
  %1410 = icmp eq i32 %1394, 0
  %1411 = zext i1 %1410 to i8
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1411, i8* %1412, align 1, !tbaa !2448
  %1413 = lshr i32 %1394, 31
  %1414 = trunc i32 %1413 to i8
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1414, i8* %1415, align 1, !tbaa !2449
  %1416 = lshr i32 %1386, 31
  %1417 = lshr i32 %1393, 31
  %1418 = xor i32 %1417, %1416
  %1419 = xor i32 %1413, %1416
  %1420 = add nuw nsw i32 %1419, %1418
  %1421 = icmp eq i32 %1420, 2
  %1422 = zext i1 %1421 to i8
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1422, i8* %1423, align 1, !tbaa !2450
  %1424 = load i64, i64* %PC
  %1425 = add i64 %1424, 129
  %1426 = load i64, i64* %PC
  %1427 = add i64 %1426, 6
  %1428 = load i64, i64* %PC
  %1429 = add i64 %1428, 6
  store i64 %1429, i64* %PC
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1431 = load i8, i8* %1430, align 1, !tbaa !2449
  %1432 = icmp ne i8 %1431, 0
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1434 = load i8, i8* %1433, align 1, !tbaa !2450
  %1435 = icmp ne i8 %1434, 0
  %1436 = xor i1 %1432, %1435
  %1437 = xor i1 %1436, true
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1440 = select i1 %1436, i64 %1427, i64 %1425
  store i64 %1440, i64* %1439, align 8, !tbaa !2428
  %1441 = load i8, i8* %BRANCH_TAKEN
  %1442 = icmp eq i8 %1441, 1
  %1443 = load i64, i64* %RBP
  br i1 %1442, label %block_4007d4, label %block_400759

block_4009cb:                                     ; preds = %block_40086a
  %1444 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1445 = load i64, i64* %PC
  %1446 = add i64 %1445, 8
  store i64 %1446, i64* %PC
  %1447 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 24) to double*)
  %1448 = bitcast i8* %1444 to double*
  store double %1447, double* %1448, align 1, !tbaa !2452
  %1449 = getelementptr inbounds i8, i8* %1444, i64 8
  %1450 = bitcast i8* %1449 to double*
  store double 0.000000e+00, double* %1450, align 1, !tbaa !2452
  %1451 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1452 = load i64, i64* %RBP
  %1453 = sub i64 %1452, 80
  %1454 = load i64, i64* %PC
  %1455 = add i64 %1454, 5
  store i64 %1455, i64* %PC
  %1456 = inttoptr i64 %1453 to double*
  %1457 = load double, double* %1456
  %1458 = bitcast i8* %1451 to double*
  store double %1457, double* %1458, align 1, !tbaa !2452
  %1459 = getelementptr inbounds i8, i8* %1451, i64 8
  %1460 = bitcast i8* %1459 to double*
  store double 0.000000e+00, double* %1460, align 1, !tbaa !2452
  %1461 = load i64, i64* %RBP
  %1462 = sub i64 %1461, 64
  %1463 = bitcast %union.vec128_t* %XMM1 to i8*
  %1464 = load i64, i64* %PC
  %1465 = add i64 %1464, 5
  store i64 %1465, i64* %PC
  %1466 = bitcast i8* %1463 to double*
  %1467 = load double, double* %1466, align 1
  %1468 = inttoptr i64 %1462 to double*
  store double %1467, double* %1468
  %1469 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1470 = load i64, i64* %RBP
  %1471 = sub i64 %1470, 88
  %1472 = load i64, i64* %PC
  %1473 = add i64 %1472, 5
  store i64 %1473, i64* %PC
  %1474 = inttoptr i64 %1471 to double*
  %1475 = load double, double* %1474
  %1476 = bitcast i8* %1469 to double*
  store double %1475, double* %1476, align 1, !tbaa !2452
  %1477 = getelementptr inbounds i8, i8* %1469, i64 8
  %1478 = bitcast i8* %1477 to double*
  store double 0.000000e+00, double* %1478, align 1, !tbaa !2452
  %1479 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1480 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1481 = load i64, i64* %RBP
  %1482 = sub i64 %1481, 80
  %1483 = load i64, i64* %PC
  %1484 = add i64 %1483, 5
  store i64 %1484, i64* %PC
  %1485 = bitcast i8* %1480 to double*
  %1486 = load double, double* %1485, align 1
  %1487 = getelementptr inbounds i8, i8* %1480, i64 8
  %1488 = bitcast i8* %1487 to i64*
  %1489 = load i64, i64* %1488, align 1
  %1490 = inttoptr i64 %1482 to double*
  %1491 = load double, double* %1490
  %1492 = fsub double %1486, %1491
  %1493 = bitcast i8* %1479 to double*
  store double %1492, double* %1493, align 1, !tbaa !2452
  %1494 = getelementptr inbounds i8, i8* %1479, i64 8
  %1495 = bitcast i8* %1494 to i64*
  store i64 %1489, i64* %1495, align 1, !tbaa !2452
  %1496 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1497 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1498 = bitcast %union.vec128_t* %XMM1 to i8*
  %1499 = load i64, i64* %PC
  %1500 = add i64 %1499, 4
  store i64 %1500, i64* %PC
  %1501 = bitcast i8* %1497 to double*
  %1502 = load double, double* %1501, align 1
  %1503 = getelementptr inbounds i8, i8* %1497, i64 8
  %1504 = bitcast i8* %1503 to i64*
  %1505 = load i64, i64* %1504, align 1
  %1506 = bitcast i8* %1498 to double*
  %1507 = load double, double* %1506, align 1
  %1508 = fdiv double %1502, %1507
  %1509 = bitcast i8* %1496 to double*
  store double %1508, double* %1509, align 1, !tbaa !2452
  %1510 = getelementptr inbounds i8, i8* %1496, i64 8
  %1511 = bitcast i8* %1510 to i64*
  store i64 %1505, i64* %1511, align 1, !tbaa !2452
  %1512 = load i64, i64* %RBP
  %1513 = sub i64 %1512, 72
  %1514 = bitcast %union.vec128_t* %XMM0 to i8*
  %1515 = load i64, i64* %PC
  %1516 = add i64 %1515, 5
  store i64 %1516, i64* %PC
  %1517 = bitcast i8* %1514 to double*
  %1518 = load double, double* %1517, align 1
  %1519 = inttoptr i64 %1513 to double*
  store double %1518, double* %1519
  %1520 = load i64, i64* %RBP
  %1521 = sub i64 %1520, 24
  %1522 = load i64, i64* %PC
  %1523 = add i64 %1522, 7
  store i64 %1523, i64* %PC
  %1524 = inttoptr i64 %1521 to i32*
  store i32 0, i32* %1524
  %1525 = load i64, i64* %RBP
  %1526 = sub i64 %1525, 8
  %1527 = load i64, i64* %PC
  %1528 = add i64 %1527, 7
  store i64 %1528, i64* %PC
  %1529 = inttoptr i64 %1526 to i32*
  store i32 0, i32* %1529
  br label %block_4009fe

block_400aca:                                     ; preds = %block_400a94, %block_400a73
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.1, %block_400a73 ], [ %2950, %block_400a94 ]
  %1530 = load i64, i64* %PC
  %1531 = add i64 %1530, 5
  %1532 = load i64, i64* %PC
  %1533 = add i64 %1532, 5
  store i64 %1533, i64* %PC
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1531, i64* %1534, align 8, !tbaa !2428
  %1535 = load i64, i64* %RBP
  %1536 = sub i64 %1535, 12
  %1537 = load i64, i64* %PC
  %1538 = add i64 %1537, 3
  store i64 %1538, i64* %PC
  %1539 = inttoptr i64 %1536 to i32*
  %1540 = load i32, i32* %1539
  %1541 = zext i32 %1540 to i64
  store i64 %1541, i64* %RAX, align 8, !tbaa !2428
  %1542 = load i64, i64* %RAX
  %1543 = load i64, i64* %PC
  %1544 = add i64 %1543, 3
  store i64 %1544, i64* %PC
  %1545 = trunc i64 %1542 to i32
  %1546 = add i32 1, %1545
  %1547 = zext i32 %1546 to i64
  store i64 %1547, i64* %RAX, align 8, !tbaa !2428
  %1548 = icmp ult i32 %1546, %1545
  %1549 = icmp ult i32 %1546, 1
  %1550 = or i1 %1548, %1549
  %1551 = zext i1 %1550 to i8
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1551, i8* %1552, align 1, !tbaa !2432
  %1553 = and i32 %1546, 255
  %1554 = call i32 @llvm.ctpop.i32(i32 %1553) #17
  %1555 = trunc i32 %1554 to i8
  %1556 = and i8 %1555, 1
  %1557 = xor i8 %1556, 1
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1557, i8* %1558, align 1, !tbaa !2446
  %1559 = xor i64 1, %1542
  %1560 = trunc i64 %1559 to i32
  %1561 = xor i32 %1560, %1546
  %1562 = lshr i32 %1561, 4
  %1563 = trunc i32 %1562 to i8
  %1564 = and i8 %1563, 1
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1564, i8* %1565, align 1, !tbaa !2447
  %1566 = icmp eq i32 %1546, 0
  %1567 = zext i1 %1566 to i8
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1567, i8* %1568, align 1, !tbaa !2448
  %1569 = lshr i32 %1546, 31
  %1570 = trunc i32 %1569 to i8
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1570, i8* %1571, align 1, !tbaa !2449
  %1572 = lshr i32 %1545, 31
  %1573 = xor i32 %1569, %1572
  %1574 = add nuw nsw i32 %1573, %1569
  %1575 = icmp eq i32 %1574, 2
  %1576 = zext i1 %1575 to i8
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1576, i8* %1577, align 1, !tbaa !2450
  %1578 = load i64, i64* %RBP
  %1579 = sub i64 %1578, 12
  %1580 = load i32, i32* %EAX
  %1581 = zext i32 %1580 to i64
  %1582 = load i64, i64* %PC
  %1583 = add i64 %1582, 3
  store i64 %1583, i64* %PC
  %1584 = inttoptr i64 %1579 to i32*
  store i32 %1580, i32* %1584
  %1585 = load i64, i64* %PC
  %1586 = sub i64 %1585, 199
  %1587 = load i64, i64* %PC
  %1588 = add i64 %1587, 5
  store i64 %1588, i64* %PC
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1586, i64* %1589, align 8, !tbaa !2428
  br label %block_400a11

block_4008f8:                                     ; preds = %block_4008eb, %block_4008d9
  %MEMORY.7 = phi %struct.Memory* [ %582, %block_4008eb ], [ %582, %block_4008d9 ]
  %1590 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1591 = load i64, i64* %RBP
  %1592 = sub i64 %1591, 152
  %1593 = load i64, i64* %PC
  %1594 = add i64 %1593, 8
  store i64 %1594, i64* %PC
  %1595 = inttoptr i64 %1592 to double*
  %1596 = load double, double* %1595
  %1597 = bitcast i8* %1590 to double*
  store double %1596, double* %1597, align 1, !tbaa !2452
  %1598 = getelementptr inbounds i8, i8* %1590, i64 8
  %1599 = bitcast i8* %1598 to double*
  store double 0.000000e+00, double* %1599, align 1, !tbaa !2452
  %1600 = load i64, i64* %RBP
  %1601 = sub i64 %1600, 80
  %1602 = bitcast %union.vec128_t* %XMM0 to i8*
  %1603 = load i64, i64* %PC
  %1604 = add i64 %1603, 5
  store i64 %1604, i64* %PC
  %1605 = bitcast i8* %1602 to double*
  %1606 = load double, double* %1605, align 1
  %1607 = inttoptr i64 %1601 to double*
  store double %1606, double* %1607
  %1608 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1609 = load i64, i64* %RBP
  %1610 = sub i64 %1609, 112
  %1611 = load i64, i64* %PC
  %1612 = add i64 %1611, 5
  store i64 %1612, i64* %PC
  %1613 = inttoptr i64 %1610 to double*
  %1614 = load double, double* %1613
  %1615 = bitcast i8* %1608 to double*
  store double %1614, double* %1615, align 1, !tbaa !2452
  %1616 = getelementptr inbounds i8, i8* %1608, i64 8
  %1617 = bitcast i8* %1616 to double*
  store double 0.000000e+00, double* %1617, align 1, !tbaa !2452
  %1618 = bitcast %union.vec128_t* %XMM0 to i8*
  %1619 = load i64, i64* %RBP
  %1620 = sub i64 %1619, 88
  %1621 = load i64, i64* %PC
  %1622 = add i64 %1621, 5
  store i64 %1622, i64* %PC
  %1623 = bitcast i8* %1618 to double*
  %1624 = load double, double* %1623, align 1
  %1625 = inttoptr i64 %1620 to double*
  %1626 = load double, double* %1625
  %1627 = fcmp uno double %1624, %1626
  br i1 %1627, label %1628, label %1640

; <label>:1628:                                   ; preds = %block_4008f8
  %1629 = fadd double %1624, %1626
  %1630 = bitcast double %1629 to i64
  %1631 = and i64 %1630, 9221120237041090560
  %1632 = icmp eq i64 %1631, 9218868437227405312
  %1633 = and i64 %1630, 2251799813685247
  %1634 = icmp ne i64 %1633, 0
  %1635 = and i1 %1632, %1634
  br i1 %1635, label %1636, label %1646

; <label>:1636:                                   ; preds = %1628
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1638 = load i64, i64* %1637, align 8, !tbaa !2428
  %1639 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1638, %struct.Memory* %MEMORY.7) #18
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:1640:                                   ; preds = %block_4008f8
  %1641 = fcmp ogt double %1624, %1626
  br i1 %1641, label %1646, label %1642

; <label>:1642:                                   ; preds = %1640
  %1643 = fcmp olt double %1624, %1626
  br i1 %1643, label %1646, label %1644

; <label>:1644:                                   ; preds = %1642
  %1645 = fcmp oeq double %1624, %1626
  br i1 %1645, label %1646, label %1653

; <label>:1646:                                   ; preds = %1644, %1642, %1640, %1628
  %1647 = phi i8 [ 0, %1640 ], [ 0, %1642 ], [ 1, %1644 ], [ 1, %1628 ]
  %1648 = phi i8 [ 0, %1640 ], [ 0, %1642 ], [ 0, %1644 ], [ 1, %1628 ]
  %1649 = phi i8 [ 0, %1640 ], [ 1, %1642 ], [ 0, %1644 ], [ 1, %1628 ]
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1647, i8* %1650, align 1, !tbaa !2451
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1648, i8* %1651, align 1, !tbaa !2451
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1649, i8* %1652, align 1, !tbaa !2451
  br label %1653

; <label>:1653:                                   ; preds = %1646, %1644
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1654, align 1, !tbaa !2451
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1655, align 1, !tbaa !2451
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1656, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %1636, %1653
  %1657 = phi %struct.Memory* [ %1639, %1636 ], [ %MEMORY.7, %1653 ]
  %1658 = load i64, i64* %PC
  %1659 = add i64 %1658, 24
  %1660 = load i64, i64* %PC
  %1661 = add i64 %1660, 6
  %1662 = load i64, i64* %PC
  %1663 = add i64 %1662, 6
  store i64 %1663, i64* %PC
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1665 = load i8, i8* %1664, align 1, !tbaa !2432
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1667 = load i8, i8* %1666, align 1, !tbaa !2448
  %1668 = or i8 %1667, %1665
  %1669 = icmp ne i8 %1668, 0
  %1670 = zext i1 %1669 to i8
  store i8 %1670, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1672 = select i1 %1669, i64 %1659, i64 %1661
  store i64 %1672, i64* %1671, align 8, !tbaa !2428
  %1673 = load i8, i8* %BRANCH_TAKEN
  %1674 = icmp eq i8 %1673, 1
  %1675 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1676 = load i64, i64* %RBP
  br i1 %1674, label %block_400927, label %block_400915

block_400967:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %1677 = sub i64 %2276, 96
  %1678 = load i64, i64* %PC
  %1679 = add i64 %1678, 5
  store i64 %1679, i64* %PC
  %1680 = inttoptr i64 %1677 to double*
  %1681 = load double, double* %1680
  %1682 = bitcast i8* %2275 to double*
  store double %1681, double* %1682, align 1, !tbaa !2452
  %1683 = getelementptr inbounds i8, i8* %2275, i64 8
  %1684 = bitcast i8* %1683 to double*
  store double 0.000000e+00, double* %1684, align 1, !tbaa !2452
  %1685 = load i64, i64* %RBP
  %1686 = sub i64 %1685, 168
  %1687 = bitcast %union.vec128_t* %XMM0 to i8*
  %1688 = load i64, i64* %PC
  %1689 = add i64 %1688, 8
  store i64 %1689, i64* %PC
  %1690 = bitcast i8* %1687 to double*
  %1691 = load double, double* %1690, align 1
  %1692 = inttoptr i64 %1686 to double*
  store double %1691, double* %1692
  br label %block_400974

block_40078a:                                     ; preds = %block_40076c, %block_40077b
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.13, %block_40076c ], [ %MEMORY.13, %block_40077b ]
  %1693 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1694 = load i64, i64* %PC
  %1695 = add i64 %1694, 8
  store i64 %1695, i64* %PC
  %1696 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 32) to double*)
  %1697 = bitcast i8* %1693 to double*
  store double %1696, double* %1697, align 1, !tbaa !2452
  %1698 = getelementptr inbounds i8, i8* %1693, i64 8
  %1699 = bitcast i8* %1698 to double*
  store double 0.000000e+00, double* %1699, align 1, !tbaa !2452
  %1700 = load i64, i64* %RBP
  %1701 = sub i64 %1700, 40
  %1702 = load i64, i64* %PC
  %1703 = add i64 %1702, 4
  store i64 %1703, i64* %PC
  %1704 = inttoptr i64 %1701 to i64*
  %1705 = load i64, i64* %1704
  store i64 %1705, i64* %RAX, align 8, !tbaa !2428
  %1706 = load i64, i64* %RBP
  %1707 = sub i64 %1706, 32
  %1708 = load i64, i64* %PC
  %1709 = add i64 %1708, 3
  store i64 %1709, i64* %PC
  %1710 = inttoptr i64 %1707 to i32*
  %1711 = load i32, i32* %1710
  %1712 = zext i32 %1711 to i64
  store i64 %1712, i64* %RCX, align 8, !tbaa !2428
  %1713 = load i64, i64* %RCX
  %1714 = load i64, i64* %RBP
  %1715 = sub i64 %1714, 8
  %1716 = load i64, i64* %PC
  %1717 = add i64 %1716, 4
  store i64 %1717, i64* %PC
  %1718 = inttoptr i64 %1715 to i32*
  %1719 = load i32, i32* %1718
  %1720 = shl i64 %1713, 32
  %1721 = ashr exact i64 %1720, 32
  %1722 = sext i32 %1719 to i64
  %1723 = mul nsw i64 %1722, %1721
  %1724 = trunc i64 %1723 to i32
  %1725 = and i64 %1723, 4294967295
  store i64 %1725, i64* %RCX, align 8, !tbaa !2428
  %1726 = shl i64 %1723, 32
  %1727 = ashr exact i64 %1726, 32
  %1728 = icmp ne i64 %1727, %1723
  %1729 = zext i1 %1728 to i8
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1729, i8* %1730, align 1, !tbaa !2432
  %1731 = and i32 %1724, 255
  %1732 = call i32 @llvm.ctpop.i32(i32 %1731) #17
  %1733 = trunc i32 %1732 to i8
  %1734 = and i8 %1733, 1
  %1735 = xor i8 %1734, 1
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1735, i8* %1736, align 1, !tbaa !2446
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1737, align 1, !tbaa !2447
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1738, align 1, !tbaa !2448
  %1739 = lshr i32 %1724, 31
  %1740 = trunc i32 %1739 to i8
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1740, i8* %1741, align 1, !tbaa !2449
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1729, i8* %1742, align 1, !tbaa !2450
  %1743 = load i64, i64* %RCX
  %1744 = load i64, i64* %RBP
  %1745 = sub i64 %1744, 12
  %1746 = load i64, i64* %PC
  %1747 = add i64 %1746, 3
  store i64 %1747, i64* %PC
  %1748 = trunc i64 %1743 to i32
  %1749 = inttoptr i64 %1745 to i32*
  %1750 = load i32, i32* %1749
  %1751 = add i32 %1750, %1748
  %1752 = zext i32 %1751 to i64
  store i64 %1752, i64* %RCX, align 8, !tbaa !2428
  %1753 = icmp ult i32 %1751, %1748
  %1754 = icmp ult i32 %1751, %1750
  %1755 = or i1 %1753, %1754
  %1756 = zext i1 %1755 to i8
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1756, i8* %1757, align 1, !tbaa !2432
  %1758 = and i32 %1751, 255
  %1759 = call i32 @llvm.ctpop.i32(i32 %1758) #17
  %1760 = trunc i32 %1759 to i8
  %1761 = and i8 %1760, 1
  %1762 = xor i8 %1761, 1
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1762, i8* %1763, align 1, !tbaa !2446
  %1764 = xor i32 %1750, %1748
  %1765 = xor i32 %1764, %1751
  %1766 = lshr i32 %1765, 4
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1768, i8* %1769, align 1, !tbaa !2447
  %1770 = icmp eq i32 %1751, 0
  %1771 = zext i1 %1770 to i8
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1771, i8* %1772, align 1, !tbaa !2448
  %1773 = lshr i32 %1751, 31
  %1774 = trunc i32 %1773 to i8
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1774, i8* %1775, align 1, !tbaa !2449
  %1776 = lshr i32 %1748, 31
  %1777 = lshr i32 %1750, 31
  %1778 = xor i32 %1773, %1776
  %1779 = xor i32 %1773, %1777
  %1780 = add nuw nsw i32 %1778, %1779
  %1781 = icmp eq i32 %1780, 2
  %1782 = zext i1 %1781 to i8
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1782, i8* %1783, align 1, !tbaa !2450
  %1784 = load i64, i64* %RCX
  %1785 = load i64, i64* %PC
  %1786 = add i64 %1785, 3
  store i64 %1786, i64* %PC
  %1787 = trunc i64 %1784 to i32
  %1788 = shl i32 %1787, 1
  %1789 = icmp slt i32 %1787, 0
  %1790 = icmp slt i32 %1788, 0
  %1791 = xor i1 %1789, %1790
  %1792 = zext i32 %1788 to i64
  store i64 %1792, i64* %RCX, align 8, !tbaa !2428
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1794 = zext i1 %1789 to i8
  store i8 %1794, i8* %1793, align 1, !tbaa !2451
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1796 = and i32 %1788, 254
  %1797 = call i32 @llvm.ctpop.i32(i32 %1796) #17
  %1798 = trunc i32 %1797 to i8
  %1799 = and i8 %1798, 1
  %1800 = xor i8 %1799, 1
  store i8 %1800, i8* %1795, align 1, !tbaa !2451
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1801, align 1, !tbaa !2451
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1803 = icmp eq i32 %1788, 0
  %1804 = zext i1 %1803 to i8
  store i8 %1804, i8* %1802, align 1, !tbaa !2451
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1806 = lshr i32 %1788, 31
  %1807 = trunc i32 %1806 to i8
  store i8 %1807, i8* %1805, align 1, !tbaa !2451
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1809 = zext i1 %1791 to i8
  store i8 %1809, i8* %1808, align 1, !tbaa !2451
  %1810 = load i64, i64* %RCX
  %1811 = load i64, i64* %PC
  %1812 = add i64 %1811, 3
  store i64 %1812, i64* %PC
  %1813 = trunc i64 %1810 to i32
  %1814 = add i32 1, %1813
  %1815 = zext i32 %1814 to i64
  store i64 %1815, i64* %RCX, align 8, !tbaa !2428
  %1816 = icmp ult i32 %1814, %1813
  %1817 = icmp ult i32 %1814, 1
  %1818 = or i1 %1816, %1817
  %1819 = zext i1 %1818 to i8
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1819, i8* %1820, align 1, !tbaa !2432
  %1821 = and i32 %1814, 255
  %1822 = call i32 @llvm.ctpop.i32(i32 %1821) #17
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  %1825 = xor i8 %1824, 1
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1825, i8* %1826, align 1, !tbaa !2446
  %1827 = xor i64 1, %1810
  %1828 = trunc i64 %1827 to i32
  %1829 = xor i32 %1828, %1814
  %1830 = lshr i32 %1829, 4
  %1831 = trunc i32 %1830 to i8
  %1832 = and i8 %1831, 1
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1832, i8* %1833, align 1, !tbaa !2447
  %1834 = icmp eq i32 %1814, 0
  %1835 = zext i1 %1834 to i8
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1835, i8* %1836, align 1, !tbaa !2448
  %1837 = lshr i32 %1814, 31
  %1838 = trunc i32 %1837 to i8
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1838, i8* %1839, align 1, !tbaa !2449
  %1840 = lshr i32 %1813, 31
  %1841 = xor i32 %1837, %1840
  %1842 = add nuw nsw i32 %1841, %1837
  %1843 = icmp eq i32 %1842, 2
  %1844 = zext i1 %1843 to i8
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1844, i8* %1845, align 1, !tbaa !2450
  %1846 = load i32, i32* %ECX
  %1847 = zext i32 %1846 to i64
  %1848 = load i64, i64* %PC
  %1849 = add i64 %1848, 3
  store i64 %1849, i64* %PC
  %1850 = shl i64 %1847, 32
  %1851 = ashr exact i64 %1850, 32
  store i64 %1851, i64* %RDX, align 8, !tbaa !2428
  %1852 = load i64, i64* %RAX
  %1853 = load i64, i64* %RDX
  %1854 = mul i64 %1853, 8
  %1855 = add i64 %1854, %1852
  %1856 = bitcast %union.vec128_t* %XMM0 to i8*
  %1857 = load i64, i64* %PC
  %1858 = add i64 %1857, 5
  store i64 %1858, i64* %PC
  %1859 = bitcast i8* %1856 to double*
  %1860 = load double, double* %1859, align 1
  %1861 = inttoptr i64 %1855 to double*
  store double %1860, double* %1861
  br label %block_4007ae

block_400734:                                     ; preds = %block_4006a0
  %1862 = load i64, i64* %RSI
  %1863 = load i32, i32* %ESI
  %1864 = zext i32 %1863 to i64
  %1865 = load i64, i64* %PC
  %1866 = add i64 %1865, 2
  store i64 %1866, i64* %PC
  %1867 = xor i64 %1864, %1862
  %1868 = trunc i64 %1867 to i32
  %1869 = and i64 %1867, 4294967295
  store i64 %1869, i64* %RSI, align 8, !tbaa !2428
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1870, align 1, !tbaa !2432
  %1871 = and i32 %1868, 255
  %1872 = call i32 @llvm.ctpop.i32(i32 %1871) #17
  %1873 = trunc i32 %1872 to i8
  %1874 = and i8 %1873, 1
  %1875 = xor i8 %1874, 1
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1875, i8* %1876, align 1, !tbaa !2446
  %1877 = icmp eq i32 %1868, 0
  %1878 = zext i1 %1877 to i8
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1878, i8* %1879, align 1, !tbaa !2448
  %1880 = lshr i32 %1868, 31
  %1881 = trunc i32 %1880 to i8
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1881, i8* %1882, align 1, !tbaa !2449
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1883, align 1, !tbaa !2450
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1884, align 1, !tbaa !2447
  %1885 = load i64, i64* %RBP
  %1886 = sub i64 %1885, 40
  %1887 = load i64, i64* %PC
  %1888 = add i64 %1887, 4
  store i64 %1888, i64* %PC
  %1889 = inttoptr i64 %1886 to i64*
  %1890 = load i64, i64* %1889
  store i64 %1890, i64* %RAX, align 8, !tbaa !2428
  %1891 = load i64, i64* %RBP
  %1892 = sub i64 %1891, 56
  %1893 = load i64, i64* %PC
  %1894 = add i64 %1893, 4
  store i64 %1894, i64* %PC
  %1895 = inttoptr i64 %1892 to i64*
  %1896 = load i64, i64* %1895
  store i64 %1896, i64* %RDX, align 8, !tbaa !2428
  %1897 = load i64, i64* %RAX
  %1898 = load i64, i64* %PC
  %1899 = add i64 %1898, 3
  store i64 %1899, i64* %PC
  store i64 %1897, i64* %RDI, align 8, !tbaa !2428
  %1900 = load i64, i64* %PC
  %1901 = sub i64 %1900, 481
  %1902 = load i64, i64* %PC
  %1903 = add i64 %1902, 5
  %1904 = load i64, i64* %PC
  %1905 = add i64 %1904, 5
  store i64 %1905, i64* %PC
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1907 = load i64, i64* %1906, align 8, !tbaa !2428
  %1908 = add i64 %1907, -8
  %1909 = inttoptr i64 %1908 to i64*
  store i64 %1903, i64* %1909
  store i64 %1908, i64* %1906, align 8, !tbaa !2428
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1901, i64* %1910, align 8, !tbaa !2428
  %1911 = load i64, i64* %PC
  %1912 = call %struct.Memory* @ext_6020a8_memset(%struct.State* %0, i64 %1911, %struct.Memory* %298)
  %1913 = load i64, i64* %RBP
  %1914 = sub i64 %1913, 8
  %1915 = load i64, i64* %PC
  %1916 = add i64 %1915, 7
  store i64 %1916, i64* %PC
  %1917 = inttoptr i64 %1914 to i32*
  store i32 0, i32* %1917
  br label %block_40074d

block_4009b0:                                     ; preds = %block_4009a3, %block_400991
  %MEMORY.9 = phi %struct.Memory* [ %1294, %block_4009a3 ], [ %1294, %block_400991 ]
  %1918 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1919 = load i64, i64* %RBP
  %1920 = sub i64 %1919, 176
  %1921 = load i64, i64* %PC
  %1922 = add i64 %1921, 8
  store i64 %1922, i64* %PC
  %1923 = inttoptr i64 %1920 to double*
  %1924 = load double, double* %1923
  %1925 = bitcast i8* %1918 to double*
  store double %1924, double* %1925, align 1, !tbaa !2452
  %1926 = getelementptr inbounds i8, i8* %1918, i64 8
  %1927 = bitcast i8* %1926 to double*
  store double 0.000000e+00, double* %1927, align 1, !tbaa !2452
  %1928 = load i64, i64* %RBP
  %1929 = sub i64 %1928, 104
  %1930 = bitcast %union.vec128_t* %XMM0 to i8*
  %1931 = load i64, i64* %PC
  %1932 = add i64 %1931, 5
  store i64 %1932, i64* %PC
  %1933 = bitcast i8* %1930 to double*
  %1934 = load double, double* %1933, align 1
  %1935 = inttoptr i64 %1929 to double*
  store double %1934, double* %1935
  %1936 = load i64, i64* %RBP
  %1937 = sub i64 %1936, 8
  %1938 = load i64, i64* %PC
  %1939 = add i64 %1938, 3
  store i64 %1939, i64* %PC
  %1940 = inttoptr i64 %1937 to i32*
  %1941 = load i32, i32* %1940
  %1942 = zext i32 %1941 to i64
  store i64 %1942, i64* %RAX, align 8, !tbaa !2428
  %1943 = load i64, i64* %RAX
  %1944 = load i64, i64* %PC
  %1945 = add i64 %1944, 3
  store i64 %1945, i64* %PC
  %1946 = trunc i64 %1943 to i32
  %1947 = add i32 2, %1946
  %1948 = zext i32 %1947 to i64
  store i64 %1948, i64* %RAX, align 8, !tbaa !2428
  %1949 = icmp ult i32 %1947, %1946
  %1950 = icmp ult i32 %1947, 2
  %1951 = or i1 %1949, %1950
  %1952 = zext i1 %1951 to i8
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1952, i8* %1953, align 1, !tbaa !2432
  %1954 = and i32 %1947, 255
  %1955 = call i32 @llvm.ctpop.i32(i32 %1954) #17
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  %1958 = xor i8 %1957, 1
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1958, i8* %1959, align 1, !tbaa !2446
  %1960 = xor i64 2, %1943
  %1961 = trunc i64 %1960 to i32
  %1962 = xor i32 %1961, %1947
  %1963 = lshr i32 %1962, 4
  %1964 = trunc i32 %1963 to i8
  %1965 = and i8 %1964, 1
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1965, i8* %1966, align 1, !tbaa !2447
  %1967 = icmp eq i32 %1947, 0
  %1968 = zext i1 %1967 to i8
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1968, i8* %1969, align 1, !tbaa !2448
  %1970 = lshr i32 %1947, 31
  %1971 = trunc i32 %1970 to i8
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1971, i8* %1972, align 1, !tbaa !2449
  %1973 = lshr i32 %1946, 31
  %1974 = xor i32 %1970, %1973
  %1975 = add nuw nsw i32 %1974, %1970
  %1976 = icmp eq i32 %1975, 2
  %1977 = zext i1 %1976 to i8
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1977, i8* %1978, align 1, !tbaa !2450
  %1979 = load i64, i64* %RBP
  %1980 = sub i64 %1979, 8
  %1981 = load i32, i32* %EAX
  %1982 = zext i32 %1981 to i64
  %1983 = load i64, i64* %PC
  %1984 = add i64 %1983, 3
  store i64 %1984, i64* %PC
  %1985 = inttoptr i64 %1980 to i32*
  store i32 %1981, i32* %1985
  %1986 = load i64, i64* %PC
  %1987 = sub i64 %1986, 348
  %1988 = load i64, i64* %PC
  %1989 = add i64 %1988, 5
  store i64 %1989, i64* %PC
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1987, i64* %1990, align 8, !tbaa !2428
  br label %block_40086a

block_40082f:                                     ; preds = %block_4007db
  %1991 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1992 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1993 = bitcast %union.vec128_t* %XMM0 to i8*
  %1994 = load i64, i64* %PC
  %1995 = add i64 %1994, 3
  store i64 %1995, i64* %PC
  %1996 = bitcast i8* %1992 to i64*
  %1997 = load i64, i64* %1996, align 1
  %1998 = getelementptr inbounds i8, i8* %1992, i64 8
  %1999 = bitcast i8* %1998 to i64*
  %2000 = load i64, i64* %1999, align 1
  %2001 = bitcast i8* %1993 to i64*
  %2002 = load i64, i64* %2001, align 1
  %2003 = getelementptr inbounds i8, i8* %1993, i64 8
  %2004 = bitcast i8* %2003 to i64*
  %2005 = load i64, i64* %2004, align 1
  %2006 = xor i64 %2002, %1997
  %2007 = xor i64 %2005, %2000
  %2008 = trunc i64 %2006 to i32
  %2009 = lshr i64 %2006, 32
  %2010 = trunc i64 %2009 to i32
  %2011 = bitcast i8* %1991 to i32*
  store i32 %2008, i32* %2011, align 1, !tbaa !2454
  %2012 = getelementptr inbounds i8, i8* %1991, i64 4
  %2013 = bitcast i8* %2012 to i32*
  store i32 %2010, i32* %2013, align 1, !tbaa !2454
  %2014 = trunc i64 %2007 to i32
  %2015 = getelementptr inbounds i8, i8* %1991, i64 8
  %2016 = bitcast i8* %2015 to i32*
  store i32 %2014, i32* %2016, align 1, !tbaa !2454
  %2017 = lshr i64 %2007, 32
  %2018 = trunc i64 %2017 to i32
  %2019 = getelementptr inbounds i8, i8* %1991, i64 12
  %2020 = bitcast i8* %2019 to i32*
  store i32 %2018, i32* %2020, align 1, !tbaa !2454
  %2021 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2022 = load i64, i64* %PC
  %2023 = add i64 %2022, 8
  store i64 %2023, i64* %PC
  %2024 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 8) to double*)
  %2025 = bitcast i8* %2021 to double*
  store double %2024, double* %2025, align 1, !tbaa !2452
  %2026 = getelementptr inbounds i8, i8* %2021, i64 8
  %2027 = bitcast i8* %2026 to double*
  store double 0.000000e+00, double* %2027, align 1, !tbaa !2452
  %2028 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2029 = load i64, i64* %PC
  %2030 = add i64 %2029, 8
  store i64 %2030, i64* %PC
  %2031 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 16) to double*)
  %2032 = bitcast i8* %2028 to double*
  store double %2031, double* %2032, align 1, !tbaa !2452
  %2033 = getelementptr inbounds i8, i8* %2028, i64 8
  %2034 = bitcast i8* %2033 to double*
  store double 0.000000e+00, double* %2034, align 1, !tbaa !2452
  %2035 = load i64, i64* %RBP
  %2036 = sub i64 %2035, 80
  %2037 = bitcast %union.vec128_t* %XMM2 to i8*
  %2038 = load i64, i64* %PC
  %2039 = add i64 %2038, 5
  store i64 %2039, i64* %PC
  %2040 = bitcast i8* %2037 to double*
  %2041 = load double, double* %2040, align 1
  %2042 = inttoptr i64 %2036 to double*
  store double %2041, double* %2042
  %2043 = load i64, i64* %RBP
  %2044 = sub i64 %2043, 88
  %2045 = bitcast %union.vec128_t* %XMM1 to i8*
  %2046 = load i64, i64* %PC
  %2047 = add i64 %2046, 5
  store i64 %2047, i64* %PC
  %2048 = bitcast i8* %2045 to double*
  %2049 = load double, double* %2048, align 1
  %2050 = inttoptr i64 %2044 to double*
  store double %2049, double* %2050
  %2051 = load i64, i64* %RBP
  %2052 = sub i64 %2051, 96
  %2053 = bitcast %union.vec128_t* %XMM2 to i8*
  %2054 = load i64, i64* %PC
  %2055 = add i64 %2054, 5
  store i64 %2055, i64* %PC
  %2056 = bitcast i8* %2053 to double*
  %2057 = load double, double* %2056, align 1
  %2058 = inttoptr i64 %2052 to double*
  store double %2057, double* %2058
  %2059 = load i64, i64* %RBP
  %2060 = sub i64 %2059, 104
  %2061 = bitcast %union.vec128_t* %XMM1 to i8*
  %2062 = load i64, i64* %PC
  %2063 = add i64 %2062, 5
  store i64 %2063, i64* %PC
  %2064 = bitcast i8* %2061 to double*
  %2065 = load double, double* %2064, align 1
  %2066 = inttoptr i64 %2060 to double*
  store double %2065, double* %2066
  %2067 = load i64, i64* %RBP
  %2068 = sub i64 %2067, 128
  %2069 = bitcast %union.vec128_t* %XMM0 to i8*
  %2070 = load i64, i64* %PC
  %2071 = add i64 %2070, 5
  store i64 %2071, i64* %PC
  %2072 = bitcast i8* %2069 to double*
  %2073 = load double, double* %2072, align 1
  %2074 = inttoptr i64 %2068 to double*
  store double %2073, double* %2074
  %2075 = load i64, i64* %RBP
  %2076 = sub i64 %2075, 136
  %2077 = bitcast %union.vec128_t* %XMM0 to i8*
  %2078 = load i64, i64* %PC
  %2079 = add i64 %2078, 8
  store i64 %2079, i64* %PC
  %2080 = bitcast i8* %2077 to double*
  %2081 = load double, double* %2080, align 1
  %2082 = inttoptr i64 %2076 to double*
  store double %2081, double* %2082
  %2083 = load i64, i64* %RBP
  %2084 = sub i64 %2083, 8
  %2085 = load i64, i64* %PC
  %2086 = add i64 %2085, 7
  store i64 %2086, i64* %PC
  %2087 = inttoptr i64 %2084 to i32*
  store i32 1, i32* %2087
  br label %block_40086a

block_400991:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %2088 = sub i64 %1313, 120
  %2089 = load i64, i64* %PC
  %2090 = add i64 %2089, 5
  store i64 %2090, i64* %PC
  %2091 = inttoptr i64 %2088 to double*
  %2092 = load double, double* %2091
  %2093 = bitcast i8* %1312 to double*
  store double %2092, double* %2093, align 1, !tbaa !2452
  %2094 = getelementptr inbounds i8, i8* %1312, i64 8
  %2095 = bitcast i8* %2094 to double*
  store double 0.000000e+00, double* %2095, align 1, !tbaa !2452
  %2096 = load i64, i64* %RBP
  %2097 = sub i64 %2096, 176
  %2098 = bitcast %union.vec128_t* %XMM0 to i8*
  %2099 = load i64, i64* %PC
  %2100 = add i64 %2099, 8
  store i64 %2100, i64* %PC
  %2101 = bitcast i8* %2098 to double*
  %2102 = load double, double* %2101, align 1
  %2103 = inttoptr i64 %2097 to double*
  store double %2102, double* %2103
  %2104 = load i64, i64* %PC
  %2105 = add i64 %2104, 18
  %2106 = load i64, i64* %PC
  %2107 = add i64 %2106, 5
  store i64 %2107, i64* %PC
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2105, i64* %2108, align 8, !tbaa !2428
  br label %block_4009b0

block_400927:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %2109 = sub i64 %1676, 88
  %2110 = load i64, i64* %PC
  %2111 = add i64 %2110, 5
  store i64 %2111, i64* %PC
  %2112 = inttoptr i64 %2109 to double*
  %2113 = load double, double* %2112
  %2114 = bitcast i8* %1675 to double*
  store double %2113, double* %2114, align 1, !tbaa !2452
  %2115 = getelementptr inbounds i8, i8* %1675, i64 8
  %2116 = bitcast i8* %2115 to double*
  store double 0.000000e+00, double* %2116, align 1, !tbaa !2452
  %2117 = load i64, i64* %RBP
  %2118 = sub i64 %2117, 160
  %2119 = bitcast %union.vec128_t* %XMM0 to i8*
  %2120 = load i64, i64* %PC
  %2121 = add i64 %2120, 8
  store i64 %2121, i64* %PC
  %2122 = bitcast i8* %2119 to double*
  %2123 = load double, double* %2122, align 1
  %2124 = inttoptr i64 %2118 to double*
  store double %2123, double* %2124
  br label %block_400934

block_4007c1:                                     ; preds = %block_400760
  %2125 = load i64, i64* %PC
  %2126 = add i64 %2125, 5
  %2127 = load i64, i64* %PC
  %2128 = add i64 %2127, 5
  store i64 %2128, i64* %PC
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2126, i64* %2129, align 8, !tbaa !2428
  %2130 = load i64, i64* %RBP
  %2131 = sub i64 %2130, 8
  %2132 = load i64, i64* %PC
  %2133 = add i64 %2132, 3
  store i64 %2133, i64* %PC
  %2134 = inttoptr i64 %2131 to i32*
  %2135 = load i32, i32* %2134
  %2136 = zext i32 %2135 to i64
  store i64 %2136, i64* %RAX, align 8, !tbaa !2428
  %2137 = load i64, i64* %RAX
  %2138 = load i64, i64* %PC
  %2139 = add i64 %2138, 3
  store i64 %2139, i64* %PC
  %2140 = trunc i64 %2137 to i32
  %2141 = add i32 1, %2140
  %2142 = zext i32 %2141 to i64
  store i64 %2142, i64* %RAX, align 8, !tbaa !2428
  %2143 = icmp ult i32 %2141, %2140
  %2144 = icmp ult i32 %2141, 1
  %2145 = or i1 %2143, %2144
  %2146 = zext i1 %2145 to i8
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2146, i8* %2147, align 1, !tbaa !2432
  %2148 = and i32 %2141, 255
  %2149 = call i32 @llvm.ctpop.i32(i32 %2148) #17
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  %2152 = xor i8 %2151, 1
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2152, i8* %2153, align 1, !tbaa !2446
  %2154 = xor i64 1, %2137
  %2155 = trunc i64 %2154 to i32
  %2156 = xor i32 %2155, %2141
  %2157 = lshr i32 %2156, 4
  %2158 = trunc i32 %2157 to i8
  %2159 = and i8 %2158, 1
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2159, i8* %2160, align 1, !tbaa !2447
  %2161 = icmp eq i32 %2141, 0
  %2162 = zext i1 %2161 to i8
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2162, i8* %2163, align 1, !tbaa !2448
  %2164 = lshr i32 %2141, 31
  %2165 = trunc i32 %2164 to i8
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2165, i8* %2166, align 1, !tbaa !2449
  %2167 = lshr i32 %2140, 31
  %2168 = xor i32 %2164, %2167
  %2169 = add nuw nsw i32 %2168, %2164
  %2170 = icmp eq i32 %2169, 2
  %2171 = zext i1 %2170 to i8
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2171, i8* %2172, align 1, !tbaa !2450
  %2173 = load i64, i64* %RBP
  %2174 = sub i64 %2173, 8
  %2175 = load i32, i32* %EAX
  %2176 = zext i32 %2175 to i64
  %2177 = load i64, i64* %PC
  %2178 = add i64 %2177, 3
  store i64 %2178, i64* %PC
  %2179 = inttoptr i64 %2174 to i32*
  store i32 %2175, i32* %2179
  %2180 = load i64, i64* %PC
  %2181 = sub i64 %2180, 130
  %2182 = load i64, i64* %PC
  %2183 = add i64 %2182, 5
  store i64 %2183, i64* %PC
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2181, i64* %2184, align 8, !tbaa !2428
  br label %block_40074d

block_400934:                                     ; preds = %block_400915, %block_400927
  %MEMORY.10 = phi %struct.Memory* [ %1657, %block_400927 ], [ %1657, %block_400915 ]
  %2185 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2186 = load i64, i64* %RBP
  %2187 = sub i64 %2186, 160
  %2188 = load i64, i64* %PC
  %2189 = add i64 %2188, 8
  store i64 %2189, i64* %PC
  %2190 = inttoptr i64 %2187 to double*
  %2191 = load double, double* %2190
  %2192 = bitcast i8* %2185 to double*
  store double %2191, double* %2192, align 1, !tbaa !2452
  %2193 = getelementptr inbounds i8, i8* %2185, i64 8
  %2194 = bitcast i8* %2193 to double*
  store double 0.000000e+00, double* %2194, align 1, !tbaa !2452
  %2195 = load i64, i64* %RBP
  %2196 = sub i64 %2195, 88
  %2197 = bitcast %union.vec128_t* %XMM0 to i8*
  %2198 = load i64, i64* %PC
  %2199 = add i64 %2198, 5
  store i64 %2199, i64* %PC
  %2200 = bitcast i8* %2197 to double*
  %2201 = load double, double* %2200, align 1
  %2202 = inttoptr i64 %2196 to double*
  store double %2201, double* %2202
  %2203 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2204 = load i64, i64* %RBP
  %2205 = sub i64 %2204, 120
  %2206 = load i64, i64* %PC
  %2207 = add i64 %2206, 5
  store i64 %2207, i64* %PC
  %2208 = inttoptr i64 %2205 to double*
  %2209 = load double, double* %2208
  %2210 = bitcast i8* %2203 to double*
  store double %2209, double* %2210, align 1, !tbaa !2452
  %2211 = getelementptr inbounds i8, i8* %2203, i64 8
  %2212 = bitcast i8* %2211 to double*
  store double 0.000000e+00, double* %2212, align 1, !tbaa !2452
  %2213 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2214 = load i64, i64* %RBP
  %2215 = sub i64 %2214, 96
  %2216 = load i64, i64* %PC
  %2217 = add i64 %2216, 5
  store i64 %2217, i64* %PC
  %2218 = inttoptr i64 %2215 to double*
  %2219 = load double, double* %2218
  %2220 = bitcast i8* %2213 to double*
  store double %2219, double* %2220, align 1, !tbaa !2452
  %2221 = getelementptr inbounds i8, i8* %2213, i64 8
  %2222 = bitcast i8* %2221 to double*
  store double 0.000000e+00, double* %2222, align 1, !tbaa !2452
  %2223 = bitcast %union.vec128_t* %XMM1 to i8*
  %2224 = bitcast %union.vec128_t* %XMM0 to i8*
  %2225 = load i64, i64* %PC
  %2226 = add i64 %2225, 4
  store i64 %2226, i64* %PC
  %2227 = bitcast i8* %2223 to double*
  %2228 = load double, double* %2227, align 1
  %2229 = bitcast i8* %2224 to double*
  %2230 = load double, double* %2229, align 1
  %2231 = fcmp uno double %2228, %2230
  br i1 %2231, label %2232, label %2244

; <label>:2232:                                   ; preds = %block_400934
  %2233 = fadd double %2228, %2230
  %2234 = bitcast double %2233 to i64
  %2235 = and i64 %2234, 9221120237041090560
  %2236 = icmp eq i64 %2235, 9218868437227405312
  %2237 = and i64 %2234, 2251799813685247
  %2238 = icmp ne i64 %2237, 0
  %2239 = and i1 %2236, %2238
  br i1 %2239, label %2240, label %2250

; <label>:2240:                                   ; preds = %2232
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2242 = load i64, i64* %2241, align 8, !tbaa !2428
  %2243 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2242, %struct.Memory* %MEMORY.10) #18
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:2244:                                   ; preds = %block_400934
  %2245 = fcmp ogt double %2228, %2230
  br i1 %2245, label %2250, label %2246

; <label>:2246:                                   ; preds = %2244
  %2247 = fcmp olt double %2228, %2230
  br i1 %2247, label %2250, label %2248

; <label>:2248:                                   ; preds = %2246
  %2249 = fcmp oeq double %2228, %2230
  br i1 %2249, label %2250, label %2257

; <label>:2250:                                   ; preds = %2248, %2246, %2244, %2232
  %2251 = phi i8 [ 0, %2244 ], [ 0, %2246 ], [ 1, %2248 ], [ 1, %2232 ]
  %2252 = phi i8 [ 0, %2244 ], [ 0, %2246 ], [ 0, %2248 ], [ 1, %2232 ]
  %2253 = phi i8 [ 0, %2244 ], [ 1, %2246 ], [ 0, %2248 ], [ 1, %2232 ]
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2251, i8* %2254, align 1, !tbaa !2451
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2252, i8* %2255, align 1, !tbaa !2451
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2253, i8* %2256, align 1, !tbaa !2451
  br label %2257

; <label>:2257:                                   ; preds = %2250, %2248
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2258, align 1, !tbaa !2451
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2259, align 1, !tbaa !2451
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2260, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %2240, %2257
  %2261 = phi %struct.Memory* [ %2243, %2240 ], [ %MEMORY.10, %2257 ]
  %2262 = load i64, i64* %PC
  %2263 = add i64 %2262, 24
  %2264 = load i64, i64* %PC
  %2265 = add i64 %2264, 6
  %2266 = load i64, i64* %PC
  %2267 = add i64 %2266, 6
  store i64 %2267, i64* %PC
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2269 = load i8, i8* %2268, align 1, !tbaa !2432
  store i8 %2269, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2271 = icmp ne i8 %2269, 0
  %2272 = select i1 %2271, i64 %2263, i64 %2265
  store i64 %2272, i64* %2270, align 8, !tbaa !2428
  %2273 = load i8, i8* %BRANCH_TAKEN
  %2274 = icmp eq i8 %2273, 1
  %2275 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2276 = load i64, i64* %RBP
  br i1 %2274, label %block_400967, label %block_400955

block_400b46:                                     ; preds = %block_400afa, %block_400b21
  %MEMORY.11 = phi %struct.Memory* [ %2396, %block_400b21 ], [ %3111, %block_400afa ]
  %2277 = load i64, i64* %RAX
  %2278 = load i32, i32* %EAX
  %2279 = zext i32 %2278 to i64
  %2280 = load i64, i64* %PC
  %2281 = add i64 %2280, 2
  store i64 %2281, i64* %PC
  %2282 = xor i64 %2279, %2277
  %2283 = trunc i64 %2282 to i32
  %2284 = and i64 %2282, 4294967295
  store i64 %2284, i64* %RAX, align 8, !tbaa !2428
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2285, align 1, !tbaa !2432
  %2286 = and i32 %2283, 255
  %2287 = call i32 @llvm.ctpop.i32(i32 %2286) #17
  %2288 = trunc i32 %2287 to i8
  %2289 = and i8 %2288, 1
  %2290 = xor i8 %2289, 1
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2290, i8* %2291, align 1, !tbaa !2446
  %2292 = icmp eq i32 %2283, 0
  %2293 = zext i1 %2292 to i8
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2293, i8* %2294, align 1, !tbaa !2448
  %2295 = lshr i32 %2283, 31
  %2296 = trunc i32 %2295 to i8
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2296, i8* %2297, align 1, !tbaa !2449
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2298, align 1, !tbaa !2450
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2299, align 1, !tbaa !2447
  %2300 = load i64, i64* %RSP
  %2301 = load i64, i64* %PC
  %2302 = add i64 %2301, 7
  store i64 %2302, i64* %PC
  %2303 = add i64 192, %2300
  store i64 %2303, i64* %RSP, align 8, !tbaa !2428
  %2304 = icmp ult i64 %2303, %2300
  %2305 = icmp ult i64 %2303, 192
  %2306 = or i1 %2304, %2305
  %2307 = zext i1 %2306 to i8
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2307, i8* %2308, align 1, !tbaa !2432
  %2309 = trunc i64 %2303 to i32
  %2310 = and i32 %2309, 255
  %2311 = call i32 @llvm.ctpop.i32(i32 %2310) #17
  %2312 = trunc i32 %2311 to i8
  %2313 = and i8 %2312, 1
  %2314 = xor i8 %2313, 1
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2314, i8* %2315, align 1, !tbaa !2446
  %2316 = xor i64 192, %2300
  %2317 = xor i64 %2316, %2303
  %2318 = lshr i64 %2317, 4
  %2319 = trunc i64 %2318 to i8
  %2320 = and i8 %2319, 1
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2320, i8* %2321, align 1, !tbaa !2447
  %2322 = icmp eq i64 %2303, 0
  %2323 = zext i1 %2322 to i8
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2323, i8* %2324, align 1, !tbaa !2448
  %2325 = lshr i64 %2303, 63
  %2326 = trunc i64 %2325 to i8
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2326, i8* %2327, align 1, !tbaa !2449
  %2328 = lshr i64 %2300, 63
  %2329 = xor i64 %2325, %2328
  %2330 = add nuw nsw i64 %2329, %2325
  %2331 = icmp eq i64 %2330, 2
  %2332 = zext i1 %2331 to i8
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2332, i8* %2333, align 1, !tbaa !2450
  %2334 = load i64, i64* %PC
  %2335 = add i64 %2334, 1
  store i64 %2335, i64* %PC
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2337 = load i64, i64* %2336, align 8, !tbaa !2428
  %2338 = add i64 %2337, 8
  %2339 = inttoptr i64 %2337 to i64*
  %2340 = load i64, i64* %2339
  store i64 %2340, i64* %RBP, align 8, !tbaa !2428
  store i64 %2338, i64* %2336, align 8, !tbaa !2428
  %2341 = load i64, i64* %PC
  %2342 = add i64 %2341, 1
  store i64 %2342, i64* %PC
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2345 = load i64, i64* %2344, align 8, !tbaa !2428
  %2346 = inttoptr i64 %2345 to i64*
  %2347 = load i64, i64* %2346
  store i64 %2347, i64* %2343, align 8, !tbaa !2428
  %2348 = add i64 %2345, 8
  store i64 %2348, i64* %2344, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.11

block_4009a3:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit1
  %2349 = sub i64 %1313, 104
  %2350 = load i64, i64* %PC
  %2351 = add i64 %2350, 5
  store i64 %2351, i64* %PC
  %2352 = inttoptr i64 %2349 to double*
  %2353 = load double, double* %2352
  %2354 = bitcast i8* %1312 to double*
  store double %2353, double* %2354, align 1, !tbaa !2452
  %2355 = getelementptr inbounds i8, i8* %1312, i64 8
  %2356 = bitcast i8* %2355 to double*
  store double 0.000000e+00, double* %2356, align 1, !tbaa !2452
  %2357 = load i64, i64* %RBP
  %2358 = sub i64 %2357, 176
  %2359 = bitcast %union.vec128_t* %XMM0 to i8*
  %2360 = load i64, i64* %PC
  %2361 = add i64 %2360, 8
  store i64 %2361, i64* %PC
  %2362 = bitcast i8* %2359 to double*
  %2363 = load double, double* %2362, align 1
  %2364 = inttoptr i64 %2358 to double*
  store double %2363, double* %2364
  br label %block_4009b0

block_400b21:                                     ; preds = %block_400af0
  store i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 183), i64* %RSI, align 8, !tbaa !2428
  %2365 = load i64, i64* %PC
  %2366 = add i64 %2365, 8
  store i64 %2366, i64* %PC
  %2367 = load i64, i64* @stderr
  store i64 %2367, i64* %RDI, align 8, !tbaa !2428
  %2368 = load i64, i64* %RBP
  %2369 = sub i64 %2368, 28
  %2370 = load i64, i64* %PC
  %2371 = add i64 %2370, 3
  store i64 %2371, i64* %PC
  %2372 = inttoptr i64 %2369 to i32*
  %2373 = load i32, i32* %2372
  %2374 = zext i32 %2373 to i64
  store i64 %2374, i64* %RDX, align 8, !tbaa !2428
  %2375 = load i64, i64* %RBP
  %2376 = sub i64 %2375, 24
  %2377 = load i64, i64* %PC
  %2378 = add i64 %2377, 3
  store i64 %2378, i64* %PC
  %2379 = inttoptr i64 %2376 to i32*
  %2380 = load i32, i32* %2379
  %2381 = zext i32 %2380 to i64
  store i64 %2381, i64* %RCX, align 8, !tbaa !2428
  %2382 = load i64, i64* %PC
  %2383 = add i64 %2382, 2
  store i64 %2383, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %2384 = load i64, i64* %PC
  %2385 = sub i64 %2384, 1483
  %2386 = load i64, i64* %PC
  %2387 = add i64 %2386, 5
  %2388 = load i64, i64* %PC
  %2389 = add i64 %2388, 5
  store i64 %2389, i64* %PC
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2391 = load i64, i64* %2390, align 8, !tbaa !2428
  %2392 = add i64 %2391, -8
  %2393 = inttoptr i64 %2392 to i64*
  store i64 %2387, i64* %2393
  store i64 %2392, i64* %2390, align 8, !tbaa !2428
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2385, i64* %2394, align 8, !tbaa !2428
  %2395 = load i64, i64* %PC
  %2396 = call %struct.Memory* @ext_400570_fprintf(%struct.State* %0, i64 %2395, %struct.Memory* %MEMORY.4)
  %2397 = load i64, i64* %RBP
  %2398 = sub i64 %2397, 192
  %2399 = load i32, i32* %EAX
  %2400 = zext i32 %2399 to i64
  %2401 = load i64, i64* %PC
  %2402 = add i64 %2401, 6
  store i64 %2402, i64* %PC
  %2403 = inttoptr i64 %2398 to i32*
  store i32 %2399, i32* %2403
  br label %block_400b46

block_40076c:                                     ; preds = %block_400760
  %2404 = load i64, i64* %RBP
  %2405 = sub i64 %2404, 8
  %2406 = load i64, i64* %PC
  %2407 = add i64 %2406, 3
  store i64 %2407, i64* %PC
  %2408 = inttoptr i64 %2405 to i32*
  %2409 = load i32, i32* %2408
  %2410 = zext i32 %2409 to i64
  store i64 %2410, i64* %RAX, align 8, !tbaa !2428
  %2411 = load i64, i64* %RAX
  %2412 = load i64, i64* %PC
  %2413 = add i64 %2412, 3
  store i64 %2413, i64* %PC
  %2414 = and i64 15, %2411
  %2415 = trunc i64 %2414 to i32
  store i64 %2414, i64* %RAX, align 8, !tbaa !2428
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2416, align 1, !tbaa !2432
  %2417 = and i32 %2415, 255
  %2418 = call i32 @llvm.ctpop.i32(i32 %2417) #17
  %2419 = trunc i32 %2418 to i8
  %2420 = and i8 %2419, 1
  %2421 = xor i8 %2420, 1
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2421, i8* %2422, align 1, !tbaa !2446
  %2423 = icmp eq i32 %2415, 0
  %2424 = zext i1 %2423 to i8
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2424, i8* %2425, align 1, !tbaa !2448
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2426, align 1, !tbaa !2449
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2427, align 1, !tbaa !2450
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2428, align 1, !tbaa !2447
  %2429 = load i32, i32* %EAX
  %2430 = zext i32 %2429 to i64
  %2431 = load i64, i64* %PC
  %2432 = add i64 %2431, 3
  store i64 %2432, i64* %PC
  %2433 = sub i32 %2429, 8
  %2434 = icmp ult i32 %2429, 8
  %2435 = zext i1 %2434 to i8
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2435, i8* %2436, align 1, !tbaa !2432
  %2437 = and i32 %2433, 255
  %2438 = call i32 @llvm.ctpop.i32(i32 %2437) #17
  %2439 = trunc i32 %2438 to i8
  %2440 = and i8 %2439, 1
  %2441 = xor i8 %2440, 1
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2441, i8* %2442, align 1, !tbaa !2446
  %2443 = xor i64 8, %2430
  %2444 = trunc i64 %2443 to i32
  %2445 = xor i32 %2444, %2433
  %2446 = lshr i32 %2445, 4
  %2447 = trunc i32 %2446 to i8
  %2448 = and i8 %2447, 1
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2448, i8* %2449, align 1, !tbaa !2447
  %2450 = icmp eq i32 %2433, 0
  %2451 = zext i1 %2450 to i8
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2451, i8* %2452, align 1, !tbaa !2448
  %2453 = lshr i32 %2433, 31
  %2454 = trunc i32 %2453 to i8
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2454, i8* %2455, align 1, !tbaa !2449
  %2456 = lshr i32 %2429, 31
  %2457 = xor i32 %2453, %2456
  %2458 = add nuw nsw i32 %2457, %2456
  %2459 = icmp eq i32 %2458, 2
  %2460 = zext i1 %2459 to i8
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2460, i8* %2461, align 1, !tbaa !2450
  %2462 = load i64, i64* %PC
  %2463 = add i64 %2462, 21
  %2464 = load i64, i64* %PC
  %2465 = add i64 %2464, 6
  %2466 = load i64, i64* %PC
  %2467 = add i64 %2466, 6
  store i64 %2467, i64* %PC
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2469 = load i8, i8* %2468, align 1, !tbaa !2448
  store i8 %2469, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2471 = icmp ne i8 %2469, 0
  %2472 = select i1 %2471, i64 %2463, i64 %2465
  store i64 %2472, i64* %2470, align 8, !tbaa !2428
  %2473 = load i8, i8* %BRANCH_TAKEN
  %2474 = icmp eq i8 %2473, 1
  br i1 %2474, label %block_40078a, label %block_40077b

block_400a1d:                                     ; preds = %block_400a11
  %2475 = add i64 %3086, 2
  store i64 %2475, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %2476 = load i64, i64* %RBP
  %2477 = sub i64 %2476, 40
  %2478 = load i64, i64* %PC
  %2479 = add i64 %2478, 4
  store i64 %2479, i64* %PC
  %2480 = inttoptr i64 %2477 to i64*
  %2481 = load i64, i64* %2480
  store i64 %2481, i64* %RCX, align 8, !tbaa !2428
  %2482 = load i64, i64* %RBP
  %2483 = sub i64 %2482, 32
  %2484 = load i64, i64* %PC
  %2485 = add i64 %2484, 3
  store i64 %2485, i64* %PC
  %2486 = inttoptr i64 %2483 to i32*
  %2487 = load i32, i32* %2486
  %2488 = zext i32 %2487 to i64
  store i64 %2488, i64* %RDX, align 8, !tbaa !2428
  %2489 = load i64, i64* %RDX
  %2490 = load i64, i64* %RBP
  %2491 = sub i64 %2490, 8
  %2492 = load i64, i64* %PC
  %2493 = add i64 %2492, 4
  store i64 %2493, i64* %PC
  %2494 = inttoptr i64 %2491 to i32*
  %2495 = load i32, i32* %2494
  %2496 = shl i64 %2489, 32
  %2497 = ashr exact i64 %2496, 32
  %2498 = sext i32 %2495 to i64
  %2499 = mul nsw i64 %2498, %2497
  %2500 = trunc i64 %2499 to i32
  %2501 = and i64 %2499, 4294967295
  store i64 %2501, i64* %RDX, align 8, !tbaa !2428
  %2502 = shl i64 %2499, 32
  %2503 = ashr exact i64 %2502, 32
  %2504 = icmp ne i64 %2503, %2499
  %2505 = zext i1 %2504 to i8
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2505, i8* %2506, align 1, !tbaa !2432
  %2507 = and i32 %2500, 255
  %2508 = call i32 @llvm.ctpop.i32(i32 %2507) #17
  %2509 = trunc i32 %2508 to i8
  %2510 = and i8 %2509, 1
  %2511 = xor i8 %2510, 1
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2511, i8* %2512, align 1, !tbaa !2446
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2513, align 1, !tbaa !2447
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2514, align 1, !tbaa !2448
  %2515 = lshr i32 %2500, 31
  %2516 = trunc i32 %2515 to i8
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2516, i8* %2517, align 1, !tbaa !2449
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2505, i8* %2518, align 1, !tbaa !2450
  %2519 = load i64, i64* %RDX
  %2520 = load i64, i64* %RBP
  %2521 = sub i64 %2520, 12
  %2522 = load i64, i64* %PC
  %2523 = add i64 %2522, 3
  store i64 %2523, i64* %PC
  %2524 = trunc i64 %2519 to i32
  %2525 = inttoptr i64 %2521 to i32*
  %2526 = load i32, i32* %2525
  %2527 = add i32 %2526, %2524
  %2528 = zext i32 %2527 to i64
  store i64 %2528, i64* %RDX, align 8, !tbaa !2428
  %2529 = icmp ult i32 %2527, %2524
  %2530 = icmp ult i32 %2527, %2526
  %2531 = or i1 %2529, %2530
  %2532 = zext i1 %2531 to i8
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2532, i8* %2533, align 1, !tbaa !2432
  %2534 = and i32 %2527, 255
  %2535 = call i32 @llvm.ctpop.i32(i32 %2534) #17
  %2536 = trunc i32 %2535 to i8
  %2537 = and i8 %2536, 1
  %2538 = xor i8 %2537, 1
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2538, i8* %2539, align 1, !tbaa !2446
  %2540 = xor i32 %2526, %2524
  %2541 = xor i32 %2540, %2527
  %2542 = lshr i32 %2541, 4
  %2543 = trunc i32 %2542 to i8
  %2544 = and i8 %2543, 1
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2544, i8* %2545, align 1, !tbaa !2447
  %2546 = icmp eq i32 %2527, 0
  %2547 = zext i1 %2546 to i8
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2547, i8* %2548, align 1, !tbaa !2448
  %2549 = lshr i32 %2527, 31
  %2550 = trunc i32 %2549 to i8
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2550, i8* %2551, align 1, !tbaa !2449
  %2552 = lshr i32 %2524, 31
  %2553 = lshr i32 %2526, 31
  %2554 = xor i32 %2549, %2552
  %2555 = xor i32 %2549, %2553
  %2556 = add nuw nsw i32 %2554, %2555
  %2557 = icmp eq i32 %2556, 2
  %2558 = zext i1 %2557 to i8
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2558, i8* %2559, align 1, !tbaa !2450
  %2560 = load i64, i64* %RDX
  %2561 = load i64, i64* %PC
  %2562 = add i64 %2561, 3
  store i64 %2562, i64* %PC
  %2563 = trunc i64 %2560 to i32
  %2564 = shl i32 %2563, 1
  %2565 = icmp slt i32 %2563, 0
  %2566 = icmp slt i32 %2564, 0
  %2567 = xor i1 %2565, %2566
  %2568 = zext i32 %2564 to i64
  store i64 %2568, i64* %RDX, align 8, !tbaa !2428
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2570 = zext i1 %2565 to i8
  store i8 %2570, i8* %2569, align 1, !tbaa !2451
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2572 = and i32 %2564, 254
  %2573 = call i32 @llvm.ctpop.i32(i32 %2572) #17
  %2574 = trunc i32 %2573 to i8
  %2575 = and i8 %2574, 1
  %2576 = xor i8 %2575, 1
  store i8 %2576, i8* %2571, align 1, !tbaa !2451
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2577, align 1, !tbaa !2451
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2579 = icmp eq i32 %2564, 0
  %2580 = zext i1 %2579 to i8
  store i8 %2580, i8* %2578, align 1, !tbaa !2451
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2582 = lshr i32 %2564, 31
  %2583 = trunc i32 %2582 to i8
  store i8 %2583, i8* %2581, align 1, !tbaa !2451
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2585 = zext i1 %2567 to i8
  store i8 %2585, i8* %2584, align 1, !tbaa !2451
  %2586 = load i64, i64* %RDX
  %2587 = load i64, i64* %PC
  %2588 = add i64 %2587, 3
  store i64 %2588, i64* %PC
  %2589 = trunc i64 %2586 to i32
  %2590 = add i32 1, %2589
  %2591 = zext i32 %2590 to i64
  store i64 %2591, i64* %RDX, align 8, !tbaa !2428
  %2592 = icmp ult i32 %2590, %2589
  %2593 = icmp ult i32 %2590, 1
  %2594 = or i1 %2592, %2593
  %2595 = zext i1 %2594 to i8
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2595, i8* %2596, align 1, !tbaa !2432
  %2597 = and i32 %2590, 255
  %2598 = call i32 @llvm.ctpop.i32(i32 %2597) #17
  %2599 = trunc i32 %2598 to i8
  %2600 = and i8 %2599, 1
  %2601 = xor i8 %2600, 1
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2601, i8* %2602, align 1, !tbaa !2446
  %2603 = xor i64 1, %2586
  %2604 = trunc i64 %2603 to i32
  %2605 = xor i32 %2604, %2590
  %2606 = lshr i32 %2605, 4
  %2607 = trunc i32 %2606 to i8
  %2608 = and i8 %2607, 1
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2608, i8* %2609, align 1, !tbaa !2447
  %2610 = icmp eq i32 %2590, 0
  %2611 = zext i1 %2610 to i8
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2611, i8* %2612, align 1, !tbaa !2448
  %2613 = lshr i32 %2590, 31
  %2614 = trunc i32 %2613 to i8
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2614, i8* %2615, align 1, !tbaa !2449
  %2616 = lshr i32 %2589, 31
  %2617 = xor i32 %2613, %2616
  %2618 = add nuw nsw i32 %2617, %2613
  %2619 = icmp eq i32 %2618, 2
  %2620 = zext i1 %2619 to i8
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2620, i8* %2621, align 1, !tbaa !2450
  %2622 = load i32, i32* %EDX
  %2623 = zext i32 %2622 to i64
  %2624 = load i64, i64* %PC
  %2625 = add i64 %2624, 3
  store i64 %2625, i64* %PC
  %2626 = shl i64 %2623, 32
  %2627 = ashr exact i64 %2626, 32
  store i64 %2627, i64* %RSI, align 8, !tbaa !2428
  %2628 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2629 = load i64, i64* %RCX
  %2630 = load i64, i64* %RSI
  %2631 = mul i64 %2630, 8
  %2632 = add i64 %2631, %2629
  %2633 = load i64, i64* %PC
  %2634 = add i64 %2633, 5
  store i64 %2634, i64* %PC
  %2635 = inttoptr i64 %2632 to double*
  %2636 = load double, double* %2635
  %2637 = bitcast i8* %2628 to double*
  store double %2636, double* %2637, align 1, !tbaa !2452
  %2638 = getelementptr inbounds i8, i8* %2628, i64 8
  %2639 = bitcast i8* %2638 to double*
  store double 0.000000e+00, double* %2639, align 1, !tbaa !2452
  %2640 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2641 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2642 = load i64, i64* %RBP
  %2643 = sub i64 %2642, 64
  %2644 = load i64, i64* %PC
  %2645 = add i64 %2644, 5
  store i64 %2645, i64* %PC
  %2646 = bitcast i8* %2641 to double*
  %2647 = load double, double* %2646, align 1
  %2648 = getelementptr inbounds i8, i8* %2641, i64 8
  %2649 = bitcast i8* %2648 to i64*
  %2650 = load i64, i64* %2649, align 1
  %2651 = inttoptr i64 %2643 to double*
  %2652 = load double, double* %2651
  %2653 = fsub double %2647, %2652
  %2654 = bitcast i8* %2640 to double*
  store double %2653, double* %2654, align 1, !tbaa !2452
  %2655 = getelementptr inbounds i8, i8* %2640, i64 8
  %2656 = bitcast i8* %2655 to i64*
  store i64 %2650, i64* %2656, align 1, !tbaa !2452
  %2657 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2658 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2659 = load i64, i64* %RBP
  %2660 = sub i64 %2659, 72
  %2661 = load i64, i64* %PC
  %2662 = add i64 %2661, 5
  store i64 %2662, i64* %PC
  %2663 = bitcast i8* %2658 to double*
  %2664 = load double, double* %2663, align 1
  %2665 = getelementptr inbounds i8, i8* %2658, i64 8
  %2666 = bitcast i8* %2665 to i64*
  %2667 = load i64, i64* %2666, align 1
  %2668 = inttoptr i64 %2660 to double*
  %2669 = load double, double* %2668
  %2670 = fmul double %2664, %2669
  %2671 = bitcast i8* %2657 to double*
  store double %2670, double* %2671, align 1, !tbaa !2452
  %2672 = getelementptr inbounds i8, i8* %2657, i64 8
  %2673 = bitcast i8* %2672 to i64*
  store i64 %2667, i64* %2673, align 1, !tbaa !2452
  %2674 = bitcast %union.vec128_t* %XMM0 to i8*
  %2675 = load i64, i64* %PC
  %2676 = add i64 %2675, 4
  store i64 %2676, i64* %PC
  %2677 = bitcast i8* %2674 to double*
  %2678 = load double, double* %2677, align 1
  %2679 = call double @llvm.trunc.f64(double %2678) #17
  %2680 = call double @llvm.fabs.f64(double %2679) #17
  %2681 = fcmp ogt double %2680, 0x41DFFFFFFFC00000
  %2682 = fptosi double %2679 to i32
  %2683 = zext i32 %2682 to i64
  %2684 = select i1 %2681, i64 2147483648, i64 %2683
  store i64 %2684, i64* %RDX, align 8, !tbaa !2428
  %2685 = load i64, i64* %RBP
  %2686 = sub i64 %2685, 16
  %2687 = load i32, i32* %EDX
  %2688 = zext i32 %2687 to i64
  %2689 = load i64, i64* %PC
  %2690 = add i64 %2689, 3
  store i64 %2690, i64* %PC
  %2691 = inttoptr i64 %2686 to i32*
  store i32 %2687, i32* %2691
  %2692 = load i64, i64* %RBP
  %2693 = sub i64 %2692, 8
  %2694 = load i64, i64* %PC
  %2695 = add i64 %2694, 3
  store i64 %2695, i64* %PC
  %2696 = inttoptr i64 %2693 to i32*
  %2697 = load i32, i32* %2696
  %2698 = zext i32 %2697 to i64
  store i64 %2698, i64* %RDX, align 8, !tbaa !2428
  %2699 = load i64, i64* %RDX
  %2700 = load i64, i64* %PC
  %2701 = add i64 %2700, 3
  store i64 %2701, i64* %PC
  %2702 = and i64 15, %2699
  %2703 = trunc i64 %2702 to i32
  store i64 %2702, i64* %RDX, align 8, !tbaa !2428
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2704, align 1, !tbaa !2432
  %2705 = and i32 %2703, 255
  %2706 = call i32 @llvm.ctpop.i32(i32 %2705) #17
  %2707 = trunc i32 %2706 to i8
  %2708 = and i8 %2707, 1
  %2709 = xor i8 %2708, 1
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2709, i8* %2710, align 1, !tbaa !2446
  %2711 = icmp eq i32 %2703, 0
  %2712 = zext i1 %2711 to i8
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2712, i8* %2713, align 1, !tbaa !2448
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2714, align 1, !tbaa !2449
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2715, align 1, !tbaa !2450
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2716, align 1, !tbaa !2447
  %2717 = load i32, i32* %EDX
  %2718 = zext i32 %2717 to i64
  %2719 = load i64, i64* %PC
  %2720 = add i64 %2719, 3
  store i64 %2720, i64* %PC
  %2721 = sub i32 %2717, 8
  %2722 = icmp ult i32 %2717, 8
  %2723 = zext i1 %2722 to i8
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2723, i8* %2724, align 1, !tbaa !2432
  %2725 = and i32 %2721, 255
  %2726 = call i32 @llvm.ctpop.i32(i32 %2725) #17
  %2727 = trunc i32 %2726 to i8
  %2728 = and i8 %2727, 1
  %2729 = xor i8 %2728, 1
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2729, i8* %2730, align 1, !tbaa !2446
  %2731 = xor i64 8, %2718
  %2732 = trunc i64 %2731 to i32
  %2733 = xor i32 %2732, %2721
  %2734 = lshr i32 %2733, 4
  %2735 = trunc i32 %2734 to i8
  %2736 = and i8 %2735, 1
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2736, i8* %2737, align 1, !tbaa !2447
  %2738 = icmp eq i32 %2721, 0
  %2739 = zext i1 %2738 to i8
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2739, i8* %2740, align 1, !tbaa !2448
  %2741 = lshr i32 %2721, 31
  %2742 = trunc i32 %2741 to i8
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2742, i8* %2743, align 1, !tbaa !2449
  %2744 = lshr i32 %2717, 31
  %2745 = xor i32 %2741, %2744
  %2746 = add nuw nsw i32 %2745, %2744
  %2747 = icmp eq i32 %2746, 2
  %2748 = zext i1 %2747 to i8
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2748, i8* %2749, align 1, !tbaa !2450
  %2750 = load i64, i64* %RBP
  %2751 = sub i64 %2750, 177
  %2752 = load i8, i8* %AL
  %2753 = zext i8 %2752 to i64
  %2754 = load i64, i64* %PC
  %2755 = add i64 %2754, 6
  store i64 %2755, i64* %PC
  %2756 = inttoptr i64 %2751 to i8*
  store i8 %2752, i8* %2756
  %2757 = load i64, i64* %PC
  %2758 = add i64 %2757, 24
  %2759 = load i64, i64* %PC
  %2760 = add i64 %2759, 6
  %2761 = load i64, i64* %PC
  %2762 = add i64 %2761, 6
  store i64 %2762, i64* %PC
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2764 = load i8, i8* %2763, align 1, !tbaa !2448
  store i8 %2764, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2766 = icmp ne i8 %2764, 0
  %2767 = select i1 %2766, i64 %2758, i64 %2760
  store i64 %2767, i64* %2765, align 8, !tbaa !2428
  %2768 = load i8, i8* %BRANCH_TAKEN
  %2769 = icmp eq i8 %2768, 1
  br i1 %2769, label %block_400a73, label %block_400a61

block_400915:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %2770 = sub i64 %1676, 112
  %2771 = load i64, i64* %PC
  %2772 = add i64 %2771, 5
  store i64 %2772, i64* %PC
  %2773 = inttoptr i64 %2770 to double*
  %2774 = load double, double* %2773
  %2775 = bitcast i8* %1675 to double*
  store double %2774, double* %2775, align 1, !tbaa !2452
  %2776 = getelementptr inbounds i8, i8* %1675, i64 8
  %2777 = bitcast i8* %2776 to double*
  store double 0.000000e+00, double* %2777, align 1, !tbaa !2452
  %2778 = load i64, i64* %RBP
  %2779 = sub i64 %2778, 160
  %2780 = bitcast %union.vec128_t* %XMM0 to i8*
  %2781 = load i64, i64* %PC
  %2782 = add i64 %2781, 8
  store i64 %2782, i64* %PC
  %2783 = bitcast i8* %2780 to double*
  %2784 = load double, double* %2783, align 1
  %2785 = inttoptr i64 %2779 to double*
  store double %2784, double* %2785
  %2786 = load i64, i64* %PC
  %2787 = add i64 %2786, 18
  %2788 = load i64, i64* %PC
  %2789 = add i64 %2788, 5
  store i64 %2789, i64* %PC
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2787, i64* %2790, align 8, !tbaa !2428
  br label %block_400934

block_4007ae:                                     ; preds = %block_40078a, %block_40077b
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.8, %block_40078a ], [ %MEMORY.13, %block_40077b ]
  %2791 = load i64, i64* %PC
  %2792 = add i64 %2791, 5
  %2793 = load i64, i64* %PC
  %2794 = add i64 %2793, 5
  store i64 %2794, i64* %PC
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2792, i64* %2795, align 8, !tbaa !2428
  %2796 = load i64, i64* %RBP
  %2797 = sub i64 %2796, 12
  %2798 = load i64, i64* %PC
  %2799 = add i64 %2798, 3
  store i64 %2799, i64* %PC
  %2800 = inttoptr i64 %2797 to i32*
  %2801 = load i32, i32* %2800
  %2802 = zext i32 %2801 to i64
  store i64 %2802, i64* %RAX, align 8, !tbaa !2428
  %2803 = load i64, i64* %RAX
  %2804 = load i64, i64* %PC
  %2805 = add i64 %2804, 3
  store i64 %2805, i64* %PC
  %2806 = trunc i64 %2803 to i32
  %2807 = add i32 1, %2806
  %2808 = zext i32 %2807 to i64
  store i64 %2808, i64* %RAX, align 8, !tbaa !2428
  %2809 = icmp ult i32 %2807, %2806
  %2810 = icmp ult i32 %2807, 1
  %2811 = or i1 %2809, %2810
  %2812 = zext i1 %2811 to i8
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2812, i8* %2813, align 1, !tbaa !2432
  %2814 = and i32 %2807, 255
  %2815 = call i32 @llvm.ctpop.i32(i32 %2814) #17
  %2816 = trunc i32 %2815 to i8
  %2817 = and i8 %2816, 1
  %2818 = xor i8 %2817, 1
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2818, i8* %2819, align 1, !tbaa !2446
  %2820 = xor i64 1, %2803
  %2821 = trunc i64 %2820 to i32
  %2822 = xor i32 %2821, %2807
  %2823 = lshr i32 %2822, 4
  %2824 = trunc i32 %2823 to i8
  %2825 = and i8 %2824, 1
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2825, i8* %2826, align 1, !tbaa !2447
  %2827 = icmp eq i32 %2807, 0
  %2828 = zext i1 %2827 to i8
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2828, i8* %2829, align 1, !tbaa !2448
  %2830 = lshr i32 %2807, 31
  %2831 = trunc i32 %2830 to i8
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2831, i8* %2832, align 1, !tbaa !2449
  %2833 = lshr i32 %2806, 31
  %2834 = xor i32 %2830, %2833
  %2835 = add nuw nsw i32 %2834, %2830
  %2836 = icmp eq i32 %2835, 2
  %2837 = zext i1 %2836 to i8
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2837, i8* %2838, align 1, !tbaa !2450
  %2839 = load i64, i64* %RBP
  %2840 = sub i64 %2839, 12
  %2841 = load i32, i32* %EAX
  %2842 = zext i32 %2841 to i64
  %2843 = load i64, i64* %PC
  %2844 = add i64 %2843, 3
  store i64 %2844, i64* %PC
  %2845 = inttoptr i64 %2840 to i32*
  store i32 %2841, i32* %2845
  %2846 = load i64, i64* %PC
  %2847 = sub i64 %2846, 92
  %2848 = load i64, i64* %PC
  %2849 = add i64 %2848, 5
  store i64 %2849, i64* %PC
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2847, i64* %2850, align 8, !tbaa !2428
  br label %block_400760

block_400a94:                                     ; preds = %block_400a73
  %2851 = load i64, i64* %PC
  %2852 = add i64 %2851, 10
  store i64 %2852, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 100), i64* %RSI, align 8, !tbaa !2428
  %2853 = load i64, i64* %RBP
  %2854 = sub i64 %2853, 24
  %2855 = load i64, i64* %PC
  %2856 = add i64 %2855, 3
  store i64 %2856, i64* %PC
  %2857 = inttoptr i64 %2854 to i32*
  %2858 = load i32, i32* %2857
  %2859 = zext i32 %2858 to i64
  store i64 %2859, i64* %RAX, align 8, !tbaa !2428
  %2860 = load i64, i64* %RAX
  %2861 = load i64, i64* %PC
  %2862 = add i64 %2861, 3
  store i64 %2862, i64* %PC
  %2863 = trunc i64 %2860 to i32
  %2864 = add i32 1, %2863
  %2865 = zext i32 %2864 to i64
  store i64 %2865, i64* %RAX, align 8, !tbaa !2428
  %2866 = icmp ult i32 %2864, %2863
  %2867 = icmp ult i32 %2864, 1
  %2868 = or i1 %2866, %2867
  %2869 = zext i1 %2868 to i8
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2869, i8* %2870, align 1, !tbaa !2432
  %2871 = and i32 %2864, 255
  %2872 = call i32 @llvm.ctpop.i32(i32 %2871) #17
  %2873 = trunc i32 %2872 to i8
  %2874 = and i8 %2873, 1
  %2875 = xor i8 %2874, 1
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2875, i8* %2876, align 1, !tbaa !2446
  %2877 = xor i64 1, %2860
  %2878 = trunc i64 %2877 to i32
  %2879 = xor i32 %2878, %2864
  %2880 = lshr i32 %2879, 4
  %2881 = trunc i32 %2880 to i8
  %2882 = and i8 %2881, 1
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2882, i8* %2883, align 1, !tbaa !2447
  %2884 = icmp eq i32 %2864, 0
  %2885 = zext i1 %2884 to i8
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2885, i8* %2886, align 1, !tbaa !2448
  %2887 = lshr i32 %2864, 31
  %2888 = trunc i32 %2887 to i8
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2888, i8* %2889, align 1, !tbaa !2449
  %2890 = lshr i32 %2863, 31
  %2891 = xor i32 %2887, %2890
  %2892 = add nuw nsw i32 %2891, %2887
  %2893 = icmp eq i32 %2892, 2
  %2894 = zext i1 %2893 to i8
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2894, i8* %2895, align 1, !tbaa !2450
  %2896 = load i64, i64* %RBP
  %2897 = sub i64 %2896, 24
  %2898 = load i32, i32* %EAX
  %2899 = zext i32 %2898 to i64
  %2900 = load i64, i64* %PC
  %2901 = add i64 %2900, 3
  store i64 %2901, i64* %PC
  %2902 = inttoptr i64 %2897 to i32*
  store i32 %2898, i32* %2902
  %2903 = load i64, i64* %PC
  %2904 = add i64 %2903, 8
  store i64 %2904, i64* %PC
  %2905 = load i64, i64* @stderr
  store i64 %2905, i64* %RDI, align 8, !tbaa !2428
  %2906 = load i64, i64* %RBP
  %2907 = sub i64 %2906, 8
  %2908 = load i64, i64* %PC
  %2909 = add i64 %2908, 3
  store i64 %2909, i64* %PC
  %2910 = inttoptr i64 %2907 to i32*
  %2911 = load i32, i32* %2910
  %2912 = zext i32 %2911 to i64
  store i64 %2912, i64* %RDX, align 8, !tbaa !2428
  %2913 = load i64, i64* %RBP
  %2914 = sub i64 %2913, 12
  %2915 = load i64, i64* %PC
  %2916 = add i64 %2915, 3
  store i64 %2916, i64* %PC
  %2917 = inttoptr i64 %2914 to i32*
  %2918 = load i32, i32* %2917
  %2919 = zext i32 %2918 to i64
  store i64 %2919, i64* %RCX, align 8, !tbaa !2428
  %2920 = bitcast i32* %R8D to i64*
  %2921 = load i64, i64* %RBP
  %2922 = sub i64 %2921, 20
  %2923 = load i64, i64* %PC
  %2924 = add i64 %2923, 4
  store i64 %2924, i64* %PC
  %2925 = inttoptr i64 %2922 to i32*
  %2926 = load i32, i32* %2925
  %2927 = zext i32 %2926 to i64
  store i64 %2927, i64* %2920, align 8, !tbaa !2428
  %2928 = bitcast i32* %R9D to i64*
  %2929 = load i64, i64* %RBP
  %2930 = sub i64 %2929, 16
  %2931 = load i64, i64* %PC
  %2932 = add i64 %2931, 4
  store i64 %2932, i64* %PC
  %2933 = inttoptr i64 %2930 to i32*
  %2934 = load i32, i32* %2933
  %2935 = zext i32 %2934 to i64
  store i64 %2935, i64* %2928, align 8, !tbaa !2428
  %2936 = load i64, i64* %PC
  %2937 = add i64 %2936, 2
  store i64 %2937, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %2938 = load i64, i64* %PC
  %2939 = sub i64 %2938, 1359
  %2940 = load i64, i64* %PC
  %2941 = add i64 %2940, 5
  %2942 = load i64, i64* %PC
  %2943 = add i64 %2942, 5
  store i64 %2943, i64* %PC
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2945 = load i64, i64* %2944, align 8, !tbaa !2428
  %2946 = add i64 %2945, -8
  %2947 = inttoptr i64 %2946 to i64*
  store i64 %2941, i64* %2947
  store i64 %2946, i64* %2944, align 8, !tbaa !2428
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2939, i64* %2948, align 8, !tbaa !2428
  %2949 = load i64, i64* %PC
  %2950 = call %struct.Memory* @ext_400570_fprintf(%struct.State* %0, i64 %2949, %struct.Memory* %MEMORY.1)
  %2951 = load i64, i64* %RBP
  %2952 = sub i64 %2951, 184
  %2953 = load i32, i32* %EAX
  %2954 = zext i32 %2953 to i64
  %2955 = load i64, i64* %PC
  %2956 = add i64 %2955, 6
  store i64 %2956, i64* %PC
  %2957 = inttoptr i64 %2952 to i32*
  store i32 %2953, i32* %2957
  br label %block_400aca

block_400760:                                     ; preds = %block_400759, %block_4007ae
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.5, %block_400759 ], [ %MEMORY.12, %block_4007ae ]
  %2958 = load i64, i64* %RBP
  %2959 = sub i64 %2958, 12
  %2960 = load i64, i64* %PC
  %2961 = add i64 %2960, 3
  store i64 %2961, i64* %PC
  %2962 = inttoptr i64 %2959 to i32*
  %2963 = load i32, i32* %2962
  %2964 = zext i32 %2963 to i64
  store i64 %2964, i64* %RAX, align 8, !tbaa !2428
  %2965 = load i32, i32* %EAX
  %2966 = zext i32 %2965 to i64
  %2967 = load i64, i64* %RBP
  %2968 = sub i64 %2967, 32
  %2969 = load i64, i64* %PC
  %2970 = add i64 %2969, 3
  store i64 %2970, i64* %PC
  %2971 = inttoptr i64 %2968 to i32*
  %2972 = load i32, i32* %2971
  %2973 = sub i32 %2965, %2972
  %2974 = icmp ult i32 %2965, %2972
  %2975 = zext i1 %2974 to i8
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2975, i8* %2976, align 1, !tbaa !2432
  %2977 = and i32 %2973, 255
  %2978 = call i32 @llvm.ctpop.i32(i32 %2977) #17
  %2979 = trunc i32 %2978 to i8
  %2980 = and i8 %2979, 1
  %2981 = xor i8 %2980, 1
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2981, i8* %2982, align 1, !tbaa !2446
  %2983 = xor i32 %2972, %2965
  %2984 = xor i32 %2983, %2973
  %2985 = lshr i32 %2984, 4
  %2986 = trunc i32 %2985 to i8
  %2987 = and i8 %2986, 1
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2987, i8* %2988, align 1, !tbaa !2447
  %2989 = icmp eq i32 %2973, 0
  %2990 = zext i1 %2989 to i8
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2990, i8* %2991, align 1, !tbaa !2448
  %2992 = lshr i32 %2973, 31
  %2993 = trunc i32 %2992 to i8
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2993, i8* %2994, align 1, !tbaa !2449
  %2995 = lshr i32 %2965, 31
  %2996 = lshr i32 %2972, 31
  %2997 = xor i32 %2996, %2995
  %2998 = xor i32 %2992, %2995
  %2999 = add nuw nsw i32 %2998, %2997
  %3000 = icmp eq i32 %2999, 2
  %3001 = zext i1 %3000 to i8
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3001, i8* %3002, align 1, !tbaa !2450
  %3003 = load i64, i64* %PC
  %3004 = add i64 %3003, 91
  %3005 = load i64, i64* %PC
  %3006 = add i64 %3005, 6
  %3007 = load i64, i64* %PC
  %3008 = add i64 %3007, 6
  store i64 %3008, i64* %PC
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3010 = load i8, i8* %3009, align 1, !tbaa !2449
  %3011 = icmp ne i8 %3010, 0
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3013 = load i8, i8* %3012, align 1, !tbaa !2450
  %3014 = icmp ne i8 %3013, 0
  %3015 = xor i1 %3011, %3014
  %3016 = xor i1 %3015, true
  %3017 = zext i1 %3016 to i8
  store i8 %3017, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3019 = select i1 %3015, i64 %3006, i64 %3004
  store i64 %3019, i64* %3018, align 8, !tbaa !2428
  %3020 = load i8, i8* %BRANCH_TAKEN
  %3021 = icmp eq i8 %3020, 1
  br i1 %3021, label %block_4007c1, label %block_40076c

block_400a11:                                     ; preds = %block_400a0a, %block_400aca
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.4, %block_400a0a ], [ %MEMORY.6, %block_400aca ]
  %3022 = load i64, i64* %RBP
  %3023 = sub i64 %3022, 12
  %3024 = load i64, i64* %PC
  %3025 = add i64 %3024, 3
  store i64 %3025, i64* %PC
  %3026 = inttoptr i64 %3023 to i32*
  %3027 = load i32, i32* %3026
  %3028 = zext i32 %3027 to i64
  store i64 %3028, i64* %RAX, align 8, !tbaa !2428
  %3029 = load i32, i32* %EAX
  %3030 = zext i32 %3029 to i64
  %3031 = load i64, i64* %RBP
  %3032 = sub i64 %3031, 32
  %3033 = load i64, i64* %PC
  %3034 = add i64 %3033, 3
  store i64 %3034, i64* %PC
  %3035 = inttoptr i64 %3032 to i32*
  %3036 = load i32, i32* %3035
  %3037 = sub i32 %3029, %3036
  %3038 = icmp ult i32 %3029, %3036
  %3039 = zext i1 %3038 to i8
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3039, i8* %3040, align 1, !tbaa !2432
  %3041 = and i32 %3037, 255
  %3042 = call i32 @llvm.ctpop.i32(i32 %3041) #17
  %3043 = trunc i32 %3042 to i8
  %3044 = and i8 %3043, 1
  %3045 = xor i8 %3044, 1
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3045, i8* %3046, align 1, !tbaa !2446
  %3047 = xor i32 %3036, %3029
  %3048 = xor i32 %3047, %3037
  %3049 = lshr i32 %3048, 4
  %3050 = trunc i32 %3049 to i8
  %3051 = and i8 %3050, 1
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3051, i8* %3052, align 1, !tbaa !2447
  %3053 = icmp eq i32 %3037, 0
  %3054 = zext i1 %3053 to i8
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3054, i8* %3055, align 1, !tbaa !2448
  %3056 = lshr i32 %3037, 31
  %3057 = trunc i32 %3056 to i8
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3057, i8* %3058, align 1, !tbaa !2449
  %3059 = lshr i32 %3029, 31
  %3060 = lshr i32 %3036, 31
  %3061 = xor i32 %3060, %3059
  %3062 = xor i32 %3056, %3059
  %3063 = add nuw nsw i32 %3062, %3061
  %3064 = icmp eq i32 %3063, 2
  %3065 = zext i1 %3064 to i8
  %3066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3065, i8* %3066, align 1, !tbaa !2450
  %3067 = load i64, i64* %PC
  %3068 = add i64 %3067, 198
  %3069 = load i64, i64* %PC
  %3070 = add i64 %3069, 6
  %3071 = load i64, i64* %PC
  %3072 = add i64 %3071, 6
  store i64 %3072, i64* %PC
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3074 = load i8, i8* %3073, align 1, !tbaa !2449
  %3075 = icmp ne i8 %3074, 0
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3077 = load i8, i8* %3076, align 1, !tbaa !2450
  %3078 = icmp ne i8 %3077, 0
  %3079 = xor i1 %3075, %3078
  %3080 = xor i1 %3079, true
  %3081 = zext i1 %3080 to i8
  store i8 %3081, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3083 = select i1 %3079, i64 %3070, i64 %3068
  store i64 %3083, i64* %3082, align 8, !tbaa !2428
  %3084 = load i8, i8* %BRANCH_TAKEN
  %3085 = icmp eq i8 %3084, 1
  %3086 = load i64, i64* %PC
  br i1 %3085, label %block_400add, label %block_400a1d

block_400afa:                                     ; preds = %block_400af0
  store i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 148), i64* %RSI, align 8, !tbaa !2428
  %3087 = load i64, i64* %PC
  %3088 = add i64 %3087, 8
  store i64 %3088, i64* %PC
  %3089 = load i64, i64* @stderr
  store i64 %3089, i64* %RDI, align 8, !tbaa !2428
  %3090 = load i64, i64* %RBP
  %3091 = sub i64 %3090, 28
  %3092 = load i64, i64* %PC
  %3093 = add i64 %3092, 3
  store i64 %3093, i64* %PC
  %3094 = inttoptr i64 %3091 to i32*
  %3095 = load i32, i32* %3094
  %3096 = zext i32 %3095 to i64
  store i64 %3096, i64* %RDX, align 8, !tbaa !2428
  %3097 = load i64, i64* %PC
  %3098 = add i64 %3097, 2
  store i64 %3098, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %3099 = load i64, i64* %PC
  %3100 = sub i64 %3099, 1441
  %3101 = load i64, i64* %PC
  %3102 = add i64 %3101, 5
  %3103 = load i64, i64* %PC
  %3104 = add i64 %3103, 5
  store i64 %3104, i64* %PC
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3106 = load i64, i64* %3105, align 8, !tbaa !2428
  %3107 = add i64 %3106, -8
  %3108 = inttoptr i64 %3107 to i64*
  store i64 %3102, i64* %3108
  store i64 %3107, i64* %3105, align 8, !tbaa !2428
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3100, i64* %3109, align 8, !tbaa !2428
  %3110 = load i64, i64* %PC
  %3111 = call %struct.Memory* @ext_400570_fprintf(%struct.State* %0, i64 %3110, %struct.Memory* %MEMORY.4)
  %3112 = load i64, i64* %RBP
  %3113 = sub i64 %3112, 188
  %3114 = load i32, i32* %EAX
  %3115 = zext i32 %3114 to i64
  %3116 = load i64, i64* %PC
  %3117 = add i64 %3116, 6
  store i64 %3117, i64* %PC
  %3118 = inttoptr i64 %3113 to i32*
  store i32 %3114, i32* %3118
  %3119 = load i64, i64* %PC
  %3120 = add i64 %3119, 42
  %3121 = load i64, i64* %PC
  %3122 = add i64 %3121, 5
  store i64 %3122, i64* %PC
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3120, i64* %3123, align 8, !tbaa !2428
  br label %block_400b46

block_40070b:                                     ; preds = %block_4006a0
  %3124 = load i64, i64* %PC
  %3125 = add i64 %3124, 10
  store i64 %3125, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 72), i64* %RSI, align 8, !tbaa !2428
  %3126 = load i64, i64* %PC
  %3127 = add i64 %3126, 8
  store i64 %3127, i64* %PC
  %3128 = load i64, i64* @stderr
  store i64 %3128, i64* %RDI, align 8, !tbaa !2428
  %3129 = load i64, i64* %PC
  %3130 = add i64 %3129, 2
  store i64 %3130, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %3131 = load i64, i64* %PC
  %3132 = sub i64 %3131, 431
  %3133 = load i64, i64* %PC
  %3134 = add i64 %3133, 5
  %3135 = load i64, i64* %PC
  %3136 = add i64 %3135, 5
  store i64 %3136, i64* %PC
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3138 = load i64, i64* %3137, align 8, !tbaa !2428
  %3139 = add i64 %3138, -8
  %3140 = inttoptr i64 %3139 to i64*
  store i64 %3134, i64* %3140
  store i64 %3139, i64* %3137, align 8, !tbaa !2428
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3132, i64* %3141, align 8, !tbaa !2428
  %3142 = load i64, i64* %PC
  %3143 = call %struct.Memory* @ext_400570_fprintf(%struct.State* %0, i64 %3142, %struct.Memory* %298)
  %3144 = load i64, i64* %PC
  %3145 = add i64 %3144, 5
  store i64 %3145, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %3146 = load i64, i64* %RBP
  %3147 = sub i64 %3146, 140
  %3148 = load i32, i32* %EAX
  %3149 = zext i32 %3148 to i64
  %3150 = load i64, i64* %PC
  %3151 = add i64 %3150, 6
  store i64 %3151, i64* %PC
  %3152 = inttoptr i64 %3147 to i32*
  store i32 %3148, i32* %3152
  %3153 = load i64, i64* %PC
  %3154 = sub i64 %3153, 399
  %3155 = load i64, i64* %PC
  %3156 = add i64 %3155, 5
  %3157 = load i64, i64* %PC
  %3158 = add i64 %3157, 5
  store i64 %3158, i64* %PC
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3160 = load i64, i64* %3159, align 8, !tbaa !2428
  %3161 = add i64 %3160, -8
  %3162 = inttoptr i64 %3161 to i64*
  store i64 %3156, i64* %3162
  store i64 %3161, i64* %3159, align 8, !tbaa !2428
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3154, i64* %3163, align 8, !tbaa !2428
  %3164 = load i64, i64* %PC
  %3165 = call %struct.Memory* @ext_6020d0_exit(%struct.State* %0, i64 %3164, %struct.Memory* %3143)
  %3166 = load i64, i64* %PC
  %3167 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %3166, %struct.Memory* %3165)
  ret %struct.Memory* %3167

block_400759:                                     ; preds = %block_40074d
  %3168 = sub i64 %1443, 12
  %3169 = load i64, i64* %PC
  %3170 = add i64 %3169, 7
  store i64 %3170, i64* %PC
  %3171 = inttoptr i64 %3168 to i32*
  store i32 0, i32* %3171
  br label %block_400760

block_400a0a:                                     ; preds = %block_4009fe
  %3172 = sub i64 %1378, 12
  %3173 = load i64, i64* %PC
  %3174 = add i64 %3173, 7
  store i64 %3174, i64* %PC
  %3175 = inttoptr i64 %3172 to i32*
  store i32 0, i32* %3175
  br label %block_400a11

block_400955:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %3176 = sub i64 %2276, 120
  %3177 = load i64, i64* %PC
  %3178 = add i64 %3177, 5
  store i64 %3178, i64* %PC
  %3179 = inttoptr i64 %3176 to double*
  %3180 = load double, double* %3179
  %3181 = bitcast i8* %2275 to double*
  store double %3180, double* %3181, align 1, !tbaa !2452
  %3182 = getelementptr inbounds i8, i8* %2275, i64 8
  %3183 = bitcast i8* %3182 to double*
  store double 0.000000e+00, double* %3183, align 1, !tbaa !2452
  %3184 = load i64, i64* %RBP
  %3185 = sub i64 %3184, 168
  %3186 = bitcast %union.vec128_t* %XMM0 to i8*
  %3187 = load i64, i64* %PC
  %3188 = add i64 %3187, 8
  store i64 %3188, i64* %PC
  %3189 = bitcast i8* %3186 to double*
  %3190 = load double, double* %3189, align 1
  %3191 = inttoptr i64 %3185 to double*
  store double %3190, double* %3191
  %3192 = load i64, i64* %PC
  %3193 = add i64 %3192, 18
  %3194 = load i64, i64* %PC
  %3195 = add i64 %3194, 5
  store i64 %3195, i64* %PC
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3193, i64* %3196, align 8, !tbaa !2428
  br label %block_400974

block_4008eb:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit2
  %3197 = sub i64 %597, 80
  %3198 = load i64, i64* %PC
  %3199 = add i64 %3198, 5
  store i64 %3199, i64* %PC
  %3200 = inttoptr i64 %3197 to double*
  %3201 = load double, double* %3200
  %3202 = bitcast i8* %596 to double*
  store double %3201, double* %3202, align 1, !tbaa !2452
  %3203 = getelementptr inbounds i8, i8* %596, i64 8
  %3204 = bitcast i8* %3203 to double*
  store double 0.000000e+00, double* %3204, align 1, !tbaa !2452
  %3205 = load i64, i64* %RBP
  %3206 = sub i64 %3205, 152
  %3207 = bitcast %union.vec128_t* %XMM0 to i8*
  %3208 = load i64, i64* %PC
  %3209 = add i64 %3208, 8
  store i64 %3209, i64* %PC
  %3210 = bitcast i8* %3207 to double*
  %3211 = load double, double* %3210, align 1
  %3212 = inttoptr i64 %3206 to double*
  store double %3211, double* %3212
  br label %block_4008f8
}

; Function Attrs: noinline
define %struct.Memory* @sub_400b60_fourn(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400b60:
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
  br label %block_400b87

block_400e74:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit, %block_400fc1
  %MEMORY.0 = phi %struct.Memory* [ %3256, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ], [ %MEMORY.11, %block_400fc1 ]
  %149 = load i64, i64* %RBP
  %150 = sub i64 %149, 36
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 3
  store i64 %152, i64* %PC
  %153 = inttoptr i64 %150 to i32*
  %154 = load i32, i32* %153
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RAX, align 8, !tbaa !2428
  %156 = load i32, i32* %EAX
  %157 = zext i32 %156 to i64
  %158 = load i64, i64* %RBP
  %159 = sub i64 %158, 60
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 3
  store i64 %161, i64* %PC
  %162 = inttoptr i64 %159 to i32*
  %163 = load i32, i32* %162
  %164 = sub i32 %156, %163
  %165 = icmp ult i32 %156, %163
  %166 = zext i1 %165 to i8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %166, i8* %167, align 1, !tbaa !2432
  %168 = and i32 %164, 255
  %169 = call i32 @llvm.ctpop.i32(i32 %168) #17
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = xor i8 %171, 1
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %172, i8* %173, align 1, !tbaa !2446
  %174 = xor i32 %163, %156
  %175 = xor i32 %174, %164
  %176 = lshr i32 %175, 4
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %178, i8* %179, align 1, !tbaa !2447
  %180 = icmp eq i32 %164, 0
  %181 = zext i1 %180 to i8
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %181, i8* %182, align 1, !tbaa !2448
  %183 = lshr i32 %164, 31
  %184 = trunc i32 %183 to i8
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %184, i8* %185, align 1, !tbaa !2449
  %186 = lshr i32 %156, 31
  %187 = lshr i32 %163, 31
  %188 = xor i32 %187, %186
  %189 = xor i32 %183, %186
  %190 = add nuw nsw i32 %189, %188
  %191 = icmp eq i32 %190, 2
  %192 = zext i1 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %192, i8* %193, align 1, !tbaa !2450
  %194 = load i64, i64* %PC
  %195 = add i64 %194, 441
  %196 = load i64, i64* %PC
  %197 = add i64 %196, 6
  %198 = load i64, i64* %PC
  %199 = add i64 %198, 6
  store i64 %199, i64* %PC
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %201 = load i8, i8* %200, align 1, !tbaa !2448
  %202 = icmp eq i8 %201, 0
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %204 = load i8, i8* %203, align 1, !tbaa !2449
  %205 = icmp ne i8 %204, 0
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %207 = load i8, i8* %206, align 1, !tbaa !2450
  %208 = icmp ne i8 %207, 0
  %209 = xor i1 %205, %208
  %210 = xor i1 %209, true
  %211 = and i1 %202, %210
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %214 = select i1 %211, i64 %195, i64 %197
  store i64 %214, i64* %213, align 8, !tbaa !2428
  %215 = load i8, i8* %BRANCH_TAKEN
  %216 = icmp eq i8 %215, 1
  %217 = load i64, i64* %RBP
  br i1 %216, label %block_401033, label %block_400e80

block_400d66:                                     ; preds = %block_400d53
  %218 = load i64, i64* %RBP
  %219 = sub i64 %218, 68
  %220 = load i64, i64* %PC
  %221 = add i64 %220, 3
  store i64 %221, i64* %PC
  %222 = inttoptr i64 %219 to i32*
  %223 = load i32, i32* %222
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RAX, align 8, !tbaa !2428
  %225 = load i64, i64* %RBP
  %226 = sub i64 %225, 40
  %227 = load i64, i64* %PC
  %228 = add i64 %227, 3
  store i64 %228, i64* %PC
  %229 = inttoptr i64 %226 to i32*
  %230 = load i32, i32* %229
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RCX, align 8, !tbaa !2428
  %232 = load i64, i64* %RCX
  %233 = load i32, i32* %EAX
  %234 = zext i32 %233 to i64
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 2
  store i64 %236, i64* %PC
  %237 = trunc i64 %232 to i32
  %238 = sub i32 %237, %233
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %RCX, align 8, !tbaa !2428
  %240 = icmp ult i32 %237, %233
  %241 = zext i1 %240 to i8
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %241, i8* %242, align 1, !tbaa !2432
  %243 = and i32 %238, 255
  %244 = call i32 @llvm.ctpop.i32(i32 %243) #17
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %247, i8* %248, align 1, !tbaa !2446
  %249 = xor i64 %234, %232
  %250 = trunc i64 %249 to i32
  %251 = xor i32 %250, %238
  %252 = lshr i32 %251, 4
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %254, i8* %255, align 1, !tbaa !2447
  %256 = icmp eq i32 %238, 0
  %257 = zext i1 %256 to i8
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %257, i8* %258, align 1, !tbaa !2448
  %259 = lshr i32 %238, 31
  %260 = trunc i32 %259 to i8
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %260, i8* %261, align 1, !tbaa !2449
  %262 = lshr i32 %237, 31
  %263 = lshr i32 %233, 31
  %264 = xor i32 %263, %262
  %265 = xor i32 %259, %262
  %266 = add nuw nsw i32 %265, %264
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i8
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %268, i8* %269, align 1, !tbaa !2450
  %270 = load i64, i64* %RBP
  %271 = sub i64 %270, 40
  %272 = load i32, i32* %ECX
  %273 = zext i32 %272 to i64
  %274 = load i64, i64* %PC
  %275 = add i64 %274, 3
  store i64 %275, i64* %PC
  %276 = inttoptr i64 %271 to i32*
  store i32 %272, i32* %276
  %277 = load i64, i64* %RBP
  %278 = sub i64 %277, 68
  %279 = load i64, i64* %PC
  %280 = add i64 %279, 3
  store i64 %280, i64* %PC
  %281 = inttoptr i64 %278 to i32*
  %282 = load i32, i32* %281
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RAX, align 8, !tbaa !2428
  %284 = load i64, i64* %RAX
  %285 = load i64, i64* %PC
  %286 = add i64 %285, 3
  store i64 %286, i64* %PC
  %287 = shl i64 %284, 32
  %288 = ashr i64 %287, 33
  %289 = trunc i64 %284 to i8
  %290 = and i8 %289, 1
  %291 = trunc i64 %288 to i32
  %292 = and i64 %288, 4294967295
  store i64 %292, i64* %RAX, align 8, !tbaa !2428
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %290, i8* %293, align 1, !tbaa !2451
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %295 = and i32 %291, 255
  %296 = call i32 @llvm.ctpop.i32(i32 %295) #17
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  store i8 %299, i8* %294, align 1, !tbaa !2451
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %300, align 1, !tbaa !2451
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %302 = icmp eq i32 %291, 0
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %301, align 1, !tbaa !2451
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %305 = lshr i32 %291, 31
  %306 = trunc i32 %305 to i8
  store i8 %306, i8* %304, align 1, !tbaa !2451
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %307, align 1, !tbaa !2451
  %308 = load i64, i64* %RBP
  %309 = sub i64 %308, 68
  %310 = load i32, i32* %EAX
  %311 = zext i32 %310 to i64
  %312 = load i64, i64* %PC
  %313 = add i64 %312, 3
  store i64 %313, i64* %PC
  %314 = inttoptr i64 %309 to i32*
  store i32 %310, i32* %314
  %315 = load i64, i64* %PC
  %316 = sub i64 %315, 76
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 5
  store i64 %318, i64* %PC
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %316, i64* %319, align 8, !tbaa !2428
  br label %block_400d2e

block_400c63:                                     ; preds = %block_400c57
  %320 = load i64, i64* %RBP
  %321 = sub i64 %320, 40
  %322 = load i64, i64* %PC
  %323 = add i64 %322, 3
  store i64 %323, i64* %PC
  %324 = inttoptr i64 %321 to i32*
  %325 = load i32, i32* %324
  %326 = zext i32 %325 to i64
  store i64 %326, i64* %RAX, align 8, !tbaa !2428
  %327 = load i64, i64* %RAX
  %328 = load i64, i64* %RBP
  %329 = sub i64 %328, 36
  %330 = load i64, i64* %PC
  %331 = add i64 %330, 3
  store i64 %331, i64* %PC
  %332 = trunc i64 %327 to i32
  %333 = inttoptr i64 %329 to i32*
  %334 = load i32, i32* %333
  %335 = add i32 %334, %332
  %336 = zext i32 %335 to i64
  store i64 %336, i64* %RAX, align 8, !tbaa !2428
  %337 = icmp ult i32 %335, %332
  %338 = icmp ult i32 %335, %334
  %339 = or i1 %337, %338
  %340 = zext i1 %339 to i8
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %340, i8* %341, align 1, !tbaa !2432
  %342 = and i32 %335, 255
  %343 = call i32 @llvm.ctpop.i32(i32 %342) #17
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %346, i8* %347, align 1, !tbaa !2446
  %348 = xor i32 %334, %332
  %349 = xor i32 %348, %335
  %350 = lshr i32 %349, 4
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %352, i8* %353, align 1, !tbaa !2447
  %354 = icmp eq i32 %335, 0
  %355 = zext i1 %354 to i8
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %355, i8* %356, align 1, !tbaa !2448
  %357 = lshr i32 %335, 31
  %358 = trunc i32 %357 to i8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %358, i8* %359, align 1, !tbaa !2449
  %360 = lshr i32 %332, 31
  %361 = lshr i32 %334, 31
  %362 = xor i32 %357, %360
  %363 = xor i32 %357, %361
  %364 = add nuw nsw i32 %362, %363
  %365 = icmp eq i32 %364, 2
  %366 = zext i1 %365 to i8
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %366, i8* %367, align 1, !tbaa !2450
  %368 = load i64, i64* %RAX
  %369 = load i64, i64* %RBP
  %370 = sub i64 %369, 32
  %371 = load i64, i64* %PC
  %372 = add i64 %371, 3
  store i64 %372, i64* %PC
  %373 = trunc i64 %368 to i32
  %374 = inttoptr i64 %370 to i32*
  %375 = load i32, i32* %374
  %376 = sub i32 %373, %375
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RAX, align 8, !tbaa !2428
  %378 = icmp ult i32 %373, %375
  %379 = zext i1 %378 to i8
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %379, i8* %380, align 1, !tbaa !2432
  %381 = and i32 %376, 255
  %382 = call i32 @llvm.ctpop.i32(i32 %381) #17
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %385, i8* %386, align 1, !tbaa !2446
  %387 = xor i32 %375, %373
  %388 = xor i32 %387, %376
  %389 = lshr i32 %388, 4
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %391, i8* %392, align 1, !tbaa !2447
  %393 = icmp eq i32 %376, 0
  %394 = zext i1 %393 to i8
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %394, i8* %395, align 1, !tbaa !2448
  %396 = lshr i32 %376, 31
  %397 = trunc i32 %396 to i8
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %397, i8* %398, align 1, !tbaa !2449
  %399 = lshr i32 %373, 31
  %400 = lshr i32 %375, 31
  %401 = xor i32 %400, %399
  %402 = xor i32 %396, %399
  %403 = add nuw nsw i32 %402, %401
  %404 = icmp eq i32 %403, 2
  %405 = zext i1 %404 to i8
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %405, i8* %406, align 1, !tbaa !2450
  %407 = load i64, i64* %RBP
  %408 = sub i64 %407, 44
  %409 = load i32, i32* %EAX
  %410 = zext i32 %409 to i64
  %411 = load i64, i64* %PC
  %412 = add i64 %411, 3
  store i64 %412, i64* %PC
  %413 = inttoptr i64 %408 to i32*
  store i32 %409, i32* %413
  %414 = load i64, i64* %RBP
  %415 = sub i64 %414, 8
  %416 = load i64, i64* %PC
  %417 = add i64 %416, 4
  store i64 %417, i64* %PC
  %418 = inttoptr i64 %415 to i64*
  %419 = load i64, i64* %418
  store i64 %419, i64* %RCX, align 8, !tbaa !2428
  %420 = load i64, i64* %RBP
  %421 = sub i64 %420, 36
  %422 = load i64, i64* %PC
  %423 = add i64 %422, 4
  store i64 %423, i64* %PC
  %424 = inttoptr i64 %421 to i32*
  %425 = load i32, i32* %424
  %426 = sext i32 %425 to i64
  store i64 %426, i64* %RDX, align 8, !tbaa !2428
  %427 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %428 = load i64, i64* %RCX
  %429 = load i64, i64* %RDX
  %430 = mul i64 %429, 8
  %431 = add i64 %430, %428
  %432 = load i64, i64* %PC
  %433 = add i64 %432, 5
  store i64 %433, i64* %PC
  %434 = inttoptr i64 %431 to double*
  %435 = load double, double* %434
  %436 = bitcast i8* %427 to double*
  store double %435, double* %436, align 1, !tbaa !2452
  %437 = getelementptr inbounds i8, i8* %427, i64 8
  %438 = bitcast i8* %437 to double*
  store double 0.000000e+00, double* %438, align 1, !tbaa !2452
  %439 = load i64, i64* %RBP
  %440 = sub i64 %439, 112
  %441 = bitcast %union.vec128_t* %XMM0 to i8*
  %442 = load i64, i64* %PC
  %443 = add i64 %442, 5
  store i64 %443, i64* %PC
  %444 = bitcast i8* %441 to double*
  %445 = load double, double* %444, align 1
  %446 = inttoptr i64 %440 to double*
  store double %445, double* %446
  %447 = load i64, i64* %RBP
  %448 = sub i64 %447, 8
  %449 = load i64, i64* %PC
  %450 = add i64 %449, 4
  store i64 %450, i64* %PC
  %451 = inttoptr i64 %448 to i64*
  %452 = load i64, i64* %451
  store i64 %452, i64* %RCX, align 8, !tbaa !2428
  %453 = load i64, i64* %RBP
  %454 = sub i64 %453, 44
  %455 = load i64, i64* %PC
  %456 = add i64 %455, 4
  store i64 %456, i64* %PC
  %457 = inttoptr i64 %454 to i32*
  %458 = load i32, i32* %457
  %459 = sext i32 %458 to i64
  store i64 %459, i64* %RDX, align 8, !tbaa !2428
  %460 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %461 = load i64, i64* %RCX
  %462 = load i64, i64* %RDX
  %463 = mul i64 %462, 8
  %464 = add i64 %463, %461
  %465 = load i64, i64* %PC
  %466 = add i64 %465, 5
  store i64 %466, i64* %PC
  %467 = inttoptr i64 %464 to double*
  %468 = load double, double* %467
  %469 = bitcast i8* %460 to double*
  store double %468, double* %469, align 1, !tbaa !2452
  %470 = getelementptr inbounds i8, i8* %460, i64 8
  %471 = bitcast i8* %470 to double*
  store double 0.000000e+00, double* %471, align 1, !tbaa !2452
  %472 = load i64, i64* %RBP
  %473 = sub i64 %472, 8
  %474 = load i64, i64* %PC
  %475 = add i64 %474, 4
  store i64 %475, i64* %PC
  %476 = inttoptr i64 %473 to i64*
  %477 = load i64, i64* %476
  store i64 %477, i64* %RCX, align 8, !tbaa !2428
  %478 = load i64, i64* %RBP
  %479 = sub i64 %478, 36
  %480 = load i64, i64* %PC
  %481 = add i64 %480, 4
  store i64 %481, i64* %PC
  %482 = inttoptr i64 %479 to i32*
  %483 = load i32, i32* %482
  %484 = sext i32 %483 to i64
  store i64 %484, i64* %RDX, align 8, !tbaa !2428
  %485 = load i64, i64* %RCX
  %486 = load i64, i64* %RDX
  %487 = mul i64 %486, 8
  %488 = add i64 %487, %485
  %489 = bitcast %union.vec128_t* %XMM0 to i8*
  %490 = load i64, i64* %PC
  %491 = add i64 %490, 5
  store i64 %491, i64* %PC
  %492 = bitcast i8* %489 to double*
  %493 = load double, double* %492, align 1
  %494 = inttoptr i64 %488 to double*
  store double %493, double* %494
  %495 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %496 = load i64, i64* %RBP
  %497 = sub i64 %496, 112
  %498 = load i64, i64* %PC
  %499 = add i64 %498, 5
  store i64 %499, i64* %PC
  %500 = inttoptr i64 %497 to double*
  %501 = load double, double* %500
  %502 = bitcast i8* %495 to double*
  store double %501, double* %502, align 1, !tbaa !2452
  %503 = getelementptr inbounds i8, i8* %495, i64 8
  %504 = bitcast i8* %503 to double*
  store double 0.000000e+00, double* %504, align 1, !tbaa !2452
  %505 = load i64, i64* %RBP
  %506 = sub i64 %505, 8
  %507 = load i64, i64* %PC
  %508 = add i64 %507, 4
  store i64 %508, i64* %PC
  %509 = inttoptr i64 %506 to i64*
  %510 = load i64, i64* %509
  store i64 %510, i64* %RCX, align 8, !tbaa !2428
  %511 = load i64, i64* %RBP
  %512 = sub i64 %511, 44
  %513 = load i64, i64* %PC
  %514 = add i64 %513, 4
  store i64 %514, i64* %PC
  %515 = inttoptr i64 %512 to i32*
  %516 = load i32, i32* %515
  %517 = sext i32 %516 to i64
  store i64 %517, i64* %RDX, align 8, !tbaa !2428
  %518 = load i64, i64* %RCX
  %519 = load i64, i64* %RDX
  %520 = mul i64 %519, 8
  %521 = add i64 %520, %518
  %522 = bitcast %union.vec128_t* %XMM0 to i8*
  %523 = load i64, i64* %PC
  %524 = add i64 %523, 5
  store i64 %524, i64* %PC
  %525 = bitcast i8* %522 to double*
  %526 = load double, double* %525, align 1
  %527 = inttoptr i64 %521 to double*
  store double %526, double* %527
  %528 = load i64, i64* %RBP
  %529 = sub i64 %528, 8
  %530 = load i64, i64* %PC
  %531 = add i64 %530, 4
  store i64 %531, i64* %PC
  %532 = inttoptr i64 %529 to i64*
  %533 = load i64, i64* %532
  store i64 %533, i64* %RCX, align 8, !tbaa !2428
  %534 = load i64, i64* %RBP
  %535 = sub i64 %534, 36
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
  %553 = call i32 @llvm.ctpop.i32(i32 %552) #17
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
  %577 = load i32, i32* %EAX
  %578 = zext i32 %577 to i64
  %579 = load i64, i64* %PC
  %580 = add i64 %579, 3
  store i64 %580, i64* %PC
  %581 = shl i64 %578, 32
  %582 = ashr exact i64 %581, 32
  store i64 %582, i64* %RDX, align 8, !tbaa !2428
  %583 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %584 = load i64, i64* %RCX
  %585 = load i64, i64* %RDX
  %586 = mul i64 %585, 8
  %587 = add i64 %586, %584
  %588 = load i64, i64* %PC
  %589 = add i64 %588, 5
  store i64 %589, i64* %PC
  %590 = inttoptr i64 %587 to double*
  %591 = load double, double* %590
  %592 = bitcast i8* %583 to double*
  store double %591, double* %592, align 1, !tbaa !2452
  %593 = getelementptr inbounds i8, i8* %583, i64 8
  %594 = bitcast i8* %593 to double*
  store double 0.000000e+00, double* %594, align 1, !tbaa !2452
  %595 = load i64, i64* %RBP
  %596 = sub i64 %595, 112
  %597 = bitcast %union.vec128_t* %XMM0 to i8*
  %598 = load i64, i64* %PC
  %599 = add i64 %598, 5
  store i64 %599, i64* %PC
  %600 = bitcast i8* %597 to double*
  %601 = load double, double* %600, align 1
  %602 = inttoptr i64 %596 to double*
  store double %601, double* %602
  %603 = load i64, i64* %RBP
  %604 = sub i64 %603, 8
  %605 = load i64, i64* %PC
  %606 = add i64 %605, 4
  store i64 %606, i64* %PC
  %607 = inttoptr i64 %604 to i64*
  %608 = load i64, i64* %607
  store i64 %608, i64* %RCX, align 8, !tbaa !2428
  %609 = load i64, i64* %RBP
  %610 = sub i64 %609, 44
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
  %628 = call i32 @llvm.ctpop.i32(i32 %627) #17
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
  %652 = load i32, i32* %EAX
  %653 = zext i32 %652 to i64
  %654 = load i64, i64* %PC
  %655 = add i64 %654, 3
  store i64 %655, i64* %PC
  %656 = shl i64 %653, 32
  %657 = ashr exact i64 %656, 32
  store i64 %657, i64* %RDX, align 8, !tbaa !2428
  %658 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %659 = load i64, i64* %RCX
  %660 = load i64, i64* %RDX
  %661 = mul i64 %660, 8
  %662 = add i64 %661, %659
  %663 = load i64, i64* %PC
  %664 = add i64 %663, 5
  store i64 %664, i64* %PC
  %665 = inttoptr i64 %662 to double*
  %666 = load double, double* %665
  %667 = bitcast i8* %658 to double*
  store double %666, double* %667, align 1, !tbaa !2452
  %668 = getelementptr inbounds i8, i8* %658, i64 8
  %669 = bitcast i8* %668 to double*
  store double 0.000000e+00, double* %669, align 1, !tbaa !2452
  %670 = load i64, i64* %RBP
  %671 = sub i64 %670, 8
  %672 = load i64, i64* %PC
  %673 = add i64 %672, 4
  store i64 %673, i64* %PC
  %674 = inttoptr i64 %671 to i64*
  %675 = load i64, i64* %674
  store i64 %675, i64* %RCX, align 8, !tbaa !2428
  %676 = load i64, i64* %RBP
  %677 = sub i64 %676, 36
  %678 = load i64, i64* %PC
  %679 = add i64 %678, 3
  store i64 %679, i64* %PC
  %680 = inttoptr i64 %677 to i32*
  %681 = load i32, i32* %680
  %682 = zext i32 %681 to i64
  store i64 %682, i64* %RAX, align 8, !tbaa !2428
  %683 = load i64, i64* %RAX
  %684 = load i64, i64* %PC
  %685 = add i64 %684, 3
  store i64 %685, i64* %PC
  %686 = trunc i64 %683 to i32
  %687 = add i32 1, %686
  %688 = zext i32 %687 to i64
  store i64 %688, i64* %RAX, align 8, !tbaa !2428
  %689 = icmp ult i32 %687, %686
  %690 = icmp ult i32 %687, 1
  %691 = or i1 %689, %690
  %692 = zext i1 %691 to i8
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %692, i8* %693, align 1, !tbaa !2432
  %694 = and i32 %687, 255
  %695 = call i32 @llvm.ctpop.i32(i32 %694) #17
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  %698 = xor i8 %697, 1
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %698, i8* %699, align 1, !tbaa !2446
  %700 = xor i64 1, %683
  %701 = trunc i64 %700 to i32
  %702 = xor i32 %701, %687
  %703 = lshr i32 %702, 4
  %704 = trunc i32 %703 to i8
  %705 = and i8 %704, 1
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %705, i8* %706, align 1, !tbaa !2447
  %707 = icmp eq i32 %687, 0
  %708 = zext i1 %707 to i8
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %708, i8* %709, align 1, !tbaa !2448
  %710 = lshr i32 %687, 31
  %711 = trunc i32 %710 to i8
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %711, i8* %712, align 1, !tbaa !2449
  %713 = lshr i32 %686, 31
  %714 = xor i32 %710, %713
  %715 = add nuw nsw i32 %714, %710
  %716 = icmp eq i32 %715, 2
  %717 = zext i1 %716 to i8
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %717, i8* %718, align 1, !tbaa !2450
  %719 = load i32, i32* %EAX
  %720 = zext i32 %719 to i64
  %721 = load i64, i64* %PC
  %722 = add i64 %721, 3
  store i64 %722, i64* %PC
  %723 = shl i64 %720, 32
  %724 = ashr exact i64 %723, 32
  store i64 %724, i64* %RDX, align 8, !tbaa !2428
  %725 = load i64, i64* %RCX
  %726 = load i64, i64* %RDX
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
  %735 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %736 = load i64, i64* %RBP
  %737 = sub i64 %736, 112
  %738 = load i64, i64* %PC
  %739 = add i64 %738, 5
  store i64 %739, i64* %PC
  %740 = inttoptr i64 %737 to double*
  %741 = load double, double* %740
  %742 = bitcast i8* %735 to double*
  store double %741, double* %742, align 1, !tbaa !2452
  %743 = getelementptr inbounds i8, i8* %735, i64 8
  %744 = bitcast i8* %743 to double*
  store double 0.000000e+00, double* %744, align 1, !tbaa !2452
  %745 = load i64, i64* %RBP
  %746 = sub i64 %745, 8
  %747 = load i64, i64* %PC
  %748 = add i64 %747, 4
  store i64 %748, i64* %PC
  %749 = inttoptr i64 %746 to i64*
  %750 = load i64, i64* %749
  store i64 %750, i64* %RCX, align 8, !tbaa !2428
  %751 = load i64, i64* %RBP
  %752 = sub i64 %751, 44
  %753 = load i64, i64* %PC
  %754 = add i64 %753, 3
  store i64 %754, i64* %PC
  %755 = inttoptr i64 %752 to i32*
  %756 = load i32, i32* %755
  %757 = zext i32 %756 to i64
  store i64 %757, i64* %RAX, align 8, !tbaa !2428
  %758 = load i64, i64* %RAX
  %759 = load i64, i64* %PC
  %760 = add i64 %759, 3
  store i64 %760, i64* %PC
  %761 = trunc i64 %758 to i32
  %762 = add i32 1, %761
  %763 = zext i32 %762 to i64
  store i64 %763, i64* %RAX, align 8, !tbaa !2428
  %764 = icmp ult i32 %762, %761
  %765 = icmp ult i32 %762, 1
  %766 = or i1 %764, %765
  %767 = zext i1 %766 to i8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %767, i8* %768, align 1, !tbaa !2432
  %769 = and i32 %762, 255
  %770 = call i32 @llvm.ctpop.i32(i32 %769) #17
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  %773 = xor i8 %772, 1
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %773, i8* %774, align 1, !tbaa !2446
  %775 = xor i64 1, %758
  %776 = trunc i64 %775 to i32
  %777 = xor i32 %776, %762
  %778 = lshr i32 %777, 4
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %780, i8* %781, align 1, !tbaa !2447
  %782 = icmp eq i32 %762, 0
  %783 = zext i1 %782 to i8
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %783, i8* %784, align 1, !tbaa !2448
  %785 = lshr i32 %762, 31
  %786 = trunc i32 %785 to i8
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %786, i8* %787, align 1, !tbaa !2449
  %788 = lshr i32 %761, 31
  %789 = xor i32 %785, %788
  %790 = add nuw nsw i32 %789, %785
  %791 = icmp eq i32 %790, 2
  %792 = zext i1 %791 to i8
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %792, i8* %793, align 1, !tbaa !2450
  %794 = load i32, i32* %EAX
  %795 = zext i32 %794 to i64
  %796 = load i64, i64* %PC
  %797 = add i64 %796, 3
  store i64 %797, i64* %PC
  %798 = shl i64 %795, 32
  %799 = ashr exact i64 %798, 32
  store i64 %799, i64* %RDX, align 8, !tbaa !2428
  %800 = load i64, i64* %RCX
  %801 = load i64, i64* %RDX
  %802 = mul i64 %801, 8
  %803 = add i64 %802, %800
  %804 = bitcast %union.vec128_t* %XMM0 to i8*
  %805 = load i64, i64* %PC
  %806 = add i64 %805, 5
  store i64 %806, i64* %PC
  %807 = bitcast i8* %804 to double*
  %808 = load double, double* %807, align 1
  %809 = inttoptr i64 %803 to double*
  store double %808, double* %809
  %810 = load i64, i64* %RBP
  %811 = sub i64 %810, 52
  %812 = load i64, i64* %PC
  %813 = add i64 %812, 3
  store i64 %813, i64* %PC
  %814 = inttoptr i64 %811 to i32*
  %815 = load i32, i32* %814
  %816 = zext i32 %815 to i64
  store i64 %816, i64* %RAX, align 8, !tbaa !2428
  %817 = load i64, i64* %RAX
  %818 = load i64, i64* %RBP
  %819 = sub i64 %818, 36
  %820 = load i64, i64* %PC
  %821 = add i64 %820, 3
  store i64 %821, i64* %PC
  %822 = trunc i64 %817 to i32
  %823 = inttoptr i64 %819 to i32*
  %824 = load i32, i32* %823
  %825 = add i32 %824, %822
  %826 = zext i32 %825 to i64
  store i64 %826, i64* %RAX, align 8, !tbaa !2428
  %827 = icmp ult i32 %825, %822
  %828 = icmp ult i32 %825, %824
  %829 = or i1 %827, %828
  %830 = zext i1 %829 to i8
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %830, i8* %831, align 1, !tbaa !2432
  %832 = and i32 %825, 255
  %833 = call i32 @llvm.ctpop.i32(i32 %832) #17
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  %836 = xor i8 %835, 1
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %836, i8* %837, align 1, !tbaa !2446
  %838 = xor i32 %824, %822
  %839 = xor i32 %838, %825
  %840 = lshr i32 %839, 4
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %842, i8* %843, align 1, !tbaa !2447
  %844 = icmp eq i32 %825, 0
  %845 = zext i1 %844 to i8
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %845, i8* %846, align 1, !tbaa !2448
  %847 = lshr i32 %825, 31
  %848 = trunc i32 %847 to i8
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %848, i8* %849, align 1, !tbaa !2449
  %850 = lshr i32 %822, 31
  %851 = lshr i32 %824, 31
  %852 = xor i32 %847, %850
  %853 = xor i32 %847, %851
  %854 = add nuw nsw i32 %852, %853
  %855 = icmp eq i32 %854, 2
  %856 = zext i1 %855 to i8
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %856, i8* %857, align 1, !tbaa !2450
  %858 = load i64, i64* %RBP
  %859 = sub i64 %858, 36
  %860 = load i32, i32* %EAX
  %861 = zext i32 %860 to i64
  %862 = load i64, i64* %PC
  %863 = add i64 %862, 3
  store i64 %863, i64* %PC
  %864 = inttoptr i64 %859 to i32*
  store i32 %860, i32* %864
  %865 = load i64, i64* %PC
  %866 = sub i64 %865, 177
  %867 = load i64, i64* %PC
  %868 = add i64 %867, 5
  store i64 %868, i64* %PC
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %866, i64* %869, align 8, !tbaa !2428
  br label %block_400c57

block_400bb3:                                     ; preds = %block_400b87
  %870 = sub i64 %4763, 88
  %871 = load i64, i64* %PC
  %872 = add i64 %871, 7
  store i64 %872, i64* %PC
  %873 = inttoptr i64 %870 to i32*
  store i32 1, i32* %873
  %874 = load i64, i64* %RBP
  %875 = sub i64 %874, 20
  %876 = load i64, i64* %PC
  %877 = add i64 %876, 3
  store i64 %877, i64* %PC
  %878 = inttoptr i64 %875 to i32*
  %879 = load i32, i32* %878
  %880 = zext i32 %879 to i64
  store i64 %880, i64* %RAX, align 8, !tbaa !2428
  %881 = load i64, i64* %RBP
  %882 = sub i64 %881, 72
  %883 = load i32, i32* %EAX
  %884 = zext i32 %883 to i64
  %885 = load i64, i64* %PC
  %886 = add i64 %885, 3
  store i64 %886, i64* %PC
  %887 = inttoptr i64 %882 to i32*
  store i32 %883, i32* %887
  br label %block_400bc0

block_400c57:                                     ; preds = %block_400c51, %block_400c63
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.4, %block_400c51 ], [ %MEMORY.1, %block_400c63 ]
  %888 = load i64, i64* %RBP
  %889 = sub i64 %888, 36
  %890 = load i64, i64* %PC
  %891 = add i64 %890, 3
  store i64 %891, i64* %PC
  %892 = inttoptr i64 %889 to i32*
  %893 = load i32, i32* %892
  %894 = zext i32 %893 to i64
  store i64 %894, i64* %RAX, align 8, !tbaa !2428
  %895 = load i32, i32* %EAX
  %896 = zext i32 %895 to i64
  %897 = load i64, i64* %RBP
  %898 = sub i64 %897, 56
  %899 = load i64, i64* %PC
  %900 = add i64 %899, 3
  store i64 %900, i64* %PC
  %901 = inttoptr i64 %898 to i32*
  %902 = load i32, i32* %901
  %903 = sub i32 %895, %902
  %904 = icmp ult i32 %895, %902
  %905 = zext i1 %904 to i8
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %905, i8* %906, align 1, !tbaa !2432
  %907 = and i32 %903, 255
  %908 = call i32 @llvm.ctpop.i32(i32 %907) #17
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  %911 = xor i8 %910, 1
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %911, i8* %912, align 1, !tbaa !2446
  %913 = xor i32 %902, %895
  %914 = xor i32 %913, %903
  %915 = lshr i32 %914, 4
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %917, i8* %918, align 1, !tbaa !2447
  %919 = icmp eq i32 %903, 0
  %920 = zext i1 %919 to i8
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %920, i8* %921, align 1, !tbaa !2448
  %922 = lshr i32 %903, 31
  %923 = trunc i32 %922 to i8
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %923, i8* %924, align 1, !tbaa !2449
  %925 = lshr i32 %895, 31
  %926 = lshr i32 %902, 31
  %927 = xor i32 %926, %925
  %928 = xor i32 %922, %925
  %929 = add nuw nsw i32 %928, %927
  %930 = icmp eq i32 %929, 2
  %931 = zext i1 %930 to i8
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %931, i8* %932, align 1, !tbaa !2450
  %933 = load i64, i64* %PC
  %934 = add i64 %933, 176
  %935 = load i64, i64* %PC
  %936 = add i64 %935, 6
  %937 = load i64, i64* %PC
  %938 = add i64 %937, 6
  store i64 %938, i64* %PC
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %940 = load i8, i8* %939, align 1, !tbaa !2448
  %941 = icmp eq i8 %940, 0
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %943 = load i8, i8* %942, align 1, !tbaa !2449
  %944 = icmp ne i8 %943, 0
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %946 = load i8, i8* %945, align 1, !tbaa !2450
  %947 = icmp ne i8 %946, 0
  %948 = xor i1 %944, %947
  %949 = xor i1 %948, true
  %950 = and i1 %941, %949
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %953 = select i1 %950, i64 %934, i64 %936
  store i64 %953, i64* %952, align 8, !tbaa !2428
  %954 = load i8, i8* %BRANCH_TAKEN
  %955 = icmp eq i8 %954, 1
  br i1 %955, label %block_400d0d, label %block_400c63

block_401056:                                     ; preds = %block_400bc0
  %956 = load i64, i64* %RSP
  %957 = load i64, i64* %PC
  %958 = add i64 %957, 7
  store i64 %958, i64* %PC
  %959 = add i64 192, %956
  store i64 %959, i64* %RSP, align 8, !tbaa !2428
  %960 = icmp ult i64 %959, %956
  %961 = icmp ult i64 %959, 192
  %962 = or i1 %960, %961
  %963 = zext i1 %962 to i8
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %963, i8* %964, align 1, !tbaa !2432
  %965 = trunc i64 %959 to i32
  %966 = and i32 %965, 255
  %967 = call i32 @llvm.ctpop.i32(i32 %966) #17
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %970, i8* %971, align 1, !tbaa !2446
  %972 = xor i64 192, %956
  %973 = xor i64 %972, %959
  %974 = lshr i64 %973, 4
  %975 = trunc i64 %974 to i8
  %976 = and i8 %975, 1
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %976, i8* %977, align 1, !tbaa !2447
  %978 = icmp eq i64 %959, 0
  %979 = zext i1 %978 to i8
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %979, i8* %980, align 1, !tbaa !2448
  %981 = lshr i64 %959, 63
  %982 = trunc i64 %981 to i8
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %982, i8* %983, align 1, !tbaa !2449
  %984 = lshr i64 %956, 63
  %985 = xor i64 %981, %984
  %986 = add nuw nsw i64 %985, %981
  %987 = icmp eq i64 %986, 2
  %988 = zext i1 %987 to i8
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %988, i8* %989, align 1, !tbaa !2450
  %990 = load i64, i64* %PC
  %991 = add i64 %990, 1
  store i64 %991, i64* %PC
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %993 = load i64, i64* %992, align 8, !tbaa !2428
  %994 = add i64 %993, 8
  %995 = inttoptr i64 %993 to i64*
  %996 = load i64, i64* %995
  store i64 %996, i64* %RBP, align 8, !tbaa !2428
  store i64 %994, i64* %992, align 8, !tbaa !2428
  %997 = load i64, i64* %PC
  %998 = add i64 %997, 1
  store i64 %998, i64* %PC
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1001 = load i64, i64* %1000, align 8, !tbaa !2428
  %1002 = inttoptr i64 %1001 to i64*
  %1003 = load i64, i64* %1002
  store i64 %1003, i64* %999, align 8, !tbaa !2428
  %1004 = add i64 %1001, 8
  store i64 %1004, i64* %1000, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.3

block_400d53:                                     ; preds = %block_400d2e, %block_400d44
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.7, %block_400d2e ], [ %MEMORY.7, %block_400d44 ]
  %1005 = load i64, i64* %RBP
  %1006 = sub i64 %1005, 165
  %1007 = load i64, i64* %PC
  %1008 = add i64 %1007, 6
  store i64 %1008, i64* %PC
  %1009 = inttoptr i64 %1006 to i8*
  %1010 = load i8, i8* %1009
  store i8 %1010, i8* %AL, align 1, !tbaa !2451
  %1011 = load i8, i8* %AL
  %1012 = zext i8 %1011 to i64
  %1013 = load i64, i64* %PC
  %1014 = add i64 %1013, 2
  store i64 %1014, i64* %PC
  %1015 = and i64 1, %1012
  %1016 = trunc i64 %1015 to i8
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1017, align 1, !tbaa !2432
  %1018 = trunc i64 %1015 to i32
  %1019 = and i32 %1018, 255
  %1020 = call i32 @llvm.ctpop.i32(i32 %1019) #17
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  %1023 = xor i8 %1022, 1
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1023, i8* %1024, align 1, !tbaa !2446
  %1025 = icmp eq i8 %1016, 0
  %1026 = zext i1 %1025 to i8
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1026, i8* %1027, align 1, !tbaa !2448
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1028, align 1, !tbaa !2449
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1029, align 1, !tbaa !2450
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1030, align 1, !tbaa !2447
  %1031 = load i64, i64* %PC
  %1032 = add i64 %1031, 11
  %1033 = load i64, i64* %PC
  %1034 = add i64 %1033, 6
  %1035 = load i64, i64* %PC
  %1036 = add i64 %1035, 6
  store i64 %1036, i64* %PC
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1038 = load i8, i8* %1037, align 1, !tbaa !2448
  %1039 = icmp eq i8 %1038, 0
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1042 = select i1 %1039, i64 %1032, i64 %1034
  store i64 %1042, i64* %1041, align 8, !tbaa !2428
  %1043 = load i8, i8* %BRANCH_TAKEN
  %1044 = icmp eq i8 %1043, 1
  br i1 %1044, label %block_400d66, label %block_400d61

block_400fc1:                                     ; preds = %block_400e86
  %1045 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1046 = load i64, i64* %RBP
  %1047 = sub i64 %1046, 152
  %1048 = load i64, i64* %PC
  %1049 = add i64 %1048, 8
  store i64 %1049, i64* %PC
  %1050 = inttoptr i64 %1047 to double*
  %1051 = load double, double* %1050
  %1052 = bitcast i8* %1045 to double*
  store double %1051, double* %1052, align 1, !tbaa !2452
  %1053 = getelementptr inbounds i8, i8* %1045, i64 8
  %1054 = bitcast i8* %1053 to double*
  store double 0.000000e+00, double* %1054, align 1, !tbaa !2452
  %1055 = load i64, i64* %RBP
  %1056 = sub i64 %1055, 160
  %1057 = bitcast %union.vec128_t* %XMM0 to i8*
  %1058 = load i64, i64* %PC
  %1059 = add i64 %1058, 8
  store i64 %1059, i64* %PC
  %1060 = bitcast i8* %1057 to double*
  %1061 = load double, double* %1060, align 1
  %1062 = inttoptr i64 %1056 to double*
  store double %1061, double* %1062
  %1063 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1064 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1065 = load i64, i64* %RBP
  %1066 = sub i64 %1065, 144
  %1067 = load i64, i64* %PC
  %1068 = add i64 %1067, 8
  store i64 %1068, i64* %PC
  %1069 = bitcast i8* %1064 to double*
  %1070 = load double, double* %1069, align 1
  %1071 = getelementptr inbounds i8, i8* %1064, i64 8
  %1072 = bitcast i8* %1071 to i64*
  %1073 = load i64, i64* %1072, align 1
  %1074 = inttoptr i64 %1066 to double*
  %1075 = load double, double* %1074
  %1076 = fmul double %1070, %1075
  %1077 = bitcast i8* %1063 to double*
  store double %1076, double* %1077, align 1, !tbaa !2452
  %1078 = getelementptr inbounds i8, i8* %1063, i64 8
  %1079 = bitcast i8* %1078 to i64*
  store i64 %1073, i64* %1079, align 1, !tbaa !2452
  %1080 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1081 = load i64, i64* %RBP
  %1082 = sub i64 %1081, 128
  %1083 = load i64, i64* %PC
  %1084 = add i64 %1083, 5
  store i64 %1084, i64* %PC
  %1085 = inttoptr i64 %1082 to double*
  %1086 = load double, double* %1085
  %1087 = bitcast i8* %1080 to double*
  store double %1086, double* %1087, align 1, !tbaa !2452
  %1088 = getelementptr inbounds i8, i8* %1080, i64 8
  %1089 = bitcast i8* %1088 to double*
  store double 0.000000e+00, double* %1089, align 1, !tbaa !2452
  %1090 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1091 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1092 = load i64, i64* %RBP
  %1093 = sub i64 %1092, 136
  %1094 = load i64, i64* %PC
  %1095 = add i64 %1094, 8
  store i64 %1095, i64* %PC
  %1096 = bitcast i8* %1091 to double*
  %1097 = load double, double* %1096, align 1
  %1098 = getelementptr inbounds i8, i8* %1091, i64 8
  %1099 = bitcast i8* %1098 to i64*
  %1100 = load i64, i64* %1099, align 1
  %1101 = inttoptr i64 %1093 to double*
  %1102 = load double, double* %1101
  %1103 = fmul double %1097, %1102
  %1104 = bitcast i8* %1090 to double*
  store double %1103, double* %1104, align 1, !tbaa !2452
  %1105 = getelementptr inbounds i8, i8* %1090, i64 8
  %1106 = bitcast i8* %1105 to i64*
  store i64 %1100, i64* %1106, align 1, !tbaa !2452
  %1107 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1108 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1109 = bitcast %union.vec128_t* %XMM1 to i8*
  %1110 = load i64, i64* %PC
  %1111 = add i64 %1110, 4
  store i64 %1111, i64* %PC
  %1112 = bitcast i8* %1108 to double*
  %1113 = load double, double* %1112, align 1
  %1114 = getelementptr inbounds i8, i8* %1108, i64 8
  %1115 = bitcast i8* %1114 to i64*
  %1116 = load i64, i64* %1115, align 1
  %1117 = bitcast i8* %1109 to double*
  %1118 = load double, double* %1117, align 1
  %1119 = fsub double %1113, %1118
  %1120 = bitcast i8* %1107 to double*
  store double %1119, double* %1120, align 1, !tbaa !2452
  %1121 = getelementptr inbounds i8, i8* %1107, i64 8
  %1122 = bitcast i8* %1121 to i64*
  store i64 %1116, i64* %1122, align 1, !tbaa !2452
  %1123 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1124 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1125 = load i64, i64* %RBP
  %1126 = sub i64 %1125, 152
  %1127 = load i64, i64* %PC
  %1128 = add i64 %1127, 8
  store i64 %1128, i64* %PC
  %1129 = bitcast i8* %1124 to double*
  %1130 = load double, double* %1129, align 1
  %1131 = getelementptr inbounds i8, i8* %1124, i64 8
  %1132 = bitcast i8* %1131 to i64*
  %1133 = load i64, i64* %1132, align 1
  %1134 = inttoptr i64 %1126 to double*
  %1135 = load double, double* %1134
  %1136 = fadd double %1130, %1135
  %1137 = bitcast i8* %1123 to double*
  store double %1136, double* %1137, align 1, !tbaa !2452
  %1138 = getelementptr inbounds i8, i8* %1123, i64 8
  %1139 = bitcast i8* %1138 to i64*
  store i64 %1133, i64* %1139, align 1, !tbaa !2452
  %1140 = load i64, i64* %RBP
  %1141 = sub i64 %1140, 152
  %1142 = bitcast %union.vec128_t* %XMM0 to i8*
  %1143 = load i64, i64* %PC
  %1144 = add i64 %1143, 8
  store i64 %1144, i64* %PC
  %1145 = bitcast i8* %1142 to double*
  %1146 = load double, double* %1145, align 1
  %1147 = inttoptr i64 %1141 to double*
  store double %1146, double* %1147
  %1148 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1149 = load i64, i64* %RBP
  %1150 = sub i64 %1149, 128
  %1151 = load i64, i64* %PC
  %1152 = add i64 %1151, 5
  store i64 %1152, i64* %PC
  %1153 = inttoptr i64 %1150 to double*
  %1154 = load double, double* %1153
  %1155 = bitcast i8* %1148 to double*
  store double %1154, double* %1155, align 1, !tbaa !2452
  %1156 = getelementptr inbounds i8, i8* %1148, i64 8
  %1157 = bitcast i8* %1156 to double*
  store double 0.000000e+00, double* %1157, align 1, !tbaa !2452
  %1158 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1159 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1160 = load i64, i64* %RBP
  %1161 = sub i64 %1160, 144
  %1162 = load i64, i64* %PC
  %1163 = add i64 %1162, 8
  store i64 %1163, i64* %PC
  %1164 = bitcast i8* %1159 to double*
  %1165 = load double, double* %1164, align 1
  %1166 = getelementptr inbounds i8, i8* %1159, i64 8
  %1167 = bitcast i8* %1166 to i64*
  %1168 = load i64, i64* %1167, align 1
  %1169 = inttoptr i64 %1161 to double*
  %1170 = load double, double* %1169
  %1171 = fmul double %1165, %1170
  %1172 = bitcast i8* %1158 to double*
  store double %1171, double* %1172, align 1, !tbaa !2452
  %1173 = getelementptr inbounds i8, i8* %1158, i64 8
  %1174 = bitcast i8* %1173 to i64*
  store i64 %1168, i64* %1174, align 1, !tbaa !2452
  %1175 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1176 = load i64, i64* %RBP
  %1177 = sub i64 %1176, 160
  %1178 = load i64, i64* %PC
  %1179 = add i64 %1178, 8
  store i64 %1179, i64* %PC
  %1180 = inttoptr i64 %1177 to double*
  %1181 = load double, double* %1180
  %1182 = bitcast i8* %1175 to double*
  store double %1181, double* %1182, align 1, !tbaa !2452
  %1183 = getelementptr inbounds i8, i8* %1175, i64 8
  %1184 = bitcast i8* %1183 to double*
  store double 0.000000e+00, double* %1184, align 1, !tbaa !2452
  %1185 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1186 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1187 = load i64, i64* %RBP
  %1188 = sub i64 %1187, 136
  %1189 = load i64, i64* %PC
  %1190 = add i64 %1189, 8
  store i64 %1190, i64* %PC
  %1191 = bitcast i8* %1186 to double*
  %1192 = load double, double* %1191, align 1
  %1193 = getelementptr inbounds i8, i8* %1186, i64 8
  %1194 = bitcast i8* %1193 to i64*
  %1195 = load i64, i64* %1194, align 1
  %1196 = inttoptr i64 %1188 to double*
  %1197 = load double, double* %1196
  %1198 = fmul double %1192, %1197
  %1199 = bitcast i8* %1185 to double*
  store double %1198, double* %1199, align 1, !tbaa !2452
  %1200 = getelementptr inbounds i8, i8* %1185, i64 8
  %1201 = bitcast i8* %1200 to i64*
  store i64 %1195, i64* %1201, align 1, !tbaa !2452
  %1202 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1203 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1204 = bitcast %union.vec128_t* %XMM1 to i8*
  %1205 = load i64, i64* %PC
  %1206 = add i64 %1205, 4
  store i64 %1206, i64* %PC
  %1207 = bitcast i8* %1203 to double*
  %1208 = load double, double* %1207, align 1
  %1209 = getelementptr inbounds i8, i8* %1203, i64 8
  %1210 = bitcast i8* %1209 to i64*
  %1211 = load i64, i64* %1210, align 1
  %1212 = bitcast i8* %1204 to double*
  %1213 = load double, double* %1212, align 1
  %1214 = fadd double %1208, %1213
  %1215 = bitcast i8* %1202 to double*
  store double %1214, double* %1215, align 1, !tbaa !2452
  %1216 = getelementptr inbounds i8, i8* %1202, i64 8
  %1217 = bitcast i8* %1216 to i64*
  store i64 %1211, i64* %1217, align 1, !tbaa !2452
  %1218 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1219 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1220 = load i64, i64* %RBP
  %1221 = sub i64 %1220, 128
  %1222 = load i64, i64* %PC
  %1223 = add i64 %1222, 5
  store i64 %1223, i64* %PC
  %1224 = bitcast i8* %1219 to double*
  %1225 = load double, double* %1224, align 1
  %1226 = getelementptr inbounds i8, i8* %1219, i64 8
  %1227 = bitcast i8* %1226 to i64*
  %1228 = load i64, i64* %1227, align 1
  %1229 = inttoptr i64 %1221 to double*
  %1230 = load double, double* %1229
  %1231 = fadd double %1225, %1230
  %1232 = bitcast i8* %1218 to double*
  store double %1231, double* %1232, align 1, !tbaa !2452
  %1233 = getelementptr inbounds i8, i8* %1218, i64 8
  %1234 = bitcast i8* %1233 to i64*
  store i64 %1228, i64* %1234, align 1, !tbaa !2452
  %1235 = load i64, i64* %RBP
  %1236 = sub i64 %1235, 128
  %1237 = bitcast %union.vec128_t* %XMM0 to i8*
  %1238 = load i64, i64* %PC
  %1239 = add i64 %1238, 5
  store i64 %1239, i64* %PC
  %1240 = bitcast i8* %1237 to double*
  %1241 = load double, double* %1240, align 1
  %1242 = inttoptr i64 %1236 to double*
  store double %1241, double* %1242
  %1243 = load i64, i64* %RBP
  %1244 = sub i64 %1243, 48
  %1245 = load i64, i64* %PC
  %1246 = add i64 %1245, 3
  store i64 %1246, i64* %PC
  %1247 = inttoptr i64 %1244 to i32*
  %1248 = load i32, i32* %1247
  %1249 = zext i32 %1248 to i64
  store i64 %1249, i64* %RAX, align 8, !tbaa !2428
  %1250 = load i64, i64* %RAX
  %1251 = load i64, i64* %RBP
  %1252 = sub i64 %1251, 36
  %1253 = load i64, i64* %PC
  %1254 = add i64 %1253, 3
  store i64 %1254, i64* %PC
  %1255 = trunc i64 %1250 to i32
  %1256 = inttoptr i64 %1252 to i32*
  %1257 = load i32, i32* %1256
  %1258 = add i32 %1257, %1255
  %1259 = zext i32 %1258 to i64
  store i64 %1259, i64* %RAX, align 8, !tbaa !2428
  %1260 = icmp ult i32 %1258, %1255
  %1261 = icmp ult i32 %1258, %1257
  %1262 = or i1 %1260, %1261
  %1263 = zext i1 %1262 to i8
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1263, i8* %1264, align 1, !tbaa !2432
  %1265 = and i32 %1258, 255
  %1266 = call i32 @llvm.ctpop.i32(i32 %1265) #17
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  %1269 = xor i8 %1268, 1
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1269, i8* %1270, align 1, !tbaa !2446
  %1271 = xor i32 %1257, %1255
  %1272 = xor i32 %1271, %1258
  %1273 = lshr i32 %1272, 4
  %1274 = trunc i32 %1273 to i8
  %1275 = and i8 %1274, 1
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1275, i8* %1276, align 1, !tbaa !2447
  %1277 = icmp eq i32 %1258, 0
  %1278 = zext i1 %1277 to i8
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1278, i8* %1279, align 1, !tbaa !2448
  %1280 = lshr i32 %1258, 31
  %1281 = trunc i32 %1280 to i8
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1281, i8* %1282, align 1, !tbaa !2449
  %1283 = lshr i32 %1255, 31
  %1284 = lshr i32 %1257, 31
  %1285 = xor i32 %1280, %1283
  %1286 = xor i32 %1280, %1284
  %1287 = add nuw nsw i32 %1285, %1286
  %1288 = icmp eq i32 %1287, 2
  %1289 = zext i1 %1288 to i8
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1289, i8* %1290, align 1, !tbaa !2450
  %1291 = load i64, i64* %RBP
  %1292 = sub i64 %1291, 36
  %1293 = load i32, i32* %EAX
  %1294 = zext i32 %1293 to i64
  %1295 = load i64, i64* %PC
  %1296 = add i64 %1295, 3
  store i64 %1296, i64* %PC
  %1297 = inttoptr i64 %1292 to i32*
  store i32 %1293, i32* %1297
  %1298 = load i64, i64* %PC
  %1299 = sub i64 %1298, 442
  %1300 = load i64, i64* %PC
  %1301 = add i64 %1300, 5
  store i64 %1301, i64* %PC
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1299, i64* %1302, align 8, !tbaa !2428
  br label %block_400e74

block_400bc0:                                     ; preds = %block_40103e, %block_400bb3
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.9, %block_400bb3 ], [ %MEMORY.8, %block_40103e ]
  %1303 = load i64, i64* %RBP
  %1304 = sub i64 %1303, 72
  %1305 = load i64, i64* %PC
  %1306 = add i64 %1305, 4
  store i64 %1306, i64* %PC
  %1307 = inttoptr i64 %1304 to i32*
  %1308 = load i32, i32* %1307
  %1309 = sub i32 %1308, 1
  %1310 = icmp ult i32 %1308, 1
  %1311 = zext i1 %1310 to i8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1311, i8* %1312, align 1, !tbaa !2432
  %1313 = and i32 %1309, 255
  %1314 = call i32 @llvm.ctpop.i32(i32 %1313) #17
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  %1317 = xor i8 %1316, 1
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1317, i8* %1318, align 1, !tbaa !2446
  %1319 = xor i32 %1308, 1
  %1320 = xor i32 %1319, %1309
  %1321 = lshr i32 %1320, 4
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1323, i8* %1324, align 1, !tbaa !2447
  %1325 = icmp eq i32 %1309, 0
  %1326 = zext i1 %1325 to i8
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1326, i8* %1327, align 1, !tbaa !2448
  %1328 = lshr i32 %1309, 31
  %1329 = trunc i32 %1328 to i8
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1329, i8* %1330, align 1, !tbaa !2449
  %1331 = lshr i32 %1308, 31
  %1332 = xor i32 %1328, %1331
  %1333 = add nuw nsw i32 %1332, %1331
  %1334 = icmp eq i32 %1333, 2
  %1335 = zext i1 %1334 to i8
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1335, i8* %1336, align 1, !tbaa !2450
  %1337 = load i64, i64* %PC
  %1338 = add i64 %1337, 1170
  %1339 = load i64, i64* %PC
  %1340 = add i64 %1339, 6
  %1341 = load i64, i64* %PC
  %1342 = add i64 %1341, 6
  store i64 %1342, i64* %PC
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1344 = load i8, i8* %1343, align 1, !tbaa !2449
  %1345 = icmp ne i8 %1344, 0
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1347 = load i8, i8* %1346, align 1, !tbaa !2450
  %1348 = icmp ne i8 %1347, 0
  %1349 = xor i1 %1345, %1348
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1352 = select i1 %1349, i64 %1338, i64 %1340
  store i64 %1352, i64* %1351, align 8, !tbaa !2428
  %1353 = load i8, i8* %BRANCH_TAKEN
  %1354 = icmp eq i8 %1353, 1
  br i1 %1354, label %block_401056, label %block_400bca

block_40103e:                                     ; preds = %block_400d9c
  %1355 = load i64, i64* %RBP
  %1356 = sub i64 %1355, 84
  %1357 = load i64, i64* %PC
  %1358 = add i64 %1357, 3
  store i64 %1358, i64* %PC
  %1359 = inttoptr i64 %1356 to i32*
  %1360 = load i32, i32* %1359
  %1361 = zext i32 %1360 to i64
  store i64 %1361, i64* %RAX, align 8, !tbaa !2428
  %1362 = load i64, i64* %RAX
  %1363 = load i64, i64* %RBP
  %1364 = sub i64 %1363, 88
  %1365 = load i64, i64* %PC
  %1366 = add i64 %1365, 4
  store i64 %1366, i64* %PC
  %1367 = inttoptr i64 %1364 to i32*
  %1368 = load i32, i32* %1367
  %1369 = shl i64 %1362, 32
  %1370 = ashr exact i64 %1369, 32
  %1371 = sext i32 %1368 to i64
  %1372 = mul nsw i64 %1371, %1370
  %1373 = trunc i64 %1372 to i32
  %1374 = and i64 %1372, 4294967295
  store i64 %1374, i64* %RAX, align 8, !tbaa !2428
  %1375 = shl i64 %1372, 32
  %1376 = ashr exact i64 %1375, 32
  %1377 = icmp ne i64 %1376, %1372
  %1378 = zext i1 %1377 to i8
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1378, i8* %1379, align 1, !tbaa !2432
  %1380 = and i32 %1373, 255
  %1381 = call i32 @llvm.ctpop.i32(i32 %1380) #17
  %1382 = trunc i32 %1381 to i8
  %1383 = and i8 %1382, 1
  %1384 = xor i8 %1383, 1
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1384, i8* %1385, align 1, !tbaa !2446
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1386, align 1, !tbaa !2447
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1387, align 1, !tbaa !2448
  %1388 = lshr i32 %1373, 31
  %1389 = trunc i32 %1388 to i8
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1389, i8* %1390, align 1, !tbaa !2449
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1378, i8* %1391, align 1, !tbaa !2450
  %1392 = load i64, i64* %RBP
  %1393 = sub i64 %1392, 88
  %1394 = load i32, i32* %EAX
  %1395 = zext i32 %1394 to i64
  %1396 = load i64, i64* %PC
  %1397 = add i64 %1396, 3
  store i64 %1397, i64* %PC
  %1398 = inttoptr i64 %1393 to i32*
  store i32 %1394, i32* %1398
  %1399 = load i64, i64* %RBP
  %1400 = sub i64 %1399, 72
  %1401 = load i64, i64* %PC
  %1402 = add i64 %1401, 3
  store i64 %1402, i64* %PC
  %1403 = inttoptr i64 %1400 to i32*
  %1404 = load i32, i32* %1403
  %1405 = zext i32 %1404 to i64
  store i64 %1405, i64* %RAX, align 8, !tbaa !2428
  %1406 = load i64, i64* %RAX
  %1407 = load i64, i64* %PC
  %1408 = add i64 %1407, 3
  store i64 %1408, i64* %PC
  %1409 = trunc i64 %1406 to i32
  %1410 = add i32 -1, %1409
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %RAX, align 8, !tbaa !2428
  %1412 = icmp ult i32 %1410, %1409
  %1413 = icmp ult i32 %1410, -1
  %1414 = or i1 %1412, %1413
  %1415 = zext i1 %1414 to i8
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1415, i8* %1416, align 1, !tbaa !2432
  %1417 = and i32 %1410, 255
  %1418 = call i32 @llvm.ctpop.i32(i32 %1417) #17
  %1419 = trunc i32 %1418 to i8
  %1420 = and i8 %1419, 1
  %1421 = xor i8 %1420, 1
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1421, i8* %1422, align 1, !tbaa !2446
  %1423 = xor i64 -1, %1406
  %1424 = trunc i64 %1423 to i32
  %1425 = xor i32 %1424, %1410
  %1426 = lshr i32 %1425, 4
  %1427 = trunc i32 %1426 to i8
  %1428 = and i8 %1427, 1
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1428, i8* %1429, align 1, !tbaa !2447
  %1430 = icmp eq i32 %1410, 0
  %1431 = zext i1 %1430 to i8
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1431, i8* %1432, align 1, !tbaa !2448
  %1433 = lshr i32 %1410, 31
  %1434 = trunc i32 %1433 to i8
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1434, i8* %1435, align 1, !tbaa !2449
  %1436 = lshr i32 %1409, 31
  %1437 = xor i32 %1433, %1436
  %1438 = xor i32 %1433, 1
  %1439 = add nuw nsw i32 %1437, %1438
  %1440 = icmp eq i32 %1439, 2
  %1441 = zext i1 %1440 to i8
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1441, i8* %1442, align 1, !tbaa !2450
  %1443 = load i64, i64* %RBP
  %1444 = sub i64 %1443, 72
  %1445 = load i32, i32* %EAX
  %1446 = zext i32 %1445 to i64
  %1447 = load i64, i64* %PC
  %1448 = add i64 %1447, 3
  store i64 %1448, i64* %PC
  %1449 = inttoptr i64 %1444 to i32*
  store i32 %1445, i32* %1449
  %1450 = load i64, i64* %PC
  %1451 = sub i64 %1450, 1169
  %1452 = load i64, i64* %PC
  %1453 = add i64 %1452, 5
  store i64 %1453, i64* %PC
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1451, i64* %1454, align 8, !tbaa !2428
  br label %block_400bc0

block_400c3d:                                     ; preds = %block_400d0d, %block_400c37
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.10, %block_400c37 ], [ %MEMORY.1, %block_400d0d ]
  %1455 = load i64, i64* %RBP
  %1456 = sub i64 %1455, 28
  %1457 = load i64, i64* %PC
  %1458 = add i64 %1457, 3
  store i64 %1458, i64* %PC
  %1459 = inttoptr i64 %1456 to i32*
  %1460 = load i32, i32* %1459
  %1461 = zext i32 %1460 to i64
  store i64 %1461, i64* %RAX, align 8, !tbaa !2428
  %1462 = load i64, i64* %RBP
  %1463 = sub i64 %1462, 32
  %1464 = load i64, i64* %PC
  %1465 = add i64 %1464, 3
  store i64 %1465, i64* %PC
  %1466 = inttoptr i64 %1463 to i32*
  %1467 = load i32, i32* %1466
  %1468 = zext i32 %1467 to i64
  store i64 %1468, i64* %RCX, align 8, !tbaa !2428
  %1469 = load i64, i64* %RCX
  %1470 = load i64, i64* %RBP
  %1471 = sub i64 %1470, 48
  %1472 = load i64, i64* %PC
  %1473 = add i64 %1472, 3
  store i64 %1473, i64* %PC
  %1474 = trunc i64 %1469 to i32
  %1475 = inttoptr i64 %1471 to i32*
  %1476 = load i32, i32* %1475
  %1477 = add i32 %1476, %1474
  %1478 = zext i32 %1477 to i64
  store i64 %1478, i64* %RCX, align 8, !tbaa !2428
  %1479 = icmp ult i32 %1477, %1474
  %1480 = icmp ult i32 %1477, %1476
  %1481 = or i1 %1479, %1480
  %1482 = zext i1 %1481 to i8
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1482, i8* %1483, align 1, !tbaa !2432
  %1484 = and i32 %1477, 255
  %1485 = call i32 @llvm.ctpop.i32(i32 %1484) #17
  %1486 = trunc i32 %1485 to i8
  %1487 = and i8 %1486, 1
  %1488 = xor i8 %1487, 1
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1488, i8* %1489, align 1, !tbaa !2446
  %1490 = xor i32 %1476, %1474
  %1491 = xor i32 %1490, %1477
  %1492 = lshr i32 %1491, 4
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1494, i8* %1495, align 1, !tbaa !2447
  %1496 = icmp eq i32 %1477, 0
  %1497 = zext i1 %1496 to i8
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1497, i8* %1498, align 1, !tbaa !2448
  %1499 = lshr i32 %1477, 31
  %1500 = trunc i32 %1499 to i8
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1500, i8* %1501, align 1, !tbaa !2449
  %1502 = lshr i32 %1474, 31
  %1503 = lshr i32 %1476, 31
  %1504 = xor i32 %1499, %1502
  %1505 = xor i32 %1499, %1503
  %1506 = add nuw nsw i32 %1504, %1505
  %1507 = icmp eq i32 %1506, 2
  %1508 = zext i1 %1507 to i8
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1508, i8* %1509, align 1, !tbaa !2450
  %1510 = load i64, i64* %RCX
  %1511 = load i64, i64* %PC
  %1512 = add i64 %1511, 3
  store i64 %1512, i64* %PC
  %1513 = trunc i64 %1510 to i32
  %1514 = sub i32 %1513, 2
  %1515 = zext i32 %1514 to i64
  store i64 %1515, i64* %RCX, align 8, !tbaa !2428
  %1516 = icmp ult i32 %1513, 2
  %1517 = zext i1 %1516 to i8
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1517, i8* %1518, align 1, !tbaa !2432
  %1519 = and i32 %1514, 255
  %1520 = call i32 @llvm.ctpop.i32(i32 %1519) #17
  %1521 = trunc i32 %1520 to i8
  %1522 = and i8 %1521, 1
  %1523 = xor i8 %1522, 1
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1523, i8* %1524, align 1, !tbaa !2446
  %1525 = xor i64 2, %1510
  %1526 = trunc i64 %1525 to i32
  %1527 = xor i32 %1526, %1514
  %1528 = lshr i32 %1527, 4
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1530, i8* %1531, align 1, !tbaa !2447
  %1532 = icmp eq i32 %1514, 0
  %1533 = zext i1 %1532 to i8
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1533, i8* %1534, align 1, !tbaa !2448
  %1535 = lshr i32 %1514, 31
  %1536 = trunc i32 %1535 to i8
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1536, i8* %1537, align 1, !tbaa !2449
  %1538 = lshr i32 %1513, 31
  %1539 = xor i32 %1535, %1538
  %1540 = add nuw nsw i32 %1539, %1538
  %1541 = icmp eq i32 %1540, 2
  %1542 = zext i1 %1541 to i8
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1542, i8* %1543, align 1, !tbaa !2450
  %1544 = load i32, i32* %EAX
  %1545 = zext i32 %1544 to i64
  %1546 = load i32, i32* %ECX
  %1547 = zext i32 %1546 to i64
  %1548 = load i64, i64* %PC
  %1549 = add i64 %1548, 2
  store i64 %1549, i64* %PC
  %1550 = sub i32 %1544, %1546
  %1551 = icmp ult i32 %1544, %1546
  %1552 = zext i1 %1551 to i8
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1552, i8* %1553, align 1, !tbaa !2432
  %1554 = and i32 %1550, 255
  %1555 = call i32 @llvm.ctpop.i32(i32 %1554) #17
  %1556 = trunc i32 %1555 to i8
  %1557 = and i8 %1556, 1
  %1558 = xor i8 %1557, 1
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1558, i8* %1559, align 1, !tbaa !2446
  %1560 = xor i64 %1547, %1545
  %1561 = trunc i64 %1560 to i32
  %1562 = xor i32 %1561, %1550
  %1563 = lshr i32 %1562, 4
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1565, i8* %1566, align 1, !tbaa !2447
  %1567 = icmp eq i32 %1550, 0
  %1568 = zext i1 %1567 to i8
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1568, i8* %1569, align 1, !tbaa !2448
  %1570 = lshr i32 %1550, 31
  %1571 = trunc i32 %1570 to i8
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1571, i8* %1572, align 1, !tbaa !2449
  %1573 = lshr i32 %1544, 31
  %1574 = lshr i32 %1546, 31
  %1575 = xor i32 %1574, %1573
  %1576 = xor i32 %1570, %1573
  %1577 = add nuw nsw i32 %1576, %1575
  %1578 = icmp eq i32 %1577, 2
  %1579 = zext i1 %1578 to i8
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1579, i8* %1580, align 1, !tbaa !2450
  %1581 = load i64, i64* %PC
  %1582 = add i64 %1581, 213
  %1583 = load i64, i64* %PC
  %1584 = add i64 %1583, 6
  %1585 = load i64, i64* %PC
  %1586 = add i64 %1585, 6
  store i64 %1586, i64* %PC
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1588 = load i8, i8* %1587, align 1, !tbaa !2448
  %1589 = icmp eq i8 %1588, 0
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1591 = load i8, i8* %1590, align 1, !tbaa !2449
  %1592 = icmp ne i8 %1591, 0
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1594 = load i8, i8* %1593, align 1, !tbaa !2450
  %1595 = icmp ne i8 %1594, 0
  %1596 = xor i1 %1592, %1595
  %1597 = xor i1 %1596, true
  %1598 = and i1 %1589, %1597
  %1599 = zext i1 %1598 to i8
  store i8 %1599, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1601 = select i1 %1598, i64 %1582, i64 %1584
  store i64 %1601, i64* %1600, align 8, !tbaa !2428
  %1602 = load i8, i8* %BRANCH_TAKEN
  %1603 = icmp eq i8 %1602, 1
  br i1 %1603, label %block_400d20, label %block_400c51

block_400ea0:                                     ; preds = %block_400eac, %block_400e9a
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.11, %block_400e9a ], [ %MEMORY.5, %block_400eac ]
  %1604 = load i64, i64* %RBP
  %1605 = sub i64 %1604, 32
  %1606 = load i64, i64* %PC
  %1607 = add i64 %1606, 3
  store i64 %1607, i64* %PC
  %1608 = inttoptr i64 %1605 to i32*
  %1609 = load i32, i32* %1608
  %1610 = zext i32 %1609 to i64
  store i64 %1610, i64* %RAX, align 8, !tbaa !2428
  %1611 = load i32, i32* %EAX
  %1612 = zext i32 %1611 to i64
  %1613 = load i64, i64* %RBP
  %1614 = sub i64 %1613, 56
  %1615 = load i64, i64* %PC
  %1616 = add i64 %1615, 3
  store i64 %1616, i64* %PC
  %1617 = inttoptr i64 %1614 to i32*
  %1618 = load i32, i32* %1617
  %1619 = sub i32 %1611, %1618
  %1620 = icmp ult i32 %1611, %1618
  %1621 = zext i1 %1620 to i8
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1621, i8* %1622, align 1, !tbaa !2432
  %1623 = and i32 %1619, 255
  %1624 = call i32 @llvm.ctpop.i32(i32 %1623) #17
  %1625 = trunc i32 %1624 to i8
  %1626 = and i8 %1625, 1
  %1627 = xor i8 %1626, 1
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1627, i8* %1628, align 1, !tbaa !2446
  %1629 = xor i32 %1618, %1611
  %1630 = xor i32 %1629, %1619
  %1631 = lshr i32 %1630, 4
  %1632 = trunc i32 %1631 to i8
  %1633 = and i8 %1632, 1
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1633, i8* %1634, align 1, !tbaa !2447
  %1635 = icmp eq i32 %1619, 0
  %1636 = zext i1 %1635 to i8
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1636, i8* %1637, align 1, !tbaa !2448
  %1638 = lshr i32 %1619, 31
  %1639 = trunc i32 %1638 to i8
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1639, i8* %1640, align 1, !tbaa !2449
  %1641 = lshr i32 %1611, 31
  %1642 = lshr i32 %1618, 31
  %1643 = xor i32 %1642, %1641
  %1644 = xor i32 %1638, %1641
  %1645 = add nuw nsw i32 %1644, %1643
  %1646 = icmp eq i32 %1645, 2
  %1647 = zext i1 %1646 to i8
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1647, i8* %1648, align 1, !tbaa !2450
  %1649 = load i64, i64* %PC
  %1650 = add i64 %1649, 264
  %1651 = load i64, i64* %PC
  %1652 = add i64 %1651, 6
  %1653 = load i64, i64* %PC
  %1654 = add i64 %1653, 6
  store i64 %1654, i64* %PC
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1656 = load i8, i8* %1655, align 1, !tbaa !2448
  %1657 = icmp eq i8 %1656, 0
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1659 = load i8, i8* %1658, align 1, !tbaa !2449
  %1660 = icmp ne i8 %1659, 0
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1662 = load i8, i8* %1661, align 1, !tbaa !2450
  %1663 = icmp ne i8 %1662, 0
  %1664 = xor i1 %1660, %1663
  %1665 = xor i1 %1664, true
  %1666 = and i1 %1657, %1665
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1669 = select i1 %1666, i64 %1650, i64 %1652
  store i64 %1669, i64* %1668, align 8, !tbaa !2428
  %1670 = load i8, i8* %BRANCH_TAKEN
  %1671 = icmp eq i8 %1670, 1
  br i1 %1671, label %block_400fae, label %block_400eac

block_401033:                                     ; preds = %block_400e74
  %1672 = sub i64 %217, 64
  %1673 = load i64, i64* %PC
  %1674 = add i64 %1673, 3
  store i64 %1674, i64* %PC
  %1675 = inttoptr i64 %1672 to i32*
  %1676 = load i32, i32* %1675
  %1677 = zext i32 %1676 to i64
  store i64 %1677, i64* %RAX, align 8, !tbaa !2428
  %1678 = load i64, i64* %RBP
  %1679 = sub i64 %1678, 60
  %1680 = load i32, i32* %EAX
  %1681 = zext i32 %1680 to i64
  %1682 = load i64, i64* %PC
  %1683 = add i64 %1682, 3
  store i64 %1683, i64* %PC
  %1684 = inttoptr i64 %1679 to i32*
  store i32 %1680, i32* %1684
  %1685 = load i64, i64* %PC
  %1686 = sub i64 %1685, 669
  %1687 = load i64, i64* %PC
  %1688 = add i64 %1687, 5
  store i64 %1688, i64* %PC
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1686, i64* %1689, align 8, !tbaa !2428
  br label %block_400d9c

block_400c51:                                     ; preds = %block_400c3d
  %1690 = load i64, i64* %RBP
  %1691 = sub i64 %1690, 28
  %1692 = load i64, i64* %PC
  %1693 = add i64 %1692, 3
  store i64 %1693, i64* %PC
  %1694 = inttoptr i64 %1691 to i32*
  %1695 = load i32, i32* %1694
  %1696 = zext i32 %1695 to i64
  store i64 %1696, i64* %RAX, align 8, !tbaa !2428
  %1697 = load i64, i64* %RBP
  %1698 = sub i64 %1697, 36
  %1699 = load i32, i32* %EAX
  %1700 = zext i32 %1699 to i64
  %1701 = load i64, i64* %PC
  %1702 = add i64 %1701, 3
  store i64 %1702, i64* %PC
  %1703 = inttoptr i64 %1698 to i32*
  store i32 %1699, i32* %1703
  br label %block_400c57

block_400fae:                                     ; preds = %block_400ea0
  %1704 = load i64, i64* %PC
  %1705 = add i64 %1704, 5
  %1706 = load i64, i64* %PC
  %1707 = add i64 %1706, 5
  store i64 %1707, i64* %PC
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1705, i64* %1708, align 8, !tbaa !2428
  %1709 = load i64, i64* %RBP
  %1710 = sub i64 %1709, 28
  %1711 = load i64, i64* %PC
  %1712 = add i64 %1711, 3
  store i64 %1712, i64* %PC
  %1713 = inttoptr i64 %1710 to i32*
  %1714 = load i32, i32* %1713
  %1715 = zext i32 %1714 to i64
  store i64 %1715, i64* %RAX, align 8, !tbaa !2428
  %1716 = load i64, i64* %RAX
  %1717 = load i64, i64* %PC
  %1718 = add i64 %1717, 3
  store i64 %1718, i64* %PC
  %1719 = trunc i64 %1716 to i32
  %1720 = add i32 2, %1719
  %1721 = zext i32 %1720 to i64
  store i64 %1721, i64* %RAX, align 8, !tbaa !2428
  %1722 = icmp ult i32 %1720, %1719
  %1723 = icmp ult i32 %1720, 2
  %1724 = or i1 %1722, %1723
  %1725 = zext i1 %1724 to i8
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1725, i8* %1726, align 1, !tbaa !2432
  %1727 = and i32 %1720, 255
  %1728 = call i32 @llvm.ctpop.i32(i32 %1727) #17
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  %1731 = xor i8 %1730, 1
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1731, i8* %1732, align 1, !tbaa !2446
  %1733 = xor i64 2, %1716
  %1734 = trunc i64 %1733 to i32
  %1735 = xor i32 %1734, %1720
  %1736 = lshr i32 %1735, 4
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1738, i8* %1739, align 1, !tbaa !2447
  %1740 = icmp eq i32 %1720, 0
  %1741 = zext i1 %1740 to i8
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1741, i8* %1742, align 1, !tbaa !2448
  %1743 = lshr i32 %1720, 31
  %1744 = trunc i32 %1743 to i8
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1744, i8* %1745, align 1, !tbaa !2449
  %1746 = lshr i32 %1719, 31
  %1747 = xor i32 %1743, %1746
  %1748 = add nuw nsw i32 %1747, %1743
  %1749 = icmp eq i32 %1748, 2
  %1750 = zext i1 %1749 to i8
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1750, i8* %1751, align 1, !tbaa !2450
  %1752 = load i64, i64* %RBP
  %1753 = sub i64 %1752, 28
  %1754 = load i32, i32* %EAX
  %1755 = zext i32 %1754 to i64
  %1756 = load i64, i64* %PC
  %1757 = add i64 %1756, 3
  store i64 %1757, i64* %PC
  %1758 = inttoptr i64 %1753 to i32*
  store i32 %1754, i32* %1758
  %1759 = load i64, i64* %PC
  %1760 = sub i64 %1759, 310
  %1761 = load i64, i64* %PC
  %1762 = add i64 %1761, 5
  store i64 %1762, i64* %PC
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1760, i64* %1763, align 8, !tbaa !2428
  br label %block_400e86

block_400d25:                                     ; preds = %block_400c2b, %block_400d20
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.10, %block_400c2b ], [ %MEMORY.4, %block_400d20 ]
  %1764 = load i64, i64* %RBP
  %1765 = sub i64 %1764, 52
  %1766 = load i64, i64* %PC
  %1767 = add i64 %1766, 3
  store i64 %1767, i64* %PC
  %1768 = inttoptr i64 %1765 to i32*
  %1769 = load i32, i32* %1768
  %1770 = zext i32 %1769 to i64
  store i64 %1770, i64* %RAX, align 8, !tbaa !2428
  %1771 = load i64, i64* %RAX
  %1772 = load i64, i64* %PC
  %1773 = add i64 %1772, 3
  store i64 %1773, i64* %PC
  %1774 = shl i64 %1771, 32
  %1775 = ashr i64 %1774, 33
  %1776 = trunc i64 %1771 to i8
  %1777 = and i8 %1776, 1
  %1778 = trunc i64 %1775 to i32
  %1779 = and i64 %1775, 4294967295
  store i64 %1779, i64* %RAX, align 8, !tbaa !2428
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1777, i8* %1780, align 1, !tbaa !2451
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1782 = and i32 %1778, 255
  %1783 = call i32 @llvm.ctpop.i32(i32 %1782) #17
  %1784 = trunc i32 %1783 to i8
  %1785 = and i8 %1784, 1
  %1786 = xor i8 %1785, 1
  store i8 %1786, i8* %1781, align 1, !tbaa !2451
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1787, align 1, !tbaa !2451
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1789 = icmp eq i32 %1778, 0
  %1790 = zext i1 %1789 to i8
  store i8 %1790, i8* %1788, align 1, !tbaa !2451
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1792 = lshr i32 %1778, 31
  %1793 = trunc i32 %1792 to i8
  store i8 %1793, i8* %1791, align 1, !tbaa !2451
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1794, align 1, !tbaa !2451
  %1795 = load i64, i64* %RBP
  %1796 = sub i64 %1795, 68
  %1797 = load i32, i32* %EAX
  %1798 = zext i32 %1797 to i64
  %1799 = load i64, i64* %PC
  %1800 = add i64 %1799, 3
  store i64 %1800, i64* %PC
  %1801 = inttoptr i64 %1796 to i32*
  store i32 %1797, i32* %1801
  br label %block_400d2e

block_400d20:                                     ; preds = %block_400c3d
  %1802 = load i64, i64* %PC
  %1803 = add i64 %1802, 5
  %1804 = load i64, i64* %PC
  %1805 = add i64 %1804, 5
  store i64 %1805, i64* %PC
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1803, i64* %1806, align 8, !tbaa !2428
  br label %block_400d25

block_400e9a:                                     ; preds = %block_400e86
  %1807 = load i64, i64* %RBP
  %1808 = sub i64 %1807, 28
  %1809 = load i64, i64* %PC
  %1810 = add i64 %1809, 3
  store i64 %1810, i64* %PC
  %1811 = inttoptr i64 %1808 to i32*
  %1812 = load i32, i32* %1811
  %1813 = zext i32 %1812 to i64
  store i64 %1813, i64* %RAX, align 8, !tbaa !2428
  %1814 = load i64, i64* %RBP
  %1815 = sub i64 %1814, 32
  %1816 = load i32, i32* %EAX
  %1817 = zext i32 %1816 to i64
  %1818 = load i64, i64* %PC
  %1819 = add i64 %1818, 3
  store i64 %1819, i64* %PC
  %1820 = inttoptr i64 %1815 to i32*
  store i32 %1816, i32* %1820
  br label %block_400ea0

block_400d44:                                     ; preds = %block_400d2e
  %1821 = load i64, i64* %RBP
  %1822 = sub i64 %1821, 40
  %1823 = load i64, i64* %PC
  %1824 = add i64 %1823, 3
  store i64 %1824, i64* %PC
  %1825 = inttoptr i64 %1822 to i32*
  %1826 = load i32, i32* %1825
  %1827 = zext i32 %1826 to i64
  store i64 %1827, i64* %RAX, align 8, !tbaa !2428
  %1828 = load i32, i32* %EAX
  %1829 = zext i32 %1828 to i64
  %1830 = load i64, i64* %RBP
  %1831 = sub i64 %1830, 68
  %1832 = load i64, i64* %PC
  %1833 = add i64 %1832, 3
  store i64 %1833, i64* %PC
  %1834 = inttoptr i64 %1831 to i32*
  %1835 = load i32, i32* %1834
  %1836 = sub i32 %1828, %1835
  %1837 = icmp ult i32 %1828, %1835
  %1838 = zext i1 %1837 to i8
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1838, i8* %1839, align 1, !tbaa !2432
  %1840 = and i32 %1836, 255
  %1841 = call i32 @llvm.ctpop.i32(i32 %1840) #17
  %1842 = trunc i32 %1841 to i8
  %1843 = and i8 %1842, 1
  %1844 = xor i8 %1843, 1
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1844, i8* %1845, align 1, !tbaa !2446
  %1846 = xor i32 %1835, %1828
  %1847 = xor i32 %1846, %1836
  %1848 = lshr i32 %1847, 4
  %1849 = trunc i32 %1848 to i8
  %1850 = and i8 %1849, 1
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1850, i8* %1851, align 1, !tbaa !2447
  %1852 = icmp eq i32 %1836, 0
  %1853 = zext i1 %1852 to i8
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1853, i8* %1854, align 1, !tbaa !2448
  %1855 = lshr i32 %1836, 31
  %1856 = trunc i32 %1855 to i8
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1856, i8* %1857, align 1, !tbaa !2449
  %1858 = lshr i32 %1828, 31
  %1859 = lshr i32 %1835, 31
  %1860 = xor i32 %1859, %1858
  %1861 = xor i32 %1855, %1858
  %1862 = add nuw nsw i32 %1861, %1860
  %1863 = icmp eq i32 %1862, 2
  %1864 = zext i1 %1863 to i8
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1864, i8* %1865, align 1, !tbaa !2450
  %1866 = load i64, i64* %PC
  %1867 = add i64 %1866, 3
  store i64 %1867, i64* %PC
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1869 = load i8, i8* %1868, align 1, !tbaa !2448
  %1870 = icmp eq i8 %1869, 0
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1872 = load i8, i8* %1871, align 1, !tbaa !2449
  %1873 = icmp ne i8 %1872, 0
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1875 = load i8, i8* %1874, align 1, !tbaa !2450
  %1876 = icmp ne i8 %1875, 0
  %1877 = xor i1 %1873, %1876
  %1878 = xor i1 %1877, true
  %1879 = and i1 %1870, %1878
  %1880 = zext i1 %1879 to i8
  store i8 %1880, i8* %CL, align 1, !tbaa !2451
  %1881 = load i64, i64* %RBP
  %1882 = sub i64 %1881, 165
  %1883 = load i8, i8* %CL
  %1884 = zext i8 %1883 to i64
  %1885 = load i64, i64* %PC
  %1886 = add i64 %1885, 6
  store i64 %1886, i64* %PC
  %1887 = inttoptr i64 %1882 to i8*
  store i8 %1883, i8* %1887
  br label %block_400d53

block_400d96:                                     ; preds = %block_400c1f
  %1888 = sub i64 %4832, 48
  %1889 = load i64, i64* %PC
  %1890 = add i64 %1889, 3
  store i64 %1890, i64* %PC
  %1891 = inttoptr i64 %1888 to i32*
  %1892 = load i32, i32* %1891
  %1893 = zext i32 %1892 to i64
  store i64 %1893, i64* %RAX, align 8, !tbaa !2428
  %1894 = load i64, i64* %RBP
  %1895 = sub i64 %1894, 60
  %1896 = load i32, i32* %EAX
  %1897 = zext i32 %1896 to i64
  %1898 = load i64, i64* %PC
  %1899 = add i64 %1898, 3
  store i64 %1899, i64* %PC
  %1900 = inttoptr i64 %1895 to i32*
  store i32 %1896, i32* %1900
  br label %block_400d9c

block_400d2e:                                     ; preds = %block_400d25, %block_400d66
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_400d25 ], [ %MEMORY.2, %block_400d66 ]
  %1901 = load i64, i64* %RAX
  %1902 = load i32, i32* %EAX
  %1903 = zext i32 %1902 to i64
  %1904 = load i64, i64* %PC
  %1905 = add i64 %1904, 2
  store i64 %1905, i64* %PC
  %1906 = xor i64 %1903, %1901
  %1907 = trunc i64 %1906 to i32
  %1908 = and i64 %1906, 4294967295
  store i64 %1908, i64* %RAX, align 8, !tbaa !2428
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1909, align 1, !tbaa !2432
  %1910 = and i32 %1907, 255
  %1911 = call i32 @llvm.ctpop.i32(i32 %1910) #17
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  %1914 = xor i8 %1913, 1
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1914, i8* %1915, align 1, !tbaa !2446
  %1916 = icmp eq i32 %1907, 0
  %1917 = zext i1 %1916 to i8
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1917, i8* %1918, align 1, !tbaa !2448
  %1919 = lshr i32 %1907, 31
  %1920 = trunc i32 %1919 to i8
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1920, i8* %1921, align 1, !tbaa !2449
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1922, align 1, !tbaa !2450
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1923, align 1, !tbaa !2447
  %1924 = load i8, i8* %AL
  %1925 = zext i8 %1924 to i64
  %1926 = load i64, i64* %PC
  %1927 = add i64 %1926, 2
  store i64 %1927, i64* %PC
  store i8 %1924, i8* %CL, align 1, !tbaa !2451
  %1928 = load i64, i64* %RBP
  %1929 = sub i64 %1928, 68
  %1930 = load i64, i64* %PC
  %1931 = add i64 %1930, 3
  store i64 %1931, i64* %PC
  %1932 = inttoptr i64 %1929 to i32*
  %1933 = load i32, i32* %1932
  %1934 = zext i32 %1933 to i64
  store i64 %1934, i64* %RAX, align 8, !tbaa !2428
  %1935 = load i32, i32* %EAX
  %1936 = zext i32 %1935 to i64
  %1937 = load i64, i64* %RBP
  %1938 = sub i64 %1937, 48
  %1939 = load i64, i64* %PC
  %1940 = add i64 %1939, 3
  store i64 %1940, i64* %PC
  %1941 = inttoptr i64 %1938 to i32*
  %1942 = load i32, i32* %1941
  %1943 = sub i32 %1935, %1942
  %1944 = icmp ult i32 %1935, %1942
  %1945 = zext i1 %1944 to i8
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1945, i8* %1946, align 1, !tbaa !2432
  %1947 = and i32 %1943, 255
  %1948 = call i32 @llvm.ctpop.i32(i32 %1947) #17
  %1949 = trunc i32 %1948 to i8
  %1950 = and i8 %1949, 1
  %1951 = xor i8 %1950, 1
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1951, i8* %1952, align 1, !tbaa !2446
  %1953 = xor i32 %1942, %1935
  %1954 = xor i32 %1953, %1943
  %1955 = lshr i32 %1954, 4
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1957, i8* %1958, align 1, !tbaa !2447
  %1959 = icmp eq i32 %1943, 0
  %1960 = zext i1 %1959 to i8
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1960, i8* %1961, align 1, !tbaa !2448
  %1962 = lshr i32 %1943, 31
  %1963 = trunc i32 %1962 to i8
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1963, i8* %1964, align 1, !tbaa !2449
  %1965 = lshr i32 %1935, 31
  %1966 = lshr i32 %1942, 31
  %1967 = xor i32 %1966, %1965
  %1968 = xor i32 %1962, %1965
  %1969 = add nuw nsw i32 %1968, %1967
  %1970 = icmp eq i32 %1969, 2
  %1971 = zext i1 %1970 to i8
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1971, i8* %1972, align 1, !tbaa !2450
  %1973 = load i64, i64* %RBP
  %1974 = sub i64 %1973, 165
  %1975 = load i8, i8* %CL
  %1976 = zext i8 %1975 to i64
  %1977 = load i64, i64* %PC
  %1978 = add i64 %1977, 6
  store i64 %1978, i64* %PC
  %1979 = inttoptr i64 %1974 to i8*
  store i8 %1975, i8* %1979
  %1980 = load i64, i64* %PC
  %1981 = add i64 %1980, 21
  %1982 = load i64, i64* %PC
  %1983 = add i64 %1982, 6
  %1984 = load i64, i64* %PC
  %1985 = add i64 %1984, 6
  store i64 %1985, i64* %PC
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1987 = load i8, i8* %1986, align 1, !tbaa !2449
  %1988 = icmp ne i8 %1987, 0
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1990 = load i8, i8* %1989, align 1, !tbaa !2450
  %1991 = icmp ne i8 %1990, 0
  %1992 = xor i1 %1988, %1991
  %1993 = zext i1 %1992 to i8
  store i8 %1993, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1995 = select i1 %1992, i64 %1981, i64 %1983
  store i64 %1995, i64* %1994, align 8, !tbaa !2428
  %1996 = load i8, i8* %BRANCH_TAKEN
  %1997 = icmp eq i8 %1996, 1
  br i1 %1997, label %block_400d53, label %block_400d44

block_400c37:                                     ; preds = %block_400c2b
  %1998 = load i64, i64* %RBP
  %1999 = sub i64 %1998, 32
  %2000 = load i64, i64* %PC
  %2001 = add i64 %2000, 3
  store i64 %2001, i64* %PC
  %2002 = inttoptr i64 %1999 to i32*
  %2003 = load i32, i32* %2002
  %2004 = zext i32 %2003 to i64
  store i64 %2004, i64* %RAX, align 8, !tbaa !2428
  %2005 = load i64, i64* %RBP
  %2006 = sub i64 %2005, 28
  %2007 = load i32, i32* %EAX
  %2008 = zext i32 %2007 to i64
  %2009 = load i64, i64* %PC
  %2010 = add i64 %2009, 3
  store i64 %2010, i64* %PC
  %2011 = inttoptr i64 %2006 to i32*
  store i32 %2007, i32* %2011
  br label %block_400c3d

block_400da8:                                     ; preds = %block_400d9c
  %2012 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2013 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2014 = bitcast %union.vec128_t* %XMM0 to i8*
  %2015 = load i64, i64* %PC
  %2016 = add i64 %2015, 3
  store i64 %2016, i64* %PC
  %2017 = bitcast i8* %2013 to i64*
  %2018 = load i64, i64* %2017, align 1
  %2019 = getelementptr inbounds i8, i8* %2013, i64 8
  %2020 = bitcast i8* %2019 to i64*
  %2021 = load i64, i64* %2020, align 1
  %2022 = bitcast i8* %2014 to i64*
  %2023 = load i64, i64* %2022, align 1
  %2024 = getelementptr inbounds i8, i8* %2014, i64 8
  %2025 = bitcast i8* %2024 to i64*
  %2026 = load i64, i64* %2025, align 1
  %2027 = xor i64 %2023, %2018
  %2028 = xor i64 %2026, %2021
  %2029 = trunc i64 %2027 to i32
  %2030 = lshr i64 %2027, 32
  %2031 = trunc i64 %2030 to i32
  %2032 = bitcast i8* %2012 to i32*
  store i32 %2029, i32* %2032, align 1, !tbaa !2454
  %2033 = getelementptr inbounds i8, i8* %2012, i64 4
  %2034 = bitcast i8* %2033 to i32*
  store i32 %2031, i32* %2034, align 1, !tbaa !2454
  %2035 = trunc i64 %2028 to i32
  %2036 = getelementptr inbounds i8, i8* %2012, i64 8
  %2037 = bitcast i8* %2036 to i32*
  store i32 %2035, i32* %2037, align 1, !tbaa !2454
  %2038 = lshr i64 %2028, 32
  %2039 = trunc i64 %2038 to i32
  %2040 = getelementptr inbounds i8, i8* %2012, i64 12
  %2041 = bitcast i8* %2040 to i32*
  store i32 %2039, i32* %2041, align 1, !tbaa !2454
  %2042 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2043 = load i64, i64* %PC
  %2044 = add i64 %2043, 8
  store i64 %2044, i64* %PC
  %2045 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 40) to double*)
  %2046 = bitcast i8* %2042 to double*
  store double %2045, double* %2046, align 1, !tbaa !2452
  %2047 = getelementptr inbounds i8, i8* %2042, i64 8
  %2048 = bitcast i8* %2047 to double*
  store double 0.000000e+00, double* %2048, align 1, !tbaa !2452
  %2049 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %2050 = load i64, i64* %PC
  %2051 = add i64 %2050, 8
  store i64 %2051, i64* %PC
  %2052 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 48) to double*)
  %2053 = bitcast i8* %2049 to double*
  store double %2052, double* %2053, align 1, !tbaa !2452
  %2054 = getelementptr inbounds i8, i8* %2049, i64 8
  %2055 = bitcast i8* %2054 to double*
  store double 0.000000e+00, double* %2055, align 1, !tbaa !2452
  %2056 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %2057 = load i64, i64* %PC
  %2058 = add i64 %2057, 8
  store i64 %2058, i64* %PC
  %2059 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 56) to double*)
  %2060 = bitcast i8* %2056 to double*
  store double %2059, double* %2060, align 1, !tbaa !2452
  %2061 = getelementptr inbounds i8, i8* %2056, i64 8
  %2062 = bitcast i8* %2061 to double*
  store double 0.000000e+00, double* %2062, align 1, !tbaa !2452
  %2063 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %2064 = load i64, i64* %PC
  %2065 = add i64 %2064, 8
  store i64 %2065, i64* %PC
  %2066 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010e0__rodata_type* @seg_4010e0__rodata to i64), i64 64) to double*)
  %2067 = bitcast i8* %2063 to double*
  store double %2066, double* %2067, align 1, !tbaa !2452
  %2068 = getelementptr inbounds i8, i8* %2063, i64 8
  %2069 = bitcast i8* %2068 to double*
  store double 0.000000e+00, double* %2069, align 1, !tbaa !2452
  %2070 = load i64, i64* %RBP
  %2071 = sub i64 %2070, 60
  %2072 = load i64, i64* %PC
  %2073 = add i64 %2072, 3
  store i64 %2073, i64* %PC
  %2074 = inttoptr i64 %2071 to i32*
  %2075 = load i32, i32* %2074
  %2076 = zext i32 %2075 to i64
  store i64 %2076, i64* %RAX, align 8, !tbaa !2428
  %2077 = load i64, i64* %RAX
  %2078 = load i64, i64* %PC
  %2079 = add i64 %2078, 3
  store i64 %2079, i64* %PC
  %2080 = trunc i64 %2077 to i32
  %2081 = shl i32 %2080, 1
  %2082 = icmp slt i32 %2080, 0
  %2083 = icmp slt i32 %2081, 0
  %2084 = xor i1 %2082, %2083
  %2085 = zext i32 %2081 to i64
  store i64 %2085, i64* %RAX, align 8, !tbaa !2428
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2087 = zext i1 %2082 to i8
  store i8 %2087, i8* %2086, align 1, !tbaa !2451
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2089 = and i32 %2081, 254
  %2090 = call i32 @llvm.ctpop.i32(i32 %2089) #17
  %2091 = trunc i32 %2090 to i8
  %2092 = and i8 %2091, 1
  %2093 = xor i8 %2092, 1
  store i8 %2093, i8* %2088, align 1, !tbaa !2451
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2094, align 1, !tbaa !2451
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2096 = icmp eq i32 %2081, 0
  %2097 = zext i1 %2096 to i8
  store i8 %2097, i8* %2095, align 1, !tbaa !2451
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2099 = lshr i32 %2081, 31
  %2100 = trunc i32 %2099 to i8
  store i8 %2100, i8* %2098, align 1, !tbaa !2451
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2102 = zext i1 %2084 to i8
  store i8 %2102, i8* %2101, align 1, !tbaa !2451
  %2103 = load i64, i64* %RBP
  %2104 = sub i64 %2103, 64
  %2105 = load i32, i32* %EAX
  %2106 = zext i32 %2105 to i64
  %2107 = load i64, i64* %PC
  %2108 = add i64 %2107, 3
  store i64 %2108, i64* %PC
  %2109 = inttoptr i64 %2104 to i32*
  store i32 %2105, i32* %2109
  %2110 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %2111 = load i64, i64* %RBP
  %2112 = sub i64 %2111, 24
  %2113 = load i64, i64* %PC
  %2114 = add i64 %2113, 5
  store i64 %2114, i64* %PC
  %2115 = inttoptr i64 %2112 to i32*
  %2116 = load i32, i32* %2115
  %2117 = sitofp i32 %2116 to double
  %2118 = bitcast i8* %2110 to double*
  store double %2117, double* %2118, align 1, !tbaa !2452
  %2119 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %2120 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %2121 = bitcast %union.vec128_t* %XMM4 to i8*
  %2122 = load i64, i64* %PC
  %2123 = add i64 %2122, 4
  store i64 %2123, i64* %PC
  %2124 = bitcast i8* %2120 to double*
  %2125 = load double, double* %2124, align 1
  %2126 = getelementptr inbounds i8, i8* %2120, i64 8
  %2127 = bitcast i8* %2126 to i64*
  %2128 = load i64, i64* %2127, align 1
  %2129 = bitcast i8* %2121 to double*
  %2130 = load double, double* %2129, align 1
  %2131 = fmul double %2125, %2130
  %2132 = bitcast i8* %2119 to double*
  store double %2131, double* %2132, align 1, !tbaa !2452
  %2133 = getelementptr inbounds i8, i8* %2119, i64 8
  %2134 = bitcast i8* %2133 to i64*
  store i64 %2128, i64* %2134, align 1, !tbaa !2452
  %2135 = load i64, i64* %RBP
  %2136 = sub i64 %2135, 64
  %2137 = load i64, i64* %PC
  %2138 = add i64 %2137, 3
  store i64 %2138, i64* %PC
  %2139 = inttoptr i64 %2136 to i32*
  %2140 = load i32, i32* %2139
  %2141 = zext i32 %2140 to i64
  store i64 %2141, i64* %RAX, align 8, !tbaa !2428
  %2142 = load i64, i64* %PC
  %2143 = add i64 %2142, 1
  store i64 %2143, i64* %PC
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2146 = bitcast %union.anon* %2145 to i32*
  %2147 = load i32, i32* %2146, align 8, !tbaa !2454
  %2148 = sext i32 %2147 to i64
  %2149 = lshr i64 %2148, 32
  store i64 %2149, i64* %2144, align 8, !tbaa !2428
  %2150 = load i64, i64* %RBP
  %2151 = sub i64 %2150, 48
  %2152 = load i64, i64* %PC
  %2153 = add i64 %2152, 3
  store i64 %2153, i64* %PC
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2155 = bitcast %union.anon* %2154 to i32*
  %2156 = load i32, i32* %2155, align 8, !tbaa !2454
  %2157 = zext i32 %2156 to i64
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2159 = bitcast %union.anon* %2158 to i32*
  %2160 = load i32, i32* %2159, align 8, !tbaa !2454
  %2161 = zext i32 %2160 to i64
  %2162 = inttoptr i64 %2151 to i32*
  %2163 = load i32, i32* %2162
  %2164 = sext i32 %2163 to i64
  %2165 = shl nuw i64 %2161, 32
  %2166 = or i64 %2165, %2157
  %2167 = sdiv i64 %2166, %2164
  %2168 = shl i64 %2167, 32
  %2169 = ashr exact i64 %2168, 32
  %2170 = icmp eq i64 %2167, %2169
  br i1 %2170, label %2175, label %2171

; <label>:2171:                                   ; preds = %block_400da8
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2173 = load i64, i64* %2172, align 8, !tbaa !2428
  %2174 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2173, %struct.Memory* %MEMORY.8) #18
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:2175:                                   ; preds = %block_400da8
  %2176 = srem i64 %2166, %2164
  %2177 = getelementptr inbounds %union.anon, %union.anon* %2154, i64 0, i32 0
  %2178 = and i64 %2167, 4294967295
  store i64 %2178, i64* %2177, align 8, !tbaa !2428
  %2179 = getelementptr inbounds %union.anon, %union.anon* %2158, i64 0, i32 0
  %2180 = and i64 %2176, 4294967295
  store i64 %2180, i64* %2179, align 8, !tbaa !2428
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2181, align 1, !tbaa !2432
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2182, align 1, !tbaa !2446
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2183, align 1, !tbaa !2447
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2184, align 1, !tbaa !2448
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2185, align 1, !tbaa !2449
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2186, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %2171, %2175
  %2187 = phi %struct.Memory* [ %2174, %2171 ], [ %MEMORY.8, %2175 ]
  %2188 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %2189 = load i32, i32* %EAX
  %2190 = zext i32 %2189 to i64
  %2191 = load i64, i64* %PC
  %2192 = add i64 %2191, 4
  store i64 %2192, i64* %PC
  %2193 = sitofp i32 %2189 to double
  %2194 = bitcast i8* %2188 to double*
  store double %2193, double* %2194, align 1, !tbaa !2452
  %2195 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %2196 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %2197 = bitcast %union.vec128_t* %XMM4 to i8*
  %2198 = load i64, i64* %PC
  %2199 = add i64 %2198, 4
  store i64 %2199, i64* %PC
  %2200 = bitcast i8* %2196 to double*
  %2201 = load double, double* %2200, align 1
  %2202 = getelementptr inbounds i8, i8* %2196, i64 8
  %2203 = bitcast i8* %2202 to i64*
  %2204 = load i64, i64* %2203, align 1
  %2205 = bitcast i8* %2197 to double*
  %2206 = load double, double* %2205, align 1
  %2207 = fdiv double %2201, %2206
  %2208 = bitcast i8* %2195 to double*
  store double %2207, double* %2208, align 1, !tbaa !2452
  %2209 = getelementptr inbounds i8, i8* %2195, i64 8
  %2210 = bitcast i8* %2209 to i64*
  store i64 %2204, i64* %2210, align 1, !tbaa !2452
  %2211 = load i64, i64* %RBP
  %2212 = sub i64 %2211, 120
  %2213 = bitcast %union.vec128_t* %XMM5 to i8*
  %2214 = load i64, i64* %PC
  %2215 = add i64 %2214, 5
  store i64 %2215, i64* %PC
  %2216 = bitcast i8* %2213 to double*
  %2217 = load double, double* %2216, align 1
  %2218 = inttoptr i64 %2212 to double*
  store double %2217, double* %2218
  %2219 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %2220 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %2221 = load i64, i64* %RBP
  %2222 = sub i64 %2221, 120
  %2223 = load i64, i64* %PC
  %2224 = add i64 %2223, 5
  store i64 %2224, i64* %PC
  %2225 = bitcast i8* %2220 to double*
  %2226 = load double, double* %2225, align 1
  %2227 = getelementptr inbounds i8, i8* %2220, i64 8
  %2228 = bitcast i8* %2227 to i64*
  %2229 = load i64, i64* %2228, align 1
  %2230 = inttoptr i64 %2222 to double*
  %2231 = load double, double* %2230
  %2232 = fmul double %2226, %2231
  %2233 = bitcast i8* %2219 to double*
  store double %2232, double* %2233, align 1, !tbaa !2452
  %2234 = getelementptr inbounds i8, i8* %2219, i64 8
  %2235 = bitcast i8* %2234 to i64*
  store i64 %2229, i64* %2235, align 1, !tbaa !2452
  %2236 = load i64, i64* %RBP
  %2237 = sub i64 %2236, 176
  %2238 = bitcast %union.vec128_t* %XMM0 to i8*
  %2239 = load i64, i64* %PC
  %2240 = add i64 %2239, 8
  store i64 %2240, i64* %PC
  %2241 = bitcast i8* %2238 to double*
  %2242 = load double, double* %2241, align 1
  %2243 = inttoptr i64 %2237 to double*
  store double %2242, double* %2243
  %2244 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2245 = bitcast %union.vec128_t* %XMM3 to i8*
  %2246 = load i64, i64* %PC
  %2247 = add i64 %2246, 3
  store i64 %2247, i64* %PC
  %2248 = bitcast i8* %2245 to <2 x i32>*
  %2249 = load <2 x i32>, <2 x i32>* %2248, align 1
  %2250 = getelementptr inbounds i8, i8* %2245, i64 8
  %2251 = bitcast i8* %2250 to <2 x i32>*
  %2252 = load <2 x i32>, <2 x i32>* %2251, align 1
  %2253 = extractelement <2 x i32> %2249, i32 0
  %2254 = bitcast i8* %2244 to i32*
  store i32 %2253, i32* %2254, align 1, !tbaa !2455
  %2255 = extractelement <2 x i32> %2249, i32 1
  %2256 = getelementptr inbounds i8, i8* %2244, i64 4
  %2257 = bitcast i8* %2256 to i32*
  store i32 %2255, i32* %2257, align 1, !tbaa !2455
  %2258 = extractelement <2 x i32> %2252, i32 0
  %2259 = getelementptr inbounds i8, i8* %2244, i64 8
  %2260 = bitcast i8* %2259 to i32*
  store i32 %2258, i32* %2260, align 1, !tbaa !2455
  %2261 = extractelement <2 x i32> %2252, i32 1
  %2262 = getelementptr inbounds i8, i8* %2244, i64 12
  %2263 = bitcast i8* %2262 to i32*
  store i32 %2261, i32* %2263, align 1, !tbaa !2455
  %2264 = load i64, i64* %RBP
  %2265 = sub i64 %2264, 184
  %2266 = bitcast %union.vec128_t* %XMM2 to i8*
  %2267 = load i64, i64* %PC
  %2268 = add i64 %2267, 8
  store i64 %2268, i64* %PC
  %2269 = bitcast i8* %2266 to double*
  %2270 = load double, double* %2269, align 1
  %2271 = inttoptr i64 %2265 to double*
  store double %2270, double* %2271
  %2272 = load i64, i64* %RBP
  %2273 = sub i64 %2272, 192
  %2274 = bitcast %union.vec128_t* %XMM1 to i8*
  %2275 = load i64, i64* %PC
  %2276 = add i64 %2275, 8
  store i64 %2276, i64* %PC
  %2277 = bitcast i8* %2274 to double*
  %2278 = load double, double* %2277, align 1
  %2279 = inttoptr i64 %2273 to double*
  store double %2278, double* %2279
  %2280 = load i64, i64* %PC
  %2281 = sub i64 %2280, 2177
  %2282 = load i64, i64* %PC
  %2283 = add i64 %2282, 5
  %2284 = load i64, i64* %PC
  %2285 = add i64 %2284, 5
  store i64 %2285, i64* %PC
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2287 = load i64, i64* %2286, align 8, !tbaa !2428
  %2288 = add i64 %2287, -8
  %2289 = inttoptr i64 %2288 to i64*
  store i64 %2283, i64* %2289
  store i64 %2288, i64* %2286, align 8, !tbaa !2428
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2281, i64* %2290, align 8, !tbaa !2428
  %2291 = load i64, i64* %PC
  %2292 = bitcast %struct.State** %state.i1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2292)
  %2293 = bitcast i64* %curr_pc.i2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2293)
  %2294 = bitcast %struct.Memory** %memory.i3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2294)
  call void @llvm.lifetime.start(i64 1, i8* %BRANCH_TAKEN.i4)
  %2295 = bitcast i64* %SS_BASE.i5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2295)
  %2296 = bitcast i64* %ES_BASE.i6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2296)
  %2297 = bitcast i64* %DS_BASE.i7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2297)
  %2298 = bitcast i64* %CS_BASE.i8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2298)
  %2299 = bitcast %struct.State** %STATE.i9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2299)
  %2300 = bitcast %struct.Memory** %MEMORY.i10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2300)
  %2301 = bitcast i64** %_DR0.i11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2301)
  %2302 = bitcast i64** %_DR1.i12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2302)
  %2303 = bitcast i64** %_DR2.i13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2303)
  %2304 = bitcast i64** %_DR3.i14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2304)
  %2305 = bitcast i64** %_DR4.i15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2305)
  %2306 = bitcast i64** %_DR5.i16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2306)
  %2307 = bitcast i64** %_DR6.i17 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2307)
  %2308 = bitcast i64** %_DR7.i18 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2308)
  %2309 = bitcast i64** %CR0.i19 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2309)
  %2310 = bitcast i64** %CR1.i20 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2310)
  %2311 = bitcast i64** %CR2.i21 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2311)
  %2312 = bitcast i64** %CR3.i22 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2312)
  %2313 = bitcast i64** %CR4.i23 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2313)
  %2314 = bitcast i64** %CR8.i24 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2314)
  store %struct.State* %0, %struct.State** %state.i1, align 8, !noalias !2457
  store i64 %2291, i64* %curr_pc.i2, align 8, !noalias !2457
  store %struct.Memory* %2187, %struct.Memory** %memory.i3, align 8, !noalias !2457
  store i8 0, i8* %BRANCH_TAKEN.i4, align 1, !noalias !2457
  store i64 0, i64* %SS_BASE.i5, align 8, !noalias !2457
  store i64 0, i64* %ES_BASE.i6, align 8, !noalias !2457
  store i64 0, i64* %DS_BASE.i7, align 8, !noalias !2457
  store i64 0, i64* %CS_BASE.i8, align 8, !noalias !2457
  store %struct.State* %0, %struct.State** %STATE.i9, align 8, !noalias !2457
  store %struct.Memory* %2187, %struct.Memory** %MEMORY.i10, align 8, !noalias !2457
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 33
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %2317 to i64*
  store i64 %2291, i64* %PC.i25, align 8, !alias.scope !2461, !noalias !2462
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 1
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %2321 = bitcast %union.anon* %2320 to %struct.anon.2*
  %AH.i26 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2321, i32 0, i32 1
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 3
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %2325 = bitcast %union.anon* %2324 to %struct.anon.2*
  %BH.i27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2325, i32 0, i32 1
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 5
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %2329 = bitcast %union.anon* %2328 to %struct.anon.2*
  %CH.i28 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2329, i32 0, i32 1
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 7
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %2333 = bitcast %union.anon* %2332 to %struct.anon.2*
  %DH.i29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2333, i32 0, i32 1
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 1
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %2337 = bitcast %union.anon* %2336 to %struct.anon.2*
  %AL.i30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2337, i32 0, i32 0
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 3
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %2341 = bitcast %union.anon* %2340 to %struct.anon.2*
  %BL.i31 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2341, i32 0, i32 0
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 5
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %2345 = bitcast %union.anon* %2344 to %struct.anon.2*
  %CL.i32 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2345, i32 0, i32 0
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 7
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %2349 = bitcast %union.anon* %2348 to %struct.anon.2*
  %DL.i33 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2349, i32 0, i32 0
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 9
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %2353 = bitcast %union.anon* %2352 to %struct.anon.2*
  %SIL.i34 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2353, i32 0, i32 0
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 11
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %2357 = bitcast %union.anon* %2356 to %struct.anon.2*
  %DIL.i35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2357, i32 0, i32 0
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 13
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %2361 = bitcast %union.anon* %2360 to %struct.anon.2*
  %SPL.i36 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2361, i32 0, i32 0
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 15
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %2365 = bitcast %union.anon* %2364 to %struct.anon.2*
  %BPL.i37 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2365, i32 0, i32 0
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 17
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %2369 = bitcast %union.anon* %2368 to %struct.anon.2*
  %R8B.i38 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2369, i32 0, i32 0
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 19
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %2373 = bitcast %union.anon* %2372 to %struct.anon.2*
  %R9B.i39 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2373, i32 0, i32 0
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 21
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %2377 = bitcast %union.anon* %2376 to %struct.anon.2*
  %R10B.i40 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2377, i32 0, i32 0
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 23
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %2381 = bitcast %union.anon* %2380 to %struct.anon.2*
  %R11B.i41 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2381, i32 0, i32 0
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 25
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %2385 = bitcast %union.anon* %2384 to %struct.anon.2*
  %R12B.i42 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2385, i32 0, i32 0
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 27
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %2389 = bitcast %union.anon* %2388 to %struct.anon.2*
  %R13B.i43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2389, i32 0, i32 0
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 29
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %2393 = bitcast %union.anon* %2392 to %struct.anon.2*
  %R14B.i44 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2393, i32 0, i32 0
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 31
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %2397 = bitcast %union.anon* %2396 to %struct.anon.2*
  %R15B.i45 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2397, i32 0, i32 0
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 1
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %AX.i46 = bitcast %union.anon* %2400 to i16*
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 3
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %BX.i47 = bitcast %union.anon* %2403 to i16*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 5
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %CX.i48 = bitcast %union.anon* %2406 to i16*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 7
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %DX.i49 = bitcast %union.anon* %2409 to i16*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 9
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %SI.i50 = bitcast %union.anon* %2412 to i16*
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 11
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %DI.i51 = bitcast %union.anon* %2415 to i16*
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 13
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %SP.i52 = bitcast %union.anon* %2418 to i16*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 15
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %BP.i53 = bitcast %union.anon* %2421 to i16*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 17
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %R8W.i54 = bitcast %union.anon* %2424 to i16*
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 19
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %R9W.i55 = bitcast %union.anon* %2427 to i16*
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 21
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %R10W.i56 = bitcast %union.anon* %2430 to i16*
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 23
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %R11W.i57 = bitcast %union.anon* %2433 to i16*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 25
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %R12W.i58 = bitcast %union.anon* %2436 to i16*
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 27
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %R13W.i59 = bitcast %union.anon* %2439 to i16*
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 29
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %R14W.i60 = bitcast %union.anon* %2442 to i16*
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 31
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %R15W.i61 = bitcast %union.anon* %2445 to i16*
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 33
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %IP.i62 = bitcast %union.anon* %2448 to i16*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 1
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %EAX.i63 = bitcast %union.anon* %2451 to i32*
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 3
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %EBX.i64 = bitcast %union.anon* %2454 to i32*
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2456 = getelementptr inbounds %struct.GPR, %struct.GPR* %2455, i32 0, i32 5
  %2457 = getelementptr inbounds %struct.Reg, %struct.Reg* %2456, i32 0, i32 0
  %ECX.i65 = bitcast %union.anon* %2457 to i32*
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 7
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %EDX.i66 = bitcast %union.anon* %2460 to i32*
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 9
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %ESI.i67 = bitcast %union.anon* %2463 to i32*
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 11
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %EDI.i68 = bitcast %union.anon* %2466 to i32*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 13
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %ESP.i69 = bitcast %union.anon* %2469 to i32*
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 15
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %EBP.i70 = bitcast %union.anon* %2472 to i32*
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2474 = getelementptr inbounds %struct.GPR, %struct.GPR* %2473, i32 0, i32 33
  %2475 = getelementptr inbounds %struct.Reg, %struct.Reg* %2474, i32 0, i32 0
  %EIP.i71 = bitcast %union.anon* %2475 to i32*
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 17
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %R8D.i72 = bitcast %union.anon* %2478 to i32*
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 19
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %R9D.i73 = bitcast %union.anon* %2481 to i32*
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 21
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %R10D.i74 = bitcast %union.anon* %2484 to i32*
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 23
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %R11D.i75 = bitcast %union.anon* %2487 to i32*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 25
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %R12D.i76 = bitcast %union.anon* %2490 to i32*
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 27
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %R13D.i77 = bitcast %union.anon* %2493 to i32*
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2495 = getelementptr inbounds %struct.GPR, %struct.GPR* %2494, i32 0, i32 29
  %2496 = getelementptr inbounds %struct.Reg, %struct.Reg* %2495, i32 0, i32 0
  %R14D.i78 = bitcast %union.anon* %2496 to i32*
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 31
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %R15D.i79 = bitcast %union.anon* %2499 to i32*
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 1
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %2502 to i64*
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 3
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %RBX.i81 = bitcast %union.anon* %2505 to i64*
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 5
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %2508 to i64*
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 7
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %RDX.i83 = bitcast %union.anon* %2511 to i64*
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 9
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %RSI.i84 = bitcast %union.anon* %2514 to i64*
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 11
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %RDI.i85 = bitcast %union.anon* %2517 to i64*
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 13
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %RSP.i86 = bitcast %union.anon* %2520 to i64*
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 15
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %2523 to i64*
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 17
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %R8.i88 = bitcast %union.anon* %2526 to i64*
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 19
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %R9.i89 = bitcast %union.anon* %2529 to i64*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 21
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %R10.i90 = bitcast %union.anon* %2532 to i64*
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 23
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %R11.i91 = bitcast %union.anon* %2535 to i64*
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 25
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %R12.i92 = bitcast %union.anon* %2538 to i64*
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 27
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %R13.i93 = bitcast %union.anon* %2541 to i64*
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 29
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %R14.i94 = bitcast %union.anon* %2544 to i64*
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2546 = getelementptr inbounds %struct.GPR, %struct.GPR* %2545, i32 0, i32 31
  %2547 = getelementptr inbounds %struct.Reg, %struct.Reg* %2546, i32 0, i32 0
  %R15.i95 = bitcast %union.anon* %2547 to i64*
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2549 = getelementptr inbounds %struct.GPR, %struct.GPR* %2548, i32 0, i32 33
  %2550 = getelementptr inbounds %struct.Reg, %struct.Reg* %2549, i32 0, i32 0
  %RIP.i96 = bitcast %union.anon* %2550 to i64*
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2552 = getelementptr inbounds %struct.Segments, %struct.Segments* %2551, i32 0, i32 1
  %SS.i97 = bitcast %union.SegmentSelector* %2552 to i16*
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2554 = getelementptr inbounds %struct.Segments, %struct.Segments* %2553, i32 0, i32 3
  %ES.i98 = bitcast %union.SegmentSelector* %2554 to i16*
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2556 = getelementptr inbounds %struct.Segments, %struct.Segments* %2555, i32 0, i32 5
  %GS.i99 = bitcast %union.SegmentSelector* %2556 to i16*
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2558 = getelementptr inbounds %struct.Segments, %struct.Segments* %2557, i32 0, i32 7
  %FS.i100 = bitcast %union.SegmentSelector* %2558 to i16*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2560 = getelementptr inbounds %struct.Segments, %struct.Segments* %2559, i32 0, i32 9
  %DS.i101 = bitcast %union.SegmentSelector* %2560 to i16*
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %2562 = getelementptr inbounds %struct.Segments, %struct.Segments* %2561, i32 0, i32 11
  %CS.i102 = bitcast %union.SegmentSelector* %2562 to i16*
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %2564 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %2563, i32 0, i32 5
  %2565 = getelementptr inbounds %struct.Reg, %struct.Reg* %2564, i32 0, i32 0
  %GS_BASE.i103 = bitcast %union.anon* %2565 to i64*
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %2567 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %2566, i32 0, i32 7
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %FS_BASE.i104 = bitcast %union.anon* %2568 to i64*
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2570 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2569, i64 0, i64 0
  %YMM0.i105 = bitcast %union.VectorReg* %2570 to %"class.std::bitset"*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2572 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2571, i64 0, i64 1
  %YMM1.i106 = bitcast %union.VectorReg* %2572 to %"class.std::bitset"*
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2574 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2573, i64 0, i64 2
  %YMM2.i107 = bitcast %union.VectorReg* %2574 to %"class.std::bitset"*
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2576 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2575, i64 0, i64 3
  %YMM3.i108 = bitcast %union.VectorReg* %2576 to %"class.std::bitset"*
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2578 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2577, i64 0, i64 4
  %YMM4.i109 = bitcast %union.VectorReg* %2578 to %"class.std::bitset"*
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2580 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2579, i64 0, i64 5
  %YMM5.i110 = bitcast %union.VectorReg* %2580 to %"class.std::bitset"*
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2582 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2581, i64 0, i64 6
  %YMM6.i111 = bitcast %union.VectorReg* %2582 to %"class.std::bitset"*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2584 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2583, i64 0, i64 7
  %YMM7.i112 = bitcast %union.VectorReg* %2584 to %"class.std::bitset"*
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2586 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2585, i64 0, i64 8
  %YMM8.i113 = bitcast %union.VectorReg* %2586 to %"class.std::bitset"*
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2588 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2587, i64 0, i64 9
  %YMM9.i114 = bitcast %union.VectorReg* %2588 to %"class.std::bitset"*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2590 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2589, i64 0, i64 10
  %YMM10.i115 = bitcast %union.VectorReg* %2590 to %"class.std::bitset"*
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2592 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2591, i64 0, i64 11
  %YMM11.i116 = bitcast %union.VectorReg* %2592 to %"class.std::bitset"*
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2594 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2593, i64 0, i64 12
  %YMM12.i117 = bitcast %union.VectorReg* %2594 to %"class.std::bitset"*
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2596 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2595, i64 0, i64 13
  %YMM13.i118 = bitcast %union.VectorReg* %2596 to %"class.std::bitset"*
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2598 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2597, i64 0, i64 14
  %YMM14.i119 = bitcast %union.VectorReg* %2598 to %"class.std::bitset"*
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2600 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2599, i64 0, i64 15
  %YMM15.i120 = bitcast %union.VectorReg* %2600 to %"class.std::bitset"*
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2602 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2601, i64 0, i64 0
  %XMM0.i121 = bitcast %union.VectorReg* %2602 to %union.vec128_t*
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2604 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2603, i64 0, i64 1
  %XMM1.i122 = bitcast %union.VectorReg* %2604 to %union.vec128_t*
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2606 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2605, i64 0, i64 2
  %XMM2.i123 = bitcast %union.VectorReg* %2606 to %union.vec128_t*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2608 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2607, i64 0, i64 3
  %XMM3.i124 = bitcast %union.VectorReg* %2608 to %union.vec128_t*
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2610 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2609, i64 0, i64 4
  %XMM4.i125 = bitcast %union.VectorReg* %2610 to %union.vec128_t*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2612 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2611, i64 0, i64 5
  %XMM5.i126 = bitcast %union.VectorReg* %2612 to %union.vec128_t*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2614 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2613, i64 0, i64 6
  %XMM6.i127 = bitcast %union.VectorReg* %2614 to %union.vec128_t*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2616 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2615, i64 0, i64 7
  %XMM7.i128 = bitcast %union.VectorReg* %2616 to %union.vec128_t*
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2618 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2617, i64 0, i64 8
  %XMM8.i129 = bitcast %union.VectorReg* %2618 to %union.vec128_t*
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2620 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2619, i64 0, i64 9
  %XMM9.i130 = bitcast %union.VectorReg* %2620 to %union.vec128_t*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2622 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2621, i64 0, i64 10
  %XMM10.i131 = bitcast %union.VectorReg* %2622 to %union.vec128_t*
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2624 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2623, i64 0, i64 11
  %XMM11.i132 = bitcast %union.VectorReg* %2624 to %union.vec128_t*
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2626 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2625, i64 0, i64 12
  %XMM12.i133 = bitcast %union.VectorReg* %2626 to %union.vec128_t*
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2628 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2627, i64 0, i64 13
  %XMM13.i134 = bitcast %union.VectorReg* %2628 to %union.vec128_t*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2630 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2629, i64 0, i64 14
  %XMM14.i135 = bitcast %union.VectorReg* %2630 to %union.vec128_t*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2632 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2631, i64 0, i64 15
  %XMM15.i136 = bitcast %union.VectorReg* %2632 to %union.vec128_t*
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2634 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2633, i32 0, i32 0
  %2635 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2634, i64 0, i64 0
  %ST0.i137 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2635, i32 0, i32 1
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2637 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2636, i32 0, i32 0
  %2638 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2637, i64 0, i64 1
  %ST1.i138 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2638, i32 0, i32 1
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2640 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2639, i32 0, i32 0
  %2641 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2640, i64 0, i64 2
  %ST2.i139 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2641, i32 0, i32 1
  %2642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2643 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2642, i32 0, i32 0
  %2644 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2643, i64 0, i64 3
  %ST3.i140 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2644, i32 0, i32 1
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2646 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2645, i32 0, i32 0
  %2647 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2646, i64 0, i64 4
  %ST4.i141 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2647, i32 0, i32 1
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2649 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2648, i32 0, i32 0
  %2650 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2649, i64 0, i64 5
  %ST5.i142 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2650, i32 0, i32 1
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2652 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2651, i32 0, i32 0
  %2653 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2652, i64 0, i64 6
  %ST6.i143 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2653, i32 0, i32 1
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %2655 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %2654, i32 0, i32 0
  %2656 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %2655, i64 0, i64 7
  %ST7.i144 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %2656, i32 0, i32 1
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2658 = getelementptr inbounds %struct.MMX, %struct.MMX* %2657, i32 0, i32 0
  %2659 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2658, i64 0, i64 0
  %2660 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2659, i32 0, i32 1
  %2661 = bitcast %union.vec64_t* %2660 to %struct.uint64v1_t*
  %2662 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2661, i32 0, i32 0
  %MM0.i145 = getelementptr inbounds [1 x i64], [1 x i64]* %2662, i64 0, i64 0
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2664 = getelementptr inbounds %struct.MMX, %struct.MMX* %2663, i32 0, i32 0
  %2665 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2664, i64 0, i64 1
  %2666 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2665, i32 0, i32 1
  %2667 = bitcast %union.vec64_t* %2666 to %struct.uint64v1_t*
  %2668 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2667, i32 0, i32 0
  %MM1.i146 = getelementptr inbounds [1 x i64], [1 x i64]* %2668, i64 0, i64 0
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2670 = getelementptr inbounds %struct.MMX, %struct.MMX* %2669, i32 0, i32 0
  %2671 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2670, i64 0, i64 2
  %2672 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2671, i32 0, i32 1
  %2673 = bitcast %union.vec64_t* %2672 to %struct.uint64v1_t*
  %2674 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2673, i32 0, i32 0
  %MM2.i147 = getelementptr inbounds [1 x i64], [1 x i64]* %2674, i64 0, i64 0
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2676 = getelementptr inbounds %struct.MMX, %struct.MMX* %2675, i32 0, i32 0
  %2677 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2676, i64 0, i64 3
  %2678 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2677, i32 0, i32 1
  %2679 = bitcast %union.vec64_t* %2678 to %struct.uint64v1_t*
  %2680 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2679, i32 0, i32 0
  %MM3.i148 = getelementptr inbounds [1 x i64], [1 x i64]* %2680, i64 0, i64 0
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2682 = getelementptr inbounds %struct.MMX, %struct.MMX* %2681, i32 0, i32 0
  %2683 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2682, i64 0, i64 4
  %2684 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2683, i32 0, i32 1
  %2685 = bitcast %union.vec64_t* %2684 to %struct.uint64v1_t*
  %2686 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2685, i32 0, i32 0
  %MM4.i149 = getelementptr inbounds [1 x i64], [1 x i64]* %2686, i64 0, i64 0
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2688 = getelementptr inbounds %struct.MMX, %struct.MMX* %2687, i32 0, i32 0
  %2689 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2688, i64 0, i64 5
  %2690 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2689, i32 0, i32 1
  %2691 = bitcast %union.vec64_t* %2690 to %struct.uint64v1_t*
  %2692 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2691, i32 0, i32 0
  %MM5.i150 = getelementptr inbounds [1 x i64], [1 x i64]* %2692, i64 0, i64 0
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2694 = getelementptr inbounds %struct.MMX, %struct.MMX* %2693, i32 0, i32 0
  %2695 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2694, i64 0, i64 6
  %2696 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2695, i32 0, i32 1
  %2697 = bitcast %union.vec64_t* %2696 to %struct.uint64v1_t*
  %2698 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2697, i32 0, i32 0
  %MM6.i151 = getelementptr inbounds [1 x i64], [1 x i64]* %2698, i64 0, i64 0
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %2700 = getelementptr inbounds %struct.MMX, %struct.MMX* %2699, i32 0, i32 0
  %2701 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %2700, i64 0, i64 7
  %2702 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %2701, i32 0, i32 1
  %2703 = bitcast %union.vec64_t* %2702 to %struct.uint64v1_t*
  %2704 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %2703, i32 0, i32 0
  %MM7.i152 = getelementptr inbounds [1 x i64], [1 x i64]* %2704, i64 0, i64 0
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %AF.i153 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2705, i32 0, i32 5
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %CF.i154 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2706, i32 0, i32 1
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %DF.i155 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2707, i32 0, i32 11
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %OF.i156 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2708, i32 0, i32 13
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %PF.i157 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2709, i32 0, i32 3
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %SF.i158 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2710, i32 0, i32 9
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %ZF.i159 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %2711, i32 0, i32 7
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
  %2712 = bitcast %"class.std::bitset"* %YMM0.i105 to double*
  %2713 = load double, double* %2712, !alias.scope !2461, !noalias !2462
  %2714 = load i64, i64* %RSP.i86, !alias.scope !2461, !noalias !2462
  %2715 = load %struct.Memory*, %struct.Memory** %MEMORY.i10, !noalias !2457
  %2716 = inttoptr i64 %2714 to i64*
  %2717 = load i64, i64* %2716
  store i64 %2717, i64* %PC.i25, !alias.scope !2461, !noalias !2462
  %2718 = add i64 %2714, 8
  store i64 %2718, i64* %RSP.i86, !alias.scope !2461, !noalias !2462
  %2719 = call double @sin(double %2713)
  store %"class.std::bitset" zeroinitializer, %"class.std::bitset"* %YMM0.i105, !alias.scope !2461, !noalias !2462
  %2720 = bitcast %"class.std::bitset"* %YMM0.i105 to double*
  store double %2719, double* %2720, !alias.scope !2461, !noalias !2462
  %2721 = load %struct.Memory*, %struct.Memory** %MEMORY.i10, !noalias !2457
  %2722 = bitcast %struct.State** %state.i1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2722)
  %2723 = bitcast i64* %curr_pc.i2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2723)
  %2724 = bitcast %struct.Memory** %memory.i3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2724)
  call void @llvm.lifetime.end(i64 1, i8* %BRANCH_TAKEN.i4)
  %2725 = bitcast i64* %SS_BASE.i5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2725)
  %2726 = bitcast i64* %ES_BASE.i6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2726)
  %2727 = bitcast i64* %DS_BASE.i7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2727)
  %2728 = bitcast i64* %CS_BASE.i8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2728)
  %2729 = bitcast %struct.State** %STATE.i9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2729)
  %2730 = bitcast %struct.Memory** %MEMORY.i10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2730)
  %2731 = bitcast i64** %_DR0.i11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2731)
  %2732 = bitcast i64** %_DR1.i12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2732)
  %2733 = bitcast i64** %_DR2.i13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2733)
  %2734 = bitcast i64** %_DR3.i14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2734)
  %2735 = bitcast i64** %_DR4.i15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2735)
  %2736 = bitcast i64** %_DR5.i16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2736)
  %2737 = bitcast i64** %_DR6.i17 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2737)
  %2738 = bitcast i64** %_DR7.i18 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2738)
  %2739 = bitcast i64** %CR0.i19 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2739)
  %2740 = bitcast i64** %CR1.i20 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2740)
  %2741 = bitcast i64** %CR2.i21 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2741)
  %2742 = bitcast i64** %CR3.i22 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2742)
  %2743 = bitcast i64** %CR4.i23 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2743)
  %2744 = bitcast i64** %CR8.i24 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2744)
  %2745 = load i64, i64* %RBP
  %2746 = sub i64 %2745, 160
  %2747 = bitcast %union.vec128_t* %XMM0 to i8*
  %2748 = load i64, i64* %PC
  %2749 = add i64 %2748, 8
  store i64 %2749, i64* %PC
  %2750 = bitcast i8* %2747 to double*
  %2751 = load double, double* %2750, align 1
  %2752 = inttoptr i64 %2746 to double*
  store double %2751, double* %2752
  %2753 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2754 = load i64, i64* %RBP
  %2755 = sub i64 %2754, 184
  %2756 = load i64, i64* %PC
  %2757 = add i64 %2756, 8
  store i64 %2757, i64* %PC
  %2758 = inttoptr i64 %2755 to double*
  %2759 = load double, double* %2758
  %2760 = bitcast i8* %2753 to double*
  store double %2759, double* %2760, align 1, !tbaa !2452
  %2761 = getelementptr inbounds i8, i8* %2753, i64 8
  %2762 = bitcast i8* %2761 to double*
  store double 0.000000e+00, double* %2762, align 1, !tbaa !2452
  %2763 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2764 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2765 = load i64, i64* %RBP
  %2766 = sub i64 %2765, 160
  %2767 = load i64, i64* %PC
  %2768 = add i64 %2767, 8
  store i64 %2768, i64* %PC
  %2769 = bitcast i8* %2764 to double*
  %2770 = load double, double* %2769, align 1
  %2771 = getelementptr inbounds i8, i8* %2764, i64 8
  %2772 = bitcast i8* %2771 to i64*
  %2773 = load i64, i64* %2772, align 1
  %2774 = inttoptr i64 %2766 to double*
  %2775 = load double, double* %2774
  %2776 = fmul double %2770, %2775
  %2777 = bitcast i8* %2763 to double*
  store double %2776, double* %2777, align 1, !tbaa !2452
  %2778 = getelementptr inbounds i8, i8* %2763, i64 8
  %2779 = bitcast i8* %2778 to i64*
  store i64 %2773, i64* %2779, align 1, !tbaa !2452
  %2780 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2781 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2782 = load i64, i64* %RBP
  %2783 = sub i64 %2782, 160
  %2784 = load i64, i64* %PC
  %2785 = add i64 %2784, 8
  store i64 %2785, i64* %PC
  %2786 = bitcast i8* %2781 to double*
  %2787 = load double, double* %2786, align 1
  %2788 = getelementptr inbounds i8, i8* %2781, i64 8
  %2789 = bitcast i8* %2788 to i64*
  %2790 = load i64, i64* %2789, align 1
  %2791 = inttoptr i64 %2783 to double*
  %2792 = load double, double* %2791
  %2793 = fmul double %2787, %2792
  %2794 = bitcast i8* %2780 to double*
  store double %2793, double* %2794, align 1, !tbaa !2452
  %2795 = getelementptr inbounds i8, i8* %2780, i64 8
  %2796 = bitcast i8* %2795 to i64*
  store i64 %2790, i64* %2796, align 1, !tbaa !2452
  %2797 = load i64, i64* %RBP
  %2798 = sub i64 %2797, 144
  %2799 = bitcast %union.vec128_t* %XMM0 to i8*
  %2800 = load i64, i64* %PC
  %2801 = add i64 %2800, 8
  store i64 %2801, i64* %PC
  %2802 = bitcast i8* %2799 to double*
  %2803 = load double, double* %2802, align 1
  %2804 = inttoptr i64 %2798 to double*
  store double %2803, double* %2804
  %2805 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2806 = load i64, i64* %RBP
  %2807 = sub i64 %2806, 120
  %2808 = load i64, i64* %PC
  %2809 = add i64 %2808, 5
  store i64 %2809, i64* %PC
  %2810 = inttoptr i64 %2807 to double*
  %2811 = load double, double* %2810
  %2812 = bitcast i8* %2805 to double*
  store double %2811, double* %2812, align 1, !tbaa !2452
  %2813 = getelementptr inbounds i8, i8* %2805, i64 8
  %2814 = bitcast i8* %2813 to double*
  store double 0.000000e+00, double* %2814, align 1, !tbaa !2452
  %2815 = load i64, i64* %PC
  %2816 = sub i64 %2815, 2227
  %2817 = load i64, i64* %PC
  %2818 = add i64 %2817, 5
  %2819 = load i64, i64* %PC
  %2820 = add i64 %2819, 5
  store i64 %2820, i64* %PC
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2822 = load i64, i64* %2821, align 8, !tbaa !2428
  %2823 = add i64 %2822, -8
  %2824 = inttoptr i64 %2823 to i64*
  store i64 %2818, i64* %2824
  store i64 %2823, i64* %2821, align 8, !tbaa !2428
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2816, i64* %2825, align 8, !tbaa !2428
  %2826 = load i64, i64* %PC
  %2827 = bitcast %struct.State** %state.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2827)
  %2828 = bitcast i64* %curr_pc.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2828)
  %2829 = bitcast %struct.Memory** %memory.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2829)
  call void @llvm.lifetime.start(i64 1, i8* %BRANCH_TAKEN.i)
  %2830 = bitcast i64* %SS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2830)
  %2831 = bitcast i64* %ES_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2831)
  %2832 = bitcast i64* %DS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2832)
  %2833 = bitcast i64* %CS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2833)
  %2834 = bitcast %struct.State** %STATE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2834)
  %2835 = bitcast %struct.Memory** %MEMORY.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2835)
  %2836 = bitcast i64** %_DR0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2836)
  %2837 = bitcast i64** %_DR1.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2837)
  %2838 = bitcast i64** %_DR2.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2838)
  %2839 = bitcast i64** %_DR3.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2839)
  %2840 = bitcast i64** %_DR4.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2840)
  %2841 = bitcast i64** %_DR5.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2841)
  %2842 = bitcast i64** %_DR6.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2842)
  %2843 = bitcast i64** %_DR7.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2843)
  %2844 = bitcast i64** %CR0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2844)
  %2845 = bitcast i64** %CR1.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2845)
  %2846 = bitcast i64** %CR2.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2846)
  %2847 = bitcast i64** %CR3.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2847)
  %2848 = bitcast i64** %CR4.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2848)
  %2849 = bitcast i64** %CR8.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2849)
  store %struct.State* %0, %struct.State** %state.i, align 8, !noalias !2463
  store i64 %2826, i64* %curr_pc.i, align 8, !noalias !2463
  store %struct.Memory* %2721, %struct.Memory** %memory.i, align 8, !noalias !2463
  store i8 0, i8* %BRANCH_TAKEN.i, align 1, !noalias !2463
  store i64 0, i64* %SS_BASE.i, align 8, !noalias !2463
  store i64 0, i64* %ES_BASE.i, align 8, !noalias !2463
  store i64 0, i64* %DS_BASE.i, align 8, !noalias !2463
  store i64 0, i64* %CS_BASE.i, align 8, !noalias !2463
  store %struct.State* %0, %struct.State** %STATE.i, align 8, !noalias !2463
  store %struct.Memory* %2721, %struct.Memory** %MEMORY.i, align 8, !noalias !2463
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 33
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %PC.i = bitcast %union.anon* %2852 to i64*
  store i64 %2826, i64* %PC.i, align 8, !alias.scope !2467, !noalias !2468
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 1
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %2856 = bitcast %union.anon* %2855 to %struct.anon.2*
  %AH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2856, i32 0, i32 1
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 3
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %2860 = bitcast %union.anon* %2859 to %struct.anon.2*
  %BH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2860, i32 0, i32 1
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 5
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %2864 = bitcast %union.anon* %2863 to %struct.anon.2*
  %CH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2864, i32 0, i32 1
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 7
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %2868 = bitcast %union.anon* %2867 to %struct.anon.2*
  %DH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2868, i32 0, i32 1
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 1
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %2872 = bitcast %union.anon* %2871 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2872, i32 0, i32 0
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 3
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %2876 = bitcast %union.anon* %2875 to %struct.anon.2*
  %BL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2876, i32 0, i32 0
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 5
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %2880 = bitcast %union.anon* %2879 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2880, i32 0, i32 0
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 7
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %2884 = bitcast %union.anon* %2883 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2884, i32 0, i32 0
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2886 = getelementptr inbounds %struct.GPR, %struct.GPR* %2885, i32 0, i32 9
  %2887 = getelementptr inbounds %struct.Reg, %struct.Reg* %2886, i32 0, i32 0
  %2888 = bitcast %union.anon* %2887 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2888, i32 0, i32 0
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 11
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %2892 = bitcast %union.anon* %2891 to %struct.anon.2*
  %DIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2892, i32 0, i32 0
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 13
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %2896 = bitcast %union.anon* %2895 to %struct.anon.2*
  %SPL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2896, i32 0, i32 0
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 15
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %2900 = bitcast %union.anon* %2899 to %struct.anon.2*
  %BPL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2900, i32 0, i32 0
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 17
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %2904 = bitcast %union.anon* %2903 to %struct.anon.2*
  %R8B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2904, i32 0, i32 0
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 19
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %2908 = bitcast %union.anon* %2907 to %struct.anon.2*
  %R9B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2908, i32 0, i32 0
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 21
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %2912 = bitcast %union.anon* %2911 to %struct.anon.2*
  %R10B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2912, i32 0, i32 0
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 23
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %2916 = bitcast %union.anon* %2915 to %struct.anon.2*
  %R11B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2916, i32 0, i32 0
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 25
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %2920 = bitcast %union.anon* %2919 to %struct.anon.2*
  %R12B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2920, i32 0, i32 0
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 27
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %2924 = bitcast %union.anon* %2923 to %struct.anon.2*
  %R13B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2924, i32 0, i32 0
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2926 = getelementptr inbounds %struct.GPR, %struct.GPR* %2925, i32 0, i32 29
  %2927 = getelementptr inbounds %struct.Reg, %struct.Reg* %2926, i32 0, i32 0
  %2928 = bitcast %union.anon* %2927 to %struct.anon.2*
  %R14B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2928, i32 0, i32 0
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 31
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %2932 = bitcast %union.anon* %2931 to %struct.anon.2*
  %R15B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2932, i32 0, i32 0
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 1
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %AX.i = bitcast %union.anon* %2935 to i16*
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 3
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %BX.i = bitcast %union.anon* %2938 to i16*
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 5
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %CX.i = bitcast %union.anon* %2941 to i16*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 7
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %DX.i = bitcast %union.anon* %2944 to i16*
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 9
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %SI.i = bitcast %union.anon* %2947 to i16*
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 11
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %DI.i = bitcast %union.anon* %2950 to i16*
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 13
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %SP.i = bitcast %union.anon* %2953 to i16*
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 15
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %BP.i = bitcast %union.anon* %2956 to i16*
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 17
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %R8W.i = bitcast %union.anon* %2959 to i16*
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 19
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %R9W.i = bitcast %union.anon* %2962 to i16*
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2964 = getelementptr inbounds %struct.GPR, %struct.GPR* %2963, i32 0, i32 21
  %2965 = getelementptr inbounds %struct.Reg, %struct.Reg* %2964, i32 0, i32 0
  %R10W.i = bitcast %union.anon* %2965 to i16*
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 23
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %R11W.i = bitcast %union.anon* %2968 to i16*
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2970 = getelementptr inbounds %struct.GPR, %struct.GPR* %2969, i32 0, i32 25
  %2971 = getelementptr inbounds %struct.Reg, %struct.Reg* %2970, i32 0, i32 0
  %R12W.i = bitcast %union.anon* %2971 to i16*
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 27
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %R13W.i = bitcast %union.anon* %2974 to i16*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 29
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %R14W.i = bitcast %union.anon* %2977 to i16*
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 31
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %R15W.i = bitcast %union.anon* %2980 to i16*
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 33
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %IP.i = bitcast %union.anon* %2983 to i16*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 1
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %2986 to i32*
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 3
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %EBX.i = bitcast %union.anon* %2989 to i32*
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 5
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2992 to i32*
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 7
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %2995 to i32*
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 9
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2998 to i32*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 11
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %3001 to i32*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 13
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %ESP.i = bitcast %union.anon* %3004 to i32*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 15
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %EBP.i = bitcast %union.anon* %3007 to i32*
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 33
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %EIP.i = bitcast %union.anon* %3010 to i32*
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 17
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %3013 to i32*
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 19
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %3016 to i32*
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 21
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %3019 to i32*
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 23
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %3022 to i32*
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 25
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %R12D.i = bitcast %union.anon* %3025 to i32*
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 27
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %R13D.i = bitcast %union.anon* %3028 to i32*
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 29
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %R14D.i = bitcast %union.anon* %3031 to i32*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 31
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %R15D.i = bitcast %union.anon* %3034 to i32*
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3036 = getelementptr inbounds %struct.GPR, %struct.GPR* %3035, i32 0, i32 1
  %3037 = getelementptr inbounds %struct.Reg, %struct.Reg* %3036, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3037 to i64*
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 3
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %3040 to i64*
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 5
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3043 to i64*
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 7
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3046 to i64*
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 9
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3049 to i64*
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 11
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3052 to i64*
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 13
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3055 to i64*
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3057 = getelementptr inbounds %struct.GPR, %struct.GPR* %3056, i32 0, i32 15
  %3058 = getelementptr inbounds %struct.Reg, %struct.Reg* %3057, i32 0, i32 0
  %RBP.i = bitcast %union.anon* %3058 to i64*
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3060 = getelementptr inbounds %struct.GPR, %struct.GPR* %3059, i32 0, i32 17
  %3061 = getelementptr inbounds %struct.Reg, %struct.Reg* %3060, i32 0, i32 0
  %R8.i = bitcast %union.anon* %3061 to i64*
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 19
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %R9.i = bitcast %union.anon* %3064 to i64*
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 21
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %R10.i = bitcast %union.anon* %3067 to i64*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 23
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %R11.i = bitcast %union.anon* %3070 to i64*
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 25
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %R12.i = bitcast %union.anon* %3073 to i64*
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 27
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %R13.i = bitcast %union.anon* %3076 to i64*
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 29
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %R14.i = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 31
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %R15.i = bitcast %union.anon* %3082 to i64*
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 33
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %RIP.i = bitcast %union.anon* %3085 to i64*
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %3087 = getelementptr inbounds %struct.Segments, %struct.Segments* %3086, i32 0, i32 1
  %SS.i = bitcast %union.SegmentSelector* %3087 to i16*
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %3089 = getelementptr inbounds %struct.Segments, %struct.Segments* %3088, i32 0, i32 3
  %ES.i = bitcast %union.SegmentSelector* %3089 to i16*
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %3091 = getelementptr inbounds %struct.Segments, %struct.Segments* %3090, i32 0, i32 5
  %GS.i = bitcast %union.SegmentSelector* %3091 to i16*
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %3093 = getelementptr inbounds %struct.Segments, %struct.Segments* %3092, i32 0, i32 7
  %FS.i = bitcast %union.SegmentSelector* %3093 to i16*
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %3095 = getelementptr inbounds %struct.Segments, %struct.Segments* %3094, i32 0, i32 9
  %DS.i = bitcast %union.SegmentSelector* %3095 to i16*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %3097 = getelementptr inbounds %struct.Segments, %struct.Segments* %3096, i32 0, i32 11
  %CS.i = bitcast %union.SegmentSelector* %3097 to i16*
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %3099 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %3098, i32 0, i32 5
  %3100 = getelementptr inbounds %struct.Reg, %struct.Reg* %3099, i32 0, i32 0
  %GS_BASE.i = bitcast %union.anon* %3100 to i64*
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %3102 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %3101, i32 0, i32 7
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %FS_BASE.i = bitcast %union.anon* %3103 to i64*
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3105 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3104, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3105 to %"class.std::bitset"*
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3107 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3106, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %3107 to %"class.std::bitset"*
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3109 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3108, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %3109 to %"class.std::bitset"*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3111 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3110, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %3111 to %"class.std::bitset"*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3113 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3112, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %3113 to %"class.std::bitset"*
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3115 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3114, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %3115 to %"class.std::bitset"*
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3117 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3116, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %3117 to %"class.std::bitset"*
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3119 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3118, i64 0, i64 7
  %YMM7.i = bitcast %union.VectorReg* %3119 to %"class.std::bitset"*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3121 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3120, i64 0, i64 8
  %YMM8.i = bitcast %union.VectorReg* %3121 to %"class.std::bitset"*
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3123 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3122, i64 0, i64 9
  %YMM9.i = bitcast %union.VectorReg* %3123 to %"class.std::bitset"*
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3125 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3124, i64 0, i64 10
  %YMM10.i = bitcast %union.VectorReg* %3125 to %"class.std::bitset"*
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3127 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3126, i64 0, i64 11
  %YMM11.i = bitcast %union.VectorReg* %3127 to %"class.std::bitset"*
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3129 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3128, i64 0, i64 12
  %YMM12.i = bitcast %union.VectorReg* %3129 to %"class.std::bitset"*
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3131 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3130, i64 0, i64 13
  %YMM13.i = bitcast %union.VectorReg* %3131 to %"class.std::bitset"*
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3133 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3132, i64 0, i64 14
  %YMM14.i = bitcast %union.VectorReg* %3133 to %"class.std::bitset"*
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3135 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3134, i64 0, i64 15
  %YMM15.i = bitcast %union.VectorReg* %3135 to %"class.std::bitset"*
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3137 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3136, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3137 to %union.vec128_t*
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3139 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3138, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %3139 to %union.vec128_t*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3141 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3140, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %3141 to %union.vec128_t*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3143 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3142, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %3143 to %union.vec128_t*
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3145 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3144, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %3145 to %union.vec128_t*
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3147 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3146, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %3147 to %union.vec128_t*
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3149 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3148, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %3149 to %union.vec128_t*
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3151 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3150, i64 0, i64 7
  %XMM7.i = bitcast %union.VectorReg* %3151 to %union.vec128_t*
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3153 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3152, i64 0, i64 8
  %XMM8.i = bitcast %union.VectorReg* %3153 to %union.vec128_t*
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3155 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3154, i64 0, i64 9
  %XMM9.i = bitcast %union.VectorReg* %3155 to %union.vec128_t*
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3157 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3156, i64 0, i64 10
  %XMM10.i = bitcast %union.VectorReg* %3157 to %union.vec128_t*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3159 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3158, i64 0, i64 11
  %XMM11.i = bitcast %union.VectorReg* %3159 to %union.vec128_t*
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3161 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3160, i64 0, i64 12
  %XMM12.i = bitcast %union.VectorReg* %3161 to %union.vec128_t*
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3163 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3162, i64 0, i64 13
  %XMM13.i = bitcast %union.VectorReg* %3163 to %union.vec128_t*
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3165 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3164, i64 0, i64 14
  %XMM14.i = bitcast %union.VectorReg* %3165 to %union.vec128_t*
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3167 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3166, i64 0, i64 15
  %XMM15.i = bitcast %union.VectorReg* %3167 to %union.vec128_t*
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %3169 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %3168, i32 0, i32 0
  %3170 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %3169, i64 0, i64 0
  %ST0.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %3170, i32 0, i32 1
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %3172 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %3171, i32 0, i32 0
  %3173 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %3172, i64 0, i64 1
  %ST1.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %3173, i32 0, i32 1
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %3175 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %3174, i32 0, i32 0
  %3176 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %3175, i64 0, i64 2
  %ST2.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %3176, i32 0, i32 1
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %3178 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %3177, i32 0, i32 0
  %3179 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %3178, i64 0, i64 3
  %ST3.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %3179, i32 0, i32 1
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %3181 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %3180, i32 0, i32 0
  %3182 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %3181, i64 0, i64 4
  %ST4.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %3182, i32 0, i32 1
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %3184 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %3183, i32 0, i32 0
  %3185 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %3184, i64 0, i64 5
  %ST5.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %3185, i32 0, i32 1
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %3187 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %3186, i32 0, i32 0
  %3188 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %3187, i64 0, i64 6
  %ST6.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %3188, i32 0, i32 1
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %3190 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %3189, i32 0, i32 0
  %3191 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %3190, i64 0, i64 7
  %ST7.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %3191, i32 0, i32 1
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %3193 = getelementptr inbounds %struct.MMX, %struct.MMX* %3192, i32 0, i32 0
  %3194 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %3193, i64 0, i64 0
  %3195 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %3194, i32 0, i32 1
  %3196 = bitcast %union.vec64_t* %3195 to %struct.uint64v1_t*
  %3197 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %3196, i32 0, i32 0
  %MM0.i = getelementptr inbounds [1 x i64], [1 x i64]* %3197, i64 0, i64 0
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %3199 = getelementptr inbounds %struct.MMX, %struct.MMX* %3198, i32 0, i32 0
  %3200 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %3199, i64 0, i64 1
  %3201 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %3200, i32 0, i32 1
  %3202 = bitcast %union.vec64_t* %3201 to %struct.uint64v1_t*
  %3203 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %3202, i32 0, i32 0
  %MM1.i = getelementptr inbounds [1 x i64], [1 x i64]* %3203, i64 0, i64 0
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %3205 = getelementptr inbounds %struct.MMX, %struct.MMX* %3204, i32 0, i32 0
  %3206 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %3205, i64 0, i64 2
  %3207 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %3206, i32 0, i32 1
  %3208 = bitcast %union.vec64_t* %3207 to %struct.uint64v1_t*
  %3209 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %3208, i32 0, i32 0
  %MM2.i = getelementptr inbounds [1 x i64], [1 x i64]* %3209, i64 0, i64 0
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %3211 = getelementptr inbounds %struct.MMX, %struct.MMX* %3210, i32 0, i32 0
  %3212 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %3211, i64 0, i64 3
  %3213 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %3212, i32 0, i32 1
  %3214 = bitcast %union.vec64_t* %3213 to %struct.uint64v1_t*
  %3215 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %3214, i32 0, i32 0
  %MM3.i = getelementptr inbounds [1 x i64], [1 x i64]* %3215, i64 0, i64 0
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %3217 = getelementptr inbounds %struct.MMX, %struct.MMX* %3216, i32 0, i32 0
  %3218 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %3217, i64 0, i64 4
  %3219 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %3218, i32 0, i32 1
  %3220 = bitcast %union.vec64_t* %3219 to %struct.uint64v1_t*
  %3221 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %3220, i32 0, i32 0
  %MM4.i = getelementptr inbounds [1 x i64], [1 x i64]* %3221, i64 0, i64 0
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %3223 = getelementptr inbounds %struct.MMX, %struct.MMX* %3222, i32 0, i32 0
  %3224 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %3223, i64 0, i64 5
  %3225 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %3224, i32 0, i32 1
  %3226 = bitcast %union.vec64_t* %3225 to %struct.uint64v1_t*
  %3227 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %3226, i32 0, i32 0
  %MM5.i = getelementptr inbounds [1 x i64], [1 x i64]* %3227, i64 0, i64 0
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %3229 = getelementptr inbounds %struct.MMX, %struct.MMX* %3228, i32 0, i32 0
  %3230 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %3229, i64 0, i64 6
  %3231 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %3230, i32 0, i32 1
  %3232 = bitcast %union.vec64_t* %3231 to %struct.uint64v1_t*
  %3233 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %3232, i32 0, i32 0
  %MM6.i = getelementptr inbounds [1 x i64], [1 x i64]* %3233, i64 0, i64 0
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %3235 = getelementptr inbounds %struct.MMX, %struct.MMX* %3234, i32 0, i32 0
  %3236 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %3235, i64 0, i64 7
  %3237 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %3236, i32 0, i32 1
  %3238 = bitcast %union.vec64_t* %3237 to %struct.uint64v1_t*
  %3239 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %3238, i32 0, i32 0
  %MM7.i = getelementptr inbounds [1 x i64], [1 x i64]* %3239, i64 0, i64 0
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %AF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %3240, i32 0, i32 5
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %CF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %3241, i32 0, i32 1
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %DF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %3242, i32 0, i32 11
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %OF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %3243, i32 0, i32 13
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %PF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %3244, i32 0, i32 3
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %SF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %3245, i32 0, i32 9
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %ZF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %3246, i32 0, i32 7
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
  %3247 = bitcast %"class.std::bitset"* %YMM0.i to double*
  %3248 = load double, double* %3247, !alias.scope !2467, !noalias !2468
  %3249 = load i64, i64* %RSP.i, !alias.scope !2467, !noalias !2468
  %3250 = load %struct.Memory*, %struct.Memory** %MEMORY.i, !noalias !2463
  %3251 = inttoptr i64 %3249 to i64*
  %3252 = load i64, i64* %3251
  store i64 %3252, i64* %PC.i, !alias.scope !2467, !noalias !2468
  %3253 = add i64 %3249, 8
  store i64 %3253, i64* %RSP.i, !alias.scope !2467, !noalias !2468
  %3254 = call double @sin(double %3248)
  store %"class.std::bitset" zeroinitializer, %"class.std::bitset"* %YMM0.i, !alias.scope !2467, !noalias !2468
  %3255 = bitcast %"class.std::bitset"* %YMM0.i to double*
  store double %3254, double* %3255, !alias.scope !2467, !noalias !2468
  %3256 = load %struct.Memory*, %struct.Memory** %MEMORY.i, !noalias !2463
  %3257 = bitcast %struct.State** %state.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3257)
  %3258 = bitcast i64* %curr_pc.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3258)
  %3259 = bitcast %struct.Memory** %memory.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3259)
  call void @llvm.lifetime.end(i64 1, i8* %BRANCH_TAKEN.i)
  %3260 = bitcast i64* %SS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3260)
  %3261 = bitcast i64* %ES_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3261)
  %3262 = bitcast i64* %DS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3262)
  %3263 = bitcast i64* %CS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3263)
  %3264 = bitcast %struct.State** %STATE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3264)
  %3265 = bitcast %struct.Memory** %MEMORY.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3265)
  %3266 = bitcast i64** %_DR0.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3266)
  %3267 = bitcast i64** %_DR1.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3267)
  %3268 = bitcast i64** %_DR2.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3268)
  %3269 = bitcast i64** %_DR3.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3269)
  %3270 = bitcast i64** %_DR4.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3270)
  %3271 = bitcast i64** %_DR5.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3271)
  %3272 = bitcast i64** %_DR6.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3272)
  %3273 = bitcast i64** %_DR7.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3273)
  %3274 = bitcast i64** %CR0.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3274)
  %3275 = bitcast i64** %CR1.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3275)
  %3276 = bitcast i64** %CR2.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3276)
  %3277 = bitcast i64** %CR3.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3277)
  %3278 = bitcast i64** %CR4.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3278)
  %3279 = bitcast i64** %CR8.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3279)
  %3280 = load i64, i64* %RBP
  %3281 = sub i64 %3280, 136
  %3282 = bitcast %union.vec128_t* %XMM0 to i8*
  %3283 = load i64, i64* %PC
  %3284 = add i64 %3283, 8
  store i64 %3284, i64* %PC
  %3285 = bitcast i8* %3282 to double*
  %3286 = load double, double* %3285, align 1
  %3287 = inttoptr i64 %3281 to double*
  store double %3286, double* %3287
  %3288 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3289 = load i64, i64* %RBP
  %3290 = sub i64 %3289, 192
  %3291 = load i64, i64* %PC
  %3292 = add i64 %3291, 8
  store i64 %3292, i64* %PC
  %3293 = inttoptr i64 %3290 to double*
  %3294 = load double, double* %3293
  %3295 = bitcast i8* %3288 to double*
  store double %3294, double* %3295, align 1, !tbaa !2452
  %3296 = getelementptr inbounds i8, i8* %3288, i64 8
  %3297 = bitcast i8* %3296 to double*
  store double 0.000000e+00, double* %3297, align 1, !tbaa !2452
  %3298 = load i64, i64* %RBP
  %3299 = sub i64 %3298, 152
  %3300 = bitcast %union.vec128_t* %XMM0 to i8*
  %3301 = load i64, i64* %PC
  %3302 = add i64 %3301, 8
  store i64 %3302, i64* %PC
  %3303 = bitcast i8* %3300 to double*
  %3304 = load double, double* %3303, align 1
  %3305 = inttoptr i64 %3299 to double*
  store double %3304, double* %3305
  %3306 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3307 = load i64, i64* %RBP
  %3308 = sub i64 %3307, 176
  %3309 = load i64, i64* %PC
  %3310 = add i64 %3309, 8
  store i64 %3310, i64* %PC
  %3311 = inttoptr i64 %3308 to double*
  %3312 = load double, double* %3311
  %3313 = bitcast i8* %3306 to double*
  store double %3312, double* %3313, align 1, !tbaa !2452
  %3314 = getelementptr inbounds i8, i8* %3306, i64 8
  %3315 = bitcast i8* %3314 to double*
  store double 0.000000e+00, double* %3315, align 1, !tbaa !2452
  %3316 = load i64, i64* %RBP
  %3317 = sub i64 %3316, 128
  %3318 = bitcast %union.vec128_t* %XMM1 to i8*
  %3319 = load i64, i64* %PC
  %3320 = add i64 %3319, 5
  store i64 %3320, i64* %PC
  %3321 = bitcast i8* %3318 to double*
  %3322 = load double, double* %3321, align 1
  %3323 = inttoptr i64 %3317 to double*
  store double %3322, double* %3323
  %3324 = load i64, i64* %RBP
  %3325 = sub i64 %3324, 36
  %3326 = load i64, i64* %PC
  %3327 = add i64 %3326, 7
  store i64 %3327, i64* %PC
  %3328 = inttoptr i64 %3325 to i32*
  store i32 1, i32* %3328
  br label %block_400e74

block_400b93:                                     ; preds = %block_400b87
  %3329 = sub i64 %4763, 16
  %3330 = load i64, i64* %PC
  %3331 = add i64 %3330, 4
  store i64 %3331, i64* %PC
  %3332 = inttoptr i64 %3329 to i64*
  %3333 = load i64, i64* %3332
  store i64 %3333, i64* %RAX, align 8, !tbaa !2428
  %3334 = load i64, i64* %RBP
  %3335 = sub i64 %3334, 72
  %3336 = load i64, i64* %PC
  %3337 = add i64 %3336, 4
  store i64 %3337, i64* %PC
  %3338 = inttoptr i64 %3335 to i32*
  %3339 = load i32, i32* %3338
  %3340 = sext i32 %3339 to i64
  store i64 %3340, i64* %RCX, align 8, !tbaa !2428
  %3341 = load i64, i64* %RAX
  %3342 = load i64, i64* %RCX
  %3343 = mul i64 %3342, 4
  %3344 = add i64 %3343, %3341
  %3345 = load i64, i64* %PC
  %3346 = add i64 %3345, 3
  store i64 %3346, i64* %PC
  %3347 = inttoptr i64 %3344 to i32*
  %3348 = load i32, i32* %3347
  %3349 = zext i32 %3348 to i64
  store i64 %3349, i64* %RDX, align 8, !tbaa !2428
  %3350 = load i64, i64* %RDX
  %3351 = load i64, i64* %RBP
  %3352 = sub i64 %3351, 96
  %3353 = load i64, i64* %PC
  %3354 = add i64 %3353, 4
  store i64 %3354, i64* %PC
  %3355 = inttoptr i64 %3352 to i32*
  %3356 = load i32, i32* %3355
  %3357 = shl i64 %3350, 32
  %3358 = ashr exact i64 %3357, 32
  %3359 = sext i32 %3356 to i64
  %3360 = mul nsw i64 %3359, %3358
  %3361 = trunc i64 %3360 to i32
  %3362 = and i64 %3360, 4294967295
  store i64 %3362, i64* %RDX, align 8, !tbaa !2428
  %3363 = shl i64 %3360, 32
  %3364 = ashr exact i64 %3363, 32
  %3365 = icmp ne i64 %3364, %3360
  %3366 = zext i1 %3365 to i8
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3366, i8* %3367, align 1, !tbaa !2432
  %3368 = and i32 %3361, 255
  %3369 = call i32 @llvm.ctpop.i32(i32 %3368) #17
  %3370 = trunc i32 %3369 to i8
  %3371 = and i8 %3370, 1
  %3372 = xor i8 %3371, 1
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3372, i8* %3373, align 1, !tbaa !2446
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3374, align 1, !tbaa !2447
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3375, align 1, !tbaa !2448
  %3376 = lshr i32 %3361, 31
  %3377 = trunc i32 %3376 to i8
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3377, i8* %3378, align 1, !tbaa !2449
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3366, i8* %3379, align 1, !tbaa !2450
  %3380 = load i64, i64* %RBP
  %3381 = sub i64 %3380, 96
  %3382 = load i32, i32* %EDX
  %3383 = zext i32 %3382 to i64
  %3384 = load i64, i64* %PC
  %3385 = add i64 %3384, 3
  store i64 %3385, i64* %PC
  %3386 = inttoptr i64 %3381 to i32*
  store i32 %3382, i32* %3386
  %3387 = load i64, i64* %RBP
  %3388 = sub i64 %3387, 72
  %3389 = load i64, i64* %PC
  %3390 = add i64 %3389, 3
  store i64 %3390, i64* %PC
  %3391 = inttoptr i64 %3388 to i32*
  %3392 = load i32, i32* %3391
  %3393 = zext i32 %3392 to i64
  store i64 %3393, i64* %RAX, align 8, !tbaa !2428
  %3394 = load i64, i64* %RAX
  %3395 = load i64, i64* %PC
  %3396 = add i64 %3395, 3
  store i64 %3396, i64* %PC
  %3397 = trunc i64 %3394 to i32
  %3398 = add i32 1, %3397
  %3399 = zext i32 %3398 to i64
  store i64 %3399, i64* %RAX, align 8, !tbaa !2428
  %3400 = icmp ult i32 %3398, %3397
  %3401 = icmp ult i32 %3398, 1
  %3402 = or i1 %3400, %3401
  %3403 = zext i1 %3402 to i8
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3403, i8* %3404, align 1, !tbaa !2432
  %3405 = and i32 %3398, 255
  %3406 = call i32 @llvm.ctpop.i32(i32 %3405) #17
  %3407 = trunc i32 %3406 to i8
  %3408 = and i8 %3407, 1
  %3409 = xor i8 %3408, 1
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3409, i8* %3410, align 1, !tbaa !2446
  %3411 = xor i64 1, %3394
  %3412 = trunc i64 %3411 to i32
  %3413 = xor i32 %3412, %3398
  %3414 = lshr i32 %3413, 4
  %3415 = trunc i32 %3414 to i8
  %3416 = and i8 %3415, 1
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3416, i8* %3417, align 1, !tbaa !2447
  %3418 = icmp eq i32 %3398, 0
  %3419 = zext i1 %3418 to i8
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3419, i8* %3420, align 1, !tbaa !2448
  %3421 = lshr i32 %3398, 31
  %3422 = trunc i32 %3421 to i8
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3422, i8* %3423, align 1, !tbaa !2449
  %3424 = lshr i32 %3397, 31
  %3425 = xor i32 %3421, %3424
  %3426 = add nuw nsw i32 %3425, %3421
  %3427 = icmp eq i32 %3426, 2
  %3428 = zext i1 %3427 to i8
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3428, i8* %3429, align 1, !tbaa !2450
  %3430 = load i64, i64* %RBP
  %3431 = sub i64 %3430, 72
  %3432 = load i32, i32* %EAX
  %3433 = zext i32 %3432 to i64
  %3434 = load i64, i64* %PC
  %3435 = add i64 %3434, 3
  store i64 %3435, i64* %PC
  %3436 = inttoptr i64 %3431 to i32*
  store i32 %3432, i32* %3436
  %3437 = load i64, i64* %PC
  %3438 = sub i64 %3437, 39
  %3439 = load i64, i64* %PC
  %3440 = add i64 %3439, 5
  store i64 %3440, i64* %PC
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3438, i64* %3441, align 8, !tbaa !2428
  br label %block_400b87

block_400bca:                                     ; preds = %block_400bc0
  %3442 = load i64, i64* %RBP
  %3443 = sub i64 %3442, 16
  %3444 = load i64, i64* %PC
  %3445 = add i64 %3444, 4
  store i64 %3445, i64* %PC
  %3446 = inttoptr i64 %3443 to i64*
  %3447 = load i64, i64* %3446
  store i64 %3447, i64* %RAX, align 8, !tbaa !2428
  %3448 = load i64, i64* %RBP
  %3449 = sub i64 %3448, 72
  %3450 = load i64, i64* %PC
  %3451 = add i64 %3450, 4
  store i64 %3451, i64* %PC
  %3452 = inttoptr i64 %3449 to i32*
  %3453 = load i32, i32* %3452
  %3454 = sext i32 %3453 to i64
  store i64 %3454, i64* %RCX, align 8, !tbaa !2428
  %3455 = load i64, i64* %RAX
  %3456 = load i64, i64* %RCX
  %3457 = mul i64 %3456, 4
  %3458 = add i64 %3457, %3455
  %3459 = load i64, i64* %PC
  %3460 = add i64 %3459, 3
  store i64 %3460, i64* %PC
  %3461 = inttoptr i64 %3458 to i32*
  %3462 = load i32, i32* %3461
  %3463 = zext i32 %3462 to i64
  store i64 %3463, i64* %RDX, align 8, !tbaa !2428
  %3464 = load i64, i64* %RBP
  %3465 = sub i64 %3464, 84
  %3466 = load i32, i32* %EDX
  %3467 = zext i32 %3466 to i64
  %3468 = load i64, i64* %PC
  %3469 = add i64 %3468, 3
  store i64 %3469, i64* %PC
  %3470 = inttoptr i64 %3465 to i32*
  store i32 %3466, i32* %3470
  %3471 = load i64, i64* %RBP
  %3472 = sub i64 %3471, 96
  %3473 = load i64, i64* %PC
  %3474 = add i64 %3473, 3
  store i64 %3474, i64* %PC
  %3475 = inttoptr i64 %3472 to i32*
  %3476 = load i32, i32* %3475
  %3477 = zext i32 %3476 to i64
  store i64 %3477, i64* %RAX, align 8, !tbaa !2428
  %3478 = load i64, i64* %RBP
  %3479 = sub i64 %3478, 84
  %3480 = load i64, i64* %PC
  %3481 = add i64 %3480, 3
  store i64 %3481, i64* %PC
  %3482 = inttoptr i64 %3479 to i32*
  %3483 = load i32, i32* %3482
  %3484 = zext i32 %3483 to i64
  store i64 %3484, i64* %RDX, align 8, !tbaa !2428
  %3485 = load i64, i64* %RDX
  %3486 = load i64, i64* %RBP
  %3487 = sub i64 %3486, 88
  %3488 = load i64, i64* %PC
  %3489 = add i64 %3488, 4
  store i64 %3489, i64* %PC
  %3490 = inttoptr i64 %3487 to i32*
  %3491 = load i32, i32* %3490
  %3492 = shl i64 %3485, 32
  %3493 = ashr exact i64 %3492, 32
  %3494 = sext i32 %3491 to i64
  %3495 = mul nsw i64 %3494, %3493
  %3496 = trunc i64 %3495 to i32
  %3497 = and i64 %3495, 4294967295
  store i64 %3497, i64* %RDX, align 8, !tbaa !2428
  %3498 = shl i64 %3495, 32
  %3499 = ashr exact i64 %3498, 32
  %3500 = icmp ne i64 %3499, %3495
  %3501 = zext i1 %3500 to i8
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3501, i8* %3502, align 1, !tbaa !2432
  %3503 = and i32 %3496, 255
  %3504 = call i32 @llvm.ctpop.i32(i32 %3503) #17
  %3505 = trunc i32 %3504 to i8
  %3506 = and i8 %3505, 1
  %3507 = xor i8 %3506, 1
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3507, i8* %3508, align 1, !tbaa !2446
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3509, align 1, !tbaa !2447
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3510, align 1, !tbaa !2448
  %3511 = lshr i32 %3496, 31
  %3512 = trunc i32 %3511 to i8
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3512, i8* %3513, align 1, !tbaa !2449
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3501, i8* %3514, align 1, !tbaa !2450
  %3515 = load i64, i64* %RBP
  %3516 = sub i64 %3515, 164
  %3517 = load i32, i32* %EDX
  %3518 = zext i32 %3517 to i64
  %3519 = load i64, i64* %PC
  %3520 = add i64 %3519, 6
  store i64 %3520, i64* %PC
  %3521 = inttoptr i64 %3516 to i32*
  store i32 %3517, i32* %3521
  %3522 = load i64, i64* %PC
  %3523 = add i64 %3522, 1
  store i64 %3523, i64* %PC
  %3524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3526 = bitcast %union.anon* %3525 to i32*
  %3527 = load i32, i32* %3526, align 8, !tbaa !2454
  %3528 = sext i32 %3527 to i64
  %3529 = lshr i64 %3528, 32
  store i64 %3529, i64* %3524, align 8, !tbaa !2428
  %3530 = load i64, i64* %RBP
  %3531 = sub i64 %3530, 164
  %3532 = load i64, i64* %PC
  %3533 = add i64 %3532, 6
  store i64 %3533, i64* %PC
  %3534 = inttoptr i64 %3531 to i32*
  %3535 = load i32, i32* %3534
  %3536 = zext i32 %3535 to i64
  store i64 %3536, i64* %RSI, align 8, !tbaa !2428
  %3537 = load i32, i32* %ESI
  %3538 = zext i32 %3537 to i64
  %3539 = load i64, i64* %PC
  %3540 = add i64 %3539, 2
  store i64 %3540, i64* %PC
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3542 = bitcast %union.anon* %3541 to i32*
  %3543 = load i32, i32* %3542, align 8, !tbaa !2454
  %3544 = zext i32 %3543 to i64
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3546 = bitcast %union.anon* %3545 to i32*
  %3547 = load i32, i32* %3546, align 8, !tbaa !2454
  %3548 = zext i32 %3547 to i64
  %3549 = shl i64 %3538, 32
  %3550 = ashr exact i64 %3549, 32
  %3551 = shl nuw i64 %3548, 32
  %3552 = or i64 %3551, %3544
  %3553 = sdiv i64 %3552, %3550
  %3554 = shl i64 %3553, 32
  %3555 = ashr exact i64 %3554, 32
  %3556 = icmp eq i64 %3553, %3555
  br i1 %3556, label %3561, label %3557

; <label>:3557:                                   ; preds = %block_400bca
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3559 = load i64, i64* %3558, align 8, !tbaa !2428
  %3560 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3559, %struct.Memory* %MEMORY.3) #18
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:3561:                                   ; preds = %block_400bca
  %3562 = srem i64 %3552, %3550
  %3563 = getelementptr inbounds %union.anon, %union.anon* %3541, i64 0, i32 0
  %3564 = and i64 %3553, 4294967295
  store i64 %3564, i64* %3563, align 8, !tbaa !2428
  %3565 = getelementptr inbounds %union.anon, %union.anon* %3545, i64 0, i32 0
  %3566 = and i64 %3562, 4294967295
  store i64 %3566, i64* %3565, align 8, !tbaa !2428
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3567, align 1, !tbaa !2432
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3568, align 1, !tbaa !2446
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3569, align 1, !tbaa !2447
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3570, align 1, !tbaa !2448
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3571, align 1, !tbaa !2449
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3572, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %3557, %3561
  %3573 = phi %struct.Memory* [ %3560, %3557 ], [ %MEMORY.3, %3561 ]
  %3574 = load i64, i64* %RBP
  %3575 = sub i64 %3574, 92
  %3576 = load i32, i32* %EAX
  %3577 = zext i32 %3576 to i64
  %3578 = load i64, i64* %PC
  %3579 = add i64 %3578, 3
  store i64 %3579, i64* %PC
  %3580 = inttoptr i64 %3575 to i32*
  store i32 %3576, i32* %3580
  %3581 = load i64, i64* %RBP
  %3582 = sub i64 %3581, 88
  %3583 = load i64, i64* %PC
  %3584 = add i64 %3583, 3
  store i64 %3584, i64* %PC
  %3585 = inttoptr i64 %3582 to i32*
  %3586 = load i32, i32* %3585
  %3587 = zext i32 %3586 to i64
  store i64 %3587, i64* %RAX, align 8, !tbaa !2428
  %3588 = load i64, i64* %RAX
  %3589 = load i64, i64* %PC
  %3590 = add i64 %3589, 3
  store i64 %3590, i64* %PC
  %3591 = trunc i64 %3588 to i32
  %3592 = shl i32 %3591, 1
  %3593 = icmp slt i32 %3591, 0
  %3594 = icmp slt i32 %3592, 0
  %3595 = xor i1 %3593, %3594
  %3596 = zext i32 %3592 to i64
  store i64 %3596, i64* %RAX, align 8, !tbaa !2428
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3598 = zext i1 %3593 to i8
  store i8 %3598, i8* %3597, align 1, !tbaa !2451
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3600 = and i32 %3592, 254
  %3601 = call i32 @llvm.ctpop.i32(i32 %3600) #17
  %3602 = trunc i32 %3601 to i8
  %3603 = and i8 %3602, 1
  %3604 = xor i8 %3603, 1
  store i8 %3604, i8* %3599, align 1, !tbaa !2451
  %3605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3605, align 1, !tbaa !2451
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3607 = icmp eq i32 %3592, 0
  %3608 = zext i1 %3607 to i8
  store i8 %3608, i8* %3606, align 1, !tbaa !2451
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3610 = lshr i32 %3592, 31
  %3611 = trunc i32 %3610 to i8
  store i8 %3611, i8* %3609, align 1, !tbaa !2451
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3613 = zext i1 %3595 to i8
  store i8 %3613, i8* %3612, align 1, !tbaa !2451
  %3614 = load i64, i64* %RBP
  %3615 = sub i64 %3614, 48
  %3616 = load i32, i32* %EAX
  %3617 = zext i32 %3616 to i64
  %3618 = load i64, i64* %PC
  %3619 = add i64 %3618, 3
  store i64 %3619, i64* %PC
  %3620 = inttoptr i64 %3615 to i32*
  store i32 %3616, i32* %3620
  %3621 = load i64, i64* %RBP
  %3622 = sub i64 %3621, 48
  %3623 = load i64, i64* %PC
  %3624 = add i64 %3623, 3
  store i64 %3624, i64* %PC
  %3625 = inttoptr i64 %3622 to i32*
  %3626 = load i32, i32* %3625
  %3627 = zext i32 %3626 to i64
  store i64 %3627, i64* %RAX, align 8, !tbaa !2428
  %3628 = load i64, i64* %RAX
  %3629 = load i64, i64* %RBP
  %3630 = sub i64 %3629, 84
  %3631 = load i64, i64* %PC
  %3632 = add i64 %3631, 4
  store i64 %3632, i64* %PC
  %3633 = inttoptr i64 %3630 to i32*
  %3634 = load i32, i32* %3633
  %3635 = shl i64 %3628, 32
  %3636 = ashr exact i64 %3635, 32
  %3637 = sext i32 %3634 to i64
  %3638 = mul nsw i64 %3637, %3636
  %3639 = trunc i64 %3638 to i32
  %3640 = and i64 %3638, 4294967295
  store i64 %3640, i64* %RAX, align 8, !tbaa !2428
  %3641 = shl i64 %3638, 32
  %3642 = ashr exact i64 %3641, 32
  %3643 = icmp ne i64 %3642, %3638
  %3644 = zext i1 %3643 to i8
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3644, i8* %3645, align 1, !tbaa !2432
  %3646 = and i32 %3639, 255
  %3647 = call i32 @llvm.ctpop.i32(i32 %3646) #17
  %3648 = trunc i32 %3647 to i8
  %3649 = and i8 %3648, 1
  %3650 = xor i8 %3649, 1
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3650, i8* %3651, align 1, !tbaa !2446
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3652, align 1, !tbaa !2447
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3653, align 1, !tbaa !2448
  %3654 = lshr i32 %3639, 31
  %3655 = trunc i32 %3654 to i8
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3655, i8* %3656, align 1, !tbaa !2449
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3644, i8* %3657, align 1, !tbaa !2450
  %3658 = load i64, i64* %RBP
  %3659 = sub i64 %3658, 52
  %3660 = load i32, i32* %EAX
  %3661 = zext i32 %3660 to i64
  %3662 = load i64, i64* %PC
  %3663 = add i64 %3662, 3
  store i64 %3663, i64* %PC
  %3664 = inttoptr i64 %3659 to i32*
  store i32 %3660, i32* %3664
  %3665 = load i64, i64* %RBP
  %3666 = sub i64 %3665, 52
  %3667 = load i64, i64* %PC
  %3668 = add i64 %3667, 3
  store i64 %3668, i64* %PC
  %3669 = inttoptr i64 %3666 to i32*
  %3670 = load i32, i32* %3669
  %3671 = zext i32 %3670 to i64
  store i64 %3671, i64* %RAX, align 8, !tbaa !2428
  %3672 = load i64, i64* %RAX
  %3673 = load i64, i64* %RBP
  %3674 = sub i64 %3673, 92
  %3675 = load i64, i64* %PC
  %3676 = add i64 %3675, 4
  store i64 %3676, i64* %PC
  %3677 = inttoptr i64 %3674 to i32*
  %3678 = load i32, i32* %3677
  %3679 = shl i64 %3672, 32
  %3680 = ashr exact i64 %3679, 32
  %3681 = sext i32 %3678 to i64
  %3682 = mul nsw i64 %3681, %3680
  %3683 = trunc i64 %3682 to i32
  %3684 = and i64 %3682, 4294967295
  store i64 %3684, i64* %RAX, align 8, !tbaa !2428
  %3685 = shl i64 %3682, 32
  %3686 = ashr exact i64 %3685, 32
  %3687 = icmp ne i64 %3686, %3682
  %3688 = zext i1 %3687 to i8
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3688, i8* %3689, align 1, !tbaa !2432
  %3690 = and i32 %3683, 255
  %3691 = call i32 @llvm.ctpop.i32(i32 %3690) #17
  %3692 = trunc i32 %3691 to i8
  %3693 = and i8 %3692, 1
  %3694 = xor i8 %3693, 1
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3694, i8* %3695, align 1, !tbaa !2446
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3696, align 1, !tbaa !2447
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3697, align 1, !tbaa !2448
  %3698 = lshr i32 %3683, 31
  %3699 = trunc i32 %3698 to i8
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3699, i8* %3700, align 1, !tbaa !2449
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3688, i8* %3701, align 1, !tbaa !2450
  %3702 = load i64, i64* %RBP
  %3703 = sub i64 %3702, 56
  %3704 = load i32, i32* %EAX
  %3705 = zext i32 %3704 to i64
  %3706 = load i64, i64* %PC
  %3707 = add i64 %3706, 3
  store i64 %3707, i64* %PC
  %3708 = inttoptr i64 %3703 to i32*
  store i32 %3704, i32* %3708
  %3709 = load i64, i64* %RBP
  %3710 = sub i64 %3709, 40
  %3711 = load i64, i64* %PC
  %3712 = add i64 %3711, 7
  store i64 %3712, i64* %PC
  %3713 = inttoptr i64 %3710 to i32*
  store i32 1, i32* %3713
  %3714 = load i64, i64* %RBP
  %3715 = sub i64 %3714, 32
  %3716 = load i64, i64* %PC
  %3717 = add i64 %3716, 7
  store i64 %3717, i64* %PC
  %3718 = inttoptr i64 %3715 to i32*
  store i32 1, i32* %3718
  br label %block_400c1f

block_400eac:                                     ; preds = %block_400ea0
  %3719 = load i64, i64* %RBP
  %3720 = sub i64 %3719, 32
  %3721 = load i64, i64* %PC
  %3722 = add i64 %3721, 3
  store i64 %3722, i64* %PC
  %3723 = inttoptr i64 %3720 to i32*
  %3724 = load i32, i32* %3723
  %3725 = zext i32 %3724 to i64
  store i64 %3725, i64* %RAX, align 8, !tbaa !2428
  %3726 = load i64, i64* %RBP
  %3727 = sub i64 %3726, 76
  %3728 = load i32, i32* %EAX
  %3729 = zext i32 %3728 to i64
  %3730 = load i64, i64* %PC
  %3731 = add i64 %3730, 3
  store i64 %3731, i64* %PC
  %3732 = inttoptr i64 %3727 to i32*
  store i32 %3728, i32* %3732
  %3733 = load i64, i64* %RBP
  %3734 = sub i64 %3733, 76
  %3735 = load i64, i64* %PC
  %3736 = add i64 %3735, 3
  store i64 %3736, i64* %PC
  %3737 = inttoptr i64 %3734 to i32*
  %3738 = load i32, i32* %3737
  %3739 = zext i32 %3738 to i64
  store i64 %3739, i64* %RAX, align 8, !tbaa !2428
  %3740 = load i64, i64* %RAX
  %3741 = load i64, i64* %RBP
  %3742 = sub i64 %3741, 60
  %3743 = load i64, i64* %PC
  %3744 = add i64 %3743, 3
  store i64 %3744, i64* %PC
  %3745 = trunc i64 %3740 to i32
  %3746 = inttoptr i64 %3742 to i32*
  %3747 = load i32, i32* %3746
  %3748 = add i32 %3747, %3745
  %3749 = zext i32 %3748 to i64
  store i64 %3749, i64* %RAX, align 8, !tbaa !2428
  %3750 = icmp ult i32 %3748, %3745
  %3751 = icmp ult i32 %3748, %3747
  %3752 = or i1 %3750, %3751
  %3753 = zext i1 %3752 to i8
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3753, i8* %3754, align 1, !tbaa !2432
  %3755 = and i32 %3748, 255
  %3756 = call i32 @llvm.ctpop.i32(i32 %3755) #17
  %3757 = trunc i32 %3756 to i8
  %3758 = and i8 %3757, 1
  %3759 = xor i8 %3758, 1
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3759, i8* %3760, align 1, !tbaa !2446
  %3761 = xor i32 %3747, %3745
  %3762 = xor i32 %3761, %3748
  %3763 = lshr i32 %3762, 4
  %3764 = trunc i32 %3763 to i8
  %3765 = and i8 %3764, 1
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3765, i8* %3766, align 1, !tbaa !2447
  %3767 = icmp eq i32 %3748, 0
  %3768 = zext i1 %3767 to i8
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3768, i8* %3769, align 1, !tbaa !2448
  %3770 = lshr i32 %3748, 31
  %3771 = trunc i32 %3770 to i8
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3771, i8* %3772, align 1, !tbaa !2449
  %3773 = lshr i32 %3745, 31
  %3774 = lshr i32 %3747, 31
  %3775 = xor i32 %3770, %3773
  %3776 = xor i32 %3770, %3774
  %3777 = add nuw nsw i32 %3775, %3776
  %3778 = icmp eq i32 %3777, 2
  %3779 = zext i1 %3778 to i8
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3779, i8* %3780, align 1, !tbaa !2450
  %3781 = load i64, i64* %RBP
  %3782 = sub i64 %3781, 80
  %3783 = load i32, i32* %EAX
  %3784 = zext i32 %3783 to i64
  %3785 = load i64, i64* %PC
  %3786 = add i64 %3785, 3
  store i64 %3786, i64* %PC
  %3787 = inttoptr i64 %3782 to i32*
  store i32 %3783, i32* %3787
  %3788 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3789 = load i64, i64* %RBP
  %3790 = sub i64 %3789, 152
  %3791 = load i64, i64* %PC
  %3792 = add i64 %3791, 8
  store i64 %3792, i64* %PC
  %3793 = inttoptr i64 %3790 to double*
  %3794 = load double, double* %3793
  %3795 = bitcast i8* %3788 to double*
  store double %3794, double* %3795, align 1, !tbaa !2452
  %3796 = getelementptr inbounds i8, i8* %3788, i64 8
  %3797 = bitcast i8* %3796 to double*
  store double 0.000000e+00, double* %3797, align 1, !tbaa !2452
  %3798 = load i64, i64* %RBP
  %3799 = sub i64 %3798, 8
  %3800 = load i64, i64* %PC
  %3801 = add i64 %3800, 4
  store i64 %3801, i64* %PC
  %3802 = inttoptr i64 %3799 to i64*
  %3803 = load i64, i64* %3802
  store i64 %3803, i64* %RCX, align 8, !tbaa !2428
  %3804 = load i64, i64* %RBP
  %3805 = sub i64 %3804, 80
  %3806 = load i64, i64* %PC
  %3807 = add i64 %3806, 4
  store i64 %3807, i64* %PC
  %3808 = inttoptr i64 %3805 to i32*
  %3809 = load i32, i32* %3808
  %3810 = sext i32 %3809 to i64
  store i64 %3810, i64* %RDX, align 8, !tbaa !2428
  %3811 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3812 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3813 = load i64, i64* %RCX
  %3814 = load i64, i64* %RDX
  %3815 = mul i64 %3814, 8
  %3816 = add i64 %3815, %3813
  %3817 = load i64, i64* %PC
  %3818 = add i64 %3817, 5
  store i64 %3818, i64* %PC
  %3819 = bitcast i8* %3812 to double*
  %3820 = load double, double* %3819, align 1
  %3821 = getelementptr inbounds i8, i8* %3812, i64 8
  %3822 = bitcast i8* %3821 to i64*
  %3823 = load i64, i64* %3822, align 1
  %3824 = inttoptr i64 %3816 to double*
  %3825 = load double, double* %3824
  %3826 = fmul double %3820, %3825
  %3827 = bitcast i8* %3811 to double*
  store double %3826, double* %3827, align 1, !tbaa !2452
  %3828 = getelementptr inbounds i8, i8* %3811, i64 8
  %3829 = bitcast i8* %3828 to i64*
  store i64 %3823, i64* %3829, align 1, !tbaa !2452
  %3830 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3831 = load i64, i64* %RBP
  %3832 = sub i64 %3831, 128
  %3833 = load i64, i64* %PC
  %3834 = add i64 %3833, 5
  store i64 %3834, i64* %PC
  %3835 = inttoptr i64 %3832 to double*
  %3836 = load double, double* %3835
  %3837 = bitcast i8* %3830 to double*
  store double %3836, double* %3837, align 1, !tbaa !2452
  %3838 = getelementptr inbounds i8, i8* %3830, i64 8
  %3839 = bitcast i8* %3838 to double*
  store double 0.000000e+00, double* %3839, align 1, !tbaa !2452
  %3840 = load i64, i64* %RBP
  %3841 = sub i64 %3840, 8
  %3842 = load i64, i64* %PC
  %3843 = add i64 %3842, 4
  store i64 %3843, i64* %PC
  %3844 = inttoptr i64 %3841 to i64*
  %3845 = load i64, i64* %3844
  store i64 %3845, i64* %RCX, align 8, !tbaa !2428
  %3846 = load i64, i64* %RBP
  %3847 = sub i64 %3846, 80
  %3848 = load i64, i64* %PC
  %3849 = add i64 %3848, 3
  store i64 %3849, i64* %PC
  %3850 = inttoptr i64 %3847 to i32*
  %3851 = load i32, i32* %3850
  %3852 = zext i32 %3851 to i64
  store i64 %3852, i64* %RAX, align 8, !tbaa !2428
  %3853 = load i64, i64* %RAX
  %3854 = load i64, i64* %PC
  %3855 = add i64 %3854, 3
  store i64 %3855, i64* %PC
  %3856 = trunc i64 %3853 to i32
  %3857 = add i32 1, %3856
  %3858 = zext i32 %3857 to i64
  store i64 %3858, i64* %RAX, align 8, !tbaa !2428
  %3859 = icmp ult i32 %3857, %3856
  %3860 = icmp ult i32 %3857, 1
  %3861 = or i1 %3859, %3860
  %3862 = zext i1 %3861 to i8
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3862, i8* %3863, align 1, !tbaa !2432
  %3864 = and i32 %3857, 255
  %3865 = call i32 @llvm.ctpop.i32(i32 %3864) #17
  %3866 = trunc i32 %3865 to i8
  %3867 = and i8 %3866, 1
  %3868 = xor i8 %3867, 1
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3868, i8* %3869, align 1, !tbaa !2446
  %3870 = xor i64 1, %3853
  %3871 = trunc i64 %3870 to i32
  %3872 = xor i32 %3871, %3857
  %3873 = lshr i32 %3872, 4
  %3874 = trunc i32 %3873 to i8
  %3875 = and i8 %3874, 1
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3875, i8* %3876, align 1, !tbaa !2447
  %3877 = icmp eq i32 %3857, 0
  %3878 = zext i1 %3877 to i8
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3878, i8* %3879, align 1, !tbaa !2448
  %3880 = lshr i32 %3857, 31
  %3881 = trunc i32 %3880 to i8
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3881, i8* %3882, align 1, !tbaa !2449
  %3883 = lshr i32 %3856, 31
  %3884 = xor i32 %3880, %3883
  %3885 = add nuw nsw i32 %3884, %3880
  %3886 = icmp eq i32 %3885, 2
  %3887 = zext i1 %3886 to i8
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3887, i8* %3888, align 1, !tbaa !2450
  %3889 = load i32, i32* %EAX
  %3890 = zext i32 %3889 to i64
  %3891 = load i64, i64* %PC
  %3892 = add i64 %3891, 3
  store i64 %3892, i64* %PC
  %3893 = shl i64 %3890, 32
  %3894 = ashr exact i64 %3893, 32
  store i64 %3894, i64* %RDX, align 8, !tbaa !2428
  %3895 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3896 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3897 = load i64, i64* %RCX
  %3898 = load i64, i64* %RDX
  %3899 = mul i64 %3898, 8
  %3900 = add i64 %3899, %3897
  %3901 = load i64, i64* %PC
  %3902 = add i64 %3901, 5
  store i64 %3902, i64* %PC
  %3903 = bitcast i8* %3896 to double*
  %3904 = load double, double* %3903, align 1
  %3905 = getelementptr inbounds i8, i8* %3896, i64 8
  %3906 = bitcast i8* %3905 to i64*
  %3907 = load i64, i64* %3906, align 1
  %3908 = inttoptr i64 %3900 to double*
  %3909 = load double, double* %3908
  %3910 = fmul double %3904, %3909
  %3911 = bitcast i8* %3895 to double*
  store double %3910, double* %3911, align 1, !tbaa !2452
  %3912 = getelementptr inbounds i8, i8* %3895, i64 8
  %3913 = bitcast i8* %3912 to i64*
  store i64 %3907, i64* %3913, align 1, !tbaa !2452
  %3914 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3915 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3916 = bitcast %union.vec128_t* %XMM1 to i8*
  %3917 = load i64, i64* %PC
  %3918 = add i64 %3917, 4
  store i64 %3918, i64* %PC
  %3919 = bitcast i8* %3915 to double*
  %3920 = load double, double* %3919, align 1
  %3921 = getelementptr inbounds i8, i8* %3915, i64 8
  %3922 = bitcast i8* %3921 to i64*
  %3923 = load i64, i64* %3922, align 1
  %3924 = bitcast i8* %3916 to double*
  %3925 = load double, double* %3924, align 1
  %3926 = fsub double %3920, %3925
  %3927 = bitcast i8* %3914 to double*
  store double %3926, double* %3927, align 1, !tbaa !2452
  %3928 = getelementptr inbounds i8, i8* %3914, i64 8
  %3929 = bitcast i8* %3928 to i64*
  store i64 %3923, i64* %3929, align 1, !tbaa !2452
  %3930 = load i64, i64* %RBP
  %3931 = sub i64 %3930, 112
  %3932 = bitcast %union.vec128_t* %XMM0 to i8*
  %3933 = load i64, i64* %PC
  %3934 = add i64 %3933, 5
  store i64 %3934, i64* %PC
  %3935 = bitcast i8* %3932 to double*
  %3936 = load double, double* %3935, align 1
  %3937 = inttoptr i64 %3931 to double*
  store double %3936, double* %3937
  %3938 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3939 = load i64, i64* %RBP
  %3940 = sub i64 %3939, 152
  %3941 = load i64, i64* %PC
  %3942 = add i64 %3941, 8
  store i64 %3942, i64* %PC
  %3943 = inttoptr i64 %3940 to double*
  %3944 = load double, double* %3943
  %3945 = bitcast i8* %3938 to double*
  store double %3944, double* %3945, align 1, !tbaa !2452
  %3946 = getelementptr inbounds i8, i8* %3938, i64 8
  %3947 = bitcast i8* %3946 to double*
  store double 0.000000e+00, double* %3947, align 1, !tbaa !2452
  %3948 = load i64, i64* %RBP
  %3949 = sub i64 %3948, 8
  %3950 = load i64, i64* %PC
  %3951 = add i64 %3950, 4
  store i64 %3951, i64* %PC
  %3952 = inttoptr i64 %3949 to i64*
  %3953 = load i64, i64* %3952
  store i64 %3953, i64* %RCX, align 8, !tbaa !2428
  %3954 = load i64, i64* %RBP
  %3955 = sub i64 %3954, 80
  %3956 = load i64, i64* %PC
  %3957 = add i64 %3956, 3
  store i64 %3957, i64* %PC
  %3958 = inttoptr i64 %3955 to i32*
  %3959 = load i32, i32* %3958
  %3960 = zext i32 %3959 to i64
  store i64 %3960, i64* %RAX, align 8, !tbaa !2428
  %3961 = load i64, i64* %RAX
  %3962 = load i64, i64* %PC
  %3963 = add i64 %3962, 3
  store i64 %3963, i64* %PC
  %3964 = trunc i64 %3961 to i32
  %3965 = add i32 1, %3964
  %3966 = zext i32 %3965 to i64
  store i64 %3966, i64* %RAX, align 8, !tbaa !2428
  %3967 = icmp ult i32 %3965, %3964
  %3968 = icmp ult i32 %3965, 1
  %3969 = or i1 %3967, %3968
  %3970 = zext i1 %3969 to i8
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3970, i8* %3971, align 1, !tbaa !2432
  %3972 = and i32 %3965, 255
  %3973 = call i32 @llvm.ctpop.i32(i32 %3972) #17
  %3974 = trunc i32 %3973 to i8
  %3975 = and i8 %3974, 1
  %3976 = xor i8 %3975, 1
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3976, i8* %3977, align 1, !tbaa !2446
  %3978 = xor i64 1, %3961
  %3979 = trunc i64 %3978 to i32
  %3980 = xor i32 %3979, %3965
  %3981 = lshr i32 %3980, 4
  %3982 = trunc i32 %3981 to i8
  %3983 = and i8 %3982, 1
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3983, i8* %3984, align 1, !tbaa !2447
  %3985 = icmp eq i32 %3965, 0
  %3986 = zext i1 %3985 to i8
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3986, i8* %3987, align 1, !tbaa !2448
  %3988 = lshr i32 %3965, 31
  %3989 = trunc i32 %3988 to i8
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3989, i8* %3990, align 1, !tbaa !2449
  %3991 = lshr i32 %3964, 31
  %3992 = xor i32 %3988, %3991
  %3993 = add nuw nsw i32 %3992, %3988
  %3994 = icmp eq i32 %3993, 2
  %3995 = zext i1 %3994 to i8
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3995, i8* %3996, align 1, !tbaa !2450
  %3997 = load i32, i32* %EAX
  %3998 = zext i32 %3997 to i64
  %3999 = load i64, i64* %PC
  %4000 = add i64 %3999, 3
  store i64 %4000, i64* %PC
  %4001 = shl i64 %3998, 32
  %4002 = ashr exact i64 %4001, 32
  store i64 %4002, i64* %RDX, align 8, !tbaa !2428
  %4003 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4004 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4005 = load i64, i64* %RCX
  %4006 = load i64, i64* %RDX
  %4007 = mul i64 %4006, 8
  %4008 = add i64 %4007, %4005
  %4009 = load i64, i64* %PC
  %4010 = add i64 %4009, 5
  store i64 %4010, i64* %PC
  %4011 = bitcast i8* %4004 to double*
  %4012 = load double, double* %4011, align 1
  %4013 = getelementptr inbounds i8, i8* %4004, i64 8
  %4014 = bitcast i8* %4013 to i64*
  %4015 = load i64, i64* %4014, align 1
  %4016 = inttoptr i64 %4008 to double*
  %4017 = load double, double* %4016
  %4018 = fmul double %4012, %4017
  %4019 = bitcast i8* %4003 to double*
  store double %4018, double* %4019, align 1, !tbaa !2452
  %4020 = getelementptr inbounds i8, i8* %4003, i64 8
  %4021 = bitcast i8* %4020 to i64*
  store i64 %4015, i64* %4021, align 1, !tbaa !2452
  %4022 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %4023 = load i64, i64* %RBP
  %4024 = sub i64 %4023, 128
  %4025 = load i64, i64* %PC
  %4026 = add i64 %4025, 5
  store i64 %4026, i64* %PC
  %4027 = inttoptr i64 %4024 to double*
  %4028 = load double, double* %4027
  %4029 = bitcast i8* %4022 to double*
  store double %4028, double* %4029, align 1, !tbaa !2452
  %4030 = getelementptr inbounds i8, i8* %4022, i64 8
  %4031 = bitcast i8* %4030 to double*
  store double 0.000000e+00, double* %4031, align 1, !tbaa !2452
  %4032 = load i64, i64* %RBP
  %4033 = sub i64 %4032, 8
  %4034 = load i64, i64* %PC
  %4035 = add i64 %4034, 4
  store i64 %4035, i64* %PC
  %4036 = inttoptr i64 %4033 to i64*
  %4037 = load i64, i64* %4036
  store i64 %4037, i64* %RCX, align 8, !tbaa !2428
  %4038 = load i64, i64* %RBP
  %4039 = sub i64 %4038, 80
  %4040 = load i64, i64* %PC
  %4041 = add i64 %4040, 4
  store i64 %4041, i64* %PC
  %4042 = inttoptr i64 %4039 to i32*
  %4043 = load i32, i32* %4042
  %4044 = sext i32 %4043 to i64
  store i64 %4044, i64* %RDX, align 8, !tbaa !2428
  %4045 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %4046 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %4047 = load i64, i64* %RCX
  %4048 = load i64, i64* %RDX
  %4049 = mul i64 %4048, 8
  %4050 = add i64 %4049, %4047
  %4051 = load i64, i64* %PC
  %4052 = add i64 %4051, 5
  store i64 %4052, i64* %PC
  %4053 = bitcast i8* %4046 to double*
  %4054 = load double, double* %4053, align 1
  %4055 = getelementptr inbounds i8, i8* %4046, i64 8
  %4056 = bitcast i8* %4055 to i64*
  %4057 = load i64, i64* %4056, align 1
  %4058 = inttoptr i64 %4050 to double*
  %4059 = load double, double* %4058
  %4060 = fmul double %4054, %4059
  %4061 = bitcast i8* %4045 to double*
  store double %4060, double* %4061, align 1, !tbaa !2452
  %4062 = getelementptr inbounds i8, i8* %4045, i64 8
  %4063 = bitcast i8* %4062 to i64*
  store i64 %4057, i64* %4063, align 1, !tbaa !2452
  %4064 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4065 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4066 = bitcast %union.vec128_t* %XMM1 to i8*
  %4067 = load i64, i64* %PC
  %4068 = add i64 %4067, 4
  store i64 %4068, i64* %PC
  %4069 = bitcast i8* %4065 to double*
  %4070 = load double, double* %4069, align 1
  %4071 = getelementptr inbounds i8, i8* %4065, i64 8
  %4072 = bitcast i8* %4071 to i64*
  %4073 = load i64, i64* %4072, align 1
  %4074 = bitcast i8* %4066 to double*
  %4075 = load double, double* %4074, align 1
  %4076 = fadd double %4070, %4075
  %4077 = bitcast i8* %4064 to double*
  store double %4076, double* %4077, align 1, !tbaa !2452
  %4078 = getelementptr inbounds i8, i8* %4064, i64 8
  %4079 = bitcast i8* %4078 to i64*
  store i64 %4073, i64* %4079, align 1, !tbaa !2452
  %4080 = load i64, i64* %RBP
  %4081 = sub i64 %4080, 104
  %4082 = bitcast %union.vec128_t* %XMM0 to i8*
  %4083 = load i64, i64* %PC
  %4084 = add i64 %4083, 5
  store i64 %4084, i64* %PC
  %4085 = bitcast i8* %4082 to double*
  %4086 = load double, double* %4085, align 1
  %4087 = inttoptr i64 %4081 to double*
  store double %4086, double* %4087
  %4088 = load i64, i64* %RBP
  %4089 = sub i64 %4088, 8
  %4090 = load i64, i64* %PC
  %4091 = add i64 %4090, 4
  store i64 %4091, i64* %PC
  %4092 = inttoptr i64 %4089 to i64*
  %4093 = load i64, i64* %4092
  store i64 %4093, i64* %RCX, align 8, !tbaa !2428
  %4094 = load i64, i64* %RBP
  %4095 = sub i64 %4094, 76
  %4096 = load i64, i64* %PC
  %4097 = add i64 %4096, 4
  store i64 %4097, i64* %PC
  %4098 = inttoptr i64 %4095 to i32*
  %4099 = load i32, i32* %4098
  %4100 = sext i32 %4099 to i64
  store i64 %4100, i64* %RDX, align 8, !tbaa !2428
  %4101 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4102 = load i64, i64* %RCX
  %4103 = load i64, i64* %RDX
  %4104 = mul i64 %4103, 8
  %4105 = add i64 %4104, %4102
  %4106 = load i64, i64* %PC
  %4107 = add i64 %4106, 5
  store i64 %4107, i64* %PC
  %4108 = inttoptr i64 %4105 to double*
  %4109 = load double, double* %4108
  %4110 = bitcast i8* %4101 to double*
  store double %4109, double* %4110, align 1, !tbaa !2452
  %4111 = getelementptr inbounds i8, i8* %4101, i64 8
  %4112 = bitcast i8* %4111 to double*
  store double 0.000000e+00, double* %4112, align 1, !tbaa !2452
  %4113 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4114 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4115 = load i64, i64* %RBP
  %4116 = sub i64 %4115, 112
  %4117 = load i64, i64* %PC
  %4118 = add i64 %4117, 5
  store i64 %4118, i64* %PC
  %4119 = bitcast i8* %4114 to double*
  %4120 = load double, double* %4119, align 1
  %4121 = getelementptr inbounds i8, i8* %4114, i64 8
  %4122 = bitcast i8* %4121 to i64*
  %4123 = load i64, i64* %4122, align 1
  %4124 = inttoptr i64 %4116 to double*
  %4125 = load double, double* %4124
  %4126 = fsub double %4120, %4125
  %4127 = bitcast i8* %4113 to double*
  store double %4126, double* %4127, align 1, !tbaa !2452
  %4128 = getelementptr inbounds i8, i8* %4113, i64 8
  %4129 = bitcast i8* %4128 to i64*
  store i64 %4123, i64* %4129, align 1, !tbaa !2452
  %4130 = load i64, i64* %RBP
  %4131 = sub i64 %4130, 8
  %4132 = load i64, i64* %PC
  %4133 = add i64 %4132, 4
  store i64 %4133, i64* %PC
  %4134 = inttoptr i64 %4131 to i64*
  %4135 = load i64, i64* %4134
  store i64 %4135, i64* %RCX, align 8, !tbaa !2428
  %4136 = load i64, i64* %RBP
  %4137 = sub i64 %4136, 80
  %4138 = load i64, i64* %PC
  %4139 = add i64 %4138, 4
  store i64 %4139, i64* %PC
  %4140 = inttoptr i64 %4137 to i32*
  %4141 = load i32, i32* %4140
  %4142 = sext i32 %4141 to i64
  store i64 %4142, i64* %RDX, align 8, !tbaa !2428
  %4143 = load i64, i64* %RCX
  %4144 = load i64, i64* %RDX
  %4145 = mul i64 %4144, 8
  %4146 = add i64 %4145, %4143
  %4147 = bitcast %union.vec128_t* %XMM0 to i8*
  %4148 = load i64, i64* %PC
  %4149 = add i64 %4148, 5
  store i64 %4149, i64* %PC
  %4150 = bitcast i8* %4147 to double*
  %4151 = load double, double* %4150, align 1
  %4152 = inttoptr i64 %4146 to double*
  store double %4151, double* %4152
  %4153 = load i64, i64* %RBP
  %4154 = sub i64 %4153, 8
  %4155 = load i64, i64* %PC
  %4156 = add i64 %4155, 4
  store i64 %4156, i64* %PC
  %4157 = inttoptr i64 %4154 to i64*
  %4158 = load i64, i64* %4157
  store i64 %4158, i64* %RCX, align 8, !tbaa !2428
  %4159 = load i64, i64* %RBP
  %4160 = sub i64 %4159, 76
  %4161 = load i64, i64* %PC
  %4162 = add i64 %4161, 3
  store i64 %4162, i64* %PC
  %4163 = inttoptr i64 %4160 to i32*
  %4164 = load i32, i32* %4163
  %4165 = zext i32 %4164 to i64
  store i64 %4165, i64* %RAX, align 8, !tbaa !2428
  %4166 = load i64, i64* %RAX
  %4167 = load i64, i64* %PC
  %4168 = add i64 %4167, 3
  store i64 %4168, i64* %PC
  %4169 = trunc i64 %4166 to i32
  %4170 = add i32 1, %4169
  %4171 = zext i32 %4170 to i64
  store i64 %4171, i64* %RAX, align 8, !tbaa !2428
  %4172 = icmp ult i32 %4170, %4169
  %4173 = icmp ult i32 %4170, 1
  %4174 = or i1 %4172, %4173
  %4175 = zext i1 %4174 to i8
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4175, i8* %4176, align 1, !tbaa !2432
  %4177 = and i32 %4170, 255
  %4178 = call i32 @llvm.ctpop.i32(i32 %4177) #17
  %4179 = trunc i32 %4178 to i8
  %4180 = and i8 %4179, 1
  %4181 = xor i8 %4180, 1
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4181, i8* %4182, align 1, !tbaa !2446
  %4183 = xor i64 1, %4166
  %4184 = trunc i64 %4183 to i32
  %4185 = xor i32 %4184, %4170
  %4186 = lshr i32 %4185, 4
  %4187 = trunc i32 %4186 to i8
  %4188 = and i8 %4187, 1
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4188, i8* %4189, align 1, !tbaa !2447
  %4190 = icmp eq i32 %4170, 0
  %4191 = zext i1 %4190 to i8
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4191, i8* %4192, align 1, !tbaa !2448
  %4193 = lshr i32 %4170, 31
  %4194 = trunc i32 %4193 to i8
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4194, i8* %4195, align 1, !tbaa !2449
  %4196 = lshr i32 %4169, 31
  %4197 = xor i32 %4193, %4196
  %4198 = add nuw nsw i32 %4197, %4193
  %4199 = icmp eq i32 %4198, 2
  %4200 = zext i1 %4199 to i8
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4200, i8* %4201, align 1, !tbaa !2450
  %4202 = load i32, i32* %EAX
  %4203 = zext i32 %4202 to i64
  %4204 = load i64, i64* %PC
  %4205 = add i64 %4204, 3
  store i64 %4205, i64* %PC
  %4206 = shl i64 %4203, 32
  %4207 = ashr exact i64 %4206, 32
  store i64 %4207, i64* %RDX, align 8, !tbaa !2428
  %4208 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4209 = load i64, i64* %RCX
  %4210 = load i64, i64* %RDX
  %4211 = mul i64 %4210, 8
  %4212 = add i64 %4211, %4209
  %4213 = load i64, i64* %PC
  %4214 = add i64 %4213, 5
  store i64 %4214, i64* %PC
  %4215 = inttoptr i64 %4212 to double*
  %4216 = load double, double* %4215
  %4217 = bitcast i8* %4208 to double*
  store double %4216, double* %4217, align 1, !tbaa !2452
  %4218 = getelementptr inbounds i8, i8* %4208, i64 8
  %4219 = bitcast i8* %4218 to double*
  store double 0.000000e+00, double* %4219, align 1, !tbaa !2452
  %4220 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4221 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4222 = load i64, i64* %RBP
  %4223 = sub i64 %4222, 104
  %4224 = load i64, i64* %PC
  %4225 = add i64 %4224, 5
  store i64 %4225, i64* %PC
  %4226 = bitcast i8* %4221 to double*
  %4227 = load double, double* %4226, align 1
  %4228 = getelementptr inbounds i8, i8* %4221, i64 8
  %4229 = bitcast i8* %4228 to i64*
  %4230 = load i64, i64* %4229, align 1
  %4231 = inttoptr i64 %4223 to double*
  %4232 = load double, double* %4231
  %4233 = fsub double %4227, %4232
  %4234 = bitcast i8* %4220 to double*
  store double %4233, double* %4234, align 1, !tbaa !2452
  %4235 = getelementptr inbounds i8, i8* %4220, i64 8
  %4236 = bitcast i8* %4235 to i64*
  store i64 %4230, i64* %4236, align 1, !tbaa !2452
  %4237 = load i64, i64* %RBP
  %4238 = sub i64 %4237, 8
  %4239 = load i64, i64* %PC
  %4240 = add i64 %4239, 4
  store i64 %4240, i64* %PC
  %4241 = inttoptr i64 %4238 to i64*
  %4242 = load i64, i64* %4241
  store i64 %4242, i64* %RCX, align 8, !tbaa !2428
  %4243 = load i64, i64* %RBP
  %4244 = sub i64 %4243, 80
  %4245 = load i64, i64* %PC
  %4246 = add i64 %4245, 3
  store i64 %4246, i64* %PC
  %4247 = inttoptr i64 %4244 to i32*
  %4248 = load i32, i32* %4247
  %4249 = zext i32 %4248 to i64
  store i64 %4249, i64* %RAX, align 8, !tbaa !2428
  %4250 = load i64, i64* %RAX
  %4251 = load i64, i64* %PC
  %4252 = add i64 %4251, 3
  store i64 %4252, i64* %PC
  %4253 = trunc i64 %4250 to i32
  %4254 = add i32 1, %4253
  %4255 = zext i32 %4254 to i64
  store i64 %4255, i64* %RAX, align 8, !tbaa !2428
  %4256 = icmp ult i32 %4254, %4253
  %4257 = icmp ult i32 %4254, 1
  %4258 = or i1 %4256, %4257
  %4259 = zext i1 %4258 to i8
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4259, i8* %4260, align 1, !tbaa !2432
  %4261 = and i32 %4254, 255
  %4262 = call i32 @llvm.ctpop.i32(i32 %4261) #17
  %4263 = trunc i32 %4262 to i8
  %4264 = and i8 %4263, 1
  %4265 = xor i8 %4264, 1
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4265, i8* %4266, align 1, !tbaa !2446
  %4267 = xor i64 1, %4250
  %4268 = trunc i64 %4267 to i32
  %4269 = xor i32 %4268, %4254
  %4270 = lshr i32 %4269, 4
  %4271 = trunc i32 %4270 to i8
  %4272 = and i8 %4271, 1
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4272, i8* %4273, align 1, !tbaa !2447
  %4274 = icmp eq i32 %4254, 0
  %4275 = zext i1 %4274 to i8
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4275, i8* %4276, align 1, !tbaa !2448
  %4277 = lshr i32 %4254, 31
  %4278 = trunc i32 %4277 to i8
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4278, i8* %4279, align 1, !tbaa !2449
  %4280 = lshr i32 %4253, 31
  %4281 = xor i32 %4277, %4280
  %4282 = add nuw nsw i32 %4281, %4277
  %4283 = icmp eq i32 %4282, 2
  %4284 = zext i1 %4283 to i8
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4284, i8* %4285, align 1, !tbaa !2450
  %4286 = load i32, i32* %EAX
  %4287 = zext i32 %4286 to i64
  %4288 = load i64, i64* %PC
  %4289 = add i64 %4288, 3
  store i64 %4289, i64* %PC
  %4290 = shl i64 %4287, 32
  %4291 = ashr exact i64 %4290, 32
  store i64 %4291, i64* %RDX, align 8, !tbaa !2428
  %4292 = load i64, i64* %RCX
  %4293 = load i64, i64* %RDX
  %4294 = mul i64 %4293, 8
  %4295 = add i64 %4294, %4292
  %4296 = bitcast %union.vec128_t* %XMM0 to i8*
  %4297 = load i64, i64* %PC
  %4298 = add i64 %4297, 5
  store i64 %4298, i64* %PC
  %4299 = bitcast i8* %4296 to double*
  %4300 = load double, double* %4299, align 1
  %4301 = inttoptr i64 %4295 to double*
  store double %4300, double* %4301
  %4302 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4303 = load i64, i64* %RBP
  %4304 = sub i64 %4303, 112
  %4305 = load i64, i64* %PC
  %4306 = add i64 %4305, 5
  store i64 %4306, i64* %PC
  %4307 = inttoptr i64 %4304 to double*
  %4308 = load double, double* %4307
  %4309 = bitcast i8* %4302 to double*
  store double %4308, double* %4309, align 1, !tbaa !2452
  %4310 = getelementptr inbounds i8, i8* %4302, i64 8
  %4311 = bitcast i8* %4310 to double*
  store double 0.000000e+00, double* %4311, align 1, !tbaa !2452
  %4312 = load i64, i64* %RBP
  %4313 = sub i64 %4312, 8
  %4314 = load i64, i64* %PC
  %4315 = add i64 %4314, 4
  store i64 %4315, i64* %PC
  %4316 = inttoptr i64 %4313 to i64*
  %4317 = load i64, i64* %4316
  store i64 %4317, i64* %RCX, align 8, !tbaa !2428
  %4318 = load i64, i64* %RBP
  %4319 = sub i64 %4318, 76
  %4320 = load i64, i64* %PC
  %4321 = add i64 %4320, 4
  store i64 %4321, i64* %PC
  %4322 = inttoptr i64 %4319 to i32*
  %4323 = load i32, i32* %4322
  %4324 = sext i32 %4323 to i64
  store i64 %4324, i64* %RDX, align 8, !tbaa !2428
  %4325 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4326 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4327 = load i64, i64* %RCX
  %4328 = load i64, i64* %RDX
  %4329 = mul i64 %4328, 8
  %4330 = add i64 %4329, %4327
  %4331 = load i64, i64* %PC
  %4332 = add i64 %4331, 5
  store i64 %4332, i64* %PC
  %4333 = bitcast i8* %4326 to double*
  %4334 = load double, double* %4333, align 1
  %4335 = getelementptr inbounds i8, i8* %4326, i64 8
  %4336 = bitcast i8* %4335 to i64*
  %4337 = load i64, i64* %4336, align 1
  %4338 = inttoptr i64 %4330 to double*
  %4339 = load double, double* %4338
  %4340 = fadd double %4334, %4339
  %4341 = bitcast i8* %4325 to double*
  store double %4340, double* %4341, align 1, !tbaa !2452
  %4342 = getelementptr inbounds i8, i8* %4325, i64 8
  %4343 = bitcast i8* %4342 to i64*
  store i64 %4337, i64* %4343, align 1, !tbaa !2452
  %4344 = load i64, i64* %RCX
  %4345 = load i64, i64* %RDX
  %4346 = mul i64 %4345, 8
  %4347 = add i64 %4346, %4344
  %4348 = bitcast %union.vec128_t* %XMM0 to i8*
  %4349 = load i64, i64* %PC
  %4350 = add i64 %4349, 5
  store i64 %4350, i64* %PC
  %4351 = bitcast i8* %4348 to double*
  %4352 = load double, double* %4351, align 1
  %4353 = inttoptr i64 %4347 to double*
  store double %4352, double* %4353
  %4354 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4355 = load i64, i64* %RBP
  %4356 = sub i64 %4355, 104
  %4357 = load i64, i64* %PC
  %4358 = add i64 %4357, 5
  store i64 %4358, i64* %PC
  %4359 = inttoptr i64 %4356 to double*
  %4360 = load double, double* %4359
  %4361 = bitcast i8* %4354 to double*
  store double %4360, double* %4361, align 1, !tbaa !2452
  %4362 = getelementptr inbounds i8, i8* %4354, i64 8
  %4363 = bitcast i8* %4362 to double*
  store double 0.000000e+00, double* %4363, align 1, !tbaa !2452
  %4364 = load i64, i64* %RBP
  %4365 = sub i64 %4364, 8
  %4366 = load i64, i64* %PC
  %4367 = add i64 %4366, 4
  store i64 %4367, i64* %PC
  %4368 = inttoptr i64 %4365 to i64*
  %4369 = load i64, i64* %4368
  store i64 %4369, i64* %RCX, align 8, !tbaa !2428
  %4370 = load i64, i64* %RBP
  %4371 = sub i64 %4370, 76
  %4372 = load i64, i64* %PC
  %4373 = add i64 %4372, 3
  store i64 %4373, i64* %PC
  %4374 = inttoptr i64 %4371 to i32*
  %4375 = load i32, i32* %4374
  %4376 = zext i32 %4375 to i64
  store i64 %4376, i64* %RAX, align 8, !tbaa !2428
  %4377 = load i64, i64* %RAX
  %4378 = load i64, i64* %PC
  %4379 = add i64 %4378, 3
  store i64 %4379, i64* %PC
  %4380 = trunc i64 %4377 to i32
  %4381 = add i32 1, %4380
  %4382 = zext i32 %4381 to i64
  store i64 %4382, i64* %RAX, align 8, !tbaa !2428
  %4383 = icmp ult i32 %4381, %4380
  %4384 = icmp ult i32 %4381, 1
  %4385 = or i1 %4383, %4384
  %4386 = zext i1 %4385 to i8
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4386, i8* %4387, align 1, !tbaa !2432
  %4388 = and i32 %4381, 255
  %4389 = call i32 @llvm.ctpop.i32(i32 %4388) #17
  %4390 = trunc i32 %4389 to i8
  %4391 = and i8 %4390, 1
  %4392 = xor i8 %4391, 1
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4392, i8* %4393, align 1, !tbaa !2446
  %4394 = xor i64 1, %4377
  %4395 = trunc i64 %4394 to i32
  %4396 = xor i32 %4395, %4381
  %4397 = lshr i32 %4396, 4
  %4398 = trunc i32 %4397 to i8
  %4399 = and i8 %4398, 1
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4399, i8* %4400, align 1, !tbaa !2447
  %4401 = icmp eq i32 %4381, 0
  %4402 = zext i1 %4401 to i8
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4402, i8* %4403, align 1, !tbaa !2448
  %4404 = lshr i32 %4381, 31
  %4405 = trunc i32 %4404 to i8
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4405, i8* %4406, align 1, !tbaa !2449
  %4407 = lshr i32 %4380, 31
  %4408 = xor i32 %4404, %4407
  %4409 = add nuw nsw i32 %4408, %4404
  %4410 = icmp eq i32 %4409, 2
  %4411 = zext i1 %4410 to i8
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4411, i8* %4412, align 1, !tbaa !2450
  %4413 = load i32, i32* %EAX
  %4414 = zext i32 %4413 to i64
  %4415 = load i64, i64* %PC
  %4416 = add i64 %4415, 3
  store i64 %4416, i64* %PC
  %4417 = shl i64 %4414, 32
  %4418 = ashr exact i64 %4417, 32
  store i64 %4418, i64* %RDX, align 8, !tbaa !2428
  %4419 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4420 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4421 = load i64, i64* %RCX
  %4422 = load i64, i64* %RDX
  %4423 = mul i64 %4422, 8
  %4424 = add i64 %4423, %4421
  %4425 = load i64, i64* %PC
  %4426 = add i64 %4425, 5
  store i64 %4426, i64* %PC
  %4427 = bitcast i8* %4420 to double*
  %4428 = load double, double* %4427, align 1
  %4429 = getelementptr inbounds i8, i8* %4420, i64 8
  %4430 = bitcast i8* %4429 to i64*
  %4431 = load i64, i64* %4430, align 1
  %4432 = inttoptr i64 %4424 to double*
  %4433 = load double, double* %4432
  %4434 = fadd double %4428, %4433
  %4435 = bitcast i8* %4419 to double*
  store double %4434, double* %4435, align 1, !tbaa !2452
  %4436 = getelementptr inbounds i8, i8* %4419, i64 8
  %4437 = bitcast i8* %4436 to i64*
  store i64 %4431, i64* %4437, align 1, !tbaa !2452
  %4438 = load i64, i64* %RCX
  %4439 = load i64, i64* %RDX
  %4440 = mul i64 %4439, 8
  %4441 = add i64 %4440, %4438
  %4442 = bitcast %union.vec128_t* %XMM0 to i8*
  %4443 = load i64, i64* %PC
  %4444 = add i64 %4443, 5
  store i64 %4444, i64* %PC
  %4445 = bitcast i8* %4442 to double*
  %4446 = load double, double* %4445, align 1
  %4447 = inttoptr i64 %4441 to double*
  store double %4446, double* %4447
  %4448 = load i64, i64* %RBP
  %4449 = sub i64 %4448, 64
  %4450 = load i64, i64* %PC
  %4451 = add i64 %4450, 3
  store i64 %4451, i64* %PC
  %4452 = inttoptr i64 %4449 to i32*
  %4453 = load i32, i32* %4452
  %4454 = zext i32 %4453 to i64
  store i64 %4454, i64* %RAX, align 8, !tbaa !2428
  %4455 = load i64, i64* %RAX
  %4456 = load i64, i64* %RBP
  %4457 = sub i64 %4456, 32
  %4458 = load i64, i64* %PC
  %4459 = add i64 %4458, 3
  store i64 %4459, i64* %PC
  %4460 = trunc i64 %4455 to i32
  %4461 = inttoptr i64 %4457 to i32*
  %4462 = load i32, i32* %4461
  %4463 = add i32 %4462, %4460
  %4464 = zext i32 %4463 to i64
  store i64 %4464, i64* %RAX, align 8, !tbaa !2428
  %4465 = icmp ult i32 %4463, %4460
  %4466 = icmp ult i32 %4463, %4462
  %4467 = or i1 %4465, %4466
  %4468 = zext i1 %4467 to i8
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4468, i8* %4469, align 1, !tbaa !2432
  %4470 = and i32 %4463, 255
  %4471 = call i32 @llvm.ctpop.i32(i32 %4470) #17
  %4472 = trunc i32 %4471 to i8
  %4473 = and i8 %4472, 1
  %4474 = xor i8 %4473, 1
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4474, i8* %4475, align 1, !tbaa !2446
  %4476 = xor i32 %4462, %4460
  %4477 = xor i32 %4476, %4463
  %4478 = lshr i32 %4477, 4
  %4479 = trunc i32 %4478 to i8
  %4480 = and i8 %4479, 1
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4480, i8* %4481, align 1, !tbaa !2447
  %4482 = icmp eq i32 %4463, 0
  %4483 = zext i1 %4482 to i8
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4483, i8* %4484, align 1, !tbaa !2448
  %4485 = lshr i32 %4463, 31
  %4486 = trunc i32 %4485 to i8
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4486, i8* %4487, align 1, !tbaa !2449
  %4488 = lshr i32 %4460, 31
  %4489 = lshr i32 %4462, 31
  %4490 = xor i32 %4485, %4488
  %4491 = xor i32 %4485, %4489
  %4492 = add nuw nsw i32 %4490, %4491
  %4493 = icmp eq i32 %4492, 2
  %4494 = zext i1 %4493 to i8
  %4495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4494, i8* %4495, align 1, !tbaa !2450
  %4496 = load i64, i64* %RBP
  %4497 = sub i64 %4496, 32
  %4498 = load i32, i32* %EAX
  %4499 = zext i32 %4498 to i64
  %4500 = load i64, i64* %PC
  %4501 = add i64 %4500, 3
  store i64 %4501, i64* %PC
  %4502 = inttoptr i64 %4497 to i32*
  store i32 %4498, i32* %4502
  %4503 = load i64, i64* %PC
  %4504 = sub i64 %4503, 265
  %4505 = load i64, i64* %PC
  %4506 = add i64 %4505, 5
  store i64 %4506, i64* %PC
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4504, i64* %4507, align 8, !tbaa !2428
  br label %block_400ea0

block_400d0d:                                     ; preds = %block_400c57
  %4508 = load i64, i64* %PC
  %4509 = add i64 %4508, 5
  %4510 = load i64, i64* %PC
  %4511 = add i64 %4510, 5
  store i64 %4511, i64* %PC
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4509, i64* %4512, align 8, !tbaa !2428
  %4513 = load i64, i64* %RBP
  %4514 = sub i64 %4513, 28
  %4515 = load i64, i64* %PC
  %4516 = add i64 %4515, 3
  store i64 %4516, i64* %PC
  %4517 = inttoptr i64 %4514 to i32*
  %4518 = load i32, i32* %4517
  %4519 = zext i32 %4518 to i64
  store i64 %4519, i64* %RAX, align 8, !tbaa !2428
  %4520 = load i64, i64* %RAX
  %4521 = load i64, i64* %PC
  %4522 = add i64 %4521, 3
  store i64 %4522, i64* %PC
  %4523 = trunc i64 %4520 to i32
  %4524 = add i32 2, %4523
  %4525 = zext i32 %4524 to i64
  store i64 %4525, i64* %RAX, align 8, !tbaa !2428
  %4526 = icmp ult i32 %4524, %4523
  %4527 = icmp ult i32 %4524, 2
  %4528 = or i1 %4526, %4527
  %4529 = zext i1 %4528 to i8
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4529, i8* %4530, align 1, !tbaa !2432
  %4531 = and i32 %4524, 255
  %4532 = call i32 @llvm.ctpop.i32(i32 %4531) #17
  %4533 = trunc i32 %4532 to i8
  %4534 = and i8 %4533, 1
  %4535 = xor i8 %4534, 1
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4535, i8* %4536, align 1, !tbaa !2446
  %4537 = xor i64 2, %4520
  %4538 = trunc i64 %4537 to i32
  %4539 = xor i32 %4538, %4524
  %4540 = lshr i32 %4539, 4
  %4541 = trunc i32 %4540 to i8
  %4542 = and i8 %4541, 1
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4542, i8* %4543, align 1, !tbaa !2447
  %4544 = icmp eq i32 %4524, 0
  %4545 = zext i1 %4544 to i8
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4545, i8* %4546, align 1, !tbaa !2448
  %4547 = lshr i32 %4524, 31
  %4548 = trunc i32 %4547 to i8
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4548, i8* %4549, align 1, !tbaa !2449
  %4550 = lshr i32 %4523, 31
  %4551 = xor i32 %4547, %4550
  %4552 = add nuw nsw i32 %4551, %4547
  %4553 = icmp eq i32 %4552, 2
  %4554 = zext i1 %4553 to i8
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4554, i8* %4555, align 1, !tbaa !2450
  %4556 = load i64, i64* %RBP
  %4557 = sub i64 %4556, 28
  %4558 = load i32, i32* %EAX
  %4559 = zext i32 %4558 to i64
  %4560 = load i64, i64* %PC
  %4561 = add i64 %4560, 3
  store i64 %4561, i64* %PC
  %4562 = inttoptr i64 %4557 to i32*
  store i32 %4558, i32* %4562
  %4563 = load i64, i64* %PC
  %4564 = sub i64 %4563, 222
  %4565 = load i64, i64* %PC
  %4566 = add i64 %4565, 5
  store i64 %4566, i64* %PC
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4564, i64* %4567, align 8, !tbaa !2428
  br label %block_400c3d

block_400c2b:                                     ; preds = %block_400c1f
  %4568 = sub i64 %4832, 32
  %4569 = load i64, i64* %PC
  %4570 = add i64 %4569, 3
  store i64 %4570, i64* %PC
  %4571 = inttoptr i64 %4568 to i32*
  %4572 = load i32, i32* %4571
  %4573 = zext i32 %4572 to i64
  store i64 %4573, i64* %RAX, align 8, !tbaa !2428
  %4574 = load i32, i32* %EAX
  %4575 = zext i32 %4574 to i64
  %4576 = load i64, i64* %RBP
  %4577 = sub i64 %4576, 40
  %4578 = load i64, i64* %PC
  %4579 = add i64 %4578, 3
  store i64 %4579, i64* %PC
  %4580 = inttoptr i64 %4577 to i32*
  %4581 = load i32, i32* %4580
  %4582 = sub i32 %4574, %4581
  %4583 = icmp ult i32 %4574, %4581
  %4584 = zext i1 %4583 to i8
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4584, i8* %4585, align 1, !tbaa !2432
  %4586 = and i32 %4582, 255
  %4587 = call i32 @llvm.ctpop.i32(i32 %4586) #17
  %4588 = trunc i32 %4587 to i8
  %4589 = and i8 %4588, 1
  %4590 = xor i8 %4589, 1
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4590, i8* %4591, align 1, !tbaa !2446
  %4592 = xor i32 %4581, %4574
  %4593 = xor i32 %4592, %4582
  %4594 = lshr i32 %4593, 4
  %4595 = trunc i32 %4594 to i8
  %4596 = and i8 %4595, 1
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4596, i8* %4597, align 1, !tbaa !2447
  %4598 = icmp eq i32 %4582, 0
  %4599 = zext i1 %4598 to i8
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4599, i8* %4600, align 1, !tbaa !2448
  %4601 = lshr i32 %4582, 31
  %4602 = trunc i32 %4601 to i8
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4602, i8* %4603, align 1, !tbaa !2449
  %4604 = lshr i32 %4574, 31
  %4605 = lshr i32 %4581, 31
  %4606 = xor i32 %4605, %4604
  %4607 = xor i32 %4601, %4604
  %4608 = add nuw nsw i32 %4607, %4606
  %4609 = icmp eq i32 %4608, 2
  %4610 = zext i1 %4609 to i8
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4610, i8* %4611, align 1, !tbaa !2450
  %4612 = load i64, i64* %PC
  %4613 = add i64 %4612, 244
  %4614 = load i64, i64* %PC
  %4615 = add i64 %4614, 6
  %4616 = load i64, i64* %PC
  %4617 = add i64 %4616, 6
  store i64 %4617, i64* %PC
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4619 = load i8, i8* %4618, align 1, !tbaa !2449
  %4620 = icmp ne i8 %4619, 0
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4622 = load i8, i8* %4621, align 1, !tbaa !2450
  %4623 = icmp ne i8 %4622, 0
  %4624 = xor i1 %4620, %4623
  %4625 = xor i1 %4624, true
  %4626 = zext i1 %4625 to i8
  store i8 %4626, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4628 = select i1 %4624, i64 %4615, i64 %4613
  store i64 %4628, i64* %4627, align 8, !tbaa !2428
  %4629 = load i8, i8* %BRANCH_TAKEN
  %4630 = icmp eq i8 %4629, 1
  br i1 %4630, label %block_400d25, label %block_400c37

block_400d9c:                                     ; preds = %block_400d96, %block_401033
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.10, %block_400d96 ], [ %MEMORY.0, %block_401033 ]
  %4631 = load i64, i64* %RBP
  %4632 = sub i64 %4631, 60
  %4633 = load i64, i64* %PC
  %4634 = add i64 %4633, 3
  store i64 %4634, i64* %PC
  %4635 = inttoptr i64 %4632 to i32*
  %4636 = load i32, i32* %4635
  %4637 = zext i32 %4636 to i64
  store i64 %4637, i64* %RAX, align 8, !tbaa !2428
  %4638 = load i32, i32* %EAX
  %4639 = zext i32 %4638 to i64
  %4640 = load i64, i64* %RBP
  %4641 = sub i64 %4640, 52
  %4642 = load i64, i64* %PC
  %4643 = add i64 %4642, 3
  store i64 %4643, i64* %PC
  %4644 = inttoptr i64 %4641 to i32*
  %4645 = load i32, i32* %4644
  %4646 = sub i32 %4638, %4645
  %4647 = icmp ult i32 %4638, %4645
  %4648 = zext i1 %4647 to i8
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4648, i8* %4649, align 1, !tbaa !2432
  %4650 = and i32 %4646, 255
  %4651 = call i32 @llvm.ctpop.i32(i32 %4650) #17
  %4652 = trunc i32 %4651 to i8
  %4653 = and i8 %4652, 1
  %4654 = xor i8 %4653, 1
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4654, i8* %4655, align 1, !tbaa !2446
  %4656 = xor i32 %4645, %4638
  %4657 = xor i32 %4656, %4646
  %4658 = lshr i32 %4657, 4
  %4659 = trunc i32 %4658 to i8
  %4660 = and i8 %4659, 1
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4660, i8* %4661, align 1, !tbaa !2447
  %4662 = icmp eq i32 %4646, 0
  %4663 = zext i1 %4662 to i8
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4663, i8* %4664, align 1, !tbaa !2448
  %4665 = lshr i32 %4646, 31
  %4666 = trunc i32 %4665 to i8
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4666, i8* %4667, align 1, !tbaa !2449
  %4668 = lshr i32 %4638, 31
  %4669 = lshr i32 %4645, 31
  %4670 = xor i32 %4669, %4668
  %4671 = xor i32 %4665, %4668
  %4672 = add nuw nsw i32 %4671, %4670
  %4673 = icmp eq i32 %4672, 2
  %4674 = zext i1 %4673 to i8
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4674, i8* %4675, align 1, !tbaa !2450
  %4676 = load i64, i64* %PC
  %4677 = add i64 %4676, 668
  %4678 = load i64, i64* %PC
  %4679 = add i64 %4678, 6
  %4680 = load i64, i64* %PC
  %4681 = add i64 %4680, 6
  store i64 %4681, i64* %PC
  %4682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4683 = load i8, i8* %4682, align 1, !tbaa !2449
  %4684 = icmp ne i8 %4683, 0
  %4685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4686 = load i8, i8* %4685, align 1, !tbaa !2450
  %4687 = icmp ne i8 %4686, 0
  %4688 = xor i1 %4684, %4687
  %4689 = xor i1 %4688, true
  %4690 = zext i1 %4689 to i8
  store i8 %4690, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4692 = select i1 %4688, i64 %4679, i64 %4677
  store i64 %4692, i64* %4691, align 8, !tbaa !2428
  %4693 = load i8, i8* %BRANCH_TAKEN
  %4694 = icmp eq i8 %4693, 1
  br i1 %4694, label %block_40103e, label %block_400da8

block_400b87:                                     ; preds = %block_400b93, %block_400b60
  %MEMORY.9 = phi %struct.Memory* [ %2, %block_400b60 ], [ %MEMORY.9, %block_400b93 ]
  %4695 = load i64, i64* %RBP
  %4696 = sub i64 %4695, 72
  %4697 = load i64, i64* %PC
  %4698 = add i64 %4697, 3
  store i64 %4698, i64* %PC
  %4699 = inttoptr i64 %4696 to i32*
  %4700 = load i32, i32* %4699
  %4701 = zext i32 %4700 to i64
  store i64 %4701, i64* %RAX, align 8, !tbaa !2428
  %4702 = load i32, i32* %EAX
  %4703 = zext i32 %4702 to i64
  %4704 = load i64, i64* %RBP
  %4705 = sub i64 %4704, 20
  %4706 = load i64, i64* %PC
  %4707 = add i64 %4706, 3
  store i64 %4707, i64* %PC
  %4708 = inttoptr i64 %4705 to i32*
  %4709 = load i32, i32* %4708
  %4710 = sub i32 %4702, %4709
  %4711 = icmp ult i32 %4702, %4709
  %4712 = zext i1 %4711 to i8
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4712, i8* %4713, align 1, !tbaa !2432
  %4714 = and i32 %4710, 255
  %4715 = call i32 @llvm.ctpop.i32(i32 %4714) #17
  %4716 = trunc i32 %4715 to i8
  %4717 = and i8 %4716, 1
  %4718 = xor i8 %4717, 1
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4718, i8* %4719, align 1, !tbaa !2446
  %4720 = xor i32 %4709, %4702
  %4721 = xor i32 %4720, %4710
  %4722 = lshr i32 %4721, 4
  %4723 = trunc i32 %4722 to i8
  %4724 = and i8 %4723, 1
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4724, i8* %4725, align 1, !tbaa !2447
  %4726 = icmp eq i32 %4710, 0
  %4727 = zext i1 %4726 to i8
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4727, i8* %4728, align 1, !tbaa !2448
  %4729 = lshr i32 %4710, 31
  %4730 = trunc i32 %4729 to i8
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4730, i8* %4731, align 1, !tbaa !2449
  %4732 = lshr i32 %4702, 31
  %4733 = lshr i32 %4709, 31
  %4734 = xor i32 %4733, %4732
  %4735 = xor i32 %4729, %4732
  %4736 = add nuw nsw i32 %4735, %4734
  %4737 = icmp eq i32 %4736, 2
  %4738 = zext i1 %4737 to i8
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4738, i8* %4739, align 1, !tbaa !2450
  %4740 = load i64, i64* %PC
  %4741 = add i64 %4740, 38
  %4742 = load i64, i64* %PC
  %4743 = add i64 %4742, 6
  %4744 = load i64, i64* %PC
  %4745 = add i64 %4744, 6
  store i64 %4745, i64* %PC
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4747 = load i8, i8* %4746, align 1, !tbaa !2448
  %4748 = icmp eq i8 %4747, 0
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4750 = load i8, i8* %4749, align 1, !tbaa !2449
  %4751 = icmp ne i8 %4750, 0
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4753 = load i8, i8* %4752, align 1, !tbaa !2450
  %4754 = icmp ne i8 %4753, 0
  %4755 = xor i1 %4751, %4754
  %4756 = xor i1 %4755, true
  %4757 = and i1 %4748, %4756
  %4758 = zext i1 %4757 to i8
  store i8 %4758, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4760 = select i1 %4757, i64 %4741, i64 %4743
  store i64 %4760, i64* %4759, align 8, !tbaa !2428
  %4761 = load i8, i8* %BRANCH_TAKEN
  %4762 = icmp eq i8 %4761, 1
  %4763 = load i64, i64* %RBP
  br i1 %4762, label %block_400bb3, label %block_400b93

block_400c1f:                                     ; preds = %block_400d61, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit
  %MEMORY.10 = phi %struct.Memory* [ %3573, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %MEMORY.2, %block_400d61 ]
  %4764 = load i64, i64* %RBP
  %4765 = sub i64 %4764, 32
  %4766 = load i64, i64* %PC
  %4767 = add i64 %4766, 3
  store i64 %4767, i64* %PC
  %4768 = inttoptr i64 %4765 to i32*
  %4769 = load i32, i32* %4768
  %4770 = zext i32 %4769 to i64
  store i64 %4770, i64* %RAX, align 8, !tbaa !2428
  %4771 = load i32, i32* %EAX
  %4772 = zext i32 %4771 to i64
  %4773 = load i64, i64* %RBP
  %4774 = sub i64 %4773, 52
  %4775 = load i64, i64* %PC
  %4776 = add i64 %4775, 3
  store i64 %4776, i64* %PC
  %4777 = inttoptr i64 %4774 to i32*
  %4778 = load i32, i32* %4777
  %4779 = sub i32 %4771, %4778
  %4780 = icmp ult i32 %4771, %4778
  %4781 = zext i1 %4780 to i8
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4781, i8* %4782, align 1, !tbaa !2432
  %4783 = and i32 %4779, 255
  %4784 = call i32 @llvm.ctpop.i32(i32 %4783) #17
  %4785 = trunc i32 %4784 to i8
  %4786 = and i8 %4785, 1
  %4787 = xor i8 %4786, 1
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4787, i8* %4788, align 1, !tbaa !2446
  %4789 = xor i32 %4778, %4771
  %4790 = xor i32 %4789, %4779
  %4791 = lshr i32 %4790, 4
  %4792 = trunc i32 %4791 to i8
  %4793 = and i8 %4792, 1
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4793, i8* %4794, align 1, !tbaa !2447
  %4795 = icmp eq i32 %4779, 0
  %4796 = zext i1 %4795 to i8
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4796, i8* %4797, align 1, !tbaa !2448
  %4798 = lshr i32 %4779, 31
  %4799 = trunc i32 %4798 to i8
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4799, i8* %4800, align 1, !tbaa !2449
  %4801 = lshr i32 %4771, 31
  %4802 = lshr i32 %4778, 31
  %4803 = xor i32 %4802, %4801
  %4804 = xor i32 %4798, %4801
  %4805 = add nuw nsw i32 %4804, %4803
  %4806 = icmp eq i32 %4805, 2
  %4807 = zext i1 %4806 to i8
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4807, i8* %4808, align 1, !tbaa !2450
  %4809 = load i64, i64* %PC
  %4810 = add i64 %4809, 369
  %4811 = load i64, i64* %PC
  %4812 = add i64 %4811, 6
  %4813 = load i64, i64* %PC
  %4814 = add i64 %4813, 6
  store i64 %4814, i64* %PC
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4816 = load i8, i8* %4815, align 1, !tbaa !2448
  %4817 = icmp eq i8 %4816, 0
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4819 = load i8, i8* %4818, align 1, !tbaa !2449
  %4820 = icmp ne i8 %4819, 0
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4822 = load i8, i8* %4821, align 1, !tbaa !2450
  %4823 = icmp ne i8 %4822, 0
  %4824 = xor i1 %4820, %4823
  %4825 = xor i1 %4824, true
  %4826 = and i1 %4817, %4825
  %4827 = zext i1 %4826 to i8
  store i8 %4827, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4829 = select i1 %4826, i64 %4810, i64 %4812
  store i64 %4829, i64* %4828, align 8, !tbaa !2428
  %4830 = load i8, i8* %BRANCH_TAKEN
  %4831 = icmp eq i8 %4830, 1
  %4832 = load i64, i64* %RBP
  br i1 %4831, label %block_400d96, label %block_400c2b

block_400e86:                                     ; preds = %block_400e80, %block_400fae
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.0, %block_400e80 ], [ %MEMORY.5, %block_400fae ]
  %4833 = load i64, i64* %RBP
  %4834 = sub i64 %4833, 28
  %4835 = load i64, i64* %PC
  %4836 = add i64 %4835, 3
  store i64 %4836, i64* %PC
  %4837 = inttoptr i64 %4834 to i32*
  %4838 = load i32, i32* %4837
  %4839 = zext i32 %4838 to i64
  store i64 %4839, i64* %RAX, align 8, !tbaa !2428
  %4840 = load i64, i64* %RBP
  %4841 = sub i64 %4840, 36
  %4842 = load i64, i64* %PC
  %4843 = add i64 %4842, 3
  store i64 %4843, i64* %PC
  %4844 = inttoptr i64 %4841 to i32*
  %4845 = load i32, i32* %4844
  %4846 = zext i32 %4845 to i64
  store i64 %4846, i64* %RCX, align 8, !tbaa !2428
  %4847 = load i64, i64* %RCX
  %4848 = load i64, i64* %RBP
  %4849 = sub i64 %4848, 48
  %4850 = load i64, i64* %PC
  %4851 = add i64 %4850, 3
  store i64 %4851, i64* %PC
  %4852 = trunc i64 %4847 to i32
  %4853 = inttoptr i64 %4849 to i32*
  %4854 = load i32, i32* %4853
  %4855 = add i32 %4854, %4852
  %4856 = zext i32 %4855 to i64
  store i64 %4856, i64* %RCX, align 8, !tbaa !2428
  %4857 = icmp ult i32 %4855, %4852
  %4858 = icmp ult i32 %4855, %4854
  %4859 = or i1 %4857, %4858
  %4860 = zext i1 %4859 to i8
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4860, i8* %4861, align 1, !tbaa !2432
  %4862 = and i32 %4855, 255
  %4863 = call i32 @llvm.ctpop.i32(i32 %4862) #17
  %4864 = trunc i32 %4863 to i8
  %4865 = and i8 %4864, 1
  %4866 = xor i8 %4865, 1
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4866, i8* %4867, align 1, !tbaa !2446
  %4868 = xor i32 %4854, %4852
  %4869 = xor i32 %4868, %4855
  %4870 = lshr i32 %4869, 4
  %4871 = trunc i32 %4870 to i8
  %4872 = and i8 %4871, 1
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4872, i8* %4873, align 1, !tbaa !2447
  %4874 = icmp eq i32 %4855, 0
  %4875 = zext i1 %4874 to i8
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4875, i8* %4876, align 1, !tbaa !2448
  %4877 = lshr i32 %4855, 31
  %4878 = trunc i32 %4877 to i8
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4878, i8* %4879, align 1, !tbaa !2449
  %4880 = lshr i32 %4852, 31
  %4881 = lshr i32 %4854, 31
  %4882 = xor i32 %4877, %4880
  %4883 = xor i32 %4877, %4881
  %4884 = add nuw nsw i32 %4882, %4883
  %4885 = icmp eq i32 %4884, 2
  %4886 = zext i1 %4885 to i8
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4886, i8* %4887, align 1, !tbaa !2450
  %4888 = load i64, i64* %RCX
  %4889 = load i64, i64* %PC
  %4890 = add i64 %4889, 3
  store i64 %4890, i64* %PC
  %4891 = trunc i64 %4888 to i32
  %4892 = sub i32 %4891, 2
  %4893 = zext i32 %4892 to i64
  store i64 %4893, i64* %RCX, align 8, !tbaa !2428
  %4894 = icmp ult i32 %4891, 2
  %4895 = zext i1 %4894 to i8
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4895, i8* %4896, align 1, !tbaa !2432
  %4897 = and i32 %4892, 255
  %4898 = call i32 @llvm.ctpop.i32(i32 %4897) #17
  %4899 = trunc i32 %4898 to i8
  %4900 = and i8 %4899, 1
  %4901 = xor i8 %4900, 1
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4901, i8* %4902, align 1, !tbaa !2446
  %4903 = xor i64 2, %4888
  %4904 = trunc i64 %4903 to i32
  %4905 = xor i32 %4904, %4892
  %4906 = lshr i32 %4905, 4
  %4907 = trunc i32 %4906 to i8
  %4908 = and i8 %4907, 1
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4908, i8* %4909, align 1, !tbaa !2447
  %4910 = icmp eq i32 %4892, 0
  %4911 = zext i1 %4910 to i8
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4911, i8* %4912, align 1, !tbaa !2448
  %4913 = lshr i32 %4892, 31
  %4914 = trunc i32 %4913 to i8
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4914, i8* %4915, align 1, !tbaa !2449
  %4916 = lshr i32 %4891, 31
  %4917 = xor i32 %4913, %4916
  %4918 = add nuw nsw i32 %4917, %4916
  %4919 = icmp eq i32 %4918, 2
  %4920 = zext i1 %4919 to i8
  %4921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4920, i8* %4921, align 1, !tbaa !2450
  %4922 = load i32, i32* %EAX
  %4923 = zext i32 %4922 to i64
  %4924 = load i32, i32* %ECX
  %4925 = zext i32 %4924 to i64
  %4926 = load i64, i64* %PC
  %4927 = add i64 %4926, 2
  store i64 %4927, i64* %PC
  %4928 = sub i32 %4922, %4924
  %4929 = icmp ult i32 %4922, %4924
  %4930 = zext i1 %4929 to i8
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4930, i8* %4931, align 1, !tbaa !2432
  %4932 = and i32 %4928, 255
  %4933 = call i32 @llvm.ctpop.i32(i32 %4932) #17
  %4934 = trunc i32 %4933 to i8
  %4935 = and i8 %4934, 1
  %4936 = xor i8 %4935, 1
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4936, i8* %4937, align 1, !tbaa !2446
  %4938 = xor i64 %4925, %4923
  %4939 = trunc i64 %4938 to i32
  %4940 = xor i32 %4939, %4928
  %4941 = lshr i32 %4940, 4
  %4942 = trunc i32 %4941 to i8
  %4943 = and i8 %4942, 1
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4943, i8* %4944, align 1, !tbaa !2447
  %4945 = icmp eq i32 %4928, 0
  %4946 = zext i1 %4945 to i8
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4946, i8* %4947, align 1, !tbaa !2448
  %4948 = lshr i32 %4928, 31
  %4949 = trunc i32 %4948 to i8
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4949, i8* %4950, align 1, !tbaa !2449
  %4951 = lshr i32 %4922, 31
  %4952 = lshr i32 %4924, 31
  %4953 = xor i32 %4952, %4951
  %4954 = xor i32 %4948, %4951
  %4955 = add nuw nsw i32 %4954, %4953
  %4956 = icmp eq i32 %4955, 2
  %4957 = zext i1 %4956 to i8
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4957, i8* %4958, align 1, !tbaa !2450
  %4959 = load i64, i64* %PC
  %4960 = add i64 %4959, 301
  %4961 = load i64, i64* %PC
  %4962 = add i64 %4961, 6
  %4963 = load i64, i64* %PC
  %4964 = add i64 %4963, 6
  store i64 %4964, i64* %PC
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4966 = load i8, i8* %4965, align 1, !tbaa !2448
  %4967 = icmp eq i8 %4966, 0
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4969 = load i8, i8* %4968, align 1, !tbaa !2449
  %4970 = icmp ne i8 %4969, 0
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4972 = load i8, i8* %4971, align 1, !tbaa !2450
  %4973 = icmp ne i8 %4972, 0
  %4974 = xor i1 %4970, %4973
  %4975 = xor i1 %4974, true
  %4976 = and i1 %4967, %4975
  %4977 = zext i1 %4976 to i8
  store i8 %4977, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4979 = select i1 %4976, i64 %4960, i64 %4962
  store i64 %4979, i64* %4978, align 8, !tbaa !2428
  %4980 = load i8, i8* %BRANCH_TAKEN
  %4981 = icmp eq i8 %4980, 1
  br i1 %4981, label %block_400fc1, label %block_400e9a

block_400d61:                                     ; preds = %block_400d53
  %4982 = load i64, i64* %PC
  %4983 = add i64 %4982, 30
  %4984 = load i64, i64* %PC
  %4985 = add i64 %4984, 5
  store i64 %4985, i64* %PC
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4983, i64* %4986, align 8, !tbaa !2428
  %4987 = load i64, i64* %RBP
  %4988 = sub i64 %4987, 68
  %4989 = load i64, i64* %PC
  %4990 = add i64 %4989, 3
  store i64 %4990, i64* %PC
  %4991 = inttoptr i64 %4988 to i32*
  %4992 = load i32, i32* %4991
  %4993 = zext i32 %4992 to i64
  store i64 %4993, i64* %RAX, align 8, !tbaa !2428
  %4994 = load i64, i64* %RAX
  %4995 = load i64, i64* %RBP
  %4996 = sub i64 %4995, 40
  %4997 = load i64, i64* %PC
  %4998 = add i64 %4997, 3
  store i64 %4998, i64* %PC
  %4999 = trunc i64 %4994 to i32
  %5000 = inttoptr i64 %4996 to i32*
  %5001 = load i32, i32* %5000
  %5002 = add i32 %5001, %4999
  %5003 = zext i32 %5002 to i64
  store i64 %5003, i64* %RAX, align 8, !tbaa !2428
  %5004 = icmp ult i32 %5002, %4999
  %5005 = icmp ult i32 %5002, %5001
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
  %5015 = xor i32 %5001, %4999
  %5016 = xor i32 %5015, %5002
  %5017 = lshr i32 %5016, 4
  %5018 = trunc i32 %5017 to i8
  %5019 = and i8 %5018, 1
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5019, i8* %5020, align 1, !tbaa !2447
  %5021 = icmp eq i32 %5002, 0
  %5022 = zext i1 %5021 to i8
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5022, i8* %5023, align 1, !tbaa !2448
  %5024 = lshr i32 %5002, 31
  %5025 = trunc i32 %5024 to i8
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5025, i8* %5026, align 1, !tbaa !2449
  %5027 = lshr i32 %4999, 31
  %5028 = lshr i32 %5001, 31
  %5029 = xor i32 %5024, %5027
  %5030 = xor i32 %5024, %5028
  %5031 = add nuw nsw i32 %5029, %5030
  %5032 = icmp eq i32 %5031, 2
  %5033 = zext i1 %5032 to i8
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5033, i8* %5034, align 1, !tbaa !2450
  %5035 = load i64, i64* %RBP
  %5036 = sub i64 %5035, 40
  %5037 = load i32, i32* %EAX
  %5038 = zext i32 %5037 to i64
  %5039 = load i64, i64* %PC
  %5040 = add i64 %5039, 3
  store i64 %5040, i64* %PC
  %5041 = inttoptr i64 %5036 to i32*
  store i32 %5037, i32* %5041
  %5042 = load i64, i64* %RBP
  %5043 = sub i64 %5042, 48
  %5044 = load i64, i64* %PC
  %5045 = add i64 %5044, 3
  store i64 %5045, i64* %PC
  %5046 = inttoptr i64 %5043 to i32*
  %5047 = load i32, i32* %5046
  %5048 = zext i32 %5047 to i64
  store i64 %5048, i64* %RAX, align 8, !tbaa !2428
  %5049 = load i64, i64* %RAX
  %5050 = load i64, i64* %RBP
  %5051 = sub i64 %5050, 32
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
  %5065 = call i32 @llvm.ctpop.i32(i32 %5064) #17
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
  %5090 = load i64, i64* %RBP
  %5091 = sub i64 %5090, 32
  %5092 = load i32, i32* %EAX
  %5093 = zext i32 %5092 to i64
  %5094 = load i64, i64* %PC
  %5095 = add i64 %5094, 3
  store i64 %5095, i64* %PC
  %5096 = inttoptr i64 %5091 to i32*
  store i32 %5092, i32* %5096
  %5097 = load i64, i64* %PC
  %5098 = sub i64 %5097, 370
  %5099 = load i64, i64* %PC
  %5100 = add i64 %5099, 5
  store i64 %5100, i64* %PC
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5098, i64* %5101, align 8, !tbaa !2428
  br label %block_400c1f

block_400e80:                                     ; preds = %block_400e74
  %5102 = sub i64 %217, 36
  %5103 = load i64, i64* %PC
  %5104 = add i64 %5103, 3
  store i64 %5104, i64* %PC
  %5105 = inttoptr i64 %5102 to i32*
  %5106 = load i32, i32* %5105
  %5107 = zext i32 %5106 to i64
  store i64 %5107, i64* %RAX, align 8, !tbaa !2428
  %5108 = load i64, i64* %RBP
  %5109 = sub i64 %5108, 28
  %5110 = load i32, i32* %EAX
  %5111 = zext i32 %5110 to i64
  %5112 = load i64, i64* %PC
  %5113 = add i64 %5112, 3
  store i64 %5113, i64* %PC
  %5114 = inttoptr i64 %5109 to i32*
  store i32 %5110, i32* %5114
  br label %block_400e86
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
  br i1 %80, label %block_400618, label %block_400601

block_400618:                                     ; preds = %block_400601, %block_400613, %block_4005f0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005f0 ], [ %2, %block_400601 ], [ %2, %block_400613 ]
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
  %115 = load i64, i64* %114, align 8, !tbaa !2428
  %116 = add i64 %115, 8
  %117 = inttoptr i64 %115 to i64*
  %118 = load i64, i64* %117
  store i64 %118, i64* %RBP, align 8, !tbaa !2428
  store i64 %116, i64* %114, align 8, !tbaa !2428
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 5
  store i64 %120, i64* %PC
  store i64 6299728, i64* %RDI, align 8, !tbaa !2428
  %121 = load i64, i64* %RAX
  %122 = load i64, i64* %PC
  %123 = add i64 %122, 2
  store i64 %123, i64* %PC
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %121, i64* %124, align 8, !tbaa !2428
  %125 = load i64, i64* %PC
  switch i64 %125, label %162 [
    i64 4195866, label %block_40061a
    i64 4195859, label %block_400613
  ]

block_400601:                                     ; preds = %block_4005f0
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
  %136 = call i32 @llvm.ctpop.i32(i32 %135) #17
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
  br i1 %161, label %block_400618, label %block_40060b

; <label>:162:                                    ; preds = %block_40060b
  %163 = load i64, i64* %PC
  %164 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %163, %struct.Memory* %2)
  ret %struct.Memory* %164
}

; Function Attrs: noinline
define %struct.Memory* @sub_400530__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400530:
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
  br i1 %80, label %block_400542, label %block_400540

block_400540:                                     ; preds = %block_400530
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
  br label %block_400542

block_400542:                                     ; preds = %block_400540, %block_400530
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400530 ], [ %92, %block_400540 ]
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
define %struct.Memory* @sub_4010d0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4010d0:
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
  store i64 ptrtoint (void ()* @callback_sub_4010d0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_401060___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
define %struct.Memory* @sub_4010d4__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4010d4:
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
  %10 = load i64, i64* %9, align 8, !tbaa !2428
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11
  store i64 %12, i64* %8, align 8, !tbaa !2428
  %13 = add i64 %10, 8
  store i64 %13, i64* %9, align 8, !tbaa !2428
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
  %207 = load i64, i64* %206, align 8, !tbaa !2428
  %208 = add i64 %207, 8
  %209 = inttoptr i64 %207 to i64*
  %210 = load i64, i64* %209
  store i64 %210, i64* %RBP, align 8, !tbaa !2428
  store i64 %208, i64* %206, align 8, !tbaa !2428
  %211 = load i64, i64* %PC
  %212 = add i64 %211, 5
  store i64 %212, i64* %PC
  store i64 6299728, i64* %RDI, align 8, !tbaa !2428
  %213 = load i64, i64* %RAX
  %214 = load i64, i64* %PC
  %215 = add i64 %214, 2
  store i64 %215, i64* %PC
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %213, i64* %216, align 8, !tbaa !2428
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

block_400643:                                     ; preds = %block_400620
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
  %243 = call i32 @llvm.ctpop.i32(i32 %242) #17
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
  br i1 %268, label %block_400658, label %block_40064d

; <label>:269:                                    ; preds = %block_40064d
  %270 = load i64, i64* %PC
  %271 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %270, %struct.Memory* %2)
  ret %struct.Memory* %271
}

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
  br i1 %47, label %block_400680, label %block_400669

block_400680:                                     ; preds = %block_400660
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

block_400669:                                     ; preds = %block_400660
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
  %78 = call %struct.Memory* @sub_4005f0_deregister_tm_clones(%struct.State* %0, i64 %77, %struct.Memory* %2)
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
  %35 = tail call %struct.Memory* @sub_400620_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
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
define internal %struct.Memory* @ext_6020a8_memset(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_400570_fprintf(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_602090_malloc(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020d0_exit(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %2)
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
define internal void @callback_sub_4010d0___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4010d0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4010d0___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4010d0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401060___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401060;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401060___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401060___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4006a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4006a0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020b0___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400530;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400530__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4010d4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4010d4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
  call void @callback_sub_401060___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_4010d0___libc_csu_fini()
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
