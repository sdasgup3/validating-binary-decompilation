; ModuleID = 'binary/test.mcsema.calls_renamed.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400508__init_type = type <{ [23 x i8] }>
%seg_400520__plt_type = type <{ [96 x i8] }>
%seg_400580__text_type = type <{ [2866 x i8] }>
%seg_4010b4__fini_type = type <{ [9 x i8] }>
%seg_4010c0__rodata_type = type <{ [72 x i8], [28 x i8], [48 x i8], [35 x i8], [35 x i8] }>
%seg_40119c__eh_frame_hdr_type = type <{ [68 x i8] }>
%seg_4011e0__eh_frame_type = type <{ [280 x i8] }>
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
@seg_400508__init = internal constant %seg_400508__init_type <{ [23 x i8] c"H\83\EC\08H\8B\05\E5\1A \00H\85\C0t\02\FF\D0H\83\C4\08\C3" }>
@seg_400520__plt = internal constant %seg_400520__plt_type <{ [96 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%\E2\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\DA\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\D2\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\CA\1A \00\00\00\00\00\00\00\00\00\00\00\FF%\C2\1A \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_400580__text = internal constant %seg_400580__text_type <{ [2866 x i8] c"1\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0\B0\10@\00H\C7\C1@\10@\00H\C7\C7p\06@\00\FF\15F\1A \00\F4\0F\1FD\00\00\F3\C3f.\0F\1F\84\00\00\00\00\00\0F\1F@\00U\B8P `\00H=P `\00H\89\E5t\17\B8\00\00\00\00H\85\C0t\0D]\BFP `\00\FF\E0\0F\1FD\00\00]\C3f\0F\1FD\00\00\BEP `\00UH\81\EEP `\00H\89\E5H\C1\FE\03H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BFP `\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=1\1A \00\00u\17UH\89\E5\E8~\FF\FF\FF\C6\05\1F\1A \00\01]\C3\0F\1FD\00\00\F3\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00UH\89\E5]\EB\89f\0F\1F\84\00\00\00\00\00UH\89\E5H\81\EC\C0\00\00\00\C7E\FC\00\00\00\00\C7E\E4?\00\00\00\C7E\E0\00\01\00\00\8BE\E0\0F\AFE\E0Hc\C8H\89M\D0H\8BM\D0H\83\C1\01H\C1\E1\01H\C1\E1\03H\89M\C8\8BE\E0\89\04%t `\00\89\04%p `\00H\8B}\C8\E8\84\FE\FF\FFH\89E\D8H\83}\D8\00\0F\85)\00\00\00H\BE\08\11@\00\00\00\00\00H\8B<%` `\00\B0\00\E8L\FE\FF\FF\BF\01\00\00\00\89\85t\FF\FF\FF\E8l\FE\FF\FF1\F6H\8BE\D8H\8BU\C8H\89\C7\E8\1A\FE\FF\FF\C7E\F8\00\00\00\00\8BE\F8;E\E0\0F\8D{\00\00\00\C7E\F4\00\00\00\00\8BE\F4;E\E0\0F\8DU\00\00\00\8BE\F8\83\E0\0F\83\F8\08\0F\84\0F\00\00\00\8BE\F4\83\E0\0F\83\F8\08\0F\85$\00\00\00\F2\0F\10\05~\09\00\00H\8BE\D8\8BM\E0\0F\AFM\F8\03M\F4\C1\E1\01\83\C1\01Hc\D1\F2\0F\11\04\D0\E9\00\00\00\00\8BE\F4\83\C0\01\89E\F4\E9\9F\FF\FF\FF\E9\00\00\00\00\8BE\F8\83\C0\01\89E\F8\E9y\FF\FF\FF\C7E\F8\00\00\00\00\8BE\F8;E\E4\0F\8DH\00\00\00H\BEl `\00\00\00\00\00\BA\02\00\00\00\B9\01\00\00\00H\8B}\D8\E8\5C\03\00\00H\BEl `\00\00\00\00\00\BA\02\00\00\00\B9\FF\FF\FF\FFH\8B}\D8\E8?\03\00\00\8BE\F8\83\C0\01\89E\F8\E9\AC\FF\FF\FF\0FW\C0\F2\0F\10\0D\BE\08\00\00\F2\0F\10\15\BE\08\00\00\F2\0F\11U\B0\F2\0F\11M\A8\F2\0F\11U\A0\F2\0F\11M\98\F2\0F\11E\80\F2\0F\11\85x\FF\FF\FF\C7E\F8\01\00\00\00HcE\F8H;E\D0\0F\8FS\01\00\00H\8BE\D8HcM\F8\F2\0F\10\04\C8\F2\0F\11E\90H\8BE\D8\8BU\F8\83\C2\01Hc\CA\F2\0F\10\04\C8\F2\0F\11E\88\F2\0F\10E\90\F2\0FXE\80\F2\0F\11E\80\F2\0F\10E\88\F2\0FX\85x\FF\FF\FF\F2\0F\11\85x\FF\FF\FF\F2\0F\10E\90\F2\0F\10M\B0f\0F.\C8\0F\82\12\00\00\00\F2\0F\10E\90\F2\0F\11\85h\FF\FF\FF\E9\0D\00\00\00\F2\0F\10E\B0\F2\0F\11\85h\FF\FF\FF\F2\0F\10\85h\FF\FF\FF\F2\0F\11E\B0\F2\0F\10E\90f\0F.E\A8\0F\86\12\00\00\00\F2\0F\10E\90\F2\0F\11\85`\FF\FF\FF\E9\0D\00\00\00\F2\0F\10E\A8\F2\0F\11\85`\FF\FF\FF\F2\0F\10\85`\FF\FF\FF\F2\0F\11E\A8\F2\0F\10E\88\F2\0F\10M\A0f\0F.\C8\0F\82\12\00\00\00\F2\0F\10E\88\F2\0F\11\85X\FF\FF\FF\E9\0D\00\00\00\F2\0F\10E\A0\F2\0F\11\85X\FF\FF\FF\F2\0F\10\85X\FF\FF\FF\F2\0F\11E\A0\F2\0F\10E\88f\0F.E\98\0F\86\12\00\00\00\F2\0F\10E\88\F2\0F\11\85P\FF\FF\FF\E9\0D\00\00\00\F2\0F\10E\98\F2\0F\11\85P\FF\FF\FF\F2\0F\10\85P\FF\FF\FF\F2\0F\11E\98\8BE\F8\83\C0\02\89E\F8\E9\9F\FE\FF\FF\F2\0F\10\055\07\00\00\F2\0F\10M\B0\F2\0F\11M\C0\F2\0F\10M\A8\F2\0F\5CM\B0\F2\0F^\C1\F2\0F\11E\B8\C7E\E8\00\00\00\00\C7E\F8\00\00\00\00\8BE\F8;E\E0\0F\8D\E6\00\00\00\C7E\F4\00\00\00\00\8BE\F4;E\E0\0F\8D\C0\00\00\00\B0\01H\8BM\D8\8BU\E0\0F\AFU\F8\03U\F4\C1\E2\01\83\C2\01Hc\F2\F2\0F\10\04\F1\F2\0F\5CE\C0\F2\0FYE\B8\F2\0F,\D0\89U\F0\8BU\F8\83\E2\0F\83\FA\08\88\85O\FF\FF\FF\0F\84\12\00\00\00\8BE\F4\83\E0\0F\83\F8\08\0F\94\C1\88\8DO\FF\FF\FF\8A\85O\FF\FF\FF1\C9\BA\FF\00\00\00\A8\01\0FE\CA\89M\EC\8BM\F0;M\EC\0F\846\00\00\00H\BE$\11@\00\00\00\00\00\8BE\E8\83\C0\01\89E\E8H\8B<%` `\00\8BU\F8\8BM\F4D\8BE\ECD\8BM\F0\B0\00\E8\AC\FA\FF\FF\89\85H\FF\FF\FF\E9\00\00\00\00\8BE\F4\83\C0\01\89E\F4\E94\FF\FF\FF\E9\00\00\00\00\8BE\F8\83\C0\01\89E\F8\E9\0E\FF\FF\FF\83}\E8\00\0F\85'\00\00\00H\BET\11@\00\00\00\00\00H\8B<%` `\00\8BU\E4\B0\00\E8Z\FA\FF\FF\89\85D\FF\FF\FF\E9%\00\00\00H\BEw\11@\00\00\00\00\00H\8B<%` `\00\8BU\E4\8BM\E8\B0\00\E80\FA\FF\FF\89\85@\FF\FF\FF1\C0H\81\C4\C0\00\00\00]\C3ffffff.\0F\1F\84\00\00\00\00\00UH\89\E5H\81\EC\C0\00\00\00H\89}\F8H\89u\F0\89U\EC\89M\E8\C7E\A0\01\00\00\00\C7E\B8\01\00\00\00\8BE\B8;E\EC\0F\8F \00\00\00H\8BE\F0HcM\B8\8B\14\88\0F\AFU\A0\89U\A0\8BE\B8\83\C0\01\89E\B8\E9\D4\FF\FF\FF\C7E\A8\01\00\00\00\8BE\EC\89E\B8\83}\B8\01\0F\8C\8E\04\00\00H\8BE\F0HcM\B8\8B\14\88\89U\AC\8BE\A0\8BU\AC\0F\AFU\A8\89\95\5C\FF\FF\FF\99\8B\B5\5C\FF\FF\FF\F7\FE\89E\A4\8BE\A8\C1\E0\01\89E\D0\8BE\D0\0F\AFE\AC\89E\CC\8BE\CC\0F\AFE\A4\89E\C8\C7E\D8\01\00\00\00\C7E\E0\01\00\00\00\8BE\E0;E\CC\0F\8Fk\01\00\00\8BE\E0;E\D8\0F\8D\EE\00\00\00\8BE\E0\89E\E4\8BE\E4\8BM\E0\03M\D0\83\E9\029\C8\0F\8F\CF\00\00\00\8BE\E4\89E\DC\8BE\DC;E\C8\0F\8F\AA\00\00\00\8BE\D8\03E\DC+E\E0\89E\D4H\8BM\F8HcU\DC\F2\0F\10\04\D1\F2\0F\11E\90H\8BM\F8HcU\D4\F2\0F\10\04\D1H\8BM\F8HcU\DC\F2\0F\11\04\D1\F2\0F\10E\90H\8BM\F8HcU\D4\F2\0F\11\04\D1H\8BM\F8\8BE\DC\83\C0\01Hc\D0\F2\0F\10\04\D1\F2\0F\11E\90H\8BM\F8\8BE\D4\83\C0\01Hc\D0\F2\0F\10\04\D1H\8BM\F8\8BE\DC\83\C0\01Hc\D0\F2\0F\11\04\D1\F2\0F\10E\90H\8BM\F8\8BE\D4\83\C0\01Hc\D0\F2\0F\11\04\D1\8BE\CC\03E\DC\89E\DC\E9J\FF\FF\FF\E9\00\00\00\00\8BE\E4\83\C0\02\89E\E4\E9\1D\FF\FF\FF\E9\00\00\00\00\8BE\CC\C1\F8\01\89E\BC1\C0\88\C1\8BE\BC;E\D0\88\8D[\FF\FF\FF\0F\8C\0F\00\00\00\8BE\D8;E\BC\0F\9F\C1\88\8D[\FF\FF\FF\8A\85[\FF\FF\FF\A8\01\0F\85\05\00\00\00\E9\19\00\00\00\8BE\BC\8BM\D8)\C1\89M\D8\8BE\BC\C1\F8\01\89E\BC\E9\AF\FF\FF\FF\8BE\BC\03E\D8\89E\D8\8BE\D0\03E\E0\89E\E0\E9\89\FE\FF\FF\8BE\D0\89E\C4\8BE\C4;E\CC\0F\8D\98\02\00\00\0FW\C0\F2\0F\10\0De\03\00\00\F2\0F\10\15e\03\00\00\F2\0F\10\1De\03\00\00\F2\0F\10%e\03\00\00\8BE\C4\C1\E0\01\89E\C0\8BE\E8\F2\0F*\E8\F2\0FY\EC\8BE\C0\99\F7}\D0\F2\0F*\E0\F2\0F^\EC\F2\0F\11m\88\F2\0FY]\88\F2\0F\11\85P\FF\FF\FF\0F(\C3\F2\0F\11\95H\FF\FF\FF\F2\0F\11\8D@\FF\FF\FF\E8x\F7\FF\FF\F2\0F\11\85`\FF\FF\FF\F2\0F\10\85H\FF\FF\FF\F2\0FY\85`\FF\FF\FF\F2\0FY\85`\FF\FF\FF\F2\0F\11\85p\FF\FF\FF\F2\0F\10E\88\E8F\F7\FF\FF\F2\0F\11\85x\FF\FF\FF\F2\0F\10\85@\FF\FF\FF\F2\0F\11\85h\FF\FF\FF\F2\0F\10\8DP\FF\FF\FF\F2\0F\11M\80\C7E\DC\01\00\00\00\8BE\DC;E\C4\0F\8F\B3\01\00\00\8BE\DC\89E\E4\8BE\E4\8BM\DC\03M\D0\83\E9\029\C8\0F\8F'\01\00\00\8BE\E4\89E\E0\8BE\E0;E\C8\0F\8F\02\01\00\00\8BE\E0\89E\B4\8BE\B4\03E\C4\89E\B0\F2\0F\10\85h\FF\FF\FFH\8BM\F8HcU\B0\F2\0FY\04\D1\F2\0F\10M\80H\8BM\F8\8BE\B0\83\C0\01Hc\D0\F2\0FY\0C\D1\F2\0F\5C\C1\F2\0F\11E\90\F2\0F\10\85h\FF\FF\FFH\8BM\F8\8BE\B0\83\C0\01Hc\D0\F2\0FY\04\D1\F2\0F\10M\80H\8BM\F8HcU\B0\F2\0FY\0C\D1\F2\0FX\C1\F2\0F\11E\98H\8BM\F8HcU\B4\F2\0F\10\04\D1\F2\0F\5CE\90H\8BM\F8HcU\B0\F2\0F\11\04\D1H\8BM\F8\8BE\B4\83\C0\01Hc\D0\F2\0F\10\04\D1\F2\0F\5CE\98H\8BM\F8\8BE\B0\83\C0\01Hc\D0\F2\0F\11\04\D1\F2\0F\10E\90H\8BM\F8HcU\B4\F2\0FX\04\D1\F2\0F\11\04\D1\F2\0F\10E\98H\8BM\F8\8BE\B4\83\C0\01Hc\D0\F2\0FX\04\D1\F2\0F\11\04\D1\8BE\C0\03E\E0\89E\E0\E9\F2\FE\FF\FF\E9\00\00\00\00\8BE\E4\83\C0\02\89E\E4\E9\C5\FE\FF\FF\F2\0F\10\85h\FF\FF\FF\F2\0F\11\85`\FF\FF\FF\F2\0FY\85p\FF\FF\FF\F2\0F\10M\80\F2\0FY\8Dx\FF\FF\FF\F2\0F\5C\C1\F2\0FX\85h\FF\FF\FF\F2\0F\11\85h\FF\FF\FF\F2\0F\10E\80\F2\0FY\85p\FF\FF\FF\F2\0F\10\8D`\FF\FF\FF\F2\0FY\8Dx\FF\FF\FF\F2\0FX\C1\F2\0FXE\80\F2\0F\11E\80\8BE\D0\03E\DC\89E\DC\E9A\FE\FF\FF\8BE\C0\89E\C4\E9\5C\FD\FF\FF\8BE\AC\0F\AFE\A8\89E\A8\8BE\B8\83\C0\FF\89E\B8\E9h\FB\FF\FFH\81\C4\C0\00\00\00]\C3f.\0F\1F\84\00\00\00\00\00\0F\1FD\00\00AWAVI\89\D7AUATL\8D%\9E\0D \00UH\8D-\9E\0D \00SA\89\FDI\89\F6L)\E5H\83\EC\08H\C1\FD\03\E8\97\F4\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\FAL\89\F6D\89\EFA\FF\14\DCH\83\C3\01H9\DDu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_4010b4__fini = internal constant %seg_4010b4__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_4010c0__rodata = internal constant %seg_4010c0__rodata_type <{ [72 x i8] c"\01\00\02\00\00\00\00\00\00\00\00 _\A0\02\C2\00\00\00 _\A0\02B\00\00\00\00\00\E0o@\00\00\00\00\00\00`@\00\00\00\00\00\00\F0?\00\00\00\00\00\00\00\C0\00\00\00\00\00\00\E0?\1C-DT\FB!\19@", [28 x i8] c"Can't allocate data array.\0A\00", [48 x i8] c"Wrong answer at (%d,%d)!  Expected %d, got %d.\0A\00", [35 x i8] c"%d passes.  No errors in results.\0A\00", [35 x i8] c"%d passes.  %d errors in results.\0A\00" }>
@seg_40119c__eh_frame_hdr = internal constant %seg_40119c__eh_frame_hdr_type <{ [68 x i8] c"\01\1B\03;@\00\00\00\07\00\00\00\84\F3\FF\FF\9C\00\00\00\E4\F3\FF\FF\5C\00\00\00\14\F4\FF\FF\88\00\00\00\D4\F4\FF\FF\C4\00\00\00\94\F9\FF\FF\E0\00\00\00\A4\FE\FF\FF\FC\00\00\00\14\FF\FF\FFD\01\00\00" }>
@seg_4011e0__eh_frame = internal constant %seg_4011e0__eh_frame_type <{ [280 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00\80\F3\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00\84\F3\FF\FF\02\00\00\00\00\00\00\00$\00\00\000\00\00\00\E0\F2\FF\FF`\00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\18\00\00\00X\00\00\00\08\F4\FF\FF\B1\04\00\00\00A\0E\10\86\02C\0D\06\00\00\00\18\00\00\00t\00\00\00\AC\F8\FF\FF\01\05\00\00\00A\0E\10\86\02C\0D\06\00\00\00D\00\00\00\90\00\00\00\A0\FD\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\D8\00\00\00\C8\FD\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_601df0__init_array = internal global %seg_601df0__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_400660_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_400630___do_global_dtors_aux to i64) }>
@seg_601ff0__got = internal global %seg_601ff0__got_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), i64 ptrtoint (i64 (i64)* @malloc to i64), i64 ptrtoint (double (double)* @sin to i64), i64 ptrtoint (i64 (i64)* @exit to i64) }>
@seg_602040__data = internal global %seg_602040__data_type zeroinitializer
@seg_602060__bss = internal global %seg_602060__bss_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400660_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400630___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4010b0___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_401040___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]

declare %struct.Memory* @sub_4005c0_deregister_tm_clones_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400508__init_proc_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_400b30_fourn_renamed_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

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
define %struct.Memory* @sub_4005f0_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
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
  br i1 %189, label %block_400628, label %block_400613

block_40061d:                                     ; preds = %block_400613
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
    i64 4195882, label %block_40062a
    i64 4195877, label %block_400625
  ]

block_40062a:                                     ; preds = %block_40061d
  %204 = load i64, i64* %RAX
  %205 = load i64, i64* %RAX
  %206 = add i64 %205, %204
  %207 = load i16, i16* %AX
  %208 = zext i16 %207 to i64
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 6
  store i64 %210, i64* %PC
  %211 = load i64, i64* %PC
  %212 = tail call %struct.Memory* @sub_400630___do_global_dtors_aux(%struct.State* %0, i64 %211, %struct.Memory* %2)
  ret %struct.Memory* %212

block_400613:                                     ; preds = %block_4005f0
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
  br i1 %248, label %block_400628, label %block_40061d

block_400628:                                     ; preds = %block_400625, %block_400613, %block_4005f0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005f0 ], [ %2, %block_400613 ], [ %2, %block_400625 ]
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

block_400625:                                     ; preds = %block_40061d
  %264 = load i64, i64* %RAX
  %265 = load i32, i32* %EAX
  %266 = zext i32 %265 to i64
  %267 = load i64, i64* %PC
  %268 = add i64 %267, 3
  store i64 %268, i64* %PC
  br label %block_400628

; <label>:269:                                    ; preds = %block_40061d
  %270 = load i64, i64* %PC
  %271 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %270, %struct.Memory* %2)
  ret %struct.Memory* %271
}

; Function Attrs: noinline
define %struct.Memory* @sub_400508__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400508:
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
  br i1 %80, label %block_40051a, label %block_400518

block_400518:                                     ; preds = %block_400508
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
  br label %block_40051a

block_40051a:                                     ; preds = %block_400518, %block_400508
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400508 ], [ %92, %block_400518 ]
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
define %struct.Memory* @sub_401040___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_401040:
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
  %200 = sub i64 %199, 2916
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
  %211 = call %struct.Memory* @sub_400508__init_proc_renamed_(%struct.State* %0, i64 %210, %struct.Memory* %2)
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
  br i1 %245, label %block_401096, label %block_401076

block_401096:                                     ; preds = %block_401080, %block_401040
  %MEMORY.0 = phi %struct.Memory* [ %211, %block_401040 ], [ %387, %block_401080 ]
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

block_401076:                                     ; preds = %block_401040
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
  br label %block_401080

block_401080:                                     ; preds = %block_401080, %block_401076
  %MEMORY.1 = phi %struct.Memory* [ %211, %block_401076 ], [ %387, %block_401080 ]
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
  br i1 %470, label %block_401080, label %block_401096
}

; Function Attrs: noinline
define %struct.Memory* @sub_400630___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400630:
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
  br i1 %47, label %block_400650, label %block_400639

block_400650:                                     ; preds = %block_400630
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

block_400639:                                     ; preds = %block_400630
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
  %78 = call %struct.Memory* @sub_4005c0_deregister_tm_clones_renamed_(%struct.State* %0, i64 %77, %struct.Memory* %2)
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
define %struct.Memory* @sub_4010b0___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4010b0:
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
define %struct.Memory* @sub_4010b4__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4010b4:
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
define %struct.Memory* @sub_4005b0__dl_relocate_static_pie(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005b0:
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
define %struct.Memory* @sub_400580__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400580:
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
  store i64 ptrtoint (void ()* @callback_sub_4010b0___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !2428
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_401040___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !2428
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
define %struct.Memory* @sub_400b30_fourn(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400b30:
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
  br label %block_400b57

block_400bef:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit, %block_400d31
  %MEMORY.0 = phi %struct.Memory* [ %2484, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit ], [ %MEMORY.4, %block_400d31 ]
  %149 = load i64, i64* %RBP
  %150 = sub i64 %149, 32
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
  %159 = sub i64 %158, 52
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
  %195 = add i64 %194, 369
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
  br i1 %216, label %block_400d66, label %block_400bfb

block_400e6c:                                     ; preds = %block_400e58
  %218 = load i64, i64* %RBP
  %219 = sub i64 %218, 28
  %220 = load i64, i64* %PC
  %221 = add i64 %220, 3
  store i64 %221, i64* %PC
  %222 = inttoptr i64 %219 to i32*
  %223 = load i32, i32* %222
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RAX, align 8, !tbaa !2428
  %225 = load i64, i64* %RBP
  %226 = sub i64 %225, 32
  %227 = load i32, i32* %EAX
  %228 = zext i32 %227 to i64
  %229 = load i64, i64* %PC
  %230 = add i64 %229, 3
  store i64 %230, i64* %PC
  %231 = inttoptr i64 %226 to i32*
  store i32 %227, i32* %231
  br label %block_400e72

block_401010:                                     ; preds = %block_400d6c
  %232 = load i64, i64* %RBP
  %233 = sub i64 %232, 84
  %234 = load i64, i64* %PC
  %235 = add i64 %234, 3
  store i64 %235, i64* %PC
  %236 = inttoptr i64 %233 to i32*
  %237 = load i32, i32* %236
  %238 = zext i32 %237 to i64
  store i64 %238, i64* %RAX, align 8, !tbaa !2428
  %239 = load i64, i64* %RAX
  %240 = load i64, i64* %RBP
  %241 = sub i64 %240, 88
  %242 = load i64, i64* %PC
  %243 = add i64 %242, 4
  store i64 %243, i64* %PC
  %244 = inttoptr i64 %241 to i32*
  %245 = load i32, i32* %244
  %246 = shl i64 %239, 32
  %247 = ashr exact i64 %246, 32
  %248 = sext i32 %245 to i64
  %249 = mul nsw i64 %248, %247
  %250 = trunc i64 %249 to i32
  %251 = and i64 %249, 4294967295
  store i64 %251, i64* %RAX, align 8, !tbaa !2428
  %252 = shl i64 %249, 32
  %253 = ashr exact i64 %252, 32
  %254 = icmp ne i64 %253, %249
  %255 = zext i1 %254 to i8
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %255, i8* %256, align 1, !tbaa !2432
  %257 = and i32 %250, 255
  %258 = call i32 @llvm.ctpop.i32(i32 %257) #17
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %261, i8* %262, align 1, !tbaa !2446
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %263, align 1, !tbaa !2447
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %264, align 1, !tbaa !2448
  %265 = lshr i32 %250, 31
  %266 = trunc i32 %265 to i8
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %266, i8* %267, align 1, !tbaa !2449
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %255, i8* %268, align 1, !tbaa !2450
  %269 = load i64, i64* %RBP
  %270 = sub i64 %269, 88
  %271 = load i32, i32* %EAX
  %272 = zext i32 %271 to i64
  %273 = load i64, i64* %PC
  %274 = add i64 %273, 3
  store i64 %274, i64* %PC
  %275 = inttoptr i64 %270 to i32*
  store i32 %271, i32* %275
  %276 = load i64, i64* %RBP
  %277 = sub i64 %276, 72
  %278 = load i64, i64* %PC
  %279 = add i64 %278, 3
  store i64 %279, i64* %PC
  %280 = inttoptr i64 %277 to i32*
  %281 = load i32, i32* %280
  %282 = zext i32 %281 to i64
  store i64 %282, i64* %RAX, align 8, !tbaa !2428
  %283 = load i64, i64* %RAX
  %284 = load i64, i64* %PC
  %285 = add i64 %284, 3
  store i64 %285, i64* %PC
  %286 = trunc i64 %283 to i32
  %287 = add i32 -1, %286
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RAX, align 8, !tbaa !2428
  %289 = icmp ult i32 %287, %286
  %290 = icmp ult i32 %287, -1
  %291 = or i1 %289, %290
  %292 = zext i1 %291 to i8
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %292, i8* %293, align 1, !tbaa !2432
  %294 = and i32 %287, 255
  %295 = call i32 @llvm.ctpop.i32(i32 %294) #17
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  %298 = xor i8 %297, 1
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %298, i8* %299, align 1, !tbaa !2446
  %300 = xor i64 -1, %283
  %301 = trunc i64 %300 to i32
  %302 = xor i32 %301, %287
  %303 = lshr i32 %302, 4
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %305, i8* %306, align 1, !tbaa !2447
  %307 = icmp eq i32 %287, 0
  %308 = zext i1 %307 to i8
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %308, i8* %309, align 1, !tbaa !2448
  %310 = lshr i32 %287, 31
  %311 = trunc i32 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %311, i8* %312, align 1, !tbaa !2449
  %313 = lshr i32 %286, 31
  %314 = xor i32 %310, %313
  %315 = xor i32 %310, 1
  %316 = add nuw nsw i32 %314, %315
  %317 = icmp eq i32 %316, 2
  %318 = zext i1 %317 to i8
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %318, i8* %319, align 1, !tbaa !2450
  %320 = load i64, i64* %RBP
  %321 = sub i64 %320, 72
  %322 = load i32, i32* %EAX
  %323 = zext i32 %322 to i64
  %324 = load i64, i64* %PC
  %325 = add i64 %324, 3
  store i64 %325, i64* %PC
  %326 = inttoptr i64 %321 to i32*
  store i32 %322, i32* %326
  %327 = load i64, i64* %PC
  %328 = sub i64 %327, 1171
  %329 = load i64, i64* %PC
  %330 = add i64 %329, 5
  store i64 %330, i64* %PC
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %328, i64* %331, align 8, !tbaa !2428
  br label %block_400b90

block_400cdd:                                     ; preds = %block_400c27
  %332 = load i64, i64* %PC
  %333 = add i64 %332, 5
  %334 = load i64, i64* %PC
  %335 = add i64 %334, 5
  store i64 %335, i64* %PC
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %333, i64* %336, align 8, !tbaa !2428
  %337 = load i64, i64* %RBP
  %338 = sub i64 %337, 28
  %339 = load i64, i64* %PC
  %340 = add i64 %339, 3
  store i64 %340, i64* %PC
  %341 = inttoptr i64 %338 to i32*
  %342 = load i32, i32* %341
  %343 = zext i32 %342 to i64
  store i64 %343, i64* %RAX, align 8, !tbaa !2428
  %344 = load i64, i64* %RAX
  %345 = load i64, i64* %PC
  %346 = add i64 %345, 3
  store i64 %346, i64* %PC
  %347 = trunc i64 %344 to i32
  %348 = add i32 2, %347
  %349 = zext i32 %348 to i64
  store i64 %349, i64* %RAX, align 8, !tbaa !2428
  %350 = icmp ult i32 %348, %347
  %351 = icmp ult i32 %348, 2
  %352 = or i1 %350, %351
  %353 = zext i1 %352 to i8
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %353, i8* %354, align 1, !tbaa !2432
  %355 = and i32 %348, 255
  %356 = call i32 @llvm.ctpop.i32(i32 %355) #17
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  %359 = xor i8 %358, 1
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %359, i8* %360, align 1, !tbaa !2446
  %361 = xor i64 2, %344
  %362 = trunc i64 %361 to i32
  %363 = xor i32 %362, %348
  %364 = lshr i32 %363, 4
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %366, i8* %367, align 1, !tbaa !2447
  %368 = icmp eq i32 %348, 0
  %369 = zext i1 %368 to i8
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %369, i8* %370, align 1, !tbaa !2448
  %371 = lshr i32 %348, 31
  %372 = trunc i32 %371 to i8
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %372, i8* %373, align 1, !tbaa !2449
  %374 = lshr i32 %347, 31
  %375 = xor i32 %371, %374
  %376 = add nuw nsw i32 %375, %371
  %377 = icmp eq i32 %376, 2
  %378 = zext i1 %377 to i8
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %378, i8* %379, align 1, !tbaa !2450
  %380 = load i64, i64* %RBP
  %381 = sub i64 %380, 28
  %382 = load i32, i32* %EAX
  %383 = zext i32 %382 to i64
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 3
  store i64 %385, i64* %PC
  %386 = inttoptr i64 %381 to i32*
  store i32 %382, i32* %386
  %387 = load i64, i64* %PC
  %388 = sub i64 %387, 222
  %389 = load i64, i64* %PC
  %390 = add i64 %389, 5
  store i64 %390, i64* %PC
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %388, i64* %391, align 8, !tbaa !2428
  br label %block_400c0d

block_400e58:                                     ; preds = %block_400f80, %block_400e52
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.3, %block_400e52 ], [ %MEMORY.5, %block_400f80 ]
  %392 = load i64, i64* %RBP
  %393 = sub i64 %392, 28
  %394 = load i64, i64* %PC
  %395 = add i64 %394, 3
  store i64 %395, i64* %PC
  %396 = inttoptr i64 %393 to i32*
  %397 = load i32, i32* %396
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RAX, align 8, !tbaa !2428
  %399 = load i64, i64* %RBP
  %400 = sub i64 %399, 36
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 3
  store i64 %402, i64* %PC
  %403 = inttoptr i64 %400 to i32*
  %404 = load i32, i32* %403
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RCX, align 8, !tbaa !2428
  %406 = load i64, i64* %RCX
  %407 = load i64, i64* %RBP
  %408 = sub i64 %407, 48
  %409 = load i64, i64* %PC
  %410 = add i64 %409, 3
  store i64 %410, i64* %PC
  %411 = trunc i64 %406 to i32
  %412 = inttoptr i64 %408 to i32*
  %413 = load i32, i32* %412
  %414 = add i32 %413, %411
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %RCX, align 8, !tbaa !2428
  %416 = icmp ult i32 %414, %411
  %417 = icmp ult i32 %414, %413
  %418 = or i1 %416, %417
  %419 = zext i1 %418 to i8
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %419, i8* %420, align 1, !tbaa !2432
  %421 = and i32 %414, 255
  %422 = call i32 @llvm.ctpop.i32(i32 %421) #17
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %425, i8* %426, align 1, !tbaa !2446
  %427 = xor i32 %413, %411
  %428 = xor i32 %427, %414
  %429 = lshr i32 %428, 4
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %431, i8* %432, align 1, !tbaa !2447
  %433 = icmp eq i32 %414, 0
  %434 = zext i1 %433 to i8
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %434, i8* %435, align 1, !tbaa !2448
  %436 = lshr i32 %414, 31
  %437 = trunc i32 %436 to i8
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %437, i8* %438, align 1, !tbaa !2449
  %439 = lshr i32 %411, 31
  %440 = lshr i32 %413, 31
  %441 = xor i32 %436, %439
  %442 = xor i32 %436, %440
  %443 = add nuw nsw i32 %441, %442
  %444 = icmp eq i32 %443, 2
  %445 = zext i1 %444 to i8
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %445, i8* %446, align 1, !tbaa !2450
  %447 = load i64, i64* %RCX
  %448 = load i64, i64* %PC
  %449 = add i64 %448, 3
  store i64 %449, i64* %PC
  %450 = trunc i64 %447 to i32
  %451 = sub i32 %450, 2
  %452 = zext i32 %451 to i64
  store i64 %452, i64* %RCX, align 8, !tbaa !2428
  %453 = icmp ult i32 %450, 2
  %454 = zext i1 %453 to i8
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %454, i8* %455, align 1, !tbaa !2432
  %456 = and i32 %451, 255
  %457 = call i32 @llvm.ctpop.i32(i32 %456) #17
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %460, i8* %461, align 1, !tbaa !2446
  %462 = xor i64 2, %447
  %463 = trunc i64 %462 to i32
  %464 = xor i32 %463, %451
  %465 = lshr i32 %464, 4
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %467, i8* %468, align 1, !tbaa !2447
  %469 = icmp eq i32 %451, 0
  %470 = zext i1 %469 to i8
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %470, i8* %471, align 1, !tbaa !2448
  %472 = lshr i32 %451, 31
  %473 = trunc i32 %472 to i8
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %473, i8* %474, align 1, !tbaa !2449
  %475 = lshr i32 %450, 31
  %476 = xor i32 %472, %475
  %477 = add nuw nsw i32 %476, %475
  %478 = icmp eq i32 %477, 2
  %479 = zext i1 %478 to i8
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %479, i8* %480, align 1, !tbaa !2450
  %481 = load i32, i32* %EAX
  %482 = zext i32 %481 to i64
  %483 = load i32, i32* %ECX
  %484 = zext i32 %483 to i64
  %485 = load i64, i64* %PC
  %486 = add i64 %485, 2
  store i64 %486, i64* %PC
  %487 = sub i32 %481, %483
  %488 = icmp ult i32 %481, %483
  %489 = zext i1 %488 to i8
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %489, i8* %490, align 1, !tbaa !2432
  %491 = and i32 %487, 255
  %492 = call i32 @llvm.ctpop.i32(i32 %491) #17
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %495, i8* %496, align 1, !tbaa !2446
  %497 = xor i64 %484, %482
  %498 = trunc i64 %497 to i32
  %499 = xor i32 %498, %487
  %500 = lshr i32 %499, 4
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %502, i8* %503, align 1, !tbaa !2447
  %504 = icmp eq i32 %487, 0
  %505 = zext i1 %504 to i8
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %505, i8* %506, align 1, !tbaa !2448
  %507 = lshr i32 %487, 31
  %508 = trunc i32 %507 to i8
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %508, i8* %509, align 1, !tbaa !2449
  %510 = lshr i32 %481, 31
  %511 = lshr i32 %483, 31
  %512 = xor i32 %511, %510
  %513 = xor i32 %507, %510
  %514 = add nuw nsw i32 %513, %512
  %515 = icmp eq i32 %514, 2
  %516 = zext i1 %515 to i8
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %516, i8* %517, align 1, !tbaa !2450
  %518 = load i64, i64* %PC
  %519 = add i64 %518, 301
  %520 = load i64, i64* %PC
  %521 = add i64 %520, 6
  %522 = load i64, i64* %PC
  %523 = add i64 %522, 6
  store i64 %523, i64* %PC
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %525 = load i8, i8* %524, align 1, !tbaa !2448
  %526 = icmp eq i8 %525, 0
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %528 = load i8, i8* %527, align 1, !tbaa !2449
  %529 = icmp ne i8 %528, 0
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %531 = load i8, i8* %530, align 1, !tbaa !2450
  %532 = icmp ne i8 %531, 0
  %533 = xor i1 %529, %532
  %534 = xor i1 %533, true
  %535 = and i1 %526, %534
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %538 = select i1 %535, i64 %519, i64 %521
  store i64 %538, i64* %537, align 8, !tbaa !2428
  %539 = load i8, i8* %BRANCH_TAKEN
  %540 = icmp eq i8 %539, 1
  br i1 %540, label %block_400f93, label %block_400e6c

block_400e52:                                     ; preds = %block_400e46
  %541 = sub i64 %719, 36
  %542 = load i64, i64* %PC
  %543 = add i64 %542, 3
  store i64 %543, i64* %PC
  %544 = inttoptr i64 %541 to i32*
  %545 = load i32, i32* %544
  %546 = zext i32 %545 to i64
  store i64 %546, i64* %RAX, align 8, !tbaa !2428
  %547 = load i64, i64* %RBP
  %548 = sub i64 %547, 28
  %549 = load i32, i32* %EAX
  %550 = zext i32 %549 to i64
  %551 = load i64, i64* %PC
  %552 = add i64 %551, 3
  store i64 %552, i64* %PC
  %553 = inttoptr i64 %548 to i32*
  store i32 %549, i32* %553
  br label %block_400e58

block_400cfe:                                     ; preds = %block_400cf5, %block_400d36
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.10, %block_400cf5 ], [ %MEMORY.4, %block_400d36 ]
  %554 = load i64, i64* %RAX
  %555 = load i32, i32* %EAX
  %556 = zext i32 %555 to i64
  %557 = load i64, i64* %PC
  %558 = add i64 %557, 2
  store i64 %558, i64* %PC
  %559 = xor i64 %556, %554
  %560 = trunc i64 %559 to i32
  %561 = and i64 %559, 4294967295
  store i64 %561, i64* %RAX, align 8, !tbaa !2428
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %562, align 1, !tbaa !2432
  %563 = and i32 %560, 255
  %564 = call i32 @llvm.ctpop.i32(i32 %563) #17
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  %567 = xor i8 %566, 1
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %567, i8* %568, align 1, !tbaa !2446
  %569 = icmp eq i32 %560, 0
  %570 = zext i1 %569 to i8
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %570, i8* %571, align 1, !tbaa !2448
  %572 = lshr i32 %560, 31
  %573 = trunc i32 %572 to i8
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %573, i8* %574, align 1, !tbaa !2449
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %575, align 1, !tbaa !2450
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %576, align 1, !tbaa !2447
  %577 = load i8, i8* %AL
  %578 = zext i8 %577 to i64
  %579 = load i64, i64* %PC
  %580 = add i64 %579, 2
  store i64 %580, i64* %PC
  store i8 %577, i8* %CL, align 1, !tbaa !2451
  %581 = load i64, i64* %RBP
  %582 = sub i64 %581, 68
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
  %591 = sub i64 %590, 48
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
  %601 = call i32 @llvm.ctpop.i32(i32 %600) #17
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
  %626 = load i64, i64* %RBP
  %627 = sub i64 %626, 165
  %628 = load i8, i8* %CL
  %629 = zext i8 %628 to i64
  %630 = load i64, i64* %PC
  %631 = add i64 %630, 6
  store i64 %631, i64* %PC
  %632 = inttoptr i64 %627 to i8*
  store i8 %628, i8* %632
  %633 = load i64, i64* %PC
  %634 = add i64 %633, 21
  %635 = load i64, i64* %PC
  %636 = add i64 %635, 6
  %637 = load i64, i64* %PC
  %638 = add i64 %637, 6
  store i64 %638, i64* %PC
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %640 = load i8, i8* %639, align 1, !tbaa !2449
  %641 = icmp ne i8 %640, 0
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %643 = load i8, i8* %642, align 1, !tbaa !2450
  %644 = icmp ne i8 %643, 0
  %645 = xor i1 %641, %644
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %648 = select i1 %645, i64 %634, i64 %636
  store i64 %648, i64* %647, align 8, !tbaa !2428
  %649 = load i8, i8* %BRANCH_TAKEN
  %650 = icmp eq i8 %649, 1
  br i1 %650, label %block_400d23, label %block_400d14

block_400e46:                                     ; preds = %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit, %block_400f93
  %MEMORY.3 = phi %struct.Memory* [ %4682, %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit ], [ %MEMORY.1, %block_400f93 ]
  %651 = load i64, i64* %RBP
  %652 = sub i64 %651, 36
  %653 = load i64, i64* %PC
  %654 = add i64 %653, 3
  store i64 %654, i64* %PC
  %655 = inttoptr i64 %652 to i32*
  %656 = load i32, i32* %655
  %657 = zext i32 %656 to i64
  store i64 %657, i64* %RAX, align 8, !tbaa !2428
  %658 = load i32, i32* %EAX
  %659 = zext i32 %658 to i64
  %660 = load i64, i64* %RBP
  %661 = sub i64 %660, 60
  %662 = load i64, i64* %PC
  %663 = add i64 %662, 3
  store i64 %663, i64* %PC
  %664 = inttoptr i64 %661 to i32*
  %665 = load i32, i32* %664
  %666 = sub i32 %658, %665
  %667 = icmp ult i32 %658, %665
  %668 = zext i1 %667 to i8
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %668, i8* %669, align 1, !tbaa !2432
  %670 = and i32 %666, 255
  %671 = call i32 @llvm.ctpop.i32(i32 %670) #17
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = xor i8 %673, 1
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %674, i8* %675, align 1, !tbaa !2446
  %676 = xor i32 %665, %658
  %677 = xor i32 %676, %666
  %678 = lshr i32 %677, 4
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %680, i8* %681, align 1, !tbaa !2447
  %682 = icmp eq i32 %666, 0
  %683 = zext i1 %682 to i8
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %683, i8* %684, align 1, !tbaa !2448
  %685 = lshr i32 %666, 31
  %686 = trunc i32 %685 to i8
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %686, i8* %687, align 1, !tbaa !2449
  %688 = lshr i32 %658, 31
  %689 = lshr i32 %665, 31
  %690 = xor i32 %689, %688
  %691 = xor i32 %685, %688
  %692 = add nuw nsw i32 %691, %690
  %693 = icmp eq i32 %692, 2
  %694 = zext i1 %693 to i8
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %694, i8* %695, align 1, !tbaa !2450
  %696 = load i64, i64* %PC
  %697 = add i64 %696, 441
  %698 = load i64, i64* %PC
  %699 = add i64 %698, 6
  %700 = load i64, i64* %PC
  %701 = add i64 %700, 6
  store i64 %701, i64* %PC
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %703 = load i8, i8* %702, align 1, !tbaa !2448
  %704 = icmp eq i8 %703, 0
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %706 = load i8, i8* %705, align 1, !tbaa !2449
  %707 = icmp ne i8 %706, 0
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %709 = load i8, i8* %708, align 1, !tbaa !2450
  %710 = icmp ne i8 %709, 0
  %711 = xor i1 %707, %710
  %712 = xor i1 %711, true
  %713 = and i1 %704, %712
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %716 = select i1 %713, i64 %697, i64 %699
  store i64 %716, i64* %715, align 8, !tbaa !2428
  %717 = load i8, i8* %BRANCH_TAKEN
  %718 = icmp eq i8 %717, 1
  %719 = load i64, i64* %RBP
  br i1 %718, label %block_401005, label %block_400e52

block_400e7e:                                     ; preds = %block_400e72
  %720 = load i64, i64* %RBP
  %721 = sub i64 %720, 32
  %722 = load i64, i64* %PC
  %723 = add i64 %722, 3
  store i64 %723, i64* %PC
  %724 = inttoptr i64 %721 to i32*
  %725 = load i32, i32* %724
  %726 = zext i32 %725 to i64
  store i64 %726, i64* %RAX, align 8, !tbaa !2428
  %727 = load i64, i64* %RBP
  %728 = sub i64 %727, 76
  %729 = load i32, i32* %EAX
  %730 = zext i32 %729 to i64
  %731 = load i64, i64* %PC
  %732 = add i64 %731, 3
  store i64 %732, i64* %PC
  %733 = inttoptr i64 %728 to i32*
  store i32 %729, i32* %733
  %734 = load i64, i64* %RBP
  %735 = sub i64 %734, 76
  %736 = load i64, i64* %PC
  %737 = add i64 %736, 3
  store i64 %737, i64* %PC
  %738 = inttoptr i64 %735 to i32*
  %739 = load i32, i32* %738
  %740 = zext i32 %739 to i64
  store i64 %740, i64* %RAX, align 8, !tbaa !2428
  %741 = load i64, i64* %RAX
  %742 = load i64, i64* %RBP
  %743 = sub i64 %742, 60
  %744 = load i64, i64* %PC
  %745 = add i64 %744, 3
  store i64 %745, i64* %PC
  %746 = trunc i64 %741 to i32
  %747 = inttoptr i64 %743 to i32*
  %748 = load i32, i32* %747
  %749 = add i32 %748, %746
  %750 = zext i32 %749 to i64
  store i64 %750, i64* %RAX, align 8, !tbaa !2428
  %751 = icmp ult i32 %749, %746
  %752 = icmp ult i32 %749, %748
  %753 = or i1 %751, %752
  %754 = zext i1 %753 to i8
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %754, i8* %755, align 1, !tbaa !2432
  %756 = and i32 %749, 255
  %757 = call i32 @llvm.ctpop.i32(i32 %756) #17
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = xor i8 %759, 1
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %760, i8* %761, align 1, !tbaa !2446
  %762 = xor i32 %748, %746
  %763 = xor i32 %762, %749
  %764 = lshr i32 %763, 4
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %766, i8* %767, align 1, !tbaa !2447
  %768 = icmp eq i32 %749, 0
  %769 = zext i1 %768 to i8
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %769, i8* %770, align 1, !tbaa !2448
  %771 = lshr i32 %749, 31
  %772 = trunc i32 %771 to i8
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %772, i8* %773, align 1, !tbaa !2449
  %774 = lshr i32 %746, 31
  %775 = lshr i32 %748, 31
  %776 = xor i32 %771, %774
  %777 = xor i32 %771, %775
  %778 = add nuw nsw i32 %776, %777
  %779 = icmp eq i32 %778, 2
  %780 = zext i1 %779 to i8
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %780, i8* %781, align 1, !tbaa !2450
  %782 = load i64, i64* %RBP
  %783 = sub i64 %782, 80
  %784 = load i32, i32* %EAX
  %785 = zext i32 %784 to i64
  %786 = load i64, i64* %PC
  %787 = add i64 %786, 3
  store i64 %787, i64* %PC
  %788 = inttoptr i64 %783 to i32*
  store i32 %784, i32* %788
  %789 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %790 = load i64, i64* %RBP
  %791 = sub i64 %790, 152
  %792 = load i64, i64* %PC
  %793 = add i64 %792, 8
  store i64 %793, i64* %PC
  %794 = inttoptr i64 %791 to double*
  %795 = load double, double* %794
  %796 = bitcast i8* %789 to double*
  store double %795, double* %796, align 1, !tbaa !2452
  %797 = getelementptr inbounds i8, i8* %789, i64 8
  %798 = bitcast i8* %797 to double*
  store double 0.000000e+00, double* %798, align 1, !tbaa !2452
  %799 = load i64, i64* %RBP
  %800 = sub i64 %799, 8
  %801 = load i64, i64* %PC
  %802 = add i64 %801, 4
  store i64 %802, i64* %PC
  %803 = inttoptr i64 %800 to i64*
  %804 = load i64, i64* %803
  store i64 %804, i64* %RCX, align 8, !tbaa !2428
  %805 = load i64, i64* %RBP
  %806 = sub i64 %805, 80
  %807 = load i64, i64* %PC
  %808 = add i64 %807, 4
  store i64 %808, i64* %PC
  %809 = inttoptr i64 %806 to i32*
  %810 = load i32, i32* %809
  %811 = sext i32 %810 to i64
  store i64 %811, i64* %RDX, align 8, !tbaa !2428
  %812 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %813 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %814 = load i64, i64* %RCX
  %815 = load i64, i64* %RDX
  %816 = mul i64 %815, 8
  %817 = add i64 %816, %814
  %818 = load i64, i64* %PC
  %819 = add i64 %818, 5
  store i64 %819, i64* %PC
  %820 = bitcast i8* %813 to double*
  %821 = load double, double* %820, align 1
  %822 = getelementptr inbounds i8, i8* %813, i64 8
  %823 = bitcast i8* %822 to i64*
  %824 = load i64, i64* %823, align 1
  %825 = inttoptr i64 %817 to double*
  %826 = load double, double* %825
  %827 = fmul double %821, %826
  %828 = bitcast i8* %812 to double*
  store double %827, double* %828, align 1, !tbaa !2452
  %829 = getelementptr inbounds i8, i8* %812, i64 8
  %830 = bitcast i8* %829 to i64*
  store i64 %824, i64* %830, align 1, !tbaa !2452
  %831 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %832 = load i64, i64* %RBP
  %833 = sub i64 %832, 128
  %834 = load i64, i64* %PC
  %835 = add i64 %834, 5
  store i64 %835, i64* %PC
  %836 = inttoptr i64 %833 to double*
  %837 = load double, double* %836
  %838 = bitcast i8* %831 to double*
  store double %837, double* %838, align 1, !tbaa !2452
  %839 = getelementptr inbounds i8, i8* %831, i64 8
  %840 = bitcast i8* %839 to double*
  store double 0.000000e+00, double* %840, align 1, !tbaa !2452
  %841 = load i64, i64* %RBP
  %842 = sub i64 %841, 8
  %843 = load i64, i64* %PC
  %844 = add i64 %843, 4
  store i64 %844, i64* %PC
  %845 = inttoptr i64 %842 to i64*
  %846 = load i64, i64* %845
  store i64 %846, i64* %RCX, align 8, !tbaa !2428
  %847 = load i64, i64* %RBP
  %848 = sub i64 %847, 80
  %849 = load i64, i64* %PC
  %850 = add i64 %849, 3
  store i64 %850, i64* %PC
  %851 = inttoptr i64 %848 to i32*
  %852 = load i32, i32* %851
  %853 = zext i32 %852 to i64
  store i64 %853, i64* %RAX, align 8, !tbaa !2428
  %854 = load i64, i64* %RAX
  %855 = load i64, i64* %PC
  %856 = add i64 %855, 3
  store i64 %856, i64* %PC
  %857 = trunc i64 %854 to i32
  %858 = add i32 1, %857
  %859 = zext i32 %858 to i64
  store i64 %859, i64* %RAX, align 8, !tbaa !2428
  %860 = icmp ult i32 %858, %857
  %861 = icmp ult i32 %858, 1
  %862 = or i1 %860, %861
  %863 = zext i1 %862 to i8
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %863, i8* %864, align 1, !tbaa !2432
  %865 = and i32 %858, 255
  %866 = call i32 @llvm.ctpop.i32(i32 %865) #17
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %869, i8* %870, align 1, !tbaa !2446
  %871 = xor i64 1, %854
  %872 = trunc i64 %871 to i32
  %873 = xor i32 %872, %858
  %874 = lshr i32 %873, 4
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %876, i8* %877, align 1, !tbaa !2447
  %878 = icmp eq i32 %858, 0
  %879 = zext i1 %878 to i8
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %879, i8* %880, align 1, !tbaa !2448
  %881 = lshr i32 %858, 31
  %882 = trunc i32 %881 to i8
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %882, i8* %883, align 1, !tbaa !2449
  %884 = lshr i32 %857, 31
  %885 = xor i32 %881, %884
  %886 = add nuw nsw i32 %885, %881
  %887 = icmp eq i32 %886, 2
  %888 = zext i1 %887 to i8
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %888, i8* %889, align 1, !tbaa !2450
  %890 = load i32, i32* %EAX
  %891 = zext i32 %890 to i64
  %892 = load i64, i64* %PC
  %893 = add i64 %892, 3
  store i64 %893, i64* %PC
  %894 = shl i64 %891, 32
  %895 = ashr exact i64 %894, 32
  store i64 %895, i64* %RDX, align 8, !tbaa !2428
  %896 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %897 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %898 = load i64, i64* %RCX
  %899 = load i64, i64* %RDX
  %900 = mul i64 %899, 8
  %901 = add i64 %900, %898
  %902 = load i64, i64* %PC
  %903 = add i64 %902, 5
  store i64 %903, i64* %PC
  %904 = bitcast i8* %897 to double*
  %905 = load double, double* %904, align 1
  %906 = getelementptr inbounds i8, i8* %897, i64 8
  %907 = bitcast i8* %906 to i64*
  %908 = load i64, i64* %907, align 1
  %909 = inttoptr i64 %901 to double*
  %910 = load double, double* %909
  %911 = fmul double %905, %910
  %912 = bitcast i8* %896 to double*
  store double %911, double* %912, align 1, !tbaa !2452
  %913 = getelementptr inbounds i8, i8* %896, i64 8
  %914 = bitcast i8* %913 to i64*
  store i64 %908, i64* %914, align 1, !tbaa !2452
  %915 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %916 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %917 = bitcast %union.vec128_t* %XMM1 to i8*
  %918 = load i64, i64* %PC
  %919 = add i64 %918, 4
  store i64 %919, i64* %PC
  %920 = bitcast i8* %916 to double*
  %921 = load double, double* %920, align 1
  %922 = getelementptr inbounds i8, i8* %916, i64 8
  %923 = bitcast i8* %922 to i64*
  %924 = load i64, i64* %923, align 1
  %925 = bitcast i8* %917 to double*
  %926 = load double, double* %925, align 1
  %927 = fsub double %921, %926
  %928 = bitcast i8* %915 to double*
  store double %927, double* %928, align 1, !tbaa !2452
  %929 = getelementptr inbounds i8, i8* %915, i64 8
  %930 = bitcast i8* %929 to i64*
  store i64 %924, i64* %930, align 1, !tbaa !2452
  %931 = load i64, i64* %RBP
  %932 = sub i64 %931, 112
  %933 = bitcast %union.vec128_t* %XMM0 to i8*
  %934 = load i64, i64* %PC
  %935 = add i64 %934, 5
  store i64 %935, i64* %PC
  %936 = bitcast i8* %933 to double*
  %937 = load double, double* %936, align 1
  %938 = inttoptr i64 %932 to double*
  store double %937, double* %938
  %939 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %940 = load i64, i64* %RBP
  %941 = sub i64 %940, 152
  %942 = load i64, i64* %PC
  %943 = add i64 %942, 8
  store i64 %943, i64* %PC
  %944 = inttoptr i64 %941 to double*
  %945 = load double, double* %944
  %946 = bitcast i8* %939 to double*
  store double %945, double* %946, align 1, !tbaa !2452
  %947 = getelementptr inbounds i8, i8* %939, i64 8
  %948 = bitcast i8* %947 to double*
  store double 0.000000e+00, double* %948, align 1, !tbaa !2452
  %949 = load i64, i64* %RBP
  %950 = sub i64 %949, 8
  %951 = load i64, i64* %PC
  %952 = add i64 %951, 4
  store i64 %952, i64* %PC
  %953 = inttoptr i64 %950 to i64*
  %954 = load i64, i64* %953
  store i64 %954, i64* %RCX, align 8, !tbaa !2428
  %955 = load i64, i64* %RBP
  %956 = sub i64 %955, 80
  %957 = load i64, i64* %PC
  %958 = add i64 %957, 3
  store i64 %958, i64* %PC
  %959 = inttoptr i64 %956 to i32*
  %960 = load i32, i32* %959
  %961 = zext i32 %960 to i64
  store i64 %961, i64* %RAX, align 8, !tbaa !2428
  %962 = load i64, i64* %RAX
  %963 = load i64, i64* %PC
  %964 = add i64 %963, 3
  store i64 %964, i64* %PC
  %965 = trunc i64 %962 to i32
  %966 = add i32 1, %965
  %967 = zext i32 %966 to i64
  store i64 %967, i64* %RAX, align 8, !tbaa !2428
  %968 = icmp ult i32 %966, %965
  %969 = icmp ult i32 %966, 1
  %970 = or i1 %968, %969
  %971 = zext i1 %970 to i8
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %971, i8* %972, align 1, !tbaa !2432
  %973 = and i32 %966, 255
  %974 = call i32 @llvm.ctpop.i32(i32 %973) #17
  %975 = trunc i32 %974 to i8
  %976 = and i8 %975, 1
  %977 = xor i8 %976, 1
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %977, i8* %978, align 1, !tbaa !2446
  %979 = xor i64 1, %962
  %980 = trunc i64 %979 to i32
  %981 = xor i32 %980, %966
  %982 = lshr i32 %981, 4
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %984, i8* %985, align 1, !tbaa !2447
  %986 = icmp eq i32 %966, 0
  %987 = zext i1 %986 to i8
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %987, i8* %988, align 1, !tbaa !2448
  %989 = lshr i32 %966, 31
  %990 = trunc i32 %989 to i8
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %990, i8* %991, align 1, !tbaa !2449
  %992 = lshr i32 %965, 31
  %993 = xor i32 %989, %992
  %994 = add nuw nsw i32 %993, %989
  %995 = icmp eq i32 %994, 2
  %996 = zext i1 %995 to i8
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %996, i8* %997, align 1, !tbaa !2450
  %998 = load i32, i32* %EAX
  %999 = zext i32 %998 to i64
  %1000 = load i64, i64* %PC
  %1001 = add i64 %1000, 3
  store i64 %1001, i64* %PC
  %1002 = shl i64 %999, 32
  %1003 = ashr exact i64 %1002, 32
  store i64 %1003, i64* %RDX, align 8, !tbaa !2428
  %1004 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1005 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1006 = load i64, i64* %RCX
  %1007 = load i64, i64* %RDX
  %1008 = mul i64 %1007, 8
  %1009 = add i64 %1008, %1006
  %1010 = load i64, i64* %PC
  %1011 = add i64 %1010, 5
  store i64 %1011, i64* %PC
  %1012 = bitcast i8* %1005 to double*
  %1013 = load double, double* %1012, align 1
  %1014 = getelementptr inbounds i8, i8* %1005, i64 8
  %1015 = bitcast i8* %1014 to i64*
  %1016 = load i64, i64* %1015, align 1
  %1017 = inttoptr i64 %1009 to double*
  %1018 = load double, double* %1017
  %1019 = fmul double %1013, %1018
  %1020 = bitcast i8* %1004 to double*
  store double %1019, double* %1020, align 1, !tbaa !2452
  %1021 = getelementptr inbounds i8, i8* %1004, i64 8
  %1022 = bitcast i8* %1021 to i64*
  store i64 %1016, i64* %1022, align 1, !tbaa !2452
  %1023 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1024 = load i64, i64* %RBP
  %1025 = sub i64 %1024, 128
  %1026 = load i64, i64* %PC
  %1027 = add i64 %1026, 5
  store i64 %1027, i64* %PC
  %1028 = inttoptr i64 %1025 to double*
  %1029 = load double, double* %1028
  %1030 = bitcast i8* %1023 to double*
  store double %1029, double* %1030, align 1, !tbaa !2452
  %1031 = getelementptr inbounds i8, i8* %1023, i64 8
  %1032 = bitcast i8* %1031 to double*
  store double 0.000000e+00, double* %1032, align 1, !tbaa !2452
  %1033 = load i64, i64* %RBP
  %1034 = sub i64 %1033, 8
  %1035 = load i64, i64* %PC
  %1036 = add i64 %1035, 4
  store i64 %1036, i64* %PC
  %1037 = inttoptr i64 %1034 to i64*
  %1038 = load i64, i64* %1037
  store i64 %1038, i64* %RCX, align 8, !tbaa !2428
  %1039 = load i64, i64* %RBP
  %1040 = sub i64 %1039, 80
  %1041 = load i64, i64* %PC
  %1042 = add i64 %1041, 4
  store i64 %1042, i64* %PC
  %1043 = inttoptr i64 %1040 to i32*
  %1044 = load i32, i32* %1043
  %1045 = sext i32 %1044 to i64
  store i64 %1045, i64* %RDX, align 8, !tbaa !2428
  %1046 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1047 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1048 = load i64, i64* %RCX
  %1049 = load i64, i64* %RDX
  %1050 = mul i64 %1049, 8
  %1051 = add i64 %1050, %1048
  %1052 = load i64, i64* %PC
  %1053 = add i64 %1052, 5
  store i64 %1053, i64* %PC
  %1054 = bitcast i8* %1047 to double*
  %1055 = load double, double* %1054, align 1
  %1056 = getelementptr inbounds i8, i8* %1047, i64 8
  %1057 = bitcast i8* %1056 to i64*
  %1058 = load i64, i64* %1057, align 1
  %1059 = inttoptr i64 %1051 to double*
  %1060 = load double, double* %1059
  %1061 = fmul double %1055, %1060
  %1062 = bitcast i8* %1046 to double*
  store double %1061, double* %1062, align 1, !tbaa !2452
  %1063 = getelementptr inbounds i8, i8* %1046, i64 8
  %1064 = bitcast i8* %1063 to i64*
  store i64 %1058, i64* %1064, align 1, !tbaa !2452
  %1065 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1066 = bitcast %"class.std::bitset"* %YMM0 to i8*
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
  %1077 = fadd double %1071, %1076
  %1078 = bitcast i8* %1065 to double*
  store double %1077, double* %1078, align 1, !tbaa !2452
  %1079 = getelementptr inbounds i8, i8* %1065, i64 8
  %1080 = bitcast i8* %1079 to i64*
  store i64 %1074, i64* %1080, align 1, !tbaa !2452
  %1081 = load i64, i64* %RBP
  %1082 = sub i64 %1081, 104
  %1083 = bitcast %union.vec128_t* %XMM0 to i8*
  %1084 = load i64, i64* %PC
  %1085 = add i64 %1084, 5
  store i64 %1085, i64* %PC
  %1086 = bitcast i8* %1083 to double*
  %1087 = load double, double* %1086, align 1
  %1088 = inttoptr i64 %1082 to double*
  store double %1087, double* %1088
  %1089 = load i64, i64* %RBP
  %1090 = sub i64 %1089, 8
  %1091 = load i64, i64* %PC
  %1092 = add i64 %1091, 4
  store i64 %1092, i64* %PC
  %1093 = inttoptr i64 %1090 to i64*
  %1094 = load i64, i64* %1093
  store i64 %1094, i64* %RCX, align 8, !tbaa !2428
  %1095 = load i64, i64* %RBP
  %1096 = sub i64 %1095, 76
  %1097 = load i64, i64* %PC
  %1098 = add i64 %1097, 4
  store i64 %1098, i64* %PC
  %1099 = inttoptr i64 %1096 to i32*
  %1100 = load i32, i32* %1099
  %1101 = sext i32 %1100 to i64
  store i64 %1101, i64* %RDX, align 8, !tbaa !2428
  %1102 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1103 = load i64, i64* %RCX
  %1104 = load i64, i64* %RDX
  %1105 = mul i64 %1104, 8
  %1106 = add i64 %1105, %1103
  %1107 = load i64, i64* %PC
  %1108 = add i64 %1107, 5
  store i64 %1108, i64* %PC
  %1109 = inttoptr i64 %1106 to double*
  %1110 = load double, double* %1109
  %1111 = bitcast i8* %1102 to double*
  store double %1110, double* %1111, align 1, !tbaa !2452
  %1112 = getelementptr inbounds i8, i8* %1102, i64 8
  %1113 = bitcast i8* %1112 to double*
  store double 0.000000e+00, double* %1113, align 1, !tbaa !2452
  %1114 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1115 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1116 = load i64, i64* %RBP
  %1117 = sub i64 %1116, 112
  %1118 = load i64, i64* %PC
  %1119 = add i64 %1118, 5
  store i64 %1119, i64* %PC
  %1120 = bitcast i8* %1115 to double*
  %1121 = load double, double* %1120, align 1
  %1122 = getelementptr inbounds i8, i8* %1115, i64 8
  %1123 = bitcast i8* %1122 to i64*
  %1124 = load i64, i64* %1123, align 1
  %1125 = inttoptr i64 %1117 to double*
  %1126 = load double, double* %1125
  %1127 = fsub double %1121, %1126
  %1128 = bitcast i8* %1114 to double*
  store double %1127, double* %1128, align 1, !tbaa !2452
  %1129 = getelementptr inbounds i8, i8* %1114, i64 8
  %1130 = bitcast i8* %1129 to i64*
  store i64 %1124, i64* %1130, align 1, !tbaa !2452
  %1131 = load i64, i64* %RBP
  %1132 = sub i64 %1131, 8
  %1133 = load i64, i64* %PC
  %1134 = add i64 %1133, 4
  store i64 %1134, i64* %PC
  %1135 = inttoptr i64 %1132 to i64*
  %1136 = load i64, i64* %1135
  store i64 %1136, i64* %RCX, align 8, !tbaa !2428
  %1137 = load i64, i64* %RBP
  %1138 = sub i64 %1137, 80
  %1139 = load i64, i64* %PC
  %1140 = add i64 %1139, 4
  store i64 %1140, i64* %PC
  %1141 = inttoptr i64 %1138 to i32*
  %1142 = load i32, i32* %1141
  %1143 = sext i32 %1142 to i64
  store i64 %1143, i64* %RDX, align 8, !tbaa !2428
  %1144 = load i64, i64* %RCX
  %1145 = load i64, i64* %RDX
  %1146 = mul i64 %1145, 8
  %1147 = add i64 %1146, %1144
  %1148 = bitcast %union.vec128_t* %XMM0 to i8*
  %1149 = load i64, i64* %PC
  %1150 = add i64 %1149, 5
  store i64 %1150, i64* %PC
  %1151 = bitcast i8* %1148 to double*
  %1152 = load double, double* %1151, align 1
  %1153 = inttoptr i64 %1147 to double*
  store double %1152, double* %1153
  %1154 = load i64, i64* %RBP
  %1155 = sub i64 %1154, 8
  %1156 = load i64, i64* %PC
  %1157 = add i64 %1156, 4
  store i64 %1157, i64* %PC
  %1158 = inttoptr i64 %1155 to i64*
  %1159 = load i64, i64* %1158
  store i64 %1159, i64* %RCX, align 8, !tbaa !2428
  %1160 = load i64, i64* %RBP
  %1161 = sub i64 %1160, 76
  %1162 = load i64, i64* %PC
  %1163 = add i64 %1162, 3
  store i64 %1163, i64* %PC
  %1164 = inttoptr i64 %1161 to i32*
  %1165 = load i32, i32* %1164
  %1166 = zext i32 %1165 to i64
  store i64 %1166, i64* %RAX, align 8, !tbaa !2428
  %1167 = load i64, i64* %RAX
  %1168 = load i64, i64* %PC
  %1169 = add i64 %1168, 3
  store i64 %1169, i64* %PC
  %1170 = trunc i64 %1167 to i32
  %1171 = add i32 1, %1170
  %1172 = zext i32 %1171 to i64
  store i64 %1172, i64* %RAX, align 8, !tbaa !2428
  %1173 = icmp ult i32 %1171, %1170
  %1174 = icmp ult i32 %1171, 1
  %1175 = or i1 %1173, %1174
  %1176 = zext i1 %1175 to i8
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1176, i8* %1177, align 1, !tbaa !2432
  %1178 = and i32 %1171, 255
  %1179 = call i32 @llvm.ctpop.i32(i32 %1178) #17
  %1180 = trunc i32 %1179 to i8
  %1181 = and i8 %1180, 1
  %1182 = xor i8 %1181, 1
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1182, i8* %1183, align 1, !tbaa !2446
  %1184 = xor i64 1, %1167
  %1185 = trunc i64 %1184 to i32
  %1186 = xor i32 %1185, %1171
  %1187 = lshr i32 %1186, 4
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1189, i8* %1190, align 1, !tbaa !2447
  %1191 = icmp eq i32 %1171, 0
  %1192 = zext i1 %1191 to i8
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1192, i8* %1193, align 1, !tbaa !2448
  %1194 = lshr i32 %1171, 31
  %1195 = trunc i32 %1194 to i8
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1195, i8* %1196, align 1, !tbaa !2449
  %1197 = lshr i32 %1170, 31
  %1198 = xor i32 %1194, %1197
  %1199 = add nuw nsw i32 %1198, %1194
  %1200 = icmp eq i32 %1199, 2
  %1201 = zext i1 %1200 to i8
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1201, i8* %1202, align 1, !tbaa !2450
  %1203 = load i32, i32* %EAX
  %1204 = zext i32 %1203 to i64
  %1205 = load i64, i64* %PC
  %1206 = add i64 %1205, 3
  store i64 %1206, i64* %PC
  %1207 = shl i64 %1204, 32
  %1208 = ashr exact i64 %1207, 32
  store i64 %1208, i64* %RDX, align 8, !tbaa !2428
  %1209 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1210 = load i64, i64* %RCX
  %1211 = load i64, i64* %RDX
  %1212 = mul i64 %1211, 8
  %1213 = add i64 %1212, %1210
  %1214 = load i64, i64* %PC
  %1215 = add i64 %1214, 5
  store i64 %1215, i64* %PC
  %1216 = inttoptr i64 %1213 to double*
  %1217 = load double, double* %1216
  %1218 = bitcast i8* %1209 to double*
  store double %1217, double* %1218, align 1, !tbaa !2452
  %1219 = getelementptr inbounds i8, i8* %1209, i64 8
  %1220 = bitcast i8* %1219 to double*
  store double 0.000000e+00, double* %1220, align 1, !tbaa !2452
  %1221 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1222 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1223 = load i64, i64* %RBP
  %1224 = sub i64 %1223, 104
  %1225 = load i64, i64* %PC
  %1226 = add i64 %1225, 5
  store i64 %1226, i64* %PC
  %1227 = bitcast i8* %1222 to double*
  %1228 = load double, double* %1227, align 1
  %1229 = getelementptr inbounds i8, i8* %1222, i64 8
  %1230 = bitcast i8* %1229 to i64*
  %1231 = load i64, i64* %1230, align 1
  %1232 = inttoptr i64 %1224 to double*
  %1233 = load double, double* %1232
  %1234 = fsub double %1228, %1233
  %1235 = bitcast i8* %1221 to double*
  store double %1234, double* %1235, align 1, !tbaa !2452
  %1236 = getelementptr inbounds i8, i8* %1221, i64 8
  %1237 = bitcast i8* %1236 to i64*
  store i64 %1231, i64* %1237, align 1, !tbaa !2452
  %1238 = load i64, i64* %RBP
  %1239 = sub i64 %1238, 8
  %1240 = load i64, i64* %PC
  %1241 = add i64 %1240, 4
  store i64 %1241, i64* %PC
  %1242 = inttoptr i64 %1239 to i64*
  %1243 = load i64, i64* %1242
  store i64 %1243, i64* %RCX, align 8, !tbaa !2428
  %1244 = load i64, i64* %RBP
  %1245 = sub i64 %1244, 80
  %1246 = load i64, i64* %PC
  %1247 = add i64 %1246, 3
  store i64 %1247, i64* %PC
  %1248 = inttoptr i64 %1245 to i32*
  %1249 = load i32, i32* %1248
  %1250 = zext i32 %1249 to i64
  store i64 %1250, i64* %RAX, align 8, !tbaa !2428
  %1251 = load i64, i64* %RAX
  %1252 = load i64, i64* %PC
  %1253 = add i64 %1252, 3
  store i64 %1253, i64* %PC
  %1254 = trunc i64 %1251 to i32
  %1255 = add i32 1, %1254
  %1256 = zext i32 %1255 to i64
  store i64 %1256, i64* %RAX, align 8, !tbaa !2428
  %1257 = icmp ult i32 %1255, %1254
  %1258 = icmp ult i32 %1255, 1
  %1259 = or i1 %1257, %1258
  %1260 = zext i1 %1259 to i8
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1260, i8* %1261, align 1, !tbaa !2432
  %1262 = and i32 %1255, 255
  %1263 = call i32 @llvm.ctpop.i32(i32 %1262) #17
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = xor i8 %1265, 1
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1266, i8* %1267, align 1, !tbaa !2446
  %1268 = xor i64 1, %1251
  %1269 = trunc i64 %1268 to i32
  %1270 = xor i32 %1269, %1255
  %1271 = lshr i32 %1270, 4
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1273, i8* %1274, align 1, !tbaa !2447
  %1275 = icmp eq i32 %1255, 0
  %1276 = zext i1 %1275 to i8
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1276, i8* %1277, align 1, !tbaa !2448
  %1278 = lshr i32 %1255, 31
  %1279 = trunc i32 %1278 to i8
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1279, i8* %1280, align 1, !tbaa !2449
  %1281 = lshr i32 %1254, 31
  %1282 = xor i32 %1278, %1281
  %1283 = add nuw nsw i32 %1282, %1278
  %1284 = icmp eq i32 %1283, 2
  %1285 = zext i1 %1284 to i8
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1285, i8* %1286, align 1, !tbaa !2450
  %1287 = load i32, i32* %EAX
  %1288 = zext i32 %1287 to i64
  %1289 = load i64, i64* %PC
  %1290 = add i64 %1289, 3
  store i64 %1290, i64* %PC
  %1291 = shl i64 %1288, 32
  %1292 = ashr exact i64 %1291, 32
  store i64 %1292, i64* %RDX, align 8, !tbaa !2428
  %1293 = load i64, i64* %RCX
  %1294 = load i64, i64* %RDX
  %1295 = mul i64 %1294, 8
  %1296 = add i64 %1295, %1293
  %1297 = bitcast %union.vec128_t* %XMM0 to i8*
  %1298 = load i64, i64* %PC
  %1299 = add i64 %1298, 5
  store i64 %1299, i64* %PC
  %1300 = bitcast i8* %1297 to double*
  %1301 = load double, double* %1300, align 1
  %1302 = inttoptr i64 %1296 to double*
  store double %1301, double* %1302
  %1303 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1304 = load i64, i64* %RBP
  %1305 = sub i64 %1304, 112
  %1306 = load i64, i64* %PC
  %1307 = add i64 %1306, 5
  store i64 %1307, i64* %PC
  %1308 = inttoptr i64 %1305 to double*
  %1309 = load double, double* %1308
  %1310 = bitcast i8* %1303 to double*
  store double %1309, double* %1310, align 1, !tbaa !2452
  %1311 = getelementptr inbounds i8, i8* %1303, i64 8
  %1312 = bitcast i8* %1311 to double*
  store double 0.000000e+00, double* %1312, align 1, !tbaa !2452
  %1313 = load i64, i64* %RBP
  %1314 = sub i64 %1313, 8
  %1315 = load i64, i64* %PC
  %1316 = add i64 %1315, 4
  store i64 %1316, i64* %PC
  %1317 = inttoptr i64 %1314 to i64*
  %1318 = load i64, i64* %1317
  store i64 %1318, i64* %RCX, align 8, !tbaa !2428
  %1319 = load i64, i64* %RBP
  %1320 = sub i64 %1319, 76
  %1321 = load i64, i64* %PC
  %1322 = add i64 %1321, 4
  store i64 %1322, i64* %PC
  %1323 = inttoptr i64 %1320 to i32*
  %1324 = load i32, i32* %1323
  %1325 = sext i32 %1324 to i64
  store i64 %1325, i64* %RDX, align 8, !tbaa !2428
  %1326 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1327 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1328 = load i64, i64* %RCX
  %1329 = load i64, i64* %RDX
  %1330 = mul i64 %1329, 8
  %1331 = add i64 %1330, %1328
  %1332 = load i64, i64* %PC
  %1333 = add i64 %1332, 5
  store i64 %1333, i64* %PC
  %1334 = bitcast i8* %1327 to double*
  %1335 = load double, double* %1334, align 1
  %1336 = getelementptr inbounds i8, i8* %1327, i64 8
  %1337 = bitcast i8* %1336 to i64*
  %1338 = load i64, i64* %1337, align 1
  %1339 = inttoptr i64 %1331 to double*
  %1340 = load double, double* %1339
  %1341 = fadd double %1335, %1340
  %1342 = bitcast i8* %1326 to double*
  store double %1341, double* %1342, align 1, !tbaa !2452
  %1343 = getelementptr inbounds i8, i8* %1326, i64 8
  %1344 = bitcast i8* %1343 to i64*
  store i64 %1338, i64* %1344, align 1, !tbaa !2452
  %1345 = load i64, i64* %RCX
  %1346 = load i64, i64* %RDX
  %1347 = mul i64 %1346, 8
  %1348 = add i64 %1347, %1345
  %1349 = bitcast %union.vec128_t* %XMM0 to i8*
  %1350 = load i64, i64* %PC
  %1351 = add i64 %1350, 5
  store i64 %1351, i64* %PC
  %1352 = bitcast i8* %1349 to double*
  %1353 = load double, double* %1352, align 1
  %1354 = inttoptr i64 %1348 to double*
  store double %1353, double* %1354
  %1355 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1356 = load i64, i64* %RBP
  %1357 = sub i64 %1356, 104
  %1358 = load i64, i64* %PC
  %1359 = add i64 %1358, 5
  store i64 %1359, i64* %PC
  %1360 = inttoptr i64 %1357 to double*
  %1361 = load double, double* %1360
  %1362 = bitcast i8* %1355 to double*
  store double %1361, double* %1362, align 1, !tbaa !2452
  %1363 = getelementptr inbounds i8, i8* %1355, i64 8
  %1364 = bitcast i8* %1363 to double*
  store double 0.000000e+00, double* %1364, align 1, !tbaa !2452
  %1365 = load i64, i64* %RBP
  %1366 = sub i64 %1365, 8
  %1367 = load i64, i64* %PC
  %1368 = add i64 %1367, 4
  store i64 %1368, i64* %PC
  %1369 = inttoptr i64 %1366 to i64*
  %1370 = load i64, i64* %1369
  store i64 %1370, i64* %RCX, align 8, !tbaa !2428
  %1371 = load i64, i64* %RBP
  %1372 = sub i64 %1371, 76
  %1373 = load i64, i64* %PC
  %1374 = add i64 %1373, 3
  store i64 %1374, i64* %PC
  %1375 = inttoptr i64 %1372 to i32*
  %1376 = load i32, i32* %1375
  %1377 = zext i32 %1376 to i64
  store i64 %1377, i64* %RAX, align 8, !tbaa !2428
  %1378 = load i64, i64* %RAX
  %1379 = load i64, i64* %PC
  %1380 = add i64 %1379, 3
  store i64 %1380, i64* %PC
  %1381 = trunc i64 %1378 to i32
  %1382 = add i32 1, %1381
  %1383 = zext i32 %1382 to i64
  store i64 %1383, i64* %RAX, align 8, !tbaa !2428
  %1384 = icmp ult i32 %1382, %1381
  %1385 = icmp ult i32 %1382, 1
  %1386 = or i1 %1384, %1385
  %1387 = zext i1 %1386 to i8
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1387, i8* %1388, align 1, !tbaa !2432
  %1389 = and i32 %1382, 255
  %1390 = call i32 @llvm.ctpop.i32(i32 %1389) #17
  %1391 = trunc i32 %1390 to i8
  %1392 = and i8 %1391, 1
  %1393 = xor i8 %1392, 1
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1393, i8* %1394, align 1, !tbaa !2446
  %1395 = xor i64 1, %1378
  %1396 = trunc i64 %1395 to i32
  %1397 = xor i32 %1396, %1382
  %1398 = lshr i32 %1397, 4
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1400, i8* %1401, align 1, !tbaa !2447
  %1402 = icmp eq i32 %1382, 0
  %1403 = zext i1 %1402 to i8
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1403, i8* %1404, align 1, !tbaa !2448
  %1405 = lshr i32 %1382, 31
  %1406 = trunc i32 %1405 to i8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1406, i8* %1407, align 1, !tbaa !2449
  %1408 = lshr i32 %1381, 31
  %1409 = xor i32 %1405, %1408
  %1410 = add nuw nsw i32 %1409, %1405
  %1411 = icmp eq i32 %1410, 2
  %1412 = zext i1 %1411 to i8
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1412, i8* %1413, align 1, !tbaa !2450
  %1414 = load i32, i32* %EAX
  %1415 = zext i32 %1414 to i64
  %1416 = load i64, i64* %PC
  %1417 = add i64 %1416, 3
  store i64 %1417, i64* %PC
  %1418 = shl i64 %1415, 32
  %1419 = ashr exact i64 %1418, 32
  store i64 %1419, i64* %RDX, align 8, !tbaa !2428
  %1420 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1421 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1422 = load i64, i64* %RCX
  %1423 = load i64, i64* %RDX
  %1424 = mul i64 %1423, 8
  %1425 = add i64 %1424, %1422
  %1426 = load i64, i64* %PC
  %1427 = add i64 %1426, 5
  store i64 %1427, i64* %PC
  %1428 = bitcast i8* %1421 to double*
  %1429 = load double, double* %1428, align 1
  %1430 = getelementptr inbounds i8, i8* %1421, i64 8
  %1431 = bitcast i8* %1430 to i64*
  %1432 = load i64, i64* %1431, align 1
  %1433 = inttoptr i64 %1425 to double*
  %1434 = load double, double* %1433
  %1435 = fadd double %1429, %1434
  %1436 = bitcast i8* %1420 to double*
  store double %1435, double* %1436, align 1, !tbaa !2452
  %1437 = getelementptr inbounds i8, i8* %1420, i64 8
  %1438 = bitcast i8* %1437 to i64*
  store i64 %1432, i64* %1438, align 1, !tbaa !2452
  %1439 = load i64, i64* %RCX
  %1440 = load i64, i64* %RDX
  %1441 = mul i64 %1440, 8
  %1442 = add i64 %1441, %1439
  %1443 = bitcast %union.vec128_t* %XMM0 to i8*
  %1444 = load i64, i64* %PC
  %1445 = add i64 %1444, 5
  store i64 %1445, i64* %PC
  %1446 = bitcast i8* %1443 to double*
  %1447 = load double, double* %1446, align 1
  %1448 = inttoptr i64 %1442 to double*
  store double %1447, double* %1448
  %1449 = load i64, i64* %RBP
  %1450 = sub i64 %1449, 64
  %1451 = load i64, i64* %PC
  %1452 = add i64 %1451, 3
  store i64 %1452, i64* %PC
  %1453 = inttoptr i64 %1450 to i32*
  %1454 = load i32, i32* %1453
  %1455 = zext i32 %1454 to i64
  store i64 %1455, i64* %RAX, align 8, !tbaa !2428
  %1456 = load i64, i64* %RAX
  %1457 = load i64, i64* %RBP
  %1458 = sub i64 %1457, 32
  %1459 = load i64, i64* %PC
  %1460 = add i64 %1459, 3
  store i64 %1460, i64* %PC
  %1461 = trunc i64 %1456 to i32
  %1462 = inttoptr i64 %1458 to i32*
  %1463 = load i32, i32* %1462
  %1464 = add i32 %1463, %1461
  %1465 = zext i32 %1464 to i64
  store i64 %1465, i64* %RAX, align 8, !tbaa !2428
  %1466 = icmp ult i32 %1464, %1461
  %1467 = icmp ult i32 %1464, %1463
  %1468 = or i1 %1466, %1467
  %1469 = zext i1 %1468 to i8
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1469, i8* %1470, align 1, !tbaa !2432
  %1471 = and i32 %1464, 255
  %1472 = call i32 @llvm.ctpop.i32(i32 %1471) #17
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  %1475 = xor i8 %1474, 1
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1475, i8* %1476, align 1, !tbaa !2446
  %1477 = xor i32 %1463, %1461
  %1478 = xor i32 %1477, %1464
  %1479 = lshr i32 %1478, 4
  %1480 = trunc i32 %1479 to i8
  %1481 = and i8 %1480, 1
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1481, i8* %1482, align 1, !tbaa !2447
  %1483 = icmp eq i32 %1464, 0
  %1484 = zext i1 %1483 to i8
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1484, i8* %1485, align 1, !tbaa !2448
  %1486 = lshr i32 %1464, 31
  %1487 = trunc i32 %1486 to i8
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1487, i8* %1488, align 1, !tbaa !2449
  %1489 = lshr i32 %1461, 31
  %1490 = lshr i32 %1463, 31
  %1491 = xor i32 %1486, %1489
  %1492 = xor i32 %1486, %1490
  %1493 = add nuw nsw i32 %1491, %1492
  %1494 = icmp eq i32 %1493, 2
  %1495 = zext i1 %1494 to i8
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1495, i8* %1496, align 1, !tbaa !2450
  %1497 = load i64, i64* %RBP
  %1498 = sub i64 %1497, 32
  %1499 = load i32, i32* %EAX
  %1500 = zext i32 %1499 to i64
  %1501 = load i64, i64* %PC
  %1502 = add i64 %1501, 3
  store i64 %1502, i64* %PC
  %1503 = inttoptr i64 %1498 to i32*
  store i32 %1499, i32* %1503
  %1504 = load i64, i64* %PC
  %1505 = sub i64 %1504, 265
  %1506 = load i64, i64* %PC
  %1507 = add i64 %1506, 5
  store i64 %1507, i64* %PC
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1505, i64* %1508, align 8, !tbaa !2428
  br label %block_400e72

block_400d36:                                     ; preds = %block_400d23
  %1509 = load i64, i64* %RBP
  %1510 = sub i64 %1509, 68
  %1511 = load i64, i64* %PC
  %1512 = add i64 %1511, 3
  store i64 %1512, i64* %PC
  %1513 = inttoptr i64 %1510 to i32*
  %1514 = load i32, i32* %1513
  %1515 = zext i32 %1514 to i64
  store i64 %1515, i64* %RAX, align 8, !tbaa !2428
  %1516 = load i64, i64* %RBP
  %1517 = sub i64 %1516, 40
  %1518 = load i64, i64* %PC
  %1519 = add i64 %1518, 3
  store i64 %1519, i64* %PC
  %1520 = inttoptr i64 %1517 to i32*
  %1521 = load i32, i32* %1520
  %1522 = zext i32 %1521 to i64
  store i64 %1522, i64* %RCX, align 8, !tbaa !2428
  %1523 = load i64, i64* %RCX
  %1524 = load i32, i32* %EAX
  %1525 = zext i32 %1524 to i64
  %1526 = load i64, i64* %PC
  %1527 = add i64 %1526, 2
  store i64 %1527, i64* %PC
  %1528 = trunc i64 %1523 to i32
  %1529 = sub i32 %1528, %1524
  %1530 = zext i32 %1529 to i64
  store i64 %1530, i64* %RCX, align 8, !tbaa !2428
  %1531 = icmp ult i32 %1528, %1524
  %1532 = zext i1 %1531 to i8
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1532, i8* %1533, align 1, !tbaa !2432
  %1534 = and i32 %1529, 255
  %1535 = call i32 @llvm.ctpop.i32(i32 %1534) #17
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  %1538 = xor i8 %1537, 1
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1538, i8* %1539, align 1, !tbaa !2446
  %1540 = xor i64 %1525, %1523
  %1541 = trunc i64 %1540 to i32
  %1542 = xor i32 %1541, %1529
  %1543 = lshr i32 %1542, 4
  %1544 = trunc i32 %1543 to i8
  %1545 = and i8 %1544, 1
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1545, i8* %1546, align 1, !tbaa !2447
  %1547 = icmp eq i32 %1529, 0
  %1548 = zext i1 %1547 to i8
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1548, i8* %1549, align 1, !tbaa !2448
  %1550 = lshr i32 %1529, 31
  %1551 = trunc i32 %1550 to i8
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1551, i8* %1552, align 1, !tbaa !2449
  %1553 = lshr i32 %1528, 31
  %1554 = lshr i32 %1524, 31
  %1555 = xor i32 %1554, %1553
  %1556 = xor i32 %1550, %1553
  %1557 = add nuw nsw i32 %1556, %1555
  %1558 = icmp eq i32 %1557, 2
  %1559 = zext i1 %1558 to i8
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1559, i8* %1560, align 1, !tbaa !2450
  %1561 = load i64, i64* %RBP
  %1562 = sub i64 %1561, 40
  %1563 = load i32, i32* %ECX
  %1564 = zext i32 %1563 to i64
  %1565 = load i64, i64* %PC
  %1566 = add i64 %1565, 3
  store i64 %1566, i64* %PC
  %1567 = inttoptr i64 %1562 to i32*
  store i32 %1563, i32* %1567
  %1568 = load i64, i64* %RBP
  %1569 = sub i64 %1568, 68
  %1570 = load i64, i64* %PC
  %1571 = add i64 %1570, 3
  store i64 %1571, i64* %PC
  %1572 = inttoptr i64 %1569 to i32*
  %1573 = load i32, i32* %1572
  %1574 = zext i32 %1573 to i64
  store i64 %1574, i64* %RAX, align 8, !tbaa !2428
  %1575 = load i64, i64* %RAX
  %1576 = load i64, i64* %PC
  %1577 = add i64 %1576, 3
  store i64 %1577, i64* %PC
  %1578 = shl i64 %1575, 32
  %1579 = ashr i64 %1578, 33
  %1580 = trunc i64 %1575 to i8
  %1581 = and i8 %1580, 1
  %1582 = trunc i64 %1579 to i32
  %1583 = and i64 %1579, 4294967295
  store i64 %1583, i64* %RAX, align 8, !tbaa !2428
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1581, i8* %1584, align 1, !tbaa !2451
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1586 = and i32 %1582, 255
  %1587 = call i32 @llvm.ctpop.i32(i32 %1586) #17
  %1588 = trunc i32 %1587 to i8
  %1589 = and i8 %1588, 1
  %1590 = xor i8 %1589, 1
  store i8 %1590, i8* %1585, align 1, !tbaa !2451
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1591, align 1, !tbaa !2451
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1593 = icmp eq i32 %1582, 0
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %1592, align 1, !tbaa !2451
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1596 = lshr i32 %1582, 31
  %1597 = trunc i32 %1596 to i8
  store i8 %1597, i8* %1595, align 1, !tbaa !2451
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1598, align 1, !tbaa !2451
  %1599 = load i64, i64* %RBP
  %1600 = sub i64 %1599, 68
  %1601 = load i32, i32* %EAX
  %1602 = zext i32 %1601 to i64
  %1603 = load i64, i64* %PC
  %1604 = add i64 %1603, 3
  store i64 %1604, i64* %PC
  %1605 = inttoptr i64 %1600 to i32*
  store i32 %1601, i32* %1605
  %1606 = load i64, i64* %PC
  %1607 = sub i64 %1606, 76
  %1608 = load i64, i64* %PC
  %1609 = add i64 %1608, 5
  store i64 %1609, i64* %PC
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1607, i64* %1610, align 8, !tbaa !2428
  br label %block_400cfe

block_400c33:                                     ; preds = %block_400c27
  %1611 = load i64, i64* %RBP
  %1612 = sub i64 %1611, 40
  %1613 = load i64, i64* %PC
  %1614 = add i64 %1613, 3
  store i64 %1614, i64* %PC
  %1615 = inttoptr i64 %1612 to i32*
  %1616 = load i32, i32* %1615
  %1617 = zext i32 %1616 to i64
  store i64 %1617, i64* %RAX, align 8, !tbaa !2428
  %1618 = load i64, i64* %RAX
  %1619 = load i64, i64* %RBP
  %1620 = sub i64 %1619, 36
  %1621 = load i64, i64* %PC
  %1622 = add i64 %1621, 3
  store i64 %1622, i64* %PC
  %1623 = trunc i64 %1618 to i32
  %1624 = inttoptr i64 %1620 to i32*
  %1625 = load i32, i32* %1624
  %1626 = add i32 %1625, %1623
  %1627 = zext i32 %1626 to i64
  store i64 %1627, i64* %RAX, align 8, !tbaa !2428
  %1628 = icmp ult i32 %1626, %1623
  %1629 = icmp ult i32 %1626, %1625
  %1630 = or i1 %1628, %1629
  %1631 = zext i1 %1630 to i8
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1631, i8* %1632, align 1, !tbaa !2432
  %1633 = and i32 %1626, 255
  %1634 = call i32 @llvm.ctpop.i32(i32 %1633) #17
  %1635 = trunc i32 %1634 to i8
  %1636 = and i8 %1635, 1
  %1637 = xor i8 %1636, 1
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1637, i8* %1638, align 1, !tbaa !2446
  %1639 = xor i32 %1625, %1623
  %1640 = xor i32 %1639, %1626
  %1641 = lshr i32 %1640, 4
  %1642 = trunc i32 %1641 to i8
  %1643 = and i8 %1642, 1
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1643, i8* %1644, align 1, !tbaa !2447
  %1645 = icmp eq i32 %1626, 0
  %1646 = zext i1 %1645 to i8
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1646, i8* %1647, align 1, !tbaa !2448
  %1648 = lshr i32 %1626, 31
  %1649 = trunc i32 %1648 to i8
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1649, i8* %1650, align 1, !tbaa !2449
  %1651 = lshr i32 %1623, 31
  %1652 = lshr i32 %1625, 31
  %1653 = xor i32 %1648, %1651
  %1654 = xor i32 %1648, %1652
  %1655 = add nuw nsw i32 %1653, %1654
  %1656 = icmp eq i32 %1655, 2
  %1657 = zext i1 %1656 to i8
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1657, i8* %1658, align 1, !tbaa !2450
  %1659 = load i64, i64* %RAX
  %1660 = load i64, i64* %RBP
  %1661 = sub i64 %1660, 32
  %1662 = load i64, i64* %PC
  %1663 = add i64 %1662, 3
  store i64 %1663, i64* %PC
  %1664 = trunc i64 %1659 to i32
  %1665 = inttoptr i64 %1661 to i32*
  %1666 = load i32, i32* %1665
  %1667 = sub i32 %1664, %1666
  %1668 = zext i32 %1667 to i64
  store i64 %1668, i64* %RAX, align 8, !tbaa !2428
  %1669 = icmp ult i32 %1664, %1666
  %1670 = zext i1 %1669 to i8
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1670, i8* %1671, align 1, !tbaa !2432
  %1672 = and i32 %1667, 255
  %1673 = call i32 @llvm.ctpop.i32(i32 %1672) #17
  %1674 = trunc i32 %1673 to i8
  %1675 = and i8 %1674, 1
  %1676 = xor i8 %1675, 1
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1676, i8* %1677, align 1, !tbaa !2446
  %1678 = xor i32 %1666, %1664
  %1679 = xor i32 %1678, %1667
  %1680 = lshr i32 %1679, 4
  %1681 = trunc i32 %1680 to i8
  %1682 = and i8 %1681, 1
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1682, i8* %1683, align 1, !tbaa !2447
  %1684 = icmp eq i32 %1667, 0
  %1685 = zext i1 %1684 to i8
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1685, i8* %1686, align 1, !tbaa !2448
  %1687 = lshr i32 %1667, 31
  %1688 = trunc i32 %1687 to i8
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1688, i8* %1689, align 1, !tbaa !2449
  %1690 = lshr i32 %1664, 31
  %1691 = lshr i32 %1666, 31
  %1692 = xor i32 %1691, %1690
  %1693 = xor i32 %1687, %1690
  %1694 = add nuw nsw i32 %1693, %1692
  %1695 = icmp eq i32 %1694, 2
  %1696 = zext i1 %1695 to i8
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1696, i8* %1697, align 1, !tbaa !2450
  %1698 = load i64, i64* %RBP
  %1699 = sub i64 %1698, 44
  %1700 = load i32, i32* %EAX
  %1701 = zext i32 %1700 to i64
  %1702 = load i64, i64* %PC
  %1703 = add i64 %1702, 3
  store i64 %1703, i64* %PC
  %1704 = inttoptr i64 %1699 to i32*
  store i32 %1700, i32* %1704
  %1705 = load i64, i64* %RBP
  %1706 = sub i64 %1705, 8
  %1707 = load i64, i64* %PC
  %1708 = add i64 %1707, 4
  store i64 %1708, i64* %PC
  %1709 = inttoptr i64 %1706 to i64*
  %1710 = load i64, i64* %1709
  store i64 %1710, i64* %RCX, align 8, !tbaa !2428
  %1711 = load i64, i64* %RBP
  %1712 = sub i64 %1711, 36
  %1713 = load i64, i64* %PC
  %1714 = add i64 %1713, 4
  store i64 %1714, i64* %PC
  %1715 = inttoptr i64 %1712 to i32*
  %1716 = load i32, i32* %1715
  %1717 = sext i32 %1716 to i64
  store i64 %1717, i64* %RDX, align 8, !tbaa !2428
  %1718 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1719 = load i64, i64* %RCX
  %1720 = load i64, i64* %RDX
  %1721 = mul i64 %1720, 8
  %1722 = add i64 %1721, %1719
  %1723 = load i64, i64* %PC
  %1724 = add i64 %1723, 5
  store i64 %1724, i64* %PC
  %1725 = inttoptr i64 %1722 to double*
  %1726 = load double, double* %1725
  %1727 = bitcast i8* %1718 to double*
  store double %1726, double* %1727, align 1, !tbaa !2452
  %1728 = getelementptr inbounds i8, i8* %1718, i64 8
  %1729 = bitcast i8* %1728 to double*
  store double 0.000000e+00, double* %1729, align 1, !tbaa !2452
  %1730 = load i64, i64* %RBP
  %1731 = sub i64 %1730, 112
  %1732 = bitcast %union.vec128_t* %XMM0 to i8*
  %1733 = load i64, i64* %PC
  %1734 = add i64 %1733, 5
  store i64 %1734, i64* %PC
  %1735 = bitcast i8* %1732 to double*
  %1736 = load double, double* %1735, align 1
  %1737 = inttoptr i64 %1731 to double*
  store double %1736, double* %1737
  %1738 = load i64, i64* %RBP
  %1739 = sub i64 %1738, 8
  %1740 = load i64, i64* %PC
  %1741 = add i64 %1740, 4
  store i64 %1741, i64* %PC
  %1742 = inttoptr i64 %1739 to i64*
  %1743 = load i64, i64* %1742
  store i64 %1743, i64* %RCX, align 8, !tbaa !2428
  %1744 = load i64, i64* %RBP
  %1745 = sub i64 %1744, 44
  %1746 = load i64, i64* %PC
  %1747 = add i64 %1746, 4
  store i64 %1747, i64* %PC
  %1748 = inttoptr i64 %1745 to i32*
  %1749 = load i32, i32* %1748
  %1750 = sext i32 %1749 to i64
  store i64 %1750, i64* %RDX, align 8, !tbaa !2428
  %1751 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1752 = load i64, i64* %RCX
  %1753 = load i64, i64* %RDX
  %1754 = mul i64 %1753, 8
  %1755 = add i64 %1754, %1752
  %1756 = load i64, i64* %PC
  %1757 = add i64 %1756, 5
  store i64 %1757, i64* %PC
  %1758 = inttoptr i64 %1755 to double*
  %1759 = load double, double* %1758
  %1760 = bitcast i8* %1751 to double*
  store double %1759, double* %1760, align 1, !tbaa !2452
  %1761 = getelementptr inbounds i8, i8* %1751, i64 8
  %1762 = bitcast i8* %1761 to double*
  store double 0.000000e+00, double* %1762, align 1, !tbaa !2452
  %1763 = load i64, i64* %RBP
  %1764 = sub i64 %1763, 8
  %1765 = load i64, i64* %PC
  %1766 = add i64 %1765, 4
  store i64 %1766, i64* %PC
  %1767 = inttoptr i64 %1764 to i64*
  %1768 = load i64, i64* %1767
  store i64 %1768, i64* %RCX, align 8, !tbaa !2428
  %1769 = load i64, i64* %RBP
  %1770 = sub i64 %1769, 36
  %1771 = load i64, i64* %PC
  %1772 = add i64 %1771, 4
  store i64 %1772, i64* %PC
  %1773 = inttoptr i64 %1770 to i32*
  %1774 = load i32, i32* %1773
  %1775 = sext i32 %1774 to i64
  store i64 %1775, i64* %RDX, align 8, !tbaa !2428
  %1776 = load i64, i64* %RCX
  %1777 = load i64, i64* %RDX
  %1778 = mul i64 %1777, 8
  %1779 = add i64 %1778, %1776
  %1780 = bitcast %union.vec128_t* %XMM0 to i8*
  %1781 = load i64, i64* %PC
  %1782 = add i64 %1781, 5
  store i64 %1782, i64* %PC
  %1783 = bitcast i8* %1780 to double*
  %1784 = load double, double* %1783, align 1
  %1785 = inttoptr i64 %1779 to double*
  store double %1784, double* %1785
  %1786 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1787 = load i64, i64* %RBP
  %1788 = sub i64 %1787, 112
  %1789 = load i64, i64* %PC
  %1790 = add i64 %1789, 5
  store i64 %1790, i64* %PC
  %1791 = inttoptr i64 %1788 to double*
  %1792 = load double, double* %1791
  %1793 = bitcast i8* %1786 to double*
  store double %1792, double* %1793, align 1, !tbaa !2452
  %1794 = getelementptr inbounds i8, i8* %1786, i64 8
  %1795 = bitcast i8* %1794 to double*
  store double 0.000000e+00, double* %1795, align 1, !tbaa !2452
  %1796 = load i64, i64* %RBP
  %1797 = sub i64 %1796, 8
  %1798 = load i64, i64* %PC
  %1799 = add i64 %1798, 4
  store i64 %1799, i64* %PC
  %1800 = inttoptr i64 %1797 to i64*
  %1801 = load i64, i64* %1800
  store i64 %1801, i64* %RCX, align 8, !tbaa !2428
  %1802 = load i64, i64* %RBP
  %1803 = sub i64 %1802, 44
  %1804 = load i64, i64* %PC
  %1805 = add i64 %1804, 4
  store i64 %1805, i64* %PC
  %1806 = inttoptr i64 %1803 to i32*
  %1807 = load i32, i32* %1806
  %1808 = sext i32 %1807 to i64
  store i64 %1808, i64* %RDX, align 8, !tbaa !2428
  %1809 = load i64, i64* %RCX
  %1810 = load i64, i64* %RDX
  %1811 = mul i64 %1810, 8
  %1812 = add i64 %1811, %1809
  %1813 = bitcast %union.vec128_t* %XMM0 to i8*
  %1814 = load i64, i64* %PC
  %1815 = add i64 %1814, 5
  store i64 %1815, i64* %PC
  %1816 = bitcast i8* %1813 to double*
  %1817 = load double, double* %1816, align 1
  %1818 = inttoptr i64 %1812 to double*
  store double %1817, double* %1818
  %1819 = load i64, i64* %RBP
  %1820 = sub i64 %1819, 8
  %1821 = load i64, i64* %PC
  %1822 = add i64 %1821, 4
  store i64 %1822, i64* %PC
  %1823 = inttoptr i64 %1820 to i64*
  %1824 = load i64, i64* %1823
  store i64 %1824, i64* %RCX, align 8, !tbaa !2428
  %1825 = load i64, i64* %RBP
  %1826 = sub i64 %1825, 36
  %1827 = load i64, i64* %PC
  %1828 = add i64 %1827, 3
  store i64 %1828, i64* %PC
  %1829 = inttoptr i64 %1826 to i32*
  %1830 = load i32, i32* %1829
  %1831 = zext i32 %1830 to i64
  store i64 %1831, i64* %RAX, align 8, !tbaa !2428
  %1832 = load i64, i64* %RAX
  %1833 = load i64, i64* %PC
  %1834 = add i64 %1833, 3
  store i64 %1834, i64* %PC
  %1835 = trunc i64 %1832 to i32
  %1836 = add i32 1, %1835
  %1837 = zext i32 %1836 to i64
  store i64 %1837, i64* %RAX, align 8, !tbaa !2428
  %1838 = icmp ult i32 %1836, %1835
  %1839 = icmp ult i32 %1836, 1
  %1840 = or i1 %1838, %1839
  %1841 = zext i1 %1840 to i8
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1841, i8* %1842, align 1, !tbaa !2432
  %1843 = and i32 %1836, 255
  %1844 = call i32 @llvm.ctpop.i32(i32 %1843) #17
  %1845 = trunc i32 %1844 to i8
  %1846 = and i8 %1845, 1
  %1847 = xor i8 %1846, 1
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1847, i8* %1848, align 1, !tbaa !2446
  %1849 = xor i64 1, %1832
  %1850 = trunc i64 %1849 to i32
  %1851 = xor i32 %1850, %1836
  %1852 = lshr i32 %1851, 4
  %1853 = trunc i32 %1852 to i8
  %1854 = and i8 %1853, 1
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1854, i8* %1855, align 1, !tbaa !2447
  %1856 = icmp eq i32 %1836, 0
  %1857 = zext i1 %1856 to i8
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1857, i8* %1858, align 1, !tbaa !2448
  %1859 = lshr i32 %1836, 31
  %1860 = trunc i32 %1859 to i8
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1860, i8* %1861, align 1, !tbaa !2449
  %1862 = lshr i32 %1835, 31
  %1863 = xor i32 %1859, %1862
  %1864 = add nuw nsw i32 %1863, %1859
  %1865 = icmp eq i32 %1864, 2
  %1866 = zext i1 %1865 to i8
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1866, i8* %1867, align 1, !tbaa !2450
  %1868 = load i32, i32* %EAX
  %1869 = zext i32 %1868 to i64
  %1870 = load i64, i64* %PC
  %1871 = add i64 %1870, 3
  store i64 %1871, i64* %PC
  %1872 = shl i64 %1869, 32
  %1873 = ashr exact i64 %1872, 32
  store i64 %1873, i64* %RDX, align 8, !tbaa !2428
  %1874 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1875 = load i64, i64* %RCX
  %1876 = load i64, i64* %RDX
  %1877 = mul i64 %1876, 8
  %1878 = add i64 %1877, %1875
  %1879 = load i64, i64* %PC
  %1880 = add i64 %1879, 5
  store i64 %1880, i64* %PC
  %1881 = inttoptr i64 %1878 to double*
  %1882 = load double, double* %1881
  %1883 = bitcast i8* %1874 to double*
  store double %1882, double* %1883, align 1, !tbaa !2452
  %1884 = getelementptr inbounds i8, i8* %1874, i64 8
  %1885 = bitcast i8* %1884 to double*
  store double 0.000000e+00, double* %1885, align 1, !tbaa !2452
  %1886 = load i64, i64* %RBP
  %1887 = sub i64 %1886, 112
  %1888 = bitcast %union.vec128_t* %XMM0 to i8*
  %1889 = load i64, i64* %PC
  %1890 = add i64 %1889, 5
  store i64 %1890, i64* %PC
  %1891 = bitcast i8* %1888 to double*
  %1892 = load double, double* %1891, align 1
  %1893 = inttoptr i64 %1887 to double*
  store double %1892, double* %1893
  %1894 = load i64, i64* %RBP
  %1895 = sub i64 %1894, 8
  %1896 = load i64, i64* %PC
  %1897 = add i64 %1896, 4
  store i64 %1897, i64* %PC
  %1898 = inttoptr i64 %1895 to i64*
  %1899 = load i64, i64* %1898
  store i64 %1899, i64* %RCX, align 8, !tbaa !2428
  %1900 = load i64, i64* %RBP
  %1901 = sub i64 %1900, 44
  %1902 = load i64, i64* %PC
  %1903 = add i64 %1902, 3
  store i64 %1903, i64* %PC
  %1904 = inttoptr i64 %1901 to i32*
  %1905 = load i32, i32* %1904
  %1906 = zext i32 %1905 to i64
  store i64 %1906, i64* %RAX, align 8, !tbaa !2428
  %1907 = load i64, i64* %RAX
  %1908 = load i64, i64* %PC
  %1909 = add i64 %1908, 3
  store i64 %1909, i64* %PC
  %1910 = trunc i64 %1907 to i32
  %1911 = add i32 1, %1910
  %1912 = zext i32 %1911 to i64
  store i64 %1912, i64* %RAX, align 8, !tbaa !2428
  %1913 = icmp ult i32 %1911, %1910
  %1914 = icmp ult i32 %1911, 1
  %1915 = or i1 %1913, %1914
  %1916 = zext i1 %1915 to i8
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1916, i8* %1917, align 1, !tbaa !2432
  %1918 = and i32 %1911, 255
  %1919 = call i32 @llvm.ctpop.i32(i32 %1918) #17
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  %1922 = xor i8 %1921, 1
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1922, i8* %1923, align 1, !tbaa !2446
  %1924 = xor i64 1, %1907
  %1925 = trunc i64 %1924 to i32
  %1926 = xor i32 %1925, %1911
  %1927 = lshr i32 %1926, 4
  %1928 = trunc i32 %1927 to i8
  %1929 = and i8 %1928, 1
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1929, i8* %1930, align 1, !tbaa !2447
  %1931 = icmp eq i32 %1911, 0
  %1932 = zext i1 %1931 to i8
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1932, i8* %1933, align 1, !tbaa !2448
  %1934 = lshr i32 %1911, 31
  %1935 = trunc i32 %1934 to i8
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1935, i8* %1936, align 1, !tbaa !2449
  %1937 = lshr i32 %1910, 31
  %1938 = xor i32 %1934, %1937
  %1939 = add nuw nsw i32 %1938, %1934
  %1940 = icmp eq i32 %1939, 2
  %1941 = zext i1 %1940 to i8
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1941, i8* %1942, align 1, !tbaa !2450
  %1943 = load i32, i32* %EAX
  %1944 = zext i32 %1943 to i64
  %1945 = load i64, i64* %PC
  %1946 = add i64 %1945, 3
  store i64 %1946, i64* %PC
  %1947 = shl i64 %1944, 32
  %1948 = ashr exact i64 %1947, 32
  store i64 %1948, i64* %RDX, align 8, !tbaa !2428
  %1949 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1950 = load i64, i64* %RCX
  %1951 = load i64, i64* %RDX
  %1952 = mul i64 %1951, 8
  %1953 = add i64 %1952, %1950
  %1954 = load i64, i64* %PC
  %1955 = add i64 %1954, 5
  store i64 %1955, i64* %PC
  %1956 = inttoptr i64 %1953 to double*
  %1957 = load double, double* %1956
  %1958 = bitcast i8* %1949 to double*
  store double %1957, double* %1958, align 1, !tbaa !2452
  %1959 = getelementptr inbounds i8, i8* %1949, i64 8
  %1960 = bitcast i8* %1959 to double*
  store double 0.000000e+00, double* %1960, align 1, !tbaa !2452
  %1961 = load i64, i64* %RBP
  %1962 = sub i64 %1961, 8
  %1963 = load i64, i64* %PC
  %1964 = add i64 %1963, 4
  store i64 %1964, i64* %PC
  %1965 = inttoptr i64 %1962 to i64*
  %1966 = load i64, i64* %1965
  store i64 %1966, i64* %RCX, align 8, !tbaa !2428
  %1967 = load i64, i64* %RBP
  %1968 = sub i64 %1967, 36
  %1969 = load i64, i64* %PC
  %1970 = add i64 %1969, 3
  store i64 %1970, i64* %PC
  %1971 = inttoptr i64 %1968 to i32*
  %1972 = load i32, i32* %1971
  %1973 = zext i32 %1972 to i64
  store i64 %1973, i64* %RAX, align 8, !tbaa !2428
  %1974 = load i64, i64* %RAX
  %1975 = load i64, i64* %PC
  %1976 = add i64 %1975, 3
  store i64 %1976, i64* %PC
  %1977 = trunc i64 %1974 to i32
  %1978 = add i32 1, %1977
  %1979 = zext i32 %1978 to i64
  store i64 %1979, i64* %RAX, align 8, !tbaa !2428
  %1980 = icmp ult i32 %1978, %1977
  %1981 = icmp ult i32 %1978, 1
  %1982 = or i1 %1980, %1981
  %1983 = zext i1 %1982 to i8
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1983, i8* %1984, align 1, !tbaa !2432
  %1985 = and i32 %1978, 255
  %1986 = call i32 @llvm.ctpop.i32(i32 %1985) #17
  %1987 = trunc i32 %1986 to i8
  %1988 = and i8 %1987, 1
  %1989 = xor i8 %1988, 1
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1989, i8* %1990, align 1, !tbaa !2446
  %1991 = xor i64 1, %1974
  %1992 = trunc i64 %1991 to i32
  %1993 = xor i32 %1992, %1978
  %1994 = lshr i32 %1993, 4
  %1995 = trunc i32 %1994 to i8
  %1996 = and i8 %1995, 1
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1996, i8* %1997, align 1, !tbaa !2447
  %1998 = icmp eq i32 %1978, 0
  %1999 = zext i1 %1998 to i8
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1999, i8* %2000, align 1, !tbaa !2448
  %2001 = lshr i32 %1978, 31
  %2002 = trunc i32 %2001 to i8
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2002, i8* %2003, align 1, !tbaa !2449
  %2004 = lshr i32 %1977, 31
  %2005 = xor i32 %2001, %2004
  %2006 = add nuw nsw i32 %2005, %2001
  %2007 = icmp eq i32 %2006, 2
  %2008 = zext i1 %2007 to i8
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2008, i8* %2009, align 1, !tbaa !2450
  %2010 = load i32, i32* %EAX
  %2011 = zext i32 %2010 to i64
  %2012 = load i64, i64* %PC
  %2013 = add i64 %2012, 3
  store i64 %2013, i64* %PC
  %2014 = shl i64 %2011, 32
  %2015 = ashr exact i64 %2014, 32
  store i64 %2015, i64* %RDX, align 8, !tbaa !2428
  %2016 = load i64, i64* %RCX
  %2017 = load i64, i64* %RDX
  %2018 = mul i64 %2017, 8
  %2019 = add i64 %2018, %2016
  %2020 = bitcast %union.vec128_t* %XMM0 to i8*
  %2021 = load i64, i64* %PC
  %2022 = add i64 %2021, 5
  store i64 %2022, i64* %PC
  %2023 = bitcast i8* %2020 to double*
  %2024 = load double, double* %2023, align 1
  %2025 = inttoptr i64 %2019 to double*
  store double %2024, double* %2025
  %2026 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2027 = load i64, i64* %RBP
  %2028 = sub i64 %2027, 112
  %2029 = load i64, i64* %PC
  %2030 = add i64 %2029, 5
  store i64 %2030, i64* %PC
  %2031 = inttoptr i64 %2028 to double*
  %2032 = load double, double* %2031
  %2033 = bitcast i8* %2026 to double*
  store double %2032, double* %2033, align 1, !tbaa !2452
  %2034 = getelementptr inbounds i8, i8* %2026, i64 8
  %2035 = bitcast i8* %2034 to double*
  store double 0.000000e+00, double* %2035, align 1, !tbaa !2452
  %2036 = load i64, i64* %RBP
  %2037 = sub i64 %2036, 8
  %2038 = load i64, i64* %PC
  %2039 = add i64 %2038, 4
  store i64 %2039, i64* %PC
  %2040 = inttoptr i64 %2037 to i64*
  %2041 = load i64, i64* %2040
  store i64 %2041, i64* %RCX, align 8, !tbaa !2428
  %2042 = load i64, i64* %RBP
  %2043 = sub i64 %2042, 44
  %2044 = load i64, i64* %PC
  %2045 = add i64 %2044, 3
  store i64 %2045, i64* %PC
  %2046 = inttoptr i64 %2043 to i32*
  %2047 = load i32, i32* %2046
  %2048 = zext i32 %2047 to i64
  store i64 %2048, i64* %RAX, align 8, !tbaa !2428
  %2049 = load i64, i64* %RAX
  %2050 = load i64, i64* %PC
  %2051 = add i64 %2050, 3
  store i64 %2051, i64* %PC
  %2052 = trunc i64 %2049 to i32
  %2053 = add i32 1, %2052
  %2054 = zext i32 %2053 to i64
  store i64 %2054, i64* %RAX, align 8, !tbaa !2428
  %2055 = icmp ult i32 %2053, %2052
  %2056 = icmp ult i32 %2053, 1
  %2057 = or i1 %2055, %2056
  %2058 = zext i1 %2057 to i8
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2058, i8* %2059, align 1, !tbaa !2432
  %2060 = and i32 %2053, 255
  %2061 = call i32 @llvm.ctpop.i32(i32 %2060) #17
  %2062 = trunc i32 %2061 to i8
  %2063 = and i8 %2062, 1
  %2064 = xor i8 %2063, 1
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2064, i8* %2065, align 1, !tbaa !2446
  %2066 = xor i64 1, %2049
  %2067 = trunc i64 %2066 to i32
  %2068 = xor i32 %2067, %2053
  %2069 = lshr i32 %2068, 4
  %2070 = trunc i32 %2069 to i8
  %2071 = and i8 %2070, 1
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2071, i8* %2072, align 1, !tbaa !2447
  %2073 = icmp eq i32 %2053, 0
  %2074 = zext i1 %2073 to i8
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2074, i8* %2075, align 1, !tbaa !2448
  %2076 = lshr i32 %2053, 31
  %2077 = trunc i32 %2076 to i8
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2077, i8* %2078, align 1, !tbaa !2449
  %2079 = lshr i32 %2052, 31
  %2080 = xor i32 %2076, %2079
  %2081 = add nuw nsw i32 %2080, %2076
  %2082 = icmp eq i32 %2081, 2
  %2083 = zext i1 %2082 to i8
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2083, i8* %2084, align 1, !tbaa !2450
  %2085 = load i32, i32* %EAX
  %2086 = zext i32 %2085 to i64
  %2087 = load i64, i64* %PC
  %2088 = add i64 %2087, 3
  store i64 %2088, i64* %PC
  %2089 = shl i64 %2086, 32
  %2090 = ashr exact i64 %2089, 32
  store i64 %2090, i64* %RDX, align 8, !tbaa !2428
  %2091 = load i64, i64* %RCX
  %2092 = load i64, i64* %RDX
  %2093 = mul i64 %2092, 8
  %2094 = add i64 %2093, %2091
  %2095 = bitcast %union.vec128_t* %XMM0 to i8*
  %2096 = load i64, i64* %PC
  %2097 = add i64 %2096, 5
  store i64 %2097, i64* %PC
  %2098 = bitcast i8* %2095 to double*
  %2099 = load double, double* %2098, align 1
  %2100 = inttoptr i64 %2094 to double*
  store double %2099, double* %2100
  %2101 = load i64, i64* %RBP
  %2102 = sub i64 %2101, 52
  %2103 = load i64, i64* %PC
  %2104 = add i64 %2103, 3
  store i64 %2104, i64* %PC
  %2105 = inttoptr i64 %2102 to i32*
  %2106 = load i32, i32* %2105
  %2107 = zext i32 %2106 to i64
  store i64 %2107, i64* %RAX, align 8, !tbaa !2428
  %2108 = load i64, i64* %RAX
  %2109 = load i64, i64* %RBP
  %2110 = sub i64 %2109, 36
  %2111 = load i64, i64* %PC
  %2112 = add i64 %2111, 3
  store i64 %2112, i64* %PC
  %2113 = trunc i64 %2108 to i32
  %2114 = inttoptr i64 %2110 to i32*
  %2115 = load i32, i32* %2114
  %2116 = add i32 %2115, %2113
  %2117 = zext i32 %2116 to i64
  store i64 %2117, i64* %RAX, align 8, !tbaa !2428
  %2118 = icmp ult i32 %2116, %2113
  %2119 = icmp ult i32 %2116, %2115
  %2120 = or i1 %2118, %2119
  %2121 = zext i1 %2120 to i8
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2121, i8* %2122, align 1, !tbaa !2432
  %2123 = and i32 %2116, 255
  %2124 = call i32 @llvm.ctpop.i32(i32 %2123) #17
  %2125 = trunc i32 %2124 to i8
  %2126 = and i8 %2125, 1
  %2127 = xor i8 %2126, 1
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2127, i8* %2128, align 1, !tbaa !2446
  %2129 = xor i32 %2115, %2113
  %2130 = xor i32 %2129, %2116
  %2131 = lshr i32 %2130, 4
  %2132 = trunc i32 %2131 to i8
  %2133 = and i8 %2132, 1
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2133, i8* %2134, align 1, !tbaa !2447
  %2135 = icmp eq i32 %2116, 0
  %2136 = zext i1 %2135 to i8
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2136, i8* %2137, align 1, !tbaa !2448
  %2138 = lshr i32 %2116, 31
  %2139 = trunc i32 %2138 to i8
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2139, i8* %2140, align 1, !tbaa !2449
  %2141 = lshr i32 %2113, 31
  %2142 = lshr i32 %2115, 31
  %2143 = xor i32 %2138, %2141
  %2144 = xor i32 %2138, %2142
  %2145 = add nuw nsw i32 %2143, %2144
  %2146 = icmp eq i32 %2145, 2
  %2147 = zext i1 %2146 to i8
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2147, i8* %2148, align 1, !tbaa !2450
  %2149 = load i64, i64* %RBP
  %2150 = sub i64 %2149, 36
  %2151 = load i32, i32* %EAX
  %2152 = zext i32 %2151 to i64
  %2153 = load i64, i64* %PC
  %2154 = add i64 %2153, 3
  store i64 %2154, i64* %PC
  %2155 = inttoptr i64 %2150 to i32*
  store i32 %2151, i32* %2155
  %2156 = load i64, i64* %PC
  %2157 = sub i64 %2156, 177
  %2158 = load i64, i64* %PC
  %2159 = add i64 %2158, 5
  store i64 %2159, i64* %PC
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2157, i64* %2160, align 8, !tbaa !2428
  br label %block_400c27

block_400d31:                                     ; preds = %block_400d23
  %2161 = load i64, i64* %PC
  %2162 = add i64 %2161, 30
  %2163 = load i64, i64* %PC
  %2164 = add i64 %2163, 5
  store i64 %2164, i64* %PC
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2162, i64* %2165, align 8, !tbaa !2428
  %2166 = load i64, i64* %RBP
  %2167 = sub i64 %2166, 68
  %2168 = load i64, i64* %PC
  %2169 = add i64 %2168, 3
  store i64 %2169, i64* %PC
  %2170 = inttoptr i64 %2167 to i32*
  %2171 = load i32, i32* %2170
  %2172 = zext i32 %2171 to i64
  store i64 %2172, i64* %RAX, align 8, !tbaa !2428
  %2173 = load i64, i64* %RAX
  %2174 = load i64, i64* %RBP
  %2175 = sub i64 %2174, 40
  %2176 = load i64, i64* %PC
  %2177 = add i64 %2176, 3
  store i64 %2177, i64* %PC
  %2178 = trunc i64 %2173 to i32
  %2179 = inttoptr i64 %2175 to i32*
  %2180 = load i32, i32* %2179
  %2181 = add i32 %2180, %2178
  %2182 = zext i32 %2181 to i64
  store i64 %2182, i64* %RAX, align 8, !tbaa !2428
  %2183 = icmp ult i32 %2181, %2178
  %2184 = icmp ult i32 %2181, %2180
  %2185 = or i1 %2183, %2184
  %2186 = zext i1 %2185 to i8
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2186, i8* %2187, align 1, !tbaa !2432
  %2188 = and i32 %2181, 255
  %2189 = call i32 @llvm.ctpop.i32(i32 %2188) #17
  %2190 = trunc i32 %2189 to i8
  %2191 = and i8 %2190, 1
  %2192 = xor i8 %2191, 1
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2192, i8* %2193, align 1, !tbaa !2446
  %2194 = xor i32 %2180, %2178
  %2195 = xor i32 %2194, %2181
  %2196 = lshr i32 %2195, 4
  %2197 = trunc i32 %2196 to i8
  %2198 = and i8 %2197, 1
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2198, i8* %2199, align 1, !tbaa !2447
  %2200 = icmp eq i32 %2181, 0
  %2201 = zext i1 %2200 to i8
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2201, i8* %2202, align 1, !tbaa !2448
  %2203 = lshr i32 %2181, 31
  %2204 = trunc i32 %2203 to i8
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2204, i8* %2205, align 1, !tbaa !2449
  %2206 = lshr i32 %2178, 31
  %2207 = lshr i32 %2180, 31
  %2208 = xor i32 %2203, %2206
  %2209 = xor i32 %2203, %2207
  %2210 = add nuw nsw i32 %2208, %2209
  %2211 = icmp eq i32 %2210, 2
  %2212 = zext i1 %2211 to i8
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2212, i8* %2213, align 1, !tbaa !2450
  %2214 = load i64, i64* %RBP
  %2215 = sub i64 %2214, 40
  %2216 = load i32, i32* %EAX
  %2217 = zext i32 %2216 to i64
  %2218 = load i64, i64* %PC
  %2219 = add i64 %2218, 3
  store i64 %2219, i64* %PC
  %2220 = inttoptr i64 %2215 to i32*
  store i32 %2216, i32* %2220
  %2221 = load i64, i64* %RBP
  %2222 = sub i64 %2221, 48
  %2223 = load i64, i64* %PC
  %2224 = add i64 %2223, 3
  store i64 %2224, i64* %PC
  %2225 = inttoptr i64 %2222 to i32*
  %2226 = load i32, i32* %2225
  %2227 = zext i32 %2226 to i64
  store i64 %2227, i64* %RAX, align 8, !tbaa !2428
  %2228 = load i64, i64* %RAX
  %2229 = load i64, i64* %RBP
  %2230 = sub i64 %2229, 32
  %2231 = load i64, i64* %PC
  %2232 = add i64 %2231, 3
  store i64 %2232, i64* %PC
  %2233 = trunc i64 %2228 to i32
  %2234 = inttoptr i64 %2230 to i32*
  %2235 = load i32, i32* %2234
  %2236 = add i32 %2235, %2233
  %2237 = zext i32 %2236 to i64
  store i64 %2237, i64* %RAX, align 8, !tbaa !2428
  %2238 = icmp ult i32 %2236, %2233
  %2239 = icmp ult i32 %2236, %2235
  %2240 = or i1 %2238, %2239
  %2241 = zext i1 %2240 to i8
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2241, i8* %2242, align 1, !tbaa !2432
  %2243 = and i32 %2236, 255
  %2244 = call i32 @llvm.ctpop.i32(i32 %2243) #17
  %2245 = trunc i32 %2244 to i8
  %2246 = and i8 %2245, 1
  %2247 = xor i8 %2246, 1
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2247, i8* %2248, align 1, !tbaa !2446
  %2249 = xor i32 %2235, %2233
  %2250 = xor i32 %2249, %2236
  %2251 = lshr i32 %2250, 4
  %2252 = trunc i32 %2251 to i8
  %2253 = and i8 %2252, 1
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2253, i8* %2254, align 1, !tbaa !2447
  %2255 = icmp eq i32 %2236, 0
  %2256 = zext i1 %2255 to i8
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2256, i8* %2257, align 1, !tbaa !2448
  %2258 = lshr i32 %2236, 31
  %2259 = trunc i32 %2258 to i8
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2259, i8* %2260, align 1, !tbaa !2449
  %2261 = lshr i32 %2233, 31
  %2262 = lshr i32 %2235, 31
  %2263 = xor i32 %2258, %2261
  %2264 = xor i32 %2258, %2262
  %2265 = add nuw nsw i32 %2263, %2264
  %2266 = icmp eq i32 %2265, 2
  %2267 = zext i1 %2266 to i8
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2267, i8* %2268, align 1, !tbaa !2450
  %2269 = load i64, i64* %RBP
  %2270 = sub i64 %2269, 32
  %2271 = load i32, i32* %EAX
  %2272 = zext i32 %2271 to i64
  %2273 = load i64, i64* %PC
  %2274 = add i64 %2273, 3
  store i64 %2274, i64* %PC
  %2275 = inttoptr i64 %2270 to i32*
  store i32 %2271, i32* %2275
  %2276 = load i64, i64* %PC
  %2277 = sub i64 %2276, 370
  %2278 = load i64, i64* %PC
  %2279 = add i64 %2278, 5
  store i64 %2279, i64* %PC
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2277, i64* %2280, align 8, !tbaa !2428
  br label %block_400bef

block_400c21:                                     ; preds = %block_400c0d
  %2281 = load i64, i64* %RBP
  %2282 = sub i64 %2281, 28
  %2283 = load i64, i64* %PC
  %2284 = add i64 %2283, 3
  store i64 %2284, i64* %PC
  %2285 = inttoptr i64 %2282 to i32*
  %2286 = load i32, i32* %2285
  %2287 = zext i32 %2286 to i64
  store i64 %2287, i64* %RAX, align 8, !tbaa !2428
  %2288 = load i64, i64* %RBP
  %2289 = sub i64 %2288, 36
  %2290 = load i32, i32* %EAX
  %2291 = zext i32 %2290 to i64
  %2292 = load i64, i64* %PC
  %2293 = add i64 %2292, 3
  store i64 %2293, i64* %PC
  %2294 = inttoptr i64 %2289 to i32*
  store i32 %2290, i32* %2294
  br label %block_400c27

block_400d23:                                     ; preds = %block_400d14, %block_400cfe
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.2, %block_400cfe ], [ %MEMORY.2, %block_400d14 ]
  %2295 = load i64, i64* %RBP
  %2296 = sub i64 %2295, 165
  %2297 = load i64, i64* %PC
  %2298 = add i64 %2297, 6
  store i64 %2298, i64* %PC
  %2299 = inttoptr i64 %2296 to i8*
  %2300 = load i8, i8* %2299
  store i8 %2300, i8* %AL, align 1, !tbaa !2451
  %2301 = load i8, i8* %AL
  %2302 = zext i8 %2301 to i64
  %2303 = load i64, i64* %PC
  %2304 = add i64 %2303, 2
  store i64 %2304, i64* %PC
  %2305 = and i64 1, %2302
  %2306 = trunc i64 %2305 to i8
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2307, align 1, !tbaa !2432
  %2308 = trunc i64 %2305 to i32
  %2309 = and i32 %2308, 255
  %2310 = call i32 @llvm.ctpop.i32(i32 %2309) #17
  %2311 = trunc i32 %2310 to i8
  %2312 = and i8 %2311, 1
  %2313 = xor i8 %2312, 1
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2313, i8* %2314, align 1, !tbaa !2446
  %2315 = icmp eq i8 %2306, 0
  %2316 = zext i1 %2315 to i8
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2316, i8* %2317, align 1, !tbaa !2448
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2318, align 1, !tbaa !2449
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2319, align 1, !tbaa !2450
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2320, align 1, !tbaa !2447
  %2321 = load i64, i64* %PC
  %2322 = add i64 %2321, 11
  %2323 = load i64, i64* %PC
  %2324 = add i64 %2323, 6
  %2325 = load i64, i64* %PC
  %2326 = add i64 %2325, 6
  store i64 %2326, i64* %PC
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2328 = load i8, i8* %2327, align 1, !tbaa !2448
  %2329 = icmp eq i8 %2328, 0
  %2330 = zext i1 %2329 to i8
  store i8 %2330, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2332 = select i1 %2329, i64 %2322, i64 %2324
  store i64 %2332, i64* %2331, align 8, !tbaa !2428
  %2333 = load i8, i8* %BRANCH_TAKEN
  %2334 = icmp eq i8 %2333, 1
  br i1 %2334, label %block_400d36, label %block_400d31

block_401005:                                     ; preds = %block_400e46
  %2335 = sub i64 %719, 64
  %2336 = load i64, i64* %PC
  %2337 = add i64 %2336, 3
  store i64 %2337, i64* %PC
  %2338 = inttoptr i64 %2335 to i32*
  %2339 = load i32, i32* %2338
  %2340 = zext i32 %2339 to i64
  store i64 %2340, i64* %RAX, align 8, !tbaa !2428
  %2341 = load i64, i64* %RBP
  %2342 = sub i64 %2341, 60
  %2343 = load i32, i32* %EAX
  %2344 = zext i32 %2343 to i64
  %2345 = load i64, i64* %PC
  %2346 = add i64 %2345, 3
  store i64 %2346, i64* %PC
  %2347 = inttoptr i64 %2342 to i32*
  store i32 %2343, i32* %2347
  %2348 = load i64, i64* %PC
  %2349 = sub i64 %2348, 671
  %2350 = load i64, i64* %PC
  %2351 = add i64 %2350, 5
  store i64 %2351, i64* %PC
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2349, i64* %2352, align 8, !tbaa !2428
  br label %block_400d6c

block_400b9a:                                     ; preds = %block_400b90
  %2353 = load i64, i64* %RBP
  %2354 = sub i64 %2353, 16
  %2355 = load i64, i64* %PC
  %2356 = add i64 %2355, 4
  store i64 %2356, i64* %PC
  %2357 = inttoptr i64 %2354 to i64*
  %2358 = load i64, i64* %2357
  store i64 %2358, i64* %RAX, align 8, !tbaa !2428
  %2359 = load i64, i64* %RBP
  %2360 = sub i64 %2359, 72
  %2361 = load i64, i64* %PC
  %2362 = add i64 %2361, 4
  store i64 %2362, i64* %PC
  %2363 = inttoptr i64 %2360 to i32*
  %2364 = load i32, i32* %2363
  %2365 = sext i32 %2364 to i64
  store i64 %2365, i64* %RCX, align 8, !tbaa !2428
  %2366 = load i64, i64* %RAX
  %2367 = load i64, i64* %RCX
  %2368 = mul i64 %2367, 4
  %2369 = add i64 %2368, %2366
  %2370 = load i64, i64* %PC
  %2371 = add i64 %2370, 3
  store i64 %2371, i64* %PC
  %2372 = inttoptr i64 %2369 to i32*
  %2373 = load i32, i32* %2372
  %2374 = zext i32 %2373 to i64
  store i64 %2374, i64* %RDX, align 8, !tbaa !2428
  %2375 = load i64, i64* %RBP
  %2376 = sub i64 %2375, 84
  %2377 = load i32, i32* %EDX
  %2378 = zext i32 %2377 to i64
  %2379 = load i64, i64* %PC
  %2380 = add i64 %2379, 3
  store i64 %2380, i64* %PC
  %2381 = inttoptr i64 %2376 to i32*
  store i32 %2377, i32* %2381
  %2382 = load i64, i64* %RBP
  %2383 = sub i64 %2382, 96
  %2384 = load i64, i64* %PC
  %2385 = add i64 %2384, 3
  store i64 %2385, i64* %PC
  %2386 = inttoptr i64 %2383 to i32*
  %2387 = load i32, i32* %2386
  %2388 = zext i32 %2387 to i64
  store i64 %2388, i64* %RAX, align 8, !tbaa !2428
  %2389 = load i64, i64* %RBP
  %2390 = sub i64 %2389, 84
  %2391 = load i64, i64* %PC
  %2392 = add i64 %2391, 3
  store i64 %2392, i64* %PC
  %2393 = inttoptr i64 %2390 to i32*
  %2394 = load i32, i32* %2393
  %2395 = zext i32 %2394 to i64
  store i64 %2395, i64* %RDX, align 8, !tbaa !2428
  %2396 = load i64, i64* %RDX
  %2397 = load i64, i64* %RBP
  %2398 = sub i64 %2397, 88
  %2399 = load i64, i64* %PC
  %2400 = add i64 %2399, 4
  store i64 %2400, i64* %PC
  %2401 = inttoptr i64 %2398 to i32*
  %2402 = load i32, i32* %2401
  %2403 = shl i64 %2396, 32
  %2404 = ashr exact i64 %2403, 32
  %2405 = sext i32 %2402 to i64
  %2406 = mul nsw i64 %2405, %2404
  %2407 = trunc i64 %2406 to i32
  %2408 = and i64 %2406, 4294967295
  store i64 %2408, i64* %RDX, align 8, !tbaa !2428
  %2409 = shl i64 %2406, 32
  %2410 = ashr exact i64 %2409, 32
  %2411 = icmp ne i64 %2410, %2406
  %2412 = zext i1 %2411 to i8
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2412, i8* %2413, align 1, !tbaa !2432
  %2414 = and i32 %2407, 255
  %2415 = call i32 @llvm.ctpop.i32(i32 %2414) #17
  %2416 = trunc i32 %2415 to i8
  %2417 = and i8 %2416, 1
  %2418 = xor i8 %2417, 1
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2418, i8* %2419, align 1, !tbaa !2446
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2420, align 1, !tbaa !2447
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2421, align 1, !tbaa !2448
  %2422 = lshr i32 %2407, 31
  %2423 = trunc i32 %2422 to i8
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2423, i8* %2424, align 1, !tbaa !2449
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2412, i8* %2425, align 1, !tbaa !2450
  %2426 = load i64, i64* %RBP
  %2427 = sub i64 %2426, 164
  %2428 = load i32, i32* %EDX
  %2429 = zext i32 %2428 to i64
  %2430 = load i64, i64* %PC
  %2431 = add i64 %2430, 6
  store i64 %2431, i64* %PC
  %2432 = inttoptr i64 %2427 to i32*
  store i32 %2428, i32* %2432
  %2433 = load i64, i64* %PC
  %2434 = add i64 %2433, 1
  store i64 %2434, i64* %PC
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2437 = bitcast %union.anon* %2436 to i32*
  %2438 = load i32, i32* %2437, align 8, !tbaa !2454
  %2439 = sext i32 %2438 to i64
  %2440 = lshr i64 %2439, 32
  store i64 %2440, i64* %2435, align 8, !tbaa !2428
  %2441 = load i64, i64* %RBP
  %2442 = sub i64 %2441, 164
  %2443 = load i64, i64* %PC
  %2444 = add i64 %2443, 6
  store i64 %2444, i64* %PC
  %2445 = inttoptr i64 %2442 to i32*
  %2446 = load i32, i32* %2445
  %2447 = zext i32 %2446 to i64
  store i64 %2447, i64* %RSI, align 8, !tbaa !2428
  %2448 = load i32, i32* %ESI
  %2449 = zext i32 %2448 to i64
  %2450 = load i64, i64* %PC
  %2451 = add i64 %2450, 2
  store i64 %2451, i64* %PC
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %2453 = bitcast %union.anon* %2452 to i32*
  %2454 = load i32, i32* %2453, align 8, !tbaa !2454
  %2455 = zext i32 %2454 to i64
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2457 = bitcast %union.anon* %2456 to i32*
  %2458 = load i32, i32* %2457, align 8, !tbaa !2454
  %2459 = zext i32 %2458 to i64
  %2460 = shl i64 %2449, 32
  %2461 = ashr exact i64 %2460, 32
  %2462 = shl nuw i64 %2459, 32
  %2463 = or i64 %2462, %2455
  %2464 = sdiv i64 %2463, %2461
  %2465 = shl i64 %2464, 32
  %2466 = ashr exact i64 %2465, 32
  %2467 = icmp eq i64 %2464, %2466
  br i1 %2467, label %2472, label %2468

; <label>:2468:                                   ; preds = %block_400b9a
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2470 = load i64, i64* %2469, align 8, !tbaa !2428
  %2471 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2470, %struct.Memory* %MEMORY.6) #18
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:2472:                                   ; preds = %block_400b9a
  %2473 = srem i64 %2463, %2461
  %2474 = getelementptr inbounds %union.anon, %union.anon* %2452, i64 0, i32 0
  %2475 = and i64 %2464, 4294967295
  store i64 %2475, i64* %2474, align 8, !tbaa !2428
  %2476 = getelementptr inbounds %union.anon, %union.anon* %2456, i64 0, i32 0
  %2477 = and i64 %2473, 4294967295
  store i64 %2477, i64* %2476, align 8, !tbaa !2428
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2478, align 1, !tbaa !2432
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2479, align 1, !tbaa !2446
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2480, align 1, !tbaa !2447
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2481, align 1, !tbaa !2448
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2482, align 1, !tbaa !2449
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2483, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %2468, %2472
  %2484 = phi %struct.Memory* [ %2471, %2468 ], [ %MEMORY.6, %2472 ]
  %2485 = load i64, i64* %RBP
  %2486 = sub i64 %2485, 92
  %2487 = load i32, i32* %EAX
  %2488 = zext i32 %2487 to i64
  %2489 = load i64, i64* %PC
  %2490 = add i64 %2489, 3
  store i64 %2490, i64* %PC
  %2491 = inttoptr i64 %2486 to i32*
  store i32 %2487, i32* %2491
  %2492 = load i64, i64* %RBP
  %2493 = sub i64 %2492, 88
  %2494 = load i64, i64* %PC
  %2495 = add i64 %2494, 3
  store i64 %2495, i64* %PC
  %2496 = inttoptr i64 %2493 to i32*
  %2497 = load i32, i32* %2496
  %2498 = zext i32 %2497 to i64
  store i64 %2498, i64* %RAX, align 8, !tbaa !2428
  %2499 = load i64, i64* %RAX
  %2500 = load i64, i64* %PC
  %2501 = add i64 %2500, 3
  store i64 %2501, i64* %PC
  %2502 = trunc i64 %2499 to i32
  %2503 = shl i32 %2502, 1
  %2504 = icmp slt i32 %2502, 0
  %2505 = icmp slt i32 %2503, 0
  %2506 = xor i1 %2504, %2505
  %2507 = zext i32 %2503 to i64
  store i64 %2507, i64* %RAX, align 8, !tbaa !2428
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2509 = zext i1 %2504 to i8
  store i8 %2509, i8* %2508, align 1, !tbaa !2451
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2511 = and i32 %2503, 254
  %2512 = call i32 @llvm.ctpop.i32(i32 %2511) #17
  %2513 = trunc i32 %2512 to i8
  %2514 = and i8 %2513, 1
  %2515 = xor i8 %2514, 1
  store i8 %2515, i8* %2510, align 1, !tbaa !2451
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2516, align 1, !tbaa !2451
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2518 = icmp eq i32 %2503, 0
  %2519 = zext i1 %2518 to i8
  store i8 %2519, i8* %2517, align 1, !tbaa !2451
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2521 = lshr i32 %2503, 31
  %2522 = trunc i32 %2521 to i8
  store i8 %2522, i8* %2520, align 1, !tbaa !2451
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2524 = zext i1 %2506 to i8
  store i8 %2524, i8* %2523, align 1, !tbaa !2451
  %2525 = load i64, i64* %RBP
  %2526 = sub i64 %2525, 48
  %2527 = load i32, i32* %EAX
  %2528 = zext i32 %2527 to i64
  %2529 = load i64, i64* %PC
  %2530 = add i64 %2529, 3
  store i64 %2530, i64* %PC
  %2531 = inttoptr i64 %2526 to i32*
  store i32 %2527, i32* %2531
  %2532 = load i64, i64* %RBP
  %2533 = sub i64 %2532, 48
  %2534 = load i64, i64* %PC
  %2535 = add i64 %2534, 3
  store i64 %2535, i64* %PC
  %2536 = inttoptr i64 %2533 to i32*
  %2537 = load i32, i32* %2536
  %2538 = zext i32 %2537 to i64
  store i64 %2538, i64* %RAX, align 8, !tbaa !2428
  %2539 = load i64, i64* %RAX
  %2540 = load i64, i64* %RBP
  %2541 = sub i64 %2540, 84
  %2542 = load i64, i64* %PC
  %2543 = add i64 %2542, 4
  store i64 %2543, i64* %PC
  %2544 = inttoptr i64 %2541 to i32*
  %2545 = load i32, i32* %2544
  %2546 = shl i64 %2539, 32
  %2547 = ashr exact i64 %2546, 32
  %2548 = sext i32 %2545 to i64
  %2549 = mul nsw i64 %2548, %2547
  %2550 = trunc i64 %2549 to i32
  %2551 = and i64 %2549, 4294967295
  store i64 %2551, i64* %RAX, align 8, !tbaa !2428
  %2552 = shl i64 %2549, 32
  %2553 = ashr exact i64 %2552, 32
  %2554 = icmp ne i64 %2553, %2549
  %2555 = zext i1 %2554 to i8
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2555, i8* %2556, align 1, !tbaa !2432
  %2557 = and i32 %2550, 255
  %2558 = call i32 @llvm.ctpop.i32(i32 %2557) #17
  %2559 = trunc i32 %2558 to i8
  %2560 = and i8 %2559, 1
  %2561 = xor i8 %2560, 1
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2561, i8* %2562, align 1, !tbaa !2446
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2563, align 1, !tbaa !2447
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2564, align 1, !tbaa !2448
  %2565 = lshr i32 %2550, 31
  %2566 = trunc i32 %2565 to i8
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2566, i8* %2567, align 1, !tbaa !2449
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2555, i8* %2568, align 1, !tbaa !2450
  %2569 = load i64, i64* %RBP
  %2570 = sub i64 %2569, 52
  %2571 = load i32, i32* %EAX
  %2572 = zext i32 %2571 to i64
  %2573 = load i64, i64* %PC
  %2574 = add i64 %2573, 3
  store i64 %2574, i64* %PC
  %2575 = inttoptr i64 %2570 to i32*
  store i32 %2571, i32* %2575
  %2576 = load i64, i64* %RBP
  %2577 = sub i64 %2576, 52
  %2578 = load i64, i64* %PC
  %2579 = add i64 %2578, 3
  store i64 %2579, i64* %PC
  %2580 = inttoptr i64 %2577 to i32*
  %2581 = load i32, i32* %2580
  %2582 = zext i32 %2581 to i64
  store i64 %2582, i64* %RAX, align 8, !tbaa !2428
  %2583 = load i64, i64* %RAX
  %2584 = load i64, i64* %RBP
  %2585 = sub i64 %2584, 92
  %2586 = load i64, i64* %PC
  %2587 = add i64 %2586, 4
  store i64 %2587, i64* %PC
  %2588 = inttoptr i64 %2585 to i32*
  %2589 = load i32, i32* %2588
  %2590 = shl i64 %2583, 32
  %2591 = ashr exact i64 %2590, 32
  %2592 = sext i32 %2589 to i64
  %2593 = mul nsw i64 %2592, %2591
  %2594 = trunc i64 %2593 to i32
  %2595 = and i64 %2593, 4294967295
  store i64 %2595, i64* %RAX, align 8, !tbaa !2428
  %2596 = shl i64 %2593, 32
  %2597 = ashr exact i64 %2596, 32
  %2598 = icmp ne i64 %2597, %2593
  %2599 = zext i1 %2598 to i8
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2599, i8* %2600, align 1, !tbaa !2432
  %2601 = and i32 %2594, 255
  %2602 = call i32 @llvm.ctpop.i32(i32 %2601) #17
  %2603 = trunc i32 %2602 to i8
  %2604 = and i8 %2603, 1
  %2605 = xor i8 %2604, 1
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2605, i8* %2606, align 1, !tbaa !2446
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2607, align 1, !tbaa !2447
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2608, align 1, !tbaa !2448
  %2609 = lshr i32 %2594, 31
  %2610 = trunc i32 %2609 to i8
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2610, i8* %2611, align 1, !tbaa !2449
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2599, i8* %2612, align 1, !tbaa !2450
  %2613 = load i64, i64* %RBP
  %2614 = sub i64 %2613, 56
  %2615 = load i32, i32* %EAX
  %2616 = zext i32 %2615 to i64
  %2617 = load i64, i64* %PC
  %2618 = add i64 %2617, 3
  store i64 %2618, i64* %PC
  %2619 = inttoptr i64 %2614 to i32*
  store i32 %2615, i32* %2619
  %2620 = load i64, i64* %RBP
  %2621 = sub i64 %2620, 40
  %2622 = load i64, i64* %PC
  %2623 = add i64 %2622, 7
  store i64 %2623, i64* %PC
  %2624 = inttoptr i64 %2621 to i32*
  store i32 1, i32* %2624
  %2625 = load i64, i64* %RBP
  %2626 = sub i64 %2625, 32
  %2627 = load i64, i64* %PC
  %2628 = add i64 %2627, 7
  store i64 %2628, i64* %PC
  %2629 = inttoptr i64 %2626 to i32*
  store i32 1, i32* %2629
  br label %block_400bef

block_400d66:                                     ; preds = %block_400bef
  %2630 = sub i64 %217, 48
  %2631 = load i64, i64* %PC
  %2632 = add i64 %2631, 3
  store i64 %2632, i64* %PC
  %2633 = inttoptr i64 %2630 to i32*
  %2634 = load i32, i32* %2633
  %2635 = zext i32 %2634 to i64
  store i64 %2635, i64* %RAX, align 8, !tbaa !2428
  %2636 = load i64, i64* %RBP
  %2637 = sub i64 %2636, 60
  %2638 = load i32, i32* %EAX
  %2639 = zext i32 %2638 to i64
  %2640 = load i64, i64* %PC
  %2641 = add i64 %2640, 3
  store i64 %2641, i64* %PC
  %2642 = inttoptr i64 %2637 to i32*
  store i32 %2638, i32* %2642
  br label %block_400d6c

block_400d14:                                     ; preds = %block_400cfe
  %2643 = load i64, i64* %RBP
  %2644 = sub i64 %2643, 40
  %2645 = load i64, i64* %PC
  %2646 = add i64 %2645, 3
  store i64 %2646, i64* %PC
  %2647 = inttoptr i64 %2644 to i32*
  %2648 = load i32, i32* %2647
  %2649 = zext i32 %2648 to i64
  store i64 %2649, i64* %RAX, align 8, !tbaa !2428
  %2650 = load i32, i32* %EAX
  %2651 = zext i32 %2650 to i64
  %2652 = load i64, i64* %RBP
  %2653 = sub i64 %2652, 68
  %2654 = load i64, i64* %PC
  %2655 = add i64 %2654, 3
  store i64 %2655, i64* %PC
  %2656 = inttoptr i64 %2653 to i32*
  %2657 = load i32, i32* %2656
  %2658 = sub i32 %2650, %2657
  %2659 = icmp ult i32 %2650, %2657
  %2660 = zext i1 %2659 to i8
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2660, i8* %2661, align 1, !tbaa !2432
  %2662 = and i32 %2658, 255
  %2663 = call i32 @llvm.ctpop.i32(i32 %2662) #17
  %2664 = trunc i32 %2663 to i8
  %2665 = and i8 %2664, 1
  %2666 = xor i8 %2665, 1
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2666, i8* %2667, align 1, !tbaa !2446
  %2668 = xor i32 %2657, %2650
  %2669 = xor i32 %2668, %2658
  %2670 = lshr i32 %2669, 4
  %2671 = trunc i32 %2670 to i8
  %2672 = and i8 %2671, 1
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2672, i8* %2673, align 1, !tbaa !2447
  %2674 = icmp eq i32 %2658, 0
  %2675 = zext i1 %2674 to i8
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2675, i8* %2676, align 1, !tbaa !2448
  %2677 = lshr i32 %2658, 31
  %2678 = trunc i32 %2677 to i8
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2678, i8* %2679, align 1, !tbaa !2449
  %2680 = lshr i32 %2650, 31
  %2681 = lshr i32 %2657, 31
  %2682 = xor i32 %2681, %2680
  %2683 = xor i32 %2677, %2680
  %2684 = add nuw nsw i32 %2683, %2682
  %2685 = icmp eq i32 %2684, 2
  %2686 = zext i1 %2685 to i8
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2686, i8* %2687, align 1, !tbaa !2450
  %2688 = load i64, i64* %PC
  %2689 = add i64 %2688, 3
  store i64 %2689, i64* %PC
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2691 = load i8, i8* %2690, align 1, !tbaa !2448
  %2692 = icmp eq i8 %2691, 0
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2694 = load i8, i8* %2693, align 1, !tbaa !2449
  %2695 = icmp ne i8 %2694, 0
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2697 = load i8, i8* %2696, align 1, !tbaa !2450
  %2698 = icmp ne i8 %2697, 0
  %2699 = xor i1 %2695, %2698
  %2700 = xor i1 %2699, true
  %2701 = and i1 %2692, %2700
  %2702 = zext i1 %2701 to i8
  store i8 %2702, i8* %CL, align 1, !tbaa !2451
  %2703 = load i64, i64* %RBP
  %2704 = sub i64 %2703, 165
  %2705 = load i8, i8* %CL
  %2706 = zext i8 %2705 to i64
  %2707 = load i64, i64* %PC
  %2708 = add i64 %2707, 6
  store i64 %2708, i64* %PC
  %2709 = inttoptr i64 %2704 to i8*
  store i8 %2705, i8* %2709
  br label %block_400d23

block_400e72:                                     ; preds = %block_400e7e, %block_400e6c
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.1, %block_400e6c ], [ %MEMORY.5, %block_400e7e ]
  %2710 = load i64, i64* %RBP
  %2711 = sub i64 %2710, 32
  %2712 = load i64, i64* %PC
  %2713 = add i64 %2712, 3
  store i64 %2713, i64* %PC
  %2714 = inttoptr i64 %2711 to i32*
  %2715 = load i32, i32* %2714
  %2716 = zext i32 %2715 to i64
  store i64 %2716, i64* %RAX, align 8, !tbaa !2428
  %2717 = load i32, i32* %EAX
  %2718 = zext i32 %2717 to i64
  %2719 = load i64, i64* %RBP
  %2720 = sub i64 %2719, 56
  %2721 = load i64, i64* %PC
  %2722 = add i64 %2721, 3
  store i64 %2722, i64* %PC
  %2723 = inttoptr i64 %2720 to i32*
  %2724 = load i32, i32* %2723
  %2725 = sub i32 %2717, %2724
  %2726 = icmp ult i32 %2717, %2724
  %2727 = zext i1 %2726 to i8
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2727, i8* %2728, align 1, !tbaa !2432
  %2729 = and i32 %2725, 255
  %2730 = call i32 @llvm.ctpop.i32(i32 %2729) #17
  %2731 = trunc i32 %2730 to i8
  %2732 = and i8 %2731, 1
  %2733 = xor i8 %2732, 1
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2733, i8* %2734, align 1, !tbaa !2446
  %2735 = xor i32 %2724, %2717
  %2736 = xor i32 %2735, %2725
  %2737 = lshr i32 %2736, 4
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2739, i8* %2740, align 1, !tbaa !2447
  %2741 = icmp eq i32 %2725, 0
  %2742 = zext i1 %2741 to i8
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2742, i8* %2743, align 1, !tbaa !2448
  %2744 = lshr i32 %2725, 31
  %2745 = trunc i32 %2744 to i8
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2745, i8* %2746, align 1, !tbaa !2449
  %2747 = lshr i32 %2717, 31
  %2748 = lshr i32 %2724, 31
  %2749 = xor i32 %2748, %2747
  %2750 = xor i32 %2744, %2747
  %2751 = add nuw nsw i32 %2750, %2749
  %2752 = icmp eq i32 %2751, 2
  %2753 = zext i1 %2752 to i8
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2753, i8* %2754, align 1, !tbaa !2450
  %2755 = load i64, i64* %PC
  %2756 = add i64 %2755, 264
  %2757 = load i64, i64* %PC
  %2758 = add i64 %2757, 6
  %2759 = load i64, i64* %PC
  %2760 = add i64 %2759, 6
  store i64 %2760, i64* %PC
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2762 = load i8, i8* %2761, align 1, !tbaa !2448
  %2763 = icmp eq i8 %2762, 0
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2765 = load i8, i8* %2764, align 1, !tbaa !2449
  %2766 = icmp ne i8 %2765, 0
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2768 = load i8, i8* %2767, align 1, !tbaa !2450
  %2769 = icmp ne i8 %2768, 0
  %2770 = xor i1 %2766, %2769
  %2771 = xor i1 %2770, true
  %2772 = and i1 %2763, %2771
  %2773 = zext i1 %2772 to i8
  store i8 %2773, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2775 = select i1 %2772, i64 %2756, i64 %2758
  store i64 %2775, i64* %2774, align 8, !tbaa !2428
  %2776 = load i8, i8* %BRANCH_TAKEN
  %2777 = icmp eq i8 %2776, 1
  br i1 %2777, label %block_400f80, label %block_400e7e

block_400b90:                                     ; preds = %block_400b83, %block_401010
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.8, %block_400b83 ], [ %MEMORY.9, %block_401010 ]
  %2778 = load i64, i64* %RBP
  %2779 = sub i64 %2778, 72
  %2780 = load i64, i64* %PC
  %2781 = add i64 %2780, 4
  store i64 %2781, i64* %PC
  %2782 = inttoptr i64 %2779 to i32*
  %2783 = load i32, i32* %2782
  %2784 = sub i32 %2783, 1
  %2785 = icmp ult i32 %2783, 1
  %2786 = zext i1 %2785 to i8
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2786, i8* %2787, align 1, !tbaa !2432
  %2788 = and i32 %2784, 255
  %2789 = call i32 @llvm.ctpop.i32(i32 %2788) #17
  %2790 = trunc i32 %2789 to i8
  %2791 = and i8 %2790, 1
  %2792 = xor i8 %2791, 1
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2792, i8* %2793, align 1, !tbaa !2446
  %2794 = xor i32 %2783, 1
  %2795 = xor i32 %2794, %2784
  %2796 = lshr i32 %2795, 4
  %2797 = trunc i32 %2796 to i8
  %2798 = and i8 %2797, 1
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2798, i8* %2799, align 1, !tbaa !2447
  %2800 = icmp eq i32 %2784, 0
  %2801 = zext i1 %2800 to i8
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2801, i8* %2802, align 1, !tbaa !2448
  %2803 = lshr i32 %2784, 31
  %2804 = trunc i32 %2803 to i8
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2804, i8* %2805, align 1, !tbaa !2449
  %2806 = lshr i32 %2783, 31
  %2807 = xor i32 %2803, %2806
  %2808 = add nuw nsw i32 %2807, %2806
  %2809 = icmp eq i32 %2808, 2
  %2810 = zext i1 %2809 to i8
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2810, i8* %2811, align 1, !tbaa !2450
  %2812 = load i64, i64* %PC
  %2813 = add i64 %2812, 1172
  %2814 = load i64, i64* %PC
  %2815 = add i64 %2814, 6
  %2816 = load i64, i64* %PC
  %2817 = add i64 %2816, 6
  store i64 %2817, i64* %PC
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2819 = load i8, i8* %2818, align 1, !tbaa !2449
  %2820 = icmp ne i8 %2819, 0
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2822 = load i8, i8* %2821, align 1, !tbaa !2450
  %2823 = icmp ne i8 %2822, 0
  %2824 = xor i1 %2820, %2823
  %2825 = zext i1 %2824 to i8
  store i8 %2825, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2827 = select i1 %2824, i64 %2813, i64 %2815
  store i64 %2827, i64* %2826, align 8, !tbaa !2428
  %2828 = load i8, i8* %BRANCH_TAKEN
  %2829 = icmp eq i8 %2828, 1
  br i1 %2829, label %block_401028, label %block_400b9a

block_400f93:                                     ; preds = %block_400e58
  %2830 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2831 = load i64, i64* %RBP
  %2832 = sub i64 %2831, 152
  %2833 = load i64, i64* %PC
  %2834 = add i64 %2833, 8
  store i64 %2834, i64* %PC
  %2835 = inttoptr i64 %2832 to double*
  %2836 = load double, double* %2835
  %2837 = bitcast i8* %2830 to double*
  store double %2836, double* %2837, align 1, !tbaa !2452
  %2838 = getelementptr inbounds i8, i8* %2830, i64 8
  %2839 = bitcast i8* %2838 to double*
  store double 0.000000e+00, double* %2839, align 1, !tbaa !2452
  %2840 = load i64, i64* %RBP
  %2841 = sub i64 %2840, 160
  %2842 = bitcast %union.vec128_t* %XMM0 to i8*
  %2843 = load i64, i64* %PC
  %2844 = add i64 %2843, 8
  store i64 %2844, i64* %PC
  %2845 = bitcast i8* %2842 to double*
  %2846 = load double, double* %2845, align 1
  %2847 = inttoptr i64 %2841 to double*
  store double %2846, double* %2847
  %2848 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2849 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2850 = load i64, i64* %RBP
  %2851 = sub i64 %2850, 144
  %2852 = load i64, i64* %PC
  %2853 = add i64 %2852, 8
  store i64 %2853, i64* %PC
  %2854 = bitcast i8* %2849 to double*
  %2855 = load double, double* %2854, align 1
  %2856 = getelementptr inbounds i8, i8* %2849, i64 8
  %2857 = bitcast i8* %2856 to i64*
  %2858 = load i64, i64* %2857, align 1
  %2859 = inttoptr i64 %2851 to double*
  %2860 = load double, double* %2859
  %2861 = fmul double %2855, %2860
  %2862 = bitcast i8* %2848 to double*
  store double %2861, double* %2862, align 1, !tbaa !2452
  %2863 = getelementptr inbounds i8, i8* %2848, i64 8
  %2864 = bitcast i8* %2863 to i64*
  store i64 %2858, i64* %2864, align 1, !tbaa !2452
  %2865 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2866 = load i64, i64* %RBP
  %2867 = sub i64 %2866, 128
  %2868 = load i64, i64* %PC
  %2869 = add i64 %2868, 5
  store i64 %2869, i64* %PC
  %2870 = inttoptr i64 %2867 to double*
  %2871 = load double, double* %2870
  %2872 = bitcast i8* %2865 to double*
  store double %2871, double* %2872, align 1, !tbaa !2452
  %2873 = getelementptr inbounds i8, i8* %2865, i64 8
  %2874 = bitcast i8* %2873 to double*
  store double 0.000000e+00, double* %2874, align 1, !tbaa !2452
  %2875 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2876 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2877 = load i64, i64* %RBP
  %2878 = sub i64 %2877, 136
  %2879 = load i64, i64* %PC
  %2880 = add i64 %2879, 8
  store i64 %2880, i64* %PC
  %2881 = bitcast i8* %2876 to double*
  %2882 = load double, double* %2881, align 1
  %2883 = getelementptr inbounds i8, i8* %2876, i64 8
  %2884 = bitcast i8* %2883 to i64*
  %2885 = load i64, i64* %2884, align 1
  %2886 = inttoptr i64 %2878 to double*
  %2887 = load double, double* %2886
  %2888 = fmul double %2882, %2887
  %2889 = bitcast i8* %2875 to double*
  store double %2888, double* %2889, align 1, !tbaa !2452
  %2890 = getelementptr inbounds i8, i8* %2875, i64 8
  %2891 = bitcast i8* %2890 to i64*
  store i64 %2885, i64* %2891, align 1, !tbaa !2452
  %2892 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2893 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2894 = bitcast %union.vec128_t* %XMM1 to i8*
  %2895 = load i64, i64* %PC
  %2896 = add i64 %2895, 4
  store i64 %2896, i64* %PC
  %2897 = bitcast i8* %2893 to double*
  %2898 = load double, double* %2897, align 1
  %2899 = getelementptr inbounds i8, i8* %2893, i64 8
  %2900 = bitcast i8* %2899 to i64*
  %2901 = load i64, i64* %2900, align 1
  %2902 = bitcast i8* %2894 to double*
  %2903 = load double, double* %2902, align 1
  %2904 = fsub double %2898, %2903
  %2905 = bitcast i8* %2892 to double*
  store double %2904, double* %2905, align 1, !tbaa !2452
  %2906 = getelementptr inbounds i8, i8* %2892, i64 8
  %2907 = bitcast i8* %2906 to i64*
  store i64 %2901, i64* %2907, align 1, !tbaa !2452
  %2908 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2909 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2910 = load i64, i64* %RBP
  %2911 = sub i64 %2910, 152
  %2912 = load i64, i64* %PC
  %2913 = add i64 %2912, 8
  store i64 %2913, i64* %PC
  %2914 = bitcast i8* %2909 to double*
  %2915 = load double, double* %2914, align 1
  %2916 = getelementptr inbounds i8, i8* %2909, i64 8
  %2917 = bitcast i8* %2916 to i64*
  %2918 = load i64, i64* %2917, align 1
  %2919 = inttoptr i64 %2911 to double*
  %2920 = load double, double* %2919
  %2921 = fadd double %2915, %2920
  %2922 = bitcast i8* %2908 to double*
  store double %2921, double* %2922, align 1, !tbaa !2452
  %2923 = getelementptr inbounds i8, i8* %2908, i64 8
  %2924 = bitcast i8* %2923 to i64*
  store i64 %2918, i64* %2924, align 1, !tbaa !2452
  %2925 = load i64, i64* %RBP
  %2926 = sub i64 %2925, 152
  %2927 = bitcast %union.vec128_t* %XMM0 to i8*
  %2928 = load i64, i64* %PC
  %2929 = add i64 %2928, 8
  store i64 %2929, i64* %PC
  %2930 = bitcast i8* %2927 to double*
  %2931 = load double, double* %2930, align 1
  %2932 = inttoptr i64 %2926 to double*
  store double %2931, double* %2932
  %2933 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2934 = load i64, i64* %RBP
  %2935 = sub i64 %2934, 128
  %2936 = load i64, i64* %PC
  %2937 = add i64 %2936, 5
  store i64 %2937, i64* %PC
  %2938 = inttoptr i64 %2935 to double*
  %2939 = load double, double* %2938
  %2940 = bitcast i8* %2933 to double*
  store double %2939, double* %2940, align 1, !tbaa !2452
  %2941 = getelementptr inbounds i8, i8* %2933, i64 8
  %2942 = bitcast i8* %2941 to double*
  store double 0.000000e+00, double* %2942, align 1, !tbaa !2452
  %2943 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2944 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2945 = load i64, i64* %RBP
  %2946 = sub i64 %2945, 144
  %2947 = load i64, i64* %PC
  %2948 = add i64 %2947, 8
  store i64 %2948, i64* %PC
  %2949 = bitcast i8* %2944 to double*
  %2950 = load double, double* %2949, align 1
  %2951 = getelementptr inbounds i8, i8* %2944, i64 8
  %2952 = bitcast i8* %2951 to i64*
  %2953 = load i64, i64* %2952, align 1
  %2954 = inttoptr i64 %2946 to double*
  %2955 = load double, double* %2954
  %2956 = fmul double %2950, %2955
  %2957 = bitcast i8* %2943 to double*
  store double %2956, double* %2957, align 1, !tbaa !2452
  %2958 = getelementptr inbounds i8, i8* %2943, i64 8
  %2959 = bitcast i8* %2958 to i64*
  store i64 %2953, i64* %2959, align 1, !tbaa !2452
  %2960 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2961 = load i64, i64* %RBP
  %2962 = sub i64 %2961, 160
  %2963 = load i64, i64* %PC
  %2964 = add i64 %2963, 8
  store i64 %2964, i64* %PC
  %2965 = inttoptr i64 %2962 to double*
  %2966 = load double, double* %2965
  %2967 = bitcast i8* %2960 to double*
  store double %2966, double* %2967, align 1, !tbaa !2452
  %2968 = getelementptr inbounds i8, i8* %2960, i64 8
  %2969 = bitcast i8* %2968 to double*
  store double 0.000000e+00, double* %2969, align 1, !tbaa !2452
  %2970 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2971 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2972 = load i64, i64* %RBP
  %2973 = sub i64 %2972, 136
  %2974 = load i64, i64* %PC
  %2975 = add i64 %2974, 8
  store i64 %2975, i64* %PC
  %2976 = bitcast i8* %2971 to double*
  %2977 = load double, double* %2976, align 1
  %2978 = getelementptr inbounds i8, i8* %2971, i64 8
  %2979 = bitcast i8* %2978 to i64*
  %2980 = load i64, i64* %2979, align 1
  %2981 = inttoptr i64 %2973 to double*
  %2982 = load double, double* %2981
  %2983 = fmul double %2977, %2982
  %2984 = bitcast i8* %2970 to double*
  store double %2983, double* %2984, align 1, !tbaa !2452
  %2985 = getelementptr inbounds i8, i8* %2970, i64 8
  %2986 = bitcast i8* %2985 to i64*
  store i64 %2980, i64* %2986, align 1, !tbaa !2452
  %2987 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2988 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2989 = bitcast %union.vec128_t* %XMM1 to i8*
  %2990 = load i64, i64* %PC
  %2991 = add i64 %2990, 4
  store i64 %2991, i64* %PC
  %2992 = bitcast i8* %2988 to double*
  %2993 = load double, double* %2992, align 1
  %2994 = getelementptr inbounds i8, i8* %2988, i64 8
  %2995 = bitcast i8* %2994 to i64*
  %2996 = load i64, i64* %2995, align 1
  %2997 = bitcast i8* %2989 to double*
  %2998 = load double, double* %2997, align 1
  %2999 = fadd double %2993, %2998
  %3000 = bitcast i8* %2987 to double*
  store double %2999, double* %3000, align 1, !tbaa !2452
  %3001 = getelementptr inbounds i8, i8* %2987, i64 8
  %3002 = bitcast i8* %3001 to i64*
  store i64 %2996, i64* %3002, align 1, !tbaa !2452
  %3003 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3004 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3005 = load i64, i64* %RBP
  %3006 = sub i64 %3005, 128
  %3007 = load i64, i64* %PC
  %3008 = add i64 %3007, 5
  store i64 %3008, i64* %PC
  %3009 = bitcast i8* %3004 to double*
  %3010 = load double, double* %3009, align 1
  %3011 = getelementptr inbounds i8, i8* %3004, i64 8
  %3012 = bitcast i8* %3011 to i64*
  %3013 = load i64, i64* %3012, align 1
  %3014 = inttoptr i64 %3006 to double*
  %3015 = load double, double* %3014
  %3016 = fadd double %3010, %3015
  %3017 = bitcast i8* %3003 to double*
  store double %3016, double* %3017, align 1, !tbaa !2452
  %3018 = getelementptr inbounds i8, i8* %3003, i64 8
  %3019 = bitcast i8* %3018 to i64*
  store i64 %3013, i64* %3019, align 1, !tbaa !2452
  %3020 = load i64, i64* %RBP
  %3021 = sub i64 %3020, 128
  %3022 = bitcast %union.vec128_t* %XMM0 to i8*
  %3023 = load i64, i64* %PC
  %3024 = add i64 %3023, 5
  store i64 %3024, i64* %PC
  %3025 = bitcast i8* %3022 to double*
  %3026 = load double, double* %3025, align 1
  %3027 = inttoptr i64 %3021 to double*
  store double %3026, double* %3027
  %3028 = load i64, i64* %RBP
  %3029 = sub i64 %3028, 48
  %3030 = load i64, i64* %PC
  %3031 = add i64 %3030, 3
  store i64 %3031, i64* %PC
  %3032 = inttoptr i64 %3029 to i32*
  %3033 = load i32, i32* %3032
  %3034 = zext i32 %3033 to i64
  store i64 %3034, i64* %RAX, align 8, !tbaa !2428
  %3035 = load i64, i64* %RAX
  %3036 = load i64, i64* %RBP
  %3037 = sub i64 %3036, 36
  %3038 = load i64, i64* %PC
  %3039 = add i64 %3038, 3
  store i64 %3039, i64* %PC
  %3040 = trunc i64 %3035 to i32
  %3041 = inttoptr i64 %3037 to i32*
  %3042 = load i32, i32* %3041
  %3043 = add i32 %3042, %3040
  %3044 = zext i32 %3043 to i64
  store i64 %3044, i64* %RAX, align 8, !tbaa !2428
  %3045 = icmp ult i32 %3043, %3040
  %3046 = icmp ult i32 %3043, %3042
  %3047 = or i1 %3045, %3046
  %3048 = zext i1 %3047 to i8
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3048, i8* %3049, align 1, !tbaa !2432
  %3050 = and i32 %3043, 255
  %3051 = call i32 @llvm.ctpop.i32(i32 %3050) #17
  %3052 = trunc i32 %3051 to i8
  %3053 = and i8 %3052, 1
  %3054 = xor i8 %3053, 1
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3054, i8* %3055, align 1, !tbaa !2446
  %3056 = xor i32 %3042, %3040
  %3057 = xor i32 %3056, %3043
  %3058 = lshr i32 %3057, 4
  %3059 = trunc i32 %3058 to i8
  %3060 = and i8 %3059, 1
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3060, i8* %3061, align 1, !tbaa !2447
  %3062 = icmp eq i32 %3043, 0
  %3063 = zext i1 %3062 to i8
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3063, i8* %3064, align 1, !tbaa !2448
  %3065 = lshr i32 %3043, 31
  %3066 = trunc i32 %3065 to i8
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3066, i8* %3067, align 1, !tbaa !2449
  %3068 = lshr i32 %3040, 31
  %3069 = lshr i32 %3042, 31
  %3070 = xor i32 %3065, %3068
  %3071 = xor i32 %3065, %3069
  %3072 = add nuw nsw i32 %3070, %3071
  %3073 = icmp eq i32 %3072, 2
  %3074 = zext i1 %3073 to i8
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3074, i8* %3075, align 1, !tbaa !2450
  %3076 = load i64, i64* %RBP
  %3077 = sub i64 %3076, 36
  %3078 = load i32, i32* %EAX
  %3079 = zext i32 %3078 to i64
  %3080 = load i64, i64* %PC
  %3081 = add i64 %3080, 3
  store i64 %3081, i64* %PC
  %3082 = inttoptr i64 %3077 to i32*
  store i32 %3078, i32* %3082
  %3083 = load i64, i64* %PC
  %3084 = sub i64 %3083, 442
  %3085 = load i64, i64* %PC
  %3086 = add i64 %3085, 5
  store i64 %3086, i64* %PC
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3084, i64* %3087, align 8, !tbaa !2428
  br label %block_400e46

block_400c0d:                                     ; preds = %block_400c07, %block_400cdd
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.0, %block_400c07 ], [ %MEMORY.11, %block_400cdd ]
  %3088 = load i64, i64* %RBP
  %3089 = sub i64 %3088, 28
  %3090 = load i64, i64* %PC
  %3091 = add i64 %3090, 3
  store i64 %3091, i64* %PC
  %3092 = inttoptr i64 %3089 to i32*
  %3093 = load i32, i32* %3092
  %3094 = zext i32 %3093 to i64
  store i64 %3094, i64* %RAX, align 8, !tbaa !2428
  %3095 = load i64, i64* %RBP
  %3096 = sub i64 %3095, 32
  %3097 = load i64, i64* %PC
  %3098 = add i64 %3097, 3
  store i64 %3098, i64* %PC
  %3099 = inttoptr i64 %3096 to i32*
  %3100 = load i32, i32* %3099
  %3101 = zext i32 %3100 to i64
  store i64 %3101, i64* %RCX, align 8, !tbaa !2428
  %3102 = load i64, i64* %RCX
  %3103 = load i64, i64* %RBP
  %3104 = sub i64 %3103, 48
  %3105 = load i64, i64* %PC
  %3106 = add i64 %3105, 3
  store i64 %3106, i64* %PC
  %3107 = trunc i64 %3102 to i32
  %3108 = inttoptr i64 %3104 to i32*
  %3109 = load i32, i32* %3108
  %3110 = add i32 %3109, %3107
  %3111 = zext i32 %3110 to i64
  store i64 %3111, i64* %RCX, align 8, !tbaa !2428
  %3112 = icmp ult i32 %3110, %3107
  %3113 = icmp ult i32 %3110, %3109
  %3114 = or i1 %3112, %3113
  %3115 = zext i1 %3114 to i8
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3115, i8* %3116, align 1, !tbaa !2432
  %3117 = and i32 %3110, 255
  %3118 = call i32 @llvm.ctpop.i32(i32 %3117) #17
  %3119 = trunc i32 %3118 to i8
  %3120 = and i8 %3119, 1
  %3121 = xor i8 %3120, 1
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3121, i8* %3122, align 1, !tbaa !2446
  %3123 = xor i32 %3109, %3107
  %3124 = xor i32 %3123, %3110
  %3125 = lshr i32 %3124, 4
  %3126 = trunc i32 %3125 to i8
  %3127 = and i8 %3126, 1
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3127, i8* %3128, align 1, !tbaa !2447
  %3129 = icmp eq i32 %3110, 0
  %3130 = zext i1 %3129 to i8
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3130, i8* %3131, align 1, !tbaa !2448
  %3132 = lshr i32 %3110, 31
  %3133 = trunc i32 %3132 to i8
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3133, i8* %3134, align 1, !tbaa !2449
  %3135 = lshr i32 %3107, 31
  %3136 = lshr i32 %3109, 31
  %3137 = xor i32 %3132, %3135
  %3138 = xor i32 %3132, %3136
  %3139 = add nuw nsw i32 %3137, %3138
  %3140 = icmp eq i32 %3139, 2
  %3141 = zext i1 %3140 to i8
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3141, i8* %3142, align 1, !tbaa !2450
  %3143 = load i64, i64* %RCX
  %3144 = load i64, i64* %PC
  %3145 = add i64 %3144, 3
  store i64 %3145, i64* %PC
  %3146 = trunc i64 %3143 to i32
  %3147 = sub i32 %3146, 2
  %3148 = zext i32 %3147 to i64
  store i64 %3148, i64* %RCX, align 8, !tbaa !2428
  %3149 = icmp ult i32 %3146, 2
  %3150 = zext i1 %3149 to i8
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3150, i8* %3151, align 1, !tbaa !2432
  %3152 = and i32 %3147, 255
  %3153 = call i32 @llvm.ctpop.i32(i32 %3152) #17
  %3154 = trunc i32 %3153 to i8
  %3155 = and i8 %3154, 1
  %3156 = xor i8 %3155, 1
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3156, i8* %3157, align 1, !tbaa !2446
  %3158 = xor i64 2, %3143
  %3159 = trunc i64 %3158 to i32
  %3160 = xor i32 %3159, %3147
  %3161 = lshr i32 %3160, 4
  %3162 = trunc i32 %3161 to i8
  %3163 = and i8 %3162, 1
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3163, i8* %3164, align 1, !tbaa !2447
  %3165 = icmp eq i32 %3147, 0
  %3166 = zext i1 %3165 to i8
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3166, i8* %3167, align 1, !tbaa !2448
  %3168 = lshr i32 %3147, 31
  %3169 = trunc i32 %3168 to i8
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3169, i8* %3170, align 1, !tbaa !2449
  %3171 = lshr i32 %3146, 31
  %3172 = xor i32 %3168, %3171
  %3173 = add nuw nsw i32 %3172, %3171
  %3174 = icmp eq i32 %3173, 2
  %3175 = zext i1 %3174 to i8
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3175, i8* %3176, align 1, !tbaa !2450
  %3177 = load i32, i32* %EAX
  %3178 = zext i32 %3177 to i64
  %3179 = load i32, i32* %ECX
  %3180 = zext i32 %3179 to i64
  %3181 = load i64, i64* %PC
  %3182 = add i64 %3181, 2
  store i64 %3182, i64* %PC
  %3183 = sub i32 %3177, %3179
  %3184 = icmp ult i32 %3177, %3179
  %3185 = zext i1 %3184 to i8
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3185, i8* %3186, align 1, !tbaa !2432
  %3187 = and i32 %3183, 255
  %3188 = call i32 @llvm.ctpop.i32(i32 %3187) #17
  %3189 = trunc i32 %3188 to i8
  %3190 = and i8 %3189, 1
  %3191 = xor i8 %3190, 1
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3191, i8* %3192, align 1, !tbaa !2446
  %3193 = xor i64 %3180, %3178
  %3194 = trunc i64 %3193 to i32
  %3195 = xor i32 %3194, %3183
  %3196 = lshr i32 %3195, 4
  %3197 = trunc i32 %3196 to i8
  %3198 = and i8 %3197, 1
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3198, i8* %3199, align 1, !tbaa !2447
  %3200 = icmp eq i32 %3183, 0
  %3201 = zext i1 %3200 to i8
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3201, i8* %3202, align 1, !tbaa !2448
  %3203 = lshr i32 %3183, 31
  %3204 = trunc i32 %3203 to i8
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3204, i8* %3205, align 1, !tbaa !2449
  %3206 = lshr i32 %3177, 31
  %3207 = lshr i32 %3179, 31
  %3208 = xor i32 %3207, %3206
  %3209 = xor i32 %3203, %3206
  %3210 = add nuw nsw i32 %3209, %3208
  %3211 = icmp eq i32 %3210, 2
  %3212 = zext i1 %3211 to i8
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3212, i8* %3213, align 1, !tbaa !2450
  %3214 = load i64, i64* %PC
  %3215 = add i64 %3214, 213
  %3216 = load i64, i64* %PC
  %3217 = add i64 %3216, 6
  %3218 = load i64, i64* %PC
  %3219 = add i64 %3218, 6
  store i64 %3219, i64* %PC
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3221 = load i8, i8* %3220, align 1, !tbaa !2448
  %3222 = icmp eq i8 %3221, 0
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3224 = load i8, i8* %3223, align 1, !tbaa !2449
  %3225 = icmp ne i8 %3224, 0
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3227 = load i8, i8* %3226, align 1, !tbaa !2450
  %3228 = icmp ne i8 %3227, 0
  %3229 = xor i1 %3225, %3228
  %3230 = xor i1 %3229, true
  %3231 = and i1 %3222, %3230
  %3232 = zext i1 %3231 to i8
  store i8 %3232, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3234 = select i1 %3231, i64 %3215, i64 %3217
  store i64 %3234, i64* %3233, align 8, !tbaa !2428
  %3235 = load i8, i8* %BRANCH_TAKEN
  %3236 = icmp eq i8 %3235, 1
  br i1 %3236, label %block_400cf0, label %block_400c21

block_400bfb:                                     ; preds = %block_400bef
  %3237 = sub i64 %217, 32
  %3238 = load i64, i64* %PC
  %3239 = add i64 %3238, 3
  store i64 %3239, i64* %PC
  %3240 = inttoptr i64 %3237 to i32*
  %3241 = load i32, i32* %3240
  %3242 = zext i32 %3241 to i64
  store i64 %3242, i64* %RAX, align 8, !tbaa !2428
  %3243 = load i32, i32* %EAX
  %3244 = zext i32 %3243 to i64
  %3245 = load i64, i64* %RBP
  %3246 = sub i64 %3245, 40
  %3247 = load i64, i64* %PC
  %3248 = add i64 %3247, 3
  store i64 %3248, i64* %PC
  %3249 = inttoptr i64 %3246 to i32*
  %3250 = load i32, i32* %3249
  %3251 = sub i32 %3243, %3250
  %3252 = icmp ult i32 %3243, %3250
  %3253 = zext i1 %3252 to i8
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3253, i8* %3254, align 1, !tbaa !2432
  %3255 = and i32 %3251, 255
  %3256 = call i32 @llvm.ctpop.i32(i32 %3255) #17
  %3257 = trunc i32 %3256 to i8
  %3258 = and i8 %3257, 1
  %3259 = xor i8 %3258, 1
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3259, i8* %3260, align 1, !tbaa !2446
  %3261 = xor i32 %3250, %3243
  %3262 = xor i32 %3261, %3251
  %3263 = lshr i32 %3262, 4
  %3264 = trunc i32 %3263 to i8
  %3265 = and i8 %3264, 1
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3265, i8* %3266, align 1, !tbaa !2447
  %3267 = icmp eq i32 %3251, 0
  %3268 = zext i1 %3267 to i8
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3268, i8* %3269, align 1, !tbaa !2448
  %3270 = lshr i32 %3251, 31
  %3271 = trunc i32 %3270 to i8
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3271, i8* %3272, align 1, !tbaa !2449
  %3273 = lshr i32 %3243, 31
  %3274 = lshr i32 %3250, 31
  %3275 = xor i32 %3274, %3273
  %3276 = xor i32 %3270, %3273
  %3277 = add nuw nsw i32 %3276, %3275
  %3278 = icmp eq i32 %3277, 2
  %3279 = zext i1 %3278 to i8
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3279, i8* %3280, align 1, !tbaa !2450
  %3281 = load i64, i64* %PC
  %3282 = add i64 %3281, 244
  %3283 = load i64, i64* %PC
  %3284 = add i64 %3283, 6
  %3285 = load i64, i64* %PC
  %3286 = add i64 %3285, 6
  store i64 %3286, i64* %PC
  %3287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3288 = load i8, i8* %3287, align 1, !tbaa !2449
  %3289 = icmp ne i8 %3288, 0
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3291 = load i8, i8* %3290, align 1, !tbaa !2450
  %3292 = icmp ne i8 %3291, 0
  %3293 = xor i1 %3289, %3292
  %3294 = xor i1 %3293, true
  %3295 = zext i1 %3294 to i8
  store i8 %3295, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3297 = select i1 %3293, i64 %3284, i64 %3282
  store i64 %3297, i64* %3296, align 8, !tbaa !2428
  %3298 = load i8, i8* %BRANCH_TAKEN
  %3299 = icmp eq i8 %3298, 1
  br i1 %3299, label %block_400cf5, label %block_400c07

block_400b57:                                     ; preds = %block_400b63, %block_400b30
  %MEMORY.8 = phi %struct.Memory* [ %2, %block_400b30 ], [ %MEMORY.8, %block_400b63 ]
  %3300 = load i64, i64* %RBP
  %3301 = sub i64 %3300, 72
  %3302 = load i64, i64* %PC
  %3303 = add i64 %3302, 3
  store i64 %3303, i64* %PC
  %3304 = inttoptr i64 %3301 to i32*
  %3305 = load i32, i32* %3304
  %3306 = zext i32 %3305 to i64
  store i64 %3306, i64* %RAX, align 8, !tbaa !2428
  %3307 = load i32, i32* %EAX
  %3308 = zext i32 %3307 to i64
  %3309 = load i64, i64* %RBP
  %3310 = sub i64 %3309, 20
  %3311 = load i64, i64* %PC
  %3312 = add i64 %3311, 3
  store i64 %3312, i64* %PC
  %3313 = inttoptr i64 %3310 to i32*
  %3314 = load i32, i32* %3313
  %3315 = sub i32 %3307, %3314
  %3316 = icmp ult i32 %3307, %3314
  %3317 = zext i1 %3316 to i8
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3317, i8* %3318, align 1, !tbaa !2432
  %3319 = and i32 %3315, 255
  %3320 = call i32 @llvm.ctpop.i32(i32 %3319) #17
  %3321 = trunc i32 %3320 to i8
  %3322 = and i8 %3321, 1
  %3323 = xor i8 %3322, 1
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3323, i8* %3324, align 1, !tbaa !2446
  %3325 = xor i32 %3314, %3307
  %3326 = xor i32 %3325, %3315
  %3327 = lshr i32 %3326, 4
  %3328 = trunc i32 %3327 to i8
  %3329 = and i8 %3328, 1
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3329, i8* %3330, align 1, !tbaa !2447
  %3331 = icmp eq i32 %3315, 0
  %3332 = zext i1 %3331 to i8
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3332, i8* %3333, align 1, !tbaa !2448
  %3334 = lshr i32 %3315, 31
  %3335 = trunc i32 %3334 to i8
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3335, i8* %3336, align 1, !tbaa !2449
  %3337 = lshr i32 %3307, 31
  %3338 = lshr i32 %3314, 31
  %3339 = xor i32 %3338, %3337
  %3340 = xor i32 %3334, %3337
  %3341 = add nuw nsw i32 %3340, %3339
  %3342 = icmp eq i32 %3341, 2
  %3343 = zext i1 %3342 to i8
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3343, i8* %3344, align 1, !tbaa !2450
  %3345 = load i64, i64* %PC
  %3346 = add i64 %3345, 38
  %3347 = load i64, i64* %PC
  %3348 = add i64 %3347, 6
  %3349 = load i64, i64* %PC
  %3350 = add i64 %3349, 6
  store i64 %3350, i64* %PC
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3352 = load i8, i8* %3351, align 1, !tbaa !2448
  %3353 = icmp eq i8 %3352, 0
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3355 = load i8, i8* %3354, align 1, !tbaa !2449
  %3356 = icmp ne i8 %3355, 0
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3358 = load i8, i8* %3357, align 1, !tbaa !2450
  %3359 = icmp ne i8 %3358, 0
  %3360 = xor i1 %3356, %3359
  %3361 = xor i1 %3360, true
  %3362 = and i1 %3353, %3361
  %3363 = zext i1 %3362 to i8
  store i8 %3363, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3365 = select i1 %3362, i64 %3346, i64 %3348
  store i64 %3365, i64* %3364, align 8, !tbaa !2428
  %3366 = load i8, i8* %BRANCH_TAKEN
  %3367 = icmp eq i8 %3366, 1
  %3368 = load i64, i64* %RBP
  br i1 %3367, label %block_400b83, label %block_400b63

block_400d6c:                                     ; preds = %block_400d66, %block_401005
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.0, %block_400d66 ], [ %MEMORY.3, %block_401005 ]
  %3369 = load i64, i64* %RBP
  %3370 = sub i64 %3369, 60
  %3371 = load i64, i64* %PC
  %3372 = add i64 %3371, 3
  store i64 %3372, i64* %PC
  %3373 = inttoptr i64 %3370 to i32*
  %3374 = load i32, i32* %3373
  %3375 = zext i32 %3374 to i64
  store i64 %3375, i64* %RAX, align 8, !tbaa !2428
  %3376 = load i32, i32* %EAX
  %3377 = zext i32 %3376 to i64
  %3378 = load i64, i64* %RBP
  %3379 = sub i64 %3378, 52
  %3380 = load i64, i64* %PC
  %3381 = add i64 %3380, 3
  store i64 %3381, i64* %PC
  %3382 = inttoptr i64 %3379 to i32*
  %3383 = load i32, i32* %3382
  %3384 = sub i32 %3376, %3383
  %3385 = icmp ult i32 %3376, %3383
  %3386 = zext i1 %3385 to i8
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3386, i8* %3387, align 1, !tbaa !2432
  %3388 = and i32 %3384, 255
  %3389 = call i32 @llvm.ctpop.i32(i32 %3388) #17
  %3390 = trunc i32 %3389 to i8
  %3391 = and i8 %3390, 1
  %3392 = xor i8 %3391, 1
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3392, i8* %3393, align 1, !tbaa !2446
  %3394 = xor i32 %3383, %3376
  %3395 = xor i32 %3394, %3384
  %3396 = lshr i32 %3395, 4
  %3397 = trunc i32 %3396 to i8
  %3398 = and i8 %3397, 1
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3398, i8* %3399, align 1, !tbaa !2447
  %3400 = icmp eq i32 %3384, 0
  %3401 = zext i1 %3400 to i8
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3401, i8* %3402, align 1, !tbaa !2448
  %3403 = lshr i32 %3384, 31
  %3404 = trunc i32 %3403 to i8
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3404, i8* %3405, align 1, !tbaa !2449
  %3406 = lshr i32 %3376, 31
  %3407 = lshr i32 %3383, 31
  %3408 = xor i32 %3407, %3406
  %3409 = xor i32 %3403, %3406
  %3410 = add nuw nsw i32 %3409, %3408
  %3411 = icmp eq i32 %3410, 2
  %3412 = zext i1 %3411 to i8
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3412, i8* %3413, align 1, !tbaa !2450
  %3414 = load i64, i64* %PC
  %3415 = add i64 %3414, 670
  %3416 = load i64, i64* %PC
  %3417 = add i64 %3416, 6
  %3418 = load i64, i64* %PC
  %3419 = add i64 %3418, 6
  store i64 %3419, i64* %PC
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3421 = load i8, i8* %3420, align 1, !tbaa !2449
  %3422 = icmp ne i8 %3421, 0
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3424 = load i8, i8* %3423, align 1, !tbaa !2450
  %3425 = icmp ne i8 %3424, 0
  %3426 = xor i1 %3422, %3425
  %3427 = xor i1 %3426, true
  %3428 = zext i1 %3427 to i8
  store i8 %3428, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3430 = select i1 %3426, i64 %3417, i64 %3415
  store i64 %3430, i64* %3429, align 8, !tbaa !2428
  %3431 = load i8, i8* %BRANCH_TAKEN
  %3432 = icmp eq i8 %3431, 1
  br i1 %3432, label %block_401010, label %block_400d78

block_400d78:                                     ; preds = %block_400d6c
  %3433 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3434 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3435 = bitcast %union.vec128_t* %XMM0 to i8*
  %3436 = load i64, i64* %PC
  %3437 = add i64 %3436, 3
  store i64 %3437, i64* %PC
  %3438 = bitcast i8* %3434 to i64*
  %3439 = load i64, i64* %3438, align 1
  %3440 = getelementptr inbounds i8, i8* %3434, i64 8
  %3441 = bitcast i8* %3440 to i64*
  %3442 = load i64, i64* %3441, align 1
  %3443 = bitcast i8* %3435 to i64*
  %3444 = load i64, i64* %3443, align 1
  %3445 = getelementptr inbounds i8, i8* %3435, i64 8
  %3446 = bitcast i8* %3445 to i64*
  %3447 = load i64, i64* %3446, align 1
  %3448 = xor i64 %3444, %3439
  %3449 = xor i64 %3447, %3442
  %3450 = trunc i64 %3448 to i32
  %3451 = lshr i64 %3448, 32
  %3452 = trunc i64 %3451 to i32
  %3453 = bitcast i8* %3433 to i32*
  store i32 %3450, i32* %3453, align 1, !tbaa !2454
  %3454 = getelementptr inbounds i8, i8* %3433, i64 4
  %3455 = bitcast i8* %3454 to i32*
  store i32 %3452, i32* %3455, align 1, !tbaa !2454
  %3456 = trunc i64 %3449 to i32
  %3457 = getelementptr inbounds i8, i8* %3433, i64 8
  %3458 = bitcast i8* %3457 to i32*
  store i32 %3456, i32* %3458, align 1, !tbaa !2454
  %3459 = lshr i64 %3449, 32
  %3460 = trunc i64 %3459 to i32
  %3461 = getelementptr inbounds i8, i8* %3433, i64 12
  %3462 = bitcast i8* %3461 to i32*
  store i32 %3460, i32* %3462, align 1, !tbaa !2454
  %3463 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %3464 = load i64, i64* %PC
  %3465 = add i64 %3464, 8
  store i64 %3465, i64* %PC
  %3466 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 40) to double*)
  %3467 = bitcast i8* %3463 to double*
  store double %3466, double* %3467, align 1, !tbaa !2452
  %3468 = getelementptr inbounds i8, i8* %3463, i64 8
  %3469 = bitcast i8* %3468 to double*
  store double 0.000000e+00, double* %3469, align 1, !tbaa !2452
  %3470 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %3471 = load i64, i64* %PC
  %3472 = add i64 %3471, 8
  store i64 %3472, i64* %PC
  %3473 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 48) to double*)
  %3474 = bitcast i8* %3470 to double*
  store double %3473, double* %3474, align 1, !tbaa !2452
  %3475 = getelementptr inbounds i8, i8* %3470, i64 8
  %3476 = bitcast i8* %3475 to double*
  store double 0.000000e+00, double* %3476, align 1, !tbaa !2452
  %3477 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %3478 = load i64, i64* %PC
  %3479 = add i64 %3478, 8
  store i64 %3479, i64* %PC
  %3480 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 56) to double*)
  %3481 = bitcast i8* %3477 to double*
  store double %3480, double* %3481, align 1, !tbaa !2452
  %3482 = getelementptr inbounds i8, i8* %3477, i64 8
  %3483 = bitcast i8* %3482 to double*
  store double 0.000000e+00, double* %3483, align 1, !tbaa !2452
  %3484 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %3485 = load i64, i64* %PC
  %3486 = add i64 %3485, 8
  store i64 %3486, i64* %PC
  %3487 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 64) to double*)
  %3488 = bitcast i8* %3484 to double*
  store double %3487, double* %3488, align 1, !tbaa !2452
  %3489 = getelementptr inbounds i8, i8* %3484, i64 8
  %3490 = bitcast i8* %3489 to double*
  store double 0.000000e+00, double* %3490, align 1, !tbaa !2452
  %3491 = load i64, i64* %RBP
  %3492 = sub i64 %3491, 60
  %3493 = load i64, i64* %PC
  %3494 = add i64 %3493, 3
  store i64 %3494, i64* %PC
  %3495 = inttoptr i64 %3492 to i32*
  %3496 = load i32, i32* %3495
  %3497 = zext i32 %3496 to i64
  store i64 %3497, i64* %RAX, align 8, !tbaa !2428
  %3498 = load i64, i64* %RAX
  %3499 = load i64, i64* %PC
  %3500 = add i64 %3499, 3
  store i64 %3500, i64* %PC
  %3501 = trunc i64 %3498 to i32
  %3502 = shl i32 %3501, 1
  %3503 = icmp slt i32 %3501, 0
  %3504 = icmp slt i32 %3502, 0
  %3505 = xor i1 %3503, %3504
  %3506 = zext i32 %3502 to i64
  store i64 %3506, i64* %RAX, align 8, !tbaa !2428
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3508 = zext i1 %3503 to i8
  store i8 %3508, i8* %3507, align 1, !tbaa !2451
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3510 = and i32 %3502, 254
  %3511 = call i32 @llvm.ctpop.i32(i32 %3510) #17
  %3512 = trunc i32 %3511 to i8
  %3513 = and i8 %3512, 1
  %3514 = xor i8 %3513, 1
  store i8 %3514, i8* %3509, align 1, !tbaa !2451
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3515, align 1, !tbaa !2451
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3517 = icmp eq i32 %3502, 0
  %3518 = zext i1 %3517 to i8
  store i8 %3518, i8* %3516, align 1, !tbaa !2451
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3520 = lshr i32 %3502, 31
  %3521 = trunc i32 %3520 to i8
  store i8 %3521, i8* %3519, align 1, !tbaa !2451
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3523 = zext i1 %3505 to i8
  store i8 %3523, i8* %3522, align 1, !tbaa !2451
  %3524 = load i64, i64* %RBP
  %3525 = sub i64 %3524, 64
  %3526 = load i32, i32* %EAX
  %3527 = zext i32 %3526 to i64
  %3528 = load i64, i64* %PC
  %3529 = add i64 %3528, 3
  store i64 %3529, i64* %PC
  %3530 = inttoptr i64 %3525 to i32*
  store i32 %3526, i32* %3530
  %3531 = load i64, i64* %RBP
  %3532 = sub i64 %3531, 24
  %3533 = load i64, i64* %PC
  %3534 = add i64 %3533, 3
  store i64 %3534, i64* %PC
  %3535 = inttoptr i64 %3532 to i32*
  %3536 = load i32, i32* %3535
  %3537 = zext i32 %3536 to i64
  store i64 %3537, i64* %RAX, align 8, !tbaa !2428
  %3538 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %3539 = load i32, i32* %EAX
  %3540 = zext i32 %3539 to i64
  %3541 = load i64, i64* %PC
  %3542 = add i64 %3541, 4
  store i64 %3542, i64* %PC
  %3543 = sitofp i32 %3539 to double
  %3544 = bitcast i8* %3538 to double*
  store double %3543, double* %3544, align 1, !tbaa !2452
  %3545 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %3546 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %3547 = bitcast %union.vec128_t* %XMM4 to i8*
  %3548 = load i64, i64* %PC
  %3549 = add i64 %3548, 4
  store i64 %3549, i64* %PC
  %3550 = bitcast i8* %3546 to double*
  %3551 = load double, double* %3550, align 1
  %3552 = getelementptr inbounds i8, i8* %3546, i64 8
  %3553 = bitcast i8* %3552 to i64*
  %3554 = load i64, i64* %3553, align 1
  %3555 = bitcast i8* %3547 to double*
  %3556 = load double, double* %3555, align 1
  %3557 = fmul double %3551, %3556
  %3558 = bitcast i8* %3545 to double*
  store double %3557, double* %3558, align 1, !tbaa !2452
  %3559 = getelementptr inbounds i8, i8* %3545, i64 8
  %3560 = bitcast i8* %3559 to i64*
  store i64 %3554, i64* %3560, align 1, !tbaa !2452
  %3561 = load i64, i64* %RBP
  %3562 = sub i64 %3561, 64
  %3563 = load i64, i64* %PC
  %3564 = add i64 %3563, 3
  store i64 %3564, i64* %PC
  %3565 = inttoptr i64 %3562 to i32*
  %3566 = load i32, i32* %3565
  %3567 = zext i32 %3566 to i64
  store i64 %3567, i64* %RAX, align 8, !tbaa !2428
  %3568 = load i64, i64* %PC
  %3569 = add i64 %3568, 1
  store i64 %3569, i64* %PC
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3572 = bitcast %union.anon* %3571 to i32*
  %3573 = load i32, i32* %3572, align 8, !tbaa !2454
  %3574 = sext i32 %3573 to i64
  %3575 = lshr i64 %3574, 32
  store i64 %3575, i64* %3570, align 8, !tbaa !2428
  %3576 = load i64, i64* %RBP
  %3577 = sub i64 %3576, 48
  %3578 = load i64, i64* %PC
  %3579 = add i64 %3578, 3
  store i64 %3579, i64* %PC
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3581 = bitcast %union.anon* %3580 to i32*
  %3582 = load i32, i32* %3581, align 8, !tbaa !2454
  %3583 = zext i32 %3582 to i64
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3585 = bitcast %union.anon* %3584 to i32*
  %3586 = load i32, i32* %3585, align 8, !tbaa !2454
  %3587 = zext i32 %3586 to i64
  %3588 = inttoptr i64 %3577 to i32*
  %3589 = load i32, i32* %3588
  %3590 = sext i32 %3589 to i64
  %3591 = shl nuw i64 %3587, 32
  %3592 = or i64 %3591, %3583
  %3593 = sdiv i64 %3592, %3590
  %3594 = shl i64 %3593, 32
  %3595 = ashr exact i64 %3594, 32
  %3596 = icmp eq i64 %3593, %3595
  br i1 %3596, label %3601, label %3597

; <label>:3597:                                   ; preds = %block_400d78
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3599 = load i64, i64* %3598, align 8, !tbaa !2428
  %3600 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3599, %struct.Memory* %MEMORY.9) #18
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:3601:                                   ; preds = %block_400d78
  %3602 = srem i64 %3592, %3590
  %3603 = getelementptr inbounds %union.anon, %union.anon* %3580, i64 0, i32 0
  %3604 = and i64 %3593, 4294967295
  store i64 %3604, i64* %3603, align 8, !tbaa !2428
  %3605 = getelementptr inbounds %union.anon, %union.anon* %3584, i64 0, i32 0
  %3606 = and i64 %3602, 4294967295
  store i64 %3606, i64* %3605, align 8, !tbaa !2428
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3607, align 1, !tbaa !2432
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3608, align 1, !tbaa !2446
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3609, align 1, !tbaa !2447
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3610, align 1, !tbaa !2448
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3611, align 1, !tbaa !2449
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3612, align 1, !tbaa !2450
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %3597, %3601
  %3613 = phi %struct.Memory* [ %3600, %3597 ], [ %MEMORY.9, %3601 ]
  %3614 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %3615 = load i32, i32* %EAX
  %3616 = zext i32 %3615 to i64
  %3617 = load i64, i64* %PC
  %3618 = add i64 %3617, 4
  store i64 %3618, i64* %PC
  %3619 = sitofp i32 %3615 to double
  %3620 = bitcast i8* %3614 to double*
  store double %3619, double* %3620, align 1, !tbaa !2452
  %3621 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %3622 = bitcast %"class.std::bitset"* %YMM5 to i8*
  %3623 = bitcast %union.vec128_t* %XMM4 to i8*
  %3624 = load i64, i64* %PC
  %3625 = add i64 %3624, 4
  store i64 %3625, i64* %PC
  %3626 = bitcast i8* %3622 to double*
  %3627 = load double, double* %3626, align 1
  %3628 = getelementptr inbounds i8, i8* %3622, i64 8
  %3629 = bitcast i8* %3628 to i64*
  %3630 = load i64, i64* %3629, align 1
  %3631 = bitcast i8* %3623 to double*
  %3632 = load double, double* %3631, align 1
  %3633 = fdiv double %3627, %3632
  %3634 = bitcast i8* %3621 to double*
  store double %3633, double* %3634, align 1, !tbaa !2452
  %3635 = getelementptr inbounds i8, i8* %3621, i64 8
  %3636 = bitcast i8* %3635 to i64*
  store i64 %3630, i64* %3636, align 1, !tbaa !2452
  %3637 = load i64, i64* %RBP
  %3638 = sub i64 %3637, 120
  %3639 = bitcast %union.vec128_t* %XMM5 to i8*
  %3640 = load i64, i64* %PC
  %3641 = add i64 %3640, 5
  store i64 %3641, i64* %PC
  %3642 = bitcast i8* %3639 to double*
  %3643 = load double, double* %3642, align 1
  %3644 = inttoptr i64 %3638 to double*
  store double %3643, double* %3644
  %3645 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %3646 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %3647 = load i64, i64* %RBP
  %3648 = sub i64 %3647, 120
  %3649 = load i64, i64* %PC
  %3650 = add i64 %3649, 5
  store i64 %3650, i64* %PC
  %3651 = bitcast i8* %3646 to double*
  %3652 = load double, double* %3651, align 1
  %3653 = getelementptr inbounds i8, i8* %3646, i64 8
  %3654 = bitcast i8* %3653 to i64*
  %3655 = load i64, i64* %3654, align 1
  %3656 = inttoptr i64 %3648 to double*
  %3657 = load double, double* %3656
  %3658 = fmul double %3652, %3657
  %3659 = bitcast i8* %3645 to double*
  store double %3658, double* %3659, align 1, !tbaa !2452
  %3660 = getelementptr inbounds i8, i8* %3645, i64 8
  %3661 = bitcast i8* %3660 to i64*
  store i64 %3655, i64* %3661, align 1, !tbaa !2452
  %3662 = load i64, i64* %RBP
  %3663 = sub i64 %3662, 176
  %3664 = bitcast %union.vec128_t* %XMM0 to i8*
  %3665 = load i64, i64* %PC
  %3666 = add i64 %3665, 8
  store i64 %3666, i64* %PC
  %3667 = bitcast i8* %3664 to double*
  %3668 = load double, double* %3667, align 1
  %3669 = inttoptr i64 %3663 to double*
  store double %3668, double* %3669
  %3670 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3671 = bitcast %union.vec128_t* %XMM3 to i8*
  %3672 = load i64, i64* %PC
  %3673 = add i64 %3672, 3
  store i64 %3673, i64* %PC
  %3674 = bitcast i8* %3671 to <2 x i32>*
  %3675 = load <2 x i32>, <2 x i32>* %3674, align 1
  %3676 = getelementptr inbounds i8, i8* %3671, i64 8
  %3677 = bitcast i8* %3676 to <2 x i32>*
  %3678 = load <2 x i32>, <2 x i32>* %3677, align 1
  %3679 = extractelement <2 x i32> %3675, i32 0
  %3680 = bitcast i8* %3670 to i32*
  store i32 %3679, i32* %3680, align 1, !tbaa !2455
  %3681 = extractelement <2 x i32> %3675, i32 1
  %3682 = getelementptr inbounds i8, i8* %3670, i64 4
  %3683 = bitcast i8* %3682 to i32*
  store i32 %3681, i32* %3683, align 1, !tbaa !2455
  %3684 = extractelement <2 x i32> %3678, i32 0
  %3685 = getelementptr inbounds i8, i8* %3670, i64 8
  %3686 = bitcast i8* %3685 to i32*
  store i32 %3684, i32* %3686, align 1, !tbaa !2455
  %3687 = extractelement <2 x i32> %3678, i32 1
  %3688 = getelementptr inbounds i8, i8* %3670, i64 12
  %3689 = bitcast i8* %3688 to i32*
  store i32 %3687, i32* %3689, align 1, !tbaa !2455
  %3690 = load i64, i64* %RBP
  %3691 = sub i64 %3690, 184
  %3692 = bitcast %union.vec128_t* %XMM2 to i8*
  %3693 = load i64, i64* %PC
  %3694 = add i64 %3693, 8
  store i64 %3694, i64* %PC
  %3695 = bitcast i8* %3692 to double*
  %3696 = load double, double* %3695, align 1
  %3697 = inttoptr i64 %3691 to double*
  store double %3696, double* %3697
  %3698 = load i64, i64* %RBP
  %3699 = sub i64 %3698, 192
  %3700 = bitcast %union.vec128_t* %XMM1 to i8*
  %3701 = load i64, i64* %PC
  %3702 = add i64 %3701, 8
  store i64 %3702, i64* %PC
  %3703 = bitcast i8* %3700 to double*
  %3704 = load double, double* %3703, align 1
  %3705 = inttoptr i64 %3699 to double*
  store double %3704, double* %3705
  %3706 = load i64, i64* %PC
  %3707 = sub i64 %3706, 2179
  %3708 = load i64, i64* %PC
  %3709 = add i64 %3708, 5
  %3710 = load i64, i64* %PC
  %3711 = add i64 %3710, 5
  store i64 %3711, i64* %PC
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3713 = load i64, i64* %3712, align 8, !tbaa !2428
  %3714 = add i64 %3713, -8
  %3715 = inttoptr i64 %3714 to i64*
  store i64 %3709, i64* %3715
  store i64 %3714, i64* %3712, align 8, !tbaa !2428
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3707, i64* %3716, align 8, !tbaa !2428
  %3717 = load i64, i64* %PC
  %3718 = bitcast %struct.State** %state.i1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3718)
  %3719 = bitcast i64* %curr_pc.i2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3719)
  %3720 = bitcast %struct.Memory** %memory.i3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3720)
  call void @llvm.lifetime.start(i64 1, i8* %BRANCH_TAKEN.i4)
  %3721 = bitcast i64* %SS_BASE.i5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3721)
  %3722 = bitcast i64* %ES_BASE.i6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3722)
  %3723 = bitcast i64* %DS_BASE.i7 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3723)
  %3724 = bitcast i64* %CS_BASE.i8 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3724)
  %3725 = bitcast %struct.State** %STATE.i9 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3725)
  %3726 = bitcast %struct.Memory** %MEMORY.i10 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3726)
  %3727 = bitcast i64** %_DR0.i11 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3727)
  %3728 = bitcast i64** %_DR1.i12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3728)
  %3729 = bitcast i64** %_DR2.i13 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3729)
  %3730 = bitcast i64** %_DR3.i14 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3730)
  %3731 = bitcast i64** %_DR4.i15 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3731)
  %3732 = bitcast i64** %_DR5.i16 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3732)
  %3733 = bitcast i64** %_DR6.i17 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3733)
  %3734 = bitcast i64** %_DR7.i18 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3734)
  %3735 = bitcast i64** %CR0.i19 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3735)
  %3736 = bitcast i64** %CR1.i20 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3736)
  %3737 = bitcast i64** %CR2.i21 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3737)
  %3738 = bitcast i64** %CR3.i22 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3738)
  %3739 = bitcast i64** %CR4.i23 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3739)
  %3740 = bitcast i64** %CR8.i24 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3740)
  store %struct.State* %0, %struct.State** %state.i1, align 8, !noalias !2457
  store i64 %3717, i64* %curr_pc.i2, align 8, !noalias !2457
  store %struct.Memory* %3613, %struct.Memory** %memory.i3, align 8, !noalias !2457
  store i8 0, i8* %BRANCH_TAKEN.i4, align 1, !noalias !2457
  store i64 0, i64* %SS_BASE.i5, align 8, !noalias !2457
  store i64 0, i64* %ES_BASE.i6, align 8, !noalias !2457
  store i64 0, i64* %DS_BASE.i7, align 8, !noalias !2457
  store i64 0, i64* %CS_BASE.i8, align 8, !noalias !2457
  store %struct.State* %0, %struct.State** %STATE.i9, align 8, !noalias !2457
  store %struct.Memory* %3613, %struct.Memory** %MEMORY.i10, align 8, !noalias !2457
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3742 = getelementptr inbounds %struct.GPR, %struct.GPR* %3741, i32 0, i32 33
  %3743 = getelementptr inbounds %struct.Reg, %struct.Reg* %3742, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3743 to i64*
  store i64 %3717, i64* %PC.i25, align 8, !alias.scope !2461, !noalias !2462
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 1
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %3747 = bitcast %union.anon* %3746 to %struct.anon.2*
  %AH.i26 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3747, i32 0, i32 1
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 3
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %3751 = bitcast %union.anon* %3750 to %struct.anon.2*
  %BH.i27 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3751, i32 0, i32 1
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 5
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %3755 = bitcast %union.anon* %3754 to %struct.anon.2*
  %CH.i28 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3755, i32 0, i32 1
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3757 = getelementptr inbounds %struct.GPR, %struct.GPR* %3756, i32 0, i32 7
  %3758 = getelementptr inbounds %struct.Reg, %struct.Reg* %3757, i32 0, i32 0
  %3759 = bitcast %union.anon* %3758 to %struct.anon.2*
  %DH.i29 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3759, i32 0, i32 1
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 1
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %3763 = bitcast %union.anon* %3762 to %struct.anon.2*
  %AL.i30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3763, i32 0, i32 0
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3765 = getelementptr inbounds %struct.GPR, %struct.GPR* %3764, i32 0, i32 3
  %3766 = getelementptr inbounds %struct.Reg, %struct.Reg* %3765, i32 0, i32 0
  %3767 = bitcast %union.anon* %3766 to %struct.anon.2*
  %BL.i31 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3767, i32 0, i32 0
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 5
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %3771 = bitcast %union.anon* %3770 to %struct.anon.2*
  %CL.i32 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3771, i32 0, i32 0
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 7
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %3775 = bitcast %union.anon* %3774 to %struct.anon.2*
  %DL.i33 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3775, i32 0, i32 0
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 9
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %3779 = bitcast %union.anon* %3778 to %struct.anon.2*
  %SIL.i34 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3779, i32 0, i32 0
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3781 = getelementptr inbounds %struct.GPR, %struct.GPR* %3780, i32 0, i32 11
  %3782 = getelementptr inbounds %struct.Reg, %struct.Reg* %3781, i32 0, i32 0
  %3783 = bitcast %union.anon* %3782 to %struct.anon.2*
  %DIL.i35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3783, i32 0, i32 0
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 13
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %3787 = bitcast %union.anon* %3786 to %struct.anon.2*
  %SPL.i36 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3787, i32 0, i32 0
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 15
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %3791 = bitcast %union.anon* %3790 to %struct.anon.2*
  %BPL.i37 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3791, i32 0, i32 0
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 17
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %3795 = bitcast %union.anon* %3794 to %struct.anon.2*
  %R8B.i38 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3795, i32 0, i32 0
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3797 = getelementptr inbounds %struct.GPR, %struct.GPR* %3796, i32 0, i32 19
  %3798 = getelementptr inbounds %struct.Reg, %struct.Reg* %3797, i32 0, i32 0
  %3799 = bitcast %union.anon* %3798 to %struct.anon.2*
  %R9B.i39 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3799, i32 0, i32 0
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 21
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %3803 = bitcast %union.anon* %3802 to %struct.anon.2*
  %R10B.i40 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3803, i32 0, i32 0
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 23
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %3807 = bitcast %union.anon* %3806 to %struct.anon.2*
  %R11B.i41 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3807, i32 0, i32 0
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 25
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %3811 = bitcast %union.anon* %3810 to %struct.anon.2*
  %R12B.i42 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3811, i32 0, i32 0
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 27
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %3815 = bitcast %union.anon* %3814 to %struct.anon.2*
  %R13B.i43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3815, i32 0, i32 0
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 29
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %3819 = bitcast %union.anon* %3818 to %struct.anon.2*
  %R14B.i44 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3819, i32 0, i32 0
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3821 = getelementptr inbounds %struct.GPR, %struct.GPR* %3820, i32 0, i32 31
  %3822 = getelementptr inbounds %struct.Reg, %struct.Reg* %3821, i32 0, i32 0
  %3823 = bitcast %union.anon* %3822 to %struct.anon.2*
  %R15B.i45 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3823, i32 0, i32 0
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3825 = getelementptr inbounds %struct.GPR, %struct.GPR* %3824, i32 0, i32 1
  %3826 = getelementptr inbounds %struct.Reg, %struct.Reg* %3825, i32 0, i32 0
  %AX.i46 = bitcast %union.anon* %3826 to i16*
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3828 = getelementptr inbounds %struct.GPR, %struct.GPR* %3827, i32 0, i32 3
  %3829 = getelementptr inbounds %struct.Reg, %struct.Reg* %3828, i32 0, i32 0
  %BX.i47 = bitcast %union.anon* %3829 to i16*
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 5
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %CX.i48 = bitcast %union.anon* %3832 to i16*
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 7
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %DX.i49 = bitcast %union.anon* %3835 to i16*
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 9
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %SI.i50 = bitcast %union.anon* %3838 to i16*
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 11
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %DI.i51 = bitcast %union.anon* %3841 to i16*
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 13
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %SP.i52 = bitcast %union.anon* %3844 to i16*
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 15
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %BP.i53 = bitcast %union.anon* %3847 to i16*
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 17
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %R8W.i54 = bitcast %union.anon* %3850 to i16*
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 19
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %R9W.i55 = bitcast %union.anon* %3853 to i16*
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 21
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %R10W.i56 = bitcast %union.anon* %3856 to i16*
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3858 = getelementptr inbounds %struct.GPR, %struct.GPR* %3857, i32 0, i32 23
  %3859 = getelementptr inbounds %struct.Reg, %struct.Reg* %3858, i32 0, i32 0
  %R11W.i57 = bitcast %union.anon* %3859 to i16*
  %3860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3861 = getelementptr inbounds %struct.GPR, %struct.GPR* %3860, i32 0, i32 25
  %3862 = getelementptr inbounds %struct.Reg, %struct.Reg* %3861, i32 0, i32 0
  %R12W.i58 = bitcast %union.anon* %3862 to i16*
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 27
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %R13W.i59 = bitcast %union.anon* %3865 to i16*
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 29
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %R14W.i60 = bitcast %union.anon* %3868 to i16*
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3870 = getelementptr inbounds %struct.GPR, %struct.GPR* %3869, i32 0, i32 31
  %3871 = getelementptr inbounds %struct.Reg, %struct.Reg* %3870, i32 0, i32 0
  %R15W.i61 = bitcast %union.anon* %3871 to i16*
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3873 = getelementptr inbounds %struct.GPR, %struct.GPR* %3872, i32 0, i32 33
  %3874 = getelementptr inbounds %struct.Reg, %struct.Reg* %3873, i32 0, i32 0
  %IP.i62 = bitcast %union.anon* %3874 to i16*
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3876 = getelementptr inbounds %struct.GPR, %struct.GPR* %3875, i32 0, i32 1
  %3877 = getelementptr inbounds %struct.Reg, %struct.Reg* %3876, i32 0, i32 0
  %EAX.i63 = bitcast %union.anon* %3877 to i32*
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 3
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %EBX.i64 = bitcast %union.anon* %3880 to i32*
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 5
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %ECX.i65 = bitcast %union.anon* %3883 to i32*
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3885 = getelementptr inbounds %struct.GPR, %struct.GPR* %3884, i32 0, i32 7
  %3886 = getelementptr inbounds %struct.Reg, %struct.Reg* %3885, i32 0, i32 0
  %EDX.i66 = bitcast %union.anon* %3886 to i32*
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3888 = getelementptr inbounds %struct.GPR, %struct.GPR* %3887, i32 0, i32 9
  %3889 = getelementptr inbounds %struct.Reg, %struct.Reg* %3888, i32 0, i32 0
  %ESI.i67 = bitcast %union.anon* %3889 to i32*
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 11
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %EDI.i68 = bitcast %union.anon* %3892 to i32*
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 13
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %ESP.i69 = bitcast %union.anon* %3895 to i32*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 15
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %EBP.i70 = bitcast %union.anon* %3898 to i32*
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 33
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %EIP.i71 = bitcast %union.anon* %3901 to i32*
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 17
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %R8D.i72 = bitcast %union.anon* %3904 to i32*
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 19
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %R9D.i73 = bitcast %union.anon* %3907 to i32*
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 21
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %R10D.i74 = bitcast %union.anon* %3910 to i32*
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3912 = getelementptr inbounds %struct.GPR, %struct.GPR* %3911, i32 0, i32 23
  %3913 = getelementptr inbounds %struct.Reg, %struct.Reg* %3912, i32 0, i32 0
  %R11D.i75 = bitcast %union.anon* %3913 to i32*
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3915 = getelementptr inbounds %struct.GPR, %struct.GPR* %3914, i32 0, i32 25
  %3916 = getelementptr inbounds %struct.Reg, %struct.Reg* %3915, i32 0, i32 0
  %R12D.i76 = bitcast %union.anon* %3916 to i32*
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 27
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %R13D.i77 = bitcast %union.anon* %3919 to i32*
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 29
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %R14D.i78 = bitcast %union.anon* %3922 to i32*
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 31
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %R15D.i79 = bitcast %union.anon* %3925 to i32*
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 1
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %3928 to i64*
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 3
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %RBX.i81 = bitcast %union.anon* %3931 to i64*
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 5
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %3934 to i64*
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 7
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %RDX.i83 = bitcast %union.anon* %3937 to i64*
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 9
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %RSI.i84 = bitcast %union.anon* %3940 to i64*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 11
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %RDI.i85 = bitcast %union.anon* %3943 to i64*
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 13
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %RSP.i86 = bitcast %union.anon* %3946 to i64*
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3948 = getelementptr inbounds %struct.GPR, %struct.GPR* %3947, i32 0, i32 15
  %3949 = getelementptr inbounds %struct.Reg, %struct.Reg* %3948, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %3949 to i64*
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3951 = getelementptr inbounds %struct.GPR, %struct.GPR* %3950, i32 0, i32 17
  %3952 = getelementptr inbounds %struct.Reg, %struct.Reg* %3951, i32 0, i32 0
  %R8.i88 = bitcast %union.anon* %3952 to i64*
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3954 = getelementptr inbounds %struct.GPR, %struct.GPR* %3953, i32 0, i32 19
  %3955 = getelementptr inbounds %struct.Reg, %struct.Reg* %3954, i32 0, i32 0
  %R9.i89 = bitcast %union.anon* %3955 to i64*
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 21
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %R10.i90 = bitcast %union.anon* %3958 to i64*
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 23
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %R11.i91 = bitcast %union.anon* %3961 to i64*
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3963 = getelementptr inbounds %struct.GPR, %struct.GPR* %3962, i32 0, i32 25
  %3964 = getelementptr inbounds %struct.Reg, %struct.Reg* %3963, i32 0, i32 0
  %R12.i92 = bitcast %union.anon* %3964 to i64*
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 27
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %R13.i93 = bitcast %union.anon* %3967 to i64*
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 29
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %R14.i94 = bitcast %union.anon* %3970 to i64*
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3972 = getelementptr inbounds %struct.GPR, %struct.GPR* %3971, i32 0, i32 31
  %3973 = getelementptr inbounds %struct.Reg, %struct.Reg* %3972, i32 0, i32 0
  %R15.i95 = bitcast %union.anon* %3973 to i64*
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3975 = getelementptr inbounds %struct.GPR, %struct.GPR* %3974, i32 0, i32 33
  %3976 = getelementptr inbounds %struct.Reg, %struct.Reg* %3975, i32 0, i32 0
  %RIP.i96 = bitcast %union.anon* %3976 to i64*
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %3978 = getelementptr inbounds %struct.Segments, %struct.Segments* %3977, i32 0, i32 1
  %SS.i97 = bitcast %union.SegmentSelector* %3978 to i16*
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %3980 = getelementptr inbounds %struct.Segments, %struct.Segments* %3979, i32 0, i32 3
  %ES.i98 = bitcast %union.SegmentSelector* %3980 to i16*
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %3982 = getelementptr inbounds %struct.Segments, %struct.Segments* %3981, i32 0, i32 5
  %GS.i99 = bitcast %union.SegmentSelector* %3982 to i16*
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %3984 = getelementptr inbounds %struct.Segments, %struct.Segments* %3983, i32 0, i32 7
  %FS.i100 = bitcast %union.SegmentSelector* %3984 to i16*
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %3986 = getelementptr inbounds %struct.Segments, %struct.Segments* %3985, i32 0, i32 9
  %DS.i101 = bitcast %union.SegmentSelector* %3986 to i16*
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %3988 = getelementptr inbounds %struct.Segments, %struct.Segments* %3987, i32 0, i32 11
  %CS.i102 = bitcast %union.SegmentSelector* %3988 to i16*
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %3990 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %3989, i32 0, i32 5
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %GS_BASE.i103 = bitcast %union.anon* %3991 to i64*
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %3993 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %3992, i32 0, i32 7
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %FS_BASE.i104 = bitcast %union.anon* %3994 to i64*
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3996 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3995, i64 0, i64 0
  %YMM0.i105 = bitcast %union.VectorReg* %3996 to %"class.std::bitset"*
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3998 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3997, i64 0, i64 1
  %YMM1.i106 = bitcast %union.VectorReg* %3998 to %"class.std::bitset"*
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4000 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3999, i64 0, i64 2
  %YMM2.i107 = bitcast %union.VectorReg* %4000 to %"class.std::bitset"*
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4002 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4001, i64 0, i64 3
  %YMM3.i108 = bitcast %union.VectorReg* %4002 to %"class.std::bitset"*
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4004 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4003, i64 0, i64 4
  %YMM4.i109 = bitcast %union.VectorReg* %4004 to %"class.std::bitset"*
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4006 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4005, i64 0, i64 5
  %YMM5.i110 = bitcast %union.VectorReg* %4006 to %"class.std::bitset"*
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4008 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4007, i64 0, i64 6
  %YMM6.i111 = bitcast %union.VectorReg* %4008 to %"class.std::bitset"*
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4010 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4009, i64 0, i64 7
  %YMM7.i112 = bitcast %union.VectorReg* %4010 to %"class.std::bitset"*
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4012 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4011, i64 0, i64 8
  %YMM8.i113 = bitcast %union.VectorReg* %4012 to %"class.std::bitset"*
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4014 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4013, i64 0, i64 9
  %YMM9.i114 = bitcast %union.VectorReg* %4014 to %"class.std::bitset"*
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4016 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4015, i64 0, i64 10
  %YMM10.i115 = bitcast %union.VectorReg* %4016 to %"class.std::bitset"*
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4018 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4017, i64 0, i64 11
  %YMM11.i116 = bitcast %union.VectorReg* %4018 to %"class.std::bitset"*
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4020 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4019, i64 0, i64 12
  %YMM12.i117 = bitcast %union.VectorReg* %4020 to %"class.std::bitset"*
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4022 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4021, i64 0, i64 13
  %YMM13.i118 = bitcast %union.VectorReg* %4022 to %"class.std::bitset"*
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4024 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4023, i64 0, i64 14
  %YMM14.i119 = bitcast %union.VectorReg* %4024 to %"class.std::bitset"*
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4026 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4025, i64 0, i64 15
  %YMM15.i120 = bitcast %union.VectorReg* %4026 to %"class.std::bitset"*
  %4027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4028 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4027, i64 0, i64 0
  %XMM0.i121 = bitcast %union.VectorReg* %4028 to %union.vec128_t*
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4030 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4029, i64 0, i64 1
  %XMM1.i122 = bitcast %union.VectorReg* %4030 to %union.vec128_t*
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4032 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4031, i64 0, i64 2
  %XMM2.i123 = bitcast %union.VectorReg* %4032 to %union.vec128_t*
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4034 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4033, i64 0, i64 3
  %XMM3.i124 = bitcast %union.VectorReg* %4034 to %union.vec128_t*
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4036 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4035, i64 0, i64 4
  %XMM4.i125 = bitcast %union.VectorReg* %4036 to %union.vec128_t*
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4038 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4037, i64 0, i64 5
  %XMM5.i126 = bitcast %union.VectorReg* %4038 to %union.vec128_t*
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4040 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4039, i64 0, i64 6
  %XMM6.i127 = bitcast %union.VectorReg* %4040 to %union.vec128_t*
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4042 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4041, i64 0, i64 7
  %XMM7.i128 = bitcast %union.VectorReg* %4042 to %union.vec128_t*
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4044 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4043, i64 0, i64 8
  %XMM8.i129 = bitcast %union.VectorReg* %4044 to %union.vec128_t*
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4046 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4045, i64 0, i64 9
  %XMM9.i130 = bitcast %union.VectorReg* %4046 to %union.vec128_t*
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4048 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4047, i64 0, i64 10
  %XMM10.i131 = bitcast %union.VectorReg* %4048 to %union.vec128_t*
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4050 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4049, i64 0, i64 11
  %XMM11.i132 = bitcast %union.VectorReg* %4050 to %union.vec128_t*
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4052 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4051, i64 0, i64 12
  %XMM12.i133 = bitcast %union.VectorReg* %4052 to %union.vec128_t*
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4054 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4053, i64 0, i64 13
  %XMM13.i134 = bitcast %union.VectorReg* %4054 to %union.vec128_t*
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4056 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4055, i64 0, i64 14
  %XMM14.i135 = bitcast %union.VectorReg* %4056 to %union.vec128_t*
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4058 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4057, i64 0, i64 15
  %XMM15.i136 = bitcast %union.VectorReg* %4058 to %union.vec128_t*
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4060 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4059, i32 0, i32 0
  %4061 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4060, i64 0, i64 0
  %ST0.i137 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4061, i32 0, i32 1
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4063 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4062, i32 0, i32 0
  %4064 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4063, i64 0, i64 1
  %ST1.i138 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4064, i32 0, i32 1
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4066 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4065, i32 0, i32 0
  %4067 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4066, i64 0, i64 2
  %ST2.i139 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4067, i32 0, i32 1
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4069 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4068, i32 0, i32 0
  %4070 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4069, i64 0, i64 3
  %ST3.i140 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4070, i32 0, i32 1
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4072 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4071, i32 0, i32 0
  %4073 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4072, i64 0, i64 4
  %ST4.i141 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4073, i32 0, i32 1
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4075 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4074, i32 0, i32 0
  %4076 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4075, i64 0, i64 5
  %ST5.i142 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4076, i32 0, i32 1
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4078 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4077, i32 0, i32 0
  %4079 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4078, i64 0, i64 6
  %ST6.i143 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4079, i32 0, i32 1
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4081 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4080, i32 0, i32 0
  %4082 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4081, i64 0, i64 7
  %ST7.i144 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4082, i32 0, i32 1
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4084 = getelementptr inbounds %struct.MMX, %struct.MMX* %4083, i32 0, i32 0
  %4085 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4084, i64 0, i64 0
  %4086 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4085, i32 0, i32 1
  %4087 = bitcast %union.vec64_t* %4086 to %struct.uint64v1_t*
  %4088 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4087, i32 0, i32 0
  %MM0.i145 = getelementptr inbounds [1 x i64], [1 x i64]* %4088, i64 0, i64 0
  %4089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4090 = getelementptr inbounds %struct.MMX, %struct.MMX* %4089, i32 0, i32 0
  %4091 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4090, i64 0, i64 1
  %4092 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4091, i32 0, i32 1
  %4093 = bitcast %union.vec64_t* %4092 to %struct.uint64v1_t*
  %4094 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4093, i32 0, i32 0
  %MM1.i146 = getelementptr inbounds [1 x i64], [1 x i64]* %4094, i64 0, i64 0
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4096 = getelementptr inbounds %struct.MMX, %struct.MMX* %4095, i32 0, i32 0
  %4097 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4096, i64 0, i64 2
  %4098 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4097, i32 0, i32 1
  %4099 = bitcast %union.vec64_t* %4098 to %struct.uint64v1_t*
  %4100 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4099, i32 0, i32 0
  %MM2.i147 = getelementptr inbounds [1 x i64], [1 x i64]* %4100, i64 0, i64 0
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4102 = getelementptr inbounds %struct.MMX, %struct.MMX* %4101, i32 0, i32 0
  %4103 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4102, i64 0, i64 3
  %4104 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4103, i32 0, i32 1
  %4105 = bitcast %union.vec64_t* %4104 to %struct.uint64v1_t*
  %4106 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4105, i32 0, i32 0
  %MM3.i148 = getelementptr inbounds [1 x i64], [1 x i64]* %4106, i64 0, i64 0
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4108 = getelementptr inbounds %struct.MMX, %struct.MMX* %4107, i32 0, i32 0
  %4109 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4108, i64 0, i64 4
  %4110 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4109, i32 0, i32 1
  %4111 = bitcast %union.vec64_t* %4110 to %struct.uint64v1_t*
  %4112 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4111, i32 0, i32 0
  %MM4.i149 = getelementptr inbounds [1 x i64], [1 x i64]* %4112, i64 0, i64 0
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4114 = getelementptr inbounds %struct.MMX, %struct.MMX* %4113, i32 0, i32 0
  %4115 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4114, i64 0, i64 5
  %4116 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4115, i32 0, i32 1
  %4117 = bitcast %union.vec64_t* %4116 to %struct.uint64v1_t*
  %4118 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4117, i32 0, i32 0
  %MM5.i150 = getelementptr inbounds [1 x i64], [1 x i64]* %4118, i64 0, i64 0
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4120 = getelementptr inbounds %struct.MMX, %struct.MMX* %4119, i32 0, i32 0
  %4121 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4120, i64 0, i64 6
  %4122 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4121, i32 0, i32 1
  %4123 = bitcast %union.vec64_t* %4122 to %struct.uint64v1_t*
  %4124 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4123, i32 0, i32 0
  %MM6.i151 = getelementptr inbounds [1 x i64], [1 x i64]* %4124, i64 0, i64 0
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4126 = getelementptr inbounds %struct.MMX, %struct.MMX* %4125, i32 0, i32 0
  %4127 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4126, i64 0, i64 7
  %4128 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4127, i32 0, i32 1
  %4129 = bitcast %union.vec64_t* %4128 to %struct.uint64v1_t*
  %4130 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4129, i32 0, i32 0
  %MM7.i152 = getelementptr inbounds [1 x i64], [1 x i64]* %4130, i64 0, i64 0
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %AF.i153 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4131, i32 0, i32 5
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %CF.i154 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4132, i32 0, i32 1
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %DF.i155 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4133, i32 0, i32 11
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %OF.i156 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4134, i32 0, i32 13
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %PF.i157 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4135, i32 0, i32 3
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %SF.i158 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4136, i32 0, i32 9
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %ZF.i159 = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4137, i32 0, i32 7
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
  %4138 = bitcast %"class.std::bitset"* %YMM0.i105 to double*
  %4139 = load double, double* %4138, !alias.scope !2461, !noalias !2462
  %4140 = load i64, i64* %RSP.i86, !alias.scope !2461, !noalias !2462
  %4141 = load %struct.Memory*, %struct.Memory** %MEMORY.i10, !noalias !2457
  %4142 = inttoptr i64 %4140 to i64*
  %4143 = load i64, i64* %4142
  store i64 %4143, i64* %PC.i25, !alias.scope !2461, !noalias !2462
  %4144 = add i64 %4140, 8
  store i64 %4144, i64* %RSP.i86, !alias.scope !2461, !noalias !2462
  %4145 = call double @sin(double %4139)
  store %"class.std::bitset" zeroinitializer, %"class.std::bitset"* %YMM0.i105, !alias.scope !2461, !noalias !2462
  %4146 = bitcast %"class.std::bitset"* %YMM0.i105 to double*
  store double %4145, double* %4146, !alias.scope !2461, !noalias !2462
  %4147 = load %struct.Memory*, %struct.Memory** %MEMORY.i10, !noalias !2457
  %4148 = bitcast %struct.State** %state.i1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4148)
  %4149 = bitcast i64* %curr_pc.i2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4149)
  %4150 = bitcast %struct.Memory** %memory.i3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4150)
  call void @llvm.lifetime.end(i64 1, i8* %BRANCH_TAKEN.i4)
  %4151 = bitcast i64* %SS_BASE.i5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4151)
  %4152 = bitcast i64* %ES_BASE.i6 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4152)
  %4153 = bitcast i64* %DS_BASE.i7 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4153)
  %4154 = bitcast i64* %CS_BASE.i8 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4154)
  %4155 = bitcast %struct.State** %STATE.i9 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4155)
  %4156 = bitcast %struct.Memory** %MEMORY.i10 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4156)
  %4157 = bitcast i64** %_DR0.i11 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4157)
  %4158 = bitcast i64** %_DR1.i12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4158)
  %4159 = bitcast i64** %_DR2.i13 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4159)
  %4160 = bitcast i64** %_DR3.i14 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4160)
  %4161 = bitcast i64** %_DR4.i15 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4161)
  %4162 = bitcast i64** %_DR5.i16 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4162)
  %4163 = bitcast i64** %_DR6.i17 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4163)
  %4164 = bitcast i64** %_DR7.i18 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4164)
  %4165 = bitcast i64** %CR0.i19 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4165)
  %4166 = bitcast i64** %CR1.i20 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4166)
  %4167 = bitcast i64** %CR2.i21 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4167)
  %4168 = bitcast i64** %CR3.i22 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4168)
  %4169 = bitcast i64** %CR4.i23 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4169)
  %4170 = bitcast i64** %CR8.i24 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4170)
  %4171 = load i64, i64* %RBP
  %4172 = sub i64 %4171, 160
  %4173 = bitcast %union.vec128_t* %XMM0 to i8*
  %4174 = load i64, i64* %PC
  %4175 = add i64 %4174, 8
  store i64 %4175, i64* %PC
  %4176 = bitcast i8* %4173 to double*
  %4177 = load double, double* %4176, align 1
  %4178 = inttoptr i64 %4172 to double*
  store double %4177, double* %4178
  %4179 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4180 = load i64, i64* %RBP
  %4181 = sub i64 %4180, 184
  %4182 = load i64, i64* %PC
  %4183 = add i64 %4182, 8
  store i64 %4183, i64* %PC
  %4184 = inttoptr i64 %4181 to double*
  %4185 = load double, double* %4184
  %4186 = bitcast i8* %4179 to double*
  store double %4185, double* %4186, align 1, !tbaa !2452
  %4187 = getelementptr inbounds i8, i8* %4179, i64 8
  %4188 = bitcast i8* %4187 to double*
  store double 0.000000e+00, double* %4188, align 1, !tbaa !2452
  %4189 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4190 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4191 = load i64, i64* %RBP
  %4192 = sub i64 %4191, 160
  %4193 = load i64, i64* %PC
  %4194 = add i64 %4193, 8
  store i64 %4194, i64* %PC
  %4195 = bitcast i8* %4190 to double*
  %4196 = load double, double* %4195, align 1
  %4197 = getelementptr inbounds i8, i8* %4190, i64 8
  %4198 = bitcast i8* %4197 to i64*
  %4199 = load i64, i64* %4198, align 1
  %4200 = inttoptr i64 %4192 to double*
  %4201 = load double, double* %4200
  %4202 = fmul double %4196, %4201
  %4203 = bitcast i8* %4189 to double*
  store double %4202, double* %4203, align 1, !tbaa !2452
  %4204 = getelementptr inbounds i8, i8* %4189, i64 8
  %4205 = bitcast i8* %4204 to i64*
  store i64 %4199, i64* %4205, align 1, !tbaa !2452
  %4206 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4207 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4208 = load i64, i64* %RBP
  %4209 = sub i64 %4208, 160
  %4210 = load i64, i64* %PC
  %4211 = add i64 %4210, 8
  store i64 %4211, i64* %PC
  %4212 = bitcast i8* %4207 to double*
  %4213 = load double, double* %4212, align 1
  %4214 = getelementptr inbounds i8, i8* %4207, i64 8
  %4215 = bitcast i8* %4214 to i64*
  %4216 = load i64, i64* %4215, align 1
  %4217 = inttoptr i64 %4209 to double*
  %4218 = load double, double* %4217
  %4219 = fmul double %4213, %4218
  %4220 = bitcast i8* %4206 to double*
  store double %4219, double* %4220, align 1, !tbaa !2452
  %4221 = getelementptr inbounds i8, i8* %4206, i64 8
  %4222 = bitcast i8* %4221 to i64*
  store i64 %4216, i64* %4222, align 1, !tbaa !2452
  %4223 = load i64, i64* %RBP
  %4224 = sub i64 %4223, 144
  %4225 = bitcast %union.vec128_t* %XMM0 to i8*
  %4226 = load i64, i64* %PC
  %4227 = add i64 %4226, 8
  store i64 %4227, i64* %PC
  %4228 = bitcast i8* %4225 to double*
  %4229 = load double, double* %4228, align 1
  %4230 = inttoptr i64 %4224 to double*
  store double %4229, double* %4230
  %4231 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4232 = load i64, i64* %RBP
  %4233 = sub i64 %4232, 120
  %4234 = load i64, i64* %PC
  %4235 = add i64 %4234, 5
  store i64 %4235, i64* %PC
  %4236 = inttoptr i64 %4233 to double*
  %4237 = load double, double* %4236
  %4238 = bitcast i8* %4231 to double*
  store double %4237, double* %4238, align 1, !tbaa !2452
  %4239 = getelementptr inbounds i8, i8* %4231, i64 8
  %4240 = bitcast i8* %4239 to double*
  store double 0.000000e+00, double* %4240, align 1, !tbaa !2452
  %4241 = load i64, i64* %PC
  %4242 = sub i64 %4241, 2229
  %4243 = load i64, i64* %PC
  %4244 = add i64 %4243, 5
  %4245 = load i64, i64* %PC
  %4246 = add i64 %4245, 5
  store i64 %4246, i64* %PC
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4248 = load i64, i64* %4247, align 8, !tbaa !2428
  %4249 = add i64 %4248, -8
  %4250 = inttoptr i64 %4249 to i64*
  store i64 %4244, i64* %4250
  store i64 %4249, i64* %4247, align 8, !tbaa !2428
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4242, i64* %4251, align 8, !tbaa !2428
  %4252 = load i64, i64* %PC
  %4253 = bitcast %struct.State** %state.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4253)
  %4254 = bitcast i64* %curr_pc.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4254)
  %4255 = bitcast %struct.Memory** %memory.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4255)
  call void @llvm.lifetime.start(i64 1, i8* %BRANCH_TAKEN.i)
  %4256 = bitcast i64* %SS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4256)
  %4257 = bitcast i64* %ES_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4257)
  %4258 = bitcast i64* %DS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4258)
  %4259 = bitcast i64* %CS_BASE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4259)
  %4260 = bitcast %struct.State** %STATE.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4260)
  %4261 = bitcast %struct.Memory** %MEMORY.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4261)
  %4262 = bitcast i64** %_DR0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4262)
  %4263 = bitcast i64** %_DR1.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4263)
  %4264 = bitcast i64** %_DR2.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4264)
  %4265 = bitcast i64** %_DR3.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4265)
  %4266 = bitcast i64** %_DR4.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4266)
  %4267 = bitcast i64** %_DR5.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4267)
  %4268 = bitcast i64** %_DR6.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4268)
  %4269 = bitcast i64** %_DR7.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4269)
  %4270 = bitcast i64** %CR0.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4270)
  %4271 = bitcast i64** %CR1.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4271)
  %4272 = bitcast i64** %CR2.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4272)
  %4273 = bitcast i64** %CR3.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4273)
  %4274 = bitcast i64** %CR4.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4274)
  %4275 = bitcast i64** %CR8.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4275)
  store %struct.State* %0, %struct.State** %state.i, align 8, !noalias !2463
  store i64 %4252, i64* %curr_pc.i, align 8, !noalias !2463
  store %struct.Memory* %4147, %struct.Memory** %memory.i, align 8, !noalias !2463
  store i8 0, i8* %BRANCH_TAKEN.i, align 1, !noalias !2463
  store i64 0, i64* %SS_BASE.i, align 8, !noalias !2463
  store i64 0, i64* %ES_BASE.i, align 8, !noalias !2463
  store i64 0, i64* %DS_BASE.i, align 8, !noalias !2463
  store i64 0, i64* %CS_BASE.i, align 8, !noalias !2463
  store %struct.State* %0, %struct.State** %STATE.i, align 8, !noalias !2463
  store %struct.Memory* %4147, %struct.Memory** %MEMORY.i, align 8, !noalias !2463
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4277 = getelementptr inbounds %struct.GPR, %struct.GPR* %4276, i32 0, i32 33
  %4278 = getelementptr inbounds %struct.Reg, %struct.Reg* %4277, i32 0, i32 0
  %PC.i = bitcast %union.anon* %4278 to i64*
  store i64 %4252, i64* %PC.i, align 8, !alias.scope !2467, !noalias !2468
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 1
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %4282 = bitcast %union.anon* %4281 to %struct.anon.2*
  %AH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4282, i32 0, i32 1
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4284 = getelementptr inbounds %struct.GPR, %struct.GPR* %4283, i32 0, i32 3
  %4285 = getelementptr inbounds %struct.Reg, %struct.Reg* %4284, i32 0, i32 0
  %4286 = bitcast %union.anon* %4285 to %struct.anon.2*
  %BH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4286, i32 0, i32 1
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 5
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %4290 = bitcast %union.anon* %4289 to %struct.anon.2*
  %CH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4290, i32 0, i32 1
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4292 = getelementptr inbounds %struct.GPR, %struct.GPR* %4291, i32 0, i32 7
  %4293 = getelementptr inbounds %struct.Reg, %struct.Reg* %4292, i32 0, i32 0
  %4294 = bitcast %union.anon* %4293 to %struct.anon.2*
  %DH.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4294, i32 0, i32 1
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 1
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %4298 = bitcast %union.anon* %4297 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4298, i32 0, i32 0
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4300 = getelementptr inbounds %struct.GPR, %struct.GPR* %4299, i32 0, i32 3
  %4301 = getelementptr inbounds %struct.Reg, %struct.Reg* %4300, i32 0, i32 0
  %4302 = bitcast %union.anon* %4301 to %struct.anon.2*
  %BL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4302, i32 0, i32 0
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 5
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %4306 = bitcast %union.anon* %4305 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4306, i32 0, i32 0
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 7
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %4310 = bitcast %union.anon* %4309 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4310, i32 0, i32 0
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4312 = getelementptr inbounds %struct.GPR, %struct.GPR* %4311, i32 0, i32 9
  %4313 = getelementptr inbounds %struct.Reg, %struct.Reg* %4312, i32 0, i32 0
  %4314 = bitcast %union.anon* %4313 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4314, i32 0, i32 0
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 11
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %4318 = bitcast %union.anon* %4317 to %struct.anon.2*
  %DIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4318, i32 0, i32 0
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 13
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %4322 = bitcast %union.anon* %4321 to %struct.anon.2*
  %SPL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4322, i32 0, i32 0
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 15
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %4326 = bitcast %union.anon* %4325 to %struct.anon.2*
  %BPL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4326, i32 0, i32 0
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 17
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %4330 = bitcast %union.anon* %4329 to %struct.anon.2*
  %R8B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4330, i32 0, i32 0
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 19
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %4334 = bitcast %union.anon* %4333 to %struct.anon.2*
  %R9B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4334, i32 0, i32 0
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4336 = getelementptr inbounds %struct.GPR, %struct.GPR* %4335, i32 0, i32 21
  %4337 = getelementptr inbounds %struct.Reg, %struct.Reg* %4336, i32 0, i32 0
  %4338 = bitcast %union.anon* %4337 to %struct.anon.2*
  %R10B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4338, i32 0, i32 0
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 23
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %4342 = bitcast %union.anon* %4341 to %struct.anon.2*
  %R11B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4342, i32 0, i32 0
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4344 = getelementptr inbounds %struct.GPR, %struct.GPR* %4343, i32 0, i32 25
  %4345 = getelementptr inbounds %struct.Reg, %struct.Reg* %4344, i32 0, i32 0
  %4346 = bitcast %union.anon* %4345 to %struct.anon.2*
  %R12B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4346, i32 0, i32 0
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 27
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %4350 = bitcast %union.anon* %4349 to %struct.anon.2*
  %R13B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4350, i32 0, i32 0
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 29
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %4354 = bitcast %union.anon* %4353 to %struct.anon.2*
  %R14B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4354, i32 0, i32 0
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 31
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %4358 = bitcast %union.anon* %4357 to %struct.anon.2*
  %R15B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4358, i32 0, i32 0
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 1
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %AX.i = bitcast %union.anon* %4361 to i16*
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 3
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %BX.i = bitcast %union.anon* %4364 to i16*
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 5
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %CX.i = bitcast %union.anon* %4367 to i16*
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 7
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %DX.i = bitcast %union.anon* %4370 to i16*
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 9
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %SI.i = bitcast %union.anon* %4373 to i16*
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4375 = getelementptr inbounds %struct.GPR, %struct.GPR* %4374, i32 0, i32 11
  %4376 = getelementptr inbounds %struct.Reg, %struct.Reg* %4375, i32 0, i32 0
  %DI.i = bitcast %union.anon* %4376 to i16*
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4378 = getelementptr inbounds %struct.GPR, %struct.GPR* %4377, i32 0, i32 13
  %4379 = getelementptr inbounds %struct.Reg, %struct.Reg* %4378, i32 0, i32 0
  %SP.i = bitcast %union.anon* %4379 to i16*
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4381 = getelementptr inbounds %struct.GPR, %struct.GPR* %4380, i32 0, i32 15
  %4382 = getelementptr inbounds %struct.Reg, %struct.Reg* %4381, i32 0, i32 0
  %BP.i = bitcast %union.anon* %4382 to i16*
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4384 = getelementptr inbounds %struct.GPR, %struct.GPR* %4383, i32 0, i32 17
  %4385 = getelementptr inbounds %struct.Reg, %struct.Reg* %4384, i32 0, i32 0
  %R8W.i = bitcast %union.anon* %4385 to i16*
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4387 = getelementptr inbounds %struct.GPR, %struct.GPR* %4386, i32 0, i32 19
  %4388 = getelementptr inbounds %struct.Reg, %struct.Reg* %4387, i32 0, i32 0
  %R9W.i = bitcast %union.anon* %4388 to i16*
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 21
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %R10W.i = bitcast %union.anon* %4391 to i16*
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 23
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %R11W.i = bitcast %union.anon* %4394 to i16*
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 25
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %R12W.i = bitcast %union.anon* %4397 to i16*
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4399 = getelementptr inbounds %struct.GPR, %struct.GPR* %4398, i32 0, i32 27
  %4400 = getelementptr inbounds %struct.Reg, %struct.Reg* %4399, i32 0, i32 0
  %R13W.i = bitcast %union.anon* %4400 to i16*
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4402 = getelementptr inbounds %struct.GPR, %struct.GPR* %4401, i32 0, i32 29
  %4403 = getelementptr inbounds %struct.Reg, %struct.Reg* %4402, i32 0, i32 0
  %R14W.i = bitcast %union.anon* %4403 to i16*
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 31
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %R15W.i = bitcast %union.anon* %4406 to i16*
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4408 = getelementptr inbounds %struct.GPR, %struct.GPR* %4407, i32 0, i32 33
  %4409 = getelementptr inbounds %struct.Reg, %struct.Reg* %4408, i32 0, i32 0
  %IP.i = bitcast %union.anon* %4409 to i16*
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4411 = getelementptr inbounds %struct.GPR, %struct.GPR* %4410, i32 0, i32 1
  %4412 = getelementptr inbounds %struct.Reg, %struct.Reg* %4411, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4412 to i32*
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4414 = getelementptr inbounds %struct.GPR, %struct.GPR* %4413, i32 0, i32 3
  %4415 = getelementptr inbounds %struct.Reg, %struct.Reg* %4414, i32 0, i32 0
  %EBX.i = bitcast %union.anon* %4415 to i32*
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4417 = getelementptr inbounds %struct.GPR, %struct.GPR* %4416, i32 0, i32 5
  %4418 = getelementptr inbounds %struct.Reg, %struct.Reg* %4417, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4418 to i32*
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4420 = getelementptr inbounds %struct.GPR, %struct.GPR* %4419, i32 0, i32 7
  %4421 = getelementptr inbounds %struct.Reg, %struct.Reg* %4420, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4421 to i32*
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4423 = getelementptr inbounds %struct.GPR, %struct.GPR* %4422, i32 0, i32 9
  %4424 = getelementptr inbounds %struct.Reg, %struct.Reg* %4423, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %4424 to i32*
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4426 = getelementptr inbounds %struct.GPR, %struct.GPR* %4425, i32 0, i32 11
  %4427 = getelementptr inbounds %struct.Reg, %struct.Reg* %4426, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %4427 to i32*
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4429 = getelementptr inbounds %struct.GPR, %struct.GPR* %4428, i32 0, i32 13
  %4430 = getelementptr inbounds %struct.Reg, %struct.Reg* %4429, i32 0, i32 0
  %ESP.i = bitcast %union.anon* %4430 to i32*
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4432 = getelementptr inbounds %struct.GPR, %struct.GPR* %4431, i32 0, i32 15
  %4433 = getelementptr inbounds %struct.Reg, %struct.Reg* %4432, i32 0, i32 0
  %EBP.i = bitcast %union.anon* %4433 to i32*
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4435 = getelementptr inbounds %struct.GPR, %struct.GPR* %4434, i32 0, i32 33
  %4436 = getelementptr inbounds %struct.Reg, %struct.Reg* %4435, i32 0, i32 0
  %EIP.i = bitcast %union.anon* %4436 to i32*
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4438 = getelementptr inbounds %struct.GPR, %struct.GPR* %4437, i32 0, i32 17
  %4439 = getelementptr inbounds %struct.Reg, %struct.Reg* %4438, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %4439 to i32*
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4441 = getelementptr inbounds %struct.GPR, %struct.GPR* %4440, i32 0, i32 19
  %4442 = getelementptr inbounds %struct.Reg, %struct.Reg* %4441, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %4442 to i32*
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4444 = getelementptr inbounds %struct.GPR, %struct.GPR* %4443, i32 0, i32 21
  %4445 = getelementptr inbounds %struct.Reg, %struct.Reg* %4444, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %4445 to i32*
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4447 = getelementptr inbounds %struct.GPR, %struct.GPR* %4446, i32 0, i32 23
  %4448 = getelementptr inbounds %struct.Reg, %struct.Reg* %4447, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %4448 to i32*
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4450 = getelementptr inbounds %struct.GPR, %struct.GPR* %4449, i32 0, i32 25
  %4451 = getelementptr inbounds %struct.Reg, %struct.Reg* %4450, i32 0, i32 0
  %R12D.i = bitcast %union.anon* %4451 to i32*
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4453 = getelementptr inbounds %struct.GPR, %struct.GPR* %4452, i32 0, i32 27
  %4454 = getelementptr inbounds %struct.Reg, %struct.Reg* %4453, i32 0, i32 0
  %R13D.i = bitcast %union.anon* %4454 to i32*
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4456 = getelementptr inbounds %struct.GPR, %struct.GPR* %4455, i32 0, i32 29
  %4457 = getelementptr inbounds %struct.Reg, %struct.Reg* %4456, i32 0, i32 0
  %R14D.i = bitcast %union.anon* %4457 to i32*
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4459 = getelementptr inbounds %struct.GPR, %struct.GPR* %4458, i32 0, i32 31
  %4460 = getelementptr inbounds %struct.Reg, %struct.Reg* %4459, i32 0, i32 0
  %R15D.i = bitcast %union.anon* %4460 to i32*
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 1
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4463 to i64*
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 3
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %4466 to i64*
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 5
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4469 to i64*
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 7
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4472 to i64*
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 9
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4475 to i64*
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4477 = getelementptr inbounds %struct.GPR, %struct.GPR* %4476, i32 0, i32 11
  %4478 = getelementptr inbounds %struct.Reg, %struct.Reg* %4477, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4478 to i64*
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4480 = getelementptr inbounds %struct.GPR, %struct.GPR* %4479, i32 0, i32 13
  %4481 = getelementptr inbounds %struct.Reg, %struct.Reg* %4480, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4481 to i64*
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4483 = getelementptr inbounds %struct.GPR, %struct.GPR* %4482, i32 0, i32 15
  %4484 = getelementptr inbounds %struct.Reg, %struct.Reg* %4483, i32 0, i32 0
  %RBP.i = bitcast %union.anon* %4484 to i64*
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4486 = getelementptr inbounds %struct.GPR, %struct.GPR* %4485, i32 0, i32 17
  %4487 = getelementptr inbounds %struct.Reg, %struct.Reg* %4486, i32 0, i32 0
  %R8.i = bitcast %union.anon* %4487 to i64*
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4489 = getelementptr inbounds %struct.GPR, %struct.GPR* %4488, i32 0, i32 19
  %4490 = getelementptr inbounds %struct.Reg, %struct.Reg* %4489, i32 0, i32 0
  %R9.i = bitcast %union.anon* %4490 to i64*
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4492 = getelementptr inbounds %struct.GPR, %struct.GPR* %4491, i32 0, i32 21
  %4493 = getelementptr inbounds %struct.Reg, %struct.Reg* %4492, i32 0, i32 0
  %R10.i = bitcast %union.anon* %4493 to i64*
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 23
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %R11.i = bitcast %union.anon* %4496 to i64*
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 25
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %R12.i = bitcast %union.anon* %4499 to i64*
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4501 = getelementptr inbounds %struct.GPR, %struct.GPR* %4500, i32 0, i32 27
  %4502 = getelementptr inbounds %struct.Reg, %struct.Reg* %4501, i32 0, i32 0
  %R13.i = bitcast %union.anon* %4502 to i64*
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 29
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %R14.i = bitcast %union.anon* %4505 to i64*
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 31
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %R15.i = bitcast %union.anon* %4508 to i64*
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 33
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %RIP.i = bitcast %union.anon* %4511 to i64*
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4513 = getelementptr inbounds %struct.Segments, %struct.Segments* %4512, i32 0, i32 1
  %SS.i = bitcast %union.SegmentSelector* %4513 to i16*
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4515 = getelementptr inbounds %struct.Segments, %struct.Segments* %4514, i32 0, i32 3
  %ES.i = bitcast %union.SegmentSelector* %4515 to i16*
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4517 = getelementptr inbounds %struct.Segments, %struct.Segments* %4516, i32 0, i32 5
  %GS.i = bitcast %union.SegmentSelector* %4517 to i16*
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4519 = getelementptr inbounds %struct.Segments, %struct.Segments* %4518, i32 0, i32 7
  %FS.i = bitcast %union.SegmentSelector* %4519 to i16*
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4521 = getelementptr inbounds %struct.Segments, %struct.Segments* %4520, i32 0, i32 9
  %DS.i = bitcast %union.SegmentSelector* %4521 to i16*
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 4
  %4523 = getelementptr inbounds %struct.Segments, %struct.Segments* %4522, i32 0, i32 11
  %CS.i = bitcast %union.SegmentSelector* %4523 to i16*
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %4525 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %4524, i32 0, i32 5
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %GS_BASE.i = bitcast %union.anon* %4526 to i64*
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 5
  %4528 = getelementptr inbounds %struct.AddressSpace, %struct.AddressSpace* %4527, i32 0, i32 7
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %FS_BASE.i = bitcast %union.anon* %4529 to i64*
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4531 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4530, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %4531 to %"class.std::bitset"*
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4533 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4532, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %4533 to %"class.std::bitset"*
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4535 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4534, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %4535 to %"class.std::bitset"*
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4537 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4536, i64 0, i64 3
  %YMM3.i = bitcast %union.VectorReg* %4537 to %"class.std::bitset"*
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4539 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4538, i64 0, i64 4
  %YMM4.i = bitcast %union.VectorReg* %4539 to %"class.std::bitset"*
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4541 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4540, i64 0, i64 5
  %YMM5.i = bitcast %union.VectorReg* %4541 to %"class.std::bitset"*
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4543 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4542, i64 0, i64 6
  %YMM6.i = bitcast %union.VectorReg* %4543 to %"class.std::bitset"*
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4545 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4544, i64 0, i64 7
  %YMM7.i = bitcast %union.VectorReg* %4545 to %"class.std::bitset"*
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4547 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4546, i64 0, i64 8
  %YMM8.i = bitcast %union.VectorReg* %4547 to %"class.std::bitset"*
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4549 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4548, i64 0, i64 9
  %YMM9.i = bitcast %union.VectorReg* %4549 to %"class.std::bitset"*
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4551 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4550, i64 0, i64 10
  %YMM10.i = bitcast %union.VectorReg* %4551 to %"class.std::bitset"*
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4553 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4552, i64 0, i64 11
  %YMM11.i = bitcast %union.VectorReg* %4553 to %"class.std::bitset"*
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4555 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4554, i64 0, i64 12
  %YMM12.i = bitcast %union.VectorReg* %4555 to %"class.std::bitset"*
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4557 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4556, i64 0, i64 13
  %YMM13.i = bitcast %union.VectorReg* %4557 to %"class.std::bitset"*
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4559 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4558, i64 0, i64 14
  %YMM14.i = bitcast %union.VectorReg* %4559 to %"class.std::bitset"*
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4561 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4560, i64 0, i64 15
  %YMM15.i = bitcast %union.VectorReg* %4561 to %"class.std::bitset"*
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4563 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4562, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %4563 to %union.vec128_t*
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4565 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4564, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4565 to %union.vec128_t*
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4567 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4566, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %4567 to %union.vec128_t*
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4569 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4568, i64 0, i64 3
  %XMM3.i = bitcast %union.VectorReg* %4569 to %union.vec128_t*
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4571 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4570, i64 0, i64 4
  %XMM4.i = bitcast %union.VectorReg* %4571 to %union.vec128_t*
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4573 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4572, i64 0, i64 5
  %XMM5.i = bitcast %union.VectorReg* %4573 to %union.vec128_t*
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4575 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4574, i64 0, i64 6
  %XMM6.i = bitcast %union.VectorReg* %4575 to %union.vec128_t*
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4577 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4576, i64 0, i64 7
  %XMM7.i = bitcast %union.VectorReg* %4577 to %union.vec128_t*
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4579 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4578, i64 0, i64 8
  %XMM8.i = bitcast %union.VectorReg* %4579 to %union.vec128_t*
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4581 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4580, i64 0, i64 9
  %XMM9.i = bitcast %union.VectorReg* %4581 to %union.vec128_t*
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4583 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4582, i64 0, i64 10
  %XMM10.i = bitcast %union.VectorReg* %4583 to %union.vec128_t*
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4585 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4584, i64 0, i64 11
  %XMM11.i = bitcast %union.VectorReg* %4585 to %union.vec128_t*
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4587 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4586, i64 0, i64 12
  %XMM12.i = bitcast %union.VectorReg* %4587 to %union.vec128_t*
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4589 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4588, i64 0, i64 13
  %XMM13.i = bitcast %union.VectorReg* %4589 to %union.vec128_t*
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4591 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4590, i64 0, i64 14
  %XMM14.i = bitcast %union.VectorReg* %4591 to %union.vec128_t*
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4593 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4592, i64 0, i64 15
  %XMM15.i = bitcast %union.VectorReg* %4593 to %union.vec128_t*
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4595 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4594, i32 0, i32 0
  %4596 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4595, i64 0, i64 0
  %ST0.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4596, i32 0, i32 1
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4598 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4597, i32 0, i32 0
  %4599 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4598, i64 0, i64 1
  %ST1.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4599, i32 0, i32 1
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4601 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4600, i32 0, i32 0
  %4602 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4601, i64 0, i64 2
  %ST2.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4602, i32 0, i32 1
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4604 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4603, i32 0, i32 0
  %4605 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4604, i64 0, i64 3
  %ST3.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4605, i32 0, i32 1
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4607 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4606, i32 0, i32 0
  %4608 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4607, i64 0, i64 4
  %ST4.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4608, i32 0, i32 1
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4610 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4609, i32 0, i32 0
  %4611 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4610, i64 0, i64 5
  %ST5.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4611, i32 0, i32 1
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4613 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4612, i32 0, i32 0
  %4614 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4613, i64 0, i64 6
  %ST6.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4614, i32 0, i32 1
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 7
  %4616 = getelementptr inbounds %struct.X87Stack, %struct.X87Stack* %4615, i32 0, i32 0
  %4617 = getelementptr inbounds [8 x %struct.anon.3], [8 x %struct.anon.3]* %4616, i64 0, i64 7
  %ST7.i = getelementptr inbounds %struct.anon.3, %struct.anon.3* %4617, i32 0, i32 1
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4619 = getelementptr inbounds %struct.MMX, %struct.MMX* %4618, i32 0, i32 0
  %4620 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4619, i64 0, i64 0
  %4621 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4620, i32 0, i32 1
  %4622 = bitcast %union.vec64_t* %4621 to %struct.uint64v1_t*
  %4623 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4622, i32 0, i32 0
  %MM0.i = getelementptr inbounds [1 x i64], [1 x i64]* %4623, i64 0, i64 0
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4625 = getelementptr inbounds %struct.MMX, %struct.MMX* %4624, i32 0, i32 0
  %4626 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4625, i64 0, i64 1
  %4627 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4626, i32 0, i32 1
  %4628 = bitcast %union.vec64_t* %4627 to %struct.uint64v1_t*
  %4629 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4628, i32 0, i32 0
  %MM1.i = getelementptr inbounds [1 x i64], [1 x i64]* %4629, i64 0, i64 0
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4631 = getelementptr inbounds %struct.MMX, %struct.MMX* %4630, i32 0, i32 0
  %4632 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4631, i64 0, i64 2
  %4633 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4632, i32 0, i32 1
  %4634 = bitcast %union.vec64_t* %4633 to %struct.uint64v1_t*
  %4635 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4634, i32 0, i32 0
  %MM2.i = getelementptr inbounds [1 x i64], [1 x i64]* %4635, i64 0, i64 0
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4637 = getelementptr inbounds %struct.MMX, %struct.MMX* %4636, i32 0, i32 0
  %4638 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4637, i64 0, i64 3
  %4639 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4638, i32 0, i32 1
  %4640 = bitcast %union.vec64_t* %4639 to %struct.uint64v1_t*
  %4641 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4640, i32 0, i32 0
  %MM3.i = getelementptr inbounds [1 x i64], [1 x i64]* %4641, i64 0, i64 0
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4643 = getelementptr inbounds %struct.MMX, %struct.MMX* %4642, i32 0, i32 0
  %4644 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4643, i64 0, i64 4
  %4645 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4644, i32 0, i32 1
  %4646 = bitcast %union.vec64_t* %4645 to %struct.uint64v1_t*
  %4647 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4646, i32 0, i32 0
  %MM4.i = getelementptr inbounds [1 x i64], [1 x i64]* %4647, i64 0, i64 0
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4649 = getelementptr inbounds %struct.MMX, %struct.MMX* %4648, i32 0, i32 0
  %4650 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4649, i64 0, i64 5
  %4651 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4650, i32 0, i32 1
  %4652 = bitcast %union.vec64_t* %4651 to %struct.uint64v1_t*
  %4653 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4652, i32 0, i32 0
  %MM5.i = getelementptr inbounds [1 x i64], [1 x i64]* %4653, i64 0, i64 0
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4655 = getelementptr inbounds %struct.MMX, %struct.MMX* %4654, i32 0, i32 0
  %4656 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4655, i64 0, i64 6
  %4657 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4656, i32 0, i32 1
  %4658 = bitcast %union.vec64_t* %4657 to %struct.uint64v1_t*
  %4659 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4658, i32 0, i32 0
  %MM6.i = getelementptr inbounds [1 x i64], [1 x i64]* %4659, i64 0, i64 0
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 8
  %4661 = getelementptr inbounds %struct.MMX, %struct.MMX* %4660, i32 0, i32 0
  %4662 = getelementptr inbounds [8 x %struct.anon.4], [8 x %struct.anon.4]* %4661, i64 0, i64 7
  %4663 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %4662, i32 0, i32 1
  %4664 = bitcast %union.vec64_t* %4663 to %struct.uint64v1_t*
  %4665 = getelementptr inbounds %struct.uint64v1_t, %struct.uint64v1_t* %4664, i32 0, i32 0
  %MM7.i = getelementptr inbounds [1 x i64], [1 x i64]* %4665, i64 0, i64 0
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %AF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4666, i32 0, i32 5
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %CF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4667, i32 0, i32 1
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %DF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4668, i32 0, i32 11
  %4669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %OF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4669, i32 0, i32 13
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %PF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4670, i32 0, i32 3
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %SF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4671, i32 0, i32 9
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 2
  %ZF.i = getelementptr inbounds %struct.ArithFlags, %struct.ArithFlags* %4672, i32 0, i32 7
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
  %4673 = bitcast %"class.std::bitset"* %YMM0.i to double*
  %4674 = load double, double* %4673, !alias.scope !2467, !noalias !2468
  %4675 = load i64, i64* %RSP.i, !alias.scope !2467, !noalias !2468
  %4676 = load %struct.Memory*, %struct.Memory** %MEMORY.i, !noalias !2463
  %4677 = inttoptr i64 %4675 to i64*
  %4678 = load i64, i64* %4677
  store i64 %4678, i64* %PC.i, !alias.scope !2467, !noalias !2468
  %4679 = add i64 %4675, 8
  store i64 %4679, i64* %RSP.i, !alias.scope !2467, !noalias !2468
  %4680 = call double @sin(double %4674)
  store %"class.std::bitset" zeroinitializer, %"class.std::bitset"* %YMM0.i, !alias.scope !2467, !noalias !2468
  %4681 = bitcast %"class.std::bitset"* %YMM0.i to double*
  store double %4680, double* %4681, !alias.scope !2467, !noalias !2468
  %4682 = load %struct.Memory*, %struct.Memory** %MEMORY.i, !noalias !2463
  %4683 = bitcast %struct.State** %state.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4683)
  %4684 = bitcast i64* %curr_pc.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4684)
  %4685 = bitcast %struct.Memory** %memory.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4685)
  call void @llvm.lifetime.end(i64 1, i8* %BRANCH_TAKEN.i)
  %4686 = bitcast i64* %SS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4686)
  %4687 = bitcast i64* %ES_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4687)
  %4688 = bitcast i64* %DS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4688)
  %4689 = bitcast i64* %CS_BASE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4689)
  %4690 = bitcast %struct.State** %STATE.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4690)
  %4691 = bitcast %struct.Memory** %MEMORY.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4691)
  %4692 = bitcast i64** %_DR0.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4692)
  %4693 = bitcast i64** %_DR1.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4693)
  %4694 = bitcast i64** %_DR2.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4694)
  %4695 = bitcast i64** %_DR3.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4695)
  %4696 = bitcast i64** %_DR4.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4696)
  %4697 = bitcast i64** %_DR5.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4697)
  %4698 = bitcast i64** %_DR6.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4698)
  %4699 = bitcast i64** %_DR7.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4699)
  %4700 = bitcast i64** %CR0.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4700)
  %4701 = bitcast i64** %CR1.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4701)
  %4702 = bitcast i64** %CR2.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4702)
  %4703 = bitcast i64** %CR3.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4703)
  %4704 = bitcast i64** %CR4.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4704)
  %4705 = bitcast i64** %CR8.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4705)
  %4706 = load i64, i64* %RBP
  %4707 = sub i64 %4706, 136
  %4708 = bitcast %union.vec128_t* %XMM0 to i8*
  %4709 = load i64, i64* %PC
  %4710 = add i64 %4709, 8
  store i64 %4710, i64* %PC
  %4711 = bitcast i8* %4708 to double*
  %4712 = load double, double* %4711, align 1
  %4713 = inttoptr i64 %4707 to double*
  store double %4712, double* %4713
  %4714 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %4715 = load i64, i64* %RBP
  %4716 = sub i64 %4715, 192
  %4717 = load i64, i64* %PC
  %4718 = add i64 %4717, 8
  store i64 %4718, i64* %PC
  %4719 = inttoptr i64 %4716 to double*
  %4720 = load double, double* %4719
  %4721 = bitcast i8* %4714 to double*
  store double %4720, double* %4721, align 1, !tbaa !2452
  %4722 = getelementptr inbounds i8, i8* %4714, i64 8
  %4723 = bitcast i8* %4722 to double*
  store double 0.000000e+00, double* %4723, align 1, !tbaa !2452
  %4724 = load i64, i64* %RBP
  %4725 = sub i64 %4724, 152
  %4726 = bitcast %union.vec128_t* %XMM0 to i8*
  %4727 = load i64, i64* %PC
  %4728 = add i64 %4727, 8
  store i64 %4728, i64* %PC
  %4729 = bitcast i8* %4726 to double*
  %4730 = load double, double* %4729, align 1
  %4731 = inttoptr i64 %4725 to double*
  store double %4730, double* %4731
  %4732 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %4733 = load i64, i64* %RBP
  %4734 = sub i64 %4733, 176
  %4735 = load i64, i64* %PC
  %4736 = add i64 %4735, 8
  store i64 %4736, i64* %PC
  %4737 = inttoptr i64 %4734 to double*
  %4738 = load double, double* %4737
  %4739 = bitcast i8* %4732 to double*
  store double %4738, double* %4739, align 1, !tbaa !2452
  %4740 = getelementptr inbounds i8, i8* %4732, i64 8
  %4741 = bitcast i8* %4740 to double*
  store double 0.000000e+00, double* %4741, align 1, !tbaa !2452
  %4742 = load i64, i64* %RBP
  %4743 = sub i64 %4742, 128
  %4744 = bitcast %union.vec128_t* %XMM1 to i8*
  %4745 = load i64, i64* %PC
  %4746 = add i64 %4745, 5
  store i64 %4746, i64* %PC
  %4747 = bitcast i8* %4744 to double*
  %4748 = load double, double* %4747, align 1
  %4749 = inttoptr i64 %4743 to double*
  store double %4748, double* %4749
  %4750 = load i64, i64* %RBP
  %4751 = sub i64 %4750, 36
  %4752 = load i64, i64* %PC
  %4753 = add i64 %4752, 7
  store i64 %4753, i64* %PC
  %4754 = inttoptr i64 %4751 to i32*
  store i32 1, i32* %4754
  br label %block_400e46

block_400b63:                                     ; preds = %block_400b57
  %4755 = sub i64 %3368, 16
  %4756 = load i64, i64* %PC
  %4757 = add i64 %4756, 4
  store i64 %4757, i64* %PC
  %4758 = inttoptr i64 %4755 to i64*
  %4759 = load i64, i64* %4758
  store i64 %4759, i64* %RAX, align 8, !tbaa !2428
  %4760 = load i64, i64* %RBP
  %4761 = sub i64 %4760, 72
  %4762 = load i64, i64* %PC
  %4763 = add i64 %4762, 4
  store i64 %4763, i64* %PC
  %4764 = inttoptr i64 %4761 to i32*
  %4765 = load i32, i32* %4764
  %4766 = sext i32 %4765 to i64
  store i64 %4766, i64* %RCX, align 8, !tbaa !2428
  %4767 = load i64, i64* %RAX
  %4768 = load i64, i64* %RCX
  %4769 = mul i64 %4768, 4
  %4770 = add i64 %4769, %4767
  %4771 = load i64, i64* %PC
  %4772 = add i64 %4771, 3
  store i64 %4772, i64* %PC
  %4773 = inttoptr i64 %4770 to i32*
  %4774 = load i32, i32* %4773
  %4775 = zext i32 %4774 to i64
  store i64 %4775, i64* %RDX, align 8, !tbaa !2428
  %4776 = load i64, i64* %RDX
  %4777 = load i64, i64* %RBP
  %4778 = sub i64 %4777, 96
  %4779 = load i64, i64* %PC
  %4780 = add i64 %4779, 4
  store i64 %4780, i64* %PC
  %4781 = inttoptr i64 %4778 to i32*
  %4782 = load i32, i32* %4781
  %4783 = shl i64 %4776, 32
  %4784 = ashr exact i64 %4783, 32
  %4785 = sext i32 %4782 to i64
  %4786 = mul nsw i64 %4785, %4784
  %4787 = trunc i64 %4786 to i32
  %4788 = and i64 %4786, 4294967295
  store i64 %4788, i64* %RDX, align 8, !tbaa !2428
  %4789 = shl i64 %4786, 32
  %4790 = ashr exact i64 %4789, 32
  %4791 = icmp ne i64 %4790, %4786
  %4792 = zext i1 %4791 to i8
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4792, i8* %4793, align 1, !tbaa !2432
  %4794 = and i32 %4787, 255
  %4795 = call i32 @llvm.ctpop.i32(i32 %4794) #17
  %4796 = trunc i32 %4795 to i8
  %4797 = and i8 %4796, 1
  %4798 = xor i8 %4797, 1
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4798, i8* %4799, align 1, !tbaa !2446
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4800, align 1, !tbaa !2447
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4801, align 1, !tbaa !2448
  %4802 = lshr i32 %4787, 31
  %4803 = trunc i32 %4802 to i8
  %4804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4803, i8* %4804, align 1, !tbaa !2449
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4792, i8* %4805, align 1, !tbaa !2450
  %4806 = load i64, i64* %RBP
  %4807 = sub i64 %4806, 96
  %4808 = load i32, i32* %EDX
  %4809 = zext i32 %4808 to i64
  %4810 = load i64, i64* %PC
  %4811 = add i64 %4810, 3
  store i64 %4811, i64* %PC
  %4812 = inttoptr i64 %4807 to i32*
  store i32 %4808, i32* %4812
  %4813 = load i64, i64* %RBP
  %4814 = sub i64 %4813, 72
  %4815 = load i64, i64* %PC
  %4816 = add i64 %4815, 3
  store i64 %4816, i64* %PC
  %4817 = inttoptr i64 %4814 to i32*
  %4818 = load i32, i32* %4817
  %4819 = zext i32 %4818 to i64
  store i64 %4819, i64* %RAX, align 8, !tbaa !2428
  %4820 = load i64, i64* %RAX
  %4821 = load i64, i64* %PC
  %4822 = add i64 %4821, 3
  store i64 %4822, i64* %PC
  %4823 = trunc i64 %4820 to i32
  %4824 = add i32 1, %4823
  %4825 = zext i32 %4824 to i64
  store i64 %4825, i64* %RAX, align 8, !tbaa !2428
  %4826 = icmp ult i32 %4824, %4823
  %4827 = icmp ult i32 %4824, 1
  %4828 = or i1 %4826, %4827
  %4829 = zext i1 %4828 to i8
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4829, i8* %4830, align 1, !tbaa !2432
  %4831 = and i32 %4824, 255
  %4832 = call i32 @llvm.ctpop.i32(i32 %4831) #17
  %4833 = trunc i32 %4832 to i8
  %4834 = and i8 %4833, 1
  %4835 = xor i8 %4834, 1
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4835, i8* %4836, align 1, !tbaa !2446
  %4837 = xor i64 1, %4820
  %4838 = trunc i64 %4837 to i32
  %4839 = xor i32 %4838, %4824
  %4840 = lshr i32 %4839, 4
  %4841 = trunc i32 %4840 to i8
  %4842 = and i8 %4841, 1
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4842, i8* %4843, align 1, !tbaa !2447
  %4844 = icmp eq i32 %4824, 0
  %4845 = zext i1 %4844 to i8
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4845, i8* %4846, align 1, !tbaa !2448
  %4847 = lshr i32 %4824, 31
  %4848 = trunc i32 %4847 to i8
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4848, i8* %4849, align 1, !tbaa !2449
  %4850 = lshr i32 %4823, 31
  %4851 = xor i32 %4847, %4850
  %4852 = add nuw nsw i32 %4851, %4847
  %4853 = icmp eq i32 %4852, 2
  %4854 = zext i1 %4853 to i8
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4854, i8* %4855, align 1, !tbaa !2450
  %4856 = load i64, i64* %RBP
  %4857 = sub i64 %4856, 72
  %4858 = load i32, i32* %EAX
  %4859 = zext i32 %4858 to i64
  %4860 = load i64, i64* %PC
  %4861 = add i64 %4860, 3
  store i64 %4861, i64* %PC
  %4862 = inttoptr i64 %4857 to i32*
  store i32 %4858, i32* %4862
  %4863 = load i64, i64* %PC
  %4864 = sub i64 %4863, 39
  %4865 = load i64, i64* %PC
  %4866 = add i64 %4865, 5
  store i64 %4866, i64* %PC
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4864, i64* %4867, align 8, !tbaa !2428
  br label %block_400b57

block_400c07:                                     ; preds = %block_400bfb
  %4868 = load i64, i64* %RBP
  %4869 = sub i64 %4868, 32
  %4870 = load i64, i64* %PC
  %4871 = add i64 %4870, 3
  store i64 %4871, i64* %PC
  %4872 = inttoptr i64 %4869 to i32*
  %4873 = load i32, i32* %4872
  %4874 = zext i32 %4873 to i64
  store i64 %4874, i64* %RAX, align 8, !tbaa !2428
  %4875 = load i64, i64* %RBP
  %4876 = sub i64 %4875, 28
  %4877 = load i32, i32* %EAX
  %4878 = zext i32 %4877 to i64
  %4879 = load i64, i64* %PC
  %4880 = add i64 %4879, 3
  store i64 %4880, i64* %PC
  %4881 = inttoptr i64 %4876 to i32*
  store i32 %4877, i32* %4881
  br label %block_400c0d

block_400cf5:                                     ; preds = %block_400cf0, %block_400bfb
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.0, %block_400bfb ], [ %MEMORY.7, %block_400cf0 ]
  %4882 = load i64, i64* %RBP
  %4883 = sub i64 %4882, 52
  %4884 = load i64, i64* %PC
  %4885 = add i64 %4884, 3
  store i64 %4885, i64* %PC
  %4886 = inttoptr i64 %4883 to i32*
  %4887 = load i32, i32* %4886
  %4888 = zext i32 %4887 to i64
  store i64 %4888, i64* %RAX, align 8, !tbaa !2428
  %4889 = load i64, i64* %RAX
  %4890 = load i64, i64* %PC
  %4891 = add i64 %4890, 3
  store i64 %4891, i64* %PC
  %4892 = shl i64 %4889, 32
  %4893 = ashr i64 %4892, 33
  %4894 = trunc i64 %4889 to i8
  %4895 = and i8 %4894, 1
  %4896 = trunc i64 %4893 to i32
  %4897 = and i64 %4893, 4294967295
  store i64 %4897, i64* %RAX, align 8, !tbaa !2428
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4895, i8* %4898, align 1, !tbaa !2451
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4900 = and i32 %4896, 255
  %4901 = call i32 @llvm.ctpop.i32(i32 %4900) #17
  %4902 = trunc i32 %4901 to i8
  %4903 = and i8 %4902, 1
  %4904 = xor i8 %4903, 1
  store i8 %4904, i8* %4899, align 1, !tbaa !2451
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4905, align 1, !tbaa !2451
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4907 = icmp eq i32 %4896, 0
  %4908 = zext i1 %4907 to i8
  store i8 %4908, i8* %4906, align 1, !tbaa !2451
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4910 = lshr i32 %4896, 31
  %4911 = trunc i32 %4910 to i8
  store i8 %4911, i8* %4909, align 1, !tbaa !2451
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4912, align 1, !tbaa !2451
  %4913 = load i64, i64* %RBP
  %4914 = sub i64 %4913, 68
  %4915 = load i32, i32* %EAX
  %4916 = zext i32 %4915 to i64
  %4917 = load i64, i64* %PC
  %4918 = add i64 %4917, 3
  store i64 %4918, i64* %PC
  %4919 = inttoptr i64 %4914 to i32*
  store i32 %4915, i32* %4919
  br label %block_400cfe

block_401028:                                     ; preds = %block_400b90
  %4920 = load i64, i64* %RSP
  %4921 = load i64, i64* %PC
  %4922 = add i64 %4921, 7
  store i64 %4922, i64* %PC
  %4923 = add i64 192, %4920
  store i64 %4923, i64* %RSP, align 8, !tbaa !2428
  %4924 = icmp ult i64 %4923, %4920
  %4925 = icmp ult i64 %4923, 192
  %4926 = or i1 %4924, %4925
  %4927 = zext i1 %4926 to i8
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4927, i8* %4928, align 1, !tbaa !2432
  %4929 = trunc i64 %4923 to i32
  %4930 = and i32 %4929, 255
  %4931 = call i32 @llvm.ctpop.i32(i32 %4930) #17
  %4932 = trunc i32 %4931 to i8
  %4933 = and i8 %4932, 1
  %4934 = xor i8 %4933, 1
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4934, i8* %4935, align 1, !tbaa !2446
  %4936 = xor i64 192, %4920
  %4937 = xor i64 %4936, %4923
  %4938 = lshr i64 %4937, 4
  %4939 = trunc i64 %4938 to i8
  %4940 = and i8 %4939, 1
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4940, i8* %4941, align 1, !tbaa !2447
  %4942 = icmp eq i64 %4923, 0
  %4943 = zext i1 %4942 to i8
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4943, i8* %4944, align 1, !tbaa !2448
  %4945 = lshr i64 %4923, 63
  %4946 = trunc i64 %4945 to i8
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4946, i8* %4947, align 1, !tbaa !2449
  %4948 = lshr i64 %4920, 63
  %4949 = xor i64 %4945, %4948
  %4950 = add nuw nsw i64 %4949, %4945
  %4951 = icmp eq i64 %4950, 2
  %4952 = zext i1 %4951 to i8
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4952, i8* %4953, align 1, !tbaa !2450
  %4954 = load i64, i64* %PC
  %4955 = add i64 %4954, 1
  store i64 %4955, i64* %PC
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4957 = load i64, i64* %4956, align 8, !tbaa !2428
  %4958 = add i64 %4957, 8
  %4959 = inttoptr i64 %4957 to i64*
  %4960 = load i64, i64* %4959
  store i64 %4960, i64* %RBP, align 8, !tbaa !2428
  store i64 %4958, i64* %4956, align 8, !tbaa !2428
  %4961 = load i64, i64* %PC
  %4962 = add i64 %4961, 1
  store i64 %4962, i64* %PC
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4965 = load i64, i64* %4964, align 8, !tbaa !2428
  %4966 = inttoptr i64 %4965 to i64*
  %4967 = load i64, i64* %4966
  store i64 %4967, i64* %4963, align 8, !tbaa !2428
  %4968 = add i64 %4965, 8
  store i64 %4968, i64* %4964, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.6

block_400c27:                                     ; preds = %block_400c21, %block_400c33
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.7, %block_400c21 ], [ %MEMORY.11, %block_400c33 ]
  %4969 = load i64, i64* %RBP
  %4970 = sub i64 %4969, 36
  %4971 = load i64, i64* %PC
  %4972 = add i64 %4971, 3
  store i64 %4972, i64* %PC
  %4973 = inttoptr i64 %4970 to i32*
  %4974 = load i32, i32* %4973
  %4975 = zext i32 %4974 to i64
  store i64 %4975, i64* %RAX, align 8, !tbaa !2428
  %4976 = load i32, i32* %EAX
  %4977 = zext i32 %4976 to i64
  %4978 = load i64, i64* %RBP
  %4979 = sub i64 %4978, 56
  %4980 = load i64, i64* %PC
  %4981 = add i64 %4980, 3
  store i64 %4981, i64* %PC
  %4982 = inttoptr i64 %4979 to i32*
  %4983 = load i32, i32* %4982
  %4984 = sub i32 %4976, %4983
  %4985 = icmp ult i32 %4976, %4983
  %4986 = zext i1 %4985 to i8
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4986, i8* %4987, align 1, !tbaa !2432
  %4988 = and i32 %4984, 255
  %4989 = call i32 @llvm.ctpop.i32(i32 %4988) #17
  %4990 = trunc i32 %4989 to i8
  %4991 = and i8 %4990, 1
  %4992 = xor i8 %4991, 1
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4992, i8* %4993, align 1, !tbaa !2446
  %4994 = xor i32 %4983, %4976
  %4995 = xor i32 %4994, %4984
  %4996 = lshr i32 %4995, 4
  %4997 = trunc i32 %4996 to i8
  %4998 = and i8 %4997, 1
  %4999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4998, i8* %4999, align 1, !tbaa !2447
  %5000 = icmp eq i32 %4984, 0
  %5001 = zext i1 %5000 to i8
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5001, i8* %5002, align 1, !tbaa !2448
  %5003 = lshr i32 %4984, 31
  %5004 = trunc i32 %5003 to i8
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5004, i8* %5005, align 1, !tbaa !2449
  %5006 = lshr i32 %4976, 31
  %5007 = lshr i32 %4983, 31
  %5008 = xor i32 %5007, %5006
  %5009 = xor i32 %5003, %5006
  %5010 = add nuw nsw i32 %5009, %5008
  %5011 = icmp eq i32 %5010, 2
  %5012 = zext i1 %5011 to i8
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5012, i8* %5013, align 1, !tbaa !2450
  %5014 = load i64, i64* %PC
  %5015 = add i64 %5014, 176
  %5016 = load i64, i64* %PC
  %5017 = add i64 %5016, 6
  %5018 = load i64, i64* %PC
  %5019 = add i64 %5018, 6
  store i64 %5019, i64* %PC
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5021 = load i8, i8* %5020, align 1, !tbaa !2448
  %5022 = icmp eq i8 %5021, 0
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5024 = load i8, i8* %5023, align 1, !tbaa !2449
  %5025 = icmp ne i8 %5024, 0
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5027 = load i8, i8* %5026, align 1, !tbaa !2450
  %5028 = icmp ne i8 %5027, 0
  %5029 = xor i1 %5025, %5028
  %5030 = xor i1 %5029, true
  %5031 = and i1 %5022, %5030
  %5032 = zext i1 %5031 to i8
  store i8 %5032, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5034 = select i1 %5031, i64 %5015, i64 %5017
  store i64 %5034, i64* %5033, align 8, !tbaa !2428
  %5035 = load i8, i8* %BRANCH_TAKEN
  %5036 = icmp eq i8 %5035, 1
  br i1 %5036, label %block_400cdd, label %block_400c33

block_400b83:                                     ; preds = %block_400b57
  %5037 = sub i64 %3368, 88
  %5038 = load i64, i64* %PC
  %5039 = add i64 %5038, 7
  store i64 %5039, i64* %PC
  %5040 = inttoptr i64 %5037 to i32*
  store i32 1, i32* %5040
  %5041 = load i64, i64* %RBP
  %5042 = sub i64 %5041, 20
  %5043 = load i64, i64* %PC
  %5044 = add i64 %5043, 3
  store i64 %5044, i64* %PC
  %5045 = inttoptr i64 %5042 to i32*
  %5046 = load i32, i32* %5045
  %5047 = zext i32 %5046 to i64
  store i64 %5047, i64* %RAX, align 8, !tbaa !2428
  %5048 = load i64, i64* %RBP
  %5049 = sub i64 %5048, 72
  %5050 = load i32, i32* %EAX
  %5051 = zext i32 %5050 to i64
  %5052 = load i64, i64* %PC
  %5053 = add i64 %5052, 3
  store i64 %5053, i64* %PC
  %5054 = inttoptr i64 %5049 to i32*
  store i32 %5050, i32* %5054
  br label %block_400b90

block_400cf0:                                     ; preds = %block_400c0d
  %5055 = load i64, i64* %PC
  %5056 = add i64 %5055, 5
  %5057 = load i64, i64* %PC
  %5058 = add i64 %5057, 5
  store i64 %5058, i64* %PC
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5056, i64* %5059, align 8, !tbaa !2428
  br label %block_400cf5

block_400f80:                                     ; preds = %block_400e72
  %5060 = load i64, i64* %PC
  %5061 = add i64 %5060, 5
  %5062 = load i64, i64* %PC
  %5063 = add i64 %5062, 5
  store i64 %5063, i64* %PC
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5061, i64* %5064, align 8, !tbaa !2428
  %5065 = load i64, i64* %RBP
  %5066 = sub i64 %5065, 28
  %5067 = load i64, i64* %PC
  %5068 = add i64 %5067, 3
  store i64 %5068, i64* %PC
  %5069 = inttoptr i64 %5066 to i32*
  %5070 = load i32, i32* %5069
  %5071 = zext i32 %5070 to i64
  store i64 %5071, i64* %RAX, align 8, !tbaa !2428
  %5072 = load i64, i64* %RAX
  %5073 = load i64, i64* %PC
  %5074 = add i64 %5073, 3
  store i64 %5074, i64* %PC
  %5075 = trunc i64 %5072 to i32
  %5076 = add i32 2, %5075
  %5077 = zext i32 %5076 to i64
  store i64 %5077, i64* %RAX, align 8, !tbaa !2428
  %5078 = icmp ult i32 %5076, %5075
  %5079 = icmp ult i32 %5076, 2
  %5080 = or i1 %5078, %5079
  %5081 = zext i1 %5080 to i8
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5081, i8* %5082, align 1, !tbaa !2432
  %5083 = and i32 %5076, 255
  %5084 = call i32 @llvm.ctpop.i32(i32 %5083) #17
  %5085 = trunc i32 %5084 to i8
  %5086 = and i8 %5085, 1
  %5087 = xor i8 %5086, 1
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5087, i8* %5088, align 1, !tbaa !2446
  %5089 = xor i64 2, %5072
  %5090 = trunc i64 %5089 to i32
  %5091 = xor i32 %5090, %5076
  %5092 = lshr i32 %5091, 4
  %5093 = trunc i32 %5092 to i8
  %5094 = and i8 %5093, 1
  %5095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5094, i8* %5095, align 1, !tbaa !2447
  %5096 = icmp eq i32 %5076, 0
  %5097 = zext i1 %5096 to i8
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5097, i8* %5098, align 1, !tbaa !2448
  %5099 = lshr i32 %5076, 31
  %5100 = trunc i32 %5099 to i8
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5100, i8* %5101, align 1, !tbaa !2449
  %5102 = lshr i32 %5075, 31
  %5103 = xor i32 %5099, %5102
  %5104 = add nuw nsw i32 %5103, %5099
  %5105 = icmp eq i32 %5104, 2
  %5106 = zext i1 %5105 to i8
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5106, i8* %5107, align 1, !tbaa !2450
  %5108 = load i64, i64* %RBP
  %5109 = sub i64 %5108, 28
  %5110 = load i32, i32* %EAX
  %5111 = zext i32 %5110 to i64
  %5112 = load i64, i64* %PC
  %5113 = add i64 %5112, 3
  store i64 %5113, i64* %PC
  %5114 = inttoptr i64 %5109 to i32*
  store i32 %5110, i32* %5114
  %5115 = load i64, i64* %PC
  %5116 = sub i64 %5115, 310
  %5117 = load i64, i64* %PC
  %5118 = add i64 %5117, 5
  store i64 %5118, i64* %PC
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5116, i64* %5119, align 8, !tbaa !2428
  br label %block_400e58
}

; Function Attrs: noinline
define %struct.Memory* @sub_4005c0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_4005c0:
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
  br i1 %80, label %block_4005e8, label %block_4005d1

block_4005db:                                     ; preds = %block_4005d1
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
    i64 4195818, label %block_4005ea
    i64 4195811, label %block_4005e3
  ]

block_4005d1:                                     ; preds = %block_4005c0
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
  br i1 %130, label %block_4005e8, label %block_4005db

block_4005e8:                                     ; preds = %block_4005e3, %block_4005d1, %block_4005c0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4005c0 ], [ %2, %block_4005d1 ], [ %2, %block_4005e3 ]
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

block_4005ea:                                     ; preds = %block_4005db
  %146 = load i64, i64* %RAX
  %147 = load i64, i64* %RAX
  %148 = add i64 %147, %146
  %149 = load i16, i16* %AX
  %150 = zext i16 %149 to i64
  %151 = load i64, i64* %PC
  %152 = add i64 %151, 6
  store i64 %152, i64* %PC
  %153 = load i64, i64* %PC
  %154 = tail call %struct.Memory* @sub_4005f0_register_tm_clones(%struct.State* %0, i64 %153, %struct.Memory* %2)
  ret %struct.Memory* %154

block_4005e3:                                     ; preds = %block_4005db
  %155 = load i64, i64* %RAX
  %156 = load i64, i64* %RAX
  %157 = add i64 %156, %155
  %158 = load i32, i32* %EAX
  %159 = zext i32 %158 to i64
  %160 = load i64, i64* %PC
  %161 = add i64 %160, 5
  store i64 %161, i64* %PC
  br label %block_4005e8

; <label>:162:                                    ; preds = %block_4005db
  %163 = load i64, i64* %PC
  %164 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %163, %struct.Memory* %2)
  ret %struct.Memory* %164
}

; Function Attrs: noinline
define %struct.Memory* @sub_400660_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400660:
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
  %35 = tail call %struct.Memory* @sub_4005f0_register_tm_clones(%struct.State* %0, i64 %34, %struct.Memory* %2)
  ret %struct.Memory* %35
}

; Function Attrs: noinline
define %struct.Memory* @sub_400670_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #14 {
block_400670:
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
  br i1 %345, label %block_400704, label %block_4006db

block_4007ff:                                     ; preds = %block_4007ab
  %346 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %347 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %348 = bitcast %union.vec128_t* %XMM0 to i8*
  %349 = load i64, i64* %PC
  %350 = add i64 %349, 3
  store i64 %350, i64* %PC
  %351 = bitcast i8* %347 to i64*
  %352 = load i64, i64* %351, align 1
  %353 = getelementptr inbounds i8, i8* %347, i64 8
  %354 = bitcast i8* %353 to i64*
  %355 = load i64, i64* %354, align 1
  %356 = bitcast i8* %348 to i64*
  %357 = load i64, i64* %356, align 1
  %358 = getelementptr inbounds i8, i8* %348, i64 8
  %359 = bitcast i8* %358 to i64*
  %360 = load i64, i64* %359, align 1
  %361 = xor i64 %357, %352
  %362 = xor i64 %360, %355
  %363 = trunc i64 %361 to i32
  %364 = lshr i64 %361, 32
  %365 = trunc i64 %364 to i32
  %366 = bitcast i8* %346 to i32*
  store i32 %363, i32* %366, align 1, !tbaa !2454
  %367 = getelementptr inbounds i8, i8* %346, i64 4
  %368 = bitcast i8* %367 to i32*
  store i32 %365, i32* %368, align 1, !tbaa !2454
  %369 = trunc i64 %362 to i32
  %370 = getelementptr inbounds i8, i8* %346, i64 8
  %371 = bitcast i8* %370 to i32*
  store i32 %369, i32* %371, align 1, !tbaa !2454
  %372 = lshr i64 %362, 32
  %373 = trunc i64 %372 to i32
  %374 = getelementptr inbounds i8, i8* %346, i64 12
  %375 = bitcast i8* %374 to i32*
  store i32 %373, i32* %375, align 1, !tbaa !2454
  %376 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %377 = load i64, i64* %PC
  %378 = add i64 %377, 8
  store i64 %378, i64* %PC
  %379 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 8) to double*)
  %380 = bitcast i8* %376 to double*
  store double %379, double* %380, align 1, !tbaa !2452
  %381 = getelementptr inbounds i8, i8* %376, i64 8
  %382 = bitcast i8* %381 to double*
  store double 0.000000e+00, double* %382, align 1, !tbaa !2452
  %383 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %384 = load i64, i64* %PC
  %385 = add i64 %384, 8
  store i64 %385, i64* %PC
  %386 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 16) to double*)
  %387 = bitcast i8* %383 to double*
  store double %386, double* %387, align 1, !tbaa !2452
  %388 = getelementptr inbounds i8, i8* %383, i64 8
  %389 = bitcast i8* %388 to double*
  store double 0.000000e+00, double* %389, align 1, !tbaa !2452
  %390 = load i64, i64* %RBP
  %391 = sub i64 %390, 80
  %392 = bitcast %union.vec128_t* %XMM2 to i8*
  %393 = load i64, i64* %PC
  %394 = add i64 %393, 5
  store i64 %394, i64* %PC
  %395 = bitcast i8* %392 to double*
  %396 = load double, double* %395, align 1
  %397 = inttoptr i64 %391 to double*
  store double %396, double* %397
  %398 = load i64, i64* %RBP
  %399 = sub i64 %398, 88
  %400 = bitcast %union.vec128_t* %XMM1 to i8*
  %401 = load i64, i64* %PC
  %402 = add i64 %401, 5
  store i64 %402, i64* %PC
  %403 = bitcast i8* %400 to double*
  %404 = load double, double* %403, align 1
  %405 = inttoptr i64 %399 to double*
  store double %404, double* %405
  %406 = load i64, i64* %RBP
  %407 = sub i64 %406, 96
  %408 = bitcast %union.vec128_t* %XMM2 to i8*
  %409 = load i64, i64* %PC
  %410 = add i64 %409, 5
  store i64 %410, i64* %PC
  %411 = bitcast i8* %408 to double*
  %412 = load double, double* %411, align 1
  %413 = inttoptr i64 %407 to double*
  store double %412, double* %413
  %414 = load i64, i64* %RBP
  %415 = sub i64 %414, 104
  %416 = bitcast %union.vec128_t* %XMM1 to i8*
  %417 = load i64, i64* %PC
  %418 = add i64 %417, 5
  store i64 %418, i64* %PC
  %419 = bitcast i8* %416 to double*
  %420 = load double, double* %419, align 1
  %421 = inttoptr i64 %415 to double*
  store double %420, double* %421
  %422 = load i64, i64* %RBP
  %423 = sub i64 %422, 128
  %424 = bitcast %union.vec128_t* %XMM0 to i8*
  %425 = load i64, i64* %PC
  %426 = add i64 %425, 5
  store i64 %426, i64* %PC
  %427 = bitcast i8* %424 to double*
  %428 = load double, double* %427, align 1
  %429 = inttoptr i64 %423 to double*
  store double %428, double* %429
  %430 = load i64, i64* %RBP
  %431 = sub i64 %430, 136
  %432 = bitcast %union.vec128_t* %XMM0 to i8*
  %433 = load i64, i64* %PC
  %434 = add i64 %433, 8
  store i64 %434, i64* %PC
  %435 = bitcast i8* %432 to double*
  %436 = load double, double* %435, align 1
  %437 = inttoptr i64 %431 to double*
  store double %436, double* %437
  %438 = load i64, i64* %RBP
  %439 = sub i64 %438, 8
  %440 = load i64, i64* %PC
  %441 = add i64 %440, 7
  store i64 %441, i64* %PC
  %442 = inttoptr i64 %439 to i32*
  store i32 1, i32* %442
  br label %block_40083a

block_400af1:                                     ; preds = %block_400ac0
  store i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 183), i64* %RSI, align 8, !tbaa !2428
  %443 = load i64, i64* %PC
  %444 = add i64 %443, 8
  store i64 %444, i64* %PC
  %445 = load i64, i64* @stderr
  store i64 %445, i64* %RDI, align 8, !tbaa !2428
  %446 = load i64, i64* %RBP
  %447 = sub i64 %446, 28
  %448 = load i64, i64* %PC
  %449 = add i64 %448, 3
  store i64 %449, i64* %PC
  %450 = inttoptr i64 %447 to i32*
  %451 = load i32, i32* %450
  %452 = zext i32 %451 to i64
  store i64 %452, i64* %RDX, align 8, !tbaa !2428
  %453 = load i64, i64* %RBP
  %454 = sub i64 %453, 24
  %455 = load i64, i64* %PC
  %456 = add i64 %455, 3
  store i64 %456, i64* %PC
  %457 = inttoptr i64 %454 to i32*
  %458 = load i32, i32* %457
  %459 = zext i32 %458 to i64
  store i64 %459, i64* %RCX, align 8, !tbaa !2428
  %460 = load i64, i64* %PC
  %461 = add i64 %460, 2
  store i64 %461, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %462 = load i64, i64* %PC
  %463 = sub i64 %462, 1483
  %464 = load i64, i64* %PC
  %465 = add i64 %464, 5
  %466 = load i64, i64* %PC
  %467 = add i64 %466, 5
  store i64 %467, i64* %PC
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %469 = load i64, i64* %468, align 8, !tbaa !2428
  %470 = add i64 %469, -8
  %471 = inttoptr i64 %470 to i64*
  store i64 %465, i64* %471
  store i64 %470, i64* %468, align 8, !tbaa !2428
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %463, i64* %472, align 8, !tbaa !2428
  %473 = load i64, i64* %PC
  %474 = call %struct.Memory* @ext_6020b8_fprintf(%struct.State* %0, i64 %473, %struct.Memory* %MEMORY.9)
  %475 = load i64, i64* %RBP
  %476 = sub i64 %475, 192
  %477 = load i32, i32* %EAX
  %478 = zext i32 %477 to i64
  %479 = load i64, i64* %PC
  %480 = add i64 %479, 6
  store i64 %480, i64* %PC
  %481 = inttoptr i64 %476 to i32*
  store i32 %477, i32* %481
  br label %block_400b16

block_4008e5:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2
  %482 = sub i64 %1022, 112
  %483 = load i64, i64* %PC
  %484 = add i64 %483, 5
  store i64 %484, i64* %PC
  %485 = inttoptr i64 %482 to double*
  %486 = load double, double* %485
  %487 = bitcast i8* %1021 to double*
  store double %486, double* %487, align 1, !tbaa !2452
  %488 = getelementptr inbounds i8, i8* %1021, i64 8
  %489 = bitcast i8* %488 to double*
  store double 0.000000e+00, double* %489, align 1, !tbaa !2452
  %490 = load i64, i64* %RBP
  %491 = sub i64 %490, 160
  %492 = bitcast %union.vec128_t* %XMM0 to i8*
  %493 = load i64, i64* %PC
  %494 = add i64 %493, 8
  store i64 %494, i64* %PC
  %495 = bitcast i8* %492 to double*
  %496 = load double, double* %495, align 1
  %497 = inttoptr i64 %491 to double*
  store double %496, double* %497
  %498 = load i64, i64* %PC
  %499 = add i64 %498, 18
  %500 = load i64, i64* %PC
  %501 = add i64 %500, 5
  store i64 %501, i64* %PC
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %499, i64* %502, align 8, !tbaa !2428
  br label %block_400904

block_40077e:                                     ; preds = %block_40074b, %block_40075a
  %MEMORY.0 = phi %struct.Memory* [ %MEMORY.1, %block_40075a ], [ %MEMORY.5, %block_40074b ]
  %503 = load i64, i64* %PC
  %504 = add i64 %503, 5
  %505 = load i64, i64* %PC
  %506 = add i64 %505, 5
  store i64 %506, i64* %PC
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %504, i64* %507, align 8, !tbaa !2428
  %508 = load i64, i64* %RBP
  %509 = sub i64 %508, 12
  %510 = load i64, i64* %PC
  %511 = add i64 %510, 3
  store i64 %511, i64* %PC
  %512 = inttoptr i64 %509 to i32*
  %513 = load i32, i32* %512
  %514 = zext i32 %513 to i64
  store i64 %514, i64* %RAX, align 8, !tbaa !2428
  %515 = load i64, i64* %RAX
  %516 = load i64, i64* %PC
  %517 = add i64 %516, 3
  store i64 %517, i64* %PC
  %518 = trunc i64 %515 to i32
  %519 = add i32 1, %518
  %520 = zext i32 %519 to i64
  store i64 %520, i64* %RAX, align 8, !tbaa !2428
  %521 = icmp ult i32 %519, %518
  %522 = icmp ult i32 %519, 1
  %523 = or i1 %521, %522
  %524 = zext i1 %523 to i8
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %524, i8* %525, align 1, !tbaa !2432
  %526 = and i32 %519, 255
  %527 = call i32 @llvm.ctpop.i32(i32 %526) #17
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  %530 = xor i8 %529, 1
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %530, i8* %531, align 1, !tbaa !2446
  %532 = xor i64 1, %515
  %533 = trunc i64 %532 to i32
  %534 = xor i32 %533, %519
  %535 = lshr i32 %534, 4
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %537, i8* %538, align 1, !tbaa !2447
  %539 = icmp eq i32 %519, 0
  %540 = zext i1 %539 to i8
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %540, i8* %541, align 1, !tbaa !2448
  %542 = lshr i32 %519, 31
  %543 = trunc i32 %542 to i8
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %543, i8* %544, align 1, !tbaa !2449
  %545 = lshr i32 %518, 31
  %546 = xor i32 %542, %545
  %547 = add nuw nsw i32 %546, %542
  %548 = icmp eq i32 %547, 2
  %549 = zext i1 %548 to i8
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %549, i8* %550, align 1, !tbaa !2450
  %551 = load i64, i64* %RBP
  %552 = sub i64 %551, 12
  %553 = load i32, i32* %EAX
  %554 = zext i32 %553 to i64
  %555 = load i64, i64* %PC
  %556 = add i64 %555, 3
  store i64 %556, i64* %PC
  %557 = inttoptr i64 %552 to i32*
  store i32 %553, i32* %557
  %558 = load i64, i64* %PC
  %559 = sub i64 %558, 92
  %560 = load i64, i64* %PC
  %561 = add i64 %560, 5
  store i64 %561, i64* %PC
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %559, i64* %562, align 8, !tbaa !2428
  br label %block_400730

block_400a64:                                     ; preds = %block_400a43
  %563 = load i64, i64* %PC
  %564 = add i64 %563, 10
  store i64 %564, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 100), i64* %RSI, align 8, !tbaa !2428
  %565 = load i64, i64* %RBP
  %566 = sub i64 %565, 24
  %567 = load i64, i64* %PC
  %568 = add i64 %567, 3
  store i64 %568, i64* %PC
  %569 = inttoptr i64 %566 to i32*
  %570 = load i32, i32* %569
  %571 = zext i32 %570 to i64
  store i64 %571, i64* %RAX, align 8, !tbaa !2428
  %572 = load i64, i64* %RAX
  %573 = load i64, i64* %PC
  %574 = add i64 %573, 3
  store i64 %574, i64* %PC
  %575 = trunc i64 %572 to i32
  %576 = add i32 1, %575
  %577 = zext i32 %576 to i64
  store i64 %577, i64* %RAX, align 8, !tbaa !2428
  %578 = icmp ult i32 %576, %575
  %579 = icmp ult i32 %576, 1
  %580 = or i1 %578, %579
  %581 = zext i1 %580 to i8
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %581, i8* %582, align 1, !tbaa !2432
  %583 = and i32 %576, 255
  %584 = call i32 @llvm.ctpop.i32(i32 %583) #17
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %587, i8* %588, align 1, !tbaa !2446
  %589 = xor i64 1, %572
  %590 = trunc i64 %589 to i32
  %591 = xor i32 %590, %576
  %592 = lshr i32 %591, 4
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %594, i8* %595, align 1, !tbaa !2447
  %596 = icmp eq i32 %576, 0
  %597 = zext i1 %596 to i8
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %597, i8* %598, align 1, !tbaa !2448
  %599 = lshr i32 %576, 31
  %600 = trunc i32 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %600, i8* %601, align 1, !tbaa !2449
  %602 = lshr i32 %575, 31
  %603 = xor i32 %599, %602
  %604 = add nuw nsw i32 %603, %599
  %605 = icmp eq i32 %604, 2
  %606 = zext i1 %605 to i8
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %606, i8* %607, align 1, !tbaa !2450
  %608 = load i64, i64* %RBP
  %609 = sub i64 %608, 24
  %610 = load i32, i32* %EAX
  %611 = zext i32 %610 to i64
  %612 = load i64, i64* %PC
  %613 = add i64 %612, 3
  store i64 %613, i64* %PC
  %614 = inttoptr i64 %609 to i32*
  store i32 %610, i32* %614
  %615 = load i64, i64* %PC
  %616 = add i64 %615, 8
  store i64 %616, i64* %PC
  %617 = load i64, i64* @stderr
  store i64 %617, i64* %RDI, align 8, !tbaa !2428
  %618 = load i64, i64* %RBP
  %619 = sub i64 %618, 8
  %620 = load i64, i64* %PC
  %621 = add i64 %620, 3
  store i64 %621, i64* %PC
  %622 = inttoptr i64 %619 to i32*
  %623 = load i32, i32* %622
  %624 = zext i32 %623 to i64
  store i64 %624, i64* %RDX, align 8, !tbaa !2428
  %625 = load i64, i64* %RBP
  %626 = sub i64 %625, 12
  %627 = load i64, i64* %PC
  %628 = add i64 %627, 3
  store i64 %628, i64* %PC
  %629 = inttoptr i64 %626 to i32*
  %630 = load i32, i32* %629
  %631 = zext i32 %630 to i64
  store i64 %631, i64* %RCX, align 8, !tbaa !2428
  %632 = bitcast i32* %R8D to i64*
  %633 = load i64, i64* %RBP
  %634 = sub i64 %633, 20
  %635 = load i64, i64* %PC
  %636 = add i64 %635, 4
  store i64 %636, i64* %PC
  %637 = inttoptr i64 %634 to i32*
  %638 = load i32, i32* %637
  %639 = zext i32 %638 to i64
  store i64 %639, i64* %632, align 8, !tbaa !2428
  %640 = bitcast i32* %R9D to i64*
  %641 = load i64, i64* %RBP
  %642 = sub i64 %641, 16
  %643 = load i64, i64* %PC
  %644 = add i64 %643, 4
  store i64 %644, i64* %PC
  %645 = inttoptr i64 %642 to i32*
  %646 = load i32, i32* %645
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %640, align 8, !tbaa !2428
  %648 = load i64, i64* %PC
  %649 = add i64 %648, 2
  store i64 %649, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %650 = load i64, i64* %PC
  %651 = sub i64 %650, 1359
  %652 = load i64, i64* %PC
  %653 = add i64 %652, 5
  %654 = load i64, i64* %PC
  %655 = add i64 %654, 5
  store i64 %655, i64* %PC
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %657 = load i64, i64* %656, align 8, !tbaa !2428
  %658 = add i64 %657, -8
  %659 = inttoptr i64 %658 to i64*
  store i64 %653, i64* %659
  store i64 %658, i64* %656, align 8, !tbaa !2428
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %651, i64* %660, align 8, !tbaa !2428
  %661 = load i64, i64* %PC
  %662 = call %struct.Memory* @ext_6020b8_fprintf(%struct.State* %0, i64 %661, %struct.Memory* %MEMORY.6)
  %663 = load i64, i64* %RBP
  %664 = sub i64 %663, 184
  %665 = load i32, i32* %EAX
  %666 = zext i32 %665 to i64
  %667 = load i64, i64* %PC
  %668 = add i64 %667, 6
  store i64 %668, i64* %PC
  %669 = inttoptr i64 %664 to i32*
  store i32 %665, i32* %669
  br label %block_400a9a

block_40075a:                                     ; preds = %block_40074b, %block_40073c
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.5, %block_40073c ], [ %MEMORY.5, %block_40074b ]
  %670 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %671 = load i64, i64* %PC
  %672 = add i64 %671, 8
  store i64 %672, i64* %PC
  %673 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 32) to double*)
  %674 = bitcast i8* %670 to double*
  store double %673, double* %674, align 1, !tbaa !2452
  %675 = getelementptr inbounds i8, i8* %670, i64 8
  %676 = bitcast i8* %675 to double*
  store double 0.000000e+00, double* %676, align 1, !tbaa !2452
  %677 = load i64, i64* %RBP
  %678 = sub i64 %677, 40
  %679 = load i64, i64* %PC
  %680 = add i64 %679, 4
  store i64 %680, i64* %PC
  %681 = inttoptr i64 %678 to i64*
  %682 = load i64, i64* %681
  store i64 %682, i64* %RAX, align 8, !tbaa !2428
  %683 = load i64, i64* %RBP
  %684 = sub i64 %683, 32
  %685 = load i64, i64* %PC
  %686 = add i64 %685, 3
  store i64 %686, i64* %PC
  %687 = inttoptr i64 %684 to i32*
  %688 = load i32, i32* %687
  %689 = zext i32 %688 to i64
  store i64 %689, i64* %RCX, align 8, !tbaa !2428
  %690 = load i64, i64* %RCX
  %691 = load i64, i64* %RBP
  %692 = sub i64 %691, 8
  %693 = load i64, i64* %PC
  %694 = add i64 %693, 4
  store i64 %694, i64* %PC
  %695 = inttoptr i64 %692 to i32*
  %696 = load i32, i32* %695
  %697 = shl i64 %690, 32
  %698 = ashr exact i64 %697, 32
  %699 = sext i32 %696 to i64
  %700 = mul nsw i64 %699, %698
  %701 = trunc i64 %700 to i32
  %702 = and i64 %700, 4294967295
  store i64 %702, i64* %RCX, align 8, !tbaa !2428
  %703 = shl i64 %700, 32
  %704 = ashr exact i64 %703, 32
  %705 = icmp ne i64 %704, %700
  %706 = zext i1 %705 to i8
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %706, i8* %707, align 1, !tbaa !2432
  %708 = and i32 %701, 255
  %709 = call i32 @llvm.ctpop.i32(i32 %708) #17
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  %712 = xor i8 %711, 1
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %712, i8* %713, align 1, !tbaa !2446
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %714, align 1, !tbaa !2447
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %715, align 1, !tbaa !2448
  %716 = lshr i32 %701, 31
  %717 = trunc i32 %716 to i8
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %717, i8* %718, align 1, !tbaa !2449
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %706, i8* %719, align 1, !tbaa !2450
  %720 = load i64, i64* %RCX
  %721 = load i64, i64* %RBP
  %722 = sub i64 %721, 12
  %723 = load i64, i64* %PC
  %724 = add i64 %723, 3
  store i64 %724, i64* %PC
  %725 = trunc i64 %720 to i32
  %726 = inttoptr i64 %722 to i32*
  %727 = load i32, i32* %726
  %728 = add i32 %727, %725
  %729 = zext i32 %728 to i64
  store i64 %729, i64* %RCX, align 8, !tbaa !2428
  %730 = icmp ult i32 %728, %725
  %731 = icmp ult i32 %728, %727
  %732 = or i1 %730, %731
  %733 = zext i1 %732 to i8
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %733, i8* %734, align 1, !tbaa !2432
  %735 = and i32 %728, 255
  %736 = call i32 @llvm.ctpop.i32(i32 %735) #17
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %739, i8* %740, align 1, !tbaa !2446
  %741 = xor i32 %727, %725
  %742 = xor i32 %741, %728
  %743 = lshr i32 %742, 4
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %745, i8* %746, align 1, !tbaa !2447
  %747 = icmp eq i32 %728, 0
  %748 = zext i1 %747 to i8
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %748, i8* %749, align 1, !tbaa !2448
  %750 = lshr i32 %728, 31
  %751 = trunc i32 %750 to i8
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %751, i8* %752, align 1, !tbaa !2449
  %753 = lshr i32 %725, 31
  %754 = lshr i32 %727, 31
  %755 = xor i32 %750, %753
  %756 = xor i32 %750, %754
  %757 = add nuw nsw i32 %755, %756
  %758 = icmp eq i32 %757, 2
  %759 = zext i1 %758 to i8
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %759, i8* %760, align 1, !tbaa !2450
  %761 = load i64, i64* %RCX
  %762 = load i64, i64* %PC
  %763 = add i64 %762, 3
  store i64 %763, i64* %PC
  %764 = trunc i64 %761 to i32
  %765 = shl i32 %764, 1
  %766 = icmp slt i32 %764, 0
  %767 = icmp slt i32 %765, 0
  %768 = xor i1 %766, %767
  %769 = zext i32 %765 to i64
  store i64 %769, i64* %RCX, align 8, !tbaa !2428
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %771 = zext i1 %766 to i8
  store i8 %771, i8* %770, align 1, !tbaa !2451
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %773 = and i32 %765, 254
  %774 = call i32 @llvm.ctpop.i32(i32 %773) #17
  %775 = trunc i32 %774 to i8
  %776 = and i8 %775, 1
  %777 = xor i8 %776, 1
  store i8 %777, i8* %772, align 1, !tbaa !2451
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %778, align 1, !tbaa !2451
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %780 = icmp eq i32 %765, 0
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %779, align 1, !tbaa !2451
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %783 = lshr i32 %765, 31
  %784 = trunc i32 %783 to i8
  store i8 %784, i8* %782, align 1, !tbaa !2451
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %786 = zext i1 %768 to i8
  store i8 %786, i8* %785, align 1, !tbaa !2451
  %787 = load i64, i64* %RCX
  %788 = load i64, i64* %PC
  %789 = add i64 %788, 3
  store i64 %789, i64* %PC
  %790 = trunc i64 %787 to i32
  %791 = add i32 1, %790
  %792 = zext i32 %791 to i64
  store i64 %792, i64* %RCX, align 8, !tbaa !2428
  %793 = icmp ult i32 %791, %790
  %794 = icmp ult i32 %791, 1
  %795 = or i1 %793, %794
  %796 = zext i1 %795 to i8
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %796, i8* %797, align 1, !tbaa !2432
  %798 = and i32 %791, 255
  %799 = call i32 @llvm.ctpop.i32(i32 %798) #17
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  %802 = xor i8 %801, 1
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %802, i8* %803, align 1, !tbaa !2446
  %804 = xor i64 1, %787
  %805 = trunc i64 %804 to i32
  %806 = xor i32 %805, %791
  %807 = lshr i32 %806, 4
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %809, i8* %810, align 1, !tbaa !2447
  %811 = icmp eq i32 %791, 0
  %812 = zext i1 %811 to i8
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %812, i8* %813, align 1, !tbaa !2448
  %814 = lshr i32 %791, 31
  %815 = trunc i32 %814 to i8
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %815, i8* %816, align 1, !tbaa !2449
  %817 = lshr i32 %790, 31
  %818 = xor i32 %814, %817
  %819 = add nuw nsw i32 %818, %814
  %820 = icmp eq i32 %819, 2
  %821 = zext i1 %820 to i8
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %821, i8* %822, align 1, !tbaa !2450
  %823 = load i32, i32* %ECX
  %824 = zext i32 %823 to i64
  %825 = load i64, i64* %PC
  %826 = add i64 %825, 3
  store i64 %826, i64* %PC
  %827 = shl i64 %824, 32
  %828 = ashr exact i64 %827, 32
  store i64 %828, i64* %RDX, align 8, !tbaa !2428
  %829 = load i64, i64* %RAX
  %830 = load i64, i64* %RDX
  %831 = mul i64 %830, 8
  %832 = add i64 %831, %829
  %833 = bitcast %union.vec128_t* %XMM0 to i8*
  %834 = load i64, i64* %PC
  %835 = add i64 %834, 5
  store i64 %835, i64* %PC
  %836 = bitcast i8* %833 to double*
  %837 = load double, double* %836, align 1
  %838 = inttoptr i64 %832 to double*
  store double %837, double* %838
  br label %block_40077e

block_400937:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %839 = sub i64 %2786, 96
  %840 = load i64, i64* %PC
  %841 = add i64 %840, 5
  store i64 %841, i64* %PC
  %842 = inttoptr i64 %839 to double*
  %843 = load double, double* %842
  %844 = bitcast i8* %2785 to double*
  store double %843, double* %844, align 1, !tbaa !2452
  %845 = getelementptr inbounds i8, i8* %2785, i64 8
  %846 = bitcast i8* %845 to double*
  store double 0.000000e+00, double* %846, align 1, !tbaa !2452
  %847 = load i64, i64* %RBP
  %848 = sub i64 %847, 168
  %849 = bitcast %union.vec128_t* %XMM0 to i8*
  %850 = load i64, i64* %PC
  %851 = add i64 %850, 8
  store i64 %851, i64* %PC
  %852 = bitcast i8* %849 to double*
  %853 = load double, double* %852, align 1
  %854 = inttoptr i64 %848 to double*
  store double %853, double* %854
  br label %block_400944

block_4006db:                                     ; preds = %block_400670
  %855 = load i64, i64* %PC
  %856 = add i64 %855, 10
  store i64 %856, i64* %PC
  store i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 72), i64* %RSI, align 8, !tbaa !2428
  %857 = load i64, i64* %PC
  %858 = add i64 %857, 8
  store i64 %858, i64* %PC
  %859 = load i64, i64* @stderr
  store i64 %859, i64* %RDI, align 8, !tbaa !2428
  %860 = load i64, i64* %PC
  %861 = add i64 %860, 2
  store i64 %861, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %862 = load i64, i64* %PC
  %863 = sub i64 %862, 431
  %864 = load i64, i64* %PC
  %865 = add i64 %864, 5
  %866 = load i64, i64* %PC
  %867 = add i64 %866, 5
  store i64 %867, i64* %PC
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %869 = load i64, i64* %868, align 8, !tbaa !2428
  %870 = add i64 %869, -8
  %871 = inttoptr i64 %870 to i64*
  store i64 %865, i64* %871
  store i64 %870, i64* %868, align 8, !tbaa !2428
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %863, i64* %872, align 8, !tbaa !2428
  %873 = load i64, i64* %PC
  %874 = call %struct.Memory* @ext_6020b8_fprintf(%struct.State* %0, i64 %873, %struct.Memory* %298)
  %875 = load i64, i64* %PC
  %876 = add i64 %875, 5
  store i64 %876, i64* %PC
  store i64 1, i64* %RDI, align 8, !tbaa !2428
  %877 = load i64, i64* %RBP
  %878 = sub i64 %877, 140
  %879 = load i32, i32* %EAX
  %880 = zext i32 %879 to i64
  %881 = load i64, i64* %PC
  %882 = add i64 %881, 6
  store i64 %882, i64* %PC
  %883 = inttoptr i64 %878 to i32*
  store i32 %879, i32* %883
  %884 = load i64, i64* %PC
  %885 = sub i64 %884, 399
  %886 = load i64, i64* %PC
  %887 = add i64 %886, 5
  %888 = load i64, i64* %PC
  %889 = add i64 %888, 5
  store i64 %889, i64* %PC
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %891 = load i64, i64* %890, align 8, !tbaa !2428
  %892 = add i64 %891, -8
  %893 = inttoptr i64 %892 to i64*
  store i64 %887, i64* %893
  store i64 %892, i64* %890, align 8, !tbaa !2428
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %885, i64* %894, align 8, !tbaa !2428
  %895 = load i64, i64* %PC
  %896 = call %struct.Memory* @ext_400570_exit(%struct.State* %0, i64 %895, %struct.Memory* %874)
  %897 = load i64, i64* %PC
  %898 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %897, %struct.Memory* %896)
  ret %struct.Memory* %898

block_400aca:                                     ; preds = %block_400ac0
  store i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 148), i64* %RSI, align 8, !tbaa !2428
  %899 = load i64, i64* %PC
  %900 = add i64 %899, 8
  store i64 %900, i64* %PC
  %901 = load i64, i64* @stderr
  store i64 %901, i64* %RDI, align 8, !tbaa !2428
  %902 = load i64, i64* %RBP
  %903 = sub i64 %902, 28
  %904 = load i64, i64* %PC
  %905 = add i64 %904, 3
  store i64 %905, i64* %PC
  %906 = inttoptr i64 %903 to i32*
  %907 = load i32, i32* %906
  %908 = zext i32 %907 to i64
  store i64 %908, i64* %RDX, align 8, !tbaa !2428
  %909 = load i64, i64* %PC
  %910 = add i64 %909, 2
  store i64 %910, i64* %PC
  store i8 0, i8* %AL, align 1, !tbaa !2451
  %911 = load i64, i64* %PC
  %912 = sub i64 %911, 1441
  %913 = load i64, i64* %PC
  %914 = add i64 %913, 5
  %915 = load i64, i64* %PC
  %916 = add i64 %915, 5
  store i64 %916, i64* %PC
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %918 = load i64, i64* %917, align 8, !tbaa !2428
  %919 = add i64 %918, -8
  %920 = inttoptr i64 %919 to i64*
  store i64 %914, i64* %920
  store i64 %919, i64* %917, align 8, !tbaa !2428
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %912, i64* %921, align 8, !tbaa !2428
  %922 = load i64, i64* %PC
  %923 = call %struct.Memory* @ext_6020b8_fprintf(%struct.State* %0, i64 %922, %struct.Memory* %MEMORY.9)
  %924 = load i64, i64* %RBP
  %925 = sub i64 %924, 188
  %926 = load i32, i32* %EAX
  %927 = zext i32 %926 to i64
  %928 = load i64, i64* %PC
  %929 = add i64 %928, 6
  store i64 %929, i64* %PC
  %930 = inttoptr i64 %925 to i32*
  store i32 %926, i32* %930
  %931 = load i64, i64* %PC
  %932 = add i64 %931, 42
  %933 = load i64, i64* %PC
  %934 = add i64 %933, 5
  store i64 %934, i64* %PC
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %932, i64* %935, align 8, !tbaa !2428
  br label %block_400b16

block_4008c8:                                     ; preds = %block_4008bb, %block_4008a9
  %MEMORY.2 = phi %struct.Memory* [ %1734, %block_4008bb ], [ %1734, %block_4008a9 ]
  %936 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %937 = load i64, i64* %RBP
  %938 = sub i64 %937, 152
  %939 = load i64, i64* %PC
  %940 = add i64 %939, 8
  store i64 %940, i64* %PC
  %941 = inttoptr i64 %938 to double*
  %942 = load double, double* %941
  %943 = bitcast i8* %936 to double*
  store double %942, double* %943, align 1, !tbaa !2452
  %944 = getelementptr inbounds i8, i8* %936, i64 8
  %945 = bitcast i8* %944 to double*
  store double 0.000000e+00, double* %945, align 1, !tbaa !2452
  %946 = load i64, i64* %RBP
  %947 = sub i64 %946, 80
  %948 = bitcast %union.vec128_t* %XMM0 to i8*
  %949 = load i64, i64* %PC
  %950 = add i64 %949, 5
  store i64 %950, i64* %PC
  %951 = bitcast i8* %948 to double*
  %952 = load double, double* %951, align 1
  %953 = inttoptr i64 %947 to double*
  store double %952, double* %953
  %954 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %955 = load i64, i64* %RBP
  %956 = sub i64 %955, 112
  %957 = load i64, i64* %PC
  %958 = add i64 %957, 5
  store i64 %958, i64* %PC
  %959 = inttoptr i64 %956 to double*
  %960 = load double, double* %959
  %961 = bitcast i8* %954 to double*
  store double %960, double* %961, align 1, !tbaa !2452
  %962 = getelementptr inbounds i8, i8* %954, i64 8
  %963 = bitcast i8* %962 to double*
  store double 0.000000e+00, double* %963, align 1, !tbaa !2452
  %964 = bitcast %union.vec128_t* %XMM0 to i8*
  %965 = load i64, i64* %RBP
  %966 = sub i64 %965, 88
  %967 = load i64, i64* %PC
  %968 = add i64 %967, 5
  store i64 %968, i64* %PC
  %969 = bitcast i8* %964 to double*
  %970 = load double, double* %969, align 1
  %971 = inttoptr i64 %966 to double*
  %972 = load double, double* %971
  %973 = fcmp uno double %970, %972
  br i1 %973, label %974, label %986

; <label>:974:                                    ; preds = %block_4008c8
  %975 = fadd double %970, %972
  %976 = bitcast double %975 to i64
  %977 = and i64 %976, 9221120237041090560
  %978 = icmp eq i64 %977, 9218868437227405312
  %979 = and i64 %976, 2251799813685247
  %980 = icmp ne i64 %979, 0
  %981 = and i1 %978, %980
  br i1 %981, label %982, label %992

; <label>:982:                                    ; preds = %974
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %984 = load i64, i64* %983, align 8, !tbaa !2428
  %985 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %984, %struct.Memory* %MEMORY.2) #18
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2

; <label>:986:                                    ; preds = %block_4008c8
  %987 = fcmp ogt double %970, %972
  br i1 %987, label %992, label %988

; <label>:988:                                    ; preds = %986
  %989 = fcmp olt double %970, %972
  br i1 %989, label %992, label %990

; <label>:990:                                    ; preds = %988
  %991 = fcmp oeq double %970, %972
  br i1 %991, label %992, label %999

; <label>:992:                                    ; preds = %990, %988, %986, %974
  %993 = phi i8 [ 0, %986 ], [ 0, %988 ], [ 1, %990 ], [ 1, %974 ]
  %994 = phi i8 [ 0, %986 ], [ 0, %988 ], [ 0, %990 ], [ 1, %974 ]
  %995 = phi i8 [ 0, %986 ], [ 1, %988 ], [ 0, %990 ], [ 1, %974 ]
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %993, i8* %996, align 1, !tbaa !2451
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %994, i8* %997, align 1, !tbaa !2451
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %995, i8* %998, align 1, !tbaa !2451
  br label %999

; <label>:999:                                    ; preds = %992, %990
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1000, align 1, !tbaa !2451
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1001, align 1, !tbaa !2451
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1002, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2: ; preds = %982, %999
  %1003 = phi %struct.Memory* [ %985, %982 ], [ %MEMORY.2, %999 ]
  %1004 = load i64, i64* %PC
  %1005 = add i64 %1004, 24
  %1006 = load i64, i64* %PC
  %1007 = add i64 %1006, 6
  %1008 = load i64, i64* %PC
  %1009 = add i64 %1008, 6
  store i64 %1009, i64* %PC
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1011 = load i8, i8* %1010, align 1, !tbaa !2432
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1013 = load i8, i8* %1012, align 1, !tbaa !2448
  %1014 = or i8 %1013, %1011
  %1015 = icmp ne i8 %1014, 0
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1018 = select i1 %1015, i64 %1005, i64 %1007
  store i64 %1018, i64* %1017, align 8, !tbaa !2428
  %1019 = load i8, i8* %BRANCH_TAKEN
  %1020 = icmp eq i8 %1019, 1
  %1021 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1022 = load i64, i64* %RBP
  br i1 %1020, label %block_4008f7, label %block_4008e5

block_400ac0:                                     ; preds = %block_4009ce
  %1023 = sub i64 %2483, 24
  %1024 = load i64, i64* %PC
  %1025 = add i64 %1024, 4
  store i64 %1025, i64* %PC
  %1026 = inttoptr i64 %1023 to i32*
  %1027 = load i32, i32* %1026
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1028, align 1, !tbaa !2432
  %1029 = and i32 %1027, 255
  %1030 = call i32 @llvm.ctpop.i32(i32 %1029) #17
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1033, i8* %1034, align 1, !tbaa !2446
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1035, align 1, !tbaa !2447
  %1036 = icmp eq i32 %1027, 0
  %1037 = zext i1 %1036 to i8
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1037, i8* %1038, align 1, !tbaa !2448
  %1039 = lshr i32 %1027, 31
  %1040 = trunc i32 %1039 to i8
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1040, i8* %1041, align 1, !tbaa !2449
  %1042 = lshr i32 %1027, 31
  %1043 = xor i32 %1039, %1042
  %1044 = add nuw nsw i32 %1043, %1042
  %1045 = icmp eq i32 %1044, 2
  %1046 = zext i1 %1045 to i8
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1046, i8* %1047, align 1, !tbaa !2450
  %1048 = load i64, i64* %PC
  %1049 = add i64 %1048, 45
  %1050 = load i64, i64* %PC
  %1051 = add i64 %1050, 6
  %1052 = load i64, i64* %PC
  %1053 = add i64 %1052, 6
  store i64 %1053, i64* %PC
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1055 = load i8, i8* %1054, align 1, !tbaa !2448
  %1056 = icmp eq i8 %1055, 0
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1059 = select i1 %1056, i64 %1049, i64 %1051
  store i64 %1059, i64* %1058, align 8, !tbaa !2428
  %1060 = load i8, i8* %BRANCH_TAKEN
  %1061 = icmp eq i8 %1060, 1
  %1062 = load i64, i64* %PC
  %1063 = add i64 %1062, 10
  store i64 %1063, i64* %PC
  br i1 %1061, label %block_400af1, label %block_400aca

block_4009ed:                                     ; preds = %block_4009e1
  %1064 = add i64 %1919, 2
  store i64 %1064, i64* %PC
  store i8 1, i8* %AL, align 1, !tbaa !2451
  %1065 = load i64, i64* %RBP
  %1066 = sub i64 %1065, 40
  %1067 = load i64, i64* %PC
  %1068 = add i64 %1067, 4
  store i64 %1068, i64* %PC
  %1069 = inttoptr i64 %1066 to i64*
  %1070 = load i64, i64* %1069
  store i64 %1070, i64* %RCX, align 8, !tbaa !2428
  %1071 = load i64, i64* %RBP
  %1072 = sub i64 %1071, 32
  %1073 = load i64, i64* %PC
  %1074 = add i64 %1073, 3
  store i64 %1074, i64* %PC
  %1075 = inttoptr i64 %1072 to i32*
  %1076 = load i32, i32* %1075
  %1077 = zext i32 %1076 to i64
  store i64 %1077, i64* %RDX, align 8, !tbaa !2428
  %1078 = load i64, i64* %RDX
  %1079 = load i64, i64* %RBP
  %1080 = sub i64 %1079, 8
  %1081 = load i64, i64* %PC
  %1082 = add i64 %1081, 4
  store i64 %1082, i64* %PC
  %1083 = inttoptr i64 %1080 to i32*
  %1084 = load i32, i32* %1083
  %1085 = shl i64 %1078, 32
  %1086 = ashr exact i64 %1085, 32
  %1087 = sext i32 %1084 to i64
  %1088 = mul nsw i64 %1087, %1086
  %1089 = trunc i64 %1088 to i32
  %1090 = and i64 %1088, 4294967295
  store i64 %1090, i64* %RDX, align 8, !tbaa !2428
  %1091 = shl i64 %1088, 32
  %1092 = ashr exact i64 %1091, 32
  %1093 = icmp ne i64 %1092, %1088
  %1094 = zext i1 %1093 to i8
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1094, i8* %1095, align 1, !tbaa !2432
  %1096 = and i32 %1089, 255
  %1097 = call i32 @llvm.ctpop.i32(i32 %1096) #17
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1100, i8* %1101, align 1, !tbaa !2446
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1102, align 1, !tbaa !2447
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1103, align 1, !tbaa !2448
  %1104 = lshr i32 %1089, 31
  %1105 = trunc i32 %1104 to i8
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1105, i8* %1106, align 1, !tbaa !2449
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1094, i8* %1107, align 1, !tbaa !2450
  %1108 = load i64, i64* %RDX
  %1109 = load i64, i64* %RBP
  %1110 = sub i64 %1109, 12
  %1111 = load i64, i64* %PC
  %1112 = add i64 %1111, 3
  store i64 %1112, i64* %PC
  %1113 = trunc i64 %1108 to i32
  %1114 = inttoptr i64 %1110 to i32*
  %1115 = load i32, i32* %1114
  %1116 = add i32 %1115, %1113
  %1117 = zext i32 %1116 to i64
  store i64 %1117, i64* %RDX, align 8, !tbaa !2428
  %1118 = icmp ult i32 %1116, %1113
  %1119 = icmp ult i32 %1116, %1115
  %1120 = or i1 %1118, %1119
  %1121 = zext i1 %1120 to i8
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1121, i8* %1122, align 1, !tbaa !2432
  %1123 = and i32 %1116, 255
  %1124 = call i32 @llvm.ctpop.i32(i32 %1123) #17
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  %1127 = xor i8 %1126, 1
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1127, i8* %1128, align 1, !tbaa !2446
  %1129 = xor i32 %1115, %1113
  %1130 = xor i32 %1129, %1116
  %1131 = lshr i32 %1130, 4
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1133, i8* %1134, align 1, !tbaa !2447
  %1135 = icmp eq i32 %1116, 0
  %1136 = zext i1 %1135 to i8
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1136, i8* %1137, align 1, !tbaa !2448
  %1138 = lshr i32 %1116, 31
  %1139 = trunc i32 %1138 to i8
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1139, i8* %1140, align 1, !tbaa !2449
  %1141 = lshr i32 %1113, 31
  %1142 = lshr i32 %1115, 31
  %1143 = xor i32 %1138, %1141
  %1144 = xor i32 %1138, %1142
  %1145 = add nuw nsw i32 %1143, %1144
  %1146 = icmp eq i32 %1145, 2
  %1147 = zext i1 %1146 to i8
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1147, i8* %1148, align 1, !tbaa !2450
  %1149 = load i64, i64* %RDX
  %1150 = load i64, i64* %PC
  %1151 = add i64 %1150, 3
  store i64 %1151, i64* %PC
  %1152 = trunc i64 %1149 to i32
  %1153 = shl i32 %1152, 1
  %1154 = icmp slt i32 %1152, 0
  %1155 = icmp slt i32 %1153, 0
  %1156 = xor i1 %1154, %1155
  %1157 = zext i32 %1153 to i64
  store i64 %1157, i64* %RDX, align 8, !tbaa !2428
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1159 = zext i1 %1154 to i8
  store i8 %1159, i8* %1158, align 1, !tbaa !2451
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1161 = and i32 %1153, 254
  %1162 = call i32 @llvm.ctpop.i32(i32 %1161) #17
  %1163 = trunc i32 %1162 to i8
  %1164 = and i8 %1163, 1
  %1165 = xor i8 %1164, 1
  store i8 %1165, i8* %1160, align 1, !tbaa !2451
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1166, align 1, !tbaa !2451
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1168 = icmp eq i32 %1153, 0
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %1167, align 1, !tbaa !2451
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1171 = lshr i32 %1153, 31
  %1172 = trunc i32 %1171 to i8
  store i8 %1172, i8* %1170, align 1, !tbaa !2451
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1174 = zext i1 %1156 to i8
  store i8 %1174, i8* %1173, align 1, !tbaa !2451
  %1175 = load i64, i64* %RDX
  %1176 = load i64, i64* %PC
  %1177 = add i64 %1176, 3
  store i64 %1177, i64* %PC
  %1178 = trunc i64 %1175 to i32
  %1179 = add i32 1, %1178
  %1180 = zext i32 %1179 to i64
  store i64 %1180, i64* %RDX, align 8, !tbaa !2428
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
  %1211 = load i32, i32* %EDX
  %1212 = zext i32 %1211 to i64
  %1213 = load i64, i64* %PC
  %1214 = add i64 %1213, 3
  store i64 %1214, i64* %PC
  %1215 = shl i64 %1212, 32
  %1216 = ashr exact i64 %1215, 32
  store i64 %1216, i64* %RSI, align 8, !tbaa !2428
  %1217 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1218 = load i64, i64* %RCX
  %1219 = load i64, i64* %RSI
  %1220 = mul i64 %1219, 8
  %1221 = add i64 %1220, %1218
  %1222 = load i64, i64* %PC
  %1223 = add i64 %1222, 5
  store i64 %1223, i64* %PC
  %1224 = inttoptr i64 %1221 to double*
  %1225 = load double, double* %1224
  %1226 = bitcast i8* %1217 to double*
  store double %1225, double* %1226, align 1, !tbaa !2452
  %1227 = getelementptr inbounds i8, i8* %1217, i64 8
  %1228 = bitcast i8* %1227 to double*
  store double 0.000000e+00, double* %1228, align 1, !tbaa !2452
  %1229 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1230 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1231 = load i64, i64* %RBP
  %1232 = sub i64 %1231, 64
  %1233 = load i64, i64* %PC
  %1234 = add i64 %1233, 5
  store i64 %1234, i64* %PC
  %1235 = bitcast i8* %1230 to double*
  %1236 = load double, double* %1235, align 1
  %1237 = getelementptr inbounds i8, i8* %1230, i64 8
  %1238 = bitcast i8* %1237 to i64*
  %1239 = load i64, i64* %1238, align 1
  %1240 = inttoptr i64 %1232 to double*
  %1241 = load double, double* %1240
  %1242 = fsub double %1236, %1241
  %1243 = bitcast i8* %1229 to double*
  store double %1242, double* %1243, align 1, !tbaa !2452
  %1244 = getelementptr inbounds i8, i8* %1229, i64 8
  %1245 = bitcast i8* %1244 to i64*
  store i64 %1239, i64* %1245, align 1, !tbaa !2452
  %1246 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1247 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1248 = load i64, i64* %RBP
  %1249 = sub i64 %1248, 72
  %1250 = load i64, i64* %PC
  %1251 = add i64 %1250, 5
  store i64 %1251, i64* %PC
  %1252 = bitcast i8* %1247 to double*
  %1253 = load double, double* %1252, align 1
  %1254 = getelementptr inbounds i8, i8* %1247, i64 8
  %1255 = bitcast i8* %1254 to i64*
  %1256 = load i64, i64* %1255, align 1
  %1257 = inttoptr i64 %1249 to double*
  %1258 = load double, double* %1257
  %1259 = fmul double %1253, %1258
  %1260 = bitcast i8* %1246 to double*
  store double %1259, double* %1260, align 1, !tbaa !2452
  %1261 = getelementptr inbounds i8, i8* %1246, i64 8
  %1262 = bitcast i8* %1261 to i64*
  store i64 %1256, i64* %1262, align 1, !tbaa !2452
  %1263 = bitcast %union.vec128_t* %XMM0 to i8*
  %1264 = load i64, i64* %PC
  %1265 = add i64 %1264, 4
  store i64 %1265, i64* %PC
  %1266 = bitcast i8* %1263 to double*
  %1267 = load double, double* %1266, align 1
  %1268 = call double @llvm.trunc.f64(double %1267) #17
  %1269 = call double @llvm.fabs.f64(double %1268) #17
  %1270 = fcmp ogt double %1269, 0x41DFFFFFFFC00000
  %1271 = fptosi double %1268 to i32
  %1272 = zext i32 %1271 to i64
  %1273 = select i1 %1270, i64 2147483648, i64 %1272
  store i64 %1273, i64* %RDX, align 8, !tbaa !2428
  %1274 = load i64, i64* %RBP
  %1275 = sub i64 %1274, 16
  %1276 = load i32, i32* %EDX
  %1277 = zext i32 %1276 to i64
  %1278 = load i64, i64* %PC
  %1279 = add i64 %1278, 3
  store i64 %1279, i64* %PC
  %1280 = inttoptr i64 %1275 to i32*
  store i32 %1276, i32* %1280
  %1281 = load i64, i64* %RBP
  %1282 = sub i64 %1281, 8
  %1283 = load i64, i64* %PC
  %1284 = add i64 %1283, 3
  store i64 %1284, i64* %PC
  %1285 = inttoptr i64 %1282 to i32*
  %1286 = load i32, i32* %1285
  %1287 = zext i32 %1286 to i64
  store i64 %1287, i64* %RDX, align 8, !tbaa !2428
  %1288 = load i64, i64* %RDX
  %1289 = load i64, i64* %PC
  %1290 = add i64 %1289, 3
  store i64 %1290, i64* %PC
  %1291 = and i64 15, %1288
  %1292 = trunc i64 %1291 to i32
  store i64 %1291, i64* %RDX, align 8, !tbaa !2428
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1293, align 1, !tbaa !2432
  %1294 = and i32 %1292, 255
  %1295 = call i32 @llvm.ctpop.i32(i32 %1294) #17
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  %1298 = xor i8 %1297, 1
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1298, i8* %1299, align 1, !tbaa !2446
  %1300 = icmp eq i32 %1292, 0
  %1301 = zext i1 %1300 to i8
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1301, i8* %1302, align 1, !tbaa !2448
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1303, align 1, !tbaa !2449
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1304, align 1, !tbaa !2450
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1305, align 1, !tbaa !2447
  %1306 = load i32, i32* %EDX
  %1307 = zext i32 %1306 to i64
  %1308 = load i64, i64* %PC
  %1309 = add i64 %1308, 3
  store i64 %1309, i64* %PC
  %1310 = sub i32 %1306, 8
  %1311 = icmp ult i32 %1306, 8
  %1312 = zext i1 %1311 to i8
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1312, i8* %1313, align 1, !tbaa !2432
  %1314 = and i32 %1310, 255
  %1315 = call i32 @llvm.ctpop.i32(i32 %1314) #17
  %1316 = trunc i32 %1315 to i8
  %1317 = and i8 %1316, 1
  %1318 = xor i8 %1317, 1
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1318, i8* %1319, align 1, !tbaa !2446
  %1320 = xor i64 8, %1307
  %1321 = trunc i64 %1320 to i32
  %1322 = xor i32 %1321, %1310
  %1323 = lshr i32 %1322, 4
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1325, i8* %1326, align 1, !tbaa !2447
  %1327 = icmp eq i32 %1310, 0
  %1328 = zext i1 %1327 to i8
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1328, i8* %1329, align 1, !tbaa !2448
  %1330 = lshr i32 %1310, 31
  %1331 = trunc i32 %1330 to i8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1331, i8* %1332, align 1, !tbaa !2449
  %1333 = lshr i32 %1306, 31
  %1334 = xor i32 %1330, %1333
  %1335 = add nuw nsw i32 %1334, %1333
  %1336 = icmp eq i32 %1335, 2
  %1337 = zext i1 %1336 to i8
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1337, i8* %1338, align 1, !tbaa !2450
  %1339 = load i64, i64* %RBP
  %1340 = sub i64 %1339, 177
  %1341 = load i8, i8* %AL
  %1342 = zext i8 %1341 to i64
  %1343 = load i64, i64* %PC
  %1344 = add i64 %1343, 6
  store i64 %1344, i64* %PC
  %1345 = inttoptr i64 %1340 to i8*
  store i8 %1341, i8* %1345
  %1346 = load i64, i64* %PC
  %1347 = add i64 %1346, 24
  %1348 = load i64, i64* %PC
  %1349 = add i64 %1348, 6
  %1350 = load i64, i64* %PC
  %1351 = add i64 %1350, 6
  store i64 %1351, i64* %PC
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1353 = load i8, i8* %1352, align 1, !tbaa !2448
  store i8 %1353, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1355 = icmp ne i8 %1353, 0
  %1356 = select i1 %1355, i64 %1347, i64 %1349
  store i64 %1356, i64* %1354, align 8, !tbaa !2428
  %1357 = load i8, i8* %BRANCH_TAKEN
  %1358 = icmp eq i8 %1357, 1
  br i1 %1358, label %block_400a43, label %block_400a31

block_40073c:                                     ; preds = %block_400730
  %1359 = load i64, i64* %RBP
  %1360 = sub i64 %1359, 8
  %1361 = load i64, i64* %PC
  %1362 = add i64 %1361, 3
  store i64 %1362, i64* %PC
  %1363 = inttoptr i64 %1360 to i32*
  %1364 = load i32, i32* %1363
  %1365 = zext i32 %1364 to i64
  store i64 %1365, i64* %RAX, align 8, !tbaa !2428
  %1366 = load i64, i64* %RAX
  %1367 = load i64, i64* %PC
  %1368 = add i64 %1367, 3
  store i64 %1368, i64* %PC
  %1369 = and i64 15, %1366
  %1370 = trunc i64 %1369 to i32
  store i64 %1369, i64* %RAX, align 8, !tbaa !2428
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1371, align 1, !tbaa !2432
  %1372 = and i32 %1370, 255
  %1373 = call i32 @llvm.ctpop.i32(i32 %1372) #17
  %1374 = trunc i32 %1373 to i8
  %1375 = and i8 %1374, 1
  %1376 = xor i8 %1375, 1
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1376, i8* %1377, align 1, !tbaa !2446
  %1378 = icmp eq i32 %1370, 0
  %1379 = zext i1 %1378 to i8
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1379, i8* %1380, align 1, !tbaa !2448
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1381, align 1, !tbaa !2449
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1382, align 1, !tbaa !2450
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1383, align 1, !tbaa !2447
  %1384 = load i32, i32* %EAX
  %1385 = zext i32 %1384 to i64
  %1386 = load i64, i64* %PC
  %1387 = add i64 %1386, 3
  store i64 %1387, i64* %PC
  %1388 = sub i32 %1384, 8
  %1389 = icmp ult i32 %1384, 8
  %1390 = zext i1 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1390, i8* %1391, align 1, !tbaa !2432
  %1392 = and i32 %1388, 255
  %1393 = call i32 @llvm.ctpop.i32(i32 %1392) #17
  %1394 = trunc i32 %1393 to i8
  %1395 = and i8 %1394, 1
  %1396 = xor i8 %1395, 1
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1396, i8* %1397, align 1, !tbaa !2446
  %1398 = xor i64 8, %1385
  %1399 = trunc i64 %1398 to i32
  %1400 = xor i32 %1399, %1388
  %1401 = lshr i32 %1400, 4
  %1402 = trunc i32 %1401 to i8
  %1403 = and i8 %1402, 1
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1403, i8* %1404, align 1, !tbaa !2447
  %1405 = icmp eq i32 %1388, 0
  %1406 = zext i1 %1405 to i8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1406, i8* %1407, align 1, !tbaa !2448
  %1408 = lshr i32 %1388, 31
  %1409 = trunc i32 %1408 to i8
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1409, i8* %1410, align 1, !tbaa !2449
  %1411 = lshr i32 %1384, 31
  %1412 = xor i32 %1408, %1411
  %1413 = add nuw nsw i32 %1412, %1411
  %1414 = icmp eq i32 %1413, 2
  %1415 = zext i1 %1414 to i8
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1415, i8* %1416, align 1, !tbaa !2450
  %1417 = load i64, i64* %PC
  %1418 = add i64 %1417, 21
  %1419 = load i64, i64* %PC
  %1420 = add i64 %1419, 6
  %1421 = load i64, i64* %PC
  %1422 = add i64 %1421, 6
  store i64 %1422, i64* %PC
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1424 = load i8, i8* %1423, align 1, !tbaa !2448
  store i8 %1424, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1426 = icmp ne i8 %1424, 0
  %1427 = select i1 %1426, i64 %1418, i64 %1420
  store i64 %1427, i64* %1425, align 8, !tbaa !2428
  %1428 = load i8, i8* %BRANCH_TAKEN
  %1429 = icmp eq i8 %1428, 1
  br i1 %1429, label %block_40075a, label %block_40074b

block_40083a:                                     ; preds = %block_400980, %block_4007ff
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.7, %block_4007ff ], [ %MEMORY.14, %block_400980 ]
  %1430 = load i64, i64* %RBP
  %1431 = sub i64 %1430, 8
  %1432 = load i64, i64* %PC
  %1433 = add i64 %1432, 4
  store i64 %1433, i64* %PC
  %1434 = inttoptr i64 %1431 to i32*
  %1435 = load i32, i32* %1434
  %1436 = sext i32 %1435 to i64
  store i64 %1436, i64* %RAX, align 8, !tbaa !2428
  %1437 = load i64, i64* %RAX
  %1438 = load i64, i64* %RBP
  %1439 = sub i64 %1438, 48
  %1440 = load i64, i64* %PC
  %1441 = add i64 %1440, 4
  store i64 %1441, i64* %PC
  %1442 = inttoptr i64 %1439 to i64*
  %1443 = load i64, i64* %1442
  %1444 = sub i64 %1437, %1443
  %1445 = icmp ugt i64 %1443, %1437
  %1446 = zext i1 %1445 to i8
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1446, i8* %1447, align 1, !tbaa !2432
  %1448 = trunc i64 %1444 to i32
  %1449 = and i32 %1448, 255
  %1450 = call i32 @llvm.ctpop.i32(i32 %1449) #17
  %1451 = trunc i32 %1450 to i8
  %1452 = and i8 %1451, 1
  %1453 = xor i8 %1452, 1
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1453, i8* %1454, align 1, !tbaa !2446
  %1455 = xor i64 %1443, %1437
  %1456 = xor i64 %1455, %1444
  %1457 = lshr i64 %1456, 4
  %1458 = trunc i64 %1457 to i8
  %1459 = and i8 %1458, 1
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1459, i8* %1460, align 1, !tbaa !2447
  %1461 = icmp eq i64 %1444, 0
  %1462 = zext i1 %1461 to i8
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1462, i8* %1463, align 1, !tbaa !2448
  %1464 = lshr i64 %1444, 63
  %1465 = trunc i64 %1464 to i8
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1465, i8* %1466, align 1, !tbaa !2449
  %1467 = lshr i64 %1437, 63
  %1468 = lshr i64 %1443, 63
  %1469 = xor i64 %1468, %1467
  %1470 = xor i64 %1464, %1467
  %1471 = add nuw nsw i64 %1470, %1469
  %1472 = icmp eq i64 %1471, 2
  %1473 = zext i1 %1472 to i8
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1473, i8* %1474, align 1, !tbaa !2450
  %1475 = load i64, i64* %PC
  %1476 = add i64 %1475, 345
  %1477 = load i64, i64* %PC
  %1478 = add i64 %1477, 6
  %1479 = load i64, i64* %PC
  %1480 = add i64 %1479, 6
  store i64 %1480, i64* %PC
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1482 = load i8, i8* %1481, align 1, !tbaa !2448
  %1483 = icmp eq i8 %1482, 0
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1485 = load i8, i8* %1484, align 1, !tbaa !2449
  %1486 = icmp ne i8 %1485, 0
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1488 = load i8, i8* %1487, align 1, !tbaa !2450
  %1489 = icmp ne i8 %1488, 0
  %1490 = xor i1 %1486, %1489
  %1491 = xor i1 %1490, true
  %1492 = and i1 %1483, %1491
  %1493 = zext i1 %1492 to i8
  store i8 %1493, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1495 = select i1 %1492, i64 %1476, i64 %1478
  store i64 %1495, i64* %1494, align 8, !tbaa !2428
  %1496 = load i8, i8* %BRANCH_TAKEN
  %1497 = icmp eq i8 %1496, 1
  br i1 %1497, label %block_40099b, label %block_400848

block_400848:                                     ; preds = %block_40083a
  %1498 = load i64, i64* %RBP
  %1499 = sub i64 %1498, 40
  %1500 = load i64, i64* %PC
  %1501 = add i64 %1500, 4
  store i64 %1501, i64* %PC
  %1502 = inttoptr i64 %1499 to i64*
  %1503 = load i64, i64* %1502
  store i64 %1503, i64* %RAX, align 8, !tbaa !2428
  %1504 = load i64, i64* %RBP
  %1505 = sub i64 %1504, 8
  %1506 = load i64, i64* %PC
  %1507 = add i64 %1506, 4
  store i64 %1507, i64* %PC
  %1508 = inttoptr i64 %1505 to i32*
  %1509 = load i32, i32* %1508
  %1510 = sext i32 %1509 to i64
  store i64 %1510, i64* %RCX, align 8, !tbaa !2428
  %1511 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1512 = load i64, i64* %RAX
  %1513 = load i64, i64* %RCX
  %1514 = mul i64 %1513, 8
  %1515 = add i64 %1514, %1512
  %1516 = load i64, i64* %PC
  %1517 = add i64 %1516, 5
  store i64 %1517, i64* %PC
  %1518 = inttoptr i64 %1515 to double*
  %1519 = load double, double* %1518
  %1520 = bitcast i8* %1511 to double*
  store double %1519, double* %1520, align 1, !tbaa !2452
  %1521 = getelementptr inbounds i8, i8* %1511, i64 8
  %1522 = bitcast i8* %1521 to double*
  store double 0.000000e+00, double* %1522, align 1, !tbaa !2452
  %1523 = load i64, i64* %RBP
  %1524 = sub i64 %1523, 112
  %1525 = bitcast %union.vec128_t* %XMM0 to i8*
  %1526 = load i64, i64* %PC
  %1527 = add i64 %1526, 5
  store i64 %1527, i64* %PC
  %1528 = bitcast i8* %1525 to double*
  %1529 = load double, double* %1528, align 1
  %1530 = inttoptr i64 %1524 to double*
  store double %1529, double* %1530
  %1531 = load i64, i64* %RBP
  %1532 = sub i64 %1531, 40
  %1533 = load i64, i64* %PC
  %1534 = add i64 %1533, 4
  store i64 %1534, i64* %PC
  %1535 = inttoptr i64 %1532 to i64*
  %1536 = load i64, i64* %1535
  store i64 %1536, i64* %RAX, align 8, !tbaa !2428
  %1537 = load i64, i64* %RBP
  %1538 = sub i64 %1537, 8
  %1539 = load i64, i64* %PC
  %1540 = add i64 %1539, 3
  store i64 %1540, i64* %PC
  %1541 = inttoptr i64 %1538 to i32*
  %1542 = load i32, i32* %1541
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %RDX, align 8, !tbaa !2428
  %1544 = load i64, i64* %RDX
  %1545 = load i64, i64* %PC
  %1546 = add i64 %1545, 3
  store i64 %1546, i64* %PC
  %1547 = trunc i64 %1544 to i32
  %1548 = add i32 1, %1547
  %1549 = zext i32 %1548 to i64
  store i64 %1549, i64* %RDX, align 8, !tbaa !2428
  %1550 = icmp ult i32 %1548, %1547
  %1551 = icmp ult i32 %1548, 1
  %1552 = or i1 %1550, %1551
  %1553 = zext i1 %1552 to i8
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1553, i8* %1554, align 1, !tbaa !2432
  %1555 = and i32 %1548, 255
  %1556 = call i32 @llvm.ctpop.i32(i32 %1555) #17
  %1557 = trunc i32 %1556 to i8
  %1558 = and i8 %1557, 1
  %1559 = xor i8 %1558, 1
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1559, i8* %1560, align 1, !tbaa !2446
  %1561 = xor i64 1, %1544
  %1562 = trunc i64 %1561 to i32
  %1563 = xor i32 %1562, %1548
  %1564 = lshr i32 %1563, 4
  %1565 = trunc i32 %1564 to i8
  %1566 = and i8 %1565, 1
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1566, i8* %1567, align 1, !tbaa !2447
  %1568 = icmp eq i32 %1548, 0
  %1569 = zext i1 %1568 to i8
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1569, i8* %1570, align 1, !tbaa !2448
  %1571 = lshr i32 %1548, 31
  %1572 = trunc i32 %1571 to i8
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1572, i8* %1573, align 1, !tbaa !2449
  %1574 = lshr i32 %1547, 31
  %1575 = xor i32 %1571, %1574
  %1576 = add nuw nsw i32 %1575, %1571
  %1577 = icmp eq i32 %1576, 2
  %1578 = zext i1 %1577 to i8
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1578, i8* %1579, align 1, !tbaa !2450
  %1580 = load i32, i32* %EDX
  %1581 = zext i32 %1580 to i64
  %1582 = load i64, i64* %PC
  %1583 = add i64 %1582, 3
  store i64 %1583, i64* %PC
  %1584 = shl i64 %1581, 32
  %1585 = ashr exact i64 %1584, 32
  store i64 %1585, i64* %RCX, align 8, !tbaa !2428
  %1586 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1587 = load i64, i64* %RAX
  %1588 = load i64, i64* %RCX
  %1589 = mul i64 %1588, 8
  %1590 = add i64 %1589, %1587
  %1591 = load i64, i64* %PC
  %1592 = add i64 %1591, 5
  store i64 %1592, i64* %PC
  %1593 = inttoptr i64 %1590 to double*
  %1594 = load double, double* %1593
  %1595 = bitcast i8* %1586 to double*
  store double %1594, double* %1595, align 1, !tbaa !2452
  %1596 = getelementptr inbounds i8, i8* %1586, i64 8
  %1597 = bitcast i8* %1596 to double*
  store double 0.000000e+00, double* %1597, align 1, !tbaa !2452
  %1598 = load i64, i64* %RBP
  %1599 = sub i64 %1598, 120
  %1600 = bitcast %union.vec128_t* %XMM0 to i8*
  %1601 = load i64, i64* %PC
  %1602 = add i64 %1601, 5
  store i64 %1602, i64* %PC
  %1603 = bitcast i8* %1600 to double*
  %1604 = load double, double* %1603, align 1
  %1605 = inttoptr i64 %1599 to double*
  store double %1604, double* %1605
  %1606 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1607 = load i64, i64* %RBP
  %1608 = sub i64 %1607, 112
  %1609 = load i64, i64* %PC
  %1610 = add i64 %1609, 5
  store i64 %1610, i64* %PC
  %1611 = inttoptr i64 %1608 to double*
  %1612 = load double, double* %1611
  %1613 = bitcast i8* %1606 to double*
  store double %1612, double* %1613, align 1, !tbaa !2452
  %1614 = getelementptr inbounds i8, i8* %1606, i64 8
  %1615 = bitcast i8* %1614 to double*
  store double 0.000000e+00, double* %1615, align 1, !tbaa !2452
  %1616 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1617 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1618 = load i64, i64* %RBP
  %1619 = sub i64 %1618, 128
  %1620 = load i64, i64* %PC
  %1621 = add i64 %1620, 5
  store i64 %1621, i64* %PC
  %1622 = bitcast i8* %1617 to double*
  %1623 = load double, double* %1622, align 1
  %1624 = getelementptr inbounds i8, i8* %1617, i64 8
  %1625 = bitcast i8* %1624 to i64*
  %1626 = load i64, i64* %1625, align 1
  %1627 = inttoptr i64 %1619 to double*
  %1628 = load double, double* %1627
  %1629 = fadd double %1623, %1628
  %1630 = bitcast i8* %1616 to double*
  store double %1629, double* %1630, align 1, !tbaa !2452
  %1631 = getelementptr inbounds i8, i8* %1616, i64 8
  %1632 = bitcast i8* %1631 to i64*
  store i64 %1626, i64* %1632, align 1, !tbaa !2452
  %1633 = load i64, i64* %RBP
  %1634 = sub i64 %1633, 128
  %1635 = bitcast %union.vec128_t* %XMM0 to i8*
  %1636 = load i64, i64* %PC
  %1637 = add i64 %1636, 5
  store i64 %1637, i64* %PC
  %1638 = bitcast i8* %1635 to double*
  %1639 = load double, double* %1638, align 1
  %1640 = inttoptr i64 %1634 to double*
  store double %1639, double* %1640
  %1641 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1642 = load i64, i64* %RBP
  %1643 = sub i64 %1642, 120
  %1644 = load i64, i64* %PC
  %1645 = add i64 %1644, 5
  store i64 %1645, i64* %PC
  %1646 = inttoptr i64 %1643 to double*
  %1647 = load double, double* %1646
  %1648 = bitcast i8* %1641 to double*
  store double %1647, double* %1648, align 1, !tbaa !2452
  %1649 = getelementptr inbounds i8, i8* %1641, i64 8
  %1650 = bitcast i8* %1649 to double*
  store double 0.000000e+00, double* %1650, align 1, !tbaa !2452
  %1651 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1652 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1653 = load i64, i64* %RBP
  %1654 = sub i64 %1653, 136
  %1655 = load i64, i64* %PC
  %1656 = add i64 %1655, 8
  store i64 %1656, i64* %PC
  %1657 = bitcast i8* %1652 to double*
  %1658 = load double, double* %1657, align 1
  %1659 = getelementptr inbounds i8, i8* %1652, i64 8
  %1660 = bitcast i8* %1659 to i64*
  %1661 = load i64, i64* %1660, align 1
  %1662 = inttoptr i64 %1654 to double*
  %1663 = load double, double* %1662
  %1664 = fadd double %1658, %1663
  %1665 = bitcast i8* %1651 to double*
  store double %1664, double* %1665, align 1, !tbaa !2452
  %1666 = getelementptr inbounds i8, i8* %1651, i64 8
  %1667 = bitcast i8* %1666 to i64*
  store i64 %1661, i64* %1667, align 1, !tbaa !2452
  %1668 = load i64, i64* %RBP
  %1669 = sub i64 %1668, 136
  %1670 = bitcast %union.vec128_t* %XMM0 to i8*
  %1671 = load i64, i64* %PC
  %1672 = add i64 %1671, 8
  store i64 %1672, i64* %PC
  %1673 = bitcast i8* %1670 to double*
  %1674 = load double, double* %1673, align 1
  %1675 = inttoptr i64 %1669 to double*
  store double %1674, double* %1675
  %1676 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1677 = load i64, i64* %RBP
  %1678 = sub i64 %1677, 112
  %1679 = load i64, i64* %PC
  %1680 = add i64 %1679, 5
  store i64 %1680, i64* %PC
  %1681 = inttoptr i64 %1678 to double*
  %1682 = load double, double* %1681
  %1683 = bitcast i8* %1676 to double*
  store double %1682, double* %1683, align 1, !tbaa !2452
  %1684 = getelementptr inbounds i8, i8* %1676, i64 8
  %1685 = bitcast i8* %1684 to double*
  store double 0.000000e+00, double* %1685, align 1, !tbaa !2452
  %1686 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %1687 = load i64, i64* %RBP
  %1688 = sub i64 %1687, 80
  %1689 = load i64, i64* %PC
  %1690 = add i64 %1689, 5
  store i64 %1690, i64* %PC
  %1691 = inttoptr i64 %1688 to double*
  %1692 = load double, double* %1691
  %1693 = bitcast i8* %1686 to double*
  store double %1692, double* %1693, align 1, !tbaa !2452
  %1694 = getelementptr inbounds i8, i8* %1686, i64 8
  %1695 = bitcast i8* %1694 to double*
  store double 0.000000e+00, double* %1695, align 1, !tbaa !2452
  %1696 = bitcast %union.vec128_t* %XMM1 to i8*
  %1697 = bitcast %union.vec128_t* %XMM0 to i8*
  %1698 = load i64, i64* %PC
  %1699 = add i64 %1698, 4
  store i64 %1699, i64* %PC
  %1700 = bitcast i8* %1696 to double*
  %1701 = load double, double* %1700, align 1
  %1702 = bitcast i8* %1697 to double*
  %1703 = load double, double* %1702, align 1
  %1704 = fcmp uno double %1701, %1703
  br i1 %1704, label %1705, label %1717

; <label>:1705:                                   ; preds = %block_400848
  %1706 = fadd double %1701, %1703
  %1707 = bitcast double %1706 to i64
  %1708 = and i64 %1707, 9221120237041090560
  %1709 = icmp eq i64 %1708, 9218868437227405312
  %1710 = and i64 %1707, 2251799813685247
  %1711 = icmp ne i64 %1710, 0
  %1712 = and i1 %1709, %1711
  br i1 %1712, label %1713, label %1723

; <label>:1713:                                   ; preds = %1705
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1715 = load i64, i64* %1714, align 8, !tbaa !2428
  %1716 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1715, %struct.Memory* %MEMORY.3) #18
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit1

; <label>:1717:                                   ; preds = %block_400848
  %1718 = fcmp ogt double %1701, %1703
  br i1 %1718, label %1723, label %1719

; <label>:1719:                                   ; preds = %1717
  %1720 = fcmp olt double %1701, %1703
  br i1 %1720, label %1723, label %1721

; <label>:1721:                                   ; preds = %1719
  %1722 = fcmp oeq double %1701, %1703
  br i1 %1722, label %1723, label %1730

; <label>:1723:                                   ; preds = %1721, %1719, %1717, %1705
  %1724 = phi i8 [ 0, %1717 ], [ 0, %1719 ], [ 1, %1721 ], [ 1, %1705 ]
  %1725 = phi i8 [ 0, %1717 ], [ 0, %1719 ], [ 0, %1721 ], [ 1, %1705 ]
  %1726 = phi i8 [ 0, %1717 ], [ 1, %1719 ], [ 0, %1721 ], [ 1, %1705 ]
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1724, i8* %1727, align 1, !tbaa !2451
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1725, i8* %1728, align 1, !tbaa !2451
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1726, i8* %1729, align 1, !tbaa !2451
  br label %1730

; <label>:1730:                                   ; preds = %1723, %1721
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1731, align 1, !tbaa !2451
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1732, align 1, !tbaa !2451
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1733, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit1

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit1: ; preds = %1713, %1730
  %1734 = phi %struct.Memory* [ %1716, %1713 ], [ %MEMORY.3, %1730 ]
  %1735 = load i64, i64* %PC
  %1736 = add i64 %1735, 24
  %1737 = load i64, i64* %PC
  %1738 = add i64 %1737, 6
  %1739 = load i64, i64* %PC
  %1740 = add i64 %1739, 6
  store i64 %1740, i64* %PC
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1742 = load i8, i8* %1741, align 1, !tbaa !2432
  store i8 %1742, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1744 = icmp ne i8 %1742, 0
  %1745 = select i1 %1744, i64 %1736, i64 %1738
  store i64 %1745, i64* %1743, align 8, !tbaa !2428
  %1746 = load i8, i8* %BRANCH_TAKEN
  %1747 = icmp eq i8 %1746, 1
  %1748 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %1749 = load i64, i64* %RBP
  br i1 %1747, label %block_4008bb, label %block_4008a9

block_4007b7:                                     ; preds = %block_4007ab
  %1750 = load i64, i64* %PC
  %1751 = add i64 %1750, 10
  store i64 %1751, i64* %PC
  store i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 12), i64* %RSI, align 8, !tbaa !2428
  %1752 = load i64, i64* %PC
  %1753 = add i64 %1752, 5
  store i64 %1753, i64* %PC
  store i64 2, i64* %RDX, align 8, !tbaa !2428
  %1754 = load i64, i64* %PC
  %1755 = add i64 %1754, 5
  store i64 %1755, i64* %PC
  store i64 1, i64* %RCX, align 8, !tbaa !2428
  %1756 = load i64, i64* %RBP
  %1757 = sub i64 %1756, 40
  %1758 = load i64, i64* %PC
  %1759 = add i64 %1758, 4
  store i64 %1759, i64* %PC
  %1760 = inttoptr i64 %1757 to i64*
  %1761 = load i64, i64* %1760
  store i64 %1761, i64* %RDI, align 8, !tbaa !2428
  %1762 = load i64, i64* %PC
  %1763 = add i64 %1762, 865
  %1764 = load i64, i64* %PC
  %1765 = add i64 %1764, 5
  %1766 = load i64, i64* %PC
  %1767 = add i64 %1766, 5
  store i64 %1767, i64* %PC
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1769 = load i64, i64* %1768, align 8, !tbaa !2428
  %1770 = add i64 %1769, -8
  %1771 = inttoptr i64 %1770 to i64*
  store i64 %1765, i64* %1771
  store i64 %1770, i64* %1768, align 8, !tbaa !2428
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1763, i64* %1772, align 8, !tbaa !2428
  %1773 = load i64, i64* %PC
  %1774 = call %struct.Memory* @sub_400b30_fourn_renamed_(%struct.State* %0, i64 %1773, %struct.Memory* %MEMORY.7)
  %1775 = load i64, i64* %PC
  %1776 = add i64 %1775, 10
  store i64 %1776, i64* %PC
  store i64 add (i64 ptrtoint (%seg_602060__bss_type* @seg_602060__bss to i64), i64 12), i64* %RSI, align 8, !tbaa !2428
  %1777 = load i64, i64* %PC
  %1778 = add i64 %1777, 5
  store i64 %1778, i64* %PC
  store i64 2, i64* %RDX, align 8, !tbaa !2428
  %1779 = load i64, i64* %PC
  %1780 = add i64 %1779, 5
  store i64 %1780, i64* %PC
  store i64 4294967295, i64* %RCX, align 8, !tbaa !2428
  %1781 = load i64, i64* %RBP
  %1782 = sub i64 %1781, 40
  %1783 = load i64, i64* %PC
  %1784 = add i64 %1783, 4
  store i64 %1784, i64* %PC
  %1785 = inttoptr i64 %1782 to i64*
  %1786 = load i64, i64* %1785
  store i64 %1786, i64* %RDI, align 8, !tbaa !2428
  %1787 = load i64, i64* %PC
  %1788 = add i64 %1787, 836
  %1789 = load i64, i64* %PC
  %1790 = add i64 %1789, 5
  %1791 = load i64, i64* %PC
  %1792 = add i64 %1791, 5
  store i64 %1792, i64* %PC
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1794 = load i64, i64* %1793, align 8, !tbaa !2428
  %1795 = add i64 %1794, -8
  %1796 = inttoptr i64 %1795 to i64*
  store i64 %1790, i64* %1796
  store i64 %1795, i64* %1793, align 8, !tbaa !2428
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1788, i64* %1797, align 8, !tbaa !2428
  %1798 = load i64, i64* %PC
  %1799 = call %struct.Memory* @sub_400b30_fourn_renamed_(%struct.State* %0, i64 %1798, %struct.Memory* %1774)
  %1800 = load i64, i64* %RBP
  %1801 = sub i64 %1800, 8
  %1802 = load i64, i64* %PC
  %1803 = add i64 %1802, 3
  store i64 %1803, i64* %PC
  %1804 = inttoptr i64 %1801 to i32*
  %1805 = load i32, i32* %1804
  %1806 = zext i32 %1805 to i64
  store i64 %1806, i64* %RAX, align 8, !tbaa !2428
  %1807 = load i64, i64* %RAX
  %1808 = load i64, i64* %PC
  %1809 = add i64 %1808, 3
  store i64 %1809, i64* %PC
  %1810 = trunc i64 %1807 to i32
  %1811 = add i32 1, %1810
  %1812 = zext i32 %1811 to i64
  store i64 %1812, i64* %RAX, align 8, !tbaa !2428
  %1813 = icmp ult i32 %1811, %1810
  %1814 = icmp ult i32 %1811, 1
  %1815 = or i1 %1813, %1814
  %1816 = zext i1 %1815 to i8
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1816, i8* %1817, align 1, !tbaa !2432
  %1818 = and i32 %1811, 255
  %1819 = call i32 @llvm.ctpop.i32(i32 %1818) #17
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  %1822 = xor i8 %1821, 1
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1822, i8* %1823, align 1, !tbaa !2446
  %1824 = xor i64 1, %1807
  %1825 = trunc i64 %1824 to i32
  %1826 = xor i32 %1825, %1811
  %1827 = lshr i32 %1826, 4
  %1828 = trunc i32 %1827 to i8
  %1829 = and i8 %1828, 1
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1829, i8* %1830, align 1, !tbaa !2447
  %1831 = icmp eq i32 %1811, 0
  %1832 = zext i1 %1831 to i8
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1832, i8* %1833, align 1, !tbaa !2448
  %1834 = lshr i32 %1811, 31
  %1835 = trunc i32 %1834 to i8
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1835, i8* %1836, align 1, !tbaa !2449
  %1837 = lshr i32 %1810, 31
  %1838 = xor i32 %1834, %1837
  %1839 = add nuw nsw i32 %1838, %1834
  %1840 = icmp eq i32 %1839, 2
  %1841 = zext i1 %1840 to i8
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1841, i8* %1842, align 1, !tbaa !2450
  %1843 = load i64, i64* %RBP
  %1844 = sub i64 %1843, 8
  %1845 = load i32, i32* %EAX
  %1846 = zext i32 %1845 to i64
  %1847 = load i64, i64* %PC
  %1848 = add i64 %1847, 3
  store i64 %1848, i64* %PC
  %1849 = inttoptr i64 %1844 to i32*
  store i32 %1845, i32* %1849
  %1850 = load i64, i64* %PC
  %1851 = sub i64 %1850, 79
  %1852 = load i64, i64* %PC
  %1853 = add i64 %1852, 5
  store i64 %1853, i64* %PC
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1851, i64* %1854, align 8, !tbaa !2428
  br label %block_4007ab

block_4009e1:                                     ; preds = %block_4009da, %block_400a9a
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.9, %block_4009da ], [ %MEMORY.11, %block_400a9a ]
  %1855 = load i64, i64* %RBP
  %1856 = sub i64 %1855, 12
  %1857 = load i64, i64* %PC
  %1858 = add i64 %1857, 3
  store i64 %1858, i64* %PC
  %1859 = inttoptr i64 %1856 to i32*
  %1860 = load i32, i32* %1859
  %1861 = zext i32 %1860 to i64
  store i64 %1861, i64* %RAX, align 8, !tbaa !2428
  %1862 = load i32, i32* %EAX
  %1863 = zext i32 %1862 to i64
  %1864 = load i64, i64* %RBP
  %1865 = sub i64 %1864, 32
  %1866 = load i64, i64* %PC
  %1867 = add i64 %1866, 3
  store i64 %1867, i64* %PC
  %1868 = inttoptr i64 %1865 to i32*
  %1869 = load i32, i32* %1868
  %1870 = sub i32 %1862, %1869
  %1871 = icmp ult i32 %1862, %1869
  %1872 = zext i1 %1871 to i8
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1872, i8* %1873, align 1, !tbaa !2432
  %1874 = and i32 %1870, 255
  %1875 = call i32 @llvm.ctpop.i32(i32 %1874) #17
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  %1878 = xor i8 %1877, 1
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1878, i8* %1879, align 1, !tbaa !2446
  %1880 = xor i32 %1869, %1862
  %1881 = xor i32 %1880, %1870
  %1882 = lshr i32 %1881, 4
  %1883 = trunc i32 %1882 to i8
  %1884 = and i8 %1883, 1
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1884, i8* %1885, align 1, !tbaa !2447
  %1886 = icmp eq i32 %1870, 0
  %1887 = zext i1 %1886 to i8
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1887, i8* %1888, align 1, !tbaa !2448
  %1889 = lshr i32 %1870, 31
  %1890 = trunc i32 %1889 to i8
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1890, i8* %1891, align 1, !tbaa !2449
  %1892 = lshr i32 %1862, 31
  %1893 = lshr i32 %1869, 31
  %1894 = xor i32 %1893, %1892
  %1895 = xor i32 %1889, %1892
  %1896 = add nuw nsw i32 %1895, %1894
  %1897 = icmp eq i32 %1896, 2
  %1898 = zext i1 %1897 to i8
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1898, i8* %1899, align 1, !tbaa !2450
  %1900 = load i64, i64* %PC
  %1901 = add i64 %1900, 198
  %1902 = load i64, i64* %PC
  %1903 = add i64 %1902, 6
  %1904 = load i64, i64* %PC
  %1905 = add i64 %1904, 6
  store i64 %1905, i64* %PC
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1907 = load i8, i8* %1906, align 1, !tbaa !2449
  %1908 = icmp ne i8 %1907, 0
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1910 = load i8, i8* %1909, align 1, !tbaa !2450
  %1911 = icmp ne i8 %1910, 0
  %1912 = xor i1 %1908, %1911
  %1913 = xor i1 %1912, true
  %1914 = zext i1 %1913 to i8
  store i8 %1914, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1916 = select i1 %1912, i64 %1903, i64 %1901
  store i64 %1916, i64* %1915, align 8, !tbaa !2428
  %1917 = load i8, i8* %BRANCH_TAKEN
  %1918 = icmp eq i8 %1917, 1
  %1919 = load i64, i64* %PC
  br i1 %1918, label %block_400aad, label %block_4009ed

block_400730:                                     ; preds = %block_400729, %block_40077e
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.10, %block_400729 ], [ %MEMORY.0, %block_40077e ]
  %1920 = load i64, i64* %RBP
  %1921 = sub i64 %1920, 12
  %1922 = load i64, i64* %PC
  %1923 = add i64 %1922, 3
  store i64 %1923, i64* %PC
  %1924 = inttoptr i64 %1921 to i32*
  %1925 = load i32, i32* %1924
  %1926 = zext i32 %1925 to i64
  store i64 %1926, i64* %RAX, align 8, !tbaa !2428
  %1927 = load i32, i32* %EAX
  %1928 = zext i32 %1927 to i64
  %1929 = load i64, i64* %RBP
  %1930 = sub i64 %1929, 32
  %1931 = load i64, i64* %PC
  %1932 = add i64 %1931, 3
  store i64 %1932, i64* %PC
  %1933 = inttoptr i64 %1930 to i32*
  %1934 = load i32, i32* %1933
  %1935 = sub i32 %1927, %1934
  %1936 = icmp ult i32 %1927, %1934
  %1937 = zext i1 %1936 to i8
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1937, i8* %1938, align 1, !tbaa !2432
  %1939 = and i32 %1935, 255
  %1940 = call i32 @llvm.ctpop.i32(i32 %1939) #17
  %1941 = trunc i32 %1940 to i8
  %1942 = and i8 %1941, 1
  %1943 = xor i8 %1942, 1
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1943, i8* %1944, align 1, !tbaa !2446
  %1945 = xor i32 %1934, %1927
  %1946 = xor i32 %1945, %1935
  %1947 = lshr i32 %1946, 4
  %1948 = trunc i32 %1947 to i8
  %1949 = and i8 %1948, 1
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1949, i8* %1950, align 1, !tbaa !2447
  %1951 = icmp eq i32 %1935, 0
  %1952 = zext i1 %1951 to i8
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1952, i8* %1953, align 1, !tbaa !2448
  %1954 = lshr i32 %1935, 31
  %1955 = trunc i32 %1954 to i8
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1955, i8* %1956, align 1, !tbaa !2449
  %1957 = lshr i32 %1927, 31
  %1958 = lshr i32 %1934, 31
  %1959 = xor i32 %1958, %1957
  %1960 = xor i32 %1954, %1957
  %1961 = add nuw nsw i32 %1960, %1959
  %1962 = icmp eq i32 %1961, 2
  %1963 = zext i1 %1962 to i8
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1963, i8* %1964, align 1, !tbaa !2450
  %1965 = load i64, i64* %PC
  %1966 = add i64 %1965, 91
  %1967 = load i64, i64* %PC
  %1968 = add i64 %1967, 6
  %1969 = load i64, i64* %PC
  %1970 = add i64 %1969, 6
  store i64 %1970, i64* %PC
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1972 = load i8, i8* %1971, align 1, !tbaa !2449
  %1973 = icmp ne i8 %1972, 0
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1975 = load i8, i8* %1974, align 1, !tbaa !2450
  %1976 = icmp ne i8 %1975, 0
  %1977 = xor i1 %1973, %1976
  %1978 = xor i1 %1977, true
  %1979 = zext i1 %1978 to i8
  store i8 %1979, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1981 = select i1 %1977, i64 %1968, i64 %1966
  store i64 %1981, i64* %1980, align 8, !tbaa !2428
  %1982 = load i8, i8* %BRANCH_TAKEN
  %1983 = icmp eq i8 %1982, 1
  br i1 %1983, label %block_400791, label %block_40073c

block_400a43:                                     ; preds = %block_400a31, %block_4009ed
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.4, %block_4009ed ], [ %MEMORY.4, %block_400a31 ]
  %1984 = load i64, i64* %RBP
  %1985 = sub i64 %1984, 177
  %1986 = load i64, i64* %PC
  %1987 = add i64 %1986, 6
  store i64 %1987, i64* %PC
  %1988 = inttoptr i64 %1985 to i8*
  %1989 = load i8, i8* %1988
  store i8 %1989, i8* %AL, align 1, !tbaa !2451
  %1990 = load i64, i64* %RCX
  %1991 = load i32, i32* %ECX
  %1992 = zext i32 %1991 to i64
  %1993 = load i64, i64* %PC
  %1994 = add i64 %1993, 2
  store i64 %1994, i64* %PC
  %1995 = xor i64 %1992, %1990
  %1996 = trunc i64 %1995 to i32
  %1997 = and i64 %1995, 4294967295
  store i64 %1997, i64* %RCX, align 8, !tbaa !2428
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1998, align 1, !tbaa !2432
  %1999 = and i32 %1996, 255
  %2000 = call i32 @llvm.ctpop.i32(i32 %1999) #17
  %2001 = trunc i32 %2000 to i8
  %2002 = and i8 %2001, 1
  %2003 = xor i8 %2002, 1
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2003, i8* %2004, align 1, !tbaa !2446
  %2005 = icmp eq i32 %1996, 0
  %2006 = zext i1 %2005 to i8
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2006, i8* %2007, align 1, !tbaa !2448
  %2008 = lshr i32 %1996, 31
  %2009 = trunc i32 %2008 to i8
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2009, i8* %2010, align 1, !tbaa !2449
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2011, align 1, !tbaa !2450
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2012, align 1, !tbaa !2447
  %2013 = load i64, i64* %PC
  %2014 = add i64 %2013, 5
  store i64 %2014, i64* %PC
  store i64 255, i64* %RDX, align 8, !tbaa !2428
  %2015 = load i8, i8* %AL
  %2016 = zext i8 %2015 to i64
  %2017 = load i64, i64* %PC
  %2018 = add i64 %2017, 2
  store i64 %2018, i64* %PC
  %2019 = and i64 1, %2016
  %2020 = trunc i64 %2019 to i8
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2021, align 1, !tbaa !2432
  %2022 = trunc i64 %2019 to i32
  %2023 = and i32 %2022, 255
  %2024 = call i32 @llvm.ctpop.i32(i32 %2023) #17
  %2025 = trunc i32 %2024 to i8
  %2026 = and i8 %2025, 1
  %2027 = xor i8 %2026, 1
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2027, i8* %2028, align 1, !tbaa !2446
  %2029 = icmp eq i8 %2020, 0
  %2030 = zext i1 %2029 to i8
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2030, i8* %2031, align 1, !tbaa !2448
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2032, align 1, !tbaa !2449
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2033, align 1, !tbaa !2450
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2034, align 1, !tbaa !2447
  %2035 = load i32, i32* %EDX
  %2036 = zext i32 %2035 to i64
  %2037 = load i64, i64* %PC
  %2038 = add i64 %2037, 3
  store i64 %2038, i64* %PC
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2040 = load i8, i8* %2039, align 1, !tbaa !2448
  %2041 = icmp eq i8 %2040, 0
  %2042 = load i64, i64* %RCX, align 8, !tbaa !2428
  %2043 = select i1 %2041, i64 %2036, i64 %2042
  %2044 = and i64 %2043, 4294967295
  store i64 %2044, i64* %RCX, align 8, !tbaa !2428
  %2045 = load i64, i64* %RBP
  %2046 = sub i64 %2045, 20
  %2047 = load i32, i32* %ECX
  %2048 = zext i32 %2047 to i64
  %2049 = load i64, i64* %PC
  %2050 = add i64 %2049, 3
  store i64 %2050, i64* %PC
  %2051 = inttoptr i64 %2046 to i32*
  store i32 %2047, i32* %2051
  %2052 = load i64, i64* %RBP
  %2053 = sub i64 %2052, 16
  %2054 = load i64, i64* %PC
  %2055 = add i64 %2054, 3
  store i64 %2055, i64* %PC
  %2056 = inttoptr i64 %2053 to i32*
  %2057 = load i32, i32* %2056
  %2058 = zext i32 %2057 to i64
  store i64 %2058, i64* %RCX, align 8, !tbaa !2428
  %2059 = load i32, i32* %ECX
  %2060 = zext i32 %2059 to i64
  %2061 = load i64, i64* %RBP
  %2062 = sub i64 %2061, 20
  %2063 = load i64, i64* %PC
  %2064 = add i64 %2063, 3
  store i64 %2064, i64* %PC
  %2065 = inttoptr i64 %2062 to i32*
  %2066 = load i32, i32* %2065
  %2067 = sub i32 %2059, %2066
  %2068 = icmp ult i32 %2059, %2066
  %2069 = zext i1 %2068 to i8
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2069, i8* %2070, align 1, !tbaa !2432
  %2071 = and i32 %2067, 255
  %2072 = call i32 @llvm.ctpop.i32(i32 %2071) #17
  %2073 = trunc i32 %2072 to i8
  %2074 = and i8 %2073, 1
  %2075 = xor i8 %2074, 1
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2075, i8* %2076, align 1, !tbaa !2446
  %2077 = xor i32 %2066, %2059
  %2078 = xor i32 %2077, %2067
  %2079 = lshr i32 %2078, 4
  %2080 = trunc i32 %2079 to i8
  %2081 = and i8 %2080, 1
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2081, i8* %2082, align 1, !tbaa !2447
  %2083 = icmp eq i32 %2067, 0
  %2084 = zext i1 %2083 to i8
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2084, i8* %2085, align 1, !tbaa !2448
  %2086 = lshr i32 %2067, 31
  %2087 = trunc i32 %2086 to i8
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2087, i8* %2088, align 1, !tbaa !2449
  %2089 = lshr i32 %2059, 31
  %2090 = lshr i32 %2066, 31
  %2091 = xor i32 %2090, %2089
  %2092 = xor i32 %2086, %2089
  %2093 = add nuw nsw i32 %2092, %2091
  %2094 = icmp eq i32 %2093, 2
  %2095 = zext i1 %2094 to i8
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2095, i8* %2096, align 1, !tbaa !2450
  %2097 = load i64, i64* %PC
  %2098 = add i64 %2097, 60
  %2099 = load i64, i64* %PC
  %2100 = add i64 %2099, 6
  %2101 = load i64, i64* %PC
  %2102 = add i64 %2101, 6
  store i64 %2102, i64* %PC
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2104 = load i8, i8* %2103, align 1, !tbaa !2448
  store i8 %2104, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2106 = icmp ne i8 %2104, 0
  %2107 = select i1 %2106, i64 %2098, i64 %2100
  store i64 %2107, i64* %2105, align 8, !tbaa !2428
  %2108 = load i8, i8* %BRANCH_TAKEN
  %2109 = icmp eq i8 %2108, 1
  br i1 %2109, label %block_400a9a, label %block_400a64

block_400aad:                                     ; preds = %block_4009e1
  %2110 = add i64 %1919, 5
  %2111 = load i64, i64* %PC
  %2112 = add i64 %2111, 5
  store i64 %2112, i64* %PC
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2110, i64* %2113, align 8, !tbaa !2428
  %2114 = load i64, i64* %RBP
  %2115 = sub i64 %2114, 8
  %2116 = load i64, i64* %PC
  %2117 = add i64 %2116, 3
  store i64 %2117, i64* %PC
  %2118 = inttoptr i64 %2115 to i32*
  %2119 = load i32, i32* %2118
  %2120 = zext i32 %2119 to i64
  store i64 %2120, i64* %RAX, align 8, !tbaa !2428
  %2121 = load i64, i64* %RAX
  %2122 = load i64, i64* %PC
  %2123 = add i64 %2122, 3
  store i64 %2123, i64* %PC
  %2124 = trunc i64 %2121 to i32
  %2125 = add i32 1, %2124
  %2126 = zext i32 %2125 to i64
  store i64 %2126, i64* %RAX, align 8, !tbaa !2428
  %2127 = icmp ult i32 %2125, %2124
  %2128 = icmp ult i32 %2125, 1
  %2129 = or i1 %2127, %2128
  %2130 = zext i1 %2129 to i8
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2130, i8* %2131, align 1, !tbaa !2432
  %2132 = and i32 %2125, 255
  %2133 = call i32 @llvm.ctpop.i32(i32 %2132) #17
  %2134 = trunc i32 %2133 to i8
  %2135 = and i8 %2134, 1
  %2136 = xor i8 %2135, 1
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2136, i8* %2137, align 1, !tbaa !2446
  %2138 = xor i64 1, %2121
  %2139 = trunc i64 %2138 to i32
  %2140 = xor i32 %2139, %2125
  %2141 = lshr i32 %2140, 4
  %2142 = trunc i32 %2141 to i8
  %2143 = and i8 %2142, 1
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2143, i8* %2144, align 1, !tbaa !2447
  %2145 = icmp eq i32 %2125, 0
  %2146 = zext i1 %2145 to i8
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2146, i8* %2147, align 1, !tbaa !2448
  %2148 = lshr i32 %2125, 31
  %2149 = trunc i32 %2148 to i8
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2149, i8* %2150, align 1, !tbaa !2449
  %2151 = lshr i32 %2124, 31
  %2152 = xor i32 %2148, %2151
  %2153 = add nuw nsw i32 %2152, %2148
  %2154 = icmp eq i32 %2153, 2
  %2155 = zext i1 %2154 to i8
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2155, i8* %2156, align 1, !tbaa !2450
  %2157 = load i64, i64* %RBP
  %2158 = sub i64 %2157, 8
  %2159 = load i32, i32* %EAX
  %2160 = zext i32 %2159 to i64
  %2161 = load i64, i64* %PC
  %2162 = add i64 %2161, 3
  store i64 %2162, i64* %PC
  %2163 = inttoptr i64 %2158 to i32*
  store i32 %2159, i32* %2163
  %2164 = load i64, i64* %PC
  %2165 = sub i64 %2164, 237
  %2166 = load i64, i64* %PC
  %2167 = add i64 %2166, 5
  store i64 %2167, i64* %PC
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2165, i64* %2168, align 8, !tbaa !2428
  br label %block_4009ce

block_4007ab:                                     ; preds = %block_4007a4, %block_4007b7
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.10, %block_4007a4 ], [ %1799, %block_4007b7 ]
  %2169 = load i64, i64* %RBP
  %2170 = sub i64 %2169, 8
  %2171 = load i64, i64* %PC
  %2172 = add i64 %2171, 3
  store i64 %2172, i64* %PC
  %2173 = inttoptr i64 %2170 to i32*
  %2174 = load i32, i32* %2173
  %2175 = zext i32 %2174 to i64
  store i64 %2175, i64* %RAX, align 8, !tbaa !2428
  %2176 = load i32, i32* %EAX
  %2177 = zext i32 %2176 to i64
  %2178 = load i64, i64* %RBP
  %2179 = sub i64 %2178, 28
  %2180 = load i64, i64* %PC
  %2181 = add i64 %2180, 3
  store i64 %2181, i64* %PC
  %2182 = inttoptr i64 %2179 to i32*
  %2183 = load i32, i32* %2182
  %2184 = sub i32 %2176, %2183
  %2185 = icmp ult i32 %2176, %2183
  %2186 = zext i1 %2185 to i8
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2186, i8* %2187, align 1, !tbaa !2432
  %2188 = and i32 %2184, 255
  %2189 = call i32 @llvm.ctpop.i32(i32 %2188) #17
  %2190 = trunc i32 %2189 to i8
  %2191 = and i8 %2190, 1
  %2192 = xor i8 %2191, 1
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2192, i8* %2193, align 1, !tbaa !2446
  %2194 = xor i32 %2183, %2176
  %2195 = xor i32 %2194, %2184
  %2196 = lshr i32 %2195, 4
  %2197 = trunc i32 %2196 to i8
  %2198 = and i8 %2197, 1
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2198, i8* %2199, align 1, !tbaa !2447
  %2200 = icmp eq i32 %2184, 0
  %2201 = zext i1 %2200 to i8
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2201, i8* %2202, align 1, !tbaa !2448
  %2203 = lshr i32 %2184, 31
  %2204 = trunc i32 %2203 to i8
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2204, i8* %2205, align 1, !tbaa !2449
  %2206 = lshr i32 %2176, 31
  %2207 = lshr i32 %2183, 31
  %2208 = xor i32 %2207, %2206
  %2209 = xor i32 %2203, %2206
  %2210 = add nuw nsw i32 %2209, %2208
  %2211 = icmp eq i32 %2210, 2
  %2212 = zext i1 %2211 to i8
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2212, i8* %2213, align 1, !tbaa !2450
  %2214 = load i64, i64* %PC
  %2215 = add i64 %2214, 78
  %2216 = load i64, i64* %PC
  %2217 = add i64 %2216, 6
  %2218 = load i64, i64* %PC
  %2219 = add i64 %2218, 6
  store i64 %2219, i64* %PC
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2221 = load i8, i8* %2220, align 1, !tbaa !2449
  %2222 = icmp ne i8 %2221, 0
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2224 = load i8, i8* %2223, align 1, !tbaa !2450
  %2225 = icmp ne i8 %2224, 0
  %2226 = xor i1 %2222, %2225
  %2227 = xor i1 %2226, true
  %2228 = zext i1 %2227 to i8
  store i8 %2228, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2230 = select i1 %2226, i64 %2217, i64 %2215
  store i64 %2230, i64* %2229, align 8, !tbaa !2428
  %2231 = load i8, i8* %BRANCH_TAKEN
  %2232 = icmp eq i8 %2231, 1
  br i1 %2232, label %block_4007ff, label %block_4007b7

block_4008a9:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit1
  %2233 = sub i64 %1749, 112
  %2234 = load i64, i64* %PC
  %2235 = add i64 %2234, 5
  store i64 %2235, i64* %PC
  %2236 = inttoptr i64 %2233 to double*
  %2237 = load double, double* %2236
  %2238 = bitcast i8* %1748 to double*
  store double %2237, double* %2238, align 1, !tbaa !2452
  %2239 = getelementptr inbounds i8, i8* %1748, i64 8
  %2240 = bitcast i8* %2239 to double*
  store double 0.000000e+00, double* %2240, align 1, !tbaa !2452
  %2241 = load i64, i64* %RBP
  %2242 = sub i64 %2241, 152
  %2243 = bitcast %union.vec128_t* %XMM0 to i8*
  %2244 = load i64, i64* %PC
  %2245 = add i64 %2244, 8
  store i64 %2245, i64* %PC
  %2246 = bitcast i8* %2243 to double*
  %2247 = load double, double* %2246, align 1
  %2248 = inttoptr i64 %2242 to double*
  store double %2247, double* %2248
  %2249 = load i64, i64* %PC
  %2250 = add i64 %2249, 18
  %2251 = load i64, i64* %PC
  %2252 = add i64 %2251, 5
  store i64 %2252, i64* %PC
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2250, i64* %2253, align 8, !tbaa !2428
  br label %block_4008c8

block_4008bb:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit1
  %2254 = sub i64 %1749, 80
  %2255 = load i64, i64* %PC
  %2256 = add i64 %2255, 5
  store i64 %2256, i64* %PC
  %2257 = inttoptr i64 %2254 to double*
  %2258 = load double, double* %2257
  %2259 = bitcast i8* %1748 to double*
  store double %2258, double* %2259, align 1, !tbaa !2452
  %2260 = getelementptr inbounds i8, i8* %1748, i64 8
  %2261 = bitcast i8* %2260 to double*
  store double 0.000000e+00, double* %2261, align 1, !tbaa !2452
  %2262 = load i64, i64* %RBP
  %2263 = sub i64 %2262, 152
  %2264 = bitcast %union.vec128_t* %XMM0 to i8*
  %2265 = load i64, i64* %PC
  %2266 = add i64 %2265, 8
  store i64 %2266, i64* %PC
  %2267 = bitcast i8* %2264 to double*
  %2268 = load double, double* %2267, align 1
  %2269 = inttoptr i64 %2263 to double*
  store double %2268, double* %2269
  br label %block_4008c8

block_400925:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit
  %2270 = sub i64 %2786, 120
  %2271 = load i64, i64* %PC
  %2272 = add i64 %2271, 5
  store i64 %2272, i64* %PC
  %2273 = inttoptr i64 %2270 to double*
  %2274 = load double, double* %2273
  %2275 = bitcast i8* %2785 to double*
  store double %2274, double* %2275, align 1, !tbaa !2452
  %2276 = getelementptr inbounds i8, i8* %2785, i64 8
  %2277 = bitcast i8* %2276 to double*
  store double 0.000000e+00, double* %2277, align 1, !tbaa !2452
  %2278 = load i64, i64* %RBP
  %2279 = sub i64 %2278, 168
  %2280 = bitcast %union.vec128_t* %XMM0 to i8*
  %2281 = load i64, i64* %PC
  %2282 = add i64 %2281, 8
  store i64 %2282, i64* %PC
  %2283 = bitcast i8* %2280 to double*
  %2284 = load double, double* %2283, align 1
  %2285 = inttoptr i64 %2279 to double*
  store double %2284, double* %2285
  %2286 = load i64, i64* %PC
  %2287 = add i64 %2286, 18
  %2288 = load i64, i64* %PC
  %2289 = add i64 %2288, 5
  store i64 %2289, i64* %PC
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2287, i64* %2290, align 8, !tbaa !2428
  br label %block_400944

block_4007a4:                                     ; preds = %block_40071d
  %2291 = sub i64 %2548, 8
  %2292 = load i64, i64* %PC
  %2293 = add i64 %2292, 7
  store i64 %2293, i64* %PC
  %2294 = inttoptr i64 %2291 to i32*
  store i32 0, i32* %2294
  br label %block_4007ab

block_400944:                                     ; preds = %block_400925, %block_400937
  %MEMORY.8 = phi %struct.Memory* [ %2771, %block_400937 ], [ %2771, %block_400925 ]
  %2295 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2296 = load i64, i64* %RBP
  %2297 = sub i64 %2296, 168
  %2298 = load i64, i64* %PC
  %2299 = add i64 %2298, 8
  store i64 %2299, i64* %PC
  %2300 = inttoptr i64 %2297 to double*
  %2301 = load double, double* %2300
  %2302 = bitcast i8* %2295 to double*
  store double %2301, double* %2302, align 1, !tbaa !2452
  %2303 = getelementptr inbounds i8, i8* %2295, i64 8
  %2304 = bitcast i8* %2303 to double*
  store double 0.000000e+00, double* %2304, align 1, !tbaa !2452
  %2305 = load i64, i64* %RBP
  %2306 = sub i64 %2305, 96
  %2307 = bitcast %union.vec128_t* %XMM0 to i8*
  %2308 = load i64, i64* %PC
  %2309 = add i64 %2308, 5
  store i64 %2309, i64* %PC
  %2310 = bitcast i8* %2307 to double*
  %2311 = load double, double* %2310, align 1
  %2312 = inttoptr i64 %2306 to double*
  store double %2311, double* %2312
  %2313 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2314 = load i64, i64* %RBP
  %2315 = sub i64 %2314, 120
  %2316 = load i64, i64* %PC
  %2317 = add i64 %2316, 5
  store i64 %2317, i64* %PC
  %2318 = inttoptr i64 %2315 to double*
  %2319 = load double, double* %2318
  %2320 = bitcast i8* %2313 to double*
  store double %2319, double* %2320, align 1, !tbaa !2452
  %2321 = getelementptr inbounds i8, i8* %2313, i64 8
  %2322 = bitcast i8* %2321 to double*
  store double 0.000000e+00, double* %2322, align 1, !tbaa !2452
  %2323 = bitcast %union.vec128_t* %XMM0 to i8*
  %2324 = load i64, i64* %RBP
  %2325 = sub i64 %2324, 104
  %2326 = load i64, i64* %PC
  %2327 = add i64 %2326, 5
  store i64 %2327, i64* %PC
  %2328 = bitcast i8* %2323 to double*
  %2329 = load double, double* %2328, align 1
  %2330 = inttoptr i64 %2325 to double*
  %2331 = load double, double* %2330
  %2332 = fcmp uno double %2329, %2331
  br i1 %2332, label %2333, label %2345

; <label>:2333:                                   ; preds = %block_400944
  %2334 = fadd double %2329, %2331
  %2335 = bitcast double %2334 to i64
  %2336 = and i64 %2335, 9221120237041090560
  %2337 = icmp eq i64 %2336, 9218868437227405312
  %2338 = and i64 %2335, 2251799813685247
  %2339 = icmp ne i64 %2338, 0
  %2340 = and i1 %2337, %2339
  br i1 %2340, label %2341, label %2351

; <label>:2341:                                   ; preds = %2333
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2343 = load i64, i64* %2342, align 8, !tbaa !2428
  %2344 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2343, %struct.Memory* %MEMORY.8) #18
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:2345:                                   ; preds = %block_400944
  %2346 = fcmp ogt double %2329, %2331
  br i1 %2346, label %2351, label %2347

; <label>:2347:                                   ; preds = %2345
  %2348 = fcmp olt double %2329, %2331
  br i1 %2348, label %2351, label %2349

; <label>:2349:                                   ; preds = %2347
  %2350 = fcmp oeq double %2329, %2331
  br i1 %2350, label %2351, label %2358

; <label>:2351:                                   ; preds = %2349, %2347, %2345, %2333
  %2352 = phi i8 [ 0, %2345 ], [ 0, %2347 ], [ 1, %2349 ], [ 1, %2333 ]
  %2353 = phi i8 [ 0, %2345 ], [ 0, %2347 ], [ 0, %2349 ], [ 1, %2333 ]
  %2354 = phi i8 [ 0, %2345 ], [ 1, %2347 ], [ 0, %2349 ], [ 1, %2333 ]
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2352, i8* %2355, align 1, !tbaa !2451
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2353, i8* %2356, align 1, !tbaa !2451
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2354, i8* %2357, align 1, !tbaa !2451
  br label %2358

; <label>:2358:                                   ; preds = %2351, %2349
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2359, align 1, !tbaa !2451
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2360, align 1, !tbaa !2451
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2361, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %2341, %2358
  %2362 = phi %struct.Memory* [ %2344, %2341 ], [ %MEMORY.8, %2358 ]
  %2363 = load i64, i64* %PC
  %2364 = add i64 %2363, 24
  %2365 = load i64, i64* %PC
  %2366 = add i64 %2365, 6
  %2367 = load i64, i64* %PC
  %2368 = add i64 %2367, 6
  store i64 %2368, i64* %PC
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2370 = load i8, i8* %2369, align 1, !tbaa !2432
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2372 = load i8, i8* %2371, align 1, !tbaa !2448
  %2373 = or i8 %2372, %2370
  %2374 = icmp ne i8 %2373, 0
  %2375 = zext i1 %2374 to i8
  store i8 %2375, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2377 = select i1 %2374, i64 %2364, i64 %2366
  store i64 %2377, i64* %2376, align 8, !tbaa !2428
  %2378 = load i8, i8* %BRANCH_TAKEN
  %2379 = icmp eq i8 %2378, 1
  %2380 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2381 = load i64, i64* %RBP
  br i1 %2379, label %block_400973, label %block_400961

block_4008f7:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit2
  %2382 = sub i64 %1022, 88
  %2383 = load i64, i64* %PC
  %2384 = add i64 %2383, 5
  store i64 %2384, i64* %PC
  %2385 = inttoptr i64 %2382 to double*
  %2386 = load double, double* %2385
  %2387 = bitcast i8* %1021 to double*
  store double %2386, double* %2387, align 1, !tbaa !2452
  %2388 = getelementptr inbounds i8, i8* %1021, i64 8
  %2389 = bitcast i8* %2388 to double*
  store double 0.000000e+00, double* %2389, align 1, !tbaa !2452
  %2390 = load i64, i64* %RBP
  %2391 = sub i64 %2390, 160
  %2392 = bitcast %union.vec128_t* %XMM0 to i8*
  %2393 = load i64, i64* %PC
  %2394 = add i64 %2393, 8
  store i64 %2394, i64* %PC
  %2395 = bitcast i8* %2392 to double*
  %2396 = load double, double* %2395, align 1
  %2397 = inttoptr i64 %2391 to double*
  store double %2396, double* %2397
  br label %block_400904

block_400961:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %2398 = sub i64 %2381, 120
  %2399 = load i64, i64* %PC
  %2400 = add i64 %2399, 5
  store i64 %2400, i64* %PC
  %2401 = inttoptr i64 %2398 to double*
  %2402 = load double, double* %2401
  %2403 = bitcast i8* %2380 to double*
  store double %2402, double* %2403, align 1, !tbaa !2452
  %2404 = getelementptr inbounds i8, i8* %2380, i64 8
  %2405 = bitcast i8* %2404 to double*
  store double 0.000000e+00, double* %2405, align 1, !tbaa !2452
  %2406 = load i64, i64* %RBP
  %2407 = sub i64 %2406, 176
  %2408 = bitcast %union.vec128_t* %XMM0 to i8*
  %2409 = load i64, i64* %PC
  %2410 = add i64 %2409, 8
  store i64 %2410, i64* %PC
  %2411 = bitcast i8* %2408 to double*
  %2412 = load double, double* %2411, align 1
  %2413 = inttoptr i64 %2407 to double*
  store double %2412, double* %2413
  %2414 = load i64, i64* %PC
  %2415 = add i64 %2414, 18
  %2416 = load i64, i64* %PC
  %2417 = add i64 %2416, 5
  store i64 %2417, i64* %PC
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2415, i64* %2418, align 8, !tbaa !2428
  br label %block_400980

block_4009ce:                                     ; preds = %block_40099b, %block_400aad
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.3, %block_40099b ], [ %MEMORY.4, %block_400aad ]
  %2419 = load i64, i64* %RBP
  %2420 = sub i64 %2419, 8
  %2421 = load i64, i64* %PC
  %2422 = add i64 %2421, 3
  store i64 %2422, i64* %PC
  %2423 = inttoptr i64 %2420 to i32*
  %2424 = load i32, i32* %2423
  %2425 = zext i32 %2424 to i64
  store i64 %2425, i64* %RAX, align 8, !tbaa !2428
  %2426 = load i32, i32* %EAX
  %2427 = zext i32 %2426 to i64
  %2428 = load i64, i64* %RBP
  %2429 = sub i64 %2428, 32
  %2430 = load i64, i64* %PC
  %2431 = add i64 %2430, 3
  store i64 %2431, i64* %PC
  %2432 = inttoptr i64 %2429 to i32*
  %2433 = load i32, i32* %2432
  %2434 = sub i32 %2426, %2433
  %2435 = icmp ult i32 %2426, %2433
  %2436 = zext i1 %2435 to i8
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2436, i8* %2437, align 1, !tbaa !2432
  %2438 = and i32 %2434, 255
  %2439 = call i32 @llvm.ctpop.i32(i32 %2438) #17
  %2440 = trunc i32 %2439 to i8
  %2441 = and i8 %2440, 1
  %2442 = xor i8 %2441, 1
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2442, i8* %2443, align 1, !tbaa !2446
  %2444 = xor i32 %2433, %2426
  %2445 = xor i32 %2444, %2434
  %2446 = lshr i32 %2445, 4
  %2447 = trunc i32 %2446 to i8
  %2448 = and i8 %2447, 1
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2448, i8* %2449, align 1, !tbaa !2447
  %2450 = icmp eq i32 %2434, 0
  %2451 = zext i1 %2450 to i8
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2451, i8* %2452, align 1, !tbaa !2448
  %2453 = lshr i32 %2434, 31
  %2454 = trunc i32 %2453 to i8
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2454, i8* %2455, align 1, !tbaa !2449
  %2456 = lshr i32 %2426, 31
  %2457 = lshr i32 %2433, 31
  %2458 = xor i32 %2457, %2456
  %2459 = xor i32 %2453, %2456
  %2460 = add nuw nsw i32 %2459, %2458
  %2461 = icmp eq i32 %2460, 2
  %2462 = zext i1 %2461 to i8
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2462, i8* %2463, align 1, !tbaa !2450
  %2464 = load i64, i64* %PC
  %2465 = add i64 %2464, 236
  %2466 = load i64, i64* %PC
  %2467 = add i64 %2466, 6
  %2468 = load i64, i64* %PC
  %2469 = add i64 %2468, 6
  store i64 %2469, i64* %PC
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2471 = load i8, i8* %2470, align 1, !tbaa !2449
  %2472 = icmp ne i8 %2471, 0
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2474 = load i8, i8* %2473, align 1, !tbaa !2450
  %2475 = icmp ne i8 %2474, 0
  %2476 = xor i1 %2472, %2475
  %2477 = xor i1 %2476, true
  %2478 = zext i1 %2477 to i8
  store i8 %2478, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2480 = select i1 %2476, i64 %2467, i64 %2465
  store i64 %2480, i64* %2479, align 8, !tbaa !2428
  %2481 = load i8, i8* %BRANCH_TAKEN
  %2482 = icmp eq i8 %2481, 1
  %2483 = load i64, i64* %RBP
  br i1 %2482, label %block_400ac0, label %block_4009da

block_40071d:                                     ; preds = %block_400704, %block_400791
  %MEMORY.10 = phi %struct.Memory* [ %3134, %block_400704 ], [ %MEMORY.5, %block_400791 ]
  %2484 = load i64, i64* %RBP
  %2485 = sub i64 %2484, 8
  %2486 = load i64, i64* %PC
  %2487 = add i64 %2486, 3
  store i64 %2487, i64* %PC
  %2488 = inttoptr i64 %2485 to i32*
  %2489 = load i32, i32* %2488
  %2490 = zext i32 %2489 to i64
  store i64 %2490, i64* %RAX, align 8, !tbaa !2428
  %2491 = load i32, i32* %EAX
  %2492 = zext i32 %2491 to i64
  %2493 = load i64, i64* %RBP
  %2494 = sub i64 %2493, 32
  %2495 = load i64, i64* %PC
  %2496 = add i64 %2495, 3
  store i64 %2496, i64* %PC
  %2497 = inttoptr i64 %2494 to i32*
  %2498 = load i32, i32* %2497
  %2499 = sub i32 %2491, %2498
  %2500 = icmp ult i32 %2491, %2498
  %2501 = zext i1 %2500 to i8
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2501, i8* %2502, align 1, !tbaa !2432
  %2503 = and i32 %2499, 255
  %2504 = call i32 @llvm.ctpop.i32(i32 %2503) #17
  %2505 = trunc i32 %2504 to i8
  %2506 = and i8 %2505, 1
  %2507 = xor i8 %2506, 1
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2507, i8* %2508, align 1, !tbaa !2446
  %2509 = xor i32 %2498, %2491
  %2510 = xor i32 %2509, %2499
  %2511 = lshr i32 %2510, 4
  %2512 = trunc i32 %2511 to i8
  %2513 = and i8 %2512, 1
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2513, i8* %2514, align 1, !tbaa !2447
  %2515 = icmp eq i32 %2499, 0
  %2516 = zext i1 %2515 to i8
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2516, i8* %2517, align 1, !tbaa !2448
  %2518 = lshr i32 %2499, 31
  %2519 = trunc i32 %2518 to i8
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2519, i8* %2520, align 1, !tbaa !2449
  %2521 = lshr i32 %2491, 31
  %2522 = lshr i32 %2498, 31
  %2523 = xor i32 %2522, %2521
  %2524 = xor i32 %2518, %2521
  %2525 = add nuw nsw i32 %2524, %2523
  %2526 = icmp eq i32 %2525, 2
  %2527 = zext i1 %2526 to i8
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2527, i8* %2528, align 1, !tbaa !2450
  %2529 = load i64, i64* %PC
  %2530 = add i64 %2529, 129
  %2531 = load i64, i64* %PC
  %2532 = add i64 %2531, 6
  %2533 = load i64, i64* %PC
  %2534 = add i64 %2533, 6
  store i64 %2534, i64* %PC
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2536 = load i8, i8* %2535, align 1, !tbaa !2449
  %2537 = icmp ne i8 %2536, 0
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2539 = load i8, i8* %2538, align 1, !tbaa !2450
  %2540 = icmp ne i8 %2539, 0
  %2541 = xor i1 %2537, %2540
  %2542 = xor i1 %2541, true
  %2543 = zext i1 %2542 to i8
  store i8 %2543, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2545 = select i1 %2541, i64 %2532, i64 %2530
  store i64 %2545, i64* %2544, align 8, !tbaa !2428
  %2546 = load i8, i8* %BRANCH_TAKEN
  %2547 = icmp eq i8 %2546, 1
  %2548 = load i64, i64* %RBP
  br i1 %2547, label %block_4007a4, label %block_400729

block_40099b:                                     ; preds = %block_40083a
  %2549 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2550 = load i64, i64* %PC
  %2551 = add i64 %2550, 8
  store i64 %2551, i64* %PC
  %2552 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_4010c0__rodata_type* @seg_4010c0__rodata to i64), i64 24) to double*)
  %2553 = bitcast i8* %2549 to double*
  store double %2552, double* %2553, align 1, !tbaa !2452
  %2554 = getelementptr inbounds i8, i8* %2549, i64 8
  %2555 = bitcast i8* %2554 to double*
  store double 0.000000e+00, double* %2555, align 1, !tbaa !2452
  %2556 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2557 = load i64, i64* %RBP
  %2558 = sub i64 %2557, 80
  %2559 = load i64, i64* %PC
  %2560 = add i64 %2559, 5
  store i64 %2560, i64* %PC
  %2561 = inttoptr i64 %2558 to double*
  %2562 = load double, double* %2561
  %2563 = bitcast i8* %2556 to double*
  store double %2562, double* %2563, align 1, !tbaa !2452
  %2564 = getelementptr inbounds i8, i8* %2556, i64 8
  %2565 = bitcast i8* %2564 to double*
  store double 0.000000e+00, double* %2565, align 1, !tbaa !2452
  %2566 = load i64, i64* %RBP
  %2567 = sub i64 %2566, 64
  %2568 = bitcast %union.vec128_t* %XMM1 to i8*
  %2569 = load i64, i64* %PC
  %2570 = add i64 %2569, 5
  store i64 %2570, i64* %PC
  %2571 = bitcast i8* %2568 to double*
  %2572 = load double, double* %2571, align 1
  %2573 = inttoptr i64 %2567 to double*
  store double %2572, double* %2573
  %2574 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2575 = load i64, i64* %RBP
  %2576 = sub i64 %2575, 88
  %2577 = load i64, i64* %PC
  %2578 = add i64 %2577, 5
  store i64 %2578, i64* %PC
  %2579 = inttoptr i64 %2576 to double*
  %2580 = load double, double* %2579
  %2581 = bitcast i8* %2574 to double*
  store double %2580, double* %2581, align 1, !tbaa !2452
  %2582 = getelementptr inbounds i8, i8* %2574, i64 8
  %2583 = bitcast i8* %2582 to double*
  store double 0.000000e+00, double* %2583, align 1, !tbaa !2452
  %2584 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2585 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2586 = load i64, i64* %RBP
  %2587 = sub i64 %2586, 80
  %2588 = load i64, i64* %PC
  %2589 = add i64 %2588, 5
  store i64 %2589, i64* %PC
  %2590 = bitcast i8* %2585 to double*
  %2591 = load double, double* %2590, align 1
  %2592 = getelementptr inbounds i8, i8* %2585, i64 8
  %2593 = bitcast i8* %2592 to i64*
  %2594 = load i64, i64* %2593, align 1
  %2595 = inttoptr i64 %2587 to double*
  %2596 = load double, double* %2595
  %2597 = fsub double %2591, %2596
  %2598 = bitcast i8* %2584 to double*
  store double %2597, double* %2598, align 1, !tbaa !2452
  %2599 = getelementptr inbounds i8, i8* %2584, i64 8
  %2600 = bitcast i8* %2599 to i64*
  store i64 %2594, i64* %2600, align 1, !tbaa !2452
  %2601 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2602 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2603 = bitcast %union.vec128_t* %XMM1 to i8*
  %2604 = load i64, i64* %PC
  %2605 = add i64 %2604, 4
  store i64 %2605, i64* %PC
  %2606 = bitcast i8* %2602 to double*
  %2607 = load double, double* %2606, align 1
  %2608 = getelementptr inbounds i8, i8* %2602, i64 8
  %2609 = bitcast i8* %2608 to i64*
  %2610 = load i64, i64* %2609, align 1
  %2611 = bitcast i8* %2603 to double*
  %2612 = load double, double* %2611, align 1
  %2613 = fdiv double %2607, %2612
  %2614 = bitcast i8* %2601 to double*
  store double %2613, double* %2614, align 1, !tbaa !2452
  %2615 = getelementptr inbounds i8, i8* %2601, i64 8
  %2616 = bitcast i8* %2615 to i64*
  store i64 %2610, i64* %2616, align 1, !tbaa !2452
  %2617 = load i64, i64* %RBP
  %2618 = sub i64 %2617, 72
  %2619 = bitcast %union.vec128_t* %XMM0 to i8*
  %2620 = load i64, i64* %PC
  %2621 = add i64 %2620, 5
  store i64 %2621, i64* %PC
  %2622 = bitcast i8* %2619 to double*
  %2623 = load double, double* %2622, align 1
  %2624 = inttoptr i64 %2618 to double*
  store double %2623, double* %2624
  %2625 = load i64, i64* %RBP
  %2626 = sub i64 %2625, 24
  %2627 = load i64, i64* %PC
  %2628 = add i64 %2627, 7
  store i64 %2628, i64* %PC
  %2629 = inttoptr i64 %2626 to i32*
  store i32 0, i32* %2629
  %2630 = load i64, i64* %RBP
  %2631 = sub i64 %2630, 8
  %2632 = load i64, i64* %PC
  %2633 = add i64 %2632, 7
  store i64 %2633, i64* %PC
  %2634 = inttoptr i64 %2631 to i32*
  store i32 0, i32* %2634
  br label %block_4009ce

block_400a9a:                                     ; preds = %block_400a43, %block_400a64
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.6, %block_400a43 ], [ %662, %block_400a64 ]
  %2635 = load i64, i64* %PC
  %2636 = add i64 %2635, 5
  %2637 = load i64, i64* %PC
  %2638 = add i64 %2637, 5
  store i64 %2638, i64* %PC
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2636, i64* %2639, align 8, !tbaa !2428
  %2640 = load i64, i64* %RBP
  %2641 = sub i64 %2640, 12
  %2642 = load i64, i64* %PC
  %2643 = add i64 %2642, 3
  store i64 %2643, i64* %PC
  %2644 = inttoptr i64 %2641 to i32*
  %2645 = load i32, i32* %2644
  %2646 = zext i32 %2645 to i64
  store i64 %2646, i64* %RAX, align 8, !tbaa !2428
  %2647 = load i64, i64* %RAX
  %2648 = load i64, i64* %PC
  %2649 = add i64 %2648, 3
  store i64 %2649, i64* %PC
  %2650 = trunc i64 %2647 to i32
  %2651 = add i32 1, %2650
  %2652 = zext i32 %2651 to i64
  store i64 %2652, i64* %RAX, align 8, !tbaa !2428
  %2653 = icmp ult i32 %2651, %2650
  %2654 = icmp ult i32 %2651, 1
  %2655 = or i1 %2653, %2654
  %2656 = zext i1 %2655 to i8
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2656, i8* %2657, align 1, !tbaa !2432
  %2658 = and i32 %2651, 255
  %2659 = call i32 @llvm.ctpop.i32(i32 %2658) #17
  %2660 = trunc i32 %2659 to i8
  %2661 = and i8 %2660, 1
  %2662 = xor i8 %2661, 1
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2662, i8* %2663, align 1, !tbaa !2446
  %2664 = xor i64 1, %2647
  %2665 = trunc i64 %2664 to i32
  %2666 = xor i32 %2665, %2651
  %2667 = lshr i32 %2666, 4
  %2668 = trunc i32 %2667 to i8
  %2669 = and i8 %2668, 1
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2669, i8* %2670, align 1, !tbaa !2447
  %2671 = icmp eq i32 %2651, 0
  %2672 = zext i1 %2671 to i8
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2672, i8* %2673, align 1, !tbaa !2448
  %2674 = lshr i32 %2651, 31
  %2675 = trunc i32 %2674 to i8
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2675, i8* %2676, align 1, !tbaa !2449
  %2677 = lshr i32 %2650, 31
  %2678 = xor i32 %2674, %2677
  %2679 = add nuw nsw i32 %2678, %2674
  %2680 = icmp eq i32 %2679, 2
  %2681 = zext i1 %2680 to i8
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2681, i8* %2682, align 1, !tbaa !2450
  %2683 = load i64, i64* %RBP
  %2684 = sub i64 %2683, 12
  %2685 = load i32, i32* %EAX
  %2686 = zext i32 %2685 to i64
  %2687 = load i64, i64* %PC
  %2688 = add i64 %2687, 3
  store i64 %2688, i64* %PC
  %2689 = inttoptr i64 %2684 to i32*
  store i32 %2685, i32* %2689
  %2690 = load i64, i64* %PC
  %2691 = sub i64 %2690, 199
  %2692 = load i64, i64* %PC
  %2693 = add i64 %2692, 5
  store i64 %2693, i64* %PC
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2691, i64* %2694, align 8, !tbaa !2428
  br label %block_4009e1

block_400904:                                     ; preds = %block_4008f7, %block_4008e5
  %MEMORY.12 = phi %struct.Memory* [ %1003, %block_4008f7 ], [ %1003, %block_4008e5 ]
  %2695 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2696 = load i64, i64* %RBP
  %2697 = sub i64 %2696, 160
  %2698 = load i64, i64* %PC
  %2699 = add i64 %2698, 8
  store i64 %2699, i64* %PC
  %2700 = inttoptr i64 %2697 to double*
  %2701 = load double, double* %2700
  %2702 = bitcast i8* %2695 to double*
  store double %2701, double* %2702, align 1, !tbaa !2452
  %2703 = getelementptr inbounds i8, i8* %2695, i64 8
  %2704 = bitcast i8* %2703 to double*
  store double 0.000000e+00, double* %2704, align 1, !tbaa !2452
  %2705 = load i64, i64* %RBP
  %2706 = sub i64 %2705, 88
  %2707 = bitcast %union.vec128_t* %XMM0 to i8*
  %2708 = load i64, i64* %PC
  %2709 = add i64 %2708, 5
  store i64 %2709, i64* %PC
  %2710 = bitcast i8* %2707 to double*
  %2711 = load double, double* %2710, align 1
  %2712 = inttoptr i64 %2706 to double*
  store double %2711, double* %2712
  %2713 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2714 = load i64, i64* %RBP
  %2715 = sub i64 %2714, 120
  %2716 = load i64, i64* %PC
  %2717 = add i64 %2716, 5
  store i64 %2717, i64* %PC
  %2718 = inttoptr i64 %2715 to double*
  %2719 = load double, double* %2718
  %2720 = bitcast i8* %2713 to double*
  store double %2719, double* %2720, align 1, !tbaa !2452
  %2721 = getelementptr inbounds i8, i8* %2713, i64 8
  %2722 = bitcast i8* %2721 to double*
  store double 0.000000e+00, double* %2722, align 1, !tbaa !2452
  %2723 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %2724 = load i64, i64* %RBP
  %2725 = sub i64 %2724, 96
  %2726 = load i64, i64* %PC
  %2727 = add i64 %2726, 5
  store i64 %2727, i64* %PC
  %2728 = inttoptr i64 %2725 to double*
  %2729 = load double, double* %2728
  %2730 = bitcast i8* %2723 to double*
  store double %2729, double* %2730, align 1, !tbaa !2452
  %2731 = getelementptr inbounds i8, i8* %2723, i64 8
  %2732 = bitcast i8* %2731 to double*
  store double 0.000000e+00, double* %2732, align 1, !tbaa !2452
  %2733 = bitcast %union.vec128_t* %XMM1 to i8*
  %2734 = bitcast %union.vec128_t* %XMM0 to i8*
  %2735 = load i64, i64* %PC
  %2736 = add i64 %2735, 4
  store i64 %2736, i64* %PC
  %2737 = bitcast i8* %2733 to double*
  %2738 = load double, double* %2737, align 1
  %2739 = bitcast i8* %2734 to double*
  %2740 = load double, double* %2739, align 1
  %2741 = fcmp uno double %2738, %2740
  br i1 %2741, label %2742, label %2754

; <label>:2742:                                   ; preds = %block_400904
  %2743 = fadd double %2738, %2740
  %2744 = bitcast double %2743 to i64
  %2745 = and i64 %2744, 9221120237041090560
  %2746 = icmp eq i64 %2745, 9218868437227405312
  %2747 = and i64 %2744, 2251799813685247
  %2748 = icmp ne i64 %2747, 0
  %2749 = and i1 %2746, %2748
  br i1 %2749, label %2750, label %2760

; <label>:2750:                                   ; preds = %2742
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2752 = load i64, i64* %2751, align 8, !tbaa !2428
  %2753 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2752, %struct.Memory* %MEMORY.12) #18
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:2754:                                   ; preds = %block_400904
  %2755 = fcmp ogt double %2738, %2740
  br i1 %2755, label %2760, label %2756

; <label>:2756:                                   ; preds = %2754
  %2757 = fcmp olt double %2738, %2740
  br i1 %2757, label %2760, label %2758

; <label>:2758:                                   ; preds = %2756
  %2759 = fcmp oeq double %2738, %2740
  br i1 %2759, label %2760, label %2767

; <label>:2760:                                   ; preds = %2758, %2756, %2754, %2742
  %2761 = phi i8 [ 0, %2754 ], [ 0, %2756 ], [ 1, %2758 ], [ 1, %2742 ]
  %2762 = phi i8 [ 0, %2754 ], [ 0, %2756 ], [ 0, %2758 ], [ 1, %2742 ]
  %2763 = phi i8 [ 0, %2754 ], [ 1, %2756 ], [ 0, %2758 ], [ 1, %2742 ]
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2761, i8* %2764, align 1, !tbaa !2451
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2762, i8* %2765, align 1, !tbaa !2451
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2763, i8* %2766, align 1, !tbaa !2451
  br label %2767

; <label>:2767:                                   ; preds = %2760, %2758
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2768, align 1, !tbaa !2451
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2769, align 1, !tbaa !2451
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2770, align 1, !tbaa !2451
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %2750, %2767
  %2771 = phi %struct.Memory* [ %2753, %2750 ], [ %MEMORY.12, %2767 ]
  %2772 = load i64, i64* %PC
  %2773 = add i64 %2772, 24
  %2774 = load i64, i64* %PC
  %2775 = add i64 %2774, 6
  %2776 = load i64, i64* %PC
  %2777 = add i64 %2776, 6
  store i64 %2777, i64* %PC
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2779 = load i8, i8* %2778, align 1, !tbaa !2432
  store i8 %2779, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2781 = icmp ne i8 %2779, 0
  %2782 = select i1 %2781, i64 %2773, i64 %2775
  store i64 %2782, i64* %2780, align 8, !tbaa !2428
  %2783 = load i8, i8* %BRANCH_TAKEN
  %2784 = icmp eq i8 %2783, 1
  %2785 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %2786 = load i64, i64* %RBP
  br i1 %2784, label %block_400937, label %block_400925

block_400b16:                                     ; preds = %block_400aca, %block_400af1
  %MEMORY.13 = phi %struct.Memory* [ %474, %block_400af1 ], [ %923, %block_400aca ]
  %2787 = load i64, i64* %RAX
  %2788 = load i32, i32* %EAX
  %2789 = zext i32 %2788 to i64
  %2790 = load i64, i64* %PC
  %2791 = add i64 %2790, 2
  store i64 %2791, i64* %PC
  %2792 = xor i64 %2789, %2787
  %2793 = trunc i64 %2792 to i32
  %2794 = and i64 %2792, 4294967295
  store i64 %2794, i64* %RAX, align 8, !tbaa !2428
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2795, align 1, !tbaa !2432
  %2796 = and i32 %2793, 255
  %2797 = call i32 @llvm.ctpop.i32(i32 %2796) #17
  %2798 = trunc i32 %2797 to i8
  %2799 = and i8 %2798, 1
  %2800 = xor i8 %2799, 1
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2800, i8* %2801, align 1, !tbaa !2446
  %2802 = icmp eq i32 %2793, 0
  %2803 = zext i1 %2802 to i8
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2803, i8* %2804, align 1, !tbaa !2448
  %2805 = lshr i32 %2793, 31
  %2806 = trunc i32 %2805 to i8
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2806, i8* %2807, align 1, !tbaa !2449
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2808, align 1, !tbaa !2450
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2809, align 1, !tbaa !2447
  %2810 = load i64, i64* %RSP
  %2811 = load i64, i64* %PC
  %2812 = add i64 %2811, 7
  store i64 %2812, i64* %PC
  %2813 = add i64 192, %2810
  store i64 %2813, i64* %RSP, align 8, !tbaa !2428
  %2814 = icmp ult i64 %2813, %2810
  %2815 = icmp ult i64 %2813, 192
  %2816 = or i1 %2814, %2815
  %2817 = zext i1 %2816 to i8
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2817, i8* %2818, align 1, !tbaa !2432
  %2819 = trunc i64 %2813 to i32
  %2820 = and i32 %2819, 255
  %2821 = call i32 @llvm.ctpop.i32(i32 %2820) #17
  %2822 = trunc i32 %2821 to i8
  %2823 = and i8 %2822, 1
  %2824 = xor i8 %2823, 1
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2824, i8* %2825, align 1, !tbaa !2446
  %2826 = xor i64 192, %2810
  %2827 = xor i64 %2826, %2813
  %2828 = lshr i64 %2827, 4
  %2829 = trunc i64 %2828 to i8
  %2830 = and i8 %2829, 1
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2830, i8* %2831, align 1, !tbaa !2447
  %2832 = icmp eq i64 %2813, 0
  %2833 = zext i1 %2832 to i8
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2833, i8* %2834, align 1, !tbaa !2448
  %2835 = lshr i64 %2813, 63
  %2836 = trunc i64 %2835 to i8
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2836, i8* %2837, align 1, !tbaa !2449
  %2838 = lshr i64 %2810, 63
  %2839 = xor i64 %2835, %2838
  %2840 = add nuw nsw i64 %2839, %2835
  %2841 = icmp eq i64 %2840, 2
  %2842 = zext i1 %2841 to i8
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2842, i8* %2843, align 1, !tbaa !2450
  %2844 = load i64, i64* %PC
  %2845 = add i64 %2844, 1
  store i64 %2845, i64* %PC
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2847 = load i64, i64* %2846, align 8, !tbaa !2428
  %2848 = add i64 %2847, 8
  %2849 = inttoptr i64 %2847 to i64*
  %2850 = load i64, i64* %2849
  store i64 %2850, i64* %RBP, align 8, !tbaa !2428
  store i64 %2848, i64* %2846, align 8, !tbaa !2428
  %2851 = load i64, i64* %PC
  %2852 = add i64 %2851, 1
  store i64 %2852, i64* %PC
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2855 = load i64, i64* %2854, align 8, !tbaa !2428
  %2856 = inttoptr i64 %2855 to i64*
  %2857 = load i64, i64* %2856
  store i64 %2857, i64* %2853, align 8, !tbaa !2428
  %2858 = add i64 %2855, 8
  store i64 %2858, i64* %2854, align 8, !tbaa !2428
  ret %struct.Memory* %MEMORY.13

block_400791:                                     ; preds = %block_400730
  %2859 = load i64, i64* %PC
  %2860 = add i64 %2859, 5
  %2861 = load i64, i64* %PC
  %2862 = add i64 %2861, 5
  store i64 %2862, i64* %PC
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2860, i64* %2863, align 8, !tbaa !2428
  %2864 = load i64, i64* %RBP
  %2865 = sub i64 %2864, 8
  %2866 = load i64, i64* %PC
  %2867 = add i64 %2866, 3
  store i64 %2867, i64* %PC
  %2868 = inttoptr i64 %2865 to i32*
  %2869 = load i32, i32* %2868
  %2870 = zext i32 %2869 to i64
  store i64 %2870, i64* %RAX, align 8, !tbaa !2428
  %2871 = load i64, i64* %RAX
  %2872 = load i64, i64* %PC
  %2873 = add i64 %2872, 3
  store i64 %2873, i64* %PC
  %2874 = trunc i64 %2871 to i32
  %2875 = add i32 1, %2874
  %2876 = zext i32 %2875 to i64
  store i64 %2876, i64* %RAX, align 8, !tbaa !2428
  %2877 = icmp ult i32 %2875, %2874
  %2878 = icmp ult i32 %2875, 1
  %2879 = or i1 %2877, %2878
  %2880 = zext i1 %2879 to i8
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2880, i8* %2881, align 1, !tbaa !2432
  %2882 = and i32 %2875, 255
  %2883 = call i32 @llvm.ctpop.i32(i32 %2882) #17
  %2884 = trunc i32 %2883 to i8
  %2885 = and i8 %2884, 1
  %2886 = xor i8 %2885, 1
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2886, i8* %2887, align 1, !tbaa !2446
  %2888 = xor i64 1, %2871
  %2889 = trunc i64 %2888 to i32
  %2890 = xor i32 %2889, %2875
  %2891 = lshr i32 %2890, 4
  %2892 = trunc i32 %2891 to i8
  %2893 = and i8 %2892, 1
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2893, i8* %2894, align 1, !tbaa !2447
  %2895 = icmp eq i32 %2875, 0
  %2896 = zext i1 %2895 to i8
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2896, i8* %2897, align 1, !tbaa !2448
  %2898 = lshr i32 %2875, 31
  %2899 = trunc i32 %2898 to i8
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2899, i8* %2900, align 1, !tbaa !2449
  %2901 = lshr i32 %2874, 31
  %2902 = xor i32 %2898, %2901
  %2903 = add nuw nsw i32 %2902, %2898
  %2904 = icmp eq i32 %2903, 2
  %2905 = zext i1 %2904 to i8
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2905, i8* %2906, align 1, !tbaa !2450
  %2907 = load i64, i64* %RBP
  %2908 = sub i64 %2907, 8
  %2909 = load i32, i32* %EAX
  %2910 = zext i32 %2909 to i64
  %2911 = load i64, i64* %PC
  %2912 = add i64 %2911, 3
  store i64 %2912, i64* %PC
  %2913 = inttoptr i64 %2908 to i32*
  store i32 %2909, i32* %2913
  %2914 = load i64, i64* %PC
  %2915 = sub i64 %2914, 130
  %2916 = load i64, i64* %PC
  %2917 = add i64 %2916, 5
  store i64 %2917, i64* %PC
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2915, i64* %2918, align 8, !tbaa !2428
  br label %block_40071d

block_4009da:                                     ; preds = %block_4009ce
  %2919 = sub i64 %2483, 12
  %2920 = load i64, i64* %PC
  %2921 = add i64 %2920, 7
  store i64 %2921, i64* %PC
  %2922 = inttoptr i64 %2919 to i32*
  store i32 0, i32* %2922
  br label %block_4009e1

block_400729:                                     ; preds = %block_40071d
  %2923 = sub i64 %2548, 12
  %2924 = load i64, i64* %PC
  %2925 = add i64 %2924, 7
  store i64 %2925, i64* %PC
  %2926 = inttoptr i64 %2923 to i32*
  store i32 0, i32* %2926
  br label %block_400730

block_400a31:                                     ; preds = %block_4009ed
  %2927 = load i64, i64* %RBP
  %2928 = sub i64 %2927, 12
  %2929 = load i64, i64* %PC
  %2930 = add i64 %2929, 3
  store i64 %2930, i64* %PC
  %2931 = inttoptr i64 %2928 to i32*
  %2932 = load i32, i32* %2931
  %2933 = zext i32 %2932 to i64
  store i64 %2933, i64* %RAX, align 8, !tbaa !2428
  %2934 = load i64, i64* %RAX
  %2935 = load i64, i64* %PC
  %2936 = add i64 %2935, 3
  store i64 %2936, i64* %PC
  %2937 = and i64 15, %2934
  %2938 = trunc i64 %2937 to i32
  store i64 %2937, i64* %RAX, align 8, !tbaa !2428
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2939, align 1, !tbaa !2432
  %2940 = and i32 %2938, 255
  %2941 = call i32 @llvm.ctpop.i32(i32 %2940) #17
  %2942 = trunc i32 %2941 to i8
  %2943 = and i8 %2942, 1
  %2944 = xor i8 %2943, 1
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2944, i8* %2945, align 1, !tbaa !2446
  %2946 = icmp eq i32 %2938, 0
  %2947 = zext i1 %2946 to i8
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2947, i8* %2948, align 1, !tbaa !2448
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2949, align 1, !tbaa !2449
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2950, align 1, !tbaa !2450
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2951, align 1, !tbaa !2447
  %2952 = load i32, i32* %EAX
  %2953 = zext i32 %2952 to i64
  %2954 = load i64, i64* %PC
  %2955 = add i64 %2954, 3
  store i64 %2955, i64* %PC
  %2956 = sub i32 %2952, 8
  %2957 = icmp ult i32 %2952, 8
  %2958 = zext i1 %2957 to i8
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2958, i8* %2959, align 1, !tbaa !2432
  %2960 = and i32 %2956, 255
  %2961 = call i32 @llvm.ctpop.i32(i32 %2960) #17
  %2962 = trunc i32 %2961 to i8
  %2963 = and i8 %2962, 1
  %2964 = xor i8 %2963, 1
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2964, i8* %2965, align 1, !tbaa !2446
  %2966 = xor i64 8, %2953
  %2967 = trunc i64 %2966 to i32
  %2968 = xor i32 %2967, %2956
  %2969 = lshr i32 %2968, 4
  %2970 = trunc i32 %2969 to i8
  %2971 = and i8 %2970, 1
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2971, i8* %2972, align 1, !tbaa !2447
  %2973 = icmp eq i32 %2956, 0
  %2974 = zext i1 %2973 to i8
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2974, i8* %2975, align 1, !tbaa !2448
  %2976 = lshr i32 %2956, 31
  %2977 = trunc i32 %2976 to i8
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2977, i8* %2978, align 1, !tbaa !2449
  %2979 = lshr i32 %2952, 31
  %2980 = xor i32 %2976, %2979
  %2981 = add nuw nsw i32 %2980, %2979
  %2982 = icmp eq i32 %2981, 2
  %2983 = zext i1 %2982 to i8
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2983, i8* %2984, align 1, !tbaa !2450
  %2985 = load i64, i64* %PC
  %2986 = add i64 %2985, 3
  store i64 %2986, i64* %PC
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2988 = load i8, i8* %2987, align 1, !tbaa !2448
  store i8 %2988, i8* %CL, align 1, !tbaa !2451
  %2989 = load i64, i64* %RBP
  %2990 = sub i64 %2989, 177
  %2991 = load i8, i8* %CL
  %2992 = zext i8 %2991 to i64
  %2993 = load i64, i64* %PC
  %2994 = add i64 %2993, 6
  store i64 %2994, i64* %PC
  %2995 = inttoptr i64 %2990 to i8*
  store i8 %2991, i8* %2995
  br label %block_400a43

block_40074b:                                     ; preds = %block_40073c
  %2996 = load i64, i64* %RBP
  %2997 = sub i64 %2996, 12
  %2998 = load i64, i64* %PC
  %2999 = add i64 %2998, 3
  store i64 %2999, i64* %PC
  %3000 = inttoptr i64 %2997 to i32*
  %3001 = load i32, i32* %3000
  %3002 = zext i32 %3001 to i64
  store i64 %3002, i64* %RAX, align 8, !tbaa !2428
  %3003 = load i64, i64* %RAX
  %3004 = load i64, i64* %PC
  %3005 = add i64 %3004, 3
  store i64 %3005, i64* %PC
  %3006 = and i64 15, %3003
  %3007 = trunc i64 %3006 to i32
  store i64 %3006, i64* %RAX, align 8, !tbaa !2428
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3008, align 1, !tbaa !2432
  %3009 = and i32 %3007, 255
  %3010 = call i32 @llvm.ctpop.i32(i32 %3009) #17
  %3011 = trunc i32 %3010 to i8
  %3012 = and i8 %3011, 1
  %3013 = xor i8 %3012, 1
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3013, i8* %3014, align 1, !tbaa !2446
  %3015 = icmp eq i32 %3007, 0
  %3016 = zext i1 %3015 to i8
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3016, i8* %3017, align 1, !tbaa !2448
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3018, align 1, !tbaa !2449
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3019, align 1, !tbaa !2450
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3020, align 1, !tbaa !2447
  %3021 = load i32, i32* %EAX
  %3022 = zext i32 %3021 to i64
  %3023 = load i64, i64* %PC
  %3024 = add i64 %3023, 3
  store i64 %3024, i64* %PC
  %3025 = sub i32 %3021, 8
  %3026 = icmp ult i32 %3021, 8
  %3027 = zext i1 %3026 to i8
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3027, i8* %3028, align 1, !tbaa !2432
  %3029 = and i32 %3025, 255
  %3030 = call i32 @llvm.ctpop.i32(i32 %3029) #17
  %3031 = trunc i32 %3030 to i8
  %3032 = and i8 %3031, 1
  %3033 = xor i8 %3032, 1
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3033, i8* %3034, align 1, !tbaa !2446
  %3035 = xor i64 8, %3022
  %3036 = trunc i64 %3035 to i32
  %3037 = xor i32 %3036, %3025
  %3038 = lshr i32 %3037, 4
  %3039 = trunc i32 %3038 to i8
  %3040 = and i8 %3039, 1
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3040, i8* %3041, align 1, !tbaa !2447
  %3042 = icmp eq i32 %3025, 0
  %3043 = zext i1 %3042 to i8
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3043, i8* %3044, align 1, !tbaa !2448
  %3045 = lshr i32 %3025, 31
  %3046 = trunc i32 %3045 to i8
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3046, i8* %3047, align 1, !tbaa !2449
  %3048 = lshr i32 %3021, 31
  %3049 = xor i32 %3045, %3048
  %3050 = add nuw nsw i32 %3049, %3048
  %3051 = icmp eq i32 %3050, 2
  %3052 = zext i1 %3051 to i8
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3052, i8* %3053, align 1, !tbaa !2450
  %3054 = load i64, i64* %PC
  %3055 = add i64 %3054, 42
  %3056 = load i64, i64* %PC
  %3057 = add i64 %3056, 6
  %3058 = load i64, i64* %PC
  %3059 = add i64 %3058, 6
  store i64 %3059, i64* %PC
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3061 = load i8, i8* %3060, align 1, !tbaa !2448
  %3062 = icmp eq i8 %3061, 0
  %3063 = zext i1 %3062 to i8
  store i8 %3063, i8* %BRANCH_TAKEN, align 1, !tbaa !2451
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3065 = select i1 %3062, i64 %3055, i64 %3057
  store i64 %3065, i64* %3064, align 8, !tbaa !2428
  %3066 = load i8, i8* %BRANCH_TAKEN
  %3067 = icmp eq i8 %3066, 1
  br i1 %3067, label %block_40077e, label %block_40075a

block_400973:                                     ; preds = %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit
  %3068 = sub i64 %2381, 104
  %3069 = load i64, i64* %PC
  %3070 = add i64 %3069, 5
  store i64 %3070, i64* %PC
  %3071 = inttoptr i64 %3068 to double*
  %3072 = load double, double* %3071
  %3073 = bitcast i8* %2380 to double*
  store double %3072, double* %3073, align 1, !tbaa !2452
  %3074 = getelementptr inbounds i8, i8* %2380, i64 8
  %3075 = bitcast i8* %3074 to double*
  store double 0.000000e+00, double* %3075, align 1, !tbaa !2452
  %3076 = load i64, i64* %RBP
  %3077 = sub i64 %3076, 176
  %3078 = bitcast %union.vec128_t* %XMM0 to i8*
  %3079 = load i64, i64* %PC
  %3080 = add i64 %3079, 8
  store i64 %3080, i64* %PC
  %3081 = bitcast i8* %3078 to double*
  %3082 = load double, double* %3081, align 1
  %3083 = inttoptr i64 %3077 to double*
  store double %3082, double* %3083
  br label %block_400980

block_400704:                                     ; preds = %block_400670
  %3084 = load i64, i64* %RSI
  %3085 = load i32, i32* %ESI
  %3086 = zext i32 %3085 to i64
  %3087 = load i64, i64* %PC
  %3088 = add i64 %3087, 2
  store i64 %3088, i64* %PC
  %3089 = xor i64 %3086, %3084
  %3090 = trunc i64 %3089 to i32
  %3091 = and i64 %3089, 4294967295
  store i64 %3091, i64* %RSI, align 8, !tbaa !2428
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3092, align 1, !tbaa !2432
  %3093 = and i32 %3090, 255
  %3094 = call i32 @llvm.ctpop.i32(i32 %3093) #17
  %3095 = trunc i32 %3094 to i8
  %3096 = and i8 %3095, 1
  %3097 = xor i8 %3096, 1
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3097, i8* %3098, align 1, !tbaa !2446
  %3099 = icmp eq i32 %3090, 0
  %3100 = zext i1 %3099 to i8
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3100, i8* %3101, align 1, !tbaa !2448
  %3102 = lshr i32 %3090, 31
  %3103 = trunc i32 %3102 to i8
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3103, i8* %3104, align 1, !tbaa !2449
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3105, align 1, !tbaa !2450
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3106, align 1, !tbaa !2447
  %3107 = load i64, i64* %RBP
  %3108 = sub i64 %3107, 40
  %3109 = load i64, i64* %PC
  %3110 = add i64 %3109, 4
  store i64 %3110, i64* %PC
  %3111 = inttoptr i64 %3108 to i64*
  %3112 = load i64, i64* %3111
  store i64 %3112, i64* %RAX, align 8, !tbaa !2428
  %3113 = load i64, i64* %RBP
  %3114 = sub i64 %3113, 56
  %3115 = load i64, i64* %PC
  %3116 = add i64 %3115, 4
  store i64 %3116, i64* %PC
  %3117 = inttoptr i64 %3114 to i64*
  %3118 = load i64, i64* %3117
  store i64 %3118, i64* %RDX, align 8, !tbaa !2428
  %3119 = load i64, i64* %RAX
  %3120 = load i64, i64* %PC
  %3121 = add i64 %3120, 3
  store i64 %3121, i64* %PC
  store i64 %3119, i64* %RDI, align 8, !tbaa !2428
  %3122 = load i64, i64* %PC
  %3123 = sub i64 %3122, 481
  %3124 = load i64, i64* %PC
  %3125 = add i64 %3124, 5
  %3126 = load i64, i64* %PC
  %3127 = add i64 %3126, 5
  store i64 %3127, i64* %PC
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3129 = load i64, i64* %3128, align 8, !tbaa !2428
  %3130 = add i64 %3129, -8
  %3131 = inttoptr i64 %3130 to i64*
  store i64 %3125, i64* %3131
  store i64 %3130, i64* %3128, align 8, !tbaa !2428
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3123, i64* %3132, align 8, !tbaa !2428
  %3133 = load i64, i64* %PC
  %3134 = call %struct.Memory* @ext_6020a8_memset(%struct.State* %0, i64 %3133, %struct.Memory* %298)
  %3135 = load i64, i64* %RBP
  %3136 = sub i64 %3135, 8
  %3137 = load i64, i64* %PC
  %3138 = add i64 %3137, 7
  store i64 %3138, i64* %PC
  %3139 = inttoptr i64 %3136 to i32*
  store i32 0, i32* %3139
  br label %block_40071d

block_400980:                                     ; preds = %block_400973, %block_400961
  %MEMORY.14 = phi %struct.Memory* [ %2362, %block_400973 ], [ %2362, %block_400961 ]
  %3140 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %3141 = load i64, i64* %RBP
  %3142 = sub i64 %3141, 176
  %3143 = load i64, i64* %PC
  %3144 = add i64 %3143, 8
  store i64 %3144, i64* %PC
  %3145 = inttoptr i64 %3142 to double*
  %3146 = load double, double* %3145
  %3147 = bitcast i8* %3140 to double*
  store double %3146, double* %3147, align 1, !tbaa !2452
  %3148 = getelementptr inbounds i8, i8* %3140, i64 8
  %3149 = bitcast i8* %3148 to double*
  store double 0.000000e+00, double* %3149, align 1, !tbaa !2452
  %3150 = load i64, i64* %RBP
  %3151 = sub i64 %3150, 104
  %3152 = bitcast %union.vec128_t* %XMM0 to i8*
  %3153 = load i64, i64* %PC
  %3154 = add i64 %3153, 5
  store i64 %3154, i64* %PC
  %3155 = bitcast i8* %3152 to double*
  %3156 = load double, double* %3155, align 1
  %3157 = inttoptr i64 %3151 to double*
  store double %3156, double* %3157
  %3158 = load i64, i64* %RBP
  %3159 = sub i64 %3158, 8
  %3160 = load i64, i64* %PC
  %3161 = add i64 %3160, 3
  store i64 %3161, i64* %PC
  %3162 = inttoptr i64 %3159 to i32*
  %3163 = load i32, i32* %3162
  %3164 = zext i32 %3163 to i64
  store i64 %3164, i64* %RAX, align 8, !tbaa !2428
  %3165 = load i64, i64* %RAX
  %3166 = load i64, i64* %PC
  %3167 = add i64 %3166, 3
  store i64 %3167, i64* %PC
  %3168 = trunc i64 %3165 to i32
  %3169 = add i32 2, %3168
  %3170 = zext i32 %3169 to i64
  store i64 %3170, i64* %RAX, align 8, !tbaa !2428
  %3171 = icmp ult i32 %3169, %3168
  %3172 = icmp ult i32 %3169, 2
  %3173 = or i1 %3171, %3172
  %3174 = zext i1 %3173 to i8
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3174, i8* %3175, align 1, !tbaa !2432
  %3176 = and i32 %3169, 255
  %3177 = call i32 @llvm.ctpop.i32(i32 %3176) #17
  %3178 = trunc i32 %3177 to i8
  %3179 = and i8 %3178, 1
  %3180 = xor i8 %3179, 1
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3180, i8* %3181, align 1, !tbaa !2446
  %3182 = xor i64 2, %3165
  %3183 = trunc i64 %3182 to i32
  %3184 = xor i32 %3183, %3169
  %3185 = lshr i32 %3184, 4
  %3186 = trunc i32 %3185 to i8
  %3187 = and i8 %3186, 1
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3187, i8* %3188, align 1, !tbaa !2447
  %3189 = icmp eq i32 %3169, 0
  %3190 = zext i1 %3189 to i8
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3190, i8* %3191, align 1, !tbaa !2448
  %3192 = lshr i32 %3169, 31
  %3193 = trunc i32 %3192 to i8
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3193, i8* %3194, align 1, !tbaa !2449
  %3195 = lshr i32 %3168, 31
  %3196 = xor i32 %3192, %3195
  %3197 = add nuw nsw i32 %3196, %3192
  %3198 = icmp eq i32 %3197, 2
  %3199 = zext i1 %3198 to i8
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3199, i8* %3200, align 1, !tbaa !2450
  %3201 = load i64, i64* %RBP
  %3202 = sub i64 %3201, 8
  %3203 = load i32, i32* %EAX
  %3204 = zext i32 %3203 to i64
  %3205 = load i64, i64* %PC
  %3206 = add i64 %3205, 3
  store i64 %3206, i64* %PC
  %3207 = inttoptr i64 %3202 to i32*
  store i32 %3203, i32* %3207
  %3208 = load i64, i64* %PC
  %3209 = sub i64 %3208, 348
  %3210 = load i64, i64* %PC
  %3211 = add i64 %3210, 5
  store i64 %3211, i64* %PC
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3209, i64* %3212, align 8, !tbaa !2428
  br label %block_40083a
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #13

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400660_frame_dummy() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400660;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400660_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400660_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400630___do_global_dtors_aux() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400630;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400630___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400630___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4010b0___libc_csu_fini() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4010b0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4010b0___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4010b0___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_401040___libc_csu_init() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x401040;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_401040___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_401040___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400670;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400670_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020b0___libc_start_main(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_602098_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #16 {
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
define internal %struct.Memory* @ext_400570_exit(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_6020a8_memset(%struct.State*, i64, %struct.Memory*) #13 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x4010b4;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_4010b4__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #15 {
  call void asm sideeffect "pushq $0;pushq $$0x400508;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
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
  %7 = tail call %struct.Memory* @sub_400508__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
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
  call void @callback_sub_401040___libc_csu_init()
  ret void
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_4010b0___libc_csu_fini()
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
!2458 = distinct !{!2458, !2459, !"ext_602098_sin: argument 0"}
!2459 = distinct !{!2459, !"ext_602098_sin"}
!2460 = distinct !{!2460, !2459, !"ext_602098_sin: argument 1"}
!2461 = !{!2458}
!2462 = !{!2460}
!2463 = !{!2464, !2466}
!2464 = distinct !{!2464, !2465, !"ext_602098_sin: argument 0"}
!2465 = distinct !{!2465, !"ext_602098_sin"}
!2466 = distinct !{!2466, !2465, !"ext_602098_sin: argument 1"}
!2467 = !{!2464}
!2468 = !{!2466}
